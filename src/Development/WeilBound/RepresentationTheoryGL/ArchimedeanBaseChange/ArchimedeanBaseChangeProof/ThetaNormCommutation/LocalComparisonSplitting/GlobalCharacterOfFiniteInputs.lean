module

public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralNonnegNormaliserEq
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.IsTransl
public import Mathlib.LinearAlgebra.Lagrange
public import Mathlib.MeasureTheory.Integral.Pi
public import ReciprocityTheory.ReductiveGroups.SymplecticTraces.WeylCharacters.AltBranchStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceDualWeylModuleInvRationalPointEqConjCharAt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsLocallyConstantOfRightInv
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapPFinThetaGL
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
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinGLMemOfPow
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.PicardGroup
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup
import ReciprocityTheory.ReductiveGroups.SymplecticTraces.WeylCharacters.AntitoneOfMemInterl

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousCoordinate, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfRightInvariant, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CountIsInvInvariant, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqSign, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEigenbasis, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsScalarOfCentral, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HaarSplit, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsCompactOfBounded, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsRegEllIffMemEll, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemRatCentTwConj, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NontrivialFiniteAdeles, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormaliserUnconj, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrbitPreimageEq, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableGL, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableUnits, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwConjugateEquivalence, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfHolds, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PTermOf, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PWeylAt, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfFiniteInputs

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousCoordinate =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousCoordinate", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinGLMemOfPow\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix
open GlobalTheory.CuspRep PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8

namespace GlobalTheory.CompanionTheory.CompIsoProof

theorem continuous_glMap {R S : Type} [CommRing R] [CommRing S] [TopologicalSpace R] [TopologicalSpace S]
    (f : R →+* S) (hf : Continuous f) (a : ℕ) :
    Continuous (GeneralLinearGroup.map f : GL (Fin a) R →* GL (Fin a) S) :=
  Continuous.units_map _ (continuous_id.matrix_map hf)

theorem continuous_cornerGL {R S : Type} [CommRing R] [CommRing S] [TopologicalSpace R] [TopologicalSpace S]
    [IsTopologicalRing S] (s : R →ₙ+* S) (hs : Continuous s) (a : ℕ) :
    Continuous (cornerGL a s) :=
  Continuous.units_map _ (continuous_const.add (continuous_id.matrix_map hs))

variable {E : Type} [Field E] {a : ℕ}

def glOf (y : InfinitePlace E → GL (Fin a) ℂ) : GL (Fin a) (Cinf E) where
  val := Matrix.of fun i j v => (y v).val i j
  inv := Matrix.of fun i j v => (y v).inv i j
  val_inv := by
    ext i j v
    have h := congrFun (congrFun (y v).val_inv i) j
    rw [Matrix.mul_apply, Matrix.one_apply] at h
    have e : (if i = j then (1 : Cinf E) else 0) v = if i = j then 1 else 0 := by split_ifs <;> rfl
    rw [Matrix.mul_apply, Finset.sum_apply, Matrix.one_apply, e]
    exact h
  inv_val := by
    ext i j v
    have h := congrFun (congrFun (y v).inv_val i) j
    rw [Matrix.mul_apply, Matrix.one_apply] at h
    have e : (if i = j then (1 : Cinf E) else 0) v = if i = j then 1 else 0 := by split_ifs <;> rfl
    rw [Matrix.mul_apply, Finset.sum_apply, Matrix.one_apply, e]
    exact h

theorem map_eval_glOf (y : InfinitePlace E → GL (Fin a) ℂ) (v : InfinitePlace E) :
    GeneralLinearGroup.map (Pi.evalRingHom (fun _ : InfinitePlace E => ℂ) v) (glOf y) = y v := by
  ext i j
  rfl

theorem continuous_glOf : Continuous (glOf : (InfinitePlace E → GL (Fin a) ℂ) → GL (Fin a) (Cinf E)) := by
  have h2 : Continuous fun x : GL (Fin a) ℂ => ((x⁻¹ : GL (Fin a) ℂ) : Matrix (Fin a) (Fin a) ℂ) :=
    (Units.continuous_iff.1 (continuous_id (X := GL (Fin a) ℂ))).2
  refine Units.continuous_iff.2 ⟨continuous_matrix fun i j => continuous_pi fun v => ?_,
    continuous_matrix fun i j => continuous_pi fun v => ?_⟩
  · exact (Units.continuous_val.matrix_elem i j).comp (continuous_apply v)
  · exact (h2.matrix_elem i j).comp (continuous_apply v)

variable [NumberField E]

theorem continuous_sFin : Continuous (sFin E) :=
  (continuous_const.prodMk continuous_id : Continuous fun x : Af E => ((0, x) : InfiniteAdeleRing E × Af E))

variable [_root_.NumberField.IsTotallyComplex E]

theorem continuous_sInf : Continuous (sInf E) :=
  ((continuous_infEq E).prodMk continuous_const : Continuous fun x : Cinf E => ((infEq E x, 0) : InfiniteAdeleRing E × Af E))

theorem continuous_coordinate (v : InfinitePlace E) : Continuous (cV v : Ad E → ℂ) :=
  (continuous_apply v).comp _root_.GlobalTheory.CuspRep.RankOne.continuous_pInf

theorem map_cV (v : InfinitePlace E) (g : GA E a) :
    GeneralLinearGroup.map (cV v) g =
      GeneralLinearGroup.map (Pi.evalRingHom (fun _ : InfinitePlace E => ℂ) v) (GeneralLinearGroup.map (pInf E) g) := by
  ext i j
  rfl

def parts (g : GA E a) : (InfinitePlace E → GL (Fin a) ℂ) × GL (Fin a) (Af E) :=
  (fun v => GeneralLinearGroup.map (cV v) g, GeneralLinearGroup.map (pFin E) g)

def glue (p : (InfinitePlace E → GL (Fin a) ℂ) × GL (Fin a) (Af E)) : GA E a :=
  infGL E a (glOf p.1) * finGL E a p.2

theorem glue_parts (g : GA E a) : glue (parts g) = g := by
  have h : glOf (fun v => GeneralLinearGroup.map (cV v) g) = GeneralLinearGroup.map (pInf E) g := by
    ext i j v
    rfl
  rw [glue, parts]
  simp only [h]
  exact infGL_mul_finGL g

theorem parts_glue (p : (InfinitePlace E → GL (Fin a) ℂ) × GL (Fin a) (Af E)) : parts (glue p) = p := by
  refine Prod.ext (funext fun v => ?_) ?_
  · change GeneralLinearGroup.map (cV v) (glue p) = p.1 v
    rw [map_cV, glue, map_mul, pInf_infGL, pInf_finGL, mul_one, map_eval_glOf]
  · change GeneralLinearGroup.map (pFin E) (glue p) = p.2
    rw [glue, map_mul, pFin_infGL, pFin_finGL, one_mul]

theorem continuous_parts : Continuous (parts : GA E a → _) :=
  (continuous_pi fun v => continuous_glMap (cV v) (continuous_coordinate v) a).prodMk
    (continuous_glMap (pFin E) continuous_snd a)

theorem continuous_glue : Continuous (glue : _ → GA E a) :=
  ((continuous_cornerGL (sInf E) continuous_sInf a).comp (continuous_glOf.comp continuous_fst)).mul
    ((continuous_cornerGL (sFin E) continuous_sFin a).comp continuous_snd)

theorem compIso : CompIso := by
  intro E _ _ _ a b
  refine ⟨{ toFun := comps
            invFun := fun p => (glue (fun v => (p.1 v).1, p.2.1), glue (fun v => (p.1 v).2, p.2.2))
            left_inv := fun x => Prod.ext (glue_parts x.1) (glue_parts x.2)
            right_inv := fun p => ?_
            map_mul' := fun x y => ?_
            continuous_toFun := ?_
            continuous_invFun := ?_ }, fun _ => rfl⟩
  · have h1 := fun v => congrFun (congrArg Prod.fst (parts_glue (a := a) (E := E) (fun v => (p.1 v).1, p.2.1))) v
    have h2 := fun v => congrFun (congrArg Prod.fst (parts_glue (a := b) (E := E) (fun v => (p.1 v).2, p.2.2))) v
    have h3 := congrArg Prod.snd (parts_glue (a := a) (E := E) (fun v => (p.1 v).1, p.2.1))
    have h4 := congrArg Prod.snd (parts_glue (a := b) (E := E) (fun v => (p.1 v).2, p.2.2))
    exact Prod.ext (funext fun v => Prod.ext (h1 v) (h2 v)) (Prod.ext h3 h4)
  · refine Prod.ext (funext fun v => Prod.ext ?_ ?_) (Prod.ext ?_ ?_) <;> exact map_mul _ _ _
  · have p1 : Continuous fun x : GA E a × GA E b => parts x.1 := continuous_parts.comp continuous_fst
    have p2 : Continuous fun x : GA E a × GA E b => parts x.2 := continuous_parts.comp continuous_snd
    exact (continuous_pi fun v => ((continuous_apply v).comp p1.fst).prodMk ((continuous_apply v).comp p2.fst)).prodMk
      (p1.snd.prodMk p2.snd)
  · have q1 : Continuous fun p : Gi E a b × Gf E a b => ((fun v => (p.1 v).1, p.2.1) :
        (InfinitePlace E → GL (Fin a) ℂ) × GL (Fin a) (Af E)) :=
      (continuous_pi fun v => ((continuous_apply v).comp continuous_fst).fst).prodMk continuous_snd.fst
    have q2 : Continuous fun p : Gi E a b × Gf E a b => ((fun v => (p.1 v).2, p.2.2) :
        (InfinitePlace E → GL (Fin b) ℂ) × GL (Fin b) (Af E)) :=
      (continuous_pi fun v => ((continuous_apply v).comp continuous_fst).snd).prodMk continuous_snd.snd
    exact (continuous_glue.comp q1).prodMk (continuous_glue.comp q2)

end GlobalTheory.CompanionTheory.CompIsoProof

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousCoordinate =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfRightInvariant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfRightInvariant", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory Polynomial Filter
open GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host
open GlobalTheory.BCT
open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8
open scoped Classical

namespace GlobalTheory.CompanionTheory.AdelCont

open PositivityTheory.Rg.Tf.Loc (twConj)

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {a b : ℕ}

theorem orbFn_mul_right (S : Set (Pl E)) (φ₁ φ₂ : ∀ w : Pl E, GLw a w × GLw b w → ℂ)
    (δ₁ : GL (Fin a) E) (δ₂ : GL (Fin b) E) (U : Subgroup (Gf E a b))
    (hU : ∀ u ∈ U, ∀ y, finFn S φ₁ φ₂ (u⁻¹ * y * thP E a b u) = finFn S φ₁ φ₂ y)
    (x u : Gf E a b) (hu : u ∈ U) : orbFn S φ₁ φ₂ δ₁ δ₂ (x * u) = orbFn S φ₁ φ₂ δ₁ δ₂ x := by
  unfold orbFn
  rw [← hU u hu (x⁻¹ * (ratF E a δ₁, ratF E b δ₂) * thP E a b x), map_mul]
  congr 1
  group

