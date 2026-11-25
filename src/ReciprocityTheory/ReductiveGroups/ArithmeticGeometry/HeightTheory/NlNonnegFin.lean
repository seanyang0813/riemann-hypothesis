module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscBDefs
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.GoodPrimesProperties
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValUFD
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscDefs
public import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscAD
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HintIntOfBounds
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDC
public import Mathlib.RingTheory.Localization.FractionRing
public import Mathlib.RingTheory.UniqueFactorizationDomain.Defs
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HtDefs
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscLocal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscAF
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.NormByPlaces
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.NormFactorizationClause
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.AlgebraMapOLInjective
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ScaleMultiHomogeneous
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.AGFrameNonneg
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DePres
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ProdZpowEqZpowSum
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.BlockDegOfScale
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscHadamard
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HFour
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.GenericSectionOfAxioms
import Mathlib.Algebra.MvPolynomial.Nilpotent
import Mathlib.Algebra.Ring.IsFormallyReal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.OpIsDVR
import ReciprocityTheory.SemistableReduction.AeBlockSphereEvalNeZero
import ReciprocityTheory.SemistableReduction.GaussAbsMulOfMonomialOrder
import ReciprocityTheory.SemistableReduction.LagrangeIdealLiftsFact
import ReciprocityTheory.SemistableReduction.TorusL2CauchyInequality
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.TypeStar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscAB
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscAC
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.KTFiniteDimensional
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValNorm
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValuationResidueLemmas
import ReciprocityTheory.SemistableReduction.AlgAll
import Mathlib.Algebra.Algebra.Field
import Mathlib.RingTheory.LocalProperties.Reduced
import Mathlib.RingTheory.PicardGroup
import Mathlib.Algebra.Order.Star.Real
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HPlaces
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.IntNsg

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteHeightFractionRepr, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.LogHeightDivMultihomogeneous, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.SphereMeanSubArchimedean, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscProduct, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.Hartogs, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.UnitAtIntAt, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FprodNeZero, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.OmPoly, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscB, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.NlNonnegFin

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteHeightFractionRepr =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteHeightFractionRepr", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscBDefs\nimport Mathlib.Algebra.MvPolynomial.Nilpotent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.GoodPrimesProperties\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValUFD\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField MvPolynomial ReciprocityTheory.MultiplicativeHeights ReciprocityTheory.MultiplicativeHeights.Closed MeasureTheory IsDedekindDomain
  ReciprocityTheory.ChartRestriction.G.T0.HeightMultiplicativity

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem gen_ne_zero_of_mem_htOne {p : Ideal (KTp K d.D d.N)} (hp : p ∈ d.HtOne) : d.gen p ≠ 0 := by
  obtain ⟨hpr, hh⟩ := hp
  haveI := hpr
  obtain ⟨g, hg, hpg⟩ := ValUFD.heightOne_principal p hh
  have hPr : p.IsPrincipal := ⟨⟨g, hpg⟩⟩
  unfold gen
  rw [dite_eq_left hPr]
  intro h0
  have hbot : p = ⊥ := (Submodule.IsPrincipal.eq_bot_iff_generator_eq_zero p).2 h0
  rw [hbot] at hpg
  exact hg.ne_zero (Ideal.span_singleton_eq_bot.1 hpg.symm)

theorem finite_height_fraction_repr (hd : d.AxH 𝒜) (h : d.S1) :
    ∃ U V : KTp K d.D d.N, U ≠ 0 ∧ V ≠ 0 ∧ (∃ eU, IsMultiHomogeneous eU U) ∧
      (∃ eV, IsMultiHomogeneous eV V) ∧
      d.fDivE hd h * algebraMap (KTp K d.D d.N) (KTf K d.D d.N) V =
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) U ∧
      d.h0f h d.wF hd.a4.choose = h0 U - h0 V := by
  classical
  have hspec : ∀ c, hd.a4.choose c ∈ 𝒜 c d.wF ∧ hd.a4.choose c ≠ 0 := hd.a4.choose_spec.1
  have hfin : ∀ c, {p | p ∈ d.HtOne ∧ d.nP h c d.wF (hd.a4.choose c) p ≠ 0}.Finite := fun c =>
    (d.good_primes_properties hd h c).2.2.1 d.wF (hd.a4.choose c) (hspec c).1 (hspec c).2
  obtain ⟨T, hmemT⟩ : ∃ T : ι → Finset (Ideal (KTp K d.D d.N)),
      ∀ c p, p ∈ T c ↔ p ∈ d.HtOne ∧ d.nP h c d.wF (hd.a4.choose c) p ≠ 0 :=
    ⟨fun c => (hfin c).toFinset, fun c p => by simp⟩
  have hmemS : ∀ x ∈ Finset.univ.sigma T,
      x.2 ∈ d.HtOne ∧ d.nP h x.1 d.wF (hd.a4.choose x.1) x.2 ≠ 0 := by
    intro x hx
    rw [Finset.mem_sigma] at hx
    exact (hmemT _ _).1 hx.2
  have hne : ∀ x ∈ Finset.univ.sigma T, d.gen x.2 ≠ 0 := fun x hx => d.gen_ne_zero_of_mem_htOne (hmemS x hx).1
  have hmh : ∀ x ∈ Finset.univ.sigma T,
      IsMultiHomogeneous (fun b : Fin (d.D + 1) => if b = 0 then 0 else d.dg (d.gen x.2)) (d.gen x.2) := by
    intro x hx
    obtain ⟨hp, hn⟩ := hmemS x hx
    refine (d.good_primes_properties hd h x.1).2.1 x.2 hp ?_
    by_contra hw
    push_neg at hw
    apply hn
    simp [nP, hw]
  have halg : ∀ x ∈ Finset.univ.sigma T,
      algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen x.2) ≠ 0 := fun x hx =>
    (map_ne_zero_iff _ (IsFractionRing.injective (KTp K d.D d.N) (KTf K d.D d.N))).2 (hne x hx)
  have key : ∀ (a : KTf K d.D d.N), a ≠ 0 → ∀ m : ℤ, a ^ m * a ^ (-m).toNat = a ^ m.toNat := by
    intro a ha m
    rw [← zpow_natCast, ← zpow_natCast, ← zpow_add₀ ha]
    congr 1
    omega
  refine ⟨∏ x ∈ Finset.univ.sigma T, d.gen x.2 ^ (d.nP h x.1 d.wF (hd.a4.choose x.1) x.2).toNat,
    ∏ x ∈ Finset.univ.sigma T, d.gen x.2 ^ (-d.nP h x.1 d.wF (hd.a4.choose x.1) x.2).toNat,
    Finset.prod_ne_zero_iff.2 fun x hx => pow_ne_zero _ (hne x hx),
    Finset.prod_ne_zero_iff.2 fun x hx => pow_ne_zero _ (hne x hx),
    ⟨_, HeightMultiplicativity.multi_prod _ _ _ fun x hx => HeightMultiplicativity.multi_pow (hmh x hx) _⟩,
    ⟨_, HeightMultiplicativity.multi_prod _ _ _ fun x hx => HeightMultiplicativity.multi_pow (hmh x hx) _⟩, ?_, ?_⟩
  · have hfac : ∀ c, (∏ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne),
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ^ d.nP h c d.wF (hd.a4.choose c) p) =
        ∏ p ∈ T c, algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ^
          d.nP h c d.wF (hd.a4.choose c) p := by
      intro c
      apply finprod_mem_eq_prod_of_subset
      · rintro p ⟨hp, hp1⟩
        rw [Function.mem_mulSupport] at hp1
        rw [Finset.mem_coe, hmemT]
        exact ⟨hp, fun h0' => hp1 (by rw [h0', zpow_zero])⟩
      · intro p hp
        exact ((hmemT c p).1 hp).1
    have hf : d.fDivE hd h = ∏ x ∈ Finset.univ.sigma T,
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen x.2) ^ d.nP h x.1 d.wF (hd.a4.choose x.1) x.2 := by
      rw [Finset.prod_sigma]
      unfold fDivE
      exact Finset.prod_congr rfl fun c _ => hfac c
    rw [hf, map_prod, map_prod, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun x hx => ?_
    rw [map_pow, map_pow]
    exact key _ (halg x hx) _
  · have hsum : ∀ c, (∑ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne),
        (d.nP h c d.wF (hd.a4.choose c) p : ℝ) * h0 (d.gen p)) =
        ∑ p ∈ T c, (d.nP h c d.wF (hd.a4.choose c) p : ℝ) * h0 (d.gen p) := by
      intro c
      apply finsum_mem_eq_sum_of_subset
      · rintro p ⟨hp, hp1⟩
        rw [Function.mem_support] at hp1
        rw [Finset.mem_coe, hmemT]
        exact ⟨hp, fun h0' => hp1 (by rw [h0', Int.cast_zero, zero_mul])⟩
      · intro p hp
        exact ((hmemT c p).1 hp).1
    have hn0 : 0 < d.N + 1 := Nat.succ_pos _
    have hU : h0 (∏ x ∈ Finset.univ.sigma T,
        d.gen x.2 ^ (d.nP h x.1 d.wF (hd.a4.choose x.1) x.2).toNat) =
        ∑ x ∈ Finset.univ.sigma T,
          ((d.nP h x.1 d.wF (hd.a4.choose x.1) x.2).toNat : ℝ) * h0 (d.gen x.2) :=
      HeightMultiplicativity.logHeight_prod_pow (B := d.D + 1) (n := d.N + 1) hn0 (Finset.univ.sigma T)
        (fun x b => if b = 0 then 0 else d.dg (d.gen x.2)) (fun x => d.gen x.2) _ hne hmh
    have hV : h0 (∏ x ∈ Finset.univ.sigma T,
        d.gen x.2 ^ (-d.nP h x.1 d.wF (hd.a4.choose x.1) x.2).toNat) =
        ∑ x ∈ Finset.univ.sigma T,
          ((-d.nP h x.1 d.wF (hd.a4.choose x.1) x.2).toNat : ℝ) * h0 (d.gen x.2) :=
      HeightMultiplicativity.logHeight_prod_pow (B := d.D + 1) (n := d.N + 1) hn0 (Finset.univ.sigma T)
        (fun x b => if b = 0 then 0 else d.dg (d.gen x.2)) (fun x => d.gen x.2) _ hne hmh
    rw [hU, hV, ← Finset.sum_sub_distrib, Finset.sum_sigma]
    unfold h0f
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [hsum c]
    refine Finset.sum_congr rfl fun p _ => ?_
    rw [← sub_mul]
    congr 1
    exact_mod_cast (Int.toNat_sub_toNat_neg _).symm

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteHeightFractionRepr =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.LogHeightDivMultihomogeneous =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.LogHeightDivMultihomogeneous", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscDefs\npublic import ReciprocityTheory.SemistableReduction.SphereLogIntegrableStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscAD\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.OpIsDVR\nimport ReciprocityTheory.SemistableReduction.AeBlockSphereEvalNeZero\nimport ReciprocityTheory.SemistableReduction.GaussAbsMulOfMonomialOrder\nimport ReciprocityTheory.SemistableReduction.LagrangeIdealLiftsFact\nimport ReciprocityTheory.SemistableReduction.TorusL2CauchyInequality\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField MvPolynomial ReciprocityTheory.MultiplicativeHeights ReciprocityTheory.MultiplicativeHeights.Closed MeasureTheory IsDedekindDomain
  ReciprocityTheory.ChartRestriction.G.T0.HeightMultiplicativity

section
variable {K : Type} [Field K] [NumberField K]

theorem uniformizer_abs_eq_inv_norm (la : HeightOneSpectrum (𝓞 K)) :
    FinitePlace.mk la ((Data.unif la : 𝓞 K) : K) = ((Ideal.absNorm la.asIdeal : ℕ) : ℝ)⁻¹ := by
  obtain ⟨h1, h2⟩ := unif_mem la
  have a1 : la.intValuation (Data.unif la) ≤ WithZero.exp (-((1 : ℕ) : ℤ)) :=
    (la.intValuation_le_pow_iff_mem _ 1).2 (by rw [pow_one]; exact h1)
  have a2 : ¬ la.intValuation (Data.unif la) ≤ WithZero.exp (-((2 : ℕ) : ℤ)) :=
    fun h => h2 ((la.intValuation_le_pow_iff_mem _ 2).1 h)
  have hne : la.intValuation (Data.unif la) ≠ 0 := by
    intro h0; apply a2; rw [h0]; exact zero_le
  have hv : la.intValuation (Data.unif la) = WithZero.exp (-1 : ℤ) := by
    rw [← WithZero.exp_log hne] at a1 a2 ⊢
    rw [WithZero.exp_le_exp] at a1 a2
    congr 1
    push_cast at a1 a2
    omega
  rw [FinitePlace.mk_apply]
  have := FinitePlace.norm_embedding_int (K := K) (v := la) (Data.unif la)
  simp only [RingOfIntegers.coe_eq_algebraMap] at this ⊢
  rw [this, hv]
  rw [WithZeroMulInt.toNNReal_neg_apply _ WithZero.exp_ne_zero, WithZero.log_exp]
  simp

theorem logHeight_div_multihomogeneous {B n : ℕ} {P Q R : MvPolynomial (Fin B × Fin n) K}
    (eQ eR : Fin B → ℕ) (hP : P ≠ 0) (hQ : Q ≠ 0) (hQm : IsMultiHomogeneous eQ Q)
    (hRm : IsMultiHomogeneous eR R) (hPQ : P * Q = R) :
    h0 P = h0 R - h0 Q := by
  have hR : R ≠ 0 := hPQ ▸ mul_ne_zero hP hQ
  have hfin : ∑ᶠ w : FinitePlace K, Real.log (gaussAbs w P) =
      (∑ᶠ w : FinitePlace K, Real.log (gaussAbs w R)) - ∑ᶠ w : FinitePlace K, Real.log (gaussAbs w Q) := by
    rw [← finsum_sub_distrib (gauss_abs_log_support_finite R hR) (gauss_abs_log_support_finite Q hQ)]
    refine finsum_congr fun w => ?_
    rw [← hPQ, gauss_abs_mul w P Q hP hQ,
      Real.log_mul (gauss_abs_pos_of_ne_zero w P hP).ne' (gauss_abs_pos_of_ne_zero w Q hQ).ne']
    ring
  have harch : ∀ σ : K →+* ℂ, blockSphereMean B n (MvPolynomial.map σ P) =
      blockSphereMean B n (MvPolynomial.map σ R) - blockSphereMean B n (MvPolynomial.map σ Q) := by
    intro σ
    have hs : ∀ F : MvPolynomial (Fin B × Fin n) K, F ≠ 0 → MvPolynomial.map σ F ≠ 0 := by
      intro F hF h'
      exact hF (MvPolynomial.map_injective σ σ.injective (by rw [h', map_zero]))
    have IR := sphereLogIntegrable B n eR _ (hs R hR) (isMultiHomogeneous_map_ring eR R hRm σ)
    have IQ := sphereLogIntegrable B n eQ _ (hs Q hQ) (isMultiHomogeneous_map_ring eQ Q hQm σ)
    have aR := ae_blockSphere_eval_ne_zero B n eR _ (hs R hR) (isMultiHomogeneous_map_ring eR R hRm σ)
    have aQ := ae_blockSphere_eval_ne_zero B n eQ _ (hs Q hQ) (isMultiHomogeneous_map_ring eQ Q hQm σ)
    unfold blockSphereMean
    rw [← integral_sub IR IQ]
    refine integral_congr_ae ?_
    filter_upwards [aR, aQ] with z hzR hzQ
    have hRe : MvPolynomial.eval (blockPoint z) (MvPolynomial.map σ R) =
        MvPolynomial.eval (blockPoint z) (MvPolynomial.map σ P) *
          MvPolynomial.eval (blockPoint z) (MvPolynomial.map σ Q) := by
      rw [← hPQ, map_mul, map_mul]
    have hzP : MvPolynomial.eval (blockPoint z) (MvPolynomial.map σ P) ≠ 0 := by
      intro h0; apply hzR; rw [hRe, h0, zero_mul]
    rw [hRe, norm_mul, Real.log_mul (norm_ne_zero_iff.2 hzP) (norm_ne_zero_iff.2 hzQ)]
    ring
  unfold h0
  rw [hfin, Finset.sum_congr rfl fun σ _ => harch σ, Finset.sum_sub_distrib]
  ring

end

end ReciprocityTheory.ChartRestriction.G.T0

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField MvPolynomial ReciprocityTheory.MultiplicativeHeights ReciprocityTheory.MultiplicativeHeights.Closed MeasureTheory IsDedekindDomain
  ReciprocityTheory.ChartRestriction.G.T0.HeightMultiplicativity

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]

namespace Data

variable (d : Data K ι Ω WT A)

theorem log_gaussAbs_sub_of_fraction (la : HeightOneSpectrum (𝓞 K)) (a b : KTp K d.D d.N) (ha : a ≠ 0) (hb : b ≠ 0)
    (q : KTf K d.D d.N)
    (hq : algebraMap (KTp K d.D d.N) (KTf K d.D d.N) a = q * algebraMap (KTp K d.D d.N) (KTf K d.D d.N) b) :
    Real.log (gaussAbs (FinitePlace.mk la) a) - Real.log (gaussAbs (FinitePlace.mk la) b) =
      -((d.gOrd la q : ℝ) * logNorm la) := by
  classical
  let _ := algOpKT (K := K) d.D d.N la
  have : IsFractionRing (Op d.D d.N la) (KTf K d.D d.N) := by
    let _ := algOTKT (K := K) d.D d.N
    let _ : Algebra (OT K d.D d.N) (KTp K d.D d.N) := MvPolynomial.algebraMvPolynomial
    have := IsScalarTower.of_algebraMap_eq' (R := OT K d.D d.N) (S := KTp K d.D d.N)
      (A := KTf K d.D d.N) rfl
    have := IsScalarTower.of_algebraMap_eq (R := OT K d.D d.N) (S := Op d.D d.N la)
      (A := KTf K d.D d.N) fun x => by
        change _ = OpToKT d.D d.N la (algebraMap _ _ x)
        rw [OpToKT, IsLocalization.lift_eq]
        rfl
    have := MvPolynomial.isLocalization (σ := TVar d.D d.N) (nonZeroDivisors (𝓞 K)) K
    have hinj : Function.Injective (algebraMap (OT K d.D d.N) (KTp K d.D d.N)) :=
      MvPolynomial.map_injective _ (IsFractionRing.injective (𝓞 K) K)
    have hmonoid : (nonZeroDivisors (KTp K d.D d.N)).comap
        (algebraMap (OT K d.D d.N) (KTp K d.D d.N)) = nonZeroDivisors (OT K d.D d.N) := by
      ext p
      simp only [Submonoid.mem_comap, mem_nonZeroDivisors_iff_ne_zero]
      exact map_ne_zero_iff _ hinj
    have : IsFractionRing (OT K d.D d.N) (KTf K d.D d.N) := by
      rw [IsFractionRing, ← hmonoid]
      exact IsLocalization.localization_localization_isLocalization_of_has_all_units
        ((nonZeroDivisors (𝓞 K)).map (C (σ := TVar d.D d.N)))
        (nonZeroDivisors (KTp K d.D d.N)) (KTf K d.D d.N)
        (fun _ hu => hu.mem_nonZeroDivisors)
    exact IsFractionRing.isFractionRing_of_isDomain_of_isLocalization (laT d.D d.N la).primeCompl
      (Op d.D d.N la) (KTf K d.D d.N)
  have := Op_isDVR (K := K) d.D d.N la
  have hinj := IsFractionRing.injective (KTp K d.D d.N) (KTf K d.D d.N)
  have hq0 : q ≠ 0 := by
    rintro rfl; rw [zero_mul] at hq; exact ha (hinj (by rw [hq, map_zero]))
  obtain ⟨x, y, hy, rfl⟩ := IsFractionRing.div_surjective (A := Op d.D d.N la) q
  have hy0 : y ≠ 0 := nonZeroDivisors.ne_zero hy
  have hx0 : x ≠ 0 := by rintro rfl; simp at hq0
  obtain ⟨n1, u1, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hx0
    (unifOp_irreducible d.D d.N la)
  obtain ⟨n2, u2, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hy0
    (unifOp_irreducible d.D d.N la)
  set π := algebraMap K (KTf K d.D d.N) ((Data.unif la : 𝓞 K) : K) with hπdef
  have hπ : OpToKT d.D d.N la (unifOp d.D d.N la) = π := (algK_unif d.D d.N la).symm
  have hπ0 : π ≠ 0 := by
    rw [← hπ]
    exact (map_ne_zero_iff _ (OpToKT_injective d.D d.N la)).mpr (unifOp_irreducible d.D d.N la).ne_zero
  have hE : ∀ z : Op d.D d.N la, algebraMap (Op d.D d.N la) (KTf K d.D d.N) z = OpToKT d.D d.N la z :=
    fun _ => rfl
  have hU : ∀ u : (Op d.D d.N la)ˣ, OpToKT d.D d.N la (u : Op d.D d.N la) ≠ 0 := fun u =>
    (map_ne_zero_iff _ (OpToKT_injective d.D d.N la)).mpr u.ne_zero

  have hg : d.gOrd la (algebraMap (Op d.D d.N la) (KTf K d.D d.N) (↑u1 * unifOp d.D d.N la ^ n1) /
      algebraMap (Op d.D d.N la) (KTf K d.D d.N) (↑u2 * unifOp d.D d.N la ^ n2)) = (n1 : ℤ) - n2 := by
    refine d.gOrd_eq la (u := ((u1 * u2⁻¹ : (Op d.D d.N la)ˣ) : Op d.D d.N la)) (Units.isUnit _) ?_
    rw [hE, hE, map_mul, map_mul, map_pow, map_pow, hπ, Units.val_mul, map_mul,
      map_units_inv (OpToKT d.D d.N la) u2, zpow_sub₀ hπ0, zpow_natCast, zpow_natCast]
    have := hU u2
    field_simp
  rw [hg]

  obtain ⟨⟨x1, s1⟩, hu1⟩ := IsLocalization.mk'_surjective (laT d.D d.N la).primeCompl (u1 : Op d.D d.N la)
  obtain ⟨⟨x2, s2⟩, hu2⟩ := IsLocalization.mk'_surjective (laT d.D d.N la).primeCompl (u2 : Op d.D d.N la)
  dsimp only at hu1 hu2
  have hx1 : x1 ∈ (laT d.D d.N la).primeCompl :=
    (IsLocalization.AtPrime.isUnit_mk'_iff (Op d.D d.N la) (laT d.D d.N la) x1 s1).1 (hu1 ▸ u1.isUnit)
  have hx2 : x2 ∈ (laT d.D d.N la).primeCompl :=
    (IsLocalization.AtPrime.isUnit_mk'_iff (Op d.D d.N la) (laT d.D d.N la) x2 s2).1 (hu2 ▸ u2.isUnit)
  set g := (algebraMap (KTp K d.D d.N) (KTf K d.D d.N)).comp (OTtoKT K d.D d.N) with hgdef
  have hs1 : g x1 = g s1 * OpToKT d.D d.N la (u1 : Op d.D d.N la) := by
    rw [← hu1]; exact (IsLocalization.lift_mk'_spec _ _ _ _).1 rfl
  have hs2 : g x2 = g s2 * OpToKT d.D d.N la (u2 : Op d.D d.N la) := by
    rw [← hu2]; exact (IsLocalization.lift_mk'_spec _ _ _ _).1 rfl
  have hX : x2 * (s1 : OT K d.D d.N) ∈ (laT d.D d.N la).primeCompl :=
    (laT d.D d.N la).primeCompl.mul_mem hx2 s1.2
  have hY : x1 * (s2 : OT K d.D d.N) ∈ (laT d.D d.N la).primeCompl :=
    (laT d.D d.N la).primeCompl.mul_mem hx1 s2.2
  have hπC : π = algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (C ((Data.unif la : 𝓞 K) : K)) := by
    rw [hπdef, IsScalarTower.algebraMap_apply K (KTp K d.D d.N) (KTf K d.D d.N), MvPolynomial.algebraMap_eq]

  have hpoly : a * OTtoKT K d.D d.N (x2 * (s1 : OT K d.D d.N)) * C (((Data.unif la : 𝓞 K) : K) ^ n2) =
      C (((Data.unif la : 𝓞 K) : K) ^ n1) * OTtoKT K d.D d.N (x1 * (s2 : OT K d.D d.N)) * b := by
    apply hinj
    have hs1' : algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (OTtoKT K d.D d.N x1) =
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (OTtoKT K d.D d.N (s1 : OT K d.D d.N)) *
          OpToKT d.D d.N la (u1 : Op d.D d.N la) := hs1
    have hs2' : algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (OTtoKT K d.D d.N x2) =
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (OTtoKT K d.D d.N (s2 : OT K d.D d.N)) *
          OpToKT d.D d.N la (u2 : Op d.D d.N la) := hs2
    have e3 : ∀ m : ℕ, algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (C (((Data.unif la : 𝓞 K) : K) ^ m)) = π ^ m := by
      intro m; rw [hπC, MvPolynomial.C_pow, map_pow]
    simp only [map_mul, e3]
    rw [hq, hs1', hs2']
    simp only [hE, map_mul, map_pow, hπ]
    have := hU u2
    have := hπ0
    field_simp

  set w := FinitePlace.mk la
  have hXn : gaussAbs w (OTtoKT K d.D d.N (x2 * (s1 : OT K d.D d.N))) = 1 := gaussAbs_prim la _ hX
  have hYn : gaussAbs w (OTtoKT K d.D d.N (x1 * (s2 : OT K d.D d.N))) = 1 := gaussAbs_prim la _ hY
  have hX0 : OTtoKT K d.D d.N (x2 * (s1 : OT K d.D d.N)) ≠ 0 := by intro h0; rw [h0] at hXn; simp [gaussAbs] at hXn
  have hY0 : OTtoKT K d.D d.N (x1 * (s2 : OT K d.D d.N)) ≠ 0 := by intro h0; rw [h0] at hYn; simp [gaussAbs] at hYn
  have hN : (0 : ℝ) < ((Ideal.absNorm la.asIdeal : ℕ) : ℝ) := by
    have := NumberField.HeightOneSpectrum.one_lt_absNorm la
    exact_mod_cast (zero_lt_one.trans this)
  have hϖ0 : ((Data.unif la : 𝓞 K) : K) ≠ 0 := by
    intro h0; have := uniformizer_abs_eq_inv_norm la; rw [h0, map_zero] at this; exact (inv_pos.2 hN).ne' this.symm
  have hC0 : ∀ m : ℕ, (C (((Data.unif la : 𝓞 K) : K) ^ m) : KTp K d.D d.N) ≠ 0 := fun m => by
    rw [Ne, C_eq_zero]; exact pow_ne_zero _ hϖ0
  have key := congrArg (gaussAbs w) hpoly
  rw [gauss_abs_mul w _ _ (mul_ne_zero ha hX0) (hC0 n2), gauss_abs_mul w _ _ ha hX0,
    gauss_abs_mul w _ _ (mul_ne_zero (hC0 n1) hY0) hb, gauss_abs_mul w _ _ (hC0 n1) hY0,
    gaussAbs_C, gaussAbs_C, map_pow, map_pow, uniformizer_abs_eq_inv_norm la, hXn, hYn, mul_one, mul_one] at key
  have hA' := gauss_abs_pos_of_ne_zero w a ha
  have hB' := gauss_abs_pos_of_ne_zero w b hb
  have hlogN : logNorm la = Real.log ((Ideal.absNorm la.asIdeal : ℕ) : ℝ) := rfl
  have hl := congrArg Real.log key
  rw [Real.log_mul hA'.ne' (pow_ne_zero _ (inv_pos.2 hN).ne'),
    Real.log_mul (pow_ne_zero _ (inv_pos.2 hN).ne') hB'.ne', Real.log_pow, Real.log_pow, Real.log_inv] at hl
  rw [hlogN]
  push_cast
  linarith

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.LogHeightDivMultihomogeneous =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.SphereMeanSubArchimedean =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.SphereMeanSubArchimedean", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscBDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HintIntOfBounds\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDA\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField MvPolynomial ReciprocityTheory.MultiplicativeHeights ReciprocityTheory.MultiplicativeHeights.Closed MeasureTheory IsDedekindDomain
  ReciprocityTheory.ChartRestriction.G.T0.HeightMultiplicativity

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem eval_indep_of_first_block (q : KTp K d.D d.N) (m : Fin (d.D + 1) → ℕ) (hm0 : m 0 = 0)
    (hq : IsMultiHomogeneous m q) (sg : K →+* ℂ) (t0 : Fin (d.N + 1) → ℂ)
    (t : Fin d.D → Fin (d.N + 1) → ℂ) : d.evT sg t0 t q = d.evT sg 0 t q := by
  unfold evT
  rw [MvPolynomial.eval₂_eq', MvPolynomial.eval₂_eq']
  apply Finset.sum_congr rfl
  intro s hs
  congr 1
  apply Finset.prod_congr rfl
  rintro ⟨b, j⟩ _
  have hsum : ∑ j : Fin (d.N + 1), s (0, j) = 0 := by
    rw [hq s hs 0, hm0]
  cases b using Fin.cases with
  | zero =>
    have h0 : s (0, j) = 0 := (Finset.sum_eq_zero_iff.mp hsum) j (Finset.mem_univ _)
    simp [h0]
  | succ i => rfl

theorem sphereMean_sub_archimedean (a b : KTp K d.D d.N) (m : Fin (d.D + 1) → ℕ) (hm0 : m 0 = 0)
    (ha : a ≠ 0) (hb : b ≠ 0) (hma : IsMultiHomogeneous m a) (hmb : IsMultiHomogeneous m b)
    (sg : K →+* ℂ) :
    blockSphereMean (d.D + 1) (d.N + 1) (MvPolynomial.map sg a) -
      blockSphereMean (d.D + 1) (d.N + 1) (MvPolynomial.map sg b) = d.mSgP sg a b := by
  have hn : 0 < d.N + 1 := Nat.succ_pos _
  have hmp := hint_mpTail d.D (d.N + 1) hn
  have key : ∀ q : KTp K d.D d.N, q ≠ 0 → IsMultiHomogeneous m q →
      blockSphereMean (d.D + 1) (d.N + 1) (MvPolynomial.map sg q) =
        ∫ w, Real.log ‖d.evT sg 0 (d.tOf w) q‖ ∂(ReciprocityTheory.MultiplicativeHeights.blockSphereProb d.D (d.N + 1)) ∧
      Integrable (fun w => Real.log ‖d.evT sg 0 (d.tOf w) q‖)
        (ReciprocityTheory.MultiplicativeHeights.blockSphereProb d.D (d.N + 1)) := by
    intro q hq0 hq
    have hq0' : MvPolynomial.map sg q ≠ 0 := fun h =>
      hq0 (MvPolynomial.map_injective _ sg.injective (by rw [h, map_zero]))
    have hq' : IsMultiHomogeneous m (MvPolynomial.map sg q) :=
      fun s hs => hq s (MvPolynomial.support_map_subset _ _ hs)
    have hI := hint_logInt_tail hn hq0' hq' hm0 0
    have heq : ∀ w, d.evT sg 0 (d.tOf w) q =
        MvPolynomial.eval (hintPt 0 w) (MvPolynomial.map sg q) := by
      intro w
      rw [MvPolynomial.eval_map]
      rfl
    have hI' : Integrable (fun w => Real.log ‖d.evT sg 0 (d.tOf w) q‖)
        (ReciprocityTheory.MultiplicativeHeights.blockSphereProb d.D (d.N + 1)) := by
      simp only [heq]
      exact hI
    refine ⟨?_, hI'⟩
    have hpt : ∀ z : ReciprocityTheory.MultiplicativeHeights.BlockSphere (d.D + 1) (d.N + 1),
        Real.log ‖MvPolynomial.eval (ReciprocityTheory.MultiplicativeHeights.blockPoint z) (MvPolynomial.map sg q)‖ =
          Real.log ‖d.evT sg 0 (d.tOf (fun i : Fin d.D => z i.succ)) q‖ := by
      intro z
      have h1 : MvPolynomial.eval (ReciprocityTheory.MultiplicativeHeights.blockPoint z) (MvPolynomial.map sg q) =
          d.evT sg (fun j => ReciprocityTheory.MultiplicativeHeights.spherePoint (z 0) j)
            (d.tOf (fun i : Fin d.D => z i.succ)) q := by
        rw [MvPolynomial.eval_map]
        unfold evT
        congr 1
        funext v
        rcases v with ⟨b, j⟩
        cases b using Fin.cases with
        | zero => rfl
        | succ i => rfl
      rw [h1, d.eval_indep_of_first_block q m hm0 hq sg]
    unfold ReciprocityTheory.MultiplicativeHeights.blockSphereMean
    simp only [hpt]
    have h2 := MeasureTheory.integral_map (μ := ReciprocityTheory.MultiplicativeHeights.blockSphereProb (d.D + 1) (d.N + 1))
      hmp.measurable.aemeasurable (f := fun w => Real.log ‖d.evT sg 0 (d.tOf w) q‖)
      (by rw [hmp.map_eq]; exact hI'.aestronglyMeasurable)
    rw [hmp.map_eq] at h2
    exact h2.symm
  obtain ⟨ha1, ha2⟩ := key a ha hma
  obtain ⟨hb1, hb2⟩ := key b hb hmb
  rw [ha1, hb1, ← integral_sub ha2 hb2]
  rfl

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.SphereMeanSubArchimedean =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscProduct =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscProduct", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscBDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteHeightFractionRepr\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDC\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.LogHeightDivMultihomogeneous\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.SphereMeanSubArchimedean\nimport ReciprocityTheory.SemistableReduction.LagrangeIdealLiftsFact\nimport ReciprocityTheory.SemistableReduction.TorusL2CauchyInequality\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField ReciprocityTheory.ChartRestriction.G.T0.HeightMultiplicativity

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem disc_product (hd : d.AxH 𝒜) (h : d.S1) (hI2be : d.HeightIntegralBoundEstimate) (a b : KTp K d.D d.N)
    (hab : d.IsPres hd h a b) (Om : KTp K d.D d.N)
    (hOm : algebraMap (KTp K d.D d.N) (KTf K d.D d.N) Om = d.omE hd h) :
    (Function.support fun la => d.gOrd la (d.De hd h)).Finite ∧
    (Function.support fun la => d.NlaG h d.wF hd.a4.choose la).Finite ∧
    (∑ᶠ la, ((d.gOrd la (d.De hd h) : ℝ) + 2 * d.NlaG h d.wF hd.a4.choose la) * logNorm la) /
        (Module.finrank ℚ K : ℝ) =
      meanK (fun sg => d.mSgP sg a b - 2 * d.Nsg d.wF hd.a4.choose sg) -
        ReciprocityTheory.MultiplicativeHeights.h0 Om + 2 * d.Hgt h d.wF hd.a4.choose := by
  classical
  set e := hd.a4.choose with hedef
  have he := hd.a4.choose_spec.1
  obtain ⟨hb0, hab', m, hm0, hma, hmb⟩ := hab
  have hDe : d.De hd h ≠ 0 := (d.disc_lattice hd h).1
  have hinj := IsFractionRing.injective (KTp K d.D d.N) (KTf K d.D d.N)
  have ha0 : a ≠ 0 := by
    rintro rfl
    rw [map_zero] at hab'
    exact mul_ne_zero hDe ((map_ne_zero_iff _ hinj).2 hb0) hab'.symm
  have hn : (0 : ℝ) < Module.finrank ℚ K := by exact_mod_cast Module.finrank_pos
  have hcard : (Fintype.card (K →+* ℂ) : ℝ) = Module.finrank ℚ K := by
    exact_mod_cast NumberField.Embeddings.card K ℂ

  have hla : ∀ la, Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs (FinitePlace.mk la) a) -
      Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs (FinitePlace.mk la) b) =
        -((d.gOrd la (d.De hd h) : ℝ) * logNorm la) :=
    fun la => d.log_gaussAbs_sub_of_fraction la a b ha0 hb0 _ hab'
  have hlog : ∀ la : IsDedekindDomain.HeightOneSpectrum (𝓞 K), logNorm la ≠ 0 := fun la => by
    have h1 := NumberField.HeightOneSpectrum.one_lt_absNorm la
    exact (Real.log_pos (by exact_mod_cast h1)).ne'
  have hgfin : (Function.support fun la => d.gOrd la (d.De hd h)).Finite := by
    refine (((ReciprocityTheory.MultiplicativeHeights.gauss_abs_log_support_finite a ha0).union
      (ReciprocityTheory.MultiplicativeHeights.gauss_abs_log_support_finite b hb0)).preimage
      (FinitePlace.equivHeightOneSpectrum (K := K)).symm.injective.injOn).subset ?_
    intro la hla0
    have h1 : Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs (FinitePlace.mk la) a) -
        Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs (FinitePlace.mk la) b) ≠ 0 := by
      rw [hla]
      exact neg_ne_zero.2 (mul_ne_zero (by exact_mod_cast hla0) (hlog la))
    by_contra hn'
    apply h1
    simp only [Set.mem_preimage, Set.mem_union, Function.mem_support, not_or, not_not] at hn'
    change Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs (FinitePlace.mk la) a) = 0 ∧
      Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs (FinitePlace.mk la) b) = 0 at hn'
    rw [hn'.1, hn'.2, sub_zero]
  have hNfin : (Function.support fun la => d.NlaG h d.wF e la).Finite :=
    (Set.finite_iUnion fun c => d.la_fin hd h c (fun v => d.ord c v d.wF (e c))
      (hd.a3' c (he c).1 (he c).2)).subset (d.aNla_supp hd h (fun c v f => d.ord c v d.wF f) e)
  refine ⟨hgfin, hNfin, ?_⟩

  obtain ⟨U, V, hU0, hV0, ⟨eU, hUm⟩, ⟨eV, hVm⟩, hpres, hh0f⟩ := d.finite_height_fraction_repr hd h
  have hpoly : Om * (b * V ^ 2) = a * U ^ 2 := by
    apply hinj
    simp only [map_mul, map_pow]
    rw [hOm, omE, hab', ← hpres]
    ring
  have hOm0 : Om ≠ 0 := by
    rintro rfl
    rw [zero_mul] at hpoly
    exact mul_ne_zero ha0 (pow_ne_zero _ hU0) hpoly.symm
  have hnp : 0 < d.N + 1 := Nat.succ_pos _
  have E1 : ReciprocityTheory.MultiplicativeHeights.h0 Om = ReciprocityTheory.MultiplicativeHeights.h0 a + 2 * ReciprocityTheory.MultiplicativeHeights.h0 U -
      (ReciprocityTheory.MultiplicativeHeights.h0 b + 2 * ReciprocityTheory.MultiplicativeHeights.h0 V) := by
    rw [logHeight_div_multihomogeneous _ _ hOm0 (mul_ne_zero hb0 (pow_ne_zero _ hV0))
      (multi_mul hmb (multi_pow hVm 2)) (multi_mul hma (multi_pow hUm 2)) hpoly,
      (ReciprocityTheory.MultiplicativeHeights.Closed.gauss_height_additivity K (d.D + 1) (d.N + 1) _ _ a (U ^ 2) hnp ha0 (pow_ne_zero _ hU0) hma
        (multi_pow hUm 2)).1,
      (ReciprocityTheory.MultiplicativeHeights.Closed.gauss_height_additivity K (d.D + 1) (d.N + 1) _ _ b (V ^ 2) hnp hb0 (pow_ne_zero _ hV0) hmb
        (multi_pow hVm 2)).1,
      h0_pow_of_isMultiHomogeneous hnp hU0 hUm, h0_pow_of_isMultiHomogeneous hnp hV0 hVm]
    push_cast; ring
  have E2 : ReciprocityTheory.MultiplicativeHeights.h0 a - ReciprocityTheory.MultiplicativeHeights.h0 b =
      (-(∑ᶠ la, (d.gOrd la (d.De hd h) : ℝ) * logNorm la) + ∑ sg, d.mSgP sg a b) /
        (Module.finrank ℚ K : ℝ) := by
    have hfinp : (∑ᶠ w : FinitePlace K, Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs w a)) -
        ∑ᶠ w : FinitePlace K, Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs w b) =
        -(∑ᶠ la, (d.gOrd la (d.De hd h) : ℝ) * logNorm la) := by
      rw [← finsum_sub_distrib (ReciprocityTheory.MultiplicativeHeights.gauss_abs_log_support_finite a ha0)
        (ReciprocityTheory.MultiplicativeHeights.gauss_abs_log_support_finite b hb0)]
      have := finsum_comp_equiv (FinitePlace.equivHeightOneSpectrum (K := K)).symm
        (f := fun w => Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs w a) - Real.log (ReciprocityTheory.MultiplicativeHeights.gaussAbs w b))
      rw [← this, ← finsum_neg_distrib]
      exact finsum_congr fun la => hla la
    have harch : ∑ sg : K →+* ℂ, ReciprocityTheory.MultiplicativeHeights.blockSphereMean (d.D + 1) (d.N + 1) (MvPolynomial.map sg a) -
        ∑ sg : K →+* ℂ, ReciprocityTheory.MultiplicativeHeights.blockSphereMean (d.D + 1) (d.N + 1) (MvPolynomial.map sg b) =
        ∑ sg, d.mSgP sg a b := by
      rw [← Finset.sum_sub_distrib]
      exact Finset.sum_congr rfl fun sg _ => d.sphereMean_sub_archimedean a b m hm0 ha0 hb0 hma hmb sg
    unfold ReciprocityTheory.MultiplicativeHeights.h0
    rw [← hfinp, ← harch]
    ring
  have E4 : meanK (fun sg => d.mSgP sg a b - 2 * d.Nsg d.wF e sg) =
      (∑ sg, d.mSgP sg a b) / (Module.finrank ℚ K : ℝ) - 2 * meanK (d.Nsg d.wF e) := by
    unfold meanK
    rw [Finset.sum_sub_distrib, ← Finset.mul_sum, hcard]
    ring
  have hsG : (Function.support fun la => (d.gOrd la (d.De hd h) : ℝ) * logNorm la).Finite :=
    hgfin.subset fun la hla0 => by
      intro h0; apply hla0; simp [h0]
  have hsN : (Function.support fun la => d.NlaG h d.wF e la * logNorm la).Finite :=
    hNfin.subset fun la hla0 => by
      intro h0; apply hla0; simp [h0]
  have E5 : (∑ᶠ la, ((d.gOrd la (d.De hd h) : ℝ) + 2 * d.NlaG h d.wF e la) * logNorm la) =
      (∑ᶠ la, (d.gOrd la (d.De hd h) : ℝ) * logNorm la) +
        2 * ∑ᶠ la, d.NlaG h d.wF e la * logNorm la := by
    rw [mul_finsum, ← finsum_add_distrib hsG (hsN.subset fun la hla0 => by
      intro h0; apply hla0; simp [h0])]
    exact finsum_congr fun la => by ring
  rw [E5, E4, Hgt, hh0f]
  have hn0 : (Module.finrank ℚ K : ℝ) ≠ 0 := hn.ne'
  linear_combination E1 + E2

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscProduct =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.Hartogs =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.Hartogs", "h": "module\n\npublic import Mathlib.RingTheory.Localization.FractionRing\npublic import Mathlib.RingTheory.UniqueFactorizationDomain.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

theorem ufd_mem_of_forall_prime {R : Type*} [CommRing R] [IsDomain R] [UniqueFactorizationMonoid R]
    (x : FractionRing R)
    (h : ∀ p : R, Prime p → ∃ a b : R, ¬ p ∣ b ∧ x * algebraMap R (FractionRing R) b =
      algebraMap R (FractionRing R) a) :
    ∃ a : R, x = algebraMap R (FractionRing R) a := by
  classical
  have key : ∀ c : R, c ≠ 0 → ∀ a0 : R, x * algebraMap R (FractionRing R) c =
      algebraMap R (FractionRing R) a0 → ∃ a : R, x = algebraMap R (FractionRing R) a := by
    intro c
    induction c using UniqueFactorizationMonoid.induction_on_prime with
    | h₁ => intro h0; exact absurd rfl h0
    | h₂ u hu =>
      intro _ a0 hx
      refine ⟨a0 * ↑(hu.unit⁻¹), ?_⟩
      have hu' : algebraMap R (FractionRing R) u * algebraMap R (FractionRing R) ↑(hu.unit⁻¹) = 1 := by
        rw [← map_mul]; simp
      calc x = x * (algebraMap R (FractionRing R) u * algebraMap R (FractionRing R) ↑(hu.unit⁻¹)) := by
              rw [hu', mul_one]
        _ = algebraMap R (FractionRing R) (a0 * ↑(hu.unit⁻¹)) := by rw [← mul_assoc, hx, map_mul]
    | h₃ c p hc hp ih =>
      intro _ a0 hx
      obtain ⟨a, b, hpb, hab⟩ := h p hp
      have hinj := IsFractionRing.injective R (FractionRing R)
      have e1 : a * (p * c) = a0 * b := by
        apply hinj
        simp only [map_mul] at hx hab ⊢
        linear_combination (-(algebraMap R (FractionRing R) p * algebraMap R (FractionRing R) c)) * hab +
          algebraMap R (FractionRing R) b * hx
      have hpa0 : p ∣ a0 := by
        have : p ∣ a0 * b := ⟨a * c, by rw [← e1]; ring⟩
        rcases hp.dvd_or_dvd this with h1 | h1
        · exact h1
        · exact absurd h1 hpb
      obtain ⟨a1, rfl⟩ := hpa0
      have hp0 : algebraMap R (FractionRing R) p ≠ 0 := by
        rw [Ne, ← map_zero (algebraMap R (FractionRing R))]
        exact fun h' => hp.ne_zero (hinj h')
      refine ih hc a1 ?_
      apply mul_left_cancel₀ hp0
      simp only [map_mul] at hx ⊢
      linear_combination hx
  obtain ⟨a0, c, hc, rfl⟩ := IsFractionRing.div_surjective (A := R) x
  have hc0 : c ≠ 0 := nonZeroDivisors.ne_zero hc
  refine key c hc0 a0 ?_
  rw [div_mul_cancel₀]
  rw [Ne, ← map_zero (algebraMap R (FractionRing R))]
  exact fun h' => hc0 (IsFractionRing.injective R (FractionRing R) h')

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.Hartogs =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.UnitAtIntAt =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.UnitAtIntAt", "h": "module\n\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscDefs\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HtDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscLocal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscAB\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscAC\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscAF\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.KTFiniteDimensional\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.NormByPlaces\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.NormFactorizationClause\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValNorm\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValUFD\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValuationResidueLemmas\nimport ReciprocityTheory.SemistableReduction.AlgAll\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.AlgebraMapOLInjective\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.style.haveILetI false

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField

namespace LocAt

variable {R F : Type*} [CommRing R] [IsDomain R] [Field F] [Algebra R F] [IsFractionRing R F]

def IntAt (p : Ideal R) (x : F) : Prop :=
  ∃ a s : R, s ∉ p ∧ x * algebraMap R F s = algebraMap R F a

def UnitAt (p : Ideal R) (x : F) : Prop :=
  ∃ a s : R, a ∉ p ∧ s ∉ p ∧ x * algebraMap R F s = algebraMap R F a

variable {p : Ideal R} [hP : p.IsPrime]
include hP

omit [IsDomain R] [IsFractionRing R F] in
theorem intAt_mul {x y : F} (hx : IntAt p x) (hy : IntAt p y) : IntAt p (x * y) := by
  obtain ⟨a, s, hs, hxs⟩ := hx
  obtain ⟨b, t, ht, hyt⟩ := hy
  refine ⟨a * b, s * t, fun h => (hP.mem_or_mem h).elim hs ht, ?_⟩
  rw [map_mul, map_mul, ← hxs, ← hyt]
  ring

omit [IsDomain R] [IsFractionRing R F] in
theorem unitAt_mul {x y : F} (hx : UnitAt p x) (hy : UnitAt p y) : UnitAt p (x * y) := by
  obtain ⟨a, s, ha, hs, hxs⟩ := hx
  obtain ⟨b, t, hb, ht, hyt⟩ := hy
  refine ⟨a * b, s * t, fun h => (hP.mem_or_mem h).elim ha hb,
    fun h => (hP.mem_or_mem h).elim hs ht, ?_⟩
  rw [map_mul, map_mul, ← hxs, ← hyt]
  ring

omit [IsDomain R] [IsFractionRing R F] in
theorem unitAt_one : UnitAt p (1 : F) := by
  have h1 : (1 : R) ∉ p := fun h => hP.ne_top ((Ideal.eq_top_iff_one p).mpr h)
  exact ⟨1, 1, h1, h1, by simp⟩

omit [IsDomain R] [IsFractionRing R F] in
theorem unitAt_intAt {x : F} (hx : UnitAt p x) : IntAt p x := by
  obtain ⟨a, s, _, hs, h⟩ := hx
  exact ⟨a, s, hs, h⟩

omit [IsDomain R] [IsFractionRing R F] in
theorem unitAt_alg {r : R} (hr : r ∉ p) : UnitAt p (algebraMap R F r) := by
  have h1 : (1 : R) ∉ p := fun h => hP.ne_top ((Ideal.eq_top_iff_one p).mpr h)
  exact ⟨r, 1, hr, h1, by simp⟩

theorem unitAt_inv {x : F} (hx : UnitAt p x) : UnitAt p x⁻¹ := by
  obtain ⟨a, s, ha, hs, h⟩ := hx
  refine ⟨s, a, hs, ha, ?_⟩
  have ha0 : algebraMap R F a ≠ 0 := by
    intro h0
    apply ha
    have h00 : a = 0 := IsFractionRing.injective R F (by rw [h0, map_zero])
    rw [h00]
    exact p.zero_mem
  have hx0 : x ≠ 0 := by
    rintro rfl
    apply ha0
    rw [← h, zero_mul]
  rw [← h, ← mul_assoc, inv_mul_cancel₀ hx0, one_mul]

omit [IsDomain R] [IsFractionRing R F] in
theorem unitAt_pow {x : F} (hx : UnitAt p x) (n : ℕ) : UnitAt p (x ^ n) := by
  induction n with
  | zero => rw [pow_zero]; exact unitAt_one
  | succ n ih => rw [pow_succ]; exact unitAt_mul ih hx

theorem unitAt_zpow {x : F} (hx : UnitAt p x) (n : ℤ) : UnitAt p (x ^ n) := by
  cases n with
  | ofNat n =>
    show UnitAt p (x ^ (n : ℤ))
    rw [zpow_natCast]
    exact unitAt_pow hx n
  | negSucc n =>
    rw [zpow_negSucc]
    exact unitAt_inv (unitAt_pow hx (n + 1))

omit [IsDomain R] [IsFractionRing R F] in
theorem unitAt_prod {κ : Type*} (s : Finset κ) (f : κ → F) (hf : ∀ i ∈ s, UnitAt p (f i)) :
    UnitAt p (∏ i ∈ s, f i) := by
  classical
  revert hf
  refine Finset.induction_on s ?_ ?_
  · intro _
    rw [Finset.prod_empty]
    exact unitAt_one
  · intro i s hi ih hf
    rw [Finset.prod_insert hi]
    exact unitAt_mul (hf i (Finset.mem_insert_self i s))
      (ih fun j hj => hf j (Finset.mem_insert_of_mem hj))

end LocAt

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem gen_prime' {q : Ideal (KTp K d.D d.N)} (hq : q ∈ d.HtOne) : Prime (d.gen q) :=
  ValUFD.gen_prime (fun p hp hh => d.gen_span ⟨hp, hh⟩) hq

theorem gen_not_mem {p q : Ideal (KTp K d.D d.N)} (hp : p ∈ d.HtOne) (hq : q ∈ d.HtOne)
    (hqp : q ≠ p) : d.gen q ∉ p := by
  intro hm
  rw [d.gen_span hp, Ideal.mem_span_singleton] at hm
  have e := (ValUFD.gen_dvd_iff (fun p hp hh => d.gen_span ⟨hp, hh⟩) hp (d.gen_prime' hq)).mp hm
  exact hqp (by rw [e, ← d.gen_span hq])

theorem split_at (E : Ideal (KTp K d.D d.N) → ℤ) (hE : {q | q ∈ d.HtOne ∧ E q ≠ 0}.Finite)
    {p : Ideal (KTp K d.D d.N)} (hp : p ∈ d.HtOne) :
    ∃ V : KTf K d.D d.N, LocAt.UnitAt p V ∧
      (∏ᶠ (q : Ideal (KTp K d.D d.N)) (_ : q ∈ d.HtOne),
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q) ^ E q) =
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ^ E p * V := by
  haveI := hp.1
  have hfin : ((d.HtOne \ {p}) ∩ Function.mulSupport
      (fun q => algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q) ^ E q)).Finite := by
    refine hE.subset ?_
    rintro q ⟨⟨hq, _⟩, hq1⟩
    refine ⟨hq, fun h0 => (Function.mem_mulSupport.mp hq1) ?_⟩
    simp [h0]
  refine ⟨∏ᶠ (q : Ideal (KTp K d.D d.N)) (_ : q ∈ d.HtOne \ {p}), algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q) ^ E q, ?_, ?_⟩
  · rw [← finprod_mem_inter_mulSupport, finprod_mem_eq_finite_toFinset_prod _ hfin]
    apply LocAt.unitAt_prod
    intro q hq
    rw [Set.Finite.mem_toFinset] at hq
    obtain ⟨⟨hq1, hq2⟩, _⟩ := hq
    exact LocAt.unitAt_zpow
      (LocAt.unitAt_alg (d.gen_not_mem hp hq1 (fun h => hq2 (Set.mem_singleton_iff.mpr h)))) _
  · have hins : d.HtOne = insert p (d.HtOne \ {p}) := by
      ext x
      by_cases hx : x = p
      · subst hx
        simp [hp]
      · simp [hx]
    conv_lhs => rw [hins]
    rw [finprod_mem_insert' _ (by simp) hfin]

theorem b_mem_p (hd : d.AxH 𝒜) (h : d.S1) {p : Ideal (KTp K d.D d.N)} (hp : p ∈ d.HtOne)
    (k : Fin d.del) (c : ι) (w : AddValuation (OmS (Ω c) d.D d.N) (WithTop ℤ))
    (hw : w ∈ d.GoodP c p) :
    0 ≤ w (d.bvecG hd.sel hd.a4.choose k c) +
      ((d.ord c (d.Wres c w) d.wF (hd.a4.choose c) : ℤ) : WithTop ℤ) := by
  classical
  obtain ⟨he, -, -⟩ := hd.a4.choose_spec
  obtain ⟨heF, he0⟩ := he c
  have hadm := d.good_adm hd h c hp hw
  have hthpF : d.thp (hd.sel k) c ∈ 𝒜 c d.wF := hd.thp_mem _ c
  obtain ⟨a, ha⟩ : ∃ a : Ω c, d.thp (hd.sel k) c = a • hd.a4.choose c := by
    have he0' : (⟨hd.a4.choose c, heF⟩ : 𝒜 c d.wF) ≠ 0 := by
      intro h0; exact he0 (congrArg Subtype.val h0)
    obtain ⟨a, ha⟩ := (finrank_eq_one_iff_of_nonzero' _ he0').mp (hd.finrank_one c d.wF)
      ⟨_, hthpF⟩
    exact ⟨a, (congrArg Subtype.val ha).symm⟩
  have hb : d.bvecG hd.sel hd.a4.choose k c = algebraMap (Ω c) (OmS (Ω c) d.D d.N) a := by
    simp only [bvecG]
    rw [ValuationResidueLemmas.ratio_eq he0 ha]
  rw [hb]
  change 0 ≤ d.Wres c w a + _
  by_cases ha0 : a = 0
  · rw [ha0, AddValuation.map_zero, top_add]
    exact le_top
  have hth0 : d.thp (hd.sel k) c ≠ 0 := by
    rw [ha]; exact smul_ne_zero ha0 he0
  rw [← hd.ord_smul c _ hadm a heF he0 ha0, ← ha]
  have hmem : d.thp (hd.sel k) ∈ d.Thp := by
    rw [hd.Thp_span]; exact Submodule.subset_span ⟨_, rfl⟩
  exact_mod_cast hd.ord_nonneg_Thp c _ hadm _ hmem hth0

theorem de_local (hd : d.AxH 𝒜) (h : d.S1) {p : Ideal (KTp K d.D d.N)} (hp : p ∈ d.HtOne) :
    LocAt.IntAt p (d.De hd h * algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ^
      (2 * ∑ c, d.nP h c d.wF (hd.a4.choose c) p)) := by
  classical
  letI : ∀ c, Algebra (KTf K d.D d.N) (OmS (Ω c) d.D d.N) := fun c => (d.KTtoS h c).toAlgebra
  haveI : ∀ c, FiniteDimensional (KTf K d.D d.N) (OmS (Ω c) d.D d.N) := fun c => by
    haveI := d.KT_finiteDimensional hd c
    let e : KTf K d.D d.N ≃+* d.KT c :=
      (d.KTtoS h c).rangeRestrictFieldEquiv.trans (RingEquiv.subfieldCongr (d.KTtoS_fieldRange h c))
    apply Module.Finite.of_equiv_equiv e.symm (RingEquiv.refl (OmS (Ω c) d.D d.N))
    refine RingHom.ext fun x => ?_
    change d.KTtoS h c (e.symm x) = (x : OmS (Ω c) d.D d.N)
    exact congrArg (fun y : d.KT c => (y : OmS (Ω c) d.D d.N)) (e.apply_symm_apply x)
  haveI : CharZero (KTf K d.D d.N) :=
    charZero_of_injective_algebraMap (algebraMap K (KTf K d.D d.N)).injective
  haveI : ∀ c, Algebra.IsSeparable (KTf K d.D d.N) (OmS (Ω c) d.D d.N) := fun c =>
    Algebra.IsSeparable.of_integral _ _
  haveI := hp.1
  have hsH : ∀ c x, d.sH c x = algebraMap (KTf K d.D d.N) (OmS (Ω c) d.D d.N)
      (algebraMap (KTp K d.D d.N) (KTf K d.D d.N) x) := fun c x =>
    (IsFractionRing.lift_algebraMap (A := KTp K d.D d.N) (g := (d.sH c).toRingHom) (h c) x).symm
  have hOver : ∀ c, d.OverP c p =
      HNm.OverR (R := KTp K d.D d.N) (F := KTf K d.D d.N)
        (L := OmS (Ω c) d.D d.N) p := by
    intro c; ext w; simp only [OverP, HNm.OverR, Set.mem_ofPred_eq, hsH]
  let n : ∀ c, AddValuation (OmS (Ω c) d.D d.N) (WithTop ℤ) → ℤ := fun c w =>
    if w ∈ d.GoodP c p then d.ord c (d.Wres c w) d.wF (hd.a4.choose c) else 0
  have hb : ∀ k c, ∀ w ∈ HNm.OverR (R := KTp K d.D d.N) (F := KTf K d.D d.N)
      (L := OmS (Ω c) d.D d.N) p,
      0 ≤ w (d.bvecG hd.sel hd.a4.choose k c) + (n c w : WithTop ℤ) := by
    intro k c w hw
    rw [← hOver c] at hw
    by_cases hg : w ∈ d.GoodP c p
    · simp only [n, if_pos hg]
      exact d.b_mem_p hd h hp k c w hg
    · simp only [n, if_neg hg, WithTop.coe_zero, add_zero]
      have hz : ∀ a : Ω c, a ≠ 0 → d.Wres c w a = 0 := fun a ha =>
        by_contra fun hne => hg ⟨hw, a, ha, hne⟩
      change 0 ≤ d.Wres c w _
      by_cases hr : ratio (Ω := Ω c) (d.thp (hd.sel k) c) (hd.a4.choose c) = 0
      · rw [hr, AddValuation.map_zero]; exact le_top
      · rw [hz _ hr]
  have hexp : ∀ c, (∑ᶠ (w : AddValuation (OmS (Ω c) d.D d.N) (WithTop ℤ))
      (_ : w ∈ HNm.OverR (R := KTp K d.D d.N) (F := KTf K d.D d.N)
        (L := OmS (Ω c) d.D d.N) p),
        (HNm.fz (F := KTf K d.D d.N) w : ℤ) * n c w) = d.nP h c d.wF (hd.a4.choose c) p := by
    intro c
    rw [← hOver c]
    simp only [nP]
    rw [finsum_mem_def, finsum_mem_def]
    refine finsum_congr fun w => ?_
    simp only [Set.indicator_apply, n]
    by_cases hg : w ∈ d.GoodP c p
    · have hg1 : w ∈ d.OverP c p := hg.1
      simp only [hg, hg1, if_true]
      rfl
    · simp only [hg, if_false, mul_zero, ite_self]
  open IsDedekindDomain IsLocalRing Module in
  have disc_local {R F : Type} [CommRing R] [IsDomain R] [UniqueFactorizationMonoid R] [Field F]
        [Algebra R F] [IsFractionRing R F] {ι : Type} [Fintype ι] [DecidableEq ι]
        {L : ι → Type} [∀ c, Field (L c)] [∀ c, Algebra F (L c)]
        [∀ c, FiniteDimensional F (L c)] [∀ c, Algebra.IsSeparable F (L c)] (p : Ideal R) [p.IsPrime] (hp : p.height = 1) (g : R) (hg : p = Ideal.span {g})
      (n : ∀ c, AddValuation (L c) (WithTop ℤ) → ℤ)
      {m : ℕ} (hm : m = ∑ c, finrank F (L c)) (b : Fin m → ∀ c, L c) (hli : LinearIndependent F b)
      (hb : ∀ k c, ∀ w ∈ HNm.OverR (R := R) (F := F) (L := L c) p,
        0 ≤ w (b k c) + (n c w : WithTop ℤ)) :
      ∃ a s : R, s ∉ p ∧
        (Matrix.of fun k l : Fin m => ∑ c, Algebra.trace F (L c) (b k c * b l c)).det *
          algebraMap R F g ^ (2 * ∑ c, ∑ᶠ (w : AddValuation (L c) (WithTop ℤ))
            (_ : w ∈ HNm.OverR (R := R) (F := F) (L := L c) p), (HNm.fz (F := F) w : ℤ) * n c w) *
          algebraMap R F s =
          algebraMap R F a := by
    classical
    let O := Localization.AtPrime p
    letI : Algebra O F := IsLocalization.localizationAlgebraOfSubmonoidLe O F p.primeCompl
      (nonZeroDivisors R) (Ideal.primeCompl_le_nonZeroDivisors p)
    haveI : IsScalarTower R O F := IsLocalization.localization_isScalarTower_of_submonoid_le O F
      p.primeCompl (nonZeroDivisors R) (Ideal.primeCompl_le_nonZeroDivisors p)
    haveI : IsFractionRing O F :=
      IsFractionRing.isFractionRing_of_isDomain_of_isLocalization p.primeCompl O F
    obtain ⟨hdvr, hirr⟩ := ValUFD.loc_dvr p hp g hg
    haveI := hdvr
    letI : ∀ c, Algebra O (L c) := fun c => ((algebraMap F (L c)).comp (algebraMap O F)).toAlgebra
    haveI : ∀ c, IsScalarTower O F (L c) := fun c => IsScalarTower.of_algebraMap_eq' rfl
    letI : ∀ c, Algebra R (L c) := fun c => ((algebraMap F (L c)).comp (algebraMap R F)).toAlgebra
    haveI : ∀ c, IsScalarTower R O (L c) := fun c => IsScalarTower.of_algebraMap_eq (fun x => by
      show algebraMap F (L c) (algebraMap R F x) =
        algebraMap F (L c) (algebraMap O F (algebraMap R O x))
      rw [IsScalarTower.algebraMap_apply R O F x])
    have hded : ∀ c, IsDedekindDomain (integralClosure O (L c)) := fun c =>
      (ReciprocityTheory.MultiplicativeHeights.Closed.dedekindRank O F (L c)).1
    have hfr : ∀ c, IsFractionRing (integralClosure O (L c)) (L c) := fun c =>
      integralClosure.isFractionRing_of_finite_extension F (L c)
    have hset : ∀ c, ValPl.PlacesOver O (L c) = HNm.OverR (R := R) (F := F) (L := L c) p := fun c => by
      ext w
      simp only [ValPl.PlacesOver, HNm.OverR, Set.mem_ofPred_eq]
      rw [← ValPl.placesOver_iff_loc (R := R) p w]
      rfl
    have hG : ∀ c, ∃ gc : L c, gc ≠ 0 ∧ (∀ w ∈ ValPl.PlacesOver O (L c), w gc = n c w) ∧
        ∀ y, (∀ w ∈ ValPl.PlacesOver O (L c), 0 ≤ w y + (n c w : WithTop ℤ)) ↔
          gc * y ∈ integralClosure O (L c) := fun c => by
      haveI := hded c
      haveI := hfr c
      obtain ⟨gc, hg0, hgv⟩ := HDiscVal.exists_val_eq O F (n c)
      refine ⟨gc, hg0, hgv, fun y => ?_⟩
      rw [HDiscVal.mem_integralClosure_iff O F]
      refine forall₂_congr fun w hw => ?_
      rw [AddValuation.map_mul, hgv w hw, add_comm]
    choose gc hgc0 hgcv hgciff using hG
    have hbI : ∀ k c, gc c * b k c ∈ integralClosure O (L c) := fun k c =>
      (hgciff c _).mp (fun w hw => hb k c w (hset c ▸ hw))
    obtain ⟨nn, t, u, -, hdisc⟩ := HDiscLat.lattice_main (R := O) (F := F) hirr gc hgc0 hm b hbI hli
    set Nc : ι → ℤ := fun c => ∑ᶠ (w : AddValuation (L c) (WithTop ℤ))
      (_ : w ∈ HNm.OverR (R := R) (F := F) (L := L c) p), (HNm.fz (F := F) w : ℤ) * n c w with hNc
    have hN : ∀ c, ∃ uc : O, IsUnit uc ∧ Algebra.norm F (gc c) =
        algebraMap R F g ^ Nc c * algebraMap O F uc := fun c => by
      haveI := hded c
      haveI := hfr c
      obtain ⟨uc, huc, hn⟩ := ValPl.norm_eq_places (O := O) (F := F) (gc c) (hgc0 c) hirr
      refine ⟨uc, huc, ?_⟩
      rw [hn, ← IsScalarTower.algebraMap_apply R O F g, hset c]
      congr 2
      refine finsum_congr fun w => finsum_congr fun hw => ?_
      rw [← hset c] at hw
      rw [hgcv c w hw, WithTop.untopD_coe]
      rfl
    choose uc huc hNe using hN
    set X := algebraMap R F g with hX
    have hX0 : X ≠ 0 := by
      rw [hX, map_ne_zero_iff _ (IsFractionRing.injective R F)]
      rintro rfl
      have : p = ⊥ := by rw [hg, Ideal.span_singleton_eq_bot]
      subst this
      simp at hp
    let U : Oˣ := ∏ c, (huc c).unit
    have hprod : ∏ c, Algebra.norm F (gc c) = X ^ (∑ c, Nc c) * algebraMap O F (U : O) := by
      rw [Finset.prod_congr rfl fun c _ => hNe c, Finset.prod_mul_distrib, HDiscOmL.prod_zpow hX0,
        ← map_prod]
      congr 2
      simp only [U, Units.coe_prod, IsUnit.unit_spec]
    rw [hprod] at hdisc
    set Dt := (Matrix.of fun k l : Fin m => ∑ c, Algebra.trace F (L c) (b k c * b l c)).det with hDt
    obtain ⟨⟨a, s⟩, has⟩ := IsLocalization.mk'_surjective p.primeCompl
      ((u : O) * ((algebraMap R O g) ^ (2 * nn + t)) * ((U⁻¹ : Oˣ) : O) * ((U⁻¹ : Oˣ) : O))
    refine ⟨a, s, s.2, ?_⟩
    have hsF : algebraMap O F (IsLocalization.mk' O a s) * algebraMap R F s = algebraMap R F a := by
      rw [IsScalarTower.algebraMap_apply R O F s, IsScalarTower.algebraMap_apply R O F a, ← map_mul,
        IsLocalization.mk'_spec]
    simp only at has
    rw [← hsF, has]
    congr 1
    set V := algebraMap O F (U : O)
    set V' := algebraMap O F ((U⁻¹ : Oˣ) : O)
    have hU : V * V' = 1 := by
      simp only [V, V']
      rw [← map_mul, Units.mul_inv, map_one]
    have h2 : X ^ (2 * ∑ c, Nc c) = (X ^ (∑ c, Nc c)) ^ 2 := by
      rw [mul_comm, zpow_mul]
      norm_cast
    have e1 : algebraMap O F ((u : O) * (algebraMap R O g) ^ (2 * nn + t) * ((U⁻¹ : Oˣ) : O) *
        ((U⁻¹ : Oˣ) : O)) = algebraMap O F ((u : O) * (algebraMap R O g) ^ (2 * nn + t)) * V' * V' := by
      simp only [V', map_mul]
    rw [h2, e1, ← hdisc]
    calc Dt * (X ^ ∑ c, Nc c) ^ 2 = Dt * (X ^ ∑ c, Nc c) ^ 2 * (V * V') * (V * V') := by
          rw [hU]; ring
      _ = Dt * ((X ^ ∑ c, Nc c) * V) ^ 2 * V' * V' := by ring
  obtain ⟨a, s, hs, he⟩ := disc_local (R := KTp K d.D d.N) (F := KTf K d.D d.N)
    (L := fun c => OmS (Ω c) d.D d.N) p hp.2 (d.gen p) (d.gen_span hp) n (d.del_eq hd h)
    (d.bvecG hd.sel hd.a4.choose) (d.b_linIndep hd h) hb
  refine ⟨a, s, hs, ?_⟩
  rw [← he]
  simp only [hexp]
  rfl

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.UnitAtIntAt =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FprodNeZero =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FprodNeZero", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscBDefs\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ScaleMultiHomogeneous\nimport Mathlib.Algebra.Algebra.Field\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.LocalProperties.Reduced\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.AGFrameNonneg\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DePres\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscLocal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.GoodPrimesProperties\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.Hartogs\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ProdZpowEqZpowSum\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.UnitAtIntAt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValUFD\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.BlockDegOfScale\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.style.haveILetI false

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

private theorem gen_ne_zero_of_mem_htOne_heightData {p : Ideal (KTp K d.D d.N)} (hp : p ∈ d.HtOne) : d.gen p ≠ 0 := by
  obtain ⟨hpr, hht⟩ := hp
  have hne : p ≠ ⊥ := by
    rintro rfl
    first
      | (simp at hht; done)
  obtain ⟨q, hqp, hq⟩ := hpr.exists_mem_prime_of_ne_bot hne
  have hqi : (Ideal.span {q}).IsPrime := (Ideal.span_singleton_prime hq.ne_zero).mpr hq
  have hle : Ideal.span {q} ≤ p := (Ideal.span_singleton_le_iff_mem p).mpr hqp
  have hbot : (⊥ : Ideal (KTp K d.D d.N)) < Ideal.span {q} :=
    bot_lt_iff_ne_bot.mpr (by simpa using hq.ne_zero)
  haveI := hpr
  haveI := hqi
  have hspan : Ideal.span {q} = p := by
    by_contra hne'
    have hlt : Ideal.span {q} < p := lt_of_le_of_ne hle hne'
    have h3 : (Ideal.span {q}).height < 1 := by
      have hp1 : p.height ≤ (1 : ℕ) := by rw [hht]; rfl
      exact (Ideal.height_le_iff.mp hp1) _ hqi hlt
    have h0 : (Ideal.span {q}).height ≤ (0 : ℕ) := by
      rw [ENat.lt_one_iff_eq_zero] at h3
      rw [h3]; rfl
    have h2 := (Ideal.height_le_iff.mp h0) ⊥ Ideal.isPrime_bot hbot
    first
      | (simp at h2; done)
  have hprin : p.IsPrincipal := ⟨⟨q, hspan.symm⟩⟩
  haveI := hprin
  simp only [Data.gen, dif_pos hprin]
  intro h0
  exact hne ((Submodule.IsPrincipal.eq_bot_iff_generator_eq_zero p).mpr h0)

theorem fprod_ne_zero (E : Ideal (KTp K d.D d.N) → ℤ) (hE : {q | q ∈ d.HtOne ∧ E q ≠ 0}.Finite) :
    (∏ᶠ (q : Ideal (KTp K d.D d.N)) (_ : q ∈ d.HtOne),
      algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q) ^ E q) ≠ 0 := by
  refine finprod_mem_induction (fun x => x ≠ 0) one_ne_zero (fun x y hx hy => mul_ne_zero hx hy) ?_
  intro q hq
  apply zpow_ne_zero
  have hg := gen_ne_zero_of_mem_htOne_heightData d hq
  first
    | exact (map_ne_zero_iff _ (IsFractionRing.injective _ _)).mpr hg

theorem sig_fprod (E : Ideal (KTp K d.D d.N) → ℤ) (hE : {q | q ∈ d.HtOne ∧ E q ≠ 0}.Finite)
    (hg : ∀ q ∈ d.HtOne, E q ≠ 0 → ReciprocityTheory.MultiplicativeHeights.IsMultiHomogeneous
      (fun b : Fin (d.D + 1) => if b = 0 then 0 else d.dg (d.gen q)) (d.gen q))
    (bb : Fin (d.D + 1)) (u : Kˣ) :
    sigF (K := K) (D := d.D) (N := d.N) bb u (∏ᶠ (q : Ideal (KTp K d.D d.N)) (_ : q ∈ d.HtOne),
      algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q) ^ E q) =
      algebraMap K (KTf K d.D d.N) (u : K) ^ (∑ᶠ (q : Ideal (KTp K d.D d.N)) (_ : q ∈ d.HtOne),
        E q * ((if bb = 0 then 0 else d.dg (d.gen q) : ℕ) : ℤ)) *
      ∏ᶠ (q : Ideal (KTp K d.D d.N)) (_ : q ∈ d.HtOne),
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q) ^ E q := by
  classical
  have h1 : d.HtOne ∩ Function.mulSupport (fun q =>
      algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q) ^ E q) ⊆ hE.toFinset := by
    rintro q ⟨hq, hs⟩
    rw [Set.Finite.coe_toFinset]
    exact ⟨hq, fun h0 => hs (by simp only [h0, zpow_zero])⟩
  have h1' : d.HtOne ∩ Function.support (fun q =>
      E q * ((if bb = 0 then 0 else d.dg (d.gen q) : ℕ) : ℤ)) ⊆ hE.toFinset := by
    rintro q ⟨hq, hs⟩
    rw [Set.Finite.coe_toFinset]
    exact ⟨hq, fun h0 => hs (by simp only [h0, zero_mul])⟩
  have h2 : (hE.toFinset : Set (Ideal (KTp K d.D d.N))) ⊆ d.HtOne := by
    intro q hq
    rw [Set.Finite.coe_toFinset] at hq
    exact hq.1
  rw [finprod_mem_eq_prod_of_subset _ h1 h2, finsum_mem_eq_sum_of_subset _ h1' h2, map_prod]
  have hκ : algebraMap K (KTf K d.D d.N) (u : K) ≠ 0 :=
    (map_ne_zero _).mpr u.ne_zero
  rw [← HDiscOmL.prod_zpow hκ, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun q hq => ?_
  have hq' : q ∈ d.HtOne ∧ E q ≠ 0 := by
    rw [Set.Finite.mem_toFinset] at hq
    exact hq
  have hs : sigP (N := d.N) bb u (d.gen q) =
      MvPolynomial.C ((u : K) ^ (if bb = 0 then 0 else d.dg (d.gen q))) * d.gen q :=
    scale_multiHomogeneous bb u (fun b : Fin (d.D + 1) => if b = 0 then 0 else d.dg (d.gen q))
      (d.gen q) (hg q hq'.1 hq'.2)
  have hs' : sigF (K := K) (D := d.D) (N := d.N) bb u
      (algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q)) =
      algebraMap K (KTf K d.D d.N) (u : K) ^ ((if bb = 0 then 0 else d.dg (d.gen q) : ℕ) : ℤ) *
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q) := by
    rw [d.sigF_algebraMap, hs, map_mul, ← d.algebraMap_K_KTf, map_pow, zpow_natCast]
  rw [map_zpow₀, hs', mul_zpow, ← zpow_mul, mul_comm (E q)]

theorem om_is_poly (hd : d.AxH 𝒜) (h : d.S1) :
    ∃ Om : KTp K d.D d.N, algebraMap (KTp K d.D d.N) (KTf K d.D d.N) Om = d.omE hd h ∧ Om ≠ 0 ∧
      ReciprocityTheory.MultiplicativeHeights.IsMultiHomogeneous
        (fun b : Fin (d.D + 1) => if b = 0 then 0 else 2 * (d.aG h d.wF hd.a4.choose).toNat) Om := by
  classical
  obtain ⟨he, -, -⟩ := hd.a4.choose_spec
  have hfin : ∀ c, {q | q ∈ d.HtOne ∧ d.nP h c d.wF (hd.a4.choose c) q ≠ 0}.Finite := fun c =>
    (d.good_primes_properties hd h c).2.2.1 d.wF (hd.a4.choose c) (he c).1 (he c).2

  have hint : ∀ p ∈ d.HtOne, LocAt.IntAt p (d.omE hd h) := by
    intro p hp
    haveI := hp.1
    have hs : ∀ c, ∃ V : KTf K d.D d.N, LocAt.UnitAt p V ∧
        (∏ᶠ (q : Ideal (KTp K d.D d.N)) (_ : q ∈ d.HtOne),
          algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen q) ^ d.nP h c d.wF (hd.a4.choose c) q) =
        algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ^ d.nP h c d.wF (hd.a4.choose c) p * V :=
      fun c => d.split_at _ (hfin c) hp
    choose V hV hVe using hs
    have hX0 : algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ≠ 0 :=
      (map_ne_zero_iff _ (IsFractionRing.injective _ _)).mpr (d.gen_prime' hp).ne_zero
    have hf : d.fDivE hd h = algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ^
        (∑ c, d.nP h c d.wF (hd.a4.choose c) p) * ∏ c, V c := by
      simp only [fDivE]
      rw [Finset.prod_congr rfl fun c _ => hVe c, Finset.prod_mul_distrib, HDiscOmL.prod_zpow hX0]
    have h2 : algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ^
        (2 * ∑ c, d.nP h c d.wF (hd.a4.choose c) p) =
        (algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ^
          (∑ c, d.nP h c d.wF (hd.a4.choose c) p)) ^ 2 := by
      rw [mul_comm, zpow_mul]
      norm_cast
    have hom : d.omE hd h = (d.De hd h * algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (d.gen p) ^
        (2 * ∑ c, d.nP h c d.wF (hd.a4.choose c) p)) * (∏ c, V c) ^ 2 := by
      rw [omE, hf, h2]
      ring
    rw [hom]
    exact LocAt.intAt_mul (d.de_local hd h hp)
      (LocAt.unitAt_intAt (LocAt.unitAt_pow (LocAt.unitAt_prod _ _ fun c _ => hV c) 2))
  obtain ⟨Om, hOm⟩ := ufd_mem_of_forall_prime (R := KTp K d.D d.N) (d.omE hd h) (fun q hq => by
    have hp : Ideal.span {q} ∈ d.HtOne :=
      ⟨(Ideal.span_singleton_prime hq.ne_zero).mpr hq, ValUFD.height_span_prime hq⟩
    obtain ⟨a, s, hs, e⟩ := hint _ hp
    exact ⟨a, s, fun hdv => hs (Ideal.mem_span_singleton.mpr hdv), e⟩)

  have hf0 : d.fDivE hd h ≠ 0 := by
    simp only [fDivE]
    rw [Finset.prod_ne_zero_iff]
    exact fun c _ => d.fprod_ne_zero _ (hfin c)
  have hom0 : d.omE hd h ≠ 0 :=
    mul_ne_zero (d.disc_lattice hd h).1 (pow_ne_zero 2 hf0)
  have hOm0 : Om ≠ 0 := by
    rintro rfl
    rw [map_zero] at hOm
    exact hom0 hOm
  refine ⟨Om, hOm.symm, hOm0, ?_⟩

  obtain ⟨a, b, hb0, hab, m, -, ha, hbm⟩ := d.de_pres hd h
  have hsigDe : ∀ (bb : Fin (d.D + 1)) (u : Kˣ),
      sigF (K := K) (D := d.D) (N := d.N) bb u (d.De hd h) = d.De hd h := by
    intro bb u
    have e1 := congrArg (sigF (K := K) (D := d.D) (N := d.N) bb u) hab
    have sa : sigP (N := d.N) bb u a = MvPolynomial.C ((u : K) ^ m bb) * a :=
      scale_multiHomogeneous bb u m a ha
    have sb : sigP (N := d.N) bb u b = MvPolynomial.C ((u : K) ^ m bb) * b :=
      scale_multiHomogeneous bb u m b hbm
    rw [d.sigF_algebraMap, map_mul, d.sigF_algebraMap, sa, sb, map_mul, map_mul, hab,
      ← d.algebraMap_K_KTf] at e1
    have hC : algebraMap K (KTf K d.D d.N) ((u : K) ^ m bb) ≠ 0 :=
      (map_ne_zero _).mpr (pow_ne_zero _ u.ne_zero)
    have hB : algebraMap (KTp K d.D d.N) (KTf K d.D d.N) b ≠ 0 :=
      (map_ne_zero_iff _ (IsFractionRing.injective _ _)).mpr hb0
    apply mul_right_cancel₀ (mul_ne_zero hC hB)
    linear_combination -e1
  set Eb : Fin (d.D + 1) → ℤ := fun bb => ∑ c, ∑ᶠ (q : Ideal (KTp K d.D d.N)) (_ : q ∈ d.HtOne),
    d.nP h c d.wF (hd.a4.choose c) q * ((if bb = 0 then 0 else d.dg (d.gen q) : ℕ) : ℤ) with hEb
  have hsigf : ∀ (bb : Fin (d.D + 1)) (u : Kˣ),
      sigF (K := K) (D := d.D) (N := d.N) bb u (d.fDivE hd h) =
        algebraMap K (KTf K d.D d.N) (u : K) ^ Eb bb * d.fDivE hd h := by
    intro bb u
    have hκ : algebraMap K (KTf K d.D d.N) (u : K) ≠ 0 := (map_ne_zero _).mpr u.ne_zero
    simp only [fDivE, hEb]
    rw [map_prod, Finset.prod_congr rfl fun c _ => d.sig_fprod _ (hfin c) (fun q hq hn =>
      (d.good_primes_properties hd h c).2.1 q hq (by
        by_contra hno
        apply hn
        simp only [nP]
        rw [finsum_mem_def]
        refine finsum_eq_zero_of_forall_eq_zero fun w => ?_
        rw [Set.indicator_apply, if_neg (fun hw => hno ⟨w, hw⟩)])) bb u,
      Finset.prod_mul_distrib, HDiscOmL.prod_zpow hκ]
  have hEb : ∀ bb : Fin (d.D + 1), 2 * Eb bb =
      ((if bb = 0 then 0 else 2 * (d.aG h d.wF hd.a4.choose).toNat : ℕ) : ℤ) := by
    intro bb
    by_cases hbb : bb = 0
    · simp [hEb, hbb]
    · simp only [hEb, hbb, if_false]
      rw [Nat.cast_mul, Int.toNat_of_nonneg (d.aG_frame_nonneg hd h)]
      rfl
  intro s hs bb
  refine block_deg_of_scale bb _ Om (fun u => ?_) s hs
  apply IsFractionRing.injective (KTp K d.D d.N) (KTf K d.D d.N)
  change algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (sigP (N := d.N) bb u Om) =
    algebraMap (KTp K d.D d.N) (KTf K d.D d.N) (MvPolynomial.C ((u : K) ^
      (if bb = 0 then 0 else 2 * (d.aG h d.wF hd.a4.choose).toNat)) * Om)
  rw [← d.sigF_algebraMap, map_mul, ← hOm, ← d.algebraMap_K_KTf, map_pow, ← zpow_natCast, ← hEb bb]
  have hk : algebraMap K (KTf K d.D d.N) (u : K) ^ (2 * Eb bb) =
      (algebraMap K (KTf K d.D d.N) (u : K) ^ Eb bb) ^ 2 := by
    rw [mul_comm, zpow_mul]
    norm_cast
  simp only [omE]
  rw [map_mul, map_pow, hsigDe, hsigf, hk]
  ring

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FprodNeZero =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.OmPoly =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.OmPoly", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscBDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.AGFrameNonneg\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DePres\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FprodNeZero\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem om_poly (hd : d.AxH 𝒜) (h : d.S1) :
    0 ≤ d.aG h d.wF hd.a4.choose ∧ (∃ a b : KTp K d.D d.N, d.IsPres hd h a b) ∧
    ∃ Om : KTp K d.D d.N, algebraMap (KTp K d.D d.N) (KTf K d.D d.N) Om = d.omE hd h ∧ Om ≠ 0 ∧
      ReciprocityTheory.MultiplicativeHeights.IsMultiHomogeneous
        (fun b : Fin (d.D + 1) => if b = 0 then 0 else 2 * (d.aG h d.wF hd.a4.choose).toNat) Om := by
  exact ⟨d.aG_frame_nonneg hd h, d.de_pres hd h, d.om_is_poly hd h⟩

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.OmPoly =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscB =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscB", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscDefs\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HtDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscHadamard\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.DiscProduct\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HFour\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.NormFactorizationClause\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.OmPoly\nimport ReciprocityTheory.SemistableReduction.TorusL2CauchyInequality\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem disc_global (hd : d.AxH 𝒜) (h : d.S1) (hI2be : d.HeightIntegralBoundEstimate) (ta' : ∀ c, A c)
    (hta' : ∀ c, ta' c ∈ 𝒜 c d.wF ∧ ta' c ≠ 0) :
    (Function.support fun la => d.gOrd la (d.De hd h)).Finite ∧
    (Function.support fun la => d.NlaG h d.wF hd.a4.choose la).Finite ∧
    (∑ᶠ la, ((d.gOrd la (d.De hd h) : ℝ) + 2 * d.NlaG h d.wF hd.a4.choose la) * logNorm la) /
      (Module.finrank ℚ K : ℝ) ≤
      d.del * Real.log d.del +
        2 * ∑ k, meanK (fun sg => Real.log (d.supN sg d.wF (d.thp (hd.sel k)))) +
        2 * d.D * d.aG h d.wF ta' * (Real.log (d.N + 1 : ℕ) + 1 / 2) + 2 * d.Hgt h d.wF ta' := by
  obtain ⟨haG0, ⟨a, b, hab⟩, Om, hOm, hOm0, hOmH⟩ := d.om_poly hd h
  obtain ⟨hs1, hs2, heq⟩ := d.disc_product hd h hI2be a b hab Om hOm
  refine ⟨hs1, hs2, ?_⟩
  rw [heq]
  have ha4 : ∀ c, hd.a4.choose c ∈ 𝒜 c d.wF ∧ hd.a4.choose c ≠ 0 := by
    first
    | exact hd.a4.choose_spec.1
  have hH : d.Hgt h d.wF hd.a4.choose = d.Hgt h d.wF ta' :=
    (d.h_ind hd h hI2be).1 d.wF hd.a4.choose ta' (by simp) ha4 hta'
  have haG : d.aG h d.wF hd.a4.choose = d.aG h d.wF ta' :=
    (d.arithDegree_additive hd h).1 d.wF hd.a4.choose ta' ha4 hta'
  have hcard : (0 : ℝ) < (Fintype.card (K →+* ℂ) : ℝ) := by
    have hc : 0 < Fintype.card (K →+* ℂ) := by
      first
      | (rw [NumberField.Embeddings.card]; exact Module.finrank_pos)
    exact_mod_cast hc
  have hmean : meanK (fun sg => d.mSgP sg a b - 2 * d.Nsg d.wF hd.a4.choose sg) ≤
      d.del * Real.log d.del +
        2 * ∑ k, meanK (fun sg => Real.log (d.supN sg d.wF (d.thp (hd.sel k)))) := by
    unfold meanK
    rw [div_le_iff₀ hcard]
    calc ∑ sg, (d.mSgP sg a b - 2 * d.Nsg d.wF hd.a4.choose sg)
        ≤ ∑ sg, (d.del * Real.log d.del +
            2 * ∑ k, Real.log (d.supN sg d.wF (d.thp (hd.sel k)))) :=
          Finset.sum_le_sum fun sg _ => d.disc_hadamard hd h hI2be a b hab sg
      _ = (d.del * Real.log d.del + 2 * ((∑ k, ∑ sg,
            Real.log (d.supN sg d.wF (d.thp (hd.sel k)))) / (Fintype.card (K →+* ℂ) : ℝ))) *
            (Fintype.card (K →+* ℂ) : ℝ) := by
          rw [Finset.sum_add_distrib, Finset.sum_const, Finset.card_univ, nsmul_eq_mul,
            ← Finset.mul_sum, Finset.sum_comm, add_mul, mul_assoc (2 : ℝ),
            div_mul_cancel₀ _ hcard.ne']
          ring
      _ = _ := by rw [Finset.sum_div]
  have hh0 : -(ReciprocityTheory.MultiplicativeHeights.h0 Om) ≤
      2 * d.D * d.aG h d.wF hd.a4.choose * (Real.log (d.N + 1 : ℕ) + 1 / 2) := by
    have h1 := ReciprocityTheory.MultiplicativeHeights.Closed.sphere_height_lower_bound K (d.D + 1) (d.N + 1) _ Om (Nat.succ_pos _) hOm0 hOmH
    have ht : ((d.aG h d.wF hd.a4.choose).toNat : ℝ) = (d.aG h d.wF hd.a4.choose : ℝ) := by
      exact_mod_cast Int.toNat_of_nonneg haG0
    simp only [Fin.sum_univ_succ, Fin.succ_ne_zero, if_true, if_false,
      Nat.cast_zero, zero_mul, zero_add, Finset.sum_const,
      Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, Nat.cast_mul, Nat.cast_ofNat] at h1
    rw [ht] at h1
    linear_combination h1
  rw [hH, ← haG]
  linarith [hmean, hh0]

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscB =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.NlNonnegFin =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.NlNonnegFin", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.GenericSectionOfAxioms\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HtDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HDiscB\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HFour\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HPlaces\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.IntNsg\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValuationResidueLemmas\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem isOver_unique {Ωc : Type*} [Field Ωc] [Algebra K Ωc] (v : AddValuation Ωc (WithTop ℤ))
    (la la' : IsDedekindDomain.HeightOneSpectrum (𝓞 K)) (h1 : IsOver (K := K) v la)
    (h2 : IsOver (K := K) v la') : la = la' :=
  IsDedekindDomain.HeightOneSpectrum.ext (Ideal.ext fun a => (h1 a).symm.trans (h2 a))

theorem nl_nonneg_fin (hd : d.AxH 𝒜) (h : d.S1) :
    (∀ la, 0 ≤ d.Nl h la) ∧ (Function.support (d.Nl h)).Finite := by
  refine ⟨fun la => ?_, ?_⟩
  · unfold Data.Nl
    refine Finset.sum_nonneg fun c _ => finsum_nonneg fun w => finsum_nonneg fun hw => ?_
    have h1 := hd.ord_nonneg_et c _ (d.admissible_over_prime hd h la c w hw).1
    have h2 : (0 : ℝ) ≤ (d.ord c (d.Wres c w) (d.n1 • d.wde) (d.et c) : ℝ) := by exact_mod_cast h1
    exact mul_nonneg (Nat.cast_nonneg _) h2
  · have hS : ∀ c, {v | d.admitted c v ∧ d.ord c v (d.n1 • d.wde) (d.et c) ≠ 0}.Finite :=
      fun c => hd.a3' c (hd.et_mem c) (hd.et_ne c)
    refine Set.Finite.subset (Set.finite_iUnion fun c => (hS c).biUnion
      (fun v _ => (show ({la | IsOver (K := K) v la} : Set _).Subsingleton from
        fun a ha b hb => isOver_unique v a b ha hb).finite)) ?_
    intro la hla
    by_contra hno
    apply hla
    unfold Data.Nl
    refine Finset.sum_eq_zero fun c _ => finsum_eq_zero_of_forall_eq_zero fun w => ?_
    classical
    rw [finsum_eq_if]
    split_ifs with hw
    swap; · rfl
    have hs4 := d.admissible_over_prime hd h la c w hw
    by_cases h0 : d.ord c (d.Wres c w) (d.n1 • d.wde) (d.et c) = 0
    · simp [h0]
    · exact absurd (Set.mem_iUnion.2 ⟨c, Set.mem_biUnion (x := d.Wres c w)
      (show d.Wres c w ∈ {v | d.admitted c v ∧ d.ord c v (d.n1 • d.wde) (d.et c) ≠ 0} from ⟨hs4.1, h0⟩)
      (show la ∈ {la | IsOver (K := K) (d.Wres c w) la} from hs4.2.1)⟩) hno

theorem disc_two (hd : d.AxH 𝒜) (h : d.S1) (hI2et : d.HeightIntegralEstimateTrivialPlace) (hI2be : d.HeightIntegralBoundEstimate) :
    ((∑ᶠ la, d.Nl h la * logNorm la) / (Module.finrank ℚ K : ℝ)) / d.i ≤
      d.g0 * (d.Hgt h (d.n1 • d.wde) d.et / d.n1 + d.D * ((d.aG h (d.n1 • d.wde) d.et : ℝ) / d.n1) *
        (Real.log (d.N + 1 : ℕ) + 1 / 2)) + d.del * d.Pet := by
  have hta : ∀ c, d.et c ∈ 𝒜 c (d.n1 • d.wde) ∧ d.et c ≠ 0 := fun c => ⟨hd.et_mem c, hd.et_ne c⟩
  have hbdd : ∀ sg : K →+* ℂ, BddAbove (Set.range fun p : (Σ c, PT (Ω := Ω c) sg) =>
      d.nrm p.1 (d.n1 • d.wde) (d.et p.1) p.2) :=
    fun sg => hd.bdd sg _ d.et (Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  have hint := fun c sg => (d.int_Nsg hd h hI2be c sg).1 (d.n1 • d.wde) (d.et c)
    (Set.mem_insert_of_mem _ (Set.mem_insert _ _)) (hd.et_mem c) (hd.et_ne c)
  have h4 := (d.h_four hd h (d.n1 • d.wde) d.et hta (hd.ord_nonneg_et) hbdd hint).2
  have hNl : (fun la => d.Nl h la * logNorm la) =
      (fun la => d.NlaG h (d.n1 • d.wde) d.et la * logNorm la) := rfl
  rw [hNl]
  have hi : (0 : ℝ) < d.i := by exact_mod_cast hd.i_ge
  have hg : (0 : ℝ) < d.g0 := by exact_mod_cast hd.g_zero_ge_ask_sum
  have hn1 : ((d.n1 : ℕ) : ℝ) = (d.i : ℝ) * d.g0 := by simp [Data.n1]
  have hdel : (0 : ℝ) ≤ d.del := Nat.cast_nonneg _
  have hE : meanK (fun sg => Real.log (d.supN sg (d.n1 • d.wde) d.et)) / d.i ≤ d.Pet := hI2et
  calc _ ≤ (d.Hgt h (d.n1 • d.wde) d.et + d.del * meanK (fun sg => Real.log (d.supN sg (d.n1 • d.wde) d.et)) +
          d.D * d.aG h (d.n1 • d.wde) d.et * (Real.log (d.N + 1 : ℕ) + 1 / 2)) / d.i :=
        div_le_div_of_nonneg_right h4 hi.le
    _ = d.g0 * (d.Hgt h (d.n1 • d.wde) d.et / d.n1 + d.D * ((d.aG h (d.n1 • d.wde) d.et : ℝ) / d.n1) *
          (Real.log (d.N + 1 : ℕ) + 1 / 2)) +
          d.del * (meanK (fun sg => Real.log (d.supN sg (d.n1 • d.wde) d.et)) / d.i) := by
        rw [hn1]; field_simp; ring
    _ ≤ _ := by gcongr

theorem disc_one (hd : d.AxH 𝒜) (h : d.S1) (hI2et : d.HeightIntegralEstimateTrivialPlace) (hI2be : d.HeightIntegralBoundEstimate) (ta' : ∀ c, A c)
    (hta' : ∀ c, ta' c ∈ 𝒜 c d.wF ∧ ta' c ≠ 0) :
    (∀ la c, (d.PlOver la c).Finite) ∧ (∀ la, (d.htOf hd h).Ila la ≠ ⊤) ∧
    (Function.support (d.IL h hd.sel hd.a4.choose)).Finite ∧
    2 * ((∑ᶠ la, d.IL h hd.sel hd.a4.choose la * logNorm la) / (Module.finrank ℚ K : ℝ)) ≤
      d.del * Real.log d.del +
        2 * ∑ k, meanK (fun sg => Real.log (d.supN sg d.wF (d.thp (hd.sel k)))) +
        2 * d.D * d.aG h d.wF ta' * (Real.log (d.N + 1 : ℕ) + 1 / 2) + 2 * d.Hgt h d.wF ta' := by
  obtain ⟨_hDe0, hloc⟩ := d.disc_lattice hd h
  obtain ⟨hgf, hNef, hglob⟩ := d.disc_global hd h hI2be ta' hta'
  have hl : ∀ la : IsDedekindDomain.HeightOneSpectrum (𝓞 K), 0 ≤ logNorm la := by
    intro la
    apply Real.log_nonneg
    have : Ideal.absNorm la.asIdeal ≠ 0 := by
      rw [Ne, Ideal.absNorm_eq_zero_iff]; exact la.ne_bot
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr this
  have hIL0 : ∀ la, 0 ≤ d.IL h hd.sel hd.a4.choose la := fun _ => Nat.cast_nonneg _
  have hsupp : (Function.support (d.IL h hd.sel hd.a4.choose)).Finite := by
    apply (hgf.union hNef).subset
    intro la hla
    simp only [Function.mem_support, Set.mem_union] at hla ⊢
    by_contra hc
    push_neg at hc
    have h2 := (hloc la).2
    rw [hc.1, hc.2] at h2
    push_cast at h2
    exact hla (le_antisymm (by linarith) (hIL0 la))
  refine ⟨fun la c => (d.places_over_la hd h la c).1, fun la => (hloc la).1, hsupp, ?_⟩
  have hf1 : (Function.support fun la => 2 * (d.IL h hd.sel hd.a4.choose la * logNorm la)).Finite :=
    hsupp.subset fun la hla => by
      simp only [Function.mem_support] at hla ⊢
      intro h0; apply hla; rw [h0]; ring
  have hf2 : (Function.support fun la =>
      ((d.gOrd la (d.De hd h) : ℝ) + 2 * d.NlaG h d.wF hd.a4.choose la) * logNorm la).Finite :=
    (hgf.union hNef).subset fun la hla => by
      simp only [Function.mem_support, Set.mem_union] at hla ⊢
      by_contra hc; push_neg at hc; apply hla; rw [hc.1, hc.2]; simp
  have hf0 : (Function.support fun la => d.IL h hd.sel hd.a4.choose la * logNorm la).Finite :=
    hsupp.subset fun la hla => by
      simp only [Function.mem_support] at hla ⊢
      intro h0; apply hla; rw [h0, zero_mul]
  have hle : (∑ᶠ la, 2 * (d.IL h hd.sel hd.a4.choose la * logNorm la)) ≤
      ∑ᶠ la, ((d.gOrd la (d.De hd h) : ℝ) + 2 * d.NlaG h d.wF hd.a4.choose la) * logNorm la :=
    finsum_le_finsum' hf1 hf2 fun la => by
      have := (hloc la).2
      have := hl la
      nlinarith
  have hnK : (0 : ℝ) < (Module.finrank ℚ K : ℝ) := by exact_mod_cast Module.finrank_pos
  rw [← mul_finsum' _ _ hf0] at hle
  calc 2 * ((∑ᶠ la, d.IL h hd.sel hd.a4.choose la * logNorm la) / (Module.finrank ℚ K : ℝ))
      = (2 * ∑ᶠ la, d.IL h hd.sel hd.a4.choose la * logNorm la) / (Module.finrank ℚ K : ℝ) := by ring
    _ ≤ (∑ᶠ la, ((d.gOrd la (d.De hd h) : ℝ) + 2 * d.NlaG h d.wF hd.a4.choose la) * logNorm la) /
          (Module.finrank ℚ K : ℝ) := div_le_div_of_nonneg_right hle hnK.le
    _ ≤ _ := hglob

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.NlNonnegFin =====
