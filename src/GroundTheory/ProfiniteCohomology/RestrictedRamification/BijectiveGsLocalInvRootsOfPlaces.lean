module

public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLocal
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseFormal
public import GroundTheory.ProfiniteCohomology.PoincarePairs.IsDiscreteRepResHomCoindRes
public import GroundTheory.TateCohomology.CochainReverse
public import GroundTheory.ProfiniteCohomology.PoincarePairs.ConeProduct
public import GroundTheory.TateCohomology.CupGraded
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseDefs
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseInv
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLevel
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.Dimension
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseFixed
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseInputs
import GroundTheory.ProfiniteCohomology.Bridge
import GroundTheory.ProfiniteCohomology.FilteredHomology
import GroundTheory.ProfiniteCohomology.RestrictedRamification.Finite
import GroundTheory.ProfiniteCohomology.RestrictedRamification.FiniteOpen

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLocalDual, GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseReverse, GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseSwap, GroundTheory.ProfiniteCohomology.RestrictedRamification.BijectiveGsCompactZmodDualityMap, GroundTheory.ProfiniteCohomology.RestrictedRamification.BijectiveGsLocalInvRootsOfPlaces

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLocalDual =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLocalDual", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLocal\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseFormal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open IsDedekindDomain NumberField CategoryTheory MonoidalCategory GroundTheory.Global

noncomputable section

attribute [local instance 2000] Rep.hV2

section CompLinear

variable {n : ℕ} {R : Type*} [CommRing R]

theorem bijective_of_bijective_comp_linear {X X' Y Y' : Type*} {_ : AddCommGroup Y} {_ : AddCommGroup Y'}
    {_ : Module R Y} {_ : Module R Y'} {F : X → (Y →+ ZMod n)} (hF : Function.Bijective F) {α : X' → X}
    (hα : Function.Bijective α) {γ : Y' →ₗ[R] Y} (hγ : Function.Bijective γ) {F' : X' → (Y' →+ ZMod n)}
    (hF' : ∀ x' y', F' x' y' = F (α x') (γ y')) : Function.Bijective F' :=
  bijective_of_bijective_comp hF hα (γ := γ.toAddMonoidHom) hγ hF'

theorem neg_apply_bilin_eq {X X₀ Y Z : Type*} [AddCommGroup X] [AddCommGroup X₀] [AddCommGroup Y] [AddCommGroup Z]
    {_ : Module R X} {_ : Module R Y} {_ : Module R Z} {_ : Module R X₀} (t : Z →+ ZMod n)
    (B : X →ₗ[R] Y →ₗ[R] Z) (f : X₀ →ₗ[R] X) (x : X₀) (y : Y) :
    -t (B (f x) y) = (t.comp (bilinAddHom B (f (-x)))) y := by
  rw [AddMonoidHom.comp_apply, bilinAddHom_apply, map_neg, map_neg, LinearMap.neg_apply, map_neg]

end CompLinear

section LocalZMod

variable {H : Type} [Group H] [TopologicalSpace H] [IsTopologicalGroup H] [CompactSpace H]
  [TotallyDisconnectedSpace H] {m : ℕ} [NeZero m] {Dl : Rep.{0} (ULift.{0} ℤ) H} [IsDiscreteRep Dl]
  (Hd : DualityHypotheses m Dl) (hDl : ∀ d : Dl, m • d = 0)

theorem bijective_zmodMulPairing_tTop {r s : ℕ} (h : r + s = 2) :
    Function.Bijective fun x : cohomology (zmodRep.{0} H m) r =>
      Hd.tTop.comp (bilinAddHom (cupPairing (zmodMulPairing m Dl hDl) h) x) := by
  have hM : ∀ a : zmodRep.{0} H m, m • a = 0 := nsmul_zmodRep_eq_zero H m
  have : Finite (zmodRep.{0} H m) := inferInstanceAs (Finite (ULift.{0} (ZMod m)))
  have : IsDiscreteRep (dualRep Dl (zmodRep.{0} H m)) := isDiscreteRep_dualRep _ _
  refine bijective_of_bijective_comp (Hd.bijective_dualityMap_of_group (zmodRep.{0} H m) hM h)
    Function.bijective_id (γ := (cohomologyMap (zmodDualIso m Dl hDl).inv s).hom.toAddMonoidHom)
    (bijective_cohomologyMap_of_comp_eq_id _ _ (zmodDualIso m Dl hDl).inv_hom_id
      (zmodDualIso m Dl hDl).hom_inv_id s) fun x ω => ?_
  change Hd.tTop (cupPairing (zmodMulPairing m Dl hDl) h x ω) =
    Hd.tTop (cupPairing (evalPairing Dl (zmodRep.{0} H m)) h x ((cohomologyMap (zmodDualIso m Dl hDl).inv s).hom ω))
  congr 1
  have e := cupPairing_cohomologyMap (evalPairing Dl (zmodRep.{0} H m)) (𝟙 _) (zmodDualIso m Dl hDl).inv h x ω
  rw [cohomologyMap_id] at e
  refine Eq.trans ?_ e.symm
  rw [← tensorHom_zmodDualIso_zmodMulPairing m Dl hDl, ← Category.assoc, MonoidalCategory.tensorHom_comp_tensorHom,
    Category.id_comp, Iso.inv_hom_id, MonoidalCategory.id_tensorHom_id, Category.id_comp]


omit [TopologicalSpace H] [IsTopologicalGroup H] [CompactSpace H] [TotallyDisconnectedSpace H] [IsDiscreteRep Dl]
  [NeZero m] in
theorem comp_eq_tensorHom_zmodMulPairing {M Dm : Rep.{0} (ULift.{0} ℤ) H} (μ : M ⊗ Dm ⟶ Dm) (ρ : Dm ⟶ Dl)
    (ι : M ⟶ zmodRep.{0} H m)
    (hμ : ∀ (a : M) (d : Dm), μ.hom (a ⊗ₜ[ULift.{0} ℤ] d) = (ZMod.cast (ι.hom a).down : ℤ) • d) :
    μ ≫ ρ = (ι ⊗ₘ ρ) ≫ zmodMulPairing m Dl hDl := by
  refine Rep.hom_ext (Representation.IntertwiningMap.ext (TensorProduct.ext' fun a d => ?_))
  change ρ.hom (μ.hom (a ⊗ₜ[ULift.{0} ℤ] d)) = (zmodMulPairing m Dl hDl).hom (ι.hom a ⊗ₜ[ULift.{0} ℤ] ρ.hom d)
  rw [hμ, map_zsmul]
  obtain ⟨b⟩ := ι.hom a
  rw [zmodMulPairing_tmul]


omit [CompactSpace H] [TotallyDisconnectedSpace H] [NeZero m] in
theorem cohomologyMap_cupPairing_of_comp_eq {M Dm M' : Rep.{0} (ULift.{0} ℤ) H} [IsDiscreteRep M]
    [IsDiscreteRep Dm] [IsDiscreteRep M'] (μ : M ⊗ Dm ⟶ Dm) (μ' : M' ⊗ Dl ⟶ Dl) (ρ : Dm ⟶ Dl) (ι : M ⟶ M')
    (hμ : μ ≫ ρ = (ι ⊗ₘ ρ) ≫ μ') {r s q : ℕ} (h : r + s = q) (x : cohomology M r) (y : cohomology Dm s) :
    (cohomologyMap ρ q).hom (cupPairing μ h x y) =
      cupPairing μ' h ((cohomologyMap ι r).hom x) ((cohomologyMap ρ s).hom y) := by
  rw [cupPairing_cohomologyMap, ← hμ, ← cohomologyMap_cupPairing]

end LocalZMod

local notation "ℚ̄" => AlgebraicClosure ℚ

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)) (n : ℕ)
  [NeZero n]


omit [NeZero n] in
theorem nsmul_galRootsOfUnity_local (v : S)
    (ω : galRootsOfUnity.{0} ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)
      (AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)) n) : n • ω = 0 := by
  apply Additive.toMul.injective
  apply Subtype.ext
  change ((Additive.toMul ω : rootsOfUnity n
    (AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))) :
      (AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))ˣ) ^ n = 1
  exact (mem_rootsOfUnity n _).1 (Additive.toMul ω).2

def zmodResToLocal (v : S) :
    Rep.res (gsFinFamily S ιs v).toMonoidHom (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) ⟶
      zmodRep.{0} (AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1) ≃ₐ[
        (v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1]
          AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)) n :=
  Rep.ofHom ⟨LinearMap.id, fun _ => rfl⟩

omit [NeZero n] in
theorem bijective_zmodResToLocal (v : S) : Function.Bijective (zmodResToLocal S ιs n v).hom :=
  Function.bijective_id


omit [NeZero n] in
theorem pairingRes_zmodMulPairing_comp_gsRootsLocalMor (v : S) :
    pairingRes (gsFinFamily S ιs v).toMonoidHom (zmodMulPairing n (gsRoots S n) (nsmul_gsRoots S n)) ≫
        gsRootsLocalMor S ιs n v =
      (zmodResToLocal S ιs n v ⊗ₘ gsRootsLocalMor S ιs n v) ≫
        zmodMulPairing n (galRootsOfUnity.{0} ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)
          (AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)) n) (nsmul_galRootsOfUnity_local S n v) := by
  refine comp_eq_tensorHom_zmodMulPairing (nsmul_galRootsOfUnity_local S n v) _ _ _ fun a d => ?_
  obtain ⟨a⟩ := a
  exact zmodMulPairing_tmul n (gsRoots S n) (nsmul_gsRoots S n) a d



theorem gsLocalInvRoots_cupPairing (v : S) {r s : ℕ} (h : r + s = 2)
    (ξ : cohomology (Rep.res (gsFinFamily S ιs v).toMonoidHom (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n)) r)
    (η : cohomology (Rep.res (gsFinFamily S ιs v).toMonoidHom (gsRoots S n)) s) :
    gsLocalInvRoots S ιs n v (cupPairing (pairingRes (gsFinFamily S ιs v).toMonoidHom
        (zmodMulPairing n (gsRoots S n) (nsmul_gsRoots S n))) h ξ η) =
      (localDualityHypotheses (Ksep := AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))
        (natCast_ne_zero_adicCompletion S n v)).tTop
        (cupPairing (zmodMulPairing n (galRootsOfUnity.{0} ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)
          (AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)) n) (nsmul_galRootsOfUnity_local S n v)) h
          ((cohomologyMap (zmodResToLocal S ιs n v) r).hom ξ) ((cohomologyMap (gsRootsLocalMor S ιs n v) s).hom η)) := by
  refine (gsLocalInvRoots_eq S ιs n v _).trans (congrArg
    (localDualityHypotheses (Ksep := AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))
      (natCast_ne_zero_adicCompletion S n v)).tTop ?_)
  exact cohomologyMap_cupPairing_of_comp_eq _ _ _ _
    (pairingRes_zmodMulPairing_comp_gsRootsLocalMor S ιs n v) h ξ η

variable (hμ : ∀ ζ : ℚ̄, ζ ^ n = 1 → ζ ∈ K.1)
include hμ

