module

public import GroundTheory.AutomorphicForms.FourierWhittaker.IsAddFundamentalDomainImageOfMapVecLattice
public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.ThetaBijections.SymplecticFormCoordinates
public import GroundTheory.AutomorphicForms.GL2.GJMatrixAdelic
public import GroundTheory.AutomorphicForms.GL2.GJMatrixCoord
public import GroundTheory.HeightsAndTheta.Theta.AdelicFourier
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup
public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.WhittakerCovolume.CovolUnique
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
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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

@[expose] public section

noncomputable section

open scoped TensorProduct NNReal Matrix Classical
set_option linter.style.haveILetI false
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK.Dbl GlobalTheory.Cont PositivityTheory.Rg.Sw

namespace PositivityTheory.SiegelWeilFormula.TW.Twp

open PositivityTheory.SiegelWeilFormula.TBij.Adp

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

attribute [-instance] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.measAF in
theorem integral_cov_gen {G : Type} [AddCommGroup G] [TopologicalSpace G] [IsTopologicalAddGroup G] [LocallyCompactSpace G]
    [SecondCountableTopology G] {mG : MeasurableSpace G} [hBor : BorelSpace G] {ι : Type} [Fintype ι] (Γ : AddSubgroup G) [Countable Γ]
    (e : G ≃ₜ+ (ι → AdeleRing (𝓞 F) F)) (he : ∀ x, x ∈ Γ ↔ e x ∈ GroundTheory.Automorphic.FourierWhittaker.vecLattice F ι)
    (ν : Measure G) [hνH : ν.IsAddHaarMeasure] (𝓕 : Set G) (h𝓕 : IsAddFundamentalDomain Γ 𝓕 ν) (h1 : ν 𝓕 = 1) (h : G → ℂ) :
    ∫ Z, h Z ∂ν = ∫ c, h (e.symm c) ∂(GroundTheory.Automorphic.GJMatrix.adeleMeasurePi F (ι := ι)) := by
  haveI := GlobalTheory.AdelicUnitaryTop.secondCountable_adele F
  let m : (ι → AdeleRing (𝓞 F) F) ≃ᵐ G := e.symm.toHomeomorph.toMeasurableEquiv
  let μ₀ : Measure G := (GroundTheory.Automorphic.FourierWhittaker.vecMeasure F ι).map m
  have hμ₀ : μ₀.IsAddHaarMeasure :=
    ContinuousAddEquiv.isAddHaarMeasure_map (GroundTheory.Automorphic.FourierWhittaker.vecMeasure F ι) e.symm
  have hD : IsAddFundamentalDomain Γ (e ⁻¹' GroundTheory.Automorphic.FourierWhittaker.vecDomain F ι) μ₀ := by
    refine IsAddFundamentalDomain.mk'
      ((GroundTheory.Automorphic.FourierWhittaker.measurableSet_vecDomain).preimage e.continuous.measurable).nullMeasurableSet
      fun x => ?_
    obtain ⟨g', hg', hu⟩ := GroundTheory.Automorphic.FourierWhittaker.existsUnique_vadd_mem_vecDomain (e x)
    have hg : e.symm (g' : ι → AdeleRing (𝓞 F) F) ∈ Γ := by
      rw [he, e.apply_symm_apply]
      exact g'.2
    refine ⟨⟨_, hg⟩, ?_, ?_⟩
    · show e.symm (g' : ι → AdeleRing (𝓞 F) F) + x ∈ e ⁻¹' GroundTheory.Automorphic.FourierWhittaker.vecDomain F ι
      rw [Set.mem_preimage, map_add (f := _), e.apply_symm_apply]
      exact hg'
    · rintro ⟨y, hy⟩ hyx
      have hy' : e y ∈ GroundTheory.Automorphic.FourierWhittaker.vecLattice F ι := (he y).1 hy
      have hyx' : e y + e x ∈ GroundTheory.Automorphic.FourierWhittaker.vecDomain F ι := by
        rw [← map_add (f := _)]
        exact hyx
      have := hu ⟨e y, hy'⟩ hyx'
      apply Subtype.ext
      show y = e.symm (g' : ι → AdeleRing (𝓞 F) F)
      rw [← this]
      exact (e.symm_apply_apply y).symm
  have hD1 : μ₀ (e ⁻¹' GroundTheory.Automorphic.FourierWhittaker.vecDomain F ι) = 1 := by
    show (Measure.map m _) _ = 1
    rw [MeasurableEquiv.map_apply]
    have : m ⁻¹' (e ⁻¹' GroundTheory.Automorphic.FourierWhittaker.vecDomain F ι) =
        GroundTheory.Automorphic.FourierWhittaker.vecDomain F ι := by
      ext c
      show e (e.symm c) ∈ GroundTheory.Automorphic.FourierWhittaker.vecDomain F ι ↔ c ∈ GroundTheory.Automorphic.FourierWhittaker.vecDomain F ι
      rw [e.apply_symm_apply]
    rw [this]
    exact GroundTheory.Automorphic.FourierWhittaker.vecMeasure_vecDomain
  have hνμ : ν = μ₀ := KWhit.MeasG.covol_unique (μ := μ₀) (μ' := ν) Γ hD h𝓕 hD1 h1
  rw [hνμ]
  show ∫ Z, h Z ∂(Measure.map m _) = _
  rw [integral_map_equiv]
  rfl

end PositivityTheory.SiegelWeilFormula.TW.Twp

end
