module

public import ReciprocityTheory.DualLattices.TensorSpan
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigen
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalCharacterIdealPowers
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusPowers
public import ReciprocityTheory.DualLattices.IsUnitDetOfSpanEq
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterExists
public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Basic.NNReal.Defs
public import Development.WeilBound.CoreStatements.HodgeTatePoints.EqOfProdEq
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RdFlagFin
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RcFlag
public import ReciprocityTheory.DualLattices.CotangentSurjective
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ComapFgOfValuationRing
public import ReciprocityTheory.DualLattices.UpSmith
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RbProj
public import ReciprocityTheory.DualLattices.EigenLengthProductStatementHolds
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.PolarisedFlagStatement
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigenStatement
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusProduct
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupGeneration
public import ReciprocityTheory.DualLattices.InvolutionPermApplyZero
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight
public import Development.WeilBound.CoreStatements.HodgeTatePoints.EqOfPowMul
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.OrdinaryCurveStatement
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderRetractRestriction
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Development.WeilBound.CoreStatements.HodgeTatePoints.RbFund
import Development.WeilBound.CoreStatements.HodgeTatePoints.ProdIccFin
import Development.WeilBound.CoreStatements.HodgeTatePoints.Invres
import Development.WeilBound.CoreStatements.HodgeTatePoints.RangeSubtypeEq
import ReciprocityTheory.DualLattices.PowMemCarrier
import ReciprocityTheory.DualLattices.ProdDvdOfIso

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Counterexamples.UpperHalfSurvey.HasColenNotUniqueWithoutGuard, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusValuation, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NonFundamentalEigenLeSquareAugmentation, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ProductInequalitiesForceEquality, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisColength, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisIdeals, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisLengths, Development.WeilBound.CoreStatements.HodgeTatePoints.RbTriang, Development.WeilBound.CoreStatements.HodgeTatePoints.RbAflat, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalLengths, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagComparisonTheorem, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderRetractElementary, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianFactorTightFieldAction, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianFactorTightFieldActionStatement

-- ===== clump member: Development.AbelianVarietyTheory.Counterexamples.UpperHalfSurvey.HasColenNotUniqueWithoutGuard =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Counterexamples.UpperHalfSurvey.HasColenNotUniqueWithoutGuard", "h": "module\n\npublic import ReciprocityTheory.DualLattices.TensorSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.HopfOrderCheck

open ReciprocityTheory.PGsh.L2

variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]

theorem vdet_le_of_span_le (v : Valuation C NNReal) (hv : ∀ r : R, v (algebraMap R C r) ≤ 1)
    {X : Type} [Fintype X] [DecidableEq X] (B B' : Matrix X X C)
    (h : Submodule.span R (Set.range fun j x => B x j) ≤
      Submodule.span R (Set.range fun j x => B' x j)) : v B.det ≤ v B'.det := by
  have hc : ∀ j, ∃ c : X → R, ∑ i, c i • (fun x => B' x i) = fun x => B x j := fun j =>
    (Submodule.mem_span_range_iff_exists_fun R).mp (h (Submodule.subset_span ⟨j, rfl⟩))
  choose c hc using hc
  have hB : B = B' * (Matrix.of fun i j => c j i).map (algebraMap R C) := by
    ext x j
    have := congrFun (hc j) x
    simp only [Finset.sum_apply, Algebra.smul_def] at this
    rw [← this, Matrix.mul_apply]
    exact Finset.sum_congr rfl fun i _ => by simp [mul_comm]
  have hd : ((Matrix.of fun i j => c j i).map (algebraMap R C)).det
      = algebraMap R C (Matrix.of fun i j => c j i).det := ((algebraMap R C).map_det _).symm
  rw [hB, Matrix.det_mul, map_mul, hd]
  exact mul_le_of_le_one_right' (hv _)

theorem hasColen_unique (v : Valuation C NNReal) (hv : ∀ r : R, v (algebraMap R C r) ≤ 1)
    {X : Type} [Fintype X] [DecidableEq X] {M : Submodule R (X → C)} {c c' : NNReal}
    (h : HasColen R v M c) (h' : HasColen R v M c') : c = c' := by
  obtain ⟨B, hB, rfl⟩ := h
  obtain ⟨B', hB', rfl⟩ := h'
  exact le_antisymm (vdet_le_of_span_le v hv B B' (by rw [← hB, ← hB']))
    (vdet_le_of_span_le v hv B' B (by rw [← hB, ← hB']))

end GlobalTheory.HopfOrderCheck
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Counterexamples.UpperHalfSurvey.HasColenNotUniqueWithoutGuard =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusValuation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusValuation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigen\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalCharacterIdealPowers\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusPowers\npublic import ReciprocityTheory.DualLattices.IsUnitDetOfSpanEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR.RankOneColen

lemma two_mul_sum_digit (p f : ℕ) (j : Fin f) :
    (∑ d : Fin f → Fin p, (d j : ℕ)) * 2 = p ^ f * (p - 1) := by
  let e : (Fin f → Fin p) ≃ (Fin f → Fin p) := Equiv.arrowCongr (Equiv.refl _) Fin.revPerm
  have h1 : ∑ d : Fin f → Fin p, ((e d) j : ℕ) = ∑ d : Fin f → Fin p, (d j : ℕ) :=
    e.sum_comp (fun d => (d j : ℕ))
  have h2 : ∀ d : Fin f → Fin p, ((e d) j : ℕ) = p - ((d j : ℕ) + 1) := by
    intro d
    simp [e, Equiv.arrowCongr_apply, Fin.val_rev]
  simp only [h2] at h1
  rw [mul_two]
  nth_rewrite 2 [← h1]
  rw [← Finset.sum_add_distrib]
  have h3 : ∀ d : Fin f → Fin p, (d j : ℕ) + (p - ((d j : ℕ) + 1)) = p - 1 := by
    intro d; have := (d j).2; omega
  simp only [h3, Finset.sum_const, Finset.card_univ, Fintype.card_fun, Fintype.card_fin, smul_eq_mul]

lemma prod_digit_sq (p f : ℕ) (x : Fin f → NNReal) :
    (∏ d : Fin f → Fin p, ∏ j, x j ^ (d j : ℕ)) ^ 2 = (∏ j, x j) ^ (p ^ f * (p - 1)) := by
  have key : ∀ j : Fin f, (∏ d : Fin f → Fin p, x j ^ (d j : ℕ)) ^ 2 = x j ^ (p ^ f * (p - 1)) := by
    intro j
    rw [Finset.prod_pow_eq_pow_sum, ← pow_mul, two_mul_sum_digit]
  calc (∏ d : Fin f → Fin p, ∏ j, x j ^ (d j : ℕ)) ^ 2
      = (∏ j, ∏ d : Fin f → Fin p, x j ^ (d j : ℕ)) ^ 2 := by rw [Finset.prod_comm]
    _ = ∏ j, (∏ d : Fin f → Fin p, x j ^ (d j : ℕ)) ^ 2 := (Finset.prod_pow _ _ _).symm
    _ = ∏ j, x j ^ (p ^ f * (p - 1)) := Finset.prod_congr rfl (fun j _ => key j)
    _ = (∏ j, x j) ^ (p ^ f * (p - 1)) := Finset.prod_pow _ _ _

def num {p f : ℕ} (d : Fin f → Fin p) : ℕ := ∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ)

lemma num_eq {p f : ℕ} (d : Fin f → Fin p) : num d = (finFunctionFinEquiv d : ℕ) := by
  rw [num, finFunctionFinEquiv_apply]

lemma num_lt {p f : ℕ} (d : Fin f → Fin p) : num d < p ^ f := by
  rw [num_eq]; exact Fin.isLt _

lemma num_inj {p f : ℕ} {d e : Fin f → Fin p} (h : num d = num e) : d = e := by
  rw [num_eq, num_eq] at h
  exact finFunctionFinEquiv.injective (Fin.ext h)

lemma num_surj {p f m : ℕ} (h : m < p ^ f) : ∃ d : Fin f → Fin p, num d = m :=
  ⟨finFunctionFinEquiv.symm ⟨m, h⟩, by rw [num_eq, Equiv.apply_symm_apply]⟩

