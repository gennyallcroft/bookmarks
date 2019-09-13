## Problem statement

I work for a school reports company, we help teachers to find out how students do on their tests to get a read on overall students tests.

We capture the marks with some data capturing front end system. We then process that into a comma separated string - we want you to build a report app on top of it.

format will be school grade in colours:
  green
  amber
  red

Report app - it consumes the string of grades - it sums up all the greens, ambers and reds so that the teacher can know how many greens, ambers and reds in each class.

return the counts in comma separated string, with commas separating each category -

in format: Green: x, Amber: y, Red, z

No need for terminal interaction

edge cases: if not green, amber or red then the output should count the error cases and display them in own category called Uncounted.

sometimes the input that comes in is not a string - want it to throw an argument error saying the input must be a comma separated string

Acceptance criteria:

Output is a whole string but instead of comma it is a new line

input: 1 - output: Argument error: input must be a comma separated string
input: Green - output: Green = 1
input: Amber - output: Amber = 1
input: Red - output: Red = 1
input: Purple - output: Uncounted = 1

input: Green, Amber - output: Green = 1, Amber = 1
input: Green, Green - output: Green = 2
input: Amber, Red, Green - output: Green = 1, Amber = 1, Red = 1
input: Red, Amber, Red, Green, Green, Red, Amber - output: Green = 2, Amber = 2, Red = 3
input: Red, Amber, Red, Green, Green, Silver, Red, Amber - output: Green = 2, Amber = 2, Red = 3, Uncounted = 1
