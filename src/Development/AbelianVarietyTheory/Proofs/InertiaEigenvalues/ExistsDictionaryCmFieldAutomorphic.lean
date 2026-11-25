module

public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary
public import Formalism.LocalToGlobal.GaloisLevelStructure.DefsAut
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAdelicExtensionOfAlgebraicWeightDefiniteUn
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FinIso
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFiniteAdeleBaseChangeEquiv
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUniqueIsConjAt
public import Development.AbelianVarietyTheory.Definitions.Foundations.NotIsSplitOfIsInertAt
public import ReciprocityTheory.Automorphisms.Unitary
public import Formalism.AlgebraicWeights.IsAlgWeight
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ContinuousMapPFin
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpanRepMatrixEqTopOfAbsIrreducible
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSplitAtOfIsSplitPl
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DefiniteUnitaryClassSetFinite
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.PicardGroup

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinitePartMulDefiniteUnitaryInfinitePoint, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsOpenNhdOneInUnitaryPrincipalCongruence, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitaryRationalMatrixOfFirstPresentationPo, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsDictionaryCmFieldAutomorphic

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinitePartMulDefiniteUnitaryInfinitePoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinitePartMulDefiniteUnitaryInfinitePoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FinIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSplitAtOfIsSplitPl\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host GlobalTheory.HeightCounting NumberField IsDedekindDomain GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.FormDict GlobalTheory.DefiniteBC
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.RatFinPart

