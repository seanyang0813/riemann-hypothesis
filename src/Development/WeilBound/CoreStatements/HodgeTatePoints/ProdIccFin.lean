module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes
public import Mathlib.CategoryTheory.Category.Basic
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RangeSubtypeEq
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates
public import Development.WeilBound.CoreStatements.HodgeTatePoints.HasLenOfEquiv
public import ReciprocityTheory.DualLattices.EigenLengthProductStatementHolds
public import ReciprocityTheory.DualLattices.ExistsSmulMemOfMemSpan
public import ReciprocityTheory.DualLattices.MemOfSumSingleEqZero
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
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
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.DualLattices.PowMemCarrier
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.DualLattices.IsLocalOfIntegers

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.HodgeTatePoints.RcProj, Development.WeilBound.CoreStatements.HodgeTatePoints.ProdIccFin

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RcProj =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.RcProj", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RangeSubtypeEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.DualLattices.PowMemCarrier\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.HtPt.Rc

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

section Gen

variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C] {F : Type} [Field F]
  [Fintype F] [DecidableEq F]
variable {N X : Type} [AddCommGroup N] [Module F N] [AddCommGroup X] [Module F X]

def projL (χ : MulChar F R) : (N → C) →ₗ[R] (N → C) where
  toFun := GlobalTheory.CompanionTheory.Ar.GR.proj χ
  map_add' g h := by
    funext x
    simp only [GlobalTheory.CompanionTheory.Ar.GR.proj, Pi.add_apply, mul_add, Finset.sum_add_distrib]
  map_smul' r g := by
    funext x
    simp only [GlobalTheory.CompanionTheory.Ar.GR.proj, Pi.smul_apply, Algebra.smul_def, RingHom.id_apply,
      Finset.mul_sum]
    exact Finset.sum_congr rfl fun a _ => by ring

lemma projL_apply (χ : MulChar F R) (g : N → C) (x : N) :
    projL χ g x = (Fintype.card Fˣ : C)⁻¹ *
      ∑ a : Fˣ, algebraMap R C (χ⁻¹ (a : F)) * g ((a : F) • x) := rfl

lemma exists_inv_card {v : Valuation C NNReal} (hv : v.Integers R) (p : ℕ) [Fact p.Prime]
    (hvp : v (p : C) < 1) [CharP F p] :
    ∃ u : R, algebraMap R C u = (Fintype.card Fˣ : C)⁻¹ := by
  obtain ⟨n, -, hn⟩ := FiniteField.card F p
  have hq : v ((Fintype.card F : ℕ) : C) < 1 := by
    rw [hn, Nat.cast_pow, map_pow]
    exact pow_lt_one₀ zero_le hvp n.ne_zero
  have h1 : v (Fintype.card Fˣ : C) = 1 := by
    rw [Fintype.card_units, Nat.cast_sub Fintype.card_pos, Nat.cast_one, Valuation.map_sub_swap]
    exact v.map_one_sub_of_lt hq
  exact hv.exists_of_le_one (by rw [map_inv₀, h1, inv_one])

omit [Fintype F] [DecidableEq F] in
lemma mul_inv_unit (χ : MulChar F R) (a : Fˣ) : χ (a : F) * χ⁻¹ (a : F) = 1 := by
  rw [← MulChar.mul_apply, mul_inv_cancel, MulChar.one_apply_coe]

omit [Fintype F] [DecidableEq F] in
lemma eig_le_aug (M : Submodule R (N → C)) (χ : MulChar F R) : eig M χ ≤ augIdeal M := by
  intro g hg
  rw [mem_aug]
  refine ⟨hg.1, ?_⟩
  have := hg.2 0 0
  rwa [zero_smul, MulChar.map_zero, map_zero, zero_mul] at this

