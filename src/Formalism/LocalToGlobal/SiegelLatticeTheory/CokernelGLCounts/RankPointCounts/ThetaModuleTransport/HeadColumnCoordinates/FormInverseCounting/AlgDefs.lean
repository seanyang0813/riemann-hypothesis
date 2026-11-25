module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.DlRSwapZero
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.HSumRight
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.LocCnt0L
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.ThetaC
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.ModularBoundZeroHolds
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.GraphTransport
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.OmPMemSpan
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LsDatumA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.MemSpanOfSharp, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.CoordLHolds, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.FormInverseCounting.LocCnt0LOfTheta, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.FormInverseCounting.AlgDefs

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.MemSpanOfSharp =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.MemSpanOfSharp", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.DlRSwapZero\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.HSumRight\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.GraphTransport\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.OmPMemSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LsDatumA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ValuativeRel Formalism.MainNotions.S.Loc Formalism.L2.SG.LsDatumA

namespace Formalism.L2.SG.LocalCountModules.LocCntCommon

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]
variable {M : Model F E} {V : Type} [AddCommGroup V] [Module E V] (H : HermSp M V)
variable {r : ℕ}

def PcL {t : Term V M r} (hg : GoodL H t) : H.Wb t.f →ₗ[E] E × E :=
  coordW H t.f (t.f (Fin.last r)) (omP H t.f t.f') (z_mem H t.f t.T hg.2.1)
    (omP_mem H t.f t.f' hg.2.2.2.1)

def PcL' {t : Term V M r} (hg : GoodL H t) : H.Wb t.f' →ₗ[E] E × E :=
  coordW H t.f' (omP H t.f' t.f) (t.f' (Fin.last r))
    (omP_mem H t.f' t.f (unit_swap H t.f t.f' hg.2.2.2.1)) (z_mem H t.f' t.T' hg.2.2.1)

theorem sharp_inl {t : Term V M r} (hg : GoodL H t) (u : ↥(MMsharp H t)) (a : Fin (r + 1)) :
    (sharpEquiv H t (unit_gramH H hg) u (Sum.inl a) : E) = H.h u (t.f a) := by
  show H.h u (H.MMfam t (Sum.inl a)) = H.h u (t.f a)
  simp only [HermSp.MMfam, hg.1, Sum.elim_inl]

theorem sharp_inr {t : Term V M r} (hg : GoodL H t) (u : ↥(MMsharp H t)) (b : Fin (r + 1)) :
    (sharpEquiv H t (unit_gramH H hg) u (Sum.inr b) : E) = H.h u (t.f' b) := by
  show H.h u (H.MMfam t (Sum.inr b)) = H.h u (t.f' b)
  simp only [HermSp.MMfam, hg.1, Sum.elim_inr]

theorem mem_span_of_sharp {t : Term V M r} (hg : GoodL H t) (u : ↥(MMsharp H t)) :
    (u : V) ∈ Submodule.span E (Set.range (Sum.elim t.f t.f')) := by
  have h := ((mem_MMsharp_iff H t u).1 u.2).1
  simp only [HermSp.MMfam, hg.1] at h
  exact h

theorem gam_image {t : Term V M r} (hg : GoodL H t) :
    (fun p => (Psi H hg p.1, PcL H hg p.2)) '' Gam H t =
      GamC M.L.O (M.L.cj : E →+* E) (H.Zhat t.f t.f') (algebraMap F E t.T) (algebraMap F E t.T') := by
  ext ⟨d, c⟩
  constructor
  · rintro ⟨_, ⟨u, hu, rfl⟩, he⟩
    refine ⟨sharpEquiv H t (unit_gramH H hg) u, fun a => ?_, ?_⟩
    · apply Subtype.ext
      rw [sharp_inl H hg]
      exact (mem_perpX_iff H t.f u).1 hu a
    · rw [← he]
      beta_reduce
      rw [Psi_mk]
      refine Prod.ext rfl (Prod.ext ?_ ?_)
      · show H.h u (t.f (Fin.last r)) = _
        rw [sharp_inl H hg]
      · show H.h u (omP H t.f t.f') = _
        rw [h_omP, lamStarC]
        refine Finset.sum_congr rfl fun b _ => ?_
        rw [sharp_inr H hg]
        rfl
  · rintro ⟨Y, hY, he⟩
    set u := (sharpEquiv H t (unit_gramH H hg)).symm Y with hu
    have hYu : sharpEquiv H t (unit_gramH H hg) u = Y := by rw [hu, LinearEquiv.apply_symm_apply]
    have hX : (u : V) ∈ H.perp (H.X t.f) := by
      rw [mem_perpX_iff]
      intro a
      rw [← sharp_inl H hg, hYu, hY a]
      rfl
    refine ⟨(ddMk H t u, H.mkW t.f ⟨u, hX⟩), ⟨u, hX, rfl⟩, ?_⟩
    rw [he]
    beta_reduce
    rw [Psi_mk, hYu]
    refine Prod.ext rfl (Prod.ext ?_ ?_)
    · show H.h u (t.f (Fin.last r)) = _
      rw [← sharp_inl H hg, hYu]
    · show H.h u (omP H t.f t.f') = _
      rw [h_omP, lamStarC]
      refine Finset.sum_congr rfl fun b _ => ?_
      rw [← sharp_inr H hg u, hYu]
      rfl

theorem gam_image' {t : Term V M r} (hg : GoodL H t) :
    (fun p => (Psi H hg p.1, PcL' H hg p.2)) '' Gam' H t =
      GamC' M.L.O (M.L.cj : E →+* E) (H.Zhat t.f t.f') (algebraMap F E t.T) (algebraMap F E t.T') := by
  ext ⟨d, c⟩
  constructor
  · rintro ⟨_, ⟨u, hu, rfl⟩, he⟩
    refine ⟨sharpEquiv H t (unit_gramH H hg) u, fun a => ?_, ?_⟩
    · apply Subtype.ext
      rw [sharp_inr H hg]
      exact (mem_perpX_iff H t.f' u).1 hu a
    · rw [← he]
      beta_reduce
      rw [Psi_mk]
      refine Prod.ext rfl (Prod.ext ?_ ?_)
      · show H.h u (omP H t.f' t.f) = _
        rw [h_omP_swap H t.f t.f' hg.2.2.2.1, lamC, Matrix.mulVec, dotProduct]
        refine Finset.sum_congr rfl fun a _ => ?_
        rw [sharp_inl H hg]
      · show H.h u (t.f' (Fin.last r)) = _
        rw [sharp_inr H hg]
  · rintro ⟨Y, hY, he⟩
    set u := (sharpEquiv H t (unit_gramH H hg)).symm Y with hu
    have hYu : sharpEquiv H t (unit_gramH H hg) u = Y := by rw [hu, LinearEquiv.apply_symm_apply]
    have hX : (u : V) ∈ H.perp (H.X t.f') := by
      rw [mem_perpX_iff]
      intro a
      rw [← sharp_inr H hg, hYu, hY a]
      rfl
    refine ⟨(ddMk H t u, H.mkW t.f' ⟨u, hX⟩), ⟨u, hX, rfl⟩, ?_⟩
    rw [he]
    beta_reduce
    rw [Psi_mk, hYu]
    refine Prod.ext rfl (Prod.ext ?_ ?_)
    · show H.h u (omP H t.f' t.f) = _
      rw [h_omP_swap H t.f t.f' hg.2.2.2.1, lamC, Matrix.mulVec, dotProduct]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [← sharp_inl H hg u, hYu]
    · show H.h u (t.f' (Fin.last r)) = _
      rw [← sharp_inr H hg, hYu]

theorem gam_sep {t₁ t₂ : Term V M r} (hg₁ : GoodL H t₁) (hg₂ : GoodL H t₂) (hT : t₂.T = t₁.T)
    (φ : H.Wb t₁.f ≃ₗ[E] H.Wb t₂.f)
    (hz : φ (H.mkW t₁.f ⟨_, z_mem H t₁.f t₁.T hg₁.2.1⟩) = H.mkW t₂.f ⟨_, z_mem H t₂.f t₂.T hg₂.2.1⟩)
    (ho : φ (H.mkW t₁.f ⟨_, omP_mem H t₁.f t₁.f' hg₁.2.2.2.1⟩) =
      H.mkW t₂.f ⟨_, omP_mem H t₂.f t₂.f' hg₂.2.2.2.1⟩) :
    ∀ p ∈ Gam H t₁, ∀ q ∈ Gam H t₂, PcL H hg₂ q.2 = PcL H hg₁ p.2 → q.2 = φ p.2 := by
  rintro _ ⟨u₁, hu₁, rfl⟩ _ ⟨u₂, hu₂, rfl⟩ hc
  simp only [PcL, coordW_mk, Prod.mk.injEq] at hc
  show H.mkW t₂.f ⟨u₂, hu₂⟩ = φ (H.mkW t₁.f ⟨u₁, hu₁⟩)
  rw [mkW_decomp H t₂.f t₂.f' t₂.T t₂.T' hg₂.2.1 hg₂.2.2.1 hg₂.2.2.2.1 hg₂.2.2.2.2 ⟨u₂, hu₂⟩
      (mem_span_of_sharp H hg₂ u₂),
    mkW_decomp H t₁.f t₁.f' t₁.T t₁.T' hg₁.2.1 hg₁.2.2.1 hg₁.2.2.2.1 hg₁.2.2.2.2 ⟨u₁, hu₁⟩
      (mem_span_of_sharp H hg₁ u₁), map_add, map_smul, map_smul, hz, ho]
  have hT' : algebraMap F E t₂.T = algebraMap F E t₁.T := by rw [hT]
  simp only at hc ⊢
  rw [hc.1, hc.2, hT']

theorem gam_sep' {t₁ t₂ : Term V M r} (hg₁ : GoodL H t₁) (hg₂ : GoodL H t₂) (hT : t₂.T' = t₁.T')
    (φ' : H.Wb t₁.f' ≃ₗ[E] H.Wb t₂.f')
    (hz : φ' (H.mkW t₁.f' ⟨_, z_mem H t₁.f' t₁.T' hg₁.2.2.1⟩) =
      H.mkW t₂.f' ⟨_, z_mem H t₂.f' t₂.T' hg₂.2.2.1⟩)
    (ho : φ' (H.mkW t₁.f' ⟨_, omP_mem H t₁.f' t₁.f (unit_swap H t₁.f t₁.f' hg₁.2.2.2.1)⟩) =
      H.mkW t₂.f' ⟨_, omP_mem H t₂.f' t₂.f (unit_swap H t₂.f t₂.f' hg₂.2.2.2.1)⟩) :
    ∀ p ∈ Gam' H t₁, ∀ q ∈ Gam' H t₂, PcL' H hg₂ q.2 = PcL' H hg₁ p.2 → q.2 = φ' p.2 := by
  rintro _ ⟨u₁, hu₁, rfl⟩ _ ⟨u₂, hu₂, rfl⟩ hc
  simp only [PcL', coordW_mk, Prod.mk.injEq] at hc
  show H.mkW t₂.f' ⟨u₂, hu₂⟩ = φ' (H.mkW t₁.f' ⟨u₁, hu₁⟩)
  rw [mkW_decomp' H t₂.f t₂.f' t₂.T t₂.T' hg₂.2.1 hg₂.2.2.1 hg₂.2.2.2.1 hg₂.2.2.2.2 ⟨u₂, hu₂⟩
      (mem_span_of_sharp H hg₂ u₂),
    mkW_decomp' H t₁.f t₁.f' t₁.T t₁.T' hg₁.2.1 hg₁.2.2.1 hg₁.2.2.2.1 hg₁.2.2.2.2 ⟨u₁, hu₁⟩
      (mem_span_of_sharp H hg₁ u₁), map_add, map_smul, map_smul, hz, ho]
  have hT' : algebraMap F E t₂.T' = algebraMap F E t₁.T' := by rw [hT]
  simp only at hc ⊢
  rw [hc.1, hc.2, hT']

end Formalism.L2.SG.LocalCountModules.LocCntCommon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.MemSpanOfSharp =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.CoordLHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.CoordLHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.HSumRight\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.GraphTransport\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.MemSpanOfSharp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LsDatumA\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.DlRSwapZero\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ValuativeRel Formalism.MainNotions.S.Loc Formalism.L2.SG.LsDatumA

namespace Formalism.L2.SG.LocalCountModules.LocCntCommon

section Parts

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]
variable {M : Model F E} {V : Type} [AddCommGroup V] [Module E V] (H : HermSp M V)
variable {r : ℕ}

private theorem h_MMfam_mem_O_of_goodL_integral {t : Term V M r} (hg : GoodL H t) (hT : t.T ∈ 𝒪[F]) (hT' : t.T' ∈ 𝒪[F])
    (hint : ∀ a b, H.Zhat t.f t.f' a b ∈ M.L.O) (i j : Fin (r + 1) ⊕ Fin (r + 1)) :
    H.h (H.MMfam t i) (H.MMfam t j) ∈ M.L.O := by
  have alg : ∀ T : F, T ∈ 𝒪[F] → algebraMap F E T ∈ M.L.O := by
    intro T hT
    rw [M.L.O_def]
    have e : algebraMap F E T = algebraMap 𝒪[F] E ⟨T, hT⟩ := rfl
    rw [e]
    exact isIntegral_algebraMap
  rw [mmfam_none H hg.1 t]
  rcases i with a | a <;> rcases j with b | b <;> simp only [Sum.elim_inl, Sum.elim_inr]
  · by_cases h : a ≠ Fin.last r ∨ b ≠ Fin.last r
    · rw [hg.2.1.1 a b h]
      exact zero_mem _
    · push_neg at h
      obtain ⟨rfl, rfl⟩ := h
      rw [hg.2.1.2]
      exact neg_mem (alg _ hT)
  · rw [H.h_herm (t.f' b) (t.f a)]
    exact cj_mem_O _ (hint a b)
  · exact hint b a
  · by_cases h : a ≠ Fin.last r ∨ b ≠ Fin.last r
    · rw [hg.2.2.1.1 a b h]
      exact zero_mem _
    · push_neg at h
      obtain ⟨rfl, rfl⟩ := h
      rw [hg.2.2.1.2]
      exact neg_mem (alg _ hT')

theorem mmInt_L {t : Term V M r} (hg : GoodL H t) (hT : t.T ∈ 𝒪[F]) (hT' : t.T' ∈ 𝒪[F])
    (hint : ∀ a b, H.Zhat t.f t.f' a b ∈ M.L.O) : MMInt H t := by
  intro m hm m' hm'
  induction hm using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨i, rfl⟩ := hx
    induction hm' using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨j, rfl⟩ := hy
      exact h_MMfam_mem_O_of_goodL_integral H hg hT hT' hint i j
    | zero =>
      rw [h_zero_right]
      exact zero_mem _
    | add y y' _ _ h1 h2 =>
      rw [h_add_right]
      exact add_mem h1 h2
    | smul c y _ h1 =>
      rw [show c • y = (c : E) • y from rfl, h_smul_right]
      exact mul_mem (cj_mem_O _ c.2) h1
  | zero =>
    have h0 : H.h 0 m' = 0 := by simpa using H.h_smul_left 0 0 m'
    rw [h0]
    exact zero_mem _
  | add x x' _ _ h1 h2 =>
    rw [H.h_add_left]
    exact add_mem h1 h2
  | smul c x _ h1 =>
    rw [show c • x = (c : E) • x from rfl, H.h_smul_left]
    exact mul_mem c.2 h1

theorem Psi_symm_mk {t : Term V M r} (hg : GoodL H t) (Y : Ix r → M.L.O) :
    (Psi H hg).symm (Submodule.Quotient.mk Y) =
      ddMk H t ((sharpEquiv H t (unit_gramH H hg)).symm Y) := by
  rw [LinearEquiv.symm_apply_eq, Psi_mk, LinearEquiv.apply_symm_apply]

private theorem map_mkW_inverse_smul_of_sendsTo {f₁ f₂ : Fin (r + 1) → V} (φ : H.Wb f₁ ≃ₗ[E] H.Wb f₂) {D₁ D₂ : E}
    (hD₁ : IsUnit D₁) (hD₂ : IsUnit D₂) {v₁ v₂ : V} (h₁ : v₁ ∈ H.perp (H.X f₁))
    (h₂ : v₂ ∈ H.perp (H.X f₂)) (hS : H.SendsTo (φ : H.Wb f₁ →ₗ[E] H.Wb f₂) D₂ D₁ v₁ v₂)
    (k₁ : Ring.inverse D₁ • v₁ ∈ H.perp (H.X f₁)) (k₂ : Ring.inverse D₂ • v₂ ∈ H.perp (H.X f₂)) :
    φ (H.mkW f₁ ⟨Ring.inverse D₁ • v₁, k₁⟩) = H.mkW f₂ ⟨Ring.inverse D₂ • v₂, k₂⟩ := by
  obtain ⟨u₁, rfl⟩ := hD₁
  obtain ⟨u₂, rfl⟩ := hD₂
  have S := hS ⟨v₁, h₁⟩ ⟨v₂, h₂⟩ rfl rfl
  simp only [LinearEquiv.coe_coe] at S
  have e₁ : (⟨Ring.inverse (u₁ : E) • v₁, k₁⟩ : H.perp (H.X f₁)) =
      Ring.inverse (u₁ : E) • (⟨v₁, h₁⟩ : H.perp (H.X f₁)) := rfl
  have e₂ : (⟨Ring.inverse (u₂ : E) • v₂, k₂⟩ : H.perp (H.X f₂)) =
      Ring.inverse (u₂ : E) • (⟨v₂, h₂⟩ : H.perp (H.X f₂)) := rfl
  rw [e₁, e₂, map_smul, map_smul, map_smul, Ring.inverse_unit, Ring.inverse_unit]
  have S' : φ (H.mkW f₁ ⟨v₁, h₁⟩) = ((u₂⁻¹ : Eˣ) * (u₁ : E)) • H.mkW f₂ ⟨v₂, h₂⟩ := by
    rw [mul_smul, ← S, smul_smul, Units.inv_mul, one_smul]
  rw [S', smul_smul, mul_left_comm, Units.inv_mul, mul_one]

private theorem hermSp_om_eq_om'_swap (f f' : Fin (r + 1) → V) : H.om f f' = H.om' f' f := by
  have hZ : H.Zhat f' f = (H.Zhat f f').transpose.map (M.L.cj : E →+* E) := by
    ext a b
    simp only [HermSp.Zhat, Matrix.of_apply, Matrix.map_apply, Matrix.transpose_apply]
    rw [H.h_herm]
    rfl
  have hA : ∀ b, (H.Zhat f' f).adjugate b (Fin.last r) =
      M.L.cj ((H.Zhat f f').adjugate (Fin.last r) b) := by
    intro b
    rw [hZ, ← RingHom.mapMatrix_apply, ← RingHom.map_adjugate, RingHom.mapMatrix_apply,
      Matrix.map_apply, ← Matrix.adjugate_transpose, Matrix.transpose_apply]
    rfl
  simp only [HermSp.om, HermSp.om', hA]

theorem isomD_iff {t₁ t₂ : Term V M r} (hg₁ : GoodL H t₁) (hg₂ : GoodL H t₂)
    (θ : DDt H t₁ ≃ₗ[M.L.O] DDt H t₂) :
    IsomD H t₁ t₂ θ ↔ ∀ Y W Y₂ W₂ : Ix r → M.L.O,
      Psi H hg₂ (θ ((Psi H hg₁).symm (Submodule.Quotient.mk Y))) = Submodule.Quotient.mk Y₂ →
      Psi H hg₂ (θ ((Psi H hg₁).symm (Submodule.Quotient.mk W))) = Submodule.Quotient.mk W₂ →
      formC M.L.O (M.L.cj : E →+* E) (H.Zhat t₂.f t₂.f') (algebraMap F E t₂.T) (algebraMap F E t₂.T')
          Y₂ W₂ -
        formC M.L.O (M.L.cj : E →+* E) (H.Zhat t₁.f t₁.f') (algebraMap F E t₁.T)
          (algebraMap F E t₁.T') Y W ∈ M.L.O := by
  constructor
  · intro hD Y W Y₂ W₂ hY hW
    rw [Psi_symm_mk] at hY hW
    rw [← LinearEquiv.eq_symm_apply, Psi_symm_mk] at hY hW
    have key := hD _ _ _ _ hY hW
    rw [h_eq_formC H hg₂, h_eq_formC H hg₁] at key
    simpa only [LinearEquiv.apply_symm_apply] using key
  · intro hC x y x₂ y₂ hx hy
    have hx' : Psi H hg₂ (θ ((Psi H hg₁).symm (Submodule.Quotient.mk
        (sharpEquiv H t₁ (unit_gramH H hg₁) x)))) =
        Submodule.Quotient.mk (sharpEquiv H t₂ (unit_gramH H hg₂) x₂) := by
      rw [Psi_symm_mk, LinearEquiv.symm_apply_apply, hx, Psi_mk]
    have hy' : Psi H hg₂ (θ ((Psi H hg₁).symm (Submodule.Quotient.mk
        (sharpEquiv H t₁ (unit_gramH H hg₁) y)))) =
        Submodule.Quotient.mk (sharpEquiv H t₂ (unit_gramH H hg₂) y₂) := by
      rw [Psi_symm_mk, LinearEquiv.symm_apply_apply, hy, Psi_mk]
    have key := hC _ _ _ _ hx' hy'
    rw [h_eq_formC H hg₂, h_eq_formC H hg₁]
    exact key

end Parts

theorem coordL_holds : CoordL := by
  intro F _ _ _ E _ _ _ _ M _hOK hsplit r n V _ _ H _hn t₁ f₂ f₂' φ φ' hyp hDl hD₂ hint
  set t₂ : Term V M r := { abelian₂ := ⊥, f := f₂, f' := f₂', T := t₁.T, T' := t₁.T' } with ht₂
  have fr := hyp.1.1.2.1
  have fr' := hyp.1.1.2.2.1
  have hg₁ : GoodL H t₁ :=
    ⟨hsplit, ⟨fr.2.1, fr.2.2.1⟩, ⟨fr'.2.1, fr'.2.2.1⟩, dl_succ_unit hyp, hDl⟩
  have hg₂ : GoodL H t₂ := ⟨hsplit, hyp.2.1, hyp.2.2.1, hD₂, dl_zero_two hyp hDl⟩
  have hmm : MMInt H t₂ := mmInt_L H hg₂ fr.2.2.2.1 fr'.2.2.2.1 hint
  obtain ⟨hiso, hiso', -, hS, hS', -⟩ := hyp.2.2.2.1
  have hz : φ (H.mkW t₁.f ⟨_, z_mem H t₁.f t₁.T hg₁.2.1⟩) =
      H.mkW t₂.f ⟨_, z_mem H t₂.f t₂.T hg₂.2.1⟩ := by
    simpa using hyp.2.2.2.2.1 ⟨_, z_mem H t₁.f t₁.T hg₁.2.1⟩ ⟨_, z_mem H t₂.f t₂.T hg₂.2.1⟩ rfl rfl
  have hz' : φ' (H.mkW t₁.f' ⟨_, z_mem H t₁.f' t₁.T' hg₁.2.2.1⟩) =
      H.mkW t₂.f' ⟨_, z_mem H t₂.f' t₂.T' hg₂.2.2.1⟩ := by
    simpa using hyp.2.2.2.2.2 ⟨_, z_mem H t₁.f' t₁.T' hg₁.2.2.1⟩ ⟨_, z_mem H t₂.f' t₂.T' hg₂.2.2.1⟩ rfl rfl
  have ho : φ (H.mkW t₁.f ⟨_, omP_mem H t₁.f t₁.f' hg₁.2.2.2.1⟩) =
      H.mkW t₂.f ⟨_, omP_mem H t₂.f t₂.f' hg₂.2.2.2.1⟩ :=
    map_mkW_inverse_smul_of_sendsTo H φ hg₁.2.2.2.1 hg₂.2.2.2.1 (om'_mem H _ _) (om'_mem H _ _) hS _ _
  have hS'' : H.SendsTo (φ' : H.Wb t₁.f' →ₗ[E] H.Wb t₂.f') (H.Dl t₂.f' t₂.f (r + 1))
      (H.Dl t₁.f' t₁.f (r + 1)) (H.om' t₁.f' t₁.f) (H.om' t₂.f' t₂.f) := by
    rw [dl_swap_full H t₂.f t₂.f', dl_swap_full H t₁.f t₁.f', ← hermSp_om_eq_om'_swap H t₁.f t₁.f',
      ← hermSp_om_eq_om'_swap H t₂.f t₂.f']
    exact hS'
  have ho' : φ' (H.mkW t₁.f' ⟨_, omP_mem H t₁.f' t₁.f (unit_swap H t₁.f t₁.f' hg₁.2.2.2.1)⟩) =
      H.mkW t₂.f' ⟨_, omP_mem H t₂.f' t₂.f (unit_swap H t₂.f t₂.f' hg₂.2.2.2.1)⟩ :=
    map_mkW_inverse_smul_of_sendsTo H φ' (unit_swap H _ _ hg₁.2.2.2.1) (unit_swap H _ _ hg₂.2.2.2.1)
      (om'_mem H _ _) (om'_mem H _ _) hS'' _ _
  have hPc : ∀ w, PcL H hg₂ (φ w) = PcL H hg₁ w := fun w =>
    coordW_comp H φ hiso _ _ _ _ _ _ _ _ hz ho w
  have hPc' : ∀ w, PcL' H hg₂ (φ' w) = PcL' H hg₁ w := fun w =>
    coordW_comp H φ' hiso' _ _ _ _ _ _ _ _ ho' hz' w
  have hmem : ∀ θ : DDt H t₁ ≃ₗ[M.L.O] DDt H t₂, θ ∈ Theta H t₁ t₂ φ φ' ↔
      ((Psi H hg₁).symm.trans θ).trans (Psi H hg₂) ∈
        ThetaC M.L.O (M.L.cj : E →+* E) (H.Zhat t₁.f t₁.f') (H.Zhat f₂ f₂')
          (algebraMap F E t₁.T) (algebraMap F E t₁.T') := by
    intro θ
    have g1 := graph_transport (Psi H hg₁).toEquiv (Psi H hg₂).toEquiv θ.toEquiv φ
      (PcL H hg₁) (PcL H hg₂) (Gam H t₁) (Gam H t₂) _ _ (gam_image H hg₁) (gam_image H hg₂) hPc
      (gam_sep H hg₁ hg₂ rfl φ hz ho)
    have g2 := graph_transport (Psi H hg₁).toEquiv (Psi H hg₂).toEquiv θ.toEquiv φ'
      (PcL' H hg₁) (PcL' H hg₂) (Gam' H t₁) (Gam' H t₂) _ _ (gam_image' H hg₁) (gam_image' H hg₂)
      hPc' (gam_sep' H hg₁ hg₂ rfl φ' hz' ho')
    simp only [Theta, ThetaC, Set.mem_setOf_eq]
    constructor
    · rintro ⟨-, -, hI, hG, -⟩
      obtain ⟨a, b⟩ := hG hsplit
      exact ⟨(isomD_iff H hg₁ hg₂ θ).1 hI, g1.1 a, g2.1 b⟩
    · rintro ⟨hI, a, b⟩
      refine ⟨hD₂, hmm, (isomD_iff H hg₁ hg₂ θ).2 hI, fun _ => ⟨g1.2 a, g2.2 b⟩, ?_⟩
      intro g hg
      rw [hsplit] at hg
      cases hg
  let e : (DDt H t₁ ≃ₗ[M.L.O] DDt H t₂) ≃
      (DDc M.L.O (M.L.cj : E →+* E) (H.Zhat t₁.f t₁.f') (algebraMap F E t₁.T) (algebraMap F E t₁.T')
        ≃ₗ[M.L.O] DDc M.L.O (M.L.cj : E →+* E) (H.Zhat f₂ f₂') (algebraMap F E t₁.T)
          (algebraMap F E t₁.T')) :=
    { toFun := fun θ => ((Psi H hg₁).symm.trans θ).trans (Psi H hg₂)
      invFun := fun θc => ((Psi H hg₁).trans θc).trans (Psi H hg₂).symm
      left_inv := fun θ => by
        ext x
        simp
      right_inv := fun θc => by
        ext x
        simp }
  exact Nat.card_congr (e.subtypeEquiv hmem)

end Formalism.L2.SG.LocalCountModules.LocCntCommon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.CoordLHolds =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.FormInverseCounting.LocCnt0LOfTheta =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.FormInverseCounting.LocCnt0LOfTheta", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.LocCnt0L\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.ThetaC\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.CoordLHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.ModularBoundZeroHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LsDatumA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ValuativeRel Formalism.MainNotions.S.Loc Formalism.L2.SG.LsDatumA Formalism.L2.SG.LocalCountModules.LocCntCommon

namespace Formalism.L2.SG.LocalCountModules.LocCnt0LWork

theorem locCnt0L_of
    (h1 : Formalism.MainNotions.ThinScalesBound.AllLoc (fun M => ∀ r n, ThetaMbe0 M r n false))
    (h2 : Formalism.MainNotions.ThinScalesBound.AllLoc (fun M => ∀ r, Mbe0 M r)) :
    Formalism.L2.SG.LocalCountModules.LocCnt0L.LocCnt0L := by
  intro F _ _ _ E _ _ _ _ M hOK r n hmode V _ _ H hn t₁ f₂ f₂' φ φ' hyp hD Z₁ Z₂ e₁ e₂
  have hs : M.split = none := by simpa using hmode
  rw [h1 F E M hOK r n hmode V H hn t₁ f₂ f₂' φ φ' hyp hD Z₁ Z₂ e₁ e₂]
  refine h2 F E M hOK r Z₁ Z₂ ?_ ?_
  · have : Z₁.Z.map M.R.subtype = H.Zhat t₁.f t₁.f' := by
      rw [e₁]; exact zzplusOf_none hs _ _ _
    unfold headDet; rw [this, ← dl_eq_det]; exact hD
  · have : Z₂.Z.map M.R.subtype = H.Zhat f₂ f₂' := by
      rw [e₂]; exact zzplusOf_none hs _ _ _
    unfold headDet; rw [this, ← dl_eq_det]; exact dl_zero_two hyp hD

theorem locCnt0L_of_theta
    (h1 : Formalism.MainNotions.ThinScalesBound.AllLoc (fun M => ∀ r n, ThetaMbe0 M r n false)) :
    Formalism.L2.SG.LocalCountModules.LocCnt0L.LocCnt0L :=
  locCnt0L_of h1 (fun _ _ _ _ _ _ _ _ _ M _ r => modularBoundZero_holds M r)

theorem locCnt0L_of_coordL_unramified (h1 : CoordL) (h2 : UnramifiedIsoCountZero) : Formalism.L2.SG.LocalCountModules.LocCnt0L.LocCnt0L :=
  locCnt0L_of_theta (thetaMbe0_L_of h1 h2)

theorem locCnt0L_of_alg (h2 : UnramifiedIsoCountZero) : Formalism.L2.SG.LocalCountModules.LocCnt0L.LocCnt0L :=
  locCnt0L_of_coordL_unramified coordL_holds h2

end Formalism.L2.SG.LocalCountModules.LocCnt0LWork
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.FormInverseCounting.LocCnt0LOfTheta =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.FormInverseCounting.AlgDefs =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.FormInverseCounting.AlgDefs", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.SharpSpanCounting.ThetaC\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.LocCnt0L\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.FormInverseCounting.LocCnt0LOfTheta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.L2.SG.LocalCountModules.LocCntCommon

namespace Formalism.L2.SG.LocalCountModules.LocCnt0LAlg

variable {E : Type} [CommRing E] (O : Subring E) (cj : E →+* E) {r : ℕ}

def cjT (hO : ∀ x ∈ O, cj x ∈ O) (Z : Matrix (Fin (r + 1)) (Fin (r + 1)) O) :
    Matrix (Fin (r + 1)) (Fin (r + 1)) O :=
  fun a b => ⟨cj (Z b a), hO _ (Z b a).2⟩

def bRaw (Z : Matrix (Fin (r + 1)) (Fin (r + 1)) O) (y y' : Fin (r + 1) → O) : E :=
  ∑ j, cj (y' j) * ((Z.map O.subtype)⁻¹.mulVec (fun i => (y i : E))) j

def lamS (Z : Matrix (Fin (r + 1)) (Fin (r + 1)) O) (y' : Fin (r + 1) → O) : E :=
  lamStarC cj (Z.map O.subtype) (fun b => (y' b : E))

def PairSet (hO : ∀ x ∈ O, cj x ∈ O) (Z₁ Z₂ : Matrix (Fin (r + 1)) (Fin (r + 1)) O) : Type :=
  {p : (MbMod Z₁ ≃ₗ[O] MbMod Z₂) × (MbMod (cjT O cj hO Z₁) ≃ₗ[O] MbMod (cjT O cj hO Z₂)) //
    (p.1 (bCls Z₁) = bCls Z₂ ∧ p.1 (eCl Z₁) = eCl Z₂) ∧
    (∀ y' y₂' : Fin (r + 1) → O, p.2 (Submodule.Quotient.mk y') = Submodule.Quotient.mk y₂' →
      lamS O cj Z₂ y₂' = lamS O cj Z₁ y') ∧
    (∀ y y' y₂ y₂' : Fin (r + 1) → O, p.1 (Submodule.Quotient.mk y) = Submodule.Quotient.mk y₂ →
      p.2 (Submodule.Quotient.mk y') = Submodule.Quotient.mk y₂' →
      bRaw O cj Z₂ y₂ y₂' - bRaw O cj Z₁ y y' ∈ O)}

def projP (hO : ∀ x ∈ O, cj x ∈ O) (Z₁ Z₂ : Matrix (Fin (r + 1)) (Fin (r + 1)) O)
    (p : PairSet O cj hO Z₁ Z₂) : IsoMbe Z₁ Z₂ :=
  (⟨p.1.1, p.2.1⟩ : {γ : MbMod Z₁ ≃ₗ[O] MbMod Z₂ // γ (bCls Z₁) = bCls Z₂ ∧ γ (eCl Z₁) = eCl Z₂})

def StepPair : Prop :=
  ∀ (E : Type) [CommRing E] (O : Subring E) (cj : E →+* E), (∀ x, cj (cj x) = x) →
    ∀ (hO : ∀ x ∈ O, cj x ∈ O) (r : ℕ) (T T' : E), T ∈ O → T' ∈ O → cj T = T → cj T' = T' →
    ∀ (Z₁ Z₂ : Matrix (Fin (r + 1)) (Fin (r + 1)) O),
    IsUnit (Z₁.map O.subtype).det → IsUnit (Z₂.map O.subtype).det →
    ((Z₁.map O.subtype).submatrix Fin.castSucc Fin.castSucc).det = 0 →
    ((Z₂.map O.subtype).submatrix Fin.castSucc Fin.castSucc).det = 0 →
    IsUnit (gramC cj (Z₁.map O.subtype) T T').det → IsUnit (gramC cj (Z₂.map O.subtype) T T').det →
    Nat.card (ThetaC O cj (Z₁.map O.subtype) (Z₂.map O.subtype) T T') =
      Nat.card (PairSet O cj hO Z₁ Z₂)

def StepInj : Prop :=
  ∀ (E : Type) [CommRing E] (O : Subring E) (cj : E →+* E), (∀ x, cj (cj x) = x) →
    ∀ (hO : ∀ x ∈ O, cj x ∈ O) (r : ℕ) (Z₁ Z₂ : Matrix (Fin (r + 1)) (Fin (r + 1)) O),
    IsUnit (Z₁.map O.subtype).det → IsUnit (Z₂.map O.subtype).det →
    Function.Injective (projP O cj hO Z₁ Z₂)

def StepAdj : Prop :=
  ∀ (E : Type) [CommRing E] (O : Subring E) (cj : E →+* E), (∀ x, cj (cj x) = x) →
    ∀ (hO : ∀ x ∈ O, cj x ∈ O) (r : ℕ) (Z₁ Z₂ : Matrix (Fin (r + 1)) (Fin (r + 1)) O),
    IsUnit (Z₁.map O.subtype).det → IsUnit (Z₂.map O.subtype).det →
    ((Z₁.map O.subtype).submatrix Fin.castSucc Fin.castSucc).det = 0 →
    ((Z₂.map O.subtype).submatrix Fin.castSucc Fin.castSucc).det = 0 →
    Function.Surjective (projP O cj hO Z₁ Z₂)

theorem unramifiedIsoCount_of_pair_inj_adj (h1 : StepPair) (hi : StepInj) (h2 : StepAdj) : UnramifiedIsoCountZero := by
  intro E _ O cj hcj hO r T T' hT hT' hcT hcT' Z₁ Z₂ hu₁ hu₂ hd₁ hd₂ hg₁ hg₂
  rw [h1 E O cj hcj hO r T T' hT hT' hcT hcT' Z₁ Z₂ hu₁ hu₂ hd₁ hd₂ hg₁ hg₂]
  exact Nat.card_congr (Equiv.ofBijective _
    ⟨hi E O cj hcj hO r Z₁ Z₂ hu₁ hu₂, h2 E O cj hcj hO r Z₁ Z₂ hu₁ hu₂ hd₁ hd₂⟩)

theorem locCnt0L_of_pair (h1 : StepPair) (hi : StepInj) (h2 : StepAdj) :
    Formalism.L2.SG.LocalCountModules.LocCnt0L.LocCnt0L :=
  Formalism.L2.SG.LocalCountModules.LocCnt0LWork.locCnt0L_of_alg (unramifiedIsoCount_of_pair_inj_adj h1 hi h2)

end Formalism.L2.SG.LocalCountModules.LocCnt0LAlg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ThetaModuleTransport.HeadColumnCoordinates.FormInverseCounting.AlgDefs =====
