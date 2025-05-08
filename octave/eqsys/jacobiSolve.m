## Copyright (C) 2025
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{x} =} jacobiSolve (@var{A}, @var{b},@var{x0})
##
## @seealso{}
## @end deftypefn

## Author:  <00glitched>
## Created: 2025-05-07

function x = jacobiSolve (A,b,x0,tol,it)
  # JACOBI METHOD
  # A,T,D,L,U : matrices; x,b,c : vectors
  # A : estrictly diagonally dominant matrix
  # Ax=b => x=Tx+c => x1=Tx0+c
  # (D+L+U)x=b                      | Diagonal, Low, Up
  # Dx=b-(L+U)x
  # x=D^(-1) * (b-(L+U)x)           | Inverse of D
  # x1=D^(-1) * (b-(L+U)x0)
  # T=D^(-1) * (L+U)
  # c=D^(-1) * b
  if ismatrix(A) && issquare(A)
    if isvector(b)
      if isvector(x0)
        if length(x0)==length(b)
          n=length(b);
          if tol>0
            if isinteger(it)
            else
              it=floor(it);
            endif
            nxix=tol+1;i=0;               # init norm and first iter
            D = A.*eye(n);                # extract diagonal from A
            LU= D-A;xi=x0;                # extract LU from A and init xi

            DLUcomp= abs(D)*ones(n,1)-abs(LU)*ones(n,1);   # aii - sum(aij) | diag - sum_rows
            DLUcomp= abs(DLUcomp)-DLUcomp;            # absolute - real (if diag dom. abs=real)
            DLUcomp= ones(1,n)*DLUcomp;               # sum of it own components (if diag. dom. sum=0)
            if DLUcomp>0
              fprintf("\njacobiSolve (A,b,x0,tol,it)\n");
              fprintf("A is not a estrictly diagonally dominant matrix\n");
            else
              while nxix>tol && i<it        # LOOP with tol.cond and max.iter.cond
                x=xi;                       # previous value
                xi= inverse(D)*(LU*x+b);    # calc next iteration
                nxix= norm(xi-x);           # calc norm of iteration
                nxixinf=max(abs(xi-x));     # calc inf.norm of iteration
                i+=1;                       # restart LOOP
              endwhile
              x=xi;i-=0;                    # return final iteration
              printf("\nit=%i, e=%f einf=%f\n",i,nxix,nxixinf);
            endif
          else
            fprintf("\njacobiSolve (A,b,x0,tol,it)\n"); # here to bottom are conditions
            fprintf("tol must be > 0\n");
          endif
        else
          fprintf("\njacobiSolve (A,b,x0,tol,it)\n");
          fprintf("dim of x0 not equal to dim of b\n");
        endif
      else
        fprintf("\njacobiSolve (A,b,x0,tol,it)\n");
        fprintf("x0 is not a column vector\n");
      endif
    else
      fprintf("\njacobiSolve (A,b,x0,tol,it)\n");
      fprintf("b is not a column vector\n");
    endif
  else
    fprintf("\njacobiSolve (A,b,x0,tol,it)\n");
    fprintf("A is not a square matrix\n");
  endif
endfunction
