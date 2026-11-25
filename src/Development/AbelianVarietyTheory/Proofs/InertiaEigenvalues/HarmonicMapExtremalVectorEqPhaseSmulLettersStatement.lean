module

public import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.TwistSeries
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefMapNormEquivariantBasis
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OscillatorModelExtensionFirst
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PureTensorOInjective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PureTensorOMulSource
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RationalPointsGenerate
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LowestWeightVectorsAtRows
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHarmonicCoefficientMapAtWeights
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PureTensorOSmul
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.FFVMap
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsHomogeneousOfRowDeg
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReframeVStdOfPosDef
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TensorMapDescent
import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
import Formalism.LocalToGlobal.Divisibility.CoefModLemmas
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
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsStabForm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScalarOfIntertwinesUpToScalar
import Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlaces
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.WeightExponentsEmbeddingsDegree
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexCoefficientMapCoreFieldProperties, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmVecEqPhaseLetters, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicMapExtremalVectorEqPhaseSmulLetters, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicMapExtremalVectorEqPhaseSmulLettersStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexCoefficientMapCoreFieldProperties =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexCoefficientMapCoreFieldProperties", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.TwistSeries\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefMapNormEquivariantBasis\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReframeVStdOfPosDef\nimport Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TensorMapDescent\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Formalism.LocalToGlobal.Divisibility.CoefModLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsStabForm\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScalarOfIntertwinesUpToScalar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex MeasureTheory IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj GlobalTheory.CoverRead
open scoped TensorProduct Classical ComplexConjugate
attribute [local instance] Formalism.BasicNotions.Host.cmStar
noncomputable section

namespace GlobalTheory.AdTh.CoefC

open MvPolynomial

section General