lemma num_ne_zero_iff {p f : ℕ} (hp : 0 < p) (d : Fin f → Fin p) :
    num d ≠ 0 ↔ ∃ n, (d n : ℕ) ≠ 0 := by
  constructor
  · intro h
    by_contra hc
    have hc' : ∀ n, (d n : ℕ) = 0 := fun n => by_contra (fun hn => hc ⟨n, hn⟩)
    apply h
    simp [num, hc']
  · rintro ⟨n, hn⟩ h
    apply hn
    rw [num] at h
    have h' := (Finset.sum_eq_zero_iff.mp h) n (Finset.mem_univ _)
    rcases mul_eq_zero.mp h' with h'' | h''
    · exact h''
    · exact absurd h'' (pow_ne_zero _ hp.ne')

lemma prod_Icc_num {M : Type} [CommMonoid M] {p f : ℕ} (hp : 0 < p) (g : ℕ → M)
    (G : (Fin f → Fin p) → M) (h0 : ∀ d, num d = 0 → G d = 1)
    (h1 : ∀ d, num d ≠ 0 → g (num d) = G d) :
    ∏ m ∈ Finset.Icc 1 (p ^ f - 1), g m = ∏ d, G d := by
  classical
  have hfilt : ∏ d ∈ Finset.univ.filter (fun d : Fin f → Fin p => num d ≠ 0), G d = ∏ d, G d :=
    Finset.prod_filter_of_ne (fun d _ hG h0' => hG (h0 d h0'))
  rw [← hfilt]
  symm
  refine Finset.prod_bij (fun d _ => num d) ?_ ?_ ?_ ?_
  · intro d hd
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hd
    have := num_lt d
    rw [Finset.mem_Icc]
    omega
  · intro a _ b _ h
    exact num_inj h
  · intro m hm
    rw [Finset.mem_Icc] at hm
    obtain ⟨d, hd⟩ := num_surj (p := p) (f := f) (show m < p ^ f by omega)
    refine ⟨d, ?_, hd⟩
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    omega
  · intro d hd
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hd
    exact (h1 d hd).symm

lemma mono_eq {C R F : Type} [Field C] [CommRing R] [Algebra R C] [Field F] {p f : ℕ}
    (hp : 0 < p) (σ : MulChar F R) (c : ℕ → R) (d : Fin f → Fin p) (hd : num d ≠ 0) (a : F) :
    ∏ n : Fin f, algebraMap R C (c n * (σ ^ p ^ (n : ℕ)) a) ^ (d n : ℕ) =
      algebraMap R C ((∏ n : Fin f, c n ^ (d n : ℕ)) * (σ ^ num d) a) := by
  have hpow' : ∀ n : ℕ, (σ ^ p ^ n) a = σ a ^ p ^ n :=
    fun n => MulChar.pow_apply' σ (pow_ne_zero _ hp.ne') a
  rw [MulChar.pow_apply' σ hd a]
  simp only [hpow']
  simp only [map_mul, map_pow, map_prod]
  simp only [mul_pow, Finset.prod_mul_distrib, ← pow_mul, Finset.prod_pow_eq_pow_sum, num]
  congr 2
  exact Finset.sum_congr rfl (fun n _ => Nat.mul_comm _ _)

lemma digits_zero {p f : ℕ} (hp : 0 < p) {d : Fin f → Fin p} (hd : num d = 0) (n : Fin f) :
    (d n : ℕ) = 0 := by
  by_contra h
  exact (num_ne_zero_iff hp d).2 ⟨n, h⟩ hd

end GlobalTheory.CompanionTheory.Ar.GR.RankOneColen


open GlobalTheory.CompanionTheory.Ar.GR.RankOneColen in
theorem _root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_valuation : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (AA : HopfOrder (C := C) R F), FStable F AA.carrier → ∀ σ : MulChar F R, IsFund p σ → ∀ c : ℕ → R, (∀ n, xIdeal AA.carrier (σ ^ p ^ n) = Ideal.span {c n}) → AA.carrier = Submodule.span R (Set.range fun (d : Fin f → Fin p) (a : F) => ∏ n : Fin f, algebraMap R C (c n * (σ ^ p ^ (n : ℕ)) a) ^ (d n : ℕ)) ∧ ∀ cN, HasColen R v AA.carrier cN → cN ^ 2 = (∏ n : Fin f, v (algebraMap R C (c n))) ^ (p ^ f * (p - 1)) := by
  intro p _ C _ _ _ v R _ _ hv hpv F _ _ _ _ f hcard AA hst σ hσ c hc
  classical
  have hp : 0 < p := (Fact.out : p.Prime).pos
  have hT := _root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_powers p C v R hv hpv F f hcard AA hst σ hσ c hc
  obtain ⟨c', hc', hc'd⟩ : ∃ c' : ℕ → R, (∀ m, xIdeal AA.carrier (σ ^ m) = Ideal.span {c' m}) ∧
      ∀ d : Fin f → Fin p, num d ≠ 0 → c' (num d) = ∏ n : Fin f, c n ^ (d n : ℕ) := by
    refine ⟨fun m => if h : m ≠ 0 ∧ m < p ^ f then
        ∏ n : Fin f, c n ^ ((Classical.choose (num_surj h.2) : Fin f → Fin p) n : ℕ)
      else Classical.choose (eig_rank_one p C v R hv hpv F f hcard AA hst (σ ^ m)).1, ?_, ?_⟩
    · intro m
      dsimp only
      by_cases h : m ≠ 0 ∧ m < p ^ f
      · rw [dite_eq_left h]
        have hd := Classical.choose_spec (num_surj h.2)
        have hne : ∃ n, ((Classical.choose (num_surj h.2) : Fin f → Fin p) n : ℕ) ≠ 0 :=
          (num_ne_zero_iff hp _).mp (by rw [hd]; exact h.1)
        have e : σ ^ m = σ ^ num (Classical.choose (num_surj h.2)) := by rw [hd]
        rw [e]
        exact hT.2 _ hne
      · rw [dite_eq_right h]
        exact (Classical.choose_spec (eig_rank_one p C v R hv hpv F f hcard AA hst (σ ^ m)).1).2
    · intro d hd
      dsimp only
      have h : num d ≠ 0 ∧ num d < p ^ f := ⟨hd, num_lt d⟩
      rw [dite_eq_left h]
      have := num_inj (Classical.choose_spec (num_surj h.2))
      rw [this]
  obtain ⟨hAug, hCar, hCol⟩ := r_decomp_relay p C v R hv hpv F f hcard AA hst σ hσ c' hc'
  refine ⟨?_, ?_⟩
  · have hset : Set.range (fun (d : Fin f → Fin p) (a : F) =>
          ∏ n : Fin f, algebraMap R C (c n * (σ ^ p ^ (n : ℕ)) a) ^ (d n : ℕ)) =
        insert 1 ((fun m a => algebraMap R C (c' m * (σ ^ m) a)) '' ↑(Finset.Icc 1 (p ^ f - 1))) := by
      ext g
      simp only [Set.mem_range, Set.mem_insert_iff, Set.mem_image, Finset.coe_Icc, Set.mem_Icc]
      constructor
      · rintro ⟨d, rfl⟩
        by_cases h0 : num d = 0
        · left
          funext a
          simp only [Pi.one_apply]
          exact Finset.prod_eq_one (fun n _ => by rw [digits_zero hp h0 n, pow_zero])
        · right
          refine ⟨num d, ⟨by omega, by have := num_lt d; omega⟩, ?_⟩
          funext a
          rw [mono_eq hp σ c d h0 a, hc'd d h0]
      · rintro (rfl | ⟨m, ⟨hm1, hm2⟩, rfl⟩)
        · refine ⟨fun _ => ⟨0, hp⟩, ?_⟩
          funext a
          simp only [Pi.one_apply]
          exact Finset.prod_eq_one (fun n _ => pow_zero _)
        · obtain ⟨d, rfl⟩ := num_surj (p := p) (f := f) (show m < p ^ f by omega)
          have h0 : num d ≠ 0 := by omega
          refine ⟨d, ?_⟩
          funext a
          rw [mono_eq hp σ c d h0 a, hc'd d h0]
    rw [hset, Submodule.span_insert, ← hAug, ← hCar]
  · intro cN hcN
    have huniq : cN = ∏ m ∈ Finset.Icc 1 (p ^ f - 1), v (algebraMap R C (c' m)) := by
      obtain ⟨B, hB, hBd⟩ := hcN
      obtain ⟨B', hB', hB'd⟩ := hCol
      obtain ⟨P, hPu, hP⟩ := AA.lat
      rw [← hBd, ← hB'd, valuation_det_eq_of_span_eq_alt hv hPu (hP.symm.trans hB),
        valuation_det_eq_of_span_eq_alt hv hPu (hP.symm.trans hB')]
    rw [huniq, prod_Icc_num hp (fun m => v (algebraMap R C (c' m)))
      (fun d => ∏ n : Fin f, v (algebraMap R C (c n)) ^ (d n : ℕ)) ?_ ?_]
    · exact prod_digit_sq p f (fun n => v (algebraMap R C (c n)))
    · intro d hd
      exact Finset.prod_eq_one (fun n _ => by rw [digits_zero hp hd n, pow_zero])
    · intro d hd
      simp only [hc'd d hd, map_prod, map_pow]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusValuation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NonFundamentalEigenLeSquareAugmentation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NonFundamentalEigenLeSquareAugmentation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigen\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusPowers\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterExists\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR.NonFund

variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]
  {N : Type} [AddCommGroup N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N)

theorem aug_mul {g h : N → C} (hg : g ∈ augIdeal AA.carrier) (hh : h ∈ AA.carrier) :
    g * h ∈ augIdeal AA.carrier := by
  refine ⟨AA.mul_mem _ _ hg.1 hh, ?_⟩
  have h0 : g 0 = 0 := hg.2
  change g 0 * h 0 = 0
  rw [h0, zero_mul]

theorem sq_mul {g h : N → C} (hg : g ∈ sqIdeal (augIdeal AA.carrier)) (hh : h ∈ AA.carrier) :
    g * h ∈ sqIdeal (augIdeal AA.carrier) := by
  unfold sqIdeal at hg
  induction hg using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨a, ha, b, hb, rfl⟩ := hx
    exact Submodule.subset_span ⟨a, ha, b * h, aug_mul AA hb hh, mul_assoc _ _ _⟩
  | zero => rw [zero_mul]; exact Submodule.zero_mem _
  | add x y _ _ hx hy => rw [add_mul]; exact Submodule.add_mem _ hx hy
  | smul c x _ hx => rw [smul_mul_assoc]; exact Submodule.smul_mem _ c hx

def Lev (k : ℕ) (g : N → C) : Prop :=
  g ∈ AA.carrier ∧ (1 ≤ k → g ∈ augIdeal AA.carrier) ∧
    (2 ≤ k → g ∈ sqIdeal (augIdeal AA.carrier))

theorem lev_one : Lev AA 0 1 :=
  ⟨AA.one_mem, fun h => absurd h (by omega), fun h => absurd h (by omega)⟩

theorem lev_mul {k l : ℕ} {g h : N → C} (hg : Lev AA k g) (hh : Lev AA l h) :
    Lev AA (k + l) (g * h) := by
  refine ⟨AA.mul_mem _ _ hg.1 hh.1, fun hk => ?_, fun hk => ?_⟩
  · by_cases h1 : 1 ≤ k
    · exact aug_mul AA (hg.2.1 h1) hh.1
    · rw [mul_comm]; exact aug_mul AA (hh.2.1 (by omega)) hg.1
  · by_cases h2 : 2 ≤ k
    · exact sq_mul AA (hg.2.2 h2) hh.1
    · by_cases h3 : 2 ≤ l
      · rw [mul_comm]; exact sq_mul AA (hh.2.2 h3) hg.1
      · exact Submodule.subset_span ⟨g, hg.2.1 (by omega), h, hh.2.1 (by omega), rfl⟩

theorem lev_pow {g : N → C} (hg : g ∈ augIdeal AA.carrier) (k : ℕ) : Lev AA k (g ^ k) := by
  induction k with
  | zero => rw [pow_zero]; exact lev_one AA
  | succ k ih =>
    rw [pow_succ]
    exact lev_mul AA ih ⟨hg.1, fun _ => hg, fun h => absurd h (by omega)⟩

theorem lev_prod {ι : Type} (s : Finset ι) (u : ι → N → C) (hu : ∀ i, u i ∈ augIdeal AA.carrier)
    (d : ι → ℕ) : Lev AA (∑ i ∈ s, d i) (∏ i ∈ s, u i ^ d i) := by
  classical
  induction s using Finset.induction_on with
  | empty => rw [Finset.sum_empty, Finset.prod_empty]; exact lev_one AA
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.prod_insert ha]
    exact lev_mul AA (lev_pow AA (hu a) _) ih

theorem digits_single {f p : ℕ} (d : Fin f → ℕ) (n : Fin f) (hn : d n ≠ 0)
    (hs : ¬ 2 ≤ ∑ i, d i) : ∑ i : Fin f, d i * p ^ (i : ℕ) = p ^ (n : ℕ) := by
  have h := Finset.add_sum_erase Finset.univ d (Finset.mem_univ n)
  have h1 : d n = 1 := by omega
  have h0 : ∑ i ∈ Finset.univ.erase n, d i = 0 := by omega
  rw [Finset.sum_eq_zero_iff] at h0
  rw [Finset.sum_eq_single n, h1, one_mul]
  · intro b _ hb
    rw [h0 b (Finset.mem_erase.2 ⟨hb, Finset.mem_univ b⟩), zero_mul]
  · intro h; exact absurd (Finset.mem_univ n) h

end GlobalTheory.CompanionTheory.Ar.GR.NonFund

open GlobalTheory.CompanionTheory.Ar.GR.NonFund in
theorem _root_.GlobalTheory.CompanionTheory.Relay.non_fundamental_eigen_le_square_augmentation : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (AA : HopfOrder (C := C) R F), FStable F AA.carrier → ∀ χ : MulChar F R, ¬ IsFund p χ → eig AA.carrier χ ≤ sqIdeal (augIdeal AA.carrier) := by
  intro p hpp C _ _ _ v R _ _ hv hp F _ _ _ _ f hc AA hA χ hχ g hg
  obtain ⟨σ, hσ⟩ := fund_ex_relay p C v R hv hp F f hc
  obtain ⟨-, hgen, hfund, -, -⟩ := FundGen.main p C v R hv hp F f hc σ hσ
  obtain ⟨m, hm1, hm2, rfl⟩ := hgen χ
  have hr := eig_rank_one p C v R hv hp F f hc AA hA
  choose c hc0 hcx using fun n : ℕ => (hr (σ ^ p ^ n)).1
  have hp0 : 0 < p := hpp.out.pos
  have hlt : m < p ^ f := by
    have := pow_pos hp0 f
    omega
  obtain ⟨d, hd⟩ : ∃ d : Fin f → Fin p, ∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ) = m := by
    refine ⟨finFunctionFinEquiv.symm ⟨m, hlt⟩, ?_⟩
    rw [← finFunctionFinEquiv_apply, Equiv.apply_symm_apply]
  have hne : ∃ n, (d n : ℕ) ≠ 0 := by
    by_contra hcon
    have h0 : ∀ n, (d n : ℕ) = 0 := fun n => by
      by_contra h; exact hcon ⟨n, h⟩
    simp only [h0, zero_mul, Finset.sum_const_zero] at hd
    omega
  have hx := (_root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_powers p C v R hv hp F f hc AA hA σ hσ c hcx).2 d hne
  rw [hd] at hx
  have hs : 2 ≤ ∑ n, (d n : ℕ) := by
    by_contra hs
    obtain ⟨n, hn⟩ := hne
    have := digits_single (p := p) (fun n => (d n : ℕ)) n hn hs
    rw [hd] at this
    rw [this] at hχ
    exact hχ (hfund n)
  obtain ⟨c0, hc0m, rfl⟩ := ((hr (σ ^ m)).2 g).1 hg
  rw [hx, Ideal.mem_span_singleton'] at hc0m
  obtain ⟨r, rfl⟩ := hc0m
  let u : Fin f → F → C := fun n a => algebraMap R C (c n * (σ ^ p ^ (n : ℕ)) a)
  have hu : ∀ n, u n ∈ augIdeal AA.carrier := by
    intro n
    have h1 : u n ∈ eig AA.carrier (σ ^ p ^ (n : ℕ)) :=
      ((hr _).2 _).2 ⟨c n, by rw [hcx]; exact Ideal.mem_span_singleton_self _, rfl⟩
    refine ⟨h1.1, ?_⟩
    change algebraMap R C (c n * (σ ^ p ^ (n : ℕ)) 0) = 0
    rw [MulChar.map_zero, mul_zero, map_zero]
  have hprod := (lev_prod AA Finset.univ u hu fun n => (d n : ℕ)).2.2 hs
  convert Submodule.smul_mem _ r hprod using 1
  funext a
  have ha : (σ ^ m) a = ∏ n : Fin f, ((σ ^ p ^ (n : ℕ)) a) ^ (d n : ℕ) := by
    rw [MulChar.pow_apply' _ (by omega), ← hd, ← Finset.prod_pow_eq_pow_sum]
    refine Finset.prod_congr rfl fun n _ => ?_
    rw [MulChar.pow_apply' _ (pow_pos hp0 _).ne', ← pow_mul, mul_comm]
  rw [ha, mul_assoc, ← Finset.prod_mul_distrib, map_mul, map_prod, Pi.smul_apply,
    Algebra.smul_def, Finset.prod_apply]
  refine congrArg _ (Finset.prod_congr rfl fun n _ => ?_)
  rw [← mul_pow, map_pow, Pi.pow_apply]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NonFundamentalEigenLeSquareAugmentation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ProductInequalitiesForceEquality =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ProductInequalitiesForceEquality", "h": "module\n\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.NNReal.Defs\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.EqOfProdEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix TensorProduct
open Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem grcount : ∀ (T S : Type) [Fintype T] [Fintype S] (a b : ℕ), 0 < a → 0 < b → ∀ (x D d : T → S → NNReal) (r : S → NNReal) (cA cN cO : NNReal), cN ≠ 0 → (∀ t s, x t s ≤ D t s) → ∏ t, ∏ s, D t s = cA → (∏ t, ∏ s, x t s) ^ (a * b) = cN ^ 2 → cA ^ (a * b) = cN ^ 2 → (∀ s, ∏ t, d t s ≤ r s) → ∏ s, r s = cO → ∏ t, ∏ s, d t s = (∏ t, ∏ s, x t s) ^ b → cO ^ a = cN ^ 2 → (∀ t s, D t s = x t s) ∧ ∀ s, ∏ t, d t s = r s :=
  PositivityTheory.HtPt.Rh.grcount

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ProductInequalitiesForceEquality =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisColength =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisColength", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RdFlagFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

alias _root_.GlobalTheory.CompanionTheory.Relay.stable_hopf_order_basis_colength := _root_.PositivityTheory.HtPt.Rd.gr_partial
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisColength =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisIdeals =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisIdeals", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RcFlag\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem flag_colen : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ (n : ℕ) (b : Module.Basis (Fin n) F N), ∀ (cs : Fin n → NNReal) (cN : NNReal), (∀ i : Fin n, HasColen R v (stepOrder AA.carrier (flagSub b i) (b i)) (cs i)) → HasColen R v AA.carrier cN → cN ^ (p ^ f) = (∏ i, cs i) ^ Fintype.card N :=
  @PositivityTheory.HtPt.Rc.flag_colen

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisIdeals =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisLengths =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisLengths", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RdFlagFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

alias _root_.GlobalTheory.CompanionTheory.Relay.stable_hopf_order_basis_lengths := _root_.PositivityTheory.HtPt.Rd.flag_om
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisLengths =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RbTriang =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.RbTriang", "h": "module\n\npublic import ReciprocityTheory.DualLattices.CotangentSurjective\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ComapFgOfValuationRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.DualLattices.UpSmith\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rb

theorem triang_strong (C : Type) [Field C] (v : Valuation C NNReal) (R : Type) [CommRing R]
    [Algebra R C] (hv : v.Integers R) (n : ℕ) (L : Submodule R (Fin n → R)) (hL : L.FG) :
    ∃ d : Fin n → R, (∀ i c, c ∈ Ideal.span {d i} ↔ ∃ l ∈ L, (∀ j, j < i → l j = 0) ∧ l i = c) ∧
      HasLen v R ((Fin n → R) ⧸ L) (∏ i, v (algebraMap R C (d i))) := by
  classical
  haveI : IsDomain R := hv.hom_inj.isDomain
  haveI : ValuationRing R := ValuationRing.of_integers v hv
  obtain ⟨m, w, hw⟩ := Submodule.fg_iff_exists_fin_generating_family.1 hL
  let ψ : (Fin m → R) →ₗ[R] (Fin n → R) := Fintype.linearCombination R w
  have hψ : LinearMap.range ψ = L := by rw [Fintype.range_linearCombination, hw]
  have key : ∀ i : Fin n, ∃ d : R,
      ∀ c, c ∈ Ideal.span {d} ↔ ∃ l ∈ L, (∀ j, j < i → l j = 0) ∧ l i = c := by
    intro i
    let π : (Fin n → R) →ₗ[R] ({j : Fin n // j < i} → R) := LinearMap.funLeft R R Subtype.val
    have h1 := comap_fg_of_valuationRing R (Fin m) {j : Fin n // j < i} (π ∘ₗ ψ) ⊥
      Submodule.fg_bot
    have h2 : Ideal.FG (R := R) (((⊥ : Submodule R _).comap (π ∘ₗ ψ)).map
        (LinearMap.proj i ∘ₗ ψ)) := h1.map _
    obtain ⟨d, hd⟩ := (IsBezout.isPrincipal_of_FG _ h2).principal
    refine ⟨d, fun c => ?_⟩
    have : Ideal.span {d} = ((⊥ : Submodule R _).comap (π ∘ₗ ψ)).map
        (LinearMap.proj i ∘ₗ ψ) := hd.symm
    rw [this]
    constructor
    · rintro ⟨a, ha, rfl⟩
      refine ⟨ψ a, hψ ▸ LinearMap.mem_range_self ψ a, fun j hj => ?_, rfl⟩
      exact congrFun (show π (ψ a) = 0 from ha) ⟨j, hj⟩
    · rintro ⟨l, hl, h0, rfl⟩
      rw [← hψ] at hl
      obtain ⟨a, rfl⟩ := hl
      refine ⟨a, ?_, rfl⟩
      show π (ψ a) = 0
      funext j
      exact h0 j.1 j.2
  choose d hd using key
  refine ⟨d, hd, ?_⟩
  choose u huL hu0 hud using fun i => (hd i (d i)).1 (Ideal.mem_span_singleton_self _)
  let X : Matrix (Fin n) (Fin n) R := Matrix.of fun j i => u i j
  have hcol : ∀ i, u i ∈ LinearMap.range X.mulVecLin := fun i =>
    ⟨Pi.single i 1, by ext j; simp [X]⟩
  have hrange : LinearMap.range X.mulVecLin = L := by
    apply le_antisymm
    · rintro _ ⟨a, rfl⟩
      have : X.mulVecLin a = ∑ i, a i • u i := by
        ext j
        simp [X, Matrix.mulVec, dotProduct, Finset.sum_apply, mul_comm]
      rw [this]
      exact L.sum_mem fun i _ => L.smul_mem _ (huL i)
    · have hind : ∀ t : ℕ, ∀ l ∈ L, (∀ j : Fin n, (j : ℕ) + t < n → l j = 0) →
          l ∈ LinearMap.range X.mulVecLin := by
        intro t
        induction t with
        | zero =>
          intro l _ h0
          have : l = 0 := funext fun j => h0 j (by simp)
          rw [this]
          exact Submodule.zero_mem _
        | succ t ih =>
          intro l hl h0
          by_cases ht : t < n
          · let i : Fin n := ⟨n - 1 - t, by omega⟩
            have hi : (i : ℕ) = n - 1 - t := rfl
            have hlow : ∀ j, j < i → l j = 0 := fun j hj => h0 j (by
              have := Fin.lt_def.1 hj
              omega)
            obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 ((hd i (l i)).2 ⟨l, hl, hlow, rfl⟩)
            have h3 := ih (l - c • u i) (L.sub_mem hl (L.smul_mem _ (huL i))) (fun j hj => by
              rcases lt_or_eq_of_le (show j ≤ i from Fin.le_def.2 (by omega)) with h | h
              · simp [hlow j h, hu0 i j h]
              · subst h
                simp [hud, hc])
            have h4 := Submodule.add_mem _ h3 (Submodule.smul_mem _ c (hcol i))
            simpa using h4
          · exact ih l hl fun j hj => by omega
      intro l hl
      exact hind n l hl fun j hj => by omega
  have hdet : X.det = ∏ i, d i := by
    rw [Matrix.det_of_lowerTriangular X (fun j i h => hu0 i j h)]
    exact Finset.prod_congr rfl fun i _ => hud i
  have := Smith.hasLen_coker_det hv X
  rw [hrange, hdet, map_prod, map_prod] at this
  exact this

end PositivityTheory.HtPt.Rb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RbTriang =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RbAflat =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.RbAflat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RbProj\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ComapFgOfValuationRing\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.RbFund\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RbTriang\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.DualLattices.EigenLengthProductStatementHolds\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rb

section general

variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]
  {F : Type} [Field F] {N : Type} [AddCommGroup N] [Module F N]


variable (C) in
noncomputable def Phi (p f : ℕ) {n : ℕ} (b : Module.Basis (Fin n) F N) (σ : MulChar F R) :
    (Fin n × Fin f → R) →ₗ[R] (N → C) :=
  Fintype.linearCombination R
    fun (j : Fin n × Fin f) (x : N) => algebraMap R C ((σ ^ p ^ (j.2 : ℕ)) (b.repr x j.1))

variable {p f n : ℕ} {b : Module.Basis (Fin n) F N} {σ : MulChar F R}

theorem mem_afLatT {M : Submodule R (N → C)} {l : Fin n × Fin f → R} :
    l ∈ afLatT p f b σ M ↔ Phi C p f b σ l ∈ M ⊔ pFun R p N := Iff.rfl

theorem Phi_apply (l : Fin n × Fin f → R) (x : N) :
    Phi C p f b σ l x =
      algebraMap R C (∑ j : Fin n × Fin f, l j * (σ ^ p ^ (j.2 : ℕ)) (b.repr x j.1)) := by
  simp [Phi, Fintype.linearCombination_apply, Finset.sum_apply, Algebra.smul_def]

theorem Phi_basis (l : Fin n × Fin f → R) (s : Fin f) (hl : ∀ j, j.2 ≠ s → l j = 0) (i : Fin n) :
    Phi C p f b σ l (b i) = algebraMap R C (l (i, s)) := by
  classical
  rw [Phi_apply, Finset.sum_eq_single (i, s)]
  · simp
  · rintro ⟨j, t⟩ _ hne
    by_cases ht : t = s
    · subst ht
      have : j ≠ i := fun h => hne (by rw [h])
      simp [this.symm, MulChar.map_zero]
    · rw [hl (j, t) ht, zero_mul]
  · simp

theorem Phi_eigen (l : Fin n × Fin f → R) (s : Fin f) (hl : ∀ j, j.2 ≠ s → l j = 0) (a : F)
    (x : N) : Phi C p f b σ l (a • x) =
      algebraMap R C ((σ ^ p ^ (s : ℕ)) a) * Phi C p f b σ l x := by
  rw [Phi_apply, Phi_apply, ← map_mul, Finset.mul_sum]
  congr 1
  refine Finset.sum_congr rfl fun j _ => ?_
  by_cases h : j.2 = s
  · rw [h, map_smul, Finsupp.smul_apply, smul_eq_mul, map_mul]
    ring
  · rw [hl j h]
    simp

theorem Phi_flag (l : Fin n × Fin f → R) (i : Fin n) (hl : ∀ j, j.1 < i → l j = 0) (x : N)
    (hx : x ∈ flagSub b i) : Phi C p f b σ l x = 0 := by
  rw [Phi_apply, Finset.sum_eq_zero, map_zero]
  intro j _
  by_cases h : j.1 < i
  · rw [hl j h, zero_mul]
  · have : b.repr x j.1 = 0 := by
      by_contra h0
      exact h (b.repr_support_subset_of_mem_span _ hx (Finsupp.mem_support_iff.2 h0))
    rw [this, MulChar.map_zero, mul_zero]

theorem Phi_mem_pFun (hinj : Function.Injective (algebraMap R C)) (l : Fin n × Fin f → R)
    (hl : ∀ j, l j ∈ Ideal.span {(p : R)}) : Phi C p f b σ l ∈ pFun R p N := by
  rw [mem_pFun]
  intro x
  rw [Phi_apply, mem_pInt_iff hinj]
  exact Ideal.sum_mem _ fun j _ => Ideal.mul_mem_right _ _ (hl j)

theorem mem_afLatT_of_p (hinj : Function.Injective (algebraMap R C)) (M : Submodule R (N → C))
    (l : Fin n × Fin f → R) (hl : ∀ j, l j ∈ Ideal.span {(p : R)}) : l ∈ afLatT p f b σ M :=
  mem_afLatT.2 (Submodule.mem_sup_right (Phi_mem_pFun hinj l hl))

theorem Phi_mem_linFun [Fact p.Prime] [CharP F p] (hinj : Function.Injective (algebraMap R C))
    (hσ : IsFund p σ) (l : Fin n × Fin f → R) : Phi C p f b σ l ∈ linFun R p N := by
  refine ⟨fun x => ⟨_, (Phi_apply l x).symm⟩, fun x y => ?_⟩
  rw [Phi_apply, Phi_apply, Phi_apply, ← map_sub, ← map_sub, mem_pInt_iff hinj,
    ← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib]
  refine Ideal.sum_mem _ fun j _ => ?_
  rw [← mul_sub, ← mul_sub, map_add (f := _), Finsupp.add_apply]
  exact Ideal.mul_mem_left _ _ (FundGen.frob_pow_additive p F σ hσ _ _ _)

theorem pFun_le_addFun : pFun (C := C) R p N ≤ addFun R p N := fun g hg x y =>
  Submodule.sub_mem _ (Submodule.sub_mem _ (mem_pFun.1 hg _) (mem_pFun.1 hg _)) (mem_pFun.1 hg _)

theorem addFun_sum {g : N → C} (hg : g ∈ addFun R p N) {ι : Type} (s : Finset ι) (y : ι → N) :
    g (∑ i ∈ s, y i) - ∑ i ∈ s, g (y i) ∈ pInt (C := C) R p := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    have := Submodule.neg_mem _ (hg 0 0)
    simpa using this
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    convert Submodule.add_mem _ (hg (y a) (∑ i ∈ s, y i)) ih using 1
    ring

theorem sup_stable {M : Submodule R (N → C)} (hst : FStable F M) {g : N → C}
    (hg : g ∈ M ⊔ pFun R p N) (a : F) : (fun x => g (a • x)) ∈ M ⊔ pFun R p N := by
  obtain ⟨g1, h1, g2, h2, rfl⟩ := Submodule.mem_sup.1 hg
  exact Submodule.add_mem_sup (hst a g1 h1) (mem_pFun.2 fun x => mem_pFun.1 h2 _)

def cut (s : Fin f) (l : Fin n × Fin f → R) : Fin n × Fin f → R :=
  fun j => if j.2 = s then l j else 0

theorem sum_cut (l : Fin n × Fin f → R) : ∑ s, cut s l = l := by
  funext j
  simp [cut, Finset.sum_apply]

theorem cut_supp (s : Fin f) (l : Fin n × Fin f → R) : ∀ j, j.2 ≠ s → cut s l j = 0 :=
  fun _ h => if_neg h

theorem proj_Phi [Fintype F] [DecidableEq F] [IsDomain R] (h0 : (Fintype.card Fˣ : C) ≠ 0)
    (hinj : ∀ s t : Fin f, σ ^ p ^ (s : ℕ) = σ ^ p ^ (t : ℕ) → s = t)
    (l : Fin n × Fin f → R) (s : Fin f) :
    proj (σ ^ p ^ (s : ℕ)) (Phi C p f b σ l) = Phi C p f b σ (cut s l) := by

  conv_lhs => rw [← sum_cut l, map_sum, ← projL_apply, map_sum]
  rw [Finset.sum_eq_single s]
  · exact proj_eigen_self h0 _ _ (Phi_eigen _ s (cut_supp s l))
  · intro t _ ht
    exact proj_eigen_ne (fun h => ht (hinj _ _ h).symm) _ (Phi_eigen _ t (cut_supp t l))
  · simp

end general

theorem exists_Phi (p : ℕ) [Fact p.Prime] {C : Type} [Field C] [IsAlgClosed C] [CharZero C]
    {v : Valuation C NNReal} {R : Type} [CommRing R] [Algebra R C] (hv : v.Integers R)
    (hp : v (p : C) < 1) {F : Type} [Field F] [Fintype F] [DecidableEq F] [CharP F p] {f : ℕ}
    (hc : Fintype.card F = p ^ f) {N : Type} [AddCommGroup N] [Module F N] {σ : MulChar F R}
    (hσ : IsFund p σ) {n : ℕ} (b : Module.Basis (Fin n) F N) {g : N → C}
    (hg : g ∈ linFun R p N) : ∃ l, g - Phi C p f b σ l ∈ pFun R p N := by
  choose r hr using hg.1
  choose β hβ _ using fun i : Fin n =>
    moore p C v R hv hp F f hc σ hσ (fun a => r (a • b i)) fun a a' => by
      rw [← mem_pInt_iff hv.hom_inj, map_sub, map_sub, hr, hr, hr, add_smul]
      exact hg.2 _ _
  refine ⟨fun j => β j.1 j.2, mem_pFun.2 fun x => ?_⟩
  have h1 := addFun_sum hg.2 Finset.univ fun i => b.repr x i • b i
  rw [b.sum_repr] at h1
  have h2 := (mem_pInt_iff hv.hom_inj p _).2
    (Ideal.sum_mem _ (t := Finset.univ) fun i _ => hβ i (b.repr x i))
  convert Submodule.add_mem _ h1 h2 using 1
  rw [Pi.sub_apply, Phi_apply, Fintype.sum_prod_type, Finset.sum_sub_distrib, map_sub]

  simp only [map_sum, hr]
  ring

theorem aflatT : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ σ : MulChar F R, IsFund p σ → ∀ (n : ℕ) (b : Module.Basis (Fin n) F N), (afLatT p f b σ AA.carrier).FG ∧ Nonempty (AFQuot p AA.carrier ≃ₗ[R] ((Fin n × Fin f → R) ⧸ afLatT p f b σ AA.carrier)) ∧ (∀ l ∈ afLatT p f b σ AA.carrier, ∀ s : Fin f, (fun j => if j.2 = s then l j else 0) ∈ afLatT p f b σ AA.carrier) ∧ ∀ (i : Fin n) (s : Fin f) (c : R), c ∈ idealD p AA.carrier (flagSub b i) (b i) (σ ^ p ^ (s : ℕ)) ↔ ∃ l ∈ afLatT p f b σ AA.carrier, (∀ j, j.2 ≠ s → l j = 0) ∧ (∀ j, j < i → l (j, s) = 0) ∧ l (i, s) = c := by
  intro p _ C _ _ _ v R _ _ hv hp F _ _ _ _ f hc N _ _ _ _ AA hst σ hσ n b
  haveI : IsDomain R := hv.hom_inj.isDomain
  haveI : ValuationRing R := ValuationRing.of_integers v hv
  obtain ⟨h0, w, hw⟩ := exists_inv_card hv hp hc
  have hinj := hv.hom_inj
  have hdist := fund_pow_inj p v R hv hp F f hc σ hσ
  have hgrade : ∀ l ∈ afLatT p f b σ AA.carrier, ∀ s : Fin f,
      cut s l ∈ afLatT p f b σ AA.carrier := by
    intro l hl s
    rw [mem_afLatT, ← proj_Phi h0 hdist]
    exact proj_mem hw _ _ _ (sup_stable hst (mem_afLatT.1 hl))
  have haf : ∀ l ∈ afLatT p f b σ AA.carrier,
      ∃ g ∈ afFun p AA.carrier, g - Phi C p f b σ l ∈ pFun R p N := by
    intro l hl
    obtain ⟨g, hg, h, hh, e⟩ := Submodule.mem_sup.1 (mem_afLatT.1 hl)
    refine ⟨g, ⟨hg, ?_⟩, ?_⟩
    · rw [eq_sub_of_add_eq e]
      exact Submodule.sub_mem _ (Phi_mem_linFun hinj hσ l).2 (pFun_le_addFun hh)
    · rw [← e]
      simpa using Submodule.neg_mem _ hh
  refine ⟨?_, ?_, hgrade, fun i s c => ⟨?_, ?_⟩⟩
  · let ι : (N → R) →ₗ[R] (N → C) := (Algebra.linearMap R C).compLeft N
    have hι : Function.Injective ι := fun x y h => funext fun k => hinj (congrFun h k)
    let Φ : (Fin n × Fin f → R) →ₗ[R] (N → R) := Fintype.linearCombination R
      fun (j : Fin n × Fin f) (x : N) => (σ ^ p ^ (j.2 : ℕ)) (b.repr x j.1)
    have hΦ : Phi C p f b σ = ι ∘ₗ Φ := by
      refine LinearMap.ext fun l => funext fun x => ?_
      rw [Phi_apply]
      simp [ι, Φ, Fintype.linearCombination_apply, Finset.sum_apply]
    have hfg : (AA.carrier ⊔ pFun R p N).FG := by
      refine Submodule.FG.sup ?_ (Submodule.fg_pi fun _ => Submodule.fg_span_singleton _)
      obtain ⟨B, -, hB⟩ := AA.lat
      rw [hB]
      exact Submodule.fg_span (Set.finite_range _)
    have hle : AA.carrier ⊔ pFun R p N ≤ LinearMap.range ι := by
      have hint : intFun R N ≤ LinearMap.range ι := by
        intro g hg
        choose r hr using hg
        exact ⟨r, funext hr⟩
      refine le_trans (sup_le AA.le_int fun g hg x => ?_) hint
      obtain ⟨c, hc⟩ := Submodule.mem_span_singleton.1 (mem_pFun.1 hg x)
      exact ⟨c * p, by rw [← hc, Algebra.smul_def, map_mul, map_natCast]⟩
    have h1 : ((AA.carrier ⊔ pFun R p N).comap ι).FG :=
      Submodule.fg_of_fg_map_injective ι hι (by rw [Submodule.map_comap_eq_self hle]; exact hfg)
    have h2 := comap_fg_of_valuationRing R _ _ Φ _ h1
    rw [← Submodule.comap_comp, ← hΦ] at h2
    exact h2
  · let Φ : (Fin n × Fin f → R) →ₗ[R] linFun (C := C) R p N :=
      (Phi C p f b σ).codRestrict _ (Phi_mem_linFun hinj hσ)
    let θ : (Fin n × Fin f → R) →ₗ[R] AFQuot p AA.carrier := Submodule.mkQ _ ∘ₗ Φ
    have hsurj : Function.Surjective θ := by
      intro q
      obtain ⟨g, rfl⟩ := Submodule.Quotient.mk_surjective _ q
      obtain ⟨l, hl⟩ := exists_Phi p hv hp hc hσ b g.2
      refine ⟨l, ((Submodule.Quotient.eq _).2 ?_).symm⟩
      exact Submodule.mem_sup_right hl
    have hker : LinearMap.ker θ = afLatT p f b σ AA.carrier := by
      ext l
      have : l ∈ LinearMap.ker θ ↔ Phi C p f b σ l ∈ afFun p AA.carrier ⊔ pFun R p N :=
        Submodule.Quotient.mk_eq_zero _
      rw [this]
      constructor
      · intro h
        have hle : afFun p AA.carrier ⊔ pFun R p N ≤ AA.carrier ⊔ pFun R p N :=
          sup_le_sup_right (fun _ hx => hx.1) _
        exact mem_afLatT.2 (hle h)
      · intro h
        obtain ⟨g, hg, hh⟩ := haf l h
        have := Submodule.sub_mem _ (Submodule.mem_sup_left (T := pFun R p N) hg)
          (Submodule.mem_sup_right hh)
        simpa using this
    exact ⟨(θ.quotKerEquivOfSurjective hsurj).symm.trans (Submodule.quotEquivOfEq _ _ hker)⟩
  · rintro ⟨g, hg, h1, h2, h3⟩
    obtain ⟨l, hl⟩ := exists_Phi p hv hp hc hσ b (g := g) ⟨AA.le_int hg.1, hg.2⟩
    have hlL : l ∈ afLatT p f b σ AA.carrier := by
      have := Submodule.sub_mem _ (Submodule.mem_sup_left (T := pFun R p N) hg.1)
        (Submodule.mem_sup_right hl)
      rw [mem_afLatT]
      simpa using this
    have e1 : proj (σ ^ p ^ (s : ℕ)) g - Phi C p f b σ (cut s l) ∈ pFun R p N := by
      rw [← proj_Phi h0 hdist, ← projL_apply, ← projL_apply, ← map_sub]
      exact proj_mem hw _ _ _ fun a => mem_pFun.2 fun x => mem_pFun.1 hl _
    have e2 : proj (σ ^ p ^ (s : ℕ)) g - g ∈ pFun R p N := by
      rw [mem_pFun]
      intro x
      have := Submodule.smul_mem _ w (Submodule.sum_mem _ (t := Finset.univ) fun (a : Fˣ) _ =>
        Submodule.smul_mem _ ((σ ^ p ^ (s : ℕ))⁻¹ (a : F)) (h1 a x))
      convert this using 1
      simp only [Algebra.smul_def, mul_sub, Finset.sum_sub_distrib, ← mul_assoc, ← map_mul,
        inv_mul_apply, hw, Pi.sub_apply, proj]
      simp [h0]
    have e3 : ∀ j, g (b j) - algebraMap R C (l (j, s)) ∈ pInt (C := C) R p := by
      intro j
      have := mem_pFun.1 (Submodule.sub_mem _ e1 e2) (b j)
      simp only [Pi.sub_apply, Phi_basis _ s (cut_supp s l)] at this
      simpa [cut] using this
    let l2 : Fin n × Fin f → R := fun j =>
      if j.2 = s then (if j.1 < i then 0 else if j.1 = i then c else l j) else 0
    refine ⟨l2, ?_, fun j hj => if_neg hj, fun j hj => by simp [l2, hj], by simp [l2]⟩
    have e4 : cut s l - l2 ∈ afLatT p f b σ AA.carrier := by
      refine mem_afLatT_of_p hinj _ _ ?_
      rintro ⟨j, t⟩
      by_cases ht : t = s
      · subst ht
        by_cases hj : j < i
        · have := Submodule.sub_mem _
            (h2 (b j) (Submodule.subset_span ⟨j, hj, rfl⟩)) (e3 j)
          rw [← mem_pInt_iff hinj]
          simpa [cut, l2, hj] using this
        · by_cases hji : j = i
          · subst hji
            have := Submodule.sub_mem _ h3 (e3 j)
            rw [← mem_pInt_iff hinj]
            simpa [cut, l2] using this
          · simp [cut, l2, hj, hji]
      · simp [cut, l2, ht]
    simpa using Submodule.sub_mem _ (hgrade l hlL s) e4
  · rintro ⟨l, hl, hs, hlow, rfl⟩
    obtain ⟨g, hg, hh⟩ := haf l hl
    rw [mem_pFun] at hh
    refine ⟨g, hg, fun a x => ?_, fun k hk => ?_, ?_⟩
    · have := Submodule.sub_mem _ (hh (a • x))
        (Submodule.smul_mem _ ((σ ^ p ^ (s : ℕ)) a) (hh x))
      convert this using 1
      simp only [Pi.sub_apply, Phi_eigen l s hs, Algebra.smul_def]
      ring
    · have := hh k
      rw [Pi.sub_apply, Phi_flag l i ?_ k hk, sub_zero] at this
      · exact this
      · rintro ⟨j, t⟩ hj
        by_cases ht : t = s
        · subst ht
          exact hlow j hj
        · exact hs _ ht
    · have := hh (b i)
      rwa [Pi.sub_apply, Phi_basis l s hs] at this

theorem flag_D : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ σ : MulChar F R, IsFund p σ → ∀ (n : ℕ) (b : Module.Basis (Fin n) F N), ∃ d : Fin n → Fin f → R, (∀ (i : Fin n) (s : Fin f), idealD p AA.carrier (flagSub b i) (b i) (σ ^ p ^ (s : ℕ)) = Ideal.span {d i s}) ∧ HasLen v R (AFQuot p AA.carrier) (∏ i, ∏ s, v (algebraMap R C (d i s))) := by
  intro p _ C _ _ _ v R _ _ hv hp F _ _ _ _ f hc N _ _ _ _ AA hst σ hσ n b
  obtain ⟨hfg, ⟨e⟩, hgr, hD⟩ := aflatT p C v R hv hp F f hc N AA hst σ hσ n b
  set L := afLatT p f b σ AA.carrier with hL
  let ρ : Fin f → (Fin n × Fin f → R) →ₗ[R] (Fin n → R) := fun s =>
    LinearMap.funLeft R R fun j => (j, s)
  choose d hd hlen using fun s => triang_strong C v R hv n (L.map (ρ s)) (hfg.map _)
  refine ⟨fun i s => d s i, fun i s => ?_, ?_⟩
  · ext c
    rw [hD, hd]
    constructor
    · rintro ⟨l, hl, -, h2, h3⟩
      exact ⟨ρ s l, Submodule.mem_map_of_mem hl, h2, h3⟩
    · rintro ⟨_, ⟨l, hl, rfl⟩, h2, h3⟩
      exact ⟨_, hgr l hl s, fun j hj => if_neg hj, fun j hj => (if_pos rfl).trans (h2 j hj),
        (if_pos rfl).trans h3⟩
  · let θ : (Fin n × Fin f → R) →ₗ[R] ((s : Fin f) → (Fin n → R) ⧸ L.map (ρ s)) :=
      LinearMap.pi fun s => Submodule.mkQ _ ∘ₗ ρ s
    have hsurj : Function.Surjective θ := by
      intro q
      choose u hu using fun s => Submodule.Quotient.mk_surjective _ (q s)
      exact ⟨fun j => u j.2 j.1, funext hu⟩
    have hker : LinearMap.ker θ = L := by
      ext l
      constructor
      · intro h
        rw [← sum_cut l]
        refine L.sum_mem fun s _ => ?_
        obtain ⟨l', hl', e'⟩ : ρ s l ∈ L.map (ρ s) :=
          (Submodule.Quotient.mk_eq_zero _).1 (congrFun (LinearMap.mem_ker.1 h) s)
        have : cut s l = cut s l' := by
          funext ⟨j, t⟩
          by_cases ht : t = s
          · subst ht
            simpa [cut, ρ] using (congrFun e' j).symm
          · simp [cut, ht]
        rw [this]
        exact hgr l' hl' s
      · intro h
        funext s
        exact (Submodule.Quotient.mk_eq_zero _).2 (Submodule.mem_map_of_mem h)
    rw [Finset.prod_comm]
    exact Tot.hasLen_equiv
      (e.trans ((Submodule.quotEquivOfEq _ _ hker).symm.trans (θ.quotKerEquivOfSurjective hsurj)))
      (Tot.hasLen_pi _ _ hlen)

end PositivityTheory.HtPt.Rb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RbAflat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalLengths =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalLengths", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RbAflat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

alias _root_.GlobalTheory.CompanionTheory.Relay.stable_hopf_order_fundamental_lengths := _root_.PositivityTheory.HtPt.Rb.flag_D
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalLengths =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagComparisonTheorem =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagComparisonTheorem", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.PolarisedFlagStatement\npublic import Development.AbelianVarietyTheory.Counterexamples.UpperHalfSurvey.HasColenNotUniqueWithoutGuard\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigenStatement\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusValuation\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NonFundamentalEigenLeSquareAugmentation\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.NNReal.Defs\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ProductInequalitiesForceEquality\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisColength\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisIdeals\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderBasisLengths\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalLengths\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupGeneration\npublic import ReciprocityTheory.DualLattices.InvolutionPermApplyZero\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.ProdIccFin\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.Invres\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.RangeSubtypeEq\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.RcFlag\nimport Mathlib.NumberTheory.MulChar.Basic\nimport Mathlib.RingTheory.Valuation.Integers\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.DualLattices.PowMemCarrier\nimport ReciprocityTheory.DualLattices.ProdDvdOfIso\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR.FlagClose

section Val

variable {C : Type} [Field C] {v : Valuation C NNReal} {R : Type} [CommRing R] [Algebra R C]

lemma v_le_of_span_le (hv : v.Integers R) {a b : R} (h : Ideal.span {a} ≤ Ideal.span {b}) :
    v (algebraMap R C a) ≤ v (algebraMap R C b) := by
  obtain ⟨u, rfl⟩ := Ideal.mem_span_singleton.1 (h (Ideal.mem_span_singleton_self a))
  rw [map_mul, map_mul]
  exact mul_le_of_le_one_right' (hv.map_le_one u)

lemma v_eq_of_span_eq (hv : v.Integers R) {a b : R} (h : Ideal.span {a} = Ideal.span {b}) :
    v (algebraMap R C a) = v (algebraMap R C b) :=
  le_antisymm (v_le_of_span_le hv h.le) (v_le_of_span_le hv h.ge)

lemma span_eq_of_le_of_v_eq (hv : v.Integers R) {c d : R} (hc : c ≠ 0)
    (h : Ideal.span {c} ≤ Ideal.span {d})
    (hvv : v (algebraMap R C c) = v (algebraMap R C d)) :
    Ideal.span {c} = Ideal.span {d} := by
  obtain ⟨u, rfl⟩ := Ideal.mem_span_singleton.1 (h (Ideal.mem_span_singleton_self c))
  have hu0 : u ≠ 0 := by rintro rfl; simp at hc
  have hd0 : d ≠ 0 := by rintro rfl; simp at hc
  have hinj := hv.hom_inj
  have hd1 : algebraMap R C d ≠ 0 := fun e => hd0 (hinj (by simpa using e))
  have hu1 : algebraMap R C u ≠ 0 := fun e => hu0 (hinj (by simpa using e))
  have hvd : v (algebraMap R C d) ≠ 0 := (Valuation.ne_zero_iff v).2 hd1
  have hvu : v (algebraMap R C u) = 1 := by
    rw [map_mul, map_mul] at hvv
    exact mul_left_cancel₀ hvd (by rw [hvv, mul_one])
  exact Ideal.span_singleton_mul_right_unit (hv.isUnit_of_one (IsUnit.mk0 _ hu1) hvu) d

lemma hasLen_le_one' (hv : v.Integers R) {M : Type} [AddCommGroup M] [Module R M] {x : NNReal}
    (h : HasLen v R M x) : x ≤ 1 := by
  obtain ⟨m, c, -, rfl⟩ := h
  exact Finset.prod_le_one' fun i _ => hv.map_le_one _

end Val

lemma prod_fin_shift (f : ℕ) (G : ℕ → NNReal) (h : G f = G 0) (h0 : G 0 ≠ 0) :
    ∏ s : Fin f, G ((s : ℕ) + 1) = ∏ s : Fin f, G s := by
  rw [Fin.prod_univ_eq_prod_range (fun i => G (i + 1)), Fin.prod_univ_eq_prod_range G]
  have h1 := Finset.prod_range_succ' G f
  have h2 := Finset.prod_range_succ G f
  rw [h1, h] at h2
  exact mul_right_cancel₀ h0 h2

section Char

variable {R : Type} [CommRing R] {F : Type} [Field F] [Fintype F]

lemma pow_card_char (χ : MulChar F R) : χ ^ Fintype.card F = χ := by
  ext a
  rw [MulChar.pow_apply_coe, ← map_pow, FiniteField.pow_card]

lemma pow_period {p f : ℕ} (hf : Fintype.card F = p ^ f) (σ : MulChar F R) (s : ℕ) :
    σ ^ p ^ (s + f) = σ ^ p ^ s := by
  rw [pow_add, pow_mul, ← hf, pow_card_char]

lemma pow_period_mul {p f : ℕ} (hf : Fintype.card F = p ^ f) (σ : MulChar F R) (s k : ℕ) :
    σ ^ p ^ (s + f * k) = σ ^ p ^ s := by
  induction k with
  | zero => simp
  | succ k ih => rw [Nat.mul_succ, ← add_assoc, pow_period hf, ih]

lemma pow_mod {p f : ℕ} (hf : Fintype.card F = p ^ f) (σ : MulChar F R) (s : ℕ) :
    σ ^ p ^ (s % f) = σ ^ p ^ s := by
  conv_rhs => rw [← Nat.mod_add_div s f]
  rw [pow_period_mul hf]

lemma prod_chars {p f : ℕ} (hp : p.Prime) (hf : 0 < f) (σ : MulChar F R)
    (ho : orderOf σ = p ^ f - 1)
    (hfund : ∀ m, IsFund p (σ ^ m) → ∃ n < f, σ ^ m = σ ^ p ^ n)
    (L : MulChar F R → NNReal) (h1 : ∀ χ, ¬ IsFund p χ → L χ = 1) :
    ∏ m ∈ Finset.Icc 1 (p ^ f - 1), L (σ ^ m) = ∏ s : Fin f, L (σ ^ p ^ (s : ℕ)) := by
  have hp2 := hp.two_le
  have hle : ∀ n < f, 1 ≤ p ^ n ∧ p ^ n ≤ p ^ f - 1 := by
    intro n hn
    refine ⟨Nat.one_le_pow _ _ hp.pos, ?_⟩
    have h2 : p ^ (n + 1) ≤ p ^ f := Nat.pow_le_pow_right hp.pos hn
    have h3 : p ^ (n + 1) = p ^ n * p := pow_succ p n
    have h4 : 1 ≤ p ^ n := Nat.one_le_pow _ _ hp.pos
    have h5 : p ^ n * 2 ≤ p ^ n * p := Nat.mul_le_mul_left _ hp2
    omega
  have hinj : Function.Injective (fun s : Fin f => p ^ (s : ℕ)) := fun a b e =>
    Fin.ext (Nat.pow_right_injective hp2 e)
  have himg : ∏ s : Fin f, L (σ ^ p ^ (s : ℕ)) =
      ∏ m ∈ (Finset.univ : Finset (Fin f)).image (fun s : Fin f => p ^ (s : ℕ)), L (σ ^ m) := by
    rw [Finset.prod_image (fun a _ b _ e => hinj e)]
  rw [himg]
  symm
  apply Finset.prod_subset
  · intro m hm
    obtain ⟨s, -, rfl⟩ := Finset.mem_image.1 hm
    exact Finset.mem_Icc.2 (hle s s.2)
  · intro m hm hnot
    apply h1
    intro hfm
    obtain ⟨n, hn, e⟩ := hfund m hfm
    apply hnot
    refine Finset.mem_image.2 ⟨⟨n, hn⟩, Finset.mem_univ _, ?_⟩
    obtain ⟨hm1, hm2⟩ := Finset.mem_Icc.1 hm
    obtain ⟨hn1, hn2⟩ := hle n hn
    have hmod : m ≡ p ^ n [MOD orderOf σ] := pow_eq_pow_iff_modEq.1 e
    rw [ho] at hmod
    refine (Nat.ModEq.eq_of_abs_lt hmod ?_).symm
    rw [abs_lt]
    omega

end Char

end GlobalTheory.CompanionTheory.Ar.GR.FlagClose

namespace GlobalTheory.CompanionTheory.Ar.GR


open FlagClose in
theorem flagStatement_holds : FlagStatement := by
  intro p _ C _ _ _ v R _ _ hv hp F _ _ _ _ N _ _ _ _ AA hFS hT n b hG σ hσ
  obtain ⟨f, hf0, hf⟩ : ∃ f : ℕ, 0 < f ∧ Fintype.card F = p ^ f := by
    obtain ⟨k, -, e⟩ := FiniteField.card F p
    exact ⟨k, k.pos, e⟩
  have hpp : p.Prime := Fact.out
  obtain ⟨hord, -, hfp, hfund, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.GR.FundGen.main p C v R hv hp F f hf σ hσ
  have hFp : ∀ s, IsFund p (σ ^ p ^ s) := hfp
  have hbK : ∀ i : Fin n, b i ∉ flagSub b i := fun i =>
    b.linearIndependent.notMem_span_image (by simp)
  have hstep := fun i : Fin n =>
    _root_.PositivityTheory.HtPt.Rc.step p C v R hv hp F f hf N AA hFS (flagSub b i) (b i) (hbK i)
  choose S hSc hSF using fun i => (hstep i).1
  have hres : ∀ i : Fin n, stepOrder AA.carrier (flagSub b i) (b i) =
      stepOrderRes AA.carrier (flagSub b i) (b i) := fun i => (hstep i).2
  choose c hc0 hcX using fun (i : Fin n) (s : ℕ) =>
    (GlobalTheory.T.character_ideal_principal_eigen p C v R hv hp F f hf (S i) (hSF i) (σ ^ p ^ s)).1
  have hom := fun i : Fin n =>
    _root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_product p C v R hv hp F f hf (S i) (hSF i) σ hσ (c i) (hcX i)
  choose δ hδ using fun (i : Fin n) (s : ℕ) => (hom i s).2.1
  have hδL : ∀ (i : Fin n) (s : ℕ), HasLen v R (OmType (S i).carrier (σ ^ p ^ (s + 1)))
      (v (algebraMap R C (δ i s))) := fun i s => (hom i s).2.2 _ (hδ i s)
  have hstepL : ∀ (i : Fin n) (s : ℕ),
      HasLen v R (OmType (stepOrder AA.carrier (flagSub b i) (b i)) (σ ^ p ^ (s + 1)))
        (v (algebraMap R C (δ i s))) := by
    intro i s
    rw [← hSc i]
    exact hδL i s
  have hXc : ∀ (i : Fin n) (s : ℕ),
      idealX AA.carrier (flagSub b i) (b i) (σ ^ p ^ s) = Ideal.span {c i s} := by
    intro i s
    show xIdeal (stepOrder AA.carrier (flagSub b i) (b i)) (σ ^ p ^ s) = _
    rw [← hSc i]
    exact hcX i s
  obtain ⟨d, hdD, hdL⟩ := _root_.GlobalTheory.CompanionTheory.Relay.stable_hopf_order_fundamental_lengths p C v R hv hp F f hf N AA hFS σ hσ n b
  obtain ⟨cA, cN, cO, hcA, hcN, hcO, e1, e2⟩ := hT
  obtain ⟨hLex, hLprod⟩ := _root_.PositivityTheory.HtPt.Rc.om_split p C v R hv hp F f hf N AA hFS σ hσ
  choose L hL0 hL using hLex

  have hnf : ∀ χ : MulChar F R, ¬ IsFund p χ → L χ = 1 := by
    intro χ hχ
    have hsub : ∀ i : Fin n,
        HasLen v R (OmType (stepOrder AA.carrier (flagSub b i) (b i)) χ) 1 := by
      intro i
      rw [← hSc i]
      have hle := _root_.GlobalTheory.CompanionTheory.Relay.non_fundamental_eigen_le_square_augmentation p C v R hv hp F f hf (S i) (hSF i) χ hχ
      haveI : Subsingleton (OmType (S i).carrier χ) := by
        refine Submodule.Quotient.subsingleton_iff.2 (eq_top_iff.2 ?_)
        intro x _
        exact hle x.2
      exact hasLen_subsingleton v R _
    have h1 := _root_.GlobalTheory.CompanionTheory.Relay.stable_hopf_order_basis_lengths p C v R hv hp F f hf N AA hFS n b χ (fun _ => 1) (L χ) hsub (hL χ)
    exact le_antisymm (hasLen_le_one' hv (hL χ)) (by simpa using h1)

  have hcN0 : cN ≠ 0 := by
    obtain ⟨B, hB, h⟩ := AA.lat
    have e := GlobalTheory.HopfOrderCheck.hasColen_unique v (fun r => hv.map_le_one r) hcN ⟨B, h, rfl⟩
    rw [e]
    exact (Valuation.ne_zero_iff v).2 hB.ne_zero

  have hvc0 : ∀ (i : Fin n) (s : ℕ), v (algebraMap R C (c i s)) ≠ 0 := fun i s =>
    (Valuation.ne_zero_iff v).2 fun e => hc0 i s (hv.hom_inj (by simpa using e))
  have hcmod : ∀ (i : Fin n) (s : ℕ), Ideal.span {c i (s % f)} = Ideal.span {c i s} := by
    intro i s
    rw [← hXc, ← hXc, pow_mod hf]
  have hvper : ∀ (i : Fin n), v (algebraMap R C (c i f)) = v (algebraMap R C (c i 0)) := by
    intro i
    have h := hcmod i f
    rw [Nat.mod_self] at h
    exact (v_eq_of_span_eq hv h).symm
  have hxD : ∀ (t : Fin n) (s : Fin f),
      v (algebraMap R C (c t s)) ≤ v (algebraMap R C (d t s)) := by
    intro t s
    have h := _root_.GlobalTheory.CompanionTheory.Ar.GR.idealX_le_idealD p C v R hv hp F f hf N AA hFS (flagSub b t) (b t) (hbK t) (hG t)
      (σ ^ p ^ (s : ℕ)) (hFp s)
    rw [hXc, hdD] at h
    exact v_le_of_span_le hv h
  have hDA : ∏ t, ∏ s, v (algebraMap R C (d t s)) = cA := hasLen_unique hv hdL hcA

  choose cs hcs using fun i : Fin n => hasColen_of_lat v (S i).lat
  have hcsq : ∀ i : Fin n, cs i ^ 2 =
      (∏ s : Fin f, v (algebraMap R C (c i s))) ^ (p ^ f * (p - 1)) := fun i =>
    (_root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_valuation p C v R hv hp F f hf (S i) (hSF i) σ hσ (c i) (hcX i)).2 _ (hcs i)
  have hcfl : cN ^ (p ^ f) = (∏ i, cs i) ^ Fintype.card N :=
    _root_.GlobalTheory.CompanionTheory.Ar.GR.flag_colen p C v R hv hp F f hf N AA hFS n b cs cN
      (fun i => by rw [← hSc i]; exact hcs i) hcN
  have hxN : (∏ t, ∏ s : Fin f, v (algebraMap R C (c t s))) ^ (Fintype.card N * (p - 1)) =
      cN ^ 2 := by
    have hq : p ^ f ≠ 0 := pow_ne_zero _ hpp.ne_zero
    refine (pow_left_inj₀ zero_le' zero_le' hq).1 ?_
    calc ((∏ t, ∏ s : Fin f, v (algebraMap R C (c t s))) ^ (Fintype.card N * (p - 1))) ^ p ^ f
        = (∏ t, (∏ s : Fin f, v (algebraMap R C (c t s))) ^ (p ^ f * (p - 1))) ^ Fintype.card N := by
          rw [Finset.prod_pow, ← pow_mul, ← pow_mul]
          congr 1
          ring
      _ = (∏ t, cs t ^ 2) ^ Fintype.card N := by simp only [hcsq]
      _ = (cN ^ 2) ^ p ^ f := by
          rw [Finset.prod_pow, ← pow_mul, pow_right_comm cN, hcfl, ← pow_mul, mul_comm 2]

  have hdx : ∏ t, ∏ s : Fin f, v (algebraMap R C (δ t s)) =
      (∏ t, ∏ s : Fin f, v (algebraMap R C (c t s))) ^ (p - 1) := by
    rw [← Finset.prod_pow]
    refine Finset.prod_congr rfl fun t _ => ?_
    have hP : ∏ s : Fin f, v (algebraMap R C (c t s)) ≠ 0 :=
      Finset.prod_ne_zero_iff.2 fun s _ => hvc0 t s
    have hsh := prod_fin_shift f (fun s => v (algebraMap R C (c t s))) (hvper t) (hvc0 t 0)
    have hmul : (∏ s : Fin f, v (algebraMap R C (c t s))) ^ p =
        (∏ s : Fin f, v (algebraMap R C (δ t s))) *
          ∏ s : Fin f, v (algebraMap R C (c t s)) := by
      rw [← Finset.prod_pow]
      conv_rhs => rw [← hsh]
      rw [← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun s _ => ?_
      rw [← map_pow, ← map_pow, hδ, map_mul, map_mul]
    have hp1 : p = (p - 1) + 1 := (Nat.sub_add_cancel hpp.one_le).symm
    have h2 : (∏ s : Fin f, v (algebraMap R C (c t s))) ^ (p - 1) *
        ∏ s : Fin f, v (algebraMap R C (c t s)) =
        (∏ s : Fin f, v (algebraMap R C (c t s))) ^ p := by
      rw [← pow_succ, ← hp1]
    exact (mul_right_cancel₀ hP (h2.trans hmul)).symm
  have hrle : ∀ s : Fin f, ∏ t, v (algebraMap R C (δ t s)) ≤ L (σ ^ p ^ ((s : ℕ) + 1)) :=
    fun s => _root_.GlobalTheory.CompanionTheory.Relay.stable_hopf_order_basis_lengths p C v R hv hp F f hf N AA hFS n b (σ ^ p ^ ((s : ℕ) + 1))
      (fun i => v (algebraMap R C (δ i s))) _ (fun i => hstepL i s) (hL _)
  have hrO : ∏ s : Fin f, L (σ ^ p ^ ((s : ℕ) + 1)) = cO := by
    have h1 := prod_fin_shift f (fun s => L (σ ^ p ^ s))
      (by simpa using congrArg L (pow_period hf σ 0)) (hL0 _)
    have h2 := prod_chars hpp hf0 σ hord (fun m hm => hfund _ hm) L hnf
    have h3 := hasLen_unique hv (hLprod (fun m => L (σ ^ m)) (fun m _ => hL _)) hcO
    exact h1.trans (h2.symm.trans h3)
  obtain ⟨hDx, hlen⟩ := _root_.GlobalTheory.CompanionTheory.Ar.GR.grcount (Fin n) (Fin f) (Fintype.card N) (p - 1) Fintype.card_pos
    (Nat.sub_pos_of_lt hpp.one_lt)
    (fun t s => v (algebraMap R C (c t s))) (fun t s => v (algebraMap R C (d t s)))
    (fun t s => v (algebraMap R C (δ t s))) (fun s => L (σ ^ p ^ ((s : ℕ) + 1))) cA cN cO hcN0
    hxD hDA hxN e1 hrle hrO hdx e2

  have hCD : ∀ (i : Fin n) (s : Fin f), Ideal.span {c i s} = Ideal.span {d i s} := by
    intro i s
    refine span_eq_of_le_of_v_eq hv (hc0 i s) ?_ (hDx i s).symm
    have h := _root_.GlobalTheory.CompanionTheory.Ar.GR.idealX_le_idealD p C v R hv hp F f hf N AA hFS (flagSub b i) (b i) (hbK i) (hG i)
      (σ ^ p ^ (s : ℕ)) (hFp s)
    rwa [hXc, hdD] at h
  have hD : ∀ (i : Fin n) (s : ℕ),
      idealD p AA.carrier (flagSub b i) (b i) (σ ^ p ^ s) = Ideal.span {c i s} := by
    intro i s
    have hs : s % f < f := Nat.mod_lt _ hf0
    have h := hdD i ⟨s % f, hs⟩
    have h' := hCD i ⟨s % f, hs⟩
    simp only at h h'
    rw [pow_mod hf] at h
    rw [h, ← h', hcmod]
  have hsucc : ∀ s : ℕ, σ ^ p ^ (s % f + 1) = σ ^ p ^ (s + 1) := by
    intro s
    rw [pow_succ, pow_succ, pow_mul, pow_mul, pow_mod hf]
  have hall : ∀ s : ℕ, HasLen v R (OmType AA.carrier (σ ^ p ^ (s + 1)))
      (∏ i, v (algebraMap R C (δ i s))) := by
    intro s
    have hs : s % f < f := Nat.mod_lt _ hf0
    have h := hlen ⟨s % f, hs⟩
    simp only at h
    have hδe : ∀ i : Fin n, v (algebraMap R C (δ i s)) = v (algebraMap R C (δ i (s % f))) := by
      intro i
      have h2 := hδL i (s % f)
      rw [hsucc] at h2
      exact hasLen_unique hv (hδL i s) h2
    simp only [hδe]
    rw [h, hsucc]
    exact hL _
  refine ⟨c, δ, fun i s => ⟨hc0 i s, hXc i s, ?_, hD i s, hδ i s, hstepL i s⟩, hall, ?_⟩
  · rw [← hres i, ← hSc i]
    exact hcX i s
  · intro j s
    exact _root_.GlobalTheory.CompanionTheory.Relay.stable_hopf_order_basis_colength p C v R hv hp F f hf N AA hFS n b (σ ^ p ^ (s + 1))
      (fun i => v (algebraMap R C (δ i s))) (fun i => hstepL i s) (hall s) j

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagComparisonTheorem =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderRetractElementary =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderRetractElementary", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.EqOfPowMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

alias _root_.GlobalTheory.CompanionTheory.Relay.hopf_order_retract_elementary := _root_.PositivityTheory.HtPt.Re.ret_tight
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderRetractElementary =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianFactorTightFieldAction =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianFactorTightFieldAction", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.OrdinaryCurveStatement\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.PolarisedFlagStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagComparisonTheorem\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderRetractElementary\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderRetractRestriction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem flagConcl_directFactor_of_subquotient :
    SubquotientStatement → ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → IsAdicComplete (Ideal.span {(p : R)}) R → ∀ (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N], ∀ AA : HopfOrder (C := C) R N, (∀ x : N, p • x = 0) → IsAbFactor p AA.carrier → IsTight v p AA.carrier → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (Nw : Type) [AddCommGroup Nw] [Module F Nw] [Fintype Nw] [DecidableEq Nw] (i : Nw →+ N) (π : N →+ Nw), (∀ y, π (i y) = y) → (∀ h ∈ AA.carrier, (fun x => h (i (π x))) ∈ AA.carrier) → FStable F (AA.carrier.map (LinearMap.funLeft R C (i : Nw → N))) → ∀ (n : ℕ) (b : Module.Basis (Fin n) F Nw) (σ : MulChar F R), IsFund p σ → FlagConcl v p (AA.carrier.map (LinearMap.funLeft R C (i : Nw → N))) b σ := by
  intro hS p _ C _ _ _ v R _ _ hInt hp hcomp N _ _ _ AA hpN hab htight F _ _ _ _ Nw _ _ _ _ i π hπi
    hstab hFS n b σ hσ
  obtain ⟨⟨A', hA'⟩, -, hgen⟩ := _root_.GlobalTheory.CompanionTheory.Ar.GR.ret_hopf_factor p C v R hInt hp N AA Nw i π hπi hstab
  have ht' := _root_.GlobalTheory.CompanionTheory.Relay.hopf_order_retract_elementary p C v R hInt hp N hpN AA Nw i π hπi hstab htight
  rw [← hA'] at hFS ht' ⊢
  refine _root_.GlobalTheory.CompanionTheory.Ar.GR.flagStatement_holds p C v R hInt hp F Nw A' hFS ht' n b ?_ σ hσ
  intro k
  rw [hA']
  exact hgen _ (hS p C v R hInt hp hcomp N AA.carrier hab _)

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianFactorTightFieldAction =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianFactorTightFieldActionStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianFactorTightFieldActionStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.OrdinaryCurveStatement\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.PolarisedFlagStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianFactorTightFieldAction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbelianFactorTightFieldActionStatement =====
