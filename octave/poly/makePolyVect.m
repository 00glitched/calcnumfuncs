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
## @deftypefn {} {@var{v} =} makePolyVect (@var{input})
##
## @seealso{}
## @end deftypefn

## Author:  <fedora@00glitch>
## Created: 2025-04-14

function v = makePolyVect (input)
  if(isvector(input))
    # (x-x1)*...*(x-xn) // y(xi)=0
    z=input;  # z =[-x1,...,-xn]
    v=[1];w=[];
    for i=1:length(z)
      w=[0,v];  # poly * xvar
      v*=z(i);  # poly * root
      v(length(w))=0;
      v=v+w;    # poly = v * [1,...,x^n] : dot product
    end
  end
endfunction
