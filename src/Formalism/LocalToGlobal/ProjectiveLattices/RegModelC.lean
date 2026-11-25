module

public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.RingTheory.Flat.Basic
public import Mathlib.RingTheory.Ideal.Height
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.RegAVpt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.RegVert
public import Mathlib.Algebra.Module.Torsion.Basic
public import Mathlib.RingTheory.Flat.Stability
public import Mathlib.RingTheory.Flat.TorsionFree
public import Mathlib.RingTheory.Localization.Away.AdjoinRoot
public import Mathlib.RingTheory.Ideal.KrullsHeightTheorem
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.RegKrull
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.RegHor
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.ProjectiveLattices.RegModelA, Formalism.LocalToGlobal.ProjectiveLattices.RegModelB, Formalism.LocalToGlobal.ProjectiveLattices.RegModelC

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.RegModelA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.RegModelA", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.Flat.Basic\npublic import Mathlib.RingTheory.Ideal.Height\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.RegAVpt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.RegVert\npublic import Mathlib.Algebra.Module.Torsion.Basic\npublic import Mathlib.RingTheory.Flat.Stability\npublic import Mathlib.RingTheory.Flat.TorsionFree\npublic import Mathlib.RingTheory.Localization.Away.AdjoinRoot\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Pj.RegA

open IsLocalRing ReciprocityTheory.ChartRestriction.G.T0

theorem reg_vertical_e {O A : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [IsAdicComplete (maximalIdeal O) O] [CharZero O]
    [CommRing A] [IsDomain A] [Algebra O A] [Algebra.FiniteType O A] [Module.Flat O A]
    [IsIntegrallyClosed A] (f : FractionRing A) (e : A) (he : e ≠ 0)
    (hf : ∀ (V : Type) [CommRing V] [IsDomain V] [IsDiscreteValuationRing V] [Algebra O V]
      [Module.Finite O V] (φ : A →ₐ[O] V) (a b : A),
      f * algebraMap A (FractionRing A) b = algebraMap A (FractionRing A) a → φ b ≠ 0 → φ e ≠ 0 →
      ∃ v : V, φ a = v * φ b)
    (P : Ideal A) [P.IsPrime] (hP : P.height = 1)
    (hv : Ideal.map (algebraMap O A) (maximalIdeal O) ≤ P) :
    ∃ a s : A, s ∉ P ∧ f * algebraMap A (FractionRing A) s = algebraMap A (FractionRing A) a := by
  classical
  haveI hAN : IsNoetherianRing A := by
    first
    | exact Algebra.FiniteType.isNoetherianRing O A
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  have hϖm : ϖ ∈ maximalIdeal O := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    exact hϖ.not_isUnit
  have hϖA0 : algebraMap O A ϖ ≠ 0 := by
    intro h0
    have h1 : (1 : A) ∈ Submodule.torsion O A := by
      rw [Submodule.mem_torsion_iff]
      refine ⟨⟨ϖ, mem_nonZeroDivisors_of_ne_zero hϖ.ne_zero⟩, ?_⟩
      show ϖ • (1 : A) = 0
      rw [Algebra.smul_def, mul_one, h0]
    rw [Module.Flat.torsion_eq_bot, Submodule.mem_bot] at h1
    exact one_ne_zero h1
  obtain ⟨⟨a, b⟩, hab⟩ := IsLocalization.surj (nonZeroDivisors A) f
  have hab' : f * algebraMap A (FractionRing A) (b : A) = algebraMap A (FractionRing A) a := hab
  have hb0 : (b : A) ≠ 0 := nonZeroDivisors.ne_zero b.2
  have hbK : algebraMap A (FractionRing A) (b : A) ≠ 0 :=
    IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors b.2
  have hPc : P.primeCompl ≤ nonZeroDivisors A := by
    first
    | exact Ideal.primeCompl_le_nonZeroDivisors P
  have hK : ∀ x y : A, algebraMap A (Localization.AtPrime P) x =
      algebraMap A (Localization.AtPrime P) y → x = y :=
    fun x y h => IsLocalization.injective (Localization.AtPrime P) hPc h
  have hfin : ∀ x s : A, s ∉ P → (b : A) * x = a * s →
      ∃ a s : A, s ∉ P ∧ f * algebraMap A (FractionRing A) s = algebraMap A (FractionRing A) a := by
    intro x s hs h
    refine ⟨x, s, hs, ?_⟩
    have h' := congrArg (algebraMap A (FractionRing A)) h
    rw [map_mul, map_mul] at h'
    apply mul_left_cancel₀ hbK
    linear_combination (algebraMap A (FractionRing A) s) * hab' - h'
  haveI hVal : ValuationRing (Localization.AtPrime P) := regVert_valuationRing P hP
  have hmaxL : maximalIdeal (Localization.AtPrime P) =
      P.map (algebraMap A (Localization.AtPrime P)) := by
    first
    | exact Localization.AtPrime.map_eq_maximalIdeal.symm
  have hcase1 : ∀ c : Localization.AtPrime P,
      algebraMap A (Localization.AtPrime P) b * c = algebraMap A (Localization.AtPrime P) a →
      ∃ a s : A, s ∉ P ∧ f * algebraMap A (FractionRing A) s = algebraMap A (FractionRing A) a := by
    intro c hc
    obtain ⟨⟨x, s⟩, rfl⟩ := IsLocalization.mk'_surjective P.primeCompl c
    have hspec := IsLocalization.mk'_spec (Localization.AtPrime P) x s
    apply hfin x s s.2
    apply hK
    rw [map_mul, map_mul]
    linear_combination (algebraMap A (Localization.AtPrime P) s) * hc -
      (algebraMap A (Localization.AtPrime P) b) * hspec
  have hcond : ∃ c : Localization.AtPrime P,
      algebraMap A (Localization.AtPrime P) b * c = algebraMap A (Localization.AtPrime P) a ∨
      algebraMap A (Localization.AtPrime P) a * c = algebraMap A (Localization.AtPrime P) b := by
    first
    | exact ValuationRing.cond _ _
  obtain ⟨c, hc | hc⟩ := hcond
  · exact hcase1 c hc
  by_cases hcu : IsUnit c
  · obtain ⟨u, rfl⟩ := hcu
    apply hcase1 (↑u⁻¹)
    rw [← hc, mul_assoc, Units.mul_inv, mul_one]
  exfalso
  obtain ⟨⟨d, t⟩, rfl⟩ := IsLocalization.mk'_surjective P.primeCompl c
  have hspec := IsLocalization.mk'_spec (Localization.AtPrime P) d t
  have hdP : d ∈ P := by
    by_contra hdP
    apply hcu
    have h1 : IsUnit (algebraMap A (Localization.AtPrime P) d) := by
      first
      | exact IsLocalization.map_units (M := P.primeCompl) (Localization.AtPrime P) ⟨d, hdP⟩
    rw [← hspec] at h1
    exact isUnit_of_mul_isUnit_left h1
  have had : a * d = (b : A) * t := by
    apply hK
    rw [map_mul, map_mul]
    linear_combination (algebraMap A (Localization.AtPrime P) t) * hc -
      (algebraMap A (Localization.AtPrime P) a) * hspec
  have hrad : maximalIdeal (Localization.AtPrime P) ≤
      (Ideal.span {algebraMap A (Localization.AtPrime P) (algebraMap O A ϖ)}).radical := by
    rw [Ideal.radical_eq_sInf]
    refine le_sInf ?_
    rintro Q ⟨hJQ, hQ⟩
    have hϖQ : algebraMap A (Localization.AtPrime P) (algebraMap O A ϖ) ∈ Q :=
      hJQ (Ideal.mem_span_singleton_self _)
    haveI := hQ
    have hQ0P : Q.comap (algebraMap A (Localization.AtPrime P)) ≤ P := by
      intro x hx
      by_contra hxP
      have hu : IsUnit (algebraMap A (Localization.AtPrime P) x) := by
        first
        | exact IsLocalization.map_units (M := P.primeCompl) (Localization.AtPrime P) ⟨x, hxP⟩
      exact hQ.ne_top (Ideal.eq_top_of_isUnit_mem _ (Ideal.mem_comap.mp hx) hu)
    have hQ0 : Q.comap (algebraMap A (Localization.AtPrime P)) ≠ ⊥ := by
      intro h
      have h2 : algebraMap O A ϖ ∈ Q.comap (algebraMap A (Localization.AtPrime P)) :=
        Ideal.mem_comap.mpr hϖQ
      rw [h, Ideal.mem_bot] at h2
      exact hϖA0 h2
    have hQeq : Q.comap (algebraMap A (Localization.AtPrime P)) = P :=
      regVert_eq_of_le_height_one hQ0 hQ0P hP
    have hmc : Ideal.map (algebraMap A (Localization.AtPrime P))
        (Q.comap (algebraMap A (Localization.AtPrime P))) = Q := by
      first
      | exact IsLocalization.map_under P.primeCompl (Localization.AtPrime P) Q
    rw [hQeq] at hmc
    exact (hmaxL.trans hmc).le
  haveI hLN : IsNoetherianRing (Localization.AtPrime P) := by
    first
    | infer_instance
  have hfg : (maximalIdeal (Localization.AtPrime P)).FG := by
    first
    | exact IsNoetherian.noetherian _
  obtain ⟨n, hn⟩ : ∃ n : ℕ, maximalIdeal (Localization.AtPrime P) ^ n ≤
      Ideal.span {algebraMap A (Localization.AtPrime P) (algebraMap O A ϖ)} := by
    first
    | exact Ideal.exists_pow_le_of_le_radical_of_fg hrad hfg
  have hdm : algebraMap A (Localization.AtPrime P) d ∈ maximalIdeal (Localization.AtPrime P) := by
    rw [hmaxL]
    exact Ideal.mem_map_of_mem _ hdP
  obtain ⟨y, hy⟩ := Ideal.mem_span_singleton'.mp (hn (Ideal.pow_mem_pow hdm n))
  obtain ⟨⟨z, u⟩, rfl⟩ := IsLocalization.mk'_surjective P.primeCompl y
  have hspec2 := IsLocalization.mk'_spec (Localization.AtPrime P) z u
  have hzu : z * algebraMap O A ϖ = d ^ n * u := by
    apply hK
    rw [map_mul, map_mul, map_pow]
    linear_combination (algebraMap A (Localization.AtPrime P) u) * hy -
      (algebraMap A (Localization.AtPrime P) (algebraMap O A ϖ)) * hspec2
  obtain ⟨s, hs_def⟩ : ∃ s : A, s = (t : A) * u := ⟨_, rfl⟩
  have hsP : s ∉ P := by
    rw [hs_def]
    exact P.primeCompl.mul_mem t.2 u.2
  have hs0 : s ≠ 0 := fun h => hsP (h ▸ P.zero_mem)
  have hpow : Submonoid.powers s ≤ nonZeroDivisors A :=
    powers_le_nonZeroDivisors_of_noZeroDivisors hs0
  haveI hBdom : IsDomain (Localization.Away s) := by
    first
    | exact IsLocalization.isDomain_localization hpow
  haveI hBft : Algebra.FiniteType O (Localization.Away s) := by
    have h1 : Algebra.FiniteType A (Localization.Away s) := by
      haveI := IsLocalization.Away.finitePresentation (S := Localization.Away s) s
      infer_instance
    first
    | exact Algebra.FiniteType.trans (inferInstance : Algebra.FiniteType O A) h1
  haveI hBfl : Module.Flat O (Localization.Away s) := by
    haveI : Module.Flat A (Localization.Away s) := by
      first
      | infer_instance
    first
    | exact Module.Flat.trans O A (Localization.Away s)
  have hdisj : Disjoint (Submonoid.powers s : Set A) (P : Set A) := by
    rw [Set.disjoint_left]
    rintro x ⟨k, rfl⟩ hk
    exact hsP (Ideal.IsPrime.mem_of_pow_mem inferInstance k hk)
  haveI hPB : (P.map (algebraMap A (Localization.Away s))).IsPrime := by
    first
    | exact IsLocalization.isPrime_of_isPrime_disjoint (Submonoid.powers s)
        (Localization.Away s) P inferInstance hdisj
  have hsp : Ideal.map (algebraMap O (Localization.Away s)) (maximalIdeal O) ≠ ⊤ := by
    rw [IsScalarTower.algebraMap_eq O A (Localization.Away s), ← Ideal.map_map]
    exact ne_top_of_le_ne_top hPB.ne_top (Ideal.map_mono hv)
  have hinjB : Function.Injective (algebraMap A (Localization.Away s)) :=
    IsLocalization.injective (Localization.Away s) hpow
  have he' : algebraMap A (Localization.Away s) (e * b) ≠ 0 := by
    intro h
    apply mul_ne_zero he hb0
    apply hinjB
    rw [h, map_zero]
  obtain ⟨V, indexVFirst, indexVSecond, indexVThird, indexVFourth, iV5, φ, hφ⟩ := av_point hsp _ he'
  have hφe : φ (algebraMap A (Localization.Away s) e) ≠ 0 := by
    intro h
    apply hφ
    rw [map_mul, map_mul, h, zero_mul]
  have hφb : φ (algebraMap A (Localization.Away s) b) ≠ 0 := by
    intro h
    apply hφ
    rw [map_mul, map_mul, h, mul_zero]
  obtain ⟨v, hv'⟩ :=
    hf V (φ.comp (IsScalarTower.toAlgHom O A (Localization.Away s))) a b hab' hφb hφe
  have hv2 : φ (algebraMap A (Localization.Away s) a) =
      v * φ (algebraMap A (Localization.Away s) b) := hv'
  have hsU : IsUnit (algebraMap A (Localization.Away s) s) :=
    IsLocalization.Away.algebraMap_isUnit s
  have hts : algebraMap A (Localization.Away s) s =
      algebraMap A (Localization.Away s) t * algebraMap A (Localization.Away s) u := by
    rw [← map_mul]
    exact congrArg _ hs_def
  rw [hts] at hsU
  have htU : IsUnit (φ (algebraMap A (Localization.Away s) t)) :=
    (isUnit_of_mul_isUnit_left hsU).map φ
  have huU : IsUnit (φ (algebraMap A (Localization.Away s) u)) :=
    (isUnit_of_mul_isUnit_right hsU).map φ
  have hadV := congrArg (fun x => φ (algebraMap A (Localization.Away s) x)) had
  simp only [map_mul] at hadV
  have h3 : v * φ (algebraMap A (Localization.Away s) d) =
      φ (algebraMap A (Localization.Away s) t) := by
    apply mul_left_cancel₀ hφb
    linear_combination hadV - (φ (algebraMap A (Localization.Away s) d)) * hv2
  rw [← h3] at htU
  have hdU : IsUnit (φ (algebraMap A (Localization.Away s) d)) :=
    isUnit_of_mul_isUnit_right htU
  have hzuV := congrArg (fun x => φ (algebraMap A (Localization.Away s) x)) hzu
  simp only [map_mul, map_pow] at hzuV
  have h4 : IsUnit (φ (algebraMap A (Localization.Away s) z) *
      φ (algebraMap A (Localization.Away s) (algebraMap O A ϖ))) := by
    rw [hzuV]
    exact (hdU.pow n).mul huU
  have hϖU := isUnit_of_mul_isUnit_right h4
  have hϖV : φ (algebraMap A (Localization.Away s) (algebraMap O A ϖ)) = algebraMap O V ϖ := by
    rw [← IsScalarTower.algebraMap_apply O A (Localization.Away s)]
    exact φ.commutes ϖ
  rw [hϖV] at hϖU
  haveI : Algebra.IsIntegral O V := by
    first
    | infer_instance
  have hmaxV : (maximalIdeal V).comap (algebraMap O V) = maximalIdeal O := by
    haveI hmx : ((maximalIdeal V).comap (algebraMap O V)).IsMaximal := by
      first
      | exact Ideal.isMaximal_comap_of_isIntegral_of_isMaximal (algebraMap _ _) (RingHom.Finite.to_isIntegral (RingHom.finite_algebraMap.mpr inferInstance)) (maximalIdeal V)
    exact IsLocalRing.eq_maximalIdeal hmx
  have hmem : ϖ ∈ (maximalIdeal V).comap (algebraMap O V) := by
    rw [hmaxV]
    exact hϖm
  exact mem_nonunits_iff.mp ((IsLocalRing.mem_maximalIdeal _).mp (Ideal.mem_comap.mp hmem)) hϖU

end Formalism.L2.Pj.RegA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.RegModelA =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.RegModelB =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.RegModelB", "h": "module\n\npublic import Mathlib.RingTheory.Ideal.Height\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Etale.Weakly\npublic import Mathlib.RingTheory.Ideal.KrullsHeightTheorem\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.RegKrull\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Pj.RegB

open IsLocalRing ReciprocityTheory.ChartRestriction.G.T0 ReciprocityTheory.ChartRestriction.G.T0.KrullColonIdeal

theorem mem_loc_of_heightOne {R K : Type*} [CommRing R] [IsDomain R] [IsNoetherianRing R]
    [IsIntegrallyClosed R] [Field K] [Algebra R K] [IsFractionRing R K] (qq : Ideal R) [hq : qq.IsPrime]
    (x : K) (hx : ∀ p : Ideal R, p.IsPrime → p.height = 1 → p ≤ qq →
      ∃ a s : R, s ∉ p ∧ x * algebraMap R K s = algebraMap R K a) :
    ∃ a s : R, s ∉ qq ∧ x * algebraMap R K s = algebraMap R K a := by
  classical
  obtain ⟨⟨a, s⟩, hxs⟩ := IsLocalization.surj (nonZeroDivisors R) x
  simp only at hxs
  have hinj : Function.Injective (algebraMap R K) := IsFractionRing.injective R K
  have hs0 : (s : R) ≠ 0 := nonZeroDivisors.ne_zero s.2
  have hsK : algebraMap R K (s : R) ≠ 0 := by
    intro h; apply hs0; exact hinj (by rw [h, map_zero])
  by_cases hex : ∃ t : R, t ∉ qq ∧ t * a ∈ Ideal.span {(s : R)}
  · obtain ⟨t, ht, hta⟩ := hex
    obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.mp hta
    refine ⟨r, t, ht, ?_⟩
    apply mul_right_cancel₀ hsK
    rw [mul_assoc, mul_comm (algebraMap R K t), ← mul_assoc, hxs, ← map_mul, ← map_mul, mul_comm a t, ← hr,
      mul_comm]
  push Not at hex
  have hab0 : colonI (s : R) a ≤ qq := by
    intro t ht
    by_contra htq
    exact hex t htq ht
  let S : Set (Ideal R) := {J | ∃ c, J = colonI (s : R) c ∧ J ≤ qq ∧ colonI (s : R) a ≤ J}
  have hS : S.Nonempty := ⟨colonI (s : R) a, a, rfl, hab0, le_rfl⟩
  obtain ⟨J, ⟨b, rfl, hJq, hab⟩, hmax⟩ := (wellFounded_gt (α := Ideal R)).has_min S hS

  have hsat : ∀ r : R, r ∉ qq → colonI (s : R) (r * b) = colonI (s : R) b := by
    intro r hr
    have hle : colonI (s : R) b ≤ colonI (s : R) (r * b) := by
      intro y hy
      rw [mem_colonI] at *
      rw [mul_left_comm]
      exact Ideal.mul_mem_left _ _ hy
    have hq' : colonI (s : R) (r * b) ≤ qq := by
      intro y hy
      rw [mem_colonI, ← mul_assoc] at hy
      have : y * r ∈ qq := hJq hy
      rcases hq.mem_or_mem this with h | h
      · exact h
      · exact absurd h hr
    by_contra hne
    exact hmax _ ⟨r * b, rfl, hq', hab.trans hle⟩ (lt_of_le_of_ne hle (Ne.symm hne))
  set P := colonI (s : R) b with hPdef
  have hPne : P ≠ ⊤ := fun h => hq.ne_top (top_le_iff.1 (h ▸ hJq))
  have hb : b ∉ Ideal.span {(s : R)} := by
    intro hb
    apply hPne
    rw [eq_top_iff]
    intro y _
    rw [mem_colonI]
    exact Ideal.mul_mem_left _ _ hb
  have hprime : ∀ q1 q2 : R, q1 * q2 ∈ P → q1 ∈ P ∨ q2 ∈ P := by
    intro q1 q2 hq12
    by_cases h1 : q1 ∈ P
    · exact Or.inl h1
    · right
      have hle : P ≤ colonI (s : R) (q1 * b) := by
        intro y hy
        rw [mem_colonI] at *
        rw [mul_left_comm]
        exact Ideal.mul_mem_left _ _ hy
      have hq' : colonI (s : R) (q1 * b) ≤ qq := by
        intro y hy
        by_contra hyq
        apply h1
        rw [← hsat y hyq, mem_colonI]
        rw [mem_colonI] at hy
        have : q1 * (y * b) = y * (q1 * b) := by ring
        rw [this]
        exact hy
      have heq : P = colonI (s : R) (q1 * b) := by
        by_contra hne
        exact hmax _ ⟨q1 * b, rfl, hq', hab.trans hle⟩ (lt_of_le_of_ne hle hne)
      rw [heq, mem_colonI]
      rw [mem_colonI] at hq12
      have : q2 * (q1 * b) = q1 * q2 * b := by ring
      rw [this]
      exact hq12
  have hPp : P.IsPrime := ⟨hPne, fun {q1 q2} h => hprime q1 q2 h⟩
  have hsP : (s : R) ∈ P := by
    rw [mem_colonI]
    exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)
  have hPbot : P ≠ ⊥ := by
    intro h
    apply hs0
    rw [h] at hsP
    exact (Submodule.mem_bot R).mp hsP

  have hle1 : P.height ≤ 1 := by
    by_cases hA : ∀ q ∈ P, ∀ t : R, q * b = t * s → t ∈ P
    · exfalso
      let y : K := algebraMap R K b / algebraMap R K s
      let N : Submodule R K := Submodule.map (Algebra.linearMap R K) P
      have hN : N ≠ ⊥ := by
        intro h
        have : algebraMap R K (s : R) ∈ N := ⟨s, hsP, rfl⟩
        rw [h] at this
        exact hsK ((Submodule.mem_bot R).mp this)
      have hNfg : N.FG := (IsNoetherian.noetherian P).map _
      have hint : IsIntegral R y := by
        refine isIntegral_of_smul_mem_submodule N hN hNfg y ?_
        rintro n ⟨q, hq, rfl⟩
        obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.mp ((mem_colonI).mp hq)
        refine ⟨t, hA q hq t ht.symm, ?_⟩
        simp only [Algebra.linearMap_apply, smul_eq_mul, y]
        field_simp
        rw [← map_mul, ← map_mul, ht, mul_comm]
      obtain ⟨r, hr⟩ := IsIntegrallyClosed.isIntegral_iff.mp hint
      apply hb
      rw [Ideal.mem_span_singleton']
      refine ⟨r, hinj ?_⟩
      rw [map_mul, hr]
      simp only [y]
      field_simp
    · push Not at hA
      obtain ⟨u, hu, t, hut, htP⟩ := hA
      have : (Ideal.span {u}).IsPrincipal := ⟨⟨u, rfl⟩⟩
      apply Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes (Ideal.span {u}) P
      refine ⟨⟨hPp, (Ideal.span_singleton_le_iff_mem _).mpr hu⟩, ?_⟩
      rintro Q ⟨hQ, huQ⟩ hQP q hq
      obtain ⟨tq, htq⟩ := Ideal.mem_span_singleton'.mp ((mem_colonI).mp hq)
      have key : q * t = u * tq := by
        apply mul_right_cancel₀ hs0
        calc q * t * s = q * (u * b) := by rw [hut]; ring
          _ = u * (q * b) := by ring
          _ = u * tq * s := by rw [← htq]; ring
      have hu' : u ∈ Q := (Ideal.span_singleton_le_iff_mem _).mp huQ
      have : q * t ∈ Q := by rw [key]; exact Ideal.mul_mem_right _ _ hu'
      rcases hQ.mem_or_mem this with h | h
      · exact h
      · exact absurd (hQP h) htP
  have hne0 : P.height ≠ 0 := by
    rw [Ne, Ideal.height_eq_zero_iff_eq_bot]
    exact hPbot
  have h1 : P.height = 1 := le_antisymm hle1 (Order.one_le_iff_ne_zero.mpr hne0)
  obtain ⟨a', s', hs'P, hxs'⟩ := hx P hPp h1 hJq
  exfalso
  apply hs'P
  apply hab
  rw [mem_colonI, Ideal.mem_span_singleton']
  refine ⟨a', hinj ?_⟩
  rw [map_mul, map_mul, ← hxs', ← hxs]
  ring

end Formalism.L2.Pj.RegB
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.RegModelB =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.RegModelC =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.RegModelC", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.Flat.Basic\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Formalism.LocalToGlobal.ProjectiveLattices.RegModelA\npublic import Formalism.LocalToGlobal.ProjectiveLattices.RegModelB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.RegHor\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.RegVert\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Pj.RegC

open IsLocalRing ReciprocityTheory.ChartRestriction.G.T0

private theorem hdvr_lemma {A : Type} [CommRing A] [IsDomain A] [IsNoetherianRing A] [IsIntegrallyClosed A]
    (P : Ideal A) [P.IsPrime] (hP : P.height = 1) (f : FractionRing A)
    (hno : ¬ ∃ a s : A, s ∉ P ∧ f * algebraMap A (FractionRing A) s = algebraMap A (FractionRing A) a) :
    ∃ a s : A, a ∈ P ∧ s ∉ P ∧ f⁻¹ * algebraMap A (FractionRing A) s = algebraMap A (FractionRing A) a := by
  classical
  haveI := ReciprocityTheory.ChartRestriction.G.T0.regVert_valuationRing P hP
  obtain ⟨a0, b0, hb0, rfl⟩ := IsFractionRing.div_surjective (A := A) f
  have hb0' : algebraMap A (FractionRing A) b0 ≠ 0 :=
    IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors hb0
  have h1P : (1 : A) ∉ P := (Ideal.ne_top_iff_one P).1 (Ideal.IsPrime.ne_top ‹_›)
  obtain ⟨c, hc | hc⟩ := ValuationRing.cond (algebraMap A (Localization.AtPrime P) a0)
    (algebraMap A (Localization.AtPrime P) b0)
  · obtain ⟨⟨r, s⟩, rfl⟩ := IsLocalization.mk'_surjective P.primeCompl c
    have h1 : algebraMap A (Localization.AtPrime P) (a0 * r) =
        algebraMap A (Localization.AtPrime P) (b0 * s) := by
      rw [map_mul, map_mul, ← hc, mul_assoc, IsLocalization.mk'_spec]
    obtain ⟨u, hu⟩ := (IsLocalization.eq_iff_exists P.primeCompl (Localization.AtPrime P)).1 h1
    have hK : algebraMap A (FractionRing A) (u * (a0 * r)) =
        algebraMap A (FractionRing A) (u * (b0 * s)) := by rw [hu]
    simp only [map_mul] at hK
    have ha0 : algebraMap A (FractionRing A) a0 ≠ 0 := by
      intro h0
      apply hno
      exact ⟨0, 1, h1P, by simp [h0]⟩
    by_cases hr : (u : A) * r ∈ P
    · refine ⟨u * r, u * s, hr, ?_, ?_⟩
      · exact P.primeCompl.mul_mem u.2 s.2
      · rw [map_mul, map_mul, inv_div, div_mul_eq_mul_div, div_eq_iff ha0]
        linear_combination -1 * hK
    · exfalso
      apply hno
      refine ⟨u * s, u * r, hr, ?_⟩
      rw [map_mul, map_mul, div_mul_eq_mul_div, div_eq_iff hb0']
      linear_combination hK
  · obtain ⟨⟨r, s⟩, rfl⟩ := IsLocalization.mk'_surjective P.primeCompl c
    have h1 : algebraMap A (Localization.AtPrime P) (b0 * r) =
        algebraMap A (Localization.AtPrime P) (a0 * s) := by
      rw [map_mul, map_mul, ← hc, mul_assoc, IsLocalization.mk'_spec]
    obtain ⟨u, hu⟩ := (IsLocalization.eq_iff_exists P.primeCompl (Localization.AtPrime P)).1 h1
    have hK : algebraMap A (FractionRing A) (u * (b0 * r)) =
        algebraMap A (FractionRing A) (u * (a0 * s)) := by rw [hu]
    simp only [map_mul] at hK
    exfalso
    apply hno
    refine ⟨u * r, u * s, P.primeCompl.mul_mem u.2 s.2, ?_⟩
    rw [map_mul, map_mul, div_mul_eq_mul_div, div_eq_iff hb0']
    linear_combination -1 * hK

theorem key_centre {O A : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [IsAdicComplete (maximalIdeal O) O] [CharZero O]
    [CommRing A] [IsDomain A] [Algebra O A] [Algebra.FiniteType O A] [Module.Flat O A]
    [IsIntegrallyClosed A] (f : FractionRing A) (e : A) (he : e ≠ 0)
    (hf : ∀ (V : Type) [CommRing V] [IsDomain V] [IsDiscreteValuationRing V] [Algebra O V]
      [Module.Finite O V] (φ : A →ₐ[O] V) (a b : A),
      f * algebraMap A (FractionRing A) b = algebraMap A (FractionRing A) a → φ b ≠ 0 → φ e ≠ 0 →
      ∃ v : V, φ a = v * φ b)
    (qq : Ideal A) [qq.IsPrime] (hqq : qq ⊔ Ideal.map (algebraMap O A) (maximalIdeal O) ≠ ⊤) :
    ∃ a s : A, s ∉ qq ∧ f * algebraMap A (FractionRing A) s = algebraMap A (FractionRing A) a := by
  haveI : IsNoetherianRing A := by
    first
    | exact Algebra.FiniteType.isNoetherianRing O A
  refine Formalism.L2.Pj.RegB.mem_loc_of_heightOne qq f (fun P hP h1 hle => ?_)
  haveI := hP
  by_cases hv : Ideal.map (algebraMap O A) (maximalIdeal O) ≤ P
  · exact Formalism.L2.Pj.RegA.reg_vertical_e f e he hf P h1 hv
  · refine _root_.ReciprocityTheory.ChartRestriction.G.T0.reg_horizontal_pf P hv ?_ e he f (hdvr_lemma P h1 f) hf
    intro htop
    apply hqq
    rw [eq_top_iff, ← htop]
    exact sup_le_sup_right hle _

end Formalism.L2.Pj.RegC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.RegModelC =====
