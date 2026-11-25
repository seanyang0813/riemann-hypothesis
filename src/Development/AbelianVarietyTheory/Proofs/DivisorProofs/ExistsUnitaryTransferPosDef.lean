module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometryStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot
public import Development.AbelianVarietyTheory.Definitions.Foundations.NotIsSplitOfIsInertAt
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsEigenSysOfHeckeLin
public import Development.AbelianVarietyTheory.Definitions.AdelicHermitianForms.IsHermForm
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.IsSelfDualCLatFrame
public import Formalism.LocalToGlobal.Divisibility.CoefMod
public import Formalism.LocalToGlobal.HermitianColumns.InLocalDiscriminantKernel
public import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
public import Formalism.LocalToGlobal.ProjectiveLattices.ThShort
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicCompletionComapRationalMatrix
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ColumnLatticeComapEqStandardLattice
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAdelicUnitaryMovesSelfDualLattice
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoDefiniteUnitaryAdelicUnitaryGroup
public import Development.AbelianVarietyTheory.Definitions.Foundations.GLintEqKOAndPrincEqKOne
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnramifiedOfSphericalVectorDictionary
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivisorIndicatorMemHecke
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsHeckeLOfHasInf
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.UnitaryDoubleCosetOfGLintDoubleCoset
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FixedPlaceUnitaryLocalPointsEquivLocalUnitaryGro
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitPlaceUnitaryLocalPointsEquivGL
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnramifiedNonsplitExistsConjInvolutionUniformise
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsAdeleRingTensorEquivInfiniteProdFinite
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelaf
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisOfRegularForms
import Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsRationalUnitarySplitDenominator

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIff, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIffStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisors, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisorsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormalStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoDefiniteUnitaryAdelicUnitaryGroupStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLattic, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLatticStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinit, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinitStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTransferPosDef

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIff =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIff", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotIsSplitOfIsInertAt\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsAdeleRingTensorEquivInfiniteProdFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.DefTransfer.Loc

theorem smul_conj_iff {A n : Type} [CommRing A] [Fintype n] [DecidableEq n] (f : A) {N N' : Matrix n n A}
    (h : N * N' = 1) (h' : N' * N = 1) (X : Matrix n n A) :
    f • (N * X * N' - 1) = N * X * N' - 1 ↔ f • (X - 1) = X - 1 := by
  have e : N * X * N' - 1 = N * (X - 1) * N' := by rw [mul_sub, sub_mul, mul_one, h]
  rw [e, ← Matrix.smul_mul, ← Matrix.mul_smul]
  refine ⟨fun k => ?_, fun k => by rw [k]⟩
  have := congrArg (fun Y => N' * Y * N) k
  simpa only [← mul_assoc, h', one_mul, mul_assoc _ N' N, mul_one] using this

variable {D : D7}

theorem parts_ext {a b : Formalism.L2.Theta.AE D} (h1 : infPart D a = infPart D b) (h2 : finPart D a = finPart D b) :
    a = b := by
  obtain ⟨e, he, -⟩ := GlobalTheory.AdSplit.exists_adele_equiv D.host.F D.host.E
  have he1 : ∀ z, (e z).1 = infPart D z := fun z => (he z).1
  have he2 : ∀ z, (e z).2 = finPart D z := fun z => (he z).2
  apply e.injective
  exact Prod.ext (by rw [he1, he1, h1]) (by rw [he2, he2, h2])

theorem map_one_apply {A B n : Type} [CommRing A] [CommRing B] [DecidableEq n] (φ : A →+* B) (i j : n) :
    φ ((1 : Matrix n n A) i j) = (1 : Matrix n n B) i j := by
  rw [Matrix.one_apply, Matrix.one_apply]
  split_ifs
  · exact map_one _
  · exact map_zero _

theorem suppF_iff_fin (V : HSp D) (f : Formalism.L2.Theta.AE D) {g : Formalism.L2.Theta.GA D V} (hg : g ∈ GfC V) :
    SuppF V f g ↔ finPart D f • (finMat D.sp.cm.sig V.gram g - 1) = finMat D.sp.cm.sig V.gram g - 1 := by
  have h0 : (Formalism.L2.Theta.mt V g).map (infPart D) = 1 := congrArg Units.val (MonoidHom.mem_ker.1 hg)
  have hi : ∀ i j, infPart D ((Formalism.L2.Theta.mt V g - 1) i j) = 0 := fun i j => by
    rw [Matrix.sub_apply, map_sub, map_one_apply, ← h0, Matrix.map_apply, sub_self]
  have hf : ∀ i j, finPart D ((Formalism.L2.Theta.mt V g - 1) i j) =
      (finMat D.sp.cm.sig V.gram g - 1) i j := fun i j => by
    rw [Matrix.sub_apply, map_sub, map_one_apply]
    rfl
  constructor
  · intro h
    refine Matrix.ext fun i j => ?_
    rw [Matrix.smul_apply, smul_eq_mul, ← hf, ← map_mul, h i j]
  · intro h i j
    refine parts_ext ?_ ?_
    · rw [map_mul, hi, mul_zero]
    · rw [map_mul, hf]
      exact congrFun (congrFun h i) j

theorem comp_of_isPrimeIdem {P : HeightOneSpectrum (𝓞 D.host.E)} {e f : Formalism.L2.Theta.AE D} (h : IsPrimeIdem P e f)
    (Q : HeightOneSpectrum (𝓞 D.host.E)) :
    (Q.under (𝓞 D.host.F) = P.under (𝓞 D.host.F) → GlobalTheory.LFun.finAdEquiv D.host.F D.host.E (finPart D f) Q = 1) ∧
    (Q.under (𝓞 D.host.F) ≠ P.under (𝓞 D.host.F) → GlobalTheory.LFun.finAdEquiv D.host.F D.host.E (finPart D f) Q = 0) := by
  obtain ⟨Φ, hΦ⟩ := GlobalTheory.IdemSupport.exists_comp D
  obtain ⟨-, ε, ⟨α, rfl, h1, h0⟩, rfl⟩ := GlobalTheory.IdemSupport.of_isPrimeIdem hΦ h
  have e : GlobalTheory.LFun.finAdEquiv D.host.F D.host.E
      (finPart D (algebraMap _ (Formalism.L2.Theta.AE D) (pairA D.host.F 0 α))) Q =
      GlobalTheory.AdeleBaseChange.locMap D.host.F Q (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV D.host.F (Q.under (𝓞 D.host.F)) α) := by
    rw [GlobalTheory.LFun.finAdEquiv_apply rfl]
    change GlobalTheory.LFun.toCompl rfl ((Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV D.host.F (Q.under (𝓞 D.host.F)) α) ⊗ₜ[D.host.F]
      (1 : D.host.E)) = _
    rw [GlobalTheory.LFun.toCompl_tmul, map_one, mul_one]
    rfl
  rw [e]
  refine ⟨fun hQ => ?_, fun hQ => by rw [h0 _ hQ, map_zero]⟩
  have h2 : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV D.host.F (Q.under (𝓞 D.host.F)) α = 1 := by
    revert h1
    generalize P.under (𝓞 D.host.F) = v at hQ
    subst hQ
    exact id
  rw [h2, map_one]

theorem supp_iff_loc [IsCMField D.host.E] {n : ℕ} {P : HeightOneSpectrum (𝓞 D.host.E)} {e f : Formalism.L2.Theta.AE D}
    (h : IsPrimeIdem P e f) (x : UA D.host.E n) :
    finPart D f • (((x : GL (Fin n) (Ad D.host.E)) : Matrix (Fin n) (Fin n) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) - 1) =
      ((x : GL (Fin n) (Ad D.host.E)) : Matrix (Fin n) (Fin n) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) - 1 ↔
    ∀ u : HeightOneSpectrum (𝓞 D.host.E), u.under (𝓞 D.host.F) ≠ P.under (𝓞 D.host.F) → cLoc u x = 1 := by
  have key : ∀ i j (u : HeightOneSpectrum (𝓞 D.host.E)), GlobalTheory.LFun.finAdEquiv D.host.F D.host.E
      ((((x : GL (Fin n) (Ad D.host.E)) : Matrix (Fin n) (Fin n) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) - 1) i j) u =
      (cLoc u x).1 i j - (1 : Matrix (Fin n) (Fin n) _) i j := by
    intro i j u
    rw [Matrix.sub_apply, map_sub, Matrix.map_apply, RingEquiv.apply_symm_apply,
      ← map_one_apply ((pLoc D.host.E u).comp (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).toRingHom)]
    rfl
  have ev : ∀ (a b : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) (u : HeightOneSpectrum (𝓞 D.host.E)),
      GlobalTheory.LFun.finAdEquiv D.host.F D.host.E (a * b) u =
        GlobalTheory.LFun.finAdEquiv D.host.F D.host.E a u * GlobalTheory.LFun.finAdEquiv D.host.F D.host.E b u := by
    intro a b u
    rw [map_mul]; rfl
  constructor
  · intro k u hu
    refine Units.ext (Matrix.ext fun i j => ?_)
    have := congrArg (fun m => GlobalTheory.LFun.finAdEquiv D.host.F D.host.E (m i j) u) k
    simp only [Matrix.smul_apply, smul_eq_mul] at this
    rw [ev, (comp_of_isPrimeIdem h u).2 hu, zero_mul, key, eq_comm, sub_eq_zero] at this
    exact this
  · intro k
    refine Matrix.ext fun i j => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).injective
      (FiniteAdeleRing.ext _ fun u => ?_)
    rw [Matrix.smul_apply, smul_eq_mul, ev]
    by_cases hu : u.under (𝓞 D.host.F) = P.under (𝓞 D.host.F)
    · rw [(comp_of_isPrimeIdem h u).1 hu, one_mul]
    · rw [key, k u hu, Units.val_one, sub_self, mul_zero]

theorem finMat_mul (V : HSp D) (g h : Formalism.L2.Theta.GA D V) :
    finMat D.sp.cm.sig V.gram (g * h) = finMat D.sp.cm.sig V.gram g * finMat D.sp.cm.sig V.gram h := by
  have := congrArg Units.val ((finHom V).map_mul g h)
  rw [Units.val_mul] at this
  exact this

theorem finMat_one (V : HSp D) : finMat D.sp.cm.sig V.gram (1 : Formalism.L2.Theta.GA D V) = 1 :=
  congrArg Units.val (finHom V).map_one

theorem map_mul_inv {K A n : Type} [Field K] [CommRing A] [Fintype n] [DecidableEq n] {T : Type} [FunLike T K A]
    [RingHomClass T K A] (φ : T) {M : Matrix n n K} (hu : IsUnit M.det) : M.map φ * M⁻¹.map φ = 1 := by
  rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ hu, Matrix.map_one _ (map_zero _) (map_one _)]

theorem locU_iff : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (j : UA D.host.E V.rank ≃ₜ* Formalism.L2.Theta.GA D V) (h₀ : Formalism.L2.Theta.GA D V)
    (M : Matrix (Fin V.rank) (Fin V.rank) D.host.E),
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) M * V.gram * M = 1 → h₀ ∈ GfC V → (∀ x, x ∈ finU (E := D.host.E) (n := V.rank) ↔ j x ∈ GfC V) →
    (∀ x, finMat D.sp.cm.sig V.gram (j x) =
      M.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) *
      ((x : GL (Fin V.rank) (Ad D.host.E)) : Matrix (Fin V.rank) (Fin V.rank) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) *
      M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) →
    (∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔
      IntVec (Matrix.mulVec (M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) (Matrix.mulVec (finMat D.sp.cm.sig V.gram h₀) y))) →
    (∀ P : HeightOneSpectrum (𝓞 D.host.E), ∃ e f, IsPrimeIdem P e f) ∧ (∀ (P : HeightOneSpectrum (𝓞 D.host.E)) e f, IsPrimeIdem P e f → ∀ x,
      x ∈ locU V.rank P ↔ cj j h₀ x ∈ GfC V ∧ SuppF V f (cj j h₀ x)) := by
  intro D _ V j h₀ M hM hh hfin hmat _
  refine ⟨fun P => ?_, fun P e f h x => ?_⟩
  · obtain ⟨Φ, hΦ⟩ := GlobalTheory.IdemSupport.exists_comp D
    exact GlobalTheory.IdemSupport.exists_isPrimeIdem hΦ P
  have hu : IsUnit M.det := Matrix.isUnit_det_of_left_inverse hM
  have hG : cj j h₀ x ∈ GfC V ↔ x ∈ finU (E := D.host.E) (n := V.rank) := by
    rw [hfin, cj_apply, Subgroup.mul_mem_cancel_right _ hh, Subgroup.mul_mem_cancel_left _ (inv_mem hh)]
  have hL : x ∈ locU V.rank P ↔ x ∈ finU (E := D.host.E) (n := V.rank) ∧ ∀ u : HeightOneSpectrum (𝓞 D.host.E),
      u.under (𝓞 D.host.F) ≠ P.under (𝓞 D.host.F) → cLoc u x = 1 := by
    simp only [locU, Subgroup.mem_inf, Subgroup.mem_iInf, MonoidHom.mem_ker]
  rw [hL, ← hG]
  refine and_congr_right fun hx => ?_
  have m1 := map_mul_inv (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F]
      Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) hu
  have m2 := mul_eq_one_comm.1 m1
  have e1 : finMat D.sp.cm.sig V.gram (cj j h₀ x) =
      finMat D.sp.cm.sig V.gram h₀⁻¹ * finMat D.sp.cm.sig V.gram (j x) * finMat D.sp.cm.sig V.gram h₀ := by
    rw [cj_apply, finMat_mul, finMat_mul]
  have k1 : finMat D.sp.cm.sig V.gram h₀⁻¹ * finMat D.sp.cm.sig V.gram h₀ = 1 := by
    rw [← finMat_mul, inv_mul_cancel, finMat_one]
  refine ((suppF_iff_fin V f hx).trans ?_).symm
  rw [e1]
  refine (smul_conj_iff _ k1 (mul_eq_one_comm.1 k1) _).trans ?_
  rw [hmat]
  exact (smul_conj_iff _ m1 m2 _).trans (supp_iff_loc h x)

