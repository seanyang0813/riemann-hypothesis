module

public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic
public import Mathlib.RingTheory.Coalgebra.IsFrobenius
public import Mathlib.RingTheory.Etale.Weakly
public import Mathlib.RingTheory.HopfAlgebra.Basic
public import Mathlib.RingTheory.TotallySplit
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub
public import Mathlib.CategoryTheory.Category.Basic
public import Mathlib.Analysis.Normed.Group.Ultra
public import Mathlib.Algebra.Order.Chebyshev
public import Mathlib.Analysis.Matrix.PosDef
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.OnlyIsotropic
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EllipticTermOfIsotropic
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SizeFinitePlaces
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.Mahler
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
import Mathlib.Tactic.Linter.Style
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.PiTensorProduct
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AdelicDegreeFormula
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConjugatePlacesFacts
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeBoundedOfBasis
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreePairingIdentity
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeUnderTranslation
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LogAbsBasicFacts
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OnlyStableSubspaces
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignConeWeightIndicatorStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignConeWeightSupportBoundStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SizeBasicOfConjPlaces
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeBoundFinitePlaces

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeRationalSubspace, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MahlerBoundOfDegree, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityFinitePlaces, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityInfinitePlaces, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundFinitePlaces, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegBasisOfDegBasisG, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeBasisGeneral, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeSubmoduleBound, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DeterminantMonotonicity, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteSupportOfSize, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OnlyIsotropicSubspaces, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundInfinitePlaces, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RadicalSubspaceFacts, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignConeWeightTranslation, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwoBasesComparison, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeBoundInfinitePlaces, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeSubspaceBound, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.OnlyIsotropic

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeRationalSubspace =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeRationalSubspace", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic\npublic import Mathlib.RingTheory.Coalgebra.IsFrobenius\npublic import Mathlib.RingTheory.Etale.Weakly\npublic import Mathlib.RingTheory.HopfAlgebra.Basic\npublic import Mathlib.RingTheory.TotallySplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.Degree

variable {E : Type} [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] {n : ℕ}

theorem basisMat_transpose_eq (W : Submodule E (Fin n → E)) :
    ((basisMat W)ᵀ : Fin (Module.finrank E W) → Fin n → E) =
      W.subtype ∘ (Module.finBasis E W) := by
  funext j i
  rfl

theorem basisMat_linearIndependent (W : Submodule E (Fin n → E)) :
    LinearIndependent E (basisMat W)ᵀ := by
  rw [basisMat_transpose_eq]
  exact (Module.finBasis E W).linearIndependent.map' W.subtype W.ker_subtype

theorem span_basisMat (W : Submodule E (Fin n → E)) :
    Submodule.span E (Set.range (basisMat W)ᵀ) = W := by
  rw [basisMat_transpose_eq, Set.range_comp, ← Submodule.map_span, (Module.finBasis E W).span_eq,
    Submodule.map_top, Submodule.range_subtype]

theorem mul_transpose_apply {κ : Type} [Fintype κ] (g : GL (Fin n) E) (M : Matrix (Fin n) κ E) (j : κ) :
    (g.val * M)ᵀ j = Matrix.toLin' g.val (Mᵀ j) := by
  funext i
  simp [Matrix.mul_apply, Matrix.mulVec, dotProduct]

