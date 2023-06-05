# by setting the environment variable permanently in your shell, by

GSIMPL=PostScript
export GSIMPL

or

set GSIMPL PostScript

depending on which shell you use.
line [$win_to], [$name], $x1, $y1, $x2, $y2, ...

Draws a line through the points given.
arrow [$win_to], [$name], $x1, $y1, $x2, $y2, ...

Like line, but makes an arrowhead in the end.
line_to [$win], [$name], $x1, $y1, $x2, $y2, ...

Called several times in a sequence, starts and continues adding points to a line. If called with no coordinates, finishes the current line. This is just a convenient wrapper over a line call with all the parameters given - a faster way would just be to collect your parameters to an array.
circle [$win], [$name], $x, $y, $radius

Duh.
ellipse [$win], [$name], $x1, $y1, $x2, $y2

The ellipse enclosed in the rectangle given by its two corners
text [$win], [$name], $x, $y, $string

Duh...
image [$win], [$name], $x, $y, $width, $height, $depth, $string

This command creates a rectangular bit- or pixmap. The $depth parameter is the number of bytes per pixel (1 for B/W or 3 for RGB) and the string is a string of packed bytes that describe the image.

For instance, the module PDL is a good source for such strings.
clear, stop

stop [$win]
clear [$win]

clear removes all the drawn elements from the window. <wait> waits for a button press. These are usually coupled:

stop; clear;

set_window, get_window

See the source - undocumented and potentially changing api
push_window, pop_window

Graphics::Simple maintains a simple window stack so that subroutines can easily use

push_window $win;
line ...
pop_window();

to avoid having too many method calls.
color [$win,] $color;

Set the current color to $color. Currently, the colors known are

red green blue black white

as well as any RGB color with the X syntax:

color '#FFFF00';

is yellow. You can also give an array ref of three numbers between 0 and 1 for RGB colors.
line [$win,] $width
BUGS

This is an alpha proof-of-principle version - the API may still change wildly.
AUTHOR

Copyright(C) Tu J. Lu 1999. All rights reserved. This software may be distributed under the same conditions as Perl itself.