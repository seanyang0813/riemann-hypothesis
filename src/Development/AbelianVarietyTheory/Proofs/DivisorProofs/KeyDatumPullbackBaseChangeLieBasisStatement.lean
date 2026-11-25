module

public import Mathlib.Algebra.DualNumber
public import Development.AbelianVarietyTheory.Definitions.Divisors.UnifAlong
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic
import Mathlib.CategoryTheory.Monoidal.Category
import Mathlib.CategoryTheory.Monoidal.Mon
import Mathlib.Topology.Sheaves.Presheaf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsLieCombOneIffComp
import Development.AbelianVarietyTheory.Statements.FundamentalDomains.ExistsIsAddFundamentalDomain
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCRing
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleIdentityIso
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.GeneratorPullback.PullAlong
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLieBasisPullbackGeneric, Development.AbelianVarietyTheory.Proofs.DivisorProofs.KeyDatumPullbackBaseChangeLieBasis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.KeyDatumPullbackBaseChangeLieBasisStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLieBasisPullbackGeneric =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLieBasisPullbackGeneric", "h": "module\n\npublic import Mathlib.Algebra.DualNumber\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Basic\nimport Mathlib.CategoryTheory.Monoidal.Category\nimport Mathlib.CategoryTheory.Monoidal.Mon\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj

noncomputable section

namespace GlobalTheory.KeyExtLie

