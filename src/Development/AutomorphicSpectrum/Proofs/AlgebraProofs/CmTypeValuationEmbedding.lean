module

public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.EigCoordApply
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ProjSumSumEmbeddingsEqTrace
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LatNormGrLatNeZeroOfSpan
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.LinearIndependentEigProj
public import Mathlib.Algebra.Exact.Basic
public import Mathlib.LinearAlgebra.LinearIndependent.Defs
public import Mathlib.RingTheory.Valuation.ValuationRing
public import Mathlib.Algebra.Module.FinitePresentation
public import Mathlib.Algebra.Module.Torsion.Basic
public import Mathlib.RingTheory.Flat.TorsionFree
public import Mathlib.RingTheory.LocalRing.Module
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import Mathlib.FieldTheory.Finite.Basic
public import Mathlib.RingTheory.DedekindDomain.Ideal.Basic
public import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas
public import Mathlib.RingTheory.Nakayama
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ValuationLatticeMatrixReduction
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CmTypePolynomialVanishingCriterion, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConjugateEmbeddingsValuationRankBound, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualModuleConjugateEigenAction, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLatticeDualEigenDecomposition, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalRingModTEmbedsStrictHenselian, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSpanIntersectionBasis, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ExistsMonogenicSeparating, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StatementUnavailableOne, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SumEigenProjectionsEqSelf, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CmTypeValuationEmbedding

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CmTypePolynomialVanishingCriterion =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CmTypePolynomialVanishingCriterion", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.EigCoordApply\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ProjSumSumEmbeddingsEqTrace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open NumberField GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Flat GlobalTheory.CompanionTheory.Ar.Flat.ExG

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.ExG.Block