theorem bijective_gsLocalPairing_two (v : S) :
    Function.Bijective fun ξ : cohomology (Rep.res (gsFinFamily S ιs v).toMonoidHom
        (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n)) 2 =>
      (gsLocalInvRoots S ιs n v).comp ((bilinAddHom (cupPairing (pairingRes (gsFinFamily S ιs v).toMonoidHom
        (zmodMulPairingRight n (gsRoots S n) (nsmul_gsRoots S n))) (show 0 + 2 = 2 from rfl))).flip ξ) := by
  refine bijective_of_bijective_comp_linear (bijective_zmodMulPairing_tTop
    (localDualityHypotheses (Ksep := AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))
      (natCast_ne_zero_adicCompletion S n v)) (nsmul_galRootsOfUnity_local S n v) (show 2 + 0 = 2 from rfl))
    (bijective_cohomologyMap_of_bijective _ (bijective_zmodResToLocal S ιs n v) 2)
    (γ := (cohomologyMap (gsRootsLocalMor S ιs n v) 0).hom)
    (bijective_cohomologyMap_of_bijective _ (bijective_gsRootsLocalMor S ιs n hμ v) 0) fun ξ η => ?_
  change gsLocalInvRoots S ιs n v (cupPairing (pairingRes (gsFinFamily S ιs v).toMonoidHom
    (zmodMulPairingRight n (gsRoots S n) (nsmul_gsRoots S n))) (show 0 + 2 = 2 from rfl) η ξ) = _
  refine (congrArg (gsLocalInvRoots S ιs n v) (cupPairing_pairingRes_zmodMulPairing_two_zero
    (gsFinFamily S ιs v).toMonoidHom (gsRoots S n) (nsmul_gsRoots S n) (show 2 + 0 = 2 from rfl)
    (show 0 + 2 = 2 from rfl) ξ η).symm).trans ?_
  exact gsLocalInvRoots_cupPairing S ιs n v _ ξ η

theorem bijective_gsLocalPairing_one (v : S) :
    Function.Bijective fun ξ : cohomology (Rep.res (gsFinFamily S ιs v).toMonoidHom
        (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n)) 1 =>
      (gsLocalInvRoots S ιs n v).comp ((bilinAddHom (cupPairing (pairingRes (gsFinFamily S ιs v).toMonoidHom
        (zmodMulPairingRight n (gsRoots S n) (nsmul_gsRoots S n))) (show 1 + 1 = 2 from rfl))).flip ξ) := by
  refine bijective_of_bijective_comp_linear (bijective_zmodMulPairing_tTop
    (localDualityHypotheses (Ksep := AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))
      (natCast_ne_zero_adicCompletion S n v)) (nsmul_galRootsOfUnity_local S n v) (show 1 + 1 = 2 from rfl))
    ((bijective_cohomologyMap_of_bijective _ (bijective_zmodResToLocal S ιs n v) 1).comp neg_bijective)
    (γ := (cohomologyMap (gsRootsLocalMor S ιs n v) 1).hom)
    (bijective_cohomologyMap_of_bijective _ (bijective_gsRootsLocalMor S ιs n hμ v) 1) fun ξ η => ?_
  change gsLocalInvRoots S ιs n v (cupPairing (pairingRes (gsFinFamily S ιs v).toMonoidHom
    (zmodMulPairingRight n (gsRoots S n) (nsmul_gsRoots S n))) (show 1 + 1 = 2 from rfl) η ξ) = _
  have e := cupPairing_pairingRes_zmodMulPairing_one (gsFinFamily S ιs v).toMonoidHom (gsRoots S n)
    (nsmul_gsRoots S n) (show 1 + 1 = 2 from rfl) ξ η
  refine (congrArg (gsLocalInvRoots S ιs n v) (neg_eq_iff_eq_neg.2 e).symm).trans ?_
  refine (map_neg _ _).trans ?_
  refine (congrArg Neg.neg (gsLocalInvRoots_cupPairing S ιs n v _ ξ η)).trans ?_
  exact neg_apply_bilin_eq _ _ _ _ _

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLocalDual =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseReverse =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseReverse", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.PoincarePairs.IsDiscreteRepResHomCoindRes\npublic import GroundTheory.TateCohomology.CochainReverse\nimport GroundTheory.ProfiniteCohomology.Bridge\nimport GroundTheory.ProfiniteCohomology.FilteredHomology\npublic import GroundTheory.ProfiniteCohomology.PoincarePairs.ConeProduct\npublic import GroundTheory.TateCohomology.CupGraded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory MonoidalCategory GroundTheory.GroupCoh

universe u

section Twisted

variable {k : Type u} [CommRing k] {M N P M' N' : CochainComplex (ModuleCat.{u} k) ℕ}

theorem LeibnizPairing.homologyMap_homology_eq_smul (μ₁ : LeibnizPairing M N P)
    (μ₂ : LeibnizPairing N' M' P) (F : P ⟶ P) (G : N ⟶ N') (H : M ⟶ M') (c : ℕ → ℕ → k)
    (hF : ∀ {r s n : ℕ} (h : r + s = n) (h' : s + r = n) (x : M.X r) (y : N.X s),
      (F.f n).hom (μ₁.μ h x y) = c r s • μ₂.μ h' ((G.f s).hom y) ((H.f r).hom x))
    {r s n : ℕ} (h : r + s = n) (h' : s + r = n) (x : M.homology r) (y : N.homology s) :
    (HomologicalComplex.homologyMap F n).hom (μ₁.homology h x y) =
      c r s • μ₂.homology h' ((HomologicalComplex.homologyMap G s).hom y)
        ((HomologicalComplex.homologyMap H r).hom x) := by
  obtain ⟨x, rfl⟩ := homologyπ_hom_surjective M r x
  obtain ⟨y, rfl⟩ := homologyπ_hom_surjective N s y
  rw [homologyMap_homologyπ_apply, homologyMap_homologyπ_apply, LeibnizPairing.homology_homologyπ,
    LeibnizPairing.homology_homologyπ, homologyMap_homologyπ_apply, ← map_smul]
  congr 1
  apply iCycles_hom_injective
  rw [iCycles_cyclesMap_apply, LeibnizPairing.iCycles_cycles, map_smul, LeibnizPairing.iCycles_cycles,
    iCycles_cyclesMap_apply, iCycles_cyclesMap_apply]
  exact hF h h' _ _

end Twisted

section Reverse

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

theorem continuous_revInv (n : ℕ) : Continuous fun x : Fin n → G => revInv x :=
  continuous_pi fun i => (continuous_apply i.rev).inv

variable (A : Rep.{u} k G) [IsDiscreteRep A]

theorem isLocallyConstant_revCochain {n : ℕ} {f : (Fin n → G) → A} (hf : IsLocallyConstant f) :
    IsLocallyConstant (revCochain n f) :=
  (isLocallyConstant_ρ_apply A ((continuous_apply (Fin.last n)).comp (continuous_partialProd n))
    (hf.comp_continuous (continuous_revInv n))).comp ((-1 : k) ^ triangle n • ·)

noncomputable def revLinear (n : ℕ) : locallyConstantCochains A n →ₗ[k] locallyConstantCochains A n :=
  (revₗ A n).restrict fun _ hf => isLocallyConstant_revCochain A hf

noncomputable def revLC : cochainsComplex A ⟶ cochainsComplex A where
  f n := ModuleCat.ofHom (revLinear A n)
  comm' i j (hij : i + 1 = j) := by
    subst hij
    rw [cochainsComplex_d]
    ext x : 2
    apply Subtype.ext
    exact d_revCochain i x.1

theorem cochainOf_revLC (n : ℕ) (x : (cochainsComplex A).X n) :
    cochainOf A (((revLC A).f n).hom x) = revCochain n (cochainOf A x) :=
  rfl

variable {A}


omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep A] in
theorem revCochain_zero (f : (Fin 0 → G) → A) : revCochain 0 f = f := by
  funext x
  rw [revCochain_apply, triangle_zero, pow_zero, one_smul, show Fin.last 0 = 0 from rfl,
    Fin.partialProd_zero, map_one, Module.End.one_apply]
  exact congrArg f (Subsingleton.elim _ _)

theorem revLC_comp_cochainsMapAlong {H : Type u} [Group H] [TopologicalSpace H] [IsTopologicalGroup H]
    (φ : H →* G) (hφ : Continuous φ) {B : Rep.{u} k H} [IsDiscreteRep B] (f : Rep.res φ A ⟶ B) :
    revLC A ≫ cochainsMapAlong φ hφ f = cochainsMapAlong φ hφ f ≫ revLC B := by
  refine HomologicalComplex.hom_ext _ _ fun n => ModuleCat.hom_ext (LinearMap.ext fun x => ?_)
  apply cochainOf_injective
  funext h
  change f.hom (revCochain (A := A) n (cochainOf A x) (⇑φ ∘ h)) =
    revCochain (A := B) n (fun h' => f.hom (cochainOf A x (⇑φ ∘ h'))) h
  rw [revCochain_apply, revCochain_apply, map_smul]
  congr 1
  have e1 : Fin.partialProd (⇑φ ∘ h) (Fin.last n) = φ (Fin.partialProd h (Fin.last n)) :=
    partialProd_comp_monoidHom φ h (Fin.last n)
  have e2 : revInv (⇑φ ∘ h) = ⇑φ ∘ revInv h := by
    funext i
    simp [revInv_apply]
  rw [e1, e2]
  exact Rep.hom_comm_apply f _ _

end Reverse

section Homotopy

variable {k G : Type u} [CommRing k] [Group G] {A : Rep.{u} k G}

theorem revD_zero_apply (f : (Fin 0 → G) → A) (g : G) :
    (inhomogeneousCochains.d A 0).hom f ![g] = A.ρ g (f Fin.elim0) - f Fin.elim0 := by
  have h : ∀ x : Fin 0 → G, f x = f Fin.elim0 := fun x => by rw [Subsingleton.elim x Fin.elim0]
  simp [inhomogeneousCochains.d_hom_apply, h]
  abel

theorem revD_one_apply (w : (Fin 1 → G) → A) (g h : G) :
    (inhomogeneousCochains.d A 1).hom w ![g, h] = A.ρ g (w ![h]) - w ![g * h] + w ![g] := by
  have e1 : (fun i : Fin 1 => (![g, h] : Fin 2 → G) i.succ) = ![h] := by
    funext i; rw [Fin.fin_one_eq_zero i]; rfl
  have e2 : Fin.contractNth 0 (· * ·) (![g, h] : Fin 2 → G) = ![g * h] := by
    funext i; rw [Fin.fin_one_eq_zero i]; simp [Fin.contractNth]
  have e3 : Fin.contractNth 1 (· * ·) (![g, h] : Fin 2 → G) = ![g] := by
    funext i; rw [Fin.fin_one_eq_zero i]; simp [Fin.contractNth]
  simp only [inhomogeneousCochains.d_hom_apply]
  simp only [e1]
  simp
  rw [e2, e3]
  abel

theorem revD_two_apply (f : (Fin 2 → G) → A) (a b c : G) :
    (inhomogeneousCochains.d A 2).hom f ![a, b, c] =
      A.ρ a (f ![b, c]) - f ![a * b, c] + f ![a, b * c] - f ![a, b] := by
  rw [inhomogeneousCochains.d_hom_apply, Fin.sum_univ_three]
  have h0 : Fin.contractNth (0 : Fin 3) (· * ·) (![a, b, c] : Fin 3 → G) = ![a * b, c] := by
    funext i
    fin_cases i
    · rw [Fin.contractNth_apply_of_eq _ _ _ _ (by simp)]; rfl
    · rw [Fin.contractNth_apply_of_gt _ _ _ _ (by simp)]; rfl
  have h1 : Fin.contractNth (1 : Fin 3) (· * ·) (![a, b, c] : Fin 3 → G) = ![a, b * c] := by
    funext i
    fin_cases i
    · rw [Fin.contractNth_apply_of_lt _ _ _ _ (by simp)]; rfl
    · rw [Fin.contractNth_apply_of_eq _ _ _ _ (by simp)]; rfl
  have h2 : Fin.contractNth (2 : Fin 3) (· * ·) (![a, b, c] : Fin 3 → G) = ![a, b] := by
    funext i
    fin_cases i
    · rw [Fin.contractNth_apply_of_lt _ _ _ _ (by simp)]; rfl
    · rw [Fin.contractNth_apply_of_lt _ _ _ _ (by simp)]; rfl
  have h3 : (fun i : Fin 2 => (![a, b, c] : Fin 3 → G) i.succ) = ![b, c] := by
    funext i
    fin_cases i <;> rfl
  rw [h0, h1, h2, h3]
  simp only [Fin.val_zero, Fin.val_one, Fin.val_two, zero_add, pow_one, neg_smul, one_smul,
    Nat.reduceAdd, even_two, Even.neg_pow, one_pow]
  have : ((-1 : k) ^ 3) = -1 := by norm_num
  rw [this, neg_smul, one_smul]
  simp only [Matrix.cons_val_zero]
  abel

theorem revCochain_one_apply (f : (Fin 1 → G) → A) (g : G) :
    revCochain 1 f ![g] = -A.ρ g (f ![g⁻¹]) := by
  rw [revCochain_apply]
  have e1 : Fin.partialProd (![g] : Fin 1 → G) (Fin.last 1) = g := by
    rw [show (Fin.last 1 : Fin 2) = (0 : Fin 1).succ from rfl, Fin.partialProd_succ, Fin.castSucc_zero,
      Fin.partialProd_zero, one_mul]
    rfl
  have e2 : revInv (![g] : Fin 1 → G) = ![g⁻¹] := by
    funext i
    rw [Fin.fin_one_eq_zero i]
    rfl
  rw [e1, e2, show GroundTheory.GroupCoh.triangle 1 = 1 from rfl, pow_one, neg_one_smul]

theorem revCochain_two_apply (x : (Fin 2 → G) → A) (a b : G) :
    revCochain 2 x ![a, b] = -A.ρ (a * b) (x ![b⁻¹, a⁻¹]) := by
  rw [revCochain_apply]
  have e1 : Fin.partialProd (![a, b] : Fin 2 → G) (Fin.last 2) = a * b := by
    rw [show (Fin.last 2 : Fin 3) = (1 : Fin 2).succ from rfl, Fin.partialProd_succ,
      show ((1 : Fin 2).castSucc : Fin 3) = (0 : Fin 2).succ from rfl, Fin.partialProd_succ,
      Fin.castSucc_zero, Fin.partialProd_zero, one_mul]
    rfl
  have e2 : revInv (![a, b] : Fin 2 → G) = ![b⁻¹, a⁻¹] := by
    funext i
    fin_cases i <;> rfl
  rw [e1, e2, show GroundTheory.GroupCoh.triangle 2 = 3 from rfl]
  have : ((-1 : k) ^ 3) = -1 := by norm_num
  rw [this, neg_one_smul]


variable (A) in
def revHtpyOne (f : (Fin 1 → G) → A) : (Fin 0 → G) → A :=
  fun _ => f ![1]


variable (A) in
def revHtpyTwo (x : (Fin 2 → G) → A) : (Fin 1 → G) → A :=
  fun g => -x ![g 0, (g 0)⁻¹] - A.ρ (g 0) (x ![1, 1])

omit [Group G] in
theorem fin_one_eq_vec (g : Fin 1 → G) : g = ![g 0] := by
  funext i
  rw [Fin.fin_one_eq_zero i]
  rfl

omit [Group G] in
theorem fin_two_eq_vec (g : Fin 2 → G) : g = ![g 0, g 1] := by
  funext i
  fin_cases i <;> rfl

theorem revCochain_one_sub (f : (Fin 1 → G) → A) :
    revCochain 1 f - f = (inhomogeneousCochains.d A 0).hom (revHtpyOne A f) +
      revHtpyTwo A ((inhomogeneousCochains.d A 1).hom f) := by
  funext g
  rw [fin_one_eq_vec g]
  simp only [Pi.sub_apply, Pi.add_apply]
  rw [revCochain_one_apply, revD_zero_apply]
  simp only [revHtpyOne, revHtpyTwo, Matrix.cons_val_zero]
  rw [revD_one_apply, revD_one_apply, mul_inv_cancel, one_mul]
  simp only [map_add (f := _), map_sub, map_one, Module.End.one_apply]
  abel

theorem revCochain_two_sub (x : (Fin 2 → G) → A) (hx : (inhomogeneousCochains.d A 2).hom x = 0) :
    revCochain 2 x - x = (inhomogeneousCochains.d A 1).hom (revHtpyTwo A x) := by
  have C : ∀ a b c : G, A.ρ a (x ![b, c]) - x ![a * b, c] + x ![a, b * c] - x ![a, b] = 0 :=
    fun a b c => (revD_two_apply x a b c).symm.trans (congrFun hx ![a, b, c])
  funext v
  rw [fin_two_eq_vec v]
  simp only [Pi.sub_apply]
  rw [revCochain_two_apply, revD_one_apply]
  simp only [revHtpyTwo, Matrix.cons_val_zero]
  set a := v 0
  set b := v 1
  have C1 : x ![a * b, b⁻¹ * a⁻¹] = A.ρ a (x ![b, b⁻¹ * a⁻¹]) + x ![a, a⁻¹] - x ![a, b] := by
    have h := C a b (b⁻¹ * a⁻¹)
    rw [mul_inv_cancel_left] at h
    calc x ![a * b, b⁻¹ * a⁻¹] = x ![a * b, b⁻¹ * a⁻¹] + 0 := (add_zero _).symm
      _ = x ![a * b, b⁻¹ * a⁻¹] + (A.ρ a (x ![b, b⁻¹ * a⁻¹]) - x ![a * b, b⁻¹ * a⁻¹] + x ![a, a⁻¹] -
          x ![a, b]) := by rw [h]
      _ = _ := by abel
  have C2 : x ![b, b⁻¹ * a⁻¹] = x ![1, a⁻¹] - A.ρ b (x ![b⁻¹, a⁻¹]) + x ![b, b⁻¹] := by
    have h := C b b⁻¹ a⁻¹
    rw [mul_inv_cancel] at h
    calc x ![b, b⁻¹ * a⁻¹] = x ![b, b⁻¹ * a⁻¹] - 0 := (sub_zero _).symm
      _ = x ![b, b⁻¹ * a⁻¹] - (A.ρ b (x ![b⁻¹, a⁻¹]) - x ![1, a⁻¹] + x ![b, b⁻¹ * a⁻¹] -
          x ![b, b⁻¹]) := by rw [h]
      _ = _ := by abel
  have C3 : x ![1, a⁻¹] = x ![1, 1] := by
    have h := C 1 1 a⁻¹
    rw [one_mul, one_mul, map_one, Module.End.one_apply] at h
    calc x ![1, a⁻¹] = x ![1, a⁻¹] - 0 := (sub_zero _).symm
      _ = x ![1, a⁻¹] - (x ![1, a⁻¹] - x ![1, a⁻¹] + x ![1, a⁻¹] - x ![1, 1]) := by rw [h]
      _ = _ := by abel
  rw [mul_inv_rev, C1, C2, C3]
  simp only [map_add (f := _), map_sub, map_neg, map_mul, Module.End.mul_apply]
  abel

end Homotopy

section Identity

variable {k : Type u} [CommRing k]

theorem homologyMap_hom_apply_eq_self {P : CochainComplex (ModuleCat.{u} k) ℕ} (F : P ⟶ P) (m : ℕ)
    (h : ∀ z : P.cycles (m + 1), ∃ c : P.X m,
      (F.f (m + 1)).hom ((P.iCycles (m + 1)).hom z) - (P.iCycles (m + 1)).hom z = (P.d m (m + 1)).hom c)
    (y : P.homology (m + 1)) : (HomologicalComplex.homologyMap F (m + 1)).hom y = y := by
  obtain ⟨z, rfl⟩ := homologyπ_hom_surjective P (m + 1) y
  rw [homologyMap_homologyπ_apply]
  obtain ⟨c, hc⟩ := h z
  exact homologyπ_eq_of_iCycles_sub_eq_d P _ _ c (by rw [iCycles_cyclesMap_apply]; exact hc)

theorem d_iCycles_hom_apply (P : CochainComplex (ModuleCat.{u} k) ℕ) (n j : ℕ) (z : P.cycles n) :
    (P.d n j).hom ((P.iCycles n).hom z) = 0 :=
  (hom_apply_hom_apply_of_comp_eq (P.iCycles_d n j) z).trans rfl

end Identity

section LocallyConstant

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {A : Rep.{u} k G} [IsDiscreteRep A]

omit [IsTopologicalGroup G] [IsDiscreteRep A] in
theorem isLocallyConstant_revHtpyOne (f : (Fin 1 → G) → A) : IsLocallyConstant (revHtpyOne A f) :=
  IsLocallyConstant.const _

theorem continuous_vec_inv : Continuous fun g : Fin 1 → G => (![g 0, (g 0)⁻¹] : Fin 2 → G) := by
  refine continuous_pi fun i => ?_
  fin_cases i
  · exact continuous_apply 0
  · exact (continuous_apply 0).inv

omit [IsTopologicalGroup G] in
theorem isLocallyConstant_revHtpyTwo [IsTopologicalGroup G] {x : (Fin 2 → G) → A} (hx : IsLocallyConstant x) :
    IsLocallyConstant (revHtpyTwo A x) := by
  have h1 : IsLocallyConstant fun g : Fin 1 → G => x ![g 0, (g 0)⁻¹] :=
    hx.comp_continuous continuous_vec_inv
  have h2 : IsLocallyConstant fun g : Fin 1 → G => A.ρ (g 0) (x ![1, 1]) :=
    isLocallyConstant_ρ_apply A (continuous_apply 0) (IsLocallyConstant.const _)
  exact (h1.comp Neg.neg).comp₂ h2 (· - ·)

theorem cochainOf_sub' {i : ℕ} (a b : (cochainsComplex A).X i) :
    cochainOf A (a - b) = cochainOf A a - cochainOf A b :=
  rfl

noncomputable def revHtpyOneLC (x : (cochainsComplex A).X 1) : (cochainsComplex A).X 0 :=
  mkCochain A (revHtpyOne A (cochainOf A x)) (isLocallyConstant_revHtpyOne _)

noncomputable def revHtpyTwoLC (x : (cochainsComplex A).X 2) : (cochainsComplex A).X 1 :=
  mkCochain A (revHtpyTwo A (cochainOf A x)) (isLocallyConstant_revHtpyTwo (isLocallyConstant_cochainOf x))

omit [TopologicalSpace G] [IsTopologicalGroup G] in
theorem revHtpyTwo_zero : revHtpyTwo A (0 : (Fin 2 → G) → A) = 0 := by
  funext g
  simp [revHtpyTwo]

theorem revLC_one_sub (x : (cochainsComplex A).X 1) :
    ((revLC A).f 1).hom x - x = ((cochainsComplex A).d 0 1).hom (revHtpyOneLC x) +
      revHtpyTwoLC (((cochainsComplex A).d 1 2).hom x) := by
  apply cochainOf_injective
  rw [cochainOf_add, cochainOf_sub', cochainOf_revLC, revCochain_one_sub]
  have e1 := cochainOf_d (A := A) (revHtpyOneLC x)
  have e2 := cochainOf_d (A := A) x
  refine congrArg₂ (· + ·) e1.symm ?_
  change revHtpyTwo A ((inhomogeneousCochains.d A 1).hom (cochainOf A x)) =
    revHtpyTwo A (cochainOf A (((cochainsComplex A).d 1 2).hom x))
  rw [← e2]

theorem revLC_two_sub (x : (cochainsComplex A).X 2) (hx : ((cochainsComplex A).d 2 3).hom x = 0) :
    ((revLC A).f 2).hom x - x = ((cochainsComplex A).d 1 2).hom (revHtpyTwoLC x) := by
  apply cochainOf_injective
  rw [cochainOf_sub', cochainOf_revLC, cochainOf_d]
  refine revCochain_two_sub (cochainOf A x) ?_
  rw [← cochainOf_d, hx]
  rfl

theorem revHtpyTwoLC_zero : revHtpyTwoLC (0 : (cochainsComplex A).X 2) = 0 :=
  cochainOf_injective revHtpyTwo_zero

theorem homologyMap_revLC_one (y : cohomology A 1) :
    (HomologicalComplex.homologyMap (revLC A) 1).hom y = y :=
  homologyMap_hom_apply_eq_self (revLC A) 0 (fun z => ⟨revHtpyOneLC (((cochainsComplex A).iCycles 1).hom z), by
    rw [revLC_one_sub, d_iCycles_hom_apply, revHtpyTwoLC_zero, add_zero]⟩) y

theorem homologyMap_revLC_two (y : cohomology A 2) :
    (HomologicalComplex.homologyMap (revLC A) 2).hom y = y :=
  homologyMap_hom_apply_eq_self (revLC A) 1 (fun z => ⟨revHtpyTwoLC (((cochainsComplex A).iCycles 2).hom z),
    revLC_two_sub _ (d_iCycles_hom_apply _ 2 3 z)⟩) y

end LocallyConstant

section Naturality

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {A : Rep.{u} k G} [IsDiscreteRep A] {H : Type u} [Group H] [TopologicalSpace H] [IsTopologicalGroup H]
  (ψ : H →* G) (hψ : Continuous ψ) {B : Rep.{u} k H} [IsDiscreteRep B] (f : Rep.res ψ A ⟶ B)

theorem cochainsMapAlong_revHtpyTwoLC (x : (cochainsComplex A).X 2) :
    ((cochainsMapAlong ψ hψ f).f 1).hom (revHtpyTwoLC x) =
      revHtpyTwoLC (((cochainsMapAlong ψ hψ f).f 2).hom x) := by
  apply cochainOf_injective
  funext g
  change f.hom (revHtpyTwo A (cochainOf A x) (⇑ψ ∘ g)) =
    revHtpyTwo B (fun h => f.hom (cochainOf A x (⇑ψ ∘ h))) g
  simp only [revHtpyTwo, Function.comp_apply, map_sub, map_neg]
  have e1 : (⇑ψ ∘ ![g 0, (g 0)⁻¹] : Fin 2 → G) = ![ψ (g 0), (ψ (g 0))⁻¹] := by
    funext i; fin_cases i <;> simp
  have e2 : (⇑ψ ∘ ![(1 : H), 1] : Fin 2 → G) = ![1, 1] := by
    funext i; fin_cases i <;> simp
  rw [e1, e2, ← Rep.hom_comm_apply f (g 0)]
  rfl

end Naturality

section Cone

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {ι : Type u} {H : ι → Type u} [∀ v, Group (H v)] [∀ v, TopologicalSpace (H v)]
  [∀ v, IsTopologicalGroup (H v)] (φ : ∀ v, H v →ₜ* G) (A : Rep.{u} k G) [IsDiscreteRep A]
  (Aᵥ : ∀ v, Rep.{u} k (H v)) [∀ v, IsDiscreteRep (Aᵥ v)] (a : ∀ v, Rep.res (φ v).toMonoidHom A ⟶ Aᵥ v)

theorem localRes_comp_piMap_revLC :
    localRes φ A Aᵥ a ≫ piMap (fun v => revLC (Aᵥ v)) = revLC A ≫ localRes φ A Aᵥ a := by
  refine HomologicalComplex.hom_ext _ _ fun n => ModuleCat.hom_ext (LinearMap.ext fun x => funext fun v => ?_)
  exact (congrArg (fun F => (F.f n).hom x)
    (revLC_comp_cochainsMapAlong (φ v).toMonoidHom (continuous_toMonoidHom (φ v)) (a v))).symm

noncomputable def revCone : compactCochains φ A Aᵥ a ⟶ compactCochains φ A Aᵥ a :=
  mappingCoconeNat.map (revLC A) (piMap fun v => revLC (Aᵥ v)) (localRes_comp_piMap_revLC φ A Aᵥ a)

theorem homologyMap_piMap_revLC_two (y : (piComplex fun v => cochainsComplex (Aᵥ v)).homology 2) :
    (HomologicalComplex.homologyMap (piMap fun v => revLC (Aᵥ v)) 2).hom y = y := by
  have key : ∀ x : (piComplex fun v => cochainsComplex (Aᵥ v)).X 2,
      ((piComplex fun v => cochainsComplex (Aᵥ v)).d 2 3).hom x = 0 →
      (((piMap fun v => revLC (Aᵥ v)).f 2).hom x - x =
        ((piComplex fun v => cochainsComplex (Aᵥ v)).d 1 2).hom (fun v => revHtpyTwoLC (x v))) := by
    intro x hx
    funext v
    have hz := congrFun hx v
    rw [piComplex_d_hom_apply'] at hz
    exact (revLC_two_sub (x v) hz).trans
      (piComplex_d_hom_apply' (fun v => cochainsComplex (Aᵥ v)) 1 2 (fun v => revHtpyTwoLC (x v)) v).symm
  exact homologyMap_hom_apply_eq_self _ 1 (fun z => ⟨_, key _
    (d_iCycles_hom_apply (piComplex fun v => cochainsComplex (Aᵥ v)) 2 3 z)⟩) y

theorem homologyMap_revCone_localToCompact (ξ : ∀ v, cohomology (Aᵥ v) 2) :
    (HomologicalComplex.homologyMap (revCone φ A Aᵥ a) 3).hom ((localToCompact φ A Aᵥ a 2).hom ξ) =
      (localToCompact φ A Aᵥ a 2).hom ξ := by
  have h := congrArg (fun F => F.hom ((localCohomologyIso Aᵥ 2).inv.hom ξ))
    (mappingCoconeNat.homologyδ_naturality (revLC A) (piMap fun v => revLC (Aᵥ v))
      (localRes_comp_piMap_revLC φ A Aᵥ a) 2)
  simp only [ModuleCat.hom_comp, LinearMap.comp_apply] at h
  rw [homologyMap_piMap_revLC_two] at h
  exact h

end Cone

section ConeElements

variable {k : Type u} [CommRing k] {K L : CochainComplex (ModuleCat.{u} k) ℕ} (f : K ⟶ L)

noncomputable def coconeMkSucc {n : ℕ} (x : K.X (n + 1)) (y : L.X n) : (mappingCoconeNat f).X (n + 1) :=
  ((x, shiftNegOneSucc L n y) : K.X (n + 1) × shiftNegOneX L (n + 1))

noncomputable def coconeMkZero (x : K.X 0) : (mappingCoconeNat f).X 0 :=
  ((x, 0) : K.X 0 × shiftNegOneX L 0)

noncomputable def coconeFst {n : ℕ} (p : (mappingCoconeNat f).X n) : K.X n :=
  (p : K.X n × shiftNegOneX L n).1

noncomputable def coconeSndSucc {n : ℕ} (p : (mappingCoconeNat f).X (n + 1)) : L.X n :=
  (p : K.X (n + 1) × shiftNegOneX L (n + 1)).2

theorem coconeMkSucc_smul {n : ℕ} (c : k) (x : K.X (n + 1)) (y : L.X n) :
    c • coconeMkSucc f x y = coconeMkSucc f (c • x) (c • y) :=
  rfl

theorem coconeMkSucc_eq_iff {n : ℕ} (x x' : K.X (n + 1)) (y y' : L.X n) :
    coconeMkSucc f x y = coconeMkSucc f x' y' ↔ x = x' ∧ y = y' :=
  ⟨fun h => ⟨congrArg Prod.fst h, congrArg Prod.snd h⟩, fun h => by rw [h.1, h.2]⟩

theorem d_coconeMkSucc {n : ℕ} (x : K.X (n + 1)) (y : L.X n) :
    ((mappingCoconeNat f).d (n + 1) (n + 1 + 1)).hom (coconeMkSucc f x y) =
      coconeMkSucc f ((K.d (n + 1) (n + 1 + 1)).hom x) ((f.f (n + 1)).hom x - (L.d n (n + 1)).hom y) := by
  rw [mappingCoconeNat_d]
  refine Prod.ext rfl ?_
  change (f.f (n + 1)).hom x + -(L.d n (n + 1)).hom y = (f.f (n + 1)).hom x - (L.d n (n + 1)).hom y
  exact (sub_eq_add_neg _ _).symm

theorem d_coconeMkZero (x : K.X 0) :
    ((mappingCoconeNat f).d 0 1).hom (coconeMkZero f x) =
      coconeMkSucc f ((K.d 0 1).hom x) ((f.f 0).hom x) := by
  rw [mappingCoconeNat_d]
  refine Prod.ext rfl ?_
  change (f.f 0).hom x + 0 = (f.f 0).hom x
  exact add_zero _

end ConeElements

section ConeIdentity

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {ι : Type u} {H : ι → Type u} [∀ v, Group (H v)] [∀ v, TopologicalSpace (H v)]
  [∀ v, IsTopologicalGroup (H v)] (φ : ∀ v, H v →ₜ* G) (A : Rep.{u} k G) [IsDiscreteRep A]
  (Aᵥ : ∀ v, Rep.{u} k (H v)) [∀ v, IsDiscreteRep (Aᵥ v)] (a : ∀ v, Rep.res (φ v).toMonoidHom A ⟶ Aᵥ v)

noncomputable def compactMkSucc {n : ℕ} (x : (cochainsComplex A).X (n + 1))
    (y : (piComplex fun v => cochainsComplex (Aᵥ v)).X n) : (compactCochains φ A Aᵥ a).X (n + 1) :=
  coconeMkSucc (localRes φ A Aᵥ a) x y

noncomputable def compactMkZero (x : (cochainsComplex A).X 0) : (compactCochains φ A Aᵥ a).X 0 :=
  coconeMkZero (localRes φ A Aᵥ a) x

theorem compactMkSucc_sub {n : ℕ} (x x' : (cochainsComplex A).X (n + 1))
    (y y' : (piComplex fun v => cochainsComplex (Aᵥ v)).X n) :
    compactMkSucc φ A Aᵥ a x y - compactMkSucc φ A Aᵥ a x' y' = compactMkSucc φ A Aᵥ a (x - x') (y - y') :=
  rfl

theorem compactMkSucc_eq_iff {n : ℕ} (x x' : (cochainsComplex A).X (n + 1))
    (y y' : (piComplex fun v => cochainsComplex (Aᵥ v)).X n) :
    compactMkSucc φ A Aᵥ a x y = compactMkSucc φ A Aᵥ a x' y' ↔ x = x' ∧ y = y' :=
  coconeMkSucc_eq_iff (localRes φ A Aᵥ a) x x' y y'

theorem d_compactMkSucc {n : ℕ} (x : (cochainsComplex A).X (n + 1))
    (y : (piComplex fun v => cochainsComplex (Aᵥ v)).X n) :
    ((compactCochains φ A Aᵥ a).d (n + 1) (n + 1 + 1)).hom (compactMkSucc φ A Aᵥ a x y) =
      compactMkSucc φ A Aᵥ a (((cochainsComplex A).d (n + 1) (n + 1 + 1)).hom x)
        (((localRes φ A Aᵥ a).f (n + 1)).hom x - ((piComplex fun v => cochainsComplex (Aᵥ v)).d n (n + 1)).hom y) :=
  d_coconeMkSucc (localRes φ A Aᵥ a) x y

theorem d_compactMkZero (x : (cochainsComplex A).X 0) :
    ((compactCochains φ A Aᵥ a).d 0 1).hom (compactMkZero φ A Aᵥ a x) =
      compactMkSucc φ A Aᵥ a (((cochainsComplex A).d 0 1).hom x) (((localRes φ A Aᵥ a).f 0).hom x) :=
  d_coconeMkZero (localRes φ A Aᵥ a) x

theorem revCone_f_compactMkSucc {n : ℕ} (x : (cochainsComplex A).X (n + 1))
    (y : (piComplex fun v => cochainsComplex (Aᵥ v)).X n) :
    ((revCone φ A Aᵥ a).f (n + 1)).hom (compactMkSucc φ A Aᵥ a x y) =
      compactMkSucc φ A Aᵥ a (((revLC A).f (n + 1)).hom x) (((piMap fun v => revLC (Aᵥ v)).f n).hom y) :=
  rfl

theorem cochainOf_localRes_one_apply (x : (cochainsComplex A).X 1) (v : ι) :
    cochainOf (Aᵥ v) (((localRes φ A Aᵥ a).f 1).hom x v) ![1] = (a v).hom (cochainOf A x ![1]) := by
  change (a v).hom (cochainOf A x (⇑(φ v).toMonoidHom ∘ ![1])) = _
  congr 2
  funext i
  rw [Fin.fin_one_eq_zero i]
  exact map_one (φ v)

theorem cochainOf_d_zero_one_apply {K : Type u} [Group K] [TopologicalSpace K] [IsTopologicalGroup K]
    {B : Rep.{u} k K} [IsDiscreteRep B] (y : (cochainsComplex B).X 0) :
    cochainOf B (((cochainsComplex B).d 0 1).hom y) ![1] = 0 := by
  rw [cochainOf_d, revD_zero_apply, map_one, Module.End.one_apply, sub_self]

theorem revCone_one_sub (x : (cochainsComplex A).X (0 + 1))
    (y : (piComplex fun v => cochainsComplex (Aᵥ v)).X 0)
    (hx : ((cochainsComplex A).d (0 + 1) (0 + 1 + 1)).hom x = 0)
    (hy : ((localRes φ A Aᵥ a).f (0 + 1)).hom x -
      ((piComplex fun v => cochainsComplex (Aᵥ v)).d 0 (0 + 1)).hom y = 0) :
    ((revCone φ A Aᵥ a).f (0 + 1)).hom (compactMkSucc φ A Aᵥ a x y) - compactMkSucc φ A Aᵥ a x y =
      ((compactCochains φ A Aᵥ a).d 0 (0 + 1)).hom (compactMkZero φ A Aᵥ a (revHtpyOneLC x)) := by
  rw [revCone_f_compactMkSucc, compactMkSucc_sub, d_compactMkZero, compactMkSucc_eq_iff]
  refine ⟨?_, ?_⟩
  · rw [revLC_one_sub, hx, revHtpyTwoLC_zero, add_zero]
  · funext v
    apply cochainOf_injective
    funext t
    have hv := congrArg (fun w => cochainOf (Aᵥ v) (w v) ![1]) hy
    change cochainOf (Aᵥ v) (((localRes φ A Aᵥ a).f 1).hom x v) ![1] -
      cochainOf (Aᵥ v) (((piComplex fun v => cochainsComplex (Aᵥ v)).d 0 1).hom y v) ![1] = 0 at hv
    rw [cochainOf_localRes_one_apply, piComplex_d_hom_apply', cochainOf_d_zero_one_apply, sub_zero] at hv
    change cochainOf (Aᵥ v) (((revLC (Aᵥ v)).f 0).hom (y v) - y v) t =
      (a v).hom (cochainOf A x ![1])
    rw [hv, cochainOf_sub', cochainOf_revLC, revCochain_zero, sub_self]
    rfl

end ConeIdentity

section ConeIdentity2

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {ι : Type u} {H : ι → Type u} [∀ v, Group (H v)] [∀ v, TopologicalSpace (H v)]
  [∀ v, IsTopologicalGroup (H v)] (φ : ∀ v, H v →ₜ* G) (A : Rep.{u} k G) [IsDiscreteRep A]
  (Aᵥ : ∀ v, Rep.{u} k (H v)) [∀ v, IsDiscreteRep (Aᵥ v)] (a : ∀ v, Rep.res (φ v).toMonoidHom A ⟶ Aᵥ v)

noncomputable def piRevHtpyOne (y : (piComplex fun v => cochainsComplex (Aᵥ v)).X 1) :
    (piComplex fun v => cochainsComplex (Aᵥ v)).X 0 :=
  fun v => revHtpyOneLC (y v)

theorem compactMkSucc_zero {n : ℕ} :
    compactMkSucc φ A Aᵥ a (0 : (cochainsComplex A).X (n + 1))
      (0 : (piComplex fun v => cochainsComplex (Aᵥ v)).X n) = 0 :=
  rfl

theorem cocycle_components {n : ℕ} (p : (compactCochains φ A Aᵥ a).X (n + 1))
    (hp : ((compactCochains φ A Aᵥ a).d (n + 1) (n + 1 + 1)).hom p = 0) :
    ((cochainsComplex A).d (n + 1) (n + 1 + 1)).hom (coconeFst (localRes φ A Aᵥ a) p) = 0 ∧
      ((localRes φ A Aᵥ a).f (n + 1)).hom (coconeFst (localRes φ A Aᵥ a) p) -
        ((piComplex fun v => cochainsComplex (Aᵥ v)).d n (n + 1)).hom (coconeSndSucc (localRes φ A Aᵥ a) p) = 0 := by
  have e := (d_compactMkSucc φ A Aᵥ a (coconeFst (localRes φ A Aᵥ a) p)
    (coconeSndSucc (localRes φ A Aᵥ a) p)).symm.trans (hp.trans (compactMkSucc_zero φ A Aᵥ a).symm)
  exact (compactMkSucc_eq_iff φ A Aᵥ a _ _ _ _).1 e

theorem homologyMap_revCone_one (y : compactCohomology φ A Aᵥ a 1) :
    (HomologicalComplex.homologyMap (revCone φ A Aᵥ a) 1).hom y = y :=
  homologyMap_hom_apply_eq_self (revCone φ A Aᵥ a) 0 (fun z => by
    obtain ⟨hx, hy⟩ := cocycle_components φ A Aᵥ a _ (d_iCycles_hom_apply _ (0 + 1) (0 + 1 + 1) z)
    exact ⟨_, revCone_one_sub φ A Aᵥ a _ _ hx hy⟩) y

theorem revCone_two_sub (x : (cochainsComplex A).X (1 + 1))
    (y : (piComplex fun v => cochainsComplex (Aᵥ v)).X 1)
    (hx : ((cochainsComplex A).d (1 + 1) (1 + 1 + 1)).hom x = 0)
    (hy : ((localRes φ A Aᵥ a).f (1 + 1)).hom x -
      ((piComplex fun v => cochainsComplex (Aᵥ v)).d 1 (1 + 1)).hom y = 0) :
    ((revCone φ A Aᵥ a).f (1 + 1)).hom (compactMkSucc φ A Aᵥ a x y) - compactMkSucc φ A Aᵥ a x y =
      ((compactCochains φ A Aᵥ a).d (0 + 1) (0 + 1 + 1)).hom
        (compactMkSucc φ A Aᵥ a (n := 0) (revHtpyTwoLC x) (-piRevHtpyOne Aᵥ y)) := by
  rw [revCone_f_compactMkSucc, compactMkSucc_sub, d_compactMkSucc, compactMkSucc_eq_iff]
  refine ⟨revLC_two_sub x hx, ?_⟩
  funext v
  have hv := congrFun hy v
  change ((localRes φ A Aᵥ a).f 2).hom x v -
    ((cochainsComplex (Aᵥ v)).d 1 2).hom (y v) = 0 at hv
  change ((revLC (Aᵥ v)).f 1).hom (y v) - y v =
    ((localRes φ A Aᵥ a).f 1).hom (revHtpyTwoLC x) v -
      ((cochainsComplex (Aᵥ v)).d 0 1).hom (-revHtpyOneLC (y v))
  rw [revLC_one_sub, ← sub_eq_zero.1 hv, map_neg, sub_neg_eq_add, add_comm]
  congr 1
  exact (cochainsMapAlong_revHtpyTwoLC (φ v).toMonoidHom (continuous_toMonoidHom (φ v)) (a v) x).symm

theorem homologyMap_revCone_two (y : compactCohomology φ A Aᵥ a 2) :
    (HomologicalComplex.homologyMap (revCone φ A Aᵥ a) 2).hom y = y :=
  homologyMap_hom_apply_eq_self (revCone φ A Aᵥ a) 1 (fun z => by
    obtain ⟨hx, hy⟩ := cocycle_components φ A Aᵥ a _ (d_iCycles_hom_apply _ (1 + 1) (1 + 1 + 1) z)
    exact ⟨_, revCone_two_sub φ A Aᵥ a _ _ hx hy⟩) y

theorem homologyMap_revCone_three (hsurj : Function.Surjective (localToCompact φ A Aᵥ a 2).hom)
    (y : compactCohomology φ A Aᵥ a 3) :
    (HomologicalComplex.homologyMap (revCone φ A Aᵥ a) 3).hom y = y := by
  obtain ⟨ξ, rfl⟩ := hsurj y
  exact homologyMap_revCone_localToCompact φ A Aᵥ a ξ

end ConeIdentity2

section CupReverse

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {A B C : Rep.{u} k G} [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C]


omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C] in
noncomputable abbrev resPairingAlong {H : Type u} [Group H] (ψ : H →* G) (μ : A ⊗ B ⟶ C) :
    Rep.res ψ A ⊗ Rep.res ψ B ⟶ Rep.res ψ C :=
  (Rep.resFunctor ψ).map μ


omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C] in
theorem revCochain_hom {X Y : Rep.{u} k G} (μ : X ⟶ Y) {n : ℕ} (F : (Fin n → G) → X) (σ : Fin n → G) :
    revCochain n (fun τ => μ.hom (F τ)) σ = μ.hom (revCochain n F σ) := by
  rw [revCochain_apply, revCochain_apply, map_smul, Rep.hom_comm_apply]

theorem revLC_cupPairingCochains (μ : A ⊗ B ⟶ C) {p q n : ℕ} (h : p + q = n) (h' : q + p = n)
    (x : (cochainsComplex A).X p) (z : (cochainsComplex B).X q) :
    ((revLC C).f n).hom (cupPairingCochains μ h x z) =
      (-1 : k) ^ (p * q) • cupPairingCochains ((β_ B A).hom ≫ μ) h' (((revLC B).f q).hom z)
        (((revLC A).f p).hom x) := by
  apply cochainOf_injective
  funext σ
  rw [cochainOf_revLC, cochainOf_smul, cochainOf_cupPairingCochains, Pi.smul_apply,
    cochainOf_cupPairingCochains, cochainOf_revLC, cochainOf_revLC, revCochain_hom,
    revCochain_cupCochain h h', map_smul]
  rfl


omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C] in
theorem braiding_comp_resPairingAlong {H : Type u} [Group H] (ψ : H →* G) (μ : A ⊗ B ⟶ C) :
    (β_ (Rep.res ψ B) (Rep.res ψ A)).hom ≫ resPairingAlong ψ μ = resPairingAlong ψ ((β_ B A).hom ≫ μ) := by
  apply Rep.hom_ext
  apply Representation.IntertwiningMap.toLinearMap_injective
  exact TensorProduct.ext' fun b a => rfl

end CupReverse

section Main

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {ι : Type u} {H : ι → Type u} [∀ v, Group (H v)] [∀ v, TopologicalSpace (H v)]
  [∀ v, IsTopologicalGroup (H v)] (φ : ∀ v, H v →ₜ* G)
  {A B C : Rep.{u} k G} [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C]

noncomputable def compactCupRightRes (μ : B ⊗ A ⟶ C) {r s n : ℕ} (h : r + s = n) :
    cohomology B r →ₗ[k] compactCohomologyRes φ A s →ₗ[k] compactCohomologyRes φ C n :=
  compactCupRight (Bᵥ := fun v => Rep.res (φ v).toMonoidHom A) (b := fun _ => 𝟙 _)
    (Cᵥ := fun v => Rep.res (φ v).toMonoidHom C) (c := fun _ => 𝟙 _) φ μ
    (fun v => (Rep.resFunctor (φ v).toMonoidHom).map μ)
    (fun v => resFunctor_map_comp_id (φ v).toMonoidHom μ) h

noncomputable abbrev compactCupLeibnizRes (μ : A ⊗ B ⟶ C) :
    LeibnizPairing (compactCochains φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _))
      (cochainsComplex B) (compactCochains φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _)) :=
  compactCupLeibniz (Aᵥ := fun v => Rep.res (φ v).toMonoidHom A) (a := fun _ => 𝟙 _)
    (Cᵥ := fun v => Rep.res (φ v).toMonoidHom C) (c := fun _ => 𝟙 _) φ μ
    (fun v => (Rep.resFunctor (φ v).toMonoidHom).map μ)
    (fun v => resFunctor_map_comp_id (φ v).toMonoidHom μ)

noncomputable abbrev compactCupRightLeibnizRes (μ : B ⊗ A ⟶ C) :
    LeibnizPairing (cochainsComplex B)
      (compactCochains φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _))
      (compactCochains φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _)) :=
  compactCupRightLeibniz (Bᵥ := fun v => Rep.res (φ v).toMonoidHom A) (b := fun _ => 𝟙 _)
    (Cᵥ := fun v => Rep.res (φ v).toMonoidHom C) (c := fun _ => 𝟙 _) φ μ
    (fun v => (Rep.resFunctor (φ v).toMonoidHom).map μ)
    (fun v => resFunctor_map_comp_id (φ v).toMonoidHom μ)

theorem compactMkSucc_smul {D : Rep.{u} k G} [IsDiscreteRep D] {n : ℕ} (c : k)
    (x : (cochainsComplex D).X (n + 1))
    (y : (piComplex fun v => cochainsComplex (Rep.res (φ v).toMonoidHom D)).X n) :
    c • compactMkSucc φ D (fun v => Rep.res (φ v).toMonoidHom D) (fun _ => 𝟙 _) x y =
      compactMkSucc φ D (fun v => Rep.res (φ v).toMonoidHom D) (fun _ => 𝟙 _) (c • x) (c • y) :=
  coconeMkSucc_smul _ c x y

omit [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C] in
theorem neg_one_pow_succ_mul_mul (r s : ℕ) :
    (-1 : k) ^ ((r + 1) * s) * (-1 : k) ^ s = (-1 : k) ^ (r * s) := by
  rw [Nat.succ_mul, pow_add, mul_assoc, ← mul_pow, neg_one_mul, neg_neg, one_pow, mul_one]



theorem revCone_compactCup_succ (μ : A ⊗ B ⟶ C) {r s m : ℕ} (h : r + 1 + s = m + 1)
    (h' : s + (r + 1) = m + 1) (x : (cochainsComplex A).X (r + 1))
    (y : (piComplex fun v => cochainsComplex (Rep.res (φ v).toMonoidHom A)).X r)
    (z : (cochainsComplex B).X s) :
    ((revCone φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _)).f (m + 1)).hom
        ((compactCupLeibnizRes φ μ).μ h
          (compactMkSucc φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _) x y) z) =
      (-1 : k) ^ ((r + 1) * s) •
        (compactCupRightLeibnizRes φ ((β_ B A).hom ≫ μ)).μ h'
          (((revLC B).f s).hom z) (((revCone φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _)).f (r + 1)).hom
            (compactMkSucc φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _) x y)) := by
  obtain rfl : m = r + s := by omega
  have eL : (compactCupLeibnizRes φ μ).μ h (compactMkSucc φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _) x y) z =
      compactMkSucc φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _) (cupPairingCochains μ h x z)
        ((LeibnizPairing.pi fun v => cupLeibniz (resPairingAlong (φ v).toMonoidHom μ)).μ rfl y
          (((localRes φ B (fun v => Rep.res (φ v).toMonoidHom B) (fun _ => 𝟙 _)).f s).hom z)) :=
    rfl
  have eR : (compactCupRightLeibnizRes φ ((β_ B A).hom ≫ μ)).μ h' (((revLC B).f s).hom z)
        (compactMkSucc φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _) (((revLC A).f (r + 1)).hom x)
          (((piMap fun v => revLC (Rep.res (φ v).toMonoidHom A)).f r).hom y)) =
      compactMkSucc φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _)
        (cupPairingCochains ((β_ B A).hom ≫ μ) h' (((revLC B).f s).hom z) (((revLC A).f (r + 1)).hom x))
        ((-1 : k) ^ s • (LeibnizPairing.pi fun v =>
          cupLeibniz (resPairingAlong (φ v).toMonoidHom ((β_ B A).hom ≫ μ))).μ (Nat.add_comm s r)
          (((localRes φ B (fun v => Rep.res (φ v).toMonoidHom B) (fun _ => 𝟙 _)).f s).hom (((revLC B).f s).hom z))
          (((piMap fun v => revLC (Rep.res (φ v).toMonoidHom A)).f r).hom y)) :=
    rfl
  rw [eL, revCone_f_compactMkSucc, revCone_f_compactMkSucc, eR, compactMkSucc_smul, compactMkSucc_eq_iff]
  refine ⟨revLC_cupPairingCochains μ h h' x z, ?_⟩
  funext v
  have e := congrArg (fun F => (F.f s).hom z v) (localRes_comp_piMap_revLC φ B _ (fun _ => 𝟙 _))
  change ((revLC (Rep.res (φ v).toMonoidHom B)).f s).hom
      (((localRes φ B (fun v => Rep.res (φ v).toMonoidHom B) (fun _ => 𝟙 _)).f s).hom z v) =
    ((localRes φ B (fun v => Rep.res (φ v).toMonoidHom B) (fun _ => 𝟙 _)).f s).hom (((revLC B).f s).hom z) v at e
  have key := revLC_cupPairingCochains (resPairingAlong (φ v).toMonoidHom μ) (rfl : r + s = r + s)
    (Nat.add_comm s r) (y v)
    (((localRes φ B (fun v => Rep.res (φ v).toMonoidHom B) (fun _ => 𝟙 _)).f s).hom z v)
  rw [e, braiding_comp_resPairingAlong, ← neg_one_pow_succ_mul_mul r s, ← smul_smul] at key
  exact key



theorem revCone_compactCup_zero (μ : A ⊗ B ⟶ C) {s : ℕ} (h : 0 + s = s) (h' : s + 0 = s)
    (x : (cochainsComplex A).X 0) (z : (cochainsComplex B).X s) :
    ((revCone φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _)).f s).hom
        ((compactCupLeibnizRes φ μ).μ h
          (compactMkZero φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _) x) z) =
      (-1 : k) ^ (0 * s) •
        (compactCupRightLeibnizRes φ ((β_ B A).hom ≫ μ)).μ h'
          (((revLC B).f s).hom z) (((revCone φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _)).f 0).hom
            (compactMkZero φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _) x)) := by
  refine Prod.ext ?_ ?_
  · exact revLC_cupPairingCochains μ h h' x z
  · change (shiftNegOneMapF (piMap fun v => revLC (Rep.res (φ v).toMonoidHom C)) s).hom 0 =
      (-1 : k) ^ (0 * s) • ((-1 : k) ^ s • 0)
    rw [map_zero, smul_zero, smul_zero]

end Main

section Theorem

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {ι : Type u} {H : ι → Type u} [∀ v, Group (H v)] [∀ v, TopologicalSpace (H v)]
  [∀ v, IsTopologicalGroup (H v)] (φ : ∀ v, H v →ₜ* G)
  {A B C : Rep.{u} k G} [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C]

theorem revCone_compactCupLeibnizRes (μ : A ⊗ B ⟶ C) {r s n : ℕ} (h : r + s = n) (h' : s + r = n)
    (p : (compactCochains φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _)).X r)
    (z : (cochainsComplex B).X s) :
    ((revCone φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _)).f n).hom
        ((compactCupLeibnizRes φ μ).μ h p z) =
      (-1 : k) ^ (r * s) • (compactCupRightLeibnizRes φ ((β_ B A).hom ≫ μ)).μ h' (((revLC B).f s).hom z)
        (((revCone φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _)).f r).hom p) := by
  cases r with
  | zero =>
    obtain rfl : n = s := by omega
    exact revCone_compactCup_zero φ μ h h' (coconeFst _ p) z
  | succ r =>
    obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨r + s, by omega⟩
    exact revCone_compactCup_succ φ μ h h' (coconeFst _ p) (coconeSndSucc _ p) z

theorem compactCupRes_eq_neg_one_pow_smul_compactCupRightRes (μ : A ⊗ B ⟶ C)
    (hsurj : Function.Surjective
      (localToCompact φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _) 2).hom)
    {p q : ℕ} (h : p + q = 3) (h' : q + p = 3) (hp : 1 ≤ p) (hq : 1 ≤ q)
    (y : compactCohomologyRes φ A p) (x : cohomology B q) :
    compactCupRes φ μ h y x = (-1 : k) ^ (p * q) • compactCupRightRes φ ((β_ B A).hom ≫ μ) h' x y := by
  have key := LeibnizPairing.homologyMap_homology_eq_smul (compactCupLeibnizRes φ μ)
    (compactCupRightLeibnizRes φ ((β_ B A).hom ≫ μ))
    (revCone φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _)) (revLC B)
    (revCone φ A (fun v => Rep.res (φ v).toMonoidHom A) (fun _ => 𝟙 _)) (fun r s => (-1 : k) ^ (r * s))
    (fun h h' p z => revCone_compactCupLeibnizRes φ μ h h' p z) h h' y x
  have key' := (homologyMap_revCone_three φ C (fun v => Rep.res (φ v).toMonoidHom C) (fun _ => 𝟙 _) hsurj
    ((compactCupLeibnizRes φ μ).homology h y x)).symm.trans key
  obtain ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ : (p = 1 ∧ q = 2) ∨ (p = 2 ∧ q = 1) := by omega
  · exact key'.trans (congrArg₂ (fun a b => (-1 : k) ^ (1 * 2) •
      (compactCupRightLeibnizRes φ ((β_ B A).hom ≫ μ)).homology h' a b)
      (homologyMap_revLC_two x) (homologyMap_revCone_one φ A _ _ y))
  · exact key'.trans (congrArg₂ (fun a b => (-1 : k) ^ (2 * 1) •
      (compactCupRightLeibnizRes φ ((β_ B A).hom ≫ μ)).homology h' a b)
      (homologyMap_revLC_one x) (homologyMap_revCone_two φ A _ _ y))

