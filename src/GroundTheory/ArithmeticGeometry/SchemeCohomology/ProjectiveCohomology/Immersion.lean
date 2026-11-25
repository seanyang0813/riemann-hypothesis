module

public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionPullback
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.IsQuasicoherentTensorOfInvertible
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.TwistingSheafCore
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionCech
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.NaturalLeray
public import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion
import GroundTheory.ArithmeticGeometry.EtaleCompletion.ModulesPullback
import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionPush

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionProj, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.Immersion

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionProj =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionProj", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionPullback\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.IsQuasicoherentTensorOfInvertible\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.TwistingSheafCore\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport GroundTheory.ArithmeticGeometry.EtaleCompletion.ModulesPullback\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace Limits MonoidalCategory
  MvPolynomial
open GroundTheory.Arith.Etale (pullbackUnitApp pullbackUnitApp_res)

universe u

attribute [local instance] MvPolynomial.gradedAlgebra

noncomputable section

namespace ProjScheme

variable {A : Type u} [CommRing A] {n : ℕ} {X : Scheme.{u}} (i : X ⟶ projectiveSpace A n)

abbrev secX {Y : Scheme.{u}} (F : Y.Modules) (W : Y.Opens) (m : Γ(F, W)) :
    ((preMod Y).obj F).obj (op W) := m

abbrev secΓ {Y : Scheme.{u}} (F : Y.Modules) (W : Y.Opens) (m : ((preMod Y).obj F).obj (op W)) :
    Γ(F, W) := m

def projFun (F : X.Modules) (k : ℤ) (V : (projectiveSpace A n).Opens) (m : Γ(F, i ⁻¹ᵁ V))
    (s : Γ(SchemeCoh.twistingSheaf (ProjSpace.grading A n) k, V)) :
    ((preMod X).obj (F ⊗ twistingSheaf i k)).obj (op (i ⁻¹ᵁ V)) :=
  (tensorToSheaf F (twistingSheaf i k)).app (op (i ⁻¹ᵁ V))
    (secX F _ m ⊗ₜ secX (twistingSheaf i k) _ (pullbackUnitApp i _ V s))

variable (F : X.Modules) (k : ℤ) (V : (projectiveSpace A n).Opens)

