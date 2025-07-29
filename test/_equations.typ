
$nabla lr((f g)) eq f nabla g plus g nabla f$

$nabla lr((bold(A) dot.op bold(B))) eq bold(A) times lr((nabla times bold(B))) plus bold(B) times lr((nabla times bold(A))) plus lr((bold(A) dot.op nabla)) bold(B) plus lr((bold(B) dot.op nabla)) bold(A)$

$nabla dot.op lr((f bold(A))) eq f lr((nabla dot.op bold(A))) plus bold(A) dot.op lr((nabla f))$

$nabla dot.op lr((bold(A) times bold(B))) eq bold(B) dot.op lr((nabla times bold(A))) minus bold(A) dot.op lr((nabla times bold(B)))$

$nabla times lr((f bold(A))) eq f lr((nabla times bold(A))) minus bold(A) times lr((nabla f))$

$nabla times lr((bold(A) times bold(B))) eq lr((bold(B) dot.op nabla)) bold(A) minus lr((bold(A) dot.op nabla)) bold(B) plus lr((nabla dot.op bold(B))) bold(A) minus lr((nabla dot.op bold(A))) bold(B)$

#v(1em)

$nabla f eq  & frac(diff f, diff s) bold(hat(s)) plus 1 / s frac(diff f, diff phi) bold(hat(phi)) plus frac(diff f, diff z) bold(hat(z))\
nabla dot.op bold(A) eq  & 1 / s frac(diff, diff s) lr((s A_s)) plus 1 / s frac(diff A_phi, diff phi) plus frac(diff A_z, diff z)\
nabla times bold(A) eq  & lr((1 / s frac(diff A_z, diff phi) minus frac(diff A_phi, diff z))) bold(hat(s)) plus lr((frac(diff A_s, diff z) minus frac(diff A_z, diff s))) bold(hat(phi)) plus 1 / s lr((frac(diff, diff s) lr((s A_phi)) minus frac(diff A_s, diff phi))) bold(hat(z))\
nabla^2 f eq  & 1 / s frac(diff, diff s) lr((s frac(diff f, diff s))) plus 1 / s^2 frac(diff^2 f, diff phi^2) plus frac(diff^2 f, diff z^2) $



== Maxwell's equations

$& nabla dot.op upright(bold(D)) = rho_f\
 & nabla dot.op upright(bold(B)) = 0\
 & nabla times upright(bold(E)) = - frac(partial upright(bold(B)), partial t)\
 & nabla times upright(bold(H)) = frac(partial upright(bold(D)), partial t) + upright(bold(J))_f $

Constitutive relations (frequency domain):

$& underline(upright(bold(D))) (upright(bold(r)) , omega) = epsilon_0 epsilon (upright(bold(r)) , omega) underline(upright(bold(E))) (upright(bold(r)) , omega)\
 &  mu_0 mu (upright(bold(r)) , omega)underline(upright(bold(H))) (upright(bold(r)) , omega) = underline(upright(bold(B))) (upright(bold(r)) , omega) $


 Lorentz force:
 $upright(bold(F)) = q (upright(bold(E)) + upright(bold(v)) times upright(bold(B))) $


== Maxwell's stress tensor

$T_(i j) equiv epsilon.alt_0 lr((E_i E_j minus 1 / 2 delta_(i j) E^2)) plus 1 / mu_0 lr((B_i B_j minus 1 / 2 delta_(i j) B^2)) $

$bold(F) eq integral.cont_(cal(S)) attach(
  limits(bold(T)), t: arrow.l.r)  dot.op d bold(a) minus epsilon.alt_0 mu_0 frac(d, d t) integral_(cal(V)) bold(S) d tau $

== Fresnel coefficients


$t & eq frac(2, 1 plus K)\
r & eq frac(1 minus K, 1 plus K)$

$K^(upright("TM")) & eq frac(epsilon_1 k_(z 2), epsilon_2 k_(z 1))\
K^(upright("TE")) & eq k_(z 2) / k_(z 1)$

$r_(i j) eq minus r_(j i)$

$R & eq lr(|r|)^2\
T & eq 1 minus R eq lr(|t|)^2 Re(K)$

_Slab_

$r_(upright("slab")) & eq frac(r_01 plus r_12 exp lr((2 i k_(1 z) d)), 1 plus r_01 r_12 exp lr((2 i k_(1 z) d)))\
t_(upright("slab")) & eq frac(t_01 t_12 exp lr((i k_(1 z) d)), 1 plus r_01 r_12 exp lr((2 i k_(1 z) d)))$