end Theorem

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseReverse =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseSwap =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseSwap", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseFormal\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseReverse\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory MonoidalCategory

universe u

attribute [local instance 2000] Rep.hV2

variable {G : Type u} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {ι : Type u} {H : ι → Type u} [∀ v, Group (H v)] [∀ v, TopologicalSpace (H v)]
  [∀ v, IsTopologicalGroup (H v)] (φ : ∀ v, H v →ₜ* G)
  {n : ℕ} (D : Rep.{u} (ULift.{u} ℤ) G) [IsDiscreteRep D] (hD : ∀ d : D, n • d = 0)

theorem neg_one_pow_one_mul_two_smul {R M : Type*} [Ring R] {_ : AddCommGroup M} {_ : Module R M} (x : M) :
    ((-1 : R) ^ (1 * 2)) • x = x := by
  rw [show (1 * 2 : ℕ) = 2 from rfl, neg_one_sq, one_smul]

omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep D] in
theorem braiding_comp_zmodMulPairingRight :
    (β_ (zmodRep.{u} G n) D).hom ≫ zmodMulPairingRight n D hD = zmodMulPairing n D hD := by
  rw [zmodMulPairingRight, ← Category.assoc, SymmetricCategory.symmetry, Category.id_comp]

theorem compactCupRes_zmodMulPairingRight_swap
    (hsurj : Function.Surjective
      (localToCompact φ D (fun v => Rep.res (φ v).toMonoidHom D) (fun _ => 𝟙 _) 2).hom)
    (yc : compactCohomologyRes φ D 1) (xc : compactCohomologyRes φ (zmodRep.{u} G n) 2) :
    compactCupRes φ (zmodMulPairingRight n D hD) (show 1 + 2 = 3 from rfl) yc
        ((compactToGlobal φ _ (fun v => Rep.res (φ v).toMonoidHom (zmodRep.{u} G n)) (fun _ => 𝟙 _) 2).hom xc) =
      compactCupRes φ (zmodMulPairing n D hD) (show 2 + 1 = 3 from rfl) xc
        ((compactToGlobal φ D (fun v => Rep.res (φ v).toMonoidHom D) (fun _ => 𝟙 _) 1).hom yc) := by
  refine (compactCupRes_eq_neg_one_pow_smul_compactCupRightRes φ (zmodMulPairingRight n D hD) hsurj
    (show 1 + 2 = 3 from rfl) (show 2 + 1 = 3 from rfl) le_rfl (by norm_num) yc _).trans ?_
  refine (neg_one_pow_one_mul_two_smul _).trans ?_
  refine (congrArg (fun μ => compactCupRightRes φ μ (show 2 + 1 = 3 from rfl)
    ((compactToGlobal φ _ (fun v => Rep.res (φ v).toMonoidHom (zmodRep.{u} G n)) (fun _ => 𝟙 _) 2).hom xc) yc)
    (braiding_comp_zmodMulPairingRight D hD)).trans ?_
  exact (compactCup_eq_compactCupRight (Aᵥ := fun v => Rep.res (φ v).toMonoidHom (zmodRep.{u} G n))
    (Bᵥ := fun v => Rep.res (φ v).toMonoidHom D) (Cᵥ := fun v => Rep.res (φ v).toMonoidHom D)
    (a := fun _ => 𝟙 _) (b := fun _ => 𝟙 _) (c := fun _ => 𝟙 _) φ (zmodMulPairing n D hD)
    (fun v => pairingRes (φ v).toMonoidHom (zmodMulPairing n D hD))
    (fun v => pairingRes (φ v).toMonoidHom (zmodMulPairing n D hD))
    (fun v => pairingRes (φ v).toMonoidHom (zmodMulPairing n D hD))
    (fun v => resFunctor_map_comp_id (φ v).toMonoidHom (zmodMulPairing n D hD))
    (fun v => resFunctor_map_comp_id (φ v).toMonoidHom (zmodMulPairing n D hD))
    (fun _ => by rw [MonoidalCategory.id_tensorHom_id, Category.id_comp])
    (fun _ => by rw [MonoidalCategory.id_tensorHom_id, Category.id_comp])
    (show 2 + 1 = 3 from rfl) xc yc).symm

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseSwap =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BijectiveGsCompactZmodDualityMap =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.BijectiveGsCompactZmodDualityMap", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseDefs\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseFormal\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseInv\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLocalDual\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseSwap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open IsDedekindDomain NumberField CategoryTheory GroundTheory.Global