theorem dnRingHom_ext {R S : Type} [CommRing R] [CommRing S] {f f' : DualNumber R →+* S}
    (h1 : ∀ a, f (TrivSqZeroExt.inl a) = f' (TrivSqZeroExt.inl a)) (h2 : f DualNumber.eps = f' DualNumber.eps) : f = f' := by
  refine RingHom.ext fun x => ?_
  have hx : x = TrivSqZeroExt.inl x.fst + TrivSqZeroExt.inl x.snd * DualNumber.eps := by
    ext <;> simp
  rw [hx, map_add (f := _), map_add (f := _), map_mul, map_mul, h1, h1, h2]

end GlobalTheory.KeyExtLie
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLieBasisPullbackGeneric =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KeyDatumPullbackBaseChangeLieBasis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.KeyDatumPullbackBaseChangeLieBasis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.UnifAlong\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\nimport Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsLieCombOneIffComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLieBasisPullbackGeneric\nimport Development.AbelianVarietyTheory.Statements.FundamentalDomains.ExistsIsAddFundamentalDomain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCRing\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleIdentityIso\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.GeneratorPullback.PullAlong\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.KeyEven
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

noncomputable section

namespace GlobalTheory.KeyEvenBC

theorem keyOn_pullback : ∀ (A B K : Type) [CommRing A] [CommRing B] [CommRing K] (f : A →+* B) (h : B →+* K) (G : Over (Sp A)) [GrpObj G] [IsCommMonObj G] (L : RigLB G) (σ : L.L.Sec) (x : KeyIn K) (y : Fin x.P.g → (epsR A ⟶ G)), IsSemiAbelian G → IsLieBasis y → NzFib σ → KeyOn (h.comp f) x G L σ y → ∀ [IsCommMonObj ((Over.pullback (spMap f)).obj G)], ∃ (L' : RigLB ((Over.pullback (spMap f)).obj G)) (σ' : L'.L.Sec) (y' : Fin x.P.g → (epsR B ⟶ (Over.pullback (spMap f)).obj G)), LBIso (L.L.pull (pullback.fst G.hom (spMap f))) L'.L ∧ IsLieBasis y' ∧ NzFib σ' ∧ KeyOn h x ((Over.pullback (spMap f)).obj G) L' σ' y' := by
  intro A B K _ _ _ f h G _ _ L σ x y hG hy hσ hK _
  obtain ⟨φ, he, ψ, F, hφ, hψ, hrig, hsec, hF1, hF2, hFv⟩ := hK
  have hP := isGrpPullback_pullback G (spMap f)
  have sqφ : φ ≫ G.hom = (x.P.A.hom ≫ spMap h) ≫ spMap f := by
    rw [Category.assoc, ← spMap_comp]
    exact hφ.1.w
  obtain ⟨φ', hφ', hfst, hsnd⟩ : ∃ φ' : x.P.A.left ⟶ ((Over.pullback (spMap f)).obj G).left,
      IsGrpPullback x.P.A ((Over.pullback (spMap f)).obj G) (spMap h) φ' ∧ φ' ≫ pullback.fst G.hom (spMap f) = φ ∧
        φ' ≫ ((Over.pullback (spMap f)).obj G).hom = x.P.A.hom ≫ spMap h := by
    refine ⟨pullback.lift φ (x.P.A.hom ≫ spMap h) sqφ, ?_, pullback.lift_fst _ _ _, pullback.lift_snd _ _ _⟩
    refine IsGrpPullback.cancel hP ?_ (pullback.lift_snd _ _ _)
    rw [pullback.lift_fst, ← spMap_comp]
    exact hφ
  subst hfst
  have hL := L.isLB
  have hL' : (L.L.pull (pullback.fst G.hom (spMap f))).IsLB := LB.isLB_pull hL _
  have heF : eSec ((Over.pullback (spMap f)).obj G) ≫ pullback.fst G.hom (spMap f) = spMap f ≫ eSec G :=
    PolBaseChange.eSec_comm hP
  let L' : RigLB ((Over.pullback (spMap f)).obj G) :=
    ⟨L.L.pull (pullback.fst G.hom (spMap f)), rigPullOf (G' := ((Over.pullback (spMap f)).obj G)) (pullback.fst G.hom (spMap f)) (spMap f) heF L.L L.rig, hL',
      Out.LBxP.isGen_pullAlong L.L (pullback.fst G.hom (spMap f)) (spMap f) (fun _ : PUnit => eSec G) (fun _ => 1)
        (fun _ => eSec ((Over.pullback (spMap f)).obj G)) (fun _ => heF) L.rig L.rigGen⟩
  have he' : eSec x.P.A ≫ φ' = spMap h ≫ eSec ((Over.pullback (spMap f)).obj G) := PolBaseChange.eSec_comm hφ'
  have pw := (isGen_iff (L := L.L) (F := pullback.fst G.hom (spMap f)) (idIso _)).1 (idIso_isGen hL')
  obtain ⟨σ', hσ'⟩ := sec_pull_down pw hL hL' σ
  have pψ := (isGen_iff ψ).1 hψ
  obtain ⟨w', T⟩ := exists_cancel hL (idIso (L.L.pull (pullback.fst G.hom (spMap f)))) ψ pw pψ hL' x.P.isLB
  have H : PMaps (idIso (L.L.pull (pullback.fst G.hom (spMap f)))) (K := PUnit)
      (fun _ => eSec ((Over.pullback (spMap f)).obj G)) (fun _ => eSec G) (fun _ => 1) L'.rig L.rig (spMap f) :=
    (maps_iff _ _ _ _ L'.rig L.rig (spMap f) L'.rig (rigPull_le (G' := ((Over.pullback (spMap f)).obj G)) (pullback.fst G.hom (spMap f)) (spMap f) heF L.L) (fun _ => rfl)).1 (idIso_maps L')
  have H'' : PMaps ψ (K := PUnit) (fun _ => eSec x.P.A) (fun _ => eSec G) (fun _ => 1) x.rig L.rig
      (spMap h ≫ spMap f) := by
    rw [← spMap_comp]
    exact (maps_iff ψ _ _ _ x.rig L.rig (spMap (h.comp f)) _ (rigPull_le (G' := x.P.A) (φ' ≫ pullback.fst G.hom (spMap f)) (spMap (h.comp f)) he L.L)
      (fun _ => rfl)).1 hrig
  have H' := T.pmaps_cancel hL (fun _ => he') H H''
  have hrig' : LB.Gen.Maps (LB.linCombIso w' (K := PUnit) (fun _ => eSec x.P.A) (fun _ => 1)) x.rig
      (rigPullOf φ' (spMap h) he' L'.L L'.rig) :=
    (maps_iff w' _ _ _ x.rig L'.rig (spMap h) _ (rigPull_le φ' (spMap h) he' L'.L) (fun _ => rfl)).2 H'

  have hsec' : ∀ (j : (L'.L.pull φ').ι) (i : x.P.L.ι) (hh : (L'.L.pull φ').U j ⊓ x.P.L.U i ≤ φ' ⁻¹ᵁ L'.L.U (j PUnit.unit)),
      (φ'.appLE _ _ hh).hom (σ'.f (j PUnit.unit)) =
        (show Γ(x.P.A.left, (L'.L.pull φ').U j ⊓ x.P.L.U i) from (w'.s (j, i)).val) * resG _ inf_le_right (x.th.f i) := by
    refine GlobalTheory.KeyPow.appLE_eq_of_stalk w' σ' x.th ?_
    intro z J k hJ hk
    have ha : (pullback.fst G.hom (spMap f)) (φ' z) ∈ L.L.U (J PUnit.unit) := mem_pull.1 hJ
    have hW : (𝟙 x.P.A.left) z ∈ (L.L.pull (φ' ≫ pullback.fst G.hom (spMap f))).U (fun _ => J PUnit.unit) ⊓ x.P.L.U k :=
      ⟨mem_pull.2 ha, hk⟩
    have s2 : gs (𝟙 _ ≫ φ' ≫ pullback.fst G.hom (spMap f)) z _ (σ.f (J PUnit.unit)) =
        (gw ψ (𝟙 _) z (J PUnit.unit) k).val * gs (𝟙 _) z _ (x.th.f k) := by
      have e := congrArg (gs (𝟙 _) z ((L.L.pull (φ' ≫ pullback.fst G.hom (spMap f))).U (fun _ => J PUnit.unit) ⊓ x.P.L.U k))
        (hsec (fun _ => J PUnit.unit) k (fun x hx => mem_pull.1 hx.1))
      exact (gs_appLE (φ' ≫ pullback.fst G.hom (spMap f)) _ _ _ (𝟙 _) z hW _).symm.trans (e.trans ((gs_mul _ z _ hW _ _).trans
        (congrArg₂ (· * ·) (gs_unit _ z _ hW _) (gs_res _ z _ hW _))))
    have e1 := hσ' _ (𝟙 _ ≫ φ') z (J PUnit.unit) J ha hJ
    have e3 := T _ (𝟙 _) z (J PUnit.unit) J k ha hJ hk
    rw [Category.assoc] at e1
    rw [e1, e3, Units.val_mul, _root_.mul_assoc] at s2
    exact (Units.mul_right_inj _).1 s2
  have hnz : NzFib (L := L'.L) σ' := by
    intro s
    obtain ⟨z, hz, hz'⟩ := hσ (spMap f s)
    obtain ⟨y0, rfl, hy0⟩ := Scheme.exists_preimage_of_isPullback hP.1 z s hz
    obtain ⟨k, hk, u⟩ := (mem_nonzeroLocus _ _).1 hz'
    refine ⟨y0, hy0, (mem_nonzeroLocus _ _).2 ⟨fun _ => k, mem_pull.2 hk, ?_⟩⟩
    have u₁ : IsUnit (gs (pullback.fst G.hom (spMap f)) y0 _ (σ.f k)) := by
      rw [gs_stalkMap _ y0 _ hk]; exact u.map _
    have e := hσ' _ (𝟙 _) y0 k (fun _ => k) hk (mem_pull.2 hk)
    rw [Category.id_comp] at e
    exact isUnit_of_mul_isUnit_right (e ▸ u₁)

  have := hG.smooth
  have sq : ∀ i, (spMap (Chart.dualMapR f) ≫ (y i).left) ≫ G.hom = (epsR B).hom ≫ spMap f := fun i => by
    rw [Category.assoc, Over.w]
    show Spec.map _ ≫ Spec.map _ = Spec.map _ ≫ Spec.map _
    rw [← Spec.map_comp, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp]
    congr 2
    ext a <;> simp [Chart.dualMapR, TrivSqZeroExt.algebraMap_eq_inl]
  let y' : Fin x.P.g → (epsR B ⟶ ((Over.pullback (spMap f)).obj G)) := fun i =>
    Over.homMk (hP.1.lift _ _ (sq i)) (hP.1.lift_snd _ _ _)
  have hy' : ∀ i, (y' i).left ≫ pullback.fst G.hom (spMap f) = spMap (Chart.dualMapR f) ≫ (y i).left :=
    fun i => hP.1.lift_fst _ _ _
  have hadd : ∀ (a b : B) (w : Chart.sp (DualNumber B) ⟶ ((Over.pullback (spMap f)).obj G)), Chart.IsTan w →
      Chart.spMap (Chart.scaleD (a + b)) ≫ w = (Chart.spMap (Chart.scaleD a) ≫ w) * (Chart.spMap (Chart.scaleD b) ≫ w) :=
    fun a b w hw => GlobalTheory.LieMultiple.scale_add ((Chart.isTan_iff w).1 hw) a b
  have hT : ∀ i, IsTangent (y' i) := fun i => by
    refine hP.1.hom_ext ?_ ?_
    · rw [Category.assoc, hy', show η[((Over.pullback (spMap f)).obj G)].left = eSec ((Over.pullback (spMap f)).obj G) from rfl, heF, ← Category.assoc]
      have e0 := hy.1 i
      rw [IsTangent] at e0
      rw [show eSec G = η[G].left from rfl, ← e0, ← Category.assoc]
      congr 1
      show Spec.map _ ≫ Spec.map _ = Spec.map _ ≫ Spec.map _
      rw [← Spec.map_comp, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp]
      congr 2
      refine RingHom.ext fun a => ?_
      simp [Chart.dualMapR]
    · rw [Category.assoc, Over.w (y' i), Over.w η[((Over.pullback (spMap f)).obj G)]]
      show Spec.map _ ≫ Spec.map _ = 𝟙 _
      rw [← Spec.map_comp, ← CommRingCat.ofHom_comp]
      convert Spec.map_id (CommRingCat.of B)
      ext a; simp
  have hLie : IsLieBasis y' := Chart.frameLieBCR G hy f hP hadd hT hy'

  have hF' : F = (Chart.dualMapR h).comp (Chart.dualMapR f) := by
    refine GlobalTheory.KeyExtLie.dnRingHom_ext (fun a => ?_) ?_
    · have e1 := hF1 a
      simp only [TrivSqZeroExt.algebraMap_eq_inl] at e1
      rw [e1]
      simp [Chart.dualMapR]
    · rw [hF2]
      ext <;> simp [Chart.dualMapR]
  have hv' : ∀ i, (x.v i).left ≫ φ' = spMap (Chart.dualMapR h) ≫ (y' i).left := fun i => by
    refine hP.1.hom_ext ?_ ?_
    · rw [Category.assoc, hFv i, Category.assoc, hy', ← Category.assoc, hF', spMap_comp]
    · rw [Category.assoc, hsnd, ← Category.assoc, Over.w (x.v i), Category.assoc, Over.w (y' i)]
      show Spec.map _ ≫ Spec.map _ = Spec.map _ ≫ Spec.map _
      rw [← Spec.map_comp, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp]
      congr 2
      ext a <;> simp [Chart.dualMapR, TrivSqZeroExt.algebraMap_eq_inl]
  refine ⟨L', σ', y', ⟨idIso _, idIso_isGen hL'⟩, hLie, hnz, φ', he', w', Chart.dualMapR h, hφ',
    (isGen_iff w').2 (T.pgen_cancel hL pw pψ), hrig', hsec', fun a => ?_, ?_, hv'⟩
  · ext <;> simp [Chart.dualMapR, TrivSqZeroExt.algebraMap_eq_inl]
  · ext <;> simp [Chart.dualMapR]

end GlobalTheory.KeyEvenBC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KeyDatumPullbackBaseChangeLieBasis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KeyDatumPullbackBaseChangeLieBasisStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.KeyDatumPullbackBaseChangeLieBasisStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.UnifAlong\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KeyDatumPullbackBaseChangeLieBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.KeyEven
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KeyDatumPullbackBaseChangeLieBasisStatement =====
