#import "@preview/wrap-it:0.1.1": wrap-content

#set page(
  numbering: "1",
  number-align: center,
)

#set par(
  first-line-indent: 1em,
  // spacing: 0.65em,
  justify: true,
)

#set text(
  fill: color.black,
  size: 1.2em,
  font: "New Computer Modern Math"
)

#text(fill: color.rgb("#120531"), size: 1.5em)[= *Numerical Optimization* \ _*CENG-597*_]

= Project Status Report
_Muhammed Yasinhan Yaşar_ \
_255101123_
\

== Data Generation

#let fig = figure(
  image("trajectory.png"),
  caption: "Drone Trajectory"
)

#wrap-content(
fig,
[
  I achieved to generate the *synthetic nosiy* data to simulate realistic drone motion.
  Here the parameter values used:

  $
  &r_x = 4 -> #text(size: 0.8em)[radius along X-axis] \
  &r_y = 6 -> #text(size: 0.8em)[radius along Y-axis] \
  &h = 0.5 -> #text(size: 0.8em)[$"heigth"_"step"$/radian] \
  &theta in [0, 4 pi] -> #text(size: 0.8em)[total trajectory angle] \
  &N_theta = 200 -> #text(size: 0.8em)[200 steps resolution] \
  &sigma = 0.08 -> #text(size: 0.8em)[noise factor] \
  $
],
align: left + top,
column-gutter: 2em
)
\

*Cost function* is defined as follows:
$
J("p", "n") =

&sum_(i=1)^N ||"p"_i - y^"p"_i||^2 + sum_(i=1)^N ||"n"_i - y^"n"_i||^2 + \
&lambda_1 sum_(i=2)^(N-1) ||"p"_(i+1) - 2 "p"_i + "p"_(i-1)||^2 + \
&lambda_2 sum_(i=2)^(N-1) ||"n"_(i+1) - 2 "n"_i + "n"_(i-1)||^2 
$
Why it is defined in this way is clearly explained in the project itself (in the `.ipynb` files).

I calculated the _gradient_ and the _hessian_ of the *cost function* but I did *not* yet started to implement *optimization methods*.
