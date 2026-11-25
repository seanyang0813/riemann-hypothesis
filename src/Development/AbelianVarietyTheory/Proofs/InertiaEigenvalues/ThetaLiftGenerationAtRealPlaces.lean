module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx
public import Formalism.LocalToGlobal.IndefiniteReal.LinksStage
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.SqNormIntegralFundamentalDomainEqL2NormSq
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DownwardThetaIntegralSobolevContinuous
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CmHostImaginaryGeneratorNeZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchurFiniteHeisenbergFockVacuumThetaFunctions
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LengthPosOfPosDef
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SobolevBoundedThetaFormMatrixCoeffSmooth
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DRhoSumAndSobOLe
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LowVanishFockOfLowVanish
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaVectorFockVacuum
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumHeisOPureTensorO
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.WeilDatumRealDerivativeFockVectorsAll
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftVanishesSingleCoefficientOfKernelKills
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealFockThetaLiftVanishingOfGeneratingVectorsStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FinTensMemLatO
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisThetaLaws
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulEqZeroOfInf
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.LocalToGlobal.IndefiniteReal.PartsOrth
import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.EqZeroOfLintegralEqZero
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.HeisenbergOrientedFiniteFixesFockPolynomialVecto
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FockVectorsOverVacuaDenseThetaFunctions
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsFockVacAtOfIsThetaAt
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.OmPureTensorOOfFinite

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeisenbergCombinationProjectsOntoVacuum, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.L2OHeisOEq, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaFunctionFixedFinitePartSobolevLimitFockVect, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftGenerationAtRealPlaces

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeisenbergCombinationProjectsOntoVacuum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeisenbergCombinationProjectsOntoVacuum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.SqNormIntegralFundamentalDomainEqL2NormSq\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FinTensMemLatO\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CmHostImaginaryGeneratorNeZero\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisThetaLaws\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchurFiniteHeisenbergFockVacuumThetaFunctions\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LengthPosOfPosDef\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

namespace GlobalTheory.VacDensity

theorem burn_span : ∀ {X ι : Type} [AddCommGroup X] [Module ℂ X] (M : Submodule ℂ X), FiniteDimensional ℂ M →
    ∀ (ρ : ι → X →ₗ[ℂ] X), (∀ i, ∀ x ∈ M, ρ i x ∈ M) → (∃ i, ∀ x ∈ M, ρ i x = x) →
    (∀ i j, ∃ (a : ℂ) (k : ι), ∀ x ∈ M, ρ i (ρ j x) = a • ρ k x) →
    (∀ W : Submodule ℂ X, W ≤ M → (∀ i, ∀ x ∈ W, ρ i x ∈ W) → W = ⊥ ∨ W = M) →
    ∀ P : X →ₗ[ℂ] X, (∀ x ∈ M, P x ∈ M) → ∃ c : ι →₀ ℂ, ∀ x ∈ M, (c.sum fun i z => z • ρ i x) = P x := by
  intro X ι _ _ M hfd ρ hst hid hmul hirr P hP
  classical
  by_cases hM : M = ⊥
  · refine ⟨0, fun x hx => ?_⟩
    rw [hM, Submodule.mem_bot] at hx
    subst hx
    simp
  let r : ι → Module.End ℂ M := fun i => (ρ i).restrict (hst i)
  have hr : ∀ i (x : M), (r i x : X) = ρ i x := fun _ _ => rfl
  let p : Submodule ℂ (Module.End ℂ M) := Submodule.span ℂ (Set.range r)
  have h1 : (1 : Module.End ℂ M) ∈ p := by
    obtain ⟨i, hi⟩ := hid
    have : r i = 1 := LinearMap.ext fun x => Subtype.ext (hi x x.2)
    rw [← this]
    exact Submodule.subset_span ⟨i, rfl⟩
  have hm : ∀ x y, x ∈ p → y ∈ p → x * y ∈ p := by
    intro x y hx hy
    have hle : p * p ≤ p := by
      rw [Submodule.span_mul_span, Submodule.span_le]
      rintro _ ⟨_, ⟨i, rfl⟩, _, ⟨j, rfl⟩, rfl⟩
      obtain ⟨a, k, hk⟩ := hmul i j
      have : r i * r j = a • r k := LinearMap.ext fun x => Subtype.ext (hk x x.2)
      show r i * r j ∈ p
      rw [this]
      exact p.smul_mem a (Submodule.subset_span ⟨k, rfl⟩)
    exact hle (Submodule.mul_mem_mul hx hy)
  let A : Subalgebra ℂ (Module.End ℂ M) := p.toSubalgebra h1 hm
  have hntM : Nontrivial M := Submodule.nontrivial_iff_ne_bot.2 hM
  haveI : IsSimpleModule A M := by
    refine { toNontrivial := ?_, eq_bot_or_eq_top := fun N => ?_ }
    · obtain ⟨x, hx⟩ := exists_ne (0 : M)
      refine ⟨⟨⊥, ⊤, fun h => hx ?_⟩⟩
      have : x ∈ (⊤ : Submodule A M) := Submodule.mem_top
      rw [← h] at this
      exact (Submodule.mem_bot A).1 this
    · let W : Submodule ℂ X := (N.restrictScalars ℂ).map M.subtype
      have hWM : W ≤ M := by
        rintro _ ⟨m, -, rfl⟩
        exact m.2
      have hWst : ∀ i, ∀ x ∈ W, ρ i x ∈ W := by
        rintro i _ ⟨m, hm, rfl⟩
        refine ⟨r i m, ?_, rfl⟩
        have hri : r i ∈ A := Submodule.subset_span ⟨i, rfl⟩
        exact N.smul_mem (⟨r i, hri⟩ : A) hm
      rcases hirr W hWM hWst with h | h
      · left
        refine eq_bot_iff.2 fun m hm => (Submodule.mem_bot A).2 ?_
        have : (m : X) ∈ W := ⟨m, hm, rfl⟩
        rw [h, Submodule.mem_bot] at this
        exact Subtype.ext this
      · right
        refine eq_top_iff.2 fun m _ => ?_
        have : (m : X) ∈ W := by rw [h]; exact m.2
        obtain ⟨m', hm', e⟩ := this
        rwa [Subtype.ext e] at hm'
  have hscal : ∀ φ : Module.End A M, ∃ c : ℂ, ∀ m, φ m = c • m := by
    intro φ
    obtain ⟨c, hc⟩ := (IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed (A := A) (V := M) ℂ).2 φ
    exact ⟨c, fun m => by rw [← hc]; rfl⟩
  let F : Module.End (Module.End A M) M :=
    { toFun := fun m => ⟨P m, hP m m.2⟩
      map_add' := fun x y => Subtype.ext (by simp)
      map_smul' := fun φ m => by
        obtain ⟨c, hc⟩ := hscal φ
        apply Subtype.ext
        simp only [Module.End.smul_def, RingHom.id_apply, hc, Submodule.coe_smul, map_smul] }
  let b := Module.finBasis ℂ M
  obtain ⟨a, ha⟩ := jacobson_density F (Finset.univ.image b)
  have hPa : (a : Module.End ℂ M) = P.restrict hP := by
    refine b.ext fun i => ?_
    have := ha (b i) (Finset.mem_image_of_mem _ (Finset.mem_univ i))
    exact this.symm
  have hap : (a : Module.End ℂ M) ∈ p := a.2
  obtain ⟨c, hc⟩ := (Finsupp.mem_span_range_iff_exists_finsupp).1 hap
  refine ⟨c, fun x hx => ?_⟩
  have e := congrArg (fun e : Module.End ℂ M => (e ⟨x, hx⟩ : X)) (hc.trans hPa)
  simp only [Finsupp.sum, LinearMap.sum_apply, LinearMap.smul_apply, Submodule.coe_sum,
    Submodule.coe_smul] at e
  simp only [Finsupp.sum]
  exact e

theorem eq_of_orth : ∀ {X : Type} [AddCommGroup X] [Module ℂ X] (M W : Submodule ℂ X), FiniteDimensional ℂ M → W ≤ M →
    ∀ B : X → X → ℂ, (∀ (a : ℂ) (f f' g : X), f ∈ M → f' ∈ M → g ∈ M → B (a • f + f') g = star a * B f g + B f' g) →
    (∀ (a : ℂ) (f g g' : X), f ∈ M → g ∈ M → g' ∈ M → B f (a • g + g') = a * B f g + B f g') →
    (∀ f ∈ M, (∀ g ∈ W, B f g = 0) → f = 0) → W = M := by
  intro X _ _ M W hfd hWM B hl hr horth
  classical
  haveI : FiniteDimensional ℂ W := Submodule.finiteDimensional_of_le hWM
  have hl0 : ∀ g ∈ M, B 0 g = 0 := fun g hg => by
    have := hl 1 0 0 g M.zero_mem M.zero_mem hg
    simp only [smul_zero, add_zero, star_one, one_mul] at this
    linear_combination -this
  have hr0 : ∀ f ∈ M, B f 0 = 0 := fun f hf => by
    have := hr 1 f 0 0 hf M.zero_mem M.zero_mem
    simp only [smul_zero, add_zero, one_mul] at this
    linear_combination -this
  let b := Module.finBasis ℂ W
  let L : M →ₗ[ℂ] (Fin (Module.finrank ℂ W) → ℂ) :=
    { toFun := fun f i => star (B f (b i))
      map_add' := fun f f' => funext fun i => by
        have := hl 1 f f' (b i) f.2 f'.2 (hWM (b i).2)
        simp only [one_smul, star_one, one_mul] at this
        simp [this]
      map_smul' := fun a f => funext fun i => by
        have := hl a f 0 (b i) f.2 M.zero_mem (hWM (b i).2)
        rw [add_zero, hl0 _ (hWM (b i).2), add_zero] at this
        simp [this] }
  have hinj : Function.Injective L := by
    refine (injective_iff_map_eq_zero L).2 fun f hf => Subtype.ext (horth f f.2 fun g hg => ?_)
    have hbi : ∀ i, B f (b i) = 0 := fun i => by
      have := congrFun hf i
      simpa [L] using this
    let K : Submodule ℂ X :=
      { carrier := {g | g ∈ M ∧ B f g = 0}
        add_mem' := fun {g g'} hg hg' => ⟨M.add_mem hg.1 hg'.1, by
          have := hr 1 f g g' f.2 hg.1 hg'.1
          simp only [one_smul, one_mul] at this
          rw [this, hg.2, hg'.2, add_zero]⟩
        zero_mem' := ⟨M.zero_mem, hr0 f f.2⟩
        smul_mem' := fun a g hg => ⟨M.smul_mem a hg.1, by
          have := hr a f g 0 f.2 hg.1 M.zero_mem
          rw [add_zero, hr0 f f.2, add_zero] at this
          rw [this, hg.2, mul_zero]⟩ }
    have hsum := b.sum_repr ⟨g, hg⟩
    have hgK : (⟨g, hg⟩ : W) = ∑ i, (b.repr ⟨g, hg⟩ i) • b i := hsum.symm
    have : g ∈ K := by
      have e := congrArg Subtype.val hgK
      simp only [Submodule.coe_sum, Submodule.coe_smul] at e
      rw [e]
      exact K.sum_mem fun i _ => K.smul_mem _ ⟨hWM (b i).2, hbi i⟩
    exact this.2
  have hle : Module.finrank ℂ M ≤ Module.finrank ℂ W := by
    have := LinearMap.finrank_le_finrank_of_injective hinj
    simpa using this
  exact Submodule.eq_of_le_of_finrank_le hWM hle

end GlobalTheory.VacDensity

theorem GlobalTheory.VacDensity.proj : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (S T : HSp D), IsStdChar D ψ (-1) → IsInfFam θ → ∀ (sS : D.what₂.Tau → Matrix (Fin S.rank) (Fin S.rank) ℂ) (sT : D.what₂.Tau → Matrix (Fin T.rank) (Fin T.rank) ℂ), (∀ τ, IsCartanInv (gramAt D S τ) (sS τ)) → (∀ τ, IsCartanInv (gramAt D T τ) (sT τ)) → ∀ v : WO S T → ℂ, IsThetaFunO ψ S T v → (∀ τ, IsFockVacAt (heisO ψ S T) θ τ (cplxO (sS τ) (sT τ)) v) → ∀ U : AddSubgroup (WO S T), IsOpen (U : Set (WO S T)) → ∃ c : WO S T →₀ ℂ, (∀ u ∈ c.support, u.map (infPart D) = 0) ∧ (c.sum fun u z => z • heisO ψ S T u v) = v ∧ ∀ x, x ∈ GlobalTheory.Size.thetaLevel ψ S T U → (∀ τ, IsFockVacAt (heisO ψ S T) θ τ (cplxO (sS τ) (sT τ)) x) → ∃ a : ℂ, (c.sum fun u z => z • heisO ψ S T u x) = a • v := by
  intro D ψ θ S T hψ hθ sS sT hcS hcT v hv hvac U hU
  classical
  by_cases hv0 : v = 0
  · refine ⟨0, by simp, by simp [hv0], fun x _ _ => ⟨0, by simp⟩⟩
  obtain ⟨U₀, o₀, l₀⟩ := hv.level
  set U' : AddSubgroup (WO S T) := U ⊓ U₀ with hU'def
  have hU' : IsOpen (U' : Set (WO S T)) := by rw [hU'def, AddSubgroup.coe_inf]; exact hU.inter o₀
  set M := GlobalTheory.VacSchurFin.vacSub hψ hθ sS sT U' with hMdef
  have hfd := GlobalTheory.VacSchurFin.fd_vacSub hψ hθ sS sT hcS hcT U' hU'
  have hvM : v ∈ M := GlobalTheory.VacSchurFin.mem_vacSub.2
    ⟨hv, fun u hu h => l₀ u (AddSubgroup.mem_inf.1 hu).2 h, hvac⟩
  have hxM : ∀ x, x ∈ GlobalTheory.Size.thetaLevel ψ S T U → (∀ τ, IsFockVacAt (heisO ψ S T) θ τ (cplxO (sS τ) (sT τ)) x) →
      x ∈ M := fun x hx hxv => GlobalTheory.VacSchurFin.mem_vacSub.2
    ⟨hx.1, fun u hu h => hx.2 u (AddSubgroup.mem_inf.1 hu).1 h, hxv⟩
  let N : Set (WO S T) := {w | w.map (infPart D) = 0 ∧ ∀ u ∈ U', u.map (infPart D) = 0 → ψ (symplO S T u w) = 1}
  let ρ : N → (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ) := fun i => GlobalTheory.SplitScalar.heisL ψ S T i.1
  have laws := GlobalTheory.HeisThetaLaws.heis_theta_laws D ψ hψ S T
  have hst : ∀ w ∈ N, ∀ f ∈ M, heisO ψ S T w f ∈ M := by
    rintro w ⟨hw, hA⟩ f hf
    obtain ⟨hfT, hfL, hfV⟩ := GlobalTheory.VacSchurFin.mem_vacSub.1 hf
    exact GlobalTheory.VacSchurFin.mem_vacSub.2 ⟨laws.1 w f hfT, fun u hu h0 => by
      rw [GlobalTheory.SplitScalar.heisO_comm, hA u hu h0, one_smul, hfL u hu h0], GlobalTheory.VacSchurFin.vac_heisO_fin hθ hw hfV⟩
  have h0N : (0 : WO S T) ∈ N := ⟨by ext i j; show infPart D (0 : AE D) = 0; exact RingHom.map_zero _, fun u _ _ => by
    rw [GlobalTheory.SplitScalar.symplO_zero_right, AddChar.map_zero_eq_one]⟩
  have haddN : ∀ w ∈ N, ∀ w' ∈ N, w + w' ∈ N := by
    rintro w ⟨hw, hA⟩ w' ⟨hw', hA'⟩
    refine ⟨?_, fun u hu h0 => ?_⟩
    · ext i j
      have h1 : infPart D (w i j) = 0 := congrFun (congrFun hw i) j
      have h2 : infPart D (w' i j) = 0 := congrFun (congrFun hw' i) j
      show infPart D (w i j + w' i j) = 0
      rw [RingHom.map_add (f := _), h1, h2, add_zero]
    · rw [GlobalTheory.LatVac.symplO_add_right, AddChar.map_add_eq_mul, hA u hu h0, hA' u hu h0, one_mul]
  obtain ⟨ℓ, hℓ⟩ : ∃ ℓ : Module.Dual ℂ (WO S T → ℂ), ℓ v = 1 := by
    obtain ⟨f, hf⟩ : ∃ f : Module.Dual ℂ (WO S T → ℂ), f v ≠ 0 := by
      by_contra h
      push_neg at h
      exact hv0 ((Module.forall_dual_apply_eq_zero_iff ℂ v).1 h)
    exact ⟨(f v)⁻¹ • f, by rw [LinearMap.smul_apply, smul_eq_mul, inv_mul_cancel₀ hf]⟩
  let P : (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ) := ℓ.smulRight v
  have hirr : ∀ W : Submodule ℂ (WO S T → ℂ), W ≤ M → (∀ i, ∀ x ∈ W, ρ i x ∈ W) → W = ⊥ ∨ W = M := by
    intro W hWM hWst
    by_cases hW : W = ⊥
    · exact Or.inl hW
    right
    obtain ⟨g, hgW, hg0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hW
    obtain ⟨vol⟩ := GlobalTheory.Unf.Inhab.nonempty_volM D T.rank S.rank
    have hcv : IsCovolOne (ratL T S) vol.μ vol.𝓕 := vol.covol
    refine GlobalTheory.VacDensity.eq_of_orth M W hfd hWM (GlobalTheory.RawLift.thetaIP vol.μ vol.𝓕)
      (fun a f f' g hf hf' hg => GlobalTheory.VacSchurFin.thetaInner_left hψ hcv a (GlobalTheory.VacSchurFin.mem_vacSub.1 hf).1
        (GlobalTheory.VacSchurFin.mem_vacSub.1 hf').1 (GlobalTheory.VacSchurFin.mem_vacSub.1 hg).1)
      (fun a f g g' hf hg hg' => GlobalTheory.VacSchurFin.thetaInner_right hψ hcv a (GlobalTheory.VacSchurFin.mem_vacSub.1 hf).1
        (GlobalTheory.VacSchurFin.mem_vacSub.1 hg).1 (GlobalTheory.VacSchurFin.mem_vacSub.1 hg').1) ?_
    intro f hf hfo
    obtain ⟨hfT, hfL, hfV⟩ := GlobalTheory.VacSchurFin.mem_vacSub.1 hf
    obtain ⟨hgT, hgL, hgV⟩ := GlobalTheory.VacSchurFin.mem_vacSub.1 (hWM hgW)
    refine (GlobalTheory.VacSchurFin.irr_vac D ψ θ S T hψ hθ sS sT hcS hcT vol.μ vol.𝓕 hcv f g hfT hgT hfV hgV
      fun w hw => ?_).resolve_right hg0
    by_cases hA : ∀ u ∈ U', u.map (infPart D) = 0 → ψ (symplO S T u w) = 1
    · exact hfo _ (hWst ⟨w, hw, hA⟩ g hgW)
    · push_neg at hA
      obtain ⟨u, hu, h0, hne1⟩ := hA
      have hwg : IsThetaFunO ψ S T (heisO ψ S T w g) := laws.1 w g hgT
      have e1 : GlobalTheory.RawLift.thetaIP vol.μ vol.𝓕 f (heisO ψ S T w g) =
          GlobalTheory.RawLift.thetaIP vol.μ vol.𝓕 (heisO ψ S T u f) (heisO ψ S T u (heisO ψ S T w g)) :=
        (GlobalTheory.VacSchurFin.thetaInner_heisenberg hψ hcv hfT hwg u).symm
      rw [hfL u hu h0, GlobalTheory.SplitScalar.heisO_comm, hgL u hu h0, GlobalTheory.VacSchurFin.thetaInner_smul_right] at e1
      have : (1 - ψ (symplO S T u w)) * GlobalTheory.RawLift.thetaIP vol.μ vol.𝓕 f (heisO ψ S T w g) = 0 := by
        linear_combination e1
      exact (mul_eq_zero.1 this).resolve_left (sub_ne_zero.2 (Ne.symm hne1))
  obtain ⟨c, hc⟩ := GlobalTheory.VacDensity.burn_span M hfd ρ (fun i x hx => hst i.1 i.2 x hx)
    ⟨⟨0, h0N⟩, fun x _ => GlobalTheory.SplitScalar.heisO_zero ψ S T x⟩
    (fun i j => ⟨ψ (symplOH S T i.1 j.1), ⟨i.1 + j.1, haddN i.1 i.2 j.1 j.2⟩, fun x _ =>
      GlobalTheory.SplitScalar.heisO_heisO ψ S T i.1 j.1 x⟩) hirr P (fun x _ => M.smul_mem _ hvM)
  have hsum : ∀ x, ((c.mapDomain Subtype.val).sum fun u z => z • heisO ψ S T u x) = c.sum fun i z => z • ρ i x :=
    fun x => Finsupp.sum_mapDomain_index (fun _ => zero_smul ℂ _) (fun _ _ _ => add_smul _ _ _)
  refine ⟨c.mapDomain Subtype.val, fun u hu => ?_, ?_, fun x hx hxv => ⟨ℓ x, ?_⟩⟩
  · obtain ⟨i, -, rfl⟩ := Finset.mem_image.1 (Finsupp.mapDomain_support hu)
    exact i.2.1
  · rw [hsum, hc v hvM]
    simp [P, hℓ]
  · rw [hsum, hc x (hxM x hx hxv)]
    simp [P]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeisenbergCombinationProjectsOntoVacuum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.L2OHeisOEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.L2OHeisOEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.SqNormIntegralFundamentalDomainEqL2NormSq\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulEqZeroOfInf\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SobolevBoundedThetaFormMatrixCoeffSmooth\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DRhoSumAndSobOLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\nimport Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

noncomputable section

namespace GlobalTheory.HeisTranslateBound

open GlobalTheory.Size GlobalTheory.OrientedHeis

theorem l2O_heisO_eq {D : D7} {ψ : AddChar (AF D.host.F) ℂ} {θ : InfFam D} {S T : HSp D}
    (hψ : IsStdChar D ψ (-1)) (hθ : IsInfFam θ) {μ : Measure (WO S T)} {𝓕 : Set (WO S T)}
    (hμ : IsCovolOne (ratL T S) μ 𝓕) {g : WO S T → ℂ} (hg : IsThetaFunO ψ S T g) (u : WO S T) :
    l2O μ 𝓕 (heisO ψ S T u g) = l2O μ 𝓕 g := by
  have hg' := GlobalTheory.Unf.MatCoef.theta_heisO_any hψ hθ hg u
  have e := ipO_heisO hψ hμ.1 hμ.2.1 hg hg u
  rw [ipO_self, ipO_self, sqNormIntegralFundamentalDomain_eq_l2Norm_sq μ 𝓕 hg'.cont, sqNormIntegralFundamentalDomain_eq_l2Norm_sq μ 𝓕 hg.cont, Complex.ofReal_inj,
    pow_left_inj₀ ENNReal.toReal_nonneg ENNReal.toReal_nonneg two_ne_zero] at e
  exact (ENNReal.toReal_eq_toReal_iff' (l2NormOnFundamentalDomain_thetaFunction_ne_top hψ hμ.1 hμ.2.1 hg') (l2NormOnFundamentalDomain_thetaFunction_ne_top hψ hμ.1 hμ.2.1 hg)).1 e

theorem sobO_heisO_eq {D : D7} {ψ : AddChar (AF D.host.F) ℂ} {θ : InfFam D} {S T : HSp D}
    (hψ : IsStdChar D ψ (-1)) (hθ : IsInfFam θ) {μ : Measure (WO S T)} {𝓕 : Set (WO S T)}
    (hμ : IsCovolOne (ratL T S) μ 𝓕) {h : WO S T → ℂ} (hh : IsThetaFunO ψ S T h) {u : WO S T}
    (hu : u.map (infPart D) = 0) (d : ℕ) :
    sobO ψ θ μ 𝓕 d (heisO ψ S T u h) = sobO ψ θ μ 𝓕 d h := by
  have := wordSum_eq_mul (A := heisDer ψ θ) (p := l2O μ 𝓕) (d := d) (x := h) (y := heisO ψ S T u h) (c := 1)
    fun l => by
      have e : wordAct (heisDer ψ θ) l (heisO ψ S T u h) = heisO ψ S T u (wordAct (heisDer ψ θ) l h) :=
        wordAct_rel (R := fun g g' => g = heisO ψ S T u g') l
          (fun a _ _ _ e => e ▸ GlobalTheory.FinTranslate.dRho_heisO hθ hu a.1 _ _) rfl
      rw [e, one_mul, l2O_heisO_eq hψ hθ hμ (theta_word hψ hθ l hh) u]
  rw [one_mul] at this
  exact this

end GlobalTheory.HeisTranslateBound


open GlobalTheory.Size GlobalTheory.HeisTranslateBound GlobalTheory.OrientedHeis in
theorem GlobalTheory.HeisTranslateBound.sobO_finsupp_sum_le : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (S T : HSp D), IsStdChar D ψ (-1) → IsInfFam θ → ∀ (μ : Measure (WO S T)) (𝓕 : Set (WO S T)), IsCovolOne (ratL T S) μ 𝓕 → ∀ c : WO S T →₀ ℂ, (∀ u ∈ c.support, u.map (infPart D) = 0) → ∀ h : WO S T → ℂ, IsThetaFunO ψ S T h → ∀ d : ℕ, GlobalTheory.Size.sobO ψ θ μ 𝓕 d (c.sum fun u z => z • heisO ψ S T u h) ≤ (∑ u ∈ c.support, ‖c u‖ₑ) * GlobalTheory.Size.sobO ψ θ μ 𝓕 d h := by
  intro D ψ θ S T hψ hθ μ 𝓕 hμ c hc h hh d
  have ht : ∀ u, IsThetaFunO ψ S T (c u • heisO ψ S T u h) := fun u =>
    theta_smul (c u) (GlobalTheory.Unf.MatCoef.theta_heisO_any hψ hθ hh u)
  refine (sobO_sum_le hψ hθ c.support (g := fun u => c u • heisO ψ S T u h) (fun u _ => ht u) d).trans ?_
  rw [Finset.sum_mul]
  refine Finset.sum_le_sum fun u hu => ?_
  rw [sobO_smul, sobO_heisO_eq hψ hθ hμ hh (hc u hu)]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.L2OHeisOEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaFunctionFixedFinitePartSobolevLimitFockVect =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaFunctionFixedFinitePartSobolevLimitFockVect", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\npublic import Formalism.LocalToGlobal.IndefiniteReal.LinksStage\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.SqNormIntegralFundamentalDomainEqL2NormSq\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LowVanishFockOfLowVanish\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.EqZeroOfLintegralEqZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaVectorFockVacuum\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeisenbergCombinationProjectsOntoVacuum\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.L2OHeisOEq\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumHeisOPureTensorO\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.WeilDatumRealDerivativeFockVectorsAll\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.HeisenbergOrientedFiniteFixesFockPolynomialVecto\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.FockVectorsOverVacuaDenseThetaFunctions\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsFockVacAtOfIsThetaAt\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.OmPureTensorOOfFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

namespace GlobalTheory.FinLikeClosure

open GlobalTheory.ChainFr GlobalTheory.Size

theorem fix_of_finLike {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
    {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat D A Ks} {i : Fin D.R.m} {t : T}
    {f : WO (Vc D i) (Wc D i) → ℂ} (hf : FinLike R i t f) (c : WO (Vc D i) (Wc D i) →₀ ℂ)
    (hc : ∀ u ∈ c.support, u.map (infPart D) = 0)
    (hv : (c.sum fun u z => z • heisO R.ψ (Vc D i) (Wc D i) u (R.vP i t)) = R.vP i t) :
    (c.sum fun u z => z • heisO R.ψ (Vc D i) (Wc D i) u f) = f := by
  have key : ∀ g : WO (Vc D i) (Wc D i) → ℂ, ((c - Finsupp.single 0 1).sum fun u z => z • heisO R.ψ (Vc D i) (Wc D i) u g) =
      (c.sum fun u z => z • heisO R.ψ (Vc D i) (Wc D i) u g) - g := fun g => by
    rw [Finsupp.sum_sub_index (fun _ _ _ => sub_smul _ _ _), Finsupp.sum_single_index (by rw [zero_smul]), one_smul,
      GlobalTheory.OrientedHeis.heisO_zero]
  classical
  have hs : ∀ u ∈ (c - Finsupp.single 0 1).support, u.map (infPart D) = 0 := fun u hu => by
    rcases Finset.mem_union.1 (Finsupp.support_sub hu) with h | h
    · exact hc u h
    · rw [Finset.mem_singleton.1 (Finsupp.support_single_subset h)]
      exact Matrix.map_zero _ (map_zero _)
  have := hf.2 _ hs (by rw [key, hv, sub_self])
  rwa [key, sub_eq_zero] at this

theorem closure : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), GlobalTheory.LiftRows.Given R F → R.FullP → ∀ (i : Fin D.R.m) (t : T) (μ : Measure (WO (Vc D i) (Wc D i))) (𝓕 : Set (WO (Vc D i) (Wc D i))), IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕 → ∀ f, FinLike R i t f → ∀ (d : ℕ) (δ : ENNReal), 0 < δ → ∃ P, GlobalTheory.Size.sobO R.ψ R.θ μ 𝓕 d (f - R.ptP i t P) < δ := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F hG _ i t μ 𝓕 hμ f hf d δ hδ
  have hC := hG.core
  have hθ : IsInfFam R.θ := hC.models.inf
  have hψ : IsStdChar D R.ψ (-1) := (hC.thP.ωP i t).std
  let AV := GlobalTheory.WeilReal.frOf (Vc D i) (fun _ => 1) (R.BV i) (fun _ => (Vc D i).rank) (hC.models.BV i)
  let BW := Fr.ofModel (R.MW i (sg0 D A))
  have cAV : AV.cart = fun _ => 1 := GlobalTheory.WeilReal.frOf_cart (hC.models.BV i)
  have oAV : AV.onb = R.BV i := GlobalTheory.WeilReal.frOf_onb (hC.models.BV i)
  have hpt : ∀ x, ptF R.ψ R.θ AV BW x =
      pureTensorO R.ψ R.θ (Vc D i) (Wc D i) (fun _ => 1) (cart (R.MW i (sg0 D A))) (R.BV i) (onb (R.MW i (sg0 D A))) x :=
    fun x => by rw [ptF, cAV, oAV]; rfl
  have hvθ : IsThetaFunO R.ψ (Vc D i) (Wc D i) (R.vP i t) := by
    have := hC.thP.pt_theta i t 1
    unfold RealDat.ptP pureTensorO at this
    rwa [GlobalTheory.AdTh.VecFock.pureTensorL_one] at this
  have hvv : ∀ τ, IsFockVacAt (heisO R.ψ (Vc D i) (Wc D i)) R.θ τ (cplxO 1 (cart (R.MW i (sg0 D A)) τ)) (R.vP i t) :=
    GlobalTheory.DatumFock.isFockVacAt_thPVec _ _ _ _ (fun _ => 1) _ _ _ _ _ _ _ _ _ _ (hC.thP.vP i t) hvθ
  have cS : ∀ τ, IsCartanInv (gramAt D (Vc D i) τ) 1 := fun τ => by
    have := Model.isCartanInv_cart AV τ
    rwa [cAV] at this
  have cT : ∀ τ, IsCartanInv (gramAt D (Wc D i) τ) (cart (R.MW i (sg0 D A)) τ) := fun τ => Model.isCartanInv_cart BW τ
  obtain ⟨U, hU, hfU, hdense⟩ := GlobalTheory.FockDensity.fockDense D _ _ AV BW R.θ R.ψ hψ hθ μ 𝓕 hμ f hf.1
  obtain ⟨c, hc0, hcv, hcx⟩ := _root_.GlobalTheory.VacDensity.proj D R.ψ R.θ (Vc D i) (Wc D i) hψ hθ (fun _ => 1) (cart (R.MW i (sg0 D A))) cS cT
    (R.vP i t) hvθ hvv U hU
  let Pf : Module.End ℂ (WO (Vc D i) (Wc D i) → ℂ) :=
    c.sum fun u z => z • GlobalTheory.Hk3.FiniteHeis.heisLin R.ψ (Vc D i) (Wc D i) u
  have hPf : ∀ h, Pf h = c.sum fun u z => z • heisO R.ψ (Vc D i) (Wc D i) u h := fun h =>
    LinearMap.finsupp_sum_apply _ _ _
  have hfix : Pf f = f := (hPf f).trans (fix_of_finLike hf c hc0 hcv)
  let Lp := pureTensorO R.ψ R.θ (Vc D i) (Wc D i) (fun _ => 1) (cart (R.MW i (sg0 D A))) (R.BV i)
    (onb (R.MW i (sg0 D A))) (R.vP i t)
  have hLp : ∀ P, R.ptP i t P = Lp P := fun _ => rfl

  have himg : ∀ g ∈ fockSpan R.ψ R.θ AV BW U, Pf g ∈ LinearMap.range Lp := by
    intro g hg
    induction hg using Submodule.span_induction with
    | mem g hg =>
      obtain ⟨f₀, P, h1, h2, rfl⟩ := hg
      have hv0 : ∀ τ, IsFockVacAt (heisO R.ψ (Vc D i) (Wc D i)) R.θ τ (cplxO 1 (cart (R.MW i (sg0 D A)) τ)) f₀ :=
        fun τ => by
          have := h1.2 τ
          rwa [cAV] at this
      obtain ⟨a, ha⟩ := hcx f₀ h2 hv0
      refine ⟨a • P, ?_⟩
      rw [hPf, hpt, GlobalTheory.FiniteHeisComb.sum_heisO_pureTensorO D R.ψ R.θ (Vc D i) (Wc D i) hψ hθ _ _ _ _ c hc0 f₀ h1.1 P, ha,
        GlobalTheory.FiniteFock.pureTensorO_smul, map_smul]
    | zero => rw [map_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
    | smul a x _ hx => rw [map_smul]; exact Submodule.smul_mem _ a hx
  set C : ENNReal := ∑ u ∈ c.support, ‖c u‖ₑ with hCdef
  have hCt : C ≠ ⊤ := ENNReal.sum_ne_top.2 fun _ _ => eNorm_ne_top
  rcases eq_or_ne C 0 with hC0 | hC0
  · obtain ⟨g, hg, hgU, -⟩ := hdense d 1 one_pos
    obtain ⟨P, hP⟩ := himg g hg
    refine ⟨P, lt_of_le_of_lt ?_ hδ⟩
    have hb := GlobalTheory.HeisTranslateBound.sobO_finsupp_sum_le D R.ψ R.θ (Vc D i) (Wc D i) hψ hθ μ 𝓕 hμ c hc0 (f - g) (sub_mem hfU hgU).1 d
    rw [← hCdef, hC0, zero_mul, ← hPf, map_sub, hfix, ← hP, ← hLp] at hb
    exact hb
  · obtain ⟨g, hg, hgU, hgd⟩ := hdense d (δ / C) (ENNReal.div_pos hδ.ne' hCt)
    obtain ⟨P, hP⟩ := himg g hg
    refine ⟨P, ?_⟩
    have hb := GlobalTheory.HeisTranslateBound.sobO_finsupp_sum_le D R.ψ R.θ (Vc D i) (Wc D i) hψ hθ μ 𝓕 hμ c hc0 (f - g) (sub_mem hfU hgU).1 d
    rw [← hCdef, ← hPf, map_sub, hfix, ← hP, ← hLp] at hb
    refine lt_of_le_of_lt hb ?_
    calc C * sobO R.ψ R.θ μ 𝓕 d (f - g) < C * (δ / C) := by simpa only [mul_comm C] using ENNReal.mul_lt_mul_left hC0 hCt hgd
      _ = δ := ENNReal.mul_div_cancel hC0 hCt

end GlobalTheory.FinLikeClosure
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaFunctionFixedFinitePartSobolevLimitFockVect =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftGenerationAtRealPlaces =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftGenerationAtRealPlaces", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\npublic import Formalism.LocalToGlobal.IndefiniteReal.LinksStage\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DownwardThetaIntegralSobolevContinuous\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealFockThetaLiftVanishingOfGeneratingVectorsStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaFunctionFixedFinitePartSobolevLimitFockVect\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftVanishesSingleCoefficientOfKernelKills\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.SqNormIntegralFundamentalDomainEqL2NormSq\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

namespace GlobalTheory.GenReal

theorem genInf : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), GlobalTheory.LiftRows.Given R F → R.FullP → ∀ i t, GenInf R i t := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F hG hP i t y hy f hf l g
  obtain ⟨μ, 𝓕, hμ⟩ := GlobalTheory.Size.exists_isCovolOne (D := D) (V := Vc D i) (W := Wc D i)
  have h0 : ∀ P, downInt R i t y (R.ptP i t P) l g = 0 := fun P =>
    _root_.GlobalTheory.GenRealFock.gen D G Pl0 T A Ks R F hG hP i t y (_root_.GlobalTheory.GenRealSchur.lift_vanish_single D G Pl0 T A Ks R F hG hP i t y hy) P l g
  by_contra hne
  have hpos : 0 < ‖downInt R i t y f l g‖ := norm_pos_iff.2 hne
  obtain ⟨d, δ, hδ, hc⟩ := _root_.GlobalTheory.DownLift.Sobolev₂.downInt_sobolev_cont D G Pl0 T A Ks R F hG hP i t y μ 𝓕 hμ f hf.1 l g _ hpos
  obtain ⟨P, hPd⟩ := _root_.GlobalTheory.FinLikeClosure.closure D G Pl0 T A Ks R F hG hP i t μ 𝓕 hμ f hf d δ hδ
  have := hc P hPd
  rw [h0 P, sub_zero] at this
  exact lt_irrefl _ this

end GlobalTheory.GenReal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftGenerationAtRealPlaces =====
