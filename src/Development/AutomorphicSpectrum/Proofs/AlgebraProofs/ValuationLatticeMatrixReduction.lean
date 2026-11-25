module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemAddValuationIntegerRingNormalizedIff
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference
public import Mathlib.CategoryTheory.Category.Basic
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.MultiplicationKernelIdentity
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HerbrandQuotientEigenDet
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.EigCoordApply
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SandwichMaps
import Development.AbelianVarietyTheory.Definitions.Divisors.IotaScalarOne
import Development.AbelianVarietyTheory.Definitions.Divisors.XiMulNu
import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenSublatticeFreeLatticeIffEval, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvalQuotientRingVectorAtPointsInjective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LieEigenSublatticeIffEvalFlat, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SingleMemOfMem, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationOfComponentsMemEigenSpan, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationPreimageIffEvalMem, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemPolynomialEvalFreeLatticeIffExistsEval, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationHerbrandEigenspace, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationOfLsmulShift, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSpanOfIsLatticeBasis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PiEigenSublatticeFreeEqDifferentScaled, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DvrAlphaDeterminantOrder, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ValuationLatticeMatrixReduction

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenSublatticeFreeLatticeIffEval =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenSublatticeFreeLatticeIffEval", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemAddValuationIntegerRingNormalizedIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity GlobalTheory.HerbrandBridge

namespace GlobalTheory.EigenSubEval

variable {C : Type} [Field C] {w : Valuation C ℝ≥0} {v : AddValuation C (WithTop ℝ)}
  {S : Type} [Fintype S] [DecidableEq S]

theorem evalVec_rsmul (b : S → Int0 v) (N : ℕ) (r : RS b) (z : Fin N → RS b) (s : S) (i : Fin N) :
    evalVec b N (r • z) s i = ((ev b s r : Int0 v) : C) * evalVec b N z s i := by
  simp only [evalVec, Pi.smul_apply, smul_eq_mul, map_mul, Subring.coe_mul]

theorem mem_eigSub_iff (b : S → Int0 v) (N : ℕ) (τ : S) (z : Fin N → RS b) :
    z ∈ eigSub b τ (Fin N → RS b) ↔ lin b τ • z = 0 := Iff.rfl

theorem eigenSub_iff_eval (C : Type) [Field C] (w : Valuation C ℝ≥0) (v : AddValuation C (WithTop ℝ))
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (S : Type) [Fintype S] [DecidableEq S]
    (a : S → w.valuationSubring) (N : ℕ) (τ : S) (ha : Function.Injective a)
    (hinj : Function.Injective (evalVec (liftA hv a) N))
    (hrange : ∀ y, y ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N ↔ ∃ x, evalVec (liftA hv a) N x = y)
    (y : Fin N → C) :
    y ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenSub (W := fun _ => Fin N → C) (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N) τ ↔
      ∃ z ∈ GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.eigSub (liftA hv a) τ (Fin N → RS (liftA hv a)),
        (fun i => ((GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.comp (liftA hv a) N τ z i : Int0 v) : C)) = y := by
  have hev : ∀ s t, ((ev (liftA hv a) s (lin (liftA hv a) t) : Int0 v) : C) = (a s : C) - a t := by
    intro s t
    rw [ev_lin]; rfl
  have hne : ∀ s, s ≠ τ → (a s : C) - a τ ≠ 0 := by
    intro s hs h
    exact hs (ha (Subtype.ext (sub_eq_zero.1 h)))
  have hmem : y ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenSub (W := fun _ => Fin N → C)
      (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N) τ ↔
      (Pi.single τ y : S → Fin N → C) ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N := Iff.rfl
  rw [hmem]
  constructor
  · intro h
    obtain ⟨x, hx⟩ := (hrange _).1 h
    refine ⟨x, ?_, ?_⟩
    · rw [mem_eigSub_iff]
      apply hinj
      funext s i
      rw [evalVec_rsmul, hev, hx]
      have h0 : evalVec (liftA hv a) N (0 : Fin N → RS (liftA hv a)) s i = 0 := by
        simp [evalVec]
      rw [h0]
      by_cases e : s = τ
      · subst e; simp
      · simp [e]
    · rw [comp_coe, hx]; simp
  · rintro ⟨z, hz, rfl⟩
    rw [mem_eigSub_iff] at hz
    have key : evalVec (liftA hv a) N z = Pi.single τ (evalVec (liftA hv a) N z τ) := by
      funext s i
      by_cases e : s = τ
      · subst e; simp
      · have h1 := congrFun (congrFun (congrArg (evalVec (liftA hv a) N) hz) s) i
        rw [evalVec_rsmul, hev] at h1
        have h0 : evalVec (liftA hv a) N (0 : Fin N → RS (liftA hv a)) s i = 0 := by
          simp [evalVec]
        rw [h0] at h1
        rw [Pi.single_eq_of_ne e]
        exact (mul_eq_zero.1 h1).resolve_left (hne s e)
    rw [comp_coe, ← key]
    exact (hrange _).2 ⟨z, rfl⟩

end GlobalTheory.EigenSubEval
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenSublatticeFreeLatticeIffEval =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvalQuotientRingVectorAtPointsInjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvalQuotientRingVectorAtPointsInjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemAddValuationIntegerRingNormalizedIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity GlobalTheory.HerbrandBridge

namespace GlobalTheory.HerbrandBridge

open Polynomial

theorem prod_X_sub_C_dvd_of_eval_zero {O S : Type} [CommRing O] [IsDomain O] [Fintype S]
    (b : S → O) (hb : Function.Injective b) (g : O[X]) (hg : ∀ s, g.eval (b s) = 0) :
    (∏ s, (X - C (b s))) ∣ g := by
  by_cases h0 : g = 0
  · simp [h0]
  have hprod : (∏ s, (X - C (b s))) = ((Finset.univ.val.map b).map (fun t => X - C t)).prod := by
    rw [Multiset.map_map]; rfl
  rw [hprod, Multiset.prod_X_sub_C_dvd_iff_le_roots h0]
  rw [Multiset.le_iff_subset (Multiset.Nodup.map hb Finset.univ.nodup)]
  intro t ht
  obtain ⟨s, -, rfl⟩ := Multiset.mem_map.1 ht
  exact (mem_roots h0).2 (hg s)

theorem evalVec_injective_of_injective (C : Type) [Field C] (w : Valuation C ℝ≥0)
    (v : AddValuation C (WithTop ℝ)) (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring)
    (S : Type) [Fintype S] [DecidableEq S] (a : S → w.valuationSubring) (N : ℕ) :
    Function.Injective a → Function.Injective (evalVec (liftA hv a) N) := by
  intro ha
  have hinj : Function.Injective (liftA hv a) := by
    intro s t hst
    apply ha
    apply Subtype.ext
    have := congrArg (fun u : Int0 v => (u : C)) hst
    exact this
  have key : ∀ x : Fin N → RS (liftA hv a), evalVec (liftA hv a) N x = 0 → x = 0 := by
    intro x hx
    funext i
    obtain ⟨g, hg⟩ := AdjoinRoot.mk_surjective (x i)
    rw [Pi.zero_apply, ← hg, AdjoinRoot.mk_eq_zero]
    apply prod_X_sub_C_dvd_of_eval_zero _ hinj
    intro s
    have h1 := congrFun (congrFun hx s) i
    simp only [evalVec, Pi.zero_apply, ← hg] at h1
    apply Subtype.ext
    rw [show ((0 : Int0 v) : C) = 0 from rfl, ← h1]
    congr 1
  intro x y hxy
  have := key (x - y) (by rw [evalVec_sub, hxy, sub_self])
  exact sub_eq_zero.1 this

end GlobalTheory.HerbrandBridge
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvalQuotientRingVectorAtPointsInjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LieEigenSublatticeIffEvalFlat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LieEigenSublatticeIffEvalFlat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemAddValuationIntegerRingNormalizedIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity GlobalTheory.HerbrandBridge

namespace GlobalTheory