variable {K K' : Type} [Field K] [Field K'] (φ : K →+* K') {I : Type} [Fintype I] {n : ℕ} (lam : I → DomWeight n)

def upL : VV K lam →ₛₗ[φ] VV K' lam where
  toFun := CoefExt.up φ lam
  map_add' x y := Subtype.ext (by simp [CoefExt.up, map_add (f := _)])
  map_smul' a x := Subtype.ext (by simp [CoefExt.up, smul_eq_C_mul, map_mul, map_C])

theorem upL_apply (v : VV K lam) : upL φ lam v = CoefExt.up φ lam v := rfl

theorem up_id (v : VV K lam) : CoefExt.up (RingHom.id K) lam v = v :=
  Subtype.ext (by simp [CoefExt.up, MvPolynomial.map_id])

theorem up_comp {K'' : Type} [Field K''] (ψ : K' →+* K'') (v : VV K lam) :
    CoefExt.up ψ lam (CoefExt.up φ lam v) = CoefExt.up (ψ.comp φ) lam v :=
  Subtype.ext (by simp [CoefExt.up, MvPolynomial.map_map])

theorem up_bVV_linearIndependent : LinearIndependent K' fun j => CoefExt.up φ lam (bVV K lam j) := by
  classical
  refine linearIndependent_of_top_le_span_of_card_eq_finrank ?_ ?_
  · intro v _
    obtain ⟨a, rfl⟩ := CoefExt.exists_coord φ lam v
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)
  · rw [Module.finrank_eq_card_basis (bVV K' lam)]

theorem up_linearIndependent (ψ : K →+* ℂ) {m : ℕ} (b : Fin m → VV K lam) (hb : LinearIndependent K b) :
    LinearIndependent ℂ fun j => CoefExt.up ψ lam (b j) :=
  CoefExt.linearIndependent (φ := RingHom.id K) (c₀ := upL ψ lam) (c' := upL ψ lam)
    (fun v => by rw [upL_apply, up_id]; rfl) (up_bVV_linearIndependent ψ lam) b hb

theorem injective_of_basis {W : Type} [AddCommGroup W] [Module K W] {ι : Type} [Fintype ι] (B : Module.Basis ι K (VV K lam))
    (c : VV K lam →ₗ[K] W) (h : LinearIndependent K fun j => c (B j)) : Function.Injective c := by
  classical
  rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
  intro x hx
  have hs : ∑ j, B.repr x j • c (B j) = 0 := by
    rw [← hx]
    conv_rhs => rw [← B.sum_repr x]

    simp only [map_sum, map_smul]
  have h0 := Fintype.linearIndependent_iff.1 h _ hs
  rw [← B.sum_repr x]
  simp [h0]

end General

end GlobalTheory.AdTh.CoefC


open GlobalTheory.AdTh.CoefC in

theorem GlobalTheory.AdTh.CoefC.coefMap_complex_core : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec), TieIn T R κ v₀ → ∀ (i : Fin D.R.m), VStd D i → ∀ (c0 : VsV D i ℂ →ₗ[ℂ] (R.cV i).W), GlobalTheory.IndefiniteRowSideFullHecke.TwistSeries.IsCoefMap R i c0 → ∀ (hw : VsV D i T.Q.c.F), hwOK T.Q.c (lamV D i) hw → ‖c0 (GlobalTheory.AdTh.CoefExt.up (inC T.Q.c) (lamV D i) hw)‖ = 1 ∧ (∀ (γ : GQ (Vc D i)) (γE : GL (Fin (Vc D i).rank) D.host.E), Bridge.IsRatMat (Vc D i) γ γE → ∀ v, c0 (GlobalTheory.AdTh.CoefExt.up (inC T.Q.c) (lamV D i) (rhoM T.Q.c (fun τ => embF T.Q.c (tauE D τ)) (lamV D i) (γE : Matrix _ _ D.host.E) v)) = (R.cV i).ρ γ (c0 (GlobalTheory.AdTh.CoefExt.up (inC T.Q.c) (lamV D i) v))) ∧ Submodule.span ℂ (Set.range fun v => c0 (GlobalTheory.AdTh.CoefExt.up (inC T.Q.c) (lamV D i) v)) = ⊤ ∧ (∀ (m : ℕ) (b : Fin m → VsV D i T.Q.c.F), LinearIndependent T.Q.c.F b → LinearIndependent ℂ (fun j => c0 (GlobalTheory.AdTh.CoefExt.up (inC T.Q.c) (lamV D i) (b j)))) ∧ Function.Injective c0 := by
  intro D G _ _ Pl0 T0 A T _ R κ v₀ hT i hstd c0 hc hw hwo
  obtain ⟨gramR, c0R, c0L, hT', hC⟩ := hc
  have hE : ∀ v : VsV D i D.what₂.LL, c0 (CoefExt.up D.what₂.embLL (lamV D i) v) = c0L i v := by
    intro v
    obtain ⟨w, hw', h⟩ := hC v
    rw [show CoefExt.up D.what₂.embLL (lamV D i) v = w from Subtype.ext hw'.symm]
    exact h
  obtain ⟨h1, h2, h3⟩ := hT'.mapL i

  have hli : ∀ (m : ℕ) (b : Fin m → VsV D i ℂ), LinearIndependent ℂ b → LinearIndependent ℂ fun j => c0 (b j) :=
    fun m b hb => CoefExt.linearIndependent (W := (R.cV i).W) (c' := c0) hE h2 b hb
  have hinj : Function.Injective c0 := by
    classical
    let B := (bVV ℂ (lamV D i)).reindex (Fintype.equivFin _)
    refine injective_of_basis (lamV D i) B c0 ?_
    exact hli _ _ B.linearIndependent
  refine ⟨?_, ?_, ?_, fun m b hb => hli m _ (up_linearIndependent _ _ b hb), hinj⟩
  ·
    have hn := GlobalTheory.StdFrame.neg_eq_false_of_vStd D i hstd
    have hg : (D.sp.V ((i : ℕ) + 1)).gram = 1 := hstd.1
    let v : VsV D i D.what₂.LL := ⟨Formalism.L2.DIV.ten fun τ => Formalism.BasicNotions.extremal D.what₂.LL _ (lamV D i τ),
      GlobalTheory.Proof.TensorMapDescent.ten_mem _ _ fun τ => Formalism.GradedWeylDivisibility.hwMem _ _ _ le_rfl _ (Formalism.L2.DIV.natW_antitone _)⟩
    have hv : CoefExt.up (inC T.Q.c) (lamV D i) hw = CoefExt.up D.what₂.embLL (lamV D i) v := by
      apply Subtype.ext
      show MvPolynomial.map (inC T.Q.c) (hw : Pol T.Q.c.F D.what₂.Tau (Vc D i).rank) =
        MvPolynomial.map D.what₂.embLL (Formalism.L2.DIV.ten _)
      have hw' := hwo
      unfold hwOK at hw'
      rw [hw', GlobalTheory.Proof.TensorMapDescent.map_ten, GlobalTheory.Proof.TensorMapDescent.map_ten]
      congr 1
      funext τ
      rw [Formalism.L2.DIV.map_extremal, Formalism.L2.DIV.map_extremal]
    have hG : (if D.sp.Vneg ((i : ℕ) + 1) then -(D.sp.V ((i : ℕ) + 1)).gram else (D.sp.V ((i : ℕ) + 1)).gram) = 1 := by
      rw [hn, hg]; rfl
    have hi := inner_of_coefTie (hT'.coefL i A.μ0) v v
    rw [hG] at hi
    replace hi := hi.trans ((congrArg D.what₂.embLL (CoefExt.pairVr_extremal (labLL D) v rfl)).trans (map_one _))
    rw [hv, hE]
    have hi' : inner ℂ (c0L i v : (R.cV i).W) (c0L i v : (R.cV i).W) = 1 := hi
    rw [inner_self_eq_norm_sq_to_K] at hi'
    have h4 : ‖(c0L i v : (R.cV i).W)‖ ^ 2 = 1 := by
      have h5 := congrArg norm hi'
      simpa using h5
    exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) two_ne_zero).1 h4
  ·
    intro γ γE hγ v
    let alg := algebraMap T.Q.c.F D.what₂.LL
    have hres : D.what₂.embLL.comp alg = inC T.Q.c := res_embLL T hT.alg hT.laws.pins.2.2.1
    have hup : ∀ w : VsV D i T.Q.c.F, c0 (CoefExt.up (inC T.Q.c) (lamV D i) w) = c0L i (CoefExt.up alg (lamV D i) w) := by
      intro w
      rw [← hE, up_comp, hres]
    have hlab : (fun τ => alg.comp (embF T.Q.c (tauE D τ))) = labLL D := by
      funext τ
      apply RingHom.ext
      intro x
      apply D.what₂.embLL.injective
      have e1 := RingHom.congr_fun (embV_spec (σ' := RingHom.id ℂ) D.what₂.embLL (by rfl) τ) x
      have e2 := RingHom.congr_fun hres (embF T.Q.c (tauE D τ) x)
      exact e2.trans e1.symm
    have hu : IsUnit (γE.val).det := (Matrix.isUnit_iff_isUnit_det γE.val).1 γE.isUnit
    have hγE : Matrix.nonsingInvUnit γE.val hu = γE := Units.ext rfl
    rw [hup, hup, rhoM, dite_eq_left hu, hγE, CoefExt.up_rhoVr, hlab]
    exact h1 γ γE hγ _
  ·
    have hs := CoefExt.span_top (W := (R.cV i).W) (c' := c0) hE h3
    refine top_le_iff.1 (hs ▸ Submodule.span_le.2 ?_)
    rintro _ ⟨w, rfl⟩
    obtain ⟨a, rfl⟩ := CoefExt.exists_coord (inC T.Q.c) (lamV D i) w

    rw [map_sum]
    exact Submodule.sum_mem _ fun j _ => by
      rw [map_smul]
      exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, rfl⟩)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexCoefficientMapCoreFieldProperties =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmVecEqPhaseLetters =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmVecEqPhaseLetters", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.TwistSeries\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefMapNormEquivariantBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OscillatorModelExtensionFirst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PureTensorOInjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PureTensorOMulSource\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RationalPointsGenerate\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlaces\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexCoefficientMapCoreFieldProperties\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LowestWeightVectorsAtRows\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHarmonicCoefficientMapAtWeights\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PureTensorOSmul\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.WeightExponentsEmbeddingsDegree\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.FFVMap\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.SerLetters

theorem coord_mem_fieldRange {ι K J : Type} [Field K] [Fintype J] (σ : K →+* ℂ) (e : J → MvPolynomial ι K)
    (hli : LinearIndependent ℂ fun j => MvPolynomial.map σ (e j)) (a : J → ℂ)
    (hx : ∀ m, AddMonoidAlgebra.coeff (∑ j, a j • MvPolynomial.map σ (e j)) m ∈ σ.fieldRange) (j : J) :
    a j ∈ σ.fieldRange := by
  classical
  by_contra hj
  letI : Algebra K ℂ := σ.toAlgebra
  let p : Submodule K ℂ := LinearMap.range (Algebra.linearMap K ℂ)
  have hp : ∀ z ∈ σ.fieldRange, z ∈ p := fun z hz => by
    obtain ⟨y, rfl⟩ := RingHom.mem_fieldRange.1 hz
    exact ⟨y, rfl⟩
  have hnot : a j ∉ p := fun h => hj (by obtain ⟨y, hy⟩ := h; exact RingHom.mem_fieldRange.2 ⟨y, hy⟩)
  obtain ⟨π, hπ, hπp⟩ := Submodule.exists_dual_map_eq_bot_of_notMem hnot inferInstance
  have hπ0 : ∀ z ∈ p, π z = 0 := fun z hz => by
    have : π z ∈ p.map π := Submodule.mem_map_of_mem hz
    rwa [hπp, Submodule.mem_bot] at this
  have hsum : ∑ k, π (a k) • e k = 0 := by
    ext m
    have h1 := hπ0 _ (hp _ (hx m))

    simp only [MvPolynomial.coeff_sum, MvPolynomial.coeff_smul, MvPolynomial.coeff_map, smul_eq_mul, map_sum] at h1
    simp only [MvPolynomial.coeff_sum, MvPolynomial.coeff_smul, smul_eq_mul, MvPolynomial.coeff_zero]
    change (∑ x, π (a x) * (e x).coeff m) = 0
    rw [← h1]
    refine Finset.sum_congr rfl fun k _ => ?_
    have e1 : a k * σ (AddMonoidAlgebra.coeff (e k) m) = AddMonoidAlgebra.coeff (e k) m • a k := by
      rw [Algebra.smul_def]; exact mul_comm _ _
    rw [e1, map_smul, smul_eq_mul, mul_comm]
  have h2 : ∑ k, σ (π (a k)) • MvPolynomial.map σ (e k) = 0 := by
    have := congrArg (MvPolynomial.map σ) hsum

    simpa [map_sum, MvPolynomial.smul_eq_C_mul, MvPolynomial.map_C] using this
  have h3 := Fintype.linearIndependent_iff.1 hli _ h2 j
  exact hπ ((map_eq_zero σ).1 h3)

end GlobalTheory.SerLetters

section Letters1
open NumberField Matrix Complex MeasureTheory IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj GlobalTheory.CoverRead
open scoped TensorProduct Classical ComplexConjugate
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.SerLetters
open GlobalTheory.AdTh.PhaseMap GlobalTheory.AdTh.PhaseMapFree


set_option maxHeartbeats 1600000 in
theorem io_eq_phase_smul_letters : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec), R.toLevCh.Is A.μ0 → R.IsFam → R.IsModels → R.IsThP → TieIn T R κ v₀ → ∀ i : Fin D.R.m, VStd D i → ∀ u : (∀ ρ, lowT (R.MW i (sg0 D A)) ρ), (∀ ρ, (u ρ : (R.MW i (sg0 D A)).sm ρ) = v₀ i (sg0 D A) ρ) → ∀ c0 : VsV D i ℂ →ₗ[ℂ] (R.cV i).W, GlobalTheory.IndefiniteRowSideFullHecke.TwistSeries.IsCoefMap R i c0 → ∀ lt : LtN (T.Q.Dw ((i : ℕ) + 1)) (Vc D i).rank → FVar D (Wc D i).rank (Vc D i).rank, GlobalTheory.AdTh.PhaseMap.IsLt lt → ∃ ka : ℂ, ‖ka‖ = 1 ∧ ∃ io : VsV D i T.Q.c.F →ₗ[T.Q.c.F] MvPolynomial (LtN (T.Q.Dw ((i : ℕ) + 1)) (Vc D i).rank) T.Q.c.F, (∀ v, io v ∈ Submodule.span T.Q.c.F (HHa (T.Q.Dw ((i : ℕ) + 1)).mult (Vc D i).rank T.Q.c.F ComplexEmbedding.conjugate (InPsi T.Q.H) (fun τ j => wtA (κ i) (τ, j)))) ∧ ∀ f, IsThetaFunO R.ψ (Vc D i) (Wc D i) f → ∀ v : VsV D i T.Q.c.F, pureTensorO R.ψ R.θ (Vc D i) (Wc D i) (fun _ => 1) (cart (R.MW i (sg0 D A))) (R.BV i) (onb (R.MW i (sg0 D A))) f (R.ioP i (PiTensorProduct.tprod ℂ u) (c0 (GlobalTheory.AdTh.CoefExt.up (inC T.Q.c) (lamV D i) v))) = ka • pureTensorO R.ψ R.θ (Vc D i) (Wc D i) (fun _ => 1) (cart (R.MW i (sg0 D A))) (fun _ => 1) (onb (R.MW i (sg0 D A))) f (GlobalTheory.AdTh.PhaseMap.toF T.Q.c lt (io v)) := by
  intro D G _ _ Pl0 T0 A T _ R κ v₀ hL hFam hM hP hT i hstd u hu c0 hc lt hl
  have hθ : IsInfFam R.θ := hM.inf
  have hcV : (R.cV i).Is := hM.cV i
  have hPr := isPair_of_clauses D G Pl0 T0 A _ R hL hM hP i A.μ0 hstd
  have hψ := hPr.weil.std
  obtain ⟨f1, f2, f3, f4, f5⟩ := vec_fock_of_clauses D G Pl0 T0 A _ R hM hP i A.μ0 hstd
  obtain ⟨io, hw, hio⟩ := GlobalTheory.CoefMapRecord.exists_io_record D T.Q hT.laws.pins κ hT.kap i T.Q.c
  obtain ⟨hwok, cga, i1, i2, irng, i3, -, -, i4, -⟩ := hio
  obtain ⟨n1, n2, n3, n4, hc0⟩ := _root_.GlobalTheory.AdTh.CoefC.coefMap_complex_core D G Pl0 T0 A T R κ v₀ hT i hstd c0 hc hw hwok
  obtain ⟨r1, r2, -⟩ := GlobalTheory.RatGen.rational_points_generate D (Vc D i) (R.cV i) (hM.vpos i) hPr.sigV hcV
  obtain ⟨-, -, w1, w2, w3⟩ := GlobalTheory.WeightExponents.weight_exponents D T.Q hT.laws.pins _ (inR i) (κ i)
  have hty : IsTyp D T.Q.H := ⟨w1, w2⟩
  obtain ⟨d1, d2, -⟩ := hT.laws.pins.2.2.2 _ (inR i)
  have hsig : ∀ τ, (Wc D i).sig (tauE D τ) = D.R.sigW ((i : ℕ) + 1) := fun τ => D.sp.W_sigval _ (inR i).1 (inR i).2 _
  obtain ⟨u₀, w₀, hu₀, hw₀, hΔ⟩ : ExtremalVectorPairsToDelta R i (v₀ i (sg0 D A)) :=
    (hT.hv₀ i (sg0 D A)).2 rfl (GlobalTheory.IoExtremal.ioExt D G Pl0 T0 A _ R hL hFam hM hP i)
  obtain rfl : u = u₀ := funext fun ρ => Subtype.ext ((hu ρ).trans (hu₀ ρ).symm)
  clear hu₀
  have hioP := (hP.ioP i A.μ0).1
  have hBV : ∀ τ, (R.BV i τ)ᴴ * R.BV i τ = 1 := fun τ => by
    obtain ⟨ε, hε, h1, -⟩ := hM.BV i τ
    rw [gramAt_one hPr.std, Matrix.mul_one] at h1
    rw [h1, ← Matrix.diagonal_one]
    congr 1
    funext a
    rcases hε a with h | h
    · rw [h.1]; rfl
    · exact absurd a.2 (not_lt.2 h.2)
  have hon : ∀ τ, IsONBasis (gramAt D (Vc D i) τ) 1 1 (Vc D i).rank := fun τ =>
    ⟨fun _ => 1, fun a => Or.inl ⟨rfl, a.2⟩, by simp [gramAt_one hPr.std], by simp⟩
  let PTf := fun f => pureTensorO R.ψ R.θ (Vc D i) (Wc D i) (fun _ => 1) (cart (R.MW i (sg0 D A))) (fun _ => 1)
    (onb (R.MW i (sg0 D A))) f
  let PT := PTf (R.vP i A.μ0)
  have hsub : ∀ f, IsThetaFunO R.ψ (Vc D i) (Wc D i) f → ∀ (U : D.what₂.Tau → Matrix (Fin (Vc D i).rank) (Fin (Vc D i).rank) ℂ),
      (∀ τ, (U τ)ᴴ * U τ = 1) → ∀ P,
      pureTensorO R.ψ R.θ (Vc D i) (Wc D i) (fun _ => 1) (cart (R.MW i (sg0 D A))) U (onb (R.MW i (sg0 D A))) f P =
        PTf f (GlobalTheory.AdTh.PhaseMap.sub (fun τ => ((Wc D i).sig (tauE D τ)).1) U P) := fun f hf U hU P => by
    have h := GlobalTheory.AdTh.SourceBasis.pureTensorO_mul_source D R.ψ R.θ (Vc D i) (Wc D i) hψ hθ (fun _ => 1) U _ _ _ f5
      (fun τ => (trace_parity (f5 τ)).1) (fun τ => by simp) (fun τ => det_ne_zero (hU τ)) f hf P
    simp only [Matrix.one_mul] at h
    exact h
  have hinj : Function.Injective PT :=
    GlobalTheory.FockVecInj.pureTensorO_injective D R.ψ R.θ (Vc D i) (Wc D i) hψ hθ _ _ _ _ _ _ f4 f3 hon f5 hPr.sigV hPr.sigW _ f1 f2
      (thetaVector_ne_zero_of_clauses D G Pl0 T0 A _ R hL hP i)
  obtain ⟨g, hg, hgB⟩ : ∃ g ∈ GinfC (Vc D i), ∀ τ, compAt R.θ τ (Formalism.L2.Theta.mt (Vc D i) g) = R.BV i τ :=
    (GlobalTheory.SmoothForms.RealPts.glue R.θ hθ (Vc D i)).2 (R.BV i) fun τ => by
      show (R.BV i τ)ᴴ * gramAt D (Vc D i) τ * R.BV i τ = gramAt D (Vc D i) τ
      rw [gramAt_one hPr.std, Matrix.mul_one, hBV]
  obtain ⟨χ, hχ, hχg⟩ := om_real hPr f4 f3 f5 f1 f2 hg
  rw [funext hgB] at hχg
  let A₀ : (R.cV i).W →ₗ[ℂ] (WO (Vc D i) (Wc D i) → ℂ) :=
    pureTensorO R.ψ R.θ (Vc D i) (Wc D i) (fun _ => 1) (cart (R.MW i (sg0 D A))) (R.BV i) (onb (R.MW i (sg0 D A)))
      (R.vP i A.μ0) ∘ₗ R.ioP i (PiTensorProduct.tprod ℂ u)
  have hA₀ : ∀ a ∈ GinfC (Vc D i), ∀ w, A₀ ((R.cV i).ρ a w) = R.ωP i A.μ0 (a, 1) (A₀ w) :=
    fun a ha w => (hioP a ha _ w).symm
  have hw₁ : A₀ ((R.cV i).ρ g⁻¹ (χ • w₀)) = PT (RealDat.Delta i) := by
    have h1 : A₀ (χ • w₀) = R.ωP i A.μ0 (g, 1) (PT (RealDat.Delta i)) := by
      rw [map_smul, hχg, ← hΔ]
      rfl
    rw [hA₀ _ (inv_mem hg), h1, ← Module.End.mul_apply, ← map_mul, Prod.mk_mul_mk, inv_mul_cancel, mul_one]
    exact congrArg (fun T : Module.End ℂ _ => T _) (map_one (R.ωP i A.μ0))
  have hn₁ : ‖(R.cV i).ρ g⁻¹ (χ • w₀)‖ = 1 := by
    rw [norm_eq_sqrt_re_inner (𝕜 := ℂ), hcV.2.1, ← norm_eq_sqrt_re_inner, norm_smul, hχ, hw₀, mul_one]
  haveI := hcV.2.2.2.1
  haveI : FiniteDimensional T.Q.c.F (VsV D i T.Q.c.F) := Module.Finite.of_basis (Formalism.L2.DIV.bVV T.Q.c.F (lamV D i))
  let c0' : VsV D i T.Q.c.F →ₛₗ[inC T.Q.c] (R.cV i).W :=
    { toFun := fun v => c0 (GlobalTheory.AdTh.CoefExt.up (inC T.Q.c) (lamV D i) v)
      map_add' := fun v w => by
        rw [← map_add (f := _)]
        congr 1
        exact Subtype.ext (map_add (MvPolynomial.map (inC T.Q.c)) _ _)
      map_smul' := fun a v => by
        rw [← map_smul]
        congr 1
        apply Subtype.ext
        show MvPolynomial.map (inC T.Q.c) (a • (v : Pol T.Q.c.F D.what₂.Tau (Vc D i).rank)) =
          (inC T.Q.c a) • MvPolynomial.map (inC T.Q.c) (v : Pol T.Q.c.F D.what₂.Tau (Vc D i).rank)
        rw [MvPolynomial.smul_eq_C_mul, MvPolynomial.smul_eq_C_mul, map_mul, MvPolynomial.map_C] }
  have n1' : ‖c0' hw‖ = 1 := n1
  have n2' : ∀ (γ : GQ (Vc D i)) (γE : GL (Fin (Vc D i).rank) D.host.E), Bridge.IsRatMat (Vc D i) γ γE → ∀ v,
      c0' (rhoM T.Q.c (fun τ => embF T.Q.c (tauE D τ)) (lamV D i) (γE : Matrix _ _ D.host.E) v) = (R.cV i).ρ γ (c0' v) := n2
  have n3' : Submodule.span ℂ (Set.range c0') = ⊤ := n3
  have hsm : ∀ (a : T.Q.c.F) P, toF T.Q.c lt (a • P) = (a : ℂ) • toF T.Q.c lt P := fun a P => by
    rw [MvPolynomial.smul_eq_C_mul, map_mul, toF_C, MvPolynomial.smul_eq_C_mul]
  set_option synthInstance.maxHeartbeats 200000 in
  obtain ⟨B₀, hB₀⟩ := exists_ext c0' n4
    { toFun := fun v => toF T.Q.c lt (io v)
      map_add' := fun v w => by rw [map_add (f := _), map_add (f := _)]
      map_smul' := fun a v => by rw [map_smul, hsm]; rfl }
  replace hB₀ : ∀ v, B₀ (c0' v) = toF T.Q.c lt (io v) := hB₀
  have hpG : toF T.Q.c lt (io hw) = RealDat.Delta i := by
    rw [i4]
    refine toF_pG T.Q.c hl hty i1 _ _ _ _ _ (fun τ => by rw [hsig, d1]) (fun τ => by rw [hsig, d2]) (fun τ k hk => ?_)
      fun τ k hk => ?_
    · rw [d1] at hk
      exact (w3 τ k).1.trans ((dif_pos hk).trans ((hT.kap i τ).1 ⟨k, hk⟩))
    · rw [d2] at hk
      exact (w3 τ k).2.trans ((dif_pos hk).trans ((hT.kap i τ).2.1 ⟨k, hk⟩))
  have hne : PT (B₀ (c0' hw)) ≠ 0 := fun h => by
    rw [hB₀, map_eq_zero_iff _ hinj, map_eq_zero_iff _ (toF_injective T.Q.c hl hty), map_eq_zero_iff _ i2] at h
    rw [h, map_zero, norm_zero] at n1'
    exact zero_ne_one n1'
  have hwz : A₀ ((R.cV i).ρ g⁻¹ (χ • w₀)) = (PT ∘ₗ B₀) (c0' hw) := by rw [hw₁, LinearMap.comp_apply, hB₀, hpG]
  have hAeq : ∀ γ : GQ (Vc D i), ∃ s : (WO (Vc D i) (Wc D i) → ℂ) →ₗ[ℂ] (WO (Vc D i) (Wc D i) → ℂ),
      ∀ w, A₀ ((R.cV i).ρ γ w) = s (A₀ w) := fun γ => by
    obtain ⟨γE, a, k, h1, h2, h3, h4, h5, h6⟩ := rat_parts hθ hPr.std γ
    have h7 : (R.cV i).ρ γ = (R.cV i).ρ a := by rw [h4, map_mul, hcV.1 k h3, mul_one]
    exact ⟨R.ωP i A.μ0 (a, 1), fun w => by rw [h7, hA₀ a h2]⟩
  have hAi : Function.Injective A₀ := by
    rw [← LinearMap.ker_eq_bot]
    refine (r2 _ fun γ => ?_).resolve_right fun h => hne ?_
    · rintro _ ⟨x, hx, rfl⟩
      obtain ⟨s, hs⟩ := hAeq γ
      have hx' : A₀ x = 0 := hx
      show A₀ ((R.cV i).ρ γ x) = 0
      rw [hs, hx', map_zero]
    · rw [← LinearMap.comp_apply, ← hwz]
      exact (h ▸ Submodule.mem_top : (R.cV i).ρ g⁻¹ (χ • w₀) ∈ LinearMap.ker A₀)
  obtain ⟨a, ha, ha'⟩ := proportional ((R.cV i).ρ.comp (GQ (Vc D i)).subtype) _ r1 (fun γ hγ => hγ) r2 A₀ (PT ∘ₗ B₀)
    (fun γ => by
      obtain ⟨γE, a, k, h1, h2, h3, h4, h5, h6⟩ := rat_parts hθ hPr.std γ
      obtain ⟨x, hx, hxa⟩ := om_real hPr f4 f3 f5 f1 f2 h2
      have hx0 : x ≠ 0 := fun h => by simp [h] at hx
      have h7 : (R.cV i).ρ γ = (R.cV i).ρ a := by rw [h4, map_mul, hcV.1 k h3, mul_one]
      refine ⟨R.ωP i A.μ0 (a, 1), (cga γE.val : ℂ) * x⁻¹, fun w => ?_, fun w => ?_⟩
      · show A₀ ((R.cV i).ρ γ w) = _
        rw [h7, hA₀ a h2]
      · have h8 : (PT ∘ₗ B₀) ∘ₗ (R.cV i).ρ γ =
            ((cga γE.val : ℂ) * x⁻¹) • (R.ωP i A.μ0 (a, 1) ∘ₗ (PT ∘ₗ B₀)) := by
          refine LinearMap.ext_on_range n3' fun v => ?_
          simp only [LinearMap.comp_apply, LinearMap.smul_apply]
          rw [← n2' γ γE h1, hB₀, hB₀, i3 _ h5, hsm, hxa, hsub _ f1 _ (compAt_unitary hθ hPr.std a), smul_smul,
            inv_mul_cancel_right₀ hx0, map_smul,
            toF_gaStar T.Q.c hl hty (fun τ => ((Wc D i).sig (tauE D τ)).1) (fun τ => by rw [hsig, d1]) _ _ h6]
        exact LinearMap.congr_fun h8 w)
    ((R.cV i).ρ g⁻¹ (χ • w₀)) (c0' hw) hwz hne
  have h9 : ∀ x, GlobalTheory.AdTh.PhaseMap.sub (fun τ => ((Wc D i).sig (tauE D τ)).1) (R.BV i) (R.ioP i (PiTensorProduct.tprod ℂ u) x) =
      a • B₀ x := fun x => hinj (by rw [← hsub _ f1 _ hBV, map_smul]; exact ha x)
  have hB₀i : Function.Injective B₀ := fun x y hxy => hAi (by rw [ha, ha, LinearMap.comp_apply, LinearMap.comp_apply, hxy])
  refine ⟨a, ?_, io, fun v => irng ▸ LinearMap.mem_range_self io v, fun f hf v => ?_⟩
  · rw [← n1', ← ha', norm_smul, hn₁, mul_one]
  · rw [hsub f hf _ hBV, h9, map_smul, ← hB₀ v]
    rfl

end GlobalTheory.SerLetters
end Letters1

section Letters2
open NumberField IsDedekindDomain
open scoped TensorProduct
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links
  Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj GlobalTheory.CoverRead GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.SerLetters

theorem map_mem_HHa {T0 : Type} {r : T0 → ℕ} {n : ℕ} {k K : Type} [Field k] [CharZero k] [Field K] (φ : k →+* K)
    {cc : T0 → T0} {isX : T0 → Prop} {a : T0 → ℕ → ℕ} {P : MvPolynomial (Letter T0 r n) k} (h : P ∈ HHa r n k cc isX a) :
    MvPolynomial.map φ P ∈ HHa r n K cc isX a := by
  haveI : Infinite k := Infinite.of_injective (fun m : ℕ => (m : k)) Nat.cast_injective
  exact ⟨ReciprocityTheory.ChartRestriction.G.PullbackSections.harmK_map φ h.1, ReciprocityTheory.ChartRestriction.G.PullbackSections.rowInv_map φ h.2.1, ReciprocityTheory.ChartRestriction.G.PullbackSections.rowDeg_map φ h.2.2⟩

end GlobalTheory.SerLetters
end Letters2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmVecEqPhaseLetters =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicMapExtremalVectorEqPhaseSmulLetters =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicMapExtremalVectorEqPhaseSmulLetters", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.TwistSeries\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmVecEqPhaseLetters\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsHomogeneousOfRowDeg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefMapNormEquivariantBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OscillatorModelExtensionFirst\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

noncomputable section
namespace GlobalTheory.SerIntLetters
open GlobalTheory.AdTh.PhaseMap GlobalTheory.SerLetters



theorem io_eq_phase_smul_harmLetters : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : Formalism.L2.DIV.FamIn D.what₂.LL G Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (F : Face D A) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec), LawsJ T → R.toLevCh.Is A.μ0 → R.IsGrp F → R.IsFam → R.IsModels → R.IsThP → TieIn T R κ v₀ → ∀ (i : Fin D.R.m), VStd D i → ∀ (u : ∀ ρ, lowT (R.MW i (sg0 D A)) ρ), (∀ ρ, (u ρ : (R.MW i (sg0 D A)).sm ρ) = v₀ i (sg0 D A) ρ) → ∀ c0 : VsV D i ℂ →ₗ[ℂ] (R.cV i).W, GlobalTheory.IndefiniteRowSideFullHecke.TwistSeries.IsCoefMap R i c0 → ∀ lt : LtN (T.Q.Dw ((i : ℕ) + 1)) (Vc D i).rank ≃ FVar D (Wc D i).rank (Vc D i).rank, IsLetters (T.Q.Dw ((i : ℕ) + 1)) lt → ∃ ka : ℂ, ‖ka‖ = 1 ∧ ∃ J : VsV D i ℂ →ₗ[ℂ] MvPolynomial (LtN (T.Q.Dw ((i : ℕ) + 1)) (Vc D i).rank) ℂ, (∀ v, J v ∈ HHa (T.Q.Dw ((i : ℕ) + 1)).mult (Vc D i).rank ℂ ComplexEmbedding.conjugate (InPsi T.Q.H) (fun τ j => wtA (κ i) (τ, j))) ∧ (∀ k : Subfield ℂ, (∀ x ∈ T.Q.c.F, x ∈ k) → ∀ v : VsV D i ℂ, (∀ m, AddMonoidAlgebra.coeff (v : Formalism.L2.DIV.Pol ℂ D.what₂.Tau (Vc D i).rank) m ∈ k) → ∀ mo, (J v).coeff mo ∈ k) ∧ ∀ f, IsThetaFunO R.ψ (Vc D i) (Wc D i) f → ∀ v, pureTensorO R.ψ R.θ (Vc D i) (Wc D i) (fun _ => 1) (cart (R.MW i (sg0 D A))) (R.BV i) (onb (R.MW i (sg0 D A))) f (R.ioP i (PiTensorProduct.tprod ℂ u) (c0 v)) = ka • stdF R.ψ R.θ (Vc D i) (Wc D i) (cart (R.MW i (sg0 D A))) (onb (R.MW i (sg0 D A))) f (MvPolynomial.rename lt (J v)) := by
  intro D G _ _ Pl0 T0 A T _ R F κ v₀ hLaws hL hGrp hFam hMod hThP hTie i hstd u hu c0 hc lt hlt
  obtain ⟨ka, hka, io, hio, hJ⟩ := io_eq_phase_smul_letters D G Pl0 T0 A T R κ v₀ hL hFam hMod hThP hTie i hstd u hu c0 hc
    (⇑lt) (fun ℓ => hlt ℓ)
  let b : Formalism.L2.DIV.VVIdx (lamV D i) → VsV D i ℂ := fun j =>
    GlobalTheory.AdTh.CoefExt.up (inC T.Q.c) (lamV D i) (Formalism.L2.DIV.bVV T.Q.c.F (lamV D i) j)
  have hsp : ⊤ ≤ Submodule.span ℂ (Set.range b) := fun x _ => by
    obtain ⟨a, rfl⟩ := GlobalTheory.AdTh.CoefExt.exists_coord (inC T.Q.c) (lamV D i) x
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)
  have hli : LinearIndependent ℂ b := by
    refine linearIndependent_of_top_le_span_of_card_eq_finrank hsp ?_
    rw [Module.finrank_eq_card_basis (Formalism.L2.DIV.bVV ℂ (lamV D i))]
  let e : Formalism.L2.DIV.VVIdx (lamV D i) → MvPolynomial (LtN (T.Q.Dw ((i : ℕ) + 1)) (Vc D i).rank) ℂ := fun j =>
    MvPolynomial.map (inC T.Q.c) (io (Formalism.L2.DIV.bVV T.Q.c.F (lamV D i) j))
  let J : VsV D i ℂ →ₗ[ℂ] MvPolynomial (LtN (T.Q.Dw ((i : ℕ) + 1)) (Vc D i).rank) ℂ := (Module.Basis.mk hli hsp).constr ℂ e
  have hJv : ∀ a : Formalism.L2.DIV.VVIdx (lamV D i) → ℂ, J (∑ j, a j • b j) = ∑ j, a j • e j := fun a => by

    simp only [map_sum, map_smul, J]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [show b j = Module.Basis.mk hli hsp j from (Module.Basis.mk_apply hli hsp j).symm, Module.Basis.constr_basis]
  refine ⟨ka, hka, J, fun v => ?_, fun k hk v hv mo => ?_, fun f hf v => ?_⟩
  · obtain ⟨a, rfl⟩ := GlobalTheory.AdTh.CoefExt.exists_coord (inC T.Q.c) (lamV D i) v
    rw [hJv]
    refine GlobalTheory.PtId.mem_HHa_of_span _ _ _ _ _ _ (Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ?_))
    exact GlobalTheory.SerLetters.map_mem_HHa (inC T.Q.c) (GlobalTheory.PtId.mem_HHa_of_span _ _ _ _ _ _ (hio _))
  · obtain ⟨a, rfl⟩ := GlobalTheory.AdTh.CoefExt.exists_coord (inC T.Q.c) (lamV D i) v
    have hF : ∀ x : T.Q.c.F, inC T.Q.c x ∈ k := fun x => hk _ (by rw [show inC T.Q.c x = (x : ℂ) from rfl]; exact x.2)
    let φ : T.Q.c.F →+* k := (inC T.Q.c).codRestrict k hF
    let eK : Formalism.L2.DIV.VVIdx (lamV D i) → Formalism.L2.DIV.Pol k D.what₂.Tau (Vc D i).rank := fun j =>
      MvPolynomial.map φ (Formalism.L2.DIV.bVV T.Q.c.F (lamV D i) j : Formalism.L2.DIV.Pol T.Q.c.F D.what₂.Tau (Vc D i).rank)
    have hmap : ∀ j, MvPolynomial.map k.subtype (eK j) = (b j : Formalism.L2.DIV.Pol ℂ D.what₂.Tau (Vc D i).rank) := fun j => by
      show MvPolynomial.map k.subtype (MvPolynomial.map φ _) = MvPolynomial.map (inC T.Q.c) _
      rw [MvPolynomial.map_map]
      rfl
    have hli' : LinearIndependent ℂ fun j => MvPolynomial.map k.subtype (eK j) := by
      have h2 := hli.map' (Submodule.subtype _) (Submodule.ker_subtype _)
      have e2 : (fun j => MvPolynomial.map k.subtype (eK j)) = (Submodule.subtype _) ∘ b := funext hmap
      rw [e2]
      exact h2
    have hsum : (∑ j, a j • MvPolynomial.map k.subtype (eK j)) =
        ((∑ j, a j • b j : VsV D i ℂ) : Formalism.L2.DIV.Pol ℂ D.what₂.Tau (Vc D i).rank) := by
      rw [Submodule.coe_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [Submodule.coe_smul, hmap]
    have hcoef : ∀ m, AddMonoidAlgebra.coeff (∑ j, a j • MvPolynomial.map k.subtype (eK j)) m ∈ k.subtype.fieldRange := fun m => by
      rw [hsum]
      exact RingHom.mem_fieldRange.2 ⟨⟨_, hv m⟩, rfl⟩
    have ha : ∀ j, a j ∈ k := fun j => by
      obtain ⟨y, hy⟩ := RingHom.mem_fieldRange.1 (coord_mem_fieldRange k.subtype eK hli' a hcoef j)
      rw [← hy]
      exact y.2
    rw [hJv, MvPolynomial.coeff_sum]
    refine Subfield.sum_mem _ fun j _ => ?_
    rw [MvPolynomial.coeff_smul, smul_eq_mul]
    exact Subfield.mul_mem _ (ha j) (by rw [MvPolynomial.coeff_map]; exact hF _)
  · obtain ⟨a, rfl⟩ := GlobalTheory.AdTh.CoefExt.exists_coord (inC T.Q.c) (lamV D i) v
    rw [hJv]

    simp only [map_sum, map_smul]
    rw [Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [hJ f hf, GlobalTheory.AdTh.PhaseMap.toF_apply, smul_comm]

end GlobalTheory.SerIntLetters
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicMapExtremalVectorEqPhaseSmulLetters =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicMapExtremalVectorEqPhaseSmulLettersStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicMapExtremalVectorEqPhaseSmulLettersStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.TwistSeries\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicMapExtremalVectorEqPhaseSmulLetters\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicMapExtremalVectorEqPhaseSmulLettersStatement =====