lemma projL_self [CharZero C] (χ : MulChar F R) {M : Submodule R (N → C)} {g : N → C}
    (hg : g ∈ eig M χ) : projL χ g = g := by
  funext x
  have h : ∀ a : Fˣ, algebraMap R C (χ⁻¹ (a : F)) * g ((a : F) • x) = g x := fun a => by
    rw [hg.2, ← mul_assoc, ← map_mul, mul_comm (χ⁻¹ _), mul_inv_unit, map_one, one_mul]
  rw [projL_apply]
  simp only [h]
  rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul, ← mul_assoc,
    inv_mul_cancel₀ (Nat.cast_ne_zero.2 Fintype.card_ne_zero), one_mul]

lemma projL_ne [IsDomain R] {χ χ' : MulChar F R} (hne : χ ≠ χ') {M : Submodule R (N → C)}
    {g : N → C} (hg : g ∈ eig M χ') : projL χ g = 0 := by
  funext x
  have h : ∀ a : Fˣ, algebraMap R C (χ⁻¹ (a : F)) * g ((a : F) • x) =
      algebraMap R C ((χ⁻¹ * χ') (a : F)) * g x := fun a => by
    rw [hg.2, ← mul_assoc, ← map_mul, MulChar.mul_apply]
  have h0 : ∑ a : Fˣ, (χ⁻¹ * χ') (a : F) = 0 := by
    refine sum_hom_units_eq_zero ((χ⁻¹ * χ').toMonoidHom.comp (Units.coeHom F)) fun h1 => hne ?_
    rw [← inv_mul_eq_one]
    refine MulChar.ext fun a => ?_
    rw [MulChar.one_apply_coe]
    exact DFunLike.congr_fun h1 a
  rw [projL_apply]
  simp only [h]

  rw [← Finset.sum_mul, ← map_sum, h0, map_zero, zero_mul, mul_zero, Pi.zero_apply]

lemma sum_projL [CharZero C] [IsDomain R] (σ : MulChar F R)
    (hσ : ∀ a : Fˣ, σ (a : F) = 1 → a = 1) (g : N → C) :
    ∑ i : Fin (Fintype.card Fˣ), projL (σ ^ ((i : ℕ) + 1)) g = g := by
  funext x
  have h : ∀ a : Fˣ, ∑ i : Fin (Fintype.card Fˣ), (σ ^ ((i : ℕ) + 1))⁻¹ (a : F) =
      if a = 1 then (Fintype.card Fˣ : R) else 0 := by
    intro a
    split_ifs with ha
    · simp [ha]
    · have hp : ∀ i : ℕ, (σ ^ (i + 1))⁻¹ (a : F) = σ⁻¹ (a : F) ^ i * σ⁻¹ (a : F) := fun i => by
        rw [← inv_pow, MulChar.pow_apply_coe, pow_succ]
      simp only [hp]
      rw [← Finset.sum_mul, Fin.sum_univ_eq_sum_range (fun i => σ⁻¹ (a : F) ^ i)]
      have h1 := geom_sum_mul (σ⁻¹ (a : F)) (Fintype.card Fˣ)
      rw [← map_pow, ← Units.val_pow_eq_pow_val, pow_card_eq_one, Units.val_one, map_one,
        sub_self] at h1
      have h2 : σ⁻¹ (a : F) - 1 ≠ 0 := fun h => ha (hσ a (by
        have := mul_inv_unit σ a
        rwa [sub_eq_zero.1 h, mul_one] at this))
      rw [(mul_eq_zero.1 h1).resolve_right h2, zero_mul]
  rw [Finset.sum_apply]
  simp only [projL_apply]
  rw [← Finset.mul_sum, Finset.sum_comm]

  simp only [← Finset.sum_mul, ← map_sum, h]
  rw [Finset.sum_eq_single 1 (fun a _ ha => by simp [ha]) (by simp)]
  rw [if_pos rfl, map_natCast, Units.val_one, one_smul, ← mul_assoc,
    inv_mul_cancel₀ (Nat.cast_ne_zero.2 Fintype.card_ne_zero), one_mul]

lemma projL_funLeft (χ : MulChar F R) (φ : X →ₗ[F] N) (g : N → C) :
    projL χ (LinearMap.funLeft R C φ g) = LinearMap.funLeft R C φ (projL χ g) := by
  funext x
  simp only [projL_apply, LinearMap.funLeft_apply, map_smul]

omit [Fintype F] [DecidableEq F] in
lemma eig_pull (χ : MulChar F R) (φ : X →ₗ[F] N) (M : Submodule R (N → C))
    (M' : Submodule R (X → C)) (h : ∀ g ∈ M, LinearMap.funLeft R C φ g ∈ M') {g : N → C}
    (hg : g ∈ eig M χ) : LinearMap.funLeft R C φ g ∈ eig M' χ :=
  ⟨h g hg.1, fun a x => by simp only [LinearMap.funLeft_apply, map_smul, hg.2]⟩

end Gen

end PositivityTheory.HtPt.Rc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RcProj =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.ProdIccFin =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.ProdIccFin", "h": "module\n\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RcProj\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.HasLenOfEquiv\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.RangeSubtypeEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.DualLattices.EigenLengthProductStatementHolds\npublic import ReciprocityTheory.DualLattices.ExistsSmulMemOfMemSpan\nimport ReciprocityTheory.DualLattices.IsLocalOfIntegers\npublic import ReciprocityTheory.DualLattices.MemOfSumSingleEqZero\nimport ReciprocityTheory.DualLattices.PowMemCarrier\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.HtPt.Rc

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

open ReciprocityTheory.PGsh.L2.SecondCohomologyLattice

section Gen

variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C] {v : Valuation C NNReal}

lemma gens_of_len {M : Type} [AddCommGroup M] [Module R M] {m : ℕ} {c : Fin m → R}
    (e : M ≃ₗ[R] ((i : Fin m) → R ⧸ Ideal.span {c i})) :
    ∃ y : Fin m → M, (∀ i, c i • y i = 0) ∧ ∀ x, ∃ r : Fin m → R, x = ∑ i, r i • y i := by
  refine ⟨fun i => e.symm (Pi.single i 1), fun i => ?_, fun x => ⟨fun i => Quotient.out (e x i), ?_⟩⟩
  · rw [← map_smul, single_smul_self, map_zero]
  · apply e.injective

    simp only [map_sum, map_smul, LinearEquiv.apply_symm_apply]
    exact eq_sum_single c (e x)

lemma len_mul_le (hv : v.Integers R) {A B D : Type} [AddCommGroup A] [Module R A] [AddCommGroup B]
    [Module R B] [AddCommGroup D] [Module R D] (ι : A →ₗ[R] B) (π : B →ₗ[R] D)
    (hπ : Function.Surjective π) (hex : ∀ x, π x = 0 → x ∈ LinearMap.range ι) {a b d : NNReal}
    (ha : HasLen v R A a) (hb : HasLen v R B b) (hd : HasLen v R D d) : a * d ≤ b := by
  obtain ⟨m, α, ⟨e⟩, rfl⟩ := ha
  obtain ⟨n, γ, ⟨e'⟩, rfl⟩ := hd
  obtain ⟨u, hu0, hu⟩ := gens_of_len e
  obtain ⟨w, hw0, hw⟩ := gens_of_len e'
  choose z hz using fun j => hπ (w j)
  have hk : ∀ x, π x = 0 → ∃ r : Fin m → R, x = ∑ i, r i • ι (u i) := by
    intro x hx
    obtain ⟨y, rfl⟩ := hex x hx
    obtain ⟨r, rfl⟩ := hu y
    exact ⟨r, by simp⟩
  have h := prod_le_of_gen hv hb (Fin.append (fun i => ι (u i)) z) ?_ (Fin.append α γ) ?_
  · rw [Fin.prod_univ_add] at h
    simpa using h
  · rw [eq_top_iff]
    intro x _
    obtain ⟨s, hs⟩ := hw (π x)
    obtain ⟨r, hr⟩ := hk (x - ∑ j, s j • z j) (by simp [hz, ← hs])
    rw [Submodule.mem_span_range_iff_exists_fun]
    refine ⟨Fin.append r s, ?_⟩
    rw [Fin.sum_univ_add]
    simp only [Fin.append_left, Fin.append_right]
    rw [← hr, sub_add_cancel]
  · intro i
    refine Fin.addCases (fun i => ?_) (fun j => ?_) i
    · refine ⟨0, ?_⟩
      simp [← map_smul, hu0]
    · obtain ⟨r, hr⟩ := hk (γ j • z j) (by rw [map_smul, hz, hw0])
      refine ⟨Fin.append r 0, ?_⟩
      rw [Fin.sum_univ_add]
      have hlt : ∀ i : Fin m, Fin.castAdd n i < Fin.natAdd m j := fun i => by
        rw [Fin.lt_def, Fin.val_castAdd, Fin.val_natAdd]
        have := i.2
        omega
      simp [hlt, hr]

variable {F : Type} [Field F] {N X : Type} [AddCommGroup N] [Module F N] [AddCommGroup X]
  [Module F X]

lemma eig_fg (hv : v.Integers R) (M : Submodule R (N → C)) (hM : M.FG) (χ : MulChar F R) :
    (eig M χ).FG := by
  let φ : (N → C) →ₗ[R] (F × N → C) := LinearMap.pi fun q =>
    LinearMap.proj (q.1 • q.2) - χ q.1 • LinearMap.proj q.2
  have hφ : ∀ g q, φ g q = g (q.1 • q.2) - algebraMap R C (χ q.1) * g q.2 := fun g q => by
    simp [φ, Algebra.smul_def]
  refine fg_of_iff (fg_inf_comap hv M hM φ ⊥ Submodule.fg_bot) fun g => ⟨fun hg => ⟨hg.1, ?_⟩,
    fun hg => ⟨hg.1, fun a x => ?_⟩⟩
  · show φ g = 0
    funext q
    rw [hφ, hg.2, sub_self, Pi.zero_apply]
  · have : φ g (a, x) = 0 := congrFun (hg.2 : φ g = 0) _
    rw [hφ] at this
    exact sub_eq_zero.1 this

def omMap (χ : MulChar F R) (φ : X →ₗ[F] N) (M : Submodule R (N → C))
    (M' : Submodule R (X → C)) (h : ∀ g ∈ M, LinearMap.funLeft R C φ g ∈ M') :
    OmType M χ →ₗ[R] OmType M' χ :=
  Submodule.mapQ _ _ ((LinearMap.funLeft R C φ).restrict fun _ hg => eig_pull χ φ M M' h hg)
    (fun _ hg => sq_pull φ.toAddMonoidHom M M' h hg)

lemma prod_Icc_fin (r : ℕ → NNReal) (n : ℕ) :
    ∏ m ∈ Finset.Icc 1 n, r m = ∏ i : Fin n, r ((i : ℕ) + 1) := by
  induction n with
  | zero => simp
  | succ n ih => rw [Finset.prod_Icc_succ_top (by omega), ih, Fin.prod_univ_castSucc]; rfl

end Gen

theorem om_step : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable (F := F) AA.carrier → ∀ (K : Submodule F N) (χ : MulChar F R) (a b c : NNReal), HasLen v R (OmType (AA.carrier.map (LinearMap.funLeft R C (Subtype.val : K → N))) χ) a → HasLen v R (OmType (AA.carrier.comap (LinearMap.funLeft R C (K.mkQ : N → N ⧸ K))) χ) b → HasLen v R (OmType AA.carrier χ) c → a * b ≤ c := by
  intro p _ C _ _ _ v R _ _ hv hvp F _ _ _ _ f _ N _ _ _ _ AA hAA K χ a b c ha hb hc
  have hu := exists_inv_card (F := F) hv p hvp
  have hQ : FStable (F := F) (AA.carrier.comap (LinearMap.funLeft R C K.mkQ)) := by
    intro a g hg
    have hg' := hAA a _ hg
    show LinearMap.funLeft R C K.mkQ _ ∈ AA.carrier
    convert hg' using 1
    funext x
    show g (a • K.mkQ x) = g (K.mkQ (a • x))
    rw [map_smul]
  have hsq : FStable (F := F) (sqIdeal (augIdeal AA.carrier)) :=
    fun a _ hg => sq_pull (LinearMap.lsmul F N a).toAddMonoidHom _ _ (hAA a) hg
  have proj_mem {X : Type} [AddCommGroup X] [Module F X] (χ : MulChar F R)
      (S : Submodule R (X → C)) (hS : FStable (F := F) S) {g : X → C} (hg : g ∈ S) :
      projL χ g ∈ S := by
    obtain ⟨u, hu⟩ := hu
    have hproj : projL χ g = u • ∑ a : Fˣ, χ⁻¹ (a : F) • (fun x => g ((a : F) • x)) := by
      funext x
      rw [projL_apply, Pi.smul_apply, Finset.sum_apply, Algebra.smul_def, hu]
      exact congrArg _ (Finset.sum_congr rfl fun a _ => (Algebra.smul_def _ _).symm)
    rw [hproj]
    exact S.smul_mem _ (S.sum_mem fun a _ => S.smul_mem _ (hS _ g hg))
  have proj_eig {X : Type} [AddCommGroup X] [Module F X] (χ : MulChar F R)
      {M : Submodule R (X → C)} (hM : FStable (F := F) M) {g : X → C} (hg : g ∈ augIdeal M) :
      projL χ g ∈ eig M χ := by
    rw [mem_aug] at hg
    refine ⟨proj_mem χ M hM hg.1, fun a x => ?_⟩
    by_cases ha : a = 0
    · rw [ha, zero_smul, MulChar.map_zero, map_zero, zero_mul, projL_apply]
      simp only [smul_zero, hg.2, mul_zero, Finset.sum_const_zero]
    · obtain ⟨a, rfl⟩ := isUnit_iff_ne_zero.2 ha
      rw [projL_apply, projL_apply, mul_left_comm, Finset.mul_sum Finset.univ _ (algebraMap R C _),
        ← Equiv.sum_comp (Equiv.mulRight a) (fun b : Fˣ => algebraMap R C (χ (a : F)) *
          (algebraMap R C (χ⁻¹ (b : F)) * g ((b : F) • x)))]
      congr 1
      refine Finset.sum_congr rfl fun b _ => ?_
      rw [Equiv.coe_mulRight, Units.val_mul, mul_smul, ← mul_assoc, ← map_mul, map_mul χ⁻¹,
        mul_left_comm, mul_inv_unit, mul_one]
  rw [mul_comm]
  refine len_mul_le hv (omMap χ K.mkQ (AA.carrier.comap (LinearMap.funLeft R C K.mkQ)) AA.carrier
      (fun _ hg => hg))
    (omMap χ K.subtype AA.carrier (AA.carrier.map (LinearMap.funLeft R C K.subtype))
      (fun _ hg => Submodule.mem_map_of_mem hg)) ?_ ?_ hb hc ha
  · intro y
    obtain ⟨⟨h, hh⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ y
    obtain ⟨g, hg, hgh⟩ := hh.1
    have hga : g ∈ augIdeal AA.carrier := by
      rw [mem_aug]
      refine ⟨hg, ?_⟩
      have := ((mem_aug _ _).1 (eig_le_aug _ χ hh)).2
      rw [← hgh] at this
      exact this
    refine ⟨Submodule.Quotient.mk ⟨projL χ g, proj_eig χ hAA hga⟩, ?_⟩
    refine congrArg Submodule.Quotient.mk (Subtype.ext ?_)
    show LinearMap.funLeft R C K.subtype (projL χ g) = h
    rw [← projL_funLeft, ← projL_self χ hh, ← hgh]
  · intro x hx
    obtain ⟨⟨g, hg⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    have hx' := (Submodule.Quotient.mk_eq_zero _).1 hx
    obtain ⟨q, hq, hgq⟩ := om_exact hv AA K.subtype.toAddMonoidHom K.mkQ.toAddMonoidHom
      K.mkQ_surjective Subtype.val_injective (range_subtype_eq K) g (eig_le_aug _ χ hg) hx'
    refine ⟨Submodule.Quotient.mk ⟨projL χ q, proj_eig χ hQ hq⟩, ?_⟩
    symm
    refine (Submodule.Quotient.eq _).2 ?_
    show g - LinearMap.funLeft R C K.mkQ (projL χ q) ∈ sqIdeal (augIdeal AA.carrier)
    have := proj_mem χ _ hsq hgq
    rw [map_sub, projL_self χ hg] at this
    rw [← projL_funLeft]
    exact this

theorem om_split : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable (F := F) AA.carrier → ∀ σ : MulChar F R, IsFund p σ → (∀ χ : MulChar F R, ∃ r : NNReal, r ≠ 0 ∧ HasLen v R (OmType AA.carrier χ) r) ∧ ∀ r : ℕ → NNReal, (∀ m ∈ Finset.Icc 1 (p ^ f - 1), HasLen v R (OmType AA.carrier (σ ^ m)) (r m)) → HasLen v R (OmAA AA.carrier) (∏ m ∈ Finset.Icc 1 (p ^ f - 1), r m) := by
  intro p _ C _ _ _ v R _ _ hv hvp F _ _ _ _ f hf N _ _ _ _ AA hAA σ hσ
  have := hv.hom_inj.isDomain
  have hu := exists_inv_card (F := F) hv p hvp
  have hsq : FStable (F := F) (sqIdeal (augIdeal AA.carrier)) :=
    fun a _ hg => sq_pull (LinearMap.lsmul F N a).toAddMonoidHom _ _ (hAA a) hg
  have proj_mem (χ : MulChar F R)
      (S : Submodule R (N → C)) (hS : FStable (F := F) S) {g : N → C} (hg : g ∈ S) :
      projL χ g ∈ S := by
    obtain ⟨u, hu⟩ := hu
    have hproj : projL χ g = u • ∑ a : Fˣ, χ⁻¹ (a : F) • (fun x => g ((a : F) • x)) := by
      funext x
      rw [projL_apply, Pi.smul_apply, Finset.sum_apply, Algebra.smul_def, hu]
      exact congrArg _ (Finset.sum_congr rfl fun a _ => (Algebra.smul_def _ _).symm)
    rw [hproj]
    exact S.smul_mem _ (S.sum_mem fun a _ => S.smul_mem _ (hS _ g hg))
  have proj_eig (χ : MulChar F R)
      {M : Submodule R (N → C)} (hM : FStable (F := F) M) {g : N → C} (hg : g ∈ augIdeal M) :
      projL χ g ∈ eig M χ := by
    rw [mem_aug] at hg
    refine ⟨proj_mem χ M hM hg.1, fun a x => ?_⟩
    by_cases ha : a = 0
    · rw [ha, zero_smul, MulChar.map_zero, map_zero, zero_mul, projL_apply]
      simp only [smul_zero, hg.2, mul_zero, Finset.sum_const_zero]
    · obtain ⟨a, rfl⟩ := isUnit_iff_ne_zero.2 ha
      rw [projL_apply, projL_apply, mul_left_comm, Finset.mul_sum Finset.univ _ (algebraMap R C _),
        ← Equiv.sum_comp (Equiv.mulRight a) (fun b : Fˣ => algebraMap R C (χ (a : F)) *
          (algebraMap R C (χ⁻¹ (b : F)) * g ((b : F) • x)))]
      congr 1
      refine Finset.sum_congr rfl fun b _ => ?_
      rw [Equiv.coe_mulRight, Units.val_mul, mul_smul, ← mul_assoc, ← map_mul, map_mul χ⁻¹,
        mul_left_comm, mul_inv_unit, mul_one]
  have hfg := fg_of_isLat AA.lat
  constructor
  · intro χ
    obtain ⟨-, -, cO, -, -, hcO0, -, -, hcO⟩ := lens p C v R hv hvp N (fun x => by
      rw [← Nat.cast_smul_eq_nsmul F, CharP.cast_eq_zero, zero_smul]) AA
    obtain ⟨r, hr⟩ := exists_hasLen hv _ _ (eig_fg hv _ hfg χ) (sq_aug_fg hv _ hfg)
    refine ⟨r, ?_, hr⟩
    obtain ⟨s, hs0, hs⟩ := (len_ne_zero_iff hv hcO).1 hcO0
    refine (len_ne_zero_iff hv hr).2 ⟨s, hs0, fun m => ?_⟩
    obtain ⟨g, rfl⟩ := Submodule.Quotient.mk_surjective _ m
    have h := hs (Submodule.Quotient.mk ⟨g, eig_le_aug _ χ g.2⟩)
    rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero] at h ⊢
    exact h
  · intro r hr
    obtain ⟨hord, -, -, -, hsep⟩ := GlobalTheory.CompanionTheory.Ar.GR.FundGen.main p C v R hv hvp F f hf σ hσ
    have hn : p ^ f - 1 = Fintype.card Fˣ := by rw [Fintype.card_units, hf]
    rw [hn] at hr hord ⊢
    have hsum := sum_projL (C := C) (N := N) σ (fun a ha => by
      by_contra hne
      have := hsep a 1 (fun h => hne (Units.ext h))
      rw [ha, map_one, sub_self, map_zero, map_zero] at this
      exact zero_ne_one this)
    let Ψ : augIdeal AA.carrier →ₗ[R]
        ((i : Fin (Fintype.card Fˣ)) → OmType AA.carrier (σ ^ ((i : ℕ) + 1))) :=
      LinearMap.pi fun i => Submodule.mkQ _ ∘ₗ
        (projL (σ ^ ((i : ℕ) + 1))).restrict fun _ hg => proj_eig _ hAA hg
    have hsurj : Function.Surjective Ψ := by
      intro y
      choose g hg using fun i => Submodule.Quotient.mk_surjective _ (y i)
      refine ⟨⟨∑ i, (g i : N → C), Submodule.sum_mem _ fun i _ => eig_le_aug _ _ (g i).2⟩, ?_⟩
      funext i
      rw [← hg i]
      refine congrArg Submodule.Quotient.mk (Subtype.ext ?_)
      show projL (σ ^ ((i : ℕ) + 1)) (∑ i, (g i : N → C)) = g i

      rw [map_sum, Finset.sum_eq_single i, projL_self _ (g i).2]
      · intro j _ hj
        refine projL_ne (fun h => hj ?_) (g j).2
        rw [pow_succ, pow_succ] at h
        exact Fin.ext (pow_injOn_Iio_orderOf (by rw [hord]; exact j.2) (by rw [hord]; exact i.2)
          (mul_right_cancel h).symm)
      · simp
    have hker : (sqIdeal (augIdeal AA.carrier)).comap (augIdeal AA.carrier).subtype =
        LinearMap.ker Ψ := by
      ext g
      rw [LinearMap.mem_ker, funext_iff]
      constructor
      · intro hg i
        exact (Submodule.Quotient.mk_eq_zero _).2 (proj_mem _ _ hsq hg)
      · intro hg
        show (g : N → C) ∈ sqIdeal (augIdeal AA.carrier)
        rw [← hsum g]
        refine Submodule.sum_mem _ fun i _ => ?_
        have h1 : (Submodule.Quotient.mk
            (⟨projL (σ ^ ((i : ℕ) + 1)) (g : N → C), proj_eig _ hAA g.2⟩ :
              eig AA.carrier (σ ^ ((i : ℕ) + 1))) :
            OmType AA.carrier (σ ^ ((i : ℕ) + 1))) = 0 := hg i
        rw [Submodule.Quotient.mk_eq_zero] at h1
        exact h1
    rw [prod_Icc_fin]
    exact hasLen_of_equiv ((Submodule.quotEquivOfEq _ _ hker).trans
      (Ψ.quotKerEquivOfSurjective hsurj)) (Tot.hasLen_pi _ _ fun i =>
        hr _ (Finset.mem_Icc.2 ⟨by omega, i.2⟩))

end PositivityTheory.HtPt.Rc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.ProdIccFin =====