end GlobalTheory.DefTransfer.Loc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIff =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIffStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIffStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotIsSplitOfIsInertAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.definiteUnitary_localPoints_transfer_iff : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (j : UA D.host.E V.rank ≃ₜ* GA D V) (h₀ : GA D V)
    (M : Matrix (Fin V.rank) (Fin V.rank) D.host.E),
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) M * V.gram * M = 1 → h₀ ∈ GfC V → (∀ x, x ∈ finU (E := D.host.E) (n := V.rank) ↔ j x ∈ GfC V) →
    (∀ x, finMat D.sp.cm.sig V.gram (j x) =
      M.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) *
      ((x : GL (Fin V.rank) (Ad D.host.E)) : Matrix (Fin V.rank) (Fin V.rank) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) *
      M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) →
    (∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔
      IntVec (Matrix.mulVec (M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) (Matrix.mulVec (finMat D.sp.cm.sig V.gram h₀) y))) →
    (∀ P : HeightOneSpectrum (𝓞 D.host.E), ∃ e f, IsPrimeIdem P e f) ∧ (∀ (P : HeightOneSpectrum (𝓞 D.host.E)) e f, IsPrimeIdem P e f → ∀ x,
      x ∈ locU V.rank P ↔ cj j h₀ x ∈ GfC V ∧ SuppF V f (cj j h₀ x)) := by
  first | exact @GlobalTheory.DefTransfer.Loc.locU_iff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIffStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisors =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisors", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsEigenSysOfHeckeLin\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelaf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.DivTransfer

open scoped Matrix
open Formalism.UG

section Local

variable {K : Type} [Field K] {n : ℕ} {O : Subring K}

theorem exists_mat {A C : Matrix (Fin n) (Fin n) K}
    (h : ∀ w : Fin n → K, (∀ i, w i ∈ O) → ∃ z : Fin n → K, (∀ i, z i ∈ O) ∧ A *ᵥ w = C *ᵥ z) :
    ∃ H : Matrix (Fin n) (Fin n) K, (∀ i j, H i j ∈ O) ∧ A = C * H := by
  have h1 : ∀ j : Fin n, ∀ i, (Pi.single j 1 : Fin n → K) i ∈ O := fun j i => by
    by_cases e : i = j
    · subst e; simp
    · simp [e]
  choose z hz ez using fun j => h _ (h1 j)
  refine ⟨Matrix.of fun i j => z j i, fun i j => hz j i, Matrix.ext fun i j => ?_⟩
  have := congrFun (ez j) i
  rw [Matrix.mulVec_single_one] at this
  exact this

theorem mulVec_mem {A : Matrix (Fin n) (Fin n) K} (hA : ∀ i j, A i j ∈ O) {z : Fin n → K} (hz : ∀ i, z i ∈ O) (i : Fin n) :
    (A *ᵥ z) i ∈ O :=
  Subring.sum_mem (t := Finset.univ) _ fun j _ => mul_mem (hA i j) (hz j)

