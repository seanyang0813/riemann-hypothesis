module

public import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeDescendsToFinitelyGeneratedSubring
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeStructureSheafCohomologyNoetherianStatement
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsAlgHomOfIsBaseChange
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StructureSheafCohomologyPullbackCompCupIdStatement
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
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeStructureSheafCohomologyAnyRing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianStructureCohomologyStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeStructureSheafCohomologyAnyRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeStructureSheafCohomologyAnyRing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsAlgHomOfIsBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeDescendsToFinitelyGeneratedSubring\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeStructureSheafCohomologyNoetherianStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.StructureSheafCohomologyPullbackCompCupIdStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.AbCoh

def semiToLin {S R : Type} [CommRing S] [CommRing R] [Algebra S R] {M N : Type} [AddCommGroup M] [Module S M]
    [AddCommGroup N] [Module R N] [Module S N] [IsScalarTower S R N] (f : M →ₛₗ[algebraMap S R] N) :
    M →ₗ[S] N where
  toFun := f
  map_add' := f.map_add
  map_smul' s m := by simp [f.map_smulₛₗ, algebraMap_smul]

theorem fp_of_tensor_equiv {S R M N : Type} [CommRing S] [CommRing R] [Algebra S R] [AddCommGroup M] [Module S M]
    [AddCommGroup N] [Module R N] {g : ℕ} (e : R ⊗[S] M ≃ₗ[R] N) (h : FP S M g) : FP R N g := by
  obtain ⟨h1, h2, h3⟩ := h
  refine ⟨Module.Finite.equiv e, Module.Projective.of_equiv e, fun p => ?_⟩
  rw [← Module.rankAtStalk_eq_of_equiv e, Module.rankAtStalk_baseChange, h3]