noncomputable section

local notation "ℚ̄" => AlgebraicClosure ℚ

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1))) [Fintype S] [Nonempty S]
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))
  (n : ℕ) [NeZero n] (ℓ k : ℕ) (hℓ : ℓ.Prime) (hnk : n = ℓ ^ k)
  (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)
  (hμ : ∀ ζ : ℚ̄, ζ ^ n = 1 → ζ ∈ K.1) (hodd : Odd n ∨ IsTotallyComplex K.1)
  (h3 : Subsingleton (cohomology (gsRoots S n) 3))


include ℓ k hℓ hnk hS hμ in
theorem BaseDualityHypotheses.of_gs
    (h3Z : Subsingleton (cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 3))
    (hfin1 : Finite (cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 1))
    (hfin2 : Finite (compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 2))
    (hleft : ∀ x : cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 1,
      (∀ y : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 2,
        gsCompactInv S ιs n hodd h3 (compactCupRes (gsFinFamily S ιs) (zmodMulPairingRight n (gsRoots S n)
          (nsmul_gsRoots S n)) (show 2 + 1 = 3 from rfl) y x) = 0) → x = 0)
    (hright : ∀ y : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 2,
      (∀ x : cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 1,
        gsCompactInv S ιs n hodd h3 (compactCupRes (gsFinFamily S ιs) (zmodMulPairingRight n (gsRoots S n)
          (nsmul_gsRoots S n)) (show 2 + 1 = 3 from rfl) y x) = 0) → y = 0) :
    BaseDualityHypotheses (gsFinFamily S ιs) (gsRoots S n) (nsmul_gsRoots S n) (gsLocalInvRoots S ιs n)
      (gsCompactInv S ιs n hodd h3) := by
  exact
    { triv := gsRoots_ρ_apply_of_mem S n hμ
      nonempty_addEquiv := nonempty_addEquiv_gsRoots S n hμ
      loc_one v := (bijective_gsLocalPairing_one S ιs n hμ v).2
      loc_two v := bijective_gsLocalPairing_two S ιs n hμ v
      bijective_alt := bijective_gsCompactInv_of_mem S n ιs ℓ k hℓ hnk hS hμ hodd h3
      T_localToCompact := gsCompactInv_localToCompact S ιs n hodd h3
      three_zmod := h3Z
      three_D := h3
      finite_one := hfin1
      finite_two := hfin2
      ker_left := hleft
      ker_right := hright
      swap yc xc := congrArg (gsCompactInv S ιs n hodd h3)
        (compactCupRes_zmodMulPairingRight_swap (gsFinFamily S ιs) (gsRoots S n) (nsmul_gsRoots S n)
          (_root_.GroundTheory.ProfCoh.localToCompact_two_surjective S ιs n h3) yc xc) }


