module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralEqSumSmallerLevel
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.OneCoset
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.RelIndexNeZeroOfCompactOpen, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.TwistedOrbitalIntegralIndicatorInvIndex

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.RelIndexNeZeroOfCompactOpen =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.RelIndexNeZeroOfCompactOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralEqSumSmallerLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.BCT
open scoped Classical

namespace PositivityTheory.Rg.Bc.ArchbcB.B.M4

section Gen

variable {G : Type} [Group G]

theorem coe_map_conj [TopologicalSpace G] [IsTopologicalGroup G] (H : Subgroup G) (x : G) :
    (H.map (MulAut.conj x).toMonoidHom : Set G) =
      ((Homeomorph.mulLeft x).trans (Homeomorph.mulRight x⁻¹)) '' (H : Set G) := by
  rw [Subgroup.coe_map]
  rfl

theorem inf_map_conj_le_cptPart [TopologicalSpace G] [IsTopologicalGroup G] (T K : Subgroup G)
    (hKo : IsOpen (K : Set G)) (hKc : IsCompact (K : Set G)) (x : G) :
    T ⊓ K.map (MulAut.conj x).toMonoidHom ≤ cptPart T := by
  intro t ht
  have ht' := Subgroup.mem_inf.1 ht
  unfold cptPart
  apply Subgroup.subset_closure
  refine ⟨ht'.1, ?_⟩
  have hC : IsCompact ((K.map (MulAut.conj x).toMonoidHom : Subgroup G) : Set G) := by
    rw [coe_map_conj]; exact hKc.image (Homeomorph.continuous _)
  have hCo : IsOpen ((K.map (MulAut.conj x).toMonoidHom : Subgroup G) : Set G) := by
    rw [coe_map_conj]; exact (Homeomorph.isOpenMap _) _ hKo
  have hCcl := Subgroup.isClosed_of_isOpen _ hCo
  refine hC.of_isClosed_subset isClosed_closure (closure_minimal ?_ hCcl)
  intro y hy
  exact (Subgroup.zpowers_le.2 ht'.2) hy

theorem cptPart_le_comap_conj [TopologicalSpace G] [IsTopologicalGroup G] (T : Subgroup G) {c : G}
    (hc : c ∈ T) : cptPart T ≤ (cptPart T).comap (MulAut.conj c).toMonoidHom := by
  unfold cptPart
  refine (Subgroup.closure_le _).2 ?_
  rintro t ⟨htT, htc⟩
  simp only [Subgroup.coe_comap, Set.mem_preimage]
  apply Subgroup.subset_closure
  refine ⟨?_, ?_⟩
  · simp only [MulEquiv.coe_toMonoidHom, MulAut.conj_apply]
    exact T.mul_mem (T.mul_mem hc htT) (T.inv_mem hc)
  · have hz : (Subgroup.zpowers ((MulAut.conj c).toMonoidHom t) : Set G) =
        ((Homeomorph.mulLeft c).trans (Homeomorph.mulRight c⁻¹)) '' (Subgroup.zpowers t : Set G) := by
      rw [← MonoidHom.map_zpowers, coe_map_conj]
    rw [hz, ← Homeomorph.image_closure]
    exact htc.image (Homeomorph.continuous _)

theorem relIndex_ne_zero_of_compact_open [TopologicalSpace G] [IsTopologicalGroup G] {C U : Subgroup G}
    (hC : IsCompact (C : Set G)) (hU : IsOpen (U : Set G)) : U.relIndex C ≠ 0 := by
  have : CompactSpace C := isCompact_iff_compactSpace.mp hC
  have : Finite (C ⧸ U.subgroupOf C) :=
    Subgroup.quotient_finite_of_isOpen _ (hU.preimage continuous_subtype_val)
  exact Subgroup.index_ne_zero_of_finite

theorem twOrb_indicator_eq_inv_index [TopologicalSpace G] [IsTopologicalGroup G] (θ : G →* G)
    (K I : Subgroup G) (hKo : IsOpen (K : Set G)) (hKc : IsCompact (K : Set G)) (hθK : ∀ k ∈ K, θ k ∈ K)
    (hI : IsLevel θ K I) (δ : G) (X : Set G) (hXI : ∀ i ∈ I, ∀ x, (i * x ∈ X ↔ x ∈ X) ∧ (x * i ∈ X ↔ x ∈ X))
    (hXc : HasCompactSupport (X.indicator (1 : G → ℂ))) (p0 : G)
    (hP : ∀ p : G, p⁻¹ * δ * θ p ∈ X ↔ ∃ c ∈ twCent θ δ, ∃ i ∈ I, p = c * p0 * i)
    (hcpt : cptPart (twCent θ δ) ≤ I.map (MulAut.conj p0).toMonoidHom) :
    twOrb θ K δ (X.indicator 1) = ((I.relIndex K : ℕ) : ℂ)⁻¹ := by
  obtain ⟨hIo, hIK, hθI⟩ := hI
  have hIcl : IsClosed (I : Set G) := I.isClosed_of_isOpen hIo
  have hIc : IsCompact (I : Set G) := hKc.of_isClosed_subset hIcl hIK
  have hcpT : cptPart (twCent θ δ) ≤ twCent θ δ := (Subgroup.closure_le _).2 fun t ht => ht.1
  have hH : IsHecke I (X.indicator (1 : G → ℂ)) := by
    refine ⟨hXc, fun k hk x => ⟨?_, ?_⟩⟩
    · simp only [Set.indicator_apply, (hXI k hk x).1, Pi.one_apply]
    · simp only [Set.indicator_apply, (hXI k hk x).2, Pi.one_apply]
  have hb : ∀ x : G, twCent θ δ ⊓ K.map (MulAut.conj x).toMonoidHom ≤ cptPart (twCent θ δ) ∧
      (twCent θ δ ⊓ I.map (MulAut.conj x).toMonoidHom).relIndex (cptPart (twCent θ δ)) ≠ 0 := by
    intro x
    refine ⟨inf_map_conj_le_cptPart _ K hKo hKc x, ?_⟩
    have hC : IsCompact ((I.map (MulAut.conj p0).toMonoidHom : Subgroup G) : Set G) := by
      rw [coe_map_conj]; exact hIc.image (Homeomorph.continuous _)
    have hO : IsOpen ((I.map (MulAut.conj x).toMonoidHom : Subgroup G) : Set G) := by
      rw [coe_map_conj]; exact (Homeomorph.isOpenMap _) _ hIo
    have h1 := relIndex_ne_zero_of_compact_open hC hO
    have h2 : (I.map (MulAut.conj x).toMonoidHom).relIndex (cptPart (twCent θ δ)) ≠ 0 :=
      fun h => h1 (Subgroup.relIndex_eq_zero_of_le_right hcpt h)
    rw [← Subgroup.inf_relIndex_right]
    have e : twCent θ δ ⊓ I.map (MulAut.conj x).toMonoidHom ⊓ cptPart (twCent θ δ) =
        I.map (MulAut.conj x).toMonoidHom ⊓ cptPart (twCent θ δ) :=
      le_antisymm (le_inf (inf_le_left.trans inf_le_right) inf_le_right)
        (le_inf (le_inf (inf_le_right.trans hcpT) inf_le_left) inf_le_right)
    rw [e, Subgroup.inf_relIndex_right]
    exact h2
  have hq : ∀ q : DoubleCoset.Quotient (twCent θ δ : Set G) (I : Set G),
      X.indicator (1 : G → ℂ) ((Quotient.out q)⁻¹ * δ * θ (Quotient.out q)) ≠ 0 →
        q = DoubleCoset.mk (twCent θ δ) I p0 := by
    intro q hq
    have hm : (Quotient.out q)⁻¹ * δ * θ (Quotient.out q) ∈ X := by
      by_contra h
      exact hq (Set.indicator_of_notMem h _)
    obtain ⟨c, hc, i, hi, he⟩ := (hP _).1 hm
    rw [← DoubleCoset.out_eq' q, DoubleCoset.eq]
    exact ⟨c⁻¹, (twCent θ δ).inv_mem hc, i⁻¹, I.inv_mem hi, by rw [he]; group⟩
  have hfin : {q : DoubleCoset.Quotient (twCent θ δ : Set G) (I : Set G) |
      X.indicator (1 : G → ℂ) ((Quotient.out q)⁻¹ * δ * θ (Quotient.out q)) ≠ 0}.Finite :=
    (Set.finite_singleton (DoubleCoset.mk (twCent θ δ) I p0)).subset
      fun q hq' => Set.mem_singleton_iff.2 (hq q hq')
  have hcl : ∀ c ∈ twCent θ δ, ∀ i ∈ I,
      cptPart (twCent θ δ) ≤ I.map (MulAut.conj (c * p0 * i)).toMonoidHom := by
    intro c hc i hi y hy
    have h1 : c⁻¹ * y * c ∈ cptPart (twCent θ δ) := by
      have := cptPart_le_comap_conj (twCent θ δ) ((twCent θ δ).inv_mem hc) hy
      simpa [MulAut.conj_apply] using this
    obtain ⟨j, hj, hj'⟩ := Subgroup.mem_map.1 (hcpt h1)
    refine Subgroup.mem_map.2 ⟨i⁻¹ * j * i, I.mul_mem (I.mul_mem (I.inv_mem hi) hj) hi, ?_⟩
    simp only [MulEquiv.coe_toMonoidHom, MulAut.conj_apply] at hj' ⊢
    calc c * p0 * i * (i⁻¹ * j * i) * (c * p0 * i)⁻¹ = c * (p0 * j * p0⁻¹) * c⁻¹ := by group
      _ = y := by rw [hj']; group
  have key := _root_.GlobalTheory.BCT.OrbLev.twOrb_eq_sum_smallerLevel G θ K hKo hKc hθK I ⟨hIo, hIK, hθI⟩ δ (X.indicator 1) hH hb hfin
  rw [key.1, key.2]
  rw [finsum_eq_single _ (DoubleCoset.mk (twCent θ δ) I p0)]
  · obtain ⟨h, hh, k, hk, hq0⟩ := (@DoubleCoset.eq _ _ (twCent θ δ) I _ _).1
      (DoubleCoset.out_eq' (DoubleCoset.mk (twCent θ δ) I p0))
    have ho : Quotient.out (DoubleCoset.mk (twCent θ δ) I p0) = h⁻¹ * p0 * k⁻¹ :=
      calc Quotient.out (DoubleCoset.mk (twCent θ δ) I p0)
          = h⁻¹ * (h * Quotient.out (DoubleCoset.mk (twCent θ δ) I p0) * k) * k⁻¹ := by group
        _ = h⁻¹ * p0 * k⁻¹ := by rw [← hq0]
    have hX1 : X.indicator (1 : G → ℂ) ((Quotient.out (DoubleCoset.mk (twCent θ δ) I p0))⁻¹ * δ *
        θ (Quotient.out (DoubleCoset.mk (twCent θ δ) I p0))) = 1 :=
      Set.indicator_of_mem ((hP _).2 ⟨h⁻¹, (twCent θ δ).inv_mem hh, k⁻¹, I.inv_mem hk, ho⟩) _
    have hle := hcl h⁻¹ ((twCent θ δ).inv_mem hh) k⁻¹ (I.inv_mem hk)
    rw [← ho] at hle
    have hR : (twCent θ δ ⊓ I.map (MulAut.conj (Quotient.out (DoubleCoset.mk (twCent θ δ) I p0))).toMonoidHom).relIndex
        (cptPart (twCent θ δ)) = 1 := by
      rw [Subgroup.relIndex, Subgroup.subgroupOf_eq_top.2 (le_inf hcpT hle), Subgroup.index_top]
    rw [hX1, hR]
    simp
  · intro q hne
    have h0 : X.indicator (1 : G → ℂ) ((Quotient.out q)⁻¹ * δ * θ (Quotient.out q)) = 0 := by
      by_contra h
      exact hne (hq q h)
    rw [h0, mul_zero]

theorem rep_mk_eq (θ : G →* G) (x : G) :
    ∃ g : G, TwCl.rep (Quot.mk (fun x y : G => ∃ g, y = g⁻¹ * x * θ g) x : TwCl θ) = g⁻¹ * x * θ g := by
  have e : Quot.mk (fun x y : G => ∃ g, y = g⁻¹ * x * θ g)
      (Quot.out (Quot.mk (fun x y : G => ∃ g, y = g⁻¹ * x * θ g) x)) =
      Quot.mk (fun x y : G => ∃ g, y = g⁻¹ * x * θ g) x := Quot.out_eq _
  exact (GlobalTheory.BCT.StTwTens.twRel_equiv θ).symm ((GlobalTheory.BCT.StTwTens.twRel_equiv θ).eqvGen_iff.1 (Quot.eqvGen_exact e))

theorem clSum_eq_single (θ : G →* G) [TopologicalSpace G] (K : Subgroup G) (S : Set G) (wt f : G → ℂ) (δ0 : G)
    (hS0 : ∀ g : G, g⁻¹ * δ0 * θ g ∈ S)
    (hinv : ∀ g : G, wt (g⁻¹ * δ0 * θ g) * twOrb θ K (g⁻¹ * δ0 * θ g) f = wt δ0 * twOrb θ K δ0 f)
    (hone : ∀ c : TwCl θ, c.rep ∈ S → wt c.rep * twOrb θ K c.rep f ≠ 0 → ∃ g : G, c.rep = g⁻¹ * δ0 * θ g) :
    clSum θ K S wt f = wt δ0 * twOrb θ K δ0 f := by
  unfold clSum
  refine (finsum_eq_single _ (Quot.mk (fun x y : G => ∃ g, y = g⁻¹ * x * θ g) δ0 : TwCl θ) ?_).trans ?_
  · intro c hc
    by_contra hne
    split_ifs at hne with hcS
    · obtain ⟨g, hg⟩ := hone c hcS hne
      apply hc
      have e1 : Quot.mk (fun x y : G => ∃ g, y = g⁻¹ * x * θ g) (Quot.out c) = c := Quot.out_eq c
      rw [← e1]
      change Quot.mk _ (TwCl.rep c) = _
      rw [hg]
      exact (Quot.sound ⟨g, rfl⟩).symm
    · exact hne rfl
  · obtain ⟨g, hg⟩ := rep_mk_eq θ δ0
    rw [hg, if_pos (hS0 g), hinv g]

end Gen

end PositivityTheory.Rg.Bc.ArchbcB.B.M4
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.RelIndexNeZeroOfCompactOpen =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.TwistedOrbitalIntegralIndicatorInvIndex =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.TwistedOrbitalIntegralIndicatorInvIndex", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.OneCoset\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.RelIndexNeZeroOfCompactOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.BCT
open scoped Classical

namespace PositivityTheory.Rg.Bc.ArchbcB.B.M4

section Generic

variable {G : Type} [Group G] [TopologicalSpace G]

theorem finsum_const_mul_eq {α : Type*} (c : ℂ) (g : α → ℂ) : ∑ᶠ i, c * g i = c * ∑ᶠ i, g i :=
  (mul_finsum g c).symm

theorem twisted_orbital_integral_proportional (θ : G →* G) (K : Subgroup G) (δ : G) (f₁ f₂ : G → ℂ) (c : ℂ)
    (h : ∀ p : G, f₁ (p⁻¹ * δ * θ p) = c * f₂ (p⁻¹ * δ * θ p)) : twOrb θ K δ f₁ = c * twOrb θ K δ f₂ := by
  unfold twOrb
  rw [← finsum_const_mul_eq]
  refine finsum_congr fun q => ?_
  have e : (fun k : K => f₁ ((Quotient.out q * k)⁻¹ * δ * θ (Quotient.out q * k))) =
      fun k : K => c * f₂ ((Quotient.out q * k)⁻¹ * δ * θ (Quotient.out q * k)) := funext fun k => h _
  rw [e, _root_.GlobalTheory.BCT.StTwLevel.avg_const_mul]
  ring

theorem twisted_orbital_integral_eq_zero_of_vanish (θ : G →* G) (K : Subgroup G) (δ : G) (f : G → ℂ) (h : ∀ p : G, f (p⁻¹ * δ * θ p) = 0) :
    twOrb θ K δ f = 0 := by
  rw [twisted_orbital_integral_proportional θ K δ f f 0 (fun p => by rw [h p, zero_mul]), zero_mul]

theorem twisted_orbital_integral_indicator_inv_index [IsTopologicalGroup G] [T2Space G] (θ : G →* G) (K I : Subgroup G) (hKo : IsOpen (K : Set G))
    (hKc : IsCompact (K : Set G)) (hθK : ∀ k ∈ K, θ k ∈ K) (hI : IsLevel θ K I) (δ : G) (X : Set G)
    (hXc : IsCompact X) (hXI : ∀ i ∈ I, ∀ g : G, (i * g ∈ X ↔ g ∈ X) ∧ (g * i ∈ X ↔ g ∈ X))
    (hC : CentOK θ K I δ) (p₀ : G) (h1 : OneCoset θ I δ X p₀) :
    twOrb θ K δ (X.indicator 1) = ((I.relIndex K : ℕ) : ℂ)⁻¹ :=
  twOrb_indicator_eq_inv_index θ K I hKo hKc hθK hI δ X hXI
    (HasCompactSupport.intro hXc fun _ hx => Set.indicator_of_notMem hx _) p₀ h1.1 h1.2

theorem twCent_prod {G' : Type} [Group G'] (θ : G →* G) (θ' : G' →* G') (δ : G) (δ' : G') :
    twCent (θ.prodMap θ') (δ, δ') = (twCent θ δ).prod (twCent θ' δ') := by
  ext p
  rw [Subgroup.mem_prod]
  show p * (δ, δ') = (δ, δ') * (θ.prodMap θ') p ↔ p.1 * δ = δ * θ p.1 ∧ p.2 * δ' = δ' * θ' p.2
  exact Prod.ext_iff

theorem map_conj_prod_le {G' : Type} [Group G'] (I : Subgroup G) (I' : Subgroup G') (x : G) (x' : G') :
    (I.map (MulAut.conj x).toMonoidHom).prod (I'.map (MulAut.conj x').toMonoidHom) ≤
      (I.prod I').map (MulAut.conj (x, x')).toMonoidHom := by
  rintro ⟨a, b⟩ hab
  obtain ⟨ha, hb⟩ := Subgroup.mem_prod.1 hab
  obtain ⟨j, hj, rfl⟩ := Subgroup.mem_map.1 ha
  obtain ⟨j', hj', rfl⟩ := Subgroup.mem_map.1 hb
  exact Subgroup.mem_map.2 ⟨(j, j'), Subgroup.mem_prod.2 ⟨hj, hj'⟩, rfl⟩

theorem map_conj_prod_ge {G' : Type} [Group G'] (I : Subgroup G) (I' : Subgroup G') (x : G) (x' : G') :
    (I.prod I').map (MulAut.conj (x, x')).toMonoidHom ≤
      (I.map (MulAut.conj x).toMonoidHom).prod (I'.map (MulAut.conj x').toMonoidHom) := by
  intro p hp
  obtain ⟨⟨j, j'⟩, hj, rfl⟩ := Subgroup.mem_map.1 hp
  obtain ⟨h1, h2⟩ := Subgroup.mem_prod.1 hj
  exact Subgroup.mem_prod.2 ⟨Subgroup.mem_map.2 ⟨j, h1, rfl⟩, Subgroup.mem_map.2 ⟨j', h2, rfl⟩⟩

theorem cptPart_prod_le {G' : Type} [Group G'] [TopologicalSpace G'] [T2Space G] [T2Space G']
    (T : Subgroup G) (T' : Subgroup G') : cptPart (T.prod T') ≤ (cptPart T).prod (cptPart T') := by
  unfold cptPart
  refine (Subgroup.closure_le _).2 ?_
  rintro ⟨t, t'⟩ ⟨htT, htc⟩
  obtain ⟨h1, h2⟩ := Subgroup.mem_prod.1 htT
  refine Subgroup.mem_prod.2 ⟨Subgroup.subset_closure ⟨h1, ?_⟩, Subgroup.subset_closure ⟨h2, ?_⟩⟩
  · have hC := htc.image continuous_fst
    refine hC.of_isClosed_subset isClosed_closure (closure_minimal ?_ hC.isClosed)
    intro y hy
    obtain ⟨k, rfl⟩ := Subgroup.mem_zpowers_iff.1 hy
    exact ⟨(t, t') ^ k, subset_closure (Subgroup.zpow_mem_zpowers _ k), map_zpow (MonoidHom.fst G G') (t, t') k⟩
  · have hC := htc.image continuous_snd
    refine hC.of_isClosed_subset isClosed_closure (closure_minimal ?_ hC.isClosed)
    intro y hy
    obtain ⟨k, rfl⟩ := Subgroup.mem_zpowers_iff.1 hy
    exact ⟨(t, t') ^ k, subset_closure (Subgroup.zpow_mem_zpowers _ k), map_zpow (MonoidHom.snd G G') (t, t') k⟩

theorem cptPart_prod_ge [IsTopologicalGroup G] {G' : Type} [Group G'] [TopologicalSpace G'] [IsTopologicalGroup G']
    [T2Space G] [T2Space G'] (T : Subgroup G) (T' : Subgroup G') :
    (cptPart T).prod (cptPart T') ≤ cptPart (T.prod T') := by
  have hl : cptPart T ≤ (cptPart (T.prod T')).comap (MonoidHom.inl G G') := by
    unfold cptPart
    refine (Subgroup.closure_le _).2 ?_
    rintro t ⟨ht, htc⟩
    rw [SetLike.mem_coe, Subgroup.mem_comap]
    apply Subgroup.subset_closure
    refine ⟨Subgroup.mem_prod.2 ⟨ht, T'.one_mem⟩, ?_⟩
    have hC : IsCompact ((fun y : G => (y, (1 : G'))) '' closure (Subgroup.zpowers t : Set G)) :=
      htc.image (continuous_id.prodMk continuous_const)
    refine hC.of_isClosed_subset isClosed_closure (closure_minimal ?_ hC.isClosed)
    intro y hy
    obtain ⟨k, rfl⟩ := Subgroup.mem_zpowers_iff.1 hy
    exact ⟨t ^ k, subset_closure (Subgroup.zpow_mem_zpowers _ k), map_zpow (MonoidHom.inl G G') t k⟩
  have hr : cptPart T' ≤ (cptPart (T.prod T')).comap (MonoidHom.inr G G') := by
    unfold cptPart
    refine (Subgroup.closure_le _).2 ?_
    rintro t ⟨ht, htc⟩
    rw [SetLike.mem_coe, Subgroup.mem_comap]
    apply Subgroup.subset_closure
    refine ⟨Subgroup.mem_prod.2 ⟨T.one_mem, ht⟩, ?_⟩
    have hC : IsCompact ((fun y : G' => ((1 : G), y)) '' closure (Subgroup.zpowers t : Set G')) :=
      htc.image (continuous_const.prodMk continuous_id)
    refine hC.of_isClosed_subset isClosed_closure (closure_minimal ?_ hC.isClosed)
    intro y hy
    obtain ⟨k, rfl⟩ := Subgroup.mem_zpowers_iff.1 hy
    exact ⟨t ^ k, subset_closure (Subgroup.zpow_mem_zpowers _ k), map_zpow (MonoidHom.inr G G') t k⟩
  rintro ⟨a, b⟩ hab
  obtain ⟨ha, hb⟩ := Subgroup.mem_prod.1 hab
  have e : ((a, b) : G × G') = MonoidHom.inl G G' a * MonoidHom.inr G G' b := by simp
  rw [e]
  exact mul_mem (Subgroup.mem_comap.1 (hl ha)) (Subgroup.mem_comap.1 (hr hb))

theorem g1prod_pf [IsTopologicalGroup G] [T2Space G] {G' : Type} [Group G'] [TopologicalSpace G']
    [IsTopologicalGroup G'] [T2Space G'] (θ : G →* G) (θ' : G' →* G') (K I : Subgroup G) (K' I' : Subgroup G')
    (δ : G) (δ' : G') (X : Set G) (X' : Set G') (p₀ : G) (p₀' : G') :
    (OneCoset θ I δ X p₀ → OneCoset θ' I' δ' X' p₀' →
      OneCoset (θ.prodMap θ') (I.prod I') (δ, δ') (X ×ˢ X') (p₀, p₀')) ∧
    (CentOK θ K I δ → CentOK θ' K' I' δ' → CentOK (θ.prodMap θ') (K.prod K') (I.prod I') (δ, δ')) := by
  unfold OneCoset CentOK
  have hcomp : ∀ p : G × G', p⁻¹ * (δ, δ') * (θ.prodMap θ') p = (p.1⁻¹ * δ * θ p.1, p.2⁻¹ * δ' * θ' p.2) :=
    fun p => rfl
  refine ⟨fun h h' => ⟨fun p => ?_, ?_⟩, fun h h' => ?_⟩
  · rw [hcomp, Set.mem_prod, h.1, h'.1, twCent_prod]
    constructor
    · rintro ⟨⟨z, hz, i, hi, e⟩, ⟨z', hz', i', hi', e'⟩⟩
      exact ⟨(z, z'), Subgroup.mem_prod.2 ⟨hz, hz'⟩, (i, i'), Subgroup.mem_prod.2 ⟨hi, hi'⟩, Prod.ext e e'⟩
    · rintro ⟨z, hz, i, hi, rfl⟩
      obtain ⟨hz1, hz2⟩ := Subgroup.mem_prod.1 hz
      obtain ⟨hi1, hi2⟩ := Subgroup.mem_prod.1 hi
      exact ⟨⟨z.1, hz1, i.1, hi1, rfl⟩, ⟨z.2, hz2, i.2, hi2, rfl⟩⟩
  · rw [twCent_prod]
    exact (cptPart_prod_le _ _).trans ((Subgroup.prod_mono h.2 h'.2).trans (map_conj_prod_le I I' p₀ p₀'))
  · rintro ⟨x1, x2⟩
    rw [twCent_prod]
    refine ⟨?_, ?_⟩
    · intro p hp
      obtain ⟨hpT, hpK⟩ := Subgroup.mem_inf.1 hp
      obtain ⟨h1, h2⟩ := Subgroup.mem_prod.1 hpT
      obtain ⟨k1, k2⟩ := Subgroup.mem_prod.1 (map_conj_prod_ge K K' x1 x2 hpK)
      exact cptPart_prod_ge _ _ (Subgroup.mem_prod.2
        ⟨(h x1).1 (Subgroup.mem_inf.2 ⟨h1, k1⟩), (h' x2).1 (Subgroup.mem_inf.2 ⟨h2, k2⟩)⟩)
    · have h1 : ((twCent θ δ ⊓ I.map (MulAut.conj x1).toMonoidHom).comap (MonoidHom.fst G G')).relIndex
          (cptPart ((twCent θ δ).prod (twCent θ' δ'))) ≠ 0 := by
        have := Subgroup.relIndex_comap_ne_zero (MonoidHom.fst G G') (h x1).2
        exact fun h0 => this (Subgroup.relIndex_eq_zero_of_le_right
          (fun p hp => (Subgroup.mem_prod.1 (cptPart_prod_le _ _ hp)).1) h0)
      have h2 : ((twCent θ' δ' ⊓ I'.map (MulAut.conj x2).toMonoidHom).comap (MonoidHom.snd G G')).relIndex
          (cptPart ((twCent θ δ).prod (twCent θ' δ'))) ≠ 0 := by
        have := Subgroup.relIndex_comap_ne_zero (MonoidHom.snd G G') (h' x2).2
        exact fun h0 => this (Subgroup.relIndex_eq_zero_of_le_right
          (fun p hp => (Subgroup.mem_prod.1 (cptPart_prod_le _ _ hp)).2) h0)
      have h12 : (((twCent θ δ ⊓ I.map (MulAut.conj x1).toMonoidHom).comap (MonoidHom.fst G G')) ⊓
          ((twCent θ' δ' ⊓ I'.map (MulAut.conj x2).toMonoidHom).comap (MonoidHom.snd G G'))).relIndex
          (cptPart ((twCent θ δ).prod (twCent θ' δ'))) ≠ 0 := by
        rw [← Subgroup.relIndex_inf_mul_relIndex]
        refine mul_ne_zero (fun h0 => h1 (Subgroup.relIndex_eq_zero_of_le_right inf_le_right h0)) h2
      refine fun h0 => h12 (Subgroup.relIndex_eq_zero_of_le_left ?_ h0)
      intro p hp
      obtain ⟨hp1, hp2⟩ := Subgroup.mem_inf.1 hp
      obtain ⟨a1, a2⟩ := Subgroup.mem_inf.1 (Subgroup.mem_comap.1 hp1)
      obtain ⟨b1, b2⟩ := Subgroup.mem_inf.1 (Subgroup.mem_comap.1 hp2)
      exact Subgroup.mem_inf.2 ⟨Subgroup.mem_prod.2 ⟨a1, b1⟩,
        map_conj_prod_le I I' x1 x2 (Subgroup.mem_prod.2 ⟨a2, b2⟩)⟩

theorem twisted_class_sum_eq_single_orbit (θ : G →* G) (K : Subgroup G) (S : Set G) (wt f : G → ℂ) (δ₀ : G) (c : ℂ) (hS : δ₀ ∈ S)
    (hinv : ∀ δ ∈ S, ∀ g : G, g⁻¹ * δ * θ g ∈ S)
    (hval : ∀ g : G, wt (g⁻¹ * δ₀ * θ g) * twOrb θ K (g⁻¹ * δ₀ * θ g) f = c)
    (hone : ∀ δ ∈ S, wt δ * twOrb θ K δ f ≠ 0 → ∃ g : G, δ = g⁻¹ * δ₀ * θ g) :
    clSum θ K S wt f = c := by
  have h1 := hval 1
  simp only [inv_one, one_mul, map_one, mul_one] at h1
  rw [clSum_eq_single θ K S wt f δ₀ (fun g => hinv δ₀ hS g) (fun g => (hval g).trans h1.symm)
    (fun c hc hne => hone _ hc hne), h1]

theorem g2zero_pf (θ : G →* G) (K : Subgroup G) (S : Set G) (wt f : G → ℂ)
    (h : ∀ δ ∈ S, wt δ * twOrb θ K δ f = 0) : clSum θ K S wt f = 0 := by
  unfold clSum
  refine (finsum_congr fun c => ?_).trans finsum_zero
  split_ifs with hc
  · exact h _ hc
  · rfl

end Generic

end PositivityTheory.Rg.Bc.ArchbcB.B.M4
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.TwistedOrbitalIntegralIndicatorInvIndex =====
