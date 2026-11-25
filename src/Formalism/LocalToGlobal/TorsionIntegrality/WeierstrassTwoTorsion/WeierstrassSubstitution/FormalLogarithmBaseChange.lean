module

public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementF
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalGroupEqWSeries
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementZ
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.CompInv
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.CurveSer
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.EqWSerSubst
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FlowBasic
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.LogExp
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FlowTwo
import Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule
import Formalism.FormalGroupLog.FormalGroupLogProofs.ConstantCoeffSubstOfZero
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FlowThird, Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalLogarithmBaseChange

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FlowThird =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FlowThird", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FlowTwo\n\n"}
section -- clump:auto
@[expose] public section

universe u

namespace Formalism.L2.Th1.A
namespace CubicFlow

open QuadraticFlow

variable {A : Type u} [CommRing A]

def gE (W : WeierstrassCurve A) (z v : A) : A :=
  z ^ 3 + W.a₁ * z * v + W.a₂ * z ^ 2 * v + W.a₃ * v ^ 2 + W.a₄ * z * v ^ 2 + W.a₆ * v ^ 3 - v

def k3 (W : WeierstrassCurve A) (l : A) : A := 1 + W.a₂ * l + W.a₄ * l ^ 2 + W.a₆ * l ^ 3
def k2 (W : WeierstrassCurve A) (l n : A) : A :=
  W.a₁ * l + W.a₂ * n + W.a₃ * l ^ 2 + 2 * W.a₄ * l * n + 3 * W.a₆ * l ^ 2 * n
def k1 (W : WeierstrassCurve A) (l n : A) : A :=
  W.a₁ * n + 2 * W.a₃ * l * n + W.a₄ * n ^ 2 + 3 * W.a₆ * l * n ^ 2 - l
def k0 (W : WeierstrassCurve A) (n : A) : A := W.a₃ * n ^ 2 + W.a₆ * n ^ 3 - n

lemma gE_line (W : WeierstrassCurve A) (l n z : A) :
    gE W z (l * z + n) = k3 W l * z ^ 3 + k2 W l n * z ^ 2 + k1 W l n * z + k0 W n := by
  unfold gE k3 k2 k1 k0
  ring

lemma gE_line_der (W : WeierstrassCurve A) (l n z : A) :
    fuAt W z (l * z + n) - l * fwAt W z (l * z + n)
      = 3 * k3 W l * z ^ 2 + 2 * k2 W l n * z + k1 W l n := by
  unfold fuAt fwAt k3 k2 k1
  ring

lemma wEq_iff (W : WeierstrassCurve A) (z v : A) : WEq W z v ↔ gE W z v = 0 := by
  unfold WEq gE
  constructor <;> intro h <;> linear_combination -h

lemma der_gE {D : A → A} (hD : IsDer D) {W : WeierstrassCurve A} (hC : ConstCurve D W) (z v : A) :
    D (gE W z v) = fuAt W z v * D z - fwAt W z v * D v := by
  obtain ⟨hadd, hmul⟩ := hD
  obtain ⟨c1, c2, c3, c4, c6⟩ := hC
  have hsub : ∀ a b, D (a - b) = D a - D b := by
    intro a b
    have h := hadd (a - b) b
    rw [sub_add_cancel] at h
    rw [h]
    ring
  have hp2 : ∀ a, D (a ^ 2) = 2 * a * D a := fun a => by rw [sq, hmul]; ring
  have hp3 : ∀ a, D (a ^ 3) = 3 * a ^ 2 * D a := fun a => by
    rw [show a ^ 3 = a * a ^ 2 by ring, hmul, hp2]; ring
  unfold gE fuAt fwAt
  simp only [hsub, hadd, hmul, hp2, hp3, c1, c2, c3, c4, c6]
  ring

lemma cubic_roots [IsDomain A] {C3 C2 C1 C0 z1 z2 z3 : A} (hz : z1 ≠ z2)
    (h1 : C3 * z1 ^ 3 + C2 * z1 ^ 2 + C1 * z1 + C0 = 0)
    (h2 : C3 * z2 ^ 3 + C2 * z2 ^ 2 + C1 * z2 + C0 = 0)
    (he1 : C3 * (z1 + z2 + z3) + C2 = 0) :
    C3 * z3 ^ 3 + C2 * z3 ^ 2 + C1 * z3 + C0 = 0 ∧
      C3 * (z1 * z2 + z1 * z3 + z2 * z3) - C1 = 0 ∧ C3 * (z1 * z2 * z3) + C0 = 0 := by
  have hq : (z1 - z2) * (C3 * (z1 ^ 2 + z1 * z2 + z2 ^ 2) + C2 * (z1 + z2) + C1) = 0 := by
    linear_combination h1 - h2
  have hq' := (mul_eq_zero.mp hq).resolve_left (sub_ne_zero.mpr hz)
  have e2 : C3 * (z1 * z2 + z1 * z3 + z2 * z3) - C1 = 0 := by
    linear_combination -hq' + (z1 + z2) * he1
  have e3 : C3 * (z1 * z2 * z3) + C0 = 0 := by
    linear_combination h1 - z1 ^ 2 * he1 + z1 * e2
  refine ⟨?_, e2, e3⟩
  linear_combination z3 ^ 2 * he1 - z3 * e2 + e3

end CubicFlow

open QuadraticFlow CubicFlow

