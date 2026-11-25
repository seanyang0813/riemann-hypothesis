module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueJointTop
public import Formalism.LocalRingCardinality.DataHost
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZRYRCover
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx
import Formalism.LocalRingCardinality.DataTheta
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.Divisibility.CoefMod
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.LocalToGlobal.IndefiniteReal.PartsOrth
import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.Sl2NonnegWeightOfHighestWeightVector
import Mathlib.Tactic.TypeStar
import Std.Tactic.BVDecide.Normalize.BitVec
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.AffineMonoid.UniqueSums

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsJointHighestWeightHarmonicSliceOuterVariables, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicMultiplicityOneCoverin, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKType, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKTypeStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOne, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOneStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsJointHighestWeightHarmonicSliceOuterVariables =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsJointHighestWeightHarmonicSliceOuterVariables", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueJointTop\npublic import Formalism.LocalRingCardinality.DataHost\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Formalism.LocalRingCardinality.DataTheta\nimport Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange\nimport Formalism.LocalToGlobal.Divisibility.CoefMod\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\nimport Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

namespace GlobalTheory.Slice

open MvPolynomial GlobalTheory.Capelli

variable {σ σ₀ : Type} (ι : σ₀ → σ)

abbrev Outer := {v : σ // v ∉ Set.range ι}

noncomputable def sliceVar (v : σ) : MvPolynomial (Outer ι) (MvPolynomial σ₀ ℂ) := by
  classical
  exact if h : v ∈ Set.range ι then C (X h.choose) else X ⟨v, h⟩

noncomputable def slice : MvPolynomial σ ℂ →ₐ[ℂ] MvPolynomial (Outer ι) (MvPolynomial σ₀ ℂ) :=
  aeval (sliceVar ι)

variable {ι}

theorem slice_X_inner (hι : Function.Injective ι) (u : σ₀) : slice ι (X (ι u)) = C (X u) := by
  have h : ι u ∈ Set.range ι := ⟨u, rfl⟩
  simp only [slice, aeval_X, sliceVar, dite_eq_left h]
  rw [hι h.choose_spec]

theorem slice_X_outer {v : σ} (hv : v ∉ Set.range ι) : slice ι (X v) = X ⟨v, hv⟩ := by
  simp only [slice, aeval_X, sliceVar, dite_eq_right hv]

theorem slice_C (a : ℂ) : slice ι (C a) = C (C a) := by
  simp [slice, MvPolynomial.algebraMap_apply]

variable (ι)

noncomputable def coefAt (t : Outer ι →₀ ℕ) : MvPolynomial σ ℂ →ₗ[ℂ] MvPolynomial σ₀ ℂ where
  toFun Q := AddMonoidAlgebra.coeff (slice ι Q) t
  map_add' _ _ := by simp
  map_smul' c Q := by simp

variable {ι}

theorem coefAt_X_mul (hι : Function.Injective ι) (t : Outer ι →₀ ℕ) (u : σ₀)
    (Q : MvPolynomial σ ℂ) : coefAt ι t (X (ι u) * Q) = X u * coefAt ι t Q := by
  simp [coefAt, map_mul, slice_X_inner hι, coeff_C_mul]

theorem coefAt_pderiv (hι : Function.Injective ι) (u : σ₀) (Q : MvPolynomial σ ℂ) :
    ∀ t, coefAt ι t (pderiv (ι u) Q) = pderiv u (coefAt ι t Q) := by
  classical
  simp only [coefAt, LinearMap.coe_mk, AddHom.coe_mk]
  induction Q using MvPolynomial.induction_on with
  | C a => intro t; simp only [pderiv_C, map_zero, AddMonoidAlgebra.coeff_zero, slice_C, coeff_C]; split_ifs <;> simp
  | add p q hp hq => intro t; simp [hp, hq]
  | mul_X p v hp =>
    intro t
    by_cases hv : v ∈ Set.range ι
    · obtain ⟨w, rfl⟩ := hv
      by_cases huw : w = u
      · subst huw
        simp [Derivation.leibniz, map_mul, slice_X_inner hι, hp, pderiv_X, coeff_C_mul,
          mul_comm (slice ι p) (C (X w))]
        ring
      · have h1 : ι u ≠ ι w := fun h => huw (hι h).symm
        have h2 : u ≠ w := fun h => huw h.symm
        simp [Derivation.leibniz, map_mul, slice_X_inner hι, hp, pderiv_X,
          h1, h2, coeff_C_mul, mul_comm (slice ι p) (C (X w))]
    · have h1 : ι u ≠ v := fun h => hv ⟨u, h⟩
      simp only [Derivation.leibniz, map_mul, smul_eq_mul, pderiv_X, Pi.single_apply,
        ite_eq_right h1.symm, mul_zero, zero_add, slice_X_outer hv]
      rw [coeff_X_mul', coeff_mul_X']
      split_ifs
      · rw [hp]
      · simp

theorem coefAt_jointTop (hι : Function.Injective ι) (t : Outer ι →₀ ℕ) {k l N : ℕ}
    (z : Fin k × Fin N → σ₀) (y : Fin l × Fin N → σ₀) (κ : Fin N → ℂ) (α : Fin k → ℂ)
    (β : Fin l → ℂ) (P : MvPolynomial σ ℂ)
    (h : GlobalTheory.CompactHarm.JointTop (ι ∘ z) (ι ∘ y) κ α β P) :
    GlobalTheory.CompactHarm.JointTop z y κ α β (coefAt ι t P) := by
  have hm : ∀ i j, coefAt ι t (mixedOp ℂ (ι ∘ z) (ι ∘ y) i j P) =
      mixedOp ℂ z y i j (coefAt ι t P) := fun i j => by

    simp only [mixedOp_apply, map_sub, map_sum, Function.comp_apply, coefAt_X_mul hι,
    coefAt_pderiv hι]
  have hr : ∀ {K : ℕ} (w : Fin K × Fin N → σ₀) (a b : Fin K),
      coefAt ι t (rowOp ℂ (ι ∘ w) a b P) = rowOp ℂ w a b (coefAt ι t P) := fun w a b => by

    simp only [rowOp_apply, map_sum, Function.comp_apply, coefAt_X_mul hι, coefAt_pderiv hι]
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := h
  refine ⟨fun i j hij => ?_, fun i => ?_, fun c c' hc => ?_, fun c => ?_, fun d d' hd => ?_,
    fun d => ?_, fun c d => ?_⟩
  · rw [← hm, h1 i j hij, map_zero]
  · rw [← hm, h2 i, map_smul]
  · rw [← hr, h3 c c' hc, map_zero]
  · rw [← hr, h4 c, map_smul]
  · rw [← hr, h5 d d' hd, map_zero]
  · rw [← hr, h6 d, map_smul]
  · have := congrArg (coefAt ι t) (h7 c d)

    simpa only [map_sum, Function.comp_apply, coefAt_pderiv hι, map_zero] using this

variable (ι)

noncomputable def unslice : MvPolynomial (Outer ι) (MvPolynomial σ₀ ℂ) →+* MvPolynomial σ ℂ :=
  eval₂Hom (rename ι).toRingHom (fun r => X r.1)

variable {ι}

theorem unslice_slice_X (hι : Function.Injective ι) (v : σ) : unslice ι (slice ι (X v)) = X v := by
  by_cases hv : v ∈ Set.range ι
  · obtain ⟨w, rfl⟩ := hv
    rw [slice_X_inner hι]
    simp only [unslice, coe_eval₂Hom, eval₂_C, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, rename_X]
  · rw [slice_X_outer hv]
    simp only [unslice, coe_eval₂Hom, eval₂_X]

theorem unslice_slice (hι : Function.Injective ι) (Q : MvPolynomial σ ℂ) :
    unslice ι (slice ι Q) = Q := by
  induction Q using MvPolynomial.induction_on with
  | C a =>
    rw [slice_C]
    simp only [unslice, coe_eval₂Hom, eval₂_C, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, rename_C]
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), hp, hq]
  | mul_X p v hp =>
    rw [map_mul, map_mul, hp, unslice_slice_X hι]

theorem slice_decomp (hι : Function.Injective ι) (P : MvPolynomial σ ℂ) :
    P = ∑ t ∈ (slice ι P).support,
      rename ι (coefAt ι t P) * t.prod (fun r e => (X r.1 : MvPolynomial σ ℂ) ^ e) := by

  conv_lhs => rw [← unslice_slice hι P, (slice ι P).as_sum, map_sum]
  refine Finset.sum_congr rfl fun t _ => ?_
  simp [unslice, eval₂_monomial, coefAt]

theorem vars_outer_prod (t : Outer ι →₀ ℕ) :
    ∀ v ∈ (t.prod (fun r e => (X r.1 : MvPolynomial σ ℂ) ^ e)).vars, v ∉ Set.range ι := by
  classical
  intro v hv
  obtain ⟨r, -, hr⟩ := Finset.mem_biUnion.1 (vars_prod _ hv)
  have := vars_pow _ _ hr
  rw [vars_X, Finset.mem_singleton] at this
  exact this ▸ r.2

noncomputable def outerEmb : (Outer ι →₀ ℕ) ↪ (σ →₀ ℕ) :=
  ⟨Finsupp.mapDomain Subtype.val, Finsupp.mapDomain_injective Subtype.val_injective⟩

noncomputable def outerBack (i : σ →₀ ℕ) : Outer ι →₀ ℕ :=
  Finsupp.comapDomain Subtype.val i Subtype.val_injective.injOn

theorem outerBack_emb (t : Outer ι →₀ ℕ) : outerBack (outerEmb t) = t :=
  Finsupp.comapDomain_mapDomain _ Subtype.val_injective t

end GlobalTheory.Slice

open GlobalTheory.Slice in
theorem GlobalTheory.jointTop_slice : ∀ {σ σ₀ : Type} [DecidableEq σ] (ι : σ₀ → σ), Function.Injective ι →
    ∀ {k l N : ℕ} (z : Fin k × Fin N → σ₀) (y : Fin l × Fin N → σ₀) (κ : Fin N → ℂ)
    (α : Fin k → ℂ) (β : Fin l → ℂ) (P : MvPolynomial σ ℂ),
    GlobalTheory.CompactHarm.JointTop (ι ∘ z) (ι ∘ y) κ α β P →
    ∃ (s : Finset (σ →₀ ℕ)) (f : (σ →₀ ℕ) → MvPolynomial σ₀ ℂ) (g : (σ →₀ ℕ) → MvPolynomial σ ℂ),
      P = ∑ i ∈ s, MvPolynomial.rename ι (f i) * g i ∧
      (∀ i ∈ s, GlobalTheory.CompactHarm.JointTop z y κ α β (f i)) ∧
      ∀ i ∈ s, ∀ v ∈ (g i).vars, v ∉ Set.range ι := by
  intro σ σ₀ _ ι hι k l N z y κ α β P hP
  refine ⟨(slice ι P).support.map (outerEmb (ι := ι)), fun i => coefAt ι (outerBack (ι := ι) i) P,
    fun i => (outerBack (ι := ι) i).prod (fun r n => (MvPolynomial.X r.1 : MvPolynomial σ ℂ) ^ n), ?_, ?_, ?_⟩
  · rw [Finset.sum_map]
    simp only [outerBack_emb]
    exact slice_decomp hι P
  · intro i _
    exact coefAt_jointTop hι _ z y κ α β P hP
  · intro i _
    exact vars_outer_prod _
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsJointHighestWeightHarmonicSliceOuterVariables =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicMultiplicityOneCoverin =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicMultiplicityOneCoverin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueJointTop\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.Sl2NonnegWeightOfHighestWeightVector\npublic import Formalism.LocalRingCardinality.DataHost\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Formalism.LocalRingCardinality.DataTheta\nimport Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange\nimport Formalism.LocalToGlobal.Divisibility.CoefMod\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\nimport Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

open MvPolynomial GlobalTheory.Capelli GlobalTheory.Harm GlobalTheory.Harm.HighestUnique

namespace GlobalTheory.CompactHarm

theorem fst_eq_of_mixedWeight {k l p q : ℕ} (N : ℕ) (a : Fin k → ℕ) (b : Fin l → ℕ)
    (hpq : p + q ≤ N) (ha : ∀ c, 0 < a c ↔ (c : ℕ) < p) (hb : ∀ d, 0 < b d ↔ (d : ℕ) < q)
    (c : Fin k) :
    a c = if h : (c : ℕ) < N then (mixedWeight N a b ⟨c, h⟩).toNat else 0 := by
  have hac := ha c
  split_ifs with h
  · rw [mixedWeight_apply]
    simp only [c.2, dif_pos, Fin.eta]
    split_ifs with h2
    · have hb' : (0 : ℤ) ≤ (b ⟨N - 1 - c, h2⟩ : ℤ) := by positivity
      have h4 : (c : ℕ) < N := h
      by_cases hcp : (c : ℕ) < p
      · have hbc := hb ⟨N - 1 - c, h2⟩
        have : b ⟨N - 1 - c, h2⟩ = 0 := by simp only at hbc; omega
        rw [this]; omega
      · have : a c = 0 := by omega
        rw [this]; omega
    · omega
  · omega

theorem snd_eq_of_mixedWeight {k l p q : ℕ} (N : ℕ) (a : Fin k → ℕ) (b : Fin l → ℕ)
    (hpq : p + q ≤ N) (ha : ∀ c, 0 < a c ↔ (c : ℕ) < p) (hb : ∀ d, 0 < b d ↔ (d : ℕ) < q)
    (d : Fin l) :
    b d = if h : (d : ℕ) < N then (-mixedWeight N a b ⟨N - 1 - d, by omega⟩).toNat else 0 := by
  have hbd := hb d
  split_ifs with h
  · rw [mixedWeight_apply]
    have e : N - 1 - (N - 1 - (d : ℕ)) = d := by omega
    have hd : N - 1 - (N - 1 - (d : ℕ)) < l := by omega
    rw [dif_pos hd]
    have hbe : b ⟨N - 1 - (N - 1 - (d : ℕ)), hd⟩ = b d := congrArg b (Fin.ext e)
    simp only [hbe]
    split_ifs with h1
    · have ha' : (0 : ℤ) ≤ (a ⟨N - 1 - d, h1⟩ : ℤ) := by positivity
      have hac := ha ⟨N - 1 - d, h1⟩
      by_cases hdq : (d : ℕ) < q
      · have : a ⟨N - 1 - d, h1⟩ = 0 := by simp only at hac; omega
        rw [this]; omega
      · have : b d = 0 := by omega
        rw [this]; omega
    · omega
  · omega

theorem jointTop_line : ∀ {σ : Type} {k l N : ℕ} (z : Fin k × Fin N → σ) (y : Fin l × Fin N → σ),
    Function.Injective z → Function.Injective y → (∀ u w, z u ≠ y w) →
    (∀ s, (∃ u, z u = s) ∨ ∃ w, y w = s) → ∀ κ : Fin N → ℂ, ∃ Q₀ : MvPolynomial σ ℂ,
    ∀ (α : Fin k → ℂ) (β : Fin l → ℂ) (f : MvPolynomial σ ℂ),
      GlobalTheory.CompactHarm.JointTop z y κ α β f → ∃ r : ℂ, f = r • Q₀ := by
  intro σ k l N z y hz hy hzy hs κ
  classical
  by_cases hex : ∃ α β f, f ≠ 0 ∧ JointTop z y κ α β f
  · obtain ⟨α₀, β₀, f₀, hf0, hJ0⟩ := hex
    obtain ⟨a, b, p, q, hpq, hp, hq, hpa, hqb, hκ, rfl, rfl, hhom⟩ :=
      weights_of_jointTop z hz y hy hzy hs κ α₀ β₀ hf0 hJ0
    have hbij : Function.Bijective (Sum.elim z y) := by
      refine ⟨hz.sumElim hy hzy, fun s => ?_⟩
      rcases hs s with ⟨u, rfl⟩ | ⟨u, rfl⟩
      · exact ⟨.inl u, rfl⟩
      · exact ⟨.inr u, rfl⟩
    have : Finite σ := Finite.of_surjective _ hbij.2
    have := finite_homog (σ := σ) (∑ c, a c + ∑ d, b d)
    have ha : Antitone a := fun i j hij => by
      have := highest_weight_antitone (rowOp ℂ z) (rowOp_lie z hz) (homogeneousSubmodule σ ℂ _)
        (fun i j w hw => by rw [rowOp_eq_colOp]; exact colOp_homog _ _ _ hw) f₀ hhom hf0
        (fun c => a c) hJ0.2.2.1 (fun c => by simpa using hJ0.2.2.2.1 c) hij
      exact Int.ofNat_le.1 this
    have hb : Antitone b := fun i j hij => by
      have := highest_weight_antitone (rowOp ℂ y) (rowOp_lie y hy) (homogeneousSubmodule σ ℂ _)
        (fun i j w hw => by rw [rowOp_eq_colOp]; exact colOp_homog _ _ _ hw) f₀ hhom hf0
        (fun c => b c) hJ0.2.2.2.2.1 (fun c => by simpa using hJ0.2.2.2.2.2.1 c) hij
      exact Int.ofNat_le.1 this
    obtain ⟨P₀, -, -, hu⟩ := exists_unique_jointTop z hz y hy hzy hs hpq hp hq a b ha hb
      (fun c hc => by have := hpa c; omega) (fun d hd => by have := hqb d; omega)
    subst hκ
    refine ⟨P₀, fun α β f hJ => ?_⟩
    by_cases hf : f = 0
    · exact ⟨0, by simp [hf]⟩
    obtain ⟨a', b', p', q', hpq', -, -, hpa', hqb', hκ', rfl, rfl, -⟩ :=
      weights_of_jointTop z hz y hy hzy hs _ α β hf hJ
    have hw : mixedWeight N a b = mixedWeight N a' b' :=
      funext fun i => by exact_mod_cast congrFun hκ' i
    have e1 : a' = a := funext fun c => by
      rw [fst_eq_of_mixedWeight N a' b' hpq' hpa' hqb' c, fst_eq_of_mixedWeight N a b hpq hpa hqb c,
        hw]
    have e2 : b' = b := funext fun d => by
      rw [snd_eq_of_mixedWeight N a' b' hpq' hpa' hqb' d, snd_eq_of_mixedWeight N a b hpq hpa hqb d,
        hw]
    subst e1 e2
    exact hu f hJ
  · refine ⟨0, fun α β f hJ => ⟨0, ?_⟩⟩
    by_contra hf
    exact hex ⟨α, β, f, by simpa using hf, hJ⟩

end GlobalTheory.CompactHarm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicMultiplicityOneCoverin =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKType =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKType", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZRYRCover\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueJointTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

namespace GlobalTheory.JointDict
open GlobalTheory.LowestKType GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators MvPolynomial GlobalTheory.Capelli
variable {D : D7} {n m : ℕ}

theorem raiO_apply (p : ℕ) (τ : D.what₂.Tau) (i : Fin m) (j : Fin n) (Q : PolF D m n) :
    raiO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < p)) i j Q =
      if (i : ℕ) < p then X (τ, i, j) * Q else -pderiv (τ, i, j) Q := by
  unfold raiO sgn
  by_cases h : (i : ℕ) < p <;> simp [h]

theorem lowO_apply (p : ℕ) (τ : D.what₂.Tau) (i : Fin m) (j : Fin n) (Q : PolF D m n) :
    lowO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < p)) i j Q =
      if (i : ℕ) < p then pderiv (τ, i, j) Q else X (τ, i, j) * Q := by
  unfold lowO sgn
  by_cases h : (i : ℕ) < p <;> simp [h]

theorem kop_apply (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin m) (P : PolF D m n) :
    kop w τ a b P = ∑ j, raiO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < w.p τ)) a j
        (lowO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < w.p τ)) b j P) +
      if a = b then ((n : ℂ) / 2) • P else 0 := by
  unfold kop GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT
  rw [Finset.sum_eq_single a, Finset.sum_eq_single b]
  · simp only [Matrix.single_apply_same, one_smul, LinearMap.sum_apply, LinearMap.add_apply,
      Module.End.mul_apply, Finset.sum_add_distrib]
    congr 1
    split_ifs with h
    · subst h
      simp only [LinearMap.smul_apply, Module.End.one_apply, Finset.sum_const, Finset.card_univ,
        Fintype.card_fin, ← Nat.cast_smul_eq_nsmul ℂ, smul_smul]
      congr 1
      ring
    · simp
  · intro k _ hk; simp [Ne.symm hk]
  · simp
  · intro k _ hk; simp [Ne.symm hk]
  · simp

