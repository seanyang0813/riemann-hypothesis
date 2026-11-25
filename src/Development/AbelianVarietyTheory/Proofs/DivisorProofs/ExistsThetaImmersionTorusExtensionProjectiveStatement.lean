module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp
public import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsAmpleTensorAmplePowProjective
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAmpleLBOfRelAmpleOfIsAffine
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif
public import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.ExistsSecNonzeroLocusEqOfLbIso
public import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverMorphismRestrictOfRelAmple
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.VtPull
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc
public import Mathlib.AlgebraicGeometry.Morphisms.Immersion
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionSmoothAffineSurjectiveFourierTerms
public import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitSvalIff
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.PolarizedAbelianEmbeddingBySections
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsAffineOpenAndBijectiveOfWeightUnits
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Development.AbelianVarietyTheory.BlockTheory.UniformisationCharts.CanonicalRigidImages
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsUniqueLbIsoPullEqOfCoheightLeOne
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSecBGenerating, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusPt, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleBySecBZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermPullbackRestrictEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsImmersionOfForallAffineSurjectiveAppLE, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubringEqTopOfWeightUnits, Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FlatSurjectiveKernel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SvalEqSecRatioMul, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjectiveStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSecBGenerating =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSecBGenerating", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsAmpleTensorAmplePowProjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAmpleLBOfRelAmpleOfIsAffine\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits Filter
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.CechPic

namespace GlobalTheory.Mum

theorem exists_secB_generating : ∀ (R : Type) [CommRing R] [IsDomain R] [IsNoetherianRing R] (D : DegPre R) (α : D.X),
    ∃ k₀ : ℕ, ∀ k ≥ k₀, ∃ (n : ℕ) (b : Fin n → D.SecB k α), ⨆ j, nonzeroLocus (b j) = ⊤ := by
  intro R _ _ _ D α
  have hL := D.P.isLB
  have := D.P.isAb.proper
  have hA : IsAmpleLB D.P.L := (relAmple_iff_isAmpleLB_of_isAffine D.P.A hL).1 D.P.ample
  have hN : ∀ k, (LB.LinComb D.P.L (D.famφB α) (DegPre.famε k)).IsLB := fun k => LB.isLB_linComb hL _ _
  obtain ⟨k₀, hk⟩ := eventually_atTop.1 (hA.eventually_isGenerated_tens_lbPow (hN 0))
  refine ⟨k₀, fun k h => ?_⟩
  have hP := isLB_lbPow hL k
  have hT := isLB_tens (hN 0) hP
  refine (hk k h).of_lbIso (hN k) (iso_of_chart hT ⟨fun j => (j, fun _ => j 0), fun _ _ hj => ⟨hj, ?_⟩, ?_⟩)
  · exact Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hj 0
  · intro y p q hp hq

    refine (gm_linComb D.P.L (D.famφB α) (DegPre.famε k) (𝟙 _) y p q hp hq).trans ?_
    refine ((gm_tens (LB.LinComb D.P.L (D.famφB α) (DegPre.famε 0)) (lbPow D.P.L k) (𝟙 _) y (p, fun _ => p 0) (q, fun _ => q 0) ⟨hp, Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hp 0⟩ ⟨hq, Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hq 0⟩).trans ?_).symm
    refine (congrArg₂ (· * ·) (gm_linComb D.P.L (D.famφB α) (DegPre.famε 0) (𝟙 _) y p q hp hq) (gm_linComb D.P.L (fun _ : PUnit => 𝟙 _) (fun _ => (k : ℤ)) (𝟙 _) y (fun _ => p 0) (fun _ => q 0) (Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hp 0) (Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hq 0))).trans ?_
    simp only [Fin.prod_univ_four, Fintype.prod_unique, DegPre.famφB, DegPre.famε, Matrix.cons_val, Category.id_comp, zpow_sub, zpow_one]
    simp only [Nat.cast_zero, zpow_zero, one_mul]
    ac_rfl

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSecBGenerating =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusPt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusPt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

variable {R : Type} [CommRing R] [IsDomain R] {D : DegPre R}

namespace Ext

open ReciprocityTheory.ChartRestriction.G.DVR ReciprocityTheory.ChartRestriction.G.Semi.Rosenlicht GlobalTheory.TorusModel GlobalTheory.TorusExt GlobalTheory.Serre

