module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosocles
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsListPairwiseNotRel
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportIrrGLBijectiveDegreeCharZeroStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsCuspidalTwistsCharactersStatement
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
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosoclesStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIso, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIsoStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosoclesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosoclesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosocles\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem _root_.GlobalTheory.T.transport_keeps_products_cosocles : ∀ (k k' : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [CharZero k] [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k'] [CharZero k'] (i : k ≃+* k'), Continuous i → ∀ (r N : ℕ) (x : Fin r → IrrGL (k := k)) (x' : Fin r → IrrGL (k := k')) (hd : ∑ a, (x a).1 = N) (hd' : ∑ a, (x' a).1 = N) (y : IrrRep (GL (Fin N) k)) (y' : IrrRep (GL (Fin N) k')), (∀ a, RepRel i (x a) (x' a)) → RepRel i (cls y) (cls y') → IsCosocle y.ρ (prodIrr x hd) → IsCosocle y'.ρ (prodIrr x' hd') := by
  first | exact @GlobalTheory.FieldTransport.isCosocle_prodIrr_transport
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosoclesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsListPairwiseNotRel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportIrrGLBijectiveDegreeCharZeroStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsCuspidalTwistsCharactersStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosoclesStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem GlobalTheory.LocLanglands.isL_transport : ∀ (k k' : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [CharZero k] [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k'] [CharZero k'] (i : k ≃+* k'), Continuous i → ∀ (l : List (Segment k)) (l' : List (Segment k')) (x : IrrGL (k := k)) (x' : IrrGL (k := k')), List.Forall₂ (fun (Δ : Segment k) (Δ' : Segment k') => RepRel i Δ.first Δ'.first ∧ Δ.len = Δ'.len) l l' → RepRel i x x' → IsL (l : Multiset (Segment k)) x.rep → IsL (l' : Multiset (Segment k')) x'.rep := by
  intro k k' _ _ _ _ _ _ _ _ _ _ i hi l l' x x' hl hx hL
  obtain ⟨T, hT, hTd⟩ := GlobalTheory.T.transportIrrGL_bijective_degree_charZero k k' i hi
  have hC := (GlobalTheory.T.transport_keeps_cuspidal_twists_characters k k' i hi).1
  have hprod := GlobalTheory.T.transport_keeps_products_cosocles k k' i hi
  have hcusp : ∀ y, y.IsCusp → (T y).IsCusp := fun y hy => (hC y (T y) ((hT _ _).2 rfl)).1.1 hy
  have hnu : ∀ (y : IrrGL (k := k)) (s : ℂ), T (y.nu s) = (T y).nu s := fun y s =>
    (hT _ _).1 ((hC y (T y) ((hT _ _).2 rfl)).2 s)
  have hcls : ∀ {K : Type} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
      (y : IrrGL (k := K)), GlobalTheory.LocLanglands.cls y.2.rep = y := by
    intro K _ _ _ _ y
    obtain ⟨n, c⟩ := y
    unfold GlobalTheory.LocLanglands.cls
    exact congrArg (Sigma.mk n) c.cl_rep

  have H : ∀ (y : IrrGL (k := k)) (y' : IrrGL (k := k')), RepRel i y y' → ∀ (r r' : ℕ) (e : r = r') (xs : Fin r → IrrGL (k := k))
      (xs' : Fin r' → IrrGL (k := k')) (hd : ∑ a, (xs a).1 = y.1) (hd' : ∑ a, (xs' a).1 = y'.1),
      (∀ a, RepRel i (xs a) (xs' (Fin.cast e a))) →
      IsCosocle y.rep (prodIrr xs hd) → IsCosocle y'.rep (prodIrr xs' hd') := by
    intro y y' hy r r' e xs xs' hd hd' hxs hc
    subst e
    obtain ⟨n, c⟩ := y
    obtain ⟨n', c'⟩ := y'
    have e : n' = n := by
      have := hTd ⟨n, c⟩
      rw [(hT _ _).1 hy] at this
      exact this
    subst e
    exact hprod r n' xs xs' hd hd' c.rep c'.rep (fun a => hxs a)
      (by rw [hcls ⟨n', c⟩, hcls ⟨n', c'⟩]; exact hy) hc

  obtain ⟨S, hS1, hS2⟩ : ∃ S : Segment k → Segment k', (∀ Δ, (S Δ).first = T Δ.first) ∧ ∀ Δ, (S Δ).len = Δ.len :=
    ⟨fun Δ => Segment.ofFirst (T Δ.first) (hcusp _ Δ.isCusp_first) Δ.len Δ.len_pos,
      fun Δ => Segment.first_ofFirst _ _ _ _, fun Δ => Segment.len_ofFirst _ _ _ _⟩
  have key : ∀ (m : List (Segment k)) (m' : List (Segment k')),
      List.Forall₂ (fun (Δ : Segment k) (Δ' : Segment k') => RepRel i Δ.first Δ'.first ∧ Δ.len = Δ'.len) m m' →
      m' = m.map S := by
    intro m m' hm
    induction hm with
    | nil => rfl
    | @cons Δ Δ' _ _ h _ ih =>
      rw [List.map_cons, ih]
      exact congrArg (· :: _) (Segment.ext_first (by rw [hS1]; exact ((hT _ _).1 h.1).symm)
        (by rw [hS2]; exact h.2.symm))
  have hl' := key l l' hl
  have hprec : ∀ Δ Δ' : Segment k, (S Δ).Precedes (S Δ') → Δ.Precedes Δ' := by
    intro Δ Δ' h
    rw [Segment.precedes_iff, hS2, hS2, hS1, hS1] at h
    rw [Segment.precedes_iff]
    obtain ⟨j, h1, h2, h3, e⟩ := h
    exact ⟨j, h1, h2, h3, T.injective (by rw [hnu]; exact e)⟩
  have hseg : ∀ (Δ : Segment k) (y : IrrGL (k := k)), IsLSeg Δ y.rep → IsLSeg (S Δ) (T y).rep := by
    intro Δ y hy
    unfold IsLSeg at hy ⊢
    obtain ⟨hd, hc⟩ := hy
    have ht : ∀ a, T (Δ.term a) = (S Δ).term (Fin.cast (hS2 Δ).symm a) := fun a => by
      simp only [Segment.term, Fin.val_cast, hS1, hnu]
    have hd' : ∑ a, ((S Δ).term a).1 = (T y).1 := by
      rw [hTd, ← hd]
      refine Fintype.sum_equiv (finCongr (hS2 Δ)) _ _ fun a => ?_
      rw [← hTd (Δ.term _), ht]
      rfl
    exact ⟨hd', H y (T y) ((hT _ _).2 rfl) Δ.len (S Δ).len (hS2 Δ).symm Δ.term (S Δ).term hd hd'
      (fun a => (hT _ _).2 (ht a)) hc⟩
  obtain ⟨r, xs, hd, ⟨Δ, hord, hΔ⟩, hc⟩ := hL
  have hx' : T x = x' := (hT _ _).1 hx
  have hd' : ∑ a, (T (xs a)).1 = x'.1 := by
    rw [← hx', hTd, ← hd]
    exact Finset.sum_congr rfl fun a _ => hTd _
  refine ⟨r, fun a => T (xs a), hd', ⟨fun a => S (Δ a), ⟨?_, fun a b hab hp => hord.2 a b hab (hprec _ _ hp)⟩,
    fun a => hseg _ _ (hΔ a)⟩, H x x' hx r r rfl xs _ hd hd' (fun a => (hT _ _).2 rfl) hc⟩
  rw [hl', ← Multiset.map_coe, ← hord.1, Multiset.map_map]
  rfl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIsoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIsoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIsoStatement =====