theorem sop_apply (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin n) (P : PolF D m n) :
    sop w τ a b P = ∑ i, raiO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < w.p τ)) i a
        (lowO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < w.p τ)) i b P) +
      if a = b then ((m : ℂ) / 2) • P else 0 := by
  unfold sop GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockS
  rw [Finset.sum_eq_single a, Finset.sum_eq_single b]
  · simp only [Matrix.single_apply_same, one_smul, LinearMap.sum_apply, LinearMap.add_apply,
      Module.End.mul_apply, Finset.sum_add_distrib]
    congr 1
    split_ifs with h
    · subst h
      simp only [LinearMap.smul_apply, Module.End.one_apply, Finset.sum_const, Finset.card_univ,
        Fintype.card_fin, ← Nat.cast_smul_eq_nsmul ℂ, smul_smul]
      congr 1
      ring
    · simp
  · intro k _ hk; simp [Ne.symm hk]
  · simp
  · intro k _ hk; simp [Ne.symm hk]
  · simp

end GlobalTheory.JointDict

namespace GlobalTheory.JointDict
open GlobalTheory.LowestKType GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators MvPolynomial GlobalTheory.Capelli GlobalTheory.HarmLine
variable {D : D7} {n m : ℕ}

theorem sum_split {M : Type*} [AddCommMonoid M] (m p : ℕ) (f : Fin m → M) :
    ∑ i, f i = ∑ c : Fin (min p m), f ⟨c, lt_of_lt_of_le c.2 (min_le_right _ _)⟩ +
      ∑ d : Fin (m - p), f ⟨m - 1 - d, by have := d.2; omega⟩ := by
  let g : Fin (min p m) ⊕ Fin (m - p) → Fin m := Sum.elim
    (fun c => ⟨c, lt_of_lt_of_le c.2 (min_le_right _ _)⟩) (fun d => ⟨m - 1 - d, by have := d.2; omega⟩)
  have hg : Function.Bijective g := by
    constructor
    · rintro (⟨a, ha⟩ | ⟨a, ha⟩) (⟨b, hb⟩ | ⟨b, hb⟩) h <;>
        simp only [g, Sum.elim_inl, Sum.elim_inr, Fin.mk.injEq] at h <;>
        first | (congr 1; ext; simp only; omega) | (exfalso; have := min_le_left p m; omega)
    · rintro ⟨i, hi⟩
      by_cases h : i < p
      · exact ⟨Sum.inl ⟨i, lt_min h hi⟩, rfl⟩
      · refine ⟨Sum.inr ⟨m - 1 - i, by omega⟩, ?_⟩
        simp only [g, Sum.elim_inr, Fin.mk.injEq]
        omega
  rw [← Fintype.sum_bijective g hg (f ∘ g) f (fun _ => rfl), Fintype.sum_sum_type]
  rfl

end GlobalTheory.JointDict

namespace GlobalTheory.JointDict
open GlobalTheory.LowestKType GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators MvPolynomial GlobalTheory.Capelli GlobalTheory.HarmLine
variable {D : D7} {n m : ℕ}

theorem term_lt (p : ℕ) (τ : D.what₂.Tau) (i l : Fin m) (j k : Fin n) (hi : (i : ℕ) < p) (hl : (l : ℕ) < p)
    (P : PolF D m n) :
    raiO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < p)) i j
      (lowO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < p)) l k P) =
      X (τ, i, j) * pderiv (τ, l, k) P := by
  rw [lowO_apply, raiO_apply, if_pos hi, if_pos hl]

theorem term_ge (p : ℕ) (τ : D.what₂.Tau) (i l : Fin m) (j k : Fin n) (hi : ¬ (i : ℕ) < p) (hl : ¬ (l : ℕ) < p)
    (P : PolF D m n) :
    raiO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < p)) i j
      (lowO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < p)) l k P) =
      -(X (τ, l, k) * pderiv (τ, i, j) P) - if i = l ∧ j = k then P else 0 := by
  classical
  rw [lowO_apply, raiO_apply, if_neg hi, if_neg hl, pderiv_X_mul']
  by_cases h : i = l ∧ j = k
  · obtain ⟨rfl, rfl⟩ := h; simp; ring
  · rw [if_neg h, if_neg (by rintro ⟨⟩; exact h ⟨rfl, rfl⟩)]; ring

theorem term_mix (p : ℕ) (τ : D.what₂.Tau) (i l : Fin m) (j k : Fin n) (hi : ¬ (i : ℕ) < p) (hl : (l : ℕ) < p)
    (P : PolF D m n) :
    raiO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < p)) i j
      (lowO τ (fun _ : Fin n => true) (fun k : Fin m => decide ((k : ℕ) < p)) l k P) =
      -pderiv (τ, i, j) (pderiv (τ, l, k) P) := by
  rw [lowO_apply, raiO_apply, if_neg hi, if_pos hl]

theorem sop_eq (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin n) (P : PolF D m n) :
    sop w τ a b P = mixedOp ℂ (Prod.mk τ ∘ zR m n (w.p τ)) (Prod.mk τ ∘ yR m n (w.p τ)) a b P +
      if a = b then ((m : ℂ) / 2 - ((m - w.p τ : ℕ) : ℂ)) • P else 0 := by
  rw [sop_apply, sum_split m (w.p τ), mixedOp_apply]
  rw [Finset.sum_congr rfl fun c _ => term_lt (w.p τ) τ _ _ a b
    (lt_of_lt_of_le c.2 (min_le_left _ _)) (lt_of_lt_of_le c.2 (min_le_left _ _)) P]
  rw [Finset.sum_congr rfl fun d _ => term_ge (w.p τ) τ _ _ a b
    (by have := d.2; simp only; omega) (by have := d.2; simp only; omega) P]
  simp only [Finset.sum_sub_distrib, Finset.sum_neg_distrib, Function.comp_apply, zR, yR, true_and]
  split_ifs with h
  · simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, ← Nat.cast_smul_eq_nsmul ℂ, sub_smul]
    abel
  · simp only [Finset.sum_const_zero, sub_zero, add_zero]
    abel
end GlobalTheory.JointDict

namespace GlobalTheory.JointDict
open GlobalTheory.LowestKType GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators MvPolynomial GlobalTheory.Capelli GlobalTheory.HarmLine
variable {D : D7} {n m : ℕ}

def zRow (p : ℕ) (c : Fin (min p m)) : Fin m := ⟨c, lt_of_lt_of_le c.2 (min_le_right _ _)⟩

def yRow (p : ℕ) (d : Fin (m - p)) : Fin m := ⟨m - 1 - d, by have := d.2; omega⟩

theorem zRow_lt (p : ℕ) (c : Fin (min p m)) : ((zRow p c : Fin m) : ℕ) < p :=
  lt_of_lt_of_le c.2 (min_le_left _ _)

theorem yRow_ge (p : ℕ) (d : Fin (m - p)) : ¬ ((yRow p d : Fin m) : ℕ) < p := by
  have := d.2; simp only [yRow]; omega

theorem fockTargetMatrixUnit_first_block_eq_capelli (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (c c' : Fin (min (w.p τ) m)) (P : PolF D m n) :
    kop w τ (zRow (w.p τ) c) (zRow (w.p τ) c') P =
      rowOp ℂ (Prod.mk τ ∘ zR m n (w.p τ)) c c' P + if c = c' then ((n : ℂ) / 2) • P else 0 := by
  rw [kop_apply, rowOp_apply]
  rw [Finset.sum_congr rfl fun j _ => term_lt (w.p τ) τ _ _ j j (zRow_lt _ c) (zRow_lt _ c') P]
  congr 1
  have : (zRow (w.p τ) c : Fin m) = zRow (w.p τ) c' ↔ c = c' := by
    simp only [zRow, Fin.mk.injEq, Fin.val_inj]
  simp only [this]

theorem kop_y (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (d d' : Fin (m - w.p τ)) (P : PolF D m n) :
    kop w τ (yRow (w.p τ) d') (yRow (w.p τ) d) P =
      -rowOp ℂ (Prod.mk τ ∘ yR m n (w.p τ)) d d' P - if d = d' then ((n : ℂ) / 2) • P else 0 := by
  rw [kop_apply, rowOp_apply]
  rw [Finset.sum_congr rfl fun j _ => term_ge (w.p τ) τ _ _ j j (yRow_ge _ d') (yRow_ge _ d) P]
  have : (yRow (w.p τ) d' : Fin m) = yRow (w.p τ) d ↔ d = d' := by
    have := d.2; have := d'.2
    simp only [yRow, Fin.mk.injEq]
    constructor
    · intro h; ext; omega
    · rintro rfl; rfl
  simp only [this, and_true, Finset.sum_sub_distrib, Finset.sum_neg_distrib]
  split_ifs with h
  · simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, ← Nat.cast_smul_eq_nsmul ℂ]
    have e : ((n : ℂ) • P) = ((n : ℂ) / 2) • P + ((n : ℂ) / 2) • P := by rw [← add_smul]; ring_nf
    rw [e]
    simp only [Function.comp_apply, yR, yRow]
    abel
  · simp only [Finset.sum_const_zero, sub_zero, add_zero, Function.comp_apply, yR, yRow]

theorem kop_yz (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (c : Fin (min (w.p τ) m)) (d : Fin (m - w.p τ))
    (P : PolF D m n) :
    kop w τ (yRow (w.p τ) d) (zRow (w.p τ) c) P =
      -∑ j, pderiv ((Prod.mk τ ∘ zR m n (w.p τ)) (c, j)) (pderiv ((Prod.mk τ ∘ yR m n (w.p τ)) (d, j)) P) := by
  rw [kop_apply]
  rw [Finset.sum_congr rfl fun j _ => term_mix (w.p τ) τ _ _ j j (yRow_ge _ d) (zRow_lt _ c) P]
  have hne : (yRow (w.p τ) d : Fin m) ≠ zRow (w.p τ) c := by
    intro h; have := congrArg Fin.val h; have := yRow_ge (w.p τ) d; have := zRow_lt (w.p τ) c; omega
  rw [if_neg hne, add_zero, Finset.sum_neg_distrib]
  rw [neg_inj]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [GlobalTheory.Capelli.pderiv_swap]
  rfl

end GlobalTheory.JointDict

namespace GlobalTheory.JointDict
open GlobalTheory.LowestKType GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators MvPolynomial GlobalTheory.Capelli GlobalTheory.HarmLine

theorem jointTop_of_lowestKType (D : D7) (n m : ℕ) (w : GlobalTheory.ExportSeries.Weight D n) (lam : D.what₂.Tau → Fin n → ℂ)
    (P : PolF D m n) (hH : IsHarm w P) (hN : IsNHw w lam P) (hK : IsKHw w P) (τ : D.what₂.Tau) :
    ∃ (α : Fin (min (w.p τ) m) → ℂ) (β : Fin (m - w.p τ) → ℂ),
      GlobalTheory.CompactHarm.JointTop (Prod.mk τ ∘ zR m n (w.p τ)) (Prod.mk τ ∘ yR m n (w.p τ))
        (fun a => lam τ a - (m : ℂ) / 2 + ((m - w.p τ : ℕ) : ℂ)) α β P := by
  obtain ⟨e, he⟩ : ∃ e : Fin m → ℂ, ∀ a, kop w τ a a P = e a • P :=
    ⟨fun a => (hK.2 τ a).choose, fun a => (hK.2 τ a).choose_spec⟩
  refine ⟨fun c => e (zRow (w.p τ) c) - (n : ℂ) / 2, fun d => -e (yRow (w.p τ) d) - (n : ℂ) / 2,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro i j hij
    have h := hN.1 τ i j hij
    rw [sop_eq, if_neg hij.ne, add_zero] at h
    exact h
  · intro i
    have h := hN.2 τ i
    rw [sop_eq, if_pos rfl] at h
    rw [eq_sub_of_add_eq h, ← sub_smul]
    congr 1
    ring
  · intro c c' hcc
    have h := hK.1 τ (zRow _ c) (zRow _ c') (iff_of_true (zRow_lt _ c) (zRow_lt _ c'))
      (by rw [Fin.lt_def] at hcc ⊢; exact hcc)
    rw [fockTargetMatrixUnit_first_block_eq_capelli, if_neg hcc.ne, add_zero] at h
    exact h
  · intro c
    have h := he (zRow _ c)
    rw [fockTargetMatrixUnit_first_block_eq_capelli, if_pos rfl] at h
    rw [eq_sub_of_add_eq h, ← sub_smul]
  · intro d d' hdd
    have h := hK.1 τ (yRow _ d') (yRow _ d) (iff_of_false (yRow_ge _ d') (yRow_ge _ d))
      (by have := d.2; have := d'.2; rw [Fin.lt_def] at hdd ⊢; simp only [yRow]; omega)
    rw [kop_y, if_neg hdd.ne, sub_zero, neg_eq_zero] at h
    exact h
  · intro d
    have h := he (yRow _ d)
    rw [kop_y, if_pos rfl] at h
    have h2 : rowOp ℂ (Prod.mk τ ∘ yR m n (w.p τ)) d d P = -(e (yRow (w.p τ) d) • P) - ((n : ℂ) / 2) • P := by
      rw [← h]; abel
    rw [h2, sub_smul, neg_smul]
  · intro c d
    have h := hH τ (yRow _ d) (zRow _ c) (not_lt.1 (yRow_ge _ d)) (zRow_lt _ c)
    rw [kop_yz, neg_eq_zero] at h
    exact h

end GlobalTheory.JointDict
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKType =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKTypeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKTypeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZRYRCover\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueJointTop\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKType\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKTypeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueJointTop\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsJointHighestWeightHarmonicSliceOuterVariables\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicMultiplicityOneCoverin\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHighestWeightHarmonicOfFockLowestKTypeStatement\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

noncomputable section

namespace GlobalTheory.HarmLine

theorem loc_jointTop : ∀ {σ : Type} [DecidableEq σ] {k l N : ℕ} (z : Fin k × Fin N → σ) (y : Fin l × Fin N → σ) (κ : Fin N → ℂ) (α : Fin k → ℂ) (β : Fin l → ℂ) (G P : MvPolynomial σ ℂ), G ≠ 0 → (∀ v ∈ G.vars, (∀ u, z u ≠ v) ∧ ∀ u, y u ≠ v) → GlobalTheory.CompactHarm.JointTop z y κ α β (G * P) → GlobalTheory.CompactHarm.JointTop z y κ α β P := by
  intro σ _ k l N z y κ α β G P hG hGv hJ
  have hd : ∀ u, u ∉ G.vars → ∀ Q : MvPolynomial σ ℂ,
      MvPolynomial.pderiv u (G * Q) = G * MvPolynomial.pderiv u Q := by
    intro u hu Q
    rw [Derivation.leibniz, MvPolynomial.pderiv_eq_zero_of_notMem_vars hu, smul_zero, add_zero, smul_eq_mul]
  have hz : ∀ c Q, MvPolynomial.pderiv (z c) (G * Q) = G * MvPolynomial.pderiv (z c) Q :=
    fun c Q => hd _ (fun h => (hGv _ h).1 c rfl) Q
  have hy : ∀ c Q, MvPolynomial.pderiv (y c) (G * Q) = G * MvPolynomial.pderiv (y c) Q :=
    fun c Q => hd _ (fun h => (hGv _ h).2 c rfl) Q
  have hmix : ∀ i j, GlobalTheory.Capelli.mixedOp ℂ z y i j (G * P) = G * GlobalTheory.Capelli.mixedOp ℂ z y i j P := by
    intro i j
    rw [GlobalTheory.Capelli.mixedOp_apply, GlobalTheory.Capelli.mixedOp_apply, mul_sub, Finset.mul_sum, Finset.mul_sum]
    simp only [hz, hy]
    exact congrArg₂ (· - ·) (Finset.sum_congr rfl fun _ _ => by ring) (Finset.sum_congr rfl fun _ _ => by ring)
  have hrz : ∀ c c', GlobalTheory.Capelli.rowOp ℂ z c c' (G * P) = G * GlobalTheory.Capelli.rowOp ℂ z c c' P := by
    intro c c'
    simp only [GlobalTheory.Capelli.rowOp_apply, hz, Finset.mul_sum]
    exact Finset.sum_congr rfl fun _ _ => by ring
  have hry : ∀ c c', GlobalTheory.Capelli.rowOp ℂ y c c' (G * P) = G * GlobalTheory.Capelli.rowOp ℂ y c c' P := by
    intro c c'
    simp only [GlobalTheory.Capelli.rowOp_apply, hy, Finset.mul_sum]
    exact Finset.sum_congr rfl fun _ _ => by ring
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := hJ
  refine ⟨fun i j hij => ?_, fun i => ?_, fun c c' h => ?_, fun c => ?_, fun d d' h => ?_, fun d => ?_,
    fun c d => ?_⟩
  · have := h1 i j hij
    rw [hmix] at this
    exact (mul_eq_zero.1 this).resolve_left hG
  · have := h2 i
    rw [hmix, ← mul_smul_comm] at this
    exact mul_left_cancel₀ hG this
  · have := h3 c c' h
    rw [hrz] at this
    exact (mul_eq_zero.1 this).resolve_left hG
  · have := h4 c
    rw [hrz, ← mul_smul_comm] at this
    exact mul_left_cancel₀ hG this
  · have := h5 d d' h
    rw [hry] at this
    exact (mul_eq_zero.1 this).resolve_left hG
  · have := h6 d
    rw [hry, ← mul_smul_comm] at this
    exact mul_left_cancel₀ hG this
  · have := h7 c d
    simp only [hy, hz, ← Finset.mul_sum] at this
    exact (mul_eq_zero.1 this).resolve_left hG

theorem joint_line : ∀ (D : D7) (n m : ℕ) (w : GlobalTheory.ExportSeries.Weight D n) (lam : D.what₂.Tau → Fin n → ℂ) (P P' : PolF D m n), P ≠ 0 → GlobalTheory.LowestKType.IsHarm w P → GlobalTheory.LowestKType.IsHarm w P' → GlobalTheory.LowestKType.IsNHw w lam P → GlobalTheory.LowestKType.IsNHw w lam P' → GlobalTheory.LowestKType.IsKHw w P → GlobalTheory.LowestKType.IsKHw w P' → ∃ c : ℂ, P' = c • P := by
  intro D n m w lam P P' hP0 hH hH' hN hN' hK hK'
  classical
  set κ : D.what₂.Tau → Fin n → ℂ := fun τ a => lam τ a - (m : ℂ) / 2 + ((m - w.p τ : ℕ) : ℂ) with hκ
  have hJ := _root_.GlobalTheory.JointDict.jointTop_of_lowestKType D n m w lam P hH hN hK
  have hJ' := _root_.GlobalTheory.JointDict.jointTop_of_lowestKType D n m w lam P' hH' hN' hK'
  have hU : ∀ τ : D.what₂.Tau, ∃ Q₀ : MvPolynomial (Fin m × Fin n) ℂ, ∀ α β f,
      GlobalTheory.CompactHarm.JointTop (GlobalTheory.HarmLine.zR m n (w.p τ)) (GlobalTheory.HarmLine.yR m n (w.p τ)) (κ τ) α β f →
        ∃ r : ℂ, f = r • Q₀ := fun τ =>
    _root_.GlobalTheory.CompactHarm.jointTop_line _ _ (GlobalTheory.HarmLine.zR_inj m n (w.p τ)) (GlobalTheory.HarmLine.yR_inj m n (w.p τ))
      (GlobalTheory.HarmLine.zR_ne_yR m n (w.p τ)) (GlobalTheory.HarmLine.zR_yR_cover m n (w.p τ)) (κ τ)
  choose Q₀ hQ₀ using hU
  let Q : D.what₂.Tau → PolF D m n := fun τ => MvPolynomial.rename (Prod.mk τ) (Q₀ τ)
  have hfac : ∀ (τ : D.what₂.Tau) (P : PolF D m n) α β,
      GlobalTheory.CompactHarm.JointTop (Prod.mk τ ∘ GlobalTheory.HarmLine.zR m n (w.p τ))
        (Prod.mk τ ∘ GlobalTheory.HarmLine.yR m n (w.p τ)) (κ τ) α β P →
      ∃ R : PolF D m n, P = Q τ * R ∧ ∀ v ∈ R.vars, v.1 ≠ τ := by
    intro τ P α β h
    obtain ⟨s, f, g, hPs, hf, hg⟩ := _root_.GlobalTheory.jointTop_slice (Prod.mk τ) (fun a b h => (Prod.mk.inj h).2) _ _ _ _ _ P h
    choose! r hr using fun i (hi : i ∈ s) => hQ₀ τ α β (f i) (hf i hi)
    refine ⟨∑ i ∈ s, r i • g i, ?_, ?_⟩
    · rw [hPs, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i hi => ?_
      rw [hr i hi, map_smul, smul_mul_assoc, mul_smul_comm]
    · intro v hv hvτ
      obtain ⟨i, hi, hvi⟩ := Finset.mem_biUnion.1 (MvPolynomial.vars_sum_subset _ _ hv)
      have hvi' : v ∈ (g i).vars := by
        rw [MvPolynomial.smul_eq_C_mul] at hvi
        have := MvPolynomial.vars_mul (MvPolynomial.C (r i)) (g i) hvi
        simpa using this
      exact hg i hi v hvi' ⟨v.2, by rw [← hvτ]⟩
  have hQne : ∀ τ, Q τ ≠ 0 := by
    intro τ h0
    obtain ⟨α, β, hτ⟩ := hJ τ
    obtain ⟨R, hR, -⟩ := hfac τ P α β hτ
    exact hP0 (by rw [hR, h0, zero_mul])
  have hE : ∀ s : Finset D.what₂.Tau, ∀ P : PolF D m n,
      (∀ τ ∈ s, ∃ α β, GlobalTheory.CompactHarm.JointTop (Prod.mk τ ∘ GlobalTheory.HarmLine.zR m n (w.p τ))
        (Prod.mk τ ∘ GlobalTheory.HarmLine.yR m n (w.p τ)) (κ τ) α β P) →
      ∃ R : PolF D m n, P = (∏ τ ∈ s, Q τ) * R ∧ ∀ v ∈ R.vars, v.1 ∉ s := by
    intro s
    induction s using Finset.induction_on with
    | empty => intro P _; exact ⟨P, by simp, by simp⟩
    | insert τ₀ s hτ₀ ih =>
      intro P hPs
      obtain ⟨R, hPR, hRv⟩ := ih P (fun τ hτ => hPs τ (Finset.mem_insert_of_mem hτ))
      obtain ⟨α, β, hJ0⟩ := hPs τ₀ (Finset.mem_insert_self _ _)
      have hG0 : (∏ τ ∈ s, Q τ) ≠ 0 := Finset.prod_ne_zero_iff.2 fun τ _ => hQne τ
      have hGv : ∀ v ∈ (∏ τ ∈ s, Q τ).vars, v.1 ∈ s := by
        intro v hv
        obtain ⟨τ, hτ, hv'⟩ := Finset.mem_biUnion.1 (MvPolynomial.vars_prod _ hv)
        have := MvPolynomial.vars_rename (Prod.mk τ) (Q₀ τ) hv'
        obtain ⟨u, -, rfl⟩ := Finset.mem_image.1 this
        exact hτ
      have hJR := loc_jointTop _ _ _ α β _ R hG0 (fun v hv =>
        ⟨fun u h => hτ₀ (by have := hGv v hv; rw [← h] at this; simpa using this),
         fun u h => hτ₀ (by have := hGv v hv; rw [← h] at this; simpa using this)⟩) (hPR ▸ hJ0)
      obtain ⟨R', hRR', hR'v⟩ := hfac τ₀ R α β hJR
      refine ⟨R', by rw [hPR, hRR', Finset.prod_insert hτ₀]; ring, ?_⟩
      intro v hv
      rw [Finset.mem_insert, not_or]
      refine ⟨fun h => hR'v v hv h, hRv v ?_⟩
      have hR'0 : R' ≠ 0 := by rintro rfl; simp at hv
      rw [hRR', MvPolynomial.mem_vars_iff_degreeOf_ne_zero, MvPolynomial.degreeOf_mul_eq (hQne τ₀) hR'0]
      rw [MvPolynomial.mem_vars_iff_degreeOf_ne_zero] at hv
      omega
  obtain ⟨R, hR, hRv⟩ := hE Finset.univ P (fun τ _ => hJ τ)
  obtain ⟨R', hR', hR'v⟩ := hE Finset.univ P' (fun τ _ => hJ' τ)
  have hc : ∀ R : PolF D m n, (∀ v ∈ R.vars, v.1 ∉ (Finset.univ : Finset D.what₂.Tau)) →
      R = MvPolynomial.C (R.coeff 0) := fun R h =>
    MvPolynomial.vars_eq_empty_iff_eq_C.1
      (Finset.eq_empty_of_forall_notMem fun v hv => h v hv (Finset.mem_univ _))
  rw [hc R hRv] at hR
  rw [hc R' hR'v] at hR'
  have hc0 : R.coeff 0 ≠ 0 := by
    intro h0; apply hP0; rw [hR, h0]; simp
  refine ⟨R'.coeff 0 / R.coeff 0, ?_⟩
  rw [hR', hR, MvPolynomial.smul_eq_C_mul, ← mul_assoc, mul_comm (MvPolynomial.C _) (∏ τ, Q τ), mul_assoc,
    ← MvPolynomial.C_mul, div_mul_cancel₀ _ hc0]

end GlobalTheory.HarmLine

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOneStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOneStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOneStatement =====