theorem exists_gq_mul_infU (L : Type) [Field L] [NumberField L] [IsCMField L] (n : ℕ) (F : FinIso L n) :
    ∀ γ ∈ ratU L n, ∃ (γQ : GQ L n) (γ₀ : GL (Fin n) L), γ.1 = ratGL L n γ₀ ∧
      (((γQ : GAf L n) : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) =
        (γ₀ : Matrix (Fin n) (Fin n) L).map Algebra.TensorProduct.includeLeftRingHom ∧
      γ * (F.j γQ)⁻¹ ∈ infU L n := by
  intro γ hγ
  obtain ⟨γ₀, hγ₀⟩ := (Subgroup.mem_subgroupOf).1 hγ
  set σ : L →+* L := (IsCMField.complexConj L : L →+* L) with hσ
  have hU := γ.2
  change Formalism.UG.cT (conjAd L) ((γ.1 : GL (Fin n) (Ad L)) : Matrix (Fin n) (Fin n) (Ad L)) * 1 *
    ((γ.1 : GL (Fin n) (Ad L)) : Matrix (Fin n) (Fin n) (Ad L)) = 1 at hU
  rw [← hγ₀] at hU
  have h2 : Matrix.transpose ((γ₀ : Matrix (Fin n) (Fin n) L).map σ) * (γ₀ : Matrix (Fin n) (Fin n) L) = 1 := by
    have hinj : Function.Injective (algebraMap L (Ad L)) := fun x y h => by
      obtain ⟨w⟩ : Nonempty (InfinitePlace L) := inferInstance
      have := congrArg (fun z => pInf L z w) h
      simp only [pInf_algebraMap] at this
      exact w.embedding.injective this
    apply Matrix.map_injective hinj
    dsimp only
    rw [Matrix.map_mul, Matrix.map_one _ (map_zero _) (map_one _), ← hU, Matrix.mul_one]
    congr 1
    ext i j
    simp [Formalism.UG.cT, ratGL, conjAd_algebraMap, hσ]
  have hu : (γ₀ : Matrix (Fin n) (Fin n) L) * conjT σ γ₀ = 1 := mul_eq_one_comm.1 h2
  let g : GL (Fin n) (AL L) := Matrix.GeneralLinearGroup.map Algebra.TensorProduct.includeLeftRingHom γ₀
  have hcj : ∀ x : L, conjAL L (x ⊗ₜ[maximalRealSubfield L] (1 : AFplus L)) =
      σ x ⊗ₜ[maximalRealSubfield L] (1 : AFplus L) := fun x => rfl
  have hg : g ∈ ReciprocityTheory.Aut.GA L n := by
    change (g : Matrix (Fin n) (Fin n) (AL L)) * conjT (conjAL L) (g : Matrix (Fin n) (Fin n) (AL L)) = 1
    have e : conjT (conjAL L) (g : Matrix (Fin n) (Fin n) (AL L)) =
        (conjT σ (γ₀ : Matrix (Fin n) (Fin n) L)).map Algebra.TensorProduct.includeLeftRingHom := by
      ext i j
      simp [conjT, g, hcj]
    rw [e]
    change (γ₀ : Matrix (Fin n) (Fin n) L).map Algebra.TensorProduct.includeLeftRingHom * _ = 1
    rw [← Matrix.map_mul, hu, Matrix.map_one _ (map_zero _) (map_one _)]
  have hq : (⟨g, hg⟩ : ReciprocityTheory.Aut.GA L n) ∈ GQ L n := by
    rw [GQ, Subgroup.mem_subgroupOf]
    exact ⟨γ₀, hu, rfl⟩
  let x : GAf L n := ⟨g, hg⟩
  refine ⟨⟨x, hq⟩, γ₀, hγ₀.symm, rfl, ?_⟩
  rw [infU, MonoidHom.mem_ker, map_mul, map_inv, mul_inv_eq_one]
  ext s t : 2
  refine FiniteAdeleRing.ext _ fun w => ?_
  have hl := F.loc x w s t
  have e1 : (cLoc w (F.j x) : Matrix (Fin n) (Fin n) (w.adicCompletion L)) s t =
      pFin L (((F.j x).1 : Matrix (Fin n) (Fin n) (Ad L)) s t) w := rfl
  change pFin L ((γ.1 : Matrix (Fin n) (Fin n) (Ad L)) s t) w =
    pFin L (((F.j x).1 : Matrix (Fin n) (Fin n) (Ad L)) s t) w
  rw [← e1, hl, ← hγ₀]
  change pFin L (algebraMap L (Ad L) ((γ₀ : Matrix (Fin n) (Fin n) L) s t)) w =
    F.κ ((γ₀ : Matrix (Fin n) (Fin n) L) s t ⊗ₜ 1) w
  rw [F.left]
  rfl

end GlobalTheory.RatFinPart
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinitePartMulDefiniteUnitaryInfinitePoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsOpenNhdOneInUnitaryPrincipalCongruence =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsOpenNhdOneInUnitaryPrincipalCongruence", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FinIso\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFiniteAdeleBaseChangeEquiv\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUniqueIsConjAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotIsSplitOfIsInertAt\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSplitAtOfIsSplitPl\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host GlobalTheory.HeightCounting NumberField IsDedekindDomain GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.FormDict GlobalTheory.DefiniteBC
open scoped TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.CongOpen

section Lemmas

variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

theorem kappa_one_tmul (F : FinIso L n) (a : AFplus L) :
    F.κ (1 ⊗ₜ a) = GlobalTheory.AdeleBaseChange.adMap (maximalRealSubfield L) L a := by
  refine FiniteAdeleRing.ext _ fun w ↦ ?_
  obtain ⟨i, hi, hia⟩ := F.right w (w.under (𝓞 (maximalRealSubfield L))) rfl
  rw [hia]
  change i (a (w.under (𝓞 (maximalRealSubfield L)))) =
    GlobalTheory.LFun.complMap rfl (a (w.under (𝓞 (maximalRealSubfield L))))
  refine congrFun ((HeightOneSpectrum.denseRange_algebraMap (maximalRealSubfield L)
    (w.under (𝓞 (maximalRealSubfield L)))).equalizer hi
    (GlobalTheory.LFun.InertChart.continuous_complMap rfl) (funext fun k ↦ ?_)) _
  change i (algebraMap _ _ k) = GlobalTheory.LFun.complMap rfl (algebraMap _ _ k)
  rw [GlobalTheory.LFun.complMap_algebraMap]
  have h1 : (algebraMap (maximalRealSubfield L) (AFplus L) k) (w.under (𝓞 (maximalRealSubfield L))) =
      algebraMap _ (HeightOneSpectrum.adicCompletion (maximalRealSubfield L) (w.under (𝓞 (maximalRealSubfield L)))) k := rfl
  rw [← h1, ← hia, Algebra.algebraMap_eq_smul_one (A := AFplus L) k, TensorProduct.tmul_smul,
    TensorProduct.smul_tmul', ← Algebra.algebraMap_eq_smul_one, F.left]
  rfl

theorem kappa_tmul (F : FinIso L n) (x : L) (a : AFplus L) :
    F.κ (x ⊗ₜ a) = algebraMap L _ x * GlobalTheory.AdeleBaseChange.adMap (maximalRealSubfield L) L a := by
  rw [← kappa_one_tmul, ← F.left, ← map_mul, Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]

theorem mem_ALint_of_kappa (F : FinIso L n) {y : AL L} (hy : F.κ y ∈ Formalism.UG.intAd L) :
    y ∈ ALint L := by
  have h := GlobalTheory.AdeleBaseChange.mem_int_of_map (F := maximalRealSubfield L) (E := L)
    (ι := F.κ.toRingHom) (fun x a ↦ kappa_tmul F x a) hy
  refine (Subring.closure_le.2 ?_) h
  rintro _ (⟨x, rfl⟩ | ⟨a, rfl⟩)
  · obtain ⟨r, hr⟩ := x.2
    exact Subring.subset_closure (Or.inl ⟨r, by show (x : L) ⊗ₜ _ = _; rw [← hr]⟩)
  · exact Subring.subset_closure (Or.inr ⟨a.1, a.2, rfl⟩)

end Lemmas

theorem exists_open_cong : ∀ (L : Type) [Field L] [NumberField L] [IsCMField L] (n : ℕ) (F : FinIso L n) (N : ℕ),
    0 < N → ∃ O : Set (finU (E := L) (n := n)), IsOpen O ∧ (1 : finU (E := L) (n := n)) ∈ O ∧
      ∀ k ∈ O, ∀ x : GAf L n, F.j x = (k : UA L n) → NG.Cong L n N x := by
  intro L _ _ _ n F N hN
  set c : Af L := algebraMap L (Af L) (N : L)⁻¹ with hc
  let S : Set (Af L) := {z | z * c ∈ Formalism.UG.intAd L}
  have hI : IsOpen ((Formalism.UG.intAd L : Subring (Af L)) : Set (Af L)) :=
    RestrictedProduct.isOpen_forall_mem (fun v ↦ Valued.isOpen_valuationSubring _)
  have hS : IsOpen S := hI.preimage (continuous_id.mul continuous_const)
  let f : Fin n → Fin n → finU (E := L) (n := n) → Af L := fun s t k ↦
    pFin L ((((k : UA L n) : GlobalTheory.CuspRep.GA L n) : Matrix (Fin n) (Fin n) (Ad L)) s t) -
      pFin L ((1 : Matrix (Fin n) (Fin n) (Ad L)) s t)
  have hm : Continuous (fun k : finU (E := L) (n := n) ↦ (((k : UA L n) : GlobalTheory.CuspRep.GA L n) : Matrix (Fin n) (Fin n) (Ad L))) :=
    Units.continuous_val.comp (continuous_subtype_val.comp continuous_subtype_val)
  have hp : Continuous (pFin L) := continuous_snd
  have hf : ∀ s t, Continuous (f s t) := fun s t ↦
    (hp.comp (hm.matrix_elem s t)).sub continuous_const
  refine ⟨{k | ∀ s t, f s t k ∈ S}, ?_, ?_, ?_⟩
  · have e : {k | ∀ s t, f s t k ∈ S} = ⋂ s, ⋂ t, (f s t) ⁻¹' S := by ext; simp
    rw [e]
    exact isOpen_iInter_of_finite fun s ↦ isOpen_iInter_of_finite fun t ↦ hS.preimage (hf s t)
  · intro s t
    have e : f s t 1 = 0 := by simp [f]
    show f s t 1 * c ∈ Formalism.UG.intAd L
    rw [e, zero_mul]
    exact zero_mem _
  · intro k hk x hx
    have hloc : ∀ s t, F.κ (((x : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) s t) =
        pFin L ((((k : UA L n) : GlobalTheory.CuspRep.GA L n) : Matrix (Fin n) (Fin n) (Ad L)) s t) := by
      intro s t
      refine FiniteAdeleRing.ext _ fun w ↦ ?_
      rw [← F.loc x w s t, hx]
      rfl
    have hone : ∀ s t, F.κ ((1 : Matrix (Fin n) (Fin n) (AL L)) s t) =
        pFin L ((1 : Matrix (Fin n) (Fin n) (Ad L)) s t) := by
      intro s t
      by_cases h : s = t <;> simp [Matrix.one_apply, h]
    have key : ∀ s t, ∃ y ∈ ALint L, ((x : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) s t -
        (1 : Matrix (Fin n) (Fin n) (AL L)) s t = (N : AL L) * y := by
      intro s t
      have h1 : f s t k * c ∈ Formalism.UG.intAd L := hk s t
      have hz : F.κ (((x : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) s t -
          (1 : Matrix (Fin n) (Fin n) (AL L)) s t) = f s t k := by
        simp only [f, map_sub, hloc, hone]
      refine ⟨F.κ.symm (f s t k * c), mem_ALint_of_kappa F (by rw [RingEquiv.apply_symm_apply]; exact h1), ?_⟩
      apply F.κ.injective
      rw [hz, map_mul, RingEquiv.apply_symm_apply, map_natCast, mul_comm (f s t k), ← mul_assoc, hc,
        ← map_natCast (algebraMap L (Af L)), ← map_mul, mul_inv_cancel₀ (Nat.cast_ne_zero.2 hN.ne'),
        map_one, one_mul]
    have hU : ∀ s t, ((x : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) s t ∈ ALint L := by
      intro s t
      obtain ⟨y, hy, e⟩ := key s t
      rw [sub_eq_iff_eq_add] at e
      rw [e]
      refine add_mem (mul_mem (natCast_mem _ N) hy) ?_
      by_cases h : s = t
      · simp [Matrix.one_apply, h, one_mem]
      · simp [h, zero_mem]
    exact ⟨hU, key⟩

end GlobalTheory.CongOpen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsOpenNhdOneInUnitaryPrincipalCongruence =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitaryRationalMatrixOfFirstPresentationPo =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitaryRationalMatrixOfFirstPresentationPo", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\npublic import ReciprocityTheory.Automorphisms.Unitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FinIso\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSplitAtOfIsSplitPl\npublic import Formalism.AlgebraicWeights.IsAlgWeight\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host GlobalTheory.HeightCounting NumberField IsDedekindDomain GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.FormDict GlobalTheory.DefiniteBC
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

open Matrix

namespace GlobalTheory.RatPtsBridge

theorem exists_ratGL : ∀ (L : Type) [Field L] [NumberField L] [IsCMField L] (n : ℕ) (γQ : GQ L n), ∃ (γ : UA L n) (γ₀ : GL (Fin n) L), γ.1 = ratGL L n γ₀ ∧ (((γQ : GAf L n) : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) = (γ₀ : Matrix (Fin n) (Fin n) L).map Algebra.TensorProduct.includeLeftRingHom := by
  intro L _ _ _ n γQ
  obtain ⟨γ₀, hγ₀, he⟩ := Subgroup.mem_map.1 (Subgroup.mem_subgroupOf.1 γQ.2)
  have h0 : (γ₀ : Matrix (Fin n) (Fin n) L) * conjT (IsCMField.complexConj L : L →+* L) γ₀ = 1 := hγ₀
  have h1 : conjT (IsCMField.complexConj L : L →+* L) (γ₀ : Matrix (Fin n) (Fin n) L) *
      (γ₀ : Matrix (Fin n) (Fin n) L) = 1 := mul_eq_one_comm.1 h0
  have hmem : ratGL L n γ₀ ∈ UA L n := by
    show Formalism.UG.cT (conjAd L) ((ratGL L n γ₀ : GL (Fin n) (Ad L)) : Matrix (Fin n) (Fin n) (Ad L)) * 1 *
      ((ratGL L n γ₀ : GL (Fin n) (Ad L)) : Matrix (Fin n) (Fin n) (Ad L)) = 1
    have e : Formalism.UG.cT (conjAd L) ((γ₀ : Matrix (Fin n) (Fin n) L).map (algebraMap L (Ad L))) =
        (conjT (IsCMField.complexConj L : L →+* L) (γ₀ : Matrix (Fin n) (Fin n) L)).map (algebraMap L (Ad L)) := by
      ext i j
      simp [Formalism.UG.cT, conjT, conjAd_algebraMap]
    change Formalism.UG.cT (conjAd L) ((γ₀ : Matrix (Fin n) (Fin n) L).map (algebraMap L (Ad L))) * 1 *
      (γ₀ : Matrix (Fin n) (Fin n) L).map (algebraMap L (Ad L)) = 1
    rw [mul_one, e, ← Matrix.map_mul, h1, Matrix.map_one _ (map_zero _) (map_one _)]
  refine ⟨⟨ratGL L n γ₀, hmem⟩, γ₀, rfl, ?_⟩
  rw [← he]
  rfl

end GlobalTheory.RatPtsBridge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitaryRationalMatrixOfFirstPresentationPo =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsDictionaryCmFieldAutomorphic =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsDictionaryCmFieldAutomorphic", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FinIso\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ContinuousMapPFin\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\npublic import Formalism.LocalToGlobal.GaloisLevelStructure.DefsAut\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAdelicExtensionOfAlgebraicWeightDefiniteUn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinitePartMulDefiniteUnitaryInfinitePoint\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsOpenNhdOneInUnitaryPrincipalCongruence\npublic import ReciprocityTheory.Automorphisms.Unitary\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitaryRationalMatrixOfFirstPresentationPo\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpanRepMatrixEqTopOfAbsIrreducible\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DefiniteUnitaryClassSetFinite\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Mathlib.RingTheory.PicardGroup\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host GlobalTheory.HeightCounting NumberField IsDedekindDomain GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.FormDict GlobalTheory.DefiniteBC
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

open Matrix Topology

noncomputable section

namespace GlobalTheory.FormDictEx

variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

def fpt (g : UA L n) : UA L n :=
  ⟨finGL L n (GeneralLinearGroup.map (pFin L) g.1), GlobalTheory.DefU.ClassFin.finGL_mem_UA _ (GlobalTheory.DefU.ClassFin.cT_pFin g)⟩

theorem fpt_mem (g : UA L n) : fpt g ∈ finU (E := L) (n := n) := pInf_finGL _

theorem fpt_mul (g h : UA L n) : fpt (g * h) = fpt g * fpt h :=
  Subtype.ext (by simp only [fpt, Subgroup.coe_mul, map_mul])

theorem fpt_of_mem_fin {g : UA L n} (hg : g ∈ finU (E := L) (n := n)) : fpt g = g := by
  have h1 : GeneralLinearGroup.map (pInf L) g.1 = 1 := hg
  apply Subtype.ext
  change finGL L n _ = g.1
  conv_rhs => rw [← infGL_mul_finGL g.1, h1, map_one, one_mul]

theorem fpt_of_mem_inf {g : UA L n} (hg : g ∈ infU L n) : fpt g = 1 := by
  have h1 : GeneralLinearGroup.map (pFin L) g.1 = 1 := hg
  apply Subtype.ext
  change finGL L n _ = 1
  rw [h1, map_one]

theorem continuous_fpt : Continuous (fpt : UA L n → UA L n) := by
  have hs : Continuous (sFin L) :=
    (continuous_const.prodMk continuous_id : Continuous fun x : Af L => ((0, x) : InfiniteAdeleRing L × Af L))
  have h1 : Continuous (finGL L n) := by
    refine Continuous.units_map _ ?_
    exact continuous_const.add (Continuous.matrix_map continuous_id hs)
  have h2 : Continuous (GeneralLinearGroup.map (pFin L) : GL (Fin n) (Ad L) →* GL (Fin n) (Af L)) :=
    Continuous.units_map _ (Continuous.matrix_map continuous_id continuous_snd)
  exact (h1.comp (h2.comp continuous_subtype_val)).subtype_mk _

theorem j_injective (F : FinIso L n) : Function.Injective F.j := by
  intro x x' h
  have key : ∀ s t, ((x : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) s t =
      ((x' : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) s t := by
    intro s t
    apply F.κ.injective
    apply FiniteAdeleRing.ext L
    intro w
    rw [← F.loc x w s t, ← F.loc x' w s t, h]
  exact Subtype.ext (Units.ext (Matrix.ext key))

def fy (F : FinIso L n) (g : UA L n) : GAf L n := (F.onto _ (fpt_mem g)).choose

theorem j_fy (F : FinIso L n) (g : UA L n) : F.j (fy F g) = fpt g := (F.onto _ (fpt_mem g)).choose_spec

theorem fy_mul (F : FinIso L n) (g h : UA L n) : fy F (g * h) = fy F g * fy F h :=
  j_injective F (by rw [map_mul, j_fy, j_fy, j_fy, fpt_mul])

theorem fy_j (F : FinIso L n) (x : GAf L n) : fy F (F.j x) = x :=
  j_injective F (by rw [j_fy, fpt_of_mem_fin (F.fin x)])

theorem fy_inf (F : FinIso L n) {g : UA L n} (hg : g ∈ infU L n) : fy F g = 1 :=
  j_injective F (by rw [j_fy, fpt_of_mem_inf hg, map_one])

theorem fy_fpt (F : FinIso L n) (g : UA L n) : fy F (fpt g) = fy F g :=
  j_injective F (by rw [j_fy, j_fy, fpt_of_mem_fin (fpt_mem g)])

theorem rt_one {W : Type} [AddCommGroup W] [Module ℂ W] (f : GAf L n → W) : NG.rt L n 1 f = f :=
  funext fun g => congrArg f (mul_one g)

section Phi

variable {W : Type} [AddCommGroup W] [Module ℂ W]

def phi (F : FinIso L n) (R : UA L n →* Module.End ℂ W) (f : GAf L n → W) (lam : Module.Dual ℂ W) : UA L n → ℂ :=
  fun g => lam (R g⁻¹ (f (fy F g)))

variable (F : FinIso L n) (R : UA L n →* Module.End ℂ W)

theorem RU_phi (f : GAf L n → W) (lam : Module.Dual ℂ W) (x : UA L n) :
    RU L n x (phi F R f lam) = phi F R (NG.rt L n (fy F x) f) (lam ∘ₗ R x⁻¹) := by
  funext g
  simp only [GlobalTheory.DefU.RU_apply, phi, fy_mul, _root_.mul_inv_rev, map_mul, LinearMap.comp_apply, Module.End.mul_apply]
  rfl

theorem phi_j (hfin : ∀ k ∈ finU (E := L) (n := n), R k = 1) (f : GAf L n → W) (lam : Module.Dual ℂ W) (x : GAf L n) :
    phi F R f lam (F.j x) = lam (f x) := by
  simp only [phi, fy_j, hfin _ ((finU (E := L) (n := n)).inv_mem (F.fin x)), Module.End.one_apply]

def phiR (f : GAf L n → W) : Module.Dual ℂ W →ₗ[ℂ] (UA L n → ℂ) where
  toFun lam := phi F R f lam
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

def phiL (lam : Module.Dual ℂ W) : (GAf L n → W) →ₗ[ℂ] (UA L n → ℂ) where
  toFun f := phi F R f lam
  map_add' f f' := funext fun g => by simp [phi]
  map_smul' c f := funext fun g => by simp [phi]

theorem phi_add (lam : Module.Dual ℂ W) (f f' : GAf L n → W) :
    phi F R (f + f') lam = phi F R f lam + phi F R f' lam := map_add (phiL F R lam) f f'

theorem phi_zero (lam : Module.Dual ℂ W) : phi F R (0 : GAf L n → W) lam = 0 := map_zero (phiL F R lam)

theorem phi_smul (lam : Module.Dual ℂ W) (c : ℂ) (f : GAf L n → W) :
    phi F R (c • f) lam = c • phi F R f lam := map_smul (phiL F R lam) c f

end Phi

section Main

variable {W : Type} [AddCommGroup W] [Module ℂ W] (F : FinIso L n) (ρ : Representation ℂ (GQ L n) W)
  (R : UA L n →* Module.End ℂ W)

theorem isAutFormU_phi (hfin : ∀ k ∈ finU (E := L) (n := n), R k = 1)
    (hrat : ∀ (γ : UA L n) (γQ : GQ L n) (γ₀ : GL (Fin n) L), γ.1 = ratGL L n γ₀ →
      (((γQ : GAf L n) : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) =
        (γ₀ : Matrix (Fin n) (Fin n) L).map Algebra.TensorProduct.includeLeftRingHom → R γ = ρ γQ)
    (hcont : ∀ (v : W) (μ : Module.Dual ℂ W), Continuous fun g : UA L n => μ (R g v))
    [FiniteDimensional ℂ W] {f : GAf L n → W} (hf : f ∈ NG.AFall L n ρ) (lam : Module.Dual ℂ W) :
    IsAutFormU (phi F R f lam) := by
  obtain ⟨hleft, N, hN, hinv⟩ := hf
  obtain ⟨O, hO, h1O, hOc⟩ := _root_.GlobalTheory.CongOpen.exists_open_cong L n F N hN
  have hOf : ∀ k ∈ O, ∀ g, f (g * fy F (k : UA L n)) = f g := fun k hk g =>
    hinv _ (hOc k hk _ (by rw [j_fy, fpt_of_mem_fin k.2])) g
  refine ⟨?_, ?_, ?_, ?_⟩
  · refine continuous_iff_continuousAt.2 fun g0 => ?_
    have hc : Continuous fun g : UA L n => lam (R g⁻¹ (f (fy F g0))) :=
      (hcont (f (fy F g0)) lam).comp continuous_inv
    refine hc.continuousAt.congr ?_
    let q : UA L n → finU (E := L) (n := n) := fun g => ⟨fpt (g0⁻¹ * g), fpt_mem _⟩
    have hq : Continuous q := (continuous_fpt.comp (continuous_const.mul continuous_id)).subtype_mk _
    have hq0 : q g0 = 1 := Subtype.ext (by
      change fpt (g0⁻¹ * g0) = 1
      rw [inv_mul_cancel]
      exact fpt_of_mem_fin (finU (E := L) (n := n)).one_mem)
    have hmem : q ⁻¹' O ∈ 𝓝 g0 := (hO.preimage hq).mem_nhds (by rw [Set.mem_preimage, hq0]; exact h1O)
    filter_upwards [hmem] with g hg
    have e : fy F g = fy F g0 * fy F (q g : UA L n) := by
      change fy F g = fy F g0 * fy F (fpt (g0⁻¹ * g))
      rw [fy_fpt, ← fy_mul, mul_inv_cancel_left]
    change lam (R g⁻¹ (f (fy F g0))) = lam (R g⁻¹ (f (fy F g)))
    rw [e, hOf _ hg]
  · intro γ hγ g
    obtain ⟨γQ, γ₀, h1, h2, h3⟩ := _root_.GlobalTheory.RatFinPart.exists_gq_mul_infU L n F γ hγ
    have hy : fy F γ = γQ := by
      have := fy_mul F (γ * (F.j γQ)⁻¹) (F.j γQ)
      rw [inv_mul_cancel_right, fy_inf F h3, fy_j, one_mul] at this
      exact this
    simp only [phi, fy_mul, hy, hleft, _root_.mul_inv_rev, map_mul, Module.End.mul_apply]
    rw [← hrat γ γQ γ₀ h1 h2, ← Module.End.mul_apply (R γ⁻¹), ← map_mul, inv_mul_cancel, map_one,
      Module.End.one_apply]
  · let H : Subgroup (finU (E := L) (n := n)) :=
      { carrier := {k | RU L n (k : UA L n) (phi F R f lam) = phi F R f lam}
        mul_mem' := fun {a b} ha hb => by
          change RU L n ((a : UA L n) * b) _ = _
          rw [← GlobalTheory.DefU.RU_RU, hb, ha]
        one_mem' := by
          change RU L n 1 _ = _
          rw [map_one]; rfl
        inv_mem' := fun {a} ha => by
          change RU L n ((a : UA L n)⁻¹) _ = _
          conv_lhs => rw [← ha]
          rw [GlobalTheory.DefU.RU_RU, inv_mul_cancel, map_one]; rfl }
    refine H.isOpen_of_mem_nhds (g := 1) (Filter.mem_of_superset (hO.mem_nhds h1O) fun k hk => ?_)
    change RU L n (k : UA L n) _ = _
    rw [RU_phi, hfin _ ((finU (E := L) (n := n)).inv_mem k.2), show lam ∘ₗ (1 : Module.End ℂ W) = lam from LinearMap.ext fun _ => rfl]
    congr 1
    exact funext (hOf k hk)
  · refine Submodule.finiteDimensional_of_le (S₂ := LinearMap.range (phiR F R f)) (Submodule.span_le.2 ?_)
    rintro _ ⟨k, rfl⟩
    refine ⟨lam ∘ₗ R (k : UA L n)⁻¹, ?_⟩
    show _ = RU L n (k : UA L n) (phi F R f lam)
    rw [RU_phi, fy_inf F k.2, rt_one]
    rfl

def gens (S : Submodule ℂ (GAf L n → W)) : Set (UA L n → ℂ) :=
  {ψ | ∃ f ∈ S, ∃ lam : Module.Dual ℂ W, ψ = phi F R f lam}

theorem dict_span [FiniteDimensional ℂ W] (hρ : ρ.IsIrreducible) (S : Submodule ℂ (GAf L n → W))
    (hS : NG.IsIrrRep ρ S) (hfin : ∀ k ∈ finU (E := L) (n := n), R k = 1)
    (hrat : ∀ (γ : UA L n) (γQ : GQ L n) (γ₀ : GL (Fin n) L), γ.1 = ratGL L n γ₀ →
      (((γQ : GAf L n) : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)) =
        (γ₀ : Matrix (Fin n) (Fin n) L).map Algebra.TensorProduct.includeLeftRingHom → R γ = ρ γQ)
    (hcont : ∀ (v : W) (μ : Module.Dual ℂ W), Continuous fun g : UA L n => μ (R g v)) :
    IsAutRepU (Submodule.span ℂ (gens F R S)) ∧
      (Submodule.span ℂ (gens F R S)).map (LinearMap.funLeft ℂ ℂ F.j) =
        Submodule.span ℂ {φ | ∃ f ∈ S, ∃ lam : Module.Dual ℂ W, φ = fun x => lam (f x)} := by
  set U := Submodule.span ℂ (gens F R S) with hU
  refine ⟨⟨fun ψ hψ => ?_, fun x ψ hψ => ?_, ?_, fun W' hW' hst => ?_⟩, ?_⟩
  ·
    have hle : U ≤ GlobalTheory.DefU.autU L n := Submodule.span_le.2 (by
      rintro _ ⟨f, hf, lam, rfl⟩
      exact isAutFormU_phi F ρ R hfin hrat hcont (hS.1.le hf) lam)
    exact hle hψ
  ·
    have hle : U ≤ U.comap (RU L n x) := Submodule.span_le.2 (by
      rintro _ ⟨f, hf, lam, rfl⟩
      rw [SetLike.mem_coe, Submodule.mem_comap, RU_phi]
      exact Submodule.subset_span ⟨_, hS.1.stable _ f hf, _, rfl⟩)
    exact hle hψ
  ·
    intro hbot
    obtain ⟨f, hf, hf0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hS.2.1
    obtain ⟨x, hx⟩ : ∃ x, f x ≠ 0 := by
      by_contra h
      push Not at h
      exact hf0 (funext h)
    obtain ⟨lam, hlam⟩ : ∃ lam : Module.Dual ℂ W, lam (f x) ≠ 0 := by
      by_contra h
      push Not at h
      exact hx ((Module.forall_dual_apply_eq_zero_iff ℂ _).1 h)
    have hmem : phi F R f lam ∈ U := Submodule.subset_span ⟨f, hf, lam, rfl⟩
    rw [hbot, Submodule.mem_bot] at hmem
    exact hlam (by rw [← phi_j F R hfin f lam x, hmem]; rfl)
  ·
    let S' : Submodule ℂ (GAf L n → W) :=
      { carrier := {f | f ∈ S ∧ ∀ lam, phi F R f lam ∈ W'}
        add_mem' := fun {a b} ha hb => ⟨S.add_mem ha.1 hb.1, fun lam => by
          have := W'.add_mem (ha.2 lam) (hb.2 lam)
          rwa [phi_add]⟩
        zero_mem' := ⟨S.zero_mem, fun lam => by
          have := W'.zero_mem
          rwa [phi_zero]⟩
        smul_mem' := fun c a ha => ⟨S.smul_mem c ha.1, fun lam => by
          have := W'.smul_mem c (ha.2 lam)
          rwa [phi_smul]⟩ }
    have hsub : NG.IsSubrep ρ S' := ⟨fun f hf => hS.1.le hf.1, fun h f hf => ⟨hS.1.stable h f hf.1, fun lam => by
      have := hst (F.j h) _ (hf.2 lam)
      rwa [RU_phi, fy_j, hfin _ ((finU (E := L) (n := n)).inv_mem (F.fin h)),
        show lam ∘ₗ (1 : Module.End ℂ W) = lam from LinearMap.ext fun _ => rfl] at this⟩⟩
    rcases hS.2.2 S' hsub (fun f hf => hf.1) with h | h
    · left
      rw [eq_bot_iff]
      intro ψ hψ
      rw [Submodule.mem_bot]
      obtain ⟨m, c, g, hsum⟩ := Submodule.mem_span_set'.1 (hW' hψ)
      choose fs hfs lams hg using fun i => (g i).2
      let lp : Fin m → Module.Dual ℂ W := fun i => c i • lams i
      have hψe : ψ = ∑ i, phi F R (fs i) (lp i) := by
        rw [← hsum]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [hg i]
        rfl
      let T : Module.End ℂ W →ₗ[ℂ] (UA L n → ℂ) := ∑ i, phiR F R (fs i) ∘ₗ LinearMap.llcomp ℂ W W ℂ (lp i)
      have hT : ∀ B, T B = ∑ i, phi F R (fs i) (lp i ∘ₗ B) := fun B => by
        rw [LinearMap.sum_apply]
        rfl
      have hTinf : ∀ x ∈ infU L n, T (R x) ∈ W' := by
        intro x hx
        have := hst x⁻¹ ψ hψ

        rw [hψe, map_sum] at this
        convert this using 1
        rw [hT]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [RU_phi, fy_inf F ((infU L n).inv_mem hx), rt_one, inv_inv]
      have htop : Submodule.span ℂ (Set.range ρ) ≤ W'.comap T := by
        rw [Submodule.span_le]
        rintro _ ⟨γQ, rfl⟩
        obtain ⟨γ, γ₀, h1, h2⟩ := _root_.GlobalTheory.RatPtsBridge.exists_ratGL L n γQ
        have hx : γ * (fpt γ)⁻¹ ∈ infU L n := by
          change GeneralLinearGroup.map (pFin L) (γ * (fpt γ)⁻¹).1 = 1
          rw [Subgroup.coe_mul, Subgroup.coe_inv, map_mul, map_inv]
          change _ * (GeneralLinearGroup.map (pFin L) (finGL L n (GeneralLinearGroup.map (pFin L) γ.1)))⁻¹ = 1
          rw [pFin_finGL, mul_inv_cancel]
        have hR : R (γ * (fpt γ)⁻¹) = ρ γQ := by
          rw [map_mul, hfin _ ((finU (E := L) (n := n)).inv_mem (fpt_mem γ)), mul_one, hrat γ γQ γ₀ h1 h2]
        show T (ρ γQ) ∈ W'
        rw [← hR]
        exact hTinf _ hx
      rw [GlobalTheory.BurnsideField.span_range_eq_top_of_isAlgClosed ρ hρ] at htop
      have hall : ∀ B, T B ∈ W' := fun B => htop Submodule.mem_top
      have hF : ∀ v : W, (∑ i, lp i v • fs i) = 0 := by
        intro v
        have hmem : (∑ i, lp i v • fs i) ∈ S' := by
          refine ⟨Submodule.sum_mem _ fun i _ => S.smul_mem _ (hfs i), fun μ => ?_⟩
          have := hall (μ.smulRight v)
          convert this using 1
          rw [hT]
          change phiL F R μ (∑ i, lp i v • fs i) = _

          rw [map_sum]
          refine Finset.sum_congr rfl fun i _ => ?_
          rw [map_smul]
          have e : lp i ∘ₗ μ.smulRight v = lp i v • μ := LinearMap.ext fun w => by
            simp [mul_comm]
          rw [e]
          exact (map_smul (phiR F R (fs i)) (lp i v) μ).symm
        rw [h] at hmem
        exact (Submodule.mem_bot ℂ).1 hmem
      rw [hψe]
      funext y
      rw [Finset.sum_apply, Pi.zero_apply]
      simp only [phi]
      let b := Module.finBasis ℂ W
      calc ∑ i, lp i (R y⁻¹ (fs i (fy F y)))
          = ∑ i, ∑ k, b.repr (R y⁻¹ (fs i (fy F y))) k * lp i (b k) := by
            refine Finset.sum_congr rfl fun i _ => ?_
            conv_lhs => rw [← b.sum_repr (R y⁻¹ (fs i (fy F y)))]

            rw [map_sum]
            simp only [map_smul, smul_eq_mul]
        _ = ∑ k, ∑ i, b.repr (R y⁻¹ (fs i (fy F y))) k * lp i (b k) := Finset.sum_comm
        _ = ∑ k, b.repr (R y⁻¹ ((∑ i, lp i (b k) • fs i) (fy F y))) k := by
            refine Finset.sum_congr rfl fun k _ => ?_

            simp [Finset.sum_apply, map_sum, map_smul, mul_comm]
        _ = 0 := by simp only [hF, Pi.zero_apply, map_zero, Finsupp.zero_apply, Finset.sum_const_zero]
    · right
      refine le_antisymm hW' (Submodule.span_le.2 ?_)
      rintro _ ⟨f, hf, lam, rfl⟩
      rw [← h] at hf
      exact hf.2 lam
  · rw [Submodule.map_span]
    congr 1
    ext φ
    constructor
    · rintro ⟨_, ⟨f, hf, lam, rfl⟩, rfl⟩
      exact ⟨f, hf, lam, funext fun x => phi_j F R hfin f lam x⟩
    · rintro ⟨f, hf, lam, rfl⟩
      exact ⟨_, ⟨f, hf, lam, rfl⟩, funext fun x => phi_j F R hfin f lam x⟩

end Main

theorem exists_dict : ∀ (L : Type) [Field L] [NumberField L] [IsCMField L] (n : ℕ) (F : FinIso L n) (π : NG.AutRep L n),
    ∃ U, Dict F π U := by
  intro L _ _ _ n F π
  haveI : FiniteDimensional ℂ π.W := π.alg.1
  obtain ⟨R, hfin, hrat, hcont⟩ := _root_.GlobalTheory.WeightRealExt.exists_extension L n π.toAlgWt
  exact ⟨_, dict_span F π.ρ R π.irr π.S π.irrS hfin hrat hcont⟩

end GlobalTheory.FormDictEx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsDictionaryCmFieldAutomorphic =====
