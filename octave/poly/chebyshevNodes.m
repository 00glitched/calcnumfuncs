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
## @deftypefn {} {@var{nodes} =} chebyshevNodes (@var{cant})
##
## @seealso{}
## @end deftypefn

## Author:  <@00glitched>
## Created: 2025-04-24

function nodes = chebyshevNodes (cant)
  for i=0:cant-1
    nodes(i+1)= -cos(pi*(2*i+1)/(2*(cant-1)+2));
  endfor
endfunction