theorem ker_toLin'_eq_bot (g : GL (Fin n) E) : LinearMap.ker (Matrix.toLin' g.val) = ⊥ := by
  refine LinearMap.ker_eq_bot.2 fun a b hab => ?_
  have h := congrArg (Matrix.toLin' (g⁻¹ : GL (Fin n) E).val) hab
  simpa [Matrix.toLin'_apply, Matrix.mulVec_mulVec] using h

theorem frame_rat {κ : Type} [Fintype κ] (x : GA E n) (g : GL (Fin n) E) (M : Matrix (Fin n) κ E) :
    ((ratGL E n g * x)⁻¹ : GA E n).val * (g.val * M).map (algebraMap E (Ad E)) =
      (x⁻¹ : GA E n).val * M.map (algebraMap E (Ad E)) := by
  have hr : (g.val * M).map (algebraMap E (Ad E)) =
      (ratGL E n g).val * M.map (algebraMap E (Ad E)) := by
    rw [Matrix.map_mul]
    rfl
  rw [hr, _root_.mul_inv_rev, Units.val_mul, Matrix.mul_assoc, ← Matrix.mul_assoc (ratGL E n g)⁻¹.val,
    Units.inv_mul, Matrix.one_mul]

theorem degG_rat {κ : Type} [Fintype κ] [DecidableEq κ] (x : GA E n) (g : GL (Fin n) E)
    (M : Matrix (Fin n) κ E) : degG (ratGL E n g * x) (g.val * M) = degG x M := by
  simp only [degG, frame_rat]

theorem degRat_of_degBasisG : DegBasisG → DegRat := by
  intro h E _ _ _ n x g W
  have hli : LinearIndependent E (g.val * basisMat W)ᵀ := by
    have e : (fun j => (g.val * basisMat W)ᵀ j) = Matrix.toLin' g.val ∘ fun j => (basisMat W)ᵀ j :=
      funext (mul_transpose_apply g (basisMat W))
    have l : LinearIndependent E (fun j => (g.val * basisMat W)ᵀ j) :=
      e ▸ (basisMat_linearIndependent W).map' _ (ker_toLin'_eq_bot g)
    exact l
  have hspan : Submodule.span E (Set.range (g.val * basisMat W)ᵀ) = img g W := by
    have e : Set.range (g.val * basisMat W)ᵀ = Matrix.toLin' g.val '' Set.range (basisMat W)ᵀ :=
      Set.ext fun y => ⟨fun ⟨j, hj⟩ => ⟨(basisMat W)ᵀ j, ⟨j, rfl⟩,
          (mul_transpose_apply g (basisMat W) j).symm.trans hj⟩,
        fun ⟨_, ⟨j, hj⟩, hy⟩ => ⟨j, (mul_transpose_apply g (basisMat W) j).trans (hj ▸ hy)⟩⟩
    rw [e, ← Submodule.map_span, span_basisMat]
    rfl
  have key := h E n (Fin (Module.finrank E W)) (ratGL E n g * x) (g.val * basisMat W) hli
  rw [hspan] at key
  rw [← key, degG_rat]
  rfl

end GlobalTheory.CompanionTheory.Degree

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeRationalSubspace =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MahlerBoundOfDegree =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MahlerBoundOfDegree", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.Cutoff

section Img

variable {K : Type} [Field K] {n : ℕ}

def imgEquiv (g : GL (Fin n) K) : (Fin n → K) ≃ₗ[K] (Fin n → K) :=
  LinearEquiv.ofLinear (Matrix.toLin' g.val) (Matrix.toLin' (g⁻¹ : GL (Fin n) K).val)
    (by rw [← Matrix.toLin'_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.toLin'_one])
    (by rw [← Matrix.toLin'_mul, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.toLin'_one])

theorem img_eq_map (g : GL (Fin n) K) (W : Submodule K (Fin n → K)) :
    img g W = W.map ((imgEquiv g : (Fin n → K) ≃ₗ[K] (Fin n → K)) : (Fin n → K) →ₗ[K] (Fin n → K)) := rfl

theorem finrank_img (g : GL (Fin n) K) (W : Submodule K (Fin n → K)) :
    Module.finrank K (img g W) = Module.finrank K W := by
  rw [img_eq_map]
  exact LinearEquiv.finrank_map_eq _ _

theorem img_top (g : GL (Fin n) K) : img g (⊤ : Submodule K (Fin n → K)) = ⊤ := by
  rw [img_eq_map, Submodule.map_top]
  exact LinearEquiv.range _

theorem img_img_inv (g : GL (Fin n) K) (W : Submodule K (Fin n → K)) :
    img g (img (g⁻¹ : GL (Fin n) K) W) = W := by
  unfold img
  rw [← Submodule.map_comp, ← Matrix.toLin'_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one,
    Matrix.toLin'_one, Submodule.map_id]

end Img

theorem mem_cutSet_of_mem (hR : DegRat) {E : Type} [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] {n : ℕ} {τ : ℝ}
    (g : GL (Fin n) E) {x : GA E n} (hx : x ∈ cutSet E n τ) : ratGL E n g * x ∈ cutSet E n τ := by
  have hx' : (∀ W : Submodule E (Fin n → E), deg x W ≤ prof n τ (Module.finrank E W)) ∧ -τ ≤ deg x ⊤ := hx
  show (∀ W : Submodule E (Fin n → E), deg (ratGL E n g * x) W ≤ prof n τ (Module.finrank E W)) ∧
    -τ ≤ deg (ratGL E n g * x) ⊤
  refine ⟨fun W => ?_, ?_⟩
  · have h := hR E n x g (img (g⁻¹ : GL (Fin n) E) W)
    rw [img_img_inv] at h
    rw [h, ← finrank_img (g⁻¹ : GL (Fin n) E) W]
    exact hx'.1 _
  · have h := hR E n x g ⊤
    rw [img_top] at h
    rw [h]
    exact hx'.2

theorem mahler_of : DegBdd → DegRat → MahlerC → Mahler := by
  intro hB hR hM E _ _ _ n τ
  refine ⟨?_, ?_, ?_⟩
  · have hset : cutSet E n τ = (⋂ W : Submodule E (Fin n → E), {x : GA E n | deg x W ≤ prof n τ (Module.finrank E W)}) ∩
        {x : GA E n | -τ ≤ deg x ⊤} := by
      ext x
      simp [cutSet]
    rw [hset]
    exact (isClosed_iInter fun W => isClosed_le ((hB E n).2 W) continuous_const).inter
      (isClosed_le continuous_const ((hB E n).2 ⊤))
  · intro g x
    constructor
    · intro h
      have h' := mem_cutSet_of_mem hR (g⁻¹) h
      rwa [map_inv, inv_mul_cancel_left] at h'
    · exact mem_cutSet_of_mem hR g
  · obtain ⟨C, hC, hsub⟩ := hM E n (|τ| * (2 * n + 1) ^ 2)
    refine ⟨C, hC, fun x hx => ?_⟩
    have hx' : (∀ W : Submodule E (Fin n → E), deg x W ≤ prof n τ (Module.finrank E W)) ∧ -τ ≤ deg x ⊤ := hx
    have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    have hτ : τ ≤ |τ| := le_abs_self τ
    have hτ0 : 0 ≤ |τ| := abs_nonneg τ
    apply hsub x
    · intro W hW
      have h1 := hx'.1 W
      rw [hW] at h1
      simp only [prof] at h1
      push_cast at h1
      nlinarith [mul_nonneg hτ0 hn, mul_nonneg (sub_nonneg.2 hτ) hn, mul_nonneg hτ0 (mul_nonneg hn hn)]
    · have h1 := hx'.1 ⊤
      rw [finrank_top, Module.finrank_fin_fun] at h1
      simp only [prof] at h1
      have h2 := hx'.2
      rw [abs_le]
      constructor
      · nlinarith [mul_nonneg hτ0 hn, mul_nonneg hτ0 (mul_nonneg hn hn)]
      · nlinarith [mul_nonneg hτ0 hn, mul_nonneg hτ0 (mul_nonneg hn hn),
          mul_nonneg (sub_nonneg.2 hτ) (mul_nonneg hn (by linarith : (0 : ℝ) ≤ n + 1))]

end GlobalTheory.CompanionTheory.Cutoff

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MahlerBoundOfDegree =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityFinitePlaces =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityFinitePlaces", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\npublic import Mathlib.CategoryTheory.Category.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Normed.Group.Ultra\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.WedgeMinor

theorem det_mul_submatrix_expand {K ι ι' κ : Type} [CommRing K] [Fintype ι] [Fintype κ]
    [DecidableEq κ] (g : Matrix ι' ι K) (A : Matrix ι κ K) (t : κ → ι') :
    ((g * A).submatrix t id).det =
      ∑ s : κ → ι, (∏ i, g (t i) (s i)) * (A.submatrix s id).det := by
  have h : ((g * A).submatrix t id : κ → κ → K) = fun i => ∑ k, g (t i) k • A k := by
    funext i j
    simp [Matrix.mul_apply, Finset.sum_apply]
  have key : ∀ M : Matrix κ κ K,
      M.det = (detRowAlternating (R := K) (n := κ)).toMultilinearMap M := fun _ => rfl

  rw [key, h, MultilinearMap.map_sum]
  refine Finset.sum_congr rfl fun s _ => ?_
  rw [MultilinearMap.map_smul_univ, smul_eq_mul]
  rfl

theorem le_sz {K ι κ : Type} [NormedField K] [Finite ι] [Finite κ] (g : Matrix ι κ K)
    (i : ι) (j : κ) : ‖g i j‖ ≤ sz g :=
  le_ciSup (f := fun p : ι × κ => ‖g p.1 p.2‖) (Set.finite_range _).bddAbove (i, j)

theorem le_nF {K ι κ : Type} [NormedField K] [Finite ι] [Fintype κ] [DecidableEq κ]
    (A : Matrix ι κ K) (s : κ → ι) : ‖(A.submatrix s id).det‖ ≤ nF A :=
  le_ciSup (f := fun s : κ → ι => ‖(A.submatrix s id).det‖) (Set.finite_range _).bddAbove s

theorem norm_minor_mul_le {K ι ι' κ : Type} [NormedField K] [IsUltrametricDist K] [Fintype ι]
    [Fintype ι'] [Fintype κ] [DecidableEq κ] (g : Matrix ι' ι K) (A : Matrix ι κ K) (t : κ → ι') :
    ‖((g * A).submatrix t id).det‖ ≤ sz g ^ Fintype.card κ * nF A := by
  rw [det_mul_submatrix_expand]
  refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg
    (mul_nonneg (pow_nonneg (GlobalTheory.CompanionTheory.Wedge.sz_nonneg' g) _) (GlobalTheory.CompanionTheory.Wedge.nF_nonneg' A)) fun s _ => ?_
  rw [norm_mul, norm_prod]
  refine mul_le_mul ?_ (le_nF A s) (norm_nonneg _) (pow_nonneg (GlobalTheory.CompanionTheory.Wedge.sz_nonneg' g) _)
  calc ∏ i, ‖g (t i) (s i)‖ ≤ ∏ _i : κ, sz g :=
        Finset.prod_le_prod₀ (fun _ _ => norm_nonneg _) fun i _ => le_sz g _ _
    _ = sz g ^ Fintype.card κ := by simp

theorem nF_mul_le {K ι ι' κ : Type} [NormedField K] [IsUltrametricDist K] [Fintype ι]
    [Fintype ι'] [Fintype κ] [DecidableEq κ] (g : Matrix ι' ι K) (A : Matrix ι κ K) :
    nF (g * A) ≤ sz g ^ Fintype.card κ * nF A :=
  Real.iSup_le (fun t => norm_minor_mul_le g A t)
    (mul_nonneg (pow_nonneg (GlobalTheory.CompanionTheory.Wedge.sz_nonneg' g) _) (GlobalTheory.CompanionTheory.Wedge.nF_nonneg' A))

theorem nF_mul_right {K ι κ : Type} [NormedField K] [Fintype ι] [Fintype κ] [DecidableEq κ]
    (A : Matrix ι κ K) (s : Matrix κ κ K) : nF (A * s) = nF A * ‖s.det‖ := by
  unfold nF
  rw [Real.iSup_mul_of_nonneg (norm_nonneg _)]
  refine iSup_congr fun t => ?_
  have h : (A * s).submatrix t id = A.submatrix t id * s := by
    ext i j
    simp [Matrix.mul_apply]
  rw [h, det_mul, norm_mul]

theorem nF_square {K κ : Type} [NormedField K] [Fintype κ] [DecidableEq κ]
    (s : Matrix κ κ K) : nF s = ‖s.det‖ := by
  refine le_antisymm (Real.iSup_le (fun t => ?_) (norm_nonneg _)) ?_
  · by_cases ht : Function.Injective t
    · have hb : Function.Bijective t := Finite.injective_iff_bijective.mp ht
      have h := Matrix.det_permute (Equiv.ofBijective t hb) s
      have h' : (s.submatrix t id).det = _ := h
      rw [h', norm_mul]
      rcases Int.units_eq_one_or (Equiv.Perm.sign (Equiv.ofBijective t hb)) with h1 | h1 <;>
        simp [h1]
    · obtain ⟨i, j, hij, hne⟩ : ∃ i j, t i = t j ∧ i ≠ j := by
        simpa [Function.Injective] using ht
      rw [Matrix.det_zero_of_row_eq hne (by funext k; simp [hij])]
      simp
  · simpa using le_nF s id

theorem mulF : MulF := by
  intro K ι ι' κ _ _ _ _ _ _ A
  exact ⟨fun g => nF_mul_le g A, fun s => nF_mul_right A s, fun s => nF_square s⟩

end GlobalTheory.CompanionTheory.WedgeMinor
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityFinitePlaces =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityInfinitePlaces =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityInfinitePlaces", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Order.Chebyshev\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix PositivityTheory.Rg.BcB.D1
open scoped ComplexOrder

namespace GlobalTheory.CompanionTheory.GramWedge

theorem star_dotProduct_self {α : Type} [Fintype α] (w : α → ℂ) :
    star w ⬝ᵥ w = ((∑ i, ‖w i‖ ^ 2 : ℝ) : ℂ) := by
  simp only [dotProduct, Pi.star_apply]
  push_cast
  refine Finset.sum_congr rfl fun i _ => ?_
  simpa using Complex.conj_mul' (w i)

theorem norm_entry_le_sz {ι ι' : Type} [Fintype ι] [Fintype ι'] (g : Matrix ι' ι ℂ) (a : ι') (b : ι) :
    ‖g a b‖ ≤ sz g :=
  le_ciSup (f := fun p : ι' × ι => ‖g p.1 p.2‖) (Set.finite_range _).bddAbove (a, b)

theorem sum_norm_mulVec_sq_le {ι ι' : Type} [Fintype ι] [Fintype ι'] (g : Matrix ι' ι ℂ) (v : ι → ℂ) :
    ∑ a, ‖(g *ᵥ v) a‖ ^ 2 ≤
      (Fintype.card ι * Fintype.card ι' : ℝ) * sz g ^ 2 * ∑ b, ‖v b‖ ^ 2 := by
  have row : ∀ a, ‖(g *ᵥ v) a‖ ^ 2 ≤ (Fintype.card ι : ℝ) * sz g ^ 2 * ∑ b, ‖v b‖ ^ 2 := by
    intro a
    have h1 : ‖(g *ᵥ v) a‖ ≤ sz g * ∑ b, ‖v b‖ := by
      rw [Finset.mul_sum]
      refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun b _ => ?_)
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_right (norm_entry_le_sz g a b) (norm_nonneg _)
    have h2 : (∑ b, ‖v b‖) ^ 2 ≤ (Fintype.card ι : ℝ) * ∑ b, ‖v b‖ ^ 2 := by
      simpa using sq_sum_le_card_mul_sum_sq (s := (Finset.univ : Finset ι)) (f := fun b => ‖v b‖)
    calc ‖(g *ᵥ v) a‖ ^ 2 ≤ (sz g * ∑ b, ‖v b‖) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) h1 2
      _ = sz g ^ 2 * (∑ b, ‖v b‖) ^ 2 := mul_pow _ _ _
      _ ≤ sz g ^ 2 * ((Fintype.card ι : ℝ) * ∑ b, ‖v b‖ ^ 2) :=
          mul_le_mul_of_nonneg_left h2 (sq_nonneg _)
      _ = _ := by ring
  calc ∑ a, ‖(g *ᵥ v) a‖ ^ 2
      ≤ ∑ _a : ι', (Fintype.card ι : ℝ) * sz g ^ 2 * ∑ b, ‖v b‖ ^ 2 := Finset.sum_le_sum fun a _ => row a
    _ = _ := by
      rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
      ring

theorem posSemidef_smul_gram_sub {ι ι' κ : Type} [Fintype ι] [Fintype ι'] [Fintype κ] [DecidableEq κ]
    (g : Matrix ι' ι ℂ) (A : Matrix ι κ ℂ) :
    (((((Fintype.card ι * Fintype.card ι' : ℝ) * sz g ^ 2 : ℝ) : ℂ) • (Aᴴ * A)) -
      (g * A)ᴴ * (g * A)).PosSemidef := by
  set c : ℝ := (Fintype.card ι * Fintype.card ι' : ℝ) * sz g ^ 2 with hc
  have hG : (Aᴴ * A).IsHermitian := isHermitian_conjTranspose_mul_self A
  have hH : ((g * A)ᴴ * (g * A)).IsHermitian := isHermitian_conjTranspose_mul_self _
  refine PosSemidef.of_dotProduct_mulVec_nonneg
    ((hG.smul (show star (c : ℂ) = c from Complex.conj_ofReal c)).sub hH) fun x => ?_
  have e : ∀ {α : Type} [Fintype α] (B : Matrix α κ ℂ),
      star x ⬝ᵥ ((Bᴴ * B) *ᵥ x) = star (B *ᵥ x) ⬝ᵥ (B *ᵥ x) := by
    intro α _ B
    rw [← mulVec_mulVec, star_mulVec, dotProduct_mulVec]
  have e1 := e A
  have e2 : star x ⬝ᵥ (((g * A)ᴴ * (g * A)) *ᵥ x) = star (g *ᵥ (A *ᵥ x)) ⬝ᵥ (g *ᵥ (A *ᵥ x)) := by
    rw [e (g * A), mulVec_mulVec]
  rw [sub_mulVec, smul_mulVec, dotProduct_sub, dotProduct_smul, e1, e2, star_dotProduct_self,
    star_dotProduct_self, smul_eq_mul, ← Complex.ofReal_mul, ← Complex.ofReal_sub]
  exact Complex.zero_le_real.2 (sub_nonneg.2 (sum_norm_mulVec_sq_le g (A *ᵥ x)))

theorem gram_mul_det {ι κ : Type} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (A : Matrix ι κ ℂ) (s : Matrix κ κ ℂ) :
    ((A * s)ᴴ * (A * s)).det = ((‖s.det‖ ^ 2 : ℝ) : ℂ) * (Aᴴ * A).det := by
  have h : star s.det * s.det = ((‖s.det‖ ^ 2 : ℝ) : ℂ) := by
    simpa using Complex.conj_mul' s.det
  rw [conjTranspose_mul, show sᴴ * Aᴴ * (A * s) = sᴴ * (Aᴴ * A) * s by
      rw [Matrix.mul_assoc, Matrix.mul_assoc, Matrix.mul_assoc],
    det_mul, det_mul, det_conjTranspose, ← h]
  ring

theorem mulI_of_detMono : DetMono → MulI := by
  intro hm ι ι' κ _ _ _ _ A
  refine ⟨fun g => ?_, fun s => ?_, fun s => ?_⟩
  · have h := hm κ _ _ (posSemidef_conjTranspose_mul_self (g * A)) (posSemidef_smul_gram_sub g A)
    rw [det_smul, ← Complex.ofReal_pow, Complex.re_ofReal_mul] at h
    exact h
  · simp only [nI]
    rw [gram_mul_det, Complex.re_ofReal_mul, mul_comm]
  · have h := gram_mul_det (1 : Matrix κ κ ℂ) s
    simp only [Matrix.one_mul, conjTranspose_one, det_one, mul_one] at h
    simp only [nI]
    rw [h, Complex.ofReal_re]

end GlobalTheory.CompanionTheory.GramWedge

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityInfinitePlaces =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundFinitePlaces =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundFinitePlaces", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.Wedge

theorem updateRow_submatrix_eq {K ι κ : Type} [DecidableEq ι] [DecidableEq κ]
    (U : Matrix ι κ K) (s : κ → ι) (k : κ) (i : ι) :
    (U.submatrix s id).updateRow k (U i) = U.submatrix (Function.update s k i) id := by
  ext j l
  by_cases h : j = k
  · subst h
    simp [Matrix.updateRow_apply, Function.update_self]
  · simp [Matrix.updateRow_apply, h]

theorem eq_mul_of_det_ne_zero {K ι κ : Type} [Field K] [DecidableEq ι] [Fintype κ] [DecidableEq κ]
    (U : Matrix ι κ K) (s : κ → ι) (hd : (U.submatrix s id).det ≠ 0) :
    U = (Matrix.of fun i k => (U.submatrix s id).det⁻¹ *
      (U.submatrix (Function.update s k i) id).det) * U.submatrix s id := by
  ext i l
  rw [Matrix.mul_apply]
  have key : ∀ k, (U.submatrix (Function.update s k i) id).det
      = Matrix.cramer (U.submatrix s id).transpose (U i) k := by
    intro k
    rw [← updateRow_submatrix_eq, Matrix.cramer_apply, Matrix.updateCol_transpose,
      Matrix.det_transpose]
  have hv := Matrix.mulVec_cramer (U.submatrix s id).transpose (U i)
  rw [Matrix.mulVec_transpose, Matrix.det_transpose] at hv
  have hl := congrFun hv l
  simp only [Matrix.vecMul, dotProduct, Pi.smul_apply, smul_eq_mul] at hl
  simp only [Matrix.of_apply, key, mul_assoc]
  rw [← Finset.mul_sum, hl, ← mul_assoc, inv_mul_cancel₀ hd, one_mul]

theorem pairF_of_mulF : MulF → PairF := by
  intro hM
  unfold PairF
  intro K ι κ _ _ _ _ _ U W
  classical
  have hsz0 : ∀ {a b : Type} (g : Matrix a b K), 0 ≤ sz g := by
    intro a b g
    unfold sz
    exact Real.iSup_nonneg (fun p => norm_nonneg _)
  have hnF0 : ∀ (X : Matrix ι κ K), 0 ≤ nF X := by
    intro X
    unfold nF
    exact Real.iSup_nonneg (fun s => norm_nonneg _)
  have hdetT : (Uᵀ * W).det = (Wᵀ * U).det := by
    rw [← Matrix.det_transpose, Matrix.transpose_mul, Matrix.transpose_transpose]
  by_cases h : ∃ s : κ → ι, (U.submatrix s id).det ≠ 0
  · haveI : Nonempty (κ → ι) := ⟨h.choose⟩
    obtain ⟨s₀, hs₀⟩ := Finite.exists_max (fun s : κ → ι => ‖(U.submatrix s id).det‖)
    have hd : (U.submatrix s₀ id).det ≠ 0 := by
      obtain ⟨s, hs⟩ := h
      intro h0
      have h1 := hs₀ s
      simp only [h0, norm_zero] at h1
      exact hs (norm_le_zero_iff.mp h1)
    have hnU : nF U = ‖(U.submatrix s₀ id).det‖ := by
      unfold nF
      apply le_antisymm
      · exact ciSup_le hs₀
      · exact le_ciSup (f := fun s : κ → ι => ‖(U.submatrix s id).det‖)
          (Set.finite_range _).bddAbove s₀
    set G : Matrix ι κ K := Matrix.of fun i k => (U.submatrix s₀ id).det⁻¹ *
      (U.submatrix (Function.update s₀ k i) id).det with hG
    have hUG : U = G * U.submatrix s₀ id := eq_mul_of_det_ne_zero U s₀ hd
    have hszG : sz Gᵀ ≤ 1 := by
      unfold sz
      apply Real.iSup_le ?_ zero_le_one
      intro p
      simp only [Matrix.transpose_apply, hG, Matrix.of_apply, norm_mul, norm_inv]
      rw [inv_mul_le_iff₀ (norm_pos_iff.mpr hd), mul_one]
      exact hs₀ _
    have hmain : ‖(Gᵀ * W).det‖ ≤ nF W := by
      have h1 := (hM K ι κ κ W).1 Gᵀ
      have h2 := (hM K ι κ κ W).2.2 (Gᵀ * W)
      rw [h2] at h1
      calc ‖(Gᵀ * W).det‖ ≤ sz Gᵀ ^ Fintype.card κ * nF W := h1
        _ ≤ 1 * nF W := by
          apply mul_le_mul_of_nonneg_right _ (hnF0 W)
          exact pow_le_one₀ (hsz0 _) hszG
        _ = nF W := one_mul _
    have hfac : (Uᵀ * W).det = (U.submatrix s₀ id).det * (Gᵀ * W).det := by
      conv_lhs => rw [hUG]
      rw [Matrix.transpose_mul, Matrix.mul_assoc, Matrix.det_mul, Matrix.det_transpose]
    rw [hfac, norm_mul, hnU]
    exact mul_le_mul_of_nonneg_left hmain (norm_nonneg _)
  · simp only [not_exists, not_not] at h
    have hnU : nF U = 0 := by
      unfold nF
      simp only [h, norm_zero]
      first
        | exact Real.iSup_const_zero
    have h1 := (hM K ι κ κ U).1 Wᵀ
    have h2 := (hM K ι κ κ U).2.2 (Wᵀ * U)
    rw [h2, hnU, mul_zero] at h1
    rw [hdetT, hnU, zero_mul]
    exact h1

end GlobalTheory.CompanionTheory.Wedge
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundFinitePlaces =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegBasisOfDegBasisG =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegBasisOfDegBasisG", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.DegreeBasis

theorem degBasis_of_degBasisG : DegBasisG → DegBasis := by
  intro h E _ _ _ n k x M hM
  rw [← degG_eq x M]
  exact h E n (Fin k) x M hM

end GlobalTheory.CompanionTheory.DegreeBasis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegBasisOfDegBasisG =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeBasisGeneral =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeBasisGeneral", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc
open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.DegBasisGen

variable {E : Type} [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] {n : ℕ}

theorem ultra (w : HeightOneSpectrum (𝓞 E)) : IsUltrametricDist (w.adicCompletion E) :=
  inferInstanceAs (@IsUltrametricDist (w.adicCompletion E)
    (Valued.toNormedField (w.adicCompletion E) (WithZero (Multiplicative ℤ))).toDist)

theorem exists_left_inv {K ι κ : Type} [Field K] [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]
    (P : Matrix ι κ K) (hP : LinearIndependent K Pᵀ) : ∃ Y : Matrix κ ι K, Y * P = 1 := by
  have inj : LinearMap.ker P.mulVecLin = ⊥ := by
    rw [LinearMap.ker_eq_bot']
    intro v hv
    have h0 := hv
    rw [Matrix.mulVecLin_apply, Matrix.mulVec_eq_sum] at h0
    simp only [op_smul_eq_smul] at h0
    funext i
    exact Fintype.linearIndependent_iff.1 hP v h0 i
  obtain ⟨f, hf⟩ := P.mulVecLin.exists_leftInverse_of_injective inj
  refine ⟨LinearMap.toMatrix' f, ?_⟩
  have h := congrArg LinearMap.toMatrix' hf
  rwa [LinearMap.toMatrix'_comp, ← Matrix.toLin'_apply', LinearMap.toMatrix'_toLin',
    LinearMap.toMatrix'_id] at h

theorem degG_reindex (hF : WedgeF) (hI : WedgeI) {κ κ' : Type} [Fintype κ] [DecidableEq κ] [Fintype κ']
    [DecidableEq κ'] (e : κ' ≃ κ) (x : GA E n) (M : Matrix (Fin n) κ E) :
    degG x (M.submatrix id e) = degG x M := by
  have hfr : (x⁻¹ : GA E n).val * (M.submatrix id e).map (algebraMap E (Ad E)) =
      ((x⁻¹ : GA E n).val * M.map (algebraMap E (Ad E))).submatrix id e := by
    ext i j
    simp [Matrix.mul_apply]
  obtain ⟨A, hA⟩ : ∃ A, A = (x⁻¹ : GA E n).val * M.map (algebraMap E (Ad E)) := ⟨_, rfl⟩
  have hv : ∀ v, nI ((A.submatrix id e).map (cV v)) = nI (A.map (cV v)) := fun v => by
    rw [← Matrix.submatrix_map]
    exact (hI (Fin n)).reindex κ κ' e (A.map (cV v))
  have hw : ∀ w, nF ((A.submatrix id e).map (cW w)) = nF (A.map (cW w)) := fun w => by
    haveI := ultra w
    rw [← Matrix.submatrix_map]
    exact (hF (w.adicCompletion E) (Fin n)).reindex κ κ' e (A.map (cW w))
  simp only [degG, hfr, ← hA, hv, hw]

theorem degG_mul (mF : MulF) (mI : MulI) (lg : LogAbsBasic) (fs : FinSupp) {κ : Type} [Fintype κ] [DecidableEq κ]
    (x : GA E n) (P : Matrix (Fin n) κ E) (hP : LinearIndependent E Pᵀ) (s : Matrix κ κ E) (hs : s.det ≠ 0) :
    degG x (P * s) = degG x P := by
  obtain ⟨A, hA⟩ : ∃ A, A = (x⁻¹ : GA E n).val * P.map (algebraMap E (Ad E)) := ⟨_, rfl⟩
  have hfr : (x⁻¹ : GA E n).val * (P * s).map (algebraMap E (Ad E)) = A * s.map (algebraMap E (Ad E)) := by
    rw [hA, Matrix.map_mul, Matrix.mul_assoc]
  obtain ⟨Y₀, hY₀⟩ := exists_left_inv P hP
  have hYA : (Y₀.map (algebraMap E (Ad E)) * x.val) * A = 1 := by
    rw [hA, Matrix.mul_assoc, ← Matrix.mul_assoc x.val, ← Units.val_mul, mul_inv_cancel, Units.val_one,
      Matrix.one_mul, ← Matrix.map_mul, hY₀, Matrix.map_one _ (map_zero _) (map_one _)]
  obtain ⟨h1, h2, h3⟩ := (lg E).1, (lg E).2.1, (lg E).2.2
  obtain ⟨f1, f2, f3⟩ := fs E (Fin n) κ A _ hYA
  have hu : IsUnit (algebraMap E (Ad E) s.det) := (IsUnit.mk0 _ hs).map _
  have hdet : ∀ {R : Type} [CommRing R] (f : Ad E →+* R),
      ((s.map (algebraMap E (Ad E))).map f).det = f (algebraMap E (Ad E) s.det) := fun f => by
    rw [RingHom.map_det, RingHom.map_det]
    rfl
  have hv : ∀ v, Real.log (nI ((A * s.map (algebraMap E (Ad E))).map (cV v))) =
      Real.log (nI (A.map (cV v))) + Real.log (‖cV v (algebraMap E (Ad E) s.det)‖ ^ 2) := fun v => by
    have hne : ‖cV v (algebraMap E (Ad E) s.det)‖ ^ 2 ≠ 0 :=
      pow_ne_zero _ (norm_ne_zero_iff.2 (hu.map (cV v)).ne_zero)
    rw [Matrix.map_mul, (mI (Fin n) (Fin n) κ _).2.1, hdet, Real.log_mul (f1 v) hne]
  have hw : ∀ w, Real.log (nF ((A * s.map (algebraMap E (Ad E))).map (cW w))) =
      Real.log (nF (A.map (cW w))) + Real.log ‖cW w (algebraMap E (Ad E) s.det)‖ := fun w => by
    haveI := ultra w
    have hne : ‖cW w (algebraMap E (Ad E) s.det)‖ ≠ 0 := norm_ne_zero_iff.2 (hu.map (cW w)).ne_zero
    rw [Matrix.map_mul, (mF _ (Fin n) (Fin n) κ _).2.1, hdet, Real.log_mul (f2 w) hne]
  have hsupp : (Function.support fun w => Real.log (nF (A.map (cW w)))).Finite :=
    f3.subset fun w hw' h => hw' (by simp [h])
  have hprod := h3 s.det hs
  simp only [degG, hfr, ← hA, hv, hw]
  rw [Finset.sum_add_distrib, finsum_add_distrib hsupp (h1 _ hu)]
  unfold logAbs at hprod
  linarith

theorem degBasisG_of : WedgeF → WedgeI → MulF → MulI → LogAbsBasic → FinSupp → DegBasisG := by
  intro hF hI mF mI lg fs E _ _ _ n κ _ _ x M hM
  obtain ⟨W, hW⟩ : ∃ W, W = Submodule.span E (Set.range Mᵀ) := ⟨_, rfl⟩
  rw [← hW]
  have hcard : Module.finrank E W = Fintype.card κ := by
    rw [hW]
    exact finrank_span_eq_card hM
  have hsub : ∀ k, (fun i => M i k) ∈ W := fun k => by
    rw [hW]
    exact Submodule.subset_span ⟨k, rfl⟩
  let e : Fin (Module.finrank E W) ≃ κ := (Fintype.equivFinOfCardEq hcard.symm).symm
  have hcol : ∀ j, (fun i => M i (e j)) ∈ W := fun j => hsub (e j)
  let b := Module.finBasis E W
  let s : Matrix (Fin (Module.finrank E W)) (Fin (Module.finrank E W)) E :=
    Matrix.of fun i j => b.repr ⟨fun i' => M i' (e j), hcol j⟩ i
  have hfac : M.submatrix id e = basisMat W * s := by
    ext i j
    have h := congrArg (fun y : W => (y : Fin n → E) i) (b.sum_repr ⟨fun i' => M i' (e j), hcol j⟩)
    simp only [AddSubmonoidClass.coe_finsetSum, Submodule.coe_smul, Finset.sum_apply, Pi.smul_apply,
      smul_eq_mul] at h
    simp only [Matrix.mul_apply, basisMat, Matrix.of_apply, Matrix.submatrix_apply, id, s]
    rw [← h]
    exact Finset.sum_congr rfl fun l _ => mul_comm _ _
  have hlin : LinearIndependent E (M.submatrix id e)ᵀ := hM.comp e e.injective
  have hs : s.det ≠ 0 := by
    intro h0
    obtain ⟨v, hv0, hv⟩ := Matrix.exists_mulVec_eq_zero_iff.2 h0
    have h1 : M.submatrix id e *ᵥ v = 0 := by
      rw [hfac, ← Matrix.mulVec_mulVec, hv, Matrix.mulVec_zero]
    rw [Matrix.mulVec_eq_sum] at h1
    simp only [op_smul_eq_smul] at h1
    exact hv0 (funext fun i => Fintype.linearIndependent_iff.1 hlin v h1 i)
  have hP : LinearIndependent E (basisMat W)ᵀ :=
    b.linearIndependent.map' W.subtype (Submodule.ker_subtype W)
  calc degG x M = degG x (M.submatrix id e) := (degG_reindex hF hI e x M).symm
    _ = degG x (basisMat W * s) := by rw [hfac]
    _ = degG x (basisMat W) := degG_mul mF mI lg fs x _ hP s hs
    _ = deg x W := rfl

end GlobalTheory.CompanionTheory.DegBasisGen

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeBasisGeneral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeSubmoduleBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeSubmoduleBound", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc
open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.DegreeSubmod

theorem exists_leftInv {K ι κ : Type} [Field K] [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]
    (M : Matrix ι κ K) (h : LinearIndependent K Mᵀ) : ∃ Y : Matrix κ ι K, Y * M = 1 := by
  have hinj : Function.Injective M.mulVecLin := by
    have : Function.Injective M.mulVec := Matrix.mulVec_injective_iff.2 h
    exact this
  obtain ⟨g, hg⟩ := M.mulVecLin.exists_leftInverse_of_injective (LinearMap.ker_eq_bot.2 hinj)
  refine ⟨LinearMap.toMatrix' g, ?_⟩
  have h2 : LinearMap.toMatrix' (g ∘ₗ M.mulVecLin) = LinearMap.toMatrix' g * M := by
    rw [LinearMap.toMatrix'_comp, ← Matrix.toLin'_apply', LinearMap.toMatrix'_toLin']
  rw [← h2, hg]
  simp

theorem log_ineq {K ι : Type} [Field K] [Fintype ι] [DecidableEq ι] (N : Fam K ι) (hN : IsWedge N) (hS : WedgeSub)
    {κ₀ κ₁ κ₂ : Type} [Fintype κ₀] [DecidableEq κ₀] [Fintype κ₁] [DecidableEq κ₁] [Fintype κ₂] [DecidableEq κ₂]
    (B : Matrix ι κ₀ K) (A : Matrix ι κ₁ K) (C : Matrix ι κ₂ K)
    (h0 : N (κ₀ ⊕ (κ₁ ⊕ κ₂)) (fromCols B (fromCols A C)) ≠ 0) (h1 : N κ₀ B ≠ 0)
    (h2 : N (κ₀ ⊕ κ₁) (fromCols B A) ≠ 0) (h3 : N (κ₀ ⊕ κ₂) (fromCols B C) ≠ 0) :
    Real.log (N (κ₀ ⊕ (κ₁ ⊕ κ₂)) (fromCols B (fromCols A C))) + Real.log (N κ₀ B) ≤
      Real.log (N (κ₀ ⊕ κ₁) (fromCols B A)) + Real.log (N (κ₀ ⊕ κ₂) (fromCols B C)) := by
  have p0 := lt_of_le_of_ne (hN.nonneg _ (fromCols B (fromCols A C))) h0.symm
  have p1 := lt_of_le_of_ne (hN.nonneg _ B) h1.symm
  rw [← Real.log_mul h0 h1, ← Real.log_mul h2 h3]
  exact Real.log_le_log (mul_pos p0 p1) (hS K ι N hN _ _ _ B A C)

variable {E : Type} [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] {n : ℕ}

theorem frame_leftInv {κ : Type} [Fintype κ] [DecidableEq κ] (x : GA E n) (M : Matrix (Fin n) κ E)
    (h : LinearIndependent E Mᵀ) :
    ∃ Y : Matrix κ (Fin n) (Ad E), Y * ((x⁻¹ : GA E n).val * M.map (algebraMap E (Ad E))) = 1 := by
  obtain ⟨Y, hY⟩ := exists_leftInv M h
  refine ⟨Y.map (algebraMap E (Ad E)) * x.val, ?_⟩
  have hx : x.val * (x⁻¹ : GA E n).val = 1 := Units.mul_inv x
  have hm : Y.map (algebraMap E (Ad E)) * M.map (algebraMap E (Ad E)) = 1 := by
    rw [← Matrix.map_mul, hY, Matrix.map_one _ (map_zero _) (map_one _)]
  calc Y.map (algebraMap E (Ad E)) * x.val * ((x⁻¹ : GA E n).val * M.map (algebraMap E (Ad E)))
      = Y.map (algebraMap E (Ad E)) * (x.val * (x⁻¹ : GA E n).val) * M.map (algebraMap E (Ad E)) := by
        simp only [Matrix.mul_assoc]
    _ = 1 := by rw [hx, Matrix.mul_one, hm]

theorem frame_fromCols {κ κ' : Type} [Fintype κ] [Fintype κ'] (x : GA E n) (P : Matrix (Fin n) κ E)
    (Q : Matrix (Fin n) κ' E) :
    (x⁻¹ : GA E n).val * (fromCols P Q).map (algebraMap E (Ad E)) =
      fromCols ((x⁻¹ : GA E n).val * P.map (algebraMap E (Ad E))) ((x⁻¹ : GA E n).val * Q.map (algebraMap E (Ad E))) := by
  rw [GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols', Matrix.mul_fromCols]

theorem sum_ineq (hF : WedgeF) (hI : WedgeI) (hS : WedgeSub) (hFS : FinSupp)
    {κ₀ κ₁ κ₂ : Type} [Fintype κ₀] [DecidableEq κ₀] [Fintype κ₁] [DecidableEq κ₁] [Fintype κ₂] [DecidableEq κ₂]
    (P : Matrix (Fin n) κ₀ (Ad E)) (Q : Matrix (Fin n) κ₁ (Ad E)) (R : Matrix (Fin n) κ₂ (Ad E))
    {Y₀ : Matrix (κ₀ ⊕ (κ₁ ⊕ κ₂)) (Fin n) (Ad E)} (h₀ : Y₀ * fromCols P (fromCols Q R) = 1)
    {Y₁ : Matrix κ₀ (Fin n) (Ad E)} (h₁ : Y₁ * P = 1)
    {Y₂ : Matrix (κ₀ ⊕ κ₁) (Fin n) (Ad E)} (h₂ : Y₂ * fromCols P Q = 1)
    {Y₃ : Matrix (κ₀ ⊕ κ₂) (Fin n) (Ad E)} (h₃ : Y₃ * fromCols P R = 1) :
    (∑ v, Real.log (nI ((fromCols P (fromCols Q R)).map (cV v))) +
        ∑ᶠ w, Real.log (nF ((fromCols P (fromCols Q R)).map (cW w)))) +
      (∑ v, Real.log (nI (P.map (cV v))) + ∑ᶠ w, Real.log (nF (P.map (cW w)))) ≤
    (∑ v, Real.log (nI ((fromCols P Q).map (cV v))) + ∑ᶠ w, Real.log (nF ((fromCols P Q).map (cW w)))) +
      (∑ v, Real.log (nI ((fromCols P R).map (cV v))) + ∑ᶠ w, Real.log (nF ((fromCols P R).map (cW w)))) := by
  obtain ⟨i₀, f₀, s₀⟩ := hFS E _ _ _ Y₀ h₀
  obtain ⟨i₁, f₁, s₁⟩ := hFS E _ _ _ Y₁ h₁
  obtain ⟨i₂, f₂, s₂⟩ := hFS E _ _ _ Y₂ h₂
  obtain ⟨i₃, f₃, s₃⟩ := hFS E _ _ _ Y₃ h₃
  have fin : ∀ {κ : Type} [Fintype κ] [DecidableEq κ] (T : Matrix (Fin n) κ (Ad E)),
      {w | nF (T.map (cW w)) ≠ 1}.Finite →
      (Function.support fun w => Real.log (nF (T.map (cW w)))).Finite := by
    intro κ _ _ T hT
    refine hT.subset fun w hw h1 => hw ?_
    simp only [Function.mem_support] at hw
    exact absurd (by rw [h1, Real.log_one]) hw
  have inf : ∑ v, Real.log (nI ((fromCols P (fromCols Q R)).map (cV v))) + ∑ v, Real.log (nI (P.map (cV v))) ≤
      ∑ v, Real.log (nI ((fromCols P Q).map (cV v))) + ∑ v, Real.log (nI ((fromCols P R).map (cV v))) := by
    rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
    refine Finset.sum_le_sum fun v _ => ?_
    have a₀ := i₀ v
    have a₂ := i₂ v
    have a₃ := i₃ v
    rw [GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols'] at a₂ a₃
    rw [GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols', GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols'] at a₀
    rw [GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols', GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols', GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols', GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols']
    exact log_ineq (fun _ _ _ A => nI A) (hI _) hS _ _ _ a₀ (i₁ v) a₂ a₃
  have finp : ∑ᶠ w, Real.log (nF ((fromCols P (fromCols Q R)).map (cW w))) + ∑ᶠ w, Real.log (nF (P.map (cW w))) ≤
      ∑ᶠ w, Real.log (nF ((fromCols P Q).map (cW w))) + ∑ᶠ w, Real.log (nF ((fromCols P R).map (cW w))) := by
    rw [← finsum_add_distrib (fin _ s₀) (fin _ s₁), ← finsum_add_distrib (fin _ s₂) (fin _ s₃)]
    refine finsum_le_finsum' ((fin _ s₀).union (fin _ s₁) |>.subset (Function.support_add _ _))
      ((fin _ s₂).union (fin _ s₃) |>.subset (Function.support_add _ _)) fun w => ?_
    have a₀ := f₀ w
    have a₂ := f₂ w
    have a₃ := f₃ w
    rw [GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols'] at a₂ a₃
    rw [GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols', GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols'] at a₀
    simp only
    rw [GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols', GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols', GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols', GlobalTheory.CompanionTheory.DegPairingProof.map_fromCols']
    exact log_ineq (fun _ _ _ A => nF A) (hF _ _) hS _ _ _ a₀ (f₁ w) a₂ a₃
  linarith

theorem degG_ineq (hF : WedgeF) (hI : WedgeI) (hS : WedgeSub) (hFS : FinSupp) (x : GA E n)
    {κ₀ κ₁ κ₂ : Type} [Fintype κ₀] [DecidableEq κ₀] [Fintype κ₁] [DecidableEq κ₁] [Fintype κ₂] [DecidableEq κ₂]
    (B : Matrix (Fin n) κ₀ E) (A : Matrix (Fin n) κ₁ E) (C : Matrix (Fin n) κ₂ E)
    (l₀ : LinearIndependent E (fromCols B (fromCols A C))ᵀ) (l₁ : LinearIndependent E Bᵀ)
    (l₂ : LinearIndependent E (fromCols B A)ᵀ) (l₃ : LinearIndependent E (fromCols B C)ᵀ) :
    degG x (fromCols B A) + degG x (fromCols B C) ≤ degG x B + degG x (fromCols B (fromCols A C)) := by
  obtain ⟨Y₀, h₀⟩ := frame_leftInv x _ l₀
  obtain ⟨Y₁, h₁⟩ := frame_leftInv x _ l₁
  obtain ⟨Y₂, h₂⟩ := frame_leftInv x _ l₂
  obtain ⟨Y₃, h₃⟩ := frame_leftInv x _ l₃
  rw [frame_fromCols, frame_fromCols] at h₀
  rw [frame_fromCols] at h₂ h₃
  have key := sum_ineq hF hI hS hFS _ _ _ h₀ h₁ h₂ h₃
  simp only [degG, frame_fromCols]
  linarith

theorem degSubmod_of (hF : WedgeF) (hI : WedgeI) (hS : WedgeSub) (hFS : FinSupp) (hB : DegBasisG) (hT : TwoBases) :
    DegSubmod := by
  intro E _ _ _ n x W W'
  obtain ⟨a, b, c, B, A, C, l₀, e₁, e₂, e₃, e₄⟩ := hT E n W W'
  have l₂ : LinearIndependent E (fromCols B A)ᵀ := by
    have : (fromCols B A)ᵀ = (fromCols B (fromCols A C))ᵀ ∘ Sum.map id Sum.inl := by
      funext j; rcases j with j | j <;> rfl
    rw [this]
    exact l₀.comp _ (Sum.map_injective.2 ⟨Function.injective_id, Sum.inl_injective⟩)
  have l₃ : LinearIndependent E (fromCols B C)ᵀ := by
    have : (fromCols B C)ᵀ = (fromCols B (fromCols A C))ᵀ ∘ Sum.map id Sum.inr := by
      funext j; rcases j with j | j <;> rfl
    rw [this]
    exact l₀.comp _ (Sum.map_injective.2 ⟨Function.injective_id, Sum.inr_injective⟩)
  have l₁ : LinearIndependent E Bᵀ := by
    have : Bᵀ = (fromCols B (fromCols A C))ᵀ ∘ Sum.inl := by
      funext j; rfl
    rw [this]
    exact l₀.comp _ Sum.inl_injective
  have d₀ := hB E n _ x _ l₀
  have d₁ := hB E n _ x _ l₁
  have d₂ := hB E n _ x _ l₂
  have d₃ := hB E n _ x _ l₃
  rw [e₄] at d₀
  rw [e₁] at d₁
  rw [e₂] at d₂
  rw [e₃] at d₃
  rw [← d₀, ← d₁, ← d₂, ← d₃]
  exact degG_ineq hF hI hS hFS x B A C l₀ l₁ l₂ l₃

end GlobalTheory.CompanionTheory.DegreeSubmod

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeSubmoduleBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DeterminantMonotonicity =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DeterminantMonotonicity", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.DetMonotone

private theorem exists_unitary_diagonal_eigenvalues_of_isHermitian {κ : Type} [Fintype κ] [DecidableEq κ] {A : Matrix κ κ ℂ} (hA : A.IsHermitian) :
    ∃ U : Matrix κ κ ℂ, U * star U = 1 ∧ star U * U = 1 ∧
      A = U * diagonal (fun i => (hA.eigenvalues i : ℂ)) * star U := by
  refine ⟨(hA.eigenvectorUnitary : Matrix κ κ ℂ), Unitary.mul_star_self_of_mem hA.eigenvectorUnitary.2,
    Unitary.star_mul_self_of_mem hA.eigenvectorUnitary.2, ?_⟩
  conv_lhs => rw [hA.spectral_theorem]
  rfl

theorem detMono : DetMono := by
  open ComplexOrder in (
    have one_le_re_det_lemma_2 : ∀ {κ : Type} [Fintype κ] [DecidableEq κ] {Q : Matrix κ κ ℂ},
        Q.PosSemidef → 1 ≤ ((1 + Q).det).re := by
      intro κ _ _ Q hQ
      obtain ⟨U, h1, h2, hU⟩ := exists_unitary_diagonal_eigenvalues_of_isHermitian hQ.1
      have hsum : 1 + Q = U * diagonal (fun i => 1 + (hQ.1.eigenvalues i : ℂ)) * star U := by
        conv_lhs => rw [hU]
        rw [← diagonal_add, diagonal_one, Matrix.mul_add, Matrix.add_mul, Matrix.mul_one, h1]
      have hdet : (1 + Q).det = ∏ i, (1 + (hQ.1.eigenvalues i : ℂ)) := by
        rw [hsum, det_mul, det_mul, det_diagonal, mul_comm, ← mul_assoc, ← det_mul, h2, det_one, one_mul]
      rw [hdet, show (∏ i, (1 + (hQ.1.eigenvalues i : ℂ))) = ((∏ i, (1 + hQ.1.eigenvalues i) : ℝ) : ℂ) by
        push_cast; rfl, Complex.ofReal_re]
      calc (1 : ℝ) = ∏ _i : κ, (1 : ℝ) := by rw [Finset.prod_const_one]
        _ ≤ ∏ i, (1 + hQ.1.eigenvalues i) :=
          Finset.prod_le_prod₀ (fun _ _ => zero_le_one) fun i _ => le_add_of_nonneg_right (hQ.eigenvalues_nonneg i)
    intro κ _ _ X Y hX hP
    have hY : Y = X + (Y - X) := by abel
    by_cases h0 : X.det = 0
    · rw [h0, Complex.zero_re]
      have hnn := (hX.add hP).det_nonneg
      rw [← hY] at hnn
      exact (Complex.le_def.1 hnn).1
    · obtain ⟨U, h1, h2, hU⟩ := exists_unitary_diagonal_eigenvalues_of_isHermitian hX.1
      have hpos : ∀ i, 0 < hX.1.eigenvalues i := by
        intro i
        refine lt_of_le_of_ne (hX.eigenvalues_nonneg i) fun h => h0 ?_
        rw [hX.1.det_eq_prod_eigenvalues]
        exact Finset.prod_eq_zero (Finset.mem_univ i) (by rw [← h]; simp)
      set s : κ → ℂ := fun i => ((Real.sqrt (hX.1.eigenvalues i) : ℝ) : ℂ) with hs
      have hs0 : ∀ i, s i ≠ 0 := fun i => by
        simp only [hs, ne_eq, Complex.ofReal_eq_zero]
        exact (Real.sqrt_pos.2 (hpos i)).ne'
      have hss : ∀ i, s i * s i = (hX.1.eigenvalues i : ℂ) := fun i => by
        simp only [hs]
        rw [← Complex.ofReal_mul, Real.mul_self_sqrt (hpos i).le]
      have hstar : ∀ i, star (s i) = s i := fun i => by simp [hs]
      set B : Matrix κ κ ℂ := diagonal s * star U with hB
      set C : Matrix κ κ ℂ := U * diagonal (fun i => (s i)⁻¹) with hC
      have hCB : C * B = 1 := by
        rw [hB, hC, Matrix.mul_assoc, ← Matrix.mul_assoc (diagonal _), diagonal_mul_diagonal,
          show (fun i => (s i)⁻¹ * s i) = fun _ => (1 : ℂ) from funext fun i => inv_mul_cancel₀ (hs0 i),
          diagonal_one, Matrix.one_mul, h1]
      have hXB : X = Bᴴ * B := by
        rw [hB, conjTranspose_mul, diagonal_conjTranspose, star_eq_conjTranspose, conjTranspose_conjTranspose,
          show star s = s from funext hstar, Matrix.mul_assoc, ← Matrix.mul_assoc (diagonal s),
          diagonal_mul_diagonal, show (fun i => s i * s i) = fun i => (hX.1.eigenvalues i : ℂ) from funext hss,
          ← Matrix.mul_assoc, ← star_eq_conjTranspose]
        exact hU
      have hsplit : Y = Bᴴ * (1 + Cᴴ * (Y - X) * C) * B := by
        rw [Matrix.mul_add, Matrix.add_mul, Matrix.mul_one, ← hXB, Matrix.mul_assoc, Matrix.mul_assoc, hCB,
          Matrix.mul_one, ← Matrix.mul_assoc, ← conjTranspose_mul, hCB, conjTranspose_one, Matrix.one_mul]
        abel
      have hQ : (Cᴴ * (Y - X) * C).PosSemidef := hP.conjTranspose_mul_mul_same C
      have hdX : X.det = Bᴴ.det * B.det := by rw [hXB, det_mul]
      clear_value B C
      have hdY : Y.det = (1 + Cᴴ * (Y - X) * C).det * X.det := by
        conv_lhs => rw [hsplit]
        rw [det_mul, det_mul, hdX]
        ring
      have hXnn := Complex.le_def.1 hX.det_nonneg
      have hQnn := Complex.le_def.1 (PosSemidef.one.add hQ).det_nonneg
      rw [hdY, Complex.mul_re, ← hXnn.2, ← hQnn.2]
      simp only [Complex.zero_im, mul_zero, sub_zero]
      have ha : 0 ≤ X.det.re := by simpa using hXnn.1
      exact le_mul_of_one_le_left ha (one_le_re_det_lemma_2 hQ))

end GlobalTheory.CompanionTheory.DetMonotone
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DeterminantMonotonicity =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteSupportOfSize =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteSupportOfSize", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1 NumberField IsDedekindDomain

namespace GlobalTheory.CompanionTheory.WedgeSupport

theorem nF_nonneg' {K ι κ : Type} [NormedField K] [Fintype κ] [DecidableEq κ] (A : Matrix ι κ K) : 0 ≤ nF A :=
  Real.iSup_nonneg fun _ => norm_nonneg _

theorem sz_nonneg' {K ι κ : Type} [NormedField K] (g : Matrix ι κ K) : 0 ≤ sz g :=
  Real.iSup_nonneg fun _ => norm_nonneg _

theorem map_mul_eq_one {R S ι κ : Type} [CommRing R] [CommRing S] [Fintype ι] [DecidableEq κ] (f : R →+* S)
    {A : Matrix ι κ R} {Y : Matrix κ ι R} (h : Y * A = 1) : Y.map f * A.map f = 1 := by
  rw [← Matrix.map_mul, h, Matrix.map_one _ (map_zero f) (map_one f)]

theorem one_le_sz_pow_mul_nF (hF : MulF) {K ι κ : Type} [NormedField K] [IsUltrametricDist K] [Fintype ι] [Fintype κ]
    [DecidableEq κ] {A : Matrix ι κ K} {Y : Matrix κ ι K} (h : Y * A = 1) :
    1 ≤ sz Y ^ Fintype.card κ * nF A := by
  have h1 := (hF K ι κ κ A).1 Y
  rw [h, (hF K κ κ κ 1).2.2 1, det_one, norm_one] at h1
  exact h1

theorem nF_le_sz_pow (hF : MulF) {K ι κ : Type} [NormedField K] [IsUltrametricDist K] [Fintype ι] [Fintype κ]
    [DecidableEq κ] (A : Matrix ι κ K) : nF A ≤ sz A ^ Fintype.card κ := by
  have h1 := (hF K κ ι κ (1 : Matrix κ κ K)).1 A
  rw [Matrix.mul_one, (hF K κ κ κ 1).2.2 1, det_one, norm_one, mul_one] at h1
  exact h1

theorem nF_ne_zero_of_left_inv (hF : MulF) {K ι κ : Type} [NormedField K] [IsUltrametricDist K] [Fintype ι] [Fintype κ]
    [DecidableEq κ] {A : Matrix ι κ K} {Y : Matrix κ ι K} (h : Y * A = 1) : nF A ≠ 0 := by
  intro h0
  have h1 := one_le_sz_pow_mul_nF hF h
  rw [h0, mul_zero] at h1
  linarith

theorem nF_eq_one_of_sz_le (hF : MulF) {K ι κ : Type} [NormedField K] [IsUltrametricDist K] [Fintype ι] [Fintype κ]
    [DecidableEq κ] {A : Matrix ι κ K} {Y : Matrix κ ι K} (h : Y * A = 1) (hY : sz Y ≤ 1) (hA : sz A ≤ 1) :
    nF A = 1 := by
  apply le_antisymm
  · exact (nF_le_sz_pow hF A).trans (pow_le_one₀ (sz_nonneg' A) hA)
  · have h1 := one_le_sz_pow_mul_nF hF h
    have h2 : sz Y ^ Fintype.card κ ≤ 1 := pow_le_one₀ (sz_nonneg' Y) hY
    nlinarith [nF_nonneg' A]

theorem nI_ne_zero_of_left_inv (hI : MulI) {ι κ : Type} [Fintype ι] [Fintype κ] [DecidableEq κ]
    {A : Matrix ι κ ℂ} {Y : Matrix κ ι ℂ} (h : Y * A = 1) : nI A ≠ 0 := by
  intro h0
  have h1 := (hI ι κ κ A).1 Y
  rw [h, (hI κ κ κ 1).2.2 1, det_one, norm_one, h0, mul_zero] at h1
  norm_num at h1

theorem finSupp_of_mul : MulF → MulI → SzFin → FinSupp := by
  intro hF hI hS E _ _ _ ι κ _ _ _ _ A Y h
  refine ⟨fun v => nI_ne_zero_of_left_inv hI (map_mul_eq_one (cV v) h),
    fun w => nF_ne_zero_of_left_inv hF (map_mul_eq_one (cW w) h), ?_⟩
  refine ((hS E κ ι Y).union (hS E ι κ A)).subset fun w hw => ?_
  by_contra hn
  simp only [Set.mem_union, Set.mem_setOf_eq, not_or, not_lt] at hn
  exact hw (nF_eq_one_of_sz_le hF (map_mul_eq_one (cW w) h) hn.1 hn.2)

end GlobalTheory.CompanionTheory.WedgeSupport

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteSupportOfSize =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OnlyIsotropicSubspaces =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OnlyIsotropicSubspaces", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.OnlyIsotropic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1
open GlobalTheory.CuspRep PositivityTheory.Rg.Tf.Loc

namespace GlobalTheory.CompanionTheory.IsotropicDegreeBound

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

theorem conjE_conjE (a : E) : conjE E (conjE E a) = a :=
  IsCMField.complexConj_apply_apply E a

theorem mem_perpD_iff (d : GL (Fin n) E) (W : Submodule E (Fin n → E)) (y : Fin n → E) :
    y ∈ perpD (conjE E) d W ↔ ∀ x ∈ W, (conjE E ∘ x) ⬝ᵥ ((d⁻¹).val *ᵥ y) = 0 := by
  have key : y ∈ perpD (conjE E) d W ↔ (d⁻¹).val *ᵥ y ∈ perp (conjE E) W := by
    constructor
    · rintro ⟨z, hz, rfl⟩
      have : (d⁻¹).val *ᵥ (Matrix.toLin' d.val z) = z := by
        rw [Matrix.toLin'_apply, Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one,
          Matrix.one_mulVec]
      rw [this]
      exact hz
    · intro h
      refine ⟨_, h, ?_⟩
      rw [Matrix.toLin'_apply, Matrix.mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one,
        Matrix.one_mulVec]
  rw [key]
  exact Iff.rfl

theorem gram_nrm (d : GL (Fin n) E) :
    ((nrm d).val.map (conjE E))ᵀ * (d⁻¹).val * (nrm d).val = (d⁻¹).val := by
  set D := d.val with hD
  set Di := (d⁻¹).val with hDi
  have hval : (nrm d).val = D * (Di.map (conjE E))ᵀ := by
    simp only [nrm, Units.val_mul]
    rfl
  have hinv : Di * D = 1 := by
    rw [hDi, hD, ← Units.val_mul, inv_mul_cancel, Units.val_one]
  have hc : (Di.map (conjE E)) * (D.map (conjE E)) = 1 := by
    rw [← Matrix.map_mul, hinv, Matrix.map_one _ (map_zero _) (map_one _)]
  have hcc : (Di.map (conjE E)).map (conjE E) = Di := by
    ext i j
    simp [conjE_conjE]
  have hm : ((nrm d).val.map (conjE E))ᵀ = Di * (D.map (conjE E))ᵀ := by
    rw [hval, Matrix.map_mul, Matrix.transpose_mul, Matrix.transpose_map, Matrix.transpose_transpose, hcc]
  rw [hm, hval]
  calc Di * (D.map (conjE E))ᵀ * Di * (D * (Di.map (conjE E))ᵀ)
      = Di * (D.map (conjE E))ᵀ * (Di * D) * (Di.map (conjE E))ᵀ := by
        simp only [Matrix.mul_assoc]
    _ = Di * ((Di.map (conjE E)) * (D.map (conjE E)))ᵀ := by
        rw [hinv, Matrix.transpose_mul, Matrix.mul_one, Matrix.mul_assoc]
    _ = Di := by rw [hc, Matrix.transpose_one, Matrix.mul_one]

theorem pairing_nrm (d : GL (Fin n) E) (u v : Fin n → E) :
    (conjE E ∘ ((nrm d).val *ᵥ u)) ⬝ᵥ ((d⁻¹).val *ᵥ ((nrm d).val *ᵥ v)) =
      (conjE E ∘ u) ⬝ᵥ ((d⁻¹).val *ᵥ v) := by
  have h1 : conjE E ∘ ((nrm d).val *ᵥ u) = ((nrm d).val.map (conjE E)) *ᵥ (conjE E ∘ u) := by
    funext i
    exact RingHom.map_mulVec (conjE E) (nrm d).val u i
  rw [h1, ← Matrix.vecMul_transpose, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec,
    gram_nrm]

theorem img_nrm_inf (d : GL (Fin n) E) (W : Submodule E (Fin n → E)) (hW : img (nrm d) W = W) :
    img (nrm d) (W ⊓ perpD (conjE E) d W) = W ⊓ perpD (conjE E) d W := by
  have hinj : Function.Injective (Matrix.toLin' (nrm d).val) := by
    intro a b hab
    have h := congrArg (fun z => ((nrm d)⁻¹).val *ᵥ z) hab
    simpa [Matrix.toLin'_apply, Matrix.mulVec_mulVec, ← Units.val_mul] using h
  have hle : img (nrm d) (W ⊓ perpD (conjE E) d W) ≤ W ⊓ perpD (conjE E) d W := by
    rintro _ ⟨y, ⟨hyW, hyP⟩, rfl⟩
    refine ⟨?_, ?_⟩
    · have : Matrix.toLin' (nrm d).val y ∈ img (nrm d) W := ⟨y, hyW, rfl⟩
      rwa [hW] at this
    · rw [SetLike.mem_coe, mem_perpD_iff]
      intro x hx
      rw [← hW] at hx
      obtain ⟨x', hx', rfl⟩ := hx
      rw [Matrix.toLin'_apply, Matrix.toLin'_apply, pairing_nrm]
      exact (mem_perpD_iff d W y).1 hyP x' hx'
  refine Submodule.eq_of_le_of_finrank_eq hle ?_
  exact (Submodule.equivMapOfInjective _ hinj _).finrank_eq.symm

theorem inf_le_perpD_inf (d : GL (Fin n) E) (W : Submodule E (Fin n → E)) :
    W ⊓ perpD (conjE E) d W ≤ perpD (conjE E) d (W ⊓ perpD (conjE E) d W) := by
  intro y hy
  rw [mem_perpD_iff]
  exact fun x hx => (mem_perpD_iff d W y).1 hy.2 x hx.1

theorem prof_gap {τ : ℝ} (hτ : 0 ≤ τ) {a b m : ℕ} (hab : a < b) (hbm : b ≤ m) :
    prof m τ a + 2 * τ ≤ prof m τ b := by
  have h1 : (a : ℝ) + 1 ≤ b := by exact_mod_cast hab
  have h2 : (b : ℝ) ≤ m := by exact_mod_cast hbm
  have h3 : (2 : ℝ) ≤ ((b : ℝ) - a) * (2 * m + 1 - a - b) := by
    nlinarith [mul_nonneg (sub_nonneg.2 h1) (by linarith : (0 : ℝ) ≤ 2 * m - 1 - a - b)]
  have h4 := mul_nonneg hτ (sub_nonneg.2 h3)
  simp only [prof]
  nlinarith

theorem onlyIsotropic_of : OnlyStable → DegPairing → SizeBasic → OnlyIsotropic := by
  intro h1 h2 h3 E _ _ _ n
  obtain ⟨C₁, hC₁⟩ := h1 E n
  obtain ⟨C₂, hC₂⟩ := h2 E n
  refine ⟨max 0 (max C₁ C₂), fun τ x d hτ => ?_⟩
  have hs0 : 0 ≤ logSize (twConj (thetaA E n) x (ratGL E n d)) := (h3 E n).2.1 _
  have hs1 : 0 ≤ 1 + logSize (twConj (thetaA E n) x (ratGL E n d)) := by linarith
  have l₁ : C₁ ≤ max 0 (max C₁ C₂) := (le_max_left _ _).trans (le_max_right _ _)
  have l₂ : C₂ ≤ max 0 (max C₁ C₂) := (le_max_right _ _).trans (le_max_right _ _)
  have hτ₁ := le_trans (mul_le_mul_of_nonneg_right l₁ hs1) hτ
  have hτ₂ := le_trans (mul_le_mul_of_nonneg_right l₂ hs1) hτ
  have hτ₀ : 0 ≤ τ := le_trans (mul_nonneg (le_max_left _ _) hs1) hτ
  refine ⟨fun hx W _ _ => hx.1 W, fun h => (hC₁ τ x d hτ₁).2 fun W hW => ?_⟩
  have hb := h _ (img_nrm_inf d W hW) (inf_le_perpD_inf d W)
  by_cases heq : W ⊓ perpD (conjE E) d W = W
  · exact h W hW (inf_eq_left.1 heq)
  · have hlt : W ⊓ perpD (conjE E) d W < W := lt_of_le_of_ne inf_le_left heq
    have hr := Submodule.finrank_lt_finrank_of_lt hlt
    have hn : Module.finrank E W ≤ n := by simpa using Submodule.finrank_le W
    have hg := prof_gap hτ₀ hr hn
    have hp := (hC₂ x d).1 W hW
    linarith

end GlobalTheory.CompanionTheory.IsotropicDegreeBound
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OnlyIsotropicSubspaces =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundInfinitePlaces =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundInfinitePlaces", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.Wedge


open ComplexOrder in
theorem pairI_of_detMono : DetMono → PairI := by
  open scoped ComplexOrder in
  intro hD ι κ _ _ _ U W
  have hG : (Uᴴ * U).PosSemidef := posSemidef_conjTranspose_mul_self U
  have hH : (Wᴴ * W).PosSemidef := posSemidef_conjTranspose_mul_self W
  have hHn : 0 ≤ ((Wᴴ * W).det).re := (Complex.le_def.1 hH.det_nonneg).1
  have hGn : 0 ≤ ((Uᴴ * U).det).re := (Complex.le_def.1 hG.det_nonneg).1
  have hGim : ((Uᴴ * U).det).im = 0 := ((Complex.le_def.1 hG.det_nonneg).2).symm
  unfold nI
  by_cases hdet : (Uᴴ * U).det = 0
  ·
    obtain ⟨v, hv0, hv⟩ := Matrix.exists_mulVec_eq_zero_iff.2 hdet
    have hUv : U *ᵥ v = 0 := by
      have := (Matrix.conjTranspose_mul_self_mulVec_eq_zero U v).1 hv
      exact this
    have hM : ((Uᴴ * W)ᴴ) *ᵥ v = 0 := by
      rw [conjTranspose_mul, conjTranspose_conjTranspose, ← Matrix.mulVec_mulVec, hUv,
        Matrix.mulVec_zero]
    have hd : ((Uᴴ * W)ᴴ).det = 0 := Matrix.exists_mulVec_eq_zero_iff.1 ⟨v, hv0, hM⟩
    have hd' : (Uᴴ * W).det = 0 := by
      rw [det_conjTranspose] at hd
      simpa using hd
    rw [hd', norm_zero]
    have : ((Uᴴ * U).det).re * ((Wᴴ * W).det).re ≥ 0 := mul_nonneg hGn hHn
    simpa using this
  · set G := Uᴴ * U with hGdef
    set M := Uᴴ * W with hMdef
    have hu : IsUnit G.det := isUnit_iff_ne_zero.2 hdet
    have hGi : G * G⁻¹ = 1 := mul_nonsing_inv _ hu
    have hiG : G⁻¹ * G = 1 := nonsing_inv_mul _ hu
    have hGh : Gᴴ = G := hG.isHermitian
    have hih : (G⁻¹)ᴴ = G⁻¹ := by rw [conjTranspose_nonsing_inv, hGh]
    have hMh : Mᴴ = Wᴴ * U := by
      rw [hMdef, conjTranspose_mul, conjTranspose_conjTranspose]
    set T := G⁻¹ * M with hT
    have hTh : Tᴴ = Mᴴ * G⁻¹ := by rw [hT, conjTranspose_mul, hih]
    have hGT : G * T = M := by rw [hT, ← Matrix.mul_assoc, hGi, Matrix.one_mul]
    have hX : (Tᴴ * G * T).PosSemidef := hG.conjTranspose_mul_mul_same T
    have hXe : Tᴴ * G * T = Mᴴ * T := by
      rw [Matrix.mul_assoc, hGT, hTh, Matrix.mul_assoc, ← hT]
    have hXp : (Mᴴ * T).PosSemidef := hXe ▸ hX
    have e1 : Wᴴ * (U * T) = Mᴴ * T := by rw [hMh, Matrix.mul_assoc]
    have e2 : Tᴴ * Uᴴ * W = Mᴴ * T := by
      rw [Matrix.mul_assoc, ← hMdef, hTh, Matrix.mul_assoc, ← hT]
    have e3 : Tᴴ * Uᴴ * (U * T) = Mᴴ * T := by
      rw [← hXe, hGdef]
      simp only [Matrix.mul_assoc]

    have hZ : (W - U * T)ᴴ * (W - U * T) = Wᴴ * W - Mᴴ * T := by
      rw [conjTranspose_sub, conjTranspose_mul, Matrix.sub_mul, Matrix.mul_sub, Matrix.mul_sub,
        e1, e2, e3]
      abel
    have hmono : ((Mᴴ * T).det).re ≤ ((Wᴴ * W).det).re :=
      hD κ _ _ hXp (hZ ▸ posSemidef_conjTranspose_mul_self (W - U * T))
    have hiGd : (G⁻¹).det * G.det = 1 := by rw [← det_mul, hiG, det_one]
    have hdX : (Mᴴ * T).det * G.det = ((‖M.det‖ ^ 2 : ℝ) : ℂ) := by
      have hc : (starRingEnd ℂ) M.det * M.det = ((‖M.det‖ ^ 2 : ℝ) : ℂ) := by
        rw [Complex.conj_mul']
        push_cast
        rfl
      rw [det_mul, hT, det_mul, det_conjTranspose, ← hc, Complex.star_def]
      linear_combination ((starRingEnd ℂ) M.det * M.det) * hiGd
    have hre : ((Mᴴ * T).det).re * G.det.re = ‖M.det‖ ^ 2 := by
      have := congrArg Complex.re hdX
      rw [Complex.mul_re, hGim, mul_zero, sub_zero, Complex.ofReal_re] at this
      exact this
    rw [← hre, mul_comm]
    exact mul_le_mul_of_nonneg_left hmono hGn

end GlobalTheory.CompanionTheory.Wedge
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundInfinitePlaces =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RadicalSubspaceFacts =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RadicalSubspaceFacts", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.RadicalForm

variable {K : Type} [Field K] {n : ℕ}

noncomputable def cols (S : Submodule K (Fin n → K)) : Fin (Module.finrank K S) → (Fin n → K) :=
  fun j => (Module.finBasis K S j : Fin n → K)

theorem cols_li (S : Submodule K (Fin n → K)) : LinearIndependent K (cols S) :=
  (Module.finBasis K S).linearIndependent.map' S.subtype S.ker_subtype

theorem cols_span (S : Submodule K (Fin n → K)) : Submodule.span K (Set.range (cols S)) = S := by
  have h : Set.range (cols S) = S.subtype '' Set.range (Module.finBasis K S) := by
    rw [← Set.range_comp]; rfl
  rw [h, Submodule.span_image, (Module.finBasis K S).span_eq, Submodule.map_top,
    Submodule.range_subtype]

def form (σ : K →+* K) (D : Matrix (Fin n) (Fin n) K) (u v : Fin n → K) : K :=
  (fun i => σ (u i)) ⬝ᵥ (D *ᵥ v)

theorem form_add_left (σ : K →+* K) (D : Matrix (Fin n) (Fin n) K) (u u' v : Fin n → K) :
    form σ D (u + u') v = form σ D u v + form σ D u' v := by
  simp [form, dotProduct, add_mul, Finset.sum_add_distrib]

theorem form_smul_left (σ : K →+* K) (D : Matrix (Fin n) (Fin n) K) (c : K) (u v : Fin n → K) :
    form σ D (c • u) v = σ c * form σ D u v := by
  simp [form, dotProduct, Finset.mul_sum, mul_assoc]

theorem form_zero_left (σ : K →+* K) (D : Matrix (Fin n) (Fin n) K) (v : Fin n → K) :
    form σ D 0 v = 0 := by
  simp [form, dotProduct]

theorem mem_perpD (σ : K →+* K) (d : GL (Fin n) K) (W : Submodule K (Fin n → K)) (v : Fin n → K) :
    v ∈ perpD σ d W ↔ ∀ x ∈ W, form σ (d⁻¹).val x v = 0 := by
  have h1 : d.val * (d⁻¹).val = 1 := Units.mul_inv d
  have h2 : (d⁻¹).val * d.val = 1 := Units.inv_mul d
  constructor
  · rintro ⟨y, hy, rfl⟩ x hx
    have hy' : ∀ x ∈ W, ∑ i, σ (x i) * y i = 0 := hy
    have h3 : (d⁻¹).val *ᵥ (Matrix.toLin' d.val y) = y := by
      rw [Matrix.toLin'_apply, Matrix.mulVec_mulVec, h2, Matrix.one_mulVec]
    simp only [form, h3]
    exact hy' x hx
  · intro h
    refine ⟨(d⁻¹).val *ᵥ v, fun x hx => h x hx, ?_⟩
    rw [Matrix.toLin'_apply, Matrix.mulVec_mulVec, h1, Matrix.one_mulVec]

theorem form_swap (σ : K →+* K) (hσ : ∀ x, σ (σ x) = x) (D γ : Matrix (Fin n) (Fin n) K)
    (hγ : D * γ = (D.map σ)ᵀ) (u v : Fin n → K) :
    form σ D u (γ *ᵥ v) = σ (form σ D v u) := by
  simp only [form, Matrix.mulVec_mulVec, hγ]

  simp only [dotProduct, mulVec, map_sum, map_mul, hσ, transpose_apply, map_apply, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem entry {κ κ' : Type} [Fintype κ] [Fintype κ'] (σ : K →+* K)
    (D : Matrix (Fin n) (Fin n) K) (M : Matrix (Fin n) κ K) (N : Matrix (Fin n) κ' K) (i j) :
    ((M.map σ)ᵀ * D * N) i j = form σ D (fun k => M k i) (fun k => N k j) := by
  rw [Matrix.mul_assoc]; rfl

theorem entry_mulVec {κ κ' : Type} [Fintype κ] [Fintype κ'] (σ : K →+* K)
    (D : Matrix (Fin n) (Fin n) K) (M : Matrix (Fin n) κ K) (N : Matrix (Fin n) κ' K)
    (c : κ' → K) (i) :
    (((M.map σ)ᵀ * D * N) *ᵥ c) i = form σ D (fun k => M k i) (N *ᵥ c) := by
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]; rfl

theorem exists_adapted (σ : K →+* K) (hσ : ∀ x, σ (σ x) = x) (d : GL (Fin n) K)
    (γ : Matrix (Fin n) (Fin n) K) (hγ : (d⁻¹).val * γ = ((d⁻¹).val.map σ)ᵀ)
    (W : Submodule K (Fin n → K)) (hW : W.map (Matrix.toLin' γ) = W) :
    ∃ (a b : ℕ) (B : Matrix (Fin n) (Fin a) K) (A : Matrix (Fin n) (Fin b) K),
      LinearIndependent K (fromCols B A)ᵀ ∧
      Submodule.span K (Set.range Bᵀ) = W ⊓ perpD σ d W ∧
      Submodule.span K (Set.range (fromCols B A)ᵀ) = W ∧
      ((fromCols B A).map σ)ᵀ * (d⁻¹).val * B = 0 ∧ (B.map σ)ᵀ * (d⁻¹).val * fromCols B A = 0 ∧
      ((A.map σ)ᵀ * (d⁻¹).val * A).det ≠ 0 := by
  obtain ⟨Q, hQ⟩ := Submodule.exists_isCompl (W ⊓ perpD σ d W)
  have hC : (W ⊓ perpD σ d W) ⊔ (Q ⊓ W) = W := by
    rw [← sup_inf_assoc_of_le Q (inf_le_left : W ⊓ perpD σ d W ≤ W), hQ.sup_eq_top, top_inf_eq]
  have hdis : Disjoint (W ⊓ perpD σ d W) (Q ⊓ W) := hQ.disjoint.mono_right inf_le_left
  obtain ⟨a, u, hu, hus⟩ : ∃ (a : ℕ) (u : Fin a → Fin n → K), LinearIndependent K u ∧
      Submodule.span K (Set.range u) = W ⊓ perpD σ d W := ⟨_, _, cols_li _, cols_span _⟩
  obtain ⟨b, v, hv, hvs⟩ : ∃ (b : ℕ) (v : Fin b → Fin n → K), LinearIndependent K v ∧
      Submodule.span K (Set.range v) = Q ⊓ W := ⟨_, _, cols_li _, cols_span _⟩
  have hum : ∀ j, u j ∈ W ⊓ perpD σ d W := fun j => hus ▸ Submodule.subset_span ⟨j, rfl⟩
  have hvm : ∀ j, v j ∈ Q ⊓ W := fun j => hvs ▸ Submodule.subset_span ⟨j, rfl⟩
  obtain ⟨B, hB⟩ : ∃ B : Matrix (Fin n) (Fin a) K, Bᵀ = u := ⟨(Matrix.of u)ᵀ, rfl⟩
  obtain ⟨A, hA⟩ : ∃ A : Matrix (Fin n) (Fin b) K, Aᵀ = v := ⟨(Matrix.of v)ᵀ, rfl⟩
  have hT : ((fromCols B A)ᵀ : _ → _ → K) = Sum.elim u v := by
    subst hB hA
    funext s k
    rcases s with j | j <;> rfl
  have hspan : Submodule.span K (Set.range (fromCols B A)ᵀ) = W := by
    rw [hT, Set.Sum.elim_range, Submodule.span_union, hus, hvs, hC]
  have hli : LinearIndependent K (fromCols B A)ᵀ := by
    rw [hT]
    exact hu.sum_type hv (by rw [hus, hvs]; exact hdis)
  have hFW : ∀ s, (fun k => fromCols B A k s) ∈ W := fun s => by
    have : (fun k => fromCols B A k s) ∈ Submodule.span K (Set.range (fromCols B A)ᵀ) :=
      Submodule.subset_span ⟨s, rfl⟩
    rwa [hspan] at this
  have hr : ∀ w ∈ W ⊓ perpD σ d W, ∀ x ∈ W, form σ (d⁻¹).val x w = 0 := fun w hw x hx =>
    (mem_perpD σ d W w).1 hw.2 x hx
  have hl : ∀ w ∈ W ⊓ perpD σ d W, ∀ x ∈ W, form σ (d⁻¹).val w x = 0 := fun w hw x hx => by
    rw [← hW] at hx
    obtain ⟨x', hx', rfl⟩ := hx
    rw [Matrix.toLin'_apply, form_swap σ hσ _ γ hγ, hr w hw x' hx', map_zero]
  have hBc : ∀ j, (fun k => B k j) = u j := fun j => congrFun hB j
  have hAc : ∀ j, (fun k => A k j) = v j := fun j => congrFun hA j
  refine ⟨_, _, B, A, hli, by rw [hB]; exact hus, hspan, ?_, ?_, ?_⟩
  · ext i j
    rw [entry, hBc]
    exact hr _ (hum j) _ (hFW i)
  · ext i j
    rw [entry, hBc]
    exact hl _ (hum i) _ (hFW j)
  · intro h0
    obtain ⟨c, hc0, hc⟩ := Matrix.exists_mulVec_eq_zero_iff.2 h0
    have hAv : A *ᵥ c = ∑ j, c j • v j := by
      rw [Matrix.mulVec_eq_sum, hA]
      exact Finset.sum_congr rfl fun j _ => op_smul_eq_smul _ _
    have hyC : A *ᵥ c ∈ Q ⊓ W := by
      rw [hAv]
      exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (hvm j)
    have hyW : A *ᵥ c ∈ W := hyC.2
    have hcol : ∀ s, form σ (d⁻¹).val (fun k => fromCols B A k s) (A *ᵥ c) = 0 := by
      rintro (j | j)
      · have h := hl _ (hum j) _ hyW
        rw [← hBc j] at h
        exact h
      · have := congrFun hc j
        rw [entry_mulVec] at this
        exact this
    have hperp : A *ᵥ c ∈ perpD σ d W := by
      rw [mem_perpD]
      intro x hx
      rw [← hspan] at hx
      induction hx using Submodule.span_induction with
      | mem x h =>
        obtain ⟨s, rfl⟩ := h
        exact hcol s
      | zero => exact form_zero_left _ _ _
      | add x y _ _ hx hy => rw [form_add_left, hx, hy, add_zero]
      | smul a x _ hx => rw [form_smul_left, hx, mul_zero]
    have hy0 : A *ᵥ c = 0 := by
      have := hdis.le_bot (show A *ᵥ c ∈ _ from ⟨⟨hyW, hperp⟩, hyC⟩)
      simpa using this
    apply hc0
    have hsum : ∑ j, c j • v j = 0 := by rw [← hAv, hy0]
    funext j
    exact Fintype.linearIndependent_iff.1 hv c hsum j

theorem radical : Radical := by
  intro E _ _ _ n d W hW
  have hσ : ∀ x, conjE E (conjE E x) = x := fun x => NumberField.IsCMField.complexConj_apply_apply E x
  refine exists_adapted (conjE E) hσ d (nrm d).val ?_ W hW
  have h2 : (d⁻¹).val * d.val = 1 := Units.inv_mul d
  rw [nrm, Units.val_mul, ← mul_assoc, h2, one_mul, thetaR_val]

end GlobalTheory.CompanionTheory.RadicalForm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RadicalSubspaceFacts =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignConeWeightTranslation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignConeWeightTranslation", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.OnlyIsotropic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.ChainSum

theorem sdot_measurable {m : ℕ} (e : Fin m → SignType) : Measurable (sdot e) := by
  unfold sdot
  exact Finset.measurable_fun_sum _ fun i _ => (measurable_pi_apply i).const_mul _

theorem sdot_add' {m : ℕ} (e : Fin m → SignType) (a b : Fin m → ℝ) :
    sdot e (a + b) = sdot e a + sdot e b := by
  simp [sdot, mul_add, Finset.sum_add_distrib]

theorem chainSum_rest : ∀ m : ℕ, (∀ y : (Fin m → SignType) → ℝ, Measurable (gam y)) ∧
    (∀ (y : (Fin m → SignType) → ℝ) a b, gam (fun e => y e + sdot e b) (a + b) = gam y a) ∧
    ∀ (y y' : (Fin m → SignType) → ℝ) e s t a, (∀ e', SLe e e' ∨ SLe e' e → y e' = y' e') →
      gam (Function.update y e s) a - gam (Function.update y e t) a =
        gam (Function.update y' e s) a - gam (Function.update y' e t) a := by
  intro m
  refine ⟨fun y => ?_, fun y a b => ?_, fun y y' e s t a h => ?_⟩
  · unfold gam gamOn
    refine Finset.measurable_fun_sum _ fun c _ => ?_
    refine Measurable.const_mul (Finset.measurable_fun_prod _ fun e _ => ?_) _
    exact Measurable.ite (measurableSet_lt measurable_const (sdot_measurable e))
      measurable_const measurable_const
  · unfold gam gamOn
    refine Finset.sum_congr rfl fun c _ => ?_
    congr 1
    refine Finset.prod_congr rfl fun e _ => ?_
    have hiff : (y e + sdot e b < sdot e (a + b)) ↔ y e < sdot e a := by
      rw [sdot_add']
      exact add_lt_add_iff_right _
    exact if_congr hiff rfl rfl
  · unfold gam gamOn
    rw [← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun c hc => ?_
    have hchain : IsChain SLe (↑c : Set (Fin m → SignType)) := by
      simp only [Finset.mem_filter] at hc
      exact hc.2.2.1
    by_cases hec : e ∈ c
    · have key : ∀ u : ℝ, (∏ e' ∈ c, if Function.update y e u e' < sdot e' a then (1 : ℝ) else 0) =
          ∏ e' ∈ c, if Function.update y' e u e' < sdot e' a then (1 : ℝ) else 0 := by
        intro u
        refine Finset.prod_congr rfl fun e' he' => ?_
        by_cases hne : e' = e
        · subst hne
          simp only [Function.update_self]
        · have hcmp : SLe e e' ∨ SLe e' e :=
            hchain (Finset.mem_coe.2 hec) (Finset.mem_coe.2 he') (Ne.symm hne)
          simp only [Function.update_of_ne hne, h e' hcmp]
      rw [key s, key t]
    · have key : ∀ (z : (Fin m → SignType) → ℝ) (u v : ℝ),
          (∏ e' ∈ c, if Function.update z e u e' < sdot e' a then (1 : ℝ) else 0) =
            ∏ e' ∈ c, if Function.update z e v e' < sdot e' a then (1 : ℝ) else 0 := by
        intro z u v
        refine Finset.prod_congr rfl fun e' he' => ?_
        have hne : e' ≠ e := fun hh => hec (hh ▸ he')
        simp only [Function.update_of_ne hne]
      rw [key y s t, key y' s t, sub_self, sub_self]

end GlobalTheory.CompanionTheory.ChainSum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignConeWeightTranslation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwoBasesComparison =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwoBasesComparison", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.LinAlg

open Matrix PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D1

variable {K : Type} [Field K] {n : ℕ}

theorem exists_li_span (S : Submodule K (Fin n → K)) :
    ∃ (a : ℕ) (f : Fin a → Fin n → K), LinearIndependent K f ∧ Submodule.span K (Set.range f) = S := by
  let b := Module.finBasis K S
  refine ⟨Module.finrank K S, S.subtype ∘ b, ?_, ?_⟩
  · exact b.linearIndependent.map' S.subtype (Submodule.ker_subtype S)
  · rw [Set.range_comp, Submodule.span_image, b.span_eq, Submodule.map_subtype_top]

theorem exists_compl_le {I W : Submodule K (Fin n → K)} (h : I ≤ W) :
    ∃ P : Submodule K (Fin n → K), P ≤ W ∧ I ⊔ P = W ∧ Disjoint I P := by
  obtain ⟨Q, hQ⟩ := Submodule.exists_isCompl (I.comap W.subtype)
  have hI : (I.comap W.subtype).map W.subtype = I := by
    rw [Submodule.map_comap_subtype]; exact inf_eq_right.mpr h
  refine ⟨Q.map W.subtype, Submodule.map_subtype_le W Q, ?_, ?_⟩
  · rw [← hI, ← Submodule.map_sup, hQ.sup_eq_top, Submodule.map_subtype_top]
  · rw [← hI]
    exact Submodule.disjoint_map W.injective_subtype hQ.disjoint

theorem transpose_fromCols_two {ι κ : Type} (f : ι → Fin n → K) (g : κ → Fin n → K) :
    (fromCols (of f)ᵀ (of g)ᵀ)ᵀ = of (Sum.elim f g) := by
  ext i j
  rcases i with i | i <;> rfl

theorem transpose_fromCols_three {ι κ μ : Type} (f : ι → Fin n → K) (g : κ → Fin n → K)
    (h : μ → Fin n → K) :
    (fromCols (of f)ᵀ (fromCols (of g)ᵀ (of h)ᵀ))ᵀ = of (Sum.elim f (Sum.elim g h)) := by
  ext i j
  rcases i with i | i | i <;> rfl

theorem span_elim {ι κ : Type} (f : ι → Fin n → K) (g : κ → Fin n → K) :
    Submodule.span K (Set.range (Sum.elim f g)) =
      Submodule.span K (Set.range f) ⊔ Submodule.span K (Set.range g) := by
  rw [Set.Sum.elim_range, Submodule.span_union]

theorem twoBases : TwoBases := by
  intro K _ n W W'
  obtain ⟨P, hPW, hIP, hdP⟩ := exists_compl_le (inf_le_left : W ⊓ W' ≤ W)
  obtain ⟨Q, hQW, hIQ, hdQ⟩ := exists_compl_le (inf_le_right : W ⊓ W' ≤ W')
  obtain ⟨a, f, hf, hfs⟩ := exists_li_span (W ⊓ W')
  obtain ⟨b, g, hg, hgs⟩ := exists_li_span P
  obtain ⟨c, h, hh, hhs⟩ := exists_li_span Q
  have hPQ : Disjoint P Q := by
    rw [Submodule.disjoint_def]
    intro x hxP hxQ
    exact (Submodule.disjoint_def.mp hdP) x (Submodule.mem_inf.mpr ⟨hPW hxP, hQW hxQ⟩) hxP
  have hIPQ : Disjoint (W ⊓ W') (P ⊔ Q) := by
    rw [Submodule.disjoint_def]
    intro x hxI hx
    obtain ⟨p, hp, q, hq, rfl⟩ := Submodule.mem_sup.mp hx
    have hqI : q ∈ W ⊓ W' := by
      refine Submodule.mem_inf.mpr ⟨?_, hQW hq⟩
      have hq' : q = (p + q) - p := by abel
      rw [hq']
      exact W.sub_mem (Submodule.mem_inf.mp hxI).1 (hPW hp)
    have hq0 : q = 0 := (Submodule.disjoint_def.mp hdQ) q hqI hq
    subst hq0
    rw [add_zero] at hxI ⊢
    exact (Submodule.disjoint_def.mp hdP) p hxI hp
  have e2 : ((of f)ᵀ.fromCols (of g)ᵀ)ᵀ = Sum.elim f g := transpose_fromCols_two f g
  have e2' : ((of f)ᵀ.fromCols (of h)ᵀ)ᵀ = Sum.elim f h := transpose_fromCols_two f h
  have e3 : ((of f)ᵀ.fromCols ((of g)ᵀ.fromCols (of h)ᵀ))ᵀ = Sum.elim f (Sum.elim g h) :=
    transpose_fromCols_three f g h
  have e1 : ((of f)ᵀ)ᵀ = f := transpose_transpose (of f)
  refine ⟨a, b, c, (of f)ᵀ, (of g)ᵀ, (of h)ᵀ, ?_, ?_, ?_, ?_, ?_⟩
  · rw [e3]
    refine hf.sum_type (hg.sum_type hh ?_) ?_
    · rw [hgs, hhs]; exact hPQ
    · rw [hfs, span_elim, hgs, hhs]; exact hIPQ
  · rw [e1]; exact hfs
  · rw [e2, span_elim, hfs, hgs, hIP]
  · rw [e2', span_elim, hfs, hhs, hIQ]
  · rw [e3, span_elim, span_elim, hfs, hgs, hhs, sup_sup_distrib_left, hIP, hIQ]

end GlobalTheory.CompanionTheory.LinAlg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwoBasesComparison =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeBoundInfinitePlaces =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeBoundInfinitePlaces", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix PositivityTheory.Rg.BcB.D1
open scoped ComplexOrder

namespace GlobalTheory.CompanionTheory.Wedge

variable {ι κ κ' : Type} [Fintype ι] [Fintype κ] [DecidableEq κ] [Fintype κ'] [DecidableEq κ']

theorem gram_det_nonneg (A : Matrix ι κ ℂ) : 0 ≤ (Aᴴ * A).det := by
  exact (Matrix.posSemidef_conjTranspose_mul_self A).det_nonneg

theorem gram_det_im (A : Matrix ι κ ℂ) : (Aᴴ * A).det.im = 0 := by
  exact (Complex.nonneg_iff.1 (gram_det_nonneg A)).2.symm

theorem nI_nonneg (A : Matrix ι κ ℂ) : 0 ≤ nI A := by
  exact (Complex.nonneg_iff.1 (gram_det_nonneg A)).1

theorem nI_ne_zero_iff_det (A : Matrix ι κ ℂ) : nI A ≠ 0 ↔ (Aᴴ * A).det ≠ 0 := by
  have him := gram_det_im A
  show (Aᴴ * A).det.re ≠ 0 ↔ _
  constructor
  · intro h h0
    apply h
    rw [h0, Complex.zero_re]
  · intro h h0
    apply h
    exact Complex.ext (by rw [h0, Complex.zero_re]) (by rw [him, Complex.zero_im])

theorem gram_det_ne_zero_iff (A : Matrix ι κ ℂ) :
    (Aᴴ * A).det ≠ 0 ↔ LinearIndependent ℂ Aᵀ := by
  rw [← isUnit_iff_ne_zero, ← Matrix.isUnit_iff_isUnit_det, ← Matrix.mulVec_injective_iff_isUnit,
    ← Matrix.coe_mulVecLin, ← LinearMap.ker_eq_bot, Matrix.ker_mulVecLin_conjTranspose_mul_self,
    LinearMap.ker_eq_bot, Matrix.coe_mulVecLin]
  exact Matrix.mulVec_injective_iff

theorem nI_submatrix (e : κ' ≃ κ) (A : Matrix ι κ ℂ) : nI (A.submatrix id e) = nI A := by
  show ((A.submatrix id e)ᴴ * A.submatrix id e).det.re = (Aᴴ * A).det.re
  rw [Matrix.conjTranspose_submatrix, ← Matrix.submatrix_mul Aᴴ A (⇑e) id (⇑e) Function.bijective_id,
    Matrix.det_submatrix_equiv_self]

theorem nI_fromCols_of_orth (B : Matrix ι κ ℂ) (D : Matrix ι κ' ℂ) (h : Bᴴ * D = 0) :
    nI (fromCols B D) = nI B * nI D := by
  have h' : Dᴴ * B = 0 := by
    have h2 := congrArg Matrix.conjTranspose h
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, Matrix.conjTranspose_zero] at h2
    exact h2
  show ((fromCols B D)ᴴ * fromCols B D).det.re = (Bᴴ * B).det.re * (Dᴴ * D).det.re
  rw [Matrix.conjTranspose_fromCols_eq_fromRows_conjTranspose, Matrix.fromRows_mul_fromCols, h, h',
    Matrix.det_fromBlocks_zero₂₁, Complex.mul_re, gram_det_im B, gram_det_im D, mul_zero, sub_zero]

theorem exists_proj (B : Matrix ι κ ℂ) (hB : LinearIndependent ℂ Bᵀ) :
    ∃ Y : Matrix κ ι ℂ, Y * B = 1 ∧ (B * Y)ᴴ = B * Y := by
  have hu : IsUnit (Bᴴ * B).det := isUnit_iff_ne_zero.2 ((gram_det_ne_zero_iff B).2 hB)
  have hG : (Bᴴ * B)ᴴ = Bᴴ * B := by
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose]
  refine ⟨(Bᴴ * B)⁻¹ * Bᴴ, ?_, ?_⟩
  · rw [Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hu]
  · rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose,
      Matrix.conjTranspose_nonsing_inv, hG, Matrix.mul_assoc]

theorem commGroup_mul_mul_eq_mul_inv_mul_mul_mul [DecidableEq ι] (hD : DetMono) (hM : MulI) (B : Matrix ι κ ℂ) (Y : Matrix κ ι ℂ)
    (hYB : Y * B = 1) (hQ : (B * Y)ᴴ = B * Y) (C : Matrix ι κ' ℂ) :
    nI (fromCols B C) = nI B * nI ((1 - B * Y) * C) ∧ nI ((1 - B * Y) * C) ≤ nI C ∧
      (1 - B * Y) * B = 0 := by
  have hPP : B * Y * (B * Y) = B * Y := by
    rw [Matrix.mul_assoc, ← Matrix.mul_assoc Y, hYB, Matrix.one_mul]
  have hQB : (1 - B * Y) * B = 0 := by
    rw [Matrix.sub_mul, Matrix.one_mul, Matrix.mul_assoc, hYB, Matrix.mul_one, sub_self]
  have hQh : (1 - B * Y)ᴴ = 1 - B * Y := by
    rw [Matrix.conjTranspose_sub, Matrix.conjTranspose_one, hQ]
  have hQQ : (1 - B * Y) * (1 - B * Y) = 1 - B * Y := by
    rw [Matrix.sub_mul, Matrix.one_mul, Matrix.mul_sub, Matrix.mul_one, hPP, sub_self, sub_zero]
  have hPh : (B * Y)ᴴ * (B * Y) = B * Y := by
    rw [hQ, hPP]
  refine ⟨?_, ?_, hQB⟩
  · have hcols : fromCols B C = (fromCols B ((1 - B * Y) * C) : Matrix ι (κ ⊕ κ') ℂ) *
        (fromBlocks (1 : Matrix κ κ ℂ) (Y * C) (0 : Matrix κ' κ ℂ) (1 : Matrix κ' κ' ℂ)) := by
      rw [Matrix.fromCols_mul_fromBlocks]
      congr 1
      · rw [Matrix.mul_one, Matrix.mul_zero, add_zero]
      · rw [Matrix.mul_one, Matrix.sub_mul, Matrix.one_mul, Matrix.mul_assoc]
        abel
    have horth : Bᴴ * ((1 - B * Y) * C) = 0 := by
      rw [← Matrix.mul_assoc, ← hQh, ← Matrix.conjTranspose_mul, hQB, Matrix.conjTranspose_zero,
        Matrix.zero_mul]
    rw [hcols, (hM ι ι (κ ⊕ κ') (fromCols B ((1 - B * Y) * C))).2.1, Matrix.det_fromBlocks_zero₂₁,
      Matrix.det_one, Matrix.det_one, mul_one, norm_one, one_pow, mul_one, nI_fromCols_of_orth B _ horth]
  · have hX : ((1 - B * Y) * C)ᴴ * ((1 - B * Y) * C) = Cᴴ * ((1 - B * Y) * C) := by
      rw [Matrix.conjTranspose_mul, hQh, Matrix.mul_assoc, ← Matrix.mul_assoc (1 - B * Y), hQQ]
    have hYX : Cᴴ * C - ((1 - B * Y) * C)ᴴ * ((1 - B * Y) * C) = (B * Y * C)ᴴ * (B * Y * C) := by
      rw [hX, Matrix.conjTranspose_mul, Matrix.mul_assoc, ← Matrix.mul_assoc (B * Y)ᴴ, hPh,
        Matrix.sub_mul, Matrix.one_mul, Matrix.mul_sub, sub_sub_cancel]
    exact hD κ' (((1 - B * Y) * C)ᴴ * ((1 - B * Y) * C)) (Cᴴ * C)
      (Matrix.posSemidef_conjTranspose_mul_self _)
      (by rw [hYX]; exact Matrix.posSemidef_conjTranspose_mul_self _)

theorem wedgeI_of_detMono_mulI : DetMono → MulI → WedgeI := by
  intro hD hM ι _ _
  refine ⟨fun κ _ _ A => nI_nonneg A, fun κ _ _ A => (nI_ne_zero_iff_det A).trans (gram_det_ne_zero_iff A),
    fun κ κ' _ _ _ _ e A => nI_submatrix e A, fun κ _ _ B hB => ?_⟩
  obtain ⟨Y, hYB, hQ⟩ := exists_proj B hB
  exact ⟨Y, fun κ' _ _ C => commGroup_mul_mul_eq_mul_inv_mul_mul_mul hD hM B Y hYB hQ C⟩

end GlobalTheory.CompanionTheory.Wedge

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeBoundInfinitePlaces =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeSubspaceBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeSubspaceBound", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.Rg.BcB.D1

namespace GlobalTheory.CompanionTheory.WedgeNorm

theorem wedge_fromCols_le {K ι : Type} [Field K] [Fintype ι] [DecidableEq ι] {N : Fam K ι}
    (h : IsWedge N) (κ κ' : Type) [Fintype κ] [DecidableEq κ] [Fintype κ'] [DecidableEq κ']
    (X : Matrix ι κ K) (Z : Matrix ι κ' K) :
    N (κ ⊕ κ') (fromCols X Z) ≤ N κ X * N κ' Z := by
  by_cases hX : LinearIndependent K Xᵀ
  · obtain ⟨Y, hY⟩ := h.quot κ X hX
    obtain ⟨h1, h2, -⟩ := hY κ' Z
    rw [h1]
    exact mul_le_mul_of_nonneg_left h2 (h.nonneg κ X)
  · have h0 : N (κ ⊕ κ') (fromCols X Z) = 0 := by
      by_contra hne
      have hli := (h.ne_zero _ _).1 hne
      apply hX
      have hc := hli.comp Sum.inl Sum.inl_injective
      have he : (((fromCols X Z)ᵀ : (κ ⊕ κ') → ι → K) ∘ Sum.inl) = (Xᵀ : κ → ι → K) := by
        funext i j
        rfl
      rwa [he] at hc
    rw [h0]
    exact mul_nonneg (h.nonneg _ _) (h.nonneg _ _)

theorem wedgeSub : WedgeSub := by
  intro K ι _ _ _ N h κ₀ κ₁ κ₂ _ _ _ _ _ _ B A C
  by_cases hB : LinearIndependent K Bᵀ
  · obtain ⟨Y, hY⟩ := h.quot κ₀ B hB
    obtain ⟨h1, -, -⟩ := hY (κ₁ ⊕ κ₂) (fromCols A C)
    obtain ⟨h2, -, -⟩ := hY κ₁ A
    obtain ⟨h3, -, -⟩ := hY κ₂ C
    rw [h1, h2, h3, Matrix.mul_fromCols]
    have hle := wedge_fromCols_le h κ₁ κ₂ ((1 - B * Y) * A) ((1 - B * Y) * C)
    have hn := h.nonneg κ₀ B
    calc N κ₀ B * N (κ₁ ⊕ κ₂) (fromCols ((1 - B * Y) * A) ((1 - B * Y) * C)) * N κ₀ B
        ≤ N κ₀ B * (N κ₁ ((1 - B * Y) * A) * N κ₂ ((1 - B * Y) * C)) * N κ₀ B :=
          mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hle hn) hn
      _ = N κ₀ B * N κ₁ ((1 - B * Y) * A) * (N κ₀ B * N κ₂ ((1 - B * Y) * C)) := by ring
  · have h0 : N κ₀ B = 0 := by
      by_contra hne
      exact hB ((h.ne_zero _ _).1 hne)
    rw [h0, mul_zero]
    exact mul_nonneg (h.nonneg _ _) (h.nonneg _ _)

end GlobalTheory.CompanionTheory.WedgeNorm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeSubspaceBound =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.OnlyIsotropic =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.OnlyIsotropic", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.LogAbsBasic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeRationalSubspace\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.WedgeSub\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.OnlyIsotropic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EllipticTermOfIsotropic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MahlerBoundOfDegree\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityFinitePlaces\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicativityInfinitePlaces\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundFinitePlaces\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SizeFinitePlaces\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.Mahler\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AdelicDegreeFormula\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConjugatePlacesFacts\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegBasisOfDegBasisG\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeBasisGeneral\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeBoundedOfBasis\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreePairingIdentity\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeSubmoduleBound\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DegreeUnderTranslation\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DeterminantMonotonicity\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteSupportOfSize\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LogAbsBasicFacts\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OnlyIsotropicSubspaces\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OnlyStableSubspaces\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairingBoundInfinitePlaces\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RadicalSubspaceFacts\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignConeWeightIndicatorStatement\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignConeWeightSupportBoundStatement\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignConeWeightTranslation\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SizeBasicOfConjPlaces\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwoBasesComparison\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeBoundFinitePlaces\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeBoundInfinitePlaces\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WedgeSubspaceBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.Rg.BcB.D1

theorem mulF : MulF := _root_.GlobalTheory.CompanionTheory.WedgeMinor.mulF
theorem detMono : DetMono := _root_.GlobalTheory.CompanionTheory.DetMonotone.detMono
theorem mulI : MulI := _root_.GlobalTheory.CompanionTheory.GramWedge.mulI_of_detMono detMono
theorem wedgeF : WedgeF := _root_.GlobalTheory.CompanionTheory.Wedge.wedgeF_of_mulF mulF
theorem wedgeI : WedgeI := _root_.GlobalTheory.CompanionTheory.Wedge.wedgeI_of_detMono_mulI detMono mulI
theorem wedgeSub : WedgeSub := _root_.GlobalTheory.CompanionTheory.WedgeNorm.wedgeSub
theorem pairF : PairF := _root_.GlobalTheory.CompanionTheory.Wedge.pairF_of_mulF mulF
theorem pairI : PairI := _root_.GlobalTheory.CompanionTheory.Wedge.pairI_of_detMono detMono
theorem logAbsBasic : LogAbsBasic := _root_.GlobalTheory.CompanionTheory.LogAbs.logAbsBasic
theorem szFin : SzFin := _root_.GlobalTheory.CompanionTheory.Dblock.SzFinProof.szFin
theorem finSupp : FinSupp := _root_.GlobalTheory.CompanionTheory.WedgeSupport.finSupp_of_mul mulF mulI szFin
theorem degAdelic : DegAdelic := _root_.GlobalTheory.CompanionTheory.DegAdelicProof.degAdelic_of mulF mulI logAbsBasic finSupp
theorem degBasisG : DegBasisG := _root_.GlobalTheory.CompanionTheory.DegBasisGen.degBasisG_of wedgeF wedgeI mulF mulI logAbsBasic finSupp
theorem degBasis : DegBasis := _root_.GlobalTheory.CompanionTheory.DegreeBasis.degBasis_of_degBasisG degBasisG
theorem degSubmod : DegSubmod := _root_.GlobalTheory.CompanionTheory.DegreeSubmod.degSubmod_of wedgeF wedgeI wedgeSub finSupp degBasisG _root_.GlobalTheory.CompanionTheory.LinAlg.twoBases
theorem degRat : DegRat := _root_.GlobalTheory.CompanionTheory.Degree.degRat_of_degBasisG degBasisG
theorem degMove : DegMove := _root_.GlobalTheory.CompanionTheory.DegMoveProof.degMove_of mulF mulI szFin finSupp degBasisG
theorem degBdd : DegBdd := _root_.GlobalTheory.CompanionTheory.DegBound.degBdd_of wedgeF wedgeI mulF mulI szFin finSupp logAbsBasic degBasisG
theorem conjPlaces : ConjPlaces := _root_.GlobalTheory.CompanionTheory.ConjAtPlaces.conjPlaces
theorem sizeBasic : SizeBasic := _root_.GlobalTheory.CompanionTheory.Size.sizeBasic szFin conjPlaces
theorem degPairing : DegPairing :=
  _root_.GlobalTheory.CompanionTheory.DegPairingProof.degPairing_of wedgeF wedgeI mulF mulI pairF pairI szFin finSupp logAbsBasic conjPlaces degBasisG _root_.GlobalTheory.CompanionTheory.RadicalForm.radical
theorem mahler_of_c (h : MahlerC) : Mahler := _root_.GlobalTheory.CompanionTheory.Cutoff.mahler_of degBdd degRat h
theorem mahler : Mahler := mahler_of_c (PositivityTheory.Rg.BcB.E1.mahlerC_of_deg degBasis degAdelic degBdd degRat)
theorem onlyStable : OnlyStable := _root_.GlobalTheory.CompanionTheory.OnlyStab.onlyStable_of degSubmod degMove degBdd degPairing sizeBasic
theorem onlyIsotropic : OnlyIsotropic := _root_.GlobalTheory.CompanionTheory.IsotropicDegreeBound.onlyIsotropic_of onlyStable degPairing sizeBasic
theorem ellTerm : EllTerm := _root_.GlobalTheory.CompanionTheory.EllIso.ellTerm_of_onlyIsotropic onlyIsotropic
theorem chainSum : ChainSum := fun m =>
  ⟨GlobalTheory.T.sign_cone_weight_indicator m, GlobalTheory.T.sign_cone_weight_support_bound m, (_root_.GlobalTheory.CompanionTheory.ChainSum.chainSum_rest m).1, (_root_.GlobalTheory.CompanionTheory.ChainSum.chainSum_rest m).2.1, (_root_.GlobalTheory.CompanionTheory.ChainSum.chainSum_rest m).2.2⟩

end PositivityTheory.Rg.BcB.D1
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IsotropicMahlerBounds.LogAbsoluteWedges.OnlyIsotropic =====