theorem flowThirdPoint : FlowThird.{u} := by
  intro A _ _ W D u1 w1 u2 w2 l n u3 hD hC hF hW2 hDu2 hDw2 hl hn hsum hk3 h12 h31 h32
  obtain ⟨hW1, hDu1, hDw1⟩ := hF
  have hD' := hD
  obtain ⟨hadd, hmul⟩ := hD'
  have hw1 : w1 = l * u1 + n := by linear_combination -hn
  have hw2 : w2 = l * u2 + n := by linear_combination hl - hn
  have r1 : k3 W l * u1 ^ 3 + k2 W l n * u1 ^ 2 + k1 W l n * u1 + k0 W n = 0 := by
    rw [← gE_line, ← hw1]; exact (wEq_iff W u1 w1).1 hW1
  have r2 : k3 W l * u2 ^ 3 + k2 W l n * u2 ^ 2 + k1 W l n * u2 + k0 W n = 0 := by
    rw [← gE_line, ← hw2]; exact (wEq_iff W u2 w2).1 hW2
  have hs : k3 W l * (u1 + u2 + u3) + k2 W l n = 0 := hsum
  have hk : k3 W l ≠ 0 := hk3
  obtain ⟨r3, e2, -⟩ := cubic_roots h12 r1 r2 hs
  have hD0 : D 0 = 0 := by
    have h := hadd 0 0
    rw [add_zero] at h
    linear_combination -h
  have hDline : ∀ z, D (l * z + n) = l * D z + z * D l + D n := by
    intro z; rw [hadd, hmul]

  have T1 : u1 * D l + D n = 3 * k3 W l * u1 ^ 2 + 2 * k2 W l n * u1 + k1 W l n := by
    have h := hDline u1
    rw [← hw1, hDw1, hDu1] at h
    have hd := gE_line_der W l n u1
    rw [← hw1] at hd
    linear_combination hd - h
  have T2 : u2 * D l + D n = 0 := by
    have h := hDline u2
    rw [← hw2, hDw2, hDu2] at h
    linear_combination -h
  have hq : (u1 - u2) * (D l - k3 W l * (u1 - u3)) = 0 := by
    linear_combination T1 - T2 + 2 * u1 * hs - e2
  have hDl := sub_eq_zero.mp ((mul_eq_zero.mp hq).resolve_left (sub_ne_zero.mpr h12))
  have hg3 : gE W u3 (l * u3 + n) = 0 := by rw [gE_line]; exact r3
  have hd3 := der_gE hD hC u3 (l * u3 + n)
  rw [hg3, hD0, hDline] at hd3
  have hd3' := gE_line_der W l n u3
  have hK : k3 W l * (u3 - u1) * (u3 - u2) ≠ 0 :=
    mul_ne_zero (mul_ne_zero hk (sub_ne_zero.mpr h31)) (sub_ne_zero.mpr h32)
  have hkey : (k3 W l * (u3 - u1) * (u3 - u2)) * (D u3 + fwAt W u3 (l * u3 + n)) = 0 := by
    linear_combination -hd3 - D u3 * hd3' - D u3 * (2 * u3 * hs - e2)
      + fwAt W u3 (l * u3 + n) * (u3 - u2) * hDl + fwAt W u3 (l * u3 + n) * T2
  have hX : D u3 = -fwAt W u3 (l * u3 + n) := by
    have := (mul_eq_zero.mp hkey).resolve_left hK
    linear_combination this
  refine ⟨(wEq_iff W u3 _).2 hg3, hX, ?_⟩
  rw [hDline]
  linear_combination l * hX + hd3' + 2 * u3 * hs - e2 + (u3 - u2) * hDl + T2

end Formalism.L2.Th1.A
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FlowThird =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalLogarithmBaseChange =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalLogarithmBaseChange", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalGroupEqWSeries\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementZ\nimport Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule\nimport Formalism.FormalGroupLog.FormalGroupLogProofs.ConstantCoeffSubstOfZero\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.CompInv\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.CurveSer\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.EqWSerSubst\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FlowBasic\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FlowThird\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.LogExp\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries

universe u v

noncomputable section

namespace Formalism.L2.Th1.A

namespace Fgl2

section Subst

variable {R : Type u} [CommRing R] (W : WeierstrassCurve R)

abbrev curveM : WeierstrassCurve (MvPowerSeries (Fin 2) R) :=
  W.map (MvPowerSeries.C : R →+* MvPowerSeries (Fin 2) R)