theorem lie_eigenSub_iff_flat : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (v : AddValuation C (WithTop ℝ)) (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (S : Type) [Fintype S] [DecidableEq S] (a : S → w.valuationSubring) (N : ℕ) (F : Submodule w.valuationSubring (S → Fin N → C)) (τ : S), Function.Injective a → GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.IsFiltration a F → Function.Injective (evalVec (liftA hv a) N) → (∀ y, y ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N ↔ ∃ x, evalVec (liftA hv a) N x = y) → (∀ x, x ∈ (Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F}) ↔ evalVec (liftA hv a) N x ∈ F) → (∀ x ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N, (∀ s, x s ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace F s) → x ∈ F) → ∀ z : (Fin N → C) ⧸ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace F τ, z ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenSub (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.lie (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N) F) τ ↔ ∃ x : Fin N → RS (liftA hv a), proj (liftA hv a) ((Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F})) x ∈ GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.eigSub (liftA hv a) τ ((Fin N → RS (liftA hv a)) ⧸ (Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F})) ∧ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.quotMap (w := w) (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace F τ) (fun i => ((GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.comp (liftA hv a) N τ x i : Int0 v) : C)) = z := by
  intro C _ w v hv S _ _ a N F τ hinj _hfilt _hevinj hrange hmem hlast z
  have hev : ∀ x : Fin N → RS (liftA hv a), ∀ s i,
      evalVec (liftA hv a) N (lin (liftA hv a) τ • x) s i
        = ((a s : C) - a τ) * evalVec (liftA hv a) N x s i := by
    intro x s i
    simp only [evalVec, Pi.smul_apply, smul_eq_mul, map_mul, ev_lin]
    rfl
  have hevs : ∀ x : Fin N → RS (liftA hv a), ∀ s,
      evalVec (liftA hv a) N (lin (liftA hv a) τ • x) s
        = ((a s : C) - a τ) • evalVec (liftA hv a) N x s := by
    intro x s; funext i; rw [hev]; rfl
  have heig : ∀ x : Fin N → RS (liftA hv a),
      proj (liftA hv a) ((Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F})) x ∈
          GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.eigSub (liftA hv a) τ ((Fin N → RS (liftA hv a)) ⧸ (Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F})) ↔
        evalVec (liftA hv a) N (lin (liftA hv a) τ • x) ∈ F := by
    intro x
    rw [← hmem]
    show lin (liftA hv a) τ • ((Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F})).mkQ x = 0 ↔ _
    rw [← map_smul, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
  have hlie : z ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenSub
        (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.lie (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N) F) τ ↔
      ∃ h ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N, ∀ s,
        (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace F s).mkQ (h s) =
          (Pi.single τ z : ∀ s, (Fin N → C) ⧸ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace F s) s := by
    simp only [GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenSub, GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.lie, Submodule.mem_comap,
      Submodule.mem_map]
    constructor
    · rintro ⟨h, hh, he⟩
      exact ⟨h, hh, fun s => congrFun he s⟩
    · rintro ⟨h, hh, he⟩
      exact ⟨h, hh, funext he⟩
  rw [hlie]
  constructor
  · rintro ⟨h, hh, he⟩
    obtain ⟨x, rfl⟩ := (hrange h).1 hh
    refine ⟨x, (heig x).2 ?_, ?_⟩
    · apply hlast _ ((hrange _).2 ⟨_, rfl⟩)
      intro s
      rw [hevs]
      by_cases hs : s = τ
      · rw [hs, sub_self, zero_smul]; exact zero_mem _
      · have h1 : evalVec (liftA hv a) N x s ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace F s := by
          have := he s
          rw [Pi.single_eq_of_ne hs, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at this
          exact this
        exact Submodule.smul_mem _ _ h1
    · have := he τ
      rw [Pi.single_eq_same] at this
      exact this
  · rintro ⟨x, hx, rfl⟩
    refine ⟨evalVec (liftA hv a) N x, (hrange _).2 ⟨x, rfl⟩, fun s => ?_⟩
    by_cases hs : s = τ
    · subst hs
      rw [Pi.single_eq_same]
      rfl
    · rw [Pi.single_eq_of_ne hs, Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
      have hy := (heig x).1 hx
      have hys : evalVec (liftA hv a) N (lin (liftA hv a) τ • x) s ∈
          GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace F s :=
        Submodule.subset_span ⟨_, hy, rfl⟩
      have hne : (a s : C) - a τ ≠ 0 := sub_ne_zero.2 fun e => hs (hinj (Subtype.ext e))
      have : evalVec (liftA hv a) N x s =
          ((a s : C) - a τ)⁻¹ • evalVec (liftA hv a) N (lin (liftA hv a) τ • x) s := by
        rw [hevs, smul_smul, inv_mul_cancel₀ hne, one_smul]
      rw [this]
      exact Submodule.smul_mem _ _ hys

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LieEigenSublatticeIffEvalFlat =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SingleMemOfMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SingleMemOfMem", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\npublic import Mathlib.CategoryTheory.Category.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal

namespace GlobalTheory.Div.KerFil
open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference

variable {C : Type} [Field C] {w : Valuation C ℝ≥0}

theorem smul_vec_apply {r : ℕ} (b : w.valuationSubring) (v : Fin r → C) (i : Fin r) :
    (b • v) i = (b : C) * v i := rfl

theorem smul_C (b : w.valuationSubring) (z : C) : b • z = (b : C) * z := rfl

theorem smul_pi_apply {S : Type} {r : ℕ} (b : w.valuationSubring) (x : S → Fin r → C) (s : S)
    (i : Fin r) : (b • x) s i = (b : C) * x s i := rfl

theorem exists_prod_apply {S : Type} [DecidableEq S] {r : ℕ} (a : S → w.valuationSubring)
    (Fil : Submodule w.valuationSubring (S → Fin r → C))
    (hst : ∀ x ∈ Fil, unif a x ∈ Fil) (x : S → Fin r → C) (hx : x ∈ Fil) (T : Finset S) :
    ∃ y ∈ Fil, ∀ s' i, y s' i = (∏ s ∈ T, ((a s' : C) - a s)) * x s' i := by
  induction T using Finset.induction_on with
  | empty => exact ⟨x, hx, fun _ _ => by simp⟩
  | insert s0 T hs0 ih =>
    obtain ⟨y, hy, hyv⟩ := ih
    refine ⟨unif a y - a s0 • y, sub_mem (hst y hy) (Fil.smul_mem _ hy), fun s' i => ?_⟩
    rw [Finset.prod_insert hs0]
    simp only [Pi.sub_apply, unif, Pi.smul_apply, smul_eq_mul]
    rw [smul_C, hyv]
    ring

theorem single_mem_of_mem {S : Type} [Fintype S] [DecidableEq S] {r : ℕ}
    (a : S → w.valuationSubring) (Fil : Submodule w.valuationSubring (S → Fin r → C))
    (hst : ∀ x ∈ Fil, unif a x ∈ Fil) (τ : S) (x : S → Fin r → C) (hx : x ∈ Fil) :
    (Pi.single τ (diffGen a τ • x τ) : S → Fin r → C) ∈ Fil := by
  obtain ⟨y, hy, hyv⟩ := exists_prod_apply a Fil hst x hx (Finset.univ.erase τ)
  convert hy using 1
  funext s' i
  rw [hyv]
  by_cases e : s' = τ
  · subst e
    simp only [Pi.single_eq_same, smul_vec_apply, diffGen]
    push_cast
    rfl
  · rw [Finset.prod_eq_zero (i := s') (Finset.mem_erase.2 ⟨e, Finset.mem_univ _⟩) (sub_self _)]
    simp [e]

theorem diffGen_ne_zero {S : Type} [Fintype S] [DecidableEq S] (a : S → w.valuationSubring)
    (ha : Function.Injective a) (τ : S) : diffGen a τ ≠ 0 := by
  rw [diffGen, Finset.prod_ne_zero_iff]
  intro s hs e
  exact (Finset.mem_erase.1 hs).1 (ha (sub_eq_zero.1 e)).symm

end GlobalTheory.Div.KerFil

namespace GlobalTheory.Div.KerFil
open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference

variable {C : Type} [Field C] {w : Valuation C ℝ≥0}

def clearDen {S : Type} [DecidableEq S] {r : ℕ}
    (Fil : Submodule w.valuationSubring (S → Fin r → C)) (τ : S) : Submodule C (Fin r → C) where
  carrier := {v | ∃ b : w.valuationSubring, b ≠ 0 ∧ (Pi.single τ (b • v) : S → Fin r → C) ∈ Fil}
  zero_mem' := ⟨1, one_ne_zero, by simp⟩
  add_mem' := by
    rintro v v' ⟨b, hb, h⟩ ⟨b', hb', h'⟩
    refine ⟨b * b', mul_ne_zero hb hb', ?_⟩
    have : (Pi.single τ ((b * b') • (v + v')) : S → Fin r → C) =
        b' • (Pi.single τ (b • v) : S → Fin r → C) + b • (Pi.single τ (b' • v') : S → Fin r → C) := by
      funext s i
      by_cases e : s = τ
      · subst e; simp only [Pi.single_eq_same, Pi.add_apply, smul_pi_apply, smul_vec_apply]
        push_cast; ring
      · simp [e]
    rw [this]
    exact add_mem (Fil.smul_mem _ h) (Fil.smul_mem _ h')
  smul_mem' := by
    rintro c v ⟨b, hb, h⟩
    by_cases hc0 : c = 0
    · exact ⟨1, one_ne_zero, by simp [hc0]⟩
    rcases w.valuationSubring.mem_or_inv_mem c with hc | hc
    · refine ⟨b, hb, ?_⟩
      have : (Pi.single τ (b • c • v) : S → Fin r → C) =
          (⟨c, hc⟩ : w.valuationSubring) • (Pi.single τ (b • v) : S → Fin r → C) := by
        funext s i
        by_cases e : s = τ
        · subst e; simp only [Pi.single_eq_same, smul_pi_apply, Pi.smul_apply,
            smul_eq_mul, smul_C]
          ring
        · simp [e]
      rw [this]
      exact Fil.smul_mem _ h
    · have hne : (⟨c⁻¹, hc⟩ : w.valuationSubring) ≠ 0 := by
        intro e
        exact hc0 (inv_eq_zero.1 (congrArg Subtype.val e))
      refine ⟨b * ⟨c⁻¹, hc⟩, mul_ne_zero hb hne, ?_⟩
      have : (b * ⟨c⁻¹, hc⟩ : w.valuationSubring) • c • v = b • v := by
        funext i
        simp only [Pi.smul_apply, smul_eq_mul, smul_C]
        push_cast
        field_simp
      rw [this]
      exact h

end GlobalTheory.Div.KerFil
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SingleMemOfMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationOfComponentsMemEigenSpan =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationOfComponentsMemEigenSpan", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SingleMemOfMem\nimport Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.MultiplicationKernelIdentity\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemAddValuationIntegerRingNormalizedIff\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity GlobalTheory.HerbrandBridge

namespace GlobalTheory.Div.KerFil
open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference

theorem mem_of_components : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (S : Type) [Fintype S]
    [DecidableEq S] (a : S → w.valuationSubring) (N : ℕ)
    (F : Submodule w.valuationSubring (S → Fin N → C)), Function.Injective a →
    GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.IsFiltration a F → ∀ x ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N,
    (∀ s, x s ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace F s) → x ∈ F := by
  intro C _ w S _ _ a N F ha hF x hx hc
  have hle : ∀ s, filSpace F s ≤ clearDen F s := fun s => by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨y, hy, rfl⟩
    exact ⟨diffGen a s, diffGen_ne_zero a ha s, single_mem_of_mem a F hF.stable s y hy⟩
  choose b hb hbx using fun s => hle s (hc s)
  have hB : (∏ s, b s) ≠ 0 := Finset.prod_ne_zero_iff.2 fun s _ => hb s
  refine hF.saturated x hx (∏ s, b s) hB ?_
  have key : (∏ s, b s) • x = ∑ s, (∏ t ∈ Finset.univ.erase s, b t) •
      (Pi.single s (b s • x s) : S → Fin N → C) := by
    funext s' i
    rw [Finset.sum_apply, Finset.sum_apply, Finset.sum_eq_single s']
    · simp only [smul_pi_apply, Pi.single_eq_same, smul_vec_apply]
      rw [← mul_assoc, ← Subring.coe_mul, Finset.prod_erase_mul _ _ (Finset.mem_univ s')]
    · intro s _ e
      simp [smul_pi_apply, Ne.symm e]
    · simp
  rw [key]
  exact sum_mem fun s _ => F.smul_mem _ (hbx s)

end GlobalTheory.Div.KerFil
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationOfComponentsMemEigenSpan =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationPreimageIffEvalMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationPreimageIffEvalMem", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemAddValuationIntegerRingNormalizedIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity GlobalTheory.HerbrandBridge

namespace GlobalTheory.FilPreMem

theorem poly_mem (C : Type) [Field C] (w : Valuation C ℝ≥0) (v : AddValuation C (WithTop ℝ))
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (S : Type) [Fintype S] [DecidableEq S]
    (a : S → w.valuationSubring) (N : ℕ) (F : Submodule w.valuationSubring (S → Fin N → C))
    (hF : ∀ x ∈ F, GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.unif a x ∈ F) (f : Polynomial (Int0 v)) :
    ∀ y ∈ F, (fun s i => ((f.eval (liftA hv a s) : Int0 v) : C) * y s i) ∈ F := by
  induction f using Polynomial.induction_on with
  | C c =>
    intro y hy
    have := F.smul_mem (⟨(c : C), (hv _).1 c.2⟩ : w.valuationSubring) hy
    convert this using 1
    funext s i
    simp only [Polynomial.eval_C]
    rfl
  | add p q hp hq =>
    intro y hy
    have := F.add_mem (hp y hy) (hq y hy)
    convert this using 1
    funext s i
    simp only [Polynomial.eval_add, Subring.coe_add, Pi.add_apply, add_mul]
  | monomial n c h =>
    intro y hy
    have := hF _ (h y hy)
    convert this using 1
    funext s i
    simp only [GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.unif, Pi.smul_apply, smul_eq_mul, Polynomial.eval_mul,
      Polynomial.eval_C, Polynomial.eval_pow, Polynomial.eval_X, Subring.coe_mul,
      Subring.coe_pow, pow_succ, liftA]
    ring

theorem filPre_mem_iff : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (v : AddValuation C (WithTop ℝ)) (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (S : Type) [Fintype S] [DecidableEq S] (a : S → w.valuationSubring) (N : ℕ) (F : Submodule w.valuationSubring (S → Fin N → C)), (∀ x ∈ F, GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.unif a x ∈ F) → ∀ x, x ∈ (Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F}) ↔ evalVec (liftA hv a) N x ∈ F := by
  intro C _ w v hv S _ _ a N F hF x
  let T : Submodule (RS (liftA hv a)) (Fin N → RS (liftA hv a)) :=
    { carrier := {x | evalVec (liftA hv a) N x ∈ F}
      zero_mem' := by
        show evalVec (liftA hv a) N 0 ∈ F
        have : evalVec (liftA hv a) N 0 = 0 := by
          funext s i; simp [evalVec]
        rw [this]; exact F.zero_mem
      add_mem' := by
        intro x y hx hy
        show evalVec (liftA hv a) N (x + y) ∈ F
        rw [evalVec_add]; exact F.add_mem hx hy
      smul_mem' := by
        intro r x hx
        show evalVec (liftA hv a) N (r • x) ∈ F
        induction r using AdjoinRoot.induction_on with
        | ih f =>
          have := poly_mem C w v hv S a N F hF f _ hx
          convert this using 1
          funext s i
          simp [evalVec, ev] }
  constructor
  · intro hx
    have : (Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F}) ≤ T := Submodule.span_le.2 (fun y hy => hy)
    exact this hx
  · intro hx
    exact Submodule.subset_span hx

end GlobalTheory.FilPreMem
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationPreimageIffEvalMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemPolynomialEvalFreeLatticeIffExistsEval =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemPolynomialEvalFreeLatticeIffExistsEval", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemAddValuationIntegerRingNormalizedIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity GlobalTheory.HerbrandBridge

namespace GlobalTheory.EvalVecRange

def toW {C : Type} [Field C] {w : Valuation C ℝ≥0} {v : AddValuation C (WithTop ℝ)}
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) : Int0 v →+* w.valuationSubring where
  toFun x := ⟨x, (hv x).1 x.2⟩
  map_one' := rfl
  map_mul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl

def toV {C : Type} [Field C] {w : Valuation C ℝ≥0} {v : AddValuation C (WithTop ℝ)}
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) : w.valuationSubring →+* Int0 v where
  toFun x := ⟨x, (hv x).2 x.2⟩
  map_one' := rfl
  map_mul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl

theorem ev_mk {C : Type} [Field C] {v : AddValuation C (WithTop ℝ)} {S : Type} [Fintype S]
    [DecidableEq S] (b : S → Int0 v) (s : S) (g : Polynomial (Int0 v)) :
    ev b s (AdjoinRoot.mk _ g) = g.eval (b s) := by
  unfold ev
  rw [AdjoinRoot.liftAlgHom_mk]
  rfl

theorem evalVec_range : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (v : AddValuation C (WithTop ℝ))
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (S : Type) [Fintype S] [DecidableEq S]
    (a : S → w.valuationSubring) (N : ℕ) (y : S → Fin N → C),
    y ∈ GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a N ↔ ∃ x, evalVec (liftA hv a) N x = y := by
  intro C _ w v hv S _ _ a N y
  constructor
  · intro hy
    choose f hf using hy
    refine ⟨fun i => AdjoinRoot.mk _ ((f i).map (toV hv)), ?_⟩
    funext s i
    simp only [evalVec]
    rw [ev_mk, Polynomial.eval_map, hf i s]
    have : liftA hv a s = toV hv (a s) := rfl
    rw [this, Polynomial.eval₂_hom]
    rfl
  · rintro ⟨x, rfl⟩ i
    obtain ⟨g, hg⟩ := AdjoinRoot.mk_surjective (x i)
    refine ⟨g.map (toW hv), fun s => ?_⟩
    simp only [evalVec]
    rw [← hg, ev_mk, Polynomial.eval_map]
    have : a s = toW hv (liftA hv a s) := rfl
    rw [this, Polynomial.eval₂_hom]
    rfl

end GlobalTheory.EvalVecRange
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemPolynomialEvalFreeLatticeIffExistsEval =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationHerbrandEigenspace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationHerbrandEigenspace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemAddValuationIntegerRingNormalizedIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenSublatticeFreeLatticeIffEval\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvalQuotientRingVectorAtPointsInjective\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.MultiplicationKernelIdentity\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HerbrandQuotientEigenDet\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LieEigenSublatticeIffEvalFlat\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationOfComponentsMemEigenSpan\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemFiltrationPreimageIffEvalMem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemPolynomialEvalFreeLatticeIffExistsEval\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity

namespace GlobalTheory.HerbrandBridge
open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference (freeLattice unif IsFiltration filSpace eigenSub eigenQuot lie quotMap addVal)

theorem filPre_mem : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (v : AddValuation C (WithTop ℝ))
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (S : Type) [Fintype S] [DecidableEq S]
    (a : S → w.valuationSubring) (N : ℕ) (F : Submodule w.valuationSubring (S → Fin N → C)),
    (∀ x ∈ F, unif a x ∈ F) →
    ∀ x, x ∈ (Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F}) ↔ evalVec (liftA hv a) N x ∈ F :=
  _root_.GlobalTheory.FilPreMem.filPre_mem_iff

theorem evalVec_range : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (v : AddValuation C (WithTop ℝ))
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (S : Type) [Fintype S] [DecidableEq S]
    (a : S → w.valuationSubring) (N : ℕ) (y : S → Fin N → C),
    y ∈ freeLattice a N ↔ ∃ x, evalVec (liftA hv a) N x = y :=
  _root_.GlobalTheory.EvalVecRange.evalVec_range

theorem evalVec_injective : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (v : AddValuation C (WithTop ℝ))
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (S : Type) [Fintype S] [DecidableEq S]
    (a : S → w.valuationSubring) (N : ℕ), Function.Injective a →
    Function.Injective (evalVec (liftA hv a) N) :=
  _root_.GlobalTheory.HerbrandBridge.evalVec_injective_of_injective

theorem mem_of_components : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (S : Type) [Fintype S]
    [DecidableEq S] (a : S → w.valuationSubring) (N : ℕ)
    (F : Submodule w.valuationSubring (S → Fin N → C)), Function.Injective a → IsFiltration a F →
    ∀ x ∈ freeLattice a N, (∀ s, x s ∈ filSpace F s) → x ∈ F :=
  _root_.GlobalTheory.Div.KerFil.mem_of_components

end GlobalTheory.HerbrandBridge

namespace GlobalTheory.HerbrandBridge
open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference (freeLattice unif IsFiltration filSpace eigenSub eigenQuot lie quotMap addVal
  DetRel IsLatticeBasis HasVal)

variable {C : Type} [Field C]

theorem span_eq_of_basis {w : Valuation C ℝ≥0} {v : AddValuation C (WithTop ℝ)}
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) {E E' W : Type} [AddCommGroup E]
    [Module (Int0 v) E] [AddCommGroup E'] [Module (Int0 v) E'] [AddCommGroup W] [Module C W]
    [Module w.valuationSubring W] [IsScalarTower w.valuationSubring C W] {ι : Type} [Fintype ι]
    (M : Submodule (Int0 v) E) (b : Module.Basis ι (Int0 v) M) (π : E' →ₗ[Int0 v] E) (g : E' → W)
    (hadd : ∀ x y, g (x + y) = g x + g y) (hsmul : ∀ (c : Int0 v) x, g (c • x) = (c : C) • g x)
    (hwd : ∀ x x', π x = π x' → g x = g x') (xs : ι → E') (hxs : ∀ i, π (xs i) = b i)
    (X : Submodule w.valuationSubring W) (hX : ∀ y, y ∈ X ↔ ∃ x, π x ∈ M ∧ g x = y) :
    Submodule.span w.valuationSubring (Set.range fun i => g (xs i)) = X := by
  let gh : E' →+ W := AddMonoidHom.mk' g hadd
  apply le_antisymm
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨i, rfl⟩
    exact (hX _).2 ⟨xs i, by rw [hxs i]; exact (b i).2, rfl⟩
  · intro y hy
    obtain ⟨x, hxM, rfl⟩ := (hX y).1 hy
    have hrep := b.sum_repr ⟨π x, hxM⟩
    have hπ : π x = π (∑ i, b.repr ⟨π x, hxM⟩ i • xs i) := by
      have h2 : π x = ∑ i, b.repr ⟨π x, hxM⟩ i • (b i : E) := by
        have := congrArg Subtype.val hrep
        simp only [Submodule.coe_sum, Submodule.coe_smul] at this
        exact this.symm

      rw [map_sum]
      conv_lhs => rw [h2]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [map_smul, hxs i]
    rw [hwd _ _ hπ]
    have : g (∑ i, b.repr ⟨π x, hxM⟩ i • xs i) = ∑ i, ((b.repr ⟨π x, hxM⟩ i : Int0 v) : C) • g (xs i) := by
      change gh _ = _

      rw [map_sum]
      exact Finset.sum_congr rfl fun i _ => hsmul _ _
    rw [this]
    refine Submodule.sum_mem _ fun i _ => ?_
    have hc : ((b.repr ⟨π x, hxM⟩ i : Int0 v) : C) ∈ w.valuationSubring := (hv _).1 (Subtype.prop _)
    have : ((b.repr ⟨π x, hxM⟩ i : Int0 v) : C) • g (xs i) =
        (⟨_, hc⟩ : w.valuationSubring) • g (xs i) := by
      rw [algebra_compatible_smul C (⟨_, hc⟩ : w.valuationSubring) (g (xs i))]; rfl
    rw [this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)

theorem linearIndependent_mkQ {p q : ℕ} (F : Submodule C (Fin (p + q) → C))
    (hF : Module.finrank C F = q) (u : Fin p → Fin (p + q) → C) (m : Fin q → Fin (p + q) → C)
    (hm : ∀ i, m i ∈ F) (hdet : (Matrix.of (Fin.append u m)).det ≠ 0) :
    LinearIndependent C (fun i => F.mkQ (u i)) := by
  have hli := Matrix.linearIndependent_rows_of_det_ne_zero hdet
  have hli' : LinearIndependent C (Fin.append u m) := hli
  have hmli : LinearIndependent C m := by
    have := hli'.comp (Fin.natAdd p) (Fin.natAdd_injective q p)
    convert this using 1
    funext i; simp
  have hspan : Submodule.span C (Set.range m) = F := by
    apply Submodule.eq_of_le_of_finrank_eq
    · exact Submodule.span_le.2 (by rintro _ ⟨i, rfl⟩; exact hm i)
    · rw [finrank_span_eq_card hmli, Fintype.card_fin, hF]
  rw [linearIndependent_iff']
  intro s c hs i hi
  have h1 : ∑ j ∈ s, c j • u j ∈ F := by
    have : F.mkQ (∑ j ∈ s, c j • u j) = 0 := by

      rw [map_sum]; simp only [map_smul]; exact hs
    exact (Submodule.Quotient.mk_eq_zero F).1 this
  rw [← hspan, Submodule.mem_span_range_iff_exists_fun] at h1
  obtain ⟨d, hd⟩ := h1
  let c' : Fin (p + q) → C := Fin.append (fun j => if j ∈ s then c j else 0) (fun k => - d k)
  have hsum : ∑ k, c' k • Fin.append u m k = 0 := by
    rw [Fin.sum_univ_add]
    simp only [c', Fin.append_left, Fin.append_right, neg_smul, Finset.sum_neg_distrib]
    rw [hd]
    simp only [ite_smul, zero_smul]
    rw [Finset.sum_ite_mem, Finset.univ_inter, add_neg_cancel]
  have := (Fintype.linearIndependent_iff.1 hli') c' hsum (Fin.castAdd q i)
  simpa [c', hi] using this

end GlobalTheory.HerbrandBridge

namespace GlobalTheory.HerbrandBridge
open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference (freeLattice unif IsFiltration filSpace eigenSub eigenQuot lie quotMap addVal
  DetRel IsLatticeBasis HasVal)

variable {C : Type} [Field C] {S : Type} [Fintype S] [DecidableEq S]

theorem eigenQuot_iff {w : Valuation C ℝ≥0} {v : AddValuation C (WithTop ℝ)}
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (a : S → w.valuationSubring) (N : ℕ)
    (F : Submodule w.valuationSubring (S → Fin N → C)) (hle : F ≤ freeLattice a N)
    (hrange : ∀ y, y ∈ freeLattice a N ↔ ∃ x, evalVec (liftA hv a) N x = y)
    (hmem : ∀ x, x ∈ (Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F}) ↔ evalVec (liftA hv a) N x ∈ F) (s : S)
    (y : Fin N → C) :
    y ∈ eigenQuot (W := fun _ => Fin N → C) F s ↔
      ∃ z ∈ eigQuot (liftA hv a) ((Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F})) s, (fun i => (z i : C)) = y := by
  constructor
  · rintro ⟨x, hx, rfl⟩
    obtain ⟨z, hz⟩ := (hrange x).1 (hle hx)
    refine ⟨GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.comp (liftA hv a) N s z, ⟨z, (hmem z).2 (hz ▸ hx), rfl⟩, ?_⟩
    rw [comp_coe, hz]; rfl
  · rintro ⟨_, ⟨z, hz, rfl⟩, rfl⟩
    exact ⟨_, (hmem z).1 hz, rfl⟩

theorem eigRank_eq {w : Valuation C ℝ≥0} {v : AddValuation C (WithTop ℝ)}
    (hv : ∀ x, x ∈ Int0 v ↔ x ∈ w.valuationSubring) (a : S → w.valuationSubring) (N : ℕ)
    (F : Submodule w.valuationSubring (S → Fin N → C)) (hle : F ≤ freeLattice a N)
    (hrange : ∀ y, y ∈ freeLattice a N ↔ ∃ x, evalVec (liftA hv a) N x = y)
    (hmem : ∀ x, x ∈ (Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F}) ↔ evalVec (liftA hv a) N x ∈ F) (s : S) :
    eigRank v (liftA hv a) ((Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F})) s = Module.finrank C (filSpace F s) := by
  have : ((fun (x : Fin N → Int0 v) (i : Fin N) => (x i : C)) ''
      (eigQuot (liftA hv a) ((Submodule.span (RS (liftA hv a)) {x : Fin _ → RS (liftA hv a) | (fun s i => ↑(ev (liftA hv a) s (x i))) ∈ F})) s : Set (Fin N → Int0 v))) =
      (eigenQuot (W := fun _ => Fin N → C) F s : Set (Fin N → C)) := by
    ext y
    simp only [Set.mem_image, SetLike.mem_coe]
    rw [eigenQuot_iff hv a N F hle hrange hmem s y]
  unfold eigRank filSpace
  rw [this]

end GlobalTheory.HerbrandBridge

namespace GlobalTheory.HerbrandBridge
open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference (freeLattice unif IsFiltration filSpace eigenSub eigenQuot lie quotMap addVal
  DetRel IsLatticeBasis HasVal)

variable {C : Type} [Field C] {S : Type} [Fintype S] [DecidableEq S]

theorem yExp_eq (w : Valuation C ℝ≥0) (ℓ : C) (h0 : 0 < w ℓ) (h1 : w ℓ < 1)
    (hv : ∀ x, x ∈ Int0 (toAddVal w ℓ h0 h1) ↔ x ∈ w.valuationSubring)
    (a : S → w.valuationSubring) (ha : Function.Injective a) {N : ℕ}
    (F : Submodule (RS (liftA hv a)) (Fin N → RS (liftA hv a))) (G : S → Submodule C (Fin N → C))
    (hrk : ∀ s, eigRank (toAddVal w ℓ h0 h1) (liftA hv a) F s = Module.finrank C (G s)) (τ : S) :
    yExp (toAddVal w ℓ h0 h1) (liftA hv a) F τ =
      ((∑ s ∈ Finset.univ.erase τ, (Module.finrank C (G s) : ℝ) *
        addVal w ℓ ((a τ : C) - (a s : C)) : ℝ) : WithTop ℝ) := by
  unfold yExp
  rw [WithTop.coe_sum]
  refine Finset.sum_congr rfl fun s hs => ?_
  rw [hrk s]
  have hne : (a s : C) - (a τ : C) ≠ 0 := by
    intro h
    exact (Finset.ne_of_mem_erase hs) (ha (Subtype.ext (sub_eq_zero.1 h)))
  change _ • toAddVal w ℓ h0 h1 ((a s : C) - (a τ : C)) = _
  rw [toAddVal_of_ne _ _ _ _ hne, ← WithTop.coe_nsmul, nsmul_eq_mul]
  congr 2
  unfold addVal
  rw [w.map_sub_swap]

end GlobalTheory.HerbrandBridge

namespace GlobalTheory.HerbrandBridge
open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference (freeLattice unif IsFiltration filSpace eigenSub eigenQuot lie quotMap addVal
  DetRel IsLatticeBasis HasVal)

theorem exForm : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (ℓ : C), 0 < w ℓ → w ℓ < 1 →
    ∀ (S : Type) [Fintype S] [DecidableEq S] (a : S → w.valuationSubring) (p q : ℕ)
    (Fil : Submodule w.valuationSubring (S → Fin (p + q) → C)) (τ : S), Function.Injective a →
    GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.IsFiltration a Fil →
    Module.finrank C (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace Fil τ) = q →
    GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.DetRel w ℓ (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace Fil τ)
      (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenSub (W := fun _ => Fin (p + q) → C)
        (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a (p + q)) τ)
      (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenSub
        (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.lie (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a (p + q)) Fil) τ)
      (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenQuot (W := fun _ => Fin (p + q) → C) Fil τ)
      (∑ s ∈ Finset.univ.erase τ, (Module.finrank C (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace Fil s) : ℝ) *
        GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.addVal w ℓ ((a τ : C) - (a s : C))) := by
  intro C _ w ℓ h0 h1 S _ _ a p q Fil τ ha hF hq
  have hv := mem_addValuationIntegerRing_normalized_iff w ℓ h0 h1
  have ha' : Function.Injective (liftA hv a) := fun s t h =>
    ha (Subtype.ext (congrArg (fun z : Int0 (toAddVal w ℓ h0 h1) => (z : C)) h))
  let P := filPre (liftA hv a) (N := p + q) Fil
  have hmem (x : Fin (p + q) → RS (liftA hv a)) : x ∈ P ↔ evalVec (liftA hv a) (p + q) x ∈ Fil :=
    _root_.GlobalTheory.FilPreMem.filPre_mem_iff C w _ hv S a (p + q) Fil hF.stable x
  have hrange := _root_.GlobalTheory.EvalVecRange.evalVec_range C w _ hv S a (p + q)
  have hinj := _root_.GlobalTheory.HerbrandBridge.evalVec_injective_of_injective C w _ hv S a (p + q) ha
  have hcomp := _root_.GlobalTheory.Div.KerFil.mem_of_components C w S a (p + q) Fil ha hF
  have hsat : ∀ (c : Int0 (toAddVal w ℓ h0 h1)) (x : Fin (p + q) → RS (liftA hv a)), c ≠ 0 →
      c • x ∈ P → x ∈ P := by
    intro c x hc hcx
    rw [hmem] at hcx ⊢
    have hc' : (c : C) ∈ w.valuationSubring := (hv _).1 c.2
    refine hF.saturated _ ((hrange _).2 ⟨x, rfl⟩) ⟨(c : C), hc'⟩ ?_ ?_
    · intro h
      apply hc
      exact Subtype.ext (congrArg (fun z : w.valuationSubring => (z : C)) h)
    · convert hcx using 1
      rw [evalVec_smul]
      rfl
  have hrk (s : S) : eigRank (toAddVal w ℓ h0 h1) (liftA hv a) P s =
      Module.finrank C (filSpace Fil s) :=
    eigRank_eq hv a (p + q) Fil hF.le hrange hmem s
  have hy := yExp_eq w ℓ h0 h1 hv a ha (N := p + q) P (filSpace Fil) hrk τ
  obtain ⟨⟨p', hp', ⟨h⟩, ⟨l⟩, ⟨f⟩, hDet⟩, -, -⟩ :=
    _root_.GlobalTheory.HerbrandAlg.herbrandDet C (toAddVal w ℓ h0 h1) S (liftA hv a) ha' (p + q) P hsat τ
  have hq' : eigRank (toAddVal w ℓ h0 h1) (liftA hv a) P τ = q :=
    (hrk τ).trans hq
  have hpp : p = p' := by omega
  subst p'

  choose x hx using fun i : Fin p => Submodule.Quotient.mk_surjective P
    (l i : (Fin (p + q) → RS (liftA hv a)) ⧸ P)
  let e : Fin (p + q) ≃ Fin p ⊕ Fin (eigRank (toAddVal w ℓ h0 h1) (liftA hv a) P τ) :=
    finSumFinEquiv.symm.trans (Equiv.sumCongr (Equiv.refl _) (finCongr hq'.symm))
  obtain ⟨c, hc, hne, hdet⟩ := hDet h l x hx f e
  let X : Fin (p + q) → Fin (p + q) → C := fun k i =>
    ((GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.comp (liftA hv a) (p + q) τ (h k : Fin (p + q) → RS (liftA hv a)) i : Int0 (toAddVal w ℓ h0 h1)) : C)
  let U : Fin p → Fin (p + q) → C := fun k i => ((GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.comp (liftA hv a) (p + q) τ (x k) i : Int0 (toAddVal w ℓ h0 h1)) : C)
  let fb := f.reindex (finCongr hq')
  let M : Fin q → Fin (p + q) → C := fun k i => ((fb k : Fin (p + q) → Int0 (toAddVal w ℓ h0 h1)) i : C)
  have hXmat : Matrix.of X = (Matrix.of fun k => GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.comp (liftA hv a) (p + q) τ
      (h k : Fin (p + q) → RS (liftA hv a))).map (Int0 (toAddVal w ℓ h0 h1)).subtype := rfl
  have hAmat : Matrix.of (Fin.append U M) = (Matrix.of fun k => Sum.elim
      (fun i => GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.comp (liftA hv a) (p + q) τ (x i)) (fun i => (f i : Fin (p + q) → Int0 (toAddVal w ℓ h0 h1))) (e k)).map
      (Int0 (toAddVal w ℓ h0 h1)).subtype := by
    ext k j
    refine Fin.addCases (fun i => ?_) (fun i => ?_) k
    · simp [e, U]
    · simp [e, M, fb, Module.Basis.reindex_apply]
  have hdet' : (Matrix.of X).det = c * (Matrix.of (Fin.append U M)).det := by
    rw [hXmat, hAmat, ← RingHom.mapMatrix_apply, ← RingHom.mapMatrix_apply, ← RingHom.map_det,
      ← RingHom.map_det]
    exact hdet
  have hc0 : c ≠ 0 := by
    intro h0'
    rw [h0', AddValuation.map_zero, hy] at hc
    exact WithTop.top_ne_coe hc
  have hAne : (Matrix.of (Fin.append U M)).det ≠ 0 := by
    rw [hAmat, ← RingHom.mapMatrix_apply, ← RingHom.map_det]
    intro h'
    exact hne (Subtype.ext h')
  have hXne : (Matrix.of X).det ≠ 0 := by
    rw [hdet']
    exact mul_ne_zero hc0 hAne
  have hli : LinearIndependent C (Fin.append U M) :=
    Matrix.linearIndependent_rows_of_det_ne_zero hAne
  have hMli : LinearIndependent C M := by
    have := hli.comp (Fin.natAdd p) (Fin.natAdd_injective q p)
    convert this using 1
    funext i; simp
  have hMq : ∀ k, M k ∈ eigenQuot (W := fun _ => Fin (p + q) → C) Fil τ := fun k =>
    (eigenQuot_iff hv a (p + q) Fil hF.le hrange hmem τ (M k)).2 ⟨_, (fb k).2, rfl⟩
  have hMF : ∀ k, M k ∈ filSpace Fil τ := fun k => Submodule.subset_span (hMq k)

  refine ⟨X, U, M, c, ⟨Matrix.linearIndependent_rows_of_det_ne_zero hXne, ?_⟩,
    ⟨linearIndependent_mkQ (filSpace Fil τ) hq U M hMF hAne, ?_⟩, ⟨hMli, ?_⟩, hMF,
    ⟨hc0, ?_⟩, hdet'⟩
  · refine span_eq_of_basis hv (GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.eigSub (liftA hv a) τ (Fin (p + q) → RS (liftA hv a))) h
      LinearMap.id (fun z i => ((GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.comp (liftA hv a) (p + q) τ z i : Int0 (toAddVal w ℓ h0 h1)) : C))
      (fun z z' => by funext i; simp only [map_add (f := _), Pi.add_apply]; rfl)
      (fun c z => by funext i; simp only [map_smul, Pi.smul_apply, smul_eq_mul]; rfl)
      (fun z z' hz => by rw [show z = z' from hz])
      (fun k => (h k : Fin (p + q) → RS (liftA hv a))) (fun k => rfl) _ (fun y => ?_)
    rw [_root_.GlobalTheory.EigenSubEval.eigenSub_iff_eval C w _ hv S a (p + q) τ ha hinj hrange y]
    simp only [LinearMap.id_apply]
  · refine span_eq_of_basis hv (GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.eigSub (liftA hv a) τ ((Fin (p + q) → RS (liftA hv a)) ⧸ P)) l (proj (liftA hv a) P)
      (fun z => quotMap (w := w) (filSpace Fil τ)
        (fun i => ((GlobalTheory.IndefiniteRowSideFullHecke.MultiplicationKernelIdentity.comp (liftA hv a) (p + q) τ z i : Int0 (toAddVal w ℓ h0 h1)) : C)))
      (fun z z' => by
        rw [← map_add (f := _)]; congr 1; funext i; simp only [map_add (f := _), Pi.add_apply]; rfl)
      (fun c z => by
        show (filSpace Fil τ).mkQ _ = (c : C) • (filSpace Fil τ).mkQ _
        rw [← map_smul]; congr 1; funext i; simp only [map_smul, Pi.smul_apply, smul_eq_mul]; rfl)
      (fun z z' hz => ?_) x hx _ (fun y => ?_)
    · show (filSpace Fil τ).mkQ _ = (filSpace Fil τ).mkQ _
      rw [Submodule.mkQ_apply, Submodule.mkQ_apply, Submodule.Quotient.eq]
      have h2 : z - z' ∈ P :=
        (Submodule.Quotient.eq P).1 hz
      rw [hmem, evalVec_sub] at h2
      refine Submodule.subset_span ⟨_, h2, ?_⟩
      funext i
      rfl
    · exact _root_.GlobalTheory.lie_eigenSub_iff_flat C w _ hv S a (p + q) Fil τ ha hF hinj hrange hmem hcomp y
  · exact span_eq_of_basis hv (eigQuot (liftA hv a) P τ) fb
      LinearMap.id (fun z i => ((z i : Int0 (toAddVal w ℓ h0 h1)) : C))
      (fun z z' => by funext i; rfl) (fun c z => by funext i; rfl)
      (fun z z' hz => congrArg (fun z i => (z i : C)) hz)
      (fun k => (fb k : Fin (p + q) → Int0 (toAddVal w ℓ h0 h1))) (fun _ => rfl)
      (eigenQuot (W := fun _ => Fin (p + q) → C) Fil τ)
      (eigenQuot_iff hv a (p + q) Fil hF.le hrange hmem τ)
  · rw [hy, toAddVal_of_ne _ _ _ _ hc0] at hc
    exact WithTop.coe_injective hc

end GlobalTheory.HerbrandBridge
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationHerbrandEigenspace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationOfLsmulShift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationOfLsmulShift", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal

namespace GlobalTheory

open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference

theorem addVal_inv_pow_mul {C : Type} [Field C] (w : Valuation C ℝ≥0) (ℓ : C)
    (h0 : 0 < w ℓ) (h1 : w ℓ < 1) {d c : C} (hd : d ≠ 0) (hc : c ≠ 0) (n : ℕ) :
    addVal w ℓ (d⁻¹ ^ n * c) = addVal w ℓ c - (n : ℝ) * addVal w ℓ d := by
  have hwd : ((w d : ℝ≥0) : ℝ) ≠ 0 := by
    exact_mod_cast (w.ne_zero_iff.2 hd)
  have hwc : ((w c : ℝ≥0) : ℝ) ≠ 0 := by
    exact_mod_cast (w.ne_zero_iff.2 hc)
  have hl : Real.log ((w ℓ : ℝ≥0) : ℝ) ≠ 0 := by
    refine (Real.log_neg ?_ ?_).ne
    · exact_mod_cast h0
    · exact_mod_cast h1
  unfold addVal
  rw [map_mul, map_pow, map_inv₀]
  push_cast
  rw [Real.log_mul (pow_ne_zero _ (inv_ne_zero hwd)) hwc, Real.log_pow, Real.log_inv]
  field_simp
  ring

theorem detRel_of_detRel_lsmul (C : Type) [Field C] (w : Valuation C ℝ≥0) (ℓ : C)
    (h0 : 0 < w ℓ) (h1 : w ℓ < 1) (p q : ℕ) (F : Submodule C (Fin (p + q) → C))
    (X0 : Submodule w.valuationSubring (Fin (p + q) → C))
    (L : Submodule w.valuationSubring ((Fin (p + q) → C) ⧸ F))
    (M : Submodule w.valuationSubring (Fin (p + q) → C)) (y : ℝ) (d : w.valuationSubring)
    (hd : d ≠ 0)
    (h : DetRel w ℓ F (X0.map (LinearMap.lsmul w.valuationSubring (Fin (p + q) → C) d)) L M y) :
    DetRel w ℓ F X0 L M (y - ((p + q : ℕ) : ℝ) * addVal w ℓ (d : C)) := by
  obtain ⟨x, u, m, c, hx, hu, hm, hmF, ⟨hc0, hcy⟩, hdet⟩ := h
  have hdC : (d : C) ≠ 0 := fun e => hd (Subtype.ext e)
  have hsm : ∀ v : Fin (p + q) → C, d • v = (d : C) • v := fun v => rfl
  have hinj : Function.Injective (LinearMap.lsmul w.valuationSubring (Fin (p + q) → C) d) := by
    intro a b hab
    simp only [LinearMap.lsmul_apply, hsm] at hab
    exact smul_right_injective _ hdC hab
  refine ⟨fun i => (d : C)⁻¹ • x i, u, m, (d : C)⁻¹ ^ (p + q) * c, ⟨?_, ?_⟩, hu, hm, hmF,
    ⟨mul_ne_zero (pow_ne_zero _ (inv_ne_zero hdC)) hc0, ?_⟩, ?_⟩
  · exact hx.1.units_smul (fun _ => Units.mk0 _ (inv_ne_zero hdC))
  · apply Submodule.map_injective_of_injective hinj
    rw [← hx.2, Submodule.map_span, ← Set.range_comp]
    congr 2
    funext i
    simp [hsm, smul_smul, hdC]
  · rw [addVal_inv_pow_mul w ℓ h0 h1 hdC hc0, hcy]
  · have : Matrix.of (fun i => (d : C)⁻¹ • x i) = (d : C)⁻¹ • Matrix.of x := by
      ext i j; simp
    rw [this, Matrix.det_smul, Fintype.card_fin, hdet, mul_assoc]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationOfLsmulShift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSpanOfIsLatticeBasis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSpanOfIsLatticeBasis", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal

namespace GlobalTheory.DetRelCompare

open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference

section Core

variable {C : Type} [Field C]

theorem eq_sum_rows {n : ℕ} (U : Fin n → Fin n → C) (h : (Matrix.of U).det ≠ 0)
    (f : Fin n → C) : ∃ γ : Fin n → C, f = ∑ s, γ s • U s := by
  refine ⟨Matrix.vecMul f (Matrix.of U)⁻¹, ?_⟩
  have hu : IsUnit (Matrix.of U).det := isUnit_iff_ne_zero.mpr h
  have key : Matrix.vecMul (Matrix.vecMul f (Matrix.of U)⁻¹) (Matrix.of U) = f := by
    rw [Matrix.vecMul_vecMul, Matrix.nonsing_inv_mul _ hu, Matrix.vecMul_one]
  funext j
  conv_lhs => rw [← key]
  simp [Matrix.vecMul, dotProduct, Finset.sum_apply]

theorem exists_eq_sum_of_mem {p q : ℕ} (F : Submodule C (Fin (p + q) → C))
    (u0 : Fin p → Fin (p + q) → C) (m0 : Fin q → Fin (p + q) → C)
    (hli : LinearIndependent C fun i => F.mkQ (u0 i)) (hm0 : ∀ k, m0 k ∈ F)
    (hN : (Matrix.of (Fin.append u0 m0)).det ≠ 0) (f : Fin (p + q) → C) (hf : f ∈ F) :
    ∃ β : Fin q → C, f = ∑ k, β k • m0 k := by
  obtain ⟨γ, hγ⟩ := eq_sum_rows _ hN f
  rw [Fin.sum_univ_add] at hγ
  simp only [Fin.append_left, Fin.append_right] at hγ
  have hz : ∑ i, γ (Fin.castAdd q i) • F.mkQ (u0 i) = 0 := by
    have h1 := congrArg F.mkQ hγ
    have hf0 : F.mkQ f = 0 := by simpa using hf
    have hm : ∑ k, γ (Fin.natAdd p k) • F.mkQ (m0 k) = 0 :=
      Finset.sum_eq_zero fun k _ => by simp [hm0 k]

    rw [hf0, map_add (f := _), map_sum, map_sum] at h1
    simp only [map_smul] at h1
    rw [hm, add_zero] at h1
    exact h1.symm
  have h0 := Fintype.linearIndependent_iff.1 hli _ hz
  exact ⟨fun k => γ (Fin.natAdd p k), by rw [hγ]; simp [h0]⟩

theorem det_append_eq {p q : ℕ} (F : Submodule C (Fin (p + q) → C))
    (u u0 : Fin p → Fin (p + q) → C) (m m0 : Fin q → Fin (p + q) → C)
    (A : Matrix (Fin p) (Fin p) C) (B : Matrix (Fin q) (Fin q) C)
    (hu : ∀ i, F.mkQ (u i) = ∑ j, A i j • F.mkQ (u0 j))
    (hm : ∀ i, m i = ∑ j, B i j • m0 j)
    (hli : LinearIndependent C fun i => F.mkQ (u0 i))
    (hm0 : ∀ k, m0 k ∈ F) (hN : (Matrix.of (Fin.append u0 m0)).det ≠ 0) :
    (Matrix.of (Fin.append u m)).det = A.det * B.det * (Matrix.of (Fin.append u0 m0)).det := by
  have hmem : ∀ i, u i - ∑ j, A i j • u0 j ∈ F := by
    intro i
    have : F.mkQ (u i - ∑ j, A i j • u0 j) = 0 := by

      rw [map_sub, map_sum, hu i]; simp only [map_smul]; exact sub_self _
    rwa [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at this
  choose β hβ using fun i => exists_eq_sum_of_mem F u0 m0 hli hm0 hN _ (hmem i)
  have key : (Matrix.of (Fin.append u m)).submatrix finSumFinEquiv finSumFinEquiv =
      Matrix.fromBlocks A (Matrix.of β) 0 B *
        (Matrix.of (Fin.append u0 m0)).submatrix finSumFinEquiv finSumFinEquiv := by
    ext r c
    rw [Matrix.mul_apply, Fintype.sum_sum_type]
    rcases r with i | k
    · have hi : u i = ∑ j, A i j • u0 j + ∑ k, β i k • m0 k := by rw [← hβ i]; abel
      simp [Matrix.fromBlocks, hi, Finset.sum_apply]
    · simp [Matrix.fromBlocks, hm k, Finset.sum_apply]
  rw [← Matrix.det_submatrix_equiv_self finSumFinEquiv, key, Matrix.det_mul,
    Matrix.det_fromBlocks_zero₂₁, Matrix.det_submatrix_equiv_self]

theorem comp_sum {W : Type} [AddCommGroup W] [Module C W] {n k l : ℕ} (a : Fin n → W)
    (b : Fin k → W) (c : Fin l → W) (P : Matrix (Fin k) (Fin n) C)
    (Q : Matrix (Fin l) (Fin k) C) (hb : ∀ i, b i = ∑ j, P i j • a j)
    (hc : ∀ i, c i = ∑ j, Q i j • b j) : ∀ i, c i = ∑ j, (Q * P) i j • a j := by
  intro i
  simp only [hc i, hb, Finset.smul_sum, smul_smul, Matrix.mul_apply, Finset.sum_smul]
  exact Finset.sum_comm

end Core

section Lattice

variable {C : Type} [Field C] {w : Valuation C ℝ≥0}

theorem coeffs {W : Type} [AddCommGroup W] [Module C W] [Module w.valuationSubring W]
    [IsScalarTower w.valuationSubring C W] {n k : ℕ} (a : Fin n → W) (b : Fin k → W)
    (h : ∀ i, b i ∈ Submodule.span w.valuationSubring (Set.range a)) :
    ∃ P : Matrix (Fin k) (Fin n) w.valuationSubring,
      ∀ i, b i = ∑ j, algebraMap w.valuationSubring C (P i j) • a j := by
  choose P hP using fun i =>
    (Submodule.mem_span_range_iff_exists_fun w.valuationSubring).1 (h i)
  exact ⟨Matrix.of P, fun i => by
    rw [← hP i]; exact Finset.sum_congr rfl fun j _ => (algebraMap_smul C (P i j) (a j)).symm⟩

theorem mem_span_of_isLatticeBasis {W : Type} [AddCommGroup W] [Module C W]
    [Module w.valuationSubring W] [IsScalarTower w.valuationSubring C W] {n k : ℕ}
    {a : Fin n → W} {b : Fin k → W} {Y : Submodule w.valuationSubring W}
    (ha : IsLatticeBasis w a Y) (hb : IsLatticeBasis w b Y) (i : Fin k) :
    b i ∈ Submodule.span w.valuationSubring (Set.range a) := by
  rw [ha.2, ← hb.2]; exact Submodule.subset_span ⟨i, rfl⟩

theorem transition {W : Type} [AddCommGroup W] [Module C W] [Module w.valuationSubring W]
    [IsScalarTower w.valuationSubring C W] {n : ℕ} (a b : Fin n → W)
    (Y : Submodule w.valuationSubring W) (ha : IsLatticeBasis w a Y)
    (hb : IsLatticeBasis w b Y) :
    ∃ P : Matrix (Fin n) (Fin n) C, (∀ i, b i = ∑ j, P i j • a j) ∧ w P.det = 1 := by
  obtain ⟨P, hP⟩ := coeffs a b (mem_span_of_isLatticeBasis ha hb)
  obtain ⟨Q, hQ⟩ := coeffs b a (mem_span_of_isLatticeBasis hb ha)
  have hQP := comp_sum a b a (P.map (algebraMap w.valuationSubring C))
    (Q.map (algebraMap w.valuationSubring C)) hP hQ
  have hone : (Q.map (algebraMap w.valuationSubring C)) * (P.map (algebraMap w.valuationSubring C))
      = 1 := by
    ext i j
    have h := Fintype.linearIndependent_iff.1 ha.1
      (fun j => ((Q.map (algebraMap w.valuationSubring C)) *
        (P.map (algebraMap w.valuationSubring C))) i j - (1 : Matrix (Fin n) (Fin n) C) i j)
      (by
        simp only [sub_smul, Finset.sum_sub_distrib]
        rw [← hQP i]
        simp [Matrix.one_apply])
      j
    exact sub_eq_zero.1 h
  have hdet := congrArg Matrix.det hone
  rw [Matrix.det_mul, Matrix.det_one] at hdet
  have hle : ∀ R : Matrix (Fin n) (Fin n) w.valuationSubring,
      w (R.map (algebraMap w.valuationSubring C)).det ≤ 1 := by
    intro R
    rw [← RingHom.mapMatrix_apply, ← RingHom.map_det, ValuationSubring.algebraMap_apply]
    exact (w.mem_valuationSubring_iff _).1 R.det.2
  refine ⟨P.map (algebraMap w.valuationSubring C), fun i => hP i, le_antisymm (hle P) ?_⟩
  calc (1 : ℝ≥0) = w (Q.map (algebraMap w.valuationSubring C)).det *
        w (P.map (algebraMap w.valuationSubring C)).det := by rw [← map_mul, hdet, map_one]
    _ ≤ w (P.map (algebraMap w.valuationSubring C)).det :=
        mul_le_of_le_one_left (by positivity) (hle Q)

end Lattice

end GlobalTheory.DetRelCompare

namespace GlobalTheory.DetRelCompare

open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference

end GlobalTheory.DetRelCompare
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSpanOfIsLatticeBasis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PiEigenSublatticeFreeEqDifferentScaled =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PiEigenSublatticeFreeEqDifferentScaled", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\npublic import Mathlib.CategoryTheory.Category.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal

namespace GlobalTheory.EigenSubFree

open GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference Polynomial

theorem prod_X_sub_C_dvd {O ι : Type} [CommRing O] [IsDomain O] (T : Finset ι)
    (c : ι → O) (hc : Set.InjOn c (↑T : Set ι)) (f : Polynomial O)
    (hf : ∀ j ∈ T, f.eval (c j) = 0) :
    (∏ i ∈ T, (X - C (c i))) ∣ f := by
  by_cases h0 : f = 0
  · simp [h0]
  have hnd : (T.val.map c).Nodup :=
    Multiset.Nodup.map_on (fun x hx y hy h => hc hx hy h) T.nodup
  have hle : T.val.map c ≤ f.roots := by
    rw [Multiset.le_iff_subset hnd]
    intro b hb
    obtain ⟨j, hj, rfl⟩ := Multiset.mem_map.1 hb
    exact (Polynomial.mem_roots h0).2 (hf j hj)
  have := (Multiset.prod_X_sub_C_dvd_iff_le_roots h0 _).2 hle
  rwa [Multiset.map_map] at this

variable {C : Type} [Field C] {w : Valuation C ℝ≥0} {S : Type}

theorem mem_eigenQuot_freeLattice (a : S → w.valuationSubring) (r : ℕ) (τ : S) (u : Fin r → C) :
    u ∈ eigenQuot (W := fun _ => Fin r → C) (freeLattice a r) τ ↔
      ∀ i, u i ∈ w.valuationSubring := by
  constructor
  · rintro ⟨x, hx, rfl⟩ i
    obtain ⟨f, hf⟩ := hx i
    simp only [LinearMap.proj_apply]
    rw [hf τ]
    exact Subtype.prop _
  · intro hu
    exact ⟨fun _ => u, fun i => ⟨Polynomial.C ⟨u i, hu i⟩, fun s => by simp⟩, rfl⟩

theorem mem_eigenSub_freeLattice [DecidableEq S] (a : S → w.valuationSubring) (r : ℕ) (τ : S)
    (v : Fin r → C) :
    v ∈ eigenSub (W := fun _ => Fin r → C) (freeLattice a r) τ ↔
      ∀ i, ∃ f : Polynomial w.valuationSubring,
        (∀ s, s ≠ τ → f.eval (a s) = 0) ∧ ((f.eval (a τ) : w.valuationSubring) : C) = v i := by
  show (LinearMap.single w.valuationSubring (fun _ : S => Fin r → C) τ v) ∈ freeLattice a r ↔ _
  constructor
  · intro h i
    obtain ⟨f, hf⟩ := h i
    refine ⟨f, fun s hs => ?_, ?_⟩
    · have := hf s
      simp [hs] at this
      exact_mod_cast this.symm
    · have := hf τ
      simp at this
      exact this.symm
  · intro h i
    obtain ⟨f, h0, h1⟩ := h i
    refine ⟨f, fun s => ?_⟩
    by_cases hs : s = τ
    · subst hs; simp [h1]
    · simp [hs, h0 s hs]

theorem eigenSub_freeLattice [Fintype S] [DecidableEq S] (a : S → w.valuationSubring) (r : ℕ)
    (τ : S) (ha : Function.Injective a) :
    eigenSub (W := fun _ => Fin r → C) (freeLattice a r) τ =
      flatLattice (r := r) a τ (diffGen a τ) := by
  ext v
  rw [mem_eigenSub_freeLattice]
  unfold flatLattice
  rw [Submodule.mem_map]
  constructor
  · intro h
    have key : ∀ i, ∃ g : w.valuationSubring, (diffGen a τ : C) * g = v i := by
      intro i
      obtain ⟨f, h0, h1⟩ := h i
      obtain ⟨q, hq⟩ := prod_X_sub_C_dvd (Finset.univ.erase τ) a
        (fun x _ y _ e => ha e) f (fun j hj => h0 j (Finset.ne_of_mem_erase hj))
      refine ⟨q.eval (a τ), ?_⟩
      rw [← h1, hq, eval_mul, eval_prod]
      simp [diffGen]
    choose g hg using key
    refine ⟨fun i => (g i : C), (mem_eigenQuot_freeLattice a r τ _).2 fun i => (g i).2, ?_⟩
    funext i
    simp [Algebra.smul_def, hg i]
  · rintro ⟨u, hu, rfl⟩ i
    have hu' := (mem_eigenQuot_freeLattice a r τ u).1 hu
    refine ⟨Polynomial.C (⟨u i, hu' i⟩ : w.valuationSubring) *
      ∏ s ∈ Finset.univ.erase τ, (X - Polynomial.C (a s)), fun s hs => ?_, ?_⟩
    · rw [eval_mul, eval_prod]
      rw [Finset.prod_eq_zero (i := s) (Finset.mem_erase.2 ⟨hs, Finset.mem_univ _⟩) (by simp)]
      simp
    · rw [eval_mul, eval_prod]
      simp [diffGen, Algebra.smul_def, mul_comm]

theorem main : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (S : Type) [Fintype S] [DecidableEq S]
    (a : S → w.valuationSubring) (r : ℕ) (τ : S), Function.Injective a →
    GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenSub (W := fun _ => Fin r → C) (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a r) τ =
      GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.flatLattice (r := r) a τ (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.diffGen a τ) :=
  fun _ _ _ _ _ _ a r τ ha => eigenSub_freeLattice a r τ ha

end GlobalTheory.EigenSubFree
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PiEigenSublatticeFreeEqDifferentScaled =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DvrAlphaDeterminantOrder =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DvrAlphaDeterminantOrder", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationHerbrandEigenspace\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDetRelationOfLsmulShift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSpanOfIsLatticeBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PiEigenSublatticeFreeEqDifferentScaled\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SandwichMaps\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IotaScalarOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.XiMulNu\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.Sandwich GlobalTheory.IndefiniteRowSideFullHecke.SandwichMaps GlobalTheory.DetInv Matrix TensorProduct

namespace GlobalTheory.FrameModel

theorem det_append_eq_mul_det : ∀ (C : Type) [Field C] (w : Valuation C NNReal) (ℓ : C), 0 < w ℓ → w ℓ < 1 → ∀ (S : Type) [Fintype S] [DecidableEq S] (a : S → w.valuationSubring) (p q : ℕ) (Fil : Submodule w.valuationSubring (S → Fin (p + q) → C)) (τ : S), Function.Injective a → GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.IsFiltration a Fil → ∀ (x : Fin (p + q) → Fin (p + q) → C) (u : Fin p → Fin (p + q) → C) (m : Fin q → Fin (p + q) → C), GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.IsLatticeBasis w x (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenQuot (W := fun _ => Fin (p + q) → C) (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a (p + q)) τ) → GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.IsLatticeBasis w (fun i => (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace Fil τ).mkQ (u i)) (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenSub (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.lie (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.freeLattice a (p + q)) Fil) τ) → GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.IsLatticeBasis w m (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.eigenQuot (W := fun _ => Fin (p + q) → C) Fil τ) → ∃ c : C, w c = ∏ s ∈ Finset.univ.erase τ, w ((a τ : C) - (a s : C)) ^ (p + q - Module.finrank C (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace Fil s)) ∧ (Matrix.of (Fin.append u m)).det = c * (Matrix.of x).det := by
  intro C _ w ℓ hℓ0 hℓ1 S _ _ a p q Fil τ ha hFil x u m hx hu hm
  set F := GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace Fil τ with hF
  have hfin : Module.finrank C F = q := by
    have hsp : F = Submodule.span C (Set.range m) := by
      rw [hF, GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace, ← hm.2, Submodule.span_span_of_tower]
    rw [hsp, finrank_span_eq_card hm.1, Fintype.card_fin]
  have hd0 : GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.diffGen a τ ≠ 0 := by
    refine Finset.prod_ne_zero_iff.mpr fun s hs => sub_ne_zero.mpr ?_
    exact ha.ne (Finset.ne_of_mem_erase hs).symm
  have h1 := _root_.GlobalTheory.HerbrandBridge.exForm C w ℓ hℓ0 hℓ1 S a p q Fil τ ha hFil hfin
  rw [_root_.GlobalTheory.EigenSubFree.main C w S a (p + q) τ ha] at h1
  have h2 := _root_.GlobalTheory.detRel_of_detRel_lsmul C w ℓ hℓ0 hℓ1 p q _ _ _ _ _ _ hd0 h1
  obtain ⟨x', u', m', c, hx', hu', hm', hmF, ⟨hc0, hcv⟩, hdet⟩ := h2
  obtain ⟨P, hP, hPdet⟩ := GlobalTheory.DetRelCompare.transition x' x _ hx' hx
  obtain ⟨A, hA, hAdet⟩ := GlobalTheory.DetRelCompare.transition _ _ _ hu' hu
  obtain ⟨B, hB, hBdet⟩ := GlobalTheory.DetRelCompare.transition m' m _ hm' hm
  have hx'0 : (Matrix.of x').det ≠ 0 :=
    ((Matrix.isUnit_iff_isUnit_det _).mp (Matrix.linearIndependent_row_iff_isUnit.mp hx'.1)).ne_zero
  have happ0 : (Matrix.of (Fin.append u' m')).det ≠ 0 := by
    intro h0
    exact hx'0 (by rw [hdet, h0, mul_zero])
  have hrel := GlobalTheory.DetRelCompare.det_append_eq F u u' m m' A B hA hB hu'.1 hmF happ0
  have hxP : (Matrix.of x).det = P.det * (Matrix.of x').det := by
    have hmat : Matrix.of x = P * Matrix.of x' := by
      ext i k
      simp [Matrix.mul_apply, hP i, Finset.sum_apply]
    rw [hmat, Matrix.det_mul]
  have hP0 : P.det ≠ 0 := by
    intro h0
    rw [h0, map_zero] at hPdet
    exact zero_ne_one hPdet
  refine ⟨A.det * B.det * (P.det * c)⁻¹, ?_, ?_⟩
  · rw [map_mul, map_mul, map_inv₀, map_mul, hAdet, hBdet, hPdet, one_mul, one_mul, one_mul]
    have hlam : Real.log (w ℓ : ℝ) ≠ 0 :=
      (Real.log_neg (NNReal.coe_pos.mpr hℓ0) (NNReal.coe_lt_one.mpr hℓ1)).ne
    have hds : ∀ s ∈ Finset.univ.erase τ, ((w ((a τ : C) - (a s : C)) : NNReal) : ℝ) ≠ 0 := by
      intro s hs
      rw [NNReal.coe_ne_zero, Valuation.ne_zero_iff]
      exact sub_ne_zero.mpr (Subtype.coe_injective.ne (ha.ne (Finset.ne_of_mem_erase hs).symm))
    have hdiff : ((GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.diffGen a τ : w.valuationSubring) : C)
        = ∏ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C)) := by
      simp [GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.diffGen]
    have hle : ∀ s, Module.finrank C (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace Fil s) ≤ p + q := fun s =>
      (Submodule.finrank_le _).trans_eq (Module.finrank_fin_fun C)
    have hlogc : Real.log (w c : ℝ) = - ∑ s ∈ Finset.univ.erase τ,
        ((p + q - Module.finrank C (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace Fil s) : ℕ) : ℝ)
          * Real.log (w ((a τ : C) - (a s : C)) : ℝ) := by
      have e := hcv
      simp only [GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.addVal] at e
      rw [hdiff, map_prod, NNReal.coe_prod, Real.log_prod hds, div_eq_iff hlam] at e
      rw [e, sub_mul, Finset.sum_mul, mul_assoc, div_mul_cancel₀ _ hlam, Finset.mul_sum,
        ← Finset.sum_sub_distrib, ← Finset.sum_neg_distrib]
      refine Finset.sum_congr rfl fun s _ => ?_
      rw [Nat.cast_sub (hle s)]
      field_simp
      ring
    have hwc : 0 < ((w c : NNReal) : ℝ) :=
      NNReal.coe_pos.mpr (pos_iff_ne_zero.mpr ((Valuation.ne_zero_iff w).mpr hc0))
    apply NNReal.coe_injective
    rw [NNReal.coe_inv, NNReal.coe_prod]
    simp only [NNReal.coe_pow]
    have hpos2 : 0 < ∏ s ∈ Finset.univ.erase τ, ((w ((a τ : C) - (a s : C)) : NNReal) : ℝ)
        ^ (p + q - Module.finrank C (GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference.filSpace Fil s)) :=
      Finset.prod_pos fun s hs => pow_pos (lt_of_le_of_ne (NNReal.coe_nonneg _) (hds s hs).symm) _
    rw [← Real.exp_log (inv_pos.mpr hwc), ← Real.exp_log hpos2, Real.log_inv, hlogc, neg_neg,
      Real.log_prod fun s hs => pow_ne_zero _ (hds s hs)]
    simp only [Real.log_pow]
  · rw [hrel, hxP, hdet]
    field_simp

end GlobalTheory.FrameModel

namespace GlobalTheory.FrameModel

section Small

variable {C : Type} [Field C] (v : Valuation C NNReal) {O : Type} [CommRing O] [Algebra O C]

end Small

end GlobalTheory.FrameModel

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DvrAlphaDeterminantOrder =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ValuationLatticeMatrixReduction =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ValuationLatticeMatrixReduction", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.EigCoordApply\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DvrAlphaDeterminantOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open NumberField GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Flat GlobalTheory.CompanionTheory.Ar.Flat.ExG

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.ExG.Core

section Lemmas

variable {C : Type} [Field C] {w : Valuation C ℝ≥0} {S W : Type} [AddCommGroup W] [Module C W]

theorem isFiltration_kerFil (a : S → w.valuationSubring) (N : ℕ)
    (g : S → (Fin N → C) →ₗ[C] W) : IsFiltration a (kerFil a N g) := by
  refine ⟨fun _ hx => hx.1, ?_, ?_⟩
  · rintro x ⟨hx, h0⟩
    refine ⟨fun i => ?_, fun s => ?_⟩
    · obtain ⟨f, hf⟩ := hx i
      exact ⟨Polynomial.X * f, fun s => by simp [unif, hf s]⟩
    · show g s ((a s : C) • x s) = 0
      rw [map_smul, h0 s, smul_zero]
  · rintro x hx c hc ⟨-, h0⟩
    refine ⟨hx, fun s => ?_⟩
    have hc' : (c : C) ≠ 0 := fun e => hc (Subtype.ext e)
    have h1 := h0 s
    rw [show (c • x) s = (c : C) • x s from rfl, map_smul] at h1
    exact (smul_eq_zero.1 h1).resolve_left hc'

theorem exists_clear_denom {N : ℕ} (y : Fin N → C) :
    ∃ c : w.valuationSubring, c ≠ 0 ∧ ∀ i, (c : C) * y i ∈ w.valuationSubring := by
  have h1 : ∀ i, ∃ c : w.valuationSubring, c ≠ 0 ∧ (c : C) * y i ∈ w.valuationSubring := by
    intro i
    rcases w.valuationSubring.mem_or_inv_mem (y i) with h | h
    · exact ⟨1, one_ne_zero, by simpa using h⟩
    · by_cases h0 : y i = 0
      · exact ⟨1, one_ne_zero, by simp [h0, zero_mem]⟩
      · refine ⟨⟨_, h⟩, fun e => h0 ?_, ?_⟩
        · simpa using congrArg (Subtype.val) e
        · simp [h0, one_mem]
  choose c hc hcy using h1
  refine ⟨∏ i, c i, Finset.prod_ne_zero_iff.2 fun i _ => hc i, fun i => ?_⟩
  rw [← Finset.mul_prod_erase Finset.univ c (Finset.mem_univ i)]
  push_cast
  rw [mul_comm (c i : C), mul_assoc]
  refine mul_mem ?_ (hcy i)
  exact_mod_cast (∏ j ∈ Finset.univ.erase i, c j).2

theorem filSpace_kerFil [Fintype S] [DecidableEq S] (a : S → w.valuationSubring)
    (ha : Function.Injective a) (N : ℕ) (g : S → (Fin N → C) →ₗ[C] W) (s : S) :
    filSpace (kerFil a N g) s = LinearMap.ker (g s) := by
  apply le_antisymm
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨f, hf, rfl⟩
    exact hf.2 s
  · intro y hy
    obtain ⟨c, hc, hcy⟩ := exists_clear_denom (w := w) y
    let Q : Polynomial w.valuationSubring :=
      ∏ t ∈ Finset.univ.erase s, (Polynomial.X - Polynomial.C (a t))
    have hQ0 : ∀ t, t ≠ s → Q.eval (a t) = 0 := by
      intro t ht
      simp only [Q, Polynomial.eval_prod]
      exact Finset.prod_eq_zero (Finset.mem_erase.2 ⟨ht, Finset.mem_univ t⟩) (by simp)
    have hQ : Q.eval (a s) ≠ 0 := by
      simp only [Q, Polynomial.eval_prod]
      refine Finset.prod_ne_zero_iff.2 fun t ht => ?_
      simp only [Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_C]
      exact sub_ne_zero.2 fun e => (Finset.mem_erase.1 ht).1 (ha e).symm
    have hQ' : ((Q.eval (a s) : w.valuationSubring) : C) ≠ 0 := fun e => hQ (Subtype.ext e)
    have hc' : (c : C) ≠ 0 := fun e => hc (Subtype.ext e)
    let d : C := ((Q.eval (a s) : w.valuationSubring) : C) * c
    have hd : d ≠ 0 := mul_ne_zero hQ' hc'
    have hmem : d • y ∈ filSpace (kerFil a N g) s := by
      refine Submodule.subset_span (Submodule.mem_map.2 ⟨Pi.single s (d • y), ⟨fun i => ?_, fun t => ?_⟩, by simp⟩)
      · refine ⟨Polynomial.C ⟨_, hcy i⟩ * Q, fun t => ?_⟩
        by_cases ht : t = s
        · subst ht
          simp only [Pi.single_eq_same, Pi.smul_apply, smul_eq_mul, Polynomial.eval_mul,
            Polynomial.eval_C, d]
          push_cast
          ring
        · rw [Pi.single_eq_of_ne ht, Polynomial.eval_mul, hQ0 t ht]
          simp
      · by_cases ht : t = s
        · subst ht
          rw [Pi.single_eq_same, map_smul, LinearMap.mem_ker.1 hy, smul_zero]
        · rw [Pi.single_eq_of_ne ht, map_zero]
    have h2 := Submodule.smul_mem _ d⁻¹ hmem
    rwa [smul_smul, inv_mul_cancel₀ hd, one_smul] at h2

variable [Fintype S] [DecidableEq S] [Module w.valuationSubring W]
  [IsScalarTower w.valuationSubring C W]

theorem mkQ_mem_eigenSub_iff (a : S → w.valuationSubring) (ha : Function.Injective a) (N : ℕ)
    (g : S → (Fin N → C) →ₗ[C] W) (τ : S) (L : Submodule w.valuationSubring W)
    (hind : ∀ f : S → Fin N → C, ∑ s, g s (f s) = 0 → ∀ s, g s (f s) = 0)
    (hL : ∀ y, y ∈ L ↔ y ∈ LinearMap.range (g τ) ∧ ∃ f ∈ freeLattice a N, ∑ s, g s (f s) = y)
    (z : Fin N → C) :
    (filSpace (kerFil a N g) τ).mkQ z ∈ eigenSub (lie (freeLattice a N) (kerFil a N g)) τ ↔
      g τ z ∈ L := by
  have hfs : ∀ (s : S) (x : Fin N → C), (filSpace (kerFil a N g) s).mkQ x = 0 ↔ g s x = 0 := by
    intro s x
    rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, filSpace_kerFil a ha N g s,
      LinearMap.mem_ker]
  constructor
  · intro h
    obtain ⟨f, hf, e⟩ := Submodule.mem_map.1 (Submodule.mem_comap.1 h)
    have hs : ∀ s, s ≠ τ → g s (f s) = 0 := by
      intro s hs
      have h1 := congrFun e s
      rw [LinearMap.single_apply, Pi.single_eq_of_ne hs] at h1
      exact (hfs s _).1 h1
    have hτ : g τ (f τ) = g τ z := by
      have h1 := congrFun e τ
      rw [LinearMap.single_apply, Pi.single_eq_same] at h1
      have h2 : (filSpace (kerFil a N g) τ).mkQ (f τ - z) = 0 := by
        rw [map_sub, sub_eq_zero]; exact h1
      have h3 := (hfs τ _).1 h2
      rwa [map_sub, sub_eq_zero] at h3
    rw [hL]
    refine ⟨⟨z, rfl⟩, f, hf, ?_⟩
    rw [Finset.sum_eq_single τ (fun s _ h => hs s h) (by simp), hτ]
  · intro h
    obtain ⟨-, f, hf, e⟩ := (hL _).1 h
    have hu : ∀ s, g s (Function.update f τ (f τ - z) s) =
        g s (f s) - if s = τ then g τ z else 0 := by
      intro s
      by_cases hs : s = τ
      · subst hs; simp
      · simp [hs]
    have h0 := hind (Function.update f τ (f τ - z)) (by
      simp only [hu]
      rw [Finset.sum_sub_distrib, e]
      simp)
    refine Submodule.mem_comap.2 (Submodule.mem_map.2 ⟨f, hf, funext fun s => ?_⟩)
    by_cases hs : s = τ
    · subst hs
      have h1 := h0 s
      rw [hu, if_pos rfl] at h1
      have h2 : (filSpace (kerFil a N g) s).mkQ (f s - z) = 0 := (hfs s _).2 (by rw [map_sub]; exact h1)
      rw [map_sub, sub_eq_zero] at h2
      rw [LinearMap.single_apply, Pi.single_eq_same]
      exact h2
    · have h1 := h0 s
      rw [hu, if_neg hs, sub_zero] at h1
      rw [LinearMap.single_apply, Pi.single_eq_of_ne hs]
      exact (hfs s _).2 h1

theorem isLatticeBasis_mkQ (a : S → w.valuationSubring) (ha : Function.Injective a) (N : ℕ)
    (g : S → (Fin N → C) →ₗ[C] W) (τ : S) {p : ℕ} (v : Fin p → W)
    (hind : ∀ f : S → Fin N → C, ∑ s, g s (f s) = 0 → ∀ s, g s (f s) = 0)
    (hv : LinearIndependent C v)
    (hL : ∀ y, y ∈ Submodule.span w.valuationSubring (Set.range v) ↔
      y ∈ LinearMap.range (g τ) ∧ ∃ f ∈ freeLattice a N, ∑ s, g s (f s) = y)
    (u : Fin p → Fin N → C) (hu : ∀ i, g τ (u i) = v i) :
    IsLatticeBasis w (fun i => (filSpace (kerFil a N g) τ).mkQ (u i))
      (eigenSub (lie (freeLattice a N) (kerFil a N g)) τ) := by
  have hfs : ∀ x : Fin N → C, (filSpace (kerFil a N g) τ).mkQ x = 0 ↔ g τ x = 0 := by
    intro x
    rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, filSpace_kerFil a ha N g τ,
      LinearMap.mem_ker]
  have hmem := mkQ_mem_eigenSub_iff a ha N g τ _ hind hL
  constructor
  · rw [Fintype.linearIndependent_iff]
    intro c hc
    have h1 : g τ (∑ i, c i • u i) = 0 := (hfs _).1 (by

      rw [map_sum]
      simpa only [map_smul] using hc)

    rw [map_sum] at h1
    simp only [map_smul, hu] at h1
    exact Fintype.linearIndependent_iff.1 hv c h1
  · apply le_antisymm
    · rw [Submodule.span_le]
      rintro _ ⟨i, rfl⟩
      exact (hmem _).2 (by rw [hu]; exact Submodule.subset_span ⟨i, rfl⟩)
    · intro zq hz
      obtain ⟨z, rfl⟩ := (filSpace (kerFil a N g) τ).mkQ_surjective zq
      obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun w.valuationSubring).1
        ((hmem z).1 hz)
      have h0 : (filSpace (kerFil a N g) τ).mkQ (z - ∑ i, (c i : C) • u i) = 0 := (hfs _).2 (by

        rw [map_sub, map_sum, sub_eq_zero, ← hc]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [map_smul, hu]
        exact (algebraMap_smul C (c i) (v i)).symm)

      rw [map_sub, sub_eq_zero, map_sum] at h0
      rw [h0]
      refine sum_mem fun i _ => ?_
      rw [map_smul]
      rw [show (c i : C) • (filSpace (kerFil a N g) τ).mkQ (u i) =
        c i • (filSpace (kerFil a N g) τ).mkQ (u i) from algebraMap_smul C (c i) _]
      exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)

end Lemmas

theorem exists_unit_of_val_eq {C : Type} [Field C] {w : Valuation C ℝ≥0} {x y : C} (hy : y ≠ 0)
    (h : w x = w y) : ∃ ε : (w.valuationSubring)ˣ, x = (ε : w.valuationSubring) * y := by
  have hwy : w y ≠ 0 := (w.ne_zero_iff).2 hy
  have hx : x ≠ 0 := (w.ne_zero_iff).1 (h ▸ hwy)
  have ht : x / y ≠ 0 := div_ne_zero hx hy
  have h1 : w (x / y) = 1 := by rw [map_div₀, h, div_self hwy]
  have h2 : w (x / y)⁻¹ = 1 := by rw [map_inv₀, h1, inv_one]
  refine ⟨⟨⟨x / y, (w.mem_valuationSubring_iff _).2 h1.le⟩,
    ⟨(x / y)⁻¹, (w.mem_valuationSubring_iff _).2 h2.le⟩,
    Subtype.ext (mul_inv_cancel₀ ht), Subtype.ext (inv_mul_cancel₀ ht)⟩, ?_⟩
  show x = x / y * y
  rw [div_mul_cancel₀ _ hy]

theorem det_adapted_core : ∀ (C : Type) [Field C] (w : Valuation C ℝ≥0) (ℓ : C), 0 < w ℓ → w ℓ < 1 → ∀ (S : Type) [Fintype S] [DecidableEq S] (a : S → w.valuationSubring) (p q : ℕ) (τ : S) (r : S → ℕ) (W : Type) [AddCommGroup W] [Module C W] [Module w.valuationSubring W] [IsScalarTower w.valuationSubring C W] (g : S → (Fin (p + q) → C) →ₗ[C] W) (v : Fin p → W) (U : Fin (p + q) → Fin (p + q) → C) (A : Matrix (Fin (p + q)) (Fin (p + q)) C), Function.Injective a → (∀ f : S → Fin (p + q) → C, ∑ s, g s (f s) = 0 → ∀ s, g s (f s) = 0) → (∀ s, Module.finrank C (LinearMap.ker (g s)) = r s) → r τ = q → LinearIndependent C v → (∀ y, y ∈ Submodule.span w.valuationSubring (Set.range v) ↔ y ∈ LinearMap.range (g τ) ∧ ∃ f ∈ freeLattice a (p + q), ∑ s, g s (f s) = y) → (∀ i, g τ (U (Fin.castAdd q i)) = v i) → (∀ j, g τ (U (Fin.natAdd p j)) = 0) → IsLatticeBasis w (fun j => U (Fin.natAdd p j)) (eigenQuot (W := fun _ => Fin (p + q) → C) (kerFil a (p + q) g) τ) → IsLatticeBasis w (fun i => ∑ j, A i j • U j) (eigenQuot (W := fun _ => Fin (p + q) → C) (freeLattice a (p + q)) τ) → ∃ ε : (w.valuationSubring)ˣ, A.det * (∏ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C))) ^ (p + q) = (ε : w.valuationSubring) * ∏ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C)) ^ r s := by
  intro C _ w ℓ hℓ0 hℓ1 S _ _ a p q τ r W _ _ _ _ g v U A ha hind hrank hrq hv hspan hU1 hU2 hM hX
  have hFil := isFiltration_kerFil a (p + q) g
  have hLie := isLatticeBasis_mkQ a ha (p + q) g τ v hind hv hspan
    (fun i => U (Fin.castAdd q i)) hU1
  obtain ⟨c, hc, hdet⟩ := GlobalTheory.FrameModel.det_append_eq_mul_det C w ℓ hℓ0 hℓ1 S a p q
    (kerFil a (p + q) g) τ ha hFil _ _ _ hX hLie hM
  have happ : Fin.append (fun i => U (Fin.castAdd q i)) (fun j => U (Fin.natAdd p j)) = U := by
    funext k
    refine Fin.addCases (fun i => ?_) (fun j => ?_) k <;> simp
  have hx : Matrix.of (fun i => ∑ j, A i j • U j) = A * Matrix.of U := by
    ext i k
    simp [Matrix.mul_apply, Finset.sum_apply]
  rw [happ, hx, Matrix.det_mul] at hdet
  have hAU : (A * Matrix.of U).det ≠ 0 := by
    have hu : IsUnit (Matrix.of (fun i => ∑ j, A i j • U j)) :=
      Matrix.linearIndependent_rows_iff_isUnit.1 hX.1
    rw [hx] at hu
    exact ((Matrix.isUnit_iff_isUnit_det _).1 hu).ne_zero
  have hU0 : (Matrix.of U).det ≠ 0 := by
    rw [Matrix.det_mul] at hAU
    exact right_ne_zero_of_mul hAU
  have hcA : c * A.det = 1 := by
    have h1 : (c * A.det) * (Matrix.of U).det = 1 * (Matrix.of U).det := by
      rw [one_mul, mul_assoc]; exact hdet.symm
    exact mul_right_cancel₀ hU0 h1
  have hne : ∀ s ∈ Finset.univ.erase τ, (a τ : C) - (a s : C) ≠ 0 := fun s hs e =>
    (Finset.mem_erase.1 hs).1 (ha (Subtype.ext (sub_eq_zero.1 e))).symm
  have hr : ∀ s, Module.finrank C (filSpace (kerFil a (p + q) g) s) = r s := fun s => by
    rw [filSpace_kerFil a ha (p + q) g s, hrank s]
  have hle : ∀ s, r s ≤ p + q := fun s => by
    rw [← hr s]
    simpa using Submodule.finrank_le (filSpace (kerFil a (p + q) g) s)
  have hval : w (A.det * (∏ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C))) ^ (p + q)) =
      w (∏ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C)) ^ r s) := by
    have hwc : w c * w A.det = 1 := by rw [← map_mul, hcA, map_one]
    have hsplit : w ((∏ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C))) ^ (p + q)) =
        w c * w (∏ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C)) ^ r s) := by
      simp only [hr] at hc
      rw [hc, map_pow, map_prod, map_prod, ← Finset.prod_pow, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun s _ => ?_
      rw [map_pow, ← pow_add, Nat.sub_add_cancel (hle s)]
    rw [map_mul, hsplit, ← mul_assoc, mul_comm (w A.det), hwc, one_mul]
  exact exists_unit_of_val_eq (Finset.prod_ne_zero_iff.2 fun s hs => pow_ne_zero _ (hne s hs)) hval

end GlobalTheory.CompanionTheory.Ar.Flat.ExG.Core
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ValuationLatticeMatrixReduction =====
