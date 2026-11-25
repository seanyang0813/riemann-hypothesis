module

public import Formalism.MonomialMeanResidues.FilteredDegree
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm
public import Formalism.HarderNarasimhan.HarderNarasimhanProofs.DualPl
public import Formalism.HarderNarasimhan.ShiftInvariance
public import Formalism.LocalToGlobal.GlobalTheory.GL4.PColSlopeEq
public import Formalism.LocalToGlobal.HermitianColumns.InLocalDiscriminantKernel
public import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.ClsSum
public import Formalism.QuotientMetricDivisors.Statement
public import Formalism.LocalRingCardinality.PosOfIsomEmb
public import Formalism.LocalToGlobal.Columns.BrpStarLatLattice
public import Formalism.LocalToGlobal.GlobalTheory.GL4.MemDualCrdLat
public import Formalism.LocalToGlobal.GlobalTheory.GL4.PZBasis
public import Formalism.SharpRestriction.GlobalSchurBounds.TotallyPositiveTraceGeOfNormDiscr
import Formalism.LocalToGlobal.Columns.BrzColLatOneLattice
import Formalism.LocalToGlobal.GlobalTheory.HLatOpsP
import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.ExistsFrameOfSig

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.MonomialMeanResidues.MonomialMeanProofs.SpanEqTopAndRankOfLinearIndependent, Formalism.MonomialMeanResidues.ZerosPerVariable, Formalism.LocalToGlobal.GlobalTheory.GL4.ColumnLatticeExactSlope

-- ===== clump member: Formalism.MonomialMeanResidues.MonomialMeanProofs.SpanEqTopAndRankOfLinearIndependent =====
-- clump-header: {"m": "Formalism.MonomialMeanResidues.MonomialMeanProofs.SpanEqTopAndRankOfLinearIndependent", "h": "module\n\npublic import Formalism.MonomialMeanResidues.FilteredDegree\npublic import Mathlib.RingTheory.Ideal.Norm.AbsNorm\npublic import Formalism.HarderNarasimhan.HarderNarasimhanProofs.DualPl\npublic import Formalism.HarderNarasimhan.ShiftInvariance\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Ideal.Norm.RelNorm\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField Finset

noncomputable section

namespace Formalism.HermiteSiegelSlopes

open Formalism.HN

section BCDefs

variable {F E ι : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def bcMap (x : ι → F) : ι → E := fun i => algebraMap F E (x i)

def bcLat (M : Submodule (𝓞 F) (ι → F)) : Submodule (𝓞 E) (ι → E) :=
  Submodule.span (𝓞 E) ((bcMap (E := E)) '' (M : Set (ι → F)))

end BCDefs

open scoped nonZeroDivisors
open IsDedekindDomain

section W3

variable {F E ι : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem infinitePlace_liesOver_comap (w : InfinitePlace E) : w.LiesOver (w.comap (algebraMap F E)) := by
  first
    | exact ⟨rfl⟩

theorem ncard_places_over_eq_finrank [_root_.NumberField.IsTotallyComplex F] (v : InfinitePlace F) :
    {w : InfinitePlace E | w.comap (algebraMap F E) = v}.ncard = finrank F E := by
  have h := InfinitePlace.unramifedPlacesOver_ncard_add_eq_finrank E v
  have hr : InfinitePlace.ramifiedPlacesOver E v = ∅ := by
    ext w
    simp only [Set.mem_empty_iff_false, iff_false]
    rintro ⟨h1, h2⟩
    have h3 := (InfinitePlace.isRamified_iff.1 h2).2
    exact (InfinitePlace.not_isReal_iff_isComplex.2 (IsTotallyComplex.isComplex _)) h3
  have hu : InfinitePlace.unramifiedPlacesOver E v =
      {w : InfinitePlace E | w.comap (algebraMap F E) = v} := by
    ext w
    constructor
    · rintro ⟨h1, -⟩
      exact InfinitePlace.LiesOver.comap_eq w v
    · intro hw
      have hw' : w.comap (algebraMap F E) = v := hw
      refine ⟨hw' ▸ infinitePlace_liesOver_comap w, ?_⟩
      by_contra hc
      have h3 := (InfinitePlace.isRamified_iff.1 hc).2
      exact (InfinitePlace.not_isReal_iff_isComplex.2 (IsTotallyComplex.isComplex _)) h3
  rw [hr, hu] at h
  simpa using h

theorem bc_prod [_root_.NumberField.IsTotallyComplex F] [_root_.NumberField.IsTotallyComplex E] (g : InfinitePlace F → ℝ) :
    ∏ w : InfinitePlace E, g (w.comap (algebraMap F E)) = (∏ v, g v) ^ finrank F E := by
  classical
  have hfib : ∀ v : InfinitePlace F,
      (Finset.univ.filter fun w : InfinitePlace E => w.comap (algebraMap F E) = v).card = finrank F E := by
    intro v
    rw [← ncard_places_over_eq_finrank v, ← Set.ncard_coe_finset]
    congr 1
    ext w
    simp
  rw [← Finset.prod_fiberwise_of_maps_to (g := fun w : InfinitePlace E => w.comap (algebraMap F E))
    (t := Finset.univ) (by intro x _; exact Finset.mem_univ _), ← Finset.prod_pow]
  refine Finset.prod_congr rfl fun v _ => ?_
  rw [Finset.prod_congr rfl (fun w hw => by rw [(Finset.mem_filter.1 hw).2]), Finset.prod_const, hfib v]

theorem bc_nPl [_root_.NumberField.IsTotallyComplex F] [_root_.NumberField.IsTotallyComplex E] :
    nPl E = finrank F E * nPl F := by
  classical
  have hfib : ∀ v : InfinitePlace F,
      (Finset.univ.filter fun w : InfinitePlace E => w.comap (algebraMap F E) = v).card = finrank F E := by
    intro v
    rw [← ncard_places_over_eq_finrank v, ← Set.ncard_coe_finset]
    congr 1
    ext w
    simp
  unfold nPl
  rw [← Finset.card_univ (α := InfinitePlace E),
    Finset.card_eq_sum_card_fiberwise (f := fun w : InfinitePlace E => w.comap (algebraMap F E))
      (t := Finset.univ) (by intro x _; exact Finset.mem_univ _)]
  rw [Finset.sum_congr rfl fun v _ => hfib v, Finset.sum_const, Finset.card_univ, smul_eq_mul]
  ring

end W3

section W3b

variable {F E ι : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  [Fintype ι] [DecidableEq ι]

theorem bc_linIndep {j : ℕ} (e : Fin j → ι → F) (he : LinearIndependent F e) :
    LinearIndependent E (fun a => bcMap (E := E) (e a)) := by
  classical
  let T : (Fin j → F) →ₗ[F] (ι → F) := Fintype.linearCombination F e
  have hT : LinearMap.ker T = ⊥ := by
    rw [LinearMap.ker_eq_bot]
    exact he.fintypeLinearCombination_injective
  obtain ⟨π, hπ⟩ := T.exists_leftInverse_of_injective hT
  have key : ∀ a c, ∑ i, π (Pi.single i 1) a * e c i = if c = a then 1 else 0 := by
    intro a c
    have h1 : π (e c) = Pi.single c 1 := by
      have h2 : T (Pi.single c 1) = e c := by
        simp [T, Fintype.linearCombination_apply, Pi.single_apply]
      rw [← h2]
      exact LinearMap.congr_fun hπ _
    have h3 : e c = ∑ i, e c i • (Pi.single i 1 : ι → F) := by
      funext i'
      simp [Finset.sum_apply, Pi.single_apply]
    have h4 : π (e c) a = ∑ i, π (Pi.single i 1) a * e c i := by
      conv_lhs => rw [h3]

      simp only [map_sum, map_smul, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
      exact Finset.sum_congr rfl fun i _ => mul_comm _ _
    rw [← h4, h1]
    simp [Pi.single_apply, eq_comm]
  rw [Fintype.linearIndependent_iff]
  intro g hg a
  have h0 : ∑ i, algebraMap F E (π (Pi.single i 1) a) * (∑ c, g c • bcMap (E := E) (e c)) i = 0 := by
    rw [hg]; simp
  have h1 : ∑ i, algebraMap F E (π (Pi.single i 1) a) * (∑ c, g c • bcMap (E := E) (e c)) i
      = ∑ c, g c * algebraMap F E (∑ i, π (Pi.single i 1) a * e c i) := by

    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, bcMap, Finset.mul_sum, map_sum, map_mul]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun i _ => by ring
  rw [h1] at h0
  simpa [key] using h0

theorem hermitian_polarization_eq {V : Type} [AddCommGroup V] [Module F V] (H1 H2 : V → V → ℂ) (τ : F →+* ℂ)
    (a1 : ∀ x y z, H1 (x + y) z = H1 x z + H1 y z) (b1 : ∀ x y z, H1 x (y + z) = H1 x y + H1 x z)
    (r1 : ∀ s x y, H1 x (s • y) = τ s * H1 x y)
    (l1 : ∀ s x y, H1 (s • x) y = starRingEnd ℂ (τ s) * H1 x y)
    (a2 : ∀ x y z, H2 (x + y) z = H2 x z + H2 y z) (b2 : ∀ x y z, H2 x (y + z) = H2 x y + H2 x z)
    (r2 : ∀ s x y, H2 x (s • y) = τ s * H2 x y)
    (l2 : ∀ s x y, H2 (s • x) y = starRingEnd ℂ (τ s) * H2 x y)
    (hN : ∀ x, H1 x x = H2 x x) (s0 : F) (hs0 : starRingEnd ℂ (τ s0) ≠ τ s0) (x y : V) :
    H1 x y = H2 x y := by
  have hD : ∀ u v : V, H1 u v + H1 v u = H2 u v + H2 v u := by
    intro u v
    have e1 := hN (u + v)
    rw [a1, b1, b1, a2, b2, b2] at e1
    linear_combination e1 - hN u - hN v
  have h1 := hD x y
  have h2 := hD (s0 • x) y
  rw [l1, r1, l2, r2] at h2
  have h3 : (starRingEnd ℂ (τ s0) - τ s0) * (H1 x y - H2 x y) = 0 := by
    linear_combination h2 - τ s0 * h1
  rcases mul_eq_zero.1 h3 with h | h
  · exact absurd (sub_eq_zero.1 h) hs0
  · exact sub_eq_zero.1 h

section Maj

variable {K V : Type} [Field K] [NumberField K] [StarRing K] [AddCommGroup V] [Module K V]

theorem hermitianForm_add_left (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (v : InfinitePlace K)
    (x y z : V) : Formalism.HermitianLatticesTheory.majAt b X v (x + y) z =
      Formalism.HermitianLatticesTheory.majAt b X v x z + Formalism.HermitianLatticesTheory.majAt b X v y z := by
  have hf : ∀ x y : V, Formalism.HermitianLatticesTheory.fcoord b X v (x + y) = Formalism.HermitianLatticesTheory.fcoord b X v x + Formalism.HermitianLatticesTheory.fcoord b X v y := by
    intro x y
    unfold Formalism.HermitianLatticesTheory.fcoord
    rw [← Matrix.mulVec_add]
    congr 1
    funext i
    simp [Formalism.HermitianLatticesTheory.vecAt]
  unfold Formalism.HermitianLatticesTheory.majAt
  rw [hf]
  simp [add_mul, Finset.sum_add_distrib]

theorem hermitianForm_add_right (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (v : InfinitePlace K)
    (x y z : V) : Formalism.HermitianLatticesTheory.majAt b X v x (y + z) =
      Formalism.HermitianLatticesTheory.majAt b X v x y + Formalism.HermitianLatticesTheory.majAt b X v x z := by
  have hf : ∀ x y : V, Formalism.HermitianLatticesTheory.fcoord b X v (x + y) = Formalism.HermitianLatticesTheory.fcoord b X v x + Formalism.HermitianLatticesTheory.fcoord b X v y := by
    intro x y
    unfold Formalism.HermitianLatticesTheory.fcoord
    rw [← Matrix.mulVec_add]
    congr 1
    funext i
    simp [Formalism.HermitianLatticesTheory.vecAt]
  unfold Formalism.HermitianLatticesTheory.majAt
  rw [hf]
  simp [mul_add, Finset.sum_add_distrib]

theorem hermitianForm_smul_right (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (v : InfinitePlace K)
    (a : K) (x y : V) : Formalism.HermitianLatticesTheory.majAt b X v x (a • y) =
      v.embedding a * Formalism.HermitianLatticesTheory.majAt b X v x y := by
  have hs : ∀ (a : K) (x : V), Formalism.HermitianLatticesTheory.fcoord b X v (a • x) = v.embedding a • Formalism.HermitianLatticesTheory.fcoord b X v x := by
    intro a x
    unfold Formalism.HermitianLatticesTheory.fcoord
    rw [← Matrix.mulVec_smul]
    congr 1
    funext i
    simp [Formalism.HermitianLatticesTheory.vecAt]
  unfold Formalism.HermitianLatticesTheory.majAt
  rw [hs, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  simp only [Pi.smul_apply, smul_eq_mul]
  ring

theorem hermitianForm_smul_left (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (v : InfinitePlace K)
    (a : K) (x y : V) : Formalism.HermitianLatticesTheory.majAt b X v (a • x) y =
      starRingEnd ℂ (v.embedding a) * Formalism.HermitianLatticesTheory.majAt b X v x y := by
  have hs : ∀ (a : K) (x : V), Formalism.HermitianLatticesTheory.fcoord b X v (a • x) = v.embedding a • Formalism.HermitianLatticesTheory.fcoord b X v x := by
    intro a x
    unfold Formalism.HermitianLatticesTheory.fcoord
    rw [← Matrix.mulVec_smul]
    congr 1
    funext i
    simp [Formalism.HermitianLatticesTheory.vecAt]
  unfold Formalism.HermitianLatticesTheory.majAt
  rw [hs, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  simp only [Pi.smul_apply, smul_eq_mul, star_mul', starRingEnd_apply]
  ring

theorem hermitianForm_self_eq_norm_sq (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (v : InfinitePlace K)
    (x : V) : Formalism.HermitianLatticesTheory.majAt b X v x x = ((Formalism.HermitianLatticesTheory.normAt b X v x ^ 2 : ℝ) : ℂ) := by
  unfold Formalism.HermitianLatticesTheory.majAt Formalism.HermitianLatticesTheory.normAt Formalism.HermitianLatticesTheory.cnorm
  rw [Real.sq_sqrt (Finset.sum_nonneg fun i _ => sq_nonneg _)]
  push_cast
  refine Finset.sum_congr rfl fun i _ => ?_
  exact Complex.conj_mul' _

end Maj

theorem bcMap_add' (x y : ι → F) : bcMap (E := E) (x + y) = bcMap x + bcMap y := by
  funext i
  simp [bcMap]

theorem baseChangeMap_smul_scalar (s : F) (x : ι → F) :
    bcMap (E := E) (s • x) = algebraMap F E s • bcMap x := by
  funext i
  simp [bcMap]

variable [StarRing F] [StarRing E]

theorem bc_gram_det [_root_.NumberField.IsTotallyComplex F]
    (XF : InfinitePlace F → Matrix ι ι ℂ) (XE : InfinitePlace E → Matrix ι ι ℂ)
    (hn : ∀ (w : InfinitePlace E) (x : ι → F),
      Formalism.HermitianLatticesTheory.normAt (Pi.basisFun E ι) XE w (fun i => algebraMap F E (x i)) =
        Formalism.HermitianLatticesTheory.normAt (Pi.basisFun F ι) XF (w.comap (algebraMap F E)) x)
    (w : InfinitePlace E) {j : ℕ} (e : Fin j → ι → F) :
    (gramPl (Pi.basisFun E ι) XE w (fun a => bcMap (E := E) (e a))).det =
      (gramPl (Pi.basisFun F ι) XF (w.comap (algebraMap F E)) e).det := by
  set v := w.comap (algebraMap F E) with hv
  have : w.LiesOver v := ⟨rfl⟩
  obtain ⟨s0, hs0⟩ : ∃ s0 : F, starRingEnd ℂ (v.embedding s0) ≠ v.embedding s0 := by
    have h1 := InfinitePlace.isComplex_iff.1 (IsTotallyComplex.isComplex v)
    rw [ComplexEmbedding.isReal_iff] at h1
    by_contra hc
    push Not at hc
    exact h1 (RingHom.ext fun s => by rw [ComplexEmbedding.conjugate_coe_eq]; exact hc s)
  let τ : F →+* ℂ := w.embedding.comp (algebraMap F E)
  let H1 : (ι → F) → (ι → F) → ℂ := fun x y =>
    Formalism.HermitianLatticesTheory.majAt (Pi.basisFun E ι) XE w (bcMap (E := E) x) (bcMap (E := E) y)
  have a1 : ∀ x y z, H1 (x + y) z = H1 x z + H1 y z := fun x y z => by
    simp only [H1, bcMap_add', hermitianForm_add_left]
  have b1 : ∀ x y z, H1 x (y + z) = H1 x y + H1 x z := fun x y z => by
    simp only [H1, bcMap_add', hermitianForm_add_right]
  have r1 : ∀ s x y, H1 x (s • y) = τ s * H1 x y := fun s x y => by
    simp only [H1, baseChangeMap_smul_scalar, hermitianForm_smul_right]; rfl
  have l1 : ∀ s x y, H1 (s • x) y = starRingEnd ℂ (τ s) * H1 x y := fun s x y => by
    simp only [H1, baseChangeMap_smul_scalar, hermitianForm_smul_left]; rfl
  have hN : ∀ x, H1 x x = Formalism.HermitianLatticesTheory.majAt (Pi.basisFun F ι) XF v x x := fun x => by
    simp only [H1, hermitianForm_self_eq_norm_sq]
    have := hn w x
    rw [show bcMap (E := E) x = fun i => algebraMap F E (x i) from rfl, this]
  rcases InfinitePlace.LiesOver.embedding_comp_eq_or_conjugate_embedding_comp_eq w v with h | h
  · have hτ : ∀ s, v.embedding s = τ s := fun s => by rw [← h]
    have hH := hermitian_polarization_eq H1 (fun x y => Formalism.HermitianLatticesTheory.majAt (Pi.basisFun F ι) XF v x y) τ a1 b1 r1 l1
      (fun x y z => hermitianForm_add_left _ _ _ _ _ _) (fun x y z => hermitianForm_add_right _ _ _ _ _ _)
      (fun s x y => by rw [hermitianForm_smul_right, hτ]) (fun s x y => by rw [hermitianForm_smul_left, hτ])
      hN s0 (by rw [← hτ]; exact hs0)
    congr 1
    ext a c
    exact hH (e a) (e c)
  · have hτ : ∀ s, v.embedding s = starRingEnd ℂ (τ s) := fun s => by
      rw [← h]; rfl
    have hH := hermitian_polarization_eq H1 (fun x y => Formalism.HermitianLatticesTheory.majAt (Pi.basisFun F ι) XF v y x) τ a1 b1 r1 l1
      (fun x y z => hermitianForm_add_right _ _ _ _ _ _) (fun x y z => hermitianForm_add_left _ _ _ _ _ _)
      (fun s x y => by rw [hermitianForm_smul_left, hτ, Complex.conj_conj])
      (fun s x y => by rw [hermitianForm_smul_right, hτ])
      hN s0 (by
        intro hc
        apply hs0
        rw [hτ, Complex.conj_conj, hc])
    rw [← Matrix.det_transpose (gramPl (Pi.basisFun F ι) XF v e)]
    congr 1
    ext a c
    exact hH (e a) (e c)

end W3b

section W4gen

variable {K V : Type} [Field K] [NumberField K] [AddCommGroup V] [Module (𝓞 K) V]

theorem relIndex_sup_singleton_eq_absNorm (A : Submodule (𝓞 K) V) (m : V) :
    A.toAddSubgroup.relIndex (A ⊔ Submodule.span (𝓞 K) {m}).toAddSubgroup =
      Ideal.absNorm (A.comap (LinearMap.toSpanSingleton (𝓞 K) V m) : Ideal (𝓞 K)) := by
  rw [Submodule.sup_toAddSubgroup, AddSubgroup.relIndex_sup_left, Ideal.absNorm_apply]
  unfold Submodule.cardQuot
  rw [← AddSubgroup.relIndex_top_right]
  have h1 : (Submodule.span (𝓞 K) {m}).toAddSubgroup =
      (⊤ : AddSubgroup (𝓞 K)).map (LinearMap.toSpanSingleton (𝓞 K) V m).toAddMonoidHom := by
    ext x
    simp [Submodule.mem_span_singleton]
  rw [h1, ← AddSubgroup.relIndex_comap]
  rfl

end W4gen

section W4

variable {F E ι : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem baseChangeMap_map_add (x y : ι → F) : bcMap (E := E) (x + y) = bcMap x + bcMap y := by
  funext i
  simp [bcMap]

theorem baseChangeMap_smul_integers (r : 𝓞 F) (x : ι → F) :
    bcMap (E := E) (r • x) = (algebraMap (𝓞 F) (𝓞 E) r) • bcMap x := by
  funext i
  simp only [bcMap, Pi.smul_apply]
  rw [Algebra.smul_def, Algebra.smul_def, map_mul]
  rfl

theorem finrank_ringOfIntegers_eq : finrank (𝓞 F) (𝓞 E) = finrank F E :=
  (IsFractionRing.finrank_eq (𝓞 F) F (𝓞 E) E).symm

theorem baseChangeLattice_mono {A B : Submodule (𝓞 F) (ι → F)} (h : A ≤ B) :
    bcLat (E := E) A ≤ bcLat B := by
  unfold bcLat
  exact Submodule.span_mono (fun _ ⟨z, hz, hze⟩ => ⟨z, h hz, hze⟩)

theorem baseChangeLattice_span (s : Set (ι → F)) :
    bcLat (E := E) (Submodule.span (𝓞 F) s) = Submodule.span (𝓞 E) (bcMap '' s) := by
  unfold bcLat
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨z, hz, rfl⟩
    let N : Submodule (𝓞 F) (ι → F) :=
      { carrier := {x | bcMap (E := E) x ∈ Submodule.span (𝓞 E) (bcMap (E := E) '' s)}
        add_mem' := fun {a b} ha hb => by
          simp only [Set.mem_setOf_eq, baseChangeMap_map_add] at *
          exact Submodule.add_mem _ ha hb
        zero_mem' := by
          simp only [Set.mem_setOf_eq]
          have h0 : bcMap (E := E) (0 : ι → F) = 0 := by funext i; simp [bcMap]
          rw [h0]
          exact Submodule.zero_mem _
        smul_mem' := fun c {x} hx => by
          simp only [Set.mem_setOf_eq, baseChangeMap_smul_integers] at *
          exact Submodule.smul_mem _ _ hx }
    have hsN : Submodule.span (𝓞 F) s ≤ N :=
      Submodule.span_le.2 fun x hx => Submodule.subset_span ⟨x, hx, rfl⟩
    exact hsN hz
  · exact Submodule.span_mono (fun _ ⟨z, hz, hze⟩ => ⟨z, Submodule.subset_span hz, hze⟩)

theorem baseChangeLattice_sup (A B : Submodule (𝓞 F) (ι → F)) :
    bcLat (E := E) (A ⊔ B) = bcLat A ⊔ bcLat B := by
  have key : A ⊔ B = Submodule.span (𝓞 F) ((A : Set (ι → F)) ∪ B) := by
    rw [Submodule.span_union, Submodule.span_eq, Submodule.span_eq]
  rw [key, baseChangeLattice_span, Set.image_union, Submodule.span_union]
  rfl

theorem relIndex_baseChange_sup_singleton_dvd (A : Submodule (𝓞 F) (ι → F)) (m : ι → F) :
    (bcLat (E := E) A).toAddSubgroup.relIndex
        (bcLat (E := E) (A ⊔ Submodule.span (𝓞 F) {m})).toAddSubgroup ∣
      (A.toAddSubgroup.relIndex (A ⊔ Submodule.span (𝓞 F) {m}).toAddSubgroup) ^ finrank F E := by
  rw [baseChangeLattice_sup, baseChangeLattice_span, Set.image_singleton, relIndex_sup_singleton_eq_absNorm,
    relIndex_sup_singleton_eq_absNorm, ← finrank_ringOfIntegers_eq, ← Ideal.absNorm_algebraMap]
  apply Ideal.absNorm_dvd_absNorm_of_le
  rw [Ideal.map_le_iff_le_comap]
  intro r hr
  rw [Ideal.mem_comap, Submodule.mem_comap, LinearMap.toSpanSingleton_apply, ← baseChangeMap_smul_integers]
  exact Submodule.subset_span ⟨_, hr, rfl⟩

theorem relIndex_baseChange_dvd_pow_finset (A : Submodule (𝓞 F) (ι → F)) (s : Finset (ι → F)) :
    (bcLat (E := E) A).toAddSubgroup.relIndex
        (bcLat (E := E) (A ⊔ Submodule.span (𝓞 F) (s : Set (ι → F)))).toAddSubgroup ∣
      (A.toAddSubgroup.relIndex
        (A ⊔ Submodule.span (𝓞 F) (s : Set (ι → F))).toAddSubgroup) ^ finrank F E := by
  classical
  refine Finset.induction_on s ?_ ?_
  · simp
  · intro m s hm ih
    have hU : A ⊔ Submodule.span (𝓞 F) ((insert m s : Finset (ι → F)) : Set (ι → F)) =
        (A ⊔ Submodule.span (𝓞 F) (s : Set (ι → F))) ⊔ Submodule.span (𝓞 F) {m} := by
      rw [Finset.coe_insert, Submodule.span_insert, sup_left_comm, sup_comm (Submodule.span (𝓞 F) {m})]
    rw [hU]
    have h1 : A ≤ A ⊔ Submodule.span (𝓞 F) (s : Set (ι → F)) := le_sup_left
    have h2 : A ⊔ Submodule.span (𝓞 F) (s : Set (ι → F)) ≤
        (A ⊔ Submodule.span (𝓞 F) (s : Set (ι → F))) ⊔ Submodule.span (𝓞 F) {m} := le_sup_left
    have e1 := AddSubgroup.relIndex_mul_relIndex _ _ _ ((Submodule.toAddSubgroup_le _ _).2 h1)
      ((Submodule.toAddSubgroup_le _ _).2 h2)
    have e2 := AddSubgroup.relIndex_mul_relIndex _ _ _ ((Submodule.toAddSubgroup_le _ _).2 (baseChangeLattice_mono (E := E) h1))
      ((Submodule.toAddSubgroup_le _ _).2 (baseChangeLattice_mono (E := E) h2))
    calc _ = _ * _ := e2.symm
      _ ∣ _ := mul_dvd_mul ih (relIndex_baseChange_sup_singleton_dvd _ m)
      _ = _ := by rw [← mul_pow, e1]

theorem relIndex_baseChange_dvd_pow {A B : Submodule (𝓞 F) (ι → F)} (hAB : A ≤ B) (hB : B.FG) :
    (bcLat (E := E) A).toAddSubgroup.relIndex (bcLat (E := E) B).toAddSubgroup ∣
      (A.toAddSubgroup.relIndex B.toAddSubgroup) ^ finrank F E := by
  obtain ⟨s, rfl⟩ := hB
  have h := relIndex_baseChange_dvd_pow_finset (E := E) A s
  rwa [sup_eq_right.2 hAB] at h

end W4

section W4scale

variable {K ι : Type} [Field K] [NumberField K] [Fintype ι]

theorem relIndex_scaled_span_eq_pow {j : ℕ} (e : Fin j → ι → K) (he : LinearIndependent K e) (m : ℕ) (hm : m ≠ 0) :
    (Submodule.span (𝓞 K) (Set.range e)).toAddSubgroup.relIndex
        (Submodule.span (𝓞 K) (Set.range fun a => (m : K)⁻¹ • e a)).toAddSubgroup =
      m ^ (finrank ℚ K * j) := by
  classical
  let _ : StarRing K := starRingOfComm
  have hmK : (m : K) ≠ 0 := Nat.cast_ne_zero.2 hm
  set e' : Fin j → ι → K := fun a => (m : K)⁻¹ • e a with he'
  have hli : LinearIndependent K e' :=
    he.units_smul (fun _ => (Units.mk0 (m : K) hmK)⁻¹)
  set X := Submodule.span (𝓞 K) (Set.range e') with hX
  have hfg : X.FG := Submodule.fg_span (Set.finite_range e')
  have h1 : (Ideal.span {(m : 𝓞 K)}) • X = Submodule.span (𝓞 K) (Set.range e) := by
    rw [Submodule.ideal_span_singleton_smul, hX, Submodule.smul_span]
    congr 1
    ext x
    simp only [Set.mem_smul_set, Set.mem_range, exists_exists_eq_and]
    constructor
    · rintro ⟨a, rfl⟩
      refine ⟨a, ?_⟩
      rw [he', ← algebraMap_smul K (m : 𝓞 K), smul_smul]
      simp [hmK]
    · rintro ⟨a, rfl⟩
      refine ⟨a, ?_⟩
      rw [he', ← algebraMap_smul K (m : 𝓞 K), smul_smul]
      simp [hmK]
  have h2 := Formalism.HN.DualPolygon.twist_int X hfg m hm
  rw [h1, Formalism.HN.DualPolygon.twist_finrank_int X hfg] at h2
  rw [h2, hX, Submodule.span_span_of_tower, finrank_span_eq_card hli, Fintype.card_fin]

theorem exists_nat_ne_zero_smul_mem_span_ringOfIntegers {j : ℕ} (e : Fin j → ι → K) (x : ι → K)
    (hx : x ∈ Submodule.span K (Set.range e)) :
    ∃ m : ℕ, m ≠ 0 ∧ m • x ∈ Submodule.span (𝓞 K) (Set.range e) := by
  classical
  obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun K).1 hx
  obtain ⟨y, hy, hint⟩ := exists_integral_multiples ℤ ℚ (Finset.univ.image c)
  have key : y • ∑ a, c a • e a ∈ Submodule.span (𝓞 K) (Set.range e) := by
    rw [Finset.smul_sum]
    apply Submodule.sum_mem
    intro a _
    have hi : IsIntegral ℤ (y • c a) := hint _ (Finset.mem_image.2 ⟨a, Finset.mem_univ _, rfl⟩)
    let r : 𝓞 K := ⟨y • c a, hi⟩
    have hr : y • (c a • e a) = r • e a := by
      rw [← algebraMap_smul K r, ← smul_assoc]
      rfl
    rw [hr]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
  refine ⟨y.natAbs, Int.natAbs_ne_zero.2 hy, ?_⟩
  rcases Int.natAbs_eq y with h | h
  · rw [← natCast_zsmul, ← h]; exact key
  · have : ((y.natAbs : ℕ) : ℤ) = -y := by omega
    rw [← natCast_zsmul, this, neg_smul]; exact Submodule.neg_mem _ key

theorem exists_nat_mul_mem_span_finset {j : ℕ} (e : Fin j → ι → K) (s : Finset (ι → K))
    (hs : (s : Set (ι → K)) ⊆ Submodule.span K (Set.range e)) :
    ∃ m : ℕ, m ≠ 0 ∧ ∀ x ∈ Submodule.span (𝓞 K) (s : Set (ι → K)),
      m • x ∈ Submodule.span (𝓞 K) (Set.range e) := by
  classical
  have h := fun z : s => exists_nat_ne_zero_smul_mem_span_ringOfIntegers e (z : ι → K) (hs z.2)
  choose m hm0 hmz using h
  refine ⟨∏ z : s, m z, Finset.prod_ne_zero_iff.2 fun z _ => hm0 z, ?_⟩
  let N : Submodule (𝓞 K) (ι → K) :=
    { carrier := {x | (∏ z : s, m z) • x ∈ Submodule.span (𝓞 K) (Set.range e)}
      add_mem' := fun {a b} ha hb => by
        simp only [Set.mem_setOf_eq, smul_add] at *
        exact Submodule.add_mem _ ha hb
      zero_mem' := by simp
      smul_mem' := fun c {x} hx => by
        simp only [Set.mem_setOf_eq] at *
        rw [smul_comm]
        exact Submodule.smul_mem _ _ hx }
  have hle : Submodule.span (𝓞 K) (s : Set (ι → K)) ≤ N := by
    rw [Submodule.span_le]
    intro z hz
    show (∏ w : s, m w) • z ∈ Submodule.span (𝓞 K) (Set.range e)
    rw [← Finset.prod_erase_mul _ _ (Finset.mem_univ (⟨z, hz⟩ : s)), mul_smul]
    exact Submodule.smul_of_tower_mem _ _ (hmz ⟨z, hz⟩)
  intro x hx
  exact hle hx

end W4scale

theorem eq_of_dvd_of_mul_eq {a1 a2 b1 b2 : ℕ} (h1 : b1 ∣ a1) (h2 : b2 ∣ a2) (h : b1 * b2 = a1 * a2)
    (h0 : a1 * a2 ≠ 0) : b1 = a1 := by
  have ha1 : a1 ≠ 0 := left_ne_zero_of_mul h0
  have ha2 : a2 ≠ 0 := right_ne_zero_of_mul h0
  have hb1 := Nat.le_of_dvd (Nat.pos_of_ne_zero ha1) h1
  have hb2 := Nat.le_of_dvd (Nat.pos_of_ne_zero ha2) h2
  have hb2pos : 0 < b2 := Nat.pos_of_ne_zero (fun h' => h0 (by rw [← h, h', mul_zero]))
  by_contra hne
  have hlt : b1 < a1 := lt_of_le_of_ne hb1 hne
  have hlt2 : b1 * b2 < a1 * a2 :=
    lt_of_lt_of_le (mul_lt_mul_of_pos_right hlt hb2pos) (mul_le_mul_of_nonneg_left hb2 (Nat.zero_le a1))
  rw [h] at hlt2
  exact lt_irrefl _ hlt2

section W4final

variable {F E ι : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  [Fintype ι] [DecidableEq ι]

theorem bc_index {j : ℕ} (e : Fin j → ι → F) (he : LinearIndependent F e)
    (M : Submodule (𝓞 F) (ι → F)) (hM : M.FG) (hle : Submodule.span (𝓞 F) (Set.range e) ≤ M)
    (hsp : (M : Set (ι → F)) ⊆ Submodule.span F (Set.range e)) :
    (Submodule.span (𝓞 E) (Set.range fun a => bcMap (E := E) (e a))).toAddSubgroup.relIndex
        (bcLat (E := E) M).toAddSubgroup =
      ((Submodule.span (𝓞 F) (Set.range e)).toAddSubgroup.relIndex M.toAddSubgroup) ^ finrank F E := by
  have heE := _root_.Formalism.HermiteSiegelSlopes.bc_linIndep (E := E) e he
  obtain ⟨s, hs⟩ := hM
  obtain ⟨m, hm, hmM⟩ := exists_nat_mul_mem_span_finset e s (by
    intro x hx; exact hsp (hs ▸ Submodule.subset_span hx))
  rw [hs] at hmM
  have hmF : (m : F) ≠ 0 := Nat.cast_ne_zero.2 hm
  set L0 := Submodule.span (𝓞 F) (Set.range e) with hL0
  set L1 := Submodule.span (𝓞 F) (Set.range fun a => (m : F)⁻¹ • e a) with hL1
  have hML1 : M ≤ L1 := by
    intro x hx
    obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun (𝓞 F)).1 (hmM x hx)
    rw [hL1, Submodule.mem_span_range_iff_exists_fun]
    refine ⟨c, ?_⟩
    have : x = (m : F)⁻¹ • (m • x) := by
      rw [← Nat.cast_smul_eq_nsmul F, smul_smul, inv_mul_cancel₀ hmF, one_smul]
    rw [this, ← hc, Finset.smul_sum]
    exact Finset.sum_congr rfl fun a _ => smul_comm _ _ _
  have hL0E : bcLat (E := E) L0 = Submodule.span (𝓞 E) (Set.range fun a => bcMap (E := E) (e a)) := by
    rw [hL0, baseChangeLattice_span, ← Set.range_comp]; rfl
  have hL1E : bcLat (E := E) L1 =
      Submodule.span (𝓞 E) (Set.range fun a => (m : E)⁻¹ • bcMap (E := E) (e a)) := by
    rw [hL1, baseChangeLattice_span, ← Set.range_comp]
    congr 2
    funext a i
    simp [bcMap]
  have hL1fg : L1.FG := Submodule.fg_span (Set.finite_range _)
  have d1 := relIndex_baseChange_dvd_pow (E := E) hle ⟨s, hs⟩
  have d2 := relIndex_baseChange_dvd_pow (E := E) hML1 hL1fg
  have tF := relIndex_scaled_span_eq_pow e he m hm
  have tE := relIndex_scaled_span_eq_pow (fun a => bcMap (E := E) (e a)) heE m hm
  rw [← hL0E, ← hL1E] at tE
  rw [← hL0, ← hL1] at tF
  rw [← AddSubgroup.relIndex_mul_relIndex _ M.toAddSubgroup _
    ((Submodule.toAddSubgroup_le _ _).2 hle) ((Submodule.toAddSubgroup_le _ _).2 hML1)] at tF
  rw [← AddSubgroup.relIndex_mul_relIndex _ (bcLat (E := E) M).toAddSubgroup _
    ((Submodule.toAddSubgroup_le _ _).2 (baseChangeLattice_mono hle))
    ((Submodule.toAddSubgroup_le _ _).2 (baseChangeLattice_mono hML1))] at tE
  rw [← hL0E]
  refine eq_of_dvd_of_mul_eq d1 d2 ?_ ?_
  · rw [tE, ← mul_pow, tF, ← pow_mul, ← Module.finrank_mul_finrank ℚ F E]
    congr 1; ring
  · rw [← mul_pow, tF]
    exact pow_ne_zero _ (pow_ne_zero _ hm)

end W4final

section W5

variable {F E ι : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem baseChangeMap_smul_field (c : F) (x : ι → F) : bcMap (E := E) (c • x) = algebraMap F E c • bcMap x := by
  funext i
  simp [bcMap]

theorem bcMap_zero : bcMap (E := E) (0 : ι → F) = 0 := by
  funext i
  simp [bcMap]

theorem baseChangeMap_mem_span_field {j : ℕ} (e : Fin j → ι → F) (m : ι → F)
    (hm : m ∈ Submodule.span F (Set.range e)) :
    bcMap (E := E) m ∈ Submodule.span E (Set.range fun a => bcMap (E := E) (e a)) := by
  let N : Submodule F (ι → F) :=
    { carrier := {x | bcMap (E := E) x ∈ Submodule.span E (Set.range fun a => bcMap (E := E) (e a))}
      add_mem' := fun {a b} ha hb => by
        simp only [Set.mem_setOf_eq, _root_.Formalism.HermiteSiegelSlopes.baseChangeMap_map_add] at *
        exact Submodule.add_mem _ ha hb
      zero_mem' := by
        simp only [Set.mem_setOf_eq, bcMap_zero]
        exact Submodule.zero_mem _
      smul_mem' := fun c {x} hx => by
        simp only [Set.mem_setOf_eq, baseChangeMap_smul_field] at *
        exact Submodule.smul_mem _ _ hx }
  have hle : Submodule.span F (Set.range e) ≤ N :=
    Submodule.span_le.2 (by rintro _ ⟨a, rfl⟩; exact Submodule.subset_span ⟨a, rfl⟩)
  exact hle hm

theorem baseChangeLattice_fg (M : Submodule (𝓞 F) (ι → F)) (hM : M.FG) : (bcLat (E := E) M).FG := by
  obtain ⟨s, rfl⟩ := hM
  rw [_root_.Formalism.HermiteSiegelSlopes.baseChangeLattice_span]
  exact Submodule.fg_span (s.finite_toSet.image _)

theorem exists_linearIndependent_spanning (M : Submodule (𝓞 F) (ι → F)) [Finite ι] :
    ∃ (j : ℕ) (e : Fin j → ι → F), LinearIndependent F e ∧ (∀ a, e a ∈ M) ∧
      (M : Set (ι → F)) ⊆ Submodule.span F (Set.range e) := by
  obtain ⟨b, hbs, hspan, hli⟩ := exists_linearIndependent F (M : Set (ι → F))
  have hfin : b.Finite := hli.setFinite
  have : Finite b := hfin.to_subtype
  obtain ⟨j, ⟨eqv⟩⟩ := Finite.exists_equiv_fin b
  refine ⟨j, fun a => (eqv.symm a : ι → F), hli.comp _ eqv.symm.injective, fun a => hbs (eqv.symm a).2, ?_⟩
  intro x hx
  have hx' : x ∈ Submodule.span F (M : Set (ι → F)) := Submodule.subset_span hx
  rw [← hspan] at hx'
  have hr : Set.range (fun a => (eqv.symm a : ι → F)) = b := by
    ext z
    constructor
    · rintro ⟨a, rfl⟩
      exact (eqv.symm a).2
    · intro hz
      exact ⟨eqv ⟨z, hz⟩, by simp⟩
  rw [hr]
  exact hx'

end W5

theorem base_change_slope : BaseChange := by
  intro F E ι _ _ _ _ _ _ _ _ _ _ _ XF XE hXF hXE hn M hM
  change rkK (bcLat (E := E) M) = rkK M ∧
    degT (Pi.basisFun E ι) XE (bcLat (E := E) M) = degT (Pi.basisFun F ι) XF M
  obtain ⟨j, e, he, heM, hsp⟩ := exists_linearIndependent_spanning M
  have he' := bc_linIndep (E := E) e he
  set e' : Fin j → ι → E := fun a => bcMap (E := E) (e a) with he'def
  have hle : Submodule.span (𝓞 F) (Set.range e) ≤ M := by
    rw [Submodule.span_le]; rintro _ ⟨a, rfl⟩; exact heM a
  have hle' : Submodule.span (𝓞 E) (Set.range e') ≤ bcLat (E := E) M := by
    rw [Submodule.span_le]; rintro _ ⟨a, rfl⟩
    exact Submodule.subset_span ⟨e a, heM a, rfl⟩
  have hrF : rkK M = j := by
    unfold rkK
    have : Submodule.span F (M : Set (ι → F)) = Submodule.span F (Set.range e) := by
      apply le_antisymm
      · rw [Submodule.span_le]; exact hsp
      · apply Submodule.span_mono; rintro _ ⟨a, rfl⟩; exact heM a
    rw [this, finrank_span_eq_card he, Fintype.card_fin]
  have hrE : rkK (bcLat (E := E) M) = j := by
    unfold rkK
    have : Submodule.span E (bcLat (E := E) M : Set (ι → E)) = Submodule.span E (Set.range e') := by
      apply le_antisymm
      · rw [Submodule.span_le]
        have hres : bcLat (E := E) M ≤ (Submodule.span E (Set.range e')).restrictScalars (𝓞 E) := by
          unfold bcLat
          rw [Submodule.span_le]
          rintro _ ⟨m, hm, rfl⟩
          exact baseChangeMap_mem_span_field e m (hsp hm)
        exact hres
      · apply Submodule.span_mono; rintro _ ⟨a, rfl⟩; exact hle' (Submodule.subset_span ⟨a, rfl⟩)
    rw [this, finrank_span_eq_card he', Fintype.card_fin]
  refine ⟨hrE.trans hrF.symm, ?_⟩
  obtain ⟨hF1, hF2⟩ := htGram F (ι → F) ι (Pi.basisFun F ι) XF hXF j e he
  obtain ⟨hE1, hE2⟩ := htGram E (ι → E) ι (Pi.basisFun E ι) XE hXE j e' he'
  have hF := hF2 M hM hle hrF
  have hE := hE2 (bcLat (E := E) M) (baseChangeLattice_fg M hM) hle' hrE
  have hidx := bc_index (E := E) e he M hM hle hsp
  have hpos : 0 < ht (Pi.basisFun F ι) XF (Submodule.span (𝓞 F) (Set.range e)) :=
    (plLat F (ι → F) ι (Pi.basisFun F ι) XF hXF _ (Submodule.fg_span (Set.finite_range e))).2.2
  have hposM : 0 < ht (Pi.basisFun F ι) XF M :=
    (plLat F (ι → F) ι (Pi.basisFun F ι) XF hXF _ hM).2.2
  set d := finrank F E with hd
  have hdpos : 0 < d := finrank_pos
  set iF : ℕ := (Submodule.span (𝓞 F) (Set.range e)).toAddSubgroup.relIndex M.toAddSubgroup with hiF
  have hiF0 : (iF : ℝ) ≠ 0 := by
    intro h0
    rw [h0, mul_zero] at hF
    exact hpos.ne hF
  have hprod : ∏ w : InfinitePlace E, (gramPl (Pi.basisFun E ι) XE w e').det.re =
      (∏ v : InfinitePlace F, (gramPl (Pi.basisFun F ι) XF v e).det.re) ^ d := by
    rw [← bc_prod (E := E) (fun v => (gramPl (Pi.basisFun F ι) XF v e).det.re)]
    refine Finset.prod_congr rfl fun w _ => ?_
    rw [bc_gram_det XF XE hn w e]
  have hht : ht (Pi.basisFun E ι) XE (bcLat (E := E) M) = ht (Pi.basisFun F ι) XF M ^ d := by
    rw [hE1, hprod, ← hF1, ← hF, hidx, mul_pow] at hE
    push_cast at hE
    exact mul_right_cancel₀ (pow_ne_zero _ hiF0) hE
  unfold degT
  rw [hht, Real.log_pow, bc_nPl (F := F) (E := E)]
  push_cast
  rw [← hd]
  have hd0 : (d : ℝ) ≠ 0 := by exact_mod_cast hdpos.ne'
  rw [show -((d : ℝ) * Real.log (ht (Pi.basisFun F ι) XF M)) = d * -Real.log (ht (Pi.basisFun F ι) XF M) by ring,
    show 2 * ((d : ℝ) * (nPl F : ℝ)) = d * (2 * (nPl F : ℝ)) by ring, mul_div_mul_left _ _ hd0]

end Formalism.HermiteSiegelSlopes
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.MonomialMeanResidues.MonomialMeanProofs.SpanEqTopAndRankOfLinearIndependent =====

-- ===== clump member: Formalism.MonomialMeanResidues.ZerosPerVariable =====
-- clump-header: {"m": "Formalism.MonomialMeanResidues.ZerosPerVariable", "h": "module\n\npublic import Formalism.MonomialMeanResidues.FilteredDegree\npublic import Formalism.MonomialMeanResidues.MonomialMeanProofs.SpanEqTopAndRankOfLinearIndependent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.HermiteSiegelSlopes

alias baseChange := _root_.Formalism.HermiteSiegelSlopes.base_change_slope

end Formalism.HermiteSiegelSlopes
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.MonomialMeanResidues.ZerosPerVariable =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.ColumnLatticeExactSlope =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL4.ColumnLatticeExactSlope", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.PColSlopeEq\npublic import Formalism.LocalToGlobal.HermitianColumns.InLocalDiscriminantKernel\npublic import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.ClsSum\npublic import Formalism.QuotientMetricDivisors.Statement\npublic import Formalism.LocalRingCardinality.PosOfIsomEmb\npublic import Formalism.LocalToGlobal.Columns.BrpStarLatLattice\nimport Formalism.LocalToGlobal.Columns.BrzColLatOneLattice\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.MemDualCrdLat\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.PZBasis\nimport Formalism.LocalToGlobal.GlobalTheory.HLatOpsP\nimport Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.ExistsFrameOfSig\npublic import Formalism.MonomialMeanResidues.ZerosPerVariable\npublic import Formalism.SharpRestriction.GlobalSchurBounds.TotallyPositiveTraceGeOfNormDiscr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.HN Formalism.MainNotions.flipTwoThree Formalism.L2.Herm Formalism.L2.Geo.Def.G1

section BC

variable {F E K : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E] [_root_.NumberField.IsTotallyComplex E]
  [Field K] [NumberField K] [StarRing K] [_root_.NumberField.IsTotallyComplex K]

theorem emb_hform (σ : E →+* ℂ) (hσ : ∀ a, σ (star a) = starRingEnd ℂ (σ a)) {n : ℕ} (H : Matrix (Fin n) (Fin n) E)
    (x y : Fin n → E) :
    σ (Formalism.DivisionValues.hform H x y) = ∑ i, ∑ j, starRingEnd ℂ (σ (x i)) * σ (H i j) * σ (y j) := by

  rw [Formalism.DivisionValues.hform, Matrix.toLinearMapₛₗ₂'_apply, map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_

  rw [map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [smul_eq_mul, smul_eq_mul, map_mul, map_mul, starRingEnd_apply, hσ, RingHom.id_apply]
  ring

theorem maj_ratHerm (hconj : ∀ (σ : E →+* ℂ) a, σ (star a) = starRingEnd ℂ (σ a)) {n : ℕ} (H : Matrix (Fin n) (Fin n) E)
    (X : InfinitePlace E → Matrix (Fin n) (Fin n) ℂ) (v : InfinitePlace E)
    (hX : ((X v)⁻¹).conjTranspose * (X v)⁻¹ = H.map v.embedding) (x : Fin n → E) :
    majAt (Pi.basisFun E (Fin n)) X v x x = v.embedding (Formalism.DivisionValues.hform H x x) := by
  rw [emb_hform v.embedding (hconj _) H x x]
  have hkl : ∀ k l, ∑ i, star ((X v)⁻¹ i k) * (X v)⁻¹ i l = v.embedding (H k l) := fun k l => by
    have := congrFun (congrFun hX k) l
    simpa [Matrix.mul_apply, Matrix.conjTranspose_apply] using this
  simp only [Formalism.HermitianLatticesTheory.majAt, Formalism.HermitianLatticesTheory.fcoord, Formalism.HermitianLatticesTheory.vecAt, Pi.basisFun_repr, Matrix.mulVec, dotProduct,
    starRingEnd_apply]
  conv_rhs => simp only [← hkl, Finset.mul_sum, Finset.sum_mul]
  conv_rhs => enter [2, k]; rw [Finset.sum_comm]
  conv_rhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [star_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [star_mul']
  ring

theorem re_comap (ρ : E →+* K) (w : InfinitePlace K) (z : E) : ((w.comap ρ).embedding z).re = (w.embedding (ρ z)).re := by
  have h1 : w.comap ρ = InfinitePlace.mk (w.embedding.comp ρ) := by
    rw [← InfinitePlace.comap_mk, InfinitePlace.mk_embedding]
  rw [h1]
  rcases InfinitePlace.embedding_mk_eq (w.embedding.comp ρ) with h | h
  · rw [h]; rfl
  · rw [h, ComplexEmbedding.conjugate_coe_eq]; simp

private theorem hform_crd_lemma (S : HSpace E) (y : S.V) :
    Formalism.DivisionValues.hform S.gram (crd S y) (crd S y) = S.hT y y := by
  unfold crd
  conv_rhs => rw [← S.frame.sum_equivFun y]
  rw [Formalism.DivisionValues.hform, Matrix.toLinearMapₛₗ₂'_apply]

  simp only [map_sum, LinearMap.sum_apply, map_smulₛₗ, LinearMap.smul_apply, Formalism.BasicNotions.HSpace.gram,
  smul_eq_mul, RingHom.id_apply, Finset.mul_sum]
  conv_rhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem normE (hc : CMData F E) (S : HSpace E) (X : InfinitePlace E → Matrix (Fin S.rank) (Fin S.rank) ℂ) (v : InfinitePlace E)
    (hX : ((X v)⁻¹).conjTranspose * (X v)⁻¹ = S.gram.map v.embedding) (y : S.V) :
    normAt (Pi.basisFun E (Fin S.rank)) X v (crd S y) = Real.sqrt ((v.embedding (S.hT y y)).re) := by
  have hm := maj_ratHerm hc.cmUnram.2.1 S.gram X v hX (crd S y)
  rw [hform_crd_lemma] at hm
  unfold Formalism.HermitianLatticesTheory.normAt Formalism.HermitianLatticesTheory.cnorm
  congr 1
  rw [← hm]
  simp only [Formalism.HermitianLatticesTheory.majAt, Complex.re_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Complex.star_def, mul_comm, Complex.mul_conj, Complex.ofReal_re, Complex.normSq_eq_norm_sq]

theorem pull_coords (Q : HLat K) (hQ : Q.Good) {n : ℕ} (f : (Fin n → K) →ₗ[K] Q.V) (hinj : Function.Injective f)
    (hsurj : Function.Surjective f) :
    ∃ XK : InfinitePlace K → Matrix (Fin n) (Fin n) ℂ, (∀ v, IsUnit (XK v).det) ∧
      (∀ v z, normAt (Pi.basisFun K (Fin n)) XK v z = normAt Q.b Q.X v (f z)) ∧
      (Q.L.comap (f.restrictScalars (𝓞 K))).FG ∧
      Q.mu = muDef (Pi.basisFun K (Fin n)) XK (Q.L.comap (f.restrictScalars (𝓞 K))) := by
  obtain ⟨hP1, -, hP3, hP4, -⟩ := Formalism.L2.GlobalTheoryTheory.HLatOps.pull_spec K Q (Fin n → K) (Fin n)
    (Pi.basisFun K (Fin n)) f hQ.1 hinj
  obtain ⟨hfg, -, hmu, -, -⟩ := hP4 hQ.2.1
  have hrange : Q.L ⊓ (LinearMap.range f).restrictScalars (𝓞 K) = Q.L := by
    rw [LinearMap.range_eq_top.2 hsurj]
    exact inf_eq_left.2 fun _ _ => trivial
  rw [hrange] at hmu
  exact ⟨_, hP1, hP3, hfg, hmu.symm⟩

theorem bc_mu (hc : CMData F E) (S : HSpace E) (hsig : S.SigOK) (hpos : S.IsPosDef) (hn : 0 < S.rank) [Algebra E K]
    (Q : HLat K) (hQ : Q.Good) (hcard : Fintype.card Q.ι = S.rank) (bc : S.V →+ Q.V)
    (bc_smul : ∀ (a : E) y, bc (a • y) = algebraMap E K a • bc y) (L : Submodule (𝓞 E) S.V) (hL : Submodule.IsLattice E L)
    (bc_L : Q.L = Submodule.span (𝓞 K) (bc '' (L : Set S.V)))
    (bc_norm : ∀ (v : InfinitePlace K) y, (majAt Q.b Q.X v (bc y) (bc y)).re = (v.embedding (algebraMap E K (S.hT y y))).re) :
    Q.mu = muDef (Pi.basisFun E (Fin S.rank)) (fun v => Formalism.L2.Geo.Def.frameOf (S.gram.map v.embedding)) (crdLat S L) ∧
      Submodule.IsFullLattice E L := by
  classical
  have hM : Submodule.IsLattice E (crdLat S L) :=
    Submodule.IsLattice.of_fg E (hL.fg.map _)
  have hY : ∀ v : InfinitePlace E, IsUnit (Formalism.L2.Geo.Def.frameOf (S.gram.map v.embedding)).det ∧
      ((Formalism.L2.Geo.Def.frameOf (S.gram.map v.embedding))⁻¹).conjTranspose * (Formalism.L2.Geo.Def.frameOf (S.gram.map v.embedding))⁻¹ =
        S.gram.map v.embedding := by
    intro v
    apply frameOf_spec
    apply exists_frame_of_sig _ S.rank
    have h1 := hsig v.embedding
    rwa [hpos v.embedding] at h1

  let f : (Fin S.rank → K) →ₗ[K] Q.V := Fintype.linearCombination K fun a => bc (S.frame a)
  let ιm : (Fin S.rank → E) → (Fin S.rank → K) := fun x i => algebraMap E K (x i)
  have hf : ∀ y : S.V, f (ιm (crd S y)) = bc y := by
    intro y
    show ∑ a, algebraMap E K (crd S y a) • bc (S.frame a) = bc y
    conv_rhs => rw [← S.frame.sum_repr y]

    rw [map_sum]
    exact Finset.sum_congr rfl fun a _ => (bc_smul _ _).symm
  have hset : bc '' (L : Set S.V) = f '' (ιm '' (crdLat S L : Set (Fin S.rank → E))) := by
    ext z
    constructor
    · rintro ⟨y, hy, rfl⟩
      exact ⟨_, ⟨_, (crdLat_mem S L y).2 hy, rfl⟩, hf y⟩
    · rintro ⟨_, ⟨x, hx, rfl⟩, rfl⟩
      obtain ⟨y, rfl⟩ := (crd S).surjective x
      exact ⟨y, (crdLat_mem S L y).1 hx, (hf y).symm⟩
  have hQL : Q.L = (Submodule.span (𝓞 K) (ιm '' (crdLat S L : Set (Fin S.rank → E)))).map (f.restrictScalars (𝓞 K)) := by
    rw [bc_L, hset, Submodule.map_span]
    rfl
  have hsurj : Function.Surjective f := by
    rw [← LinearMap.range_eq_top, eq_top_iff, ← hQ.2.2, Submodule.span_le]
    intro z hz
    rw [hQL] at hz
    obtain ⟨x, -, rfl⟩ := hz
    exact ⟨x, rfl⟩
  have hfr : finrank K (Fin S.rank → K) = finrank K Q.V := by
    rw [Module.finrank_eq_card_basis Q.b, hcard]; simp
  haveI : FiniteDimensional K Q.V := Module.Finite.of_basis Q.b
  have hinj : Function.Injective f := (LinearMap.injective_iff_surjective_of_finrank_eq_finrank hfr).2 hsurj
  obtain ⟨XK, hP1, hP3, hfg0, hmu'⟩ := pull_coords Q hQ f hinj hsurj
  have hcomap : Q.L.comap (f.restrictScalars (𝓞 K)) = Submodule.span (𝓞 K) (ιm '' (crdLat S L : Set (Fin S.rank → E))) := by
    rw [hQL]
    exact Submodule.comap_map_eq_of_injective (f := f.restrictScalars (𝓞 K)) hinj _
  rw [hcomap] at hfg0
  have hbc := Formalism.HermiteSiegelSlopes.baseChange E K (Fin S.rank) (fun v => Formalism.L2.Geo.Def.frameOf (S.gram.map v.embedding)) XK
    (fun v => (hY v).1) hP1
    (fun w x => by
      obtain ⟨y, rfl⟩ := (crd S).surjective x
      have h1 : normAt (Pi.basisFun K (Fin S.rank)) XK w (ιm (crd S y)) =
          Real.sqrt ((w.embedding (algebraMap E K (S.hT y y))).re) := by
        rw [hP3, hf y, Formalism.L2.GlobalTheoryTheory.HLatOps.normAt_eq_sqrt, bc_norm]
      have h2 := normE hc S (fun v => Formalism.L2.Geo.Def.frameOf (S.gram.map v.embedding)) (w.comap (algebraMap E K)) (hY _).2 y
      rw [re_comap] at h2
      exact h1.trans h2.symm) (crdLat S L) hM.fg
  have hE : Nontrivial (Fin S.rank → E) := Pi.nontrivial_at ⟨0, hn⟩
  have hspanT : Submodule.span K ((Submodule.span (𝓞 K) (ιm '' (crdLat S L : Set (Fin S.rank → E))) : Submodule (𝓞 K) (Fin S.rank → K)) : Set (Fin S.rank → K)) = ⊤ := by
    apply (LinearMap.map_injective (LinearMap.ker_eq_bot.mpr hinj) : Function.Injective (Submodule.map f))
    rw [Submodule.map_top, LinearMap.range_eq_top.mpr hsurj, Submodule.map_span]
    have himage : f '' ((Submodule.span (𝓞 K) (ιm '' (crdLat S L : Set (Fin S.rank → E))) : Submodule (𝓞 K) (Fin S.rank → K)) : Set (Fin S.rank → K)) = (Q.L : Set Q.V) := by
      rw [hQL]
      rfl
    rw [himage, hQ.2.2]
  have hrT : rkK (Submodule.span (𝓞 K) (ιm '' (crdLat S L : Set (Fin S.rank → E)))) = S.rank := by
    change finrank K (Submodule.span K ((Submodule.span (𝓞 K) (ιm '' (crdLat S L : Set (Fin S.rank → E))) : Submodule (𝓞 K) (Fin S.rank → K)) : Set (Fin S.rank → K))) = _
    rw [hspanT]
    simp
  have hrM : rkK (crdLat S L) = S.rank := hbc.1.symm.trans hrT
  have hfullM : Submodule.IsFullLattice E (crdLat S L) := by
    refine { toIsLattice := hM, span_eq_top := ?_ }
    apply Submodule.eq_top_of_finrank_eq
    simpa [rkK] using hrM
  have hfull : Submodule.IsFullLattice E L := by
    refine { toIsLattice := hL, span_eq_top := ?_ }
    apply (LinearMap.map_injective (LinearMap.ker_eq_bot.mpr (crd S).injective) :
      Function.Injective (Submodule.map (crd S).toLinearMap))
    rw [Submodule.map_span, Submodule.map_top, LinearMap.range_eq_top.mpr (crd S).surjective]
    exact hfullM.span_eq_top
  refine ⟨?_, hfull⟩
  rw [hmu', hcomap]
  have hneM : crdLat S L ≠ ⊥ := Formalism.L2.Col.isLattice_ne_bot hfullM
  have hneT : Submodule.span (𝓞 K) (ιm '' (crdLat S L : Set (Fin S.rank → E))) ≠ ⊥ := by
    intro h0
    rw [h0] at hrT
    have : rkK (⊥ : Submodule (𝓞 K) (Fin S.rank → K)) = 0 := by
      show finrank K (Submodule.span K ((⊥ : Submodule (𝓞 K) (Fin S.rank → K)) : Set (Fin S.rank → K))) = 0
      simp
    omega
  rw [Formalism.L2.Col.brp_mu_degT _ _ hP1 _ hfg0 hneT (by rw [hrT]; exact hn),
    Formalism.L2.Col.brp_mu_degT _ _ (fun v => (hY v).1) _ hM.fg hneM (by rw [hrM]; exact hn), hrM, hrT]
  congr 2
  exact hbc.2

end BC

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem q_lattice_slope (D : D7) : QSlope D := by
  intro u CV c τ
  have H := columnHypotheses D u
  haveI := H.tcE
  have hn : 0 < (D.sp.X 0).rank := by rw [H.rank]; exact H.npos
  letI : Algebra D.host.E D.what₂.LL := (CV.rho τ).toAlgebra
  have h1 := bc_mu D.sp.cm (D.sp.X 0) (D.sp.X_sig 0) (D.X_posDef 0 (Nat.zero_le _)) hn (CV.Q c τ) (CV.Q_good c τ)
    (by rw [Fintype.card_congr (CV.eQ c τ), Fintype.card_fin, H.rank]) (CV.bc c τ) (CV.bc_smul c τ) (D.clsLat u 0 c) (H.lat c)
    (CV.bc_L c τ) (CV.bc_norm c τ)
  have hT : (Tu D u) ^ (2 * D.R.f) ≠ 0 := pow_ne_zero _ H.Tpos.ne'
  rw [h1.1, eLat_mu D.sp.cm (D.sp.X 0) (D.sp.X_sig 0) (D.X_posDef 0 (Nat.zero_le _)) hn _ h1.2 _ hT (CV.latT c), H.deg, H.rank,
    Ranks.N_zero]
  have hf : (0 : ℝ) < (D.R.f : ℝ) := by
    have : 0 < 2 * D.R.f := by rw [← H.deg]; exact Module.finrank_pos
    exact_mod_cast (by omega : 0 < D.R.f)
  have hk : (0 : ℝ) < (D.R.k : ℝ) := by exact_mod_cast columnCount_pos D
  push_cast
  rw [Real.log_pow]
  push_cast
  field_simp

theorem column_lattice_exact_slope (D : D7) : ColSlopeEq D := colSlopeEq_of_Q D (q_lattice_slope D)

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.ColumnLatticeExactSlope =====