theorem exists_GLint {g g' : Matrix (Fin n) (Fin n) K} (hg : ∀ i j, g i j ∈ O) (hg' : ∀ i j, g' i j ∈ O)
    (h : g * g' = 1) : ∃ a ∈ GLint (Fin n) O, (a : Matrix (Fin n) (Fin n) K) = g := by
  let G : Matrix (Fin n) (Fin n) O := Matrix.of fun i j => ⟨g i j, hg i j⟩
  let G' : Matrix (Fin n) (Fin n) O := Matrix.of fun i j => ⟨g' i j, hg' i j⟩
  have e : G * G' = 1 := by
    apply Matrix.map_injective (f := O.subtype) O.subtype_injective
    change (G * G').map O.subtype = (1 : Matrix (Fin n) (Fin n) O).map O.subtype
    rw [Matrix.map_mul, Matrix.map_one _ (map_zero _) (map_one _)]
    exact h
  exact ⟨_, ⟨⟨G, G', e, mul_eq_one_comm.1 e⟩, rfl⟩, rfl⟩

theorem entry_mem {a : GL (Fin n) K} (ha : a ∈ GLint (Fin n) O) (i j : Fin n) :
    (a : Matrix (Fin n) (Fin n) K) i j ∈ O := by
  obtain ⟨b, rfl⟩ := ha
  exact ((b : Matrix (Fin n) (Fin n) O) i j).2

def LocBasis (O : Subring K) (x : Matrix (Fin n) (Fin n) K) (τ : Fin n → K) (g : Matrix (Fin n) (Fin n) K) : Prop :=
  (∀ z : Fin n → K, (∀ i, z i ∈ O) → ∀ i, (g *ᵥ z) i ∈ O) ∧
  (∀ w : Fin n → K, (∀ i, w i ∈ O) → ∃ z : Fin n → K, (∀ i, z i ∈ O) ∧ w = g *ᵥ z) ∧
  (∀ w : Fin n → K, (∀ i, w i ∈ O) → ∃ z : Fin n → K, (∀ i, z i ∈ O) ∧ x *ᵥ w = g *ᵥ fun i => τ i * z i) ∧
  (∀ z : Fin n → K, (∀ i, z i ∈ O) → ∃ w : Fin n → K, (∀ i, w i ∈ O) ∧ x *ᵥ w = g *ᵥ fun i => τ i * z i)

theorem mulVec_diag (g : Matrix (Fin n) (Fin n) K) (τ z : Fin n → K) :
    (g *ᵥ fun i => τ i * z i) = (g * Matrix.diagonal τ) *ᵥ z := by
  rw [← Matrix.mulVec_mulVec]
  congr 1
  exact funext fun i => (Matrix.mulVec_diagonal _ _ i).symm

theorem locBasis_iff (x : Matrix (Fin n) (Fin n) K) {τ : Fin n → K} (hτ : ∀ i, τ i ≠ 0) :
    (∃ g, LocBasis O x τ g) ↔ ∃ a ∈ GLint (Fin n) O, ∃ b ∈ GLint (Fin n) O,
      x = (a : Matrix (Fin n) (Fin n) K) * Matrix.diagonal τ * (b : Matrix (Fin n) (Fin n) K) := by
  constructor
  · rintro ⟨g, h1, h2, h3, h4⟩
    simp only [mulVec_diag] at h3 h4
    obtain ⟨g₀, hg, e0⟩ := exists_mat (O := O) (A := g) (C := 1) fun w hw => ⟨_, h1 w hw, by simp⟩
    rw [one_mul] at e0
    subst e0
    obtain ⟨g', hg', e1⟩ := exists_mat (O := O) (A := 1) (C := g) fun w hw => by simpa using h2 w hw
    obtain ⟨h, hh, e2⟩ := exists_mat h3
    obtain ⟨h', hh', e3⟩ := exists_mat (O := O) (A := g * Matrix.diagonal τ) (C := x) fun w hw =>
      (h4 w hw).imp fun z hz => ⟨hz.1, hz.2.symm⟩
    have hd : Matrix.diagonal (fun i => (τ i)⁻¹) * Matrix.diagonal τ = 1 := by
      rw [Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
      congr 1
      exact funext fun i => inv_mul_cancel₀ (hτ i)
    have e1' : g' * g = 1 := mul_eq_one_comm.1 e1.symm
    have hl : (Matrix.diagonal (fun i => (τ i)⁻¹) * g') * (g * Matrix.diagonal τ) = 1 := by
      rw [Matrix.mul_assoc, ← Matrix.mul_assoc g', e1', one_mul, hd]
    have e4 : h * h' = 1 := by
      rw [← one_mul (h * h'), ← hl, Matrix.mul_assoc, ← Matrix.mul_assoc _ h, ← e2, ← e3]
    obtain ⟨a, ha, rfl⟩ := exists_GLint hg hg' e1.symm
    obtain ⟨b, hb, rfl⟩ := exists_GLint hh hh' e4
    exact ⟨a, ha, b, hb, e2⟩
  · rintro ⟨a, ha, b, hb, rfl⟩
    refine ⟨a, fun z hz => mulVec_mem (entry_mem ha) hz, fun w hw => ⟨_, mulVec_mem (entry_mem (inv_mem ha)) hw, ?_⟩,
      fun w hw => ⟨_, mulVec_mem (entry_mem hb) hw, ?_⟩, fun z hz => ⟨_, mulVec_mem (entry_mem (inv_mem hb)) hz, ?_⟩⟩
    · rw [Matrix.mulVec_mulVec, Units.mul_inv, Matrix.one_mulVec]
    · rw [mulVec_diag, Matrix.mulVec_mulVec]
    · rw [mulVec_diag, Matrix.mulVec_mulVec, Matrix.mul_assoc _ b.1, Units.mul_inv, mul_one]

end Local

theorem basis_iff_locBasis {R K : Type} [CommRing R] [Field K] {n : ℕ} (π : R →+* K) (s : K → R)
    (hs : ∀ x, π (s x) = x) {ε : R} (hε : ∀ y, ε * y = s (π y)) {I : R → Prop} {O : Subring K}
    (hI : ∀ y, I y → π y ∈ O) (hI' : ∀ x ∈ O, I (s x)) {Λ : (Fin n → R) → Prop}
    {N N' X : Matrix (Fin n) (Fin n) R} (hN : N * N' = 1) (hΛ : ∀ y, Λ y ↔ ∀ i, I ((N' *ᵥ y) i)) (t : Fin n → R) :
    (∃ B : Matrix (Fin n) (Fin n) R,
      (∀ z, (∀ i, I (z i)) → Λ fun i => ε * B.mulVec z i) ∧
      (∀ y, Λ y → ∃ z, (∀ i, I (z i)) ∧ (fun i => ε * y i) = fun i => ε * B.mulVec z i) ∧
      (∀ y, Λ y → ∃ z : Fin n → R, (∀ i, I (z i)) ∧
        (fun i => ε * (N * X * N').mulVec y i) = fun i => ε * B.mulVec (fun j => t j * z j) i) ∧
      (∀ z : Fin n → R, (∀ i, I (z i)) → ∃ y, Λ y ∧
        (fun i => ε * (N * X * N').mulVec y i) = fun i => ε * B.mulVec (fun j => t j * z j) i)) ↔
    ∃ g, LocBasis O (X.map π) (fun i => π (t i)) g := by
  have hN' : N' * N = 1 := mul_eq_one_comm.1 hN
  have hv : ∀ (A : Matrix (Fin n) (Fin n) R) z, (fun i => π (A.mulVec z i)) = (A.map π *ᵥ fun j => π (z j)) :=
    fun A z => funext fun i => RingHom.map_mulVec π A z i
  have hsm : ∀ (A : Matrix (Fin n) (Fin n) R) y i, (A *ᵥ fun i => ε * y i) i = ε * (A *ᵥ y) i := fun A y i =>
    congrFun (Matrix.mulVec_smul A ε y) i
  have heq : ∀ y y' : Fin n → R, ((fun i => ε * y i) = fun i => ε * y' i) ↔
      (fun i => π ((N' *ᵥ y) i)) = fun i => π ((N' *ᵥ y') i) := fun y y' => by
    constructor
    · intro h
      funext i
      rw [← hs (π _), ← hε, ← hsm, h, hsm, hε, hs]
    · intro h
      have h2 : (fun i => ε * (N' *ᵥ y) i) = fun i => ε * (N' *ᵥ y') i := by
        funext i
        rw [hε, hε, congrFun h i]
      funext i
      have := congrFun (congrArg (N *ᵥ ·) h2) i
      simpa only [hsm, Matrix.mulVec_mulVec, hN, Matrix.one_mulVec] using this
  have hΛε : ∀ y : Fin n → R, Λ (fun i => ε * y i) ↔ ∀ i, π ((N' *ᵥ y) i) ∈ O := fun y => by
    rw [hΛ]
    refine forall_congr' fun i => ?_
    rw [hsm, hε]
    exact ⟨fun h => hs (π _) ▸ hI _ h, hI' _⟩
  have hc : ∀ y, N' *ᵥ (N *ᵥ y) = y := fun y => by rw [Matrix.mulVec_mulVec, hN', Matrix.one_mulVec]
  have hΛs : ∀ w : Fin n → K, (∀ i, w i ∈ O) → Λ (N *ᵥ fun i => s (w i)) := fun w hw => by
    rw [hΛ, hc]
    exact fun i => hI' _ (hw i)
  have hX : ∀ y, (fun i => π ((N' *ᵥ ((N * X * N') *ᵥ y)) i)) = X.map π *ᵥ fun i => π ((N' *ᵥ y) i) := fun y => by
    rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hc, hv]
  have hB : ∀ (B : Matrix (Fin n) (Fin n) R) z,
      (fun i => π ((N' *ᵥ (B *ᵥ z)) i)) = (N' * B).map π *ᵥ fun i => π (z i) := fun B z => by
    rw [Matrix.mulVec_mulVec, hv]
  simp only [heq, hΛε, hX, hB, map_mul]
  constructor
  · rintro ⟨B, h1, h2, h3, h4⟩
    refine ⟨(N' * B).map π, fun z hz i => ?_, fun w hw => ?_, fun w hw => ?_, fun z hz => ?_⟩
    · have := h1 _ (fun i => hI' _ (hz i)) i
      rw [congrFun (hB B _) i] at this
      simpa only [hs] using this
    · obtain ⟨z, hz, e⟩ := h2 _ (hΛs w hw)
      refine ⟨_, fun i => hI _ (hz i), ?_⟩
      simpa only [hc, hs] using e
    · obtain ⟨z, hz, e⟩ := h3 _ (hΛs w hw)
      refine ⟨_, fun i => hI _ (hz i), ?_⟩
      simpa only [hc, hs] using e
    · obtain ⟨y, hy, e⟩ := h4 _ (fun i => hI' _ (hz i))
      refine ⟨_, fun i => hI _ ((hΛ y).1 hy i), ?_⟩
      simpa only [hs] using e
  · rintro ⟨g, h1, h2, h3, h4⟩
    have hg : (N' * (N * g.map s)).map π = g := by
      rw [← Matrix.mul_assoc, hN', one_mul]
      exact Matrix.ext fun i j => hs _
    refine ⟨N * g.map s, fun z hz i => ?_, fun y hy => ?_, fun y hy => ?_, fun z hz => ?_⟩
    · rw [congrFun (hB _ _) i, hg]
      exact h1 _ (fun i => hI _ (hz i)) i
    · obtain ⟨z, hz, e⟩ := h2 _ fun i => hI _ ((hΛ y).1 hy i)
      refine ⟨_, fun i => hI' _ (hz i), ?_⟩
      simpa only [hg, hs] using e
    · obtain ⟨z, hz, e⟩ := h3 _ fun i => hI _ ((hΛ y).1 hy i)
      refine ⟨_, fun i => hI' _ (hz i), ?_⟩
      simpa only [hg, hs] using e
    · obtain ⟨w, hw, e⟩ := h4 _ fun i => hI _ (hz i)
      refine ⟨_, hΛs w hw, ?_⟩
      simpa only [hg, hs, hc] using e


open IsDedekindDomain NumberField in
theorem hasDiv_iff {E : Type} [Field E] [NumberField E] {n : ℕ} (P : HeightOneSpectrum (𝓞 E)) {ϖ : P.adicCompletion E}
    (hϖ : Valued.v ϖ = WithZero.exp (-1 : ℤ)) (d : List ℤ) (g : GL (Fin n) (P.adicCompletion E)) :
    GlobalTheory.SphPar.HasDiv (Ov E P) d g ↔ ∃ a ∈ GLint (Fin n) (Ov E P), ∃ b ∈ GLint (Fin n) (Ov E P),
      (g : Matrix (Fin n) (Fin n) (P.adicCompletion E)) = (a : Matrix (Fin n) (Fin n) (P.adicCompletion E)) *
        Matrix.diagonal (fun i : Fin n => ϖ ^ d.getD i 0) * (b : Matrix (Fin n) (Fin n) (P.adicCompletion E)) := by
  refine ⟨?_, fun h => ⟨ϖ, hϖ, h⟩⟩
  rintro ⟨u, hu, a, ha, b, hb, e⟩
  have hu' : Valued.v u = Valued.v ϖ := hu.trans hϖ.symm
  have h0 : ϖ ≠ 0 := fun h => by
    rw [h, map_zero] at hϖ
    exact WithZero.exp_ne_zero hϖ.symm
  have hu0 : u ≠ 0 := fun h => by
    rw [h, map_zero] at hu'
    exact (map_ne_zero _).2 h0 hu'.symm
  have hm : ∀ k : ℤ, (u / ϖ) ^ k ∈ Ov E P := fun k => by
    change Valued.v ((u / ϖ) ^ k) ≤ 1
    rw [map_zpow₀, map_div₀, hu', div_self ((map_ne_zero _).2 h0), one_zpow]
  have hd : ∀ (c : Fin n → ℤ) (i j : Fin n), Matrix.diagonal (fun i => (u / ϖ) ^ c i) i j ∈ Ov E P := fun c i j => by
    rw [Matrix.diagonal_apply]
    split_ifs
    · exact hm _
    · exact zero_mem _
  obtain ⟨c, hc, ec⟩ := exists_GLint (hd fun i => d.getD i 0) (hd fun i => -d.getD i 0) (by
    rw [Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
    congr 1
    funext i
    rw [zpow_neg, mul_inv_cancel₀ (zpow_ne_zero _ (div_ne_zero hu0 h0))])
  refine ⟨a, ha, c * b, mul_mem hc hb, ?_⟩
  rw [e, Units.val_mul, ec, ← Matrix.mul_assoc, Matrix.mul_assoc a.1 _ (Matrix.diagonal _), Matrix.diagonal_mul_diagonal]
  congr 3
  funext i
  rw [← mul_zpow, mul_div_cancel₀ _ h0]

open IsDedekindDomain NumberField in
theorem valued_unif {E : Type} [Field E] [NumberField E] {w : HeightOneSpectrum (𝓞 E)} {ϖ : 𝓞 E}
    (h1 : ϖ ∈ w.asIdeal) (h2 : ϖ ∉ w.asIdeal ^ 2) :
    Valued.v (algebraMap E (w.adicCompletion E) (ϖ : E)) = WithZero.exp (-1 : ℤ) := by
  have a1 := (w.intValuation_le_pow_iff_mem ϖ 1).2 (by simpa using h1)
  have a2 := mt (w.intValuation_le_pow_iff_mem ϖ 2).1 h2
  have a3 : w.intValuation ϖ ≠ 0 := w.intValuation_ne_zero ϖ fun h => h2 (h ▸ zero_mem _)
  rw [Formalism.UG.P.levelaf_valued_algebraMap, show w.valuation E (ϖ : E) = w.intValuation ϖ from
    w.valuation_of_algebraMap ϖ]
  rw [← WithZero.exp_log a3, WithZero.exp_le_exp] at a1 a2
  rw [← WithZero.exp_log a3]
  congr 1
  omega

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem frame_mul {R : Type} [Monoid R] {H H' A A' : R} (hH : H' * H = 1) (hA : A * A' = 1) :
    (H' * A) * (A' * H) = 1 := by
  rw [mul_assoc, ← mul_assoc A, hA, one_mul, hH]

theorem frame_conj {R : Type} [Monoid R] {H H' A A' X Y Z : R} (hZ : Z = H' * Y * H) (hY : Y = A * X * A') :
    Z = (H' * A) * X * (A' * H) := by
  simp only [hZ, hY, mul_assoc]

theorem map_mul_inv {E R : Type} [Field E] [CommRing R] {n : ℕ} (ι : E →+* R) {M M' : Matrix (Fin n) (Fin n) E}
    (h : M' * M = 1) : M.map ι * M⁻¹.map ι = 1 := by
  rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ (Matrix.isUnit_det_of_left_inverse h),
    Matrix.map_one _ (map_zero _) (map_one _)]

theorem divAt_iff_of_frame {D : D7} (V : HSp D) {P : HeightOneSpectrum (𝓞 D.host.E)} {e f : AE D} {ϖ : 𝓞 D.host.E}
    (d : List ℤ) (hef : IsPrimeIdem P e f) (h1 : ϖ ∈ P.asIdeal) (h2 : ϖ ∉ P.asIdeal ^ 2)
    {N N' X : Matrix (Fin V.rank) (Fin V.rank) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)} (hN : N * N' = 1)
    (hL : ∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔ IntVec (N'.mulVec y)) {α : GA D V}
    (hα : finMat D.sp.cm.sig V.gram α = N * X * N') {g : GL (Fin V.rank) (P.adicCompletion D.host.E)}
    (hX : X.map (GlobalTheory.LFun.compAt D.host.F P) = g.1) :
    DivAt V e (ϖ : D.host.E) d α ↔ d.length = V.rank ∧ HasDiv (Ov D.host.E P) d g := by
  have hϖ := valued_unif h1 h2
  have h0 : algebraMap D.host.E (P.adicCompletion D.host.E) (ϖ : D.host.E) ≠ 0 := fun h => by
    rw [h, map_zero] at hϖ
    exact WithZero.exp_ne_zero hϖ.symm
  have key := basis_iff_locBasis (GlobalTheory.LFun.compAt D.host.F P) (GlobalTheory.LFun.singleAt D.host.F P) (GlobalTheory.LFun.compAt_singleAt P)
    (ε := finPart D e) (fun y => by rw [GlobalTheory.LFun.finPart_of_isPrimeIdem hef, GlobalTheory.LFun.singleAt_mul, one_mul])
    (I := (· ∈ intAE D)) (O := Ov D.host.E P) (fun y hy => (GlobalTheory.LFun.mem_intAE_iff_compAt y).1 hy P)
    (fun x => GlobalTheory.LFun.singleAt_mem_intAE) (Λ := (· ∈ Formalism.L2.NTheta.LamHat V))
    (X := X) hN hL (fun i => finPart D (incA D ((ϖ : D.host.E) ^ (d.getD i.1 0))))
  have ht : (fun i : Fin V.rank => GlobalTheory.LFun.compAt D.host.F P (finPart D (incA D ((ϖ : D.host.E) ^ (d.getD i.1 0))))) =
      fun i : Fin V.rank => algebraMap D.host.E (P.adicCompletion D.host.E) (ϖ : D.host.E) ^ d.getD i.1 0 :=
    funext fun i => by rw [GlobalTheory.LFun.compAt_incA, map_zpow₀]
  rw [← hα] at key
  replace key := key.trans (by rw [hX, ht, locBasis_iff _ fun i => zpow_ne_zero _ h0])
  unfold DivAt IntVec
  exact and_congr Iff.rfl (key.trans (hasDiv_iff P hϖ d g).symm)

theorem divAt_cj_iff : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (j : UA D.host.E V.rank ≃ₜ* GA D V) (h₀ : GA D V)
    (M : Matrix (Fin V.rank) (Fin V.rank) D.host.E),
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) M * V.gram * M = 1 → h₀ ∈ GfC V → (∀ x, x ∈ finU (E := D.host.E) (n := V.rank) ↔ j x ∈ GfC V) →
    (∀ x, finMat D.sp.cm.sig V.gram (j x) =
      M.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) *
      ((x : GL (Fin V.rank) (Ad D.host.E)) : Matrix (Fin V.rank) (Fin V.rank) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) *
      M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) →
    (∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔
      IntVec (Matrix.mulVec (M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) (Matrix.mulVec (finMat D.sp.cm.sig V.gram h₀) y))) →
    ∀ (P : HeightOneSpectrum (𝓞 D.host.E)) (e f : AE D) (ϖ : 𝓞 D.host.E) (d : List ℤ) (x : UA D.host.E V.rank),
      IsPrimeIdem P e f → ϖ ∈ P.asIdeal → ϖ ∉ P.asIdeal ^ 2 → x ∈ locU V.rank P →
      (DivAt V e (ϖ : D.host.E) d (cj j h₀ x) ↔ d.length = V.rank ∧ HasDiv (Ov D.host.E P) d (cLoc P x)) := by
  intro D _ V j h₀ M hM _ _ hj hL P e f ϖ d x hef h1 h2 _
  have hMM := map_mul_inv (Algebra.TensorProduct.includeRight :
      D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E).toRingHom hM
  have hH : finMat D.sp.cm.sig V.gram h₀⁻¹ * finMat D.sp.cm.sig V.gram h₀ = 1 :=
    (_root_.Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.finMat_mul _ _ _ _).symm.trans ((congrArg _ (inv_mul_cancel h₀)).trans (_root_.Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.finMat_one _ _))
  have hα : finMat D.sp.cm.sig V.gram (cj j h₀ x) = finMat D.sp.cm.sig V.gram h₀⁻¹ *
      finMat D.sp.cm.sig V.gram (j x) * finMat D.sp.cm.sig V.gram h₀ :=
    (congrArg _ (cj_apply j h₀ x)).trans ((_root_.Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.finMat_mul _ _ _ _).trans (congrArg (· * _) (_root_.Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.finMat_mul _ _ _ _)))
  refine divAt_iff_of_frame V d hef h1 h2 (frame_mul hH hMM) (fun y => ?_) (frame_conj hα (hj x)) ?_
  · rw [← Matrix.mulVec_mulVec]
    exact hL y
  · refine Matrix.ext fun a b => ?_
    exact congrArg (fun y : FiniteAdeleRing (𝓞 D.host.E) D.host.E => y P)
      ((GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).apply_symm_apply
        (pFin D.host.E (((x : GL (Fin V.rank) (Ad D.host.E)) : Matrix (Fin V.rank) (Fin V.rank) (Ad D.host.E)) a b)))

end GlobalTheory.DivTransfer

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisors =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisorsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisorsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotIsSplitOfIsInertAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisors\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.divAt_selfDual_lattice_iff_hasElementaryDivisors : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (j : UA D.host.E V.rank ≃ₜ* GA D V) (h₀ : GA D V)
    (M : Matrix (Fin V.rank) (Fin V.rank) D.host.E),
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) M * V.gram * M = 1 → h₀ ∈ GfC V → (∀ x, x ∈ finU (E := D.host.E) (n := V.rank) ↔ j x ∈ GfC V) →
    (∀ x, finMat D.sp.cm.sig V.gram (j x) =
      M.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) *
      ((x : GL (Fin V.rank) (Ad D.host.E)) : Matrix (Fin V.rank) (Fin V.rank) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) *
      M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) →
    (∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔
      IntVec (Matrix.mulVec (M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) (Matrix.mulVec (finMat D.sp.cm.sig V.gram h₀) y))) →
    ∀ (P : HeightOneSpectrum (𝓞 D.host.E)) (e f : AE D) (ϖ : 𝓞 D.host.E) (d : List ℤ) (x : UA D.host.E V.rank),
      IsPrimeIdem P e f → ϖ ∈ P.asIdeal → ϖ ∉ P.asIdeal ^ 2 → x ∈ locU V.rank P →
      (DivAt V e (ϖ : D.host.E) d (cj j h₀ x) ↔ d.length = V.rank ∧ HasDiv (Ov D.host.E P) d (cLoc P x)) := by
  first | exact @GlobalTheory.DivTransfer.divAt_cj_iff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisorsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AdelicHermitianForms.IsHermForm\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.IsSelfDualCLatFrame\npublic import Formalism.LocalToGlobal.Divisibility.CoefMod\npublic import Formalism.LocalToGlobal.HermitianColumns.InLocalDiscriminantKernel\npublic import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ThShort\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicCompletionComapRationalMatrix\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ColumnLatticeComapEqStandardLattice\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAdelicUnitaryMovesSelfDualLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisOfRegularForms\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsRationalUnitarySplitDenominator\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.DefTransfer.LatMove

open scoped Matrix

theorem mem_hat_stdLat_iff {D : D7} {n : ℕ} (z : Fin n → Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) :
    z ∈ GlobalTheory.AdLat.hat D.host.F (Formalism.L2.Pj.stdLat D.host.E n : Set (Fin n → D.host.E)) ↔ IntVec z := by
  constructor
  · intro h i
    induction h using AddSubgroup.closure_induction with
    | mem y hy =>
      obtain ⟨a, ha, x, hx, rfl⟩ := hy
      obtain ⟨r, hr⟩ := Submodule.mem_one.1 (hx i trivial)
      exact AddSubgroup.subset_closure ⟨a, ha, r, congrArg (fun t => a ⊗ₜ[D.host.F] t) hr.symm⟩
    | zero => exact zero_mem _
    | add y z _ _ hy hz => exact add_mem hy hz
    | neg y _ hy => exact neg_mem hy
  · intro h
    rw [← Finset.univ_sum_single z]
    refine sum_mem fun i _ => ?_
    have hi := h i
    generalize z i = c at hi
    induction hi using AddSubgroup.closure_induction with
    | mem y hy =>
      obtain ⟨a, ha, x, rfl⟩ := hy
      refine AddSubgroup.subset_closure ⟨a, ha, Pi.single i (x : D.host.E), fun j _ => ?_, funext fun j => ?_⟩
      · rw [Pi.single_apply]
        split_ifs
        exacts [Submodule.mem_one.2 ⟨x, rfl⟩, zero_mem _]
      · rw [Pi.single_apply, Pi.single_apply]
        split_ifs
        exacts [rfl, (TensorProduct.tmul_zero _ _).symm]
    | zero => rw [Pi.single_zero]; exact zero_mem _
    | add y z _ _ hy hz => rw [Pi.single_add]; exact add_mem hy hz
    | neg y _ hy => rw [Pi.single_neg]; exact neg_mem hy

theorem mem_hat_colLat_iff {D : D7} {n : ℕ} (B : GL (Fin n) D.host.E)
    (w : Fin n → Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) :
    w ∈ GlobalTheory.AdLat.hat D.host.F (Formalism.L2.DIV.colLat B : Set (Fin n → D.host.E)) ↔
      IntVec (GlobalTheory.UnRep.fm D.host.F (B⁻¹).1 *ᵥ w) := by
  have ew : GlobalTheory.UnRep.fm D.host.F B.1 *ᵥ (GlobalTheory.UnRep.fm D.host.F (B⁻¹).1 *ᵥ w) = w := by
    rw [Matrix.mulVec_mulVec, ← _root_.GlobalTheory.UnRep.LatForm.fm_mul, Units.mul_inv, _root_.GlobalTheory.UnRep.LatForm.fm_one, Matrix.one_mulVec]
  have h1 := GlobalTheory.HatPullback.main D.host.F D.host.E n B (Formalism.L2.DIV.colLat B) (GlobalTheory.UnRep.fm D.host.F (B⁻¹).1 *ᵥ w)
  rw [ew, GlobalTheory.ColStd.colLat_comap_eq_stdLat] at h1
  exact h1.trans (mem_hat_stdLat_iff _)

theorem swap_mem_hatL_iff {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}
    (L : Submodule (𝓞 E) (Fin n → E)) (u : Fin n → FiniteAdeleRing (𝓞 F) F ⊗[F] E) :
    (fun i => Algebra.TensorProduct.comm F (FiniteAdeleRing (𝓞 F) F) E (u i)) ∈ Formalism.L2.Herm.hatL (F := F) L ↔
      u ∈ GlobalTheory.AdLat.hat F (L : Set (Fin n → E)) := by
  rw [GlobalTheory.GenusTranslate.hatL_iff]
  simp only [AlgEquiv.symm_apply_apply]

theorem exists_move {D : D7} (V : HSp D) (B : GL (Fin V.rank) D.host.E)
    (hB : cT (D.sp.cm.sig : D.host.E →+* D.host.E) B.1 * V.gram * B.1 = 1) :
    ∃ x ∈ GfC V, ∀ w, w ∈ GlobalTheory.AdLat.hat D.host.F (Formalism.L2.DIV.colLat B : Set (Fin V.rank → D.host.E)) ↔
      (finHom V x).1 *ᵥ w ∈ GlobalTheory.AdLat.hat D.host.F (GlobalTheory.PlaceModel.latFrame V : Set (Fin V.rank → D.host.E)) := by
  obtain ⟨x, hx, h⟩ := GlobalTheory.GenusTranslate.exists_move_colLat D V B _ hB (GlobalTheory.PlaceModel.isSelfDualC_latFrame V)
  refine ⟨x, hx, fun w => ?_⟩
  have h1 := h fun i => Formalism.IndefR.Lev.swapAE D (w i)
  have h2 : (Formalism.IndefR.Lev.finE V x).1 *ᵥ (fun i => Formalism.IndefR.Lev.swapAE D (w i)) =
      fun i => Formalism.IndefR.Lev.swapAE D (((finHom V x).1 *ᵥ w) i) :=
    funext fun i => (RingHom.map_mulVec (Formalism.IndefR.Lev.swapAE D) (finHom V x).1 w i).symm
  rw [h2] at h1
  exact (swap_mem_hatL_iff _ w).symm.trans (h1.trans (swap_mem_hatL_iff _ ((finHom V x).1 *ᵥ w)))

theorem exists_finite_point : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (M : Matrix (Fin V.rank) (Fin V.rank) D.host.E),
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) M * V.gram * M = 1 →
    ∃ h₀ ∈ GfC V, ∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔
      IntVec (Matrix.mulVec (M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) (Matrix.mulVec (finMat D.sp.cm.sig V.gram h₀) y)) := by
  intro D _ V M hM
  have hu : IsUnit M := (Matrix.isUnit_iff_isUnit_det M).2 (Matrix.isUnit_det_of_left_inverse hM)
  obtain ⟨B, rfl⟩ := hu
  obtain ⟨x, hx, h⟩ := exists_move V B hM
  refine ⟨x⁻¹, inv_mem hx, fun y => ?_⟩
  have hL : L0c D V = (GlobalTheory.PlaceModel.latFrame V : Set (Fin V.rank → D.host.E)) :=
    Set.ext fun z => (GlobalTheory.PlaceModel.mem_latFrame V z).symm
  have h1 := h ((finHom V x⁻¹).1 *ᵥ y)
  rw [Matrix.mulVec_mulVec, ← Units.val_mul, ← map_mul, mul_inv_cancel, map_one, Units.val_one, Matrix.one_mulVec,
    mem_hat_colLat_iff, Matrix.coe_units_inv] at h1
  rw [hL]
  exact h1.symm

end GlobalTheory.DefTransfer.LatMove
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormalStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormalStatement", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisOfRegularForms\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.exists_finite_unitary_point_selfDual_to_orthonormal : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (M : Matrix (Fin V.rank) (Fin V.rank) D.host.E),
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) M * V.gram * M = 1 →
    ∃ h₀ ∈ GfC V, ∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔
      IntVec (Matrix.mulVec (M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) (Matrix.mulVec (finMat D.sp.cm.sig V.gram h₀) y)) := by
  first | exact @GlobalTheory.DefTransfer.LatMove.exists_finite_point
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormalStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoDefiniteUnitaryAdelicUnitaryGroupStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoDefiniteUnitaryAdelicUnitaryGroupStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotIsSplitOfIsInertAt\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoDefiniteUnitaryAdelicUnitaryGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisOfRegularForms\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.exists_iso_definiteUnitary_adelicUnitaryGroup : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)),
    IsInfFam θ → V.SigOK → V.IsPosDef →
    ∃ (j : UA D.host.E V.rank ≃ₜ* GA D V) (M : Matrix (Fin V.rank) (Fin V.rank) D.host.E),
      cT (D.sp.cm.sig : D.host.E →+* D.host.E) M * V.gram * M = 1 ∧
      (∀ x, x ∈ ratU D.host.E V.rank ↔ j x ∈ GQ V) ∧
      (∀ x, x ∈ finU (E := D.host.E) (n := V.rank) ↔ j x ∈ GfC V) ∧
      (∀ x, x ∈ infU D.host.E V.rank ↔ j x ∈ GinfC V) ∧
      (∃ A : D.what₂.Tau → Matrix (Fin V.rank) (Fin V.rank) ℂ, (∀ τ, IsUnit (A τ)) ∧
        ∀ τ x, infMat D.sp.cm.sig V.gram (θ τ) (j x) =
          A τ * (cEmb (tauE D τ) x : Matrix (Fin V.rank) (Fin V.rank) ℂ) * (A τ)⁻¹) ∧
      (∀ x, finMat D.sp.cm.sig V.gram (j x) =
      M.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) *
      ((x : GL (Fin V.rank) (Ad D.host.E)) : Matrix (Fin V.rank) (Fin V.rank) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) *
      M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) := by
  first | exact @GlobalTheory.DefTransfer.Glob.exists_iso
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoDefiniteUnitaryAdelicUnitaryGroupStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLattic =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLattic", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsEigenSysOfHeckeLin\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.GLintEqKOAndPrincEqKOne\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnramifiedOfSphericalVectorDictionary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.TransferHyp

theorem stab_iff_entries {R : Type} [CommRing R] {n : ℕ} (O : Subring R) {X Y : Matrix (Fin n) (Fin n) R}
    (hXY : X * Y = 1) (hYX : Y * X = 1) :
    (∀ z : Fin n → R, (∀ i, z i ∈ O) ↔ ∀ i, X.mulVec z i ∈ O) ↔ (∀ i j, X i j ∈ O) ∧ ∀ i j, Y i j ∈ O := by
  have hs : ∀ j i : Fin n, (Pi.single j 1 : Fin n → R) i ∈ O := fun j i => by
    rw [Pi.single_apply]
    split_ifs
    · exact one_mem _
    · exact zero_mem _
  have hm : ∀ {A : Matrix (Fin n) (Fin n) R}, (∀ i j, A i j ∈ O) → ∀ z : Fin n → R, (∀ i, z i ∈ O) →
      ∀ i, A.mulVec z i ∈ O := fun {A} hA z hz i => by
    change ∑ j, A i j * z j ∈ O
    exact sum_mem fun j _ => mul_mem (hA i j) (hz j)
  constructor
  · intro h
    refine ⟨fun i j => ?_, fun i j => ?_⟩
    · simpa using (h _).1 (hs j) i
    · have := (h (Y.mulVec (Pi.single j 1))).2 (by
        rw [Matrix.mulVec_mulVec, hXY, Matrix.one_mulVec]
        exact hs j) i
      simpa using this
  · rintro ⟨h1, h2⟩ z
    refine ⟨hm h1 z, fun hz => ?_⟩
    have := hm h2 _ hz
    rwa [Matrix.mulVec_mulVec, hYX, Matrix.one_mulVec] at this

theorem stab_conj {R : Type} [CommRing R] {n : ℕ} (I Λ : (Fin n → R) → Prop) {A B H G X : Matrix (Fin n) (Fin n) R}
    (hAB : A * B = 1) (hBA : B * A = 1) (hHG : H * G = 1)
    (hΛ : ∀ y, Λ y ↔ I (B.mulVec (H.mulVec y))) :
    (∀ y, Λ y ↔ Λ ((G * (A * X * B) * H).mulVec y)) ↔ ∀ z, I z ↔ I (X.mulVec z) := by
  have key : ∀ y, B.mulVec (H.mulVec ((G * (A * X * B) * H).mulVec y)) = X.mulVec (B.mulVec (H.mulVec y)) := fun y => by
    simp only [Matrix.mulVec_mulVec]
    congr 1
    calc B * (H * (G * (A * X * B) * H)) = B * (H * G) * A * X * (B * H) := by simp only [Matrix.mul_assoc]
      _ = X * (B * H) := by rw [hHG, Matrix.mul_one, hBA, Matrix.one_mul]
  simp only [hΛ, key]
  refine ⟨fun h z => ?_, fun h y => h _⟩
  have e : B.mulVec (H.mulVec (G.mulVec (A.mulVec z))) = z := by
    rw [Matrix.mulVec_mulVec _ H, hHG, Matrix.one_mulVec, Matrix.mulVec_mulVec, hBA, Matrix.one_mulVec]
  have := h (G.mulVec (A.mulVec z))
  rwa [e] at this

theorem finMat_mul {D : D7} (V : HSp D) (g h : GA D V) :
    finMat D.sp.cm.sig V.gram (g * h) = finMat D.sp.cm.sig V.gram g * finMat D.sp.cm.sig V.gram h :=
  congrArg Units.val (map_mul (finHom V) g h)

theorem finMat_one {D : D7} (V : HSp D) : finMat D.sp.cm.sig V.gram (1 : GA D V) = 1 :=
  congrArg Units.val (map_one (finHom V))

def finComp (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] :
    Ad E →+* Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af F ⊗[F] E :=
  (GlobalTheory.LFun.finAdEquiv F E).symm.toRingHom.comp (pFin E)

def intRing (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] :
    Subring (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af F ⊗[F] E) :=
  ⨅ u : HeightOneSpectrum (𝓞 E), (Ov E u).comap (GlobalTheory.LFun.compAt F u)

theorem mem_intRing {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (z : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af F ⊗[F] E) : z ∈ intRing F E ↔ ∀ u, GlobalTheory.LFun.compAt F u z ∈ Ov E u := by
  simp only [intRing, Subring.mem_iInf, Subring.mem_comap]

theorem stab_finComp_iff (F : Type) {E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    [IsCMField E] {n : ℕ} (x : UA E n) :
    (∀ z : Fin n → Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af F ⊗[F] E, (∀ i, z i ∈ intRing F E) ↔
      ∀ i, (x.1.1.map (finComp F E)).mulVec z i ∈ intRing F E) ↔
    (∀ a b u, (cLoc u x).1 a b ∈ u.adicCompletionIntegers E) ∧
      ∀ a b u, (cLoc u x⁻¹).1 a b ∈ u.adicCompletionIntegers E := by
  have hκ : ∀ (y : UA E n) a b, (y.1.1.map (finComp F E)) a b ∈ intRing F E ↔
      ∀ u, (cLoc u y).1 a b ∈ u.adicCompletionIntegers E := fun y a b => by
    refine (mem_intRing _).trans (forall_congr' fun u => ?_)
    have e : GlobalTheory.LFun.compAt F u ((y.1.1.map (finComp F E)) a b) = (cLoc u y).1 a b :=
      congrArg (fun t => pLoc E u t) ((GlobalTheory.LFun.finAdEquiv F E).apply_symm_apply (pFin E (y.1.1 a b)))
    rw [e]
    exact Iff.rfl
  have hXY : ∀ y : UA E n, y.1.1.map (finComp F E) * (y⁻¹).1.1.map (finComp F E) = 1 := fun y => by
    rw [← Matrix.map_mul, ← Units.val_mul, ← Subgroup.coe_mul, mul_inv_cancel, Subgroup.coe_one, Units.val_one,
      Matrix.map_one _ (map_zero _) (map_one _)]
  have hYX := hXY x⁻¹
  rw [inv_inv] at hYX
  refine (stab_iff_entries _ (hXY x) hYX).trans ?_
  simp only [hκ]

theorem mem_KGL_iff {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ} {P : HeightOneSpectrum (𝓞 E)}
    {x : UA E n} (hx : x ∈ locU n P) : cLoc P x ∈ GlobalTheory.LFun.KGL P (n := n) ↔
    (∀ a b u, (cLoc u x).1 a b ∈ u.adicCompletionIntegers E) ∧
      ∀ a b u, (cLoc u x⁻¹).1 a b ∈ u.adicCompletionIntegers E := by
  constructor
  · intro h2
    exact ⟨fun a b u => GlobalTheory.UnramDict.cLoc_entry_mem hx h2 u a b, fun a b u =>
      GlobalTheory.UnramDict.cLoc_entry_mem (inv_mem hx) (by rw [map_inv]; exact inv_mem h2) u a b⟩
  · rintro ⟨h4, h5⟩
    refine GlobalTheory.AdelicU.mem_GLint_iff.2 ⟨fun a b => h4 a b P, fun a b => ?_⟩
    rw [← map_inv]
    exact h5 a b P

theorem map_mul_map_inv {K R : Type} [Field K] [CommRing R] {n : ℕ} (ι : K →+* R) {M N : Matrix (Fin n) (Fin n) K}
    (h : N * M = 1) : M.map ι * M⁻¹.map ι = 1 ∧ M⁻¹.map ι * M.map ι = 1 := by
  have hdet : IsUnit M.det := Matrix.isUnit_det_of_left_inverse h
  constructor
  · rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ hdet, Matrix.map_one _ ι.map_zero ι.map_one]
  · rw [← Matrix.map_mul, Matrix.nonsing_inv_mul _ hdet, Matrix.map_one _ ι.map_zero ι.map_one]

theorem cj_mem_hyp_iff : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (j : UA D.host.E V.rank ≃ₜ* GA D V) (h₀ : GA D V)
    (M : Matrix (Fin V.rank) (Fin V.rank) D.host.E),
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) M * V.gram * M = 1 → h₀ ∈ GfC V → (∀ x, x ∈ finU (E := D.host.E) (n := V.rank) ↔ j x ∈ GfC V) →
    (∀ x, finMat D.sp.cm.sig V.gram (j x) =
      M.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) *
      ((x : GL (Fin V.rank) (Ad D.host.E)) : Matrix (Fin V.rank) (Fin V.rank) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) *
      M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) →
    (∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔
      IntVec (Matrix.mulVec (M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) (Matrix.mulVec (finMat D.sp.cm.sig V.gram h₀) y))) →
    (∀ (P : HeightOneSpectrum (𝓞 D.host.E)) e f, IsPrimeIdem P e f → ∀ x,
      x ∈ locU V.rank P ↔ cj j h₀ x ∈ GfC V ∧ SuppF V f (cj j h₀ x)) →
    ∀ (P : HeightOneSpectrum (𝓞 D.host.E)) x, cj j h₀ x ∈ GlobalTheory.Hk3.hyp V P ↔ x ∈ KP V.rank P := by
  intro D _ V j h₀ M hM _ _ hj hlat hloc P x
  have hO : ∀ z, z ∈ intAE D ↔ z ∈ intRing D.host.F D.host.E := fun z =>
    (GlobalTheory.LFun.mem_intAE_iff_compAt z).trans (mem_intRing z).symm
  obtain ⟨hAB, hBA⟩ := map_mul_map_inv (Algebra.TensorProduct.includeRight :
      D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E).toRingHom hM
  have hHG : finMat D.sp.cm.sig V.gram h₀ * finMat D.sp.cm.sig V.gram h₀⁻¹ = 1 := by
    rw [← finMat_mul, mul_inv_cancel, finMat_one]
  have hst : (∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔
      (finMat D.sp.cm.sig V.gram (cj j h₀ x)).mulVec y ∈ latHat D.host.F D.host.E (L0c D V)) ↔
      (∀ a b u, (cLoc u x).1 a b ∈ u.adicCompletionIntegers D.host.E) ∧
        ∀ a b u, (cLoc u x⁻¹).1 a b ∈ u.adicCompletionIntegers D.host.E := by
    rw [cj_apply, finMat_mul, finMat_mul, hj]
    exact (stab_conj (fun z => ∀ i, z i ∈ intRing D.host.F D.host.E)
      (fun y => y ∈ latHat D.host.F D.host.E (L0c D V)) hAB hBA hHG
      fun y => (hlat y).trans (forall_congr' fun i => hO _)).trans (stab_finComp_iff D.host.F x)
  constructor
  · rintro ⟨⟨h1, h2, -⟩, e, f, hef, h3⟩
    have hx := (hloc P e f hef x).2 ⟨h1, h3⟩
    exact ⟨hx, (mem_KGL_iff hx).2 (hst.1 h2)⟩
  · rintro ⟨h1, h2⟩
    obtain ⟨e, f, hef⟩ := GlobalTheory.IdemSupport.exists_isPrimeIdem (GlobalTheory.LFun.comp_finAdEquiv D) P
    obtain ⟨h3, h4⟩ := (hloc P e f hef x).1 h1
    exact ⟨⟨h3, hst.2 ((mem_KGL_iff h1).1 h2), fun v hv => absurd hv (Finset.notMem_empty v)⟩, e, f, hef, h4⟩

end GlobalTheory.TransferHyp

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLattic =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLatticStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLatticStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotIsSplitOfIsInertAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLattic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.hyperspecial_stabilizer_transfer_conj_selfDual_lattice : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (j : UA D.host.E V.rank ≃ₜ* GA D V) (h₀ : GA D V)
    (M : Matrix (Fin V.rank) (Fin V.rank) D.host.E),
    cT (D.sp.cm.sig : D.host.E →+* D.host.E) M * V.gram * M = 1 → h₀ ∈ GfC V → (∀ x, x ∈ finU (E := D.host.E) (n := V.rank) ↔ j x ∈ GfC V) →
    (∀ x, finMat D.sp.cm.sig V.gram (j x) =
      M.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) *
      ((x : GL (Fin V.rank) (Ad D.host.E)) : Matrix (Fin V.rank) (Fin V.rank) (Ad D.host.E)).map
        (fun a => (GlobalTheory.LFun.finAdEquiv D.host.F D.host.E).symm (pFin D.host.E a)) *
      M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) →
    (∀ y, y ∈ latHat D.host.F D.host.E (L0c D V) ↔
      IntVec (Matrix.mulVec (M⁻¹.map (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E)) (Matrix.mulVec (finMat D.sp.cm.sig V.gram h₀) y))) →
    (∀ (P : HeightOneSpectrum (𝓞 D.host.E)) e f, IsPrimeIdem P e f → ∀ x,
      x ∈ locU V.rank P ↔ cj j h₀ x ∈ GfC V ∧ SuppF V f (cj j h₀ x)) →
    ∀ (P : HeightOneSpectrum (𝓞 D.host.E)) x, cj j h₀ x ∈ GlobalTheory.Hk3.hyp V P ↔ x ∈ KP V.rank P := by
  first | exact @GlobalTheory.TransferHyp.cj_mem_hyp_iff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLatticStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinit =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinit", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivisorIndicatorMemHecke\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsHeckeLOfHasInf\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.UnitaryDoubleCosetOfGLintDoubleCoset\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FixedPlaceUnitaryLocalPointsEquivLocalUnitaryGro\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitPlaceUnitaryLocalPointsEquivGL\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnramifiedNonsplitExistsConjInvolutionUniformise\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.LocalCartan

theorem doubleCoset_of_hasDiv : ∀ (D : D7) [IsCMField D.host.E] (n : ℕ) (P : HeightOneSpectrum (𝓞 D.host.E)) (d : List ℤ)
    (x y : UA D.host.E n), x ∈ locU n P → y ∈ locU n P →
    HasDiv (Ov D.host.E P) d (cLoc P x) → HasDiv (Ov D.host.E P) d (cLoc P y) →
    ∃ k₁ ∈ KP (D := D) n P, ∃ k₂ ∈ KP (D := D) n P, y = k₁ * x * k₂ := by
  intro D _ n P d x y hx hy hdx hdy
  obtain ⟨a, b, e⟩ := _root_.GlobalTheory.DoubleCosetDivisors.sameDiv_doubleCoset (O := Ov D.host.E P) (fun _ h => h) hdy hdx
  by_cases hs : IsSplitAt P
  · obtain ⟨φ, hφ⟩ := GlobalTheory.locU_equiv_GL D.host.E n P hs
    have hc : ∀ g, cLoc P (φ.symm g : UA D.host.E n) = g := fun g => by rw [← hφ, φ.apply_symm_apply]
    refine ⟨φ.symm a, ⟨(φ.symm a).2, by rw [hc]; exact a.2⟩, φ.symm b, ⟨(φ.symm b).2, by rw [hc]; exact b.2⟩, ?_⟩
    have h : (⟨y, hy⟩ : locU n P) = φ.symm a * ⟨x, hx⟩ * φ.symm b := by
      apply φ.injective
      rw [map_mul, map_mul, φ.apply_symm_apply, φ.apply_symm_apply, hφ, hφ]
      exact e
    exact congrArg Subtype.val h
  · obtain ⟨s, ϖ, q, hs, hU⟩ := GlobalTheory.InertPlaceConj.exists_conj_isUnramInv D.host.E P
      (GlobalTheory.ToricDistribution.host_unram P) hs
    obtain ⟨φ, hφ⟩ := GlobalTheory.DefU.Inert.locU_equiv D.host.E n P s hs hU.2.1
    have hc : ∀ g, cLoc P (φ.symm g : UA D.host.E n) = g.1 := fun g => by rw [← hφ, φ.apply_symm_apply]
    obtain ⟨k₁, hk₁, k₂, hk₂, e'⟩ := GlobalTheory.UnramDoubleCoset.doubleCoset_one hU _ (φ ⟨x, hx⟩).2 _ (φ ⟨y, hy⟩).2
      a a.2 b b.2 (by rw [hφ, hφ]; exact e)
    refine ⟨φ.symm ⟨k₁, hk₁.1⟩, ⟨(φ.symm _).2, by rw [hc]; exact hk₁.2⟩,
      φ.symm ⟨k₂, hk₂.1⟩, ⟨(φ.symm _).2, by rw [hc]; exact hk₂.2⟩, ?_⟩
    have h : (⟨y, hy⟩ : locU n P) = φ.symm ⟨k₁, hk₁.1⟩ * ⟨x, hx⟩ * φ.symm ⟨k₂, hk₂.1⟩ := by
      apply φ.injective
      rw [map_mul, map_mul, φ.apply_symm_apply, φ.apply_symm_apply]
      exact Subtype.ext e'
    exact congrArg Subtype.val h

end GlobalTheory.LocalCartan
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinit =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinitStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinitStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinitStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTransferPosDef =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTransferPosDef", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStableComplBot\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefiniteUnitaryLocalPointsTransferIffStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DivAtSelfDualLatticeIffHasElementaryDivisorsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteUnitaryPointSelfDualToOrthonormalStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoDefiniteUnitaryAdelicUnitaryGroupStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperspecialStabilizerTransferConjSelfDualLatticStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSameDoubleCosetOfHasElementaryDivisorsDefinitStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Formalism.L2.Theta
open Formalism.IndefR.Mult Formalism.UG GlobalTheory.SphPar GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DefTransfer
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar
noncomputable section

namespace GlobalTheory.DefTransfer

theorem sphOp_of_local : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (c : UA D.host.E V.rank ≃* GA D V),
    (∀ (P : HeightOneSpectrum (𝓞 D.host.E)) e f, IsPrimeIdem P e f → ∀ x,
      x ∈ locU V.rank P ↔ c x ∈ GfC V ∧ SuppF V f (c x)) →
    (∀ (P : HeightOneSpectrum (𝓞 D.host.E)) x, c x ∈ GlobalTheory.Hk3.hyp V P ↔ x ∈ KP V.rank P) →
    (∀ (P : HeightOneSpectrum (𝓞 D.host.E)) (e f : AE D) (ϖ : 𝓞 D.host.E) (d : List ℤ) (x : UA D.host.E V.rank),
      IsPrimeIdem P e f → ϖ ∈ P.asIdeal → ϖ ∉ P.asIdeal ^ 2 → x ∈ locU V.rank P →
      (DivAt V e (ϖ : D.host.E) d (c x) ↔ d.length = V.rank ∧ HasDiv (Ov D.host.E P) d (cLoc P x))) →
    (∀ (P : HeightOneSpectrum (𝓞 D.host.E)) (d : List ℤ) (x y : UA D.host.E V.rank), x ∈ locU V.rank P →
      y ∈ locU V.rank P → HasDiv (Ov D.host.E P) d (cLoc P x) → HasDiv (Ov D.host.E P) d (cLoc P y) →
      ∃ k₁ ∈ KP V.rank P, ∃ k₂ ∈ KP V.rank P, y = k₁ * x * k₂) →
    ∀ (P : HeightOneSpectrum (𝓞 D.host.E)) d R, GlobalTheory.Hk3.SphOp V P d R →
      (∀ γ ∈ R, c.symm γ ∈ locU V.rank P ∧ HasDiv (Ov D.host.E P) d (cLoc P (c.symm γ))) ∧
      ∀ x ∈ locU V.rank P, HasDiv (Ov D.host.E P) d (cLoc P x) →
        ∃! γ, γ ∈ R ∧ (c.symm γ)⁻¹ * x ∈ KP V.rank P := by
  intro D _ V c hloc hhyp hdiv hcart P d R hR
  obtain ⟨e, f, ϖ, α, -, hef, hϖ1, hϖ2, -, -, -, hαf, hαd, -, hrep⟩ := hR
  have hK : ∀ k, k ∈ {k | k ∈ KsphC V ∅ ∧ SuppF V f k} ↔ c.symm k ∈ KP V.rank P := by
    intro k
    constructor
    · rintro ⟨hk1, hk2⟩
      refine (hhyp P _).1 ?_
      rw [c.apply_symm_apply]
      exact ⟨hk1, e, f, hef, hk2⟩
    · intro hk
      have h1 := (hhyp P _).2 hk
      rw [c.apply_symm_apply] at h1
      have h2 := (hloc P e f hef _).1 hk.1
      rw [c.apply_symm_apply] at h2
      exact ⟨h1.1, h2.2⟩
  have hK1 : (1 : GA D V) ∈ {k | k ∈ KsphC V ∅ ∧ SuppF V f k} := by
    refine (hK 1).2 ?_
    rw [map_one]
    exact ⟨Subgroup.one_mem _, by rw [map_one]; exact Subgroup.one_mem _⟩
  have hKG : ∀ k, k ∈ {k | k ∈ KsphC V ∅ ∧ SuppF V f k} → k ∈ GfC V := fun k hk => hk.1.1
  obtain ⟨γ0, ⟨hγ0R, -⟩, -⟩ := hrep.2 α ⟨1, hK1, 1, hK1, by simp⟩
  obtain ⟨hγ0G, k₁, hk₁, k₂, hk₂, hγ0⟩ := hrep.1 γ0 hγ0R
  have hαG : α ∈ GfC V := by
    have : α = k₁⁻¹ * γ0 * k₂⁻¹ := by rw [hγ0]; group
    rw [this]
    exact Subgroup.mul_mem _ (Subgroup.mul_mem _ (Subgroup.inv_mem _ (hKG _ hk₁)) hγ0G) (Subgroup.inv_mem _ (hKG _ hk₂))
  have hαloc : c.symm α ∈ locU V.rank P :=
    (hloc P e f hef _).2 ⟨by rw [c.apply_symm_apply]; exact hαG, by rw [c.apply_symm_apply]; exact hαf⟩
  obtain ⟨-, hαdiv⟩ := (hdiv P e f ϖ d _ hef hϖ1 hϖ2 hαloc).1 (by rw [c.apply_symm_apply]; exact hαd)
  have hinv : ∀ x k₁ k₂, k₁ ∈ KP V.rank P → k₂ ∈ KP V.rank P → HasDiv (Ov D.host.E P) d (cLoc P x) →
      HasDiv (Ov D.host.E P) d (cLoc P (k₁ * x * k₂)) := by
    rintro x k₁ k₂ hk₁ hk₂ ⟨u, hu, a, ha, b, hb, h⟩
    refine ⟨u, hu, cLoc P k₁ * a, Subgroup.mul_mem _ hk₁.2 ha, b * cLoc P k₂, Subgroup.mul_mem _ hb hk₂.2, ?_⟩
    simp only [map_mul, Units.val_mul, h, Matrix.mul_assoc]
  refine ⟨fun γ hγ => ?_, fun x hx hxd => ?_⟩
  · obtain ⟨-, k₁, hk₁, k₂, hk₂, rfl⟩ := hrep.1 γ hγ
    have e1 : c.symm (k₁ * α * k₂) = c.symm k₁ * c.symm α * c.symm k₂ := by simp only [map_mul]
    rw [e1]
    have hk₁' := (hK _).1 hk₁
    have hk₂' := (hK _).1 hk₂
    exact ⟨Subgroup.mul_mem _ (Subgroup.mul_mem _ hk₁'.1 hαloc) hk₂'.1, hinv _ _ _ hk₁' hk₂' hαdiv⟩
  · obtain ⟨k₁, hk₁, k₂, hk₂, hxe⟩ := hcart P d _ x hαloc hx hαdiv hxd
    have hcx : c x = c k₁ * α * c k₂ := by rw [hxe]; simp only [map_mul, c.apply_symm_apply]
    have hk₁' : c k₁ ∈ {k | k ∈ KsphC V ∅ ∧ SuppF V f k} := (hK _).2 (by rwa [c.symm_apply_apply])
    have hk₂' : c k₂ ∈ {k | k ∈ KsphC V ∅ ∧ SuppF V f k} := (hK _).2 (by rwa [c.symm_apply_apply])
    have hconv : ∀ γ, γ⁻¹ * c x ∈ {k | k ∈ KsphC V ∅ ∧ SuppF V f k} ↔ (c.symm γ)⁻¹ * x ∈ KP V.rank P := by
      intro γ
      rw [hK]
      simp only [map_mul, map_inv, c.symm_apply_apply]
    obtain ⟨γ, ⟨hγR, hγK⟩, huniq⟩ := hrep.2 (c x) ⟨_, hk₁', _, hk₂', hcx⟩
    exact ⟨γ, ⟨hγR, (hconv γ).1 hγK⟩, fun γ' hγ' => huniq γ' ⟨hγ'.1, (hconv γ').2 hγ'.2⟩⟩

theorem exists_isTransfer : ∀ (D : D7) [IsCMField D.host.E] (V : HSp D) (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)),
    IsInfFam θ → V.SigOK → V.IsPosDef → ∃ (j : UA D.host.E V.rank ≃ₜ* GA D V) (h₀ : GA D V), IsTransfer V θ j h₀ := by
  intro D _ V θ hθ hs hp
  obtain ⟨j, M, hM, hrat, hfin, hinf, hA, hform⟩ := GlobalTheory.T.exists_iso_definiteUnitary_adelicUnitaryGroup D V θ hθ hs hp
  obtain ⟨h₀, hh₀, hlat⟩ := GlobalTheory.T.exists_finite_unitary_point_selfDual_to_orthonormal D V M hM
  obtain ⟨hex, hloc⟩ := GlobalTheory.T.definiteUnitary_localPoints_transfer_iff D V j h₀ M hM hh₀ hfin hform hlat
  have hhyp := GlobalTheory.T.hyperspecial_stabilizer_transfer_conj_selfDual_lattice D V j h₀ M hM hh₀ hfin hform hlat hloc
  have hdiv := GlobalTheory.T.divAt_selfDual_lattice_iff_hasElementaryDivisors D V j h₀ M hM hh₀ hfin hform hlat
  refine ⟨j, h₀, hh₀, hrat, hfin, hinf, hA, fun P x => ?_, hhyp, ?_⟩
  · obtain ⟨e, f, hef⟩ := hex P
    constructor
    · intro hx
      obtain ⟨h1, h2⟩ := (hloc P e f hef x).1 hx
      exact ⟨h1, e, f, hef, h2⟩
    · rintro ⟨h1, e', f', hef', h2⟩
      exact (hloc P e' f' hef' x).2 ⟨h1, h2⟩
  · exact sphOp_of_local D V (cj j h₀) hloc hhyp hdiv (fun P d x y => _root_.GlobalTheory.LocalCartan.doubleCoset_of_hasDiv D V.rank P d x y)

end GlobalTheory.DefTransfer

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryTransferPosDef =====
