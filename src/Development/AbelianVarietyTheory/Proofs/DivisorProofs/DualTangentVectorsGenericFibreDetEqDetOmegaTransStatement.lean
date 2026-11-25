module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualTangentBasisPulledCotangentChartFrameStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpMapGermFromSpec
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppLESecEpsZeroEpsFn
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoToBidualOfLocalFrames
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualTangentVectorsGenericFibreDetEqDetOmegaTrans, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualTangentVectorsGenericFibreDetEqDetOmegaTransStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualTangentVectorsGenericFibreDetEqDetOmegaTrans =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualTangentVectorsGenericFibreDetEqDetOmegaTrans", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpMapGermFromSpec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppLESecEpsZeroEpsFn\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoToBidualOfLocalFrames\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.KeyEven
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open Classical

noncomputable section

namespace GlobalTheory.KeyVals.LieRel

open GlobalTheory.VB GlobalTheory.LieVB
open GlobalTheory.Twist (resM resM_self)
open ReciprocityTheory.ChartRestriction.G.Pdiv (specO ptMap LieG dualScale)

section Lie

variable {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] [QuasiSeparated G.hom]

theorem exists_prod (l : List (LieG G)) :
    ∃ z : LieG G, z.1 = (l.map fun x => x.1).prod ∧ tangent z = (l.map tangent).sum := by
  apply _root_.GlobalTheory.KeyVals.DualBasis.exists_prod <;> assumption