lemma projFun_add_left (m m' : Γ(F, i ⁻¹ᵁ V))
    (s : Γ(SchemeCoh.twistingSheaf (ProjSpace.grading A n) k, V)) :
    projFun i F k V (m + m') s = projFun i F k V m s + projFun i F k V m' s := by
  unfold projFun
  rw [show secX F _ (m + m') = secX F _ m + secX F _ m' from rfl, TensorProduct.add_tmul]
  exact map_add _ _ _

lemma projFun_add_right (m : Γ(F, i ⁻¹ᵁ V))
    (s s' : Γ(SchemeCoh.twistingSheaf (ProjSpace.grading A n) k, V)) :
    projFun i F k V m (s + s') = projFun i F k V m s + projFun i F k V m s' := by
  unfold projFun
  rw [map_add (f := _), show secX (twistingSheaf i k) _ (pullbackUnitApp i _ V s + pullbackUnitApp i _ V s') =
    secX (twistingSheaf i k) _ (pullbackUnitApp i _ V s) +
      secX (twistingSheaf i k) _ (pullbackUnitApp i _ V s') from rfl, TensorProduct.tmul_add]
  exact map_add _ _ _

lemma projFun_smul_left (r : ringOn _ V) (m : Γ(F, i ⁻¹ᵁ V))
    (s : Γ(SchemeCoh.twistingSheaf (ProjSpace.grading A n) k, V)) :
    projFun i F k V (secΓ F _ (appR i V r • secX F _ m)) s =
      appR i V r • projFun i F k V m s := by
  let a : X.sheaf.obj.obj (op (i ⁻¹ᵁ V)) := i.app V r
  unfold projFun
  rw [show secX F _ (secΓ F _ (appR i V r • secX F _ m)) =
    a • secX F _ m from rfl, ← TensorProduct.smul_tmul' a]
  exact map_smul _ a _

lemma projFun_smul_right (r : ringOn _ V) (m : Γ(F, i ⁻¹ᵁ V))
    (s : Γ(SchemeCoh.twistingSheaf (ProjSpace.grading A n) k, V)) :
    projFun i F k V m (secΓ (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k) _
        (r • secX (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k) _ s)) =
      appR i V r • projFun i F k V m s := by
  let a : X.sheaf.obj.obj (op (i ⁻¹ᵁ V)) := i.app V r
  unfold projFun
  rw [show secX (twistingSheaf i k) _ (pullbackUnitApp i _ V (secΓ (SchemeCoh.twistingSheaf
    (ProjSpace.grading A n) k) _ (r • secX (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k)
      _ s))) = a • secX (twistingSheaf i k) _ (pullbackUnitApp i _ V s) from
    pullbackUnitApp_smul i _ V r s, TensorProduct.tmul_smul a]
  exact map_smul _ a _

def projLin :
    ((preMod _).obj ((Scheme.Modules.pushforward i).obj F)).obj (op V) →ₗ[Γ(projectiveSpace A n, V)]
      ((preMod _).obj (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k)).obj (op V)
        →ₗ[Γ(projectiveSpace A n, V)]
      ((preMod _).obj ((Scheme.Modules.pushforward i).obj (twist i F k))).obj (op V) :=
  LinearMap.mk₂ Γ(projectiveSpace A n, V) (fun m s => projFun i F k V m s)
    (fun m m' s => projFun_add_left i F k V m m' s)
    (fun r m s => projFun_smul_left i F k V r m s)
    (fun m s s' => projFun_add_right i F k V m s s')
    (fun r m s => projFun_smul_right i F k V r m s)

def projPre : (preMod _).obj ((Scheme.Modules.pushforward i).obj F) ⊗
      (preMod _).obj (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k) ⟶
    (preMod _).obj ((Scheme.Modules.pushforward i).obj (twist i F k)) :=
  PresheafOfModulesOfCommRing.homMk
    (R := (projectiveSpace A n).sheaf.obj)
    (fun V => ModuleCat.ofHom (TensorProduct.lift (projLin i F k V.unop)))
    (fun {V V'} f => ModuleCat.MonoidalCategory.tensor_ext fun m s => by
      have e1 := pullbackUnitApp_res i (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k) f.unop s
      have e2 := PresheafOfModules.naturality_apply (tensorToSheaf F (twistingSheaf i k))
        ((Opens.map i.base).map f.unop).op
        (secX F _ m ⊗ₜ secX (twistingSheaf i k) _ (pullbackUnitApp i _ V.unop s))
      change projFun i F k V'.unop (F.presheaf.map ((Opens.map i.base).map f.unop).op m)
          ((SchemeCoh.twistingSheaf (ProjSpace.grading A n) k).presheaf.map f.unop.op s) =
        ((preMod X).obj (F ⊗ twistingSheaf i k)).map ((Opens.map i.base).map f.unop).op
          (projFun i F k V.unop m s)
      unfold projFun
      rw [e1]
      exact e2)

def projectionMap :
    ProjSpace.twist ((Scheme.Modules.pushforward i).obj F) k ⟶
      (Scheme.Modules.pushforward i).obj (twist i F k) :=
  tensorLift (projPre i F k)

lemma projectionMap_tensorBasisMap (j : Fin (n + 1)) {V : (projectiveSpace A n).Opens}
    (hV : V ≤ ProjSpace.stdOpen A n j) (m : Γ((Scheme.Modules.pushforward i).obj F, V)) :
    (projectionMap i F k).app V (tensorBasisMap ((Scheme.Modules.pushforward i).obj F)
        (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k)
        (ProjTwist.upow (ProjSpace.grading A n) (ProjSpace.X_mem j) k) hV m) =
      tensorBasisMap F (twistingSheaf i k)
        (pullbackUnitApp i _ (ProjSpace.stdOpen A n j)
          (ProjTwist.upow (ProjSpace.grading A n) (ProjSpace.X_mem j) k))
        ((Opens.map i.base).monotone hV) (secΓ F _ m) := by
  have h := congrArg (fun φ => (PresheafOfModules.Hom.app φ (op V)).hom
      ((show ((preMod _).obj ((Scheme.Modules.pushforward i).obj F)).obj (op V) from m) ⊗ₜ
        resM ((preMod _).obj (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k)) hV
          (ProjTwist.upow (ProjSpace.grading A n) (ProjSpace.X_mem j) k) :
        ((preMod _).obj ((Scheme.Modules.pushforward i).obj F) ⊗
          (preMod _).obj (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k)).obj (op V)))
    (tensorToSheaf_tensorLift (projPre i F k))
  refine h.trans ?_
  change projFun i F k V m (resM _ hV (ProjTwist.upow (ProjSpace.grading A n)
    (ProjSpace.X_mem j) k)) = _
  unfold projFun
  have e := pullbackUnitApp_res i (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k) (homOfLE hV)
    (ProjTwist.upow (ProjSpace.grading A n) (ProjSpace.X_mem j) k)
  exact congrArg (fun y => (tensorToSheaf F (twistingSheaf i k)).app (op (i ⁻¹ᵁ V))
    (secX F _ m ⊗ₜ secX (twistingSheaf i k) _ y)) e

instance isIso_projectionMap : IsIso (projectionMap i F k) := by
  apply isIso_of_locally_bijective
  intro x
  obtain ⟨j, hj⟩ : ∃ j, x ∈ ProjSpace.stdOpen A n j :=
    Opens.mem_iSup.1 (by rw [ProjSpace.iSup_stdOpen]; trivial)
  refine ⟨ProjSpace.stdOpen A n j, hj, fun V hV => ?_⟩
  have hb₁ := tensorBasisMap_bijective (M := (Scheme.Modules.pushforward i).obj F)
    (ProjTwist.isBasisOn_upow (ProjSpace.grading A n) (ProjSpace.X_mem j) k) hV
  have hb₂ := tensorBasisMap_bijective (M := F)
    (isBasisOn_pullbackUnitApp i
      (ProjTwist.isBasisOn_upow (ProjSpace.grading A n) (ProjSpace.X_mem j) k))
    ((Opens.map i.base).monotone hV)
  have comm : (fun m => (projectionMap i F k).app V (tensorBasisMap
      ((Scheme.Modules.pushforward i).obj F) (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k)
      (ProjTwist.upow (ProjSpace.grading A n) (ProjSpace.X_mem j) k) hV m)) =
      (fun m => tensorBasisMap F (twistingSheaf i k)
        (pullbackUnitApp i _ (ProjSpace.stdOpen A n j)
          (ProjTwist.upow (ProjSpace.grading A n) (ProjSpace.X_mem j) k))
        ((Opens.map i.base).monotone hV) (secΓ F _ m)) :=
    funext fun m => projectionMap_tensorBasisMap i F k j hV m
  have h2 : Function.Bijective (fun m => (projectionMap i F k).app V (tensorBasisMap
      ((Scheme.Modules.pushforward i).obj F) (SchemeCoh.twistingSheaf (ProjSpace.grading A n) k)
      (ProjTwist.upow (ProjSpace.grading A n) (ProjSpace.X_mem j) k) hV m)) := by
    rw [comm]
    exact hb₂
  exact (Function.Bijective.of_comp_iff _ hb₁).1 h2

def pushforwardTwistIso' :
    ProjSpace.twist ((Scheme.Modules.pushforward i).obj F) k ≅
      (Scheme.Modules.pushforward i).obj (twist i F k) :=
  asIso (projectionMap i F k)

end ProjScheme

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionProj =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.Immersion =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.Immersion", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionProj\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionCech\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.NaturalLeray\npublic import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion\nimport GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionPush\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.Finite\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace Limits MonoidalCategory
  MvPolynomial

universe w' u

attribute [local instance] MvPolynomial.gradedAlgebra

noncomputable section

namespace ProjScheme

variable {A : Type u} [CommRing A] {n : ℕ} {X : Scheme.{u}} (i : X ⟶ projectiveSpace A n)
  [IsClosedImmersion i]

instance isQuasicoherent_pushforward (F : X.Modules) [F.IsQuasicoherent] :
    ((Scheme.Modules.pushforward i).obj F).IsQuasicoherent :=
  isQuasicoherent_pushforward_of_isAffineHom i F

theorem isCoherent_pushforward {F : X.Modules} (hF : IsCoherent F) :
    IsCoherent ((Scheme.Modules.pushforward i).obj F) :=
  isCoherent_pushforward_of_isClosedImmersion i hF


omit [IsClosedImmersion i] in
theorem isInvertibleSheaf_twistingSheaf (k : ℤ) : IsInvertibleSheaf (twistingSheaf i k) := by
  intro x
  obtain ⟨j, hj⟩ : ∃ j, i.base x ∈ ProjSpace.stdOpen A n j :=
    Opens.mem_iSup.1 (by rw [ProjSpace.iSup_stdOpen]; trivial)
  exact ⟨i ⁻¹ᵁ ProjSpace.stdOpen A n j, hj, _,
    isBasisOn_pullbackUnitApp i (ProjTwist.isBasisOn_upow _ (ProjSpace.X_mem j) k)⟩

instance isQuasicoherent_twist (F : X.Modules) [F.IsQuasicoherent] (k : ℤ) :
    (twist i F k).IsQuasicoherent :=
  isQuasicoherent_tensor_of_invertible F (isInvertibleSheaf_twistingSheaf i k)

def pushforwardTwistIso (F : X.Modules) (k : ℤ) :
    ProjSpace.twist ((Scheme.Modules.pushforward i).obj F) k ≅
      (Scheme.Modules.pushforward i).obj (twist i F k) :=
  pushforwardTwistIso' i F k

theorem exists_generatingSections_of_pushforward (M : X.Modules) [M.IsQuasicoherent]
    (h : ∃ σ : ((Scheme.Modules.pushforward i).obj M).GeneratingSections, σ.IsFiniteType) :
    ∃ σ : M.GeneratingSections, σ.IsFiniteType :=
  exists_generatingSections_of_pushforward_of_isAffineHom i M h

variable [X.Over (Spec (.of A))] [i.IsOver (Spec (.of A))]
  [HasExt.{w'} (Sheaf (Opens.grothendieckTopology X.toTopCat) AddCommGrpCat.{u})]
  [HasExt.{w'} (Sheaf (Opens.grothendieckTopology (projectiveSpace A n).toTopCat) AddCommGrpCat.{u})]

attribute [local instance] algebraOfOver

def HLinearEquivPushforward (F : X.Modules) [F.IsQuasicoherent] (p : ℕ) :
    Sheaf.H.{w'} (modulesAb F) p ≃ₗ[A]
      Sheaf.H.{w'} (modulesAb ((Scheme.Modules.pushforward i).obj F)) p :=
  have hUP : ⨆ j, ProjSpace.stdOpen A n j = ⊤ := ProjSpace.iSup_stdOpen
  have hUPaff : ∀ (m : ℕ) (t : Fin (m + 1) → Fin (n + 1)),
      IsAffineOpen (⨅ a, ProjSpace.stdOpen A n (t a)) := fun _ t => by
    rw [← inter_eq_iInf]
    exact ProjSpace.isAffineOpen_inter t
  have hUX : ⨆ j, i ⁻¹ᵁ ProjSpace.stdOpen A n j = ⊤ := by
    rw [← Scheme.Hom.preimage_iSup, ProjSpace.iSup_stdOpen]
    rfl
  have hUXaff : ∀ (m : ℕ) (t : Fin (m + 1) → Fin (n + 1)),
      IsAffineOpen (⨅ a, i ⁻¹ᵁ ProjSpace.stdOpen A n (t a)) := fun _ t => by
    have h := preimage_inter i (ProjSpace.stdOpen A n) t
    rw [← inter_eq_iInf (fun j => i ⁻¹ᵁ ProjSpace.stdOpen A n j) t, ← h]
    exact (ProjSpace.isAffineOpen_inter t).preimage i
  (cechHLinearEquivH (fun j => i ⁻¹ᵁ ProjSpace.stdOpen A n j) hUX hUXaff A F p).symm ≪≫ₗ
    (cechHPushforwardLinearEquiv i A F (ProjSpace.stdOpen A n) p).symm ≪≫ₗ
    cechHLinearEquivH (ProjSpace.stdOpen A n) hUP hUPaff A _ p

end ProjScheme

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.Immersion =====
