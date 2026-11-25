module

public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.WhitGenOf
public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.WhittakerCovolume.InFrameForm
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MulVecCEApply
public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.HeightLattices.FinAlg
public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.HeightLattices.IsModuleTopologyTens
import GroundTheory.GlobalFields.LocalFieldAtPlace
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

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK.Dbl GlobalTheory.Cont PositivityTheory.Rg.Sw
open PositivityTheory.SiegelWeilFormula PositivityTheory.SiegelWeilFormula.KWhit PositivityTheory.SiegelWeilFormula.KWhit.Ht

namespace PositivityTheory.SiegelWeilFormula.HeightDict

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem latM_coe (v : HeightOneSpectrum (𝓞 F)) {n : ℕ} (M : Matrix (Fin n) (Fin n) (v.adicCompletion F ⊗[F] E)) :
    (latM v M : Set (Fin n → v.adicCompletion F ⊗[F] E)) = (fun y => M *ᵥ y) '' (lat E v n : Set _) := by
  ext x; simp [latM]

theorem latM_isCO (v : HeightOneSpectrum (𝓞 F)) {n : ℕ} (M : Matrix (Fin n) (Fin n) (v.adicCompletion F ⊗[F] E))
    (hM : IsUnit M.det) : Gen.IsCO (latM v M) := by
  haveI := isModuleTopology_tens (E := E) v
  haveI : IsTopologicalRing (v.adicCompletion F ⊗[F] E) := GlobalTheory.Doubling.isTopologicalRing_tens
  obtain ⟨ho, hc⟩ := lat_isCO (E := E) v n
  set φ := GlobalTheory.ModuLR.mulVecCE M hM
  have hs : (latM v M : Set (Fin n → v.adicCompletion F ⊗[F] E)) = φ '' (lat E v n : Set _) := by
    rw [latM_coe]; rfl
  show IsOpen _ ∧ IsCompact _
  rw [hs]
  exact ⟨φ.toHomeomorph.isOpenMap _ ho, hc.image φ.continuous⟩

theorem latM_eq_lat (v : HeightOneSpectrum (𝓞 F)) {n : ℕ} (M M' : Matrix (Fin n) (Fin n) (v.adicCompletion F ⊗[F] E))
    (hMM : M * M' = 1) (hM : ∀ i j, M i j ∈ OE E v) (hM' : ∀ i j, M' i j ∈ OE E v) :
    (latM v M : Set (Fin n → v.adicCompletion F ⊗[F] E)) = lat E v n := by
  ext y
  rw [latM_coe]
  constructor
  · rintro ⟨z, hz, rfl⟩
    rw [SetLike.mem_coe, mem_lat] at hz ⊢
    intro i
    simp only [Matrix.mulVec, dotProduct]
    exact AddSubgroup.sum_mem _ fun j _ => OE_mul v (hM i j) (hz j)
  · intro hy
    refine ⟨M' *ᵥ y, ?_, by show M *ᵥ (M' *ᵥ y) = y; rw [Matrix.mulVec_mulVec, hMM, Matrix.one_mulVec]⟩
    rw [SetLike.mem_coe, mem_lat] at hy ⊢
    intro i
    simp only [Matrix.mulVec, dotProduct]
    exact AddSubgroup.sum_mem _ fun j _ => OE_mul v (hM' i j) (hy j)

theorem ev_alg (c : F) : ∀ᶠ v : HeightOneSpectrum (𝓞 F) in cofinite,
    algebraMap F (v.adicCompletion F) c ∈ v.adicCompletionIntegers F := by
  exact (algebraMap F (FiniteAdeleRing (𝓞 F) F) c).2

theorem ev_inclR (e : E) : ∀ᶠ v : HeightOneSpectrum (𝓞 F) in cofinite,
    inclR (F := F) (v.adicCompletion F) e ∈ OE E v := by
  obtain ⟨y, hy0, hy⟩ := exists_integral_multiples ℤ ℚ ({e} : Finset E)
  have hyi : IsIntegral ℤ (y • e) := hy e (Finset.mem_singleton_self e)
  have hyF : (y : F) ≠ 0 := Int.cast_ne_zero.2 hy0
  filter_upwards [ev_alg (F := F) ((y : F)⁻¹)] with v hv
  refine AddSubgroup.subset_closure ⟨algebraMap F (v.adicCompletion F) ((y : F)⁻¹), hv, ⟨y • e, (mem_integralClosure_iff ℤ E).2 hyi⟩, ?_⟩
  show (1 : v.adicCompletion F) ⊗ₜ[F] e = algebraMap F (v.adicCompletion F) ((y : F)⁻¹) ⊗ₜ[F] (y • e)
  rw [Algebra.algebraMap_eq_smul_one, TensorProduct.smul_tmul, ← Int.cast_smul_eq_zsmul F, smul_smul,
    inv_mul_cancel₀ hyF, one_smul]

theorem ev_OE (x : AF F ⊗[F] E) : ∀ᶠ v : HeightOneSpectrum (𝓞 F) in cofinite, compFin F E v x ∈ OE E v := by
  induction x using TensorProduct.induction_on with
  | zero => exact Filter.Eventually.of_forall fun v => by rw [map_zero]; exact zero_mem _
  | tmul a e =>
    filter_upwards [ev_inclR (F := F) e, (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sndA F a).2] with v he ha
    have h : compFin F E v (a ⊗ₜ[F] e) =
        (evFin F v a ⊗ₜ[F] (1 : E)) * inclR (F := F) (v.adicCompletion F) e := by
      show evFin F v a ⊗ₜ[F] e = (evFin F v a ⊗ₜ[F] (1 : E)) * ((1 : v.adicCompletion F) ⊗ₜ[F] e)
      rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
    rw [h]
    exact OE_mul v (AddSubgroup.subset_closure ⟨evFin F v a, ha, 1, by simp⟩) he
  | add x y hx hy =>
    filter_upwards [hx, hy] with v h1 h2
    rw [map_add (f := _)]
    exact add_mem h1 h2

theorem ev_OE_latO {k : ℕ} (bs : Module.Basis (Fin k) F E) : ∀ᶠ v : HeightOneSpectrum (𝓞 F) in cofinite,
    ∀ z : v.adicCompletion F ⊗[F] E, z ∈ OE E v ↔
      ∀ j, (Algebra.TensorProduct.basis (v.adicCompletion F) bs).repr z j ∈ v.adicCompletionIntegers F := by
  set ω := RingOfIntegers.basis E
  have hC1 : ∀ᶠ v : HeightOneSpectrum (𝓞 F) in cofinite, ∀ j,
      inclR (F := F) (v.adicCompletion F) (bs j) ∈ OE E v :=
    Filter.eventually_all.2 fun j => ev_inclR (bs j)
  have hC2 : ∀ᶠ v : HeightOneSpectrum (𝓞 F) in cofinite, ∀ i j,
      algebraMap F (v.adicCompletion F) (bs.repr ((ω i : 𝓞 E) : E) j) ∈ v.adicCompletionIntegers F :=
    Filter.eventually_all.2 fun i => Filter.eventually_all.2 fun j => ev_alg _
  filter_upwards [hC1, hC2] with v h1 h2
  intro z
  set B := Algebra.TensorProduct.basis (v.adicCompletion F) bs
  constructor
  · intro hz j
    have hz' : z ∈ (OE E v : Set (v.adicCompletion F ⊗[F] E)) := hz
    rw [OE_eq_image] at hz'
    obtain ⟨c, hc, rfl⟩ := hz'

    rw [map_sum]
    change (Finsupp.applyAddHom j) (∑ i, B.repr (c i ⊗ₜ[F] ((RingOfIntegers.basis E) i : E))) ∈ _
    rw [map_sum]
    refine sum_mem fun i _ => ?_
    change B.repr (c i ⊗ₜ[F] ((RingOfIntegers.basis E) i : E)) j ∈ _
    rw [Algebra.TensorProduct.basis_repr_tmul, Finsupp.smul_apply, Finsupp.mapRange_apply, smul_eq_mul]
    exact mul_mem (hc i trivial) (h2 i j)
  · intro hz
    rw [← B.sum_repr z]
    refine AddSubgroup.sum_mem _ fun j _ => ?_
    rw [Algebra.TensorProduct.basis_apply, Algebra.smul_def, Algebra.TensorProduct.algebraMap_apply]
    exact OE_mul v (AddSubgroup.subset_closure ⟨B.repr z j, hz j, 1, by simp⟩) (h1 j)

theorem ev_lat_latO {k : ℕ} (bs : Module.Basis (Fin k) F E) (n : ℕ) : ∀ᶠ v : HeightOneSpectrum (𝓞 F) in cofinite,
    (lat E v n : Set (Fin n → v.adicCompletion F ⊗[F] E)) = PositivityTheory.PfSWUS.Loc.latO bs v := by
  filter_upwards [ev_OE_latO bs] with v hv
  ext y
  simp only [SetLike.mem_coe, mem_lat, PositivityTheory.PfSWUS.Loc.latO, Set.mem_setOf_eq, hv]

end PositivityTheory.SiegelWeilFormula.HeightDict
