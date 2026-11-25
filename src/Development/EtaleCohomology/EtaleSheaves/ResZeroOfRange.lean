module

public import Development.EtaleCohomology.EtaleSheaves.LeafTwSecKillCut
public import Mathlib.RingTheory.Etale.StandardEtale
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots
public import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp
public import Development.EtaleCohomology.EtaleSheaves.CovOfPoints
public import Development.EtaleCohomology.EtaleSheaves.LeafConeExactPf
public import Development.EtaleCohomology.EtaleSheaves.LeafNegPf
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Development.EtaleCohomology.EtaleSheaves.H0TwistOverClosedField

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocInjPf, Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocSurjPf, Development.EtaleCohomology.EtaleSheaves.LeafTwAdjPf, Development.EtaleCohomology.EtaleSheaves.LeafTwFieldZPf, Development.EtaleCohomology.EtaleSheaves.LeafTwGenPf, Development.EtaleCohomology.EtaleSheaves.LeafTwPtPf, Development.EtaleCohomology.EtaleSheaves.PointDetect0Of, Development.EtaleCohomology.EtaleSheaves.ResZeroOfRange

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocInjPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocInjPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSecKillCut\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.E8.TwSec

theorem LeafOfRingsLocInj_of : LeafOfRingsLocInj := by
  intro R _ M U t ht u
  have h0 : (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ M)).app (op U) t =
      (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ M)).app (op U) 0 := by
    have : ofRings.sec M U t = 0 := ht
    simp only [ofRings.sec] at this
    rw [map_zero]
    exact this
  have hS := Presheaf.equalizerSieve_mem Scheme.etaleTopology
    (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ M)) t 0 h0
  obtain ⟨𝒰, hle⟩ := Scheme.exists_cover_of_mem_grothendieckTopology hS
  have := AlgebraicGeometry.Scheme.instJointlySurjectivePrecoverage (P := @Etale)
  obtain ⟨i, y, hy⟩ := 𝒰.exists_eq u
  refine ⟨𝒰.X i, 𝒰.f i, 𝒰.map_prop i, ⟨y, hy⟩, ?_⟩
  have hm := hle _ _ (Presieve.ofArrows.mk i)
  have hm' : ((Scheme.Γ ⋙ M).map (𝒰.f i).op).hom t = ((Scheme.Γ ⋙ M).map (𝒰.f i).op).hom 0 := hm
  rw [map_zero] at hm'
  exact hm'

end LateralTheory.E.E8.TwSec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocInjPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocSurjPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocSurjPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSecKillCut\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.LeafOfRingsLocSurjPf

theorem cover_hit {X : Scheme.{0}} (S : Sieve X) (hS : S ∈ Scheme.etaleTopology X) (x : X) :
    ∃ (U : Scheme.{0}) (w : U ⟶ X), Etale w ∧ x ∈ Set.range w ∧ S.arrows w := by
  obtain ⟨𝒰, h𝒰⟩ := (Scheme.mem_grothendieckTopology_iff).1 hS
  obtain ⟨i, hi⟩ := ((Scheme.presieve₀_mem_precoverage_iff _).1 𝒰.mem₀).1 x
  exact ⟨𝒰.X i, 𝒰.f i, 𝒰.map_prop i, hi, h𝒰 _ _ (Presieve.ofArrows.mk i)⟩

theorem LeafOfRingsLocSurj_of : LateralTheory.E.E8.TwSec.LeafOfRingsLocSurj := by
  intro R _ M X s x
  have hS := Presheaf.imageSieve_mem Scheme.etaleTopology
    (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ M)) (U := op X) s
  obtain ⟨U, w, hw, hx, t, ht⟩ := cover_hit _ hS x
  exact ⟨U, w, hw, hx, t, ht.symm⟩

end LateralTheory.E.LeafOfRingsLocSurjPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocSurjPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwAdjPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafTwAdjPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSecKillCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Etale.StandardEtale\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC Polynomial

namespace LateralTheory.E.E8.TwSec

theorem twAdj_comap_surj (A : Type) [CommRing A] (q : ℕ) [NeZero q] :
    Function.Surjective (PrimeSpectrum.comap (algebraMap A (AdjoinRoot (cyclotomic q A)))) := by
  have hm := cyclotomic.monic q A
  have := Module.Free.of_basis (AdjoinRoot.powerBasis' hm).basis
  have : Module.Finite A (AdjoinRoot (cyclotomic q A)) :=
    Module.Finite.of_basis (AdjoinRoot.powerBasis' hm).basis
  intro p
  have : Nontrivial A := by
    rcases subsingleton_or_nontrivial A with h | h
    · exact absurd (Subsingleton.elim p.asIdeal ⊤) p.isPrime.ne_top
    · exact h
  have : Nontrivial (AdjoinRoot (cyclotomic q A)) := by
    have hd : 0 < (cyclotomic q A).natDegree := by
      rw [natDegree_cyclotomic]; exact Nat.totient_pos.2 (NeZero.pos q)
    have : Nonempty (Fin (cyclotomic q A).natDegree) := ⟨⟨0, hd⟩⟩
    exact (AdjoinRoot.powerBasisAux' hm).repr.symm.injective.nontrivial
  exact Algebra.IsIntegral.comap_surjective A _ p

theorem twAdj_etale (A : Type) [CommRing A] (q : ℕ) (hq : IsUnit (q : A)) :
    Algebra.Etale A (AdjoinRoot (cyclotomic q A)) := by
  have hsep : (cyclotomic q A).Separable :=
    (separable_X_pow_sub_C_unit (1 : Aˣ) hq).of_dvd (by simpa using cyclotomic.dvd_X_pow_sub_one q A)
  obtain ⟨a, b, hab⟩ := hsep
  let P : StandardEtalePair A := ⟨cyclotomic q A, cyclotomic.monic q A, 1,
    ⟨b, a, 0, by rw [pow_zero, ← hab]; ring⟩⟩
  let e1 : P.Ring ≃ₐ[A] Localization.Away (AdjoinRoot.mk (cyclotomic q A) 1) := P.equivAwayAdjoinRoot
  let e2 : AdjoinRoot (cyclotomic q A) ≃ₐ[AdjoinRoot (cyclotomic q A)]
      Localization.Away (AdjoinRoot.mk (cyclotomic q A) 1) :=
    IsLocalization.atUnit _ _ (AdjoinRoot.mk (cyclotomic q A) 1) (by rw [map_one]; exact isUnit_one)
  have := Algebra.IsStandardEtale.of_equiv (e1.trans (e2.symm.restrictScalars A))
  infer_instance

theorem LeafTwAdj_of : LeafTwAdj := by
  intro q _ U u hq
  obtain ⟨R, f, hf, ⟨x, rfl⟩, -⟩ :=
    Scheme.exists_affine_mem_range_and_range_subset (X := U) (x := u) (U := ⊤) (by simp)
  have hqR : IsUnit ((q : ℕ) : R) := by
    simpa using (hq.map f.appTop.hom).map (Scheme.ΓSpecIso R).hom.hom
  have := twAdj_etale R q hqR
  let φ : R ⟶ CommRingCat.of (AdjoinRoot (cyclotomic q R)) :=
    CommRingCat.ofHom (algebraMap R (AdjoinRoot (cyclotomic q R)))
  have hφ : Etale (Spec.map φ) :=
    HasRingHomProperty.Spec_iff.mpr (RingHom.etale_algebraMap.mpr this)
  refine ⟨Spec (.of (AdjoinRoot (cyclotomic q R))), Spec.map φ ≫ f, inferInstance, ?_, ?_⟩
  · obtain ⟨y, hy⟩ := twAdj_comap_surj R q x
    refine ⟨y, ?_⟩
    subst hy
    rfl
  · let ψ := (Scheme.ΓSpecIso (CommRingCat.of (AdjoinRoot (cyclotomic q R)))).inv.hom
    refine ⟨⟨ψ (AdjoinRoot.root _), ?_, ?_⟩⟩
    · simpa using (hqR.map (algebraMap R (AdjoinRoot (cyclotomic q R)))).map ψ
    · have h0 : aeval (AdjoinRoot.root (cyclotomic q R)) (cyclotomic q ℤ) = 0 := by
        rw [← aeval_map_algebraMap R, map_cyclotomic, AdjoinRoot.aeval_eq, AdjoinRoot.mk_self]
      have := aeval_algHom_apply ψ.toIntAlgHom (AdjoinRoot.root (cyclotomic q R)) (cyclotomic q ℤ)
      rw [h0, map_zero] at this
      exact this

end LateralTheory.E.E8.TwSec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwAdjPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwFieldZPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafTwFieldZPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSecKillCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.E8.TwSec.FieldZ

variable {q : ℕ} [NeZero q] {K : Type} [CommRing K] [IsDomain K]

theorem prim_isPrim (ξ : Prim q K) : IsPrimitiveRoot ξ.1 q := by
  have : NeZero (q : K) := ⟨ξ.2.1.ne_zero⟩
  rw [← Polynomial.isRoot_cyclotomic_iff, ← Polynomial.map_cyclotomic q (Int.castRingHom K)]
  have h := ξ.2.2
  rw [Polynomial.aeval_def] at h
  rw [Polynomial.IsRoot, Polynomial.eval_map]
  simpa [Polynomial.eval₂_eq_eval_map] using h

theorem pow_val (ζ : Prim q K) (n : ℕ) : ζ.1 ^ n = ζ.1 ^ ((n : ZMod q).val) := by
  rw [ZMod.val_natCast]
  conv_lhs => rw [← Nat.mod_add_div n q, pow_add, pow_mul, (prim_isPrim ζ).pow_eq_one, one_pow, mul_one]

theorem exists_unit (ζ ξ : Prim q K) : ∃ u : (ZMod q)ˣ, ξ.1 = ζ.1 ^ (u : ZMod q).val := by
  obtain ⟨i, hi, h⟩ := (prim_isPrim ζ).eq_pow_of_pow_eq_one (prim_isPrim ξ).pow_eq_one
  have hc : i.Coprime q := ((prim_isPrim ζ).pow_iff_coprime (Nat.pos_of_ne_zero (NeZero.ne q)) i).1 (h ▸ prim_isPrim ξ)
  refine ⟨ZMod.unitOfCoprime i hc, ?_⟩
  rw [ZMod.coe_unitOfCoprime, ZMod.val_natCast, Nat.mod_eq_of_lt hi, h]

theorem unit_unique (ζ : Prim q K) {u v : (ZMod q)ˣ} (h : ζ.1 ^ (u : ZMod q).val = ζ.1 ^ (v : ZMod q).val) : u = v :=
  Units.ext (ZMod.val_injective q ((prim_isPrim ζ).pow_inj (ZMod.val_lt _) (ZMod.val_lt _) h))


open Classical in
def ex (j : ℤ) (ζ : Prim q K) (ξ : Prim q K) : ZMod q :=
  if h : ∃ u : (ZMod q)ˣ, ξ.1 = ζ.1 ^ (u : ZMod q).val then (((h.choose) ^ j : (ZMod q)ˣ) : ZMod q) else 0

theorem ex_spec (j : ℤ) (ζ ξ : Prim q K) (u : (ZMod q)ˣ) (h : ξ.1 = ζ.1 ^ (u : ZMod q).val) :
    ex j ζ ξ = ((u ^ j : (ZMod q)ˣ) : ZMod q) := by
  have he : ∃ u : (ZMod q)ˣ, ξ.1 = ζ.1 ^ (u : ZMod q).val := ⟨u, h⟩
  unfold ex
  rw [dite_eq_left he, unit_unique ζ (he.choose_spec.symm.trans h)]

def Φ (j : ℤ) (ζ : Prim q K) : (Prim q K →₀ ULift.{1} (ZMod q)) →ₗ[ULift.{1} (ZMod q)] ULift.{1} (ZMod q) :=
  Finsupp.linearCombination (ULift.{1} (ZMod q)) (fun ξ => ULift.up (ex j ζ ξ))

theorem rel_le (j : ℤ) (ζ : Prim q K) : twRel q j K ≤ LinearMap.ker (Φ j ζ) := by
  refine Submodule.span_le.2 ?_
  rintro x ⟨ζ', ξ, a, h, rfl⟩
  obtain ⟨u, hu⟩ := exists_unit ζ ζ'
  have hξ : ξ.1 = ζ.1 ^ ((u * a : (ZMod q)ˣ) : ZMod q).val := by
    rw [h, hu, ← pow_mul, pow_val ζ, Units.val_mul, Nat.cast_mul, ZMod.natCast_zmod_val, ZMod.natCast_zmod_val]
  simp only [SetLike.mem_coe, LinearMap.mem_ker, Φ, map_sub, Finsupp.linearCombination_single]
  rw [ex_spec j ζ ξ _ hξ, ex_spec j ζ ζ' _ hu, mul_zpow]
  apply ULift.ext
  simp [mul_comm]

theorem key (j : ℤ) (ζ : Prim q K) (c : ZMod q)
    (h : (ULift.up.{1} c • Submodule.Quotient.mk (Finsupp.single ζ (1 : ULift.{1} (ZMod q))) :
      (Prim q K →₀ ULift.{1} (ZMod q)) ⧸ twRel q j K) = 0) : c = 0 := by
  have h2 := congrArg ((twRel q j K).liftQ (Φ j ζ) (rel_le j ζ)) h
  rw [LinearMap.map_smul, Submodule.liftQ_apply, map_zero, Φ, Finsupp.linearCombination_single,
    ex_spec j ζ ζ 1 ((pow_one ζ.1).symm.trans (by rw [pow_val ζ 1, Nat.cast_one, Units.val_one]))] at h2
  have h3 := congrArg ULift.down h2
  simpa using h3

end FieldZ

theorem LeafTwFieldZ_of : LeafTwFieldZ := by
  intro q _ j K hK ζ c h
  have : IsDomain K := hK.isDomain
  exact FieldZ.key j ζ c h

end LateralTheory.E.E8.TwSec
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwFieldZPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwGenPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafTwGenPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSecKillCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.E8.TwSec.Gen

theorem prim_pow_eq_one {q : ℕ} {A : Type} [CommRing A] (ζ : Prim q A) : ζ.1 ^ q = 1 := by
  obtain ⟨p, hp⟩ := Polynomial.cyclotomic.dvd_X_pow_sub_one q ℤ
  have h := congrArg (Polynomial.aeval ζ.1) hp
  rw [map_mul, ζ.2.2, zero_mul] at h
  simpa [sub_eq_zero] using h

theorem prim_isPrimitiveRoot {q : ℕ} [NeZero q] {A K : Type} [CommRing A] [Field K] (φ : A →+* K) (ζ : Prim q A) :
    IsPrimitiveRoot (φ ζ.1) q := by
  have hu : IsUnit (q : K) := by simpa using ζ.2.1.map φ
  have : NeZero (q : K) := ⟨hu.ne_zero⟩
  have h := Polynomial.aeval_algHom_apply φ.toIntAlgHom ζ.1 (Polynomial.cyclotomic q ℤ)
  rw [ζ.2.2, map_zero] at h
  have h2 : Polynomial.aeval (φ ζ.1) (Polynomial.cyclotomic q ℤ) = 0 := by simpa using h
  rwa [Polynomial.aeval_def, Polynomial.eval₂_eq_eval_map, Polynomial.map_cyclotomic, ← Polynomial.IsRoot.def,
    Polynomial.isRoot_cyclotomic_iff] at h2

theorem exists_pow {q : ℕ} [NeZero q] {A K : Type} [CommRing A] [Field K] (φ : A →+* K) (ζ ξ : Prim q A) :
    ∃ k < q, k.Coprime q ∧ φ ξ.1 = φ ζ.1 ^ k := by
  have hζ := prim_isPrimitiveRoot φ ζ
  have hξ := prim_isPrimitiveRoot φ ξ
  obtain ⟨i, hi, e⟩ := hζ.eq_pow_of_pow_eq_one hξ.pow_eq_one
  refine ⟨i, hi, ?_, e.symm⟩
  exact (hζ.pow_iff_coprime (NeZero.pos q) i).mp (by rw [e]; exact hξ)

theorem key_ring {A K : Type} [CommRing A] [Field K] (φ : A →+* K) (x y : A) (q k : ℕ) (hq : (q : K) ≠ 0)
    (hx : x ^ q = 1) (hy : y ^ q = 1) (h : φ x = φ y ^ k) :
    φ (∑ b ∈ Finset.range q, (x * y ^ (k * (q - 1))) ^ b) ≠ 0 ∧
    ∀ (B : Type) [CommRing B] (ψ : A →+* B), IsUnit (ψ (∑ b ∈ Finset.range q, (x * y ^ (k * (q - 1))) ^ b)) →
      ψ x = ψ y ^ k := by
  have hq0 : q ≠ 0 := by rintro rfl; simp at hq
  have hkq : k * (q - 1) + k = k * q := by
    obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le (Nat.one_le_iff_ne_zero.mpr hq0); simp [mul_add]; ring
  have hyk : y ^ (k * (q - 1)) * y ^ k = 1 := by rw [← pow_add, hkq, mul_comm, pow_mul, hy, one_pow]
  have hu : (x * y ^ (k * (q - 1))) ^ q = 1 := by
    rw [mul_pow, hx, one_mul, ← pow_mul, mul_comm, pow_mul, hy, one_pow]
  refine ⟨?_, ?_⟩
  · have : φ (x * y ^ (k * (q - 1))) = 1 := by
      rw [map_mul, map_pow, h, ← pow_add, add_comm, hkq, mul_comm, pow_mul, ← map_pow, hy, map_one, one_pow]

    simpa [map_sum, map_pow, this] using hq
  · intro B _ ψ hs
    have h0 : ψ (∑ b ∈ Finset.range q, (x * y ^ (k * (q - 1))) ^ b) * (ψ (x * y ^ (k * (q - 1))) - 1) = 0 := by
      rw [← map_one ψ, ← map_sub, ← map_mul, geom_sum_mul, hu, sub_self, map_zero]
    have h1 : ψ (x * y ^ (k * (q - 1))) = 1 := by
      have := (hs.mul_right_eq_zero).mp h0
      exact sub_eq_zero.mp this
    calc ψ x = ψ x * ψ (y ^ (k * (q - 1)) * y ^ k) := by rw [hyk, map_one, mul_one]
      _ = ψ (x * y ^ (k * (q - 1))) * ψ y ^ k := by simp only [map_mul, map_pow]; ring
      _ = ψ y ^ k := by rw [h1, one_mul]

theorem isUnit_res {W : Scheme.{0}} (s : Γ(W, ⊤)) :
    IsUnit ((Scheme.Γ.map (W.basicOpen s).ι.op).hom s) := by
  set O := W.basicOpen s
  rw [Scheme.Γ_map_op]
  refine RingedSpace.isUnit_of_isUnit_germ O.toScheme.toRingedSpace ⊤ _ (fun y _ => ?_)
  have hy : y ∈ O.toScheme.basicOpen (O.ι.appTop s) := by
    rw [← Scheme.preimage_basicOpen_top]
    show O.ι y ∈ O
    exact y.2
  exact (Scheme.mem_basicOpen_top _ _ _).mp hy

end LateralTheory.E.E8.TwSec.Gen

namespace LateralTheory.E.E8.TwSec.Gen

theorem map_mk {q : ℕ} (j : ℤ) {A B : CommRingCat.{0}} (f : A ⟶ B) (ξ : Prim q A) (r : ULift.{1} (ZMod q)) :
    ((twF q j).map f).hom (Submodule.Quotient.mk (p := twRel q j A) (Finsupp.single ξ r)) =
      Submodule.Quotient.mk (p := twRel q j B) (Finsupp.single (ξ.map f.hom) r) := by
  change Submodule.Quotient.mk (Finsupp.mapDomain _ (Finsupp.single ξ r)) = _
  rw [Finsupp.mapDomain_single]

theorem mk_pow {q : ℕ} (j : ℤ) {B : CommRingCat.{0}} (ζ ξ : Prim q B) (k : ℕ) (hk : k < q) (hc : k.Coprime q)
    (h : ξ.1 = ζ.1 ^ k) :
    (Submodule.Quotient.mk (p := twRel q j B) (Finsupp.single ξ 1) : (twF q j).obj B) =
      ULift.up ((((ZMod.unitOfCoprime k hc) ^ j : (ZMod q)ˣ)) : ZMod q) • twCls j ζ := by
  unfold twCls
  have h1 : (ULift.up ((((ZMod.unitOfCoprime k hc) ^ j : (ZMod q)ˣ)) : ZMod q) : ULift.{1} (ZMod q)) •
      (Submodule.Quotient.mk (p := twRel q j B) (Finsupp.single ζ 1)) =
      Submodule.Quotient.mk (Finsupp.single ζ (ULift.up ((((ZMod.unitOfCoprime k hc) ^ j : (ZMod q)ˣ)) : ZMod q))) := by
    rw [← Submodule.Quotient.mk_smul, Finsupp.smul_single, smul_eq_mul, mul_one]
  refine Eq.trans ?_ h1.symm
  rw [Submodule.Quotient.eq]
  refine Submodule.subset_span ⟨ζ, ξ, ZMod.unitOfCoprime k hc, ?_, rfl⟩
  rw [h, ZMod.coe_unitOfCoprime, ZMod.val_natCast, Nat.mod_eq_of_lt hk]

theorem res_le {q : ℕ} (j : ℤ) {W : Scheme.{0}} {O O' : W.Opens} (h : O' ≤ O) {x y : (twF q j).obj Γ(W, ⊤)}
    (e : ((twF q j).map (Scheme.Γ.map O.ι.op)).hom x = ((twF q j).map (Scheme.Γ.map O.ι.op)).hom y) :
    ((twF q j).map (Scheme.Γ.map O'.ι.op)).hom x = ((twF q j).map (Scheme.Γ.map O'.ι.op)).hom y := by
  rw [← W.homOfLE_ι h, op_comp, Functor.map_comp, Functor.map_comp, ModuleCat.hom_comp]
  exact congrArg (ModuleCat.Hom.hom ((twF q j).map (Scheme.Γ.map (W.homOfLE h).op))) e

theorem core {q : ℕ} [NeZero q] (j : ℤ) {W : Scheme.{0}} (ζ ξ : Prim q Γ(W, ⊤)) (w0 : W) :
    ∃ (O : W.Opens) (c : ZMod q), w0 ∈ O ∧
      ((twF q j).map (Scheme.Γ.map O.ι.op)).hom (Submodule.Quotient.mk (p := twRel q j Γ(W, ⊤)) (Finsupp.single ξ 1)) =
        ((twF q j).map (Scheme.Γ.map O.ι.op)).hom (ULift.up c • twCls j ζ) := by
  obtain ⟨k, hk, hc, e⟩ := exists_pow (W.Γevaluation w0).hom ζ ξ
  have hq : ((q : ℕ) : W.residueField w0) ≠ 0 := by
    have := ζ.2.1.map (W.Γevaluation w0).hom
    simpa using this.ne_zero
  obtain ⟨h1, h2⟩ := key_ring (W.Γevaluation w0).hom ξ.1 ζ.1 q k hq (prim_pow_eq_one ξ) (prim_pow_eq_one ζ) e
  refine ⟨W.basicOpen (∑ b ∈ Finset.range q, (ξ.1 * ζ.1 ^ (k * (q - 1))) ^ b),
    (((ZMod.unitOfCoprime k hc) ^ j : (ZMod q)ˣ) : ZMod q),
    (W.evaluation_ne_zero_iff_mem_basicOpen (U := ⊤) w0 trivial _).mp h1, ?_⟩
  have hs := h2 _ (Scheme.Γ.map (W.basicOpen (∑ b ∈ Finset.range q, (ξ.1 * ζ.1 ^ (k * (q - 1))) ^ b)).ι.op).hom
    (isUnit_res _)
  refine (map_mk j _ ξ 1).trans ?_
  refine Eq.trans ?_ (LinearMap.map_smul _ _ _).symm
  refine Eq.trans ?_ (congrArg _ (map_mk j _ ζ 1).symm)
  exact mk_pow j _ _ k hk hc hs

end LateralTheory.E.E8.TwSec.Gen

namespace LateralTheory.E.E8.TwSec

open Gen in
theorem LeafTwGen_of : LeafTwGen := by
  intro q _ j W ζ t w0
  obtain ⟨f, rfl⟩ := Submodule.Quotient.mk_surjective (twRel q j Γ(W, ⊤)) t
  induction f using Finsupp.induction_linear with
  | zero =>
    refine ⟨⊤, 0, trivial, ?_⟩
    have hm : (Submodule.Quotient.mk 0 : (twF q j).obj Γ(W, ⊤)) = 0 := Submodule.Quotient.mk_zero _
    have h0 : (ULift.up (0 : ZMod q) : ULift.{1} (ZMod q)) • twCls j ζ = 0 := zero_smul _ _
    rw [hm, h0]
    exact rfl
  | add f g hf hg =>
    obtain ⟨O1, c1, h1, e1⟩ := hf
    obtain ⟨O2, c2, h2, e2⟩ := hg
    refine ⟨O1 ⊓ O2, c1 + c2, ⟨h1, h2⟩, ?_⟩
    have hm : (Submodule.Quotient.mk (f + g) : (twF q j).obj Γ(W, ⊤)) =
        (Submodule.Quotient.mk f : (twF q j).obj Γ(W, ⊤)) + (Submodule.Quotient.mk g : (twF q j).obj Γ(W, ⊤)) :=
      Submodule.Quotient.mk_add _
    rw [hm]
    refine (LinearMap.map_add _ _ _).trans ?_
    rw [res_le j inf_le_left e1, res_le j inf_le_right e2]
    refine (LinearMap.map_add _ _ _).symm.trans ?_
    congr 1
    exact (add_smul _ _ _).symm
  | single ξ r =>
    obtain ⟨O, c, h, e⟩ := core j ζ ξ w0
    refine ⟨O, r.down * c, h, ?_⟩
    have hr : Finsupp.single ξ r = r • Finsupp.single ξ (1 : ULift.{1} (ZMod q)) := by
      rw [Finsupp.smul_single, smul_eq_mul, mul_one]
    have hm : (Submodule.Quotient.mk (r • Finsupp.single ξ (1 : ULift.{1} (ZMod q))) : (twF q j).obj Γ(W, ⊤)) =
        r • (Submodule.Quotient.mk (Finsupp.single ξ 1) : (twF q j).obj Γ(W, ⊤)) :=
      Submodule.Quotient.mk_smul _ _ _
    rw [hr, hm]
    refine (LinearMap.map_smul _ _ _).trans ?_
    rw [e]
    refine (LinearMap.map_smul _ _ _).symm.trans ?_
    congr 1
    exact smul_smul _ _ _

end LateralTheory.E.E8.TwSec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwGenPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwPtPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafTwPtPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSecKillCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.E8.TwSec

theorem twF_res_comp {q : ℕ} (j : ℤ) {X Y Z : Scheme.{0}} (a : X ⟶ Y) (b : Y ⟶ Z) (x : (twF q j).obj Γ(Z, ⊤)) :
    ((twF q j).map (Scheme.Γ.map (a ≫ b).op)).hom x =
      ((twF q j).map (Scheme.Γ.map a.op)).hom (((twF q j).map (Scheme.Γ.map b.op)).hom x) := by
  rw [op_comp, Functor.map_comp, Functor.map_comp]; rfl

theorem twF_map_cls {q : ℕ} (j : ℤ) {A B : CommRingCat.{0}} (f : A ⟶ B) (ζ : Prim q A) (c : ZMod q) :
    ((twF q j).map f).hom (ULift.up c • twCls j ζ) = ULift.up c • twCls j (ζ.map f.hom) := by
  rw [map_smul]
  congr 1
  unfold twCls
  change Submodule.mapQ _ _ _ (twRel_le q j f.hom) _ = _
  rw [Submodule.mapQ_apply, Finsupp.lmapDomain_apply, Finsupp.mapDomain_single]

theorem twF_eq_zero_of_not_unit {q : ℕ} (j : ℤ) {A : CommRingCat.{0}} (hq : ¬ IsUnit (q : A)) (t : (twF q j).obj A) :
    t = 0 := by
  haveI : IsEmpty (Prim q A) := ⟨fun ζ => hq ζ.2.1⟩
  obtain ⟨f, rfl⟩ := Submodule.Quotient.mk_surjective _ t
  rw [Subsingleton.elim f 0]
  exact Submodule.Quotient.mk_zero _

theorem LeafTwPt_of (hA : LeafTwAdj) (hG : LeafTwGen) (hF : LeafTwFieldZ) : LeafTwPt := by
  intro q _ j U u t V g v hgv ht
  by_cases hq : IsUnit (q : Γ(U, ⊤))
  swap
  · refine ⟨U, 𝟙 U, inferInstance, ⟨u, rfl⟩, ?_⟩
    rw [twF_eq_zero_of_not_unit j hq t]; exact map_zero _
  obtain ⟨W₁, w₁, hw₁, ⟨w, hw⟩, ⟨ζ⟩⟩ := hA q U u hq
  haveI := hw₁
  obtain ⟨O, c, hwO, hO⟩ := hG q j W₁ ζ (((twF q j).map (Scheme.Γ.map w₁.op)).hom t) w
  have hO' : ((twF q j).map (Scheme.Γ.map (O.ι ≫ w₁).op)).hom t =
      ULift.up c • twCls j (ζ.map (Scheme.Γ.map O.ι.op).hom) := by
    rw [twF_res_comp, hO]; exact twF_map_cls j _ ζ c
  obtain ⟨p, hp1, hp2⟩ := Scheme.Pullback.exists_preimage_pullback (f := O.ι ≫ w₁) (g := g)
    (⟨w, hwO⟩ : O.toScheme) v (by rw [hgv]; exact hw)
  have hc : c = 0 := by
    let P := pullback (O.ι ≫ w₁) g
    let φ := P.evaluation ⊤ p trivial
    have e : ((twF q j).map (Scheme.Γ.map (pullback.fst (O.ι ≫ w₁) g ≫ O.ι ≫ w₁).op)).hom t = 0 := by
      rw [pullback.condition, twF_res_comp, ht, map_zero]
    rw [twF_res_comp, hO', twF_map_cls] at e
    have key := twF_map_cls j φ (Prim.map (Scheme.Γ.map (pullback.fst (O.ι ≫ w₁) g).op).hom
      (Prim.map (Scheme.Γ.map O.ι.op).hom ζ)) c
    exact hF q j (P.residueField p) (Field.toIsField _) _ c
      (key.symm.trans ((congrArg (fun x => ((twF q j).map φ).hom x) e).trans (map_zero _)))
  refine ⟨O, O.ι ≫ w₁, inferInstance, ⟨⟨w, hwO⟩, hw⟩, ?_⟩
  rw [hO', hc]
  exact zero_smul (ULift (ZMod q)) _

end LateralTheory.E.E8.TwSec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwPtPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.PointDetect0Of =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.PointDetect0Of", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.EtaleCohomology.EtaleSheaves.H0TwistOverClosedField\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4

namespace LateralTheory.E.PointDetect0Pf

def EtSep : Prop := ∀ (R : Type) [CommRing R] (F : Shv R) (X : Scheme.{0}) (s : Sec F X),
  (∀ x : X, ∃ (U : Scheme.{0}) (g : U ⟶ X), Etale g ∧ x ∈ Set.range g.base ∧ Sec.res g s = 0) → s = 0

theorem etSep : EtSep := by
  intro R _ F X s h
  choose U g hE hx h0 using h
  have hR : Presieve.ofArrows U g ∈ Scheme.precoverage @Etale X := by
    exact (Scheme.ofArrows_mem_precoverage_iff @Etale).2 ⟨fun x => ⟨x, hx x⟩, hE⟩
  have hT : Presieve.IsSheaf Scheme.etaleTopology (F.obj ⋙ forget (ModuleCat.{1} (ULift.{1} R))) := by
    have := (Presheaf.isSheaf_iff_isSheaf_forget Scheme.etaleTopology F.obj (forget _)).1 F.property
    exact (isSheaf_iff_isSheaf_of_type _ _).1 this
  apply (hT.isSheafFor_of_mem_precoverage hR).isSeparatedFor.ext
  rintro Y f ⟨x⟩
  change Sec.res (g x) s = (F.obj.map (g x).op).hom 0
  rw [h0 x, map_zero]

end LateralTheory.E.PointDetect0Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.PointDetect0Of =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.ResZeroOfRange =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.ResZeroOfRange", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.CovOfPoints\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSecKillCut\npublic import Development.EtaleCohomology.EtaleSheaves.LeafConeExactPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafNegPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocInjPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafOfRingsLocSurjPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwAdjPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwFieldZPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwGenPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwPtPf\npublic import Development.EtaleCohomology.EtaleSheaves.PointDetect0Of\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex CochainComplex.HomComplex

namespace LateralTheory.E.LeafSurj0WPf
open LateralTheory.E.E4 LateralTheory.E.LeafGhostCut LateralTheory.E.EtaleTopologySheaves LateralTheory.E.LeafDegCut LateralTheory.E.E8.TwSec

theorem neg_cochain (R : Type) [CommRing R] (E : Spc) (F : Shv R) (m : ℤ) (hm : m < 0)
    (z : Cochain ((chains R).obj E) (res R F) m) : z = 0 := by
  refine Cochain.ext _ _ (fun p q hpq => ?_)
  rw [Cochain.zero_v]
  by_cases hq : q < 0
  · exact (LateralTheory.E.LeafNegPf.res_isZero R F q hq).eq_of_tgt _ _
  · exact (LateralTheory.E.LeafNegPf.chains_isZero R E p (by omega)).eq_of_src _ _

theorem fgt_zero (R : Type) [CommRing R] {U E : Spc} (f : U ⟶ E) (F : Shv R) (y : Hrel R f F 0)
    (h : fgt R f F 0 y = 0) : y = 0 := by
  obtain ⟨z, rfl⟩ := y.mk_surjective
  change CohomologyClass.mk (zcomp (Cocycle.ofHom (mappingCone.inr ((chains R).map f))) z (zero_add 0)) = 0 at h
  rw [CohomologyClass.mk_eq_zero_iff] at h
  obtain ⟨m, hm, β, hβ⟩ := h
  rw [neg_cochain R E F m (by omega) β, δ_zero] at hβ
  have hz : z = 0 := by
    apply Cocycle.ext
    rw [mappingCone.ext_cochain_from_iff _ (-1) 0 (by omega)]
    refine ⟨(neg_cochain R U F _ (by omega) _).trans (neg_cochain R U F _ (by omega) _).symm, ?_⟩
    rw [Cocycle.coe_zero, Cochain.comp_zero]
    exact hβ.symm
  rw [hz]
  rfl

theorem pull_fgt (R : Type) [CommRing R] {U E : Spc} (f : U ⟶ E) (F : Shv R) (n : ℤ) (y : Hrel R f F n) :
    pull R f F n (fgt R f F n y) = 0 := by
  obtain ⟨z, rfl⟩ := y.mk_surjective
  exact LateralTheory.E.LeafConeExactPf.pre_inr_eq_zero _ n z

theorem twPt : LeafTwPt := LeafTwPt_of LeafTwAdj_of LeafTwGen_of LeafTwFieldZ_of

theorem secKill (q : ℕ) [NeZero q] {X Z : Scheme.{0}} (ι : Z ⟶ X) (j : ℤ) (s : Sec (tw q j) X) (hs : Sec.res ι s = 0)
    (z : Z) : ∃ (W : Scheme.{0}) (w : W ⟶ X), Etale w ∧ ι z ∈ Set.range w ∧ Sec.res w s = 0 := by
  obtain ⟨U, w, hw, ⟨u, hu⟩, t, ht⟩ := LateralTheory.E.LeafOfRingsLocSurjPf.LeafOfRingsLocSurj_of (ZMod q) (twF q j) X s (ι z)
  obtain ⟨p, hp1, hp2⟩ := Scheme.Pullback.exists_preimage_pullback (f := w) (g := ι) u z hu
  have e2 : Sec.res (F := tw q j) (pullback.fst w ι) (Sec.res w s) = 0 := by
    rw [← res_comp, pullback.condition, res_comp, hs]
    exact map_zero _
  have hP : ofRings.sec (twF q j) _ (((twF q j).map (Scheme.Γ.map (pullback.fst w ι).op)).hom t) = 0 := by
    rw [← sec_res, ← ht]
    exact e2
  obtain ⟨V, v, -, ⟨v0, hv0⟩, hV⟩ := LeafOfRingsLocInj_of (ZMod q) (twF q j) _ _ hP p
  obtain ⟨W, w', hw', ⟨a, ha⟩, hW⟩ := twPt q j U u t V (v ≫ pullback.fst w ι) v0 (by simp [hv0, hp1])
    ((twF_res_comp j _ _ t).trans hV)
  refine ⟨W, w' ≫ w, inferInstance, ⟨a, by simp [ha, hu]⟩, ?_⟩
  rw [res_comp]
  have e := sec_res (twF q j) w' t
  rw [hW] at e
  exact (congrArg (Sec.res w') ht).trans (e.trans (sec_zero _ _))

def zeroLocus {R : Type} [CommRing R] {F : Shv R} {X : Scheme.{0}} (s : Sec F X) : Set X :=
  {x | ∃ (W : Scheme.{0}) (w : W ⟶ X), Etale w ∧ x ∈ Set.range w ∧ Sec.res w s = 0}

theorem isOpen_zeroLocus {R : Type} [CommRing R] {F : Shv R} {X : Scheme.{0}} (s : Sec F X) : IsOpen (zeroLocus s) := by
  rw [isOpen_iff_forall_mem_open]
  rintro x ⟨W, w, hw, hx, h0⟩
  exact ⟨Set.range w, fun y hy => ⟨W, w, hw, hy, h0⟩, w.isOpenMap.isOpen_range, hx⟩

theorem res_zero_of_range {R : Type} [CommRing R] {F : Shv R} {X T : Scheme.{0}} (s : Sec F X) (g : T ⟶ X)
    (hg : ∀ t, g t ∈ zeroLocus s) : Sec.res g s = 0 := by
  apply LateralTheory.E.PointDetect0Pf.etSep R F T
  intro t
  obtain ⟨W, w, hw, ⟨u, hu⟩, h0⟩ := hg t
  obtain ⟨p, hp1, -⟩ := Scheme.Pullback.exists_preimage_pullback (f := g) (g := w) t u hu.symm
  refine ⟨_, pullback.fst g w, inferInstance, ⟨p, hp1⟩, ?_⟩
  rw [← res_comp, pullback.condition, res_comp, h0]
  exact map_zero _

theorem core (h9 : A9) (q : ℕ) [NeZero q] (i : ℤ) {B W Y : Scheme.{0}} (ι : W ⟶ B) (P : Y ⟶ B) [IsProper P]
    (U : B.Etale) (y : Hrel (ZMod q) (sch.map (prU P ι U)) (tw q i) 0) (x : U.left) (hx : U.hom x ∈ Set.range ι) :
    ∃ (U' : B.Etale) (a : U' ⟶ U), x ∈ Set.range a.left ∧
      ∀ (U'' : B.Etale) (b : U'' ⟶ U'), rY q i P ι (b ≫ a) 0 y = 0 := by
  obtain ⟨e, he, -⟩ := (h9 (ZMod q) (tw q i)).2
  obtain ⟨s, hs⟩ := (e (YU P U)).surjective (fgt (ZMod q) (sch.map (prU P ι U)) (tw q i) 0 y)
  have hZ : Sec.res (prU P ι U) s = 0 := by
    apply (e _).injective
    rw [← he, hs, map_zero]
    exact pull_fgt _ _ _ _ _
  have hcl : IsClosed ((toBY P U) '' (zeroLocus s)ᶜ) :=
    (toBY P U).isClosedMap _ (isOpen_zeroLocus s).isClosed_compl
  let O : U.left.Opens := ⟨_, hcl.isOpen_compl⟩
  have hxO : x ∈ O := by
    rintro ⟨t, ht, htx⟩
    obtain ⟨w0, hw0⟩ := hx
    obtain ⟨p, hp1, -⟩ := Scheme.Pullback.exists_preimage_pullback (f := pullback.snd P U.hom ≫ U.hom) (g := ι) t w0
      (by rw [hw0, ← htx]; rfl)
    apply ht
    rw [← hp1]
    exact secKill q (prU P ι U) i s hZ p
  have hU : Etale U.hom := U.prop
  let U' : B.Etale := MorphismProperty.Over.mk ⊤ (O.ι ≫ U.hom) (inferInstanceAs (Etale (O.ι ≫ U.hom)))
  let a : U' ⟶ U := MorphismProperty.Over.homMk O.ι rfl
  refine ⟨U', a, ⟨⟨x, hxO⟩, rfl⟩, fun U'' b => ?_⟩
  apply fgt_zero
  refine (relNat _ _ _ _ _ _ _ _ _).trans ?_
  rw [← hs, he, res_zero_of_range s _ ?_, map_zero]
  intro t
  by_contra hn
  have h1 : resY P (b ≫ a) ≫ toBY P U = (toBY P U'' ≫ b.left) ≫ O.ι := by
    simp only [resY, toBY, pullback.lift_snd]
    rfl
  have h2 : toBY P U (resY P (b ≫ a) t) ∈ O := by
    rw [← Scheme.Hom.comp_apply, h1]
    exact ((toBY P U'' ≫ b.left) t).2
  exact h2 ⟨_, hn, rfl⟩

theorem LeafSurj0W_of : LateralTheory.E.LeafSurj0Pf.LeafSurj0W := by
  intro hy q _ k _ _ i B W Y0 Y1 Y2 _ ι _ V _ p g1 g2 _ _ h2 _ U y x hx
  exact core hy.2.2.2.2.2.2.2.1 q i ι (g2 ≫ g1 ≫ p) U y x hx

end LateralTheory.E.LeafSurj0WPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.ResZeroOfRange =====
