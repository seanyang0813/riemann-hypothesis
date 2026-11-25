module

public import Mathlib.Algebra.Category.ModuleCat.Adjunctions
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul
import Development.EtaleCohomology.EtaleTrace.LDblPf
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleTrace.LTwoEpiPf, Development.EtaleCohomology.EtaleTrace.LocalSplitting.Cover2

-- ===== clump member: Development.EtaleCohomology.EtaleTrace.LTwoEpiPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleTrace.LTwoEpiPf", "h": "module\n\npublic import Mathlib.Algebra.Category.ModuleCat.Adjunctions\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.EtaleTrace

theorem ltwo_fm (R : Type) [CommRing R] {X Y : Type} (g : X ⟶ Y) (x : X) :
    ((ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map g)).hom
      (ModuleCat.freeMk (X := uliftFunctor.{1}.obj X) (ULift.up x)) =
      ModuleCat.freeMk (X := uliftFunctor.{1}.obj Y) (ULift.up (g x)) :=
  Finsupp.mapDomain_single

end LateralTheory.EtaleTrace
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleTrace.LTwoEpiPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleTrace.LocalSplitting.Cover2 =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleTrace.LocalSplitting.Cover2", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul\nimport Development.EtaleCohomology.EtaleTrace.LDblPf\npublic import Development.EtaleCohomology.EtaleTrace.LTwoEpiPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.EtaleTrace.LSplitPf.Sch

theorem cov {X : Scheme.{0}} (O1 O2 : X.Opens) (hcov : O1 ⊔ O2 = ⊤) :
    Sieve.ofArrows (fun b : Bool => cond b (O1 : Scheme.{0}) O2) (fun b => match b with | true => O1.ι | false => O2.ι) ∈
      Scheme.etaleTopology.{0} X := by
  apply Scheme.zariskiTopology_le_etaleTopology
  have hU : TopologicalSpace.IsOpenCover (fun b : Bool => cond b O1 O2) := by
    show ⨆ b, cond b O1 O2 = ⊤
    rw [iSup_bool_eq]; simpa using hcov
  apply GrothendieckTopology.superset_covering _ ?_ (X.openCoverOfIsOpenCover _ hU).mem_grothendieckTopology
  rw [Sieve.ofArrows, Sieve.generate_le_iff]
  rintro - - ⟨k⟩
  rcases k with (_ | _)
  · exact ⟨_, 𝟙 _, O2.ι, ⟨false⟩, Category.id_comp _⟩
  · exact ⟨_, 𝟙 _, O1.ι, ⟨true⟩, Category.id_comp _⟩

theorem psi (R : Type) [CommRing R] {X : Scheme.{0}} (O1 O2 : X.Opens) (hcov : O1 ⊔ O2 = ⊤) (G : Shv R)
    (ψ : (freeP R).obj (yoneda.obj X) ⟶ G.obj)
    (hi : (freeP R).map (yoneda.map O1.ι) ≫ ψ = 0) (hj : (freeP R).map (yoneda.map O2.ι) ≫ ψ = 0) : ψ = 0 := by
  let s := (ψ.app (op X)).hom (ModuleCat.freeMk (ULift.up (𝟙 X)))
  have nat : ∀ (T : Scheme.{0}) (t : T ⟶ X),
      (ψ.app (op T)).hom (ModuleCat.freeMk (ULift.up t)) = (G.obj.map t.op).hom s := by
    intro T t
    have h := congrArg (fun φ => φ.hom (ModuleCat.freeMk (ULift.up (𝟙 X)))) (ψ.naturality t.op)
    change (ψ.app (op T)).hom (((ModuleCat.free (ULift.{1} R)).map (uliftFunctor.map ((yoneda.obj X).map t.op))).hom
      (ModuleCat.freeMk (ULift.up (𝟙 X)))) = _ at h
    erw [LateralTheory.EtaleTrace.ltwo_fm] at h
    simp at h
    exact h
  have hz : ∀ {Y : Scheme.{0}} (f : Y ⟶ X), (freeP R).map (yoneda.map f) ≫ ψ = 0 → (G.obj.map f.op).hom s = 0 := by
    intro Y f hf
    rw [← nat]
    have h := congrArg (fun φ => (φ.app (op Y)).hom (ModuleCat.freeMk (ULift.up (𝟙 Y)))) hf
    change (ψ.app (op Y)).hom (((ModuleCat.free (ULift.{1} R)).map (uliftFunctor.map ((yoneda.map f).app (op Y)))).hom
      (ModuleCat.freeMk (ULift.up (𝟙 Y)))) = 0 at h
    erw [LateralTheory.EtaleTrace.ltwo_fm] at h
    simpa using h
  have hs : s = 0 := by
    have key : ModuleCat.ofHom (LinearMap.toSpanSingleton (ULift.{1} R) _ s) = 0 := by
      refine Presheaf.IsSheaf.hom_ext_ofArrows G.property _ (cov O1 O2 hcov) (fun b => ?_)
      refine ModuleCat.hom_ext (LinearMap.ext_ring ?_)
      cases b
      · simpa using hz O2.ι hj
      · simpa using hz O1.ι hi
    simpa using congrArg (fun φ => φ.hom 1) key
  refine NatTrans.ext (funext fun T => ModuleCat.free_hom_ext (fun x => ?_))
  obtain ⟨t⟩ := x
  erw [nat T.unop t, hs]
  simp
  rfl

theorem epi (R : Type) [CommRing R] {X : Scheme.{0}} (O1 O2 : X.Opens) (hcov : O1 ⊔ O2 = ⊤) (n) :
    Epi (biprod.desc ((free R).map ((sch.map O1.ι).app n)) ((free R).map ((sch.map O2.ι).app n))) := by
  change Epi (biprod.desc ((free R).map (yoneda.map O1.ι)) ((free R).map (yoneda.map O2.ι)))
  apply Preadditive.epi_of_cancel_zero
  intro G φ hφ
  have h1 : (free R).map (yoneda.map O1.ι) ≫ φ = 0 := by simpa using biprod.inl ≫= hφ
  have h2 : (free R).map (yoneda.map O2.ι) ≫ φ = 0 := by simpa using biprod.inr ≫= hφ
  let J := Scheme.etaleTopology.{0}
  let φ' : sheafify J ((freeP R).obj (yoneda.obj X)) ⟶ G.obj := φ.hom
  have hv : ∀ {Y : Scheme.{0}} (f : Y ⟶ X), (free R).map (yoneda.map f) ≫ φ = 0 →
      (freeP R).map (yoneda.map f) ≫ (toSheafify J _ ≫ φ') = 0 := by
    intro Y f hf
    have this : sheafifyMap J ((freeP R).map (yoneda.map f)) ≫ φ' = 0 := by
      have := congrArg (fun ψ => ψ.hom) hf
      exact this
    rw [← Category.assoc, toSheafify_naturality, Category.assoc, this, comp_zero]
  have hψ := psi R O1 O2 hcov G _ (hv O1.ι h1) (hv O2.ι h2)
  apply Sheaf.hom_ext
  exact sheafify_hom_ext (J := J) φ' 0 G.property (by rw [hψ]; simp)

theorem cover2 (R : Type) [CommRing R] {X : Scheme.{0}} (O1 O2 : X.Opens) (hcov : O1 ⊔ O2 = ⊤) :
    Cover2 R (sch.map O1.ι) (sch.map O2.ι) :=
  ⟨inferInstance, inferInstance, epi R O1 O2 hcov⟩

end LateralTheory.EtaleTrace.LSplitPf.Sch
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleTrace.LocalSplitting.Cover2 =====
