#import "@local/tuhi-labscript-vuw:0.2.0": tuhi-labscript-vuw

#show: tuhi-labscript-vuw.with(
  experiment: box[#text[michelson\ interferometry]#place(bottom+left,dx:0pt,dy:0pt)[#text(tracking: 0.3pt)[interferometry]]],
  script: "mid-lab script",
  illustration: none,
  coursetitle: "experimental physics ii")

// #set heading(numbering: "1.")

With the basic interferometer setup working, your next steps should be:

- Change the length of one arm by moving a mirror. What is the effect?

- Light a match and put it right below the laser beam in one arm. What do you observe?

- Verify that a Michelson interferometer has two outputs. Compare both patterns

- Place a mirror on the thermal expansion aluminium rod connected to a power supply. Replace the second mirror of the interferometer with this one, and observe the variation of the interference pattern as the  rod expands/contracts due to temperature (detailed explanations below)

- Rotate a thin glass plate and use the interference pattern to determine its refractive index (detailed explanations below)

- Choose one or more stretch goal(s) among several possible options listed below, and develop your own mini-project.

=== Potential topics for exploration

- Implement numerically the theoretical model for the rotation of the glass plate, and check the effect of the plate thickness
- Acquisition of the interference pattern on a camera, extraction of the profile from image
- Automating the measurement of temperature and light intensity for the thermal expansion experiment
- Improving the app controlling the stepper motor and the LDR
- Measurement of refractive index of a solution (mixture)

	/*
  Simultaneous visualisation of both interference patterns (two outputs of beam splitter)
Lower quality laser
Measurement of the laser wavelength
Try to make a Sagnac interferometer
Predicting the interference pattern from a numerical model (gaussian beams)
*/

_Learn more about the topic:_

- Literature search on the applications of interferometers
- Literature search on LIGO and gravitational waves
- Literature search on OCT (optical coherence tomography)
- Domain discussion: coherence of light, interference, lasers, history of interferometry, links to quantum mechanics thought experiments, etc.

#pagebreak()

= Theoretical principles
<theoretical-principles>
#figure(image("figures/schematic.png"),
  caption: [
    Sketch of a Michelson interferometer. The laser (1) is aimed at the
    beamsplitter (2) which divides the beam into two partial beams.
    These are reflected by the respective mirrors (3). An interference
    pattern can be observed on the screen (4).
  ]
)

The laser is divided by the beamsplitter, and the partial beams
reflected by the mirrors overlap again at the beamsplitter. Naturally
half the light travels back in the direction of the laser here. We can
mathematically describe how the light intensity on the screen depends on
the path length difference $Delta s$ between the two paths $s_1$ and
$s_2$.

== Plane wave interference
<plane-wave-interference>
Limiting ourselves to examining an incident plane wave along the optical
axis,
$ bold(E)_(bold(i)) = bold(E)_(upright(bold(0))) cos (omega t - k x) $
Here $omega$ is the angular frequency, $t$ the time, $upright(k)$ the
wave number (i.e., $2 pi \/ lambda$ ), and $x$ the position. The
beamsplitter has a transmission coefficient $T$ and a reflection
coefficient $R$. Now let us examine the amplitude of the partial wave of
one interferometer arm at the location of the screen:
$ lr(|E_1|) = sqrt(R dot.op T) dot.op E_0 dot.op cos (omega t + phi_1) $

Here $phi_1$ is the phase determined by the optical path $s_1$.
The description of the beam in path 2 is similar, but the beam is first
reflected and then transmitted. This results in the same factor and the
amplitude of the partial wave of the second interferometer arm is given
on the screen by
$ lr(|bold(E)_2|) = sqrt(R dot.op T) dot.op E_0 dot.op cos (omega t + phi_2) $
where $phi_2$ is the corresponding phase for the second path. The
intensity on the screen is then determined by
$ I = c epsilon_0 lr(|bold(E)_(upright(bold(1))) + bold(E)_(upright(bold(2)))|)^2 = c epsilon_0 R T E_0^2 [cos (omega t + phi_1) + cos (omega t + phi_2)]^2 . $
We can only observe (measure) the time average of the light field oscillation on the screen, such that
$ frac(1, 2 pi) integral_0^(2 pi) [cos (omega t + phi_1) + cos (omega t + phi_2)]^2 d (omega t) = 1 + cos (phi_1 - phi_2). $
For simplicity, we are going
to assume that both the transmission and the reflection coefficients have the value of 0.5, which is a good approximation for the
beamsplitter being used. As the time-averaged intensity, we therefore
find $I$ 
$ I = 1 / 4 c epsilon_0 E_0^2 (1 + cos Delta phi) , $
where the phase difference of the two partial waves translates directly into the path length difference $Delta s$ between them:
$ Delta phi = frac(2 pi, lambda) Delta s . $

Therefore the intensity dependence on the path length difference between the two interferometer arms is described by a cosine function. A fundamental question arises though: when the intensity at the screen
drops to zero, where does the light and the energy go?

== Laser beam and circular interference pattern
<laser-beam-and-circular-interference-pattern>
We have now clarified what the interference pattern of a plane wave
and/or at the central point looks like. Naturally the real interference
pattern appears different than that of a plane wave, since the laser has
a circular profile and diverges (very slightly) on its way to the
screen. This results in a characteristic ring pattern with a size that
largely depends on the path length difference $Delta s$.

#figure(image("figures/cones.png"),
  caption: [
    The circular interference pattern occurs because of a slight divergence in the beams.
  ]
)

When both interferometer arms are not of equal length (which is always
the case since it’s practically impossible to adjust the interferometer
with nanometre precision), then there exist two (virtual) light sources
as seen by the screen which correspond to the different light paths
through the interferometer. If the path is stretched out in one
dimension, one source is behind the other due to the different lengths
of the interferometer arms.

If the arms of the interferometer have very different lengths, the two
virtual light sources are far apart. In this case, a small position
change on the screen corresponds to a large change in the path length
difference, which again translates into a smaller spacing between the
fringes. This explains why the interference pattern gets smaller when
the interferometer arms have very different lengths.

This line of argument is the same for all points on the screen. Since
the lens diverges the beam symmetrically around the optical axis, the
interference pattern needs to be symmetric, i.e., concentric, as well.
When the two interferometer arms are nearly identical in length, the
interference pattern will show very large rings (with the inverse
argument from before). This can be used to adjust the interferometer. In
order to find a configuration with nearly identical arm lengths, the
central maximum needs to be as large as possible.

== Refractive index measurement of a transparent plate
<refractive-index-measurement-of-a-transparent-plate>
A glass or plexiglas plate is positioned in an arm of the interferometer
and rotated. The rotation increases the optical path of the laser beam
in this arm, so that the interference pattern shows characteristic
light-dark transitions (swelling / disappearance of rings). This change
in the optical path in turn results in a change of the interference
pattern. Now the number of light-dark-light transitions, the plate
thickness, and the angle of rotation can be used to derive the change in
the optical path length, which ultimately allows the refractive index to
be determined.

#figure(image("figures/plate.png", width: 80%),
  caption: [
    Placing the plate in an interferometer arm (b) Rotation and change
    in the (optical) path
  ]
)

The length of the physical light path is:

$ upright("Physical path:") & L_1 + t + L_2\
upright("Optical path:") & L_1 + n dot.op t + L_2 $

Here $n$ is the refractive index of the material being examined. When
the plate is now rotated in the beam, both the physical and the optical
paths change. These paths can be described as:
$ upright("Physical path:") & L_1 - Delta L_1 + w + Delta L_2 + L_2\
upright("Optical path:") & L_1 - Delta L_1 + n dot.op w + Delta L_2 + L_2 $
Rotation by the angle $alpha$ therefore results in the optical path
length difference derived from the difference between (17) and (15).

$ Delta upright(" Optical Path ") = 2 dot.op (- Delta L_1 + n dot.op w + Delta L_2 - n dot.op t) $
The factor of 2 appears in the equation because the light passes along
the path twice. The path length difference is derived from the
light-dark transitions via
$ N dot.op lambda = Delta upright("Optical Path ") $ where $N$ denotes
the number of transitions. The values $Delta L_1 , Delta L_2$ and $w$
can be expressed in terms of the rotation angle, the plate thickness,
and its refractive index. The resulting equation is given by:
$ n = frac((frac(N lambda, 2 t) + cos alpha - 1)^2 + sin^2 alpha, 2 (- frac(N lambda, 2 t) - cos alpha + 1)) $

You can implement this equation in Python, to predict the behaviour for
different plate thicknesses and a realistic angular range (noting that
the stepper motor has a minimal resolution of about 0.1 degrees).

== Thermal expansion coefficient
<thermal-expansion-coefficient>
This experiment illustrates how even extremely slight expansion can be
measured with an interferometer. A mirror is attached to a metal rod,
which is heated so that it expands. Expansion causes a pathlength change
for this arm of the interferometer, resulting in light-dark transitions.
The expansion coefficient can be calculated from the number of
light-dark transitions for a given change in temperature of the rod.

The thermal expansion coefficient $alpha$ represents the proportionality
constant between a relative linear expansion and a corresponding
temperature change:
$ alpha = 1 / L frac(upright(d) L, upright(med d) T) $ As a function of
temperature, the length of the solid is therefore given by
$ L = L_0 dot.op exp (alpha dot.op Delta T) $ Here $Delta T$ is the
temperature change, causing its original length of $L_0$ to expand to
the length $L$. In first approximation, one can then determine the
expansion coefficient with
$ Delta L approx alpha dot.op L_0 dot.op Delta T $ where $Delta L$ is
the expansion.

When the solid is heated by $Delta T$ and $N$ transitions are measured,
the coefficient is derived by
$ 1 / 2 N lambda = alpha L_0 Delta T arrow.r.double alpha = frac(N lambda, 2 L_0 Delta T) $

