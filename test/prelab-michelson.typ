#import "@local/tuhi-labscript-vuw:0.2.0": tuhi-labscript-vuw

#show: tuhi-labscript-vuw.with(
  experiment: box[#text[michelson\ interferometry]#place(bottom+left,dx:0pt,dy:0pt)[#text(tracking: 0.3pt)[interferometry]]],
  script: "pre-lab script",
  illustration: image("figures/michelson.jpg", width: 100%),
  coursetitle: "experimental physics ii")

== overview

You are tasked in this lab with building a Michelson interferometer and using it for ultrasensitive measurements.

In the Michelson interferometer, a laser beam is split by a 50:50 beamsplitter; the split beams are then reflected back by mirrors and recombined at the beamsplitter. A screen at the output of the interferometer shows an interference pattern. This interference is extremely sensitive to the exact pathlength difference between the two paths, as a displacement of just a few hundred nanometres will cause the light's phase to cause constructive or destructive interference (bright or dark). By monitoring the light intensity, we can therefore make very precise measurements of displacement.

#pagebreak()

= preamble

== Experimental skills and concepts

- Data manipulation and automation
- The techniques of interferometry
- Following instructions to build apparatus
- Alignment of laser and handing optical components
- Design and iterative improvement of experiments
- Automation of experiments \

== Maths and Physics


- The physics of light waves and interference in general
- Coherence
- Refractive index
- Thermal expansion coefficient
- Waves equations with emphasis on phase
- Visualisation

== Health and safety considerations

#include("_safety-general.typ")

_Lasers_

#include("_safety-lasers.typ")

#pagebreak()

// subsequent pages have numbered sections
#set heading(numbering: "1.")

= Exploration phase 

In the Michelson interferometer, a laser beam is split by a 50:50 beamsplitter; the split beams are then reflected back by mirrors and recombined at the beamsplitter. A screen at the output of the interferometer shows an interference pattern. A lens is used to diverge the beam in order to obtain an interference pattern consisting of light and dark rings.
We start by building such a Michelson interferometer and observing the interference pattern. Although there are not many components, it is trickier than it seems! Things to watch out for:

- The height of all the components: there are constraints on the available length of posts, the size of the beam splitter and mirrors, etc. You may have to iterate and adjust the height if the first attempt runs into problems

- The laser does not have a fine position adjustment, but it makes things much easier if one is careful to ensure that the beam is parallel to the table (horizontally, crucially, but also parallel to the edges of the table, to align with the mounting holes)



== Initial steps


+ Position the laser assembly on one side of the breadboard. Place a filter wheel in front of the beam if available. Use the pinholes provided to ensure that the beam is parallel to the table

+ Mount the first mirror on a translation stage on the other side of the breadboard. Adjust the mirror so that the reflected beam falls back into the laser aperture

+ Install the beamsplitter and the screen. Ensure that the beam is split at a 90° angle. If using the cube beamsplitter, use the backreflections to orient it.

+ Next, install the second mirror. Ensure that the distance between the beamsplitter and the mirrors is about the same along both interferometer arms.

+ You should now see the two partial beams as bright spots on the screen. Adjust the second mirror until they overlap.

+ Place the lens between the laser and the beamsplitter. You may already see interference rings. 

+ Place a lens before the beamsplitter, and adjust its position until you see nice concentric rings on the screen.

+ Alternatively, placing the lens behind the beamsplitter and moving the screen away from the breadboard results in a pattern of stripes instead of rings. 
