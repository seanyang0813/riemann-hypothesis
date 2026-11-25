module

import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FrameBiextDictionarySecondPartialLaw
public import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermCut
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.CanonB
public import Formalism.SharpRestriction.Divisibility.GeneratorPowers.FBIdJet
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermDJet
public import Formalism.SharpRestriction.Divisibility.GeneratorPowers.ThetaSwapFirstTwo
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubicalLawRight
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaCore
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.VtUniq
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullFEPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.LevelFrameOfLaws
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.ChartSer
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.OneCSt

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ModuliIntegralCharts.H1.FBIdAd

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G.DVR
open ReciprocityTheory.ChartRestriction.G.H1 ReciprocityTheory.ChartRestriction.G.TB.Canon Formalism.MainNotions.ModuliIntegralCharts.H1.GermD Formalism.MainNotions.ModuliIntegralCharts.H1.GermFun Formalism.MainNotions.ModuliIntegralCharts.H1.FBIdPh
open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ (PS Pt ev pt FGLaw)

variable {S : Type} [CommRing S] {d n n' k : ℕ} (m : ℕ)

def jQ (b : Fin k → Q S d n) : Jet S (Fin k × Fin d) m →ₐ[S] Jet S (Fin n × Fin d) m :=
  jetMap (fun s => psTrunc m ((b s.1).1 s.2)) fun s => FBIdJet.psTrunc_mem_orig m _ ((b s.1).2 s.2)

theorem jQ_psJet (b : Fin k → Q S d n) (f : PS S k d) : jQ m b (psJet m f) = psJet m (sb b f) := by
  apply GlobalTheory.FrameBiextId.jQ_psJet

theorem jQ_X (b : Fin k → Q S d n) (s : Fin k × Fin d) :
    jQ m b (Ideal.Quotient.mk _ (MvPolynomial.X s)) = psJet m ((b s.1).1 s.2) := by
  apply GlobalTheory.FrameBiextId.jQ_X

theorem psJet_X {κ : Type} [Fintype κ] [DecidableEq κ] (s : κ) :
    psJet m (MvPowerSeries.X s : MvPowerSeries κ S) = Ideal.Quotient.mk _ (MvPolynomial.X s) := by
  apply GlobalTheory.FrameBiextId.psJet_X

theorem psJet_zero {κ : Type} [Fintype κ] [DecidableEq κ] : psJet m (0 : MvPowerSeries κ S) = 0 := by
  apply GlobalTheory.FrameBiextId.psJet_zero

theorem jQ_comp (b : Fin n → Q S d n') (a : Fin k → Q S d n) : (jQ m b).comp (jQ m a) = jQ m fun j => sq b (a j) := by
  apply GlobalTheory.FrameBiextId.jQ_comp

theorem subst_eq (φ : Fin k × Fin d → MvPolynomial (Fin n × Fin d) S) (a : Fin k → Q S d n)
    (h : ∀ s, Ideal.Quotient.mk _ (φ s) = psJet m ((a s.1).1 s.2)) (hc : ∀ s, MvPolynomial.constantCoeff (φ s) = 0) :
    jetSubstP m φ = jQ m a := by
  apply GlobalTheory.FrameBiextId.subst_eq <;> assumption

theorem mk_psIn (r : Fin k → Fin n) (f : PS S k d) :
    Ideal.Quotient.mk _ (psIn d m r f) = psJet m (sb (fun i => (gen (r i) : Q S d n)) f) := by
  apply GlobalTheory.FrameBiextId.mk_psIn

theorem ps_ext {κ : Type} [Fintype κ] [DecidableEq κ] {f g : MvPowerSeries κ S} (h : ∀ m, psJet m f = psJet m g) : f = g := by
  apply GlobalTheory.FrameBiextId.ps_ext; assumption

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {X0 : Scheme.{0}} {t : SAB H X0} {x0 : Sp S ⟶ X0}
  (x : ∀ m, jOG x0 d m 1 ⟶ t.G)

def PP (u : Q S d n) : jOG x0 d m n ⟶ t.G := homAt x0 (jQ m ![u]) ≫ x m

theorem PP_sq (b : Fin n → Q S d n') (u : Q S d n) : homAt x0 (jQ m b) ≫ PP m x u = PP m x (sq b u) := by
  apply GlobalTheory.FrameBiextId.PP_sq

theorem PP_gen (i : Fin n) : jptG t x0 d x m i = PP m x (gen i) := by
  apply GlobalTheory.FrameBiextId.PP_gen

def VV (y : (jOG x0 d m n).left) (f : PS S n d) : (jOG x0 d m n).left.presheaf.stalk y :=
  cst (𝟙 (Sp (Jet S (Fin n × Fin d) m))) y (psJet m f)

theorem VV_mul (y : (jOG x0 d m n).left) (f g : PS S n d) : VV m y (f * g) = VV m y f * VV m y g := by
  apply GlobalTheory.FrameBiextId.VV_mul

theorem VV_one (y : (jOG x0 d m n).left) : VV m y (1 : PS S n d) = 1 := by rw [VV, FBIdJet.psJet_one, cst_one]

theorem VV_ext (hL : t.PP.L.IsLB) {f g : PS S n d}
    (h : ∀ m (y : (jOG x0 d m n).left) J, Good t.PP.L y J → VV m y f = VV m y g) : f = g := by
  exact GlobalTheory.FrameBiextId.VV_ext hL h

variable {m} {y : (jOG x0 d m n).left} {J : ((jOG x0 d m n).left ⟶ t.G.left) → t.PP.L.ι} (hJ : Good t.PP.L y J)

def ee (e : ∀ m, FrTyG t x0 d x m) (y : (jOG x0 d m n).left) (J : ((jOG x0 d m n).left ⟶ t.G.left) → t.PP.L.ι)
    (u v : Q S d n) : ((jOG x0 d m n).left.presheaf.stalk y)ˣ :=
  val (L := t.PP.L) (φ := cφG t ![jptG t x0 d x m (0 : Fin 2), jptG t x0 d x m (1 : Fin 2)]) (ε := cε 2) (e m)
    (homAt x0 (jQ m ![u, v])).left y J

include hJ in
theorem val_peG (e : ∀ m, FrTyG t x0 d x m) (b : Fin k → Q S d n) (φ : Fin 2 → Fin d → MvPolynomial (Fin k × Fin d) S)
    (p q : Q S d k) (h : ∀ s : Fin 2 × Fin d, Ideal.Quotient.mk _ (φ s.1 s.2) = psJet m (((![p, q] : Fin 2 → _) s.1).1 s.2))
    (hc : ∀ s : Fin 2 × Fin d, MvPolynomial.constantCoeff (φ s.1 s.2) = 0) :
    val (peG t x0 d x e m φ) (homAt x0 (jQ m b)).left y J = ee x e y J (sq b p) (sq b q) := by
  apply GlobalTheory.FrameBiextId.val_peG <;> assumption

include hJ in
theorem val_scale {Y : Scheme.{0}} {K : Type} [Fintype K] {φ : K → (Y ⟶ t.G.left)} {ε : K → ℤ} (u : Γ(Y, ⊤)ˣ)
    (g : LB.Gen (LB.LinComb t.PP.L φ ε)) (r : (jOG x0 d m n).left ⟶ Y) :
    val (scaleGenG t φ ε u g) r y J = gm r y ⊤ u * val g r y J := by
  apply GlobalTheory.FrameBiextId.val_scale; assumption

theorem gm_unit (u : (Jet S (Fin k × Fin d) m)ˣ) (b : Fin k → Q S d n) (f : PS S k d)
    (hf : (u : Jet S (Fin k × Fin d) m) = psJet m f) :
    (gm (homAt x0 (jQ m b)).left y ⊤ (unitΓ u)).val = VV m y (sb b f) := by
  apply GlobalTheory.FrameBiextId.gm_unit; assumption

section Dict

variable {G : FGLaw S d} {A : Germ.OAct (𝓞 E) G} {κ : Type} [Fintype κ] {tg : κ → (Sp (DualNumber S) ⟶ t.G.left)}
  {uvec : κ → Fin d → S} {x} (hc : IsChartG t x0 d G.F A.act tg uvec x)


variable (G) in
abbrev FQ : Q S d 2 := ⟨G.F, G.const⟩


variable (A) in
abbrev AQ (a : 𝓞 E) : Q S d 1 := ⟨A.act a, A.const a⟩

include hc

theorem PP_op (u v : Q S d n) : PP m x (op (FQ G) u v) = PP m x u * PP m x v := by
  exact GlobalTheory.FrameBiextId.PP_op hc u v

theorem PP_ac (a : 𝓞 E) (u : Q S d n) : PP m x (ac (AQ A a) u) = PP m x u ≫ t.act.act a := by
  exact GlobalTheory.FrameBiextId.PP_ac hc a u

theorem PP_zero : PP m x (0 : Q S d n) = 1 := by
  exact GlobalTheory.FrameBiextId.PP_zero hc

omit hc in
theorem hX (i : Fin k) (j : Fin d) : (Ideal.Quotient.mk _ (MvPolynomial.X (i, j)) : Jet S (Fin k × Fin d) m) =
    psJet m ((gen i : Q S d k).1 j) := by
  apply GlobalTheory.FrameBiextId.hX

omit hc in
theorem hF (i i' : Fin k) (j : Fin d) : (Ideal.Quotient.mk _ (psIn d m ![i, i'] (G.F j)) : Jet S (Fin k × Fin d) m) =
    psJet m ((op (FQ G) (gen i) (gen i') : Q S d k).1 j) := by
  apply GlobalTheory.FrameBiextId.hF

omit hc in
theorem hA (a : 𝓞 E) (i : Fin k) (j : Fin d) : (Ideal.Quotient.mk _ (psIn d m ![i] (A.act a j)) : Jet S (Fin k × Fin d) m) =
    psJet m ((ac (AQ A a) (gen i) : Q S d k).1 j) := by
  apply GlobalTheory.FrameBiextId.hA

omit hc

variable {e : ∀ m, FrTyG t x0 d x m} {ph1 ph2 : PS S 3 d} {sy : PS S 2 d} {ad : 𝓞 E → PS S 2 d}
  (hf : IsFrameG t x0 d x G.F A.act ph1 ph2 sy ad e)
include hJ

theorem peXX (b : Fin k → Q S d n) (i i' : Fin k) :
    val (peG t x0 d x e m ![fun j => MvPolynomial.X (i, j), fun j => MvPolynomial.X (i', j)]) (homAt x0 (jQ m b)).left y J =
      ee x e y J (b i) (b i') := by
  apply GlobalTheory.FrameBiextId.peXX; assumption

theorem val_th (b : Fin 3 → Q S d n) (i₀ i₁ i₂ : Fin 3) :
    val (LB.pullGen t.PP.L (thφ t.G (x3 t.G)) thε t.cub.t (lift (jptG t x0 d x m i₀) (lift (jptG t x0 d x m i₁)
      (jptG t x0 d x m i₂))).left) (homAt x0 (jQ m b)).left y J =
      cubV t.cub y J (PP m x (b i₀)) (PP m x (b i₁)) (PP m x (b i₂)) := by
  apply GlobalTheory.FrameBiextId.val_th; assumption

include hf

theorem frame_biext_dictionary_first_partial_law (u v w : Q S d n) : VV m y (E3 ph1 u v w) = (cubV t.cub y J (PP m x u) (PP m x v) (PP m x w) *
    (ee x e y J (op (FQ G) u v) w)⁻¹ * ee x e y J u w * ee x e y J v w).val := by
  apply GlobalTheory.FrameBiextId.frame_biext_dictionary_first_partial_law <;> assumption

theorem frame_biext_dictionary_second_partial_law (u v w : Q S d n) : VV m y (E3 ph2 u v w) = (cubV t.cub y J (PP m x u) (PP m x v) (PP m x w) *
    (ee x e y J u (op (FQ G) v w))⁻¹ * ee x e y J u v * ee x e y J u w).val := by
  apply GlobalTheory.FrameBiextId.frame_biext_dictionary_second_partial_law <;> assumption

theorem dict_sy (u v : Q S d n) : VV m y (E2 sy u v) = (ee x e y J v u * (ee x e y J u v)⁻¹).val := by
  apply GlobalTheory.FrameBiextId.dict_sy <;> assumption

omit hf in
theorem dict_ad (a : 𝓞 E) {K : Type} [Fintype K] {φ : K → ((t.G ⊗ t.G).left ⟶ t.G.left)} {ε : K → ℤ}
    (wL : LB.Gen (LB.LinComb t.PP.L φ ε)) (U : (Jet S (Fin 2 × Fin d) m)ˣ) (hU : (U : Jet S (Fin 2 × Fin d) m) = psJet m (ad a))
    (h : LB.Gen.Corr t.PP.L _ _ _ _ (LB.mulGen t.PP.L _ _ _ _
      (LB.pullGen t.PP.L _ _ wL (lift (jptG t x0 d x m (0 : Fin 2)) (jptG t x0 d x m (1 : Fin 2))).left)
      (peG t x0 d x e m ![fun j => psIn d m ![0] (A.act a j), fun j => MvPolynomial.X ((1 : Fin 2), j)]))
      (scaleGenG t _ _ (unitΓ U) (peG t x0 d x e m ![fun j => MvPolynomial.X ((0 : Fin 2), j), fun j => psIn d m ![1] (A.act (H.bar a) j)])))
    (u v : Q S d n) : VV m y (E2 (ad a) u v) = (val₂ wL y J (PP m x u) (PP m x v) * ee x e y J (ac (AQ A a) u) v *
      (ee x e y J u (ac (AQ A (H.bar a)) v))⁻¹).val := by
  apply GlobalTheory.FrameBiextId.dict_ad <;> assumption

omit hf in
theorem dict_ax (ha : FrAxes t x0 d x e) (u : Q S d n) : ee x e y J 0 u = 1 ∧ ee x e y J u 0 = 1 := by
  apply GlobalTheory.FrameBiextId.dict_ax <;> assumption

end Dict

section Law

variable {G : FGLaw S d} {A : Germ.OAct (𝓞 E) G}

theorem at₂ {p q : Q S d 2} (h : p.1 = q.1) (u v : Q S d n) : sq ![u, v] p = sq ![u, v] q := by rw [Subtype.ext h]

theorem opc (u v : Q S d n) : op (FQ G) u v = op (FQ G) v u := by
  apply GlobalTheory.FrameBiextId.opc

theorem op0 (u : Q S d n) : op (FQ G) 0 u = u := by
  apply GlobalTheory.FrameBiextId.op0

theorem opa (u v w : Q S d n) : op (FQ G) (op (FQ G) u v) w = op (FQ G) u (op (FQ G) v w) := by
  apply GlobalTheory.FrameBiextId.opa

theorem ac0 (a : 𝓞 E) : ac (AQ A a) (0 : Q S d n) = 0 := by
  apply GlobalTheory.FrameBiextId.ac0

theorem ac_op (a : 𝓞 E) (u v : Q S d n) : ac (AQ A a) (op (FQ G) u v) = op (FQ G) (ac (AQ A a) u) (ac (AQ A a) v) := by
  apply GlobalTheory.FrameBiextId.ac_op

theorem ac_add (a b : 𝓞 E) (u : Q S d n) : ac (AQ A (a + b)) u = op (FQ G) (ac (AQ A a) u) (ac (AQ A b) u) := by
  apply GlobalTheory.FrameBiextId.ac_add

theorem ac_mul (a b : 𝓞 E) (u : Q S d n) : ac (AQ A (a * b)) u = ac (AQ A a) (ac (AQ A b) u) := by
  apply GlobalTheory.FrameBiextId.ac_mul

theorem ac_one (u : Q S d n) : ac (AQ A 1) u = u := by
  apply GlobalTheory.FrameBiextId.ac_one

end Law


theorem fbId : FBIdSt := by
  exact GlobalTheory.FrameBiextId.fbId

end Formalism.MainNotions.ModuliIntegralCharts.H1.FBIdAd