theorem wedge_of_isBaseChange {S R M N M₂ N₂ : Type} [CommRing S] [CommRing R] [Algebra S R]
    [AddCommGroup M] [Module S M] [AddCommGroup N] [Module R N] [Module S N] [IsScalarTower S R N]
    [AddCommGroup M₂] [Module S M₂] [AddCommGroup N₂] [Module R N₂] [Module S N₂] [IsScalarTower S R N₂]
    {φ : M →ₗ[S] N} {ψ : M₂ →ₗ[S] N₂} (hφ : IsBaseChange R φ) (hψ : IsBaseChange R ψ)
    (cM : M →ₗ[S] M →ₗ[S] M₂) (cN : N →ₗ[R] N →ₗ[R] N₂) (hc : ∀ m m', ψ (cM m m') = cN (φ m) (φ m'))
    (eM : ⋀[S]^2 M ≃ₗ[S] M₂) (heM : ∀ a b, eM (exteriorPower.ιMulti S 2 ![a, b]) = cM a b) :
    ∃ e : ⋀[R]^2 N ≃ₗ[R] N₂, ∀ a b, e (exteriorPower.ιMulti R 2 ![a, b]) = cN a b := by
  have hE := GlobalTheory.TopForm.isBaseChange_exteriorPower hφ 2
  let e : ⋀[R]^2 N ≃ₗ[R] N₂ := hE.equiv.symm ≪≫ₗ eM.baseChange S R _ _ ≪≫ₗ hψ.equiv
  refine ⟨e, ?_⟩
  have key : ∀ m m', e (exteriorPower.ιMulti R 2 ![φ m, φ m']) = cN (φ m) (φ m') := by
    intro m m'
    have h1 : exteriorPower.ιMulti R 2 ![φ m, φ m'] =
        GlobalTheory.exteriorPowerMapOver R 2 φ (exteriorPower.ιMulti S 2 ![m, m']) := by
      rw [GlobalTheory.exteriorPowerMapOver_ιMulti]
      congr 1
      funext k
      fin_cases k <;> rfl
    have h2 : hE.equiv.symm (GlobalTheory.exteriorPowerMapOver R 2 φ (exteriorPower.ιMulti S 2 ![m, m'])) =
        1 ⊗ₜ exteriorPower.ιMulti S 2 ![m, m'] := by
      rw [LinearEquiv.symm_apply_eq, IsBaseChange.equiv_tmul, one_smul]
    rw [h1]
    change hψ.equiv (eM.baseChange S R _ _ (hE.equiv.symm _)) = _
    rw [h2, LinearEquiv.baseChange_tmul, IsBaseChange.equiv_tmul, one_smul, heM, hc]
  let iw := exteriorPower.ιMulti R 2 (M := N)
  have u0 : ∀ a b x : N, (![x, b] : Fin 2 → N) = Function.update ![a, b] 0 x := by
    intro a b x; funext k; fin_cases k <;> simp
  have u1 : ∀ a b x : N, (![a, x] : Fin 2 → N) = Function.update ![a, b] 1 x := by
    intro a b x; funext k; fin_cases k <;> simp
  have add0 : ∀ a a' b : N, iw ![a + a', b] = iw ![a, b] + iw ![a', b] := by
    intro a a' b
    have := iw.map_update_add ![a, b] 0 a a'
    rwa [← u0 a b (a + a'), ← u0 a b a, ← u0 a b a'] at this
  have add1 : ∀ a b b' : N, iw ![a, b + b'] = iw ![a, b] + iw ![a, b'] := by
    intro a b b'
    have := iw.map_update_add ![a, b] 1 b b'
    rwa [← u1 a b (b + b'), ← u1 a b b, ← u1 a b b'] at this
  have smul0 : ∀ (r : R) (a b : N), iw ![r • a, b] = r • iw ![a, b] := by
    intro r a b
    have := iw.map_update_smul ![a, b] 0 r a
    rwa [← u0 a b (r • a), ← u0 a b a] at this
  have smul1 : ∀ (r : R) (a b : N), iw ![a, r • b] = r • iw ![a, b] := by
    intro r a b
    have := iw.map_update_smul ![a, b] 1 r b
    rwa [← u1 a b (r • b), ← u1 a b b] at this
  have zero0 : ∀ b : N, iw ![0, b] = 0 := fun b => by
    simpa using smul0 0 0 b
  have zero1 : ∀ a : N, iw ![a, 0] = 0 := fun a => by
    simpa using smul1 0 a 0
  intro a b
  induction a using hφ.inductionOn with
  | add x y hx hy => simp only [iw] at add0; rw [add0, map_add (f := _), hx, hy, map_add (f := _), LinearMap.add_apply]
  | smul r x hx => simp only [iw] at smul0; rw [smul0, map_smul, hx, map_smul, LinearMap.smul_apply]
  | tmul m =>
    induction b using hφ.inductionOn with
    | add x y hx hy => simp only [iw] at add1; rw [add1, map_add (f := _), hx, hy, map_add (f := _)]
    | smul r x hx => simp only [iw] at smul1; rw [smul1, map_smul, hx, map_smul]
    | tmul m' => exact key m m'

theorem tensor_equiv_of_tower {S R R' M N P : Type} [CommRing S] [CommRing R] [CommRing R'] [Algebra S R]
    [Algebra R R'] [Algebra S R'] [IsScalarTower S R R'] [AddCommGroup M] [Module S M] [AddCommGroup N]
    [Module R N] [AddCommGroup P] [Module R' P]
    (φ : M →ₛₗ[algebraMap S R] N) (χ : N →ₛₗ[algebraMap R R'] P) (θ : M →ₛₗ[algebraMap S R'] P)
    (hθ : ∀ m, χ (φ m) = θ m) (e1 : R ⊗[S] M ≃ₗ[R] N) (he1 : ∀ m, e1 (1 ⊗ₜ m) = φ m)
    (e2 : R' ⊗[S] M ≃ₗ[R'] P) (he2 : ∀ m, e2 (1 ⊗ₜ m) = θ m) :
    ∃ e : R' ⊗[R] N ≃ₗ[R'] P, ∀ c, e (1 ⊗ₜ c) = χ c := by
  refine ⟨(e1.symm.baseChange R R' _ _) ≪≫ₗ AlgebraTensorModule.cancelBaseChange S R R' R' M ≪≫ₗ e2,
    fun c => ?_⟩
  obtain ⟨x, rfl⟩ := e1.surjective c
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul r m =>
    have h1 : e1 (r ⊗ₜ m) = r • φ m := by
      rw [← he1, ← e1.map_smul, smul_tmul', smul_eq_mul, _root_.mul_one]
    have h2 : (algebraMap R R' r) ⊗ₜ[S] m = (algebraMap R R' r) • ((1 : R') ⊗ₜ[S] m) := by
      rw [smul_tmul', smul_eq_mul, _root_.mul_one]
    simp only [LinearEquiv.trans_apply, LinearEquiv.baseChange_tmul, LinearEquiv.symm_apply_apply,
      AlgebraTensorModule.cancelBaseChange_tmul]
    rw [Algebra.smul_def, _root_.mul_one, h2, e2.map_smul, he2, h1, χ.map_smulₛₗ, hθ]
  | add x y hx hy => simp only [tmul_add, map_add (f := _), hx, hy]

theorem oStr_of_noetherian : OStr := by
  intro R _ A _ g hA hg
  obtain ⟨S, B, _, φ, -, hfg, hB, hBg, hpb⟩ :=
    GlobalTheory.AbelianLimit.abelianScheme_descends_to_fg_subring R g A ∅ hA hg
  have : IsNoetherianRing S := Algebra.FiniteType.isNoetherianRing ℤ S
  obtain ⟨hFP, hW, hBC1, hBC2⟩ := _root_.GlobalTheory.AbCohRing.oStr_noetherian S B g hB hBg
  have hAB : IsPullback φ A.hom B.hom (spMap (algebraMap S R)) := hpb.1
  obtain ⟨e1, he1⟩ := hBC1 R A.left A.hom φ hAB
  obtain ⟨e2, he2⟩ := hBC2 R A.left A.hom φ hAB
  have hp1 : IsBaseChange R (semiToLin (pullHO1 hAB.w)) := IsBaseChange.of_equiv e1 he1
  have hp2 : IsBaseChange R (semiToLin (pullHO2 hAB.w)) := IsBaseChange.of_equiv e2 he2
  have hcomp := GlobalTheory.T.structureSheafCohomology_pullback_comp_cup_id
  refine ⟨fp_of_tensor_equiv e1 hFP, ?_, ?_, ?_⟩
  · obtain ⟨eM, heM⟩ := hW
    exact wedge_of_isBaseChange hp1 hp2 (cup _) (cup _)
      ((hcomp.2.1 S R B.left A.left B.hom A.hom (algebraMap S R) φ hAB.w).1) eM heM
  · intro R' _ _ X' s' ψ h
    letI : Algebra S R' := ((algebraMap R R').comp (algebraMap S R)).toAlgebra
    haveI : IsScalarTower S R R' := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
    have es : spMap (algebraMap R R') ≫ spMap (algebraMap S R) = spMap (algebraMap S R') := by
      simp only [spMap, ← Spec.map_comp]; rfl
    have hc : IsPullback (ψ ≫ φ) s' B.hom (spMap (algebraMap S R')) := es ▸ h.paste_horiz hAB
    obtain ⟨e3, he3⟩ := hBC1 R' X' s' (ψ ≫ φ) hc
    exact tensor_equiv_of_tower (pullHO1 hAB.w) (pullHO1 h.w) (pullHO1 hc.w)
      ((hcomp.1 S R B.left A.left B.hom A.hom (algebraMap S R) φ hAB.w R' X' s' (algebraMap R R') ψ h.w
        (algebraMap S R') (ψ ≫ φ) hc.w rfl (fun _ => rfl)).1) e1 he1 e3 he3
  · intro R' _ _ X' s' ψ h
    letI : Algebra S R' := ((algebraMap R R').comp (algebraMap S R)).toAlgebra
    haveI : IsScalarTower S R R' := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
    have es : spMap (algebraMap R R') ≫ spMap (algebraMap S R) = spMap (algebraMap S R') := by
      simp only [spMap, ← Spec.map_comp]; rfl
    have hc : IsPullback (ψ ≫ φ) s' B.hom (spMap (algebraMap S R')) := es ▸ h.paste_horiz hAB
    obtain ⟨e3, he3⟩ := hBC2 R' X' s' (ψ ≫ φ) hc
    exact tensor_equiv_of_tower (pullHO2 hAB.w) (pullHO2 h.w) (pullHO2 hc.w)
      ((hcomp.1 S R B.left A.left B.hom A.hom (algebraMap S R) φ hAB.w R' X' s' (algebraMap R R') ψ h.w
        (algebraMap S R') (ψ ≫ φ) hc.w rfl (fun _ => rfl)).2.1) e2 he2 e3 he3

end GlobalTheory.AbCoh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeStructureSheafCohomologyAnyRing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianStructureCohomologyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianStructureCohomologyStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeStructureSheafCohomologyAnyRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

theorem GlobalTheory.AbCoh.oStr : GlobalTheory.AbCoh.OStr := _root_.GlobalTheory.AbCoh.oStr_of_noetherian
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianStructureCohomologyStatement =====
