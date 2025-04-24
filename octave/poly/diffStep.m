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
## @deftypefn {} {@var{stepped} =} diffstep (@var{vector}, @var{step})
##
## @seealso{}
## @end deftypefn

## Author:  <@00glitched>
## Created: 2025-04-24

function stepped = diffStep (vector, step=1)
  if(isvector(vector))
    if step>=1
      for i=1:length(vector)-step
        stepped(i)=vector(i+step)-vector(i);
      endfor
    else
      for i=1:length(vector)-1
        stepped(i)=vector(i+1)-vector(i);
      endfor
    endif
  endif
endfunction
