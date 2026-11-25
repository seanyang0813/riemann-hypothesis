module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.Development
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RelIdxNeZeroOfLeLeft
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.LinearAlgebra.Eigenspace.Minpoly
public import Mathlib.LinearAlgebra.Eigenspace.Basic
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.KeyDef
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.CommOfBounded
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.ExistsGoodForm
public import Formalism.PeriodIntegrals.UnimodLocStd
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.IsKTheta
public import Mathlib.Data.Nat.Prime.Int
public import Mathlib.FieldTheory.Finite.Basic
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RamDef
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepRamDef
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.HNsmulNsmul
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepSingleSat
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepKeyRam
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharactersFactAltForm
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.SelfDualStd
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepBasic
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepHSelfInt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.Imports, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.SatStdOfAll, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.QequivApply, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.StdHSingleZero, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.ExistsIsometryMemLocalizedAtSingle, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.DescentStep, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepRamAsm, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.UnitVecRam, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnimodLocStd, Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.Imports =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.Imports", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RelIdxNeZeroOfLeLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Minpoly\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped ComplexConjugate

namespace PI.UnitaryGroupMassFormula.UnimodLocStd
open PI.ULS

theorem stepC : StepC := by
  intro a b c d ha hd lam hlam hok m _ _ Λa g hθ l hl hiso h1 hl1 h2
  classical
  set θ := cmTheta b d with hθdef
  set S := stdLat (cmL a b d ha hd lam hlam) m with hSdef
  set X := imgLat (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λa with hXdef
  have hθn : θ * ((b : ℂ) - θ) = (a : ℂ) * c := theta_norm hok.1
  have hθθ : θ * θ = (b : ℂ) * θ - (a : ℂ) * c := by linear_combination -hθn

  have hXθ : ∀ x ∈ X, θ • x ∈ X := by
    rintro _ ⟨y, hy, rfl⟩
    exact ⟨θ • y, hθ y hy, by simp⟩
  have hlin : ∀ p q : ℤ, ∀ x ∈ X, ((p : ℂ) + (q : ℂ) * θ) • x ∈ X := by
    intro p q x hx
    rw [add_smul, mul_smul, Int.cast_smul_eq_zsmul ℂ p, Int.cast_smul_eq_zsmul ℂ q]
    exact X.add_mem (X.zsmul_mem hx p) (X.zsmul_mem (hXθ x hx) q)

  obtain ⟨β, hβ⟩ : ∃ β : ℕ → ℂ, ∀ u, β u = 1 + ((u * l : ℕ) : ℂ) * θ := ⟨_, fun _ => rfl⟩
  obtain ⟨βb, hβb⟩ : ∃ βb : ℕ → ℂ, ∀ u, βb u = 1 + ((u * l : ℕ) : ℂ) * ((b : ℂ) - θ) :=
    ⟨_, fun _ => rfl⟩
  obtain ⟨K, hKdef⟩ : ∃ K : ℕ → ℤ, ∀ u, K u = 1 + ((u * l : ℕ) : ℤ) * b + ((u * l : ℕ) : ℤ) ^ 2 * a * c :=
    ⟨_, fun _ => rfl⟩
  have hconj : ∀ u, (starRingEnd ℂ) (β u) = βb u := by
    intro u
    rw [hβ, hβb, map_add (f := _), map_one, map_mul, map_natCast, hθdef, theta_conj]
  have hK : ∀ u, β u * βb u = ((K u : ℤ) : ℂ) := by
    intro u
    rw [hβ, hβb, hKdef]
    push_cast
    linear_combination ((u : ℂ) * l) ^ 2 * hθn
  have hKpos : ∀ u, 0 < K u := by
    intro u
    rw [hKdef]
    set U : ℤ := ((u * l : ℕ) : ℤ) with hU
    have h4 := hok.1
    have hd1 : (1 : ℤ) ≤ d := by exact_mod_cast hd
    have key : 4 * (1 + U * b + U ^ 2 * a * c) = (2 + U * b) ^ 2 + U ^ 2 * d := by
      linear_combination U ^ 2 * h4
    rcases eq_or_ne U 0 with h0 | h0
    · rw [h0]
      norm_num
    · have hU2 : 1 ≤ U ^ 2 := by
        have := pow_pos (abs_pos.2 h0) 2
        rw [sq_abs] at this
        omega
      nlinarith [sq_nonneg (2 + U * b)]
  have hβ0 : ∀ u, β u ≠ 0 := fun u h => by
    have := hK u
    rw [h, zero_mul] at this
    exact (hKpos u).ne' (by exact_mod_cast this.symm)
  have hβb0 : ∀ u, βb u ≠ 0 := fun u h => by
    have := hK u
    rw [h, mul_zero] at this
    exact (hKpos u).ne' (by exact_mod_cast this.symm)

  have hinj : Function.Injective (fun u => (β u / βb u)⁻¹) := by
    intro u v huv
    simp only [inv_inj] at huv
    rw [div_eq_div_iff (hβb0 u) (hβb0 v), hβ, hβ, hβb, hβb] at huv
    have h2θ : 2 * θ - b ≠ 0 := two_theta_sub b hd
    have hmul : (((u * l : ℕ) : ℂ) - ((v * l : ℕ) : ℂ)) * (2 * θ - b) = 0 := by
      linear_combination huv
    rcases mul_eq_zero.1 hmul with h | h
    · have h' : u * l = v * l := Nat.cast_injective (sub_eq_zero.1 h)
      exact Nat.eq_of_mul_eq_mul_right hl.pos h'
    · exact absurd h h2θ

  have hfin := Module.End.finite_hasEigenvalue (g : Module.End ℂ (m → ℂ))
  obtain ⟨_, ⟨u, rfl⟩, hu⟩ := (Set.infinite_range_of_injective hinj).exists_notMem_finite hfin
  set w := β u / βb u with hwdef
  have hw0 : w ≠ 0 := div_ne_zero (hβ0 u) (hβb0 u)
  let δ : (m → ℂ) ≃ₗ[ℂ] (m → ℂ) := g.trans (LinearEquiv.smulOfNeZero ℂ (m → ℂ) w hw0)
  have hδ : ∀ x, δ x = w • g x := fun x => rfl
  have hcb : (starRingEnd ℂ) (βb u) = β u := by rw [← hconj u, Complex.conj_conj]
  have hww : (starRingEnd ℂ) w * w = 1 := by
    rw [hwdef, map_div₀, hconj u, hcb]
    field_simp [hβ0 u, hβb0 u]
  have hisoδ : IsIsom (stdH (cmL a b d ha hd lam hlam) m) (stdH (cmL a b d ha hd lam hlam) m)
      (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) := by
    intro x y
    show stdH (cmL a b d ha hd lam hlam) m (w • g x) (w • g y) = stdH (cmL a b d ha hd lam hlam) m x y
    rw [LinearMap.map_smul (stdH (cmL a b d ha hd lam hlam) m) w (g x), LinearMap.smul_apply,
      LinearMap.map_smulₛₗ, smul_eq_mul, smul_eq_mul,
      ← mul_assoc, mul_comm w, hww, one_mul]
    exact hiso x y
  have himg : imgLat (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λa = X.map (smulHom w) := by
    rw [hXdef]
    unfold imgLat
    rw [AddSubgroup.map_map]
    congr 1

  set Nn := (K u).toNat with hNndef
  have hNnZ : ((Nn : ℕ) : ℤ) = K u := Int.toNat_of_nonneg (hKpos u).le
  have hNn : ((Nn : ℕ) : ℂ) = β u * βb u := by
    rw [hK u, ← hNnZ, Int.cast_natCast]
  have hN0 : Nn ≠ 0 := by have := hKpos u; omega
  have ha' : ∀ x ∈ X, (Nn : ℂ) • w • x ∈ X := by
    intro x hx
    have heq : (Nn : ℂ) * w = (((1 - ((u * l : ℕ) : ℤ) ^ 2 * a * c : ℤ)) : ℂ) +
        (((2 * ((u * l : ℕ) : ℤ) + ((u * l : ℕ) : ℤ) ^ 2 * b : ℤ)) : ℂ) * θ := by
      rw [hNn, hwdef]
      have : β u * βb u * (β u / βb u) = β u * β u := by field_simp [hβb0 u]
      rw [this, hβ]
      push_cast
      linear_combination ((u : ℂ) * l) ^ 2 * hθθ
    rw [smul_smul, heq]
    exact hlin _ _ x hx
  have hb' : ∀ x ∈ X, (Nn : ℂ) • w⁻¹ • x ∈ X := by
    intro x hx
    have heq : (Nn : ℂ) * w⁻¹ = ((((1 + ((u * l : ℕ) : ℤ) * b) ^ 2 - ((u * l : ℕ) : ℤ) ^ 2 * a * c : ℤ)) : ℂ) +
        ((((u * l : ℕ) : ℤ) ^ 2 * b - 2 * (1 + ((u * l : ℕ) : ℤ) * b) * ((u * l : ℕ) : ℤ) : ℤ) : ℂ) * θ := by
      rw [hNn, hwdef, inv_div]
      have : β u * βb u * (βb u / β u) = βb u * βb u := by field_simp [hβ0 u]
      rw [this, hβb]
      push_cast
      linear_combination ((u : ℂ) * l) ^ 2 * hθθ
    rw [smul_smul, heq]
    exact hlin _ _ x hx
  obtain ⟨hi1, hi2⟩ := comm_smul (S := S) (X := X) hw0 hN0 (stdLat_smul_idx _ m hN0) h1 h2 ha' hb'

  have hM : ∀ x ∈ X, (S.relIndex X) • x ∈ S := by
    intro x hx
    have := AddSubgroup.nsmul_index_mem (S.addSubgroupOf X) ⟨x, hx⟩
    rw [AddSubgroup.mem_addSubgroupOf] at this
    simpa [AddSubgroup.relIndex] using this
  have hNl : ¬ l ∣ Nn := by
    intro hdiv
    have h1' : (l : ℤ) ∣ K u := by
      have := Int.natCast_dvd_natCast.2 hdiv
      rwa [hNnZ] at this
    have h2' : (l : ℤ) ∣ K u - 1 :=
      ⟨(u : ℤ) * (b + ((u * l : ℕ) : ℤ) * a * c), by rw [hKdef]; push_cast; ring⟩
    have h3 : (l : ℤ) ∣ 1 := by
      have := Int.dvd_sub h1' h2'
      simpa using this
    have h4 : (l : ℤ) = 1 := Int.eq_one_of_dvd_one (by positivity) h3
    exact hl.one_lt.ne' (by exact_mod_cast h4)
  have hln : ¬ l ∣ S.relIndex X * Nn := fun h => ((Nat.Prime.dvd_mul hl).1 h).elim hl1 hNl
  have hdvd := not_dvd_relIndex (A := S) (B := X.map (smulHom w)) (l := l) (n := S.relIndex X * Nn) hl hi1
    (by
      rintro _ ⟨x, hx, rfl⟩
      rw [smulHom_apply, mul_smul, ← Nat.cast_smul_eq_nsmul ℂ Nn]
      exact hM _ (ha' x hx)) hln
  refine ⟨δ, hisoδ, ?_, ?_, ?_, ?_⟩
  · intro x hx
    by_contra hx0
    apply hu
    have hgx : (g : Module.End ℂ (m → ℂ)) x = w⁻¹ • x := by
      rw [hδ] at hx
      calc (g : Module.End ℂ (m → ℂ)) x = w⁻¹ • (w • g x) := by rw [inv_smul_smul₀ hw0]; rfl
        _ = w⁻¹ • x := by rw [hx]
    refine Module.End.hasEigenvalue_of_hasEigenvector (x := x) ?_
    first
      | exact Module.End.hasEigenvector_iff.2 ⟨Module.End.mem_eigenspace_iff.2 hgx, hx0⟩
  · unfold relIdx
    rw [himg]
    exact hi1
  · unfold relIdx
    rw [himg]
    exact hdvd
  · unfold relIdx
    rw [himg]
    exact hi2

end PI.UnitaryGroupMassFormula.UnimodLocStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.Imports =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.SatStdOfAll =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.SatStdOfAll", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.KeyDef\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.CommOfBounded\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.ExistsGoodForm\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RelIdxNeZeroOfLeLeft\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.SelfDualStd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped ComplexConjugate

namespace PI.UnitaryGroupMassFormula.UnimodLocStd
open PI.ULS

variable {a : ℕ} {b c : ℤ} {d : ℕ} {ha : 0 < a} {hd : 0 < d} {lam : ℂ} {hlam : lam ≠ 0}
variable {m : Type*} [Fintype m] [DecidableEq m]

lemma altE_single (L : PeriodPair) (v : m → ℂ) (n : ℕ) (j : m) (w : ℂ) :
    altE (stdH L m) v (n • Pi.single j w) = (n : ℝ) * (v j * conj w).im / area L := by
  classical
  unfold altE
  rw [stdH_apply]
  have hs : (∑ i, v i * conj ((n • Pi.single j w : m → ℂ) i)) = (n : ℂ) * (v j * conj w) := by
    rw [Finset.sum_eq_single j]
    · simp [nsmul_eq_mul]
      ring
    · intro i _ hi
      simp [hi]
    · simp
  rw [hs, ← Complex.ofReal_inv, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, mul_zero,
    zero_add, ← Complex.ofReal_natCast, Complex.im_ofReal_mul, div_eq_mul_inv]

lemma alpha_eq (x y : ℤ) :
    lam * ((x * a : ℂ) + y * cmTheta b d) =
      (x : ℝ) • (cmL a b d ha hd lam hlam).ω₁ + (y : ℝ) • (cmL a b d ha hd lam hlam).ω₂ := by
  rw [cmL_omega1, cmL_omega2]
  simp only [Complex.real_smul]
  push_cast
  ring

lemma theta_alpha_eq (hn : cmTheta b d * (b - cmTheta b d) = (a : ℂ) * c) (x y : ℤ) :
    cmTheta b d * (lam * ((x * a : ℂ) + y * cmTheta b d)) =
      ((-y * c : ℤ) : ℝ) • (cmL a b d ha hd lam hlam).ω₁ +
        ((x * a + y * b : ℤ) : ℝ) • (cmL a b d ha hd lam hlam).ω₂ := by
  rw [cmL_omega1, cmL_omega2]
  simp only [Complex.real_smul]
  push_cast
  linear_combination (-(lam * y)) * hn

lemma coord_mem (hn : cmTheta b d * (b - cmTheta b d) = (a : ℂ) * c) (x y : ℤ) (n : ℕ) (w : ℂ)
    (h1 : ∃ k : ℤ, (n : ℝ) * (w * conj (lam * ((x * a : ℂ) + y * cmTheta b d))).im
      / area (cmL a b d ha hd lam hlam) = k)
    (h2 : ∃ k : ℤ, (n : ℝ) * (w * conj (cmTheta b d * (lam * ((x * a : ℂ) + y * cmTheta b d)))).im
      / area (cmL a b d ha hd lam hlam) = k) :
    ((n * (a * x ^ 2 + b * x * y + c * y ^ 2) : ℤ) : ℂ) * w ∈ (cmL a b d ha hd lam hlam).lattice := by
  set L := cmL a b d ha hd lam hlam with hL
  obtain ⟨s, t, hz⟩ := coords L ((n : ℂ) * w)
  obtain ⟨k1, hk1⟩ := h1
  obtain ⟨k2, hk2⟩ := h2
  have hnim : ∀ u : ℂ, (n : ℝ) * (w * u).im = (((n : ℂ) * w) * u).im := by
    intro u
    rw [mul_assoc]
    simp [Complex.mul_im]
  rw [hnim, hz, alpha_eq (ha := ha) (hd := hd) (hlam := hlam), im_mul_conj] at hk1
  rw [hnim, hz, theta_alpha_eq (ha := ha) (hd := hd) (hlam := hlam) hn, im_mul_conj] at hk2
  obtain ⟨j1, hj1⟩ := int_of_div L hk1
  obtain ⟨j2, hj2⟩ := int_of_div L hk2
  push_cast at hj1 hj2
  have hQs : ((a * x ^ 2 + b * x * y + c * y ^ 2 : ℤ) : ℝ) * s = ((-(y * c * j1 + x * j2) : ℤ) : ℝ) := by
    push_cast
    linear_combination (-((y : ℝ) * c)) * hj1 + (-(x : ℝ)) * hj2
  have hQt : ((a * x ^ 2 + b * x * y + c * y ^ 2 : ℤ) : ℝ) * t =
      (((x * a + y * b) * j1 - y * j2 : ℤ) : ℝ) := by
    push_cast
    linear_combination ((x : ℝ) * a + y * b) * hj1 + (-(y : ℝ)) * hj2
  rw [show ((n * (a * x ^ 2 + b * x * y + c * y ^ 2) : ℤ) : ℂ) * w =
      ((a * x ^ 2 + b * x * y + c * y ^ 2 : ℤ) : ℂ) * ((n : ℂ) * w) by push_cast; ring, hz]
  refine (lattice_iff L _).mpr ⟨-(y * c * j1 + x * j2), (x * a + y * b) * j1 - y * j2, ?_⟩
  have cs := congrArg (fun r : ℝ => (r : ℂ)) hQs
  have ct := congrArg (fun r : ℝ => (r : ℂ)) hQt
  simp only [Complex.ofReal_mul, Complex.ofReal_intCast] at cs ct
  simp only [Complex.real_smul, Complex.ofReal_intCast]
  linear_combination L.ω₁ * cs + L.ω₂ * ct

lemma sat_std_of_all (hok : CmOK a b c d) {l : ℕ} (hl : l.Prime) (x y : ℤ)
    (hQ : ¬ (l : ℤ) ∣ a * x ^ 2 + b * x * y + c * y ^ 2) (Λ : AddSubgroup (m → ℂ))
    (hsd : IsSelfDual (stdH (cmL a b d ha hd lam hlam) m) Λ) (hθ : ∀ v ∈ Λ, cmTheta b d • v ∈ Λ)
    (hall : ∀ j, SatMem l Λ (Pi.single j (lam * ((x * a : ℂ) + y * cmTheta b d)))) :
    ∃ n : ℕ, ¬ l ∣ n ∧ ∀ v ∈ Λ, n • v ∈ stdLat (cmL a b d ha hd lam hlam) m := by
  classical
  have hn := theta_norm hok.1
  have hall' : ∀ j, ∃ N : ℕ, ¬ l ∣ N ∧
      N • (Pi.single j (lam * ((x * a : ℂ) + y * cmTheta b d)) : m → ℂ) ∈ Λ := hall
  choose N hNl hNmem using hall'
  set Q : ℤ := a * x ^ 2 + b * x * y + c * y ^ 2 with hQdef
  refine ⟨Q.natAbs * Q.natAbs * ∏ j, N j, ?_, ?_⟩
  · intro hdvd
    rcases (Nat.Prime.dvd_mul hl).mp hdvd with h | h
    · rcases (Nat.Prime.dvd_mul hl).mp h with h' | h' <;> exact hQ (Int.natCast_dvd.mpr h')
    · obtain ⟨j, _, hj⟩ := (Prime.dvd_finsetProd_iff hl.prime _).mp h
      exact hNl j hj
  · intro v hv
    have hvd : v ∈ dualLat (stdH (cmL a b d ha hd lam hlam) m) Λ := by
      rw [hsd]
      exact hv
    rw [mem_dualLat_iff] at hvd
    rw [mem_stdLat_iff]
    intro i
    have e1 := hvd _ (hNmem i)
    have e2 := hvd _ (hθ _ (hNmem i))
    have hsm : cmTheta b d • (N i • Pi.single i (lam * ((x * a : ℂ) + y * cmTheta b d)) : m → ℂ) =
        N i • Pi.single i (cmTheta b d * (lam * ((x * a : ℂ) + y * cmTheta b d))) := by
      ext k
      by_cases hk : k = i
      · subst hk
        simp [nsmul_eq_mul]
        ring
      · simp [hk]
    rw [altE_single] at e1
    rw [hsm, altE_single] at e2
    have hm := coord_mem hn x y (N i) (v i) e1 e2
    have hmem : ((N i : ℤ) * Q) • v i ∈ (cmL a b d ha hd lam hlam).lattice := by
      rw [zsmul_eq_mul]
      exact_mod_cast hm
    have hnZ : ((Q.natAbs * Q.natAbs * ∏ j, N j : ℕ) : ℤ) =
        (Q * ∏ j ∈ Finset.univ.erase i, (N j : ℤ)) * ((N i : ℤ) * Q) := by
      rw [← Finset.mul_prod_erase _ _ (Finset.mem_univ i)]
      push_cast
      rw [abs_mul_abs_self]
      ring
    rw [Pi.smul_apply, ← natCast_zsmul, hnZ, mul_smul]
    exact Submodule.smul_mem _ _ hmem

end PI.UnitaryGroupMassFormula.UnimodLocStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.SatStdOfAll =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.QequivApply =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.QequivApply", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnimodLocStd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped ComplexConjugate

namespace PI.UnitaryGroupMassFormula.UnimodLocStd
open PI.ULS

section QR
variable {V : Type*} [AddCommGroup V] [Module ℂ V] (H : Sesq V)

def qmap (z : V) (ν : ℂ) : V →ₗ[ℂ] V := LinearMap.id - (ν • H.flip z).smulRight z

lemma qmap_apply (z : V) (ν : ℂ) (w : V) : qmap H z ν w = w - (ν * H w z) • z := by
  simp [qmap]

lemma qmap_coef {c h k : ℂ} (hc0 : c ≠ 0) (hc : c + conj c = k) :
    c⁻¹ * h + (conj c)⁻¹ * (h - c⁻¹ * h * k) = 0 := by
  subst hc
  have hc1 : conj c ≠ 0 := by simpa using hc0
  field_simp
  ring

lemma qmap_qmap {z : V} {c : ℂ} (hc0 : c ≠ 0) (hc : c + conj c = H z z) (w : V) :
    qmap H z (conj c)⁻¹ (qmap H z c⁻¹ w) = w := by
  rw [qmap_apply, qmap_apply]
  have e : H (w - (c⁻¹ * H w z) • z) z = H w z - c⁻¹ * H w z * H z z := by
    simp [map_sub, map_smul, mul_assoc]
  rw [e, sub_sub, ← add_smul, qmap_coef hc0 hc, zero_smul, sub_zero]

lemma qmap_qmap' {z : V} {c : ℂ} (hc0 : c ≠ 0) (hc : c + conj c = H z z) (w : V) :
    qmap H z c⁻¹ (qmap H z (conj c)⁻¹ w) = w := by
  have h1 := qmap_qmap H (c := conj c) (by simpa using hc0) (by rw [Complex.conj_conj, add_comm]; exact hc) w
  rwa [Complex.conj_conj] at h1

def qequiv (z : V) {c : ℂ} (hc0 : c ≠ 0) (hc : c + conj c = H z z) : V ≃ₗ[ℂ] V :=
  LinearEquiv.ofLinear (qmap H z c⁻¹) (qmap H z (conj c)⁻¹)
    (LinearMap.ext fun w => qmap_qmap' H hc0 hc w) (LinearMap.ext fun w => qmap_qmap H hc0 hc w)

lemma qequiv_apply (z : V) {c : ℂ} (hc0 : c ≠ 0) (hc : c + conj c = H z z) (w : V) :
    qequiv H z hc0 hc w = w - (c⁻¹ * H w z) • z := by
  show qmap H z c⁻¹ w = _
  exact qmap_apply H z c⁻¹ w

lemma qequiv_isom (hsym : ∀ x y, H y x = conj (H x y)) (z : V) {c : ℂ} (hc0 : c ≠ 0)
    (hc : c + conj c = H z z) : IsIsom H H (qequiv H z hc0 hc : V →ₗ[ℂ] V) := by
  intro x y
  have hc1 : conj c ≠ 0 := by simpa using hc0
  simp only [LinearEquiv.coe_coe]
  rw [qequiv_apply, qequiv_apply]
  simp only [map_sub, map_smulₛₗ, LinearMap.sub_apply, LinearMap.smul_apply, smul_eq_mul, map_mul, map_inv₀,
    RingHom.id_apply, hsym y z, ← hc]
  field_simp
  ring

end QR

end PI.UnitaryGroupMassFormula.UnimodLocStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.QequivApply =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.StdHSingleZero =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.StdHSingleZero", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.CommOfBounded\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.QequivApply\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RelIdxNeZeroOfLeLeft\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.SelfDualStd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped ComplexConjugate

namespace PI.UnitaryGroupMassFormula.UnimodLocStd
open PI.ULS

variable {a : ℕ} {b c : ℤ} {d : ℕ} {ha : 0 < a} {hd : 0 < d} {lam : ℂ} {hlam : lam ≠ 0}
variable {m : Type*} [Fintype m] [DecidableEq m]

lemma stdH_symm (L : PeriodPair) (x y : m → ℂ) : stdH L m y x = conj (stdH L m x y) := by

  rw [stdH_apply, stdH_apply, map_mul, map_inv₀, Complex.conj_ofReal, map_sum]
  congr 1
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [map_mul, Complex.conj_conj, mul_comm]

lemma stdH_single_zero (L : PeriodPair) (j : m) (w : ℂ) {z : m → ℂ} (hz : z j = 0) :
    stdH L m (Pi.single j w) z = 0 := by
  rw [stdH_apply]
  have hsum : ∑ i, (Pi.single j w : m → ℂ) i * conj (z i) = 0 := by
    refine Finset.sum_eq_zero fun i _ => ?_
    by_cases h : i = j
    · subst h
      rw [hz, map_zero, mul_zero]
    · simp [h]
  rw [hsum, zero_mul]

private theorem stdH_sub_eq_and_add_conj_eq_of_stdH_eq (L : PeriodPair) (v f' : m → ℂ)
    (hvv : PI.ULS.stdH L m v v = PI.ULS.stdH L m f' f') :
    PI.ULS.stdH L m v (v - f') = PI.ULS.stdH L m v v - PI.ULS.stdH L m v f' ∧
      PI.ULS.stdH L m v (v - f') + conj (PI.ULS.stdH L m v (v - f')) =
        PI.ULS.stdH L m (v - f') (v - f') := by
  have h1 : PI.ULS.stdH L m v (v - f') = PI.ULS.stdH L m v v - PI.ULS.stdH L m v f' :=
    map_sub (PI.ULS.stdH L m v) v f'
  refine ⟨h1, ?_⟩
  have h2 : PI.ULS.stdH L m (v - f') (v - f') =
      PI.ULS.stdH L m v v - PI.ULS.stdH L m v f' - (PI.ULS.stdH L m f' v - PI.ULS.stdH L m f' f') := by
    simp only [map_sub, LinearMap.sub_apply]
    ring
  rw [h1, h2, map_sub, ← stdH_symm L v f', ← stdH_symm L v v, hvv]
  ring

private theorem isKv_sub_stdH_smul {L : PeriodPair} {e : ℤ}
    (hn : PI.ULS.cmTheta b d * (b - PI.ULS.cmTheta b d) = (e : ℂ)) (hl0 : lam ≠ 0) {z w : m → ℂ} {t : ℂ}
    (ht : IsK b d t) (hz : IsKv b d lam z) (hw : IsKv b d lam w) :
    IsKv b d lam (w - ((kappa L lam * t)⁻¹ * PI.ULS.stdH L m w z) • z) := by
  obtain ⟨s, hs, hH⟩ := isK_H hn L hl0 hw hz
  rw [hH, mul_inv_rev, mul_assoc, inv_mul_cancel_left₀ (kappa_ne L hl0)]
  exact isKv_sub hw (isKv_smul hn (isK_mul hn (isK_inv hn ht) hs) hz)

lemma qrefl_to (hok : CmOK a b c d) (v f' : m → ℂ)
    (hvv : stdH (cmL a b d ha hd lam hlam) m v v = stdH (cmL a b d ha hd lam hlam) m f' f')
    (hne : stdH (cmL a b d ha hd lam hlam) m v v - stdH (cmL a b d ha hd lam hlam) m v f' ≠ 0)
    (hvK : IsKv b d lam v) (hfK : IsKv b d lam f') :
    ∃ σ : (m → ℂ) ≃ₗ[ℂ] (m → ℂ),
      IsIsom (stdH (cmL a b d ha hd lam hlam) m) (stdH (cmL a b d ha hd lam hlam) m) (σ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) ∧
      relIdx (stdLat (cmL a b d ha hd lam hlam) m) (imgLat (σ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (stdLat (cmL a b d ha hd lam hlam) m)) ≠ 0 ∧
      relIdx (imgLat (σ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (stdLat (cmL a b d ha hd lam hlam) m)) (stdLat (cmL a b d ha hd lam hlam) m) ≠ 0 ∧
      σ v = f' ∧ ∀ w, stdH (cmL a b d ha hd lam hlam) m w (v - f') = 0 → σ w = w := by
  obtain ⟨hvz, hκ⟩ := stdH_sub_eq_and_add_conj_eq_of_stdH_eq (PI.ULS.cmL a b d ha hd lam hlam) v f' hvv
  have hκ0 : PI.ULS.stdH (PI.ULS.cmL a b d ha hd lam hlam) m v (v - f') ≠ 0 := by
    rw [hvz]; exact hne
  have hn : PI.ULS.cmTheta b d * (b - PI.ULS.cmTheta b d) = ((a * c : ℤ) : ℂ) := by
    rw [theta_norm hok.1]; push_cast; ring
  have hzK : IsKv b d lam (v - f') := isKv_sub hvK hfK
  obtain ⟨t, ht, htF⟩ := isK_H hn (PI.ULS.cmL a b d ha hd lam hlam) hlam hvK hzK
  have htF' : conj (PI.ULS.stdH (PI.ULS.cmL a b d ha hd lam hlam) m v (v - f')) =
      kappa (PI.ULS.cmL a b d ha hd lam hlam) lam * conj t := by
    rw [htF, map_mul, kappa_conj]
  obtain ⟨σ, hσ⟩ : ∃ σ : (m → ℂ) ≃ₗ[ℂ] (m → ℂ),
      σ = qequiv (PI.ULS.stdH (PI.ULS.cmL a b d ha hd lam hlam) m) (v - f') hκ0 hκ := ⟨_, rfl⟩
  have hσapp : ∀ x, σ x = x - ((PI.ULS.stdH (PI.ULS.cmL a b d ha hd lam hlam) m v (v - f'))⁻¹ *
      PI.ULS.stdH (PI.ULS.cmL a b d ha hd lam hlam) m x (v - f')) • (v - f') := by
    intro x; rw [hσ, qequiv_apply]
  have hσsymm : ∀ x, σ.symm x = x - ((conj (PI.ULS.stdH (PI.ULS.cmL a b d ha hd lam hlam) m v (v - f')))⁻¹ *
      PI.ULS.stdH (PI.ULS.cmL a b d ha hd lam hlam) m x (v - f')) • (v - f') := by
    intro x; rw [hσ, ← qmap_apply]; rfl
  have hs1 : ∀ i : m, IsKv b d lam (Pi.single i (PI.ULS.cmL a b d ha hd lam hlam).ω₁ : m → ℂ) := fun i =>
    isKv_single (by
      rw [cmL_omega1, mul_div_cancel_left₀ _ hlam]
      exact_mod_cast isK_int (b := b) (d := d) (a : ℤ)) i
  have hs2 : ∀ i : m, IsKv b d lam (Pi.single i (PI.ULS.cmL a b d ha hd lam hlam).ω₂ : m → ℂ) := fun i =>
    isKv_single (by
      rw [cmL_omega2, mul_div_cancel_left₀ _ hlam]
      exact isK_theta) i
  have hφ : ∀ x, IsKv b d lam x → IsKv b d lam ((σ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) x) := by
    intro x hx
    rw [LinearEquiv.coe_coe, hσapp, htF]
    exact isKv_sub_stdH_smul hn hlam ht hzK hx
  have hψ : ∀ x, IsKv b d lam x →
      IsKv b d lam ((σ.symm : (m → ℂ) →ₗ[ℂ] (m → ℂ)) x) := by
    intro x hx
    rw [LinearEquiv.coe_coe, hσsymm, htF']
    exact isKv_sub_stdH_smul hn hlam (isK_conj ht) hzK hx
  obtain ⟨N, hN, hN1⟩ := bounded_map (a := a) (b := b) (d := d) (ha := ha) (hd := hd)
    (lam := lam) (hlam := hlam) (σ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (fun i => hφ _ (hs1 i)) (fun i => hφ _ (hs2 i))
  obtain ⟨N', hN', hN2⟩ := bounded_map (a := a) (b := b) (d := d) (ha := ha) (hd := hd)
    (lam := lam) (hlam := hlam) (σ.symm : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (fun i => hψ _ (hs1 i)) (fun i => hψ _ (hs2 i))
  have hidx := comm_of_bounded σ hN hN' (fun s hs => hN1 s hs) (fun s hs => hN2 s hs)
  refine ⟨σ, ?_, hidx.1, hidx.2, ?_, ?_⟩
  · rw [hσ]
    exact qequiv_isom _ (fun x y => stdH_symm _ x y) _ hκ0 hκ
  · rw [hσapp, inv_mul_cancel₀ hκ0, one_smul, sub_sub_cancel]
  · intro w hw
    rw [hσapp, hw, mul_zero, zero_smul, sub_zero]

end PI.UnitaryGroupMassFormula.UnimodLocStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.StdHSingleZero =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.ExistsIsometryMemLocalizedAtSingle =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.ExistsIsometryMemLocalizedAtSingle", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.CommOfBounded\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.KeyDef\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.ExistsGoodForm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.Imports\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.SatStdOfAll\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.StdHSingleZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped ComplexConjugate

namespace PI.UnitaryGroupMassFormula.UnimodLocStd
open PI.ULS

variable {a : ℕ} {b c : ℤ} {d : ℕ} {ha : 0 < a} {hd : 0 < d} {lam : ℂ} {hlam : lam ≠ 0}

lemma isKv_of_sat {m : Type*} [Fintype m] [DecidableEq m] {l : ℕ} (hl : l.Prime) {Λ : AddSubgroup (m → ℂ)}
    (h1 : relIdx (stdLat (cmL a b d ha hd lam hlam) m) Λ ≠ 0) {v : m → ℂ} (hv : SatMem l Λ v) :
    IsKv b d lam v := by
  obtain ⟨n, hln, hn⟩ := hv
  have hn0 : n ≠ 0 := by
    rintro rfl
    exact hln (dvd_zero l)
  set S := stdLat (cmL a b d ha hd lam hlam) m
  have hmem : (S.addSubgroupOf Λ).index • (⟨n • v, hn⟩ : Λ) ∈ S.addSubgroupOf Λ :=
    AddSubgroup.nsmul_index_mem _ _
  rw [AddSubgroup.mem_addSubgroupOf, AddSubgroup.coe_nsmul, smul_smul] at hmem
  have hN : (S.addSubgroupOf Λ).index * n ≠ 0 := mul_ne_zero h1 hn0
  exact isKv_of_nsmul hN (isKv_of_mem hmem)

lemma exists_isometry_memLocalizedAt_single (hkey : KeyRep) (hok : CmOK a b c d) (m : Type) [Fintype m] [DecidableEq m]
    (Λa : AddSubgroup (m → ℂ)) (hsd : IsSelfDual (stdH (cmL a b d ha hd lam hlam) m) Λa)
    (hθ : ∀ x ∈ Λa, cmTheta b d • x ∈ Λa)
    (h1 : relIdx (stdLat (cmL a b d ha hd lam hlam) m) Λa ≠ 0)
    (h2 : relIdx Λa (stdLat (cmL a b d ha hd lam hlam) m) ≠ 0)
    {l : ℕ} (hl : l.Prime) (x y : ℤ) (hQ : ¬ (l : ℤ) ∣ a * x ^ 2 + b * x * y + c * y ^ 2) (T : Finset m) :
    ∃ g : (m → ℂ) ≃ₗ[ℂ] (m → ℂ),
      IsIsom (stdH (cmL a b d ha hd lam hlam) m) (stdH (cmL a b d ha hd lam hlam) m) (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) ∧
      relIdx (stdLat (cmL a b d ha hd lam hlam) m) (imgLat (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (stdLat (cmL a b d ha hd lam hlam) m)) ≠ 0 ∧
      relIdx (imgLat (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (stdLat (cmL a b d ha hd lam hlam) m)) (stdLat (cmL a b d ha hd lam hlam) m) ≠ 0 ∧
      ∀ j ∈ T, SatMem l (imgLat (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λa) (Pi.single j (lam * ((x * a : ℂ) + y * cmTheta b d))) := by
  classical
  have himg : ∀ (g : (m → ℂ) ≃ₗ[ℂ] (m → ℂ)) (Λ : AddSubgroup (m → ℂ)), (∀ z ∈ Λ, cmTheta b d • z ∈ Λ) →
      ∀ z ∈ imgLat (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λ, cmTheta b d • z ∈ imgLat (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λ := by
    intro g Λ hΛ z hz
    obtain ⟨w, hw, rfl⟩ := (mem_imgLat_iff g Λ z).1 hz
    exact (mem_imgLat_iff g Λ _).2 ⟨_, hΛ w hw, map_smul g _ w⟩
  have hαK : (lam * ((x * a : ℂ) + y * cmTheta b d)) / lam = (x * a : ℂ) + y * cmTheta b d := by
    field_simp
  have hα0 : lam * ((x * a : ℂ) + y * cmTheta b d) ≠ 0 := by
    intro h0
    rw [alpha_eq (ha := ha) (hd := hd) (hlam := hlam)] at h0
    obtain ⟨hx0, hy0⟩ := LinearIndependent.pair_iff.1 (cmL a b d ha hd lam hlam).indep _ _ h0
    have hx : x = 0 := by exact_mod_cast hx0
    have hy : y = 0 := by exact_mod_cast hy0
    apply hQ
    simp [hx, hy]
  induction T using Finset.induction_on with
  | empty =>
    have hid : ∀ Λ : AddSubgroup (m → ℂ),
        imgLat ((LinearEquiv.refl ℂ (m → ℂ) : (m → ℂ) ≃ₗ[ℂ] (m → ℂ)) : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λ = Λ := by
      intro Λ
      ext z
      rw [mem_imgLat_iff]
      simp
    refine ⟨LinearEquiv.refl ℂ (m → ℂ), fun _ _ => rfl, ?_, ?_, by simp⟩
    · rw [hid, relIdx, AddSubgroup.relIndex_self]
      exact one_ne_zero
    · rw [hid, relIdx, AddSubgroup.relIndex_self]
      exact one_ne_zero
  | insert i₀ T hi₀ ih =>
    obtain ⟨g, hgI, hg1, hg2, hgT⟩ := ih
    have hc := comm_img g hg1 hg2 h1 h2
    have hsd' := selfDual_img _ g hgI hsd
    have hθ' := himg g Λa hθ
    obtain ⟨v, hvS, hvT, hvv⟩ := hkey a b c d ha hd lam hlam hok m _ hsd' hθ' hc.1 hc.2 l hl x y hQ T i₀ hi₀ hgT
    have hvK : IsKv b d lam v := isKv_of_sat hl hc.1 hvS
    have hK : ∀ s : ℂ, s = 1 ∨ s = -1 →
        IsK b d (s * (lam * ((x * a : ℂ) + y * cmTheta b d)) / lam) := by
      intro s hs
      have hb : IsK b d ((x * a : ℂ) + y * cmTheta b d) :=
        ⟨x * a, y, 1, one_ne_zero, by push_cast; ring⟩
      rcases hs with rfl | rfl
      · rw [one_mul, hαK]
        exact hb
      · rw [neg_one_mul, neg_div, hαK]
        exact isK_neg hb
    have hee : stdH (cmL a b d ha hd lam hlam) m (Pi.single i₀ (lam * ((x * a : ℂ) + y * cmTheta b d)))
        (Pi.single i₀ (lam * ((x * a : ℂ) + y * cmTheta b d))) ≠ 0 := by
      rw [stdH_kappa _ hlam, Finset.sum_eq_single i₀ (fun j _ hj => by simp [Pi.single_eq_of_ne hj])
        (fun h => absurd (Finset.mem_univ i₀) h), Pi.single_eq_same]
      exact mul_ne_zero (kappa_ne _ hlam)
        (mul_ne_zero (div_ne_zero hα0 hlam) ((map_ne_zero _).2 (div_ne_zero hα0 hlam)))
    obtain ⟨s, hs, hne⟩ : ∃ s : ℂ, (s = 1 ∨ s = -1) ∧
        stdH (cmL a b d ha hd lam hlam) m v v - stdH (cmL a b d ha hd lam hlam) m v
          (Pi.single i₀ (s * (lam * ((x * a : ℂ) + y * cmTheta b d)))) ≠ 0 := by
      by_cases h : stdH (cmL a b d ha hd lam hlam) m v v - stdH (cmL a b d ha hd lam hlam) m v
          (Pi.single i₀ (1 * (lam * ((x * a : ℂ) + y * cmTheta b d)))) = 0
      · refine ⟨-1, Or.inr rfl, ?_⟩
        rw [neg_one_mul, Pi.single_neg, map_neg]
        rw [one_mul, sub_eq_zero] at h
        rw [sub_neg_eq_add, ← h, ← two_mul, hvv]
        exact mul_ne_zero two_ne_zero hee
      · exact ⟨1, Or.inl rfl, h⟩
    have hss : s * s = 1 := by
      rcases hs with rfl | rfl <;> norm_num
    have hvv' : stdH (cmL a b d ha hd lam hlam) m v v =
        stdH (cmL a b d ha hd lam hlam) m (Pi.single i₀ (s * (lam * ((x * a : ℂ) + y * cmTheta b d))))
          (Pi.single i₀ (s * (lam * ((x * a : ℂ) + y * cmTheta b d)))) := by
      rw [hvv]
      rcases hs with rfl | rfl
      · simp only [one_mul]
      · simp only [neg_one_mul, Pi.single_neg, map_neg, LinearMap.neg_apply, neg_neg]
    obtain ⟨σ, hσI, hσ1, hσ2, hσv, hσfix⟩ :=
      qrefl_to hok v _ hvv' hne hvK (isKv_single (hK s hs) i₀)
    refine ⟨g.trans σ, isom_trans _ g σ hgI hσI, ?_, ?_, ?_⟩
    · rw [imgLat_trans]
      exact (comm_img σ hσ1 hσ2 hg1 hg2).1
    · rw [imgLat_trans]
      exact (comm_img σ hσ1 hσ2 hg1 hg2).2
    · intro j hj
      rw [imgLat_trans]
      rcases Finset.mem_insert.1 hj with rfl | hjT
      · obtain ⟨n, hln, hn⟩ := hvS
        refine ⟨n, hln, (mem_imgLat_iff σ _ _).2 ⟨s • n • v, ?_, ?_⟩⟩
        · rcases hs with rfl | rfl
          · rwa [one_smul]
          · rw [neg_one_smul]
            exact AddSubgroup.neg_mem _ hn
        · rw [map_smul, map_nsmul, hσv, smul_comm, ← Pi.single_smul', smul_eq_mul, ← mul_assoc, hss, one_mul]
      · obtain ⟨n, hln, hn⟩ := hgT j hjT
        refine ⟨n, hln, (mem_imgLat_iff σ _ _).2 ⟨_, hn, ?_⟩⟩
        rw [map_nsmul, hσfix]
        apply stdH_single_zero
        have hne' : j ≠ i₀ := fun h => hi₀ (h ▸ hjT)
        simp [hvT j hjT, Pi.single_eq_of_ne hne']

theorem stepB_of_key (hkey : KeyRep) : StepB := by
  intro a b c d ha hd lam hlam hok m _ _ Λa hsd hθ h1 h2 l hl
  obtain ⟨x, y, hQ⟩ := exists_good_form hok hl
  obtain ⟨g, hgI, hg1, hg2, hgT⟩ := exists_isometry_memLocalizedAt_single hkey hok m Λa hsd hθ h1 h2 hl x y hQ Finset.univ
  have hc := comm_img g hg1 hg2 h1 h2
  have hsd' := selfDual_img _ g hgI hsd
  have hθ' : ∀ z ∈ imgLat (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λa, cmTheta b d • z ∈ imgLat (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λa := by
    intro z hz
    obtain ⟨w, hw, rfl⟩ := (mem_imgLat_iff g Λa z).1 hz
    exact (mem_imgLat_iff g Λa _).2 ⟨_, hθ w hw, map_smul g _ w⟩
  obtain ⟨n, hln, hn⟩ := sat_std_of_all hok hl x y hQ _ hsd' hθ' (fun j => hgT j (Finset.mem_univ j))
  refine ⟨g, hgI, hc.1, ?_, hc.2⟩
  intro hdvd
  have hfi : ((stdLat (cmL a b d ha hd lam hlam) m).addSubgroupOf
      (imgLat (g : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λa)).FiniteIndex := ⟨hc.1⟩
  have : Fact l.Prime := ⟨hl⟩
  obtain ⟨q, hq⟩ := exists_prime_addOrderOf_dvd_card' l hdvd
  have hnq : n • q = 0 := by
    induction q using QuotientAddGroup.induction_on with
    | H w =>
      rw [← QuotientAddGroup.mk_nsmul, QuotientAddGroup.eq_zero_iff, AddSubgroup.mem_addSubgroupOf,
        AddSubgroup.coe_nsmul]
      exact hn w w.2
  have h := addOrderOf_dvd_of_nsmul_eq_zero hnq
  rw [hq] at h
  exact hln h

theorem target_of_key (hkey : KeyRep) : PI.UnimodLocStd := target_of (stepB_of_key hkey) stepC

end PI.UnitaryGroupMassFormula.UnimodLocStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.ExistsIsometryMemLocalizedAtSingle =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.DescentStep =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.DescentStep", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.IsKTheta\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RelIdxNeZeroOfLeLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.Nilpotent\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Data.Nat.Prime.Int\npublic import Mathlib.FieldTheory.Finite.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped ComplexConjugate
open Polynomial

namespace PI.UnitaryGroupMassFormula.UnimodLocStd
open PI.ULS

lemma pigeon {p : ℕ} (hp : p.Prime) (hodd : p % 2 = 1) (A B E : ℤ) (hA : ¬ (p : ℤ) ∣ A)
    (hB : ¬ (p : ℤ) ∣ B) : ∃ s t : ℤ, (p : ℤ) ∣ s ^ 2 * A + t ^ 2 * B - E := by
  have := Fact.mk hp
  have hA' : (A : ZMod p) ≠ 0 := by rwa [Ne, ZMod.intCast_zmod_eq_zero_iff_dvd]
  have hB' : (B : ZMod p) ≠ 0 := by rwa [Ne, ZMod.intCast_zmod_eq_zero_iff_dvd]
  have hf : (C (A : ZMod p) * X ^ 2 - C (E : ZMod p)).degree = 2 := by
    rw [degree_sub_C (by rw [degree_C_mul_X_pow 2 hA']; norm_num), degree_C_mul_X_pow 2 hA']
    rfl
  have hg : (C (B : ZMod p) * X ^ 2).degree = 2 := by
    rw [degree_C_mul_X_pow 2 hB']
    rfl
  obtain ⟨x, y, hxy⟩ := FiniteField.exists_root_sum_quadratic hf hg (by rw [ZMod.card]; exact hodd)
  refine ⟨(x.val : ℤ), (y.val : ℤ), ?_⟩
  rw [← ZMod.intCast_zmod_eq_zero_iff_dvd]
  push_cast
  rw [ZMod.natCast_zmod_val, ZMod.natCast_zmod_val]
  simp only [eval_sub, eval_mul, eval_C, eval_pow, eval_X] at hxy
  linear_combination hxy

variable {a : ℕ} {b c : ℤ} {d : ℕ}

lemma descent_step (hok : CmOK a b c d) {P Q r p q : ℤ} (hr : (d : ℤ) ∣ r) (hp : ¬ (d : ℤ) ∣ p)
    (hq : ¬ (d : ℤ) ∣ q) (hM : r ^ 2 * p = (P ^ 2 + P * Q * b + Q ^ 2 * (a * c)) * q) :
    (d : ℤ) ∣ P ∧ (d : ℤ) ∣ Q := by
  obtain ⟨h4, -, h8, hdp⟩ := hok
  have hD : Prime (d : ℤ) := Nat.prime_iff_prime_int.mp hdp
  have hD0 : (d : ℤ) ≠ 0 := hD.ne_zero
  have hD2 : ¬ (d : ℤ) ∣ 2 := by
    intro h
    have h' : d ∣ 2 := by exact_mod_cast h
    have := Nat.le_of_dvd (by norm_num) h'
    omega
  set N := P ^ 2 + P * Q * b + Q ^ 2 * (a * c) with hNdef
  have hcop : IsCoprime ((d : ℤ) ^ 2) q :=
    IsCoprime.pow_left ((Irreducible.coprime_iff_not_dvd hD.irreducible).mpr hq)
  have hdN : (d : ℤ) ^ 2 ∣ N := by
    apply hcop.dvd_of_dvd_mul_right
    rw [← hM]
    exact Dvd.dvd.mul_right (pow_dvd_pow_of_dvd hr 2) _
  have hid : 4 * N = (2 * P + b * Q) ^ 2 + d * Q ^ 2 := by
    rw [hNdef]
    linear_combination Q ^ 2 * h4
  have hX : (d : ℤ) ∣ 2 * P + b * Q := by
    apply hD.dvd_of_dvd_pow (n := 2)
    have : (2 * P + b * Q) ^ 2 = 4 * N - d * Q ^ 2 := by rw [hid]; ring
    rw [this]
    exact dvd_sub (Dvd.dvd.mul_left (dvd_trans (dvd_pow_self _ two_ne_zero) hdN) _) (dvd_mul_right _ _)
  have hQ2 : (d : ℤ) ∣ Q ^ 2 := by
    have h1 : (d : ℤ) ^ 2 ∣ d * Q ^ 2 := by
      have : (d : ℤ) * Q ^ 2 = 4 * N - (2 * P + b * Q) ^ 2 := by rw [hid]; ring
      rw [this]
      exact dvd_sub (Dvd.dvd.mul_left hdN _) (pow_dvd_pow_of_dvd hX 2)
    rw [pow_two] at h1
    exact (mul_dvd_mul_iff_left hD0).mp h1
  have hQ : (d : ℤ) ∣ Q := hD.dvd_of_dvd_pow hQ2
  have h2P : (d : ℤ) ∣ 2 * P := by
    have : 2 * P = (2 * P + b * Q) - b * Q := by ring
    rw [this]
    exact dvd_sub hX (Dvd.dvd.mul_left hQ _)
  refine ⟨?_, hQ⟩
  rcases hD.dvd_or_dvd h2P with h | h
  · exact absurd h hD2
  · exact h

lemma norm_square (hok : CmOK a b c d) {γ : ℂ} (hγ : IsK b d γ) {p q : ℤ} (hp : ¬ (d : ℤ) ∣ p)
    (hq : ¬ (d : ℤ) ∣ q) (hN : γ * conj γ = (p : ℂ) / q) : ∃ s : ℤ, (d : ℤ) ∣ s ^ 2 * q - p := by
  obtain ⟨h4, ha, h8, hdp⟩ := hok
  have hD : Prime (d : ℤ) := Nat.prime_iff_prime_int.mp hdp
  have hD0 : (d : ℤ) ≠ 0 := hD.ne_zero
  have hD2 : ¬ (d : ℤ) ∣ 2 := by
    intro h
    have h' : d ∣ 2 := by exact_mod_cast h
    have := Nat.le_of_dvd (by norm_num) h'
    omega
  have hq0 : q ≠ 0 := by
    rintro rfl
    exact hq (dvd_zero _)
  have hθ : cmTheta b d * (b - cmTheta b d) = (a : ℂ) * c := by
    have hs : ((Real.sqrt d : ℝ) : ℂ) ^ 2 = d := by
      rw [← Complex.ofReal_pow, Real.sq_sqrt (Nat.cast_nonneg _)]
      simp
    have h4' : (4 * a * c : ℂ) = b ^ 2 + d := by exact_mod_cast h4
    unfold cmTheta
    linear_combination (-(((Real.sqrt d : ℝ) : ℂ) ^ 2) / 4) * Complex.I_sq + (1 / 4 : ℂ) * hs +
      (-1 / 4 : ℂ) * h4'

  have rel : ∀ P Q r : ℤ, (r : ℂ) * γ = P + Q * cmTheta b d →
      r ^ 2 * p = (P ^ 2 + P * Q * b + Q ^ 2 * (a * c)) * q := by
    intro P Q r hr
    have h1 : (r : ℂ) * γ * conj ((r : ℂ) * γ) = r ^ 2 * ((p : ℂ) / q) := by
      rw [map_mul, map_intCast, ← hN]
      ring
    have h2 : (r : ℂ) * γ * conj ((r : ℂ) * γ) = P ^ 2 + P * Q * b + Q ^ 2 * (a * c) := by
      rw [hr, map_add (f := _), map_mul, map_intCast, map_intCast, theta_conj]
      linear_combination (Q : ℂ) ^ 2 * hθ
    have hq0' : (q : ℂ) ≠ 0 := by exact_mod_cast hq0
    have hC : (r : ℂ) ^ 2 * p = (P ^ 2 + P * Q * b + Q ^ 2 * (a * c)) * q := by
      rw [← h2, h1]
      field_simp
    exact_mod_cast hC

  have main : ∀ n : ℕ, ∀ P Q r : ℤ, r.natAbs = n → r ≠ 0 →
      r ^ 2 * p = (P ^ 2 + P * Q * b + Q ^ 2 * (a * c)) * q → ∃ s : ℤ, (d : ℤ) ∣ s ^ 2 * q - p := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      intro P Q r hn hr0 hM
      by_cases hdr : (d : ℤ) ∣ r
      · obtain ⟨hP, hQ⟩ := descent_step ⟨h4, ha, h8, hdp⟩ hdr hp hq hM
        obtain ⟨P', rfl⟩ := hP
        obtain ⟨Q', rfl⟩ := hQ
        obtain ⟨r', rfl⟩ := hdr
        have hr' : r' ≠ 0 := by
          rintro rfl
          simp at hr0
        have hM' : r' ^ 2 * p = (P' ^ 2 + P' * Q' * b + Q' ^ 2 * (a * c)) * q := by
          have hd2 : ((d : ℤ) ^ 2) ≠ 0 := pow_ne_zero 2 hD0
          apply mul_left_cancel₀ hd2
          linear_combination hM
        refine ih r'.natAbs ?_ P' Q' r' rfl hr' hM'
        rw [← hn, Int.natAbs_mul]
        have h1 : 1 < (d : ℤ).natAbs := by
          have := hdp.two_le
          simp only [Int.natAbs_natCast]
          omega
        have h2 : 0 < r'.natAbs := Int.natAbs_pos.mpr hr'
        nlinarith
      · have := Fact.mk hdp
        have hkey : (2 * r) ^ 2 * p = (2 * P + b * Q) ^ 2 * q + d * (Q ^ 2 * q) := by
          linear_combination 4 * hM + q * Q ^ 2 * h4
        have h2r : ((2 * r : ℤ) : ZMod d) ≠ 0 := by
          rw [Ne, ZMod.intCast_zmod_eq_zero_iff_dvd]
          intro h
          rcases hD.dvd_or_dvd h with h | h
          · exact hD2 h
          · exact hdr h
        refine ⟨((((2 * P + b * Q : ℤ) : ZMod d) * ((2 * r : ℤ) : ZMod d)⁻¹).val : ℤ), ?_⟩
        rw [← ZMod.intCast_zmod_eq_zero_iff_dvd]
        have hk := congrArg (Int.cast : ℤ → ZMod d) hkey
        push_cast at hk h2r ⊢
        rw [ZMod.natCast_zmod_val, ZMod.natCast_self, zero_mul, add_zero] at *
        have hinv : (2 * (r : ZMod d))⁻¹ ^ 2 * (2 * (r : ZMod d)) ^ 2 = 1 := by
          rw [← mul_pow, inv_mul_cancel₀ h2r, one_pow]
        linear_combination (-((2 * (r : ZMod d))⁻¹ ^ 2)) * hk + (p : ZMod d) * hinv
  obtain ⟨P, Q, r, hr0, hr⟩ := hγ
  exact main r.natAbs P Q r rfl hr0 (rel P Q r hr)

end PI.UnitaryGroupMassFormula.UnimodLocStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.DescentStep =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepRamAsm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepRamAsm", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RamDef\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepRamDef\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.DescentStep\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.HNsmulNsmul\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepBasic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepSingleSat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped ComplexConjugate

namespace PI.UnitaryGroupMassFormula.UnimodLocStd
open PI.ULS

theorem keyStartRam_of_unit (hU : UnitVecRam) : KeyStartRam := by
  intro a b c d ha hd lam hlam m _ _ Λ l x y T i₀ hK hld
  subst l
  have hK0 := hK
  obtain ⟨hOK, hsd, hθ, -, h2, hdp, hQ, hi₀, -⟩ := hK0
  set L := cmL a b d ha hd lam hlam with hL
  set κ := repKappa a b d ha hd lam hlam with hκdef
  set Q : ℤ := a * x ^ 2 + b * x * y + c * y ^ 2 with hQdef
  set f := fvec a b d lam x y i₀ with hf
  have hκ : κ ≠ 0 := rep_kappa_ne a b d ha hd lam hlam
  have hκc : conj κ = κ := kappa_real a b d ha hd lam hlam
  have hHf : stdH L m f f = κ * (Q : ℂ) := rep_norm_f a b c d ha hd lam hlam m hOK.1 x y i₀
  have hQ0 : (Q : ℂ) ≠ 0 := by
    have : Q ≠ 0 := fun h => hQ (h ▸ dvd_zero _)
    exact_mod_cast this
  have hfT : ∀ j ∈ T, f j = 0 := by
    intro j hj
    have hne : j ≠ i₀ := fun h => hi₀ (h ▸ hj)
    simp [hf, fvec, hne]
  have hfmem : f ∈ stdLat L m := rep_fvec_mem a b d ha hd lam hlam m x y i₀
  set M := relIdx Λ (stdLat L m) with hMdef
  have hMf : M • f ∈ Λ := by
    have h := AddSubgroup.nsmul_index_mem (Λ.addSubgroupOf (stdLat L m)) ⟨f, hfmem⟩
    rw [AddSubgroup.mem_addSubgroupOf] at h
    simpa [hMdef, relIdx, AddSubgroup.relIndex] using h
  have hMc : (M : ℂ) ≠ 0 := by exact_mod_cast h2
  have hgf : M • f = (M : ℂ) • f := (Nat.cast_smul_eq_nsmul ℂ M f).symm
  set g := M • f with hg
  have hHs : ∀ (α β : ℂ) (u v : m → ℂ), stdH L m (α • u) (β • v) = α * conj β * stdH L m u v := by
    intro α β u v
    simp only [map_smul, LinearMap.smul_apply, LinearMap.map_smulₛₗ, smul_eq_mul]
    ring
  have hgT : ∀ j ∈ T, g j = 0 := by
    intro j hj
    simp [hgf, hfT j hj]
  have hg0 : g ≠ 0 := by
    intro h
    have h' : stdH L m g g = 0 := by rw [h]; simp
    rw [hgf, hHs, hHf] at h'
    have : (M : ℂ) * conj (M : ℂ) * (κ * Q) ≠ 0 := by
      simp only [map_natCast]
      exact mul_ne_zero (mul_ne_zero hMc hMc) (mul_ne_zero hκ hQ0)
    exact this h'
  have hgS : SatMem d Λ g := rep_sat_of_mem d Λ hMf hdp
  have hd1 : ¬ (d : ℤ) ∣ 1 := by
    intro h
    have := Int.eq_one_of_dvd_one (by positivity) h
    exact hdp.one_lt.ne' (by exact_mod_cast this)
  obtain ⟨y1, hy1S, hy1T, -, p1, q1, hp1, hq1, hy1H⟩ :=
    hU a b c d ha hd lam hlam m Λ x y T i₀ hK 0 (rep_sat_zero d Λ hdp) (by simp) (Or.inl rfl)
      g hgS hgT (by simp) hg0
  have hp1c : (p1 : ℂ) ≠ 0 := by
    have : p1 ≠ 0 := fun h => hp1 (h ▸ dvd_zero _)
    exact_mod_cast this
  have hq1c : (q1 : ℂ) ≠ 0 := by
    have : q1 ≠ 0 := fun h => hq1 (h ▸ dvd_zero _)
    exact_mod_cast this
  obtain ⟨n', c₂, s', hs', hpair⟩ := sat_pair hOK hsd hθ hdp hgS hy1S
  rw [← hL, ← hκdef] at hy1H hpair
  have hs'c : (s' : ℂ) ≠ 0 := by
    have : s' ≠ 0 := fun h => hs' (h ▸ dvd_zero _)
    exact_mod_cast this
  have hθc : conj (cmTheta b d) = (b : ℂ) - cmTheta b d := by
    have := rep_theta_add_conj b d
    linear_combination this
  set γ0 : ℂ := (q1 : ℂ) * ((n' : ℂ) - c₂ * conj (cmTheta b d)) with hγ0
  set z : m → ℂ := (((p1 * s' : ℤ) : ℂ)) • g - γ0 • y1 with hz
  have hzS : SatMem d Λ z := by
    have h1 := rep_sat_zsmul d Λ hgS (p1 * s')
    have h2 := rep_sat_elt d Λ hdp hθ hy1S (q1 * n') (q1 * c₂) 1 hd1
    have h3 : ((((q1 * n' : ℤ) : ℂ) - ((q1 * c₂ : ℤ) : ℂ) * conj (cmTheta b d)) / ((1 : ℤ) : ℂ)) = γ0 := by
      rw [hγ0]; push_cast; ring
    rw [h3] at h2
    exact rep_sat_sub d Λ hdp h1 h2
  have hzT : ∀ j ∈ T, z j = 0 := by
    intro j hj
    simp [hz, hgT j hj, hy1T j hj]
  have hzy : stdH L m z y1 = 0 := by
    have e1 : stdH L m z y1 = ((p1 * s' : ℤ) : ℂ) * stdH L m g y1 - γ0 * stdH L m y1 y1 := by
      simp only [hz, map_sub, map_smul, LinearMap.sub_apply, LinearMap.smul_apply, smul_eq_mul]
    rw [e1, hpair, hy1H, hγ0]
    push_cast
    field_simp
    ring
  by_cases hz0 : z = 0
  · set r : ℂ := ((p1 * s' : ℤ) : ℂ) * M with hr
    have hr0 : r ≠ 0 := by
      rw [hr]; push_cast
      exact mul_ne_zero (mul_ne_zero hp1c hs'c) hMc
    have hrc : conj r = r := by rw [hr]; simp
    have hrf : r • f = γ0 • y1 := by
      have : ((p1 * s' : ℤ) : ℂ) • g = γ0 • y1 := sub_eq_zero.mp (by rw [← hz]; exact hz0)
      rw [hgf, smul_smul] at this
      simpa [hr] using this
    set β : ℂ := γ0 / r with hβ
    have hβN : β * conj β = ((Q * q1 : ℤ) : ℂ) / ((p1 : ℤ) : ℂ) := by
      have e := congrArg (fun v => stdH L m v v) hrf
      simp only [hHs, hHf, hy1H, hrc] at e
      field_simp at e
      rw [hβ, map_div₀, hrc, div_mul_div_comm, div_eq_div_iff (mul_ne_zero hr0 hr0) hp1c]
      push_cast
      linear_combination -e
    have hβK : IsK b d β := by
      refine ⟨q1 * (n' - c₂ * b), q1 * c₂, p1 * s' * M, ?_, ?_⟩
      · have : ((p1 * s' * M : ℤ) : ℂ) ≠ 0 := by
          push_cast; exact mul_ne_zero (mul_ne_zero hp1c hs'c) hMc
        exact_mod_cast this
      · rw [hβ, hγ0, hθc]
        have : ((p1 * s' * (M : ℤ) : ℤ) : ℂ) = r := by rw [hr]; push_cast; ring
        rw [this]
        field_simp
        push_cast
        ring
    have hQq : ¬ (d : ℤ) ∣ Q * q1 := not_dvd_mul' hdp hQ hq1
    obtain ⟨s, hs⟩ := norm_square hOK hβK hQq hp1 hβN
    obtain ⟨k, hk⟩ := hs
    refine ⟨(s : ℂ) • y1, ⟨rep_sat_zsmul d Λ hy1S s, ?_, k, Q * q1, hQq, ?_⟩⟩
    · intro j hj; simp [hy1T j hj]
    · rw [hHs, hy1H, hHf]
      have hk' : (s : ℂ) ^ 2 * p1 = Q * q1 + d * k := by
        have := congrArg (fun t : ℤ => (t : ℂ)) hk
        push_cast at this
        linear_combination this
      simp only [map_intCast]
      push_cast
      field_simp
      linear_combination hk'
  · obtain ⟨y2, hy2S, hy2T, hy21, p2, q2, hp2, hq2, hy2H⟩ :=
      hU a b c d ha hd lam hlam m Λ x y T i₀ hK y1 hy1S hy1T (Or.inr ⟨p1, q1, hp1, hq1, by
        rw [hy1H]⟩) z hzS hzT hzy hz0
    rw [← hL, ← hκdef] at hy2H
    rw [← hL] at hy21
    have hp2c : (p2 : ℂ) ≠ 0 := by
      have : p2 ≠ 0 := fun h => hp2 (h ▸ dvd_zero _)
      exact_mod_cast this
    have hq2c : (q2 : ℂ) ≠ 0 := by
      have : q2 ≠ 0 := fun h => hq2 (h ▸ dvd_zero _)
      exact_mod_cast this
    have hy12 : stdH L m y1 y2 = 0 := by
      have := rep_H_conj (L := L) (m := m) y2 y1
      rw [hy21, map_zero] at this
      exact this.symm
    have hodd : d % 2 = 1 := by
      have := hOK.2.2.1
      omega
    obtain ⟨s, t, hst⟩ := pigeon hdp hodd (p1 * q2) (p2 * q1) (Q * q1 * q2)
      (not_dvd_mul' hdp hp1 hq2) (not_dvd_mul' hdp hp2 hq1)
    obtain ⟨k, hk⟩ := hst
    have hQq : ¬ (d : ℤ) ∣ Q * (q1 * q2) := not_dvd_mul' hdp hQ (not_dvd_mul' hdp hq1 hq2)
    refine ⟨(s : ℂ) • y1 + (t : ℂ) • y2,
      ⟨rep_sat_add d Λ hdp (rep_sat_zsmul d Λ hy1S s) (rep_sat_zsmul d Λ hy2S t), ?_, k, Q * (q1 * q2), hQq, ?_⟩⟩
    · intro j hj; simp [hy1T j hj, hy2T j hj]
    · have e : stdH L m ((s : ℂ) • y1 + (t : ℂ) • y2) ((s : ℂ) • y1 + (t : ℂ) • y2) =
          (s : ℂ) ^ 2 * stdH L m y1 y1 + (t : ℂ) ^ 2 * stdH L m y2 y2 := by
        simp only [map_add (f := _), LinearMap.add_apply, hHs, hy12, hy21, map_intCast]
        ring
      rw [e, hy1H, hy2H, hHf]
      have hk' : (s : ℂ) ^ 2 * (p1 * q2) + (t : ℂ) ^ 2 * (p2 * q1) = Q * q1 * q2 + d * k := by
        have := congrArg (fun t : ℤ => (t : ℂ)) hk
        push_cast at this
        linear_combination this
      push_cast
      field_simp
      linear_combination hk'

end PI.UnitaryGroupMassFormula.UnimodLocStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepRamAsm =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.UnitVecRam =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.UnitVecRam", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RamDef\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.HNsmulNsmul\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepBasic\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepHSelfInt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepSingleSat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped ComplexConjugate

namespace PI.UnitaryGroupMassFormula.UnimodLocStd
open PI.ULS

theorem unitVecRam : UnitVecRam := by
  classical
  intro a b c d ha hd lam hlam m _ _ Λ x0 y0 T i₀ hK x hxs hxT hx z₀ hz₀ hz₀T hz₀x hz₀ne
  obtain ⟨hOK, hΛ, hθ, h1, h2, hl, hQ, hi₀, hT⟩ := hK
  have hdp : Prime (d : ℤ) := Nat.prime_iff_prime_int.mp hl
  have hκ0 : repKappa a b d ha hd lam hlam ≠ 0 := rep_kappa_ne a b d ha hd lam hlam
  have hr0 : ((Real.sqrt d : ℝ) : ℂ) ≠ 0 := by
    have : 0 < Real.sqrt d := Real.sqrt_pos.mpr (by exact_mod_cast hd)
    exact_mod_cast this.ne'
  have hπ : 2 * cmTheta b d - b = Complex.I * ((Real.sqrt d : ℝ) : ℂ) := by unfold cmTheta; ring
  have hπ0 : (2 * cmTheta b d - b) ≠ 0 := by rw [hπ]; exact mul_ne_zero Complex.I_ne_zero hr0
  have hdc : (d : ℂ) ≠ 0 := by exact_mod_cast hl.ne_zero
  have hππ : (2 * cmTheta b d - b)⁻¹ * conj (2 * cmTheta b d - b)⁻¹ = (d : ℂ)⁻¹ := by
    rw [map_inv₀, ← mul_inv]
    congr 1
    rw [hπ, map_mul, Complex.conj_I, Complex.conj_ofReal]
    linear_combination (-((Real.sqrt d : ℝ) : ℂ) ^ 2) * Complex.I_sq + rep_sqrt_sq d
  have nz : ∀ {z : ℤ}, ¬ (d : ℤ) ∣ z → (z : ℂ) ≠ 0 := by
    intro z hz h; apply hz; rw [show z = 0 by exact_mod_cast h]; exact dvd_zero _

  obtain ⟨n0, s0, hs0, e0⟩ := sat_norm hOK hΛ hθ hl hz₀
  have hn0 : n0 ≠ 0 := by
    intro h
    apply H_self_ne m (cmL a b d ha hd lam hlam) hz₀ne
    rw [e0, h]; simp
  let P : ℕ → Prop := fun j => SatMem d Λ (((2 * cmTheta b d - b)⁻¹) ^ j • z₀)
  have hbound : ∀ j, P j → j ≤ n0.natAbs := by
    intro j hj
    obtain ⟨p, q, hq, e⟩ := sat_norm hOK hΛ hθ hl hj
    have eH : stdH (cmL a b d ha hd lam hlam) m (((2 * cmTheta b d - b)⁻¹) ^ j • z₀) (((2 * cmTheta b d - b)⁻¹) ^ j • z₀)
        = ((d : ℂ)⁻¹) ^ j * stdH (cmL a b d ha hd lam hlam) m z₀ z₀ := by
      rw [LinearMap.map_smul, LinearMap.smul_apply, LinearMap.map_smulₛₗ, smul_eq_mul, smul_eq_mul, map_pow,
        ← mul_assoc, ← mul_pow, hππ]
    rw [eH, e0] at e
    have e' : repKappa a b d ha hd lam hlam * ((p : ℂ) / q) =
        repKappa a b d ha hd lam hlam * ((n0 : ℂ) / ((s0 : ℂ) * (d : ℂ) ^ j)) := by
      calc _ = repKappa a b d ha hd lam hlam * p / q := by ring
        _ = _ := e.symm
        _ = _ := by ring
    have e'' := mul_left_cancel₀ hκ0 e'
    rw [div_eq_div_iff (nz hq) (mul_ne_zero (nz hs0) (pow_ne_zero _ hdc))] at e''
    have hZ : p * (s0 * (d : ℤ) ^ j) = n0 * q := by exact_mod_cast e''
    have hdj : (d : ℤ) ^ j ∣ n0 := by
      have h' : (d : ℤ) ^ j ∣ n0 * q := ⟨p * s0, by rw [← hZ]; ring⟩
      have hcop : IsCoprime ((d : ℤ) ^ j) q := IsCoprime.pow_left ((Prime.coprime_iff_not_dvd hdp).mpr hq)
      exact hcop.dvd_of_dvd_mul_right h'
    have hle : d ^ j ≤ n0.natAbs := by
      have := Int.natAbs_dvd_natAbs.mpr hdj
      rw [Int.natAbs_pow, Int.natAbs_natCast] at this
      exact Nat.le_of_dvd (Int.natAbs_pos.mpr hn0) this
    have hlt : j < d ^ j := Nat.lt_pow_self hl.one_lt
    omega
  have hP0 : P 0 := by simpa [P] using hz₀
  set J := Nat.findGreatest P n0.natAbs with hJ
  have hPJ : P J := Nat.findGreatest_spec (P := P) (Nat.zero_le _) hP0
  have hPJ1 : ¬ P (J + 1) := by
    intro h
    by_cases hle : J + 1 ≤ n0.natAbs
    · exact Nat.findGreatest_is_greatest (Nat.lt_succ_self _) hle h
    · exact hle (hbound _ h)
  set xh : m → ℂ := ((2 * cmTheta b d - b)⁻¹) ^ J • z₀ with hxh
  have hxhT : ∀ j ∈ T, xh j = 0 := by intro j hj; simp [xh, hz₀T j hj]
  have hxhx : stdH (cmL a b d ha hd lam hlam) m xh x = 0 := by
    rw [hxh, LinearMap.map_smul, LinearMap.smul_apply, hz₀x, smul_zero]
  have hnot : ¬ SatMem d Λ ((2 * cmTheta b d - b)⁻¹ • xh) := by
    rw [hxh, smul_smul, ← pow_succ']; exact hPJ1
  have hxhs : SatMem d Λ xh := hPJ
  obtain ⟨s, hs, hsx⟩ := hPJ
  have hs' : ¬ (d : ℤ) ∣ (s : ℤ) := fun h => hs (by exact_mod_cast h)

  obtain ⟨y, hy, n, c₂, hny, hdn⟩ : ∃ y ∈ Λ, ∃ n c₂ : ℤ,
      stdH (cmL a b d ha hd lam hlam) m (s • xh) y = repKappa a b d ha hd lam hlam * ((n : ℂ) - c₂ * conj (cmTheta b d)) ∧
      ¬ (d : ℤ) ∣ 2 * n - c₂ * b := by
    by_contra hcon
    push_neg at hcon
    apply hnot
    refine ⟨s, hs, ?_⟩
    rw [smul_comm, ← hΛ]
    intro y' hy'
    obtain ⟨n', c', e1, -⟩ := rep_H_int a b c d ha hd lam hlam m hOK Λ hΛ hθ hsx hy'
    obtain ⟨k, hk⟩ := hcon y' hy' n' c' e1
    refine ⟨-k, ?_⟩
    unfold altE
    rw [LinearMap.map_smul, LinearMap.smul_apply, smul_eq_mul, e1, im_pi_inv, hk]
    push_cast
    field_simp

  set yz := zT T y with hyzdef
  have hyz : SatMem d Λ yz := rep_zT_sat a b c d ha hd lam hlam m hOK Λ hΛ hθ hl x0 y0 hQ T hT hy
  set μ := stdH (cmL a b d ha hd lam hlam) m yz x / stdH (cmL a b d ha hd lam hlam) m x x with hμdef
  set y' := yz - μ • x with hy'def
  have hy's : SatMem d Λ y' := by
    rcases hx with rfl | ⟨p, q, hp, hq, e⟩
    · simpa [y'] using hyz
    · obtain ⟨n2, c3, s2, hs2, e2⟩ := sat_pair hOK hΛ hθ hl hyz hxs
      have hμ : μ = (((q * n2 : ℤ) : ℂ) - ((q * c3 : ℤ) : ℂ) * conj (cmTheta b d)) / ((s2 * p : ℤ) : ℂ) := by
        have hp0 := nz hp
        have hq0 := nz hq
        have hs20 := nz hs2
        rw [hμdef, e2, e]
        push_cast
        field_simp
      refine rep_sat_sub d Λ hl hyz ?_
      rw [hμ]
      exact rep_sat_elt d Λ hl hθ hxs _ _ _ (not_dvd_mul' hl hs2 hp)
  have hy'T : ∀ j ∈ T, y' j = 0 := by
    intro j hj; simp [y', yz, zT, hj, hxT j hj]
  have hy'x : stdH (cmL a b d ha hd lam hlam) m y' x = 0 := by
    rcases hx with rfl | ⟨p, q, hp, hq, e⟩
    · simp
    · have hxx : stdH (cmL a b d ha hd lam hlam) m x x ≠ 0 := by
        rw [e]; exact div_ne_zero (mul_ne_zero hκ0 (nz hp)) (nz hq)
      rw [hy'def, map_sub, LinearMap.sub_apply, LinearMap.map_smul, LinearMap.smul_apply, smul_eq_mul, hμdef,
        div_mul_cancel₀ _ hxx, sub_self]
  have hxhy' : stdH (cmL a b d ha hd lam hlam) m xh y' = stdH (cmL a b d ha hd lam hlam) m xh y := by
    rw [hy'def, map_sub, (stdH (cmL a b d ha hd lam hlam) m xh).map_smulₛₗ μ x, hxhx, smul_zero, sub_zero]
    exact rep_H_zT a b d ha hd lam hlam m T hxhT
  have hsc : (s : ℂ) ≠ 0 := by exact_mod_cast nz hs'
  have hxhy : stdH (cmL a b d ha hd lam hlam) m xh y =
      repKappa a b d ha hd lam hlam * ((n : ℂ) - c₂ * conj (cmTheta b d)) / s := by
    have e3 : stdH (cmL a b d ha hd lam hlam) m (s • xh) y = (s : ℂ) * stdH (cmL a b d ha hd lam hlam) m xh y := by
      rw [← Nat.cast_smul_eq_nsmul ℂ, LinearMap.map_smul, LinearMap.smul_apply, smul_eq_mul]
    rw [hny] at e3
    rw [eq_div_iff hsc]
    linear_combination (-1 : ℂ) * e3

  obtain ⟨p1, q1, hq1, e1⟩ := sat_norm hOK hΛ hθ hl hxhs
  obtain ⟨p2, q2, hq2, e2⟩ := sat_norm hOK hΛ hθ hl hy's
  by_cases hp1 : (d : ℤ) ∣ p1
  · by_cases hp2 : (d : ℤ) ∣ p2
    · refine ⟨xh + y', rep_sat_add d Λ hl hxhs hy's, ?_, ?_, ?_⟩
      · intro j hj; simp [hxhT j hj, hy'T j hj]
      · rw [map_add (f := _), LinearMap.add_apply, hxhx, hy'x, add_zero]
      · refine ⟨p1 * q2 * s + p2 * q1 * s + (2 * n - c₂ * b) * q1 * q2, q1 * q2 * s, ?_,
          not_dvd_mul' hl (not_dvd_mul' hl hq1 hq2) hs', ?_⟩
        · intro hdv
          have e4 : (2 * n - c₂ * b) * q1 * q2 =
              (p1 * q2 * s + p2 * q1 * s + (2 * n - c₂ * b) * q1 * q2) - (p1 * q2 * s + p2 * q1 * s) := by ring
          have : (d : ℤ) ∣ (2 * n - c₂ * b) * q1 * q2 := by
            rw [e4]
            exact dvd_sub hdv (dvd_add ((hp1.mul_right _).mul_right _) ((hp2.mul_right _).mul_right _))
          exact not_dvd_mul' hl (not_dvd_mul' hl hdn hq1) hq2 this
        · have hyx : stdH (cmL a b d ha hd lam hlam) m y' xh =
              repKappa a b d ha hd lam hlam * ((n : ℂ) - c₂ * cmTheta b d) / s := by
            rw [← rep_H_conj (cmL a b d ha hd lam hlam) m xh y', hxhy', hxhy]
            simp only [map_div₀, map_mul, map_sub, map_intCast, map_natCast, Complex.conj_conj,
              kappa_real a b d ha hd lam hlam]
          rw [map_add (stdH (cmL a b d ha hd lam hlam) m) xh y', LinearMap.add_apply, map_add (f := _), map_add (f := _), e1, e2, hxhy',
            hxhy, hyx]
          have htb := rep_theta_add_conj b d
          have hA : (q1 : ℂ) * (q1 : ℂ)⁻¹ = 1 := mul_inv_cancel₀ (nz hq1)
          have hB : (q2 : ℂ) * (q2 : ℂ)⁻¹ = 1 := mul_inv_cancel₀ (nz hq2)
          have hC : (s : ℂ) * (s : ℂ)⁻¹ = 1 := mul_inv_cancel₀ hsc
          set κ := repKappa a b d ha hd lam hlam
          push_cast
          simp only [div_eq_mul_inv, mul_inv]
          linear_combination
            (-κ * p2 * (q2 : ℂ)⁻¹ * ((s : ℂ) * (s : ℂ)⁻¹) - κ * (s : ℂ)⁻¹ * (2 * n - c₂ * b) * ((q2 : ℂ) * (q2 : ℂ)⁻¹)) * hA +
            (-κ * p1 * (q1 : ℂ)⁻¹ * ((s : ℂ) * (s : ℂ)⁻¹) - κ * (s : ℂ)⁻¹ * (2 * n - c₂ * b)) * hB +
            (-κ * p1 * (q1 : ℂ)⁻¹ - κ * p2 * (q2 : ℂ)⁻¹) * hC +
            (-κ * (s : ℂ)⁻¹ * c₂) * htb
    · exact ⟨y', hy's, hy'T, hy'x, p2, q2, hp2, hq2, e2⟩
  · exact ⟨xh, hxhs, hxhT, hxhx, p1, q1, hp1, hq1, e1⟩

end PI.UnitaryGroupMassFormula.UnimodLocStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.UnitVecRam =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnimodLocStd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnimodLocStd", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnimodLocStd\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.ExistsIsometryMemLocalizedAtSingle\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepKeyRam\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.RepRamAsm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnimodularLocalStandard.UnitVecRam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem unimodular_local_standard : PI.UnimodLocStd :=
  PI.UnitaryGroupMassFormula.UnimodLocStd.target_of_key
    (PI.UnitaryGroupMassFormula.UnimodLocStd.keyRep_of_ram
      (PI.UnitaryGroupMassFormula.UnimodLocStd.keyStartRam_of_unit PI.UnitaryGroupMassFormula.UnimodLocStd.unitVecRam))
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnimodLocStd =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharactersFactAltForm\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnimodLocStd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.H

theorem localStandard : LocalStandard := unimodular_local_standard

end Formalism.L2.Th1.H
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated =====