theorem continuous_of_right_invariant {G X : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    [TopologicalSpace X] (f : G → X) (U : Subgroup G) (hUo : IsOpen (U : Set G))
    (hf : ∀ x, ∀ u ∈ U, f (x * u) = f x) : Continuous f := by
  have : IsLocallyConstant f := by
    rw [IsLocallyConstant.iff_eventually_eq]
    intro x
    have hmem : (x⁻¹ * ·) ⁻¹' (U : Set G) ∈ nhds x := by
      apply (continuous_const.mul continuous_id).continuousAt.preimage_mem_nhds
      apply hUo.mem_nhds
      simp [U.one_mem]
    filter_upwards [hmem] with y hy
    have := hf x (x⁻¹ * y) hy
    simpa using this
  exact this.continuous

theorem continuous_twConj {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    (θ : Monoid.End G) (hθ : Continuous θ) (δ : G) : Continuous fun g : G => twConj θ g δ := by
  unfold twConj
  exact (continuous_inv.mul continuous_const).mul hθ

theorem adelContOf : AdelContOf := by
  intro hEq hFin hComp hTopo E _ _ _ hUnr a b S u₁ u₂ h₁ h₂ ψ φ₁ φ₂ hψ t₁ t₂ d₁ d₂
  obtain ⟨e, he⟩ := hComp E a b
  have hc : Continuous (comps : GA E a × GA E b → Gi E a b × Gf E a b) := by
    have : (comps : GA E a × GA E b → Gi E a b × Gf E a b) = e := funext fun x => (he x).symm
    rw [this]; exact e.continuous
  have hθa : Continuous (thetaR (starRingEnd ℂ) a) := (hTopo E a).2.2.2.2.2
  have hθb : Continuous (thetaR (starRingEnd ℂ) b) := (hTopo E b).2.2.2.2.2
  obtain ⟨U, hUo, hU⟩ := hFin E hUnr a b S φ₁ φ₂ t₁ t₂
  have hfin : Continuous (orbFn S φ₁ φ₂ (d₁ * u₁⁻¹) (d₂ * u₂⁻¹)) :=
    continuous_of_right_invariant _ U hUo fun x u hu => orbFn_mul_right S φ₁ φ₂ _ _ U hU x u hu
  have hrw : (fun x : GA E a × GA E b =>
      adel S u₁ u₂ ψ φ₁ φ₂ (twConj (thetaA E a) x.1 (ratGL E a d₁), twConj (thetaA E b) x.2 (ratGL E b d₂))) =
      fun x => (∏ v, ψ v (twConj (thetaR (starRingEnd ℂ) a) ((comps x).1 v).1 (GeneralLinearGroup.map v.embedding d₁),
        twConj (thetaR (starRingEnd ℂ) b) ((comps x).1 v).2 (GeneralLinearGroup.map v.embedding d₂))) *
      orbFn S φ₁ φ₂ (d₁ * u₁⁻¹) (d₂ * u₂⁻¹) (comps x).2 :=
    funext fun x => hEq E a b S u₁ u₂ h₁ h₂ ψ φ₁ φ₂ d₁ d₂ x
  rw [hrw]
  refine Continuous.mul (continuous_finsetProd _ fun v _ => (hψ v).comp ?_) (hfin.comp (continuous_snd.comp hc))
  have hv : Continuous fun x : GA E a × GA E b => (comps x).1 v :=
    (continuous_apply v).comp (continuous_fst.comp hc)
  exact ((continuous_twConj _ hθa _).comp (continuous_fst.comp hv)).prodMk
    ((continuous_twConj _ hθb _).comp (continuous_snd.comp hv))

end GlobalTheory.CompanionTheory.AdelCont

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfRightInvariant =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CountIsInvInvariant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CountIsInvInvariant", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralNonnegNormaliserEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.QuotNorm

theorem count_isInvInvariant {G : Type*} [Group G] [MeasurableSpace G] [MeasurableInv G]
    [MeasurableSingletonClass G] (H : Subgroup G) : (Measure.count : Measure H).IsInvInvariant := by
  have hinv : MeasurableInv H := ⟨(measurable_subtype_coe.inv).subtype_mk⟩
  refine ⟨?_⟩
  ext s hs
  rw [Measure.inv_apply, Measure.count_apply hs, Measure.count_apply hs.inv, ← Set.image_inv_eq_inv]
  exact congrArg ((↑) : ℕ∞ → ℝ≥0∞) (inv_injective.encard_image s)

theorem qIndep : PositivityTheory.Rg.BcB.G8.QIndep := by
  intro G _ _ _ _ _ μ _ _ H _ F ρ hF hFH hρ
  have := count_isInvInvariant H
  exact quotIntegral_eq (μG := μ) hF hFH hρ

end GlobalTheory.CompanionTheory.QuotNorm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CountIsInvInvariant =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqSign =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqSign", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.IsTransl\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix
open GlobalTheory.CuspRep GlobalTheory.BCT
open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8

namespace GlobalTheory.CompanionTheory.LocalThetaTranslation

theorem phi_transpose (n : ℕ) (R : Type) [CommRing R] :
    (GlobalTheory.Tw.Phi n R)ᵀ = ((-1 : R) ^ (n + 1)) • GlobalTheory.Tw.Phi n R := by
  ext i j
  simp only [Matrix.transpose_apply, Matrix.smul_apply, GlobalTheory.Tw.Phi, Matrix.of_apply, smul_eq_mul]
  by_cases h : (i : ℕ) + j + 1 = n
  · have h' : (j : ℕ) + i + 1 = n := by omega
    rw [if_pos h, if_pos h', ← pow_add]
    have e : n + 1 + (i : ℕ) = j + 2 * ((i : ℕ) + 1) := by omega
    rw [e, pow_add, pow_mul]
    simp
  · have h' : ¬ (j : ℕ) + i + 1 = n := by omega
    rw [if_neg h, if_neg h']
    simp

theorem phi_map (n : ℕ) {R : Type} [CommRing R] (c : R →+* R) : (GlobalTheory.Tw.Phi n R).map c = GlobalTheory.Tw.Phi n R := by
  ext i j
  simp only [Matrix.map_apply, GlobalTheory.Tw.Phi, Matrix.of_apply]
  split_ifs <;> simp

theorem phi_mul_self (n : ℕ) (R : Type) [CommRing R] :
    GlobalTheory.Tw.Phi n R * GlobalTheory.Tw.Phi n R = ((-1 : R) ^ (n + 1)) • (1 : Matrix (Fin n) (Fin n) R) := by
  have h := Phi_mul_transpose n R
  rw [phi_transpose, Matrix.mul_smul] at h
  have e : ((-1 : R) ^ (n + 1)) * ((-1 : R) ^ (n + 1)) = 1 := by
    rw [← mul_pow]; simp
  rw [← h, smul_smul, e, one_smul]

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem exists_conj_eq_sign (n : ℕ) : ∃ s : E, s ≠ 0 ∧ conjE E s = (-1 : E) ^ (n + 1) * s := by
  rcases neg_one_pow_eq_or E (n + 1) with h | h
  · exact ⟨1, one_ne_zero, by rw [h, map_one, one_mul]⟩
  · have hx : ∃ x : E, conjE E x ≠ x := by
      by_contra hc
      push Not at hc
      exact IsCMField.complexConj_ne_one E (AlgEquiv.ext hc)
    obtain ⟨x, hx⟩ := hx
    have hcc : conjE E (conjE E x) = x := IsCMField.complexConj_apply_apply E x
    refine ⟨x - conjE E x, sub_ne_zero.2 hx.symm, ?_⟩
    rw [h, map_sub, hcc]
    ring


omit [NumberField E] [IsCMField E] in
theorem scalar_val {n : ℕ} (t : Eˣ) :
    (GeneralLinearGroup.scalar (Fin n) t).val = (t : E) • (1 : Matrix (Fin n) (Fin n) E) := by
  ext i j
  by_cases h : i = j
  · subst h
    simp [GeneralLinearGroup.scalar]
  · simp [GeneralLinearGroup.scalar, h]


omit [NumberField E] [IsCMField E] in
theorem scalar_commute {n : ℕ} (t : Eˣ) (g : GL (Fin n) E) :
    GeneralLinearGroup.scalar (Fin n) t * g = g * GeneralLinearGroup.scalar (Fin n) t := by
  apply Units.ext
  simp only [Units.val_mul, scalar_val]
  rw [Matrix.smul_mul, Matrix.mul_smul, Matrix.one_mul, Matrix.mul_one]

theorem thetaE_phiU (n : ℕ) : (thetaE E n (PhiU n E)).val = GlobalTheory.Tw.Phi n E := by
  change ((((PhiU n E)⁻¹).val).map (conjE E))ᵀ = _
  rw [phiU_inv_val, Matrix.transpose_map, Matrix.transpose_transpose, phi_map]

theorem thetaE_scalar {n : ℕ} (t : Eˣ) :
    (thetaE E n (GeneralLinearGroup.scalar (Fin n) t)).val =
      (conjE E (t : E))⁻¹ • (1 : Matrix (Fin n) (Fin n) E) := by
  change ((((GeneralLinearGroup.scalar (Fin n) t)⁻¹).val).map (conjE E))ᵀ = _
  rw [← map_inv, scalar_val]
  ext i j
  by_cases h : i = j
  · subst h
    simp
  · have h' : j ≠ i := fun e => h e.symm
    simp [h, h']

theorem translEx : TranslEx := by
  intro E _ _ _ n
  obtain ⟨s, hs, hc⟩ := exists_conj_eq_sign (E := E) n
  have hcs : conjE E s ≠ 0 := by
    rw [hc]
    exact mul_ne_zero (pow_ne_zero _ (neg_ne_zero.2 one_ne_zero)) hs
  refine ⟨GeneralLinearGroup.scalar (Fin n) (Units.mk0 s hs) * PhiU n E, ?_, ?_⟩
  · intro g
    have h1 : thE E n g = PhiU n E * thetaE E n g * (PhiU n E)⁻¹ := thetaGL_eq n E _ g
    rw [h1]
    have h2 := scalar_commute (Units.mk0 s hs) (PhiU n E * thetaE E n g * (PhiU n E)⁻¹)
    have h3 : GeneralLinearGroup.scalar (Fin n) (Units.mk0 s hs) * PhiU n E * thetaE E n g *
        (GeneralLinearGroup.scalar (Fin n) (Units.mk0 s hs) * PhiU n E)⁻¹ =
        GeneralLinearGroup.scalar (Fin n) (Units.mk0 s hs) * (PhiU n E * thetaE E n g * (PhiU n E)⁻¹) *
          (GeneralLinearGroup.scalar (Fin n) (Units.mk0 s hs))⁻¹ := by
      group
    rw [h3, h2, mul_inv_cancel_right]
  · apply Units.ext
    rw [map_mul, Units.val_mul, Units.val_mul, Units.val_mul, thetaE_phiU, thetaE_scalar, scalar_val, phiU_val]
    simp only [Units.val_mk0, Units.val_one]
    rw [Matrix.smul_mul, Matrix.one_mul, Matrix.smul_mul, Matrix.smul_mul, Matrix.one_mul, Matrix.mul_smul,
      phi_mul_self, smul_smul, smul_smul, hc]
    have hp : ((-1 : E) ^ (n + 1)) ≠ 0 := pow_ne_zero _ (neg_ne_zero.2 one_ne_zero)
    have : s * (((-1 : E) ^ (n + 1)) * s)⁻¹ * ((-1 : E) ^ (n + 1)) = 1 := by
      field_simp
    rw [this, one_smul]

end GlobalTheory.CompanionTheory.LocalThetaTranslation
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqSign =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEigenbasis =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEigenbasis", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.RingTheory.PicardGroup\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Polynomial
open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8
open PositivityTheory.Rg.Tf.Loc (twConj)

noncomputable section

namespace GlobalTheory.CompanionTheory.EllipticTwist

theorem exists_eigenbasis {n : ℕ} (N : Matrix (Fin n) (Fin n) ℂ) (hs : N.charpoly.Separable) :
    ∃ (h : GL (Fin n) ℂ) (γ : Fin n → ℂ), Function.Injective γ ∧ (∀ i, N.charpoly.IsRoot (γ i)) ∧
      N * h.val = h.val * diagonal γ := by
  have hne : N.charpoly ≠ 0 := (Matrix.charpoly_monic N).ne_zero
  have hcard : N.charpoly.roots.toFinset.card = n := by
    rw [Multiset.toFinset_card_of_nodup (nodup_roots hs), splits_iff_card_roots.1 (IsAlgClosed.splits _),
      charpoly_natDegree_eq_dim, Fintype.card_fin]
  let e := Finset.equivFinOfCardEq hcard
  let γ : Fin n → ℂ := fun i => (e.symm i).1
  have hinj : Function.Injective γ := fun i j hij => e.symm.injective (Subtype.ext hij)
  have hroot : ∀ i, N.charpoly.IsRoot (γ i) := fun i =>
    (mem_roots hne).1 (Multiset.mem_toFinset.1 (e.symm i).2)
  have hev : ∀ i, ∃ v : Fin n → ℂ, v ≠ 0 ∧ (scalar (Fin n) (γ i) - N) *ᵥ v = 0 := fun i =>
    exists_mulVec_eq_zero_iff.2 (by rw [← eval_charpoly]; exact hroot i)
  choose v hv0 hv using hev
  have hNv : ∀ i, N *ᵥ v i = γ i • v i := fun i => by
    have h1 := hv i
    rw [sub_mulVec, sub_eq_zero] at h1
    rw [← h1]
    ext k
    simp [scalar_apply, mulVec_diagonal]
  have hli : LinearIndependent ℂ v :=
    Module.End.eigenvectors_linearIndependent' (Matrix.toLin' N) γ hinj v
      (fun i => Module.End.hasEigenvector_iff.2
        ⟨Module.End.mem_eigenspace_iff.2 (by simpa using hNv i), hv0 i⟩)
  have hu : IsUnit (Matrix.of v)ᵀ := linearIndependent_cols_iff_isUnit.1 hli
  obtain ⟨h, hh⟩ := hu
  refine ⟨h, γ, hinj, hroot, ?_⟩
  have hh' : h.val = (Matrix.of v)ᵀ := hh
  rw [hh']
  ext i j
  have h2 := congrFun (hNv j) i
  rw [mul_diagonal]
  simpa [Matrix.mul_apply, mulVec, dotProduct, mul_comm] using h2

variable {n : ℕ}

theorem theta_val (g : GL (Fin n) ℂ) :
    (thetaR (starRingEnd ℂ) n g).val = (g⁻¹).valᴴ := by
  ext i j
  simp [thetaR_val, conjTranspose_apply]

theorem theta_inv_val (g : GL (Fin n) ℂ) :
    ((thetaR (starRingEnd ℂ) n g)⁻¹).val = g.valᴴ := by
  rw [← map_inv, theta_val, inv_inv]

theorem theta_theta (g : GL (Fin n) ℂ) :
    thetaR (starRingEnd ℂ) n (thetaR (starRingEnd ℂ) n g) = g :=
  Units.ext (by rw [theta_val, theta_inv_val, conjTranspose_conjTranspose])

theorem offDiag_eq_zero (D : Matrix (Fin n) (Fin n) ℂ) (γ : Fin n → ℂ) (hγ : ∀ i, ‖γ i‖ = 1)
    (hinj : Function.Injective γ) (hD : D = diagonal γ * Dᴴ) {i j : Fin n} (hij : i ≠ j) : D i j = 0 := by
  have h2 : Dᴴ = D * diagonal (star γ) := by
    conv_lhs => rw [hD]
    rw [conjTranspose_mul, conjTranspose_conjTranspose, diagonal_conjTranspose]
  have h3 : D i j = γ i * (D i j * star (γ j)) := by
    conv_lhs => rw [hD, h2]
    rw [diagonal_mul, mul_diagonal]
    rfl
  by_contra hne
  have h4 : γ i * star (γ j) = 1 := by
    apply mul_left_cancel₀ hne
    linear_combination -h3
  have h5 : star (γ j) * γ j = 1 := by
    have := Complex.conj_mul' (γ j)
    rw [hγ j] at this
    simpa using this
  apply hij
  apply hinj
  linear_combination -γ i * h5 + γ j * h4

theorem ellDiag : EllDiag := by
  intro n d hd
  obtain ⟨hs, hn⟩ := hd
  obtain ⟨h, γ, hinj, hroot, hN⟩ := exists_eigenbasis _ hs
  have hγ : ∀ i, ‖γ i‖ = 1 := fun i => hn _ (hroot i)
  set θ := thetaR (starRingEnd ℂ) n with hθ
  let d₁ : GL (Fin n) ℂ := twConj θ h d
  have hnorm : (d₁ * θ d₁).val = diagonal γ := by
    have h1 : d₁ * θ d₁ = h⁻¹ * (d * θ d) * h := by
      simp [d₁, twConj, map_mul, map_inv, hθ, theta_theta, mul_assoc]
    rw [h1, Units.val_mul, Units.val_mul, mul_assoc, hN, ← mul_assoc, ← Units.val_mul]
    simp
  have hD : d₁.val = diagonal γ * d₁.valᴴ := by
    rw [← hnorm, ← theta_inv_val, ← Units.val_mul]
    simp [hθ]
  let b : Fin n → ℂ := fun i => d₁.val i i
  have hdiag : d₁.val = diagonal b := by
    ext i j
    by_cases hij : i = j
    · subst hij; simp [b]
    · rw [offDiag_eq_zero _ γ hγ hinj hD hij, diagonal_apply_ne _ hij]
  have hb0 : ∀ i, b i ≠ 0 := by
    intro i hi
    have h0 : d₁.val.det = 0 := by
      rw [hdiag, det_diagonal]
      exact Finset.prod_eq_zero (Finset.mem_univ i) hi
    have h1 := (Matrix.isUnit_iff_isUnit_det _).1 d₁.isUnit
    rw [h0] at h1
    exact not_isUnit_zero h1
  have hbγ : ∀ i, b i = γ i * (starRingEnd ℂ) (b i) := by
    intro i
    have h1 := congrFun (congrFun hD i) i
    rw [diagonal_mul] at h1
    simpa [conjTranspose_apply] using h1
  let s : Fin n → ℂ := fun i => ((Real.sqrt ‖b i‖ : ℝ) : ℂ)
  have hnb : ∀ i, 0 < ‖b i‖ := fun i => norm_pos_iff.2 (hb0 i)
  have hs0 : ∀ i, s i ≠ 0 := fun i =>
    Complex.ofReal_ne_zero.2 (Real.sqrt_pos.2 (hnb i)).ne'
  have hss : ∀ i, s i * s i = (‖b i‖ : ℂ) := fun i => by
    simp only [s]
    rw [← Complex.ofReal_mul, Real.mul_self_sqrt (hnb i).le]
  let t : GL (Fin n) ℂ := ⟨diagonal s, diagonal fun i => (s i)⁻¹,
    by rw [diagonal_mul_diagonal, ← diagonal_one]; congr 1; ext i; exact mul_inv_cancel₀ (hs0 i),
    by rw [diagonal_mul_diagonal, ← diagonal_one]; congr 1; ext i; exact inv_mul_cancel₀ (hs0 i)⟩
  have htinv : (t⁻¹).val = diagonal fun i => (s i)⁻¹ := rfl
  have htθ : (θ t).val = diagonal fun i => (s i)⁻¹ := by
    rw [hθ, theta_val, htinv, diagonal_conjTranspose]
    congr 1
    ext i
    simp [s]
  let z : Fin n → ℂ := fun i => b i / (‖b i‖ : ℂ)
  have hz2 : ∀ i, z i ^ 2 = γ i := by
    intro i
    have hne : (‖b i‖ : ℂ) ≠ 0 := Complex.ofReal_ne_zero.2 (hnb i).ne'
    have h1 := Complex.mul_conj' (b i)
    simp only [z]
    rw [div_pow, div_eq_iff (pow_ne_zero 2 hne), ← h1]
    conv_lhs => rw [sq]; enter [1]; rw [hbγ i]
    ring
  refine ⟨(h * t)⁻¹, twConj θ t d₁, z, ?_, ?_, ?_, ?_⟩
  · change (t⁻¹ * d₁ * θ t).val = _
    rw [Units.val_mul, Units.val_mul, htinv, hdiag, htθ, diagonal_mul_diagonal, diagonal_mul_diagonal]
    congr 1
    ext i
    have := hss i
    have h0 := hs0 i
    simp only [z]
    rw [← this]
    field_simp
  · intro i
    simp only [z]
    rw [norm_div, Complex.norm_real, norm_norm, div_self (hnb i).ne']
  · intro i j hij
    apply hinj
    have := hz2 i
    have := hz2 j
    simp only at hij
    rw [← hz2 i, ← hz2 j, hij]
  · simp [twConj, d₁, map_mul, map_inv, mul_assoc]

end GlobalTheory.CompanionTheory.EllipticTwist

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEigenbasis =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsScalarOfCentral =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsScalarOfCentral", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix
open GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host
open GlobalTheory.BCT
open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8

namespace GlobalTheory.CompanionTheory.TranslAdele

theorem thetaR_thetaR {A : Type} [CommRing A] (σ : A →+* A) (hσ : ∀ x, σ (σ x) = x) (n : ℕ)
    (g : GL (Fin n) A) : thetaR σ n (thetaR σ n g) = g := by
  apply Units.ext
  ext i j
  change σ (σ (g.val i j)) = g.val i j
  exact hσ _

theorem exists_scalar_of_central {K : Type} [Field K] {n : ℕ} (z : GL (Fin n) K)
    (hz : ∀ h : GL (Fin n) K, z * h = h * z) : ∃ c : K, z.val = Matrix.scalar (Fin n) c := by
  have : z.val ∈ Set.range (Matrix.scalar (Fin n) : K →+* Matrix (Fin n) (Fin n) K) := by
    apply Matrix.mem_range_scalar_of_commute_transvectionStruct
    intro t
    have h := hz ⟨t.toMatrix, t.inv.toMatrix, t.mul_inv, t.inv_mul⟩
    have h' := congrArg Units.val h
    exact h'.symm
  obtain ⟨c, hc⟩ := this
  exact ⟨c, hc.symm⟩

theorem Phi_map {R S : Type} [CommRing R] [CommRing S] (f : R →+* S) (n : ℕ) :
    (GlobalTheory.Tw.Phi n R).map f = GlobalTheory.Tw.Phi n S := by
  ext i j
  simp only [Matrix.map_apply, GlobalTheory.Tw.Phi, Matrix.of_apply]
  split_ifs <;> simp

theorem translAd : TranslAd := by
  intro E _ _ _ n u hu g

  have hz : ∀ h : GL (Fin n) E, ((PhiU n E)⁻¹ * u) * h = h * ((PhiU n E)⁻¹ * u) := by
    intro h
    have hinv : thetaE E n (thetaE E n h) = h :=
      thetaR_thetaR (conjE E) (fun x => IsCMField.complexConj_apply_apply E x) n h
    have h1 := hu.1 (thetaE E n h)
    rw [hinv] at h1
    have h2 : thE E n (thetaE E n h) = PhiU n E * h * (PhiU n E)⁻¹ := by
      have := thetaGL_eq n E (IsCMField.complexConj E).toRingEquiv.toRingHom (thetaE E n h)
      rw [show thetaR (IsCMField.complexConj E).toRingEquiv.toRingHom n (thetaE E n h) = h from hinv] at this
      exact this
    rw [h2] at h1
    have h3 : h * (PhiU n E)⁻¹ * u = (PhiU n E)⁻¹ * u * h := by
      have h4 : PhiU n E * h * (PhiU n E)⁻¹ * u = u * h := by rw [h1]; group
      calc h * (PhiU n E)⁻¹ * u = (PhiU n E)⁻¹ * (PhiU n E * h * (PhiU n E)⁻¹ * u) := by group
        _ = (PhiU n E)⁻¹ * u * h := by rw [h4]; group
    rw [← h3, mul_assoc h]
  obtain ⟨c, hc⟩ := exists_scalar_of_central _ hz

  set w : GA E n := ratGL E n ((PhiU n E)⁻¹ * u) with hw
  have hwc : ∀ t : GA E n, w * t = t * w := by
    intro t
    apply Units.ext
    have hval : w.val = Matrix.scalar (Fin n) (algebraMap E (Ad E) c) := by
      have : w.val = (((PhiU n E)⁻¹ * u : GL (Fin n) E).val).map (algebraMap E (Ad E)) := rfl
      rw [this, hc]
      ext i j
      by_cases hij : i = j <;> simp [Matrix.scalar_apply, hij]
    rw [Units.val_mul, Units.val_mul, hval]
    exact Matrix.scalar_commute _ (fun r' => Commute.all _ _) _
  have hP : ratGL E n (PhiU n E) = PhiU n (Ad E) := by
    apply Units.ext
    rw [phiU_val, ← Phi_map (algebraMap E (Ad E)) n, ← phiU_val]
    rfl
  have hr : ratGL E n u = PhiU n (Ad E) * w := by
    rw [hw, map_mul, map_inv, hP, mul_inv_cancel_left]
  rw [thetaGL_eq, hr]
  have h5 : w * thetaA E n g * w⁻¹ = thetaA E n g := by rw [hwc]; group
  calc PhiU n (Ad E) * thetaR (conjAd E) n g * (PhiU n (Ad E))⁻¹
      = PhiU n (Ad E) * (w * thetaA E n g * w⁻¹) * (PhiU n (Ad E))⁻¹ := by rw [h5]
    _ = PhiU n (Ad E) * w * thetaA E n g * (PhiU n (Ad E) * w)⁻¹ := by group

end GlobalTheory.CompanionTheory.TranslAdele

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsScalarOfCentral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HaarSplit =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HaarSplit", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.Rg.BcB.G8

open MeasureTheory

namespace GlobalTheory.CompanionTheory.HaarProd

theorem haarSplit : HaarSplit := by
  intro G A B _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ μ _ α _ e
  have : (μ.map e).IsHaarMeasure := e.isHaarMeasure_map μ
  let β₀ : Measure B := Measure.haar
  have hc := Measure.isMulLeftInvariant_eq_smul (μ.map e) (α.prod β₀)
  have hpos := Measure.haarScalarFactor_pos_of_isHaarMeasure (μ.map e) (α.prod β₀)
  refine ⟨Measure.haarScalarFactor (μ.map e) (α.prod β₀) • β₀, ?_, ?_⟩
  · exact Measure.IsHaarMeasure.nnreal_smul _ hpos.ne'
  · rw [Measure.prod_smul_right]
    exact hc

end GlobalTheory.CompanionTheory.HaarProd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HaarSplit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsCompactOfBounded =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsCompactOfBounded", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\npublic import Mathlib.LinearAlgebra.Lagrange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Polynomial PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8

noncomputable section

namespace GlobalTheory.CompanionTheory.DiagProperProof

local notation "θ" => thetaR (starRingEnd ℂ) _

variable {n : ℕ}

theorem th_val (g : GL (Fin n) ℂ) : (θ g).val = ((g⁻¹ : GL (Fin n) ℂ).val)ᴴ := by
  ext i j
  simp [thetaR_val, Matrix.conjTranspose_apply]

theorem th_inv_val (g : GL (Fin n) ℂ) : ((θ g)⁻¹ : GL (Fin n) ℂ).val = (g.val)ᴴ := by
  rw [← map_inv, th_val, inv_inv]

theorem th_th (g : GL (Fin n) ℂ) : θ (θ g) = g := by
  apply Units.ext
  rw [th_val, th_inv_val, Matrix.conjTranspose_conjTranspose]

theorem th_diag {d : GL (Fin n) ℂ} {z : Fin n → ℂ} (hd : d.val = diagonal z) (hz : ∀ i, ‖z i‖ = 1) :
    θ d = d := by
  have h : d * (θ d)⁻¹ = 1 := by
    apply Units.ext
    rw [Units.val_mul, th_inv_val, hd, Matrix.diagonal_conjTranspose, Matrix.diagonal_mul_diagonal]
    simp only [Units.val_one]
    rw [← Matrix.diagonal_one]
    congr 1
    funext i
    simp [Complex.mul_conj', hz i]
  exact (mul_inv_eq_one.mp h).symm

theorem continuous_th : Continuous (fun g : GL (Fin n) ℂ => θ g) := by
  rw [Units.continuous_iff]
  constructor
  · have : (Units.val ∘ fun g : GL (Fin n) ℂ => θ g) = fun g => ((g⁻¹ : GL (Fin n) ℂ).val)ᴴ := by
      funext g; exact th_val g
    rw [this]
    exact (Units.continuous_coe_inv).matrix_conjTranspose
  · have : (fun g : GL (Fin n) ℂ => ((θ g)⁻¹ : GL (Fin n) ℂ).val) = fun g => (g.val)ᴴ := by
      funext g; exact th_inv_val g
    show Continuous (fun g : GL (Fin n) ℂ => ((θ g)⁻¹ : GL (Fin n) ℂ).val)
    rw [this]
    exact Units.continuous_val.matrix_conjTranspose

theorem aeval_conj (p : GL (Fin n) ℂ) (A : Matrix (Fin n) (Fin n) ℂ) (f : ℂ[X]) :
    aeval (p.val * A * (p⁻¹ : GL (Fin n) ℂ).val) f = p.val * aeval A f * (p⁻¹ : GL (Fin n) ℂ).val := by
  induction f using Polynomial.induction_on' with
  | add f g hf hg => simp only [map_add (f := _), hf, hg, mul_add, add_mul]
  | monomial k a =>
    simp only [aeval_monomial, Units.conj_pow, Algebra.algebraMap_eq_smul_one, smul_mul_assoc, one_mul, mul_smul_comm]

theorem aeval_diag (w : Fin n → ℂ) (f : ℂ[X]) :
    aeval (diagonal w) f = diagonal fun k => f.eval (w k) := by
  induction f using Polynomial.induction_on' with
  | add f g hf hg => simp only [map_add (f := _), hf, hg, eval_add, Matrix.diagonal_add]
  | monomial k a =>
    ext i j
    by_cases h : i = j
    · subst h
      simp [aeval_monomial, Matrix.diagonal_pow, Algebra.algebraMap_eq_smul_one, eval_monomial]
    · simp [aeval_monomial, Matrix.diagonal_pow, Algebra.algebraMap_eq_smul_one, h]

def lag (z : Fin n → ℂ) (i : Fin n) : ℂ[X] := Lagrange.basis Finset.univ (fun k => z k ^ 2) i

def tr (z : Fin n → ℂ) (i : Fin n) (y : GL (Fin n) ℂ) : ℂ :=
  trace (aeval ((y * θ y).val) (lag z i) * y.val)

theorem continuous_tr (z : Fin n → ℂ) (i : Fin n) : Continuous (tr z i) := by
  unfold tr
  have h1 : Continuous fun y : GL (Fin n) ℂ => (y * θ y).val :=
    Units.continuous_val.comp (continuous_id.mul continuous_th)
  exact (((Polynomial.continuous_aeval (lag z i)).comp h1).mul Units.continuous_val).matrix_trace

theorem tr_eq {d : GL (Fin n) ℂ} {z : Fin n → ℂ} (hd : d.val = diagonal z) (hz : ∀ i, ‖z i‖ = 1)
    (hinj : Function.Injective fun i => z i ^ 2) (p : GL (Fin n) ℂ) (i : Fin n) :
    tr z i (p * d * θ p⁻¹) = z i * ((∑ k, ‖p.val k i‖ ^ 2 : ℝ) : ℂ) := by
  have hθd := th_diag hd hz
  have hy2 : (p * d * θ p⁻¹) * θ (p * d * θ p⁻¹) = p * (d * d) * p⁻¹ := by
    simp only [map_mul, th_th, hθd, map_inv]
    group
  have hdd : (d * d).val = diagonal fun k => z k ^ 2 := by
    rw [Units.val_mul, hd, Matrix.diagonal_mul_diagonal]
    congr 1
    funext k
    ring
  have hL : (diagonal fun k => (lag z i).eval (z k ^ 2)) = diagonal (Pi.single i 1) := by
    congr 1
    funext k
    by_cases h : k = i
    · subst h
      simpa [lag] using Lagrange.eval_basis_self (s := Finset.univ) (v := fun k => z k ^ 2)
        (hinj.injOn) (Finset.mem_univ k)
    · rw [Pi.single_eq_of_ne h]
      exact Lagrange.eval_basis_of_ne (s := Finset.univ) (v := fun k => z k ^ 2) (Ne.symm h) (Finset.mem_univ k)
  have hA : aeval ((p * d * θ p⁻¹ * θ (p * d * θ p⁻¹)).val) (lag z i) =
      p.val * diagonal (Pi.single i 1) * (p⁻¹ : GL (Fin n) ℂ).val := by
    rw [hy2, Units.val_mul, Units.val_mul, hdd, aeval_conj, aeval_diag, hL]
  have hyv : (p * d * θ p⁻¹).val = p.val * diagonal z * (p.val)ᴴ := by
    rw [Units.val_mul, Units.val_mul, hd, th_val, inv_inv]
  have hpp : (p⁻¹ : GL (Fin n) ℂ).val * p.val = 1 := by
    rw [← Units.val_mul]; simp
  unfold tr
  rw [hA, hyv]
  have e1 : p.val * diagonal (Pi.single i 1) * (p⁻¹ : GL (Fin n) ℂ).val * (p.val * diagonal z * (p.val)ᴴ) =
      p.val * (diagonal (Pi.single i 1) * diagonal z * (p.val)ᴴ) := by
    calc _ = p.val * diagonal (Pi.single i 1) * ((p⁻¹ : GL (Fin n) ℂ).val * p.val) * diagonal z * (p.val)ᴴ := by
            simp only [Matrix.mul_assoc]
      _ = _ := by rw [hpp]; simp only [Matrix.mul_assoc, Matrix.mul_one]
  rw [e1, Matrix.trace_mul_comm, Matrix.diagonal_mul_diagonal, Matrix.mul_assoc, Matrix.trace]
  simp only [Matrix.diag_apply]
  simp only [Matrix.diagonal_mul]
  rw [Finset.sum_eq_single i (fun j _ hj => by simp [Pi.single_eq_of_ne hj]) (fun h => (h (Finset.mem_univ i)).elim)]
  simp only [Pi.single_eq_same, one_mul, Matrix.mul_apply, Matrix.conjTranspose_apply]
  congr 1
  push_cast
  refine Finset.sum_congr rfl fun k _ => ?_
  simpa using Complex.conj_mul' (p.val k i)

def twy (x d : GL (Fin n) ℂ) : GL (Fin n) ℂ := x⁻¹ * d * θ x

theorem isCompact_of_bounded {S : Set (GL (Fin n) ℂ)} (hS : IsClosed S) (R : ℝ)
    (h : ∀ x ∈ S, ∀ i j, ‖x.val i j‖ ≤ R ∧ ‖(x⁻¹ : GL (Fin n) ℂ).val i j‖ ≤ R) : IsCompact S := by
  have hK : IsCompact {M : Matrix (Fin n) (Fin n) ℂ | ∀ i j, ‖M i j‖ ≤ R} := by
    have : {M : Matrix (Fin n) (Fin n) ℂ | ∀ i j, ‖M i j‖ ≤ R} =
        Set.pi Set.univ fun _ : Fin n => Set.pi Set.univ fun _ : Fin n => Metric.closedBall (0 : ℂ) R := by
      ext M
      exact ⟨fun h i _ j _ => by simpa using h i j,
        fun h i j => by simpa using h i (Set.mem_univ _) j (Set.mem_univ _)⟩
    rw [this]
    exact isCompact_univ_pi fun _ => isCompact_univ_pi fun _ => isCompact_closedBall _ _
  have hemb := Units.isClosedEmbedding_embedProduct (α := Matrix (Fin n) (Fin n) ℂ)
  rw [hemb.isCompact_iff]
  refine (hK.prod (hK.image MulOpposite.continuous_op)).of_isClosed_subset (hemb.isClosedMap _ hS) ?_
  rintro _ ⟨x, hx, rfl⟩
  refine ⟨fun i j => (h x hx i j).1, (x⁻¹ : GL (Fin n) ℂ).val, fun i j => (h x hx i j).2, rfl⟩

theorem col_bound {d : GL (Fin n) ℂ} {z : Fin n → ℂ} (hd : d.val = diagonal z) (hz : ∀ i, ‖z i‖ = 1)
    (hinj : Function.Injective fun i => z i ^ 2) (p : GL (Fin n) ℂ) {B : ℝ}
    (hB : ∑ i, ‖tr z i (p * d * θ p⁻¹)‖ ≤ B) (k i : Fin n) : ‖p.val k i‖ ≤ B + 1 := by
  have h1 : ‖tr z i (p * d * θ p⁻¹)‖ ≤ B :=
    (Finset.single_le_sum (f := fun i => ‖tr z i (p * d * θ p⁻¹)‖) (fun _ _ => norm_nonneg _)
      (Finset.mem_univ i)).trans hB
  rw [tr_eq hd hz hinj, norm_mul, hz, one_mul, Complex.norm_real, Real.norm_of_nonneg
    (Finset.sum_nonneg fun _ _ => by positivity)] at h1
  have h2 : ‖p.val k i‖ ^ 2 ≤ ∑ k, ‖p.val k i‖ ^ 2 :=
    Finset.single_le_sum (f := fun k => ‖p.val k i‖ ^ 2) (fun _ _ => by positivity) (Finset.mem_univ k)
  have h3 : 0 ≤ B := (by positivity : 0 ≤ ‖p.val k i‖ ^ 2).trans (h2.trans h1)
  nlinarith [sq_nonneg (‖p.val k i‖ - 1)]

theorem diagProper : DiagProper := by
  intro n d z hd hz hinj C hC
  have hθd := th_diag hd hz
  set S : Set (GL (Fin n) ℂ) := {x | PositivityTheory.Rg.Tf.Loc.twConj (thetaR (starRingEnd ℂ) n) x d ∈ C} with hSdef
  have hcont : Continuous fun x : GL (Fin n) ℂ => PositivityTheory.Rg.Tf.Loc.twConj (thetaR (starRingEnd ℂ) n) x d := by
    unfold PositivityTheory.Rg.Tf.Loc.twConj
    exact (continuous_inv.mul continuous_const).mul continuous_th
  have hcl : IsClosed S := hC.isClosed.preimage hcont
  have hC' : IsCompact (C ∪ (fun g : GL (Fin n) ℂ => θ g) '' C) := hC.union (hC.image continuous_th)
  have hG : Continuous fun y : GL (Fin n) ℂ => ∑ i, ‖tr z i y‖ :=
    continuous_finsetSum _ fun i _ => (continuous_tr z i).norm
  obtain ⟨B, hB⟩ := hC'.exists_bound_of_continuousOn hG.continuousOn
  have hB' : ∀ y ∈ C ∪ (fun g : GL (Fin n) ℂ => θ g) '' C, ∑ i, ‖tr z i y‖ ≤ B :=
    fun y hy => (le_abs_self _).trans (hB y hy)
  refine isCompact_of_bounded hcl (B + 1) fun x hx i j => ⟨?_, ?_⟩
  ·
    have hy : twy x d ∈ C := hx
    have e : θ (twy x d) = (θ x⁻¹) * d * θ (θ x⁻¹)⁻¹ := by
      simp only [twy, map_mul, map_inv, th_th, hθd, inv_inv]
    have := col_bound hd hz hinj (θ x⁻¹) (B := B) (by
      rw [← e]; exact hB' _ (Or.inr ⟨_, hy, rfl⟩)) j i
    rw [th_val, inv_inv, Matrix.conjTranspose_apply, norm_star] at this
    exact this
  · have hy : twy x d ∈ C := hx
    have e : twy x d = x⁻¹ * d * θ (x⁻¹)⁻¹ := by simp [twy]
    exact col_bound hd hz hinj x⁻¹ (B := B) (by rw [← e]; exact hB' _ (Or.inl hy)) i j

end GlobalTheory.CompanionTheory.DiagProperProof
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsCompactOfBounded =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsRegEllIffMemEll =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsRegEllIffMemEll", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix Polynomial
open GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host
open GlobalTheory.BCT PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8

namespace GlobalTheory.CompanionTheory.NormPoly

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

theorem norm_translate {u : GL (Fin n) E} (hu : IsTransl u) (d : GL (Fin n) E) :
    (d * u⁻¹) * thE E n (d * u⁻¹) = nrm d := by
  obtain ⟨h1, h2⟩ := hu
  have hθ : thetaE E n u = u⁻¹ := eq_inv_of_mul_eq_one_right h2
  rw [h1, map_mul, map_inv, hθ, inv_inv, nrm]
  group

theorem polE_translate {u : GL (Fin n) E} (hu : IsTransl u) (d : GL (Fin n) E) :
    polE (d * u⁻¹) = (nrm d).val.charpoly := by
  rw [polE, norm_translate hu]

theorem map_thetaE (τ : E →+* ℂ) (d : GL (Fin n) E) :
    GeneralLinearGroup.map τ (thetaE E n d) =
      thetaR (starRingEnd ℂ) n (GeneralLinearGroup.map τ d) := by
  apply Units.ext
  ext i j
  have hv : ∀ g : GL (Fin n) E, ((GeneralLinearGroup.map τ g : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) = g.val.map τ := fun _ => rfl
  rw [hv, thetaR_val, thetaR_val, ← map_inv, hv]
  simp only [Matrix.map_apply, Matrix.transpose_apply]
  exact IsCMField.complexEmbedding_complexConj E τ _

theorem charpoly_map_nrm (τ : E →+* ℂ) (d : GL (Fin n) E) :
    (GeneralLinearGroup.map τ d * thetaR (starRingEnd ℂ) n (GeneralLinearGroup.map τ d)).val.charpoly =
      (nrm d).val.charpoly.map τ := by
  rw [← map_thetaE, ← map_mul, ← Matrix.charpoly_map]
  rfl

theorem isRegEll_iff_mem_Ell (d : GL (Fin n) E) : IsRegEll d ↔ (nrm d).val.charpoly ∈ Ell E n := by
  have hm : (nrm d).val.charpoly.Monic := Matrix.charpoly_monic _
  constructor
  · intro h
    refine ⟨hm, by simp, h.1, fun τ z hz => ?_⟩
    exact h.2 τ z (Polynomial.isRoot_of_mem_roots hz)
  · rintro ⟨-, -, hs, hr⟩
    exact ⟨hs, fun τ z hz => hr τ z ((Polynomial.mem_roots (hm.map τ).ne_zero).2 hz)⟩

theorem polEq : PolEq := by
  intro E _ _ _ n u hu d
  rw [polE_translate hu]
  refine ⟨isRegEll_iff_mem_Ell d, fun v => ⟨charpoly_map_nrm v.embedding d, fun h => ?_⟩⟩
  unfold EllC
  rw [charpoly_map_nrm]
  exact ⟨h.1.map, fun z hz => h.2 v.embedding z hz⟩

end GlobalTheory.CompanionTheory.NormPoly
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsRegEllIffMemEll =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemRatCentTwConj =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemRatCentTwConj", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8
open PositivityTheory.Rg.Tf.Loc (quotIntegral IsQuotNormaliser twConj twConj_mul_left mem_twCent)

namespace GlobalTheory.CompanionTheory.OrbInv

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

theorem thetaA_ratGL (g : GL (Fin n) E) : thetaA E n (ratGL E n g) = ratGL E n (thetaE E n g) := by
  have h : ∀ g : GL (Fin n) E, (ratGL E n g).val = g.val.map (algebraMap E (Ad E)) := fun _ => rfl
  apply Units.ext
  rw [thetaR_val, ← map_inv, h, h, thetaR_val]
  ext i j
  exact conjAd_algebraMap _

theorem twConj_ratGL (g d : GL (Fin n) E) (x : GA E n) :
    twConj (thetaA E n) x (ratGL E n (twConj (thetaE E n) g d)) =
      twConj (thetaA E n) (ratGL E n g * x) (ratGL E n d) := by
  simp only [twConj, map_mul, map_inv, thetaA_ratGL]
  group

theorem mem_ratCent_twConj (g d : GL (Fin n) E) (x : GA E n) :
    x ∈ ratCent (twConj (thetaE E n) g d) ↔ ratGL E n g * x * (ratGL E n g)⁻¹ ∈ ratCent d := by
  simp only [ratCent, Subgroup.mem_map]
  constructor
  · rintro ⟨c, hc, rfl⟩
    have hc' := (mem_twCent _ _ _).1 hc
    simp only [twConj] at hc'
    refine ⟨g * c * g⁻¹, (mem_twCent _ _ _).2 ?_, by simp only [map_mul, map_inv]⟩
    simp only [map_mul, map_inv]
    calc (g * c * g⁻¹)⁻¹ * d * (thetaE E n g * thetaE E n c * (thetaE E n g)⁻¹)
        = g * (c⁻¹ * (g⁻¹ * d * thetaE E n g) * thetaE E n c) * (thetaE E n g)⁻¹ := by group
      _ = g * (g⁻¹ * d * thetaE E n g) * (thetaE E n g)⁻¹ := by rw [hc']
      _ = d := by group
  · rintro ⟨c, hc, h⟩
    have hc' := (mem_twCent _ _ _).1 hc
    refine ⟨g⁻¹ * c * g, (mem_twCent _ _ _).2 ?_, ?_⟩
    · simp only [twConj, map_mul, map_inv]
      calc (g⁻¹ * c * g)⁻¹ * (g⁻¹ * d * thetaE E n g) *
            ((thetaE E n g)⁻¹ * thetaE E n c * thetaE E n g)
          = g⁻¹ * (c⁻¹ * d * thetaE E n c) * thetaE E n g := by group
        _ = g⁻¹ * d * thetaE E n g := by rw [hc']
    · simp only [map_mul, map_inv, h]
      group

theorem twConj_ratCent (d : GL (Fin n) E) {h : GA E n} (hh : h ∈ ratCent d) (x : GA E n) :
    twConj (thetaA E n) (h * x) (ratGL E n d) = twConj (thetaA E n) x (ratGL E n d) := by
  obtain ⟨c, hc, rfl⟩ := Subgroup.mem_map.1 hh
  have hc' := (mem_twCent _ _ _).1 hc
  refine twConj_mul_left _ _ ((mem_twCent _ _ _).2 ?_) x
  rw [thetaA_ratGL, ← map_inv, ← map_mul, ← map_mul, hc']

theorem countable_ratCent [Countable (GL (Fin n) E)] (d : GL (Fin n) E) :
    (ratCent d : Set (GA E n)).Countable :=
  (Set.countable_range (ratGL E n)).mono (by
    rintro _ ⟨c, -, rfl⟩
    exact ⟨c, rfl⟩)

theorem orbInvOf : OrbInvOf := by
  intro hQ hT E _ _ _ a b _ _ _ _ μ₁ _ μ₂ _ φ d₁ g₁ d₂ g₂ hc
  obtain ⟨⟨lc₁, sc₁, t₁⟩, -, -, cn₁, -, -⟩ := hT E a
  obtain ⟨⟨lc₂, sc₂, t₂⟩, -, -, cn₂, -, -⟩ := hT E b
  have hcnt : (((ratCent d₁).prod (ratCent d₂) : Subgroup (GA E a × GA E b)) :
      Set (GA E a × GA E b)).Countable := by
    rw [Subgroup.coe_prod]
    exact (countable_ratCent d₁).prod (countable_ratCent d₂)
  have : Countable ((ratCent d₁).prod (ratCent d₂) : Subgroup (GA E a × GA E b)) := hcnt.to_subtype
  set F : GA E a × GA E b → ℂ := fun x =>
    φ (twConj (thetaA E a) x.1 (ratGL E a d₁), twConj (thetaA E b) x.2 (ratGL E b d₂)) with hF
  have key := hQ (GA E a × GA E b) (μ₁.prod μ₂) ((ratCent d₁).prod (ratCent d₂))
    ((ratCent (twConj (thetaE E a) g₁ d₁)).prod (ratCent (twConj (thetaE E b) g₂ d₂))) F
    (ratGL E a g₁, ratGL E b g₂) hc.measurable
    (fun h hh x => by
      simp only [hF, Prod.fst_mul, Prod.snd_mul]
      rw [twConj_ratCent d₁ hh.1, twConj_ratCent d₂ hh.2])
    (fun x => by
      simp only [Subgroup.mem_prod, Prod.fst_mul, Prod.snd_mul, Prod.fst_inv, Prod.snd_inv,
        mem_ratCent_twConj])
  simp only [hF, Prod.fst_mul, Prod.snd_mul] at key
  simp only [orbTerm2, twConj_ratGL]
  exact key

end GlobalTheory.CompanionTheory.OrbInv

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemRatCentTwConj =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NontrivialFiniteAdeles =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NontrivialFiniteAdeles", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory Polynomial Filter
open GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host
open GlobalTheory.BCT PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8
open scoped Classical

namespace GlobalTheory.CompanionTheory.TwistCent

theorem map_thetaR {R S : Type} [CommRing R] [CommRing S] (f : R →+* S) (c : R →+* R) (c' : S →+* S)
    (h : ∀ x, f (c x) = c' (f x)) (n : ℕ) (g : GL (Fin n) R) :
    GeneralLinearGroup.map f (thetaR c n g) = thetaR c' n (GeneralLinearGroup.map f g) := by
  apply Units.ext
  ext i j
  rw [GeneralLinearGroup.map_apply, thetaR_val, thetaR_val, ← map_inv]
  simp only [Matrix.transpose_apply, Matrix.map_apply, GeneralLinearGroup.map_apply, h]

theorem map_phiU {R S : Type} [CommRing R] [CommRing S] (f : R →+* S) (n : ℕ) :
    GeneralLinearGroup.map f (PhiU n R) = PhiU n S := by
  apply Units.ext
  ext i j
  simp only [GeneralLinearGroup.map_apply, phiU_val, GlobalTheory.Tw.Phi, Matrix.of_apply]
  split_ifs <;> simp

theorem map_thetaGL {R S : Type} [CommRing R] [CommRing S] (f : R →+* S) (c : R →+* R) (c' : S →+* S)
    (h : ∀ x, f (c x) = c' (f x)) (n : ℕ) (g : GL (Fin n) R) :
    GeneralLinearGroup.map f (thetaGL n c g) = thetaGL n c' (GeneralLinearGroup.map f g) := by
  rw [thetaGL_eq, thetaGL_eq, map_mul, map_mul, map_inv, map_phiU, map_thetaR f c c' h]

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

theorem thF_ratF (g : GL (Fin n) E) : thF E n (ratF E n g) = ratF E n (thE E n g) :=
  (map_thetaGL (algebraMap E (Af E)) _ _
    (fun x => (conjFin_algebraMap (IsCMField.complexConj E).toRingEquiv x).symm) n g).symm

theorem nontrivial_finiteAdeles : Nontrivial (Af E) := by
  obtain ⟨m₀, hm₀⟩ := Ideal.exists_maximal (𝓞 E)
  let v₀ : HeightOneSpectrum (𝓞 E) :=
    ⟨m₀, hm₀.isPrime, Ring.ne_bot_of_isMaximal_of_not_isField hm₀ (RingOfIntegers.not_isField E)⟩
  exact ⟨⟨0, 1, fun h => zero_ne_one (congrArg (fun x : Af E => x v₀) h)⟩⟩

theorem ratF_injective : Function.Injective (ratF E n) := by
  haveI : Nontrivial (Af E) := nontrivial_finiteAdeles
  intro g h e
  apply Units.ext
  ext i j
  have := congrArg (fun x : GL (Fin n) (Af E) => x.val i j) e
  exact (algebraMap E (Af E)).injective this


theorem mem_twCent_iff {u : GL (Fin n) E} (hu : IsTransl u) (g d : GL (Fin n) E) :
    g ∈ PositivityTheory.Rg.Tf.Loc.twCent (thetaE E n) d ↔ g * (d * u⁻¹) = d * u⁻¹ * thE E n g := by
  rw [PositivityTheory.Rg.Tf.Loc.mem_twCent, hu.1 g]
  constructor
  · intro h
    have h' : g * d = d * thetaE E n g := by
      calc g * d = g * (g⁻¹ * d * thetaE E n g) := by rw [h]
        _ = d * thetaE E n g := by group
    calc g * (d * u⁻¹) = g * d * u⁻¹ := by group
      _ = d * thetaE E n g * u⁻¹ := by rw [h']
      _ = d * u⁻¹ * (u * thetaE E n g * u⁻¹) := by group
  · intro h
    have h' : g * d = d * thetaE E n g := by
      calc g * d = g * (d * u⁻¹) * u := by group
        _ = d * u⁻¹ * (u * thetaE E n g * u⁻¹) * u := by rw [h]
        _ = d * thetaE E n g := by group
    calc g⁻¹ * d * thetaE E n g = g⁻¹ * (d * thetaE E n g) := by group
      _ = g⁻¹ * (g * d) := by rw [h']
      _ = d := by group

theorem mem_twCent_iff_ratF {u : GL (Fin n) E} (hu : IsTransl u) (g d : GL (Fin n) E) :
    g ∈ PositivityTheory.Rg.Tf.Loc.twCent (thetaE E n) d ↔
      ratF E n g * ratF E n (d * u⁻¹) = ratF E n (d * u⁻¹) * thF E n (ratF E n g) := by
  rw [mem_twCent_iff hu, thF_ratF, ← map_mul, ← map_mul]
  exact ratF_injective.eq_iff.symm

theorem map_mem_twCent (v : InfinitePlace E) {g d : GL (Fin n) E}
    (h : g ∈ PositivityTheory.Rg.Tf.Loc.twCent (thetaE E n) d) :
    GeneralLinearGroup.map v.embedding g ∈
      PositivityTheory.Rg.Tf.Loc.twCent (thetaR (starRingEnd ℂ) n) (GeneralLinearGroup.map v.embedding d) := by
  have h' : g⁻¹ * d * thetaE E n g = d := h
  rw [PositivityTheory.Rg.Tf.Loc.mem_twCent]
  rw [← map_thetaR v.embedding (conjE E) (starRingEnd ℂ)
    (fun x => IsCMField.complexEmbedding_complexConj E v.embedding x) n g, ← map_inv, ← map_mul, ← map_mul]
  exact congrArg _ h'

theorem centEq : CentEq := by
  intro E _ _ _ a b u₁ u₂ h₁ h₂ d₁ d₂
  refine ⟨fun y => ⟨?_, ?_⟩, ?_⟩
  · rintro ⟨⟨⟨g₁, g₂⟩, rfl⟩, hc⟩
    have hc' := Prod.ext_iff.1 hc
    refine ⟨(ratGL E a g₁, ratGL E b g₂), ?_, ?_⟩
    · exact ⟨⟨g₁, (mem_twCent_iff_ratF h₁ g₁ d₁).2 hc'.1, rfl⟩, ⟨g₂, (mem_twCent_iff_ratF h₂ g₂ d₂).2 hc'.2, rfl⟩⟩
    · exact Prod.ext (GlobalTheory.CompanionTheory.AdelEqProof.map_pFin_ratGL g₁) (GlobalTheory.CompanionTheory.AdelEqProof.map_pFin_ratGL g₂)
  · rintro ⟨⟨γ₁, γ₂⟩, ⟨⟨g₁, hg₁, rfl⟩, ⟨g₂, hg₂, rfl⟩⟩, rfl⟩
    have e : (comps (ratGL E a g₁, ratGL E b g₂)).2 = (ratF E a g₁, ratF E b g₂) :=
      Prod.ext (GlobalTheory.CompanionTheory.AdelEqProof.map_pFin_ratGL g₁) (GlobalTheory.CompanionTheory.AdelEqProof.map_pFin_ratGL g₂)
    rw [e]
    exact ⟨⟨(g₁, g₂), rfl⟩, Prod.ext ((mem_twCent_iff_ratF h₁ g₁ d₁).1 hg₁) ((mem_twCent_iff_ratF h₂ g₂ d₂).1 hg₂)⟩
  · rintro ⟨γ₁, γ₂⟩ ⟨⟨g₁, hg₁, rfl⟩, ⟨g₂, hg₂, rfl⟩⟩
    refine ⟨fun h => ?_, fun v => ?_⟩
    · have e : (comps (ratGL E a g₁, ratGL E b g₂)).2 = (ratF E a g₁, ratF E b g₂) :=
        Prod.ext (GlobalTheory.CompanionTheory.AdelEqProof.map_pFin_ratGL g₁) (GlobalTheory.CompanionTheory.AdelEqProof.map_pFin_ratGL g₂)
      rw [e] at h
      have e₁ : g₁ = 1 := ratF_injective ((congrArg Prod.fst h).trans (map_one _).symm)
      have e₂ : g₂ = 1 := ratF_injective ((congrArg Prod.snd h).trans (map_one _).symm)
      subst e₁ e₂
      exact Prod.ext (map_one _) (map_one _)
    · constructor
      · show GeneralLinearGroup.map (cV v) (ratGL E a g₁) ∈ _
        rw [GlobalTheory.CompanionTheory.AdelEqProof.map_cV_ratGL]
        exact map_mem_twCent v hg₁
      · show GeneralLinearGroup.map (cV v) (ratGL E b g₂) ∈ _
        rw [GlobalTheory.CompanionTheory.AdelEqProof.map_cV_ratGL]
        exact map_mem_twCent v hg₂

end GlobalTheory.CompanionTheory.TwistCent

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NontrivialFiniteAdeles =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormaliserUnconj =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormaliserUnconj", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory PositivityTheory.Rg.BcB.G8 PositivityTheory.Rg.Tf.Loc
open scoped ENNReal

namespace GlobalTheory.CompanionTheory.QConjug

variable {G : Type} [Group G]

def conjEquiv {H H' : Subgroup G} {g : G} (hH' : ∀ x, x ∈ H' ↔ g * x * g⁻¹ ∈ H) : H' ≃ H where
  toFun x := ⟨g * x * g⁻¹, (hH' x).1 x.2⟩
  invFun y := ⟨g⁻¹ * y * g, (hH' _).2 (by
    have : g * (g⁻¹ * (y : G) * g) * g⁻¹ = y := by group
    rw [this]; exact y.2)⟩
  left_inv x := Subtype.ext (by simp only []; group)
  right_inv y := Subtype.ext (by simp only []; group)

variable [MeasurableSpace G] [MeasurableMul₂ G] [MeasurableSingletonClass G]

theorem normaliser_conj {H H' : Subgroup G} {g : G} (hH' : ∀ x, x ∈ H' ↔ g * x * g⁻¹ ∈ H)
    {ρ : G → ℝ≥0∞} (hρ : IsQuotNormaliser H Measure.count ρ) :
    IsQuotNormaliser H' Measure.count (fun x => ρ (g * x)) := by
  unfold IsQuotNormaliser at hρ ⊢
  refine ⟨hρ.1.comp (measurable_const_mul g), fun y => ?_⟩
  have h1 := hρ.2 (g * y)
  rw [lintegral_count] at h1 ⊢
  rw [← h1, ← (conjEquiv hH').tsum_eq]
  refine tsum_congr fun x => ?_
  show ρ (g * ((x : G) * y)) = ρ (g * (x : G) * g⁻¹ * (g * y))
  congr 1
  group

theorem normaliser_unconj {H H' : Subgroup G} {g : G} (hH' : ∀ x, x ∈ H' ↔ g * x * g⁻¹ ∈ H)
    {ρ : G → ℝ≥0∞} (hρ : IsQuotNormaliser H' Measure.count ρ) :
    IsQuotNormaliser H Measure.count (fun x => ρ (g⁻¹ * x)) := by
  have h2 : ∀ x, x ∈ H ↔ g⁻¹ * x * g⁻¹⁻¹ ∈ H' := by
    intro x
    rw [hH', show g * (g⁻¹ * x * g⁻¹⁻¹) * g⁻¹ = x by group]
  exact normaliser_conj h2 hρ

theorem qConjOf_holds : QConjOf := by
  intro hI G _ _ _ _ _ μ _ _ H H' _ F g hF hFH hH'
  haveI : Countable H' := Countable.of_equiv _ (conjEquiv hH').symm
  by_cases hex : ∃ ρ, IsQuotNormaliser H Measure.count ρ
  · obtain ⟨ρ, hρ⟩ := hex
    have hρ' := normaliser_conj hH' hρ
    have hmeas : Measurable fun x => F (g * x) := hF.comp (measurable_const_mul g)
    have hinv : ∀ h ∈ H', ∀ x, F (g * (h * x)) = F (g * x) := by
      intro h hh x
      have := hFH (g * h * g⁻¹) ((hH' h).1 hh) (g * x)
      rw [← this]
      congr 1
      group
    rw [hI G μ H' (fun x => F (g * x)) (fun x => ρ (g * x)) hmeas hinv hρ',
      hI G μ H F ρ hF hFH hρ]
    exact integral_mul_left_eq_self (fun x => F x * ((ρ x).toReal : ℂ)) g
  · have hex' : ¬ ∃ ρ, IsQuotNormaliser H' Measure.count ρ := by
      rintro ⟨ρ, hρ⟩
      exact hex ⟨_, normaliser_unconj hH' hρ⟩
    unfold quotIntegral
    rw [dite_eq_right hex, dite_eq_right hex']

end GlobalTheory.CompanionTheory.QConjug

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormaliserUnconj =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrbitPreimageEq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrbitPreimageEq", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open PositivityTheory.Rg.BcB.G8
open PositivityTheory.Rg.Tf.Loc (twConj)

namespace GlobalTheory.CompanionTheory.EllProp

theorem twConj_twConj {G : Type*} [Group G] (θ : Monoid.End G) (x g d : G) :
    twConj θ x (twConj θ g d) = twConj θ (g * x) d := by
  simp only [twConj, map_mul]
  group

theorem orbit_preimage_eq {G : Type*} [Group G] (θ : Monoid.End G) (g d : G) (C : Set G) :
    {x | twConj θ x (twConj θ g d) ∈ C} = (fun y => g⁻¹ * y) '' {y | twConj θ y d ∈ C} := by
  ext x
  simp only [Set.mem_setOf_eq, Set.mem_image, twConj_twConj]
  constructor
  · intro h
    exact ⟨g * x, h, by group⟩
  · rintro ⟨y, hy, rfl⟩
    simpa using hy

theorem ellProperOf : EllProperOf := by
  intro hD hP _ n d hd C hC
  obtain ⟨g, d', z, h1, h2, h3, rfl⟩ := hD n d hd
  rw [orbit_preimage_eq]
  exact (hP n d' z h1 h2 h3 C hC).image (continuous_const.mul continuous_id)

end GlobalTheory.CompanionTheory.EllProp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrbitPreimageEq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableGL =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableGL", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix MeasureTheory Polynomial
open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8 PositivityTheory.Rg.Tf.Loc
open GlobalTheory.BCT Formalism.BasicNotions

namespace GlobalTheory.CompanionTheory.LefPair

variable {n : ℕ}

local notation "θ" => thetaR (starRingEnd ℂ)

theorem tw_eq (x d : GL (Fin n) ℂ) : PositivityTheory.RgTw.tw x d = twConj (θ n) x d := by
  have h : PositivityTheory.RgTw.th x = θ n x := by
    apply Units.ext
    rfl
  simp only [PositivityTheory.RgTw.tw, twConj, h]

theorem theta_theta (g : GL (Fin n) ℂ) : θ n (θ n g) = g := by
  apply Units.ext
  show (((g.val.map (starRingEnd ℂ))ᵀ).map (starRingEnd ℂ))ᵀ = g.val
  ext i j
  simp

theorem twConj_twConj (g x d : GL (Fin n) ℂ) :
    twConj (θ n) x (twConj (θ n) g d) = twConj (θ n) (g * x) d := by
  simp only [twConj, map_mul]
  group

theorem theta_diag (d : GL (Fin n) ℂ) (z : Fin n → ℂ) (hd : d.val = diagonal z) (hz : ∀ i, ‖z i‖ = 1) :
    (θ n d).val = diagonal z := by
  have hz0 : ∀ i, z i ≠ 0 := fun i h => by simpa [h] using hz i
  have hinv : (d⁻¹).val = diagonal fun i => (z i)⁻¹ := by
    apply Units.inv_eq_of_mul_eq_one_right
    rw [hd, diagonal_mul_diagonal, ← diagonal_one]
    congr 1
    funext i
    exact mul_inv_cancel₀ (hz0 i)
  rw [thetaR_val, hinv]
  ext i j
  by_cases h : i = j
  · subst h
    simp only [transpose_apply, map_apply, diagonal_apply_eq]
    rw [Complex.inv_eq_conj (hz i), Complex.conj_conj]
  · simp [diagonal_apply_ne _ h, diagonal_apply_ne _ (Ne.symm h)]

theorem charpoly_norm (g d : GL (Fin n) ℂ) (z : Fin n → ℂ) (hd : d.val = diagonal z) (hz : ∀ i, ‖z i‖ = 1) :
    (twConj (θ n) g d * θ n (twConj (θ n) g d)).val.charpoly = (diagonal fun i => z i ^ 2).charpoly := by
  have h : twConj (θ n) g d * θ n (twConj (θ n) g d) = g⁻¹ * (d * θ n d) * g := by
    simp only [twConj, map_mul, map_inv, theta_theta]
    group
  have h2 : (d * θ n d).val = diagonal fun i => z i ^ 2 := by
    rw [Units.val_mul, theta_diag d z hd hz, hd, diagonal_mul_diagonal]
    congr 1
    funext i
    exact (pow_two _).symm
  rw [h, Units.val_mul, Units.val_mul, Matrix.coe_units_inv, Matrix.charpoly_units_conj', h2]

theorem locallyCompact_GL (n : ℕ) : LocallyCompactSpace (GL (Fin n) ℂ) := by
  have : LocallyCompactSpace (Matrix (Fin n) (Fin n) ℂ) :=
    inferInstanceAs (LocallyCompactSpace (Fin n → Fin n → ℂ))
  exact Units.isClosedEmbedding_embedProduct.locallyCompactSpace

theorem secondCountable_GL (n : ℕ) : SecondCountableTopology (GL (Fin n) ℂ) := by
  have : SecondCountableTopology (Matrix (Fin n) (Fin n) ℂ) :=
    inferInstanceAs (SecondCountableTopology (Fin n → Fin n → ℂ))
  have : SecondCountableTopology (Matrix (Fin n) (Fin n) ℂ)ᵐᵒᵖ :=
    MulOpposite.opHomeomorph.symm.isEmbedding.secondCountableTopology
  exact Units.isEmbedding_embedProduct.secondCountableTopology

theorem sigmaFinite_haar [MeasurableSpace (GL (Fin n) ℂ)] [BorelSpace (GL (Fin n) ℂ)]
    (ν : Measure (GL (Fin n) ℂ)) [ν.IsHaarMeasure] : SigmaFinite ν := by
  have := locallyCompact_GL n
  have := secondCountable_GL n
  have : SigmaCompactSpace (GL (Fin n) ℂ) := sigmaCompactSpace_of_locallyCompact_secondCountable
  exact Measure.IsHaarMeasure.sigmaFinite ν

theorem lefOne_eval (hD : EllDiag) (hW : WeylAt) [MeasurableSpace (GL (Fin n) ℂ)] [BorelSpace (GL (Fin n) ℂ)]
    (ν : Measure (GL (Fin n) ℂ)) [ν.IsHaarMeasure] (l : DomWeight n) (v : ℂ) (f : GL (Fin n) ℂ → ℂ)
    (h : LefOne ν l v f) (d : GL (Fin n) ℂ) (hd : EllC d) :
    ∫ x, f (twConj (θ n) x d) ∂ν = v * starRingEnd ℂ (chAt l (d * θ n d).val.charpoly) := by
  obtain ⟨g, d', z, hd', hz, hinj, rfl⟩ := hD n d hd
  have hz0 : ∀ i, z i ^ 2 ≠ 0 := fun i h0 => by
    have : z i = 0 := by simpa using h0
    simpa [this] using hz i
  simp_rw [twConj_twConj]
  rw [integral_mul_left_eq_self (fun y => f (twConj (θ n) y d')) g, charpoly_norm g d' z hd' hz,
    hW n l (fun i => z i ^ 2) hz0 hinj]
  have := h.2.2 d' z hd' hz hinj
  simp_rw [tw_eq] at this
  exact this

end GlobalTheory.CompanionTheory.LefPair


open GlobalTheory.CompanionTheory.LefPair in
theorem GlobalTheory.CompanionTheory.LefPair.lefPairOf : LefPairOf := by
  intro hD hW _ a b _ _ _ _ ν₁ _ ν₂ _ l₁ l₂ v₁ v₂ f₁ f₂ h₁ h₂
  have := sigmaFinite_haar ν₁
  have := sigmaFinite_haar ν₂
  refine ⟨(h₁.1.comp continuous_fst).mul (h₂.1.comp continuous_snd), ?_, fun d₁ d₂ e₁ e₂ => ?_⟩
  · refine HasCompactSupport.intro (h₁.2.1.prod h₂.2.1) fun x hx => ?_
    rw [Set.mem_prod, not_and_or] at hx
    rcases hx with hx | hx
    · simp [image_eq_zero_of_notMem_tsupport hx]
    · simp [image_eq_zero_of_notMem_tsupport hx]
  · rw [integral_prod_mul (fun x => f₁ (twConj (thetaR (starRingEnd ℂ) a) x d₁))
      (fun x => f₂ (twConj (thetaR (starRingEnd ℂ) b) x d₂)),
      lefOne_eval hD hW ν₁ l₁ v₁ f₁ h₁ d₁ e₁, lefOne_eval hD hW ν₂ l₂ v₂ f₂ h₂ d₂ e₂]
    ring

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableGL =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableUnits =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableUnits", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix
open GlobalTheory.CuspRep GlobalTheory.BCT PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8

noncomputable section

namespace GlobalTheory.CompanionTheory.LocalThetaTopology

theorem locallyCompact_units {M : Type} [Ring M] [TopologicalSpace M] [IsTopologicalRing M] [T2Space M]
    [LocallyCompactSpace M] : LocallyCompactSpace Mˣ :=
  Units.isClosedEmbedding_embedProduct.locallyCompactSpace

theorem secondCountable_units {M : Type} [Monoid M] [TopologicalSpace M] [SecondCountableTopology M] :
    SecondCountableTopology Mˣ := by
  haveI : SecondCountableTopology Mᵐᵒᵖ := (MulOpposite.opHomeomorph (M := M)).symm.secondCountableTopology
  exact Units.isEmbedding_embedProduct.secondCountableTopology

theorem t2Space_units {M : Type} [Monoid M] [TopologicalSpace M] [T2Space M] : T2Space Mˣ :=
  Units.isEmbedding_embedProduct.t2Space

theorem top_GL {R : Type} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R] [T2Space R] [LocallyCompactSpace R]
    [SecondCountableTopology R] (n : ℕ) :
    LocallyCompactSpace (GL (Fin n) R) ∧ SecondCountableTopology (GL (Fin n) R) ∧ T2Space (GL (Fin n) R) := by
  haveI : LocallyCompactSpace (Matrix (Fin n) (Fin n) R) := inferInstanceAs (LocallyCompactSpace (Fin n → Fin n → R))
  haveI : SecondCountableTopology (Matrix (Fin n) (Fin n) R) :=
    inferInstanceAs (SecondCountableTopology (Fin n → Fin n → R))
  haveI : T2Space (Matrix (Fin n) (Fin n) R) := inferInstanceAs (T2Space (Fin n → Fin n → R))
  exact ⟨locallyCompact_units, secondCountable_units, t2Space_units⟩

theorem continuous_thetaR {A : Type} [CommRing A] [TopologicalSpace A] [IsTopologicalRing A] (σ : A →+* A)
    (hσ : Continuous σ) (n : ℕ) : Continuous (thetaR σ n) :=
  Units.continuous_iff.2 ⟨(Units.continuous_coe_inv.matrix_map hσ).matrix_transpose,
    (Units.continuous_val.matrix_map hσ).matrix_transpose⟩

theorem countable_numberField (E : Type) [Field E] [NumberField E] : Countable E := by
  let b := Module.finBasis ℚ E
  exact Function.Injective.countable b.equivFun.injective

theorem countable_GL (E : Type) [Field E] [NumberField E] (n : ℕ) : Countable (GL (Fin n) E) := by
  haveI := countable_numberField E
  haveI : Countable (Matrix (Fin n) (Fin n) E) := inferInstanceAs (Countable (Fin n → Fin n → E))
  exact Function.Injective.countable (f := fun g : GL (Fin n) E => (g : Matrix (Fin n) (Fin n) E)) fun _ _ h => Units.ext h

theorem continuous_thF (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) : Continuous (thF E n) := by
  have h : (thF E n : GL (Fin n) (Af E) → GL (Fin n) (Af E)) = fun g =>
      PhiU n (Af E) * thetaR (conjFin (IsCMField.complexConj E).toRingEquiv) n g * (PhiU n (Af E))⁻¹ :=
    funext fun g => thetaGL_eq n (Af E) _ g
  rw [h]
  exact (continuous_const.mul (continuous_thetaR _ (continuous_conjFin _) n)).mul continuous_const

theorem topo : Topo := by
  intro E _ _ _ n
  haveI := GlobalTheory.AdelicUnitaryTop.locallyCompact_adele E
  haveI := GlobalTheory.AdelicUnitaryTop.secondCountable_adele E
  haveI := GlobalTheory.AdelicUnitaryTop.t2Space_adeleRing_numberField E
  haveI := GlobalTheory.AdelicUnitaryTop.locallyCompact_finiteAdele E
  haveI := GlobalTheory.AdelicUnitaryTop.secondCountable_finiteAdele E
  haveI := GlobalTheory.AdelicUnitaryTop.t2Space_finiteAdeleRing_of_numberField E
  obtain ⟨c1, c2, -⟩ := top_GL (R := ℂ) n
  exact ⟨top_GL n, top_GL n, ⟨c1, c2⟩, countable_GL E n, continuous_thF E n,
    continuous_thetaR _ Complex.continuous_conj n⟩

end GlobalTheory.CompanionTheory.LocalThetaTopology
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableUnits =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwConjugateEquivalence =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwConjugateEquivalence", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix
open GlobalTheory.BCT PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.G8
open PositivityTheory.Rg.Tf.Loc (twConj TwConjugate)

namespace GlobalTheory.CompanionTheory.ClassBij

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

theorem conjE_conjE (x : E) : conjE E (conjE E x) = x := by
  simp [PositivityTheory.Rg.BcB.conjE, NumberField.IsCMField.complexConj_apply_apply]

theorem thetaE_thetaE (g : GL (Fin n) E) : thetaE E n (thetaE E n g) = g := by
  apply Units.ext
  ext i j
  simp only [PositivityTheory.Rg.BcB.thetaE, PositivityTheory.Rg.BcB.thetaR_val, ← map_inv, inv_inv, Matrix.transpose_apply,
    Matrix.map_apply]
  exact conjE_conjE _

theorem nrm_twConj (g d : GL (Fin n) E) : nrm (twConj (thetaE E n) g d) = g⁻¹ * nrm d * g := by
  simp only [PositivityTheory.Rg.BcB.nrm, twConj, map_mul, map_inv, thetaE_thetaE]
  group

theorem charpoly_nrm_twConj (g d : GL (Fin n) E) :
    (nrm (twConj (thetaE E n) g d)).val.charpoly = (nrm d).val.charpoly := by
  rw [nrm_twConj, Units.val_mul, Units.val_mul, Matrix.charpoly_mul_comm, ← Matrix.mul_assoc,
    ← Units.val_mul, _root_.mul_inv_cancel, Units.val_one, Matrix.one_mul]

theorem isRegEll_twConj (g d : GL (Fin n) E) : IsRegEll (twConj (thetaE E n) g d) ↔ IsRegEll d := by
  simp only [PositivityTheory.Rg.BcB.IsRegEll, PositivityTheory.Rg.BcB.IsRegD, charpoly_nrm_twConj]

theorem twConjugate_equivalence : Equivalence (TwConjugate (thetaE E n)) := by
  refine ⟨fun x => ⟨1, by simp [twConj]⟩, ?_, ?_⟩
  · rintro x y ⟨g, rfl⟩
    refine ⟨g⁻¹, ?_⟩
    simp only [twConj, map_inv, inv_inv]
    group
  · rintro x y z ⟨g, rfl⟩ ⟨h, rfl⟩
    refine ⟨g * h, ?_⟩
    simp only [twConj, map_mul, _root_.mul_inv_rev]
    group

theorem exists_out (y : GL (Fin n) E) :
    ∃ g, y = twConj (thetaE E n) g (Quot.out (Quot.mk (TwConjugate (thetaE E n)) y)) :=
  twConjugate_equivalence.eqvGen_iff.1 (Quot.eqvGen_exact (Quot.out_eq _))

theorem classBij : PositivityTheory.Rg.BcB.G8.ClassBij := by
  intro F _ _ _ m u hu
  have hθ : ∀ g : GL (Fin m) F, thE F m g = u * thetaE F m g * u⁻¹ := by
    obtain ⟨h, -⟩ := hu
    exact h
  let e : TwCl (thE F m) ≃ TwClass F m :=
    { toFun := Quot.map (fun x => x * u) (by
        rintro x y ⟨g, rfl⟩
        exact ⟨g, by simp only [twConj, hθ]; group⟩)
      invFun := Quot.map (fun x => x * u⁻¹) (by
        rintro x y ⟨g, rfl⟩
        exact ⟨g, by simp only [twConj, hθ]; group⟩)
      left_inv := by
        intro c
        induction c using Quot.ind with
        | mk x => exact congrArg (Quot.mk _) (mul_inv_cancel_right x u)
      right_inv := by
        intro c
        induction c using Quot.ind with
        | mk x => exact congrArg (Quot.mk _) (inv_mul_cancel_right x u) }
  refine ⟨e, fun c => ?_⟩
  have he : e c = Quot.mk (TwConjugate (thetaE F m)) (c.rep * u) := by
    have hc : c = Quot.mk _ c.rep := (Quot.out_eq c).symm
    calc e c = e (Quot.mk _ c.rep) := congrArg (⇑e) hc
      _ = _ := rfl
  obtain ⟨g, hg⟩ := exists_out (E := F) (n := m) (c.rep * u)
  have key := isRegEll_twConj g (Quot.out (Quot.mk (TwConjugate (thetaE F m)) (c.rep * u)))
  rw [← hg] at key
  rw [he]
  exact ⟨g, hg, key.symm⟩

end GlobalTheory.CompanionTheory.ClassBij

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwConjugateEquivalence =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfHolds =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfHolds", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory Polynomial Filter
open GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host
open GlobalTheory.BCT
open scoped Classical

namespace PositivityTheory.Rg.BcB.G8

open PositivityTheory.Rg.Tf.Loc (quotIntegral IsQuotNormaliser twConj)

theorem mul_finsum_eq {α : Type*} (r : ℂ) (f : α → ℂ) : ∑ᶠ i, r * f i = r * ∑ᶠ i, f i := by
  have h := smul_finsum (R := ℂ) (M := ℂ) r f
  simpa only [smul_eq_mul] using h.symm

theorem global_character_of_holds : GlobalCharacterOfInputs := by
  intro hT hO hA hC hP E _ _ _ hU a b _ _ _ _ _ _ _ _ μ₁ _ μ₂ _ ν₁ _ ν₂ _
  obtain ⟨c, hc0, hc⟩ := hT E hU a b μ₁ μ₂ ν₁ ν₂
  refine ⟨c, hc0, ?_⟩
  intro S hS u₁ u₂ hu₁ hu₂ l₁ l₂ val ψ φ₁ φ₂ hL hφ₁ hφ₂
  obtain ⟨e₁, he₁⟩ := hC E a u₁ hu₁
  obtain ⟨e₂, he₂⟩ := hC E b u₂ hu₂
  have hψ : ∀ v, Continuous (ψ v) := fun v => (hL v).1
  unfold ellSum2 geomRat2
  rw [← finsum_comp_equiv (e₁.prodCongr e₂), ← mul_finsum_eq]
  refine finsum_congr fun x => ?_
  obtain ⟨x₁, x₂⟩ := x
  simp only [Equiv.prodCongr_apply, Prod.map_fst, Prod.map_snd]
  obtain ⟨g₁, hg₁, hr₁⟩ := he₁ x₁
  obtain ⟨g₂, hg₂, hr₂⟩ := he₂ x₂
  have hiff : (IsRegEll (Quot.out (e₁ x₁)) ∧ IsRegEll (Quot.out (e₂ x₂))) ↔ (pol x₁ ∈ Ell E a ∧ pol x₂ ∈ Ell E b) := by
    rw [hr₁, hr₂, (hP E a u₁ hu₁ _).1, (hP E b u₂ hu₂ _).1, mul_inv_cancel_right, mul_inv_cancel_right]
    exact Iff.rfl
  have horb : orbTerm2 μ₁ μ₂ (adel S u₁ u₂ ψ φ₁ φ₂) (Quot.out (e₁ x₁)) (Quot.out (e₂ x₂)) =
      orbTerm2 μ₁ μ₂ (adel S u₁ u₂ ψ φ₁ φ₂) (x₁.rep * u₁) (x₂.rep * u₂) := by
    rw [hg₁, hg₂, hO E a b μ₁ μ₂ _ _ g₁ _ g₂ (hA E hU a b S u₁ u₂ hu₁ hu₂ ψ φ₁ φ₂ hψ hφ₁ hφ₂ _ _)]
  rw [finsum_eq_if]
  by_cases h : pol x₁ ∈ Ell E a ∧ pol x₂ ∈ Ell E b
  · rw [if_pos (hiff.2 h), if_pos h, horb]
    have ht := hc S hS u₁ u₂ hu₁ hu₂ l₁ l₂ val ψ φ₁ φ₂ hL hφ₁ hφ₂ (x₁.rep * u₁) (x₂.rep * u₂)
      (hr₁.1 (hiff.2 h).1) (hr₂.1 (hiff.2 h).2)
    simp only [mul_inv_cancel_right] at ht
    exact ht
  · rw [if_neg (mt hiff.1 h), if_neg h, mul_zero]

end PositivityTheory.Rg.BcB.G8

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfHolds =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PTermOf =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PTermOf", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Integral.Pi\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory Polynomial Filter
open GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host
open GlobalTheory.BCT
open scoped Classical

namespace PositivityTheory.Rg.BcB.G8

open PositivityTheory.Rg.Tf.Loc (quotIntegral IsQuotNormaliser twConj)

theorem termof_twConj_cont {n : ℕ} (hθ : Continuous (thetaR (starRingEnd ℂ) n)) (d : GL (Fin n) ℂ) :
    Continuous fun x : GL (Fin n) ℂ => twConj (thetaR (starRingEnd ℂ) n) x d := by
  show Continuous fun x : GL (Fin n) ℂ => x⁻¹ * d * thetaR (starRingEnd ℂ) n x
  exact (continuous_inv.mul continuous_const).mul hθ

theorem termof_hcs {a b : ℕ} (hEP : EllProper) (ψ : GL (Fin a) ℂ × GL (Fin b) ℂ → ℂ) (hψ : HasCompactSupport ψ)
    (d₁ : GL (Fin a) ℂ) (d₂ : GL (Fin b) ℂ) (h₁ : EllC d₁) (h₂ : EllC d₂) :
    HasCompactSupport fun y : GL (Fin a) ℂ × GL (Fin b) ℂ =>
      ψ (twConj (thetaR (starRingEnd ℂ) a) y.1 d₁, twConj (thetaR (starRingEnd ℂ) b) y.2 d₂) := by
  have hK := (hEP a d₁ h₁ _ (hψ.isCompact.image continuous_fst)).prod
    (hEP b d₂ h₂ _ (hψ.isCompact.image continuous_snd))
  refine HasCompactSupport.intro hK fun y hy => ?_
  by_contra hne
  apply hy
  have hm : (twConj (thetaR (starRingEnd ℂ) a) y.1 d₁, twConj (thetaR (starRingEnd ℂ) b) y.2 d₂) ∈ tsupport ψ :=
    subset_tsupport _ hne
  exact ⟨⟨_, hm, rfl⟩, ⟨_, hm, rfl⟩⟩

theorem termOf_holds : TermOf := by
  intro hQS hHS hTopo hCI hKf hFL hFH hAE hCE hPE hEP
  intro E _ _ _ hU a b _ _ _ _ _ _ _ _ μ₁ _ μ₂ _ ν₁ _ ν₂ _
  obtain ⟨⟨hlcA, hscA, ht2A⟩, ⟨hlcfA, hscfA, ht2fA⟩, ⟨hlcCA, hscCA⟩, hcntA, -, hθA⟩ := hTopo E a
  obtain ⟨⟨hlcB, hscB, ht2B⟩, ⟨hlcfB, hscfB, ht2fB⟩, ⟨hlcCB, hscCB⟩, hcntB, -, hθB⟩ := hTopo E b
  letI mB : MeasurableSpace (Gf E a b) := borel _
  haveI : BorelSpace (Gf E a b) := ⟨rfl⟩
  obtain ⟨e, he⟩ := hCI E a b
  let e' : (GA E a × GA E b) →* (Gi E a b × Gf E a b) := e.toMulEquiv.toMonoidHom
  have he' : ∀ x, e' x = comps x := he
  have hνH : (ν₁.prod ν₂).IsHaarMeasure := inferInstance
  have hνS : SigmaFinite (ν₁.prod ν₂) := inferInstance
  have hαH : (Measure.pi fun _ : InfinitePlace E => ν₁.prod ν₂).IsHaarMeasure := inferInstance
  let α : Measure (Gi E a b) := Measure.pi fun _ => ν₁.prod ν₂
  obtain ⟨β, hβ, hmap⟩ := hHS (GA E a × GA E b) (Gi E a b) (Gf E a b) (μ₁.prod μ₂) α e
  haveI := hβ
  obtain ⟨hKo₁, hKc₁⟩ := hKf E a
  obtain ⟨hKo₂, hKc₂⟩ := hKf E b
  have hKo : IsOpen (((Kf E a).prod (Kf E b) : Subgroup (Gf E a b)) : Set (Gf E a b)) := by
    rw [Subgroup.coe_prod]; exact hKo₁.prod hKo₂
  have hKc : IsCompact (((Kf E a).prod (Kf E b) : Subgroup (Gf E a b)) : Set (Gf E a b)) := by
    rw [Subgroup.coe_prod]; exact hKc₁.prod hKc₂
  refine ⟨(β.real (((Kf E a).prod (Kf E b) : Subgroup (Gf E a b)) : Set (Gf E a b)) : ℂ), ?_, ?_⟩
  · rw [Complex.ofReal_ne_zero, measureReal_def, ENNReal.toReal_ne_zero]
    exact ⟨hKo.measure_ne_zero β ⟨1, Subgroup.one_mem _⟩, hKc.measure_lt_top.ne⟩
  intro S hS u₁ u₂ hu₁ hu₂ l₁ l₂ val ψ φ₁ φ₂ hLef hφ₁ hφ₂ d₁ d₂ hd₁ hd₂
  obtain ⟨hP₁, hPv₁⟩ := hPE E a u₁ hu₁ d₁
  obtain ⟨hP₂, hPv₂⟩ := hPE E b u₂ hu₂ d₂
  have hCE' := hCE E a b u₁ u₂ hu₁ hu₂ d₁ d₂
  let f : InfinitePlace E → GL (Fin a) ℂ × GL (Fin b) ℂ → ℂ := fun v y =>
    ψ v (twConj (thetaR (starRingEnd ℂ) a) y.1 (GeneralLinearGroup.map v.embedding d₁),
      twConj (thetaR (starRingEnd ℂ) b) y.2 (GeneralLinearGroup.map v.embedding d₂))
  let F₁ : Gi E a b → ℂ := fun y => ∏ v, f v (y v)
  let F₂ : Gf E a b → ℂ := orbFn S φ₁ φ₂ (d₁ * u₁⁻¹) (d₂ * u₂⁻¹)
  have hfc : ∀ v, Continuous (f v) := fun v =>
    (hLef v).1.comp (((termof_twConj_cont hθA _).comp continuous_fst).prodMk
      ((termof_twConj_cont hθB _).comp continuous_snd))
  have hfs : ∀ v, HasCompactSupport (f v) := fun v =>
    termof_hcs hEP (ψ v) (hLef v).2.1 _ _ ((hPv₁ v).2 hd₁) ((hPv₂ v).2 hd₂)
  have hint : ∀ v, Integrable (f v) (ν₁.prod ν₂) := fun v => (hfc v).integrable_of_hasCompactSupport (hfs v)
  have hF₁i : Integrable F₁ α := Integrable.fintype_prod hint
  have hF₁m : Measurable F₁ :=
    (continuous_finsetProd _ fun v _ => (hfc v).comp (continuous_apply v)).measurable
  haveI : Countable ↥((ratCent d₁).prod (ratCent d₂)) := by
    have hsub : (((ratCent d₁).prod (ratCent d₂) : Subgroup (GA E a × GA E b)) : Set (GA E a × GA E b)) ⊆
        Set.range (fun p : GL (Fin a) E × GL (Fin b) E => (ratGL E a p.1, ratGL E b p.2)) := by
      intro x hx
      rw [SetLike.mem_coe, Subgroup.mem_prod] at hx
      obtain ⟨g₁, -, hg₁⟩ := Subgroup.mem_map.1 hx.1
      obtain ⟨g₂, -, hg₂⟩ := Subgroup.mem_map.1 hx.2
      exact ⟨(g₁, g₂), Prod.ext hg₁ hg₂⟩
    exact ((Set.countable_range _).mono hsub).to_subtype
  have hΓ : ((ratCent d₁).prod (ratCent d₂)).map ((MonoidHom.snd _ _).comp e') = gam (d₁ * u₁⁻¹) (d₂ * u₂⁻¹) := by
    ext y
    rw [Subgroup.mem_map, hCE'.1 y]
    constructor
    · rintro ⟨γ, hγ, rfl⟩
      exact ⟨γ, hγ, (congrArg Prod.snd (he' γ)).symm⟩
    · rintro ⟨γ, hγ, rfl⟩
      exact ⟨γ, hγ, congrArg Prod.snd (he' γ)⟩
  have hinj : ∀ γ ∈ (ratCent d₁).prod (ratCent d₂), (e' γ).2 = 1 → γ = 1 := by
    intro γ hγ h1
    rw [he'] at h1
    exact (hCE'.2 γ hγ).1 h1
  have hF₁inv : ∀ γ ∈ (ratCent d₁).prod (ratCent d₂), ∀ x, F₁ ((e' γ).1 * x) = F₁ x := by
    intro γ hγ x
    have hc := (hCE'.2 γ hγ).2
    rw [he']
    refine Finset.prod_congr rfl fun v _ => ?_
    simp only [f, Pi.mul_apply, Prod.fst_mul, Prod.snd_mul]
    rw [PositivityTheory.Rg.Tf.Loc.twConj_mul_left _ _ (hc v).1, PositivityTheory.Rg.Tf.Loc.twConj_mul_left _ _ (hc v).2]
  have hF₂inv : ∀ γ ∈ gam (d₁ * u₁⁻¹) (d₂ * u₂⁻¹), ∀ y, F₂ (γ * y) = F₂ y := by
    intro γ hγ y
    have h : γ * (ratF E a (d₁ * u₁⁻¹), ratF E b (d₂ * u₂⁻¹)) =
        (ratF E a (d₁ * u₁⁻¹), ratF E b (d₂ * u₂⁻¹)) * thP E a b γ := (Subgroup.mem_inf.1 hγ).2
    simp only [F₂, orbFn]
    congr 1
    generalize (ratF E a (d₁ * u₁⁻¹), ratF E b (d₂ * u₂⁻¹)) = δ at h ⊢
    rw [(thP E a b).map_mul γ y, show (γ * y)⁻¹ * δ * (thP E a b γ * thP E a b y) =
      y⁻¹ * (γ⁻¹ * (δ * thP E a b γ)) * thP E a b y by group, ← h]
    group
  obtain ⟨U, hUo, hUinv⟩ := hFL E hU a b S φ₁ φ₂ hφ₁ hφ₂
  have hF₂U : ∀ u ∈ U, ∀ y, F₂ (y * u) = F₂ y := by
    intro u hu y
    simp only [F₂, orbFn]
    rw [← hUinv u hu (y⁻¹ * (ratF E a (d₁ * u₁⁻¹), ratF E b (d₂ * u₂⁻¹)) * thP E a b y)]
    congr 1
    generalize (ratF E a (d₁ * u₁⁻¹), ratF E b (d₂ * u₂⁻¹)) = δ
    rw [(thP E a b).map_mul y u]
    group
  obtain ⟨hfin, hstab, hdc⟩ :=
    hFH E hU a b S hS φ₁ φ₂ hφ₁ hφ₂ (d₁ * u₁⁻¹) (d₂ * u₂⁻¹) (hP₁.1 hd₁) (hP₂.1 hd₂)
  have hQ := hQS (GA E a × GA E b) (Gi E a b) (Gf E a b) (μ₁.prod μ₂) α β e' (map_continuous e).measurable hmap
    ((ratCent d₁).prod (ratCent d₂)) (gam (d₁ * u₁⁻¹) (d₂ * u₂⁻¹)) ((Kf E a).prod (Kf E b)) U hΓ hinj hKo hKc hUo
    F₁ F₂ hF₁m hF₁i hF₁inv hF₂inv hF₂U hfin hstab
  have hEq : orbTerm2 μ₁ μ₂ (adel S u₁ u₂ ψ φ₁ φ₂) d₁ d₂ = quotIntegral (μ₁.prod μ₂) ((ratCent d₁).prod (ratCent d₂))
      Measure.count (fun x => F₁ (e' x).1 * F₂ (e' x).2) := by
    unfold orbTerm2
    congr 1
    funext x
    rw [hAE E a b S u₁ u₂ hu₁ hu₂ ψ φ₁ φ₂ d₁ d₂ x, he' x]
  have hI : ∫ x, F₁ x ∂α = ∏ v, (val v * starRingEnd ℂ (chAt (l₁ v) ((polE (d₁ * u₁⁻¹)).map v.embedding)) *
      starRingEnd ℂ (chAt (l₂ v) ((polE (d₂ * u₂⁻¹)).map v.embedding))) := by
    rw [integral_fintype_prod_eq_prod]
    refine Finset.prod_congr rfl fun v _ => ?_
    rw [(hLef v).2.2 _ _ ((hPv₁ v).2 hd₁) ((hPv₂ v).2 hd₂), (hPv₁ v).1, (hPv₂ v).1]
  rw [hEq, hQ, hI, hdc, Finset.prod_mul_distrib, Finset.prod_mul_distrib]
  simp only [chW]
  ring

end PositivityTheory.Rg.BcB.G8

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PTermOf =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PWeylAt =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PWeylAt", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\npublic import ReciprocityTheory.ReductiveGroups.SymplecticTraces.WeylCharacters.AltBranchStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceDualWeylModuleInvRationalPointEqConjCharAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.SymplecticTraces.WeylCharacters.AntitoneOfMemInterl\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix Polynomial
open GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical

namespace PositivityTheory.Rg.BcB.G8

theorem weylat_weylChar_eq_gtChar {n : ℕ} (l : DomWeight n) (γ : Fin n → ℂ) (h0 : ∀ i, γ i ≠ 0)
    (hinj : Function.Injective γ) :
    PositivityTheory.RgBcC.weylChar l.w γ = ReciprocityTheory.ChartRestriction.TR.Weyl.gtChar n l.w γ := by
  have hA : (Matrix.of fun i j : Fin n => γ i ^ (l.w j + ((n - 1 - (j : ℕ) : ℕ) : ℤ))).det =
      ReciprocityTheory.ChartRestriction.TR.Weyl.alt n (l.w + ReciprocityTheory.ChartRestriction.TR.Weyl.delta n) γ := by
    unfold ReciprocityTheory.ChartRestriction.TR.Weyl.alt
    congr 1
    ext i j
    simp only [Matrix.of_apply, Pi.add_apply, ReciprocityTheory.ChartRestriction.TR.Weyl.delta]
    congr 1
    have := j.isLt
    omega
  have hV : (Matrix.of fun i j : Fin n => γ i ^ (n - 1 - (j : ℕ))).det =
      ReciprocityTheory.ChartRestriction.TR.Weyl.alt n (0 + ReciprocityTheory.ChartRestriction.TR.Weyl.delta n) γ := by
    unfold ReciprocityTheory.ChartRestriction.TR.Weyl.alt
    congr 1
    ext i j
    simp only [Matrix.of_apply, Pi.add_apply, Pi.zero_apply, zero_add, ReciprocityTheory.ChartRestriction.TR.Weyl.delta]
    rw [← zpow_natCast]
    congr 1
    have := j.isLt
    omega
  have h1 := ReciprocityTheory.ChartRestriction.TR.Weyl.weylGT ℂ n l.w l.anti γ h0
  have h2 := ReciprocityTheory.ChartRestriction.TR.Weyl.weylGT ℂ n 0 antitone_const γ h0
  have hzero : ∀ (m : ℕ) (t : Fin m → ℂ), ReciprocityTheory.ChartRestriction.TR.Weyl.gtChar m 0 t = 1 := by
    intro m
    induction m with
    | zero => intro t; simp [ReciprocityTheory.ChartRestriction.TR.Weyl.gtChar]
    | succ m ih =>
      intro t
      have h : ReciprocityTheory.ChartRestriction.TR.Weyl.interl (0 : Fin (m + 1) → ℤ) = {(0 : Fin m → ℤ)} := by
        ext mu
        simp only [ReciprocityTheory.ChartRestriction.TR.Weyl.interl, Fintype.mem_piFinset,
          Pi.zero_apply, Finset.Icc_self, Finset.mem_singleton]
        exact ⟨fun h => funext h, fun h i => congrFun h i⟩
      rw [ReciprocityTheory.ChartRestriction.TR.Weyl.gtChar, h, Finset.sum_singleton, ih]
      simp [ReciprocityTheory.ChartRestriction.TR.Weyl.wsum]
  rw [hzero, mul_one] at h2
  have hw : ReciprocityTheory.ChartRestriction.TR.Weyl.wden n γ ≠ 0 := by
    unfold ReciprocityTheory.ChartRestriction.TR.Weyl.wden
    refine Finset.prod_ne_zero_iff.2 fun i _ => Finset.prod_ne_zero_iff.2 fun j _ => ?_
    split_ifs with h
    · exact sub_ne_zero.2 fun e => (ne_of_lt h) (hinj e)
    · exact one_ne_zero
  unfold PositivityTheory.RgBcC.weylChar
  rw [hA, hV, ← h1, ← h2, mul_div_cancel_left₀ _ hw]

theorem weylAt_holds : WeylAt := by
  intro n l γ h0 hinj
  let D : GL (Fin n) ℂ := Formalism.BasicNotions.diagGL ℂ n fun i => Units.mk0 _ (h0 i)
  have hD : (D : Matrix (Fin n) (Fin n) ℂ) = diagonal γ := by
    change diagonal (fun a => ((Units.mk0 _ (h0 a) : ℂˣ) : ℂ)) = _
    simp only [Units.val_mk0]
  have hex : ∃ g : GL (Fin n) ℂ, g.val.charpoly = (diagonal γ).charpoly := ⟨D, by rw [hD]⟩
  unfold chAt
  rw [dite_eq_left hex, GlobalTheory.ContraChar.trace_sqRep_eq_of_charpoly_eq l _ D (hex.choose_spec.trans (by rw [hD])),
    GlobalTheory.ContraChar.trace_sqRep_diag l D γ hD, weylat_weylChar_eq_gtChar l γ h0 hinj]

end PositivityTheory.Rg.BcB.G8

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PWeylAt =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfFiniteInputs =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfFiniteInputs", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfInputs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousCoordinate\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfRightInvariant\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CountIsInvInvariant\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqSign\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsEigenbasis\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsScalarOfCentral\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HaarSplit\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsCompactOfBounded\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsLocallyConstantOfRightInv\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsRegEllIffMemEll\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapPFinThetaGL\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemRatCentTwConj\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NontrivialFiniteAdeles\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormaliserUnconj\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrbitPreimageEq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableGL\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableUnits\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwConjugateEquivalence\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfHolds\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PTermOf\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.PWeylAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.Rg.BcB.G8

open GlobalTheory.CompanionTheory

theorem translation_existence_holds : TranslEx := LocalThetaTranslation.translEx

theorem lefschetz_pair_holds : LefPair := GlobalTheory.CompanionTheory.LefPair.lefPairOf EllipticTwist.ellDiag weylAt_holds LocalThetaTopology.topo

theorem global_character_of_finite_inputs (hK : KfOC) (hL : FinLevel) (hF : FinHalf) : G4 :=
  have hA : AdelEq := AdelEqProof.adelEqOf TranslAdele.translAd
  global_character_of_holds
    (termOf_holds (QSplitPf.qSplitOf QuotNorm.qIndep) HaarProd.haarSplit LocalThetaTopology.topo CompIsoProof.compIso hK hL hF hA
      TwistCent.centEq NormPoly.polEq (EllProp.ellProperOf EllipticTwist.ellDiag DiagProperProof.diagProper LocalThetaTopology.topo))
    (GlobalTheory.CompanionTheory.OrbInv.orbInvOf (QConjug.qConjOf_holds QuotNorm.qIndep) LocalThetaTopology.topo)
    (GlobalTheory.CompanionTheory.AdelCont.adelContOf hA hL CompIsoProof.compIso LocalThetaTopology.topo) GlobalTheory.CompanionTheory.ClassBij.classBij NormPoly.polEq

end PositivityTheory.Rg.BcB.G8
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaNormCommutation.LocalComparisonSplitting.GlobalCharacterOfFiniteInputs =====