include ℓ k hℓ hnk hS hμ in
theorem bijective_gs_compactZmodDualityMap
    (h3Z : Subsingleton (cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 3))
    (hfin1 : Finite (cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 1))
    (hfin2 : Finite (compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 2))
    (hleft : ∀ x : cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 1,
      (∀ y : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 2,
        gsCompactInv S ιs n hodd h3 (compactCupRes (gsFinFamily S ιs) (zmodMulPairingRight n (gsRoots S n)
          (nsmul_gsRoots S n)) (show 2 + 1 = 3 from rfl) y x) = 0) → x = 0)
    (hright : ∀ y : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 2,
      (∀ x : cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 1,
        gsCompactInv S ιs n hodd h3 (compactCupRes (gsFinFamily S ιs) (zmodMulPairingRight n (gsRoots S n)
          (nsmul_gsRoots S n)) (show 2 + 1 = 3 from rfl) y x) = 0) → y = 0)
    {r s : ℕ} (h : r + s = 3) :
    Function.Bijective (compactZmodDualityMap (gsFinFamily S ιs) (gsRoots S n) (nsmul_gsRoots S n)
      (gsCompactInv S ιs n hodd h3) h) :=
  (BaseDualityHypotheses.of_gs S ιs n ℓ k hℓ hnk hS hμ hodd h3 h3Z hfin1 hfin2 hleft hright).bijective_compactZmodDualityMap h

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BijectiveGsCompactZmodDualityMap =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BijectiveGsLocalInvRootsOfPlaces =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.BijectiveGsLocalInvRootsOfPlaces", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLevel\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.Dimension\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseLocal\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseFixed\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseInputs\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseInv\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BijectiveGsCompactZmodDualityMap\nimport GroundTheory.ProfiniteCohomology.RestrictedRamification.Finite\nimport GroundTheory.ProfiniteCohomology.RestrictedRamification.FiniteOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open IsDedekindDomain NumberField CategoryTheory GroundTheory.Global

local notation "ℚ̄" => AlgebraicClosure ℚ

noncomputable section

section Local

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)) (n : ℕ)
  [NeZero n] (hnS : ∀ v ∉ S, ((n : ℕ) : 𝓞 K.1) ∉ v.asIdeal)
include hnS



theorem bijective_gsRootsLocalMor_of_places (v : S) : Function.Bijective (gsRootsLocalMor S ιs n v).hom :=
  (exists_isPrimitiveRoot_maxUnramifiedOutside K S n (NeZero.ne n) hnS).elim fun _ hz =>
    Additive.ofMul.bijective.comp ((bijective_rootsOfUnityMapHom n
      ((ιs v).comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom hz).comp Additive.toMul.bijective)

theorem bijective_gsLocalInvRoots_of_places (v : S) : Function.Bijective (gsLocalInvRoots S ιs n v) := by
  have e : ⇑(gsLocalInvRoots S ιs n v) =
      (localDualityHypotheses (Ksep := AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))
        (natCast_ne_zero_adicCompletion S n v)).tTop ∘ (cohomologyMap (gsRootsLocalMor S ιs n v) 2).hom :=
    funext (gsLocalInvRoots_eq S ιs n v)
  rw [e]
  exact (bijective_localDualityHypotheses_tTop S n v).comp
    (bijective_cohomologyMap_of_bijective _ (bijective_gsRootsLocalMor_of_places S ιs n hnS v) 2)

end Local

section P1

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1))) [Fintype S]
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)) (n : ℕ)
  [NeZero n] (hodd : Odd n ∨ IsTotallyComplex K.1) (h3 : Subsingleton (cohomology (gsRoots S n) 3))

def GsPairingNondegenerate : Prop :=
  (∀ x : cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 1,
      (∀ y : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 2,
        gsCompactInv S ιs n hodd h3 (compactCupRes (gsFinFamily S ιs) (zmodMulPairingRight n (gsRoots S n)
          (nsmul_gsRoots S n)) (show 2 + 1 = 3 from rfl) y x) = 0) → x = 0) ∧
    (∀ y : compactCohomologyRes (gsFinFamily S ιs) (gsRoots S n) 2,
      (∀ x : cohomology (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) n) 1,
        gsCompactInv S ιs n hodd h3 (compactCupRes (gsFinFamily S ιs) (zmodMulPairingRight n (gsRoots S n)
          (nsmul_gsRoots S n)) (show 2 + 1 = 3 from rfl) y x) = 0) → y = 0)

end P1

section Level

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1))) [Fintype S]
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))
  (n ℓ k : ℕ) [NeZero n] (hℓ : ℓ.Prime) (hnk : n = ℓ ^ k)
  (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)
  (hodd : Odd n ∨ IsTotallyComplex K.1) (h3 : Subsingleton (cohomology (gsRoots S n) 3))

def GsPairingInput (n ℓ : ℕ) [NeZero n] : Prop :=
  ∀ (L : FiniteSubfield) (S' : Set (HeightOneSpectrum (𝓞 L.1))) [Fintype S']
    (ιs' : ∀ v : S', ℚ̄ →ₐ[L.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 L.1)).adicCompletion L.1)),
    (∀ v : HeightOneSpectrum (𝓞 L.1), ((ℓ : ℕ) : 𝓞 L.1) ∈ v.asIdeal → v ∈ S') →
    (∀ ζ : ℚ̄, ζ ^ n = 1 → ζ ∈ L.1) → ∀ (hodd' : Odd n ∨ IsTotallyComplex L.1)
    (h3' : Subsingleton (cohomology (gsRoots S' n) 3)), GsPairingNondegenerate S' ιs' n hodd' h3'


omit [Fintype S] [NeZero n] in
include hnk hS in
theorem natCast_not_mem_of_not_mem : ∀ v ∉ S, ((n : ℕ) : 𝓞 K.1) ∉ v.asIdeal :=
  fun v hv h => hv (mem_of_natCast_pow_mem S n ℓ k hnk hS v h)


include hℓ hnk hS in
private theorem gsLevelBijective_of_pairing [Nonempty S] (hμ : ∀ ζ : ℚ̄, ζ ^ n = 1 → ζ ∈ K.1)
    (hP : GsPairingNondegenerate S ιs n hodd h3) :
    GsLevelBijective (S := S) (ιs := ιs) (n := n) (gsCompactInv S ιs n hodd h3) := by
  refine ⟨bijective_gsCompactInv_of_mem S n ιs ℓ k hℓ hnk hS hμ hodd h3, ?_⟩
  intro r s h
  have h3Z := subsingleton_zmodRep_gs_three S n ℓ k hnk hS hodd
  have hfin1 := finite_zmodRep_gs_one S n ℓ k hnk hS
  have hfin2 := finite_gsRoots_compact_two S n ℓ k hnk hS ιs
  have hleft := hP.1
  have hright := hP.2
  have hdual := bijective_gs_compactZmodDualityMap S ιs n ℓ k hℓ hnk hS hμ
    hodd h3 h3Z hfin1 hfin2
  -- The kernel checks the conversion of the pairing hypotheses and the duality map.
  run_tac Lean.Elab.Tactic.withMainContext do
    let dual ← Lean.Meta.getFVarFromUserName `hdual
    let args ← #[`hleft, `hright, `r, `s, `h].mapM (m := Lean.MetaM) Lean.Meta.getFVarFromUserName
    let goal ← Lean.Elab.Tactic.getMainGoal
    goal.assign (Lean.Meta.mkExpectedPropHint (Lean.mkAppN dual args) (← goal.getType))


/-- The degree-three cores map of `gsRoots S n` to level `U` is surjective. -/
def GsCompactCoresSurjective (U : OpenSubgroup (galUnramifiedOutside K.1 ℚ̄ S)) : Prop :=
  Function.Surjective (compactCores (gsFinFamily S ιs) U (gsRoots S n) 3).hom

include hℓ hnk hS in
theorem gsBaseBijective_of_le (hP : GsPairingInput n ℓ)
    (hcores : ∀ U, GsCompactCoresSurjective S ιs n U)
    (W₀ : OpenSubgroup (galUnramifiedOutside K.1 ℚ̄ S))
    (hW₀ : ∀ σ ∈ W₀, ∀ ζ : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ, ζ ^ n = 1 →
      σ (ζ : maxUnramifiedOutside K.1 ℚ̄ S) = ζ)
    {L : FiniteSubfield} [Fact (K ≤ L)] (hL : ∀ x : L.1, algebraMap L.1 ℚ̄ x ∈ maxUnramifiedOutside K.1 ℚ̄ S)
    (hUW : gsOpenSubgroup S hL ≤ W₀) :
    GsBaseBijective S ιs n (gsOpenSubgroup S hL) (gsCompactInv S ιs n hodd h3) := by
  have hnS := natCast_not_mem_of_not_mem S n ℓ k hnk hS
  have : Nonempty S := nonempty_of_natCast_mem S ℓ hℓ hS
  let SL := placesOver (F := K.1) (L := L.1) S
  let ιsL := gsMackeyEmbeddings (F := K.1) (L := L.1) (Ω := ℚ̄) hL ιs
  let : Fintype SL := fintypePlacesOver (L := L) S
  have : Nonempty SL := nonempty_placesOver_of_natCast_mem (L := L) S hℓ hS
  have hSL : ∀ w : HeightOneSpectrum (𝓞 L.1), ((ℓ : ℕ) : 𝓞 L.1) ∈ w.asIdeal → w ∈ SL :=
    fun w hw => mem_placesOver_of_natCast_mem hS hw
  have hμL : ∀ ζ : ℚ̄, ζ ^ n = 1 → ζ ∈ L.1 :=
    rootsOfUnity_mem_of_gsOpenSubgroup_le (L := L) S n hL W₀ hW₀ hUW (NeZero.ne n) hnS
  have hoddL : Odd n ∨ IsTotallyComplex L.1 := hodd.imp id fun h => by
    have := h
    exact isTotallyComplex_of_algebra K.1 L.1
  have h3L := subsingleton_gsRoots_three (K := L) SL n ℓ k hnk hSL hoddL
  have hPL := hP L SL ιsL hSL hμL hoddL h3L
  let U := gsOpenSubgroup (F := K.1) (L := L.1) (Ω := ℚ̄) S hL
  have hInv := surjective_gsCompactInv S n ιs hodd h3 fun v =>
    (bijective_gsLocalInvRoots_of_places S ιs n hnS v).2
  have hsurj : GsCoresSurjective S ιs n U (gsCompactInv S ιs n hodd h3) := by
    have hcomp := hInv.comp (hcores U)
    -- The kernel identifies the underlying function with the bundled composition.
    run_tac Lean.Elab.Tactic.withMainContext do
      let proof ← Lean.Meta.getFVarFromUserName `hcomp
      let goal ← Lean.Elab.Tactic.getMainGoal
      goal.assign (Lean.Meta.mkExpectedPropHint proof (← goal.getType))
  have hLev := gsLevelBijective_of_pairing (K := L) SL ιsL n ℓ k hℓ hnk hSL hoddL h3L hμL hPL
  intro r s h
  exact bijective_zmodCompactDualityMap_gsOpenSubgroup (K := K) (L := L) S ιs hL n (gsCompactInv S ιs n hodd h3)
    (gsCompactInv (K := L) SL ιsL n hoddL h3L) hLev hsurj (r := r) (s := s) h

end Level

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BijectiveGsLocalInvRootsOfPlaces =====