theorem sum_eq_sum_subtype {α β : Type} [Fintype α] [AddCommMonoid β] (D : α → Prop)
    [Fintype {s // D s}] (G : α → β) (h : ∀ s, ¬ D s → G s = 0) :
    ∑ s, G s = ∑ s : {s // D s}, G s.1 := by
  classical
  rw [← Finset.sum_filter_of_ne (p := D) (fun x _ hx => by_contra fun hD => hx (h x hD))]
  exact Finset.sum_subtype _ (fun x => by simp) G

section

variable {E : Type} [Field E] [NumberField E] {C : Type} [Field C] {w : Valuation C ℝ≥0}

theorem mem_freeLattice {S : Type} {a : S → w.valuationSubring} {r : ℕ} {x : S → Fin r → C} :
    x ∈ freeLattice a r ↔ ∀ i, ∃ f : Polynomial w.valuationSubring, ∀ s,
      x s i = ((f.eval (a s) : w.valuationSubring) : C) := Iff.rfl

def valSpan (emb : (E →+* C) → (𝓞 E →+* w.valuationSubring)) :
    Submodule w.valuationSubring ((E →+* C) → w.valuationSubring) :=
  Submodule.span w.valuationSubring (Set.range fun a : 𝓞 E => fun s => emb s a)

theorem mul_mem_valSpan (emb : (E →+* C) → (𝓞 E →+* w.valuationSubring))
    {f g : (E →+* C) → w.valuationSubring} (hf : f ∈ valSpan emb) (hg : g ∈ valSpan emb) :
    f * g ∈ valSpan emb := by
  unfold valSpan at hf hg ⊢
  induction hf using Submodule.span_induction with
  | mem x h =>
    obtain ⟨a, rfl⟩ := h
    induction hg using Submodule.span_induction with
    | mem y h =>
      obtain ⟨b, rfl⟩ := h
      exact Submodule.subset_span ⟨a * b, by funext s; simp⟩
    | zero => simp
    | add y z _ _ hy hz => rw [mul_add]; exact add_mem hy hz
    | smul c y _ hy => rw [mul_smul_comm]; exact Submodule.smul_mem _ c hy
  | zero => simp
  | add x y _ _ hx hy => rw [add_mul]; exact add_mem hx hy
  | smul c x _ hx => rw [smul_mul_assoc]; exact Submodule.smul_mem _ c hx

variable {M : Type} [AddCommGroup M] [Module C M] [Module w.valuationSubring M]
  [IsScalarTower w.valuationSubring C M] {ρ : 𝓞 E →+* Module.End C M}
  {X : Submodule w.valuationSubring M} {N : ℕ} {t : Fin N → M}

theorem rho_mem (h : HT.IsFreeOn ρ X t) (a : 𝓞 E) (j : Fin N) : ρ a (t j) ∈ X := by
  have e := congrArg (fun u => ρ u (t j)) ((RingOfIntegers.basis E).sum_repr a)

  simp only [map_sum, LinearMap.sum_apply, map_zsmul, LinearMap.smul_apply] at e
  rw [← e]
  refine sum_mem fun k _ => zsmul_mem ?_ _
  rw [h.2.2]
  exact Submodule.subset_span ⟨(j, k), rfl⟩

theorem eigCoord_mem (s : E →+* C) (v : Fin N → C) : eigCoord ρ t s v ∈ HT.eigSp ρ s := by
  rw [eigCoord_apply]
  exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (HT.LatBasic.eigProj_mem ρ s _)

theorem exists_coord (emb : (E →+* C) → (𝓞 E →+* w.valuationSubring))
    (hemb : ∀ s (a : 𝓞 E), ((emb s a : w.valuationSubring) : C) = s (a : E))
    (h : HT.IsFreeOn ρ X t) {y : M} (hy : y ∈ X) :
    ∃ F : Fin N → (E →+* C) → w.valuationSubring, (∀ j, F j ∈ valSpan emb) ∧
      ∀ s, HT.eigProj ρ s y = ∑ j, ((F j s : w.valuationSubring) : C) • HT.eigProj ρ s (t j) := by
  classical
  rw [h.2.2] at hy
  induction hy using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨⟨j, k⟩, rfl⟩ := hx
    refine ⟨fun i s => if i = j then emb s (RingOfIntegers.basis E k) else 0, fun i => ?_,
      fun s => ?_⟩
    · by_cases hij : i = j
      · simp only [hij, if_true]
        exact Submodule.subset_span ⟨_, rfl⟩
      · simp only [hij, if_false]
        exact zero_mem (valSpan emb)
    · rw [HodgeDeterminantLattice.eigProj_act, Finset.sum_eq_single j (fun i _ hi => by simp [hi]) (by simp)]
      simp [hemb]
  | zero => exact ⟨0, fun _ => zero_mem _, fun s => by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨F, hF, e⟩ := hx
    obtain ⟨G, hG, e'⟩ := hy
    refine ⟨F + G, fun j => add_mem (hF j) (hG j), fun s => ?_⟩
    simp [e s, e' s, add_smul, Finset.sum_add_distrib]
  | smul c x _ hx =>
    obtain ⟨F, hF, e⟩ := hx
    refine ⟨c • F, fun j => Submodule.smul_mem _ c (hF j), fun s => ?_⟩
    rw [← algebraMap_smul C c x, map_smul, e s, Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [smul_smul]
    rfl

theorem sum_smul_mem [CharZero C] [Fintype (E →+* C)]
    (emb : (E →+* C) → (𝓞 E →+* w.valuationSubring))
    (hemb : ∀ s (a : 𝓞 E), ((emb s a : w.valuationSubring) : C) = s (a : E))
    (hcard : Fintype.card (E →+* C) = Module.finrank ℚ E)
    (h : HT.IsFreeOn ρ X t) (j : Fin N) {F : (E →+* C) → w.valuationSubring}
    (hF : F ∈ valSpan emb) :
    ∑ s, ((F s : w.valuationSubring) : C) • HT.eigProj ρ s (t j) ∈ X := by
  unfold valSpan at hF
  induction hF using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨a, rfl⟩ := hx
    have e : ∑ s : E →+* C, ((emb s a : w.valuationSubring) : C) • HT.eigProj ρ s (t j) =
        ρ a (t j) := by
      have h1 := congrArg (fun T : Module.End C M => T (ρ a (t j)))
        (HT.sum_eigProj_eq_one C M E ρ hcard)
      simp only [LinearMap.sum_apply, HodgeDeterminantLattice.eigProj_act, Module.End.one_apply] at h1
      simpa only [hemb] using h1
    simpa only [e] using rho_mem h a j
  | zero => simp
  | add x y _ _ hx hy =>
    simp only [Pi.add_apply, AddMemClass.coe_add, add_smul, Finset.sum_add_distrib]
    exact add_mem hx hy
  | smul c x _ hx =>
    have e : ∑ s : E →+* C, (((c • x) s : w.valuationSubring) : C) • HT.eigProj ρ s (t j) =
        c • ∑ s : E →+* C, ((x s : w.valuationSubring) : C) • HT.eigProj ρ s (t j) := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun s _ => ?_
      rw [← algebraMap_smul C c (((x s : w.valuationSubring) : C) • HT.eigProj ρ s (t j)), smul_smul]
      rfl
    rw [e]
    exact Submodule.smul_mem _ c hx

end

theorem block_freeLattice : ∀ (E : Type) [Field E] [NumberField E] (C : Type) [Field C] [CharZero C] (w : Valuation C ℝ≥0) [Fintype (E →+* C)] (emb : (E →+* C) → (𝓞 E →+* w.valuationSubring)), (∀ s (a : 𝓞 E), ((emb s a : w.valuationSubring) : C) = s (a : E)) → Fintype.card (E →+* C) = Module.finrank ℚ E → ∀ (D : (E →+* C) → Prop) (π : 𝓞 E), (∀ f : (E →+* C) → w.valuationSubring, (∀ s, ¬ D s → f s = 0) → ((∃ g : Polynomial w.valuationSubring, ∀ s, D s → f s = g.eval (emb s π)) ↔ f ∈ Submodule.span w.valuationSubring (Set.range fun a : 𝓞 E => fun s => emb s a))) → ∀ (M : Type) [AddCommGroup M] [Module C M] [Module w.valuationSubring M] [IsScalarTower w.valuationSubring C M] (ρ : 𝓞 E →+* Module.End C M) (X : Submodule w.valuationSubring M) (N : ℕ) (t : Fin N → M), HT.IsFreeOn ρ X t → ∀ [Fintype {s // D s}], (∀ f : {s // D s} → Fin N → C, (∑ s, eigCoord ρ t s.1 (f s)) ∈ X ↔ f ∈ freeLattice (fun s : {s // D s} => emb s.1 π) N) ∧ (∀ y ∈ X, ∃ f ∈ freeLattice (fun s : {s // D s} => emb s.1 π) N, ∀ s, HT.eigProj ρ s.1 y = eigCoord ρ t s.1 (f s)) := by
  intro E _ _ C _ _ w _ emb hemb hcard D π H M _ _ _ _ ρ X N t hfree _
  classical
  have hind : (fun s => if D s then (1 : w.valuationSubring) else 0) ∈ valSpan emb :=
    (H _ (fun s hs => if_neg hs)).1 ⟨1, fun s hs => by simp [hs]⟩
  have hpoly : ∀ F ∈ valSpan emb, ∃ g : Polynomial w.valuationSubring,
      ∀ s, D s → F s = g.eval (emb s π) := by
    intro F hF
    have hm := mul_mem_valSpan emb hind hF
    obtain ⟨g, hg⟩ := (H _ (fun s hs => by simp [hs])).2 hm
    exact ⟨g, fun s hs => by simpa [hs] using hg s hs⟩
  refine ⟨fun f => ⟨fun hx => ?_, fun hf => ?_⟩, fun y hy => ?_⟩
  · obtain ⟨F, hF, e⟩ := exists_coord emb hemb hfree hx
    have hD : ∀ s : {s // D s}, HT.eigProj ρ s.1 (∑ s, eigCoord ρ t s.1 (f s)) =
        eigCoord ρ t s.1 (f s) := by
      intro s

      rw [map_sum, Finset.sum_eq_single s]
      · exact HT.LatBasic.eigProj_of_mem (eigCoord_mem _ _)
      · intro s' _ hne
        exact HT.LatBasic.eigProj_of_ne (fun e => hne (Subtype.ext e.symm)) (eigCoord_mem _ _)
      · simp
    have hnD : ∀ s, ¬ D s → HT.eigProj ρ s (∑ s, eigCoord ρ t s.1 (f s)) = 0 := by
      intro s hs

      rw [map_sum]
      exact Finset.sum_eq_zero fun s' _ =>
        HT.LatBasic.eigProj_of_ne (fun e : s = s'.1 => hs (by rw [e]; exact s'.2)) (eigCoord_mem _ _)
    have hF0 : ∀ j s, ¬ D s → F j s = 0 := by
      intro j s hs
      have h1 := Fintype.linearIndependent_iff.1 (HodgeDeterminantLattice.linearIndependent_eigProj s hfree)
        (fun j => ((F j s : w.valuationSubring) : C)) (by rw [← e s, hnD s hs]) j
      exact Subtype.ext h1
    have hcoord : ∀ (s : {s // D s}) j, f s j = ((F j s.1 : w.valuationSubring) : C) := by
      intro s j
      have h0 := (hD s).symm.trans (e s.1)
      rw [eigCoord_apply] at h0
      have h1 := Fintype.linearIndependent_iff.1 (HodgeDeterminantLattice.linearIndependent_eigProj s.1 hfree)
        (fun j => f s j - ((F j s.1 : w.valuationSubring) : C))
        (by simp only [sub_smul, Finset.sum_sub_distrib, h0, sub_self]) j
      exact sub_eq_zero.1 h1
    refine mem_freeLattice.2 fun j => ?_
    obtain ⟨g, hg⟩ := (H (F j) (hF0 j)).2 (hF j)
    exact ⟨g, fun s => by rw [hcoord s j, hg s.1 s.2]⟩
  · choose g hg using mem_freeLattice.1 hf
    let F : Fin N → (E →+* C) → w.valuationSubring :=
      fun j s => if D s then (g j).eval (emb s π) else 0
    have hFm : ∀ j, F j ∈ valSpan emb := fun j =>
      (H (F j) (fun s hs => if_neg hs)).1 ⟨g j, fun s hs => if_pos hs⟩
    have key : ∑ j, ∑ s, ((F j s : w.valuationSubring) : C) • HT.eigProj ρ s (t j) ∈ X :=
      sum_mem fun j _ => sum_smul_mem emb hemb hcard hfree j (hFm j)
    have e : ∑ s, eigCoord ρ t s.1 (f s) =
        ∑ j, ∑ s, ((F j s : w.valuationSubring) : C) • HT.eigProj ρ s (t j) := by
      simp only [eigCoord_apply]
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [sum_eq_sum_subtype D _ (fun s hs => by simp [F, hs])]
      refine Finset.sum_congr rfl fun s _ => ?_
      simp only [F, if_pos s.2, hg j s]
    rw [e]
    exact key
  · obtain ⟨F, hF, e⟩ := exists_coord emb hemb hfree hy
    refine ⟨fun s j => ((F j s.1 : w.valuationSubring) : C), mem_freeLattice.2 fun j => ?_,
      fun s => ?_⟩
    · obtain ⟨g, hg⟩ := hpoly _ (hF j)
      exact ⟨g, fun s => by rw [hg s.1 s.2]⟩
    · rw [e, eigCoord_apply]

end GlobalTheory.CompanionTheory.Ar.Flat.ExG.Block
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CmTypePolynomialVanishingCriterion =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConjugateEmbeddingsValuationRankBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConjugateEmbeddingsValuationRankBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.EigCoordApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open NumberField GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Flat GlobalTheory.CompanionTheory.Ar.Flat.ExG

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.ExG.Red

section Xfer

variable {A B K M : Type} [CommRing A] [CommRing B] [CommRing K] [Algebra A K] [Algebra B K]
  [AddCommGroup M] [Module K M] [Module A M] [Module B M] [IsScalarTower A K M] [IsScalarTower B K M]

def xfer (h : (algebraMap A K).range = (algebraMap B K).range) (X : Submodule A M) : Submodule B M where
  carrier := X
  zero_mem' := X.zero_mem
  add_mem' := fun hx hy => X.add_mem hx hy
  smul_mem' := fun c x hx => by
    obtain ⟨a, ha⟩ : algebraMap B K c ∈ (algebraMap A K).range := h ▸ ⟨c, rfl⟩
    have e : c • x = a • x := by rw [← algebraMap_smul K c x, ← ha, algebraMap_smul]
    rw [e]
    exact X.smul_mem a hx

theorem mem_xfer (h : (algebraMap A K).range = (algebraMap B K).range) {X : Submodule A M} {y : M} :
    y ∈ xfer h X ↔ y ∈ X := Iff.rfl

theorem xfer_span (h : (algebraMap A K).range = (algebraMap B K).range) (s : Set M) :
    xfer h (Submodule.span A s) = Submodule.span B s := by
  apply le_antisymm
  · intro y hy
    exact (Submodule.span_le (p := xfer h.symm (Submodule.span B s))).2
      (fun z hz => Submodule.subset_span hz) hy
  · exact Submodule.span_le.2 fun z hz => Submodule.subset_span hz

end Xfer

section XferEig

variable {A B K M : Type} [CommRing A] [CommRing B] [Field K] [Algebra A K] [Algebra B K]
  [AddCommGroup M] [Module K M] [Module A M] [Module B M] [IsScalarTower A K M] [IsScalarTower B K M]
  {E : Type} [Field E] [NumberField E]

theorem xfer_eigSub (h : (algebraMap A K).range = (algebraMap B K).range) (ρ : 𝓞 E →+* Module.End K M) (σ : E →+* K)
    (X : Submodule A M) : xfer h (HT.eigSub ρ σ X) = HT.eigSub ρ σ (xfer h X) := by
  ext y
  exact Iff.rfl

theorem xfer_eigQuot (h : (algebraMap A K).range = (algebraMap B K).range) (ρ : 𝓞 E →+* Module.End K M) (σ : E →+* K)
    (X : Submodule A M) : xfer h (HT.eigQuot ρ σ X) = HT.eigQuot ρ σ (xfer h X) := by
  ext y
  constructor
  · rintro ⟨z, hz, rfl⟩
    exact ⟨z, hz, rfl⟩
  · rintro ⟨z, hz, rfl⟩
    exact ⟨z, hz, rfl⟩

theorem isFreeOn_xfer (h : (algebraMap A K).range = (algebraMap B K).range) {ρ : 𝓞 E →+* Module.End K M}
    {X : Submodule A M} {N : ℕ} {t : Fin N → M} (hf : HT.IsFreeOn ρ X t) :
    HT.IsFreeOn ρ (xfer h X) t := by
  refine ⟨hf.1, hf.2.1, ?_⟩
  rw [← xfer_span h, ← hf.2.2]

end XferEig

theorem targetV : TargetO → ∀ (E : Type) [Field E] [NumberField E] (V C : Type) [CommRing V] [IsDomain V] [ValuationRing V] [Field C] [CharZero C] [Algebra V C] [IsFractionRing V C] (bar : 𝓞 E ≃+* 𝓞 E) (σ σ' : E →+* C) (rk : (E →+* C) → ℕ) (p q : ℕ) (ν : Valuation C NNReal), ν.Integers V → (∃ ℓ : C, 0 < ν ℓ ∧ ν ℓ < 1) → (∀ (s : E →+* C) (a : 𝓞 E), s (a : E) ∈ (algebraMap V C).range) → Nat.card (E →+* C) = Module.finrank ℚ E → (∀ a : 𝓞 E, σ' (a : E) = σ (bar a : 𝓞 E)) → (∀ a, bar (bar a) = a) → ∃ γ : C, γ ≠ 0 ∧ ∀ (W : Type) [AddCommGroup W] [Module C W] [Module V W] [IsScalarTower V C W] [FiniteDimensional C W] (ρ : 𝓞 E →+* Module.End C W) (ρH : 𝓞 E →+* Module.End C (W × Module.Dual C W)) (HV : Submodule V (W × Module.Dual C W)) (Lie : Submodule V W) (x : Fin (p + q) → W × Module.Dual C W) (v : Fin p → W) (w : Fin q → W) (u : Fin (p + q) → W × Module.Dual C W) (A : Matrix (Fin (p + q)) (Fin (p + q)) C), (∀ a y, (ρH a y).1 = ρ a y.1) → (∀ a φ, ρH a (0, φ) = (0, φ ∘ₗ ρ (bar a))) → HV.map ((LinearMap.fst C W (Module.Dual C W)).restrictScalars V) = Lie → (∀ φ : Module.Dual C W, (0, φ) ∈ HV ↔ ∀ e ∈ Lie, φ e ∈ (algebraMap V C).range) → HT.IsFreeOn ρH HV x → (∀ s, Module.finrank C (HT.eigSp ρ s) = rk s) → LinearIndependent C v → Submodule.span V (Set.range v) = HT.eigSub ρ σ Lie → LinearIndependent C w → Submodule.span V (Set.range w) = HT.eigSub ρ σ' Lie → IsAdapted ρH σ v w u → LinearIndependent C (fun i => ∑ j, A i j • u j) → Submodule.span V (Set.range fun i => ∑ j, A i j • u j) = HT.eigQuot ρH σ HV → ∃ ε : Vˣ, A.det = algebraMap V C ε * γ := by
  intro hO E _ _ V C _ _ _ _ _ _ _ bar σ σ' rk p q ν hν hℓ hs hcard hσ' hbar
  have hr : (algebraMap V C).range = (algebraMap ν.valuationSubring C).range := by
    ext c
    constructor
    · rintro ⟨a, rfl⟩
      exact ⟨⟨_, (Valuation.mem_valuationSubring_iff _ _).2 (hν.map_le_one a)⟩, rfl⟩
    · rintro ⟨o, rfl⟩
      obtain ⟨a, ha⟩ := hν.exists_of_le_one ((Valuation.mem_valuationSubring_iff _ _).1 o.2)
      exact ⟨a, ha⟩
  obtain ⟨γ, hγ, H⟩ := hO E C ν bar σ σ' rk p q hℓ (fun s a => by
    obtain ⟨o, ho⟩ : s (a : E) ∈ (algebraMap ν.valuationSubring C).range := hr ▸ hs s a
    rw [← ho]
    exact o.2) hcard hσ' hbar
  refine ⟨γ, hγ, ?_⟩
  intro W _ _ _ _ _ ρ ρH HV Lie x v w u A h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13
  letI : Module ν.valuationSubring W := Module.compHom W (algebraMap ν.valuationSubring C)
  haveI : IsScalarTower ν.valuationSubring C W := ⟨fun o c y => by
    change ((o : C) * c) • y = (o : C) • (c • y)
    rw [mul_smul]⟩
  obtain ⟨ε, hε⟩ := H W ρ ρH (xfer hr HV) (xfer hr Lie) x v w u A h1 h2
    (by
      ext y
      rw [mem_xfer, ← h3]
      constructor
      · rintro ⟨z, hz, rfl⟩
        exact ⟨z, hz, rfl⟩
      · rintro ⟨z, hz, rfl⟩
        exact ⟨z, hz, rfl⟩)
    (fun φ => by
      rw [mem_xfer, h4, ← hr]
      exact Iff.rfl)
    (isFreeOn_xfer hr h5) h6 h7
    (by rw [← xfer_span hr, h8, xfer_eigSub]) h9
    (by rw [← xfer_span hr, h10, xfer_eigSub]) h11 h12
    (by rw [← xfer_span hr, h13, xfer_eigQuot])
  obtain ⟨a, ha⟩ : algebraMap ν.valuationSubring C (ε : ν.valuationSubring) ∈ (algebraMap V C).range :=
    hr ▸ ⟨_, rfl⟩
  obtain ⟨b, hb⟩ : algebraMap ν.valuationSubring C ((ε⁻¹ : (ν.valuationSubring)ˣ) : ν.valuationSubring) ∈
      (algebraMap V C).range := hr ▸ ⟨_, rfl⟩
  have hab : a * b = 1 := by
    apply hν.hom_inj
    rw [map_mul, ha, hb, ← map_mul, Units.mul_inv, map_one, map_one]
  refine ⟨⟨a, b, hab, by rw [mul_comm]; exact hab⟩, ?_⟩
  rw [hε]
  exact congrArg (· * γ) ha.symm

end GlobalTheory.CompanionTheory.Ar.Flat.ExG.Red
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConjugateEmbeddingsValuationRankBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualModuleConjugateEigenAction =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualModuleConjugateEigenAction", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LatNormGrLatNeZeroOfSpan\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.LinearIndependentEigProj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.EigCoordApply\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open NumberField GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Flat GlobalTheory.CompanionTheory.Ar.Flat.ExG

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.ExG.DualRank

theorem comp_eigProj_eq {E : Type} [Field E] [NumberField E] {C : Type} [Field C]
    [Fintype (E →+* C)] {W : Type} [AddCommGroup W] [Module C W]
    {ρ : 𝓞 E →+* Module.End C W} {s' : E →+* C}
    (hsum : ∀ y, ∑ t, HT.eigProj ρ t y = y) {φ : Module.Dual C W}
    (hφ : ∀ a : 𝓞 E, φ ∘ₗ ρ a = s' (a : E) • φ) :
    φ ∘ₗ HT.eigProj ρ s' = φ := by
  classical
  ext y
  have key : ∀ t, t ≠ s' → φ (HT.eigProj ρ t y) = 0 := by
    intro t ht
    have hmem := HT.LatBasic.mem_eigSp.1 (HT.LatBasic.eigProj_mem ρ t y)
    have hex : ∃ a : 𝓞 E, t (a : E) ≠ s' (a : E) := by
      by_contra hc
      push_neg at hc
      exact ht (IsLocalization.ringHom_ext (nonZeroDivisors (𝓞 E)) (RingHom.ext hc))
    obtain ⟨a, ha⟩ := hex
    have h1 := LinearMap.congr_fun (hφ a) (HT.eigProj ρ t y)
    simp only [LinearMap.comp_apply, LinearMap.smul_apply, smul_eq_mul] at h1
    rw [hmem a, map_smul, smul_eq_mul] at h1
    have h2 : (t (a : E) - s' (a : E)) * φ (HT.eigProj ρ t y) = 0 := by
      rw [sub_mul, h1, sub_self]
    exact (mul_eq_zero.1 h2).resolve_left (sub_ne_zero.2 ha)
  have e : φ y = φ (HT.eigProj ρ s' y) := by
    conv_lhs => rw [← hsum y]

    rw [map_sum, Finset.sum_eq_single s' (fun t _ ht => key t ht) (by simp)]
  exact e.symm

theorem finrank_eigSp_inf_ker_fst :
    ∀ (E : Type) [Field E] [NumberField E] (C : Type) [Field C] [Fintype (E →+* C)] (bar : 𝓞 E ≃+* 𝓞 E) (s s' : E →+* C) (W : Type) [AddCommGroup W] [Module C W] [FiniteDimensional C W] (ρ : 𝓞 E →+* Module.End C W) (ρH : 𝓞 E →+* Module.End C (W × Module.Dual C W)), (∀ y, ∑ t, HT.eigProj ρ t y = y) → (∀ a : 𝓞 E, s' (a : E) = s (bar a : 𝓞 E)) → (∀ a, bar (bar a) = a) → (∀ a φ, ρH a (0, φ) = (0, φ ∘ₗ ρ (bar a))) → Module.finrank C ↥(HT.eigSp ρH s ⊓ LinearMap.ker (LinearMap.fst C W (Module.Dual C W))) = Module.finrank C (HT.eigSp ρ s') := by
  intro E _ _ C _ _ bar s s' W _ _ _ ρ ρH hsum hs hbar hH
  set U := HT.eigSp ρH s ⊓ LinearMap.ker (LinearMap.fst C W (Module.Dual C W)) with hU
  set T := HT.eigSp ρ s' with hT
  let F : U →ₗ[C] Module.Dual C T :=
    T.dualRestrict ∘ₗ LinearMap.snd C W (Module.Dual C W) ∘ₗ U.subtype
  have hFapply : ∀ (u : U) (x : T), F u x = (u : W × Module.Dual C W).2 x := fun _ _ => rfl
  have hfst : ∀ u : U, (u : W × Module.Dual C W).1 = 0 := fun u => u.2.2
  have hact : ∀ u : U, ∀ a : 𝓞 E,
      (u : W × Module.Dual C W).2 ∘ₗ ρ a = s' (a : E) • (u : W × Module.Dual C W).2 := by
    intro u a
    have h1 := HT.LatBasic.mem_eigSp.1 u.2.1 (bar a)
    have h2 : (u : W × Module.Dual C W) = (0, (u : W × Module.Dual C W).2) :=
      Prod.ext (hfst u) rfl
    rw [h2, hH, hbar] at h1
    have h3 := congrArg Prod.snd h1
    simpa [hs a] using h3
  have hinj : Function.Injective F := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro u hu
    have h0 := comp_eigProj_eq hsum (hact u)
    apply Subtype.ext
    refine Prod.ext (hfst u) ?_
    rw [← h0]
    ext y
    have := hFapply u ⟨HT.eigProj ρ s' y, HT.LatBasic.eigProj_mem ρ s' y⟩
    rw [hu] at this
    simpa using this.symm
  have hsurj : Function.Surjective F := by
    intro ψ
    let e : W →ₗ[C] T := LinearMap.codRestrict T (HT.eigProj ρ s') (HT.LatBasic.eigProj_mem ρ s')
    have he : ∀ (b : 𝓞 E) (x : W), e (ρ b x) = s' (b : E) • e x := fun b x =>
      Subtype.ext (HodgeDeterminantLattice.eigProj_act s' b x)
    have hmem : ((0 : W), ψ ∘ₗ e) ∈ U := by
      refine ⟨HT.LatBasic.mem_eigSp.2 fun a => ?_, rfl⟩
      rw [hH]
      refine Prod.ext (by simp) ?_
      ext x
      simp [he, hs, hbar]
    refine ⟨⟨_, hmem⟩, ?_⟩
    ext x
    rw [hFapply]
    have : e x = x := Subtype.ext (HT.LatBasic.eigProj_of_mem x.2)
    simp [this]
  rw [(LinearEquiv.ofBijective F ⟨hinj, hsurj⟩).finrank_eq, Subspace.dual_finrank_eq]

end GlobalTheory.CompanionTheory.Ar.Flat.ExG.DualRank
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualModuleConjugateEigenAction =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLatticeDualEigenDecomposition =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLatticeDualEigenDecomposition", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LatNormGrLatNeZeroOfSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.EigCoordApply\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open NumberField GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Flat GlobalTheory.CompanionTheory.Ar.Flat.ExG

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.ExG.DualFil

section
variable {E : Type} [Field E] [NumberField E] {C : Type} [Field C] {W : Type} [AddCommGroup W]
  [Module C W]

theorem eigProj_comp_bar [Fintype (E →+* C)] (bar : 𝓞 E ≃+* 𝓞 E) (σ σ' : E →+* C)
    (ρ : 𝓞 E →+* Module.End C W) (hsum : ∀ y, ∑ s, HT.eigProj ρ s y = y)
    (hσ : ∀ a : 𝓞 E, σ' (a : E) = σ (bar a : 𝓞 E)) (hbar : ∀ a, bar (bar a) = a) (x : W) :
    HT.eigProj (ρ.comp (bar : 𝓞 E →+* 𝓞 E)) σ x = HT.eigProj ρ σ' x := by
  classical
  conv_lhs => rw [← hsum x]

  rw [map_sum, Finset.sum_eq_single σ']
  · apply HT.LatBasic.eigProj_of_mem
    rw [HT.LatBasic.mem_eigSp]
    intro a
    have h := HT.LatBasic.mem_eigSp.1 (HT.LatBasic.eigProj_mem ρ σ' x) (bar a)
    rw [hσ, hbar] at h
    exact h
  · intro s _ hs
    refine HT.LatBasic.eigProj_of_eigenSub_ne
      (χ := (s.comp (algebraMap (𝓞 E) E)).comp (bar : 𝓞 E →+* 𝓞 E)) ?_ ?_
    · intro e
      apply hs
      apply IsLocalization.ringHom_ext (nonZeroDivisors (𝓞 E))
      refine RingHom.ext fun a => ?_
      have h := DFunLike.congr_fun e (bar a)
      have h2 : σ ((bar a : 𝓞 E) : E) = s (a : E) := by
        simpa [hbar] using h
      change s (a : E) = σ' (a : E)
      rw [hσ, h2]
    · rw [GlobalTheory.EigenSplit.mem_eigenSub]
      intro a
      exact HT.LatBasic.mem_eigSp.1 (HT.LatBasic.eigProj_mem ρ s x) (bar a)
  · intro h
    exact absurd (Finset.mem_univ _) h

theorem eigProj_zero_form (bar : 𝓞 E ≃+* 𝓞 E) (σ : E →+* C) (ρ : 𝓞 E →+* Module.End C W)
    (ρH : 𝓞 E →+* Module.End C (W × Module.Dual C W))
    (hact : ∀ a φ, ρH a (0, φ) = (0, φ ∘ₗ ρ (bar a))) (φ : Module.Dual C W) :
    HT.eigProj ρH σ (0, φ) = (0, φ ∘ₗ HT.eigProj (ρ.comp (bar : 𝓞 E →+* 𝓞 E)) σ) := by
  simp only [HT.eigProj, LinearMap.sum_apply, LinearMap.smul_apply, hact]
  refine Prod.ext ?_ ?_
  · simp [Prod.fst_sum]
  · ext x
    simp [Prod.snd_sum, LinearMap.sum_apply]

end

theorem span_iff_proj : ∀ (E : Type) [Field E] [NumberField E] (V C : Type) [CommRing V] [Field C] [Algebra V C] [Fintype (E →+* C)] (bar : 𝓞 E ≃+* 𝓞 E) (σ σ' : E →+* C) (W : Type) [AddCommGroup W] [Module C W] [Module V W] [IsScalarTower V C W] (ρ : 𝓞 E →+* Module.End C W) (ρH : 𝓞 E →+* Module.End C (W × Module.Dual C W)) (HV : Submodule V (W × Module.Dual C W)) (Lie : Submodule V W) (n : ℕ) (w : Fin n → W) (ψ : Fin n → W × Module.Dual C W), (∀ y, ∑ s, HT.eigProj ρ s y = y) → (∀ a : 𝓞 E, σ' (a : E) = σ (bar a : 𝓞 E)) → (∀ a, bar (bar a) = a) → (∀ a y, (ρH a y).1 = ρ a y.1) → (∀ a φ, ρH a (0, φ) = (0, φ ∘ₗ ρ (bar a))) → (∀ φ : Module.Dual C W, (0, φ) ∈ HV ↔ ∀ e ∈ Lie, φ e ∈ (algebraMap V C).range) → Submodule.span C (Set.range w) = HT.eigSp ρ σ' → (∀ j, w j ∈ Lie) → (∀ j, ψ j ∈ HT.eigSp ρH σ ∧ (ψ j).1 = 0 ∧ ∀ j', (ψ j).2 (w j') = if j = j' then 1 else 0) → (∀ j, ∃ φ : Module.Dual C W, (∀ y ∈ Lie, φ y ∈ (algebraMap V C).range) ∧ ∀ k, φ (w k) = if k = j then 1 else 0) → ∀ y, y ∈ Submodule.span V (Set.range ψ) ↔ ∃ φ : Module.Dual C W, ((0, φ) : W × Module.Dual C W) ∈ HV ∧ HT.eigProj ρH σ (0, φ) = y := by
  intro E _ _ V C _ _ _ _ bar σ σ' W _ _ _ _ ρ ρH HV Lie n w ψ hsum hσ hbar _ hact hlat hspan hwL hψ hint y
  classical

  have hform : ∀ φ : Module.Dual C W, HT.eigProj ρH σ (0, φ) = (0, φ ∘ₗ HT.eigProj ρ σ') := by
    intro φ
    rw [eigProj_zero_form bar σ ρ ρH hact φ]
    refine Prod.ext rfl ?_
    ext x
    simp only [LinearMap.comp_apply]
    rw [eigProj_comp_bar bar σ σ' ρ hsum hσ hbar x]
  have hψe : ∀ j, ψ j = (0, (ψ j).2) := fun j => Prod.ext (hψ j).2.1 rfl

  have hχ : ∀ j x, (ψ j).2 x = (ψ j).2 (HT.eigProj ρ σ' x) := by
    intro j x
    have h := HT.LatBasic.eigProj_of_mem (hψ j).1
    rw [hψe j, hform] at h
    have h2 := congrArg (fun z : W × Module.Dual C W => z.2 x) h
    exact h2.symm

  have hexp : ∀ x, HT.eigProj ρ σ' x = ∑ j, (ψ j).2 x • w j := by
    intro x
    have hm : HT.eigProj ρ σ' x ∈ Submodule.span C (Set.range w) := by
      rw [hspan]; exact HT.LatBasic.eigProj_mem ρ σ' x
    obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun C).1 hm
    have hcj : ∀ j, (ψ j).2 x = c j := by
      intro j

      rw [hχ j x, ← hc, map_sum]
      simp [(hψ j).2.2]
    simp only [hcj]
    exact hc.symm

  have key : ∀ φ : Module.Dual C W, HT.eigProj ρH σ (0, φ) = ∑ j, φ (w j) • ψ j := by
    intro φ
    rw [hform]
    refine Prod.ext ?_ ?_
    · simp [Prod.fst_sum, (hψ _).2.1]
    · ext x
      simp only [LinearMap.comp_apply]

      rw [hexp x, map_sum, Prod.snd_sum, LinearMap.sum_apply]
      refine Finset.sum_congr rfl fun j _ => ?_
      simp [mul_comm]

  have hsm : ∀ (v : V) (z : W × Module.Dual C W), v • z = algebraMap V C v • z := by
    intro v z
    refine Prod.ext ?_ ?_
    · simp
    · ext x
      simp [Algebra.smul_def]
  constructor
  · intro hy
    obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun V).1 hy
    choose φ hφ1 hφ2 using hint
    refine ⟨∑ j, algebraMap V C (c j) • φ j, ?_, ?_⟩
    · rw [hlat]
      intro e he
      rw [LinearMap.sum_apply]
      refine Subring.sum_mem _ fun j _ => ?_
      rw [LinearMap.smul_apply, smul_eq_mul]
      exact Subring.mul_mem _ ⟨c j, rfl⟩ (hφ1 j e he)
    · rw [key]
      refine Finset.sum_congr rfl fun k _ => ?_
      have hk : (∑ j, algebraMap V C (c j) • φ j) (w k) = algebraMap V C (c k) := by
        rw [LinearMap.sum_apply]
        simp only [LinearMap.smul_apply, hφ2, smul_eq_mul, mul_ite, mul_one, mul_zero]
        rw [Finset.sum_ite_eq]
        simp
      rw [hsm, hk]
  · rintro ⟨φ, h0, rfl⟩
    rw [key]
    refine Submodule.sum_mem _ fun j _ => ?_
    obtain ⟨v, hv⟩ := (hlat φ).1 h0 (w j) (hwL j)
    rw [← hv, ← hsm]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)

end GlobalTheory.CompanionTheory.Ar.Flat.ExG.DualFil
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLatticeDualEigenDecomposition =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalRingModTEmbedsStrictHenselian =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalRingModTEmbedsStrictHenselian", "h": "module\n\npublic import Mathlib.Algebra.Exact.Basic\npublic import Mathlib.LinearAlgebra.LinearIndependent.Defs\npublic import Mathlib.RingTheory.Valuation.ValuationRing\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Module.FinitePresentation\npublic import Mathlib.Algebra.Module.Torsion.Basic\npublic import Mathlib.RingTheory.Flat.TorsionFree\npublic import Mathlib.RingTheory.LocalRing.Module\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Flat

theorem exists_basis_split_of_exact_of_fg_valuationRing :
    ∀ (V C A W B : Type) [CommRing V] [IsDomain V] [ValuationRing V] [Field C] [Algebra V C]
      [IsFractionRing V C] [AddCommGroup A] [Module C A] [Module V A] [IsScalarTower V C A]
      [AddCommGroup W] [Module C W] [Module V W] [IsScalarTower V C W] [AddCommGroup B]
      [Module C B] [Module V B] [IsScalarTower V C B] (b : A →ₗ[C] W) (al : W →ₗ[C] B),
      Function.Injective b → Function.Exact b al → ∀ (T : Submodule V W), T.FG →
      ∃ (p q : ℕ) (w : Fin p → A) (t : Fin q → W), LinearIndependent C w ∧
        Submodule.span V (Set.range w) = T.comap (b.restrictScalars V) ∧
        LinearIndependent C (fun j => al (t j)) ∧
        Submodule.span V (Set.range fun j => al (t j)) = T.map (al.restrictScalars V) ∧
        LinearIndependent C (Sum.elim (fun i => b (w i)) t) ∧
        Submodule.span V (Set.range (Sum.elim (fun i => b (w i)) t)) = T := by
  intro V C A W B _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ b al hb hex T hT
  have : IsBezout V := ValuationRing.instIsBezout

  have hfree : ∀ (X : Type) [AddCommGroup X] [Module C X] [Module V X] [IsScalarTower V C X]
      (N : Submodule V X), N.FG → Module.Free V N := by
    intro X _ _ _ _ N hN
    have : Module.Finite V N := Module.Finite.iff_fg.mpr hN
    have : Module.Flat V N := by
      rw [Module.Flat.flat_iff_torsion_eq_bot_of_isBezout, eq_bot_iff]
      intro x hx
      rw [Submodule.mem_bot]
      obtain ⟨a, ha⟩ := (Submodule.mem_torsion_iff x).mp hx
      have h2 : ((a : V) • x : N) = 0 := ha
      have h3 : (a : V) • (x : X) = 0 := by
        have h4 := congrArg Subtype.val h2
        simpa using h4
      have h1 : (algebraMap V C (a : V)) • (x : X) = 0 := by
        rw [algebraMap_smul]; exact h3
      have ha0 : algebraMap V C (a : V) ≠ 0 := by
        intro h
        have h5 : (a : V) = 0 := (IsFractionRing.injective V C) (by rw [h, map_zero])
        exact nonZeroDivisors.coe_ne_zero a h5
      have hx0 : (x : X) = 0 := (smul_eq_zero.mp h1).resolve_left ha0
      exact Subtype.ext (by simp [hx0])
    exact Module.free_of_flat_of_isLocalRing

  have hL : ∀ (X : Type) [AddCommGroup X] [Module C X] [Module V X] [IsScalarTower V C X]
      (N : Submodule V X), N.FG → ∃ (n : ℕ) (v : Fin n → X),
        LinearIndependent C v ∧ Submodule.span V (Set.range v) = N := by
    intro X _ _ _ _ N hN
    have := hfree X N hN
    have : Module.Finite V N := Module.Finite.iff_fg.mpr hN
    let e := (Module.Free.chooseBasis V N).reindex
      (Fintype.equivFin (Module.Free.ChooseBasisIndex V N))
    refine ⟨Fintype.card (Module.Free.ChooseBasisIndex V N), fun i => (e i : X), ?_, ?_⟩
    · rw [← LinearIndependent.iff_fractionRing V C]
      exact e.linearIndependent.map' N.subtype (Submodule.ker_subtype N)
    · have hr : Set.range (fun i => (e i : X)) = N.subtype '' Set.range e := by
        rw [← Set.range_comp]; rfl
      rw [hr, Submodule.span_image, e.span_eq, Submodule.map_subtype_top]

  obtain ⟨q, u, hu, hus⟩ := hL B (T.map (al.restrictScalars V)) (hT.map _)
  have hu_mem : ∀ j, u j ∈ T.map (al.restrictScalars V) := by
    intro j
    rw [← hus]
    exact Submodule.subset_span ⟨j, rfl⟩
  choose t ht hta using fun j => Submodule.mem_map.mp (hu_mem j)
  have hta' : ∀ j, al (t j) = u j := fun j => hta j
  have hal : (fun j => al (t j)) = u := funext hta'

  have : Module.Free V (T.map (al.restrictScalars V)) := hfree B _ (hT.map _)
  have : Module.Finite V (T.map (al.restrictScalars V)) := Module.Finite.iff_fg.mpr (hT.map _)
  have : Module.Finite V T := Module.Finite.iff_fg.mpr hT
  have : Module.FinitePresentation V (T.map (al.restrictScalars V)) :=
    Module.finitePresentation_of_projective V _
  have hker : (LinearMap.ker ((al.restrictScalars V).submoduleMap T)).FG :=
    Module.FinitePresentation.fg_ker _ (LinearMap.submoduleMap_surjective _ _)
  have hK : (T.comap (b.restrictScalars V)).FG := by
    apply Submodule.fg_of_fg_map_injective (b.restrictScalars V) hb
    have heq : (T.comap (b.restrictScalars V)).map (b.restrictScalars V)
        = (LinearMap.ker ((al.restrictScalars V).submoduleMap T)).map T.subtype := by
      ext x
      constructor
      · rintro ⟨a, ha, rfl⟩
        refine ⟨⟨b a, ha⟩, ?_, rfl⟩
        show ((al.restrictScalars V).submoduleMap T) ⟨b a, ha⟩ = 0
        apply Subtype.ext
        show al (b a) = 0
        exact (hex (b a)).mpr ⟨a, rfl⟩
      · rintro ⟨⟨y, hyT⟩, hy0, rfl⟩
        have hy0' : ((al.restrictScalars V).submoduleMap T) ⟨y, hyT⟩ = 0 := hy0
        have hy : al y = 0 := congrArg Subtype.val hy0'
        obtain ⟨a, rfl⟩ := (hex y).mp hy
        exact ⟨a, hyT, rfl⟩
    rw [heq]
    exact hker.map _
  obtain ⟨p, w, hw, hws⟩ := hL A (T.comap (b.restrictScalars V)) hK
  refine ⟨p, q, w, t, hw, hws, ?_, ?_, ?_, ?_⟩
  · rw [hal]; exact hu
  · rw [hal]; exact hus
  · rw [Fintype.linearIndependent_iff]
    intro g hg
    rw [Fintype.sum_sum_type] at hg
    simp only [Sum.elim_inl, Sum.elim_inr] at hg
    have h1 : ∀ i, al (b (w i)) = 0 := fun i => (hex _).mpr ⟨w i, rfl⟩
    have h2 : ∑ j, g (Sum.inr j) • u j = 0 := by
      have h7 := congrArg al hg

      simpa [map_add (f := _), map_sum, map_smul, h1, hta'] using h7
    have h3 : ∀ j, g (Sum.inr j) = 0 :=
      Fintype.linearIndependent_iff.mp hu (fun j => g (Sum.inr j)) h2
    have h4 : ∑ i, g (Sum.inl i) • b (w i) = 0 := by
      simpa [h3] using hg
    have h5 : ∑ i, g (Sum.inl i) • w i = 0 := by
      apply hb

      simpa [map_sum, map_smul] using h4
    have h6 := Fintype.linearIndependent_iff.mp hw (fun i => g (Sum.inl i)) h5
    intro i
    cases i with
    | inl i => exact h6 i
    | inr j => exact h3 j
  · apply le_antisymm
    · rw [Submodule.span_le]
      rintro _ ⟨i, rfl⟩
      cases i with
      | inl i =>
        have hwi : w i ∈ T.comap (b.restrictScalars V) := by
          rw [← hws]; exact Submodule.subset_span ⟨i, rfl⟩
        exact hwi
      | inr j => exact ht j
    · intro x hx
      have hax : al x ∈ T.map (al.restrictScalars V) := Submodule.mem_map_of_mem hx
      rw [← hus, Submodule.mem_span_range_iff_exists_fun] at hax
      obtain ⟨c, hc⟩ := hax
      have hyal : al (x - ∑ j, c j • t j) = 0 := by

        rw [map_sub, map_sum]
        simp only [LinearMap.map_smul_of_tower, hta']
        rw [hc, sub_self]
      obtain ⟨a, ha⟩ := (hex _).mp hyal
      have haK : a ∈ T.comap (b.restrictScalars V) := by
        show b a ∈ T
        rw [ha]
        exact T.sub_mem hx (T.sum_mem fun j _ => T.smul_mem (c j) (ht j))
      rw [← hws] at haK
      have hx_eq : x = b a + ∑ j, c j • t j := by rw [ha]; abel
      rw [hx_eq, Set.Sum.elim_range, Submodule.span_union]
      apply Submodule.add_mem_sup
      · have hr : Set.range (fun i => b (w i)) = (b.restrictScalars V) '' Set.range w := by
          rw [← Set.range_comp]; rfl
        rw [hr, Submodule.span_image]
        exact Submodule.mem_map_of_mem haK
      · exact Submodule.sum_mem _ fun j _ =>
          Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)

end GlobalTheory.CompanionTheory.Ar.Flat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalRingModTEmbedsStrictHenselian =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSpanIntersectionBasis =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSpanIntersectionBasis", "h": "module\n\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Mathlib.RingTheory.Valuation.ValuationRing\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalRingModTEmbedsStrictHenselian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Flat

theorem exists_dual_integral_of_saturated_free_part :
    ∀ (V C : Type) [CommRing V] [IsDomain V] [ValuationRing V] [Field C] [Algebra V C]
      [IsFractionRing V C] (W : Type) [AddCommGroup W] [Module C W] [Module V W]
      [IsScalarTower V C W] [FiniteDimensional C W] (Lie : Submodule V W) (n : ℕ) (w : Fin n → W),
      Lie.FG → Submodule.span C (Lie : Set W) = ⊤ → LinearIndependent C w →
      (∀ y, y ∈ Submodule.span V (Set.range w) ↔ y ∈ Lie ∧ y ∈ Submodule.span C (Set.range w)) →
      ∀ j, ∃ φ : Module.Dual C W, (∀ y ∈ Lie, φ y ∈ (algebraMap V C).range) ∧
        ∀ k, φ (w k) = if k = j then 1 else 0 := by
  intro V C _ _ _ _ _ _ W _ _ _ _ _ Lie n w hfg _ hw hsat j
  classical
  let W' : Submodule C W := Submodule.span C (Set.range w)
  obtain ⟨p, q, u, t, -, hu, ht, -, -, hspan⟩ :=
    exists_basis_split_of_exact_of_fg_valuationRing V C W' W (W ⧸ W') W'.subtype W'.mkQ
      W'.injective_subtype (LinearMap.exact_subtype_mkQ W') Lie hfg
  have hwW : ∀ i, w i ∈ W' := fun i => Submodule.subset_span ⟨i, rfl⟩
  have hli : LinearIndependent C (Sum.elim w t) := by
    rw [Fintype.linearIndependent_iff]
    intro f hf
    rw [Fintype.sum_sum_type] at hf
    simp only [Sum.elim_inl, Sum.elim_inr] at hf
    have h1 : ∀ i, f (Sum.inr i) = 0 := by
      have h := congrArg W'.mkQ hf
      have hz : ∀ i, W'.mkQ (w i) = 0 := fun i => by
        simpa using hwW i

      simp only [map_add (f := _), map_sum, map_smul, hz, smul_zero, Finset.sum_const_zero, zero_add,
      map_zero] at h
      exact Fintype.linearIndependent_iff.mp ht _ h
    have h2 : ∀ i, f (Sum.inl i) = 0 := by
      simp only [h1, zero_smul, Finset.sum_const_zero, add_zero] at hf
      exact Fintype.linearIndependent_iff.mp hw _ hf
    rintro (i | i)
    · exact h2 i
    · exact h1 i
  obtain ⟨g, hg⟩ := (Finsupp.linearCombination C (Sum.elim w t)).exists_leftInverse_of_injective
    (LinearMap.ker_eq_bot.mpr hli)
  have hgs : ∀ a, g (Sum.elim w t a) = Finsupp.single a 1 := fun a => by
    have h1 := LinearMap.congr_fun hg (Finsupp.single a 1)
    simpa [Finsupp.linearCombination_single] using h1
  let φ : Module.Dual C W := Finsupp.lapply (Sum.inl j) ∘ₗ g
  have hφw : ∀ k, φ (w k) = if k = j then 1 else 0 := fun k => by
    have h := hgs (Sum.inl k)
    simp only [Sum.elim_inl] at h
    simp [φ, h, Finsupp.single_apply]
  have hφt : ∀ i, φ (t i) = 0 := fun i => by
    have h := hgs (Sum.inr i)
    simp only [Sum.elim_inr] at h
    simp [φ, h]
  let R : Submodule V C := LinearMap.range (Algebra.linearMap V C)
  have hone : (1 : C) ∈ R := ⟨1, by simp⟩
  have hzero : (0 : C) ∈ R := R.zero_mem
  have hspw : Submodule.span V (Set.range w) ≤ R.comap (φ.restrictScalars V) := by
    rw [Submodule.span_le]
    rintro _ ⟨k, rfl⟩
    change φ (w k) ∈ R
    rw [hφw]
    split_ifs
    · exact hone
    · exact hzero
  have hle : Lie ≤ R.comap (φ.restrictScalars V) := by
    rw [← hspan, Submodule.span_le]
    rintro _ ⟨i | i, rfl⟩
    · apply hspw
      have hmem : u i ∈ Lie.comap (W'.subtype.restrictScalars V) := by
        rw [← hu]
        exact Submodule.subset_span ⟨i, rfl⟩
      exact (hsat _).mpr ⟨hmem, (u i).2⟩
    · change φ (t i) ∈ R
      rw [hφt]
      exact hzero
  refine ⟨φ, fun y hy => ?_, hφw⟩
  obtain ⟨a, ha⟩ := hle hy
  exact ⟨a, by simpa using ha⟩

end GlobalTheory.CompanionTheory.Ar.Flat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSpanIntersectionBasis =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ExistsMonogenicSeparating =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ExistsMonogenicSeparating", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.Valuation.ValuationRing\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.FieldTheory.Finite.Basic\npublic import Mathlib.RingTheory.DedekindDomain.Ideal.Basic\npublic import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas\npublic import Mathlib.RingTheory.Nakayama\n\n"}
section -- clump:auto
@[expose] public section

open NumberField

namespace PositivityTheory.Xgn.MonogenicSeparating

open Polynomial TensorProduct

private theorem ringHom_aeval_int_eq_eval_map_lemma {O B : Type} [CommRing O] [CommRing B] (φ : O →+* B)
    (a : O) (h : ℤ[X]) : φ (aeval a h) = (h.map (Int.castRingHom B)).eval (φ a) := by
  rw [Polynomial.aeval_def, Polynomial.hom_eval₂, Polynomial.eval_map]
  congr 1
  exact RingHom.ext_int _ _

private theorem exists_finite_subalgebra_pi_of_ringHom_lemma_2 {O V S : Type} [CommRing O] [Module.Finite ℤ O]
    [CommRing V] (F : O →+* (S → V)) :
    ∃ R : Subalgebra V (S → V), Module.Finite V R ∧ (∀ a, F a ∈ R) ∧
      ∀ x ∈ R, x ∈ Submodule.span V (Set.range F) := by
  let L : V ⊗[ℤ] O →ₐ[V] (S → V) :=
    Algebra.TensorProduct.lift (Algebra.ofId V (S → V)) F.toIntAlgHom (fun _ _ => Commute.all _ _)
  refine ⟨L.range, Module.Finite.of_surjective L.rangeRestrict.toLinearMap
    L.rangeRestrict_surjective, fun a => (AlgHom.mem_range L).mpr ⟨1 ⊗ₜ[ℤ] a, ?_⟩, ?_⟩
  · simp only [L]
    rw [Algebra.TensorProduct.lift_tmul, map_one, one_mul]
    all_goals rfl
  · intro x hx
    obtain ⟨t, rfl⟩ := (AlgHom.mem_range L).mp hx
    clear hx
    induction t using TensorProduct.induction_on with
    | zero =>
      rw [map_zero]
      exact Submodule.zero_mem _
    | tmul v a =>
      simp only [L]
      rw [Algebra.TensorProduct.lift_tmul]
      show algebraMap V (S → V) v * F a ∈ _
      rw [← Algebra.smul_def]
      exact Submodule.smul_mem _ v (Submodule.subset_span ⟨a, rfl⟩)
    | add t₁ t₂ h₁ h₂ =>
      rw [map_add (f := _)]
      exact Submodule.add_mem _ h₁ h₂

theorem sep_poly (E : Type) [Field E] [NumberField E] (P : Ideal (𝓞 E)) (hP : P.IsPrime)
    (a : 𝓞 E) : ∃ h : ℤ[X], aeval a h ∈ P ∧ aeval a (derivative h) ∉ P := by
  by_cases hbot : P = ⊥
  · subst hbot
    have hint : IsIntegral ℤ a := Algebra.IsIntegral.isIntegral (R := ℤ) a
    refine ⟨minpoly ℤ a, by rw [minpoly.aeval]; exact Ideal.zero_mem _, ?_⟩
    rw [Ideal.mem_bot]
    intro h0
    have hdvd := minpoly.isIntegrallyClosed_dvd hint h0
    have hpos := minpoly.natDegree_pos hint
    have hne : derivative (minpoly ℤ a) ≠ 0 := by
      intro hd
      have := Polynomial.natDegree_eq_zero_of_derivative_eq_zero hd
      omega
    have hle := Polynomial.natDegree_le_of_dvd hdvd hne
    have hlt := Polynomial.natDegree_derivative_lt (p := minpoly ℤ a) (by omega)
    omega
  · haveI : P.IsMaximal := hP.isMaximal hbot
    letI : Field (𝓞 E ⧸ P) := Ideal.Quotient.field P
    haveI : Finite (𝓞 E ⧸ P) := Ideal.finiteQuotientOfFreeOfNeBot P hbot
    letI : Fintype (𝓞 E ⧸ P) := Fintype.ofFinite _
    refine ⟨X ^ Fintype.card (𝓞 E ⧸ P) - X, ?_, ?_⟩
    · rw [map_sub, Polynomial.aeval_X_pow, Polynomial.aeval_X, ← Ideal.Quotient.eq_zero_iff_mem,
        map_sub, map_pow, FiniteField.pow_card, sub_self]
    · rw [← Ideal.Quotient.eq_zero_iff_mem, Polynomial.derivative_sub,
        Polynomial.derivative_X_pow, Polynomial.derivative_X]
      simp only [map_sub, map_mul, map_pow, Polynomial.aeval_X, map_one,
        map_natCast]
      rw [FiniteField.cast_card_eq_zero, zero_mul, zero_sub, neg_eq_zero]
      exact one_ne_zero

theorem ex_unif (E : Type) [Field E] [NumberField E] (P : Ideal (𝓞 E)) (hP : P.IsPrime) :
    ∃ π ∈ P, ∀ b ∈ P, ∃ t, t ∉ P ∧ π ∣ t * b := by
  by_cases hbot : P = ⊥
  · subst hbot
    refine ⟨0, Ideal.zero_mem _, fun b hb => ⟨1, ?_, ?_⟩⟩
    · rw [Ideal.mem_bot]
      exact one_ne_zero
    · rw [Ideal.mem_bot] at hb
      rw [hb, mul_zero]
  · obtain ⟨π, hπ1, hπ2⟩ := Ideal.exists_mem_pow_notMem_pow_succ P hbot hP.ne_top 1
    rw [pow_one] at hπ1
    have hle : Ideal.span {π} ≤ P := (Ideal.span_singleton_le_iff_mem P).mpr hπ1
    obtain ⟨J, hJ⟩ := Ideal.dvd_iff_le.mpr hle
    have hJP : ¬ J ≤ P := by
      intro hJ'
      apply hπ2
      have h2 : P ^ (1 + 1) = P * P := by rw [pow_succ, pow_one]
      have hmem : π ∈ Ideal.span {π} := Ideal.mem_span_singleton_self π
      rw [hJ] at hmem
      rw [h2]
      exact Ideal.mul_mono_right hJ' hmem
    obtain ⟨t, htJ, htP⟩ := SetLike.not_le_iff_exists.mp hJP
    refine ⟨π, hπ1, fun b hb => ⟨t, htP, ?_⟩⟩
    have hbt : b * t ∈ Ideal.span {π} := by
      rw [hJ]
      exact Ideal.mul_mem_mul hb htJ
    rw [Ideal.mem_span_singleton, mul_comm] at hbt
    exact hbt

theorem hom_eq {O B : Type} [CommRing O] [CommRing B] (P : Ideal O) (π : O)
    (hsep : ∀ a : O, ∃ h : ℤ[X], aeval a h ∈ P ∧ aeval a (derivative h) ∉ P)
    (hπ : ∀ b ∈ P, ∃ t, t ∉ P ∧ π ∣ t * b)
    (φ ψ : O →+* B) (h0 : φ π = 0) (h1 : ∀ b ∈ P, ψ b = 0) (h2 : ∀ b, b ∉ P → IsUnit (ψ b))
    (h3 : ∀ a, IsNilpotent (φ a - ψ a)) (a : O) : φ a = ψ a := by
  have hunit : ∀ b, b ∉ P → IsUnit (φ b) := by
    intro b hb
    have := (h3 b).isUnit_add_left_of_commute (h2 b hb) (Commute.all _ _)
    rwa [add_sub_cancel] at this
  have hP : ∀ b ∈ P, φ b = 0 := by
    intro b hb
    obtain ⟨t, ht, s, hs⟩ := hπ b hb
    have hts : φ t * φ b = 0 := by rw [← map_mul, hs, map_mul, h0, zero_mul]
    exact ((hunit t ht).mul_right_eq_zero).mp hts
  obtain ⟨h, hha, hhd⟩ := hsep a
  have e1 : (h.map (Int.castRingHom B)).eval (φ a) = 0 := by
    rw [← ringHom_aeval_int_eq_eval_map_lemma]
    exact hP _ hha
  have e2 : (h.map (Int.castRingHom B)).eval (ψ a) = 0 := by
    rw [← ringHom_aeval_int_eq_eval_map_lemma]
    exact h1 _ hha
  have hu : IsUnit ((derivative (h.map (Int.castRingHom B))).eval (ψ a)) := by
    rw [Polynomial.derivative_map, ← ringHom_aeval_int_eq_eval_map_lemma]
    exact h2 _ hhd
  obtain ⟨v, hv⟩ := hu.exists_left_inv
  obtain ⟨w, hw⟩ := Polynomial.binomExpansion (h.map (Int.castRingHom B)) (ψ a) (φ a - ψ a)
  rw [add_sub_cancel, e1, e2, zero_add] at hw
  have hδ : φ a - ψ a = (φ a - ψ a) * (-(v * w) * (φ a - ψ a)) := by
    linear_combination (-v) * hw - (φ a - ψ a) * hv
  have key : ∀ k : ℕ, φ a - ψ a = (φ a - ψ a) * (-(v * w) * (φ a - ψ a)) ^ k := by
    intro k
    induction k with
    | zero => rw [pow_zero, mul_one]
    | succ k ih =>
      rw [pow_succ, ← mul_assoc, ← ih]
      exact hδ
  obtain ⟨n, hn⟩ := h3 a
  have hkey := key n
  rw [mul_pow, hn, mul_zero, mul_zero] at hkey
  exact sub_eq_zero.mp hkey

theorem adjoin_top {O V R : Type} [CommRing O] [CommRing V] [IsLocalRing V] [CommRing R]
    [Algebra V R] [Module.Finite V R] (c : O →+* V) (φ : O →+* R)
    (hgen : Submodule.span V (Set.range φ) = ⊤) (π : O)
    (hπ0 : c π ∈ IsLocalRing.maximalIdeal V)
    (hsep : ∀ a : O, ∃ h : ℤ[X], aeval a h ∈ (IsLocalRing.maximalIdeal V).comap c ∧
      aeval a (derivative h) ∉ (IsLocalRing.maximalIdeal V).comap c)
    (hπ : ∀ b ∈ (IsLocalRing.maximalIdeal V).comap c, ∃ t,
      t ∉ (IsLocalRing.maximalIdeal V).comap c ∧ π ∣ t * b)
    (hnil : ∀ a, ∃ n, (φ a - algebraMap V R (c a)) ^ n ∈
      (IsLocalRing.maximalIdeal V).map (algebraMap V R)) :
    Algebra.adjoin V {φ π} = ⊤ := by
  have hgen1 : ∀ a : O, ∃ z : R, φ a - algebraMap V R (c a) - φ π * z ∈
      (IsLocalRing.maximalIdeal V).map (algebraMap V R) := by
    obtain ⟨I, hIdef⟩ : ∃ I : Ideal R,
        I = (IsLocalRing.maximalIdeal V).map (algebraMap V R) ⊔ Ideal.span {φ π} := ⟨_, rfl⟩
    have hJI : (IsLocalRing.maximalIdeal V).map (algebraMap V R) ≤ I := by
      rw [hIdef]
      exact le_sup_left
    have hπI : φ π ∈ I := by
      rw [hIdef]
      exact Ideal.mem_sup_right (Ideal.mem_span_singleton_self _)
    have hC0 : ((Ideal.Quotient.mk I).comp φ) π = 0 := by
      rw [RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem]
      exact hπI
    have hC1 : ∀ b ∈ (IsLocalRing.maximalIdeal V).comap c,
        ((Ideal.Quotient.mk I).comp ((algebraMap V R).comp c)) b = 0 := by
      intro b hb
      rw [RingHom.comp_apply, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem]
      exact hJI (Ideal.mem_map_of_mem _ (Ideal.mem_comap.mp hb))
    have hC2 : ∀ b, b ∉ (IsLocalRing.maximalIdeal V).comap c →
        IsUnit (((Ideal.Quotient.mk I).comp ((algebraMap V R).comp c)) b) := by
      intro b hb
      have hcb : IsUnit (c b) := by
        by_contra hcon
        exact hb (Ideal.mem_comap.mpr
          ((IsLocalRing.mem_maximalIdeal _).mpr (mem_nonunits_iff.mpr hcon)))
      exact hcb.map ((Ideal.Quotient.mk I).comp (algebraMap V R))
    have hC3 : ∀ a, IsNilpotent (((Ideal.Quotient.mk I).comp φ) a -
        ((Ideal.Quotient.mk I).comp ((algebraMap V R).comp c)) a) := by
      intro a
      obtain ⟨n, hn⟩ := hnil a
      refine ⟨n, ?_⟩
      simp only [RingHom.comp_apply]
      rw [← map_sub, ← map_pow, Ideal.Quotient.eq_zero_iff_mem]
      exact hJI hn
    intro a
    have hI := PositivityTheory.Xgn.MonogenicSeparating.hom_eq
      ((IsLocalRing.maximalIdeal V).comap c) π hsep hπ _ _ hC0 hC1 hC2 hC3 a
    simp only [RingHom.comp_apply] at hI
    rw [Ideal.Quotient.eq, hIdef] at hI
    obtain ⟨y, hy, z, hz, hyz⟩ := Submodule.mem_sup.mp hI
    obtain ⟨w, rfl⟩ := Ideal.mem_span_singleton'.mp hz
    refine ⟨w, ?_⟩
    have hw : φ a - algebraMap V R (c a) - φ π * w = y := by
      rw [← hyz]
      ring
    rw [hw]
    exact hy
  have hdecomp : ∀ y : R, ∃ v : V, ∃ z : R, y - algebraMap V R v - φ π * z ∈
      (IsLocalRing.maximalIdeal V).map (algebraMap V R) := by
    intro y
    have hy : y ∈ Submodule.span V (Set.range φ) := by
      rw [hgen]
      exact Submodule.mem_top
    induction hy using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨a, rfl⟩ := hx
      obtain ⟨z, hz⟩ := hgen1 a
      exact ⟨c a, z, hz⟩
    | zero => exact ⟨0, 0, by simp⟩
    | add x₁ x₂ _ _ hx₁ hx₂ =>
      obtain ⟨v₁, z₁, h₁⟩ := hx₁
      obtain ⟨v₂, z₂, h₂⟩ := hx₂
      refine ⟨v₁ + v₂, z₁ + z₂, ?_⟩
      have h₁₂ := Ideal.add_mem _ h₁ h₂
      convert h₁₂ using 1
      rw [map_add (f := _)]
      ring
    | smul r x _ hx =>
      obtain ⟨v, z, h⟩ := hx
      refine ⟨r * v, algebraMap V R r * z, ?_⟩
      have h' := Ideal.mul_mem_left _ (algebraMap V R r) h
      convert h' using 1
      rw [Algebra.smul_def, map_mul]
      ring
  obtain ⟨n, hn⟩ := hnil π
  have hπn : (φ π) ^ n ∈ (IsLocalRing.maximalIdeal V).map (algebraMap V R) := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_pow]
    have he : Ideal.Quotient.mk ((IsLocalRing.maximalIdeal V).map (algebraMap V R)) (φ π) =
        Ideal.Quotient.mk ((IsLocalRing.maximalIdeal V).map (algebraMap V R))
          (φ π - algebraMap V R (c π)) := by
      rw [map_sub, Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_map_of_mem _ hπ0), sub_zero]
    rw [he, ← map_pow, Ideal.Quotient.eq_zero_iff_mem]
    exact hn
  obtain ⟨S, hSdef⟩ : ∃ S : Submodule V R, S = Subalgebra.toSubmodule (Algebra.adjoin V {φ π}) ⊔
      (IsLocalRing.maximalIdeal V) • (⊤ : Submodule V R) := ⟨_, rfl⟩
  have hJS : ∀ x ∈ (IsLocalRing.maximalIdeal V).map (algebraMap V R), x ∈ S := by
    intro x hx
    rw [hSdef]
    refine Submodule.mem_sup_right ?_
    rw [Ideal.smul_top_eq_map]
    exact hx
  have hAS : ∀ x ∈ Algebra.adjoin V {φ π}, x ∈ S := by
    intro x hx
    rw [hSdef]
    exact Submodule.mem_sup_left ((Subalgebra.mem_toSubmodule _).mpr hx)
  have hstep : ∀ k : ℕ, ∀ x : R, ∃ s ∈ S, ∃ y : R, x = s + (φ π) ^ k * y := by
    intro k
    induction k with
    | zero =>
      intro x
      exact ⟨0, S.zero_mem, x, by rw [pow_zero, one_mul, zero_add]⟩
    | succ k ih =>
      intro x
      obtain ⟨s, hs, y, rfl⟩ := ih x
      obtain ⟨v, z, hvz⟩ := hdecomp y
      refine ⟨s + (φ π) ^ k * algebraMap V R v +
        (φ π) ^ k * (y - algebraMap V R v - φ π * z), ?_, z, by ring⟩
      refine S.add_mem (S.add_mem hs (hAS _ ?_)) (hJS _ (Ideal.mul_mem_left _ _ hvz))
      exact Subalgebra.mul_mem _
        (Subalgebra.pow_mem _ (Algebra.self_mem_adjoin_singleton V _) _)
        (Subalgebra.algebraMap_mem _ _)
  have htop : (⊤ : Submodule V R) ≤ Subalgebra.toSubmodule (Algebra.adjoin V {φ π}) ⊔
      (IsLocalRing.maximalIdeal V) • (⊤ : Submodule V R) := by
    rw [← hSdef]
    intro x _
    obtain ⟨s, hs, y, rfl⟩ := hstep n x
    exact S.add_mem hs (hJS _ (Ideal.mul_mem_right _ _ hπn))
  have hjac : IsLocalRing.maximalIdeal V ≤ Ideal.jacobson ⊥ :=
    (IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top).ge
  have hle := Submodule.le_of_le_smul_of_le_jacobson_bot Module.Finite.fg_top hjac htop
  rw [eq_top_iff]
  intro x _
  exact (Subalgebra.mem_toSubmodule _).mp (hle Submodule.mem_top)

theorem ex_poly (E : Type) [Field E] [NumberField E] (V : Type) [CommRing V] [IsLocalRing V]
    (S : Type) [Fintype S] (e : S → (𝓞 E →+* V)) (c : 𝓞 E →+* V)
    (hS : ∀ s a, ¬ IsUnit (e s a - c a)) :
    ∃ π : 𝓞 E, ∀ a : 𝓞 E, ∃ g : V[X], ∀ s, e s a = g.eval (e s π) := by
  have hP : ((IsLocalRing.maximalIdeal V).comap c).IsPrime := Ideal.comap_isPrime c _
  obtain ⟨π, hπP, hπ⟩ := PositivityTheory.Xgn.MonogenicSeparating.ex_unif E _ hP
  obtain ⟨R, hRfin, hFR, hRspan⟩ := exists_finite_subalgebra_pi_of_ringHom_lemma_2 (RingHom.pi e)
  haveI := hRfin
  obtain ⟨φ, hφ⟩ : ∃ φ : 𝓞 E →+* R, ∀ a s, (φ a : S → V) s = e s a :=
    ⟨(RingHom.pi e).codRestrict R hFR, fun a s => rfl⟩
  have hgen : Submodule.span V (Set.range φ) = ⊤ := by
    rw [eq_top_iff]
    rintro ⟨x, hx⟩ -
    have key : ∀ y (hy : y ∈ Submodule.span V (Set.range (RingHom.pi e))),
        ∃ h : y ∈ R, (⟨y, h⟩ : R) ∈ Submodule.span V (Set.range φ) := by
      intro y hy
      induction hy using Submodule.span_induction with
      | mem y hy =>
        obtain ⟨a, rfl⟩ := hy
        exact ⟨hFR a, Submodule.subset_span ⟨a, Subtype.ext (funext fun s => hφ a s)⟩⟩
      | zero => exact ⟨R.zero_mem, Submodule.zero_mem _⟩
      | add y₁ y₂ _ _ h₁ h₂ =>
        obtain ⟨m₁, s₁⟩ := h₁
        obtain ⟨m₂, s₂⟩ := h₂
        exact ⟨R.add_mem m₁ m₂, Submodule.add_mem _ s₁ s₂⟩
      | smul r y _ h =>
        obtain ⟨m, s⟩ := h
        exact ⟨R.smul_mem m r, Submodule.smul_mem _ r s⟩
    obtain ⟨_, h⟩ := key x (hRspan x hx)
    exact h
  have hprod : ∀ a, ∏ s', (φ a - algebraMap V R (e s' a)) = 0 := by
    intro a
    apply Subtype.ext
    funext s
    change (R.val (∏ s', (φ a - algebraMap V R (e s' a)))) s = 0
    rw [map_prod, Finset.prod_apply]
    exact Finset.prod_eq_zero (Finset.mem_univ s) (by simp [hφ])
  have hnil : ∀ a, ∃ n, (φ a - algebraMap V R (c a)) ^ n ∈
      (IsLocalRing.maximalIdeal V).map (algebraMap V R) := by
    intro a
    refine ⟨Fintype.card S, ?_⟩
    rw [← Ideal.Quotient.eq_zero_iff_mem, ← Finset.card_univ, ← Finset.prod_const, map_prod,
      ← map_zero (Ideal.Quotient.mk ((IsLocalRing.maximalIdeal V).map (algebraMap V R))),
      ← hprod a, map_prod]
    apply Finset.prod_congr rfl
    intro s _
    rw [Ideal.Quotient.eq]
    have hd : φ a - algebraMap V R (c a) - (φ a - algebraMap V R (e s a)) =
        algebraMap V R (e s a - c a) := by
      rw [map_sub]
      ring
    rw [hd]
    apply Ideal.mem_map_of_mem
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    exact hS s a
  have hadj := PositivityTheory.Xgn.MonogenicSeparating.adjoin_top c φ hgen π
    (Ideal.mem_comap.mp hπP) (fun a => PositivityTheory.Xgn.MonogenicSeparating.sep_poly E _ hP a)
    hπ hnil
  refine ⟨π, fun a => ?_⟩
  have ha : φ a ∈ Algebra.adjoin V {φ π} := by
    rw [hadj]
    exact Algebra.mem_top
  rw [Algebra.adjoin_singleton_eq_range_aeval] at ha
  obtain ⟨g, hg⟩ := (AlgHom.mem_range _).mp ha
  refine ⟨g, fun s => ?_⟩
  have key := Polynomial.aeval_algHom_apply ((Pi.evalAlgHom V (fun _ : S => V) s).comp R.val)
    (φ π) g
  rw [hg] at key
  simp only [AlgHom.comp_apply, Subalgebra.coe_val, Pi.evalAlgHom_apply, hφ,
    Polynomial.coe_aeval_eq_eval] at key
  exact key.symm

theorem ex_idem {O V ι : Type} [CommRing O] [CommRing V] [IsLocalRing V] [Fintype ι]
    (e : ι → (O →+* V)) (σ : ι) (T : Subalgebra V (ι → V)) (hT : ∀ a, (fun s => e s a) ∈ T) :
    ∃ u ∈ T, (∀ s, (∀ a, ¬ IsUnit (e s a - e σ a)) → u s = 1) ∧
      ∀ s, (∃ a, IsUnit (e s a - e σ a)) → u s = 0 := by
  classical
  have hA0 : ∀ s, ∃ a, (∃ b, IsUnit (e s b - e σ b)) → IsUnit (e s a - e σ a) := by
    intro s
    by_cases h : ∃ b, IsUnit (e s b - e σ b)
    · obtain ⟨b, hb⟩ := h
      exact ⟨b, fun _ => hb⟩
    · exact ⟨0, fun h' => absurd h' h⟩
  choose A hA using hA0
  obtain ⟨K, hK⟩ : ∃ K : Finset ι, ∀ t, t ∈ K ↔ ∀ a, ¬ IsUnit (e t a - e σ a) :=
    ⟨Finset.univ.filter (fun t => ∀ a, ¬ IsUnit (e t a - e σ a)), fun t => by simp⟩
  obtain ⟨y, hyT, hy⟩ : ∃ y : ι → (ι → V), (∀ s, y s ∈ T) ∧
      ∀ s r, y s r = ∏ t ∈ K, (e r (A s) - e t (A s)) :=
    ⟨fun s => ∏ t ∈ K, ((fun r => e r (A s)) - algebraMap V (ι → V) (e t (A s))),
      fun s => prod_mem fun t _ => T.sub_mem (hT (A s)) (T.algebraMap_mem _),
      fun s r => by simp [Finset.prod_apply]⟩
  have hy0 : ∀ s r, r ∈ K → y s r = 0 := by
    intro s r hr
    rw [hy]
    exact Finset.prod_eq_zero hr (sub_self _)
  have hyu : ∀ r, r ∉ K → IsUnit (y r r) := by
    intro r hr
    have hex : ∃ a, IsUnit (e r a - e σ a) := by
      by_contra hcon
      push Not at hcon
      exact hr ((hK r).mpr hcon)
    have hu := hA r hex
    rw [hy, IsUnit.prod_iff]
    intro t ht
    have htK := (hK t).mp ht (A r)
    have hsum : (e r (A r) - e t (A r)) + (e t (A r) - e σ (A r)) = e r (A r) - e σ (A r) := by
      ring
    rw [← hsum] at hu
    rcases IsLocalRing.isUnit_or_isUnit_of_isUnit_add hu with h | h
    · exact h
    · exact absurd h htK
  refine ⟨∏ s ∈ Finset.univ.filter (fun s => s ∉ K), (1 - Ring.inverse (y s s) • y s),
    prod_mem fun s _ => T.sub_mem T.one_mem (T.smul_mem (hyT s) _), ?_, ?_⟩
  · intro r hr
    have hrK : r ∈ K := (hK r).mpr hr
    rw [Finset.prod_apply]
    apply Finset.prod_eq_one
    intro s _
    simp [hy0 s r hrK]
  · intro r hr
    have hrK : r ∉ K := fun h => by
      obtain ⟨a, ha⟩ := hr
      exact (hK r).mp h a ha
    rw [Finset.prod_apply]
    apply Finset.prod_eq_zero (i := r) (by simp [hrK])
    simp [Ring.inverse_mul_cancel _ (hyu r hrK)]

end PositivityTheory.Xgn.MonogenicSeparating

theorem PositivityTheory.Xgn.exists_monogenic_separating : ∀ (E : Type) [Field E] [NumberField E] (V C : Type) [CommRing V] [IsDomain V] [ValuationRing V] [Field C] [CharZero C] [Algebra V C] [IsFractionRing V C] (emb : (E →+* C) → (𝓞 E →+* V)), (∀ s (a : 𝓞 E), algebraMap V C (emb s a) = s (a : E)) → Nat.card (E →+* C) = Module.finrank ℚ E → ∀ σ : E →+* C, ∃ π : 𝓞 E, (∀ s s' : E →+* C, (∀ a, ¬ IsUnit (emb s a - emb σ a)) → (∀ a, ¬ IsUnit (emb s' a - emb σ a)) → emb s π = emb s' π → s = s') ∧ ∀ f : (E →+* C) → V, (∀ s, (∃ a, IsUnit (emb s a - emb σ a)) → f s = 0) → ((∃ g : Polynomial V, ∀ s, (∀ a, ¬ IsUnit (emb s a - emb σ a)) → f s = g.eval (emb s π)) ↔ f ∈ Submodule.span V (Set.range fun a : 𝓞 E => fun s => emb s a)) := by
  intro E _ _ V C _ _ _ _ _ _ _ emb hemb hcard σ
  classical
  haveI : IsLocalRing V := ValuationRing.isLocalRing V
  haveI : Finite (E →+* C) := Nat.finite_of_card_ne_zero (by
    rw [hcard]
    exact (Module.finrank_pos (R := ℚ) (M := E)).ne')
  letI : Fintype (E →+* C) := Fintype.ofFinite _
  obtain ⟨π, hπ⟩ := PositivityTheory.Xgn.MonogenicSeparating.ex_poly E V
    {s : E →+* C // ∀ a, ¬ IsUnit (emb s a - emb σ a)} (fun s => emb s.1) (emb σ)
    (fun s a => s.2 a)
  refine ⟨π, ?_, ?_⟩
  · intro s s' hs hs' heq
    have hagree : ∀ a : 𝓞 E, s (a : E) = s' (a : E) := by
      intro a
      obtain ⟨g, hg⟩ := hπ a
      have h₁ := hg ⟨s, hs⟩
      have h₂ := hg ⟨s', hs'⟩
      simp only at h₁ h₂
      rw [← hemb, ← hemb, h₁, h₂, heq]
    exact IsLocalization.ringHom_ext (nonZeroDivisors (𝓞 E)) (RingHom.ext fun a => hagree a)
  · intro f hf
    have hTspan : ∀ x ∈ Algebra.adjoin V (Set.range fun a : 𝓞 E => fun s => emb s a),
        x ∈ Submodule.span V (Set.range fun a : 𝓞 E => fun s => emb s a) := by
      intro x hx
      have hx' : x ∈ Subalgebra.toSubmodule
          (Algebra.adjoin V (Set.range fun a : 𝓞 E => fun s => emb s a)) := hx
      rw [Algebra.adjoin_eq_span] at hx'
      have hcl : ∀ y ∈ Submonoid.closure (Set.range fun a : 𝓞 E => fun s => emb s a),
          y ∈ Set.range fun a : 𝓞 E => fun s => emb s a := by
        intro y hy
        induction hy using Submonoid.closure_induction with
        | mem z hz => exact hz
        | one => exact ⟨1, funext fun s => map_one (emb s)⟩
        | mul z w _ _ hz hw =>
          obtain ⟨a, rfl⟩ := hz
          obtain ⟨b, rfl⟩ := hw
          exact ⟨a * b, funext fun s => map_mul (emb s) a b⟩
      exact Submodule.span_mono (fun y hy => hcl y hy) hx'
    have haeval : ∀ (g : Polynomial V) (s : E →+* C),
        (Polynomial.aeval (fun s => emb s π) g) s = g.eval (emb s π) := by
      intro g s
      have h := Polynomial.aeval_algHom_apply (Pi.evalAlgHom V (fun _ : E →+* C => V) s)
        (fun s => emb s π) g
      simp only [Pi.evalAlgHom_apply, Polynomial.coe_aeval_eq_eval] at h
      exact h.symm
    constructor
    · rintro ⟨g, hg⟩
      obtain ⟨u, huT, hu1, hu0⟩ := PositivityTheory.Xgn.MonogenicSeparating.ex_idem emb σ
        (Algebra.adjoin V (Set.range fun a : 𝓞 E => fun s => emb s a))
        (fun a => Algebra.subset_adjoin ⟨a, rfl⟩)
      have hxπ : (fun s => emb s π) ∈
          Algebra.adjoin V (Set.range fun a : 𝓞 E => fun s => emb s a) :=
        Algebra.subset_adjoin ⟨π, rfl⟩
      have hgT : Polynomial.aeval (fun s => emb s π) g ∈
          Algebra.adjoin V (Set.range fun a : 𝓞 E => fun s => emb s a) :=
        Algebra.adjoin_le (Set.singleton_subset_iff.mpr hxπ)
          (Polynomial.aeval_mem_adjoin_singleton V _)
      have hfu : f = u * Polynomial.aeval (fun s => emb s π) g := by
        funext s
        rw [Pi.mul_apply]
        by_cases hs : ∀ a, ¬ IsUnit (emb s a - emb σ a)
        · rw [hu1 s hs, one_mul, hg s hs, haeval]
        · push_neg at hs
          rw [hu0 s hs, zero_mul, hf s hs]
      rw [hfu]
      exact hTspan _ (Subalgebra.mul_mem _ huT hgT)
    · intro hfspan
      have key : ∀ x (hx : x ∈ Submodule.span V (Set.range fun a : 𝓞 E => fun s => emb s a)),
          ∃ g : Polynomial V, ∀ s, (∀ a, ¬ IsUnit (emb s a - emb σ a)) →
            x s = g.eval (emb s π) := by
        intro x hx
        induction hx using Submodule.span_induction with
        | mem x hx =>
          obtain ⟨a, rfl⟩ := hx
          obtain ⟨g, hg⟩ := hπ a
          exact ⟨g, fun s hs => hg ⟨s, hs⟩⟩
        | zero => exact ⟨0, fun s _ => by simp⟩
        | add x y _ _ hx hy =>
          obtain ⟨g₁, h₁⟩ := hx
          obtain ⟨g₂, h₂⟩ := hy
          exact ⟨g₁ + g₂, fun s hs => by rw [Pi.add_apply, h₁ s hs, h₂ s hs, Polynomial.eval_add]⟩
        | smul r x _ hx =>
          obtain ⟨g, hg⟩ := hx
          exact ⟨r • g, fun s hs => by rw [Pi.smul_apply, hg s hs, Polynomial.eval_smul]⟩
      exact key f hfspan
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ExistsMonogenicSeparating =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StatementUnavailableOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StatementUnavailableOne", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.Valuation.ValuationRing\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ExistsMonogenicSeparating\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField

namespace GlobalTheory.CompanionTheory.Ar.Flat

theorem block_monogenic_of_residual_character : ∀ (E : Type) [Field E] [NumberField E] (V C : Type) [CommRing V] [IsDomain V] [ValuationRing V] [Field C] [CharZero C] [Algebra V C] [IsFractionRing V C] (emb : (E →+* C) → (𝓞 E →+* V)), (∀ s (a : 𝓞 E), algebraMap V C (emb s a) = s (a : E)) → Nat.card (E →+* C) = Module.finrank ℚ E → ∀ σ : E →+* C, ∃ π : 𝓞 E, (∀ s s' : E →+* C, (∀ a, ¬ IsUnit (emb s a - emb σ a)) → (∀ a, ¬ IsUnit (emb s' a - emb σ a)) → emb s π = emb s' π → s = s') ∧ ∀ f : (E →+* C) → V, (∀ s, (∃ a, IsUnit (emb s a - emb σ a)) → f s = 0) → ((∃ g : Polynomial V, ∀ s, (∀ a, ¬ IsUnit (emb s a - emb σ a)) → f s = g.eval (emb s π)) ↔ f ∈ Submodule.span V (Set.range fun a : 𝓞 E => fun s => emb s a)) := by
  exact @PositivityTheory.Xgn.exists_monogenic_separating

end GlobalTheory.CompanionTheory.Ar.Flat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StatementUnavailableOne =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SumEigenProjectionsEqSelf =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SumEigenProjectionsEqSelf", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LatNormGrLatNeZeroOfSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.QuotientEigenDifference\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.EigCoordApply\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open NumberField GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Flat GlobalTheory.CompanionTheory.Ar.Flat.ExG

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.ExG.SumEig

theorem sum_embeddings_eq_trace (E : Type) [Field E] [NumberField E] (C : Type) [Field C] [CharZero C]
    [Fintype (E →+* C)] (hc : Fintype.card (E →+* C) = Module.finrank ℚ E) (x : E) :
    ∑ s : E →+* C, s x = algebraMap ℚ C (Algebra.trace ℚ E x) := by
  classical
  let Ω := AlgebraicClosure C
  let f : (E →+* C) → (E →ₐ[ℚ] Ω) := fun s => RingHom.toRatAlgHom ((algebraMap C Ω).comp s)
  have hf : ∀ s y, f s y = algebraMap C Ω (s y) := fun s y => rfl
  have hinj : Function.Injective f := by
    intro s t hst
    ext y
    have h := congrArg (fun φ : E →ₐ[ℚ] Ω => φ y) hst
    simp only [hf] at h
    exact (algebraMap C Ω).injective h
  have hbij : Function.Bijective f := by
    rw [Fintype.bijective_iff_injective_and_card]
    exact ⟨hinj, by rw [hc, AlgHom.card]⟩
  have key : algebraMap ℚ Ω (Algebra.trace ℚ E x) = ∑ σ : E →ₐ[ℚ] Ω, σ x :=
    trace_eq_sum_embeddings Ω (x := x)
  rw [← hbij.sum_comp (fun σ : E →ₐ[ℚ] Ω => σ x)] at key
  simp only [hf] at key
  apply (algebraMap C Ω).injective

  rw [map_sum, ← key, eq_ratCast (algebraMap ℚ Ω), eq_ratCast (algebraMap ℚ C), map_ratCast]

theorem sum_eigProj (E : Type) [Field E] [NumberField E] (C : Type) [Field C] [CharZero C]
    [Fintype (E →+* C)] (hc : Fintype.card (E →+* C) = Module.finrank ℚ E)
    (M : Type) [AddCommGroup M] [Module C M] (ρ : 𝓞 E →+* Module.End C M) (y : M) :
    ∑ s, HT.eigProj ρ s y = y := by
  classical
  set b := RingOfIntegers.basis E with hb
  have h1 : (1 : E) = ∑ j, ((b.repr 1 j : ℤ) : ℚ) • integralBasis E j := by
    calc (1 : E) = algebraMap (𝓞 E) E 1 := (map_one _).symm
      _ = algebraMap (𝓞 E) E (∑ j, b.repr 1 j • b j) := by rw [b.sum_repr]
      _ = ∑ j, ((b.repr 1 j : ℤ) : ℚ) • integralBasis E j := by

        rw [map_sum]
        refine Finset.sum_congr rfl fun j _ => ?_
        rw [integralBasis_apply, map_zsmul, Int.cast_smul_eq_zsmul]
  have htr : ∀ k, Algebra.trace ℚ E (HT.dualInt E k) = ((b.repr 1 k : ℤ) : ℚ) := by
    intro k
    calc Algebra.trace ℚ E (HT.dualInt E k) = Algebra.traceForm ℚ E (HT.dualInt E k) 1 := by
          rw [Algebra.traceForm_apply, mul_one]
      _ = ∑ j, ((b.repr 1 j : ℤ) : ℚ) * Algebra.traceForm ℚ E (HT.dualInt E k) (integralBasis E j) := by
          conv_lhs => rw [h1]

          rw [map_sum]
          refine Finset.sum_congr rfl fun j _ => ?_
          rw [map_smul, smul_eq_mul]
      _ = ((b.repr 1 k : ℤ) : ℚ) := by
          simp only [HT.dualInt, LinearMap.BilinForm.apply_dualBasis_left, mul_ite, mul_one, mul_zero,
            Finset.sum_ite_eq', Finset.mem_univ, if_true]
  have hsum : ∀ k, ∑ s : E →+* C, s (HT.dualInt E k) = ((b.repr 1 k : ℤ) : C) := by
    intro k
    rw [sum_embeddings_eq_trace E C hc, htr, map_intCast]
  calc ∑ s, HT.eigProj ρ s y = ∑ s : E →+* C, ∑ k, s (HT.dualInt E k) • ρ (b k) y := by
        refine Finset.sum_congr rfl fun s _ => ?_
        simp only [HT.eigProj]
        rw [LinearMap.sum_apply]
        simp only [LinearMap.smul_apply, hb]
    _ = ∑ k, (∑ s : E →+* C, s (HT.dualInt E k)) • ρ (b k) y := by
        rw [Finset.sum_comm]
        refine Finset.sum_congr rfl fun k _ => ?_
        rw [Finset.sum_smul]
    _ = ∑ k, ((b.repr 1 k : ℤ) : C) • ρ (b k) y := by
        refine Finset.sum_congr rfl fun k _ => ?_
        rw [hsum]
    _ = ρ (∑ k, b.repr 1 k • b k) y := by

        rw [map_sum, LinearMap.sum_apply]
        refine Finset.sum_congr rfl fun k _ => ?_
        rw [map_zsmul, LinearMap.smul_apply, Int.cast_smul_eq_zsmul]
    _ = y := by
        rw [b.sum_repr, map_one, Module.End.one_apply]

end GlobalTheory.CompanionTheory.Ar.Flat.ExG.SumEig
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SumEigenProjectionsEqSelf =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CmTypeValuationEmbedding =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CmTypeValuationEmbedding", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.EigCoordApply\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CmTypePolynomialVanishingCriterion\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ConjugateEmbeddingsValuationRankBound\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LatNormGrLatNeZeroOfSpan\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualModuleConjugateEigenAction\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLatticeDualEigenDecomposition\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Mathlib.RingTheory.Valuation.ValuationRing\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSpanIntersectionBasis\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StatementUnavailableOne\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SumEigenProjectionsEqSelf\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ValuationLatticeMatrixReduction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open scoped NNReal
open AlgebraicGeometry CategoryTheory Limits NumberField GlobalTheory.IndefiniteRowSideFullHecke.QuotientEigenDifference GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Flat GlobalTheory.CompanionTheory.Ar.Flat.ExG

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.ExG

theorem targetO : TargetO := by
  intro E _ _ C _ _ ν bar σ σ' rk p q hℓ hint hcard hσ' hbar
  classical
  obtain ⟨ℓ, h0, h1⟩ := hℓ
  haveI : Finite (E →+* C) := Nat.finite_of_card_ne_zero (by
    rw [hcard]; exact Module.finrank_pos.ne')
  letI : Fintype (E →+* C) := Fintype.ofFinite _
  have hcard' : Fintype.card (E →+* C) = Module.finrank ℚ E := by rw [← Nat.card_eq_fintype_card, hcard]
  have hsumAll := _root_.GlobalTheory.CompanionTheory.Ar.Flat.ExG.SumEig.sum_eigProj E C hcard'
  let emb : (E →+* C) → (𝓞 E →+* ν.valuationSubring) := fun s =>
    (s.comp (algebraMap (𝓞 E) E)).codRestrict ν.valuationSubring (fun a => hint s a)
  have hemb : ∀ s (a : 𝓞 E), ((emb s a : ν.valuationSubring) : C) = s (a : E) := fun s a => rfl
  obtain ⟨π, hπ1, hπ2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Flat.block_monogenic_of_residual_character E ν.valuationSubring C emb (fun s a => hemb s a) hcard σ
  let D : (E →+* C) → Prop := fun s => ∀ a, ¬ IsUnit (emb s a - emb σ a)
  let S := {s // D s}
  have hDσ : D σ := fun a => by simp
  let τ : S := ⟨σ, hDσ⟩
  let a : S → ν.valuationSubring := fun s => emb s.1 π
  have ha : Function.Injective a := fun s s' e => Subtype.ext (hπ1 _ _ s.2 s'.2 e)
  have hmono : ∀ f : (E →+* C) → ν.valuationSubring, (∀ s, ¬ D s → f s = 0) →
      ((∃ g : Polynomial ν.valuationSubring, ∀ s, D s → f s = g.eval (emb s π)) ↔
        f ∈ Submodule.span ν.valuationSubring (Set.range fun a : 𝓞 E => fun s => emb s a)) := by
    intro f hf
    refine hπ2 f (fun s hs => hf s ?_)
    intro hd
    obtain ⟨b, hb⟩ := hs
    exact hd b hb

  have hbarE : ∀ s : E →+* C, ∃ s' : E →+* C, ∀ a : 𝓞 E, s' (a : E) = s (bar a : 𝓞 E) := by
    intro s
    have hinj : Function.Injective ((s.comp (algebraMap (𝓞 E) E)).comp bar.toRingHom) := by
      refine (s.injective.comp (FaithfulSMul.algebraMap_injective (𝓞 E) E)).comp bar.injective
    exact ⟨IsFractionRing.lift hinj, fun a => IsFractionRing.lift_algebraMap hinj a⟩
  choose sbar hsbar using hbarE
  let r : S → ℕ := fun s => rk (sbar s.1)
  let P : C := ∏ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C))
  have hne : ∀ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C)) ≠ 0 := by
    intro s hs e
    have : a τ = a s := Subtype.ext (sub_eq_zero.1 e)
    exact (Finset.mem_erase.1 hs).1 (ha this).symm
  have hP : P ≠ 0 := Finset.prod_ne_zero_iff.2 hne
  let Q : C := ∏ s ∈ Finset.univ.erase τ, ((a τ : C) - (a s : C)) ^ r s
  have hQ : Q ≠ 0 := Finset.prod_ne_zero_iff.2 fun s hs => pow_ne_zero _ (hne s hs)
  refine ⟨Q / P ^ (p + q), div_ne_zero hQ (pow_ne_zero _ hP), ?_⟩
  intro W _ _ _ _ _ ρ ρH HV Lie x v w u A hfst hinr hmap hfil hfree hrk hv hvs hw hws had hAl hAs
  have hIv : ν.Integers ν.valuationSubring :=
    { hom_inj := Subtype.val_injective
      map_le_one := fun x => x.2
      exists_of_le_one := fun {r} h => ⟨⟨r, h⟩, rfl⟩ }
  have hsumW := hsumAll W ρ
  have hsumH := hsumAll _ ρH

  have fstE : ∀ (s : E →+* C) (y : W × Module.Dual C W), (HT.eigProj ρH s y).1 = HT.eigProj ρ s y.1 := by
    intro s y
    simp only [HT.eigProj, LinearMap.sum_apply, LinearMap.smul_apply, Prod.fst_sum, Prod.smul_fst, hfst]
  let T : S → (Fin (p + q) → C) →ₗ[C] (W × Module.Dual C W) := fun s => eigCoord ρH x s.1
  let g : S → (Fin (p + q) → C) →ₗ[C] W := fun s => (LinearMap.fst C W (Module.Dual C W)) ∘ₗ T s
  have hgT : ∀ s y, g s y = (T s y).1 := fun s y => rfl
  have Tmem : ∀ s y, T s y ∈ HT.eigSp ρH s.1 := by
    intro s y
    change eigCoord ρH x s.1 y ∈ _
    rw [eigCoord_apply]
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (HT.LatBasic.eigProj_mem _ _ _)
  have gmem : ∀ s y, g s y ∈ HT.eigSp ρ s.1 := by
    intro s y
    rw [HT.LatBasic.mem_eigSp]
    intro b
    rw [hgT, ← hfst, HT.LatBasic.mem_eigSp.1 (Tmem s y) b]
    rfl
  have Tinj : ∀ s, Function.Injective (T s) := by
    intro s
    have hli := HodgeDeterminantLattice.linearIndependent_eigProj (A := ν.valuationSubring) s.1 hfree
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro y hy
    change eigCoord ρH x s.1 y = 0 at hy
    rw [eigCoord_apply] at hy
    exact funext (Fintype.linearIndependent_iff.1 hli y hy)
  have Tsurj : ∀ s y, y ∈ HT.eigSp ρH s.1 → ∃ z, T s z = y := by
    intro s y hy
    have hsp := HodgeDeterminantLattice.span_eigProj (A := ν.valuationSubring) s.1 hfree
    rw [← hsp] at hy
    obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun C).1 hy
    exact ⟨c, by change eigCoord ρH x s.1 c = y; rw [eigCoord_apply]; exact hc⟩

  have projSum : ∀ (f : S → Fin (p + q) → C) (t : S), HT.eigProj ρH t.1 (∑ s, T s (f s)) = T t (f t) := by
    intro f t

    rw [map_sum, Finset.sum_eq_single t]
    · exact HT.LatBasic.eigProj_of_mem (Tmem _ _)
    · intro s _ hs
      exact HT.LatBasic.eigProj_of_ne (fun e => hs (Subtype.ext e).symm) (Tmem _ _)
    · simp
  have hind : ∀ f : S → Fin (p + q) → C, ∑ s, g s (f s) = 0 → ∀ s, g s (f s) = 0 := by
    intro f hf t
    have h2 := congrArg (HT.eigProj ρ t.1) hf

    rw [map_sum, map_zero, Finset.sum_eq_single t] at h2
    · rwa [HT.LatBasic.eigProj_of_mem (gmem _ _)] at h2
    · intro s _ hs
      exact HT.LatBasic.eigProj_of_ne (fun e => hs (Subtype.ext e).symm) (gmem _ _)
    · simp
  have hblk := _root_.GlobalTheory.CompanionTheory.Ar.Flat.ExG.Block.block_freeLattice E C ν emb (fun s a => hemb s a) hcard' D π hmono _ ρH HV (p + q) x hfree
  obtain ⟨hb1, hb2⟩ := hblk
  have sumFst : ∀ f : S → Fin (p + q) → C, (∑ s, T s (f s)).1 = ∑ s, g s (f s) := by
    intro f
    exact map_sum (LinearMap.fst C W (Module.Dual C W)) _ _

  have hr : ∀ s, Module.finrank C (LinearMap.ker (g s)) = r s := by
    intro s
    have e1 : (LinearMap.ker (g s)).map (T s) =
        HT.eigSp ρH s.1 ⊓ LinearMap.ker (LinearMap.fst C W (Module.Dual C W)) := by
      ext y
      constructor
      · rintro ⟨z, hz, rfl⟩
        exact ⟨Tmem s z, hz⟩
      · rintro ⟨h1, h2⟩
        obtain ⟨z, rfl⟩ := Tsurj s y h1
        exact ⟨z, h2, rfl⟩
    change _ = rk (sbar s.1)
    rw [← hrk, ← _root_.GlobalTheory.CompanionTheory.Ar.Flat.ExG.DualRank.finrank_eigSp_inf_ker_fst E C bar s.1 (sbar s.1) W ρ ρH hsumW (hsbar s.1) hbar hinr, ← e1]
    exact (Submodule.equivMapOfInjective _ (Tinj s) _).finrank_eq
  have hspanLie : Submodule.span C (Lie : Set W) = ⊤ := by
    rw [eq_top_iff]
    rintro y -
    have h3 : ((y, 0) : W × Module.Dual C W) ∈ Submodule.span C (HV : Set (W × Module.Dual C W)) := by
      rw [hfree.2.1]; trivial
    have h4 : ∀ z ∈ Submodule.span C (HV : Set (W × Module.Dual C W)), z.1 ∈ Submodule.span C (Lie : Set W) := by
      intro z hz
      induction hz using Submodule.span_induction with
      | mem z hz => exact Submodule.subset_span (hmap ▸ ⟨z, hz, rfl⟩)
      | zero => exact zero_mem _
      | add z z' _ _ h h' => exact add_mem h h'
      | smul c z _ h => exact Submodule.smul_mem _ c h
    exact h4 _ h3
  have hLieFG : Lie.FG := by
    rw [← hmap, hfree.2.2]
    exact (Submodule.fg_span (Set.finite_range _)).map _
  have hwLie : ∀ j, w j ∈ Lie ∧ w j ∈ HT.eigSp ρ σ' := by
    intro j
    have : w j ∈ HT.eigSub ρ σ' Lie := hws ▸ Submodule.subset_span ⟨j, rfl⟩
    exact this
  have hwsp : Submodule.span C (Set.range w) = HT.eigSp ρ σ' := by
    apply le_antisymm
    · rw [Submodule.span_le]
      rintro _ ⟨j, rfl⟩
      exact (hwLie j).2
    · intro y hy
      obtain ⟨c, hc, hcy⟩ := HT.LatBasic.exists_smul_mem ν hIv (L := Lie) (x := y) (by rw [hspanLie]; trivial)
      have h3 : c • y ∈ HT.eigSub ρ σ' Lie := ⟨hcy, Submodule.smul_mem _ c hy⟩
      rw [← hws] at h3
      have h4 : c • y ∈ Submodule.span C (Set.range w) :=
        Submodule.span_le_restrictScalars ν.valuationSubring C _ h3
      have := Submodule.smul_mem _ c⁻¹ h4
      rwa [smul_smul, inv_mul_cancel₀ hc, one_smul] at this
  have hsat : ∀ y, y ∈ Submodule.span ν.valuationSubring (Set.range w) ↔ y ∈ Lie ∧ y ∈ Submodule.span C (Set.range w) := by
    intro y
    rw [hws, hwsp]
    exact Iff.rfl
  have hφ := _root_.GlobalTheory.CompanionTheory.Ar.Flat.exists_dual_integral_of_saturated_free_part ν.valuationSubring C W Lie q w hLieFG hspanLie hw hsat
  have hσbar : sbar σ = σ' := IsLocalization.ringHom_ext (nonZeroDivisors (𝓞 E))
    (RingHom.ext fun b => (hsbar σ b).trans (hσ' b).symm)
  have hrτ : r τ = q := by
    change rk (sbar σ) = q
    rw [hσbar, ← hrk, ← hwsp, finrank_span_eq_card hw, Fintype.card_fin]

  have hex : ∀ i, ∃ z, T τ z = u i := fun i => Tsurj τ _ (had.1 i)
  choose U hU using hex
  have hU1 : ∀ i, g τ (U (Fin.castAdd q i)) = v i := fun i => by
    rw [hgT, hU]; exact had.2.1 i
  have hU2 : ∀ j, g τ (U (Fin.natAdd p j)) = 0 := fun j => by
    rw [hgT, hU]; exact (had.2.2 j).1
  have hTmemSpan : ∀ (n : ℕ) (b : Fin n → Fin (p + q) → C) (z : Fin (p + q) → C),
      z ∈ Submodule.span ν.valuationSubring (Set.range b) ↔
        T τ z ∈ Submodule.span ν.valuationSubring (Set.range fun i => T τ (b i)) := by
    intro n b z
    have e : Submodule.span ν.valuationSubring (Set.range fun i => T τ (b i)) =
        (Submodule.span ν.valuationSubring (Set.range b)).map ((T τ).restrictScalars ν.valuationSubring) := by
      rw [Submodule.map_span, ← Set.range_comp]
      rfl
    rw [e]
    constructor
    · exact fun h => ⟨z, h, rfl⟩
    · rintro ⟨z', h, e'⟩
      rwa [← Tinj τ e']
  have hLB2 : IsLatticeBasis ν (fun j => U (Fin.natAdd p j))
      (eigenQuot (W := fun _ => Fin (p + q) → C) (kerFil a (p + q) g) τ) := by
    refine ⟨?_, ?_⟩
    · apply LinearIndependent.of_comp (T τ)
      rw [Fintype.linearIndependent_iff]
      intro c hc k
      have h2 := congrArg (fun y : W × Module.Dual C W => y.2 (w k)) hc
      simp only [Function.comp, hU, Prod.snd_sum, Prod.smul_snd, LinearMap.sum_apply, LinearMap.smul_apply,
        (had.2.2 _).2, Prod.snd_zero, LinearMap.zero_apply, smul_eq_mul, mul_ite, mul_one, mul_zero] at h2
      simpa using h2
    · ext z
      rw [hTmemSpan]
      simp only [hU]
      rw [_root_.GlobalTheory.CompanionTheory.Ar.Flat.ExG.DualFil.span_iff_proj E ν.valuationSubring C bar σ σ' W ρ ρH HV Lie q w (fun j => u (Fin.natAdd p j)) hsumW hσ' hbar hfst hinr
        hfil hwsp (fun j => (hwLie j).1) (fun j => ⟨had.1 _, (had.2.2 j).1, (had.2.2 j).2⟩) hφ]
      constructor
      · rintro ⟨φ, h1, h2⟩
        obtain ⟨f, hf, hfs⟩ := hb2 _ h1
        refine ⟨f, ⟨hf, fun s => ?_⟩, ?_⟩
        · rw [hgT]
          change (eigCoord ρH x s.1 (f s)).1 = 0
          rw [← hfs, fstE]
          simp
        · apply Tinj τ
          rw [← h2, hfs τ]
          rfl
      · rintro ⟨f, ⟨hf, hg0⟩, rfl⟩
        have h3 := (hb1 f).2 hf
        have h4 : (∑ s, T s (f s)).1 = 0 := by
          rw [sumFst]
          exact Finset.sum_eq_zero fun s _ => hg0 s
        refine ⟨(∑ s, T s (f s)).2, ?_, ?_⟩
        · have : ((0, (∑ s, T s (f s)).2) : W × Module.Dual C W) = ∑ s, T s (f s) := Prod.ext h4.symm rfl
          rw [this]
          exact h3
        · have : ((0, (∑ s, T s (f s)).2) : W × Module.Dual C W) = ∑ s, T s (f s) := Prod.ext h4.symm rfl
          rw [this]
          exact projSum f τ
  have hvs' : ∀ y, y ∈ Submodule.span ν.valuationSubring (Set.range v) ↔
      y ∈ LinearMap.range (g τ) ∧ ∃ f ∈ freeLattice a (p + q), ∑ s, g s (f s) = y := by
    intro y
    rw [hvs]
    constructor
    · rintro ⟨hy1, hy2⟩
      have hy2' : y ∈ HT.eigSp ρ σ := hy2
      rw [← hmap] at hy1
      obtain ⟨η, hη, rfl⟩ := hy1
      change η.1 ∈ HT.eigSp ρ σ at hy2'
      obtain ⟨z, hz⟩ := Tsurj τ _ (HT.LatBasic.eigProj_mem ρH σ η)
      obtain ⟨f, hf, hfs⟩ := hb2 _ hη
      refine ⟨⟨z, ?_⟩, f, hf, ?_⟩
      · change (T τ z).1 = η.1
        rw [hz, fstE]
        exact HT.LatBasic.eigProj_of_mem hy2'
      · have h5 : ∀ s, g s (f s) = HT.eigProj ρ s.1 η.1 := fun s => by
          rw [hgT, ← fstE, hfs s]
        simp only [h5]
        rw [Finset.sum_eq_single τ]
        · exact HT.LatBasic.eigProj_of_mem hy2'
        · intro s _ hs
          exact HT.LatBasic.eigProj_of_ne (fun e => hs (Subtype.ext e)) hy2'
        · simp
    · rintro ⟨⟨z, rfl⟩, f, hf, e⟩
      refine ⟨?_, gmem τ z⟩
      rw [← hmap]
      exact ⟨_, (hb1 f).2 hf, (sumFst f).trans e⟩
  have hLBA : IsLatticeBasis ν (fun i => ∑ j, A i j • U j)
      (eigenQuot (W := fun _ => Fin (p + q) → C) (freeLattice a (p + q)) τ) := by
    have hTA : ∀ i, T τ (∑ j, A i j • U j) = ∑ j, A i j • u j := fun i => by

      simp only [map_sum, map_smul, hU]
    refine ⟨?_, ?_⟩
    · apply LinearIndependent.of_comp (T τ)
      have : (T τ) ∘ (fun i => ∑ j, A i j • U j) = fun i => ∑ j, A i j • u j := funext hTA
      rw [this]
      exact hAl
    · ext z
      rw [hTmemSpan]
      simp only [hTA]
      rw [hAs]
      constructor
      · rintro ⟨η, hη, e⟩
        obtain ⟨f, hf, hfs⟩ := hb2 _ hη
        refine ⟨f, hf, ?_⟩
        apply Tinj τ
        have e' : HT.eigProj ρH σ η = T τ z := e
        rw [← e', hfs τ]
        rfl
      · rintro ⟨f, hf, rfl⟩
        exact ⟨_, (hb1 f).2 hf, projSum f τ⟩
  obtain ⟨ε, hε⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Flat.ExG.Core.det_adapted_core C ν ℓ h0 h1 S a p q τ r W g v U A ha hind hr hrτ hv hvs' hU1 hU2 hLB2 hLBA
  refine ⟨ε, ?_⟩
  change A.det * P ^ (p + q) = _ * Q at hε
  change A.det = ((ε : ν.valuationSubring) : C) * (Q / P ^ (p + q))
  rw [← mul_div_assoc, ← hε, mul_div_cancel_right₀ _ (pow_ne_zero _ hP)]

end GlobalTheory.CompanionTheory.Ar.Flat.ExG

namespace GlobalTheory.CompanionTheory.Ar.Flat

theorem det_adapted_eq_unit_mul_const : ∀ (E : Type) [Field E] [NumberField E] (V C : Type) [CommRing V] [IsDomain V] [ValuationRing V] [Field C] [CharZero C] [Algebra V C] [IsFractionRing V C] (bar : 𝓞 E ≃+* 𝓞 E) (σ σ' : E →+* C) (rk : (E →+* C) → ℕ) (p q : ℕ) (ν : Valuation C NNReal), ν.Integers V → (∃ ℓ : C, 0 < ν ℓ ∧ ν ℓ < 1) → (∀ (s : E →+* C) (a : 𝓞 E), s (a : E) ∈ (algebraMap V C).range) → Nat.card (E →+* C) = Module.finrank ℚ E → (∀ a : 𝓞 E, σ' (a : E) = σ (bar a : 𝓞 E)) → (∀ a, bar (bar a) = a) → ∃ γ : C, γ ≠ 0 ∧ ∀ (W : Type) [AddCommGroup W] [Module C W] [Module V W] [IsScalarTower V C W] [FiniteDimensional C W] (ρ : 𝓞 E →+* Module.End C W) (ρH : 𝓞 E →+* Module.End C (W × Module.Dual C W)) (HV : Submodule V (W × Module.Dual C W)) (Lie : Submodule V W) (x : Fin (p + q) → W × Module.Dual C W) (v : Fin p → W) (w : Fin q → W) (u : Fin (p + q) → W × Module.Dual C W) (A : Matrix (Fin (p + q)) (Fin (p + q)) C), (∀ a y, (ρH a y).1 = ρ a y.1) → (∀ a φ, ρH a (0, φ) = (0, φ ∘ₗ ρ (bar a))) → HV.map ((LinearMap.fst C W (Module.Dual C W)).restrictScalars V) = Lie → (∀ φ : Module.Dual C W, (0, φ) ∈ HV ↔ ∀ e ∈ Lie, φ e ∈ (algebraMap V C).range) → HT.IsFreeOn ρH HV x → (∀ s, Module.finrank C (HT.eigSp ρ s) = rk s) → LinearIndependent C v → Submodule.span V (Set.range v) = HT.eigSub ρ σ Lie → LinearIndependent C w → Submodule.span V (Set.range w) = HT.eigSub ρ σ' Lie → IsAdapted ρH σ v w u → LinearIndependent C (fun i => ∑ j, A i j • u j) → Submodule.span V (Set.range fun i => ∑ j, A i j • u j) = HT.eigQuot ρH σ HV → ∃ ε : Vˣ, A.det = algebraMap V C ε * γ :=
  _root_.GlobalTheory.CompanionTheory.Ar.Flat.ExG.Red.targetV ExG.targetO

end GlobalTheory.CompanionTheory.Ar.Flat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CmTypeValuationEmbedding =====