theorem isLieComb_of_tangent {n : ℕ} (a : Fin n → R) (v : Fin n → LieG G) (w : LieG G)
    (h : tangent w = ∑ m, cst R (a m) • tangent (v m)) : IsLieComb a (fun m => (v m).1) w.1 := by
  let u : Fin n → LieG G := fun m => ⟨_, OmegaGlobal.fst_scale (a m) (v m)⟩
  obtain ⟨z, hz, hz'⟩ := exists_prod (List.ofFn u)
  have e : w = z := tangent_injective R G (by
    rw [h, hz', List.map_ofFn, List.sum_ofFn]
    exact Finset.sum_congr rfl fun m _ => (tangent_scale _ _ _).symm)
  refine ⟨fun m => (u m).1, fun m => ?_, ?_⟩
  · have ha : (dualScale (a m)).toRingHom = epsScaleR (a m) := by
      ext y <;> simp [dualScale, epsScaleR]
    exact congrArg (fun r => spMap r ≫ (v m).1.left) ha
  · rw [e, hz, List.map_ofFn]
    rfl

theorem exists_matrix {g : ℕ} {e e' : Fin g → Γ(omega G, ⊤)} (he : IsFrame e) (he' : IsFrame e') (v v' : Fin g → LieG G)
    (hv : ∀ j k, dualApp (tangent (v j)) le_top (e k) = if j = k then 1 else 0)
    (hv' : ∀ j k, dualApp (tangent (v' j)) le_top (e' k) = if j = k then 1 else 0) :
    ∃ M : Matrix (Fin g) (Fin g) R, (∀ j, IsLieComb (M j) (fun m => (v' m).1) (v j).1) ∧
      M.det = (Scheme.ΓSpecIso (.of R)).hom (he.detUnit he' le_rfl le_rfl : Γ(Sp R, ⊤)) := by
  refine ⟨fun j m => (Scheme.ΓSpecIso (.of R)).hom (dualApp (tangent (v j)) le_top (e' m)), fun j => ?_, ?_⟩
  · refine isLieComb_of_tangent _ _ _ (he'.dual_ext le_rfl fun k => ?_)
    rw [resM_self, dualApp_sum, LinearMap.sum_apply]
    simp only [dualApp_smul, LinearMap.smul_apply, smul_eq_mul, LB.resG_self]
    rw [Finset.sum_congr rfl fun m _ => congrArg (cst R _ * ·) (hv' m k)]
    simp
  · have hc (j : Fin g) : dualApp (tangent (v j)) le_rfl = (he.basis le_rfl).coord j := by
      apply (he.basis le_rfl).ext
      intro k
      have hb : (he.basis le_rfl) k = e k := by rw [he.basis_apply, resM_self]
      rw [hb, hv, ← hb, Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_apply]
      simp only [eq_comm]
    rw [IsFrame.val_detUnit, Module.Basis.det_apply]
    refine Eq.trans ?_ (RingHom.map_det (Scheme.ΓSpecIso (.of R)).hom.hom _).symm
    congr 1
    ext j m
    rw [RingHom.mapMatrix_apply, Matrix.map_apply, Module.Basis.toMatrix_apply, resM_self]
    exact congrArg _ (congrFun (congrArg DFunLike.coe (hc j)) (e' m))

end Lie

variable {S : Scheme.{0}} {R : Type} [CommRing R] {G : Over S} [GrpObj G] [QuasiSeparated G.hom] {g : ℕ}

theorem pfr_eq (c : Chart (omega G) g) (ξ : Sp R ⟶ S) (hc : ⊤ ≤ ξ ⁻¹ᵁ c.U) :
    pfr c ξ hc = fun k => (omegaBase (isGrpPullback_pullback G ξ)).app ⊤
      (resM _ hc (QCoh.pullbackSections ξ (omega G) (le_refl (ξ ⁻¹ᵁ c.U)) (c.e k))) :=
  funext fun _ => congrArg _ (QCoh.res_pullbackSections ξ _ _ _ _).symm

theorem isFrame_pfr (c : Chart (omega G) g) (ξ : Sp R ⟶ S) (hc : ⊤ ≤ ξ ⁻¹ᵁ c.U) : IsFrame (pfr c ξ hc) := by
  rw [pfr_eq]
  exact ((c.isFrame.pullback ξ).res hc).map_iso _

theorem val_detUnit_pfr (c c' : Chart (omega G) g) (ξ : Sp R ⟶ S) (hc : ⊤ ≤ ξ ⁻¹ᵁ c.U) (hc' : ⊤ ≤ ξ ⁻¹ᵁ c'.U)
    (h : ⊤ ≤ ξ ⁻¹ᵁ (c.U ⊓ c'.U)) :
    ((isFrame_pfr c ξ hc).detUnit (isFrame_pfr c' ξ hc') le_rfl le_rfl : Γ(Sp R, ⊤)) =
      (ξ.appLE (c.U ⊓ c'.U) ⊤ h).hom (c.isFrame.detUnit c'.isFrame inf_le_left inf_le_right : Γ(S, c.U ⊓ c'.U)) := by
  have key {e e' f f' : Fin g → Γ(omega (bG G ξ), ⊤)} (he : IsFrame e) (he' : IsFrame e') (hf : IsFrame f)
      (hf' : IsFrame f') (h₁ : e = f) (h₂ : e' = f') :
      he.detUnit he' le_rfl le_rfl = hf.detUnit hf' le_rfl le_rfl := by
    subst h₁ h₂; rfl
  rw [key _ _ (((c.isFrame.pullback ξ).res hc).map_iso (omegaBase (isGrpPullback_pullback G ξ)))
    (((c'.isFrame.pullback ξ).res hc').map_iso (omegaBase (isGrpPullback_pullback G ξ))) (pfr_eq c ξ hc) (pfr_eq c' ξ hc'),
    IsFrame.detUnit_map_iso ((c.isFrame.pullback ξ).res hc) ((c'.isFrame.pullback ξ).res hc'),
    IsFrame.detUnit_res (c.isFrame.pullback ξ) (c'.isFrame.pullback ξ)]
  exact c.isFrame.val_detUnit_pullback c'.isFrame ξ inf_le_left inf_le_right h

theorem genPt_appLE [IsIntegral S] (U : S.Opens) (hU : genericPoint S ∈ U) (a : Γ(S, U)) :
    (Scheme.ΓSpecIso (.of (FF S))).hom (((genPt S).appLE U ⊤ (genPt_le U hU)).hom a) =
      S.presheaf.germ U (genericPoint S) hU a := by
  have k : ⊤ ≤ S.fromSpecStalk (genericPoint S) ⁻¹ᵁ U := genPt_le U hU
  have e : (S.fromSpecStalk (genericPoint S)).appLE U ⊤ k =
      S.presheaf.germ U _ hU ≫ (Scheme.ΓSpecIso (S.presheaf.stalk (genericPoint S))).inv := by
    rw [Scheme.Hom.appLE, Scheme.fromSpecStalk_app hU]
    simp only [Category.assoc, ← Functor.map_comp]
    have e : ((homOfLE le_top).op ≫ (homOfLE k).op :
      Opposite.op (⊤ : (Spec (S.presheaf.stalk (genericPoint S))).Opens) ⟶ Opposite.op ⊤) = 𝟙 _ := rfl
    rw [e, CategoryTheory.Functor.map_id, Category.comp_id]
  have e' : (S.fromSpecStalk (genericPoint S)).appLE U ⊤ k ≫
      (Scheme.ΓSpecIso (S.presheaf.stalk (genericPoint S))).hom = S.presheaf.germ U _ hU := by
    rw [e, Category.assoc, Iso.inv_hom_id, Category.comp_id]
  exact congr($e' a)

theorem lieRel : ∀ (S : Scheme.{0}) [IsIntegral S] (G : Over S) [GrpObj G] [IsCommMonObj G] (g : ℕ), IsSemiAbelian G →
    SmoothOfRelativeDimension g G.hom → ∀ (c c' : VB.Chart (LieVB.omega G) g)
    (h1 : genericPoint S ∈ (VB.det (LieVB.omega G) g).U c ⊓ (VB.det (LieVB.omega G) g).U c')
    (y y' : Fin g → (epsR (KeyVals.FF S) ⟶ KeyVals.bG G (KeyVals.genPt S))),
    KeyVals.IsDual c (KeyVals.genPt S) y → KeyVals.IsDual c' (KeyVals.genPt S) y' →
    ∃ M : Matrix (Fin g) (Fin g) (KeyVals.FF S), (∀ j, IsLieComb (M j) y' (y j)) ∧
      M.det = S.presheaf.germ _ (genericPoint S) h1
        ((VB.det (LieVB.omega G) g).g c c' : Γ(S, (VB.det (LieVB.omega G) g).U c ⊓ (VB.det (LieVB.omega G) g).U c')) := by
  intro S _ G _ _ g hG _ c c' h1 y y' ⟨hc, hy⟩ ⟨hc', hy'⟩
  choose v hv hv₁ using hy
  choose v' hv' hv₁' using hy'
  have : QuasiSeparated (bG G (genPt S)).hom :=
    MorphismProperty.of_isPullback (isGrpPullback_pullback G (genPt S)).1 inferInstance
  obtain ⟨M, hM, hd⟩ := exists_matrix (isFrame_pfr c _ hc) (isFrame_pfr c' _ hc') v v' hv₁ hv₁'
  obtain rfl : (fun j => (v j).1) = y := funext hv
  obtain rfl : (fun j => (v' j).1) = y' := funext hv'
  refine ⟨M, hM, hd.trans ?_⟩
  rw [val_detUnit_pfr c c' _ hc hc' (genPt_le _ h1)]
  exact genPt_appLE _ h1 _

end GlobalTheory.KeyVals.LieRel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualTangentVectorsGenericFibreDetEqDetOmegaTrans =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualTangentVectorsGenericFibreDetEqDetOmegaTransStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualTangentVectorsGenericFibreDetEqDetOmegaTransStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpMapGermFromSpec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualTangentVectorsGenericFibreDetEqDetOmegaTrans\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualTangentVectorsGenericFibreDetEqDetOmegaTransStatement =====
