module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.DetCharacterMemPrincipalCongruenceFixedVectors
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemChainVecsDet
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SeriesIdempotentMulOfMapsToParabolicInduction
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PrincipalCongruenceFixedVectorsLeSmoothVectors
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InjPrimeTo

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SeriesEqProdOfParabolicInductionChain, Development.DiscreteGroups.GlobalIrreducibility.IneEqOfHasGreenLe

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SeriesEqProdOfParabolicInductionChain =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SeriesEqProdOfParabolicInductionChain", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.DetCharacterMemPrincipalCongruenceFixedVectors\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemChainVecsDet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SeriesIdempotentMulOfMapsToParabolicInduction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InjPrimeTo\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial GlobalTheory.GLq GlobalTheory.GLp GlobalTheory.GLp.Supp GlobalTheory.SerSys GlobalTheory.TypeLeaf Formalism.BasicNotions Formalism.MainNotions.N Formalism.MainNotions.ArithmeticCylinders
open scoped Classical

namespace GlobalTheory.SerSys

theorem has_prod_of_inInd : ∀ (g : ℕ) [Fact g.Prime] (S : Sys g) (π : GLRep g) (L : List (GLRep g)), InInd π L → ∀ F, Has S π.2.ρ F → ∃ fs : List (ZMod g)[X], List.Forall₂ (fun (ρ : GLRep g) f => Has S ρ.2.ρ f) L fs ∧ F = fs.prod := by
  intro g _ S π L hL
  induction hL with
  | nil π h0 _ =>
    intro F hF
    refine ⟨[], List.Forall₂.nil, ?_⟩
    obtain ⟨n, r⟩ := π
    simp only at h0
    subst h0
    obtain ⟨v, -, hv⟩ := hF
    have hne : S.e 0 F ≠ 0 := by
      intro h
      apply hv
      simp [h, actK]
    obtain ⟨hm, hd, -⟩ := S.label 0 F hne
    simpa using Polynomial.eq_one_of_monic_natDegree_zero hm hd
  | cons π σ ρ L hπ _ _ hmap ih =>
    intro F hF
    obtain ⟨f, f', hf, hf', rfl⟩ :=
      _root_.GlobalTheory.SerSys.Prod.series_of_mapsToProd g S π.1 σ.1 ρ.1 _ π.2.ρ _ _ σ.2.ρ ρ.2.ρ hπ hmap F hF
    obtain ⟨fs, hfs, rfl⟩ := ih f hf
    exact ⟨f' :: fs, List.Forall₂.cons hf' hfs, by simp [mul_comm]⟩

end GlobalTheory.SerSys
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SeriesEqProdOfParabolicInductionChain =====

-- ===== clump member: Development.DiscreteGroups.GlobalIrreducibility.IneEqOfHasGreenLe =====
-- clump-header: {"m": "Development.DiscreteGroups.GlobalIrreducibility.IneEqOfHasGreenLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PrincipalCongruenceFixedVectorsLeSmoothVectors\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.DetCharacterMemPrincipalCongruenceFixedVectors\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemChainVecsDet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SeriesEqProdOfParabolicInductionChain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace DiscreteGroups.sglob.DzType.Rt

open Polynomial GlobalTheory GlobalTheory.GLq GlobalTheory.GLp GlobalTheory.GLp.Supp GlobalTheory.SerSys GlobalTheory.SerSys.TameGen CategoryTheory
open scoped Classical

variable {g : ℕ} [Fact g.Prime]

def TameParamLe (b : ℕ) (L : LabelDatum g) {LP : Type} (ine : LP → ℂ[X]) (rec : GLRep g → LP) : Prop :=
  ∀ ρ : GLRep g, ρ.1 ≤ b → IsSC ρ → ∀ (τ : FDRep ℂ (Gn g ρ.1)) (P : (ZMod g)[X]), IsCuspOf L P τ.character →
    Inflates ρ.2.ρ τ → ine (rec ρ) = liftPoly L.teich P

def PinnedLe (b : ℕ) (S : Sys g) (teich : Formalism.CyclotomicNorms.Fbar g → ℂ) {LP : Type} (ine : LP → ℂ[X]) (rec : GLRep g → LP) :
    Prop :=
  ∀ ρ : GLRep g, ρ.1 ≤ b → IsSC ρ → ∀ τ : FDRep ℂ (Gn g ρ.1), Simple τ → FiniteGL.IsCuspidal τ.ρ →
    Inflates ρ.2.ρ τ → ∀ f, Representation.asAlgebraHom τ.ρ (S.e ρ.1 f) = 1 → ine (rec ρ) = liftPoly teich f

theorem InInd.rank_le {π : GLRep g} {T : List (GLRep g)} (h : InInd π T) : ∀ ρ ∈ T, ρ.1 ≤ π.1 := by
  induction h with
  | nil π _ _ => intro ρ hρ; simp at hρ
  | cons π σ ρ T _ _ _ hm ih =>
    intro ρ' hρ'
    have e : π.1 = σ.1 + ρ.1 := hm.1
    rcases List.mem_cons.1 hρ' with rfl | h'
    · omega
    · have := ih ρ' h'
      omega

theorem ine_eq_of_isSC_le (b : ℕ) (S : Sys g) (teich : Formalism.CyclotomicNorms.Fbar g → ℂ) {LP : Type} (ine : LP → ℂ[X])
    (rec : GLRep g → LP) (h2 : DepthZeroCuspidal g) (h3 : PinnedLe b S teich ine rec) (ρ : GLRep g) (hb : ρ.1 ≤ b)
    (hρ : IsSC ρ) (f : (ZMod g)[X]) (h : Has S ρ.2.ρ f) : ine (rec ρ) = liftPoly teich f := by
  obtain ⟨τ, φ, hs, hinj, heq, he⟩ := exists_simple_of_has S _ f h
  have hφ : (fixK1 ρ.2.ρ).subtype ∘ₗ φ ≠ 0 := fun e => by
    have h0 : ∀ u : τ, u = 0 := fun u => hinj (Subtype.ext (by simpa using LinearMap.congr_fun e u))
    exact id_ne_zero τ (by ext u; exact (h0 _).trans (h0 _).symm)
  have hfix : fixK1 ρ.2.ρ ≠ ⊥ := fun e => hφ (LinearMap.ext fun u => (Submodule.eq_bot_iff _).1 e _ (φ u).2)
  refine h3 ρ hb hρ τ hs (fun c hc hc' u hu => hinj ?_) ⟨_, hφ, fun k w => ?_⟩ f he
  · rw [map_zero]
    exact h2 ρ hρ hfix c hc hc' _ fun x hx => by rw [← heq, hu x hx]
  · simp only [LinearMap.comp_apply, Submodule.subtype_apply, heq, repK_red]

theorem ine_eq_of_has_le (b : ℕ) (S : Sys g) (teich : Formalism.CyclotomicNorms.Fbar g → ℂ) (LP : Type) (ine : LP → ℂ[X])
    (rec : GLRep g → LP) (h1 : SupportCompat ine rec) (h2 : DepthZeroCuspidal g) (h3 : PinnedLe b S teich ine rec)
    (π : GLRep g) (hb : π.1 ≤ b) (hπ : IsIrrRep π.2.ρ) (hs : PRep.IsSmooth π.2.ρ) (f : (ZMod g)[X])
    (h : Has S π.2.ρ f) : ine (rec π) = ((Formalism.CyclotomicNorms.rootsBar f).map fun x => X - C (teich x)).prod := by
  obtain ⟨L, hL, hsc, he⟩ := h1 π hπ hs
  have hbL : ∀ ρ ∈ L, ρ.1 ≤ b := fun ρ hρ => (InInd.rank_le hL ρ hρ).trans hb
  obtain ⟨fs, hfs, rfl⟩ := _root_.GlobalTheory.SerSys.has_prod_of_inInd g S π L hL f h
  rw [he]
  change _ = liftPoly teich fs.prod
  clear he hL h
  suffices fs.prod.Monic ∧ (L.map fun ρ => ine (rec ρ)).prod = liftPoly teich fs.prod from this.2
  induction hfs with
  | nil => simp [liftPoly_one]
  | @cons ρ f L fs hρ _ ih =>
    obtain ⟨hm, ih⟩ := ih (fun ρ' h' => hsc ρ' (List.mem_cons_of_mem _ h'))
      (fun ρ' h' => hbL ρ' (List.mem_cons_of_mem _ h'))
    refine ⟨by simpa using (Has.monic hρ).mul hm, ?_⟩
    rw [List.map_cons, List.prod_cons, List.prod_cons, liftPoly_mul _ (Has.monic hρ).ne_zero hm.ne_zero, ih,
      ine_eq_of_isSC_le b S teich ine rec h2 h3 ρ (hbL ρ List.mem_cons_self) (hsc ρ List.mem_cons_self) f hρ]

theorem pinned_of_green_le (b : ℕ) (S : Sys g) (L : LabelDatum g) {LP : Type} (ine : LP → ℂ[X]) (rec : GLRep g → LP)
    (hG : Green) (hT : TameParamLe b L ine rec) (hS : LabelsCusp S L) : PinnedLe b S L.teich ine rec := by
  intro ρ hb hρ τ hs hc hi f he
  obtain ⟨t, h1, -, h3⟩ := hG g L ρ.1 hρ.1
  obtain ⟨P, hP, e⟩ := h3 _ (isCusp_character hρ.1 τ hs hc)
  have hP' : IsCuspOf L P τ.character := e ▸ (h1 P hP).1
  have : f = P := by
    by_contra hne
    apply hS _ τ P hP'
    rw [← one_mul (Representation.asAlgebraHom τ.ρ _), ← he, ← map_mul, S.orth _ _ _ hne, map_zero]
  rw [this]
  exact hT ρ hb hρ τ P hP' hi

theorem ine_eq_of_has_green_le (b : ℕ) (S : Sys g) (L : LabelDatum g) (LP : Type) (ine : LP → ℂ[X])
    (rec : GLRep g → LP) (h1 : SupportCompat ine rec) (h2 : DepthZeroCuspidal g) (hG : Green)
    (hT : TameParamLe b L ine rec) (hS : LabelsCusp S L) (π : GLRep g) (hb : π.1 ≤ b) (hπ : IsIrrRep π.2.ρ)
    (hs : PRep.IsSmooth π.2.ρ) (f : (ZMod g)[X]) (h : Has S π.2.ρ f) :
    ine (rec π) = ((Formalism.CyclotomicNorms.rootsBar f).map fun x => X - C (L.teich x)).prod :=
  ine_eq_of_has_le b S L.teich LP ine rec h1 h2 (pinned_of_green_le b S L ine rec hG hT hS) π hb hπ hs f h

end DiscreteGroups.sglob.DzType.Rt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.GlobalIrreducibility.IneEqOfHasGreenLe =====