theorem exists_torusPt {T : Over (Sp R)} (x : T ⟶ splitTorus (Sp R) D.X) : ∃ g : GtPt D T, g.b = 1 ∧
    ∀ (χ : D.X) (Z : Scheme.{0}) (r : Z ⟶ T.left) y J, Good D.P.L y J →
      (val (g.s χ) r y J).val = gs r y ⊤ ((coord x).hom (AddMonoidAlgebra.single χ 1)) := by
  let u : Multiplicative D.X →* Γ(T.left, ⊤) :=
    { toFun := fun χ => (coord x).hom (AddMonoidAlgebra.single χ.toAdd 1)
      map_one' := Diag.coord_single_zero x
      map_mul' := fun a b => Diag.coord_single_add x _ _ }
  let v : ∀ χ : D.X, LB.Gen (LB.LinComb D.P.L (Y := T.left) (K := PEmpty.{1}) PEmpty.elim PEmpty.elim) := fun χ =>
    ⟨fun _ => res le_top (u.toHomUnits (Multiplicative.ofAdd χ))⟩
  have hv : ∀ χ (Z : Scheme.{0}) (r : Z ⟶ T.left) y J, Good D.P.L y J →
      val (v χ) r y J = gm r y ⊤ (u.toHomUnits (Multiplicative.ofAdd χ)) := fun χ Z r y J hJ =>
    gm_res r y _ (hJ.mem PEmpty.elim r) _
  obtain ⟨g, hb, hg⟩ := exists_pt (1 : T ⟶ D.P.A) v (fun χ i j => by
      obtain rfl : i = j := funext fun k => k.elim
      have e : (LB.LinComb D.P.L (Y := T.left) (K := PEmpty.{1}) PEmpty.elim PEmpty.elim).g i i = 1 := by
        dsimp only [LB.LinComb]
        erw [Fintype.prod_empty]
        rfl
      rw [e, _root_.one_mul])
    (fun χ U _ h => by
      rw [prod_pt, _root_.mul_one, Fintype.prod_empty, inv_mul_cancel, _root_.one_mul, mul_inv_cancel])
    (fun y J hJ => by rw [hv _ _ _ _ _ hJ, ofAdd_zero, map_one, map_one])
    (fun χ χ' y J hJ => by
      have C : IsCub (th D (T := T) y J) := isCub_cubV D.cub hJ
      rw [C.face₃, _root_.mul_one, hv _ _ _ _ _ hJ, hv _ _ _ _ _ hJ, hv _ _ _ _ _ hJ, ofAdd_add, map_mul, map_mul])
  exact ⟨g, hb, fun χ Z r y J hJ => by
    rw [hg _ _ _ _ _ hJ, hv _ _ _ _ _ hJ]; exact (gs_unit r y ⊤ trivial _).symm⟩

variable (Y : Ext D)

theorem pt_b {T : Over (Sp R)} (x : T ⟶ Y.H) : (Y.Φ T x).b = x ≫ Y.q := by
  have h := ((isPull_iff _ _ _).1 (Y.rep.1 T Y.H x (𝟙 _))).1
  rwa [Category.comp_id] at h

def torI : splitTorus (Sp R) D.X ⟶ Y.H :=
  (Y.Φ _).symm (exists_torusPt (D := D) (𝟙 _)).choose

theorem torI_pt {T : Over (Sp R)} (x : T ⟶ splitTorus (Sp R) D.X) : (Y.Φ T (x ≫ Y.torI)).b = 1 ∧
    ∀ (χ : D.X) y J, Good D.P.L y J →
      (cv (Y.Φ T (x ≫ Y.torI)) χ y J).val = gs (𝟙 _) y ⊤ ((coord x).hom (AddMonoidAlgebra.single χ 1)) := by
  obtain ⟨h₁, h₂⟩ := (isPull_iff _ _ _).1 (Y.rep.1 T _ x Y.torI)
  obtain ⟨e₁, e₂⟩ := (exists_torusPt (D := D) (𝟙 _)).choose_spec
  have e : Y.Φ _ Y.torI = (exists_torusPt (D := D) (𝟙 _)).choose := Equiv.apply_symm_apply _ _
  rw [e] at h₁ h₂
  refine ⟨by rw [h₁, e₁, MonObj.comp_one], fun χ y J hJ => ?_⟩
  rw [h₂ χ y J hJ, e₂ χ _ _ y J hJ]
  conv_rhs => rw [← Category.comp_id x, coord_comp]
  exact (gs_eq x.left y ⊤ trivial _).trans (gs_eq (𝟙 _) y ⊤ trivial _).symm

theorem torI_q : Y.torI ≫ Y.q = 1 := by
  have h := (Y.torI_pt (𝟙 _)).1
  rwa [pt_b, Category.id_comp] at h

theorem isMonHom_torI : IsMonHom Y.torI :=
  isMonHom_of_mul _ fun T x x' => (Y.Φ T).injective <| by
    refine isAdd_unique ((TorusModel.isAdd_iff _ _ _).2 ⟨?_, fun χ y J hJ => Units.ext ?_⟩) (Y.rep.2 T _ _)
    · rw [(Y.torI_pt _).1, (Y.torI_pt _).1, (Y.torI_pt _).1, _root_.mul_one]
    · have C : IsCub (th D (T := T) y J) := isCub_cubV D.cub hJ
      rw [(Y.torI_pt x').1, C.face₃, _root_.mul_one, Units.val_mul, (Y.torI_pt _).2 χ y J hJ, (Y.torI_pt _).2 χ y J hJ,
        (Y.torI_pt _).2 χ y J hJ]
      exact (congrArg (gs _ y ⊤) (Diag.coord_mul x x' χ)).trans (gs_mul (𝟙 _) y ⊤ trivial _ _)

theorem isKernel_torI : IsPullback Y.torI (toUnit _) Y.q η[D.P.A] := by
  have ex : ∀ {T : Over (Sp R)} y, ∃ J, Good D.P.L (Z := T.left) y J := fun y => by
    choose I hI using fun χ => exists_chart D.P.isLB ((χ : _ ⟶ D.P.A.left) y)
    exact ⟨I, hI⟩
  refine Diag.isPullback_toUnit_of_lift _ Y.torI_q (fun {T} a b h => Diag.hom_ext fun χ => fn_ext fun y _ => ?_)
    fun {T} x hx => ?_
  · obtain ⟨J, hJ⟩ := ex y
    exact ((Y.torI_pt a).2 χ y J hJ).symm.trans (h ▸ (Y.torI_pt b).2 χ y J hJ)
  · have hb : (Y.Φ T x).b = 1 := (Y.pt_b x).trans hx
    have hF : ∀ χ, FormEq (DegPre.gtφT D T (Y.Φ T x).b χ) DegPre.gtε (K' := PEmpty.{1}) PEmpty.elim PEmpty.elim :=
      fun χ U _ h => by
        rw [prod_pt, hb, _root_.mul_one, Fintype.prod_empty, inv_mul_cancel, _root_.one_mul, mul_inv_cancel]
    choose s _ vs using fun χ => exists_gen D.P.isLB (hF χ) _ ((Y.Φ T x).isGen χ)
    have le : (⊤ : T.left.Opens) ≤ LB.wchart D.P.L (K := PEmpty.{1}) PEmpty.elim PEmpty.elim :=
      fun _ _ => Set.mem_iInter.2 fun k => k.elim
    let u : D.X → Γ(T.left, ⊤)ˣ := fun χ => res le ((s χ).s PEmpty.elim)
    have hu : ∀ χ y J, Good D.P.L y J → gs (𝟙 _) y ⊤ (u χ).val = (cv (Y.Φ T x) χ y J).val := fun χ y J hJ =>
      (gs_unit _ y ⊤ trivial _).trans (congrArg Units.val ((gm_res _ y le trivial _).trans
        ((val_of (s χ) _ y J PEmpty.elim fun k => k.elim).symm.trans (vs χ _ _ y J hJ))))
    let g : Multiplicative D.X →* Γ(T.left, ⊤) :=
      { toFun := fun χ => (u χ.toAdd).val
        map_one' := fn_ext fun y _ => by
          obtain ⟨J, hJ⟩ := ex y
          refine (hu 0 y J hJ).trans ?_
          rw [cv_zero _ hJ, gs_eq _ y ⊤ trivial, map_one, map_one, Units.val_one]
        map_mul' := fun a b => fn_ext fun y _ => by
          obtain ⟨J, hJ⟩ := ex y
          have C : IsCub (th D (T := T) y J) := isCub_cubV D.cub hJ
          have e := cv_add (Y.Φ T x) hJ a.toAdd b.toAdd
          rw [hb, C.face₃, _root_.mul_one] at e
          refine (hu _ y J hJ).trans (Eq.trans ?_ (gs_mul _ y ⊤ trivial _ _).symm)
          exact (congrArg Units.val e).trans (congrArg₂ (· * ·) (hu _ y J hJ) (hu _ y J hJ)).symm }
    refine ⟨Diag.ofChar T g, (Y.Φ T).injective (pt_ext ((Y.torI_pt _).1.trans hb.symm) fun χ y J hJ => Units.ext ?_)⟩
    exact ((Y.torI_pt _).2 χ y J hJ).trans ((congrArg (gs _ y ⊤) (Diag.coord_ofChar T g χ)).trans (hu χ y J hJ))

theorem cv_torI {Z : Over (Sp R)} (t : Z ⟶ splitTorus (Sp R) D.X) (χ : D.X) (z : Z.left) J (hJ : Good D.P.L z J) :
    cv (Y.Φ Z (t ≫ Y.torI)) χ z J = gm t.left z ⊤ (charUnit (Sp R) D.X χ) := by
  have hc : t.left.appTop.hom (charUnit (Sp R) D.X χ).val = (coord t).hom (AddMonoidAlgebra.single χ 1) := by
    rw [GlobalTheory.SplitTorus.charUnit_val]
    conv_rhs => rw [← Category.comp_id t, coord_comp]
    rfl
  refine Units.ext (((Y.torI_pt t).2 χ z J hJ).trans ?_)
  rw [← gs_unit t.left z ⊤ trivial, ← hc]
  exact (gs_eq (𝟙 _) z ⊤ trivial _).trans (gs_eq t.left z ⊤ trivial _).symm

theorem cv_torI_mul {Z : Over (Sp R)} (t : Z ⟶ splitTorus (Sp R) D.X) (g : Z ⟶ Y.H) (χ : D.X) (z : Z.left) J
    (hJ : Good D.P.L z J) :
    cv (Y.Φ Z ((t ≫ Y.torI) * g)) χ z J = gm t.left z ⊤ (charUnit (Sp R) D.X χ) * cv (Y.Φ Z g) χ z J := by
  have h := ((TorusModel.isAdd_iff _ _ _).1 (Y.rep.2 Z (t ≫ Y.torI) g)).2 χ z J hJ
  have C : IsCub (th D (T := Z) z J) := isCub_cubV D.cub hJ
  rw [(Y.torI_pt t).1, C.face₂, _root_.mul_one, Y.cv_torI t χ z J hJ] at h
  exact h

end Ext

theorem ext_torus : ∀ (R : Type) [CommRing R] [IsDomain R] (D : DegPre R) (Y : Ext D), ∃ i : splitTorus (Sp R) D.X ⟶ Y.H,
    IsMonHom i ∧ IsPullback i (toUnit _) Y.q η[D.P.A] ∧ ∀ (χ : D.X) (Z : Over (Sp R)) (t : Z ⟶ splitTorus (Sp R) D.X)
      (g : Z ⟶ Y.H) (z : Z.left) J, Good D.P.L z J →
        val ((Y.Φ Z ((t ≫ i) * g)).s χ) (𝟙 _) z J = gm t.left z ⊤ (charUnit (Sp R) D.X χ) * val ((Y.Φ Z g).s χ) (𝟙 _) z J :=
  fun _ _ _ _ Y => ⟨Y.torI, Y.isMonHom_torI, Y.isKernel_torI, fun χ _ t g z J hJ => Y.cv_torI_mul t g χ z J hJ⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusPt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleBySecBZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleBySecBZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.ExistsSecNonzeroLocusEqOfLbIso\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverMorphismRestrictOfRelAmple\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.VtPull\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Mum.WeightZero

open GlobalTheory.ProjSpace GlobalTheory.AbLaw GlobalTheory.Cartier

theorem veryAmpleBy_of_sval {R : Type} [CommRing R] {X Y Z : Scheme.{0}} {L : LB X} (hL : L.IsLB)
    {K K' : Type} [Fintype K] [Fintype K'] {φ : K → (Y ⟶ X)} {ε : K → ℤ} {φ' : K' → (Z ⟶ X)} {ε' : K' → ℤ}
    (g : Z ⟶ Y) [IsIso g] (f : Y ⟶ Sp R) {m : ℕ} (s : Fin (m + 1) → (LB.LinComb L φ ε).Sec)
    (t : Fin (m + 1) → (LB.LinComb L φ' ε').Sec)
    (h : ∀ i z J, Good L z J → sval (t i) (𝟙 Z) z J = sval (s i) g z J) (hs : VeryAmpleBy f _ s) :
    VeryAmpleBy (g ≫ f) _ t := by
  obtain ⟨hc, hi⟩ := (veryAmpleBy_iff f s).1 hs
  have key : ∀ z : Z, ∃ (W : Z.Opens) (_ : z ∈ W) (k : (LB.LinComb L φ ε).ι)
      (hk : W ≤ g ⁻¹ᵁ (LB.LinComb L φ ε).U k) (l : (LB.LinComb L φ' ε').ι) (hl : W ≤ (LB.LinComb L φ' ε').U l),
      ∀ j, resG Z hl ((t j).f l) = (g.appLE _ W hk).hom ((s j).f k) := by
    intro z
    choose J hJ using fun χ : Z ⟶ X => exists_chart hL (χ z)
    refine ⟨LB.wchart L φ' (fun k => J (𝟙 Z ≫ φ' k)) ⊓ g ⁻¹ᵁ LB.wchart L φ (fun k => J (g ≫ φ k)),
      ⟨Good.mem hJ φ' (𝟙 Z), Good.mem hJ φ g⟩, fun k => J (g ≫ φ k), inf_le_right, fun k => J (𝟙 Z ≫ φ' k),
      inf_le_left, fun j => fn_ext fun y hy => ?_⟩
    obtain ⟨J', hJ', e⟩ := exists_good L hL y (Sum.elim (fun k => 𝟙 Z ≫ φ' k) (fun k => g ≫ φ k))
      (fun a => J (Sum.elim (fun k => 𝟙 Z ≫ φ' k) (fun k => g ≫ φ k) a)) (fun a b e => congrArg J e) (by
        rintro (a | a)
        exacts [Set.mem_iInter.1 hy.1 a, Set.mem_iInter.1 hy.2 a])
    have e₁ := h j y J' hJ'
    rw [sval_of (t j) _ y J' _ (fun k => e (.inl k)), sval_of (s j) _ y J' _ (fun k => e (.inr k))] at e₁
    refine (gs_res _ y _ hy _).trans (e₁.trans (Eq.symm ?_))
    exact (gs_res (𝟙 Z) y inf_le_right hy _).trans (gs_pull (𝟙 Z) g y _ hy.2 _)
  have ht : ⨆ i, nonzeroLocus (t i) = ⊤ := by
    refine _root_.top_le_iff.1 fun z _ => ?_
    obtain ⟨W, hz, k, hk, l, hl, e⟩ := key z
    obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.1 (hc.ge (Set.mem_univ (g z)))
    have h₁ : z ∈ Z.basicOpen (resG Z hl ((t i).f l)) := by
      rw [e i, Scheme.basicOpen_appLE]
      exact ⟨hz, (mem_nonzeroLocus_iff _ k (hk hz)).1 hi⟩
    rw [Scheme.basicOpen_res] at h₁
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨i, basicOpen_le_nonzeroLocus _ l h₁.2⟩
  refine (veryAmpleBy_iff _ t).2 ⟨ht, ?_⟩
  rw [toProj_eq_comp_of_locally hc g ht fun z => by
    obtain ⟨W, hz, k, hk, l, hl, e⟩ := key z
    exact ⟨W, hz, k, hk, l, hl, 1, fun j => (e j).trans (_root_.one_mul _).symm⟩]
  infer_instance

theorem formEq_weight_zero {R : Type} [CommRing R] [IsDomain R] (D : DegPre R) (k : ℕ) :
    FormEq (fun _ : Fin k => 𝟙 D.P.A.left) (fun _ => 1) (D.famφB 0) (DegPre.famε k) := by
  intro U _ h
  have h0 : D.c 0 = 1 := by
    have h : D.c 0 = D.c 0 * D.c 0 := by
      have := D.c_add 0 0
      rwa [add_zero] at this
    exact mul_eq_left.1 h.symm
  have h1 : toUnit D.P.A ≫ D.c 0 = 1 := by rw [h0, comp_one]
  have h2 : toUnit D.P.A ≫ η[D.P.A] = 1 := rfl
  have h3 : padd D.P.A (𝟙 D.P.A) (1 : D.P.A ⟶ D.P.A) = 𝟙 _ := _root_.mul_one (𝟙 D.P.A)
  rw [Fin.prod_univ_four]
  simp only [DegPre.famφB, DegPre.famε, h1, h2, h3]
  simp [zpow_sub]

theorem exists_veryAmpleBy_secB_zero (R : Type) [CommRing R] [IsDomain R] [IsNoetherianRing R] (D : DegPre R) (k : ℕ)
    (hk : 4 ≤ k) : ∃ (m : ℕ) (s : Fin (m + 1) → D.SecB k 0), VeryAmpleBy D.P.A.hom _ s := by
  obtain ⟨m, s, H⟩ := (GlobalTheory.allSixLaws.1.ample (Sp R) D.P k hk).2 ⊤ (isAffineOpen_top _)
  have : IsIso (⊤ : (Sp R).Opens).ι := inferInstanceAs (IsIso (Sp R).topIso.hom)
  have : IsIso (D.P.A.hom ⁻¹ᵁ ⊤).ι := inferInstanceAs (IsIso D.P.A.left.topIso.hom)
  have h' := (veryAmpleBy_comp_iff (D.P.A.hom ∣_ ⊤) (⊤ : (Sp R).Opens).ι s).2 H
  rw [morphismRestrict_ι] at h'
  let ψ := inv (D.P.A.hom ⁻¹ᵁ ⊤).ι
  have hψ : ψ ≫ (D.P.A.hom ⁻¹ᵁ ⊤).ι = 𝟙 _ := IsIso.inv_hom_id _
  choose s' hs' using fun i => exists_sec_pull (L := D.P.L) _ _ (s i) ψ (fun _ : Fin k => 𝟙 D.P.A.left) fun _ => hψ.symm
  choose t ht using fun i => exists_sec D.P.isLB (formEq_weight_zero D k) (s' i)
  have := veryAmpleBy_of_sval D.P.isLB ψ _ s t (fun i z J hJ => by
    refine (ht i _ _ z J hJ).trans ((hs' i _ z _ (hJ.mem _ _)).trans ?_)
    rw [Category.id_comp, sval_of (s i) ψ z J (fun _ => J (𝟙 _ ≫ 𝟙 _)) fun _ => by rw [hψ, Category.id_comp]]) h'
  rw [← Category.assoc, hψ, Category.id_comp] at this
  exact ⟨m, t, this⟩

end GlobalTheory.Mum.WeightZero
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleBySecBZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermPullbackRestrictEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermPullbackRestrictEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.PolarizedAbelianEmbeddingBySections\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem germPullback_restrict_eq {X Z : Scheme.{0}} (f : Z ⟶ X) (z : Z) {U V : X.Opens} (hle : V ≤ U) (h : f z ∈ V)
    (a : Γ(X, U)) : gs f z V (resG X hle a) = gs f z U a := gs_res f z hle h a


open GlobalTheory.ProjSpace in
theorem secRatio_isTermOf_zero : ∀ (R : Type) [CommRing R] [IsDomain R] (D : DegPre R) (Y : Ext D) (k : ℕ) (b₀ b : D.SecB k 0) (τ₀ τ : SecK D.P.L Y.q.left k), IsTermOf Y b₀ τ₀ → IsTermOf Y b τ → ∀ (W : Y.H.left.Opens) (h₁ : W ≤ Y.q.left ⁻¹ᵁ nonzeroLocus b₀) (h₂ : W ≤ nonzeroLocus τ₀), (Y.q.left.appLE (nonzeroLocus b₀) W h₁).hom (GlobalTheory.ProjSpace.secRatio b₀ b) = resG Y.H.left h₂ (GlobalTheory.ProjSpace.secRatio τ₀ τ) := by
  intro R _ _ D Y k b₀ b τ₀ τ h₀ h W h₁ h₂
  apply fn_ext
  intro y hy
  rw [gs_appLE Y.q.left (nonzeroLocus b₀) W h₁ (𝟙 _) y hy, Category.id_comp,
    germPullback_restrict_eq (𝟙 Y.H.left) y h₂ hy]
  choose J hJ using fun ψ : Y.H.left ⟶ D.P.A.left => ReciprocityTheory.ChartRestriction.G.Geo.Tor.exists_chart D.P.isLB (ψ y)
  have hG : Good D.P.L y J := hJ
  have e := h Y.H (𝟙 _) y J hG
  have e₀ := h₀ Y.H (𝟙 _) y J hG
  rw [Category.id_comp] at e e₀

  have hqy : Y.q.left y ∈ nonzeroLocus b₀ ⊓ LB.wchart D.P.L (D.famφB 0) (fun κ => J (Y.q.left ≫ D.famφB 0 κ)) :=
    ⟨h₁ hy, hG.mem (D.famφB 0) Y.q.left⟩
  have sb := congrArg (gs Y.q.left y _) (secRatio_on b₀ b (fun κ => J (Y.q.left ≫ D.famφB 0 κ))
    (W := nonzeroLocus b₀ ⊓ LB.wchart D.P.L (D.famφB 0) (fun κ => J (Y.q.left ≫ D.famφB 0 κ))) inf_le_left inf_le_right)
  rw [gs_mul _ y _ hqy] at sb
  erw [germPullback_restrict_eq _ y _ hqy, germPullback_restrict_eq _ y _ hqy, germPullback_restrict_eq _ y _ hqy] at sb

  have hyτ : (𝟙 Y.H.left) y ∈ nonzeroLocus τ₀ ⊓ LB.wchart D.P.L (fun _ : Fin 1 => Y.q.left) (fun _ : Fin 1 => J (𝟙 Y.H.left ≫ Y.q.left)) :=
    ⟨h₂ hy, hG.mem (fun _ : Fin 1 => Y.q.left) (𝟙 Y.H.left)⟩
  have sτ := congrArg (gs (𝟙 Y.H.left) y _) (secRatio_on τ₀ τ (fun _ : Fin 1 => J (𝟙 Y.H.left ≫ Y.q.left))
    (W := nonzeroLocus τ₀ ⊓ LB.wchart D.P.L (fun _ : Fin 1 => Y.q.left) (fun _ : Fin 1 => J (𝟙 Y.H.left ≫ Y.q.left))) inf_le_left inf_le_right)
  rw [gs_mul _ y _ hyτ] at sτ
  erw [germPullback_restrict_eq _ y _ hyτ, germPullback_restrict_eq _ y _ hyτ, germPullback_restrict_eq _ y _ hyτ] at sτ
  have hu : IsUnit (sval τ₀ (𝟙 Y.H.left) y J) :=
    (GlobalTheory.AmpleSpan.mem_nonzeroLocus_iff_gs τ₀ (𝟙 Y.H.left) y hyτ.2).1 hyτ.1
  change sval τ (𝟙 Y.H.left) y J = _ * sval τ₀ (𝟙 Y.H.left) y J at sτ
  change sval b Y.q.left y J = _ * sval b₀ Y.q.left y J at sb
  change sval τ (𝟙 Y.H.left) y J = _ at e
  change sval τ₀ (𝟙 Y.H.left) y J = _ at e₀
  refine hu.mul_right_cancel ?_
  rw [← sτ, e, sb, e₀]
  exact (_root_.mul_assoc _ _ _).symm
end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermPullbackRestrictEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsImmersionOfForallAffineSurjectiveAppLE =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsImmersionOfForallAffineSurjectiveAppLE", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Immersion\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory

theorem isImmersion_of_forall_affine_surjective_appLE : ∀ (Y Z : Scheme.{0}) (φ : Y ⟶ Z), (∀ y : Y, ∃ (U : Z.Opens) (W : Y.Opens) (h : W ≤ φ ⁻¹ᵁ U), IsAffineOpen U ∧ φ y ∈ U ∧ φ ⁻¹ᵁ U ≤ W ∧ IsAffineOpen W ∧ Function.Surjective (φ.appLE U W h).hom) → IsImmersion φ := by
  intro Y Z φ H
  have H' : ∀ y : Y, ∃ U : Z.Opens, φ y ∈ U ∧ IsClosedImmersion (φ ∣_ U) := by
    intro y
    obtain ⟨U, W, h, hU, hy, hW, hWa, hs⟩ := H y
    obtain rfl : W = φ ⁻¹ᵁ U := le_antisymm h hW
    refine ⟨U, hy, ?_⟩
    have : IsAffine U := hU
    have : IsAffine (φ ⁻¹ᵁ U) := hWa
    rw [MorphismProperty.arrow_mk_iso_iff @IsClosedImmersion
      (Arrow.isoMk hWa.isoSpec hU.isoSpec (Scheme.Opens.toSpecΓ_naturality φ _) :
        Arrow.mk (φ ∣_ U) ≅ Arrow.mk (Spec.map (φ.app U)))]
    rw [Scheme.Hom.app_eq_appLE]
    exact IsClosedImmersion.spec_of_surjective _ hs
  choose U hyU hU using H'
  have : MorphismProperty.RespectsRight @IsImmersion @IsOpenImmersion :=
    ⟨fun i hi g hg => by
      have : IsOpenImmersion i := hi
      have : IsImmersion g := hg
      infer_instance⟩
  refine IsZariskiLocalAtTarget.of_range_subset_iSup (P := @IsImmersion) U ?_ fun y => ?_
  · rintro _ ⟨y, rfl⟩
    exact (le_iSup U y : U y ≤ ⨆ i, U i) (hyU y)
  · have := hU y
    infer_instance

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsImmersionOfForallAffineSurjectiveAppLE =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubringEqTopOfWeightUnits =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubringEqTopOfWeightUnits", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsAffineOpenAndBijectiveOfWeightUnits\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionSmoothAffineSurjectiveFourierTerms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum



theorem subring_eq_top_of_weight_units : ∀ (R : Type) [CommRing R] [IsDomain R] (D : DegPre R) (Y : Ext D) (i : splitTorus (Sp R) D.X ⟶ Y.H), IsMonHom i → IsPullback i (toUnit _) Y.q η[D.P.A] → ∀ {κ : Type} (bs : Module.Basis κ ℤ D.X) (V : D.P.A.left.Opens), IsAffineOpen V → ∀ (u : κ → Γ(Y.H.left, Y.q.left ⁻¹ᵁ V)ˣ), (∀ c, GlobalTheory.UU.IsWt i _ (u c).val (bs c)) → ∀ S : Subring Γ(Y.H.left, Y.q.left ⁻¹ᵁ V), (∀ c, (Y.q.left.app V).hom c ∈ S) → (∀ c, (u c).val ∈ S ∧ ((u c)⁻¹).val ∈ S) → S = ⊤ := by
  intro R _ _ D Y i hi hk κ bs V hV u hu S hS hSu
  obtain ⟨hsm, haff, hsurj⟩ := Y.q_props
  have hmon : IsMonHom Y.q := Y.isMonHom_q
  let m : Multiplicative D.X →* Γ(Y.H.left, Y.q.left ⁻¹ᵁ V)ˣ :=
    AddMonoidHom.toMultiplicativeLeft (bs.constr ℤ (fun k => Additive.ofMul (u k))).toAddMonoidHom
  have hm : ∀ k, m (Multiplicative.ofAdd (bs k)) = u k := fun k =>
    congrArg Additive.toMul (bs.constr_basis ℤ (fun k => Additive.ofMul (u k)) k)
  have key : ∀ χ : D.X, GlobalTheory.UU.IsWt i _ (m (Multiplicative.ofAdd χ)).val χ ∧
      (m (Multiplicative.ofAdd χ)).val ∈ S ∧ (m (Multiplicative.ofAdd χ))⁻¹.val ∈ S := by
    intro χ
    have hχ : χ ∈ AddSubgroup.closure (Set.range bs) := by
      rw [← Submodule.span_int_eq_addSubgroupClosure, bs.span_eq]; trivial
    refine AddSubgroup.closure_induction (p := fun x _ => GlobalTheory.UU.IsWt i _ (m (Multiplicative.ofAdd x)).val x ∧
      (m (Multiplicative.ofAdd x)).val ∈ S ∧ (m (Multiplicative.ofAdd x))⁻¹.val ∈ S) ?_ ?_ ?_ ?_ hχ
    · rintro _ ⟨k, rfl⟩
      rw [hm]; exact ⟨hu k, hSu k⟩
    · rw [ofAdd_zero, map_one]; exact ⟨GlobalTheory.UU.isWt_one, S.one_mem, by simpa using S.one_mem⟩
    · intro x y _ _ hx hy
      rw [ofAdd_add, map_mul]
      refine ⟨hx.1.mul hy.1, ?_, ?_⟩
      · rw [Units.val_mul]; exact S.mul_mem hx.2.1 hy.2.1
      · rw [mul_inv, Units.val_mul]; exact S.mul_mem hx.2.2 hy.2.2
    · intro x _ hx
      rw [ofAdd_neg, map_inv]
      exact ⟨hx.1.inv, hx.2.2, by rw [inv_inv]; exact hx.2.1⟩
  have hbij := (isAffineOpen_and_bijective_of_weight_units (Sp R) D.X Y.H D.P.A Y.q i hmon hi inferInstance
    hsurj inferInstance hk V hV m (fun χ => (key χ).1)).2
  refine (Subring.eq_top_iff' S).2 fun f => ?_
  obtain ⟨x, rfl⟩ := hbij.2 f
  induction x using AddMonoidAlgebra.induction_linear with
  | zero => rw [map_zero]; exact S.zero_mem
  | add a b ha hb => rw [map_add (f := _)]; exact S.add_mem ha hb
  | single χ c =>
    change AddMonoidAlgebra.liftNC _ _ _ ∈ S
    rw [AddMonoidAlgebra.liftNC_single]
    exact S.mul_mem (hS c) (key χ).2.1

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubringEqTopOfWeightUnits =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FlatSurjectiveKernel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FlatSurjectiveKernel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\nimport Development.AbelianVarietyTheory.BlockTheory.UniformisationCharts.CanonicalRigidImages\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UU GlobalTheory.IndefiniteRowSideFullHecke.CanonicalRigidImages

namespace GlobalTheory.GtCoordCompare

section Calc

variable {Y W W' Z : Scheme.{0}} {L : LB Y} {K : Type} [Fintype K] {ψ : K → (W ⟶ Y)} {ψ' : K → (W' ⟶ Y)}
  {ε ε' : K → ℤ} {r : Z ⟶ W} {r' : Z ⟶ W'}

end Calc

section Image

variable {Y G B : Scheme.{0}} {L : LB Y} {K : Type} [Fintype K] (q : G ⟶ B) {φ : K → (B ⟶ Y)} {φ' : K → (G ⟶ Y)}
  {ε ε' : K → ℤ}

variable {q} {x : LB.Gen (LB.LinComb L φ' ε')} {V : B.Opens}


end Image

section Group

variable {S Y : Scheme.{0}} {X : Type} [AddCommGroup X] {G B : Over S} [GrpObj G] [GrpObj B] {q : G ⟶ B}
  {i : splitTorus S X ⟶ G} {L : LB Y} {K : Type} [Fintype K] {ε ε' : K → ℤ}

def WtGen (i : splitTorus S X ⟶ G) {φ' : K → (G.left ⟶ Y)} (x : LB.Gen (LB.LinComb L φ' ε')) (χ : X) : Prop :=
  ∀ (Z : Over S) (t : Z ⟶ splitTorus S X) (g : Z ⟶ G) (z : Z.left) (J), Good L z J →
    val x ((t ≫ i) * g).left z J = gm t.left z ⊤ (charUnit S X χ) * val x g.left z J

theorem act_comp [IsMonHom q] (hi : i ≫ q = toUnit _ ≫ η[B]) {Z : Over S} (t : Z ⟶ splitTorus S X) (g : Z ⟶ G) :
    ((t ≫ i) * g).left ≫ q.left = g.left ≫ q.left := by
  have e : ((t ≫ i) * g) ≫ q = g ≫ q := by
    rw [MonObj.mul_comp, Category.assoc, hi, ← Category.assoc, comp_toUnit, ← Hom.one_def, _root_.one_mul]
  exact congrArg (fun f => f.left) e

theorem isWt_of_gs {V : G.left.Opens} {a : Γ(G.left, V)} {χ : X}
    (h : ∀ (Z : Over S) (t : Z ⟶ splitTorus S X) (g : Z ⟶ G), ⊤ ≤ g.left ⁻¹ᵁ V → ∀ z : Z.left,
      gs ((t ≫ i) * g).left z V a = (gm t.left z ⊤ (charUnit S X χ)).val * gs g.left z V a) : IsWt i V a χ :=
  fun Z t g h₁ h₂ => fn_ext fun z hz => by
    rw [gs_mul _ z _ hz, gs_appLE _ _ _ _ _ z hz, gs_appLE _ _ _ _ _ z hz, Category.id_comp, Category.id_comp,
      h Z t g h₂ z]
    congr 1
    refine ((gs_pull (𝟙 _) t.left z ⊤ trivial _).trans ?_).symm
    rw [Category.id_comp, gs_unit _ z ⊤ trivial]

section One

variable [IsMonHom q] (hi : i ≫ q = toUnit _ ≫ η[B]) (hL : L.IsLB) {φ : K → (B.left ⟶ Y)} {φ' : K → (G.left ⟶ Y)}
  (hφ : ∀ k, φ' k = q.left ≫ φ k) {x : LB.Gen (LB.LinComb L φ' ε')} (hx : x.IsGen) {χ : X} (hw : WtGen i x χ)
include hi hL hφ hx hw


end One

section All

variable [IsMonHom q] [IsMonHom i] [IsAffineHom q.left] (hL : L.IsLB) (hε : ∀ k, ε' k = -ε k)
  {φ : X → K → (B.left ⟶ Y)} {φ' : X → K → (G.left ⟶ Y)} (hφ : ∀ χ k, φ' χ k = q.left ≫ φ χ k)
  {x : ∀ χ, LB.Gen (LB.LinComb L (φ' χ) ε')} (hx : ∀ χ, (x χ).IsGen) (hw : ∀ χ, WtGen i (x χ) χ)
include hL hε hφ hx hw


end All

end Group

end GlobalTheory.GtCoordCompare
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FlatSurjectiveKernel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SvalEqSecRatioMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SvalEqSecRatioMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitSvalIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionSmoothAffineSurjectiveFourierTerms\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FlatSurjectiveKernel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.TermWeight

theorem sval_eq_secRatio_mul {X Y Z : Scheme.{0}} {L : LB X} {K : Type} [Fintype K] {φ : K → (Y ⟶ X)} {ε : K → ℤ}
    (a b : LB.Sec (LB.LinComb L φ ε)) (r : Z ⟶ Y) (z : Z) {J} (hJ : Good L z J) (hz : r z ∈ nonzeroLocus a) :
    sval b r z J = gs r z (nonzeroLocus a) (GlobalTheory.ProjSpace.secRatio a b) * sval a r z J := by
  have hm : r z ∈ nonzeroLocus a ⊓ LB.wchart L φ (fun k => J (r ≫ φ k)) := ⟨hz, hJ.mem φ r⟩
  have e := congrArg (gs r z _) (GlobalTheory.ProjSpace.secRatio_on a b (fun k => J (r ≫ φ k))
    (W := nonzeroLocus a ⊓ LB.wchart L φ (fun k => J (r ≫ φ k))) inf_le_left inf_le_right)
  exact (gs_res r z inf_le_right hm _).symm.trans (e.trans ((gs_mul r z _ hm _ _).trans
    (congrArg₂ (· * ·) (gs_res r z inf_le_left hm _) (gs_res r z inf_le_right hm _))))

theorem isWt_secRatio : ∀ (R : Type) [CommRing R] [IsDomain R] (D : DegPre R) (Y : Ext D) (i : splitTorus (Sp R) D.X ⟶ Y.H), (∀ (χ : D.X) (Z : Over (Sp R)) (t : Z ⟶ splitTorus (Sp R) D.X) (g : Z ⟶ Y.H) (z : Z.left) J, Good D.P.L z J → val ((Y.Φ Z ((t ≫ i) * g)).s χ) (𝟙 _) z J = gm t.left z ⊤ (charUnit (Sp R) D.X χ) * val ((Y.Φ Z g).s χ) (𝟙 _) z J) → IsPullback i (toUnit _) Y.q η[D.P.A] → ∀ (k : ℕ) (α : D.X) (b₀ : D.SecB k 0) (b : D.SecB k α) (τ₀ τ : SecK D.P.L Y.q.left k), IsTermOf Y b₀ τ₀ → IsTermOf Y b τ → GlobalTheory.UU.IsWt i (nonzeroLocus τ₀) (GlobalTheory.ProjSpace.secRatio τ₀ τ) α := by
  intro R _ _ D Y i hi hk k α b₀ b τ₀ τ h₀ h
  have := Y.isMonHom_q
  refine GlobalTheory.GtCoordCompare.isWt_of_gs fun Z t g hg z => ?_
  obtain ⟨J, hJ⟩ := GlobalTheory.UU.exists_good_pt D.P.isLB z
  have hq : (((t ≫ i) * g) ≫ Y.q).left = (g ≫ Y.q).left := GlobalTheory.GtCoordCompare.act_comp hk.w t g
  have z₁ : val ((Y.Φ Z ((t ≫ i) * g)).s 0) (𝟙 _) z J = 1 := GlobalTheory.TorusModel.cv_zero _ hJ
  have z₂ : val ((Y.Φ Z g).s 0) (𝟙 _) z J = 1 := GlobalTheory.TorusModel.cv_zero _ hJ
  have e₀ : sval τ₀ ((t ≫ i) * g).left z J = sval τ₀ g.left z J := by
    rw [h₀ Z _ z J hJ, h₀ Z g z J hJ, hq, z₁, z₂]
  have e : sval τ ((t ≫ i) * g).left z J =
      (gm t.left z ⊤ (charUnit (Sp R) D.X α)).val * sval τ g.left z J := by
    rw [h Z _ z J hJ, h Z g z J hJ, hq, hi α Z t g z J hJ, Units.val_mul, mul_left_comm]
  have hz : g.left z ∈ nonzeroLocus τ₀ := hg (Set.mem_univ z)
  have hu : IsUnit (sval τ₀ g.left z J) := (_root_.GlobalTheory.Ex.OneGen.isUnit_sval_iff τ₀ _ z hJ).2 hz
  have hz' : ((t ≫ i) * g).left z ∈ nonzeroLocus τ₀ := (_root_.GlobalTheory.Ex.OneGen.isUnit_sval_iff τ₀ _ z hJ).1 (e₀ ▸ hu)
  refine hu.mul_right_cancel ?_
  rw [_root_.mul_assoc, ← sval_eq_secRatio_mul τ₀ τ g.left z hJ hz, ← e, sval_eq_secRatio_mul τ₀ τ _ z hJ hz', e₀]

end GlobalTheory.Mum.TermWeight
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SvalEqSecRatioMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsUniqueLbIsoPullEqOfCoheightLeOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSecBGenerating\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusPt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleBySecBZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermPullbackRestrictEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsImmersionOfForallAffineSurjectiveAppLE\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitSvalIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubringEqTopOfWeightUnits\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SvalEqSecRatioMul\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionSmoothAffineSurjectiveFourierTerms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.ThetaImm

open GlobalTheory.ProjSpace GlobalTheory.QCoh.Qcqs

theorem isUnit_resG_of_le {X : Scheme.{0}} {U V : X.Opens} (r : Γ(X, U)) (h : V ≤ X.basicOpen r) :
    IsUnit (resG X (h.trans (X.basicOpen_le r)) r) := by
  have := (X.toRingedSpace.isUnit_res_basicOpen r).map (resG X h)
  exact (congrArg IsUnit (resG_resG (X.basicOpen_le r) h r)).mp this

theorem exists_immersion : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (Y : Ext D.toPre), ∃ (S : Finset D.toPre.X) (k₁ : ℕ), ∀ k ≥ k₁, ∃ (N : ℕ) (α : Fin (N + 1) → D.toPre.X) (b : ∀ i, D.toPre.SecB k (α i)) (τ : Fin (N + 1) → SecK D.toPre.P.L Y.q.left k) (hτ : ⨆ i, nonzeroLocus (τ i) = ⊤), (∀ i, α i ∈ S ∧ IsTermOf Y (b i) (τ i)) ∧ IsImmersion (GlobalTheory.ProjSpace.toProj Y.H.hom τ hτ) := by
  intro R _ _ _ hR D Y
  classical
  have : IsNoetherianRing R := hR.1.1
  obtain ⟨-, hqa, -, -, hterm⟩ := GlobalTheory.Mum.ext_smooth_affine_surj_terms R D.toPre Y
  obtain ⟨i, hi₁, hi₂, hi₃⟩ := GlobalTheory.Mum.ext_torus R D.toPre Y
  let bs := Module.Free.chooseBasis ℤ D.toPre.X
  choose k₀ hk₀ using fun c => GlobalTheory.Mum.exists_secB_generating R D.toPre (bs c)
  refine ⟨insert 0 (Finset.univ.image bs), max 4 (Finset.univ.sup k₀), fun k hk => ?_⟩
  obtain ⟨m, s, hs⟩ := GlobalTheory.Mum.WeightZero.exists_veryAmpleBy_secB_zero R D.toPre k (le_of_max_le_left hk)
  choose n bb hbb using fun c => hk₀ c k ((Finset.le_sup (Finset.mem_univ c)).trans (le_of_max_le_right hk))
  let J := Fin (m + 1) ⊕ Σ c, Fin (n c)
  let αJ : J → D.toPre.X := Sum.elim (fun _ => 0) (fun p => bs p.1)
  let bJ : ∀ j : J, D.toPre.SecB k (αJ j) := fun j => match j with
    | .inl a => s a
    | .inr p => bb p.1 p.2
  choose τJ hτJ using fun j : J => hterm k (αJ j) (bJ j)
  have hcard : Fintype.card J = (Fintype.card J - 1) + 1 :=
    (Nat.succ_pred_eq_of_pos (Fintype.card_pos_iff.2 ⟨.inl 0⟩)).symm
  let e : Fin (Fintype.card J - 1 + 1) ≃ J := (Fintype.equivFinOfCardEq hcard).symm
  have ht₀ : ∀ a, IsTermOf Y (s a) (τJ (e (e.symm (.inl a)))) := fun a => by
    rw [e.apply_symm_apply]; exact hτJ (.inl a)
  have htc : ∀ c l, IsTermOf Y (bb c l) (τJ (e (e.symm (.inr ⟨c, l⟩)))) := fun c l => by
    rw [e.apply_symm_apply]; exact hτJ (.inr ⟨c, l⟩)
  obtain ⟨hs₁, hsc⟩ := (veryAmpleBy_iff _ s).1 hs
  have hsi := (isClosedImmersion_toProj_iff _ s hs₁).1 hsc
  have hτ : ⨆ i, nonzeroLocus (τJ (e i)) = ⊤ := top_le_iff.1 fun y _ => by
    obtain ⟨a, ha⟩ := TopologicalSpace.Opens.mem_iSup.1 (hs₁.ge (Set.mem_univ (Y.q.left y)))
    refine TopologicalSpace.Opens.mem_iSup.2 ⟨e.symm (.inl a), ?_⟩
    rw [GlobalTheory.Mum.TermLocus.nonzeroLocus_eq R D.toPre Y k 0 _ _ (ht₀ a)]
    exact ha
  refine ⟨_, fun i => αJ (e i), fun i => bJ (e i), fun i => τJ (e i), hτ, fun i => ⟨?_, hτJ (e i)⟩, ?_⟩
  · show αJ (e i) ∈ _
    generalize e i = j
    rcases j with a | p
    · exact Finset.mem_insert_self _ _
    · exact Finset.mem_insert_of_mem (Finset.mem_image_of_mem bs (Finset.mem_univ p.1))
  refine GlobalTheory.isImmersion_of_forall_affine_surjective_appLE _ _ _ fun y => ?_
  set φ := toProj Y.H.hom (fun i => τJ (e i)) hτ with hφ
  let q := Y.q.left
  obtain ⟨a, ha⟩ := TopologicalSpace.Opens.mem_iSup.1 (hs₁.ge (Set.mem_univ (q y)))
  choose l hl using fun c => TopologicalSpace.Opens.mem_iSup.1 ((hbb c).ge (Set.mem_univ (q y)))

  let V₀ := nonzeroLocus (s a)
  have hV₀ : IsAffineOpen V₀ := (hsi a).1
  let O : D.toPre.P.A.left.Opens := V₀ ⊓ Finset.univ.inf fun c => nonzeroLocus (bb c (l c))
  have hyO : q y ∈ O := by
    refine ⟨ha, ?_⟩
    show q y ∈ ((Finset.univ.inf fun c => nonzeroLocus (bb c (l c)) : D.toPre.P.A.left.Opens) : Set _)
    rw [TopologicalSpace.Opens.coe_finset_inf]
    simp only [Finset.inf_eq_iInf, Finset.mem_univ, iInf_true, Set.iInf_eq_iInter, Set.mem_iInter, Function.comp_apply]
    exact fun c => hl c
  obtain ⟨f, hfO, hyf⟩ := hV₀.exists_basicOpen_le (V := O) ⟨q y, hyO⟩ ha
  let V := D.toPre.P.A.left.basicOpen f
  have hV : IsAffineOpen V := hV₀.basicOpen f
  have hVV₀ : V ≤ V₀ := D.toPre.P.A.left.basicOpen_le f
  have hVc : ∀ c, V ≤ nonzeroLocus (bb c (l c)) := fun c x hx => by
    have h := (hfO hx).2
    change x ∈ ((Finset.univ.inf fun c => nonzeroLocus (bb c (l c)) : D.toPre.P.A.left.Opens) : Set _) at h
    rw [TopologicalSpace.Opens.coe_finset_inf] at h
    simp only [Finset.inf_eq_iInf, Finset.mem_univ, iInf_true, Set.iInf_eq_iInter, Set.mem_iInter, Function.comp_apply] at h
    exact h c
  let i₀ := e.symm (.inl a)
  let iκ := fun c =>  e.symm (.inr ⟨c, l c⟩)
  have hloc₀ : nonzeroLocus (τJ (e i₀)) = q ⁻¹ᵁ V₀ := GlobalTheory.Mum.TermLocus.nonzeroLocus_eq R D.toPre Y k 0 _ _ (ht₀ a)
  have hlocc : ∀ c, nonzeroLocus (τJ (e (iκ c))) = q ⁻¹ᵁ nonzeroLocus (bb c (l c)) := fun c =>
    GlobalTheory.Mum.TermLocus.nonzeroLocus_eq R D.toPre Y k _ _ _ (htc c (l c))
  have hch₀ : φ ⁻¹ᵁ chart R _ i₀ = q ⁻¹ᵁ V₀ := (toProj_preimage_chart _ _ hτ i₀).trans hloc₀

  let base := (baseRingHom (PSpace.str R _) (chart R _ i₀)).hom
  let rat : Fin (m + 1) → Γ(PSpace R _, chart R _ i₀) := fun j => ratio R _ i₀ (e.symm (.inl j))
  have hW₀ : ∀ {W' : Y.H.left.Opens}, W' ≤ q ⁻¹ᵁ V₀ → W' ≤ φ ⁻¹ᵁ chart R _ i₀ := fun h => h.trans hch₀.ge
  have hpoly : ∀ (W' : Y.H.left.Opens) (hq : W' ≤ q ⁻¹ᵁ V₀) (P : MvPolynomial (Fin (m + 1)) R),
      (φ.appLE (chart R _ i₀) W' (hW₀ hq)).hom (MvPolynomial.eval₂Hom base rat P) =
      (q.appLE V₀ W' hq).hom (MvPolynomial.eval₂Hom (baseRingHom D.toPre.P.A.hom V₀).hom
        (fun j => secRatio (s a) (s j)) P) := by
    intro W' hq P
    have e1 : (φ.appLE (chart R _ i₀) W' (hW₀ hq)).hom.comp (MvPolynomial.eval₂Hom base rat) =
        (q.appLE V₀ W' hq).hom.comp (MvPolynomial.eval₂Hom (baseRingHom D.toPre.P.A.hom V₀).hom
          (fun j => secRatio (s a) (s j))) := by
      rw [MvPolynomial.comp_eval₂Hom, MvPolynomial.comp_eval₂Hom]
      congr 1
      · rw [← CommRingCat.hom_comp, ← CommRingCat.hom_comp, baseRingHom_appLE, baseRingHom_appLE, toProj_str]
        exact congrArg (fun g => (baseRingHom g W').hom) (Over.w Y.q).symm
      · funext j
        show pullRatio φ W' i₀ _ _ = _
        rw [pullRatio_toProj_on]
        exact (GlobalTheory.Mum.secRatio_isTermOf_zero R D.toPre Y k (s a) (s j) _ _ (ht₀ a) (ht₀ j) W' hq _).symm
    exact RingHom.congr_fun e1 P
  let W := q ⁻¹ᵁ V
  have hWV₀ : W ≤ q ⁻¹ᵁ V₀ := q.preimage_mono hVV₀
  obtain ⟨p, hp⟩ := (hsi a).2 f
  let F₀ := MvPolynomial.eval₂Hom base rat p
  let G := F₀ * ∏ c, ratio R _ i₀ (iκ c)
  let U := (PSpace R _).basicOpen G
  have hU : IsAffineOpen U := (isAffineOpen_chart R _ i₀).basicOpen G
  have hUc : U ≤ chart R _ i₀ := (PSpace R _).basicOpen_le G
  have hF : ∀ (W' : Y.H.left.Opens) (hq : W' ≤ q ⁻¹ᵁ V₀),
      (φ.appLE (chart R _ i₀) W' (hW₀ hq)).hom F₀ = (q.appLE V₀ W' hq).hom f := fun W' hq => by
    rw [hpoly W' hq p, hp]
  have hUW : φ ⁻¹ᵁ U ≤ W := by
    intro x hx
    have hx₀ : x ∈ q ⁻¹ᵁ V₀ := hch₀.le (φ.preimage_mono hUc hx)
    have h1 : x ∈ Y.H.left.basicOpen ((φ.appLE (chart R _ i₀) (q ⁻¹ᵁ V₀) (hW₀ le_rfl)).hom G) := by
      rw [Scheme.basicOpen_appLE]; exact ⟨hx₀, hx⟩
    rw [map_mul, Scheme.basicOpen_mul, hF _ le_rfl, Scheme.basicOpen_appLE] at h1
    exact h1.1.2
  have hWU : W ≤ φ ⁻¹ᵁ U := by
    intro x hx
    have hx₀ : x ∈ q ⁻¹ᵁ V₀ := hWV₀ hx
    have h1 : x ∈ Y.H.left.basicOpen ((φ.appLE (chart R _ i₀) (q ⁻¹ᵁ V₀) (hW₀ le_rfl)).hom G) := by
      rw [map_mul, Scheme.basicOpen_mul, hF _ le_rfl, Scheme.basicOpen_appLE, map_prod]
      refine ⟨⟨hx₀, hx⟩, ?_⟩
      refine Finset.prod_induction _ (fun r => x ∈ Y.H.left.basicOpen r)
        (fun r r' h h' => by rw [Scheme.basicOpen_mul]; exact ⟨h, h'⟩)
        (by rw [Scheme.basicOpen_of_isUnit _ isUnit_one]; trivial) fun c _ => ?_
      show x ∈ Y.H.left.basicOpen (pullRatio φ _ i₀ _ (iκ c))
      rw [basicOpen_pullRatio, toProj_preimage_chart]
      refine ⟨hx₀, ?_⟩
      show x ∈ nonzeroLocus (τJ (e (iκ c)))
      rw [hlocc c]
      exact hVc c hx
    rw [Scheme.basicOpen_appLE] at h1
    exact h1.2
  haveI := hqa
  refine ⟨U, W, hWU, hU, hWU hyf, hUW, hV.preimage q, ?_⟩

  let S := (φ.appLE U W hWU).hom.range
  have hS_chart : ∀ r : Γ(PSpace R _, chart R _ i₀), (φ.appLE (chart R _ i₀) W (hW₀ hWV₀)).hom r ∈ S :=
    fun r => ⟨resG _ hUc r, appLE_resG φ hUc hWU r⟩
  have hS_unit : ∀ r : Γ(PSpace R _, chart R _ i₀), U ≤ (PSpace R _).basicOpen r →
      ∃ w ∈ S, (φ.appLE (chart R _ i₀) W (hW₀ hWV₀)).hom r * w = 1 := by
    intro r hr
    obtain ⟨v, hv⟩ := isUnit_resG_of_le r hr
    refine ⟨(φ.appLE U W hWU).hom ↑v⁻¹, ⟨_, rfl⟩, ?_⟩
    rw [← appLE_resG φ hUc hWU r, ← map_mul]
    have : resG _ hUc r = ↑v := hv.symm
    rw [this, Units.mul_inv, map_one]
  have hUF : U ≤ (PSpace R _).basicOpen F₀ := fun x hx => by
    have := hx
    change x ∈ (PSpace R _).basicOpen G at this
    rw [Scheme.basicOpen_mul] at this
    exact this.1
  have hUr : ∀ c, U ≤ (PSpace R _).basicOpen (ratio R _ i₀ (iκ c)) := fun c x hx => by
    have := hx
    change x ∈ (PSpace R _).basicOpen G at this
    rw [Scheme.basicOpen_mul, ← Finset.mul_prod_erase _ _ (Finset.mem_univ c), Scheme.basicOpen_mul] at this
    exact this.2.1
  have hS_q : ∀ x : Γ(D.toPre.P.A.left, V₀), (q.appLE V₀ W hWV₀).hom x ∈ S := fun x => by
    obtain ⟨P, rfl⟩ := (hsi a).2 x
    rw [← hpoly W hWV₀ P]
    exact hS_chart _
  have hWτ₀ : W ≤ nonzeroLocus (τJ (e i₀)) := hWV₀.trans hloc₀.ge
  have hWb : ∀ c, W ≤ Y.H.left.basicOpen (secRatio (τJ (e i₀)) (τJ (e (iκ c)))) := fun c x hx => by
    rw [basicOpen_secRatio]
    refine ⟨hWτ₀ hx, ?_⟩
    rw [hlocc c]
    exact hVc c hx
  let u : _ → Γ(Y.H.left, W)ˣ := fun c => (isUnit_resG_of_le _ (hWb c)).unit
  have hu : ∀ c, (u c).val = resG _ hWτ₀ (secRatio (τJ (e i₀)) (τJ (e (iκ c)))) := fun c =>
    (isUnit_resG_of_le _ (hWb c)).unit_spec
  have hupr : ∀ c, (u c).val = (φ.appLE (chart R _ i₀) W (hW₀ hWV₀)).hom (ratio R _ i₀ (iκ c)) := fun c => by
    rw [hu c]
    exact (pullRatio_toProj_on _ _ hτ i₀ (iκ c) (hW₀ hWV₀)).symm
  have hSt : S = ⊤ := by
    refine GlobalTheory.Mum.subring_eq_top_of_weight_units R D.toPre Y i hi₁ hi₂ bs V hV u (fun c => ?_) S (fun c => ?_) (fun c => ?_)
    · rw [hu c]
      exact (GlobalTheory.Mum.TermWeight.isWt_secRatio R D.toPre Y i hi₃ hi₂ k (bs c) (s a) (bb c (l c)) _ _ (ht₀ a) (htc c (l c))).res hWτ₀
    · have := hV₀.isLocalization_basicOpen f
      obtain ⟨⟨a', _, n', rfl⟩, ha'⟩ := IsLocalization.surj (Submonoid.powers f) c
      have ha'' : c * resG _ hVV₀ (f ^ n') = resG _ hVV₀ a' := ha'
      have happ : ∀ x : Γ(D.toPre.P.A.left, V₀), (q.app V).hom (resG _ hVV₀ x) = (q.appLE V₀ W hWV₀).hom x := fun x => by
        rw [Scheme.Hom.app_eq_appLE]
        exact appLE_resG q hVV₀ le_rfl x
      obtain ⟨w, hw, hfw⟩ := hS_unit F₀ hUF
      rw [hF W hWV₀] at hfw
      have key := congrArg (q.app V).hom ha''
      rw [map_mul, happ, happ, map_pow] at key
      have : (q.app V).hom c = (q.appLE V₀ W hWV₀).hom a' * w ^ n' := by
        rw [← key, _root_.mul_assoc, ← mul_pow, hfw, one_pow, _root_.mul_one]
      rw [this]
      exact S.mul_mem (hS_q a') (S.pow_mem hw n')
    · refine ⟨(hupr c).symm ▸ hS_chart _, ?_⟩
      obtain ⟨w, hw, hrw⟩ := hS_unit _ (hUr c)
      rw [← hupr c] at hrw
      rw [Units.mul_eq_one_iff_inv_eq.1 hrw]
      exact hw
  intro x
  have hx : x ∈ S := hSt ▸ Subring.mem_top x
  exact hx

end GlobalTheory.Mum.ThetaImm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjectiveStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjectiveStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjectiveStatement =====
