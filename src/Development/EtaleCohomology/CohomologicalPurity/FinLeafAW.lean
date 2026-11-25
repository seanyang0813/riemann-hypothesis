module

public import Development.EtaleCohomology.EtaleSheaves.LeafTwPairExistsPf
public import Mathlib.Algebra.Homology.HomotopyCategory.KInjective
public import Mathlib.Algebra.Homology.DerivedCategory.KInjective
public import Development.EtaleCohomology.TateTwists.EtaleTensorPairTwistResolutionMul
public import Development.EtaleCohomology.TateTwists.EtaleShortComplexExactIffLocallySurjectiveOnKern
public import Mathlib.CategoryTheory.Sites.EpiMono
public import Development.EtaleCohomology.TateTwists.EtaleTensorUniversalPropertyOfDegreewise
public import Development.EtaleCohomology.CohomologicalPurity.LeafIndExc
public import Development.EtaleCohomology.EtaleSheaves.CupProductRingLaws
public import Development.EtaleCohomology.TateTwists.EtaleTateTwistSectionsLocallyGenerated
public import Development.EtaleCohomology.TateTwists.EtaleTateTwistSingletonTensorGenMul
public import Development.EtaleCohomology.TateTwists.EtaleTensorPairQuasiIsoOfFlatQuasiIso
public import Development.EtaleCohomology.EtaleSheaves.LeafTwTensExPf
public import Development.EtaleCohomology.KummerTheory.CupAWCut
public import Development.EtaleCohomology.TateTwists.ColumnOf
public import Development.EtaleCohomology.TateTwists.EtaleCupProductFlipExistsOfComponents
public import Development.EtaleCohomology.TateTwists.EtaleRootsOfUnityTwistFlatOfLocalFree
public import Development.EtaleCohomology.TateTwists.EtaleSectionsGlueOverCoverOfComponents
public import Development.EtaleCohomology.TateTwists.EtaleSheafMonoEpiIffSectionsOfSeparation
public import Development.EtaleCohomology.TateTwists.EtaleTateTwistGeneratorMapInjectiveOfSectionsGlu
public import Development.EtaleCohomology.TateTwists.EtaleTateTwistLocalGenerationAndRootCompatOfPart
public import Development.EtaleCohomology.TateTwists.EtaleTateTwistMultiplicationGeneratorMapOfSectio
public import Development.EtaleCohomology.TateTwists.EtaleTateTwistMultiplicationTensorExistsOfComple
public import Development.EtaleCohomology.TateTwists.EtaleTensorProductSheafExistsOfComponents
public import Development.EtaleCohomology.TateTwists.EtaleTorsionCohomologyLocalizationBasic
public import Development.EtaleCohomology.TateTwists.EtaleTwistedResolutionExistsOfFlatSections
public import Development.EtaleCohomology.TateTwists.TtResSidePf
public import Development.EtaleCohomology.TateTwists.TtTwistSidePf
public import Development.EtaleCohomology.TateTwists.acycIffPf
public import Development.EtaleCohomology.TateTwists.conePf
public import Development.EtaleCohomology.TateTwists.EtaleTensorTwistedResolutionOfExistenceBoundAndS
public import Development.EtaleCohomology.CohomologicalPurity.LeafAWCutTw
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Development.EtaleCohomology.TateTwists.EtaleComplexAcyclicIffLocalExactness

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafTwPairExistsPfExt, Development.EtaleCohomology.EtaleSheaves.LeafTwTensResPf, Development.EtaleCohomology.TateTwists.EtaleShortComplexExactIffLocallySurjectiveOnKernel, Development.EtaleCohomology.TateTwists.EtaleTensorPairingDegreewiseUniversalOfSheafific, Development.EtaleCohomology.TateTwists.EtaleTensorComplexUniversalOfDegreewise, Development.EtaleCohomology.CohomologicalPurity.LeafAWCut, Development.EtaleCohomology.CohomologicalPurity.LeafAWCutFin, Development.EtaleCohomology.CohomologicalPurity.FinLeafAW

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwPairExistsPfExt =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafTwPairExistsPfExt", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwPairExistsPf\npublic import Mathlib.Algebra.Homology.HomotopyCategory.KInjective\npublic import Mathlib.Algebra.Homology.DerivedCategory.KInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.E.LeafTwPairExistsPf

variable (q : ℕ) (k : ℤ)

instance resKInj : (res (ZMod q) (tw q k)).IsKInjective := by
  unfold res InjectiveResolution.cochainComplex
  infer_instance

theorem ext_homotopy {S T L : Cx (ZMod q)} (ε : S ⟶ T) [QuasiIso ε] (a : S ⟶ L) [L.IsKInjective] :
    ∃ u : T ⟶ L, Nonempty (Homotopy (ε ≫ u) a) := by
  let _ := HasDerivedCategory.standard (Shv (ZMod q))
  let Φ := DerivedCategory.quotientCompQhIso (Shv (ZMod q))
  obtain ⟨g, hg⟩ := (IsKInjective.Qh_map_bijective ((HomotopyCategory.quotient _ _).obj T) L).2
    (Φ.hom.app T ≫ inv (DerivedCategory.Q.map ε) ≫ DerivedCategory.Q.map a ≫ Φ.inv.app L)
  obtain ⟨u, rfl⟩ := (HomotopyCategory.quotient _ _).map_surjective g
  refine ⟨u, ⟨HomotopyCategory.homotopyOfEq _ _ ?_⟩⟩
  apply (IsKInjective.Qh_map_bijective ((HomotopyCategory.quotient _ _).obj S) L).1
  have nat : ∀ {X Y : Cx (ZMod q)} (f : X ⟶ Y), DerivedCategory.Qh.map ((HomotopyCategory.quotient _ _).map f) =
      Φ.hom.app X ≫ DerivedCategory.Q.map f ≫ Φ.inv.app Y := by
    intro X Y f
    have := Φ.hom.naturality f
    simp only [Functor.comp_map] at this
    rw [← Category.assoc, ← this]
    simp
  change DerivedCategory.Qh.map ((HomotopyCategory.quotient _ _).map (ε ≫ u)) = _
  rw [Functor.map_comp, Functor.map_comp, hg, nat ε, nat a]
  simp only [Category.assoc, Iso.inv_hom_id_app_assoc, IsIso.hom_inv_id_assoc]

theorem leafTwResExt : LeafTwResExt := by
  intro q _ k T e ⟨_, ε, hε, he⟩
  obtain ⟨u, ⟨H⟩⟩ := ext_homotopy q (ε := ε) (a := resAug (tw q k))
  refine ⟨u, fun U ζ => ?_⟩
  have h0 : ε.f 0 ≫ u.f 0 = (resAug (tw q k)).f 0 := by
    have hc := H.comm 0
    rw [dNext_eq _ (show (ComplexShape.up ℤ).Rel 0 1 by simp),
      prevD_eq _ (show (ComplexShape.up ℤ).Rel (-1) 0 by simp)] at hc
    have z1 : IsZero ((sgl (tw q k)).X 1) := HomologicalComplex.isZero_single_obj_X _ _ _ _ (by simp)
    have z2 : IsZero ((res (ZMod q) (tw q k)).X (-1)) := by
      unfold res InjectiveResolution.cochainComplex
      exact HomologicalComplex.isZero_extend_X _ _ _ (by
        intro n hn
        change ((n : ℕ) : ℤ) = -1 at hn
        omega)
    have e1 : H.hom 1 0 = 0 := z1.eq_of_src _ _
    have e2 : H.hom 0 (-1) = 0 := z2.eq_of_tgt _ _
    rw [e1, e2] at hc
    simpa using hc
  rw [← he U ζ, map_map, map_map, h0]
  rfl

theorem LeafTwPairExists_of' (h1 : LeafTwTensEx) (h2 : LeafTwTensRes) : LateralTheory.E.CupProductRingLaws.LeafTwPairExists :=
  LeafTwPairExists_of h1 h2 leafTwResExt

end LateralTheory.E.LeafTwPairExistsPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwPairExistsPfExt =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwTensResPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafTwTensResPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwPairExistsPf\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorPairTwistResolutionMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.E.LeafTwTensResPf

def LeafTensTwres : Prop := LateralTheory.EtaleFoundations.EtaleTensorPairTwistResolutionMul

def LeafResFlat : Prop := ∀ (q : ℕ) [NeZero q] (j t : ℤ), FlatS ((res (ZMod q) (tw q j)).X t)

instance resGE (q : ℕ) (i : ℤ) : (res (ZMod q) (tw q i)).IsStrictlyGE 0 := by
  unfold res InjectiveResolution.cochainComplex
  infer_instance

theorem res_isTwRes (q : ℕ) [NeZero q] (i : ℤ) :
    IsTwRes q i (res (ZMod q) (tw q i)) (fun _ ζ => resGen i ζ) := by
  refine ⟨resGE q i, resAug (tw q i), ?_, fun U ζ => ?_⟩
  · unfold resAug
    exact (inferInstance : QuasiIso (injectiveResolution (tw q i)).ι')
  · simp only [resGen, resι, sglι, Sec.map]
    rfl

theorem leafTwTensRes_of (h1 : LeafTensTwres) (h2 : LeafResFlat) : LateralTheory.E.LeafTwPairExistsPf.LeafTwTensRes := by
  intro q _ i j T τ hτ
  exact h1 q i j (i + j) rfl (fun _ ζ => resGen i ζ) (fun _ ζ => resGen j ζ) (res_isTwRes q i) (res_isTwRes q j) (h2 q j) τ hτ

end LateralTheory.E.LeafTwTensResPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwTensResPf =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleShortComplexExactIffLocallySurjectiveOnKernel =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleShortComplexExactIffLocallySurjectiveOnKernel", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleShortComplexExactIffLocallySurjectiveOnKern\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Sites.EpiMono\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

noncomputable section
namespace LateralTheory.EtaleFoundations

abbrev secF (R : Type) [CommRing R] (U : Scheme.{0}) : Shv R ⥤ Type 1 :=
  sheafToPresheaf Scheme.etaleTopology.{0} (ModuleCat.{1} (ULift.{1} R)) ⋙ (evaluation _ _).obj (op U) ⋙ forget _

end LateralTheory.EtaleFoundations
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleShortComplexExactIffLocallySurjectiveOnKernel =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleTensorPairingDegreewiseUniversalOfSheafific =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleTensorPairingDegreewiseUniversalOfSheafific", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorUniversalPropertyOfDegreewise\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex GlobalTheory.EtC
open scoped DirectSum TensorProduct

namespace LateralTheory.EtaleFoundations.TensUnivDeg

variable {R : Type} [CommRing R]

theorem tens_ind {I J : Cx R} (V : Scheme.{0}) (w : ℤ) (P : Tens I J V w → Prop) (h0 : P 0)
    (hadd : ∀ a b, P a → P b → P (a + b))
    (hm : ∀ (p : {p : ℤ × ℤ // p.1 + p.2 = w}) (a : Sec (I.X p.1.1) V) (b : Sec (J.X p.1.2) V),
      P (DirectSum.lof (ULift.{1} R) _ (fun p : {p : ℤ × ℤ // p.1 + p.2 = w} =>
        (Sec (I.X p.1.1) V ⊗[ULift.{1} R] Sec (J.X p.1.2) V)) p (a ⊗ₜ b)))
    (x : Tens I J V w) : P x := by
  classical
  induction x using DirectSum.induction_on with
  | zero => exact h0
  | of p t =>
    rw [← DirectSum.lof_eq_of (ULift.{1} R)]
    induction t using TensorProduct.induction_on with
    | zero => simpa using h0
    | tmul a b => exact hm p a b
    | add a b ha hb => rw [map_add (f := _)]; exact hadd _ _ ha hb
  | add a b ha hb => exact hadd _ _ ha hb

theorem res_lof {I J : Cx R} {V U : Scheme.{0}} (g : V ⟶ U) (w : ℤ) (p : {p : ℤ × ℤ // p.1 + p.2 = w})
    (a : Sec (I.X p.1.1) U) (b : Sec (J.X p.1.2) U) :
    Tens.res g w (DirectSum.lof (ULift.{1} R) _ (fun p : {p : ℤ × ℤ // p.1 + p.2 = w} =>
        (Sec (I.X p.1.1) U ⊗[ULift.{1} R] Sec (J.X p.1.2) U)) p (a ⊗ₜ b)) =
      DirectSum.lof (ULift.{1} R) _ (fun p : {p : ℤ × ℤ // p.1 + p.2 = w} =>
        (Sec (I.X p.1.1) V ⊗[ULift.{1} R] Sec (J.X p.1.2) V)) p (Sec.res g a ⊗ₜ Sec.res g b) := by
  classical
  simp [Tens.res, Sec.res]

theorem lift_lof {I J K : Cx R} (μ : Pair I J K) (U : Scheme.{0}) (w : ℤ) (p : {p : ℤ × ℤ // p.1 + p.2 = w})
    (a : Sec (I.X p.1.1) U) (b : Sec (J.X p.1.2) U) :
    μ.lift U w (DirectSum.lof (ULift.{1} R) _ (fun p : {p : ℤ × ℤ // p.1 + p.2 = w} =>
        (Sec (I.X p.1.1) U ⊗[ULift.{1} R] Sec (J.X p.1.2) U)) p (a ⊗ₜ b)) = μ.mul U p.1.1 p.1.2 w p.2 a b := by
  classical
  simp [Pair.lift]

def Tmap {I J I' J' : Cx R} (f : I ⟶ I') (g : J ⟶ J') (U : Scheme.{0}) (w : ℤ) :
    Tens I J U w →ₗ[ULift.{1} R] Tens I' J' U w :=
  DirectSum.lmap fun p => TensorProduct.map ((f.f p.1.1).hom.app (op U)).hom ((g.f p.1.2).hom.app (op U)).hom

theorem tmap_lof {I J I' J' : Cx R} (f : I ⟶ I') (g : J ⟶ J') (U : Scheme.{0}) (w : ℤ)
    (p : {p : ℤ × ℤ // p.1 + p.2 = w}) (a : Sec (I.X p.1.1) U) (b : Sec (J.X p.1.2) U) :
    Tmap f g U w (DirectSum.lof (ULift.{1} R) _ (fun p : {p : ℤ × ℤ // p.1 + p.2 = w} =>
        (Sec (I.X p.1.1) U ⊗[ULift.{1} R] Sec (J.X p.1.2) U)) p (a ⊗ₜ b)) =
      DirectSum.lof (ULift.{1} R) _ (fun p : {p : ℤ × ℤ // p.1 + p.2 = w} =>
        (Sec (I'.X p.1.1) U ⊗[ULift.{1} R] Sec (J'.X p.1.2) U)) p (Sec.map (f.f p.1.1) a ⊗ₜ Sec.map (g.f p.1.2) b) := by
  classical
  simp [Tmap, Sec.map]

def TP (I J : Cx R) (w : ℤ) : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} R) where
  obj U := ModuleCat.of _ (Tens I J U.unop w)
  map g := ModuleCat.ofHom (Tens.res g.unop w)
  map_id U := by
    refine ModuleCat.hom_ext (LinearMap.ext fun x => ?_)
    refine tens_ind U.unop w (fun x => Tens.res (𝟙 U.unop) w x = x) (by simp) (fun a b ha hb => ?_) (fun p a b => ?_) x
    · rw [map_add (f := _), ha, hb]
    · rw [res_lof]; simp [Sec.res]
  map_comp g h := by
    refine ModuleCat.hom_ext (LinearMap.ext fun x => ?_)
    refine tens_ind _ w (fun x => Tens.res (g ≫ h).unop w x = Tens.res h.unop w (Tens.res g.unop w x))
      (by simp) (fun a b ha hb => ?_) (fun p a b => ?_) x
    · rw [map_add (f := _), ha, hb, map_add (f := _), map_add (f := _)]
    · rw [res_lof, res_lof, res_lof]; simp [Sec.res]

def alpha {I J K : Cx R} (τ : Pair I J K) (w : ℤ) : TP I J w ⟶ (K.X w).obj where
  app U := ModuleCat.ofHom (τ.lift U.unop w)
  naturality U V g := by
    refine ModuleCat.hom_ext (LinearMap.ext fun x => ?_)
    refine tens_ind U.unop w (fun x => τ.lift V.unop w (Tens.res g.unop w x) = Sec.res g.unop (τ.lift U.unop w x))
      (by simp) (fun a b ha hb => ?_) (fun p a b => ?_) x
    · simp only [map_add (f := _), ha, hb]
    · rw [res_lof, lift_lof, lift_lof, τ.nat]

def beta {I J I' J' K' : Cx R} (ν : Pair I' J' K') (f : I ⟶ I') (g : J ⟶ J') (w : ℤ) : TP I J w ⟶ (K'.X w).obj where
  app U := ModuleCat.ofHom (ν.lift U.unop w ∘ₗ Tmap f g U.unop w)
  naturality U V e := by
    refine ModuleCat.hom_ext (LinearMap.ext fun x => ?_)
    refine tens_ind U.unop w (fun x => ν.lift V.unop w (Tmap f g V.unop w (Tens.res e.unop w x)) =
        Sec.res e.unop (ν.lift U.unop w (Tmap f g U.unop w x)))
      (by simp) (fun a b ha hb => ?_) (fun p a b => ?_) x
    · simp only [map_add (f := _), ha, hb]
    · rw [res_lof, tmap_lof, tmap_lof, lift_lof, lift_lof, ν.nat, TensUnivPf.nat_sec, TensUnivPf.nat_sec]

theorem alpha_locSurj {I J K : Cx R} (τ : Pair I J K) (hτ : τ.IsTensor) (w : ℤ) :
    Presheaf.IsLocallySurjective Scheme.etaleTopology (alpha τ w) where
  imageSieve_mem {U} y := by
    obtain ⟨S, hS, hh⟩ := hτ.1 U w y
    refine Scheme.etaleTopology.superset_covering (fun V g hg => ?_) hS
    obtain ⟨x, hx⟩ := hh V g hg
    exact ⟨x, hx⟩

theorem etale_tensor_pairing_lift_eq_locally_res_eq {I J K : Cx R} (τ : Pair I J K) (hτ : τ.IsTensor) (w : ℤ) {U : Scheme.{0}}
    (x y : Tens I J U w) (h : τ.lift U w x = τ.lift U w y) :
    Loc U fun _ g => Tens.res g w x = Tens.res g w y := by
  obtain ⟨S, hS, hh⟩ := hτ.2 U w (x - y) (by rw [map_sub, h, sub_self])
  exact ⟨S, hS, fun V g hg => sub_eq_zero.1 (by rw [← map_sub]; exact hh V g hg)⟩

theorem alpha_locInj {I J K : Cx R} (τ : Pair I J K) (hτ : τ.IsTensor) (w : ℤ) :
    Presheaf.IsLocallyInjective Scheme.etaleTopology (alpha τ w) where
  equalizerSieve_mem {U} x y h := by
    obtain ⟨S, hS, hh⟩ := etale_tensor_pairing_lift_eq_locally_res_eq τ hτ w x y h
    exact Scheme.etaleTopology.superset_covering (fun V g hg => hh V g hg) hS

end LateralTheory.EtaleFoundations.TensUnivDeg

open LateralTheory.EtaleFoundations.TensUnivDeg in
theorem LateralTheory.EtaleFoundations.etale_tensor_pairing_degreewise_universal_of_sheafification : LateralTheory.EtaleFoundations.EtaleTensorDegreewiseMapExists := by
  intro R _ I J K τ hτ I' J' K' ν f g w
  have := alpha_locSurj τ hτ w
  have := alpha_locInj τ hτ w
  have hW : Scheme.etaleTopology.W (alpha τ w) := GrothendieckTopology.W_of_isLocallyBijective _ _
  obtain ⟨m, hm⟩ := (hW (K'.X w).obj (K'.X w).property).2 (beta ν f g w)
  refine ⟨⟨m⟩, fun U s t h a b => ?_⟩
  have e := congrArg (fun φ : TP I J w ⟶ (K'.X w).obj => (φ.app (op U)).hom
    (DirectSum.lof (ULift.{1} R) _ (fun p : {p : ℤ × ℤ // p.1 + p.2 = w} =>
        (Sec (I.X p.1.1) U ⊗[ULift.{1} R] Sec (J.X p.1.2) U)) ⟨(s, t), h⟩ (a ⊗ₜ b))) hm
  simp only [NatTrans.comp_app, ModuleCat.hom_comp] at e
  change Sec.map ⟨m⟩ (τ.lift U w _) = (ν.lift U w ∘ₗ Tmap f g U w) _ at e
  rw [lift_lof, LinearMap.comp_apply, tmap_lof, lift_lof] at e
  exact e
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleTensorPairingDegreewiseUniversalOfSheafific =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleTensorComplexUniversalOfDegreewise =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleTensorComplexUniversalOfDegreewise", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorUniversalPropertyOfDegreewise\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorPairingDegreewiseUniversalOfSheafific\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.EtaleTensorPairUniversalProperty
theorem etale_tensor_complex_universal_of_degreewise : LateralTheory.EtaleFoundations.EtaleTensorPairUniversalProperty := by
  apply LateralTheory.EtaleFoundations.etale_tensor_universal_property_of_degreewise <;> first | exact _root_.LateralTheory.EtaleFoundations.etale_tensor_pairing_degreewise_universal_of_sheafification
alias intersectionNumber_baseChange := _root_.LateralTheory.Fin.EtaleTensorPairUniversalProperty.etale_tensor_complex_universal_of_degreewise
end LateralTheory.Fin.EtaleTensorPairUniversalProperty
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleTensorComplexUniversalOfDegreewise =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafAWCut =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafAWCut", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafIndExc\npublic import Development.EtaleCohomology.EtaleSheaves.CupProductRingLaws\npublic import Development.EtaleCohomology.TateTwists.EtaleTateTwistSectionsLocallyGenerated\npublic import Development.EtaleCohomology.TateTwists.EtaleTateTwistSingletonTensorGenMul\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorPairQuasiIsoOfFlatQuasiIso\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwPairExistsPfExt\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwTensExPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwTensResPf\npublic import Development.EtaleCohomology.KummerTheory.CupAWCut\npublic import Development.EtaleCohomology.TateTwists.ColumnOf\npublic import Development.EtaleCohomology.TateTwists.EtaleCupProductFlipExistsOfComponents\npublic import Development.EtaleCohomology.TateTwists.EtaleRootsOfUnityTwistFlatOfLocalFree\npublic import Development.EtaleCohomology.TateTwists.EtaleSectionsGlueOverCoverOfComponents\npublic import Development.EtaleCohomology.TateTwists.EtaleSheafMonoEpiIffSectionsOfSeparation\npublic import Development.EtaleCohomology.TateTwists.EtaleShortComplexExactIffLocallySurjectiveOnKernel\npublic import Development.EtaleCohomology.TateTwists.EtaleTateTwistGeneratorMapInjectiveOfSectionsGlu\npublic import Development.EtaleCohomology.TateTwists.EtaleTateTwistLocalGenerationAndRootCompatOfPart\npublic import Development.EtaleCohomology.TateTwists.EtaleTateTwistMultiplicationGeneratorMapOfSectio\npublic import Development.EtaleCohomology.TateTwists.EtaleTateTwistMultiplicationTensorExistsOfComple\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorComplexUniversalOfDegreewise\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorProductSheafExistsOfComponents\npublic import Development.EtaleCohomology.TateTwists.EtaleTorsionCohomologyLocalizationBasic\npublic import Development.EtaleCohomology.TateTwists.EtaleTwistedResolutionExistsOfFlatSections\npublic import Development.EtaleCohomology.TateTwists.TtResSidePf\npublic import Development.EtaleCohomology.TateTwists.TtTwistSidePf\npublic import Development.EtaleCohomology.TateTwists.acycIffPf\npublic import Development.EtaleCohomology.TateTwists.conePf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorTwistedResolutionOfExistenceBoundAndS\nimport Development.EtaleCohomology.TateTwists.EtaleComplexAcyclicIffLocalExactness\npublic import Development.EtaleCohomology.TateTwists.EtaleShortComplexExactIffLocallySurjectiveOnKern\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC LateralTheory.EtaleFoundations

namespace LateralTheory.CohomologicalPurity.LeafAWCut

def LeafTwSec : Prop := EtaleTateTwistSectionsLocallyGenerated

theorem of_pair (h : LateralTheory.E.CupProductRingLaws.LeafTwPairExists) : LateralTheory.CohomologicalPurity.LeafAW := by
  intro q _ i j
  exact ⟨pick_spec (h q i j), fun E n m α β => LateralTheory.KummerTheory.CupAW_of (ZMod q) (twPair q i j) E rfl α β⟩

theorem tensQis : EtaleTensorPairQuasiIsoOfFlatQuasiIso :=
  LateralTheory.Fin.EtaleTensorPairQuasiIsoOfFlatQuasiIso.etale_tensor_quasiIso_of_acyclic_cone

theorem pair_of (hq : EtaleTensorPairQuasiIsoOfFlatQuasiIso) (hm : EtaleTateTwistSingletonTensorGenMul) : LateralTheory.E.CupProductRingLaws.LeafTwPairExists :=
  LateralTheory.E.LeafTwPairExistsPf.LeafTwPairExists_of' LateralTheory.E.LeafTwTensExPf.LeafTwTensEx_of
    (LateralTheory.E.LeafTwTensResPf.leafTwTensRes_of
      (etale_tensor_twisted_resolution_of_existence_bound_and_sides LateralTheory.Fin.EtaleComplexTensorPairingExists.intersectionNumber_baseChange
        (fun R _ _ _ _ μ hI hJ hμ => (LateralTheory.Fin.EtaleTensorPairUniversalProperty.intersectionNumber_baseChange R μ hμ).2.1 hI hJ)
        (tt_twist_side_of hm LateralTheory.Fin.EtaleTateTwistSheafFlat.intersectionNumber_baseChange LateralTheory.Fin.EtaleComplexPairingFlipExists.intersectionNumber_baseChange hq)
        (tt_res_side_of LateralTheory.Fin.EtaleTensorPairUniversalProperty.intersectionNumber_baseChange hq))
      (fun q _ j t => (LateralTheory.Fin.EtaleTwistResolutionUniversalExtension.intersectionNumber_baseChange q j).2.1 t))

theorem twMul (hT : LeafTwSec) : EtaleTateTwistSingletonTensorGenMul :=
  etale_tate_twist_tensor_iso_of_generator_map_iso (etale_tate_twist_multiplication_tensor_exists_of_complex_tensor_exists LateralTheory.Fin.EtaleComplexTensorPairingExists.intersectionNumber_baseChange) (etale_tate_twist_multiplication_generator_map_of_section_description hT)
    (etale_tate_twist_generator_map_isIso_of_inj_surj etale_sheaf_mono_epi_iff_sections_of_separation
      (etale_tate_twist_generator_map_surjective_of_local_and_root (fun q _ i => (hT q i).1)
        (fun q _ j => ⟨(hT q j).2.2.2.1, fun U ζ ξ => (hT q j).2.1 U ζ (twGen j ξ)⟩))
      (etale_tate_twist_generator_map_injective_of_sections_glue hT LateralTheory.Fin.EtaleLocalPropertyBasicClosure.intersectionNumber_baseChange LateralTheory.Fin.EtaleSheafSectionsSeparatedAndGlue.intersectionNumber_baseChange))

theorem goal_of (h2 : LeafTwSec) : LateralTheory.CohomologicalPurity.LeafAW :=
  of_pair (pair_of tensQis (twMul h2))

end LateralTheory.CohomologicalPurity.LeafAWCut
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafAWCut =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafAWCutFin =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafAWCutFin", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafIndExc\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafAWCut\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafAWCutTw\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

theorem LateralTheory.CohomologicalPurity.LeafAWCut.LeafAW_of : LateralTheory.CohomologicalPurity.LeafAW :=
  LateralTheory.CohomologicalPurity.LeafAWCut.goal_of LateralTheory.CohomologicalPurity.LeafAWCutTw.twSec
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafAWCutFin =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.FinLeafAW =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.FinLeafAW", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafIndExc\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafAWCutFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.LeafAW
alias intersectionNumber_baseChange := _root_.LateralTheory.CohomologicalPurity.LeafAWCut.LeafAW_of
end LateralTheory.Fin.LeafAW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.FinLeafAW =====