theorem fw_subst {s : MvPowerSeries (Fin 2) R} (hs : MvPowerSeries.constantCoeff s = 0) :
    (fw W).subst s = fwAt (curveM W) s ((wSer W).subst s) := by
  have hs' := PowerSeries.HasSubst.of_constantCoeff_zero hs
  have hC : ∀ a : R, (PowerSeries.C a).subst s = MvPowerSeries.C a := fun a => by
    rw [← PowerSeries.coe_substAlgHom hs']
    exact (PowerSeries.substAlgHom hs').commutes a
  rw [← PowerSeries.coe_substAlgHom hs']
  simp only [fw, fwAt, map_sub, map_mul, map_pow, map_ofNat, map_one]
  rw [PowerSeries.coe_substAlgHom hs']
  simp only [hC, PowerSeries.subst_X hs', WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂,
    WeierstrassCurve.map_a₃, WeierstrassCurve.map_a₄, WeierstrassCurve.map_a₆]
  try ring

theorem fu_subst {s : MvPowerSeries (Fin 2) R} (hs : MvPowerSeries.constantCoeff s = 0) :
    (fu W).subst s = fuAt (curveM W) s ((wSer W).subst s) := by
  have hs' := PowerSeries.HasSubst.of_constantCoeff_zero hs
  have hC : ∀ a : R, (PowerSeries.C a).subst s = MvPowerSeries.C a := fun a => by
    rw [← PowerSeries.coe_substAlgHom hs']
    exact (PowerSeries.substAlgHom hs').commutes a
  rw [← PowerSeries.coe_substAlgHom hs']
  simp only [fu, fuAt, map_mul, map_add (f := _), map_pow, map_ofNat]
  rw [PowerSeries.coe_substAlgHom hs']
  simp only [hC, PowerSeries.subst_X hs', WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂,
    WeierstrassCurve.map_a₄]
  try ring

theorem weq_subst {s : MvPowerSeries (Fin 2) R} (hs : MvPowerSeries.constantCoeff s = 0) :
    WEq (curveM W) s ((wSer W).subst s) := by
  have hs' := PowerSeries.HasSubst.of_constantCoeff_zero hs
  have hC : ∀ a : R, (PowerSeries.C a).subst s = MvPowerSeries.C a := fun a => by
    rw [← PowerSeries.coe_substAlgHom hs']
    exact (PowerSeries.substAlgHom hs').commutes a
  have h := (unit_flow R W).2.2.1.1
  unfold WEq at h ⊢
  have h2 := congrArg (PowerSeries.substAlgHom (R := R) hs') h
  simp only [map_mul, map_add (f := _), map_pow] at h2
  rw [PowerSeries.coe_substAlgHom hs'] at h2
  simp only [hC, PowerSeries.subst_X hs', WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂,
    WeierstrassCurve.map_a₃, WeierstrassCurve.map_a₄, WeierstrassCurve.map_a₆] at h2 ⊢
  exact h2

def Dm (i : Fin 2) (a : MvPowerSeries (Fin 2) R) : MvPowerSeries (Fin 2) R :=
  (fw W).subst (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) * MvPowerSeries.pderiv (R := R) i a

theorem isDer_Dm (i : Fin 2) : IsDer (Dm W i) := by
  refine ⟨fun a b => ?_, fun a b => ?_⟩
  · unfold Dm
    rw [map_add (f := _), mul_add]
  · unfold Dm
    rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
    ring

theorem const_Dm (i : Fin 2) : ConstCurve (Dm W i) (curveM W) := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;>
  · unfold Dm
    simp [MvPowerSeries.pderiv_C]

theorem Dm_subst (i : Fin 2) {s : MvPowerSeries (Fin 2) R} (hs : MvPowerSeries.constantCoeff s = 0) (f : R⟦X⟧) :
    Dm W i (f.subst s) = (PowerSeries.derivative f).subst s * Dm W i s := by
  unfold Dm
  rw [Formalism.G.LogCR.pderiv_psubst hs]
  ring

theorem flow_Dm (i : Fin 2) : IsFlowUW (curveM W) (Dm W i) (MvPowerSeries.X i) (Fgl1.Wi W i) := by
  have hX : MvPowerSeries.constantCoeff (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) = 0 :=
    MvPowerSeries.constantCoeff_X i
  have hF := unit_flow R W
  have hDX : Dm W i (MvPowerSeries.X i) = (fw W).subst (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) := by
    unfold Dm
    rw [MvPowerSeries.pderiv_X_self, mul_one]
  refine ⟨weq_subst W hX, ?_, ?_⟩
  · rw [hDX, fw_subst W hX]
  · rw [Dm_subst W i hX, ← fu_subst W hX, hDX]
    have h3 : fw W * PowerSeries.derivative (wSer W) = fu W := by
      have h4 := hF.2.2.1.2.2
      rw [hF.2.2.2.2.1] at h4
      simpa only [D, Derivation.smul_apply, smul_eq_mul] using h4
    have hs' := PowerSeries.HasSubst.of_constantCoeff_zero hX
    rw [← h3, ← PowerSeries.coe_substAlgHom (R := R) hs', map_mul, mul_comm]

theorem Dm_X_of_ne {i j : Fin 2} (h : j ≠ i) : Dm W i (MvPowerSeries.X j) = 0 := by
  unfold Dm
  rw [MvPowerSeries.pderiv_X_of_ne h, mul_zero]

theorem lam_mul' (i j : Fin 2) :
    lam W * (MvPowerSeries.X i - MvPowerSeries.X j) = Fgl1.Wi W i - Fgl1.Wi W j := by
  have h : lam W * (MvPowerSeries.X 1 - MvPowerSeries.X 0) = Fgl1.Wi W 1 - Fgl1.Wi W 0 :=
    (formal_group_chord R W).1
  fin_cases i <;> fin_cases j
  · simp
  · show lam W * (MvPowerSeries.X 0 - MvPowerSeries.X 1) = Fgl1.Wi W 0 - Fgl1.Wi W 1
    rw [← neg_sub, mul_neg, h, neg_sub]
  · exact h
  · simp

theorem nu_eq (i : Fin 2) : nu W = Fgl1.Wi W i - lam W * MvPowerSeries.X i := by
  have h : lam W * (MvPowerSeries.X 1 - MvPowerSeries.X 0) = Fgl1.Wi W 1 - Fgl1.Wi W 0 :=
    (formal_group_chord R W).1
  fin_cases i
  · rfl
  · show nu W = Fgl1.Wi W 1 - lam W * MvPowerSeries.X 1
    unfold nu
    linear_combination h

theorem third_rel (i j : Fin 2) (hij : i ≠ j) :
    cThree W * (MvPowerSeries.X i + MvPowerSeries.X j + uThird W) + cTwo W = 0 := by
  have hLam : MvPowerSeries.constantCoeff (lam W) = 0 := by
    rw [← MvPowerSeries.coeff_zero_eq_constantCoeff_apply, Fgl1.coeff_lam]
    simpa using (Fgl1.wSer_low W).2.1
  have hinv : cThree W * MvPowerSeries.invOfUnit (cThree W) 1 = 1 :=
    MvPowerSeries.mul_invOfUnit _ _ (by simp [cThree, hLam])
  have hsum : (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) + MvPowerSeries.X j =
      MvPowerSeries.X 0 + MvPowerSeries.X 1 := by
    fin_cases i <;> fin_cases j <;> first | exact absurd rfl hij | rfl | exact add_comm _ _
  rw [hsum, uThird]
  linear_combination (-(cTwo W)) * hinv

theorem Dm_uThird [IsDomain R] (i : Fin 2) : Dm W i (uThird W) = -(fw W).subst (uThird W) := by
  obtain ⟨j, hji⟩ : ∃ j : Fin 2, j ≠ i := ⟨i + 1, by fin_cases i <;> decide⟩
  have hXj : MvPowerSeries.constantCoeff (MvPowerSeries.X j : MvPowerSeries (Fin 2) R) = 0 :=
    MvPowerSeries.constantCoeff_X j
  have hD2 : Dm W i (Fgl1.Wi W j) = 0 := by
    rw [Dm_subst W i hXj, Dm_X_of_ne W hji, mul_zero]
  have hne12 : (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) ≠ MvPowerSeries.X j := fun h =>
    hji (MvPowerSeries.X_inj.mp h).symm
  obtain ⟨_, hu, hw, _, _, hX, hY⟩ := formal_group_chord R W
  have hThird (k : Fin 2) : MvPowerSeries.coeff (Finsupp.single k 1) (uThird W) = -1 := by
    have h : MvPowerSeries.coeff (Finsupp.single k 1) (fgl W) = 1 := by
      fin_cases k
      · exact hX
      · exact hY
    have hneg : -(MvPowerSeries.coeff (Finsupp.single k 1) (uThird W)) = 1 := by
      simpa [fgl, MvPowerSeries.coeff_mul, Finsupp.antidiagonal_single, Finset.Nat.antidiagonal_succ,
        MvPowerSeries.coeff_zero_eq_constantCoeff_apply, hu] using h
    exact neg_eq_iff_eq_neg.mp hneg
  have hcoef : ∀ k l : Fin 2, MvPowerSeries.coeff (Finsupp.single k 1)
      (MvPowerSeries.X l : MvPowerSeries (Fin 2) R) = if k = l then 1 else 0 := by
    intro k l
    rw [MvPowerSeries.coeff_X]
    by_cases h : k = l
    · simp [h]
    · simp [h, Finsupp.single_left_inj one_ne_zero]
  have hne31 : uThird W ≠ MvPowerSeries.X i := fun h => by
    have h1 := hThird j
    rw [h, hcoef, if_neg hji] at h1
    exact one_ne_zero (neg_eq_zero.mp h1.symm)
  have hne32 : uThird W ≠ MvPowerSeries.X j := fun h => by
    have h1 := hThird i
    rw [h, hcoef, if_neg (Ne.symm hji)] at h1
    exact one_ne_zero (neg_eq_zero.mp h1.symm)
  have hC3 : (1 + (curveM W).a₂ * lam W + (curveM W).a₄ * lam W ^ 2 + (curveM W).a₆ * lam W ^ 3) ≠ 0 := by
    have hLam : MvPowerSeries.constantCoeff (lam W) = 0 := by
      rw [← MvPowerSeries.coeff_zero_eq_constantCoeff_apply, Fgl1.coeff_lam]
      simpa using (Fgl1.wSer_low W).2.1
    have hcc : MvPowerSeries.constantCoeff (cThree W) = 1 := by
      simp [cThree, hLam]
    intro h
    have h1 := congrArg MvPowerSeries.constantCoeff (show cThree W = 0 from h)
    rw [hcc, map_zero] at h1
    exact one_ne_zero h1
  have h9 : (1 + (curveM W).a₂ * lam W + (curveM W).a₄ * lam W ^ 2 + (curveM W).a₆ * lam W ^ 3) *
      (MvPowerSeries.X i + MvPowerSeries.X j + uThird W) + ((curveM W).a₁ * lam W + (curveM W).a₂ * nu W +
        (curveM W).a₃ * lam W ^ 2 + 2 * (curveM W).a₄ * lam W * nu W + 3 * (curveM W).a₆ * lam W ^ 2 * nu W) = 0 :=
    third_rel W i j (Ne.symm hji)
  haveI : IsDomain (MvPowerSeries (Fin 2) R) := NoZeroDivisors.to_isDomain _
  have hT := flowThirdPoint (MvPowerSeries (Fin 2) R) (curveM W) (Dm W i) (MvPowerSeries.X i) (Fgl1.Wi W i)
    (MvPowerSeries.X j) (Fgl1.Wi W j) (lam W) (nu W) (uThird W) (isDer_Dm W i) (const_Dm W i) (flow_Dm W i)
    (weq_subst W hXj) (Dm_X_of_ne W hji) hD2 (lam_mul' W i j) (nu_eq W i) h9 hC3 hne12 hne31 hne32
  rw [hT.2.1, fw_subst W hu, ← hw]
  rfl

theorem formal_inverse_spec : ISerSpec.{u} := iSerSpec_of w_series_spec w_series_factorization invariant_differential_units unit_flow chartFlowNegation

theorem Dm_fgl [IsDomain R] (i : Fin 2) : Dm W i (fgl W) = (fw W).subst (fgl W) := by
  have hu : MvPowerSeries.constantCoeff (uThird W) = 0 := (formal_group_chord R W).2.1
  have hu' := PowerSeries.HasSubst.of_constantCoeff_zero hu
  have hS := formal_inverse_spec R W
  have hI : PowerSeries.HasSubst (iSer W) := PowerSeries.HasSubst.of_constantCoeff_zero hS.1
  have hD : PowerSeries.derivative (iSer W) * fw W = -(fw W).subst (iSer W) := by
    have h := hS.2.2.2.2.2.2.1
    simp only [D, Derivation.smul_apply, smul_eq_mul] at h
    rw [mul_comm]
    exact h
  have hmul : ∀ f g : R⟦X⟧, (f * g).subst (uThird W) = f.subst (uThird W) * g.subst (uThird W) :=
    fun f g => by rw [← PowerSeries.coe_substAlgHom (R := R) hu', map_mul]
  have hneg : ∀ f : R⟦X⟧, (-f).subst (uThird W) = -(f.subst (uThird W)) :=
    fun f => by rw [← PowerSeries.coe_substAlgHom (R := R) hu', map_neg]
  rw [Fgl1.fgl_eq, Dm_subst W i hu, Dm_uThird W i, ← PowerSeries.subst_comp_subst_apply hI hu', mul_neg,
    ← hmul, hD, hneg, neg_neg]

end Subst

section Transfer

variable {R : Type u} {S : Type v} [CommRing R] [CommRing S]

theorem map_pderiv (φ : R →+* S) (i : Fin 2) (f : MvPowerSeries (Fin 2) R) :
    MvPowerSeries.map φ (MvPowerSeries.pderiv (R := R) i f)
      = MvPowerSeries.pderiv (R := S) i (MvPowerSeries.map φ f) := by
  ext n
  simp [MvPowerSeries.coeff_pderiv]

theorem map_Dm (φ : R →+* S) (W : WeierstrassCurve R) (i : Fin 2) (f : MvPowerSeries (Fin 2) R) :
    MvPowerSeries.map φ (Dm W i f) = Dm (W.map φ) i (MvPowerSeries.map φ f) := by
  unfold Dm
  rw [map_mul, map_pderiv,
    PowerSeries.map_subst (PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X i)),
    (series_map R S φ W).2.2.2.2.1, MvPowerSeries.map_X]

theorem Dm_fgl' (W : WeierstrassCurve R) (i : Fin 2) : Dm W i (fgl W) = (fw W).subst (fgl W) := by
  have hcc : PowerSeries.HasSubst (fgl Univ.W₀) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (formal_group_chord Univ.Z Univ.W₀).2.2.2.2.1
  have h1 := congrArg (MvPowerSeries.map (Univ.φ_of W)) (Dm_fgl Univ.W₀ i)
  rw [map_Dm, Univ.map_eq, ← Fgl1.fgl_univ, PowerSeries.map_subst hcc,
    (series_map _ _ (Univ.φ_of W) Univ.W₀).2.2.2.2.1, Univ.map_eq, ← Fgl1.fgl_univ] at h1
  exact h1

theorem fw_mul_om_subst (W : WeierstrassCurve R) {s : MvPowerSeries (Fin 2) R} (hs : MvPowerSeries.constantCoeff s = 0) :
    (fw W).subst s * (om W).subst s = 1 := by
  have h1 : fw W * om W = 1 := by
    have h := (unit_flow R W).2.2.2.2.2 X
    simp only [D, Derivation.smul_apply, PowerSeries.derivative_X, smul_eq_mul, mul_one] at h
    rw [mul_comm]
    exact h
  have hs' := PowerSeries.HasSubst.of_constantCoeff_zero hs
  rw [← PowerSeries.coe_substAlgHom (R := R) hs', ← map_mul, h1, map_one]

theorem om_fgl (W : WeierstrassCurve R) (i : Fin 2) :
    (om W).subst (fgl W) * MvPowerSeries.pderiv (R := R) i (fgl W)
      = (om W).subst (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) := by
  have h := Dm_fgl' W i
  unfold Dm at h
  have hF : MvPowerSeries.constantCoeff (fgl W) = 0 := (formal_group_chord R W).2.2.2.2.1
  have h1 := fw_mul_om_subst W hF
  have h2 := fw_mul_om_subst W (MvPowerSeries.constantCoeff_X i)
  linear_combination ((om W).subst (fgl W) * (om W).subst (MvPowerSeries.X i : MvPowerSeries (Fin 2) R)) * h +
    (om W).subst (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) * h1 -
    ((om W).subst (fgl W) * MvPowerSeries.pderiv (R := R) i (fgl W)) * h2

theorem mvsubst_psubst {σ τ : Type*} {a : MvPowerSeries σ R} (ha : PowerSeries.HasSubst a)
    {b : σ → MvPowerSeries τ R} (hb : MvPowerSeries.HasSubst b) (f : R⟦X⟧) :
    MvPowerSeries.subst b (f.subst a) = f.subst (MvPowerSeries.subst b a) := by
  unfold PowerSeries.subst
  exact MvPowerSeries.subst_comp_subst_apply ha.const hb f

end Transfer

section Log

variable {K : Type u} [Field K] [CharZero K] (W : WeierstrassCurve K)

theorem formal_logarithm_spec : LogSpec.{u} := logSpec_of integration_spec invariant_differential_units

theorem formal_exponential_spec : ExpSpec.{u} := expSpec_of integration_spec composition_inverse_spec invariant_differential_units

theorem formal_logarithm_neg : LogNeg.{u} := logNeg_of integration_spec composition_inverse_spec invariant_differential_units formal_inverse_spec

private theorem eq_zero_of_pderiv_zero_of_pderiv_one_eq_zero {h : MvPowerSeries (Fin 2) K}
    (h0 : MvPowerSeries.pderiv (R := K) 0 h = 0) (h1 : MvPowerSeries.pderiv (R := K) 1 h = 0)
    (hc : MvPowerSeries.constantCoeff h = 0) : h = 0 := by
  ext n
  rw [map_zero]
  by_cases hn : n = 0
  · subst hn
    simpa using hc
  · obtain ⟨i, hi⟩ : ∃ i, n i ≠ 0 := by
      by_contra hne
      push_neg at hne
      exact hn (Finsupp.ext hne)
    have hD : MvPowerSeries.pderiv (R := K) i h = 0 := by
      fin_cases i
      · exact h0
      · exact h1
    have h2 := congrArg (MvPowerSeries.coeff (n - Finsupp.single i 1)) hD
    rw [MvPowerSeries.coeff_pderiv, map_zero] at h2
    have hsum : n - Finsupp.single i 1 + Finsupp.single i 1 = n := by
      ext j
      by_cases hj : j = i
      · subst hj
        simp
        omega
      · simp [Ne.symm hj]
    rw [hsum] at h2
    exact (mul_eq_zero.mp h2).resolve_right (Nat.cast_add_one_ne_zero _)

theorem log_fgl : (logSer W).subst (fgl W) = (logSer W).subst (U₁ : MvPowerSeries (Fin 2) K)
    + (logSer W).subst (U₂ : MvPowerSeries (Fin 2) K) := by
  have hL := formal_logarithm_spec K W
  have hF : MvPowerSeries.constantCoeff (fgl W) = 0 := (formal_group_chord K W).2.2.2.2.1
  rw [← sub_eq_zero]
  apply eq_zero_of_pderiv_zero_of_pderiv_one_eq_zero
  · rw [map_sub, map_add (f := _), Formalism.G.LogCR.pderiv_psubst hF, Formalism.G.LogCR.pderiv_psubst (MvPowerSeries.constantCoeff_X 0),
      Formalism.G.LogCR.pderiv_psubst (MvPowerSeries.constantCoeff_X 1), hL.2.2.1, om_fgl W 0,
      MvPowerSeries.pderiv_X_self, MvPowerSeries.pderiv_X_of_ne (by decide), mul_zero, mul_one, add_zero, sub_self]
  · rw [map_sub, map_add (f := _), Formalism.G.LogCR.pderiv_psubst hF, Formalism.G.LogCR.pderiv_psubst (MvPowerSeries.constantCoeff_X 0),
      Formalism.G.LogCR.pderiv_psubst (MvPowerSeries.constantCoeff_X 1), hL.2.2.1, om_fgl W 1,
      MvPowerSeries.pderiv_X_self, MvPowerSeries.pderiv_X_of_ne (by decide), mul_zero, mul_one, zero_add, sub_self]
  · have hc : ∀ a : MvPowerSeries (Fin 2) K, MvPowerSeries.constantCoeff a = 0 →
        MvPowerSeries.constantCoeff ((logSer W).subst a) = 0 := fun a ha => by
      rw [PowerSeries.subst, Formalism.G.LogP.constantCoeff_subst_of_zero _ (fun _ => ha)]
      exact hL.1
    rw [map_sub, map_add (f := _), hc _ hF, hc _ (MvPowerSeries.constantCoeff_X 0), hc _ (MvPowerSeries.constantCoeff_X 1)]
    simp

end Log

section Group

open MvPowerSeries in
theorem cons_map {τ : Type*} {A : Type*} {B : Type*} [CommRing A] [CommRing B] (f : A →+* B)
    (g₁ g₂ : MvPowerSeries τ A) :
    (fun i => (![g₁, g₂] i).map f) = ![g₁.map f, g₂.map f] := by
  funext i
  fin_cases i <;> rfl

theorem exists_FK : ∃ F : FormalGroup Univ.K₀, F.toPowerSeries = fgl Univ.WK := by
  obtain ⟨_, _, _, _, hGc, hX, hY⟩ := formal_group_chord Univ.K₀ Univ.WK
  have hlog := log_fgl Univ.WK
  have hE := formal_exponential_spec Univ.K₀ Univ.WK
  have hLs : PowerSeries.HasSubst (logSer Univ.WK) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (formal_logarithm_spec Univ.K₀ Univ.WK).1
  have hhs : ∀ a b : MvPowerSeries (Fin 3) Univ.K₀, MvPowerSeries.constantCoeff a = 0 →
      MvPowerSeries.constantCoeff b = 0 → MvPowerSeries.HasSubst ![a, b] := fun a b ha hb =>
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun i => by
      fin_cases i
      · exact ha
      · exact hb
  have hadd : ∀ a b : MvPowerSeries (Fin 3) Univ.K₀, MvPowerSeries.constantCoeff a = 0 →
      MvPowerSeries.constantCoeff b = 0 →
      (logSer Univ.WK).subst (MvPowerSeries.subst ![a, b] (fgl Univ.WK)) =
        (logSer Univ.WK).subst a + (logSer Univ.WK).subst b := by
    intro a b ha hb
    have hab := hhs a b ha hb
    have h := congrArg (MvPowerSeries.subst ![a, b]) hlog
    rw [mvsubst_psubst (PowerSeries.HasSubst.of_constantCoeff_zero hGc) hab, ← MvPowerSeries.coe_substAlgHom hab,
      map_add, MvPowerSeries.coe_substAlgHom hab,
      mvsubst_psubst (PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X 0)) hab,
      mvsubst_psubst (PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X 1)) hab,
      MvPowerSeries.subst_X hab, MvPowerSeries.subst_X hab] at h
    simpa only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons] using h
  have hcs : ∀ a b : MvPowerSeries (Fin 3) Univ.K₀, MvPowerSeries.constantCoeff a = 0 →
      MvPowerSeries.constantCoeff b = 0 →
      MvPowerSeries.constantCoeff (MvPowerSeries.subst ![a, b] (fgl Univ.WK)) = 0 := fun a b ha hb => by
    rw [Formalism.G.LogP.constantCoeff_subst_of_zero _ (fun i => by
      fin_cases i
      · exact ha
      · exact hb)]
    exact hGc
  have hinj : ∀ u v : MvPowerSeries (Fin 3) Univ.K₀, MvPowerSeries.constantCoeff u = 0 →
      MvPowerSeries.constantCoeff v = 0 → (logSer Univ.WK).subst u = (logSer Univ.WK).subst v → u = v := by
    intro u v hu hv huv
    have hu' := PowerSeries.HasSubst.of_constantCoeff_zero hu
    have hv' := PowerSeries.HasSubst.of_constantCoeff_zero hv
    calc u = PowerSeries.subst u (X : Univ.K₀⟦X⟧) := (PowerSeries.subst_X hu').symm
      _ = PowerSeries.subst u (PowerSeries.subst (logSer Univ.WK) (expSer Univ.WK)) := by rw [hE.2.2.2.1]
      _ = PowerSeries.subst (PowerSeries.subst u (logSer Univ.WK)) (expSer Univ.WK) :=
          PowerSeries.subst_comp_subst_apply hLs hu' _
      _ = PowerSeries.subst (PowerSeries.subst v (logSer Univ.WK)) (expSer Univ.WK) := by
          rw [show PowerSeries.subst u (logSer Univ.WK) = PowerSeries.subst v (logSer Univ.WK) from huv]
      _ = PowerSeries.subst v (PowerSeries.subst (logSer Univ.WK) (expSer Univ.WK)) :=
          (PowerSeries.subst_comp_subst_apply hLs hv' _).symm
      _ = v := by rw [hE.2.2.2.1, PowerSeries.subst_X hv']
  have c0 : MvPowerSeries.constantCoeff (MvPowerSeries.X 0 : MvPowerSeries (Fin 3) Univ.K₀) = 0 :=
    MvPowerSeries.constantCoeff_X _
  have c1 : MvPowerSeries.constantCoeff (MvPowerSeries.X 1 : MvPowerSeries (Fin 3) Univ.K₀) = 0 :=
    MvPowerSeries.constantCoeff_X _
  have c2 : MvPowerSeries.constantCoeff (MvPowerSeries.X 2 : MvPowerSeries (Fin 3) Univ.K₀) = 0 :=
    MvPowerSeries.constantCoeff_X _
  refine ⟨{
    toPowerSeries := fgl Univ.WK
    zero_constantCoeff := hGc
    lin_coeff_X := hX
    lin_coeff_Y := hY
    assoc := ?_ }, rfl⟩
  apply hinj _ _ (hcs _ _ (hcs _ _ c0 c1) c2) (hcs _ _ c0 (hcs _ _ c1 c2))
  rw [hadd _ _ (hcs _ _ c0 c1) c2, hadd _ _ c0 c1, hadd _ _ c0 (hcs _ _ c1 c2), hadd _ _ c1 c2, add_assoc]

def FZ : FormalGroup Univ.Z := by
  obtain ⟨_, _, _, _, hcc, hX, hY⟩ := formal_group_chord Univ.Z Univ.W₀
  refine {
    toPowerSeries := fgl Univ.W₀
    zero_constantCoeff := hcc
    lin_coeff_X := hX
    lin_coeff_Y := hY
    assoc := ?_ }
  obtain ⟨F, hF⟩ := exists_FK
  apply Univ.mv_map_injective Univ.ι Univ.ι_injective
  have h := F.assoc
  rw [hF, ← Fgl1.fgl_WK] at h
  rw [MvPowerSeries.map_subst
      (MvPowerSeries.HasSubst.cons_subst_zero_left (0 : Fin 3) 1 2 hcc),
    MvPowerSeries.map_subst
      (MvPowerSeries.HasSubst.cons_subst_zero_right (0 : Fin 3) 1 2 hcc),
    cons_map, cons_map, MvPowerSeries.map_subst MvPowerSeries.HasSubst.X_X,
    MvPowerSeries.map_subst MvPowerSeries.HasSubst.X_X, cons_map, cons_map]
  simp only [MvPowerSeries.map_X]
  exact h

variable {R : Type u} [CommRing R] (W : WeierstrassCurve R)

theorem fgl_symm : fgl W = (fgl W).subst
    ![(MvPowerSeries.X 1 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 0] := by
  have hK : fgl Univ.WK = (fgl Univ.WK).subst
      ![(MvPowerSeries.X 1 : MvPowerSeries (Fin 2) Univ.K₀), MvPowerSeries.X 0] := by
    have hsw : MvPowerSeries.HasSubst
        (![(MvPowerSeries.X 1 : MvPowerSeries (Fin 2) Univ.K₀), MvPowerSeries.X 0]) :=
      MvPowerSeries.hasSubst_of_constantCoeff_zero fun i => by
        fin_cases i <;> exact MvPowerSeries.constantCoeff_X _
    have hL : fgl Univ.WK = (expSer Univ.WK).subst
        ((logSer Univ.WK).subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) Univ.K₀) +
          (logSer Univ.WK).subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) Univ.K₀)) := by
      have hE := formal_exponential_spec Univ.K₀ Univ.WK
      have hF : PowerSeries.HasSubst (fgl Univ.WK) :=
        PowerSeries.HasSubst.of_constantCoeff_zero (formal_group_chord Univ.K₀ Univ.WK).2.2.2.2.1
      have hLs : PowerSeries.HasSubst (logSer Univ.WK) :=
        PowerSeries.HasSubst.of_constantCoeff_zero (formal_logarithm_spec Univ.K₀ Univ.WK).1
      rw [← log_fgl Univ.WK, ← PowerSeries.subst_comp_subst_apply hLs hF, hE.2.2.2.1, PowerSeries.subst_X hF]
    have hl0 := (Fgl2.formal_logarithm_spec Univ.K₀ Univ.WK).1
    have hc : ∀ a : MvPowerSeries (Fin 2) Univ.K₀, MvPowerSeries.constantCoeff a = 0 →
        MvPowerSeries.constantCoeff ((logSer Univ.WK).subst a) = 0 := fun a ha => by
      rw [PowerSeries.subst, Formalism.G.LogP.constantCoeff_subst_of_zero _ (fun _ => ha)]
      exact hl0
    have hS : MvPowerSeries.constantCoeff ((logSer Univ.WK).subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) Univ.K₀)
        + (logSer Univ.WK).subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) Univ.K₀)) = 0 := by
      rw [map_add (f := _), hc _ (MvPowerSeries.constantCoeff_X 0), hc _ (MvPowerSeries.constantCoeff_X 1), add_zero]
    conv_rhs => rw [hL]
    rw [mvsubst_psubst (PowerSeries.HasSubst.of_constantCoeff_zero hS) hsw, ← MvPowerSeries.coe_substAlgHom hsw,
      map_add, MvPowerSeries.coe_substAlgHom hsw,
      mvsubst_psubst (PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X 0)) hsw,
      mvsubst_psubst (PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X 1)) hsw,
      MvPowerSeries.subst_X hsw, MvPowerSeries.subst_X hsw]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one]
    rw [add_comm]
    exact hL
  have hZsw : MvPowerSeries.HasSubst
      (![(MvPowerSeries.X 1 : MvPowerSeries (Fin 2) Univ.Z), MvPowerSeries.X 0]) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun i => by
      fin_cases i <;> exact MvPowerSeries.constantCoeff_X _
  have hι : MvPowerSeries.map Univ.ι (fgl Univ.W₀) = MvPowerSeries.map Univ.ι ((fgl Univ.W₀).subst
      ![(MvPowerSeries.X 1 : MvPowerSeries (Fin 2) Univ.Z), MvPowerSeries.X 0]) := by
    rw [MvPowerSeries.map_subst hZsw, cons_map, MvPowerSeries.map_X, MvPowerSeries.map_X, Fgl1.fgl_WK]
    exact hK
  have h := Univ.mv_transfer W hι
  have hRsw : MvPowerSeries.HasSubst
      (![(MvPowerSeries.X 1 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 0]) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun i => by
      fin_cases i <;> exact MvPowerSeries.constantCoeff_X _
  rw [← Fgl1.fgl_univ, MvPowerSeries.map_subst hZsw, cons_map, MvPowerSeries.map_X, MvPowerSeries.map_X,
    ← Fgl1.fgl_univ] at h
  exact h

end Group

section Inv

theorem hasSubst_X_iSer {R : Type u} [CommRing R] (W : WeierstrassCurve R) :
    MvPowerSeries.HasSubst (![X, iSer W] : Fin 2 → R⟦X⟧) := by
  exact MvPowerSeries.hasSubst_of_constantCoeff_zero fun i => by
    fin_cases i
    · exact PowerSeries.constantCoeff_X
    · exact (formal_inverse_spec R W).1

theorem inv_map {R : Type u} {S : Type v} [CommRing R] [CommRing S] (φ : R →+* S)
    (W : WeierstrassCurve R) :
    PowerSeries.map φ (MvPowerSeries.subst (![X, iSer W] : Fin 2 → R⟦X⟧) (fgl W))
      = MvPowerSeries.subst (![X, iSer (W.map φ)] : Fin 2 → S⟦X⟧) (fgl (W.map φ)) := by
  have h := MvPowerSeries.map_subst (h := φ) (hasSubst_X_iSer W) (fgl W)
  change MvPowerSeries.map φ _ = _
  rw [h, formal_group_map R S φ W]
  congr 1
  funext i
  fin_cases i
  · exact PowerSeries.map_X _
  · exact CurveSer.map_iSer (φ := φ) (W := W)

theorem inv_field {K : Type u} [Field K] [CharZero K] (W : WeierstrassCurve K) :
    MvPowerSeries.subst (![X, iSer W] : Fin 2 → K⟦X⟧) (fgl W) = 0 := by
  have hb := hasSubst_X_iSer W
  have hcc : MvPowerSeries.constantCoeff (fgl W) = 0 := (formal_group_chord K W).2.2.2.2.1
  have hF : PowerSeries.HasSubst (fgl W) := PowerSeries.HasSubst.of_constantCoeff_zero hcc
  have hS := formal_inverse_spec K W
  have hE := formal_exponential_spec K W
  have hN := formal_logarithm_neg K W
  have hself : ∀ f : K⟦X⟧, f.subst (X : K⟦X⟧) = f := fun f => by
    rw [PowerSeries.subst, show (fun _ : Unit => (X : K⟦X⟧)) = MvPowerSeries.X from funext fun _ => rfl,
      MvPowerSeries.subst_self]
    rfl
  have hcG : MvPowerSeries.constantCoeff (MvPowerSeries.subst (![X, iSer W] : Fin 2 → K⟦X⟧) (fgl W)) = 0 := by
    rw [Formalism.G.LogP.constantCoeff_subst_of_zero _ (fun i => by
      fin_cases i
      · exact PowerSeries.constantCoeff_X
      · exact hS.1)]
    exact hcc
  have hG := PowerSeries.HasSubst.of_constantCoeff_zero hcG
  have hlogG : (logSer W).subst (MvPowerSeries.subst (![X, iSer W] : Fin 2 → K⟦X⟧) (fgl W)) = 0 := by
    have h := congrArg (MvPowerSeries.subst (![X, iSer W] : Fin 2 → K⟦X⟧)) (log_fgl W)
    rw [mvsubst_psubst hF hb, ← MvPowerSeries.coe_substAlgHom hb, map_add (f := _), MvPowerSeries.coe_substAlgHom hb,
      mvsubst_psubst (PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X 0)) hb,
      mvsubst_psubst (PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X 1)) hb,
      MvPowerSeries.subst_X hb, MvPowerSeries.subst_X hb] at h
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at h
    rw [hself, hN.1, add_neg_cancel] at h
    exact h
  have hsh := PowerSeries.sub_const_eq_X_mul_shift (expSer W)
  simp only [hE.1, map_zero, sub_zero] at hsh
  have h0 : PowerSeries.HasSubst (0 : K⟦X⟧) := PowerSeries.HasSubst.of_constantCoeff_zero (map_zero _)
  have hT : (expSer W).subst (0 : K⟦X⟧) = 0 := by
    rw [hsh, ← PowerSeries.coe_substAlgHom (R := K) h0, map_mul, PowerSeries.coe_substAlgHom h0,
      PowerSeries.subst_X h0, zero_mul]
  have hL : PowerSeries.HasSubst (logSer W) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (formal_logarithm_spec K W).1
  calc MvPowerSeries.subst (![X, iSer W] : Fin 2 → K⟦X⟧) (fgl W)
      = PowerSeries.subst (MvPowerSeries.subst (![X, iSer W] : Fin 2 → K⟦X⟧) (fgl W)) (X : K⟦X⟧) :=
        (PowerSeries.subst_X hG).symm
    _ = PowerSeries.subst (MvPowerSeries.subst (![X, iSer W] : Fin 2 → K⟦X⟧) (fgl W))
          (PowerSeries.subst (logSer W) (expSer W)) := by
        rw [hE.2.2.2.1]
    _ = PowerSeries.subst (PowerSeries.subst (MvPowerSeries.subst (![X, iSer W] : Fin 2 → K⟦X⟧) (fgl W))
          (logSer W)) (expSer W) :=
        PowerSeries.subst_comp_subst_apply hL hG _
    _ = 0 := by rw [hlogG, hT]

end Inv

end Fgl2

theorem formal_group_logarithm : FglLog.{u} := by
  intro K _ _ W
  refine ⟨Fgl2.log_fgl W, ?_⟩
  have hE := Fgl2.formal_exponential_spec K W
  have hF : PowerSeries.HasSubst (fgl W) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (formal_group_chord K W).2.2.2.2.1
  have hL : PowerSeries.HasSubst (logSer W) := PowerSeries.HasSubst.of_constantCoeff_zero (Fgl2.formal_logarithm_spec K W).1
  rw [← Fgl2.log_fgl W, ← PowerSeries.subst_comp_subst_apply hL hF, hE.2.2.2.1, PowerSeries.subst_X hF]

theorem formal_group_group_law : FglGroup.{u} := by
  intro R _ W
  have he : (Fgl2.FZ.map (Univ.φ_of W)).toPowerSeries = fgl W := (Fgl1.fgl_univ W).symm
  refine ⟨Fgl2.FZ.map (Univ.φ_of W), he, ?_⟩
  have hs := Fgl2.fgl_symm W
  constructor
  rw [he]
  first
  | exact hs

theorem formal_group_inverse : FglInv.{u} := by
  intro R _ W
  have h1 := Fgl2.inv_map Univ.ι Univ.W₀
  rw [Fgl2.inv_field] at h1
  have h2 := Univ.ps_transfer W (A := MvPowerSeries.subst (![X, iSer Univ.W₀] : Fin 2 → Univ.Z⟦X⟧) (fgl Univ.W₀))
    (B := 0) (by rw [h1, map_zero])
  rw [map_zero, Fgl2.inv_map, Univ.map_eq] at h2
  exact h2

end Formalism.L2.Th1.A
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalLogarithmBaseChange =====
