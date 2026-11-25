module

public import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnits
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.ExistsNsmulEqLocalPrimaryKernel
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.SurjectiveOfInjectiveOfInjective
public import GroundTheory.ProfiniteCohomology.CartierDualDefs
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.Dimension
public import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingCriterion
public import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyPlaces
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangeModules
import GroundTheory.ProfiniteCohomology.Colimit
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
import Mathlib.Tactic.Basify
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
import GroundTheory.ProfiniteCohomology.LocalClassFormation.FiniteVanishing.Vanishing
import Mathlib.GroupTheory.Nilpotent
import GroundTheory.ProfiniteCohomology.RestrictedRamification.FiniteOpen
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDiv, GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsTwo, GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyTransfer

-- ===== clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDiv =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDiv", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnits\nimport GroundTheory.ProfiniteCohomology.Colimit\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.ExistsNsmulEqLocalPrimaryKernel\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.SurjectiveOfInjectiveOfInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain GroundTheory.Global DirectSum

noncomputable section

local notation "ℚ̄" => AlgebraicClosure ℚ

theorem exists_two_mem_place (K : FiniteSubfield) :
    ∃ v : HeightOneSpectrum (𝓞 K.1), ((2 : ℕ) : 𝓞 K.1) ∈ v.asIdeal := by
  have hnu : ¬ IsUnit ((2 : ℕ) : 𝓞 K.1) := by
    rintro ⟨u, hu⟩
    have h : ((2 : ℕ) : 𝓞 K.1) * ((u⁻¹ : (𝓞 K.1)ˣ) : 𝓞 K.1) = 1 := by
      rw [← hu]
      exact u.mul_inv
    have hK : ((2 : ℕ) : K.1) * (((u⁻¹ : (𝓞 K.1)ˣ) : 𝓞 K.1) : K.1) = 1 := by
      have := congrArg (algebraMap (𝓞 K.1) K.1) h
      rwa [map_mul, map_natCast, map_one] at this
    have hint : IsIntegral ℤ (((u⁻¹ : (𝓞 K.1)ˣ) : 𝓞 K.1) : K.1) :=
      NumberField.RingOfIntegers.isIntegral_coe _
    have heq : (((u⁻¹ : (𝓞 K.1)ˣ) : 𝓞 K.1) : K.1) = algebraMap ℚ K.1 (1 / 2) := by
      rw [eq_inv_of_mul_eq_one_right hK]
      simp
    rw [heq, isIntegral_algebraMap_iff ] at hint
    obtain ⟨y, hy⟩ := IsIntegrallyClosed.isIntegral_iff.1 hint
    have hy' : ((2 * y : ℤ) : ℚ) = 1 := by
      rw [Int.cast_mul, show ((y : ℤ) : ℚ) = algebraMap ℤ ℚ y from rfl, hy]
      norm_num
    have h2 : 2 * y = 1 := by exact_mod_cast hy'
    omega
  have hne : Ideal.span {((2 : ℕ) : 𝓞 K.1)} ≠ ⊤ := fun h => hnu (Ideal.span_singleton_eq_top.1 h)
  obtain ⟨M, hM, hle⟩ := Ideal.exists_le_maximal _ hne
  have h2M : ((2 : ℕ) : 𝓞 K.1) ∈ M := hle (Ideal.subset_span rfl)
  have hMbot : M ≠ ⊥ := by
    intro h
    rw [h, Ideal.mem_bot] at h2M
    have : ((2 : ℕ) : K.1) = 0 := by
      have := congrArg (algebraMap (𝓞 K.1) K.1) h2M
      rwa [map_natCast, map_zero] at this
    norm_num at this
  exact ⟨⟨M, hM.isPrime, hMbot⟩, h2M⟩

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (ιr : ∀ v : {v : InfinitePlace K.1 // v.IsReal}, ℚ̄ →ₐ[K.1] AlgebraicClosure v.1.Completion)
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))



theorem exists_two_nsmul_finLocal (v : HeightOneSpectrum (𝓞 K.1))
    (a : cohomology (galUnits.{0} (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1))) 2) :
    ∃ u, 2 • u = a := by
  obtain ⟨u₀, hu₀⟩ := (placeInv_bijective_inr (K := K) v).2
    (qzDiv 2 (placeInv (K := K) (.inr v) (finLocalEquiv (K := K) v 2 a)))
  refine ⟨(finLocalEquiv (K := K) v 2).symm u₀, (finLocalEquiv (K := K) v 2).injective ?_⟩
  rw [map_nsmul, AddEquiv.apply_symm_apply]
  apply (placeInv_bijective_inr (K := K) v).1
  rw [map_nsmul, hu₀, nsmul_qzDiv two_ne_zero]

section Maps

abbrev UnitsLoc (n : ℕ) : Type :=
  (∀ v : S, cohomology (finUnits S v) n) × (∀ w : {v : InfinitePlace K.1 // v.IsReal}, cohomology (realUnits w) n)

def unitsToGlobal (n : ℕ) : unitsTateCohomology S ιr ιs n →+ cohomology (galSUnitsMax K.1 ℚ̄ S) n :=
  (tateToGlobal (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S)
    (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) n).hom.toAddMonoidHom

def unitsGlobalToLocal (n : ℕ) : cohomology (galSUnitsMax K.1 ℚ̄ S) n →+ UnitsLoc S n :=
  (tateGlobalToLocal (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S)
    (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) n).hom.toAddMonoidHom

def unitsLocalToCompact (n : ℕ) : UnitsLoc S n →+ unitsTateCohomology S ιr ιs (n + 1) :=
  (tateLocalToCompact (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S)
    (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) n).hom.toAddMonoidHom

-- With `tateLocalToCompact` irreducible, the next two proofs compare it with the body of
-- `unitsLocalToCompact` argument by argument; unfolding both first is slow.
attribute [local irreducible] tateLocalToCompact in
theorem exists_unitsLocalToCompact_eq (n : ℕ) (x : unitsTateCohomology S ιr ιs (n + 1))
    (hx : unitsToGlobal S ιr ιs (n + 1) x = 0) : ∃ t, unitsLocalToCompact S ιr ιs n t = x :=
  (ShortComplex.moduleCat_exact_iff _).1 (tateCompactCohomology_exact_compact
    (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S) (finUnitsMor S ιs)
    realUnits (realUnitsMor S ιr) n) x hx

attribute [local irreducible] tateLocalToCompact in
theorem unitsLocalToCompact_unitsGlobalToLocal (n : ℕ) (g : cohomology (galSUnitsMax K.1 ℚ̄ S) (n + 1)) :
    unitsLocalToCompact S ιr ιs (n + 1) (unitsGlobalToLocal S ιr ιs (n + 1) g) = 0 :=
  hom_apply_hom_apply_of_comp_eq (tateGlobalToLocal_tateLocalToCompact (gsFinFamily S ιs)
    (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S) (finUnitsMor S ιs) realUnits
    (realUnitsMor S ιr) n) g


theorem unitsLocalToCompact_two_unitsGlobalToLocal (g : cohomology (galSUnitsMax K.1 ℚ̄ S) 2) :
    unitsLocalToCompact S ιr ιs 2 (unitsGlobalToLocal S ιr ιs 2 g) = 0 :=
  unitsLocalToCompact_unitsGlobalToLocal S ιr ιs 1 g

theorem unitsGlobalToLocal_snd (n : ℕ) (g : cohomology (galSUnitsMax K.1 ℚ̄ S) n) (w) :
    (unitsGlobalToLocal S ιr ιs n g).2 w = (realUnitsRes S ιr n w).hom g :=
  rfl

end Maps

section Div

variable (h2S : ∀ v : HeightOneSpectrum (𝓞 K.1), ((2 : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)



include h2S in
theorem exists_realUnitsRes_two_eq
    (t : ∀ w : {v : InfinitePlace K.1 // v.IsReal}, cohomology (realUnits w) 2) :
    ∃ g : cohomology (galSUnitsMax K.1 ℚ̄ S) 2, ∀ w, (realUnitsRes S ιr 2 w).hom g = t w := by
  classical
  let ι : LocalEmbeddings K := (nonempty_localEmbeddings K).some
  obtain ⟨v₀, hv₀⟩ := exists_two_mem_place K
  have hv₀S : v₀ ∈ S := h2S v₀ hv₀
  let s : QZ := ∑ w, placeInv (K := K) (.inl w.1) (realLocalEquiv w 2 (t w))
  obtain ⟨c, hc⟩ := (placeInv_bijective_inr (K := K) v₀).2 (-s)
  let T : ⨁ v : Place K.1, localGaloisCohomology K 2 v :=
    (∑ w, DirectSum.of (localGaloisCohomology K 2) (.inl w.1) (realLocalEquiv w 2 (t w))) +
      DirectSum.of (localGaloisCohomology K 2) (.inr v₀) c
  have h2t : ∀ w, 2 • realLocalEquiv w 2 (t w) = 0 := fun w => by
    rw [← map_nsmul, two_nsmul_realLocal w (by norm_num) (t w), map_zero]
  have h2s : 2 • s = 0 := by
    change 2 • (∑ w, placeInv (K := K) (.inl w.1) (realLocalEquiv w 2 (t w))) = 0
    rw [Finset.smul_sum]
    exact Finset.sum_eq_zero fun w _ => by rw [← map_nsmul, h2t w, map_zero]
  have h2c : 2 • c = 0 := by
    apply (placeInv_bijective_inr (K := K) v₀).1
    rw [map_nsmul, hc, map_zero, smul_neg, h2s, neg_zero]
  have hT : T ∈ localPrimaryKernel K S 2 := by
    refine ⟨⟨1, ?_⟩, fun v hv => ?_, ?_⟩
    · rw [pow_one]
      change 2 • ((∑ w, DirectSum.of (localGaloisCohomology K 2) (.inl w.1) (realLocalEquiv w 2 (t w))) +
        DirectSum.of (localGaloisCohomology K 2) (.inr v₀) c) = 0
      rw [smul_add, Finset.smul_sum, ← map_nsmul, h2c, map_zero, add_zero]
      exact Finset.sum_eq_zero fun w _ => by rw [← map_nsmul, h2t w, map_zero]
    · change ((∑ w, DirectSum.of (localGaloisCohomology K 2) (.inl w.1) (realLocalEquiv w 2 (t w))) +
        DirectSum.of (localGaloisCohomology K 2) (.inr v₀) c) (.inr v) = 0
      rw [DirectSum.add_apply, DFinsupp.finsetSum_apply,
        Finset.sum_eq_zero fun w _ => DirectSum.of_eq_of_ne _ _ _ (by simp),
        DirectSum.of_eq_of_ne _ _ _ (fun (h : (Sum.inr v : Place K.1) = .inr v₀) =>
          hv (by rw [Sum.inr_injective h]; exact hv₀S)), add_zero]
    · change sumPlaceInv K ((∑ w, DirectSum.of (localGaloisCohomology K 2) (.inl w.1)
        (realLocalEquiv w 2 (t w))) + DirectSum.of (localGaloisCohomology K 2) (.inr v₀) c) = 0

      rw [map_add (f := _), map_sum, sumPlaceInv_of, hc]
      simp only [sumPlaceInv_of]
      exact add_neg_cancel s
  let g₀ := (sUnitsH2PrimaryEquiv K S 2 Nat.prime_two h2S ι).symm ⟨T, hT⟩
  refine ⟨g₀.1, fun w => (realLocalEquiv w 2).injective ?_⟩
  have hg : brauerLocal ι (sUnitsBrauer K S g₀.1) = T := by
    have := coe_sUnitsH2PrimaryEquiv_apply K S 2 Nat.prime_two h2S ι g₀
    rw [AddEquiv.apply_symm_apply] at this
    exact this.symm
  have hw : brauerLocal ι (sUnitsBrauer K S g₀.1) (.inl w.1) =
      realLocalization ι (by norm_num : 1 ≤ 2) (sUnitsInfl K S 2 g₀.1) w := by
    -- `rfl` proves this, but is slow.
    rw [brauerLocal_apply, show sUnitsBrauer K S g₀.1 = sUnitsInfl K S 2 g₀.1 from rfl]
    delta realLocalization
    simp only [AddMonoidHom.coe_mk, ZeroHom.coe_mk]
  rw [← realLocalEquiv_realUnitsRes S ιr ι (by norm_num) w, ← hw, hg]
  change ((∑ w, DirectSum.of (localGaloisCohomology K 2) (.inl w.1) (realLocalEquiv w 2 (t w))) +
    DirectSum.of (localGaloisCohomology K 2) (.inr v₀) c) (.inl w.1) = _
  rw [DirectSum.add_apply, DFinsupp.finsetSum_apply, DirectSum.of_eq_of_ne _ _ _ (by simp), add_zero,
    Finset.sum_eq_single w]
  · exact DirectSum.of_eq_same _ _
  · intro w' _ hw'
    exact DirectSum.of_eq_of_ne _ _ _ fun h => hw' (Subtype.ext (Sum.inl_injective h).symm)
  · intro h
    exact absurd (Finset.mem_univ w) h



include h2S in
theorem exists_eq_two_nsmul_add_unitsGlobalToLocal (t : UnitsLoc S 2) :
    ∃ (t' : UnitsLoc S 2) (g : cohomology (galSUnitsMax K.1 ℚ̄ S) 2),
      t = 2 • t' + unitsGlobalToLocal S ιr ιs 2 g := by
  refine (exists_realUnitsRes_two_eq S ιr h2S t.2).elim fun g hg => ?_
  have hu : ∀ v : S, ∃ u : cohomology (finUnits S v) 2, 2 • u = t.1 v - (unitsGlobalToLocal S ιr ιs 2 g).1 v :=
    fun v => exists_two_nsmul_finLocal (K := K) v.1 _
  choose u hu using hu
  refine ⟨(u, 0), g, Prod.ext (funext fun v => ?_) (funext fun w => ?_)⟩
  · change t.1 v = 2 • u v + (unitsGlobalToLocal S ιr ιs 2 g).1 v
    rw [hu v, sub_add_cancel]
  · change t.2 w = 2 • (0 : cohomology (realUnits w) 2) + (unitsGlobalToLocal S ιr ιs 2 g).2 w
    rw [smul_zero, zero_add, unitsGlobalToLocal_snd, hg w]



include h2S in
theorem exists_two_nsmul_unitsTate_three (z : unitsTateCohomology S ιr ιs (2 + 1)) : ∃ z', 2 • z' = z := by
  obtain ⟨N, hN⟩ := isOfFinAddOrder_iff_nsmul_eq_zero.1
    (isTorsion_cohomology (galSUnitsMax K.1 ℚ̄ S) (n := 2 + 1) (by norm_num) (unitsToGlobal S ιr ιs (2 + 1) z))
  obtain ⟨a, b, hb, hab⟩ := Nat.exists_eq_two_pow_mul_odd hN.1.ne'
  have hby : unitsToGlobal S ιr ιs (2 + 1) (b • z) = 0 := by
    rw [map_nsmul]
    refine eq_zero_of_h3_sUnits K S 2 Nat.prime_two h2S _ a ?_
    rw [smul_smul, ← hab, hN.2]
  obtain ⟨t, ht⟩ := exists_unitsLocalToCompact_eq S ιr ιs 2 (b • z) hby
  obtain ⟨t', g, htg⟩ := exists_eq_two_nsmul_add_unitsGlobalToLocal S ιr ιs h2S t
  have hbz : b • z = 2 • unitsLocalToCompact S ιr ιs 2 t' :=
    ht.symm.trans ((congrArg (unitsLocalToCompact S ιr ιs 2) htg).trans ((map_add _ _ _).trans
      ((congrArg₂ (· + ·) (map_nsmul _ 2 t') (unitsLocalToCompact_two_unitsGlobalToLocal S ιr ιs g)).trans
        (add_zero _))))
  obtain ⟨c, rfl⟩ := hb
  refine ⟨unitsLocalToCompact S ιr ιs 2 t' - c • z, ?_⟩
  refine (smul_sub 2 (unitsLocalToCompact S ιr ιs 2 t') (c • z)).trans ?_
  refine (congrArg₂ (· - ·) hbz.symm (smul_smul 2 c z)).trans ?_
  rw [add_smul, one_smul, add_sub_cancel_left]



include h2S in
theorem exists_two_nsmul_unitsTate_of_four_le {m : ℕ} (hm : 3 ≤ m + 1)
    (x : unitsTateCohomology S ιr ιs (m + 1 + 1)) : ∃ x', 2 • x' = x := by
  obtain ⟨N, hN⟩ := isOfFinAddOrder_iff_nsmul_eq_zero.1
    (isTorsion_cohomology (galSUnitsMax K.1 ℚ̄ S) (n := m + 1 + 1) (by omega)
      (unitsToGlobal S ιr ιs (m + 1 + 1) x))
  obtain ⟨t, ht⟩ := exists_unitsLocalToCompact_eq S ιr ιs (m + 1) (N • x) (by rw [map_nsmul, hN.2])
  have h2t : 2 • t = 0 := Prod.ext
    (funext fun v => @Subsingleton.elim _ (subsingleton_finLocal S v hm) _ _)
    (funext fun w => two_nsmul_realLocal w (by omega) (t.2 w))
  have hx : (2 * N) • x = 0 := by
    rw [mul_smul, ← ht, ← map_nsmul, h2t, map_zero]
  obtain ⟨a, b, hb, hab⟩ := Nat.exists_eq_two_pow_mul_odd (by omega : 2 * N ≠ 0)
  have hbx : b • x = 0 := eq_zero_unitsTateCohomology_of_two_pow_nsmul S ιr ιs h2S (by omega) (b • x)
    (k := a) (by rw [smul_smul, ← hab, hx])
  obtain ⟨c, rfl⟩ := hb
  refine ⟨(c + 1) • x, ?_⟩
  rw [smul_smul, show 2 * (c + 1) = (2 * c + 1) + 1 by ring, add_smul, hbx, one_smul, zero_add]


include h2S in
theorem exists_two_nsmul_unitsTateCohomology {r : ℕ} (hr : 3 ≤ r) (x : unitsTateCohomology S ιr ιs r) :
    ∃ x', 2 • x' = x := by
  obtain ⟨m, rfl⟩ : ∃ m, r = m + 1 + 1 := ⟨r - 2, by omega⟩
  rcases Nat.lt_or_ge m 2 with h | h
  · obtain rfl : m = 1 := by omega
    exact exists_two_nsmul_unitsTate_three S ιr ιs h2S x
  · exact exists_two_nsmul_unitsTate_of_four_le S ιr ιs h2S (by omega) x

end Div

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDiv =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsTwo =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsTwo", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.CartierDualDefs\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnits\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.Dimension\nimport GroundTheory.ProfiniteCohomology.LocalClassFormation.FiniteVanishing.Vanishing\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingCriterion\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.Nilpotent\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain GroundTheory.Global

noncomputable section

local notation "ℚ̄" => AlgebraicClosure ℚ

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (ιr : ∀ v : {v : InfinitePlace K.1 // v.IsReal}, ℚ̄ →ₐ[K.1] AlgebraicClosure v.1.Completion)
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))

section Kummer

abbrev finKummer (v : S) :=
  localKummerSeq S (gsFinFamily S ιs v).toMonoidHom
    ((ιs v).comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom (decompHomS_apply S (ιs v))

abbrev realKummer (w : {v : InfinitePlace K.1 // v.IsReal}) :=
  localKummerSeq S (gsRealFamily S ιr w).toMonoidHom
    ((ιr w).comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom (decompHomS_apply S (ιr w))

abbrev finKummerMap (v : S) :=
  kummerLocalMap S (gsFinFamily S ιs v).toMonoidHom
    ((ιs v).comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom (decompHomS_apply S (ιs v))

abbrev realKummerMap (w : {v : InfinitePlace K.1 // v.IsReal}) :=
  kummerLocalMap S (gsRealFamily S ιr w).toMonoidHom
    ((ιr w).comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom (decompHomS_apply S (ιr w))

instance (v : S) : IsDiscreteRep (finKummer S ιs v).X₁ :=
  IsDiscreteRep.res (continuous_toMonoidHom (gsFinFamily S ιs v)) _

instance (v : S) : IsDiscreteRep (finKummer S ιs v).X₂ := isDiscreteRep_finUnits S v

instance (v : S) : IsDiscreteRep (finKummer S ιs v).X₃ := isDiscreteRep_finUnits S v

instance (w : {v : InfinitePlace K.1 // v.IsReal}) : IsDiscreteRep (realKummer S ιr w).X₁ :=
  IsDiscreteRep.res (continuous_toMonoidHom (gsRealFamily S ιr w)) _

instance (w : {v : InfinitePlace K.1 // v.IsReal}) : IsDiscreteRep (realKummer S ιr w).X₂ :=
  isDiscreteRep_realUnits w

instance (w : {v : InfinitePlace K.1 // v.IsReal}) : IsDiscreteRep (realKummer S ιr w).X₃ :=
  isDiscreteRep_realUnits w

variable (h2S : ∀ v : HeightOneSpectrum (𝓞 K.1), ((2 : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)


include h2S in
theorem kummerSeq_shortExact :
    (sUnitsKummerSequence S (maxUnramifiedOutside K.1 ℚ̄ S) 2).ShortExact :=
  sUnitsKummerSequence_shortExact (Ω := ℚ̄) S 2 (fun v hv h => hv (h2S v h))

def kummerF (n : ℕ) :
    gsTateCompactCohomology S ιr ιs (galRootsOfUnity.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S) 2) n →+
      unitsTateCohomology S ιr ιs n :=
  (tateCompactCohomologyMap₁₂ (gsFinFamily S ιs) (gsRealFamily S ιr)
    (sUnitsKummerSequence S (maxUnramifiedOutside K.1 ℚ̄ S) 2) (finKummer S ιs) (finKummerMap S ιs)
    (realKummer S ιr) (realKummerMap S ιr) n).hom.toAddMonoidHom

def kummerG (n : ℕ) : unitsTateCohomology S ιr ιs n →+ unitsTateCohomology S ιr ιs n :=
  (tateCompactCohomologyMap₂₃ (gsFinFamily S ιs) (gsRealFamily S ιr)
    (sUnitsKummerSequence S (maxUnramifiedOutside K.1 ℚ̄ S) 2) (finKummer S ιs) (finKummerMap S ιs)
    (realKummer S ιr) (realKummerMap S ιr) n).hom.toAddMonoidHom

def kummerδ (n : ℕ) : unitsTateCohomology S ιr ιs n →+
    gsTateCompactCohomology S ιr ιs (galRootsOfUnity.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S) 2) (n + 1) :=
  (tateCompactδ (gsFinFamily S ιs) (gsRealFamily S ιr) (finKummerMap S ιs) (realKummerMap S ιr)
    (kummerSeq_shortExact S h2S) (fun _ => localKummerSeq_shortExact _ _ _ _)
    (fun _ => localKummerSeq_shortExact _ _ _ _) n).hom.toAddMonoidHom



theorem kummerG_apply (n : ℕ) (y : unitsTateCohomology S ιr ιs n) : kummerG S ιr ιs n y = 2 • y := by
  have h : tateCompactCohomologyMap₂₃ (gsFinFamily S ιs) (gsRealFamily S ιr)
      (sUnitsKummerSequence S (maxUnramifiedOutside K.1 ℚ̄ S) 2) (finKummer S ιs) (finKummerMap S ιs)
      (realKummer S ιr) (realKummerMap S ιr) n = 2 • 𝟙 _ :=
    tateCompactCohomologyMap_nsmul_id (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S)
      (finUnits S) (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) 2 n _ _
  exact congrArg (fun f => f.hom y) h



theorem kummerG_kummerF (n : ℕ)
    (x : gsTateCompactCohomology S ιr ιs (galRootsOfUnity.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S) 2) n) :
    kummerG S ιr ιs n (kummerF S ιr ιs n x) = 0 :=
  hom_apply_hom_apply_of_comp_eq (tateCompactCohomologyMap_f_g (gsFinFamily S ιs) (gsRealFamily S ιr)
    (sUnitsKummerSequence S (maxUnramifiedOutside K.1 ℚ̄ S) 2) (finKummer S ιs) (finKummerMap S ιs)
    (realKummer S ιr) (realKummerMap S ιr) n) x



theorem exists_kummerδ_eq (n : ℕ)
    (x : gsTateCompactCohomology S ιr ιs (galRootsOfUnity.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S) 2) (n + 1))
    (hx : kummerF S ιr ιs (n + 1) x = 0) : ∃ y, kummerδ S ιr ιs h2S n y = x :=
  ((ShortComplex.moduleCat_exact_iff _).1 (tateCompactCohomology_exact₁ (gsFinFamily S ιs) (gsRealFamily S ιr)
    (finKummerMap S ιs) (realKummerMap S ιr) (kummerSeq_shortExact S h2S)
    (fun _ => localKummerSeq_shortExact _ _ _ _) (fun _ => localKummerSeq_shortExact _ _ _ _) n) x hx :)



theorem kummerδ_kummerG (n : ℕ) (y : unitsTateCohomology S ιr ιs n) :
    kummerδ S ιr ιs h2S n (kummerG S ιr ιs n y) = 0 :=
  hom_apply_hom_apply_of_comp_eq (tateCompactCohomologyMap₂₃_tateCompactδ (gsFinFamily S ιs)
    (gsRealFamily S ιr) (finKummerMap S ιs) (realKummerMap S ιr) (kummerSeq_shortExact S h2S)
    (fun _ => localKummerSeq_shortExact _ _ _ _) (fun _ => localKummerSeq_shortExact _ _ _ _) n) y

end Kummer

section Main

variable (h2S : ∀ v : HeightOneSpectrum (𝓞 K.1), ((2 : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)


include h2S in
theorem gsTateCompactCohomology_rootsOfUnity_two_eq_zero {r : ℕ} (hr : 4 ≤ r)
    (x : gsTateCompactCohomology S ιr ιs (galRootsOfUnity.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S) 2) r) :
    x = 0 := by
  obtain ⟨n, rfl⟩ : ∃ n, r = n + 1 := ⟨r - 1, by omega⟩
  have hf : kummerF S ιr ιs (n + 1) x = 0 := by
    refine eq_zero_unitsTateCohomology_of_two_pow_nsmul S ιr ιs h2S hr _ (k := 1) ?_
    rw [pow_one, ← kummerG_apply]
    exact kummerG_kummerF S ιr ιs (n + 1) x
  obtain ⟨y, rfl⟩ := exists_kummerδ_eq S ιr ιs h2S n x hf
  obtain ⟨y', rfl⟩ := exists_two_nsmul_unitsTateCohomology S ιr ιs h2S (r := n) (by omega) y
  rw [← kummerG_apply]
  exact kummerδ_kummerG S ιr ιs h2S n y'

end Main

section ZModTwo

variable (h2S : ∀ v : HeightOneSpectrum (𝓞 K.1), ((2 : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)

instance isDiscreteRep_zmodRep_two_gs : IsDiscreteRep (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2) :=
  isDiscreteRep_of_isTrivial _

theorem galRootsOfUnity_two_ρ_apply (σ : galUnramifiedOutside K.1 ℚ̄ S)
    (x : Additive (rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S))) :
    (galRootsOfUnity.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S) 2).ρ σ x = x := by
  rw [galRootsOfUnity_ρ_apply]
  apply Additive.toMul.injective
  apply Subtype.ext
  apply Units.ext
  change σ (((Additive.toMul x : rootsOfUnity 2 _) : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) :
    maxUnramifiedOutside K.1 ℚ̄ S) = (((Additive.toMul x : rootsOfUnity 2 _) :
      (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) : maxUnramifiedOutside K.1 ℚ̄ S)
  have hx : (((Additive.toMul x : rootsOfUnity 2 _) : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) :
      maxUnramifiedOutside K.1 ℚ̄ S) * (((Additive.toMul x : rootsOfUnity 2 _) :
        (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) : maxUnramifiedOutside K.1 ℚ̄ S) = 1 := by
    rw [← Units.val_mul, ← pow_two, (mem_rootsOfUnity 2 _).1 (Additive.toMul x).2, Units.val_one]
  rcases mul_self_eq_one_iff.1 hx with h | h <;> rw [h]
  · exact map_one σ
  · rw [map_neg, map_one]


include h2S in
theorem nonempty_rootsOfUnity_two_iso_zmodRep :
    Nonempty (galRootsOfUnity.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S) 2 ≅
      zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2) := by
  obtain ⟨e⟩ := nonempty_zmod_addEquiv_rootsOfUnity_gs K S Nat.prime_two h2S
  exact ⟨Rep.mkIso (Representation.Equiv.mk (uliftIntLinearEquiv.{0} (e.symm.trans AddEquiv.ulift.symm))
    fun σ => LinearMap.ext fun x => by
      change (uliftIntLinearEquiv.{0} (e.symm.trans AddEquiv.ulift.symm))
        ((galRootsOfUnity.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S) 2).ρ σ x) =
          (uliftIntLinearEquiv.{0} (e.symm.trans AddEquiv.ulift.symm)) x
      rw [galRootsOfUnity_two_ρ_apply])⟩


include h2S in
theorem gsTateCompactCohomology_zmodRep_two_eq_zero {r : ℕ} (hr : 4 ≤ r)
    (x : gsTateCompactCohomology S ιr ιs (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2) r) : x = 0 := by
  obtain ⟨e⟩ := nonempty_rootsOfUnity_two_iso_zmodRep S h2S
  exact eq_zero_tateCompactCohomologyRes_of_retract (gsFinFamily S ιs) (gsRealFamily S ιr) e.inv e.hom
    e.inv_hom_id r (gsTateCompactCohomology_rootsOfUnity_two_eq_zero S ιr ιs h2S hr) x

instance isDiscreteRep_res_zmodRep_two_fin (v : S) :
    IsDiscreteRep (Rep.res (gsFinFamily S ιs v).toMonoidHom (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)) :=
  isDiscreteRep_res_toMonoidHom _ _

theorem subsingleton_finLocal_zmodRep_two (v : S) {n : ℕ} (hn : 3 ≤ n) :
    Subsingleton (cohomology (Rep.res (gsFinFamily S ιs v).toMonoidHom
      (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)) n) := by
  refine subsingleton_cohomology_of_cdp_le_two two_ne_zero (fun ℓ hℓ _ => ?_) _
    (fun m => nsmul_zmodRep_eq_zero _ 2 m) hn
  refine cdp_galois_le_two _ _ hℓ ?_
  exact_mod_cast hℓ.ne_zero

def someFinEmbeddings : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1) :=
  fun _ => Classical.choice nonempty_algHom_of_isSepClosed



include h2S in
theorem injective_gsRealRes_zmodRep_two_succ {n : ℕ} (hn : 3 ≤ n) :
    Function.Injective (gsRealRes S ιr (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2) (n + 1)).hom :=
  (injective_tateGlobalToLocal_iff (gsFinFamily S (someFinEmbeddings S)) (gsRealFamily S ιr)
    (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)
    (fun v => Rep.res (gsFinFamily S (someFinEmbeddings S) v).toMonoidHom
      (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)) (fun _ => 𝟙 _)
    (fun w => Rep.res (gsRealFamily S ιr w).toMonoidHom (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2))
    (fun _ => 𝟙 _) (n + 1)
    (fun v => subsingleton_finLocal_zmodRep_two S (someFinEmbeddings S) v (by omega))).1
    (injective_tateGlobalToLocal_of_eq_zero (gsFinFamily S (someFinEmbeddings S)) (gsRealFamily S ιr)
      (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)
      (fun v => Rep.res (gsFinFamily S (someFinEmbeddings S) v).toMonoidHom
        (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)) (fun _ => 𝟙 _)
      (fun w => Rep.res (gsRealFamily S ιr w).toMonoidHom (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2))
      (fun _ => 𝟙 _) n
      (gsTateCompactCohomology_zmodRep_two_eq_zero S ιr (someFinEmbeddings S) h2S (by omega)))



include h2S in
theorem surjective_gsRealRes_zmodRep_two_succ {n : ℕ} (hn : 2 ≤ n) :
    Function.Surjective (gsRealRes S ιr (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2) (n + 1)).hom :=
  (surjective_tateGlobalToLocal_iff (gsFinFamily S (someFinEmbeddings S)) (gsRealFamily S ιr)
    (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)
    (fun v => Rep.res (gsFinFamily S (someFinEmbeddings S) v).toMonoidHom
      (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)) (fun _ => 𝟙 _)
    (fun w => Rep.res (gsRealFamily S ιr w).toMonoidHom (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2))
    (fun _ => 𝟙 _) (n + 1)
    (fun v => subsingleton_finLocal_zmodRep_two S (someFinEmbeddings S) v (by omega))).1
    (surjective_tateGlobalToLocal_of_eq_zero (gsFinFamily S (someFinEmbeddings S)) (gsRealFamily S ιr)
      (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)
      (fun v => Rep.res (gsFinFamily S (someFinEmbeddings S) v).toMonoidHom
        (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2)) (fun _ => 𝟙 _)
      (fun w => Rep.res (gsRealFamily S ιr w).toMonoidHom (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2))
      (fun _ => 𝟙 _) n
      (gsTateCompactCohomology_zmodRep_two_eq_zero S ιr (someFinEmbeddings S) h2S (by omega)))



include h2S in
theorem injective_gsRealRes_zmodRep_two {r : ℕ} (hr : 4 ≤ r) :
    Function.Injective (gsRealRes S ιr (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2) r).hom := by
  cases r with
  | zero => omega
  | succ n => exact injective_gsRealRes_zmodRep_two_succ S ιr h2S (by omega)



include h2S in
theorem surjective_gsRealRes_zmodRep_two {r : ℕ} (hr : 3 ≤ r) :
    Function.Surjective (gsRealRes S ιr (zmodRep.{0} (galUnramifiedOutside K.1 ℚ̄ S) 2) r).hom := by
  cases r with
  | zero => omega
  | succ n => exact surjective_gsRealRes_zmodRep_two_succ S ιr h2S (by omega)

end ZModTwo

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsTwo =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyTransfer =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyTransfer", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyPlaces\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangeModules\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsTwo\nimport GroundTheory.ProfiniteCohomology.RestrictedRamification.FiniteOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.Nilpotent\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain GroundTheory.Global

open scoped NumberField.LiesOver

local notation "ℚ̄" => AlgebraicClosure ℚ

section GalConj

variable {Kv Ew Ωv ΩE : Type*} [Field Kv] [Field Ew] [Field Ωv] [Field ΩE] [Algebra Kv Ew] [Algebra Kv Ωv]
  [Algebra Ew Ωv] [IsScalarTower Kv Ew Ωv] [Algebra Ew ΩE] (θ : ΩE ≃ₐ[Ew] Ωv)
  (hfix : ∀ (σ : Ωv ≃ₐ[Kv] Ωv) (y : Ew), σ (algebraMap Ew Ωv y) = algebraMap Ew Ωv y)

theorem conj_algebraMap_eq (τ : ΩE ≃ₐ[Ew] ΩE) (a : Kv) :
    θ (τ (θ.symm (algebraMap Kv Ωv a))) = algebraMap Kv Ωv a := by
  have h1 : algebraMap Kv Ωv a = θ (algebraMap Ew ΩE (algebraMap Kv Ew a)) :=
    (IsScalarTower.algebraMap_apply Kv Ew Ωv a).trans (θ.commutes _).symm
  calc θ (τ (θ.symm (algebraMap Kv Ωv a))) = θ (τ (θ.symm (θ (algebraMap Ew ΩE (algebraMap Kv Ew a))))) :=
        congrArg (fun t => θ (τ (θ.symm t))) h1
    _ = θ (τ (algebraMap Ew ΩE (algebraMap Kv Ew a))) := congrArg (fun t => θ (τ t)) (θ.symm_apply_apply _)
    _ = θ (algebraMap Ew ΩE (algebraMap Kv Ew a)) := congrArg θ (τ.commutes _)
    _ = algebraMap Kv Ωv a := h1.symm

def galConjEquiv : (Ωv ≃ₐ[Kv] Ωv) ≃* (ΩE ≃ₐ[Ew] ΩE) where
  toFun σ := (θ.trans (AlgEquiv.ofRingEquiv (f := σ.toRingEquiv) (hfix σ))).trans θ.symm
  invFun τ := AlgEquiv.ofRingEquiv (f := θ.symm.toRingEquiv.trans (τ.toRingEquiv.trans θ.toRingEquiv))
    (conj_algebraMap_eq θ τ)
  left_inv σ := AlgEquiv.ext fun y => by
    change θ (θ.symm (σ (θ (θ.symm y)))) = σ y
    rw [θ.apply_symm_apply, θ.apply_symm_apply]
  right_inv τ := AlgEquiv.ext fun y => by
    change θ.symm (θ (τ (θ.symm (θ y)))) = τ y
    rw [θ.symm_apply_apply, θ.symm_apply_apply]
  map_mul' σ τ := AlgEquiv.ext fun y => by
    change θ.symm (σ (τ (θ y))) = θ.symm (σ (θ (θ.symm (τ (θ y)))))
    rw [θ.apply_symm_apply]

theorem galConjEquiv_apply (σ : Ωv ≃ₐ[Kv] Ωv) (y : ΩE) : galConjEquiv θ hfix σ y = θ.symm (σ (θ y)) :=
  rfl

end GalConj

section Data

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (ιr : ∀ v : {v : InfinitePlace K.1 // v.IsReal}, ℚ̄ →ₐ[K.1] AlgebraicClosure v.1.Completion)
  {L : FiniteSubfield} [Fact (K ≤ L)]
  (hL : ∀ x : L.1, algebraMap L.1 ℚ̄ x ∈ maxUnramifiedOutside K.1 ℚ̄ S)



theorem exists_real_data (v : {v : InfinitePlace K.1 // v.IsReal}) (x : galUnramifiedOutside K.1 ℚ̄ S)
    (hreal : (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).IsReal) :
    ∃ (ιw : ℚ̄ →ₐ[L.1] AlgebraicClosure
        (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion)
      (e : Gal(AlgebraicClosure v.1.Completion / v.1.Completion) ≃*
        Gal(AlgebraicClosure (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion /
          (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion)),
      ∀ (g : Gal(AlgebraicClosure v.1.Completion / v.1.Completion))
        (hg : x * gsRealFamily S ιr v g * x⁻¹ ∈ gsOpenSubgroup S hL),
        gsBaseChange S hL ⟨x * gsRealFamily S ιr v g * x⁻¹, hg⟩ =
          decompHomS (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion
            (placesOver S) ιw (e g) := by
  have hLO : (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).LiesOver v.1 :=
    (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L).2
  have hf : Module.finrank v.1.Completion
      (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion = 1 :=
    (InfinitePlace.finrank_completion_eq_one_iff _).2 fun h =>
      (InfinitePlace.not_isReal_iff_isComplex.2 h.2) hreal
  have hcK : ∀ y : (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion,
      ∃ a : v.1.Completion, infCompletionEmbedding (gsRealEmbedding S ιr v x) L y =
        algebraMap v.1.Completion (AlgebraicClosure v.1.Completion) a := by
    intro y
    have hmem : y ∈ (⊥ : Subalgebra v.1.Completion
        (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion) := by
      rw [Subalgebra.bot_eq_top_of_finrank_eq_one hf]
      exact Algebra.mem_top
    obtain ⟨a, rfl⟩ := Algebra.mem_bot.1 hmem
    exact ⟨a, (infCompletionEmbedding (gsRealEmbedding S ιr v x) L).commutes a⟩
  let _ : Algebra (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion
      (AlgebraicClosure v.1.Completion) :=
    (infCompletionEmbedding (gsRealEmbedding S ιr v x) L).toRingHom.toAlgebra
  have : IsScalarTower v.1.Completion
      (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion
      (AlgebraicClosure v.1.Completion) :=
    IsScalarTower.of_algebraMap_eq fun a =>
      ((infCompletionEmbedding (gsRealEmbedding S ιr v x) L).commutes a).symm
  have : Algebra.IsAlgebraic (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion
      (AlgebraicClosure v.1.Completion) :=
    Algebra.IsAlgebraic.tower_top (K := v.1.Completion) _
  have : IsAlgClosure (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion
      (AlgebraicClosure v.1.Completion) := ⟨inferInstance, inferInstance⟩
  let θ : AlgebraicClosure (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion ≃ₐ[
      (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion]
      AlgebraicClosure v.1.Completion := IsAlgClosure.equiv _ _ _
  let _ : Algebra L.1 (AlgebraicClosure v.1.Completion) :=
    ((algebraMap (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion
      (AlgebraicClosure v.1.Completion)).comp
      (algebraMap L.1 (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion)).toAlgebra
  have : IsScalarTower L.1 (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion
      (AlgebraicClosure v.1.Completion) := IsScalarTower.of_algebraMap_eq fun _ => rfl
  let ιE' : ℚ̄ →ₐ[L.1] AlgebraicClosure v.1.Completion :=
    { (gsRealEmbedding S ιr v x).toRingHom with
      commutes' := fun y => (infCompletionEmbedding_algebraMap (gsRealEmbedding S ιr v x) L y).symm }
  let ιw : ℚ̄ →ₐ[L.1] AlgebraicClosure
      (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion :=
    (θ.symm.toAlgHom.restrictScalars L.1).comp ιE'
  have hfix : ∀ (σ : Gal(AlgebraicClosure v.1.Completion / v.1.Completion))
      (y : (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion),
      σ (algebraMap _ (AlgebraicClosure v.1.Completion) y) = algebraMap _ (AlgebraicClosure v.1.Completion) y := by
    intro σ y
    obtain ⟨a, ha⟩ := hcK y
    change σ (infCompletionEmbedding (gsRealEmbedding S ιr v x) L y) =
      infCompletionEmbedding (gsRealEmbedding S ιr v x) L y
    rw [ha]
    exact σ.commutes a
  refine ⟨ιw, galConjEquiv θ hfix, ?_⟩
  intro g hg
  let E := maxUnramifiedOutside L.1 ℚ̄ (placesOver S)
  let ρ := ιw.comp E.val
  let σ : gsOpenSubgroup S hL := ⟨x * gsRealFamily S ιr v g * x⁻¹, hg⟩
  let τ := galConjEquiv θ hfix g
  have hleft (y : E) : ρ (gsBaseChange S hL σ y) = θ.symm (g (gsRealEmbedding S ιr v x y)) := by
    have hb := coe_gsBaseChange_apply hL σ y
    have hc := gsRealEmbedding_conj S ιr v x g ((gsFieldEquiv hL).symm y)
    exact (congrArg (fun z : ℚ̄ => θ.symm (gsRealEmbedding S ιr v x z)) hb).trans
      (congrArg (fun z : AlgebraicClosure v.1.Completion => θ.symm z) hc)
  have hright (y : E) : τ (ρ y) = θ.symm (g (gsRealEmbedding S ιr v x y)) :=
    (galConjEquiv_apply θ hfix g (ρ y)).trans
      (congrArg (fun z : AlgebraicClosure v.1.Completion => θ.symm (g z))
        (θ.apply_symm_apply (gsRealEmbedding S ιr v x y)))
  exact ((decompHom_eq_iff (K := L.1) (E := E)
    (Kv := (infPlaceOfEmbedding (gsRealEmbedding S ιr v x) L : InfinitePlace L.1).Completion)
    ρ τ (gsBaseChange S hL σ)).2 (fun y => (hleft y).trans (hright y).symm)).symm

end Data

section Bijective

variable {k H G : Type} [CommRing k] [Group H] [TopologicalSpace H] [IsTopologicalGroup H] [Group G]
  [TopologicalSpace G] [IsTopologicalGroup G]

theorem bijective_cohomologyMapAlong_of_equiv (e : H ≃ₜ* G) {A : Rep.{0} k G} {B : Rep.{0} k H}
    [IsDiscreteRep A] [IsDiscreteRep B] (f : Rep.res e.toMulEquiv.toMonoidHom A ⟶ B)
    (g : Rep.res e.symm.toMulEquiv.toMonoidHom B ⟶ A) (hgf : ∀ a : A, g.hom (f.hom a) = a)
    (hfg : ∀ b : B, f.hom (g.hom b) = b) (n : ℕ) :
    Function.Bijective (cohomologyMapAlong e.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom e) f n).hom := by
  have h1 : cohomologyMapAlong e.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom e) f n ≫
      cohomologyMapAlong e.symm.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom e.symm) g n = 𝟙 _ := by
    rw [← cohomologyMapAlong_comp]
    exact cohomologyMapAlong_eq_id _ _ (MonoidHom.ext fun x => e.apply_symm_apply x) (fun a => hgf a) n
  have h2 : cohomologyMapAlong e.symm.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom e.symm) g n ≫
      cohomologyMapAlong e.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom e) f n = 𝟙 _ := by
    rw [← cohomologyMapAlong_comp]
    exact cohomologyMapAlong_eq_id _ _ (MonoidHom.ext fun x => e.symm_apply_apply x) (fun b => hfg b) n
  have l1 : Function.LeftInverse
      (cohomologyMapAlong e.symm.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom e.symm) g n).hom
      (cohomologyMapAlong e.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom e) f n).hom := fun x =>
    (hom_apply_hom_apply_of_comp_eq h1 x).trans rfl
  have l2 : Function.RightInverse
      (cohomologyMapAlong e.symm.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom e.symm) g n).hom
      (cohomologyMapAlong e.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom e) f n).hom := fun y =>
    (hom_apply_hom_apply_of_comp_eq h2 y).trans rfl
  exact ⟨l1.injective, l2.surjective⟩

end Bijective

section AbstractTransfer

variable {k W Γ : Type} [CommRing k] [Group W] [TopologicalSpace W] [IsTopologicalGroup W]
  [Group Γ] [TopologicalSpace Γ] [IsTopologicalGroup Γ] (E : W ≃ₜ* Γ) (V : Type) [AddCommGroup V] [Module k V]
  [IsDiscreteRep (Rep.trivial k W V)] [IsDiscreteRep (Rep.trivial k Γ V)]
  {P : Type} {C : P → Type} [∀ p, Group (C p)] [∀ p, TopologicalSpace (C p)] [∀ p, IsTopologicalGroup (C p)]
  (f : ∀ p, C p →ₜ* W)
  {Q : Type} {D : Q → Type} [∀ q, Group (D q)] [∀ q, TopologicalSpace (D q)] [∀ q, IsTopologicalGroup (D q)]
  (g : ∀ q, D q →ₜ* Γ)
  (σ : P → Q) (hσ : Function.Injective σ) (mem : Q → P) (hmem : ∀ q, σ (mem q) = q)
  (e : ∀ q, C (mem q) ≃ₜ* D q) (he : ∀ q x, E (f (mem q) x) = g q (e q x))
  [∀ p, IsDiscreteRep (Rep.res (f p).toMonoidHom (Rep.trivial k W V))]
  [∀ q, IsDiscreteRep (Rep.res (g q).toMonoidHom (Rep.trivial k Γ V))]

def trivialRes (n : ℕ) (c : cohomology (Rep.trivial k W V) n) :
    ∀ p, cohomology (Rep.res (f p).toMonoidHom (Rep.trivial k W V)) n :=
  fun p => (cohomologyMapAlong (f p).toMonoidHom (continuous_toMonoidHom (f p))
    (𝟙 (Rep.res (f p).toMonoidHom (Rep.trivial k W V))) n).hom c


include hσ hmem he in
theorem trivialRes_transfer (n : ℕ) :
    (Function.Injective (globalToLocal g (Rep.trivial k Γ V) (fun q => Rep.res (g q).toMonoidHom
        (Rep.trivial k Γ V)) (fun _ => 𝟙 _) n).hom → Function.Injective (trivialRes (k := k) V f n)) ∧
    (Function.Surjective (globalToLocal g (Rep.trivial k Γ V) (fun q => Rep.res (g q).toMonoidHom
        (Rep.trivial k Γ V)) (fun _ => 𝟙 _) n).hom → Function.Surjective (trivialRes (k := k) V f n)) := by
  classical
  have : IsDiscreteRep (Rep.res E.symm.toMulEquiv.toMonoidHom (Rep.trivial k W V)) :=
    IsDiscreteRep.res (continuous_mulEquiv_toMonoidHom E.symm) _
  let m0 : Rep.res E.symm.toMulEquiv.toMonoidHom (Rep.trivial k W V) ⟶ Rep.trivial k Γ V :=
    Rep.ofHom ⟨LinearMap.id, fun _ => rfl⟩
  let m0' : Rep.res E.symm.symm.toMulEquiv.toMonoidHom (Rep.trivial k Γ V) ⟶ Rep.trivial k W V :=
    Rep.ofHom ⟨LinearMap.id, fun _ => rfl⟩
  let Φ := cohomologyMapAlong E.symm.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom E.symm) m0 n
  have hΦ : Function.Bijective Φ.hom :=
    bijective_cohomologyMapAlong_of_equiv E.symm m0 m0' (fun _ => rfl) (fun _ => rfl) n
  have : ∀ q, IsDiscreteRep (Rep.res (e q).symm.toMulEquiv.toMonoidHom
      (Rep.res (f (mem q)).toMonoidHom (Rep.trivial k W V))) := fun q =>
    IsDiscreteRep.res (continuous_mulEquiv_toMonoidHom (e q).symm) _
  let m1 : ∀ q, Rep.res (e q).symm.toMulEquiv.toMonoidHom
      (Rep.res (f (mem q)).toMonoidHom (Rep.trivial k W V)) ⟶
      Rep.res (g q).toMonoidHom (Rep.trivial k Γ V) := fun _ => Rep.ofHom ⟨LinearMap.id, fun _ => rfl⟩
  let m1' : ∀ q, Rep.res (e q).symm.symm.toMulEquiv.toMonoidHom
      (Rep.res (g q).toMonoidHom (Rep.trivial k Γ V)) ⟶
      Rep.res (f (mem q)).toMonoidHom (Rep.trivial k W V) := fun _ => Rep.ofHom ⟨LinearMap.id, fun _ => rfl⟩
  let τ := fun q => cohomologyMapAlong (e q).symm.toMulEquiv.toMonoidHom
    (continuous_mulEquiv_toMonoidHom (e q).symm) (m1 q) n
  have hτ : ∀ q, Function.Bijective (τ q).hom := fun q =>
    bijective_cohomologyMapAlong_of_equiv (e q).symm (m1 q) (m1' q) (fun _ => rfl) (fun _ => rfl) n
  have hmaps : ∀ q, (f (mem q)).toMonoidHom.comp (e q).symm.toMulEquiv.toMonoidHom =
      E.symm.toMulEquiv.toMonoidHom.comp (g q).toMonoidHom := fun q => MonoidHom.ext fun y => by
    change f (mem q) ((e q).symm y) = E.symm (g q y)
    rw [E.eq_symm_apply, he q, (e q).apply_symm_apply]
  have key : ∀ q c, (τ q).hom (trivialRes (k := k) V f n c (mem q)) =
      (globalToLocal g (Rep.trivial k Γ V) (fun q => Rep.res (g q).toMonoidHom
        (Rep.trivial k Γ V)) (fun _ => 𝟙 _) n).hom (Φ.hom c) q := by
    intro q c
    have hcomp := (cohomologyMapAlong_comp _ (continuous_toMonoidHom (f (mem q))) (𝟙 _) _
      (continuous_mulEquiv_toMonoidHom (e q).symm) (m1 q) n).symm.trans
      ((cohomologyMapAlong_congr _ _ _ _ (hmaps q) (fun _ => rfl) n).trans
        (cohomologyMapAlong_comp _ (continuous_mulEquiv_toMonoidHom E.symm) m0 _
          (continuous_toMonoidHom (g q)) (𝟙 _) n))
    exact hom_apply_hom_apply_eq_of_comp_eq hcomp c
  refine ⟨fun hinj c c' hcc => ?_, fun hsurj t => ?_⟩
  · apply hΦ.1
    apply hinj
    funext q
    exact (key q c).symm.trans ((congrArg (τ q).hom (congrFun hcc (mem q))).trans (key q c'))
  · obtain ⟨y, hy⟩ := hsurj fun q => (τ q).hom (t (mem q))
    obtain ⟨c, rfl⟩ := hΦ.2 y
    refine ⟨c, funext fun p => ?_⟩
    have hp : mem (σ p) = p := hσ (hmem _)
    have h2 := (hτ (σ p)).1 ((key (σ p) c).trans (congrFun hy (σ p)))
    have hgen : ∀ p' : P, p' = p → trivialRes (k := k) V f n c p' = t p' → trivialRes (k := k) V f n c p = t p := by
      intro p' hp' h
      subst hp'
      exact h
    exact hgen _ hp h2

end AbstractTransfer

section Apply

variable {k G : Type} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [CompactSpace G] {κ : Type} {F : κ → Type} [∀ w, Group (F w)] [∀ w, TopologicalSpace (F w)]
  [∀ w, IsTopologicalGroup (F w)] [∀ w, CompactSpace (F w)] (ψ : ∀ w, F w →ₜ* G)
  (W : OpenSubgroup G) (V : Type) [AddCommGroup V] [Module k V] [IsDiscreteRep (Rep.trivial k (W : Subgroup G) V)]


omit [CompactSpace G] [∀ w, CompactSpace (F w)] in
theorem mackeyTopRes_trivial_eq [∀ p : MackeyTopIndex ψ W, IsDiscreteRep
      (Rep.res (mackeyConjₜ W (ψ p.1.1) p.1.2.out).toMonoidHom (Rep.trivial k (W : Subgroup G) V))] (n : ℕ) :
    mackeyTopRes ψ W (Rep.trivial k (W : Subgroup G) V) n =
      trivialRes (k := k) V (fun p : MackeyTopIndex ψ W => mackeyConjₜ W (ψ p.1.1) p.1.2.out) n :=
  rfl


omit [CompactSpace G] [∀ w, CompactSpace (F w)] in
theorem mackeyTopRes_transfer {Γ : Type} [Group Γ] [TopologicalSpace Γ] [IsTopologicalGroup Γ]
    (E : (W : Subgroup G) ≃ₜ* Γ) [IsDiscreteRep (Rep.trivial k Γ V)]
    {Q : Type} {D : Q → Type} [∀ q, Group (D q)] [∀ q, TopologicalSpace (D q)] [∀ q, IsTopologicalGroup (D q)]
    (g : ∀ q, D q →ₜ* Γ) (σ : MackeyTopIndex ψ W → Q) (hσ : Function.Injective σ)
    (mem : Q → MackeyTopIndex ψ W) (hmem : ∀ q, σ (mem q) = q)
    (e : ∀ q, (mackeySubgroup (W : Subgroup G) (ψ (mem q).1.1).toMonoidHom (mem q).1.2.out) ≃ₜ* D q)
    (he : ∀ q x, E (mackeyConjₜ W (ψ (mem q).1.1) (mem q).1.2.out x) = g q (e q x))
    [∀ p : MackeyTopIndex ψ W, IsDiscreteRep
      (Rep.res (mackeyConjₜ W (ψ p.1.1) p.1.2.out).toMonoidHom (Rep.trivial k (W : Subgroup G) V))]
    [∀ q, IsDiscreteRep (Rep.res (g q).toMonoidHom (Rep.trivial k Γ V))] (n : ℕ) :
    (Function.Injective (globalToLocal g (Rep.trivial k Γ V) (fun q => Rep.res (g q).toMonoidHom
        (Rep.trivial k Γ V)) (fun _ => 𝟙 _) n).hom →
      Function.Injective (mackeyTopRes ψ W (Rep.trivial k (W : Subgroup G) V) n)) ∧
    (Function.Surjective (globalToLocal g (Rep.trivial k Γ V) (fun q => Rep.res (g q).toMonoidHom
        (Rep.trivial k Γ V)) (fun _ => 𝟙 _) n).hom →
      Function.Surjective (mackeyTopRes ψ W (Rep.trivial k (W : Subgroup G) V) n)) := by
  have ht := trivialRes_transfer (k := k) (W := (W : Subgroup G)) (Γ := Γ)
    (C := fun p : MackeyTopIndex ψ W =>
      ↥(mackeySubgroup (W : Subgroup G) (ψ p.1.1).toMonoidHom p.1.2.out)) (D := D)
    E V (fun p => mackeyConjₜ W (ψ p.1.1) p.1.2.out) g σ hσ mem hmem e he n
  rw [mackeyTopRes_trivial_eq (k := k) ψ W V n]
  apply ht

end Apply

section Transfer

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (ιr : ∀ v : {v : InfinitePlace K.1 // v.IsReal}, ℚ̄ →ₐ[K.1] AlgebraicClosure v.1.Completion)
  {L : FiniteSubfield} [Fact (K ≤ L)]
  (hL : ∀ x : L.1, algebraMap L.1 ℚ̄ x ∈ maxUnramifiedOutside K.1 ℚ̄ S)

theorem coe_realMemberPlace (p : MackeyTopIndex (gsRealFamily S ιr) (gsOpenSubgroup S hL)) :
    ((realMemberPlace S ιr hL p : {w : InfinitePlace L.1 // w.IsReal}) : InfinitePlace L.1) =
      (infPlaceOfEmbedding (gsRealEmbedding S ιr p.1.1 p.1.2.out) L : InfinitePlace L.1) :=
  rfl

theorem exists_real_data_of_eq (p : MackeyTopIndex (gsRealFamily S ιr) (gsOpenSubgroup S hL))
    (w : {w : InfinitePlace L.1 // w.IsReal})
    (hp : (infPlaceOfEmbedding (gsRealEmbedding S ιr p.1.1 p.1.2.out) L : InfinitePlace L.1) = w.1) :
    ∃ (ιw : ℚ̄ →ₐ[L.1] AlgebraicClosure w.1.Completion)
      (e : Gal(AlgebraicClosure p.1.1.1.Completion / p.1.1.1.Completion) ≃*
        Gal(AlgebraicClosure w.1.Completion / w.1.Completion)),
      ∀ (g : Gal(AlgebraicClosure p.1.1.1.Completion / p.1.1.1.Completion))
        (hg : p.1.2.out * gsRealFamily S ιr p.1.1 g * p.1.2.out⁻¹ ∈ gsOpenSubgroup S hL),
        gsBaseChange S hL ⟨p.1.2.out * gsRealFamily S ιr p.1.1 g * p.1.2.out⁻¹, hg⟩ =
          decompHomS w.1.Completion (placesOver S) ιw (e g) := by
  obtain ⟨w, hw⟩ := w
  subst hp
  exact exists_real_data S ιr hL p.1.1 p.1.2.out hw

variable (h2S : ∀ v : HeightOneSpectrum (𝓞 K.1), ((2 : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)



include h2S in
theorem gsMackeyTop_gsOpenSubgroup (j : ℕ) :
    (4 ≤ j → GsMackeyTopInjective S ιr (gsOpenSubgroup S hL) j) ∧
      (3 ≤ j → GsMackeyTopSurjective S ιr (gsOpenSubgroup S hL) j) := by
  classical
  have h2SL : ∀ v : HeightOneSpectrum (𝓞 L.1), ((2 : ℕ) : 𝓞 L.1) ∈ v.asIdeal → v ∈ placesOver S :=
    fun v hv => mem_placesOver_of_natCast_mem h2S hv
  choose mem hmem using realMemberPlace_surjective S ιr hL
  choose ιrL e he using fun w => exists_real_data_of_eq S ιr hL (mem w) w
    ((coe_realMemberPlace S ιr hL (mem w)).symm.trans (congrArg Subtype.val (hmem w)))
  let e' : ∀ w : {w : InfinitePlace L.1 // w.IsReal},
      (mackeySubgroup (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
        (gsRealFamily S ιr (mem w).1.1).toMonoidHom (mem w).1.2.out) ≃ₜ*
        Gal(AlgebraicClosure w.1.Completion / w.1.Completion) := fun w =>
    { toMulEquiv := ((MulEquiv.subgroupCongr (mem w).2).trans Subgroup.topEquiv).trans (e w)
      continuous_toFun := continuous_of_discreteTopology
      continuous_invFun := continuous_of_discreteTopology }
  have he' : ∀ w x, gsBaseChange S hL (mackeyConjₜ (gsOpenSubgroup S hL) (gsRealFamily S ιr (mem w).1.1)
      (mem w).1.2.out x) = gsRealFamily (placesOver S) ιrL w (e' w x) := fun w x =>
    (congrArg (gsBaseChange S hL) (Subtype.ext rfl)).trans
      (he w (x : Gal(AlgebraicClosure (mem w).1.1.1.Completion / (mem w).1.1.1.Completion))
        ((mem_mackeySubgroup _ _ _ _).1 x.2))
  have hdiscreteK : ∀ p : MackeyTopIndex (gsRealFamily S ιr) (gsOpenSubgroup S hL),
      IsDiscreteRep (Rep.res (mackeyConjₜ (gsOpenSubgroup S hL) (gsRealFamily S ιr p.1.1) p.1.2.out).toMonoidHom
        (Rep.trivial (ULift.{0} ℤ) (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
          (ULift.{0} (ZMod 2)))) := fun p =>
    IsDiscreteRep.res (continuous_toMonoidHom _) _
  have hdiscreteL : ∀ w : {w : InfinitePlace L.1 // w.IsReal},
      IsDiscreteRep (Rep.res (gsRealFamily (placesOver S) ιrL w).toMonoidHom
        (Rep.trivial (ULift.{0} ℤ) (galUnramifiedOutside L.1 ℚ̄ (placesOver S)) (ULift.{0} (ZMod 2)))) := fun w =>
    IsDiscreteRep.res (continuous_toMonoidHom _) _
  have transfer := @mackeyTopRes_transfer (ULift.{0} ℤ) (galUnramifiedOutside K.1 ℚ̄ S) _ _ _ _
    {v : InfinitePlace K.1 // v.IsReal} (fun v => Gal(AlgebraicClosure v.1.Completion / v.1.Completion))
    _ _ _ (gsRealFamily S ιr) (gsOpenSubgroup S hL) (ULift.{0} (ZMod 2)) _ _ (isDiscreteRep_of_isTrivial _)
    (galUnramifiedOutside L.1 ℚ̄ (placesOver S)) _ _ _ (gsBaseChange S hL)
    (isDiscreteRep_zmodRep_two_gs (K := L) (placesOver S))
    {w : InfinitePlace L.1 // w.IsReal} (fun w => Gal(AlgebraicClosure w.1.Completion / w.1.Completion))
    _ _ _ (gsRealFamily (K := L) (placesOver S) ιrL) (realMemberPlace S ιr hL)
    (realMemberPlace_injective S ιr hL) mem hmem
  have ht := @transfer e' he' hdiscreteK hdiscreteL j
  constructor
  · intro hj
    have hi := injective_gsRealRes_zmodRep_two (K := L) (placesOver S) ιrL h2SL (r := j) hj
    unfold GsMackeyTopInjective
    apply ht.1
    exact hi
  · intro hj
    have hs := surjective_gsRealRes_zmodRep_two (K := L) (placesOver S) ιrL h2SL (r := j) hj
    unfold GsMackeyTopSurjective
    apply ht.2
    exact hs

variable (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))


include h2S in
theorem gsTateCompactCohomology_coind_zmodRep_two_eq_zero
    (W : OpenSubgroup (galUnramifiedOutside K.1 ℚ̄ S)) {r : ℕ} (hr : 4 ≤ r)
    (x : gsTateCompactCohomology S ιr ιs (Rep.coind (W : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)).subtype
      (zmodRep.{0} (G := (W : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))) 2)) r) : x = 0 := by
  obtain ⟨L', hKL', hL', rfl⟩ := exists_gsOpenSubgroup_eq K S W
  exact gsTateCompactCohomology_coind_zmodRep_eq_zero_of S ιs ιr (gsOpenSubgroup S hL')
    (fun j hj => (gsMackeyTop_gsOpenSubgroup S ιr hL' h2S j).1 hj)
    (fun j hj => (gsMackeyTop_gsOpenSubgroup S ιr hL' h2S j).2 hj) hr x

end Transfer

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyTransfer =====
