module

public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StArchCovolumeBound
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StCoordEmbedBasis
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StIntegralFormCovolume
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StTraceHermNondegenerate
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StDualLatticeMultiple
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StCoordLatticeFullRank
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsDoubleCoset
public import Mathlib.MeasureTheory.Measure.Haar.Basic
public import Mathlib.MeasureTheory.Measure.Haar.Unique
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsHaarParabolicCoordinates
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsLineStabHaar
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsArchUnimodular
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsMajorantStabCompact
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.Statements
public import GroundTheory.AutomorphicForms.HaarSK
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.SecondCountableTopologyArchUnitary
public import Mathlib.Topology.Algebra.Group.Units
public import Mathlib.RingTheory.Localization.Module
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.Imports
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CoerciveOfPositiveDefinite
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StMajorantTransport
public import Mathlib.Analysis.Matrix.Order
public import Mathlib.RingTheory.Complex
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsStabilizerCovolume
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsSemidirectCovering
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsStabilizerLevi
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PArchLatticeDiscrete
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PComplementExtension
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PComplementForm
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDiscreteFundamentalDomain
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PWittPartner
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsUnfoldAlongSubgroup
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StComplementLattice
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StLineNormalForm
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StReducedBasisBound
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsAdelicLattices
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsComplementExtension
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.Assembly
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PAdelicLatticeDictionary
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PArchimedeanUnitaryEquiv
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PComplementLattice
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PCoordEmbedBasis
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PLineNormalForm
public import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PReducedBasisBound
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Order.Archimedean.Real.Hom

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PArchCovolumeBound, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PCoordLatticeFullRank, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDoubleCosetCovolume, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDualLatticeMultiple, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PHaarParabolicCoordinates, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PIntegralFormCovolume, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PLatticePointsBelowFinite, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PMajorantTransport, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PStabilizerCovolume, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PTraceHermNondegenerate, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnfoldAlongSubgroup, GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.OfUnfolding

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PArchCovolumeBound =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PArchCovolumeBound", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StArchCovolumeBound\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StCoordEmbedBasis\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StIntegralFormCovolume\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StTraceHermNondegenerate\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StDualLatticeMultiple\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StCoordLatticeFullRank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open NumberField GroundTheory.Automorphic Module MeasureTheory

noncomputable section

variable {F E : Type*} [Field F] [Field E] [NumberField F] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E]
variable {W : Type*} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι] [DecidableEq ι]


omit [NumberField F] [IsTotallyReal F] [DecidableEq ι] in
theorem ArchCovolumeBound.proof (h : HermitianForm F E W) (v : Basis ι E W)
    (h₁ : CoordEmbedBasis.Statement E ι)
    (h₂ : IntegralFormCovolume.Statement (ι → E) (InfinitePlace E → ι → ℂ)
      (Σ _ : ι, Free.ChooseBasisIndex ℤ (𝓞 E)))
    (h₃ : TraceHermNondegenerate.Statement h v) (h₄ : DualLatticeMultiple.Statement h)
    (h₅ : CoordLatticeFullRank.Statement v) : ArchCovolumeBound.Statement h v := by
  intro D
  obtain ⟨k, hk0, hk⟩ := h₄ D
  let e := Pi.basis fun _ : ι => integralBasis E
  obtain ⟨C, hC⟩ := h₂ (coordEmbed E ι) e (traceHerm h v) volume (Measure.pi.isAddHaarMeasure _) h₃ h₁.1
    (by rw [h₁.2, finrank_eq_card_basis e])
  refine ⟨Real.sqrt (C * |(k : ℝ)| ^ Fintype.card (Σ _ : ι, Free.ChooseBasisIndex ℤ (𝓞 E))),
    fun La hLa => ?_⟩
  let φ : W →+ (ι → E) := (v.equivFun : W →ₗ[E] ι → E).toAddMonoidHom
  have hφ : ∀ x, v.equivFun.symm (φ x) = x := fun x => v.equivFun.symm_apply_apply x
  have hmem : ∀ y, y ∈ La.map φ ↔ v.equivFun.symm y ∈ La := by
    intro y
    rw [AddSubgroup.mem_map]
    constructor
    · rintro ⟨x, hx, rfl⟩
      rwa [hφ]
    · intro hy
      exact ⟨_, hy, v.equivFun.apply_symm_apply y⟩
  have harch : archLattice v La = AddSubgroup.toIntSubmodule ((La.map φ).map (coordEmbed E ι)) := by
    rw [archLattice, AddSubgroup.map_map]
    rfl
  obtain ⟨hfg, hspan⟩ := h₅ La hLa.isLattice
  obtain ⟨hint, hdual⟩ := hk La hLa
  obtain ⟨hD, hZ, hcov⟩ := hC (La.map φ) k hk0 hfg hspan
    (fun x hx y hy => hint _ ((hmem x).1 hx) _ ((hmem y).1 hy))
    (fun y hy => by
      rw [hmem, map_zsmul]
      refine hdual _ fun x hx => ?_
      obtain ⟨n, hn⟩ := hy (φ x) (AddSubgroup.mem_map_of_mem φ hx)
      exact ⟨n, by rw [traceHerm_apply, hφ] at hn; exact hn⟩)
  rw [harch]
  exact ⟨hD, hZ, (le_abs_self _).trans (Real.abs_le_sqrt hcov)⟩

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PArchCovolumeBound =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PCoordLatticeFullRank =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PCoordLatticeFullRank", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StCoordLatticeFullRank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open NumberField Module

noncomputable section

variable {E : Type*} [Field E] [NumberField E]
variable {W : Type*} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι]

theorem CoordLatticeFullRank.proof (v : Basis ι E W) : CoordLatticeFullRank.Statement v := by
  intro La hL
  set f : W →ₗ[E] ι → E := (v.equivFun : W →ₗ[E] ι → E) with hf
  refine ⟨?_, ?_⟩
  · classical
    letI := hL.fg
    infer_instance
  set S : Set (ι → E) := ((La.map f.toAddMonoidHom : AddSubgroup (ι → E)) : Set (ι → E)) with hS
  set T : Submodule ℚ (ι → E) := Submodule.span ℚ S with hT

  have key : ∀ (a : E), ∀ s ∈ S, a • s ∈ T := by
    intro a s hs
    obtain ⟨d, hd, hint⟩ := exists_integral_multiples ℤ ℚ ({a} : Finset E)
    have hda : IsIntegral ℤ (d • a) := hint a (Finset.mem_singleton_self a)
    obtain ⟨x, hx, rfl⟩ := (AddSubgroup.mem_map).mp hs
    let b : 𝓞 E := ⟨d • a, hda⟩
    have hbx : ((b : E) • x) ∈ La := hL.smul_mem b x hx
    have hfb : f ((b : E) • x) ∈ S := (AddSubgroup.mem_map).mpr ⟨_, hbx, rfl⟩
    have hd' : ((d : ℚ)) ≠ 0 := by exact_mod_cast hd
    have heq : a • f.toAddMonoidHom x = ((d : ℚ)⁻¹) • f ((b : E) • x) := by
      rw [map_smul]
      show a • f x = ((d : ℚ)⁻¹) • ((d • a) • f x)
      rw [zsmul_eq_mul, mul_smul, Int.cast_smul_eq_zsmul E, ← Int.cast_smul_eq_zsmul ℚ,
        smul_smul, inv_mul_cancel₀ hd', one_smul]
    rw [heq]
    exact T.smul_mem _ (Submodule.subset_span hfb)

  have stable : ∀ (a : E), ∀ y ∈ T, a • y ∈ T := by
    intro a y hy
    induction hy using Submodule.span_induction with
    | mem s hs => exact key a s hs
    | zero => simp
    | add y z _ _ hy hz => rw [smul_add]; exact T.add_mem hy hz
    | smul q y _ hy =>
      rw [smul_comm]
      exact T.smul_mem q hy
  let T' : Submodule E (ι → E) :=
    { carrier := T
      add_mem' := fun hy hz => T.add_mem hy hz
      zero_mem' := T.zero_mem
      smul_mem' := fun a y hy => stable a y hy }
  have hspan : Submodule.span E S = ⊤ := by
    have hSim : S = f '' (La : Set W) := by
      rw [hS, AddSubgroup.coe_map]; rfl
    rw [hSim, Submodule.span_image, hL.span_eq_top, Submodule.map_top, LinearMap.range_eq_top]
    exact v.equivFun.surjective
  have hle : Submodule.span E S ≤ T' := Submodule.span_le.mpr fun s hs => Submodule.subset_span hs
  rw [hspan] at hle
  exact eq_top_iff.mpr fun y _ => hle (Submodule.mem_top)

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PCoordLatticeFullRank =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDoubleCosetCovolume =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDoubleCosetCovolume", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsDoubleCoset\npublic import Mathlib.MeasureTheory.Measure.Haar.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.MeasureTheory.Measure.Haar.Unique\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open MeasureTheory Topology Set
open scoped ENNReal NNReal Pointwise

set_option linter.unusedSectionVars false

noncomputable section

section Setup

variable {G G₁ G₂ : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [MeasurableSpace G] [BorelSpace G] [Group G₁] [TopologicalSpace G₁] [IsTopologicalGroup G₁]
  [MeasurableSpace G₁] [BorelSpace G₁] [Group G₂] [TopologicalSpace G₂] [IsTopologicalGroup G₂]

def doubleCosetSetoid (Φ : G ≃ₜ* G₁ × G₂) (Γ : Subgroup G) (K : Subgroup G₂) : Setoid G₂ where
  r y y' := ∃ γ ∈ Γ, ∃ k ∈ K, y' = (Φ γ).2 * y * k
  iseqv :=
    { refl := fun y => ⟨1, Γ.one_mem, 1, K.one_mem, by simp⟩
      symm := by
        rintro y y' ⟨γ, hγ, k, hk, rfl⟩
        refine ⟨γ⁻¹, Γ.inv_mem hγ, k⁻¹, K.inv_mem hk, ?_⟩
        simp [mul_assoc]
      trans := by
        rintro y y' y'' ⟨γ, hγ, k, hk, rfl⟩ ⟨γ', hγ', k', hk', rfl⟩
        refine ⟨γ' * γ, Γ.mul_mem hγ' hγ, k * k', K.mul_mem hk hk', ?_⟩
        simp [mul_assoc] }

def leftCosetSet (K : Subgroup G₂) (s : G₂) : Set G₂ := {y | s⁻¹ * y ∈ K}

theorem isOpen_leftCosetSet {K : Subgroup G₂} (hK : IsOpen (K : Set G₂)) (s : G₂) :
    IsOpen (leftCosetSet K s) :=
  hK.preimage (continuous_const_mul s⁻¹)

theorem isCompact_leftCosetSet {K : Subgroup G₂} (hK : IsCompact (K : Set G₂)) (s : G₂) :
    IsCompact (leftCosetSet K s) := by
  have : leftCosetSet K s = (s * ·) '' (K : Set G₂) := by
    rw [Set.image_mul_left]; rfl
  rw [this]
  exact hK.image (continuous_const_mul s)

def sliceMeasure (Φ : G ≃ₜ* G₁ × G₂) (μ : Measure G) (V : Set G₂) : Measure G₁ :=
  (μ.restrict (Φ ⁻¹' (univ ×ˢ V))).map fun x => (Φ x).1

variable {Φ : G ≃ₜ* G₁ × G₂} {μ : Measure G} {V : Set G₂}

theorem measurable_fst_comp (Φ : G ≃ₜ* G₁ × G₂) : Measurable fun x => (Φ x).1 :=
  (continuous_fst.comp Φ.continuous).measurable

theorem measurableSet_preimage_univ_prod (hV : IsOpen V) : MeasurableSet (Φ ⁻¹' (univ ×ˢ V)) :=
  ((isOpen_univ.prod hV).preimage Φ.continuous).measurableSet

theorem preimage_prod_eq (A : Set G₁) :
    Φ ⁻¹' (A ×ˢ V) = (fun x => (Φ x).1) ⁻¹' A ∩ Φ ⁻¹' (univ ×ˢ V) := by
  ext x
  simp [mem_prod]

theorem measure_preimage_prod_eq_restrict (hV : IsOpen V) (A : Set G₁) :
    μ (Φ ⁻¹' (A ×ˢ V)) = μ.restrict (Φ ⁻¹' (univ ×ˢ V)) ((fun x => (Φ x).1) ⁻¹' A) := by
  rw [Measure.restrict_apply' (measurableSet_preimage_univ_prod hV), preimage_prod_eq]

theorem sliceMeasure_apply (hV : IsOpen V) {A : Set G₁} (hA : MeasurableSet A) :
    sliceMeasure Φ μ V A = μ (Φ ⁻¹' (A ×ˢ V)) := by
  rw [sliceMeasure, Measure.map_apply (measurable_fst_comp Φ) hA,
    measure_preimage_prod_eq_restrict hV]

theorem measure_preimage_prod_le (hV : IsOpen V) (A : Set G₁) :
    μ (Φ ⁻¹' (A ×ˢ V)) ≤ sliceMeasure Φ μ V A := by
  rw [measure_preimage_prod_eq_restrict hV]
  exact Measure.le_map_apply (measurable_fst_comp Φ).aemeasurable A

theorem sliceMeasure_isMulLeftInvariant [μ.IsMulLeftInvariant] (hV : IsOpen V) :
    (sliceMeasure Φ μ V).IsMulLeftInvariant := by
  refine (forall_measure_preimage_mul_iff _).1 fun g A hA => ?_
  rw [sliceMeasure_apply hV (measurable_const_mul g hA), sliceMeasure_apply hV hA]
  have : Φ ⁻¹' (((g * ·) ⁻¹' A) ×ˢ V) =
      (fun x => Φ.symm (g, 1) * x) ⁻¹' (Φ ⁻¹' (A ×ˢ V)) := by
    ext x
    simp [mem_prod]
  rw [this, measure_preimage_mul]

theorem sliceMeasure_isFiniteMeasureOnCompacts [T2Space G₁] [IsFiniteMeasureOnCompacts μ]
    (hV : IsOpen V) (hVc : IsCompact V) : IsFiniteMeasureOnCompacts (sliceMeasure Φ μ V) := by
  refine ⟨fun A hA => ?_⟩
  rw [sliceMeasure_apply hV hA.isClosed.measurableSet]
  have : IsCompact (Φ ⁻¹' (A ×ˢ V)) :=
    (Homeomorph.isCompact_preimage Φ.toHomeomorph).2 (hA.prod hVc)
  exact this.measure_lt_top

variable [LocallyCompactSpace G₁] [T2Space G₁] [SecondCountableTopology G₁] [μ.IsHaarMeasure]

theorem sliceMeasure_eq_smul_haar (hV : IsOpen V) (hVc : IsCompact V) :
    ∃ c : ℝ≥0, sliceMeasure Φ μ V = c • Measure.haar := by
  have := sliceMeasure_isMulLeftInvariant (Φ := Φ) (μ := μ) hV
  have := sliceMeasure_isFiniteMeasureOnCompacts (Φ := Φ) (μ := μ) hV hVc
  exact ⟨_, Measure.isMulLeftInvariant_eq_smul _ _⟩

theorem quasiMeasurePreserving_fst_comp (hV : IsOpen V) (hVc : IsCompact V) :
    Measure.QuasiMeasurePreserving (fun x => (Φ x).1) (μ.restrict (Φ ⁻¹' (univ ×ˢ V)))
      (Measure.haar : Measure G₁) := by
  refine ⟨(measurable_fst_comp Φ).aemeasurable, fun A hA => ?_⟩
  change sliceMeasure Φ μ V A = 0
  obtain ⟨c, hc⟩ := sliceMeasure_eq_smul_haar (Φ := Φ) (μ := μ) hV hVc
  rw [hc, Measure.smul_apply, hA, smul_zero]

theorem measure_preimage_prod_null (hV : IsOpen V) (hVc : IsCompact V) {N : Set G₁}
    (hN : (Measure.haar : Measure G₁) N = 0) : μ (Φ ⁻¹' (N ×ˢ V)) = 0 := by
  rw [measure_preimage_prod_eq_restrict hV]
  exact QuasiMeasurePreserving.preimage_null (quasiMeasurePreserving_fst_comp hV hVc) hN

theorem nullMeasurableSet_preimage_prod (hV : IsOpen V) (hVc : IsCompact V) {A : Set G₁}
    (hA : NullMeasurableSet A (Measure.haar : Measure G₁)) :
    NullMeasurableSet (Φ ⁻¹' (A ×ˢ V)) μ := by
  rw [preimage_prod_eq]
  exact (nullMeasurableSet_restrict (measurableSet_preimage_univ_prod hV).nullMeasurableSet).1
    (hA.preimage (quasiMeasurePreserving_fst_comp hV hVc))

theorem measure_preimage_prod_lt_top (hV : IsOpen V) (hVc : IsCompact V) {A : Set G₁}
    (hA : (Measure.haar : Measure G₁) A < ∞) : μ (Φ ⁻¹' (A ×ˢ V)) < ∞ := by
  refine (measure_preimage_prod_le hV A).trans_lt ?_
  obtain ⟨c, hc⟩ := sliceMeasure_eq_smul_haar (Φ := Φ) (μ := μ) hV hVc
  rw [hc, Measure.smul_apply, ENNReal.smul_def, smul_eq_mul]
  exact ENNReal.mul_lt_top ENNReal.coe_lt_top hA

end Setup

theorem DoubleCosetCovolume.proof (G G₁ G₂ : Type*) [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [MeasurableSpace G] [BorelSpace G] [Group G₁] [TopologicalSpace G₁]
    [IsTopologicalGroup G₁] [LocallyCompactSpace G₁] [T2Space G₁] [SecondCountableTopology G₁]
    [MeasurableSpace G₁] [BorelSpace G₁] [Group G₂] [TopologicalSpace G₂] [IsTopologicalGroup G₂] :
    DoubleCosetCovolume.Statement G G₁ G₂ := by
  intro Φ Γ _ K S hKc hKo hinj hcover hFD μ _
  classical
  let R := doubleCosetSetoid Φ Γ K

  let rep : Quotient R → G₂ := fun q =>
    if h : ∃ t ∈ S, Quotient.mk R t = q then h.choose else 1
  have rep_spec : ∀ t ∈ S, rep (Quotient.mk R t) ∈ S ∧
      Quotient.mk R (rep (Quotient.mk R t)) = Quotient.mk R t := by
    intro t ht
    have h : ∃ t' ∈ S, Quotient.mk R t' = Quotient.mk R t := ⟨t, ht, rfl⟩
    simp only [rep, dif_pos h]
    exact h.choose_spec
  let T : Finset (Quotient R) := S.image (Quotient.mk R)
  have hT : ∀ q ∈ T, rep q ∈ S ∧ Quotient.mk R (rep q) = q := by
    intro q hq
    obtain ⟨t, ht, rfl⟩ := Finset.mem_image.1 hq
    exact rep_spec t ht

  let F : G₂ → Set G₁ := fun s =>
    if hs : s ∈ S then (hFD s hs (Measure.haar : Measure G₁)).choose else ∅
  have hF : ∀ s ∈ S, IsFundamentalDomain (sliceGroup Φ Γ K s) (F s) Measure.haar ∧
      (Measure.haar : Measure G₁) (F s) < ∞ := by
    intro s hs
    simp only [F, dif_pos hs]
    exact (hFD s hs Measure.haar).choose_spec
  have hVo := isOpen_leftCosetSet hKo
  have hVc := isCompact_leftCosetSet hKc
  let P : G₂ → Set G := fun s => Φ ⁻¹' (F s ×ˢ leftCosetSet K s)
  refine ⟨⋃ q ∈ T, P (rep q), IsFundamentalDomain.mk'' ?_ ?_ ?_ ?_, ?_⟩
  ·
    refine NullMeasurableSet.biUnion T.countable_toSet fun q hq => ?_
    exact nullMeasurableSet_preimage_prod (hVo _) (hVc _) (hF _ (hT q hq).1).1.nullMeasurableSet
  ·
    let Nbad : G₂ → Set G₁ := fun s => {a | ¬ ∃ δ : sliceGroup Φ Γ K s, δ • a ∈ F s}
    let B : Set G := ⋃ η : Γ, ⋃ s ∈ S,
      (fun x => (η : G)⁻¹ * x) ⁻¹' (Φ ⁻¹' (Nbad s ×ˢ leftCosetSet K s))
    have hB : μ B = 0 := by
      refine measure_iUnion_null fun η => ?_
      refine (measure_biUnion_null_iff S.countable_toSet).2 fun s hs => ?_
      rw [measure_preimage_mul]
      exact measure_preimage_prod_null (hVo _) (hVc _) (ae_iff.1 (hF s hs).1.ae_covers)
    refine ae_iff.2 (measure_mono_null ?_ hB)
    intro x hx
    by_contra hxB
    apply hx
    obtain ⟨γ, hγ, t, ht, k, hk, hxt⟩ := hcover (Φ x).2
    have ht' : Quotient.mk R t = Quotient.mk R (Φ x).2 := Quotient.sound ⟨γ, hγ, k, hk, hxt⟩
    obtain ⟨hs, hsq⟩ := rep_spec t ht
    obtain ⟨η, hη, k', hk', hx2⟩ : R (rep (Quotient.mk R t)) (Φ x).2 :=
      Quotient.exact (hsq.trans ht')
    have e2 : (Φ ((η : G)⁻¹ * x)).2 = rep (Quotient.mk R t) * k' := by
      simp [hx2, mul_assoc]
    have hgood : ¬ (Φ ((η : G)⁻¹ * x)).1 ∈ Nbad (rep (Quotient.mk R t)) := by
      intro hbad
      apply hxB
      refine mem_iUnion.2 ⟨⟨η, hη⟩, mem_iUnion₂.2 ⟨_, hs, ?_⟩⟩
      refine ⟨hbad, ?_⟩
      show (rep (Quotient.mk R t))⁻¹ * (Φ ((η : G)⁻¹ * x)).2 ∈ K
      rw [e2, inv_mul_cancel_left]
      exact hk'
    simp only [Nbad, Set.mem_ofPred_eq, not_not] at hgood
    obtain ⟨δ, hδ⟩ := hgood
    obtain ⟨ζ, hζ, hζK, hζ1⟩ := mem_sliceGroup.1 δ.2
    refine ⟨⟨ζ * η⁻¹, Γ.mul_mem hζ (Γ.inv_mem hη)⟩, ?_⟩
    refine mem_iUnion₂.2 ⟨Quotient.mk R t, Finset.mem_image_of_mem _ ht, ?_⟩
    show Φ ((ζ * η⁻¹ : G) * x) ∈ F _ ×ˢ leftCosetSet K _
    rw [mul_assoc, map_mul]
    refine ⟨?_, ?_⟩
    · rw [Prod.fst_mul, hζ1]
      exact hδ
    · show (rep (Quotient.mk R t))⁻¹ * ((Φ ζ).2 * (Φ ((η : G)⁻¹ * x)).2) ∈ K
      rw [e2]
      have : (rep (Quotient.mk R t))⁻¹ * ((Φ ζ).2 * (rep (Quotient.mk R t) * k')) =
          (rep (Quotient.mk R t))⁻¹ * (Φ ζ).2 * rep (Quotient.mk R t) * k' := by
        simp only [mul_assoc]
      rw [this]
      exact K.mul_mem hζK hk'
  ·
    intro g hg
    let M : G₂ → Set G := fun s => ⋃ (h : (Φ g).1 ∈ sliceGroup Φ Γ K s),
      Φ ⁻¹' ((((⟨(Φ g).1, h⟩ : sliceGroup Φ Γ K s) • F s) ∩ F s) ×ˢ leftCosetSet K s)
    have hM : μ (⋃ s ∈ S, M s) = 0 := by
      refine (measure_biUnion_null_iff S.countable_toSet).2 fun s hs => ?_
      refine measure_iUnion_null fun h => ?_
      refine measure_preimage_prod_null (hVo _) (hVc _) ?_
      have hne : (⟨(Φ g).1, h⟩ : sliceGroup Φ Γ K s) ≠ 1 := by
        intro h1
        exact hg (Subtype.ext (hinj g g.2 (congrArg Subtype.val h1)))
      have := (hF s hs).1.aedisjoint hne
      simpa [Function.onFun, AEDisjoint] using this
    refine measure_mono_null ?_ hM
    rintro z ⟨hz1, hz2⟩
    rw [mem_smul_set_iff_inv_smul_mem] at hz1
    obtain ⟨q, hq, hzq⟩ := mem_iUnion₂.1 hz1
    obtain ⟨q', hq', hzq'⟩ := mem_iUnion₂.1 hz2
    have hgz : Φ (g⁻¹ • z) = ((Φ g).1⁻¹ * (Φ z).1, (Φ g).2⁻¹ * (Φ z).2) := by
      rw [Subgroup.smul_def, smul_eq_mul, map_mul]
      simp [Prod.ext_iff]
    obtain ⟨hzF, hzK⟩ := hzq
    obtain ⟨hzF', hzK'⟩ := hzq'
    change (Φ (g⁻¹ • z)).1 ∈ F (rep q) at hzF
    change (Φ (g⁻¹ • z)).2 ∈ leftCosetSet K (rep q) at hzK
    rw [hgz] at hzF hzK
    simp only at hzF hzK
    change (rep q)⁻¹ * ((Φ g).2⁻¹ * (Φ z).2) ∈ K at hzK
    change (rep q')⁻¹ * (Φ z).2 ∈ K at hzK'
    have e1 : Quotient.mk R (rep q) = Quotient.mk R (Φ z).2 :=
      Quotient.sound ⟨g, g.2, _, hzK, by group⟩
    have e2 : Quotient.mk R (rep q') = Quotient.mk R (Φ z).2 :=
      Quotient.sound ⟨1, Γ.one_mem, _, hzK', by simp⟩
    have hqq : q = q' := by
      rw [← (hT q hq).2, ← (hT q' hq').2, e1, e2]
    subst hqq
    have hslice : (Φ g).1 ∈ sliceGroup Φ Γ K (rep q) := by
      refine mem_sliceGroup.2 ⟨g, g.2, ?_, rfl⟩
      have : (rep q)⁻¹ * (Φ g).2 * rep q =
          ((rep q)⁻¹ * (Φ z).2) * ((rep q)⁻¹ * ((Φ g).2⁻¹ * (Φ z).2))⁻¹ := by
        group
      rw [this]
      exact K.mul_mem hzK' (K.inv_mem hzK)
    refine mem_iUnion₂.2 ⟨rep q, (hT q hq).1, mem_iUnion.2 ⟨hslice, ?_⟩⟩
    refine ⟨⟨?_, hzF'⟩, hzK'⟩
    rw [mem_smul_set_iff_inv_smul_mem, Subgroup.smul_def, smul_eq_mul]
    exact hzF
  ·
    exact fun g => (measurePreserving_smul g μ).quasiMeasurePreserving
  ·
    refine (measure_biUnion_finset_le T _).trans_lt (ENNReal.sum_lt_top.2 fun q hq => ?_)
    exact measure_preimage_prod_lt_top (hVo _) (hVc _) (hF _ (hT q hq).1).2

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDoubleCosetCovolume =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDualLatticeMultiple =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDualLatticeMultiple", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StDualLatticeMultiple\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open NumberField GroundTheory.Automorphic Module

noncomputable section

theorem inverseDifferent_multiple (E : Type*) [Field E] [NumberField E] :
    ∃ δ : ℤ, δ ≠ 0 ∧ ∀ z : E, (∀ a : 𝓞 E, ∃ n : ℤ, Algebra.trace ℚ E ((a : E) * z) = n) →
      IsIntegral ℤ ((δ : E) * z) := by
  classical
  set b := integralBasis E
  set bd := (Algebra.traceForm ℚ E).dualBasis (traceForm_nondegenerate ℚ E) b
  obtain ⟨δ, hδ, hint⟩ := exists_integral_multiples ℤ ℚ (Finset.univ.image bd)
  refine ⟨δ, hδ, fun z hz => ?_⟩
  have hsum := bd.sum_repr z
  have key : (δ : E) * z = ∑ i, (bd.repr z i) • ((δ : E) * bd i) := by
    conv_lhs => rw [← hsum]
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Algebra.smul_def, Algebra.smul_def]; ring
  rw [key]
  refine IsIntegral.sum _ fun i _ => ?_
  obtain ⟨n, hn⟩ := hz (RingOfIntegers.basis E i)
  have hr : bd.repr z i = (n : ℚ) := by
    rw [LinearMap.BilinForm.dualBasis_repr_apply, Algebra.traceForm_apply, integralBasis_apply,
      mul_comm, hn]
  rw [hr, show ((n : ℚ) • ((δ : E) * bd i)) = (n : ℤ) • ((δ : E) * bd i) by
    rw [← Int.cast_smul_eq_zsmul ℚ]]
  refine IsIntegral.smul _ ?_
  have := hint (bd i) (Finset.mem_image_of_mem _ (Finset.mem_univ i))
  rwa [zsmul_eq_mul] at this

variable {F E : Type*} [Field F] [Field E] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E]
variable {W : Type*} [AddCommGroup W] [Module E W]

theorem DualLatticeMultiple.proof (h : HermitianForm F E W) : DualLatticeMultiple.Statement h := by
  intro D
  obtain ⟨δ, hδ, hdiff⟩ := inverseDifferent_multiple E
  refine ⟨δ * (D.factorial : ℤ), mul_ne_zero hδ (by exact_mod_cast D.factorial_ne_zero),
    fun La hLa => ⟨fun x hx y hy => ?_, fun y hy => ?_⟩⟩
  · have hi : IsIntegral ℤ (Algebra.trace ℚ E (h.toSesq x y)) :=
      Algebra.isIntegral_trace ((mem_integralClosure_iff ℤ E).mp (hLa.integral x hx y hy))
    obtain ⟨n, hn⟩ := IsIntegrallyClosed.isIntegral_iff.mp hi
    exact ⟨n, by rw [← hn]; simp⟩
  ·
    have hdual : δ • y ∈ dualLattice h La := by
      intro x hx
      rw [map_zsmul, LinearMap.smul_apply, zsmul_eq_mul]
      refine (mem_integralClosure_iff ℤ E).mpr (hdiff _ fun a => ?_)
      obtain ⟨n, hn⟩ := hy _ (hLa.isLattice.smul_mem a x hx)
      exact ⟨n, by rw [← hn, LinearMap.map_smul, smul_eq_mul]⟩

    have hm := AddSubgroup.nsmul_relIndex_mem La hdual
    obtain ⟨c, hc⟩ := Nat.dvd_factorial (Nat.pos_of_ne_zero hLa.index_ne_zero) hLa.index_le
    have : (D.factorial : ℤ) • (δ • y) ∈ La := by
      rw [hc, natCast_zsmul, mul_comm, mul_nsmul]
      rw [smul_comm]
      exact AddSubgroup.nsmul_mem _ hm _
    rwa [smul_smul, mul_comm] at this

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDualLatticeMultiple =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PHaarParabolicCoordinates =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PHaarParabolicCoordinates", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsHaarParabolicCoordinates\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsLineStabHaar\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsArchUnimodular\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsMajorantStabCompact\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.Statements\npublic import GroundTheory.AutomorphicForms.HaarSK\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.SecondCountableTopologyArchUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open NumberField GroundTheory.Automorphic Module Matrix MeasureTheory
open scoped ENNReal NNReal

noncomputable section

variable {F E : Type*} [Field F] [Field E] [NumberField F] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E]
variable {W : Type*} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι] [DecidableEq ι]


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
theorem HaarParabolicCoordinates.proof (h : HermitianForm F E W) (v : Basis ι E W)
    (h₁ : ParabolicDecomposition.Statement h v) (h₂ : ArchUnimodular.Statement h v)
    (h₃ : MajorantStabCompact.Statement h v) (h₄ : LineStabHaar.Statement h v) :
    HaarParabolicCoordinates.Statement h v := by
  intro M μ _ x₀ hx₀ hiso
  have : μ.IsMulRightInvariant := h₂ μ
  have : CompactSpace M.stab := isCompact_iff_compactSpace.mp (h₃ M)
  set κ : Measure M.stab := Measure.haarMeasure ⊤ with hκ
  have : IsProbabilityMeasure κ :=
    ⟨by simpa using Measure.haarMeasure_self (K₀ := (⊤ : TopologicalSpace.PositiveCompacts M.stab))⟩
  have hSK : Function.Surjective (HaarSK.mulMap (lineStab h v x₀) M.stab) := by
    intro g
    obtain ⟨p, k, hk, rfl, hp⟩ := h₁ M x₀ hx₀ hiso g
    exact ⟨(⟨p, hp⟩, ⟨k, hk⟩), rfl⟩
  obtain ⟨c, -, hc⟩ := HaarSK.exists_lintegral_eq μ (isClosed_lineStab h v x₀) (h₃ M) hSK
    (Measure.haar : Measure (lineStab h v x₀)) κ
  obtain ⟨ν, τ, hν, hτ, -, hτx, hP⟩ := h₄ x₀ hx₀ hiso Measure.haar
  have hc0 : (c : ℝ≥0∞) ≠ 0 := by
    intro h0
    have h1 := hc 1 measurable_const
    rw [h0, zero_mul] at h1
    simp only [Pi.one_apply, lintegral_const, one_mul] at h1
    exact (Measure.IsOpenPosMeasure.open_pos Set.univ isOpen_univ Set.univ_nonempty) h1
  have := hν
  refine ⟨(c : ℝ≥0∞) • ν, κ, τ, Measure.IsHaarMeasure.smul ν hc0 ENNReal.coe_ne_top, inferInstance,
    inferInstance, hτ, hτx, fun f hf => ?_⟩
  have hφ : Measurable fun g : archUnitary h v => ∫⁻ k : M.stab, f (g * k) ∂κ :=
    (hf.comp (measurable_fst.mul (measurable_subtype_coe.comp measurable_snd))).lintegral_prod_right'
  have hPφ := hP _ hφ
  rw [hc f hf, hPφ, ← lintegral_const_mul' _ _ ENNReal.coe_ne_top]
  refine lintegral_congr fun b => ?_
  have hswap : ∫⁻ x : vecFixGroup h v x₀, ∫⁻ k : M.stab, f ((x : archUnitary h v) * τ b * k) ∂κ ∂ν =
      ∫⁻ k : M.stab, ∫⁻ x : vecFixGroup h v x₀, f ((x : archUnitary h v) * (τ b * k)) ∂ν ∂κ := by
    rw [lintegral_lintegral_swap]
    · simp only [mul_assoc]
    · exact (hf.comp (((measurable_subtype_coe.comp measurable_fst).mul_const (τ b)).mul
        (measurable_subtype_coe.comp measurable_snd))).aemeasurable
  simp only [lintegral_smul_measure, smul_eq_mul]
  rw [lintegral_const_mul' _ _ ENNReal.coe_ne_top, hswap]
  ring

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PHaarParabolicCoordinates =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PIntegralFormCovolume =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PIntegralFormCovolume", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StIntegralFormCovolume\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Localization.Module\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open Module MeasureTheory Matrix

noncomputable section

variable (Q V K : Type*) [AddCommGroup Q] [Module ℚ Q] [NormedAddCommGroup V] [NormedSpace ℝ V]
  [FiniteDimensional ℝ V] [MeasurableSpace V] [BorelSpace V] [Fintype K]

theorem IntegralFormCovolume.proof : IntegralFormCovolume.Statement Q V K := by
  classical
  intro ψ e T μ hμ hT hli hrank
  have : FiniteDimensional ℚ Q := Module.Finite.of_basis e
  have hQ : finrank ℚ Q = Fintype.card K := finrank_eq_card_basis e
  let b₀ : Basis K ℝ V := basisOfLinearIndependentOfCardEqFinrank' _ hli hrank.symm
  have hb₀ : ∀ i, b₀ i = ψ (e i) := fun i => by simp [b₀]
  have hGe : (LinearMap.BilinForm.toMatrix e T).det ≠ 0 :=
    (LinearMap.BilinForm.nondegenerate_iff_det_ne_zero e).1 hT
  refine ⟨μ.real (ZSpan.fundamentalDomain b₀) ^ 2 /
    |((LinearMap.BilinForm.toMatrix e T).det : ℝ)|, ?_⟩
  intro L k hk hfg hspan _ hdual
  set M := AddSubgroup.toIntSubmodule L with hM
  have : Module.Finite ℤ M := Module.Finite.iff_fg.2 ((Submodule.fg_iff_addSubgroup_fg M).2 hfg)
  have : Module.IsTorsionFree ℤ Q := .trans_faithfulSMul ℤ ℚ Q
  have hψq : ∀ (q : ℚ) (y : Q), ψ (q • y) = (q : ℝ) • ψ y := fun q y => by
    simpa using map_ratCast_smul ψ ℚ ℝ q y

  let x₀ := Module.Free.chooseBasis ℤ M
  have hli₀ : LinearIndependent ℚ (M.subtype ∘ x₀) :=
    (LinearIndependent.iff_fractionRing ℤ ℚ).1
      (x₀.linearIndependent.map' M.subtype (Submodule.ker_subtype M))
  have hspan₀ : Submodule.span ℤ (Set.range (M.subtype ∘ x₀)) = M := by
    rw [Set.range_comp, Submodule.span_image, x₀.span_eq, Submodule.map_top, Submodule.range_subtype]
  have hspanq : Submodule.span ℚ (Set.range (M.subtype ∘ x₀)) = ⊤ := by
    rw [← Submodule.span_span_of_tower ℤ, hspan₀]
    exact hspan
  let xq₀ : Basis _ ℚ Q := Basis.mk hli₀ hspanq.ge
  let σ := Fintype.equivOfCardEq ((finrank_eq_card_basis xq₀).symm.trans hQ)
  let x := x₀.reindex σ
  let xq := xq₀.reindex σ
  have hxq : ∀ i, xq i = (x i : Q) := fun i => by simp [xq, x, xq₀]
  have hspanx : Submodule.span ℤ (Set.range fun i => xq i) = M := by
    have : (fun i => xq i) = M.subtype ∘ x := funext hxq
    rw [this, Set.range_comp, Submodule.span_image, x.span_eq, Submodule.map_top,
      Submodule.range_subtype]

  set P := e.toMatrix xq with hP
  have hψe : ∀ y, ψ y = ∑ i, (e.repr y i : ℝ) • b₀ i := fun y => by
    calc ψ y = ψ (∑ i, e.repr y i • e i) := by rw [e.sum_repr]
      _ = _ := by rw [map_sum]; simp only [hψq, hb₀]
  have hmat : b₀.toMatrix (fun j => ψ (xq j)) = P.map (Rat.cast : ℚ → ℝ) := by
    ext i j
    rw [Basis.toMatrix_apply, hψe, b₀.repr_sum_self]
    simp [P, Basis.toMatrix_apply]
  have hdetP : b₀.det (fun j => ψ (xq j)) = (P.det : ℝ) := by
    rw [Basis.det_apply, hmat]
    simpa using (RingHom.map_det (Rat.castHom ℝ) P).symm
  have hP0 : P.det ≠ 0 := by
    rw [hP, ← Basis.det_apply]
    exact (e.isUnit_det xq).ne_zero
  have hw : LinearIndependent ℝ (fun j => ψ (xq j)) :=
    ((Basis.is_basis_iff_det b₀).2 (by rw [hdetP]; exact isUnit_iff_ne_zero.2 (by exact_mod_cast hP0))).1
  let bx : Basis K ℝ V := basisOfLinearIndependentOfCardEqFinrank' _ hw hrank.symm
  have hL : AddSubgroup.toIntSubmodule (L.map ψ) = Submodule.span ℤ (Set.range bx) := by
    change M.map ψ.toIntLinearMap = _
    rw [← hspanx, Submodule.map_span, ← Set.range_comp]
    congr 1
    simp [bx, Function.comp_def]

  have hPk : P.det ^ 2 * |(LinearMap.BilinForm.toMatrix e T).det| ≤ |(k : ℚ)| ^ Fintype.card K := by
    have hG : (LinearMap.BilinForm.toMatrix xq T).det =
        P.det ^ 2 * (LinearMap.BilinForm.toMatrix e T).det := by
      rw [← LinearMap.BilinForm.toMatrix_mul_basis_toMatrix e xq T, det_mul, det_mul, det_transpose]
      ring
    set d := T.dualBasis hT xq
    have hd : ∀ i j, T (d i) (xq j) = if j = i then 1 else 0 :=
      LinearMap.BilinForm.apply_dualBasis_left hT xq
    have hc : ∀ i, ∃ c : K → ℤ, ∑ j, c j • xq j = k • d i := by
      intro i
      have hmem : k • d i ∈ L := hdual (d i) fun y hy => by
        have hy' : y ∈ Submodule.span ℤ (Set.range fun j => xq j) := by rw [hspanx]; exact hy
        obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun ℤ).1 hy'
        exact ⟨c i, by simp [map_sum, hd]⟩
      have hmem' : k • d i ∈ Submodule.span ℤ (Set.range fun j => xq j) := by
        rw [hspanx]; exact hmem
      exact (Submodule.mem_span_range_iff_exists_fun ℤ).1 hmem'
    choose c₀ hc using hc
    set c : Matrix K K ℤ := Matrix.of c₀ with hcdef
    have hcG : c.map (Int.cast : ℤ → ℚ) * LinearMap.BilinForm.toMatrix xq T = (k : ℚ) • 1 := by
      ext i l
      have h1 := congrArg (fun y => T y (xq l)) (hc i)
      simp [hd] at h1
      rw [Matrix.mul_apply, Matrix.smul_apply, Matrix.one_apply]
      simp only [Matrix.map_apply, LinearMap.BilinForm.toMatrix_apply, hcdef, Matrix.of_apply]
      simpa [zsmul_eq_mul, eq_comm] using h1
    have hdet := congrArg Matrix.det hcG
    rw [det_mul, det_smul, det_one, mul_one, hG] at hdet
    have hcd : (c.map (Int.cast : ℤ → ℚ)).det = (c.det : ℚ) := by
      simpa using (RingHom.map_det (Int.castRingHom ℚ) c).symm
    rw [hcd] at hdet
    have hc0 : c.det ≠ 0 := by
      rintro h0
      rw [h0, Int.cast_zero, zero_mul] at hdet
      exact pow_ne_zero _ (Int.cast_ne_zero.2 hk) hdet.symm
    have h1 : (1 : ℚ) ≤ |(c.det : ℚ)| := by exact_mod_cast Int.one_le_abs hc0
    calc P.det ^ 2 * |(LinearMap.BilinForm.toMatrix e T).det|
        = |P.det ^ 2 * (LinearMap.BilinForm.toMatrix e T).det| := by
          rw [abs_mul, abs_pow, sq_abs]
      _ ≤ |(c.det : ℚ)| * |P.det ^ 2 * (LinearMap.BilinForm.toMatrix e T).det| :=
          le_mul_of_one_le_left (abs_nonneg _) h1
      _ = |(k : ℚ)| ^ Fintype.card K := by rw [← abs_mul, hdet, abs_pow]
  have hPkR : (P.det : ℝ) ^ 2 * |((LinearMap.BilinForm.toMatrix e T).det : ℝ)| ≤
      |(k : ℝ)| ^ Fintype.card K := by exact_mod_cast hPk

  rw [hL]
  refine ⟨inferInstance, inferInstance, ?_⟩
  have := hμ
  let bZ : Basis K ℤ (Submodule.span ℤ (Set.range bx)) :=
    Basis.span (bx.linearIndependent.restrict_scalars' ℤ)
  have hcoe : ((↑) ∘ bZ : K → V) = fun j => ψ (xq j) := funext fun i => by
    simp [bZ, Basis.span_apply, bx]
  rw [ZLattice.covolume_eq_det_mul_measureReal _ μ bZ b₀, hcoe, hdetP, mul_pow, sq_abs,
    div_mul_eq_mul_div, le_div_iff₀ (abs_pos.2 (by exact_mod_cast hGe))]
  calc (P.det : ℝ) ^ 2 * μ.real (ZSpan.fundamentalDomain b₀) ^ 2 *
        |((LinearMap.BilinForm.toMatrix e T).det : ℝ)|
      = μ.real (ZSpan.fundamentalDomain b₀) ^ 2 *
        ((P.det : ℝ) ^ 2 * |((LinearMap.BilinForm.toMatrix e T).det : ℝ)|) := by ring
    _ ≤ μ.real (ZSpan.fundamentalDomain b₀) ^ 2 * |(k : ℝ)| ^ Fintype.card K :=
        mul_le_mul_of_nonneg_left hPkR (sq_nonneg _)

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PIntegralFormCovolume =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PLatticePointsBelowFinite =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PLatticePointsBelowFinite", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.Imports\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CoerciveOfPositiveDefinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open NumberField GroundTheory.Automorphic Module Matrix
open scoped ComplexOrder

noncomputable section

section Spaces

variable {F E : Type*} [Field F] [Field E] [NumberField F] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E]
variable {W : Type*} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι] [DecidableEq ι]


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
theorem exists_coord_le_len {h : HermitianForm F E W} {v : Basis ι E W} (M : Majorant h v)
    (g : archUnitary h v) : ∃ K : ℝ, 0 ≤ K ∧ ∀ (y : InfinitePlace E → ι → ℂ) w i,
      ‖y w i‖ ≤ K * M.len (invApply g y) := by
  choose c hc hcoer using fun w => _root_.UpperTheory.Reformulated.B.CoerciveOfPositiveDefinite.exists_coercive_of_posDef (M.posDef w)
  set G : InfinitePlace E → Matrix ι ι ℂ := fun w =>
    (((g : archUnitary h v) : InfinitePlace E → GL ι ℂ) w : Matrix ι ι ℂ) with hG
  refine ⟨∑ w, ∑ i, ∑ j, ‖G w i j‖ / Real.sqrt (c w), by positivity, fun y w i => ?_⟩
  set z := invApply g y with hz
  have hre : ∀ w', 0 ≤ (star (z w') ⬝ᵥ (M.P w' *ᵥ z w')).re := fun w' =>
    (Complex.nonneg_iff.mp ((M.posDef w').posSemidef.dotProduct_mulVec_nonneg (z w'))).1
  have hinv : G w * (((g⁻¹ : archUnitary h v) : InfinitePlace E → GL ι ℂ) w : Matrix ι ι ℂ) = 1 := by
    simp [hG]
  have hy : y w = G w *ᵥ z w := by
    rw [hz, invApply, mulVec_mulVec, hinv, one_mulVec]
  have hzj : ∀ j, ‖z w j‖ ≤ M.len z / Real.sqrt (c w) := by
    intro j
    have hsq : 0 < Real.sqrt (c w) := Real.sqrt_pos.2 (hc w)
    rw [le_div_iff₀ hsq]
    have h1 : c w * ‖z w j‖ ^ 2 ≤ ∑ w', (star (z w') ⬝ᵥ (M.P w' *ᵥ z w')).re :=
      (hcoer w (z w) j).trans (Finset.single_le_sum (fun w' _ => hre w') (Finset.mem_univ w))
    have h2 := Real.sqrt_le_sqrt h1
    rw [Real.sqrt_mul (hc w).le, Real.sqrt_sq (norm_nonneg _)] at h2
    unfold Majorant.len
    linarith
  have hlen : 0 ≤ M.len z := Real.sqrt_nonneg _
  calc ‖y w i‖ = ‖∑ j, G w i j * z w j‖ := by rw [hy]; rfl
    _ ≤ ∑ j, ‖G w i j‖ * ‖z w j‖ := (norm_sum_le _ _).trans (by simp)
    _ ≤ ∑ j, ‖G w i j‖ / Real.sqrt (c w) * M.len z := by
        refine Finset.sum_le_sum fun j _ => ?_
        rw [div_mul_eq_mul_div, mul_div_assoc]
        exact mul_le_mul_of_nonneg_left (hzj j) (norm_nonneg _)
    _ = (∑ j, ‖G w i j‖ / Real.sqrt (c w)) * M.len z := by rw [Finset.sum_mul]
    _ ≤ (∑ w', ∑ i', ∑ j, ‖G w' i' j‖ / Real.sqrt (c w')) * M.len z := by
        refine mul_le_mul_of_nonneg_right ?_ hlen
        refine le_trans ?_ (Finset.single_le_sum (f := fun w' => ∑ i', ∑ j,
          ‖G w' i' j‖ / Real.sqrt (c w')) (fun _ _ => by positivity) (Finset.mem_univ w))
        exact Finset.single_le_sum (f := fun i' => ∑ j, ‖G w i' j‖ / Real.sqrt (c w))
          (fun _ _ => by positivity) (Finset.mem_univ i)


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
theorem LatticePointsBelowFinite.proof (h : HermitianForm F E W) (v : Basis ι E W) :
    LatticePointsBelowFinite.Statement h v := by
  classical
  intro M La g t hLa
  obtain ⟨S, hS⟩ := hLa.fg

  obtain ⟨d, hd0, hd⟩ := exists_integral_multiples ℤ ℚ
    (S.biUnion fun s => Finset.univ.image fun i => v.repr s i)
  let T : AddSubgroup W :=
    { carrier := {y | ∀ i, IsIntegral ℤ (d • v.repr y i)}
      add_mem' := fun {a b} ha hb i => by
        simpa only [map_add (f := _), Finsupp.add_apply, smul_add] using (ha i).add (hb i)
      zero_mem' := fun i => by
        simpa only [map_zero, Finsupp.zero_apply, smul_zero] using isIntegral_zero
      neg_mem' := fun {a} ha i => by
        simpa only [map_neg, Finsupp.neg_apply, smul_neg] using (ha i).neg }
  have hLaT : La ≤ T := by
    have hall : ∀ s : La, (s : W) ∈ T := by
      intro s
      have hmem : s ∈ AddSubsemigroup.closure (S : Set La) := by
        rw [hS]
        trivial
      induction hmem using AddSubsemigroup.closure_induction with
      | mem s hs =>
        intro i
        exact hd _ (Finset.mem_biUnion.2 ⟨s, hs, Finset.mem_image.2 ⟨i, Finset.mem_univ _, rfl⟩⟩)
      | add a b _ _ ha hb => exact T.add_mem ha hb
    intro x hx
    exact hall ⟨x, hx⟩
  have hdE : (d : E) ≠ 0 := Int.cast_ne_zero.2 hd0

  obtain ⟨K, hK0, hK⟩ := exists_coord_le_len M g
  set B : ℝ := |(d : ℝ)| * (K * t) with hB
  set A : Set E := {a | IsIntegral ℤ a ∧ ∀ φ : E →+* ℂ, ‖φ a‖ ≤ B} with hA
  have hAfin : A.Finite := NumberField.Embeddings.finite_of_norm_le E ℂ B
  set φ : W → ι → E := fun x i => d • v.repr x i with hφ
  have hinj : Function.Injective φ := by
    intro x y hxy
    refine v.repr.injective (Finsupp.ext fun i => ?_)
    have := congrFun hxy i
    simp only [hφ, zsmul_eq_mul] at this
    exact mul_left_cancel₀ hdE this
  refine ((Set.Finite.pi (t := fun _ : ι => A) fun _ => hAfin).preimage hinj.injOn).subset ?_
  rintro x ⟨hx, hxt⟩ i -
  refine ⟨hLaT hx i, fun ψ => ?_⟩
  have hw : ‖ψ (v.repr x i)‖ = ‖(InfinitePlace.mk ψ).embedding (v.repr x i)‖ := by
    rw [InfinitePlace.norm_embedding_eq, InfinitePlace.apply]
  have hb := hK (vecAt v x) (InfinitePlace.mk ψ) i
  change ‖ψ (d • v.repr x i)‖ ≤ B
  rw [zsmul_eq_mul, map_mul, map_intCast, norm_mul, Complex.norm_intCast, hw, hB]
  refine mul_le_mul_of_nonneg_left ?_ (abs_nonneg _)
  exact hb.trans (mul_le_mul_of_nonneg_left hxt.le hK0)

end Spaces

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PLatticePointsBelowFinite =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PMajorantTransport =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PMajorantTransport", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StMajorantTransport\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\npublic import Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\npublic import Mathlib.RingTheory.Complex\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open NumberField GroundTheory.Automorphic Module Matrix Topology MeasureTheory
open scoped MatrixOrder ComplexOrder

noncomputable section

variable {F E : Type*} [Field F] [Field E] [NumberField F] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E]
variable {W : Type*} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι] [DecidableEq ι]

namespace MajorantTransport

theorem exists_conjTranspose_mul_self {P : Matrix ι ι ℂ} (hP : P.PosDef) :
    ∃ X : Matrix ι ι ℂ, Xᴴ * X = P := by
  refine ⟨CFC.sqrt P, ?_⟩
  rw [(CFC.sqrt_nonneg P).posSemidef.isHermitian.eq]
  exact CFC.sqrt_mul_sqrt_self P hP.posSemidef.nonneg

theorem measurePreserving_mulVec {A : Matrix ι ι ℂ} (hA : Complex.normSq A.det = 1) :
    MeasurePreserving (fun z : ι → ℂ => A *ᵥ z) volume volume := by
  let f : (ι → ℂ) →ₗ[ℝ] (ι → ℂ) := (Matrix.toLin' A).restrictScalars ℝ
  have hdet : LinearMap.det f = 1 := by
    rw [LinearMap.det_restrictScalars, LinearMap.det_toLin', Algebra.norm_complex_apply, hA]
  have hcoe : (⇑f) = fun z : ι → ℂ => A *ᵥ z := by
    funext z; simp [f]
  have hmap := Measure.map_linearMap_addHaar_eq_smul_addHaar (μ := (volume : Measure (ι → ℂ)))
    (f := f) (by rw [hdet]; exact one_ne_zero)
  rw [hdet, hcoe] at hmap
  have hm := (LinearMap.continuous_of_finiteDimensional f).measurable
  rw [hcoe] at hm
  refine ⟨hm, ?_⟩
  simpa using hmap


omit [NumberField F] [NumberField E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
theorem normSq_det (h : HermitianForm F E W) (v : Basis ι E W) (g : archUnitary h v)
    (w : InfinitePlace E) : Complex.normSq ((g : InfinitePlace E → GL ι ℂ) w : Matrix ι ι ℂ).det = 1 := by
  have hg := mem_archUnitary.mp g.2 w
  have hH : (gramAt h v w).det ≠ 0 := by
    simp only [gramAt]
    rw [show ((gram h.toSesq v).map w.embedding).det = w.embedding (gram h.toSesq v).det from
      (RingHom.map_det w.embedding _).symm]
    exact ((isUnit_det_gram h v).map w.embedding).ne_zero
  set G : Matrix ι ι ℂ := ((g : InfinitePlace E → GL ι ℂ) w : Matrix ι ι ℂ)
  rw [show (G.map ⇑(starRingEnd ℂ))ᵀ = Gᴴ from rfl] at hg
  have h1 := congrArg Matrix.det hg
  rw [det_mul, det_mul, det_conjTranspose, show star G.det = starRingEnd ℂ G.det from rfl] at h1
  have h2 : starRingEnd ℂ G.det * G.det = 1 := by
    apply mul_right_cancel₀ hH
    linear_combination h1
  have h3 : (Complex.normSq G.det : ℂ) = 1 := by
    rw [Complex.normSq_eq_conj_mul_self, h2]
  exact_mod_cast h3

def sqrtMap (Q : InfinitePlace E → Matrix ι ι ℂ) :
    (InfinitePlace E → ι → ℂ) →ₗ[ℂ] EuclideanSpace ℂ (InfinitePlace E × ι) where
  toFun y := WithLp.toLp 2 (fun p => (Q p.1 *ᵥ y p.1) p.2)
  map_add' y z := by ext p; simp [mulVec_add]
  map_smul' c y := by ext p; simp [mulVec_smul]


omit [_root_.NumberField.IsTotallyComplex E] [DecidableEq ι] in
theorem norm_sq_sqrtMap (Q : InfinitePlace E → Matrix ι ι ℂ) (y : InfinitePlace E → ι → ℂ) :
    ‖sqrtMap Q y‖ ^ 2 = ∑ w, (star (y w) ⬝ᵥ (((Q w)ᴴ * Q w) *ᵥ y w)).re := by
  rw [EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun w _ => ?_
  rw [← mulVec_mulVec, dotProduct_mulVec, ← star_mulVec]
  simp only [sqrtMap, LinearMap.coe_mk, AddHom.coe_mk, PiLp.toLp_apply, dotProduct, Pi.star_apply,
    Complex.re_sum, Complex.star_def, Complex.conj_mul']
  refine Finset.sum_congr rfl fun i _ => ?_
  norm_cast


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
theorem exists_isometry {h : HermitianForm F E W} {v : Basis ι E W} (M : Majorant h v) :
    ∃ (d : ℕ) (S : (InfinitePlace E → ι → ℂ) ≃L[ℝ] EuclideanSpace ℝ (Fin d)),
      ∀ y, ‖S y‖ = M.len y := by
  choose Q hQ using fun w => exists_conjTranspose_mul_self (M.posDef w)
  have hnorm : ∀ y, ‖sqrtMap Q y‖ = M.len y := by
    intro y
    rw [Majorant.len, ← Real.sqrt_sq (norm_nonneg (sqrtMap Q y)), norm_sq_sqrtMap]
    simp only [hQ]
  have hinj : Function.Injective (sqrtMap Q) := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro y hy
    have h0 : ∑ w, (star (y w) ⬝ᵥ (M.P w *ᵥ y w)).re = 0 := by
      have := norm_sq_sqrtMap Q y
      simp only [hQ, hy, norm_zero] at this
      linarith
    have hnn : ∀ w, 0 ≤ (star (y w) ⬝ᵥ (M.P w *ᵥ y w)).re := fun w =>
      (Complex.nonneg_iff.mp ((M.posDef w).posSemidef.dotProduct_mulVec_nonneg (y w))).1
    funext w
    by_contra hw
    have hpos := (Complex.lt_def.mp ((M.posDef w).dotProduct_mulVec_pos hw)).1
    have := (Finset.sum_eq_zero_iff_of_nonneg fun w _ => hnn w).mp h0 w (Finset.mem_univ _)
    simp only [Complex.zero_re] at hpos
    linarith
  have hdim : finrank ℂ (InfinitePlace E → ι → ℂ) =
      finrank ℂ (EuclideanSpace ℂ (InfinitePlace E × ι)) := by
    simp [Module.finrank_pi_fintype, finrank_euclideanSpace, Fintype.card_prod]
  let e : (InfinitePlace E → ι → ℂ) ≃ₗ[ℂ] EuclideanSpace ℂ (InfinitePlace E × ι) :=
    LinearEquiv.ofBijective (sqrtMap Q)
      ⟨hinj, (LinearMap.injective_iff_surjective_of_finrank_eq_finrank hdim).mp hinj⟩
  let b := stdOrthonormalBasis ℝ (EuclideanSpace ℂ (InfinitePlace E × ι))
  refine ⟨_, (e.restrictScalars ℝ).toContinuousLinearEquiv.trans b.repr.toContinuousLinearEquiv,
    fun y => ?_⟩
  simp only [ContinuousLinearEquiv.trans_apply, LinearIsometryEquiv.coe_toContinuousLinearEquiv,
    LinearIsometryEquiv.norm_map]
  exact hnorm y

def invApplyEquiv {h : HermitianForm F E W} {v : Basis ι E W} (g : archUnitary h v) :
    (InfinitePlace E → ι → ℂ) ≃L[ℝ] (InfinitePlace E → ι → ℂ) :=
  LinearEquiv.toContinuousLinearEquiv
    { toFun := invApply g
      invFun := invApply g⁻¹
      map_add' := fun y z => by funext w; simp [invApply, mulVec_add]
      map_smul' := fun c y => by funext w; simp [invApply, mulVec_smul]
      left_inv := fun y => by funext w; simp [invApply, mulVec_mulVec]
      right_inv := fun y => by funext w; simp [invApply, mulVec_mulVec] }


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
theorem measurePreserving_invApply {h : HermitianForm F E W} {v : Basis ι E W}
    (g : archUnitary h v) : MeasurePreserving (invApply g) volume volume :=
  measurePreserving_pi (fun _ => volume) (fun _ => volume)
    (fun w => measurePreserving_mulVec (normSq_det h v g⁻¹ w))

end MajorantTransport


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
theorem MajorantTransport.proof (h : HermitianForm F E W) (v : Basis ι E W) :
    MajorantTransport.Statement h v := by
  intro M
  have : (volume : Measure (InfinitePlace E → ι → ℂ)).IsAddHaarMeasure :=
    Measure.pi.isAddHaarMeasure _
  obtain ⟨d, S, hS⟩ := MajorantTransport.exists_isometry M
  set c := Measure.addHaarScalarFactor (Measure.map S.symm volume)
    (volume : Measure (InfinitePlace E → ι → ℂ))
  have hc : Measure.map S.symm volume = c • (volume : Measure (InfinitePlace E → ι → ℂ)) :=
    Measure.isAddLeftInvariant_eq_smul (Measure.map S.symm volume) volume
  refine ⟨d, c, fun g => ⟨(MajorantTransport.invApplyEquiv g).trans S, fun y => hS _,
    fun L _ _ => ?_⟩⟩
  set T := (MajorantTransport.invApplyEquiv g).trans S
  have hT : MeasurePreserving T.symm volume (Measure.map T.symm volume) :=
    T.symm.continuous.measurable.measurePreserving _
  rw [ZLattice.covolume_comap L (Measure.map T.symm volume) volume hT]
  have hsymm : ⇑(MajorantTransport.invApplyEquiv g).symm = invApply g⁻¹ := rfl
  have hmap : Measure.map T.symm volume = c • (volume : Measure (InfinitePlace E → ι → ℂ)) := by
    have hcomp : ⇑T.symm = (MajorantTransport.invApplyEquiv g).symm ∘ S.symm := rfl
    rw [hcomp, ← Measure.map_map (MajorantTransport.invApplyEquiv g).symm.continuous.measurable
      S.symm.continuous.measurable, hc,
      Measure.map_smul c (MajorantTransport.invApplyEquiv g).symm.continuous.measurable.aemeasurable, hsymm,
      (MajorantTransport.measurePreserving_invApply g⁻¹).map_eq]
  let b := Module.Free.chooseBasis ℤ L
  rw [ZLattice.covolume_eq_measure_fundamentalDomain L _ (ZLattice.isAddFundamentalDomain b _),
    ZLattice.covolume_eq_measure_fundamentalDomain L volume
      (ZLattice.isAddFundamentalDomain b volume), hmap, measureReal_nnreal_smul_apply]

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PMajorantTransport =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PStabilizerCovolume =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PStabilizerCovolume", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsStabilizerCovolume\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsSemidirectCovering\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsStabilizerLevi\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.SecondCountableTopologyArchUnitary\npublic import Mathlib.Topology.Algebra.Group.Units\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PArchLatticeDiscrete\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PComplementExtension\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PComplementForm\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDiscreteFundamentalDomain\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PWittPartner\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Dynamics.Ergodic.Action.Regular\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open NumberField GroundTheory.Automorphic Module Matrix Topology MeasureTheory
open scoped ENNReal Pointwise

noncomputable section

universe u

theorem exists_covering_of_relIndex_ne_zero {G K : Type*} [Group G] [MeasurableSpace G]
    [MeasurableMul G] [Group K] (μ : Measure G) [μ.IsMulLeftInvariant] (f : K →* G)
    (A B : Subgroup K) (hidx : A.relIndex B ≠ 0) (FD : Set G)
    (hFD : IsFundamentalDomain (B.map f) FD μ) (hfin : μ FD < ⊤) :
    ∃ T : Set G, MeasurableSet T ∧ μ T < ⊤ ∧ ∀ l, ∃ a ∈ A, f a * l ∈ T := by
  classical
  have : (A.subgroupOf B).FiniteIndex := ⟨hidx⟩
  have : Finite (B ⧸ A.subgroupOf B) := Subgroup.finite_quotient_of_finiteIndex
  let := Fintype.ofFinite (B ⧸ A.subgroupOf B)
  set bad := {l : G | ¬ ∃ γ : B.map f, γ • l ∈ FD} with hbad_def
  have hbad : μ bad = 0 :=
    measure_eq_zero_iff_ae_notMem.2 (hFD.ae_covers.mono fun x hx hx' => hx' hx)
  refine ⟨(⋃ k : B ⧸ A.subgroupOf B, (fun x => f ((Quotient.out k : B) : K) * x) ⁻¹'
    toMeasurable μ FD) ∪ toMeasurable μ bad, ?_, ?_, ?_⟩
  · exact (MeasurableSet.iUnion fun k => (measurableSet_toMeasurable μ FD).preimage
      (measurable_const_mul _)).union (measurableSet_toMeasurable μ bad)
  · refine lt_of_le_of_lt (measure_union_le _ _) ?_
    rw [measure_toMeasurable, hbad, add_zero]
    refine lt_of_le_of_lt (measure_iUnion_fintype_le μ _) ?_
    simp only [measure_preimage_mul, measure_toMeasurable]
    exact ENNReal.sum_lt_top.2 fun _ _ => hfin
  · intro l
    by_cases hl : l ∈ bad
    · exact ⟨1, one_mem _, Or.inr (subset_toMeasurable μ bad (by simpa using hl))⟩
    · rw [hbad_def, Set.mem_ofPred_eq, not_not] at hl
      obtain ⟨⟨γ, hγ⟩, hγl⟩ := hl
      obtain ⟨b, hb, rfl⟩ := Subgroup.mem_map.1 hγ
      obtain ⟨c, hc⟩ := QuotientGroup.mk_out_eq_mul (A.subgroupOf B) (⟨b, hb⟩ : B)
      set k : B ⧸ A.subgroupOf B := QuotientGroup.mk (⟨b, hb⟩ : B)
      have hcA : (((c : B) : K)) ∈ A := c.2
      refine ⟨((c : B) : K)⁻¹, inv_mem hcA, Or.inl (Set.mem_iUnion.2 ⟨k, ?_⟩)⟩
      apply subset_toMeasurable
      have e : ((Quotient.out k : B) : K) = b * ((c : B) : K) := by
        rw [hc]; rfl
      simp only [e, map_mul, map_inv, mul_assoc, mul_inv_cancel_left]
      simpa [Subgroup.smul_def] using hγl

variable {F E : Type*} [Field F] [Field E] [NumberField F] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E]
variable {W : Type u} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι] [DecidableEq ι]

theorem StabilizerCovolumeFinite.proof [FiniteDimensional E W] (h : HermitianForm F E W)
    (v : Basis ι E W) (h₁ : CovolumeFiniteBelow.{u} F E (finrank E W))
    (h₂ : ∀ (x₀ w₀ : W) (h' : HermitianForm F E (hypComplement h x₀ w₀)) (n : ℕ)
      (v' : Basis (Fin n) E (hypComplement h x₀ w₀)),
      SemidirectCovering.Statement (vecFixGroup h v x₀) (archUnitary h' v') (unipRadical h v x₀))
    (h₃ : StabilizerLevi.Statement h v) (h₄ : UnipotentModulus.Statement h v)
    (h₅ : UnipotentCocompact.Statement h v) (h₆ : CongruenceLift.Statement h) :
    StabilizerCovolumeFinite.Statement h v := by
  classical
  intro D La x₀ hLa hx₀ hne hiso ν hν

  obtain ⟨w₀, hxw, hww⟩ := WittPartner.proof h x₀ hne hiso
  have hp : IsHyperbolicPair h x₀ w₀ := ⟨hiso, hww, hxw⟩
  obtain ⟨h', hh'⟩ := ComplementForm.proof h x₀ w₀ hp
  let v' := Module.finBasis E (hypComplement h x₀ w₀)
  have hlt : finrank E (hypComplement h x₀ w₀) < finrank E W := by
    refine Submodule.finrank_lt fun htop => ?_
    have hmem : w₀ ∈ hypComplement h x₀ w₀ := htop ▸ Submodule.mem_top
    rw [mem_hypComplement, hxw] at hmem
    exact one_ne_zero hmem.1

  obtain ⟨i, q, hi, hq, hqi, hker, hiw, hcompat⟩ := h₃ x₀ w₀ hp h' hh' _ v'

  obtain ⟨D', La', G'', hLa', hG'', hidx, hlift⟩ := h₆ D La x₀ w₀ hLa hx₀ hp h' hh'
  let μL : Measure (archUnitary h' v') := Measure.haar
  obtain ⟨FD', hFD', hFD'fin⟩ :=
    h₁ (hypComplement h x₀ w₀) h' _ v' hlt μL D' La' hLa'
  obtain ⟨T, hTm, hTfin, hT⟩ := exists_covering_of_relIndex_ne_zero μL (archEmbed h' v') G''
    (latticeStab h' La') hidx FD' hFD' hFD'fin
  set Γ := (vecStabGroup h v La x₀).subgroupOf (vecFixGroup h v x₀) with hΓ
  have hcovL : ∀ l, ∃ γ ∈ Γ, q γ * l ∈ T := by
    intro l
    obtain ⟨m, hm, hml⟩ := hT l
    obtain ⟨γ₀, hγx, hγw, hγm⟩ := ComplementExtension.proof h x₀ w₀ hp h' hh' m
    have hγ₀ : γ₀ ∈ latticeStab h La := hlift m hm γ₀ hγx hγw hγm
    refine ⟨i (archEmbed h' v' m), ?_, by rw [hqi]; exact hml⟩
    rw [hΓ, Subgroup.mem_subgroupOf, hcompat γ₀ m hγx hγw hγm]
    exact ⟨⟨γ₀, hγ₀⟩, hγx, rfl⟩

  obtain ⟨C, hC, hcovN⟩ := h₅ D La x₀ hLa hx₀ hne hiso
  let j : unipRadical h v x₀ →* vecFixGroup h v x₀ :=
    Subgroup.inclusion (unipRadical_le_vecFixGroup h v x₀)
  have hjc : Continuous j := (continuous_subtype_val.subtype_mk _)
  have hj : IsClosedEmbedding j := by
    refine ⟨IsEmbedding.of_comp hjc continuous_subtype_val IsEmbedding.subtypeVal, ?_⟩
    have : Set.range j = Subtype.val ⁻¹' (unipRadical h v x₀ : Set (archUnitary h v)) := by
      ext g
      exact ⟨by rintro ⟨n, rfl⟩; exact n.2, fun hg => ⟨⟨g, hg⟩, rfl⟩⟩
    rw [this]
    exact (isClosed_unipRadical h v x₀).preimage continuous_subtype_val
  have hjr : ∀ g, q g = 1 ↔ g ∈ j.range := fun g => (hker g).trans
    ⟨fun hg => ⟨⟨g, hg⟩, rfl⟩, by rintro ⟨n, rfl⟩; exact n.2⟩
  let μN : Measure (unipRadical h v x₀) := Measure.haar
  have hemb : MeasurableEmbedding (Subtype.val : vecFixGroup h v x₀ → archUnitary h v) :=
    (isClosed_vecFixGroup h v x₀).isClosedEmbedding_subtypeVal.measurableEmbedding
  have hconj : ∀ l, μN.map (fun n => i l * j n * (i l)⁻¹) = μN.map j := by
    intro l
    have key := h₄ x₀ w₀ hp μN ((i l : vecFixGroup h v x₀) : archUnitary h v) ⟨(i l).2, hiw l⟩
    have hf : Continuous fun n : unipRadical h v x₀ => i l * j n * (i l)⁻¹ :=
      (continuous_const.mul hjc).mul continuous_const
    rw [← hemb.comap_map (μN.map _), ← hemb.comap_map (μN.map j),
      Measure.map_map hemb.measurable hf.measurable,
      Measure.map_map hemb.measurable hjc.measurable]
    have e1 : (Subtype.val ∘ fun n : unipRadical h v x₀ => i l * j n * (i l)⁻¹) =
        fun n : unipRadical h v x₀ =>
          ((i l : vecFixGroup h v x₀) : archUnitary h v) * (n : archUnitary h v) *
            ((i l : vecFixGroup h v x₀) : archUnitary h v)⁻¹ := by
      funext n
      simp [j]
    have e2 : (Subtype.val ∘ j) = (Subtype.val : unipRadical h v x₀ → archUnitary h v) := by
      funext n
      rfl
    rw [e1, e2, key]
  have hcovN' : ∀ n, ∃ δ, j δ ∈ Γ ∧ δ * n ∈ C := fun n => by
    obtain ⟨δ, hδ, hδn⟩ := hcovN n
    exact ⟨δ, hδ, hδn⟩

  obtain ⟨S, -, hSfin, hScov⟩ :=
    h₂ x₀ w₀ h' _ v' i q j hi hq hj hqi hjr μL μN hconj Γ C T hC hTm hTfin hcovN' hcovL ν

  have hdG : DiscreteTopology (vecStabGroup h v La x₀) := by
    have := ArchLatticeDiscrete.proof h v La hLa.isLattice
    have hle : vecStabGroup h v La x₀ ≤ archLatticeGroup h v La := by
      rintro _ ⟨γ, -, rfl⟩
      exact ⟨(γ : h.unitaryGroup), γ.2, rfl⟩
    exact DiscreteTopology.of_continuous_injective (f := Subgroup.inclusion hle)
      (continuous_subtype_val.subtype_mk _) (Subgroup.inclusion_injective hle)
  have hdisc : DiscreteTopology Γ :=
    DiscreteTopology.of_continuous_injective
      (f := fun x : Γ => (⟨((x : vecFixGroup h v x₀) : archUnitary h v), x.2⟩ :
        vecStabGroup h v La x₀))
      ((continuous_subtype_val.comp continuous_subtype_val).subtype_mk _)
      (fun a b hab => Subtype.ext (Subtype.ext (by simpa using congrArg Subtype.val hab)))
  have : Countable Γ := TopologicalSpace.separableSpace_iff_countable.1 inferInstance
  obtain ⟨FD, -, hFD⟩ := DiscreteFundamentalDomain.proof (vecFixGroup h v x₀) ν Γ hdisc

  have hle : ν FD ≤ ν S := by
    rw [hFD.measure_eq_tsum S]
    refine (measure_mono fun x hx => ?_).trans (measure_iUnion_le _)
    obtain ⟨γ, hγ, hγx⟩ := hScov x
    refine Set.mem_iUnion.2 ⟨(⟨γ, hγ⟩ : Γ)⁻¹, ?_, hx⟩
    rw [Set.mem_smul_set_iff_inv_smul_mem, inv_inv]
    exact hγx
  have hν0 : ν ≠ 0 := fun h0 => (isOpen_univ.measure_ne_zero ν Set.univ_nonempty) (by simp [h0])
  exact ⟨FD, hFD, pos_iff_ne_zero.2 (hFD.measure_ne_zero hν0), hle.trans_lt hSfin⟩

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PStabilizerCovolume =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PTraceHermNondegenerate =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PTraceHermNondegenerate", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StTraceHermNondegenerate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open NumberField GroundTheory.Automorphic Module

variable {F E : Type*} [Field F] [Field E] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E]
variable {W : Type*} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι]


omit [NumberField E] in
theorem HermitianForm.eq_zero_of_toSesq_eq_zero (h : HermitianForm F E W) {x : W}
    (hx : ∀ w, h.toSesq x w = 0) : x = 0 := by
  apply h.nonsingular.1
  rw [map_zero]
  exact LinearMap.ext hx

theorem TraceHermNondegenerate.proof (h : HermitianForm F E W) (v : Basis ι E W) :
    TraceHermNondegenerate.Statement h v := by
  have hT := (traceForm_nondegenerate ℚ E).1
  constructor
  · intro y hy
    have key : ∀ w, h.toSesq (v.equivFun.symm y) w = 0 := by
      intro w
      apply hT
      intro a
      have := hy (v.equivFun (a • w))
      rw [traceHerm_apply, LinearEquiv.symm_apply_apply, LinearMap.map_smul, smul_eq_mul] at this
      rw [Algebra.traceForm_apply, mul_comm]
      exact this
    have h0 := HermitianForm.eq_zero_of_toSesq_eq_zero h key
    exact (map_eq_zero_iff _ v.equivFun.symm.injective).1 h0
  · intro z hz
    have key : ∀ w, h.toSesq w (v.equivFun.symm z) = 0 := by
      intro w
      apply hT
      intro a
      have := hz (v.equivFun (conj F E a • w))
      rw [traceHerm_apply, LinearEquiv.symm_apply_apply, LinearMap.map_smulₛₗ₂, smul_eq_mul] at this
      rw [Algebra.traceForm_apply, mul_comm]
      simpa [conj_conj] using this
    have key' : ∀ w, h.toSesq (v.equivFun.symm z) w = 0 := by
      intro w
      have e := (LinearMap.isSymm_def.1 h.isSymm) (v.equivFun.symm z) w
      rw [key w] at e
      exact (map_eq_zero_iff _ (conjHom F E).injective).1 e
    have h0 := HermitianForm.eq_zero_of_toSesq_eq_zero h key'
    exact (map_eq_zero_iff _ v.equivFun.symm.injective).1 h0

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PTraceHermNondegenerate =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnfoldAlongSubgroup =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnfoldAlongSubgroup", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsUnfoldAlongSubgroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open MeasureTheory
open scoped ENNReal Pointwise

theorem UnfoldAlongSubgroup.proof (G Y : Type*) [Group G] [MeasurableSpace G] [MeasurableSpace Y] :
    UnfoldAlongSubgroup.Statement G Y := by
  intro μ H _ ν _ _ ρ _ s hm hμ Γ _ hΓH FD FD₀ hFD hFD₀ f hf hfH
  have hms : ∀ y, Measurable (fun x : H => (x : G) * s y) := fun y =>
    hm.comp measurable_prodMk_right

  have hnull : ∀ Z : Set G, μ Z = 0 →
      ∀ᵐ y ∂ρ, ν ((fun x : H => (x : G) * s y) ⁻¹' Z) = 0 := by
    intro Z hZ
    have hZm : MeasurableSet (toMeasurable μ Z) := measurableSet_toMeasurable μ Z
    have hin : ∀ y, ∫⁻ x, (toMeasurable μ Z).indicator 1 ((x : G) * s y) ∂ν =
        ν ((fun x : H => (x : G) * s y) ⁻¹' toMeasurable μ Z) := fun y => by
      rw [← lintegral_indicator_one (hZm.preimage (hms y))]
      rfl
    have h0 := hμ ((toMeasurable μ Z).indicator 1) (measurable_one.indicator hZm)
    rw [lintegral_indicator_one hZm, measure_toMeasurable, hZ] at h0
    simp only [hin] at h0
    have hmeas : Measurable fun y => ν ((fun x : H => (x : G) * s y) ⁻¹' toMeasurable μ Z) := by
      simp only [← hin]
      exact ((measurable_one.indicator hZm).comp hm).lintegral_prod_left'
    filter_upwards [(lintegral_eq_zero_iff hmeas).1 h0.symm] with y hy
    exact measure_mono_null (Set.preimage_mono (subset_toMeasurable μ Z)) hy

  let toΓ : Γ.subgroupOf H → Γ := fun γ => ⟨((γ : H) : G), Subgroup.mem_subgroupOf.1 γ.2⟩
  have htoΓ : Function.Injective toΓ := fun a b h => by
    simp only [toΓ, Subtype.mk.injEq] at h
    exact Subtype.ext (Subtype.ext h)
  have : Countable (Γ.subgroupOf H) := htoΓ.countable

  have hslice : ∀ y (γ : Γ.subgroupOf H) (A : Set G),
      (fun x : H => (x : G) * s y) ⁻¹' ((toΓ γ) • A) =
        γ • ((fun x : H => (x : G) * s y) ⁻¹' A) := by
    intro y γ A
    ext x
    simp only [Set.mem_preimage, Set.mem_smul_set_iff_inv_smul_mem, Subgroup.smul_def,
      smul_eq_mul, toΓ, InvMemClass.coe_inv, Subgroup.coe_mul, mul_assoc]

  obtain ⟨t, htFD, htm, htae⟩ := hFD.nullMeasurableSet.exists_measurable_subset_ae_eq
  have hZ1 : μ {g | ¬ ∃ γ : Γ, γ • g ∈ FD} = 0 := ae_iff.1 hFD.ae_covers
  have hZ2 : μ (FD \ t) = 0 := (ae_eq_set.1 htae).2
  have hZ3 : ∀ γ δ : Γ, ∀ᵐ y ∂ρ, γ ≠ δ →
      ν ((fun x : H => (x : G) * s y) ⁻¹' (γ • FD ∩ δ • FD)) = 0 := by
    intro γ δ
    by_cases h : γ = δ
    · exact ae_of_all _ fun _ h' => absurd h h'
    · filter_upwards [hnull _ (hFD.aedisjoint h)] with y hy _ using hy
  have hgood : ∀ᵐ y ∂ρ, ν ((fun x : H => (x : G) * s y) ⁻¹' t) = ν FD₀ := by
    filter_upwards [hnull _ hZ1, hnull _ hZ2, ae_all_iff.2 fun γ => ae_all_iff.2 (hZ3 γ)]
      with y h1 h2 h3
    have hae : (fun x : H => (x : G) * s y) ⁻¹' t =ᵐ[ν] (fun x : H => (x : G) * s y) ⁻¹' FD := by
      refine ae_eq_set.2 ⟨?_, h2⟩
      rw [Set.sdiff_eq_empty.2 (Set.preimage_mono htFD), measure_empty]
    have hFDy : IsFundamentalDomain (Γ.subgroupOf H) ((fun x : H => (x : G) * s y) ⁻¹' FD) ν :=
      { nullMeasurableSet := (htm.preimage (hms y)).nullMeasurableSet.congr hae
        ae_covers := by
          filter_upwards [measure_eq_zero_iff_ae_notMem.1 h1] with x hx
          simp only [Set.mem_preimage, Set.mem_ofPred_eq, not_not] at hx
          obtain ⟨γ, hγ⟩ := hx
          refine ⟨⟨⟨γ, hΓH γ.2⟩, Subgroup.mem_subgroupOf.2 γ.2⟩, ?_⟩
          simpa only [Set.mem_preimage, Subgroup.smul_def, smul_eq_mul, Subgroup.coe_mul,
            mul_assoc] using hγ
        aedisjoint := by
          intro γ δ hγδ
          change ν (γ • _ ∩ δ • _) = 0
          rw [← hslice, ← hslice, ← Set.preimage_inter]
          exact h3 _ _ (htoΓ.ne hγδ) }
    rw [measure_congr hae, hFDy.measure_eq hFD₀]
  have hsm : Measurable s := by
    convert hm.comp ((measurable_const : Measurable fun _ : Y => (1 : H)).prodMk measurable_id) using 1
    ext y
    simp
  calc ∫⁻ g in FD, f g ∂μ = ∫⁻ g in t, f g ∂μ := setLIntegral_congr htae.symm
    _ = ∫⁻ g, t.indicator f g ∂μ := (lintegral_indicator htm _).symm
    _ = ∫⁻ y, ∫⁻ x, t.indicator f ((x : G) * s y) ∂ν ∂ρ := hμ _ (hf.indicator htm)
    _ = ∫⁻ y, f (s y) * ν ((fun x : H => (x : G) * s y) ⁻¹' t) ∂ρ := by
      refine lintegral_congr fun y => ?_
      have he : (fun x : H => t.indicator f ((x : G) * s y)) =
          ((fun x : H => (x : G) * s y) ⁻¹' t).indicator fun _ => f (s y) := by
        ext x
        by_cases hx : (x : G) * s y ∈ t
        · simp [hx, hfH]
        · simp [hx]
      rw [he, lintegral_indicator_const (htm.preimage (hms y))]
    _ = ∫⁻ y, ν FD₀ * f (s y) ∂ρ := lintegral_congr_ae (by
      filter_upwards [hgood] with y hy
      rw [hy, mul_comm])
    _ = ν FD₀ * ∫⁻ y, f (s y) ∂ρ := lintegral_const_mul _ (hf.comp hsm)

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnfoldAlongSubgroup =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.OfUnfolding =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.OfUnfolding", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.Imports\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.SecondCountableTopologyArchUnitary\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StArchCovolumeBound\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StComplementLattice\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StLineNormalForm\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StMajorantTransport\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StReducedBasisBound\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsAdelicLattices\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsArchUnimodular\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsComplementExtension\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsHaarParabolicCoordinates\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsLineStabHaar\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsMajorantStabCompact\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsSemidirectCovering\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsStabilizerCovolume\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.StatementsStabilizerLevi\npublic import Mathlib.Topology.Algebra.Group.Units\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.Assembly\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PAdelicLatticeDictionary\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PArchCovolumeBound\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PArchimedeanUnitaryEquiv\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PComplementExtension\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PComplementLattice\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PCoordEmbedBasis\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PCoordLatticeFullRank\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDoubleCosetCovolume\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PDualLatticeMultiple\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PHaarParabolicCoordinates\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PIntegralFormCovolume\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PLatticePointsBelowFinite\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PLineNormalForm\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PMajorantTransport\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PReducedBasisBound\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PStabilizerCovolume\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PTraceHermNondegenerate\npublic import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnfoldAlongSubgroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights.FiniteCovolume

open NumberField GroundTheory.Automorphic Module Matrix Topology MeasureTheory IsDedekindDomain
open scoped Pointwise ComplexOrder ENNReal NumberField.AdeleRing

noncomputable section

universe u

alias ReducedBasisBound.full := _root_.GroundTheory.Heights₂.Heights.FiniteCovolume.ReducedBasisBound.proof

section Closed

variable {F E : Type*} [Field F] [Field E] [NumberField F] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E]

section OneSpace

variable {W : Type*} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι] [DecidableEq ι]
variable (h : HermitianForm F E W) (v : Basis ι E W)


omit [NumberField F] [IsTotallyReal F] [DecidableEq ι] in
theorem ArchCovolumeBound.full : ArchCovolumeBound.Statement h v :=
  ArchCovolumeBound.proof h v (CoordEmbedBasis.proof E ι) (IntegralFormCovolume.proof _ _ _)
    (TraceHermNondegenerate.proof h v) (DualLatticeMultiple.proof h) (CoordLatticeFullRank.proof v)


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
alias MajorantTransport.full := _root_.GroundTheory.Heights₂.Heights.FiniteCovolume.MajorantTransport.proof


omit [NumberField F] [NumberField E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
alias ComplementExtension.full := _root_.GroundTheory.Heights₂.Heights.FiniteCovolume.ComplementExtension.proof


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
alias LineNormalForm.full := _root_.GroundTheory.Heights₂.Heights.FiniteCovolume.LineNormalForm.proof


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
alias ComplementLattice.full := _root_.GroundTheory.Heights₂.Heights.FiniteCovolume.ComplementLattice.proof


omit [NumberField F] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E] in
alias LatticePointsBelowFinite.full := _root_.GroundTheory.Heights₂.Heights.FiniteCovolume.LatticePointsBelowFinite.proof

theorem ArchimedeanUnitaryEquiv.full : ArchimedeanUnitaryEquiv.Statement h v :=
  ArchimedeanUnitaryEquiv.proof h v

theorem AdelicLatticeDictionary.full : AdelicLatticeDictionary.Statement h v :=
  AdelicLatticeDictionary.proof h v

end OneSpace

theorem LatticeOrbitsFiniteBelow.full (N : ℕ) : LatticeOrbitsFiniteBelow.{u} F E N :=
  LatticeOrbitsFiniteBelow.of_steps ReducedBasisBound.full
    (fun _ _ _ _ h _ v => ArchCovolumeBound.full h v) (fun _ _ _ _ h _ v => MajorantTransport.full h v)
    (fun _ _ _ _ h => ComplementExtension.full h) (fun _ _ _ _ h => LineNormalForm.full h)
    (fun _ _ _ _ h => ComplementLattice.full h) N

section Dimension

variable {W : Type u} [AddCommGroup W] [Module E W] [FiniteDimensional E W]
variable (h : HermitianForm F E W)

theorem LatticeOrbitsFinite.full : LatticeOrbitsFinite.Statement h :=
  LatticeOrbitsFinite.step_of h (LatticeOrbitsFiniteBelow.full _) ReducedBasisBound.full
    (ArchCovolumeBound.full h _) (MajorantTransport.full h _) (ComplementExtension.full h)
    (LineNormalForm.full h) (ComplementLattice.full h)

theorem LinePairOrbitsFinite.full : LinePairOrbitsFinite.Statement h :=
  LinePairOrbitsFinite.full_of h (LatticeOrbitsFiniteBelow.full _) (ComplementExtension.full h)
    (LineNormalForm.full h) (ComplementLattice.full h)

theorem ScalingLaw.of_unfolding {ι : Type*} [Fintype ι] [DecidableEq ι] (v : Basis ι E W)
    (hU : UnfoldingIntegral.Statement h v) : ScalingLaw.Statement h v :=
  ScalingLaw.full_of h v (LinePairOrbitsFinite.full h) hU

end Dimension

end Closed

section Adelic

variable {F E : Type*} [Field F] [Field E] [NumberField F] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E]
variable {W : Type*} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι] [DecidableEq ι]

theorem AdelicCovolumeFinite.of_covolume (h : HermitianForm F E W) (v : Basis ι E W)
    (hC : ArithmeticCovolumeFinite.Statement h v) : AdelicCovolumeFinite.Statement h v :=
  haveI : FiniteDimensional E W := Module.Finite.of_basis v
  AdelicCovolumeFinite.full_of h v (LatticeOrbitsFinite.full h) hC (ArchimedeanUnitaryEquiv.full h v)
    (AdelicLatticeDictionary.full h v) (DoubleCosetCovolume.proof _ _ _)

theorem HaarParabolicCoordinates.of_open (h : HermitianForm F E W) (v : Basis ι E W)
    (hAU : ArchUnimodular.Statement h v) (hMS : MajorantStabCompact.Statement h v)
    (hLS : LineStabHaar.Statement h v) : HaarParabolicCoordinates.Statement h v :=
  HaarParabolicCoordinates.proof h v (ParabolicDecomposition.full h v) hAU hMS hLS

end Adelic

section Open

variable {F E : Type*} [Field F] [Field E] [NumberField F] [NumberField E] [Algebra F E]
  [Algebra.IsQuadraticExtension F E] [IsTotallyReal F] [_root_.NumberField.IsTotallyComplex E]

variable
    (hAU : ∀ (W : Type u) [AddCommGroup W] [Module E W] [FiniteDimensional E W]
      (h : HermitianForm F E W) (n : ℕ) (v : Basis (Fin n) E W), ArchUnimodular.Statement h v)
    (hMS : ∀ (W : Type u) [AddCommGroup W] [Module E W] [FiniteDimensional E W]
      (h : HermitianForm F E W) (n : ℕ) (v : Basis (Fin n) E W), MajorantStabCompact.Statement h v)
    (hLS : ∀ (W : Type u) [AddCommGroup W] [Module E W] [FiniteDimensional E W]
      (h : HermitianForm F E W) (n : ℕ) (v : Basis (Fin n) E W), LineStabHaar.Statement h v)
    (hSD : ∀ (W : Type u) [AddCommGroup W] [Module E W] [FiniteDimensional E W]
      (h : HermitianForm F E W) (n : ℕ) (v : Basis (Fin n) E W) (x₀ w₀ : W)
      (h' : HermitianForm F E (hypComplement h x₀ w₀)) (m : ℕ)
      (v' : Basis (Fin m) E (hypComplement h x₀ w₀)),
      SemidirectCovering.Statement (vecFixGroup h v x₀) (archUnitary h' v') (unipRadical h v x₀))
    (hSL : ∀ (W : Type u) [AddCommGroup W] [Module E W] [FiniteDimensional E W]
      (h : HermitianForm F E W) (n : ℕ) (v : Basis (Fin n) E W), StabilizerLevi.Statement h v)
    (hUM : ∀ (W : Type u) [AddCommGroup W] [Module E W] [FiniteDimensional E W]
      (h : HermitianForm F E W) (n : ℕ) (v : Basis (Fin n) E W), UnipotentModulus.Statement h v)
    (hUC : ∀ (W : Type u) [AddCommGroup W] [Module E W] [FiniteDimensional E W]
      (h : HermitianForm F E W) (n : ℕ) (v : Basis (Fin n) E W), UnipotentCocompact.Statement h v)
    (hCL : ∀ (W : Type u) [AddCommGroup W] [Module E W] [FiniteDimensional E W]
      (h : HermitianForm F E W), CongruenceLift.Statement h)

include hAU hMS hLS hSD hSL hUM hUC hCL

theorem CovolumeFiniteBelow.of_open (N : ℕ) : CovolumeFiniteBelow.{u} F E N :=
  CovolumeFiniteBelow.of_steps ReducedBasisBound.full
    (fun _ _ _ _ h _ v => ArchCovolumeBound.full h v) (fun _ _ _ _ h _ v => MajorantTransport.full h v)
    (fun _ _ _ _ h => ComplementExtension.full h) (fun _ _ _ _ h => LineNormalForm.full h)
    (fun _ _ _ _ h => ComplementLattice.full h) (fun _ _ _ _ _ _ _ _ => UnfoldAlongSubgroup.proof _ _)
    (fun W _ _ _ h n v => HaarParabolicCoordinates.of_open h v (hAU W h n v) (hMS W h n v)
      (hLS W h n v))
    (fun W _ _ _ h n v hB => StabilizerCovolumeFinite.proof h v hB (hSD W h n v) (hSL W h n v)
      (hUM W h n v) (hUC W h n v) (hCL W h))
    (fun _ _ _ _ h _ v => LatticePointsBelowFinite.full h v) N

variable {W : Type u} [AddCommGroup W] [Module E W] {ι : Type*} [Fintype ι] [DecidableEq ι]
variable (h : HermitianForm F E W) (v : Basis ι E W)

variable (hSD' : ∀ (x₀ w₀ : W) (h' : HermitianForm F E (hypComplement h x₀ w₀)) (m : ℕ)
      (v' : Basis (Fin m) E (hypComplement h x₀ w₀)),
      SemidirectCovering.Statement (vecFixGroup h v x₀) (archUnitary h' v') (unipRadical h v x₀))
    (hSL' : StabilizerLevi.Statement h v) (hUM' : UnipotentModulus.Statement h v)
    (hUC' : UnipotentCocompact.Statement h v)

include hSD' hSL' hUM' hUC'

theorem StabilizerCovolumeFinite.of_open : StabilizerCovolumeFinite.Statement h v :=
  haveI : FiniteDimensional E W := Module.Finite.of_basis v
  StabilizerCovolumeFinite.proof h v
    (CovolumeFiniteBelow.of_open hAU hMS hLS hSD hSL hUM hUC hCL _) hSD' hSL' hUM' hUC' (hCL W h)

variable (hAU' : ArchUnimodular.Statement h v) (hMS' : MajorantStabCompact.Statement h v)
    (hLS' : LineStabHaar.Statement h v)

include hAU' hMS' hLS'

theorem UnfoldingIntegral.of_open : UnfoldingIntegral.Statement h v :=
  UnfoldingIntegral.full_of h v (fun _ => UnfoldAlongSubgroup.proof _ _)
    (HaarParabolicCoordinates.of_open h v hAU' hMS' hLS')
    (StabilizerCovolumeFinite.of_open hAU hMS hLS hSD hSL hUM hUC hCL h v hSD' hSL' hUM' hUC')

theorem ScalingLaw.of_open : ScalingLaw.Statement h v :=
  haveI : FiniteDimensional E W := Module.Finite.of_basis v
  ScalingLaw.of_unfolding h v
    (UnfoldingIntegral.of_open hAU hMS hLS hSD hSL hUM hUC hCL h v hSD' hSL' hUM' hUC' hAU' hMS' hLS')

theorem ArithmeticCovolumeFinite.of_open : ArithmeticCovolumeFinite.Statement h v :=
  haveI : FiniteDimensional E W := Module.Finite.of_basis v
  ArithmeticCovolumeFinite.step_of h v (LatticeOrbitsFiniteBelow.full _) ReducedBasisBound.full
    (ArchCovolumeBound.full h v) (MajorantTransport.full h v) (ComplementExtension.full h)
    (LineNormalForm.full h) (ComplementLattice.full h) (fun _ => UnfoldAlongSubgroup.proof _ _)
    (HaarParabolicCoordinates.of_open h v hAU' hMS' hLS')
    (StabilizerCovolumeFinite.of_open hAU hMS hLS hSD hSL hUM hUC hCL h v hSD' hSL' hUM' hUC')
    (LatticePointsBelowFinite.full h v)

theorem AdelicCovolumeFinite.of_open : AdelicCovolumeFinite.Statement h v :=
  AdelicCovolumeFinite.of_covolume h v
    (ArithmeticCovolumeFinite.of_open hAU hMS hLS hSD hSL hUM hUC hCL h v hSD' hSL' hUM' hUC' hAU' hMS'
      hLS')

end Open

end

end GroundTheory.Heights₂.Heights.FiniteCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.OfUnfolding =====
