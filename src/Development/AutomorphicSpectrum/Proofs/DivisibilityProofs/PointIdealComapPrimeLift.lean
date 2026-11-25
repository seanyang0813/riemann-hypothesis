module

public import Mathlib.RingTheory.Length
public import Mathlib.RingTheory.Localization.AtPrime.Basic
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ConstantsMonomialApproximation
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.IdealCycleValues.LengthLocQuot, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PointIdealComapPrimeLift

-- ===== clump member: Development.WeilBound.CoreStatements.IdealCycleValues.LengthLocQuot =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.IdealCycleValues.LengthLocQuot", "h": "module\n\npublic import Mathlib.RingTheory.Length\npublic import Mathlib.RingTheory.Localization.AtPrime.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace BaseChangeColon.Corr

theorem length_self_eq {S T : Type*} [CommRing S] [CommRing T] (e : S ≃+* T) :
    Module.length S S = Module.length T T := by
  rw [Module.length_eq_coheight, Module.length_eq_coheight]
  have := Ideal.coheight_comap_of_surjective (e : S →+* T) e.surjective ⊥
  have hb : Ideal.comap (e : S →+* T) ⊥ = ⊥ := Ideal.comap_bot_of_injective _ e.injective
  rw [hb] at this
  exact this

theorem length_loc_quot {R : Type*} [CommRing R] (J W : Ideal R) [W.IsPrime] :
    Module.length (Localization.AtPrime W) (LocalizedModule W.primeCompl (R ⧸ J)) =
      Module.length (Localization.AtPrime W ⧸ J.map (algebraMap R (Localization.AtPrime W)))
        (Localization.AtPrime W ⧸ J.map (algebraMap R (Localization.AtPrime W))) := by
  let S := Localization.AtPrime W
  have hJ : (J : Submodule R R).localized' S W.primeCompl (Algebra.linearMap R S) =
      J.map (algebraMap R S) := by
    rw [Submodule.localized'_eq_span, Ideal.map]
    rfl
  let e := (IsLocalizedModule.linearEquiv W.primeCompl
    ((J : Submodule R R).toLocalizedQuotient' S W.primeCompl (Algebra.linearMap R S))
    (LocalizedModule.mkLinearMap W.primeCompl (R ⧸ J))).extendScalarsOfIsLocalization W.primeCompl S
  rw [← e.length_eq, (Submodule.quotEquivOfEq _ _ hJ).length_eq]
  exact Module.length_eq_of_surjective Ideal.Quotient.mk_surjective

variable {R R' : Type*} [CommRing R] [CommRing R'] {φ : R →+* R'} {P' : Ideal R'} {s : R}

def sat (h : ∀ r : R', ∃ (n : ℕ) (g : R), φ s ^ n * r - φ g ∈ P') (J : Ideal R) (hJ : P'.comap φ ≤ J) :
    Ideal R' where
  carrier := {x | ∃ n : ℕ, ∃ g ∈ J, φ s ^ n * x - φ g ∈ P'}
  zero_mem' := ⟨0, 0, J.zero_mem, by simp⟩
  add_mem' := by
    rintro a b ⟨n, g, hg, ha⟩ ⟨m, k, hk, hb⟩
    refine ⟨n + m, s ^ m * g + s ^ n * k, J.add_mem (J.mul_mem_left _ hg) (J.mul_mem_left _ hk), ?_⟩
    have := P'.add_mem (P'.mul_mem_left (φ s ^ m) ha) (P'.mul_mem_left (φ s ^ n) hb)
    convert this using 1
    simp only [map_add (f := _), map_mul, map_pow]
    ring
  smul_mem' := by
    rintro c x ⟨n, g, hg, hx⟩
    obtain ⟨m, k, hc⟩ := h c
    refine ⟨n + m, k * g, J.mul_mem_left _ hg, ?_⟩
    have := P'.add_mem (P'.mul_mem_left (φ s ^ m * c) hx) (P'.mul_mem_left (φ g) hc)
    convert this using 1
    simp only [map_mul, smul_eq_mul]
    ring

theorem key (h : ∀ r : R', ∃ (n : ℕ) (g : R), φ s ^ n * r - φ g ∈ P') (J : Ideal R) (hJ : P'.comap φ ≤ J)
    {x : R'} (hx : x ∈ P' ⊔ J.map φ) : ∃ n : ℕ, ∃ g ∈ J, φ s ^ n * x - φ g ∈ P' := by
  have hle : P' ⊔ J.map φ ≤ sat h J hJ := by
    refine sup_le (fun y hy => ⟨0, 0, J.zero_mem, by simpa using hy⟩) (Ideal.map_le_iff_le_comap.2 ?_)
    intro g hg
    exact ⟨0, g, hg, by simp⟩
  exact hle hx

theorem key' (h : ∀ r : R', ∃ (n : ℕ) (g : R), φ s ^ n * r - φ g ∈ P') (J : Ideal R) (hJ : P'.comap φ ≤ J)
    {t : R} (ht : φ t ∈ P' ⊔ J.map φ) : ∃ n : ℕ, s ^ n * t ∈ J := by
  obtain ⟨n, g, hg, hn⟩ := key h J hJ ht
  refine ⟨n, ?_⟩
  have h1 : s ^ n * t - g ∈ J := hJ (by
    rw [Ideal.mem_comap, map_sub, map_mul, map_pow]
    exact hn)
  simpa using J.add_mem h1 hg

theorem mono (h : ∀ r : R', ∃ (n : ℕ) (g : R), φ s ^ n * r - φ g ∈ P') {Q W : Ideal R'} (hW : W.IsPrime)
    (hPQ : P' ≤ Q) (hPW : P' ≤ W) (hs : φ s ∉ W) (hle : Q.comap φ ≤ W.comap φ) : Q ≤ W := by
  intro r hr
  obtain ⟨n, g, hg⟩ := h r
  have h1 : φ g ∈ Q := by
    have := Q.sub_mem (Q.mul_mem_left (φ s ^ n) hr) (hPQ hg)
    simpa using this
  have h2 : φ g ∈ W := hle h1
  have h3 : φ s ^ n * r ∈ W := by
    simpa using W.add_mem (hPW hg) h2
  exact (hW.mem_or_mem h3).resolve_left fun h4 => hs (hW.mem_of_pow_mem _ h4)

theorem exists_lift (h : ∀ r : R', ∃ (n : ℕ) (g : R), φ s ^ n * r - φ g ∈ P') {W : Ideal R} (hW : W.IsPrime)
    (hPW : P'.comap φ ≤ W) (hs : s ∉ W) :
    ∃ W' : Ideal R', W'.IsPrime ∧ P' ≤ W' ∧ W'.comap φ = W := by
  have hd : Disjoint ((P' ⊔ W.map φ : Ideal R') : Set R') (W.primeCompl.map φ : Submonoid R') := by
    rw [Set.disjoint_left]
    rintro _ hx ⟨t, ht, rfl⟩
    obtain ⟨n, hn⟩ := key' h W hPW hx
    rcases hW.mem_or_mem hn with h1 | h1
    · exact hs (hW.mem_of_pow_mem _ h1)
    · exact ht h1
  obtain ⟨W', hW', hle, hdis⟩ := Ideal.exists_le_prime_disjoint _ _ hd
  refine ⟨W', hW', le_sup_left.trans hle, le_antisymm (fun t ht => ?_)
    (Ideal.map_le_iff_le_comap.1 (le_sup_right.trans hle))⟩
  by_contra hn
  exact Set.disjoint_left.1 hdis (show φ t ∈ (W' : Set R') from ht) ⟨t, hn, rfl⟩

theorem minimal_iff (h : ∀ r : R', ∃ (n : ℕ) (g : R), φ s ^ n * r - φ g ∈ P') (J : Ideal R)
    (hJ : P'.comap φ ≤ J) {W' : Ideal R'} (hW' : W'.IsPrime) (hPW : P' ≤ W') (hs : φ s ∉ W') :
    W' ∈ (P' ⊔ J.map φ).minimalPrimes ↔ W'.comap φ ∈ J.minimalPrimes := by
  constructor
  · rintro ⟨⟨-, hle⟩, hmin⟩
    refine ⟨⟨Ideal.comap_isPrime φ W', Ideal.map_le_iff_le_comap.1 (le_sup_right.trans hle)⟩, ?_⟩
    rintro Q ⟨hQ, hJQ⟩ hQW
    obtain ⟨Q', hQ', hPQ', rfl⟩ := exists_lift h hQ (hJ.trans hJQ) fun hq => hs (hQW hq)
    have h1 : Q' ≤ W' := mono h hW' hPQ' hPW hs hQW
    exact Ideal.comap_mono (hmin ⟨hQ', sup_le hPQ' (Ideal.map_le_iff_le_comap.2 hJQ)⟩ h1)
  · rintro ⟨⟨-, hle⟩, hmin⟩
    refine ⟨⟨hW', sup_le hPW (Ideal.map_le_iff_le_comap.2 hle)⟩, ?_⟩
    rintro Q' ⟨hQ', hJQ⟩ hQW
    have h1 : W'.comap φ ≤ Q'.comap φ :=
      hmin ⟨Ideal.comap_isPrime φ Q', Ideal.map_le_iff_le_comap.1 (le_sup_right.trans hJQ)⟩
        (Ideal.comap_mono hQW)
    exact mono h hQ' hPW (le_sup_left.trans hJQ) (fun hq => hs (hQW hq)) h1

theorem length_eq (h : ∀ r : R', ∃ (n : ℕ) (g : R), φ s ^ n * r - φ g ∈ P') (J : Ideal R)
    (hJ : P'.comap φ ≤ J) (W' : Ideal R') [hW' : W'.IsPrime] (W : Ideal R) [hW : W.IsPrime]
    (hWW : W = W'.comap φ) (hPW : P' ≤ W') (hs : φ s ∉ W') :
    Module.length (Localization.AtPrime W') (LocalizedModule W'.primeCompl (R' ⧸ (P' ⊔ J.map φ))) =
      Module.length (Localization.AtPrime W) (LocalizedModule W.primeCompl (R ⧸ J)) := by
  rw [length_loc_quot, length_loc_quot]
  have hmem : ∀ {x : R}, x ∈ W ↔ φ x ∈ W' := by
    intro x
    rw [hWW, Ideal.mem_comap]
  have hsW : s ∉ W := fun hh => hs (hmem.1 hh)
  have hspow : ∀ n : ℕ, φ s ^ n ∉ W' := fun n hh => hs (hW'.mem_of_pow_mem _ hh)
  let ψ : Localization.AtPrime W →+* Localization.AtPrime W' := Localization.localRingHom W W' φ hWW
  have hψ : ∀ x, ψ (algebraMap R _ x) = algebraMap R' _ (φ x) :=
    fun x => Localization.localRingHom_to_map W W' φ hWW x
  obtain ⟨I', hI'⟩ : ∃ I', I' = (P' ⊔ J.map φ).map (algebraMap R' (Localization.AtPrime W')) := ⟨_, rfl⟩
  have hPI : ∀ {x}, x ∈ P' → algebraMap R' (Localization.AtPrime W') x ∈ I' := by
    intro x hx
    rw [hI']
    exact Ideal.mem_map_of_mem _ (Ideal.mem_sup_left hx)
  let g := (Ideal.Quotient.mk I').comp ψ

  have hunit : ∀ t, t ∉ W' → ∃ u : Localization.AtPrime W, IsUnit u ∧
      g u = Ideal.Quotient.mk I' (algebraMap R' _ t) := by
    intro t ht
    obtain ⟨n, k, hk⟩ := h t
    have hkW : k ∉ W := by
      intro hh
      have h3 : φ s ^ n * t ∈ W' := by simpa using W'.add_mem (hPW hk) (hmem.1 hh)
      exact (hW'.mem_or_mem h3).elim (hspow n) ht
    have hsn : s ^ n ∈ W.primeCompl := W.primeCompl.pow_mem hsW n
    refine ⟨IsLocalization.mk' _ k ⟨s ^ n, hsn⟩,
      (IsLocalization.AtPrime.isUnit_mk'_iff _ W k _).2 hkW, ?_⟩
    have hu : IsUnit (g (algebraMap R (Localization.AtPrime W) (s ^ n))) :=
      (IsLocalization.map_units (Localization.AtPrime W) ⟨s ^ n, hsn⟩).map g
    refine hu.mul_left_cancel ?_
    rw [← map_mul, IsLocalization.mk'_spec' (Localization.AtPrime W) k ⟨s ^ n, hsn⟩]
    simp only [g, RingHom.comp_apply, hψ]
    rw [← map_mul, ← map_mul, eq_comm, Ideal.Quotient.eq, ← map_sub, map_pow]
    exact hPI hk
  have hall : ∀ r : R', ∃ u : Localization.AtPrime W,
      g u = Ideal.Quotient.mk I' (algebraMap R' _ r) := by
    intro r
    by_cases hr : r ∈ W'
    · have h1 : 1 + r ∉ W' := fun hh => hW'.ne_top ((Ideal.eq_top_iff_one _).2 (by
        simpa using W'.sub_mem hh hr))
      obtain ⟨u, -, hu⟩ := hunit _ h1
      refine ⟨u - 1, ?_⟩
      rw [map_sub, hu, map_one, map_add (f := _), map_add (f := _), map_one, map_one]
      ring
    · obtain ⟨u, -, hu⟩ := hunit _ hr
      exact ⟨u, hu⟩
  have hg : Function.Surjective g := by
    intro z
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective z
    obtain ⟨⟨r, t⟩, hrt⟩ := IsLocalization.surj W'.primeCompl x
    obtain ⟨a, ha⟩ := hall r
    obtain ⟨u, ⟨u, rfl⟩, hu⟩ := hunit t.1 t.2
    refine ⟨a * (u⁻¹ : (Localization.AtPrime W)ˣ), ?_⟩
    have hrt' : x * algebraMap R' (Localization.AtPrime W') t.1 = algebraMap R' _ r := hrt
    rw [map_mul, ha, ← hrt', map_mul, ← hu, mul_assoc, ← map_mul, Units.mul_inv, map_one, mul_one]
  have hgk : J.map (algebraMap R (Localization.AtPrime W)) = RingHom.ker g := by
    apply le_antisymm
    · rw [Ideal.map_le_iff_le_comap]
      intro x hx
      rw [Ideal.mem_comap, RingHom.mem_ker]
      simp only [g, RingHom.comp_apply, hψ]
      rw [Ideal.Quotient.eq_zero_iff_mem, hI']
      exact Ideal.mem_map_of_mem _ (Ideal.mem_sup_right (Ideal.mem_map_of_mem _ hx))
    · intro x hx
      obtain ⟨⟨r, t⟩, hrt⟩ := IsLocalization.surj W.primeCompl x
      have hrt' : x * algebraMap R (Localization.AtPrime W) t.1 = algebraMap R _ r := hrt
      have h1 : algebraMap R (Localization.AtPrime W) r ∈ RingHom.ker g := by
        rw [← hrt']
        exact Ideal.mul_mem_right _ _ hx
      rw [RingHom.mem_ker] at h1
      simp only [g, RingHom.comp_apply, hψ] at h1
      rw [Ideal.Quotient.eq_zero_iff_mem, hI',
        IsLocalization.algebraMap_mem_map_algebraMap_iff W'.primeCompl] at h1
      obtain ⟨t', ht', h2⟩ := h1
      obtain ⟨n, k, hk⟩ := h t'
      have hkW : k ∉ W := by
        intro hh
        have h3 : φ s ^ n * t' ∈ W' := by simpa using W'.add_mem (hPW hk) (hmem.1 hh)
        exact (hW'.mem_or_mem h3).elim (hspow n) ht'
      have h4 : φ (k * r) ∈ P' ⊔ J.map φ := by
        have := (P' ⊔ J.map φ).sub_mem ((P' ⊔ J.map φ).mul_mem_left (φ s ^ n) h2)
          ((P' ⊔ J.map φ).mul_mem_left (φ r) (Ideal.mem_sup_left hk))
        convert this using 1
        rw [map_mul]
        ring
      obtain ⟨m, hm⟩ := key' h J hJ h4
      have h5 : algebraMap R (Localization.AtPrime W) r ∈ J.map (algebraMap R (Localization.AtPrime W)) := by
        rw [IsLocalization.algebraMap_mem_map_algebraMap_iff W.primeCompl]
        exact ⟨s ^ m * k, W.primeCompl.mul_mem (W.primeCompl.pow_mem hsW m) hkW, by
          rw [mul_assoc]; exact hm⟩
      rw [← hrt'] at h5
      exact (Ideal.mul_unit_mem_iff_mem _ (IsLocalization.map_units (Localization.AtPrime W) t)).1 h5
  have key := length_self_eq
    ((Ideal.quotEquivOfEq hgk).trans (RingHom.quotientKerEquivOfSurjective hg))
  rw [key, hI']

end BaseChangeColon.Corr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.IdealCycleValues.LengthLocQuot =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PointIdealComapPrimeLift =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PointIdealComapPrimeLift", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ConstantsMonomialApproximation\npublic import Development.WeilBound.CoreStatements.IdealCycleValues.LengthLocQuot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num

section ConstantsCorrespondence

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω]
  {A : Type} [CommRing A] [Algebra A Ω]

theorem pointConeMap_map_intCast (y : (Σ k, ι k) → Ω) (g : MRing ι ℤ) :
    pointConeMap A y (MvPolynomial.map (Int.castRingHom A) g) = ReciprocityTheory.ChartRestriction.G.Geo.mConeMap y g := by
  induction g using MvPolynomial.induction_on with
  | C a => simp [pointConeMap, ReciprocityTheory.ChartRestriction.G.Geo.mConeMap]
  | add p q hp hq => simp only [map_add (f := _), hp, hq]
  | mul_X p i hp =>
    simp only [map_mul, hp, map_X]
    simp [pointConeMap, ReciprocityTheory.ChartRestriction.G.Geo.mConeMap]

theorem comap_pointIdeal_eq_mCoordIdeal (y : (Σ k, ι k) → Ω) :
    (pointIdeal A y).comap (MvPolynomial.map (Int.castRingHom A)) = mCoordIdeal y := by
  ext g
  rw [Ideal.mem_comap]
  simp only [pointIdeal, mCoordIdeal, RingHom.mem_ker, pointConeMap_map_intCast]

theorem exists_pow_chartMonomial_mul_sub_map_mem {y : (Σ k, ι k) → Ω} (hA : HasConstants ℤ A y) (c : ∀ k, ι k)
    (r : MRing ι A) :
    ∃ (n : ℕ) (g : MRing ι ℤ),
      (MvPolynomial.map (Int.castRingHom A) (∏ k, X ⟨k, c k⟩ : MRing ι ℤ)) ^ n * r -
        MvPolynomial.map (Int.castRingHom A) g ∈ pointIdeal A y := by
  have hs : MvPolynomial.map (Int.castRingHom A) (∏ k, X ⟨k, c k⟩ : MRing ι ℤ) =
      (∏ k, X ⟨k, c k⟩ : MRing ι A) := by
    simp [map_prod]
  rw [hs]
  set s : MRing ι A := ∏ k, X ⟨k, c k⟩ with hsdef
  induction r using MvPolynomial.induction_on with
  | C a =>
    obtain ⟨n, G, -, hG⟩ := const_mul_chartMonomial_pow_form K ι Ω y A hA c a
    refine ⟨n, G, ?_⟩
    rw [mul_comm]
    exact hG
  | add p q hp hq =>
    obtain ⟨n, g, hg⟩ := hp
    obtain ⟨m, k, hk⟩ := hq
    refine ⟨n + m, (∏ k, X ⟨k, c k⟩ : MRing ι ℤ) ^ m * g + (∏ k, X ⟨k, c k⟩ : MRing ι ℤ) ^ n * k, ?_⟩
    have h := (pointIdeal A y).add_mem ((pointIdeal A y).mul_mem_left (s ^ m) hg)
      ((pointIdeal A y).mul_mem_left (s ^ n) hk)
    convert h using 1
    simp only [map_add (f := _), map_mul, map_pow, hs, ← hsdef]
    ring
  | mul_X p i hp =>
    obtain ⟨n, g, hg⟩ := hp
    refine ⟨n, g * X i, ?_⟩
    have h := (pointIdeal A y).mul_mem_right (X i) hg
    convert h using 1
    simp only [map_mul, map_X]
    ring

theorem exists_chart_not_mem {R : Type} [CommRing R] {W : Ideal (MRing ι R)} (hW : W.IsPrime) (hr : IsRelevant W) :
    ∃ c : ∀ k, ι k, (∏ k, X ⟨k, c k⟩ : MRing ι R) ∉ W := by
  choose c hc using hr
  refine ⟨c, fun h => ?_⟩
  obtain ⟨k, -, hk⟩ := (hW.prod_mem_iff).1 h
  exact hc k hk

theorem isRelevant_comap_map_intCast {W' : Ideal (MRing ι A)} (hr : IsRelevant W') :
    IsRelevant (W'.comap (MvPolynomial.map (Int.castRingHom A)) : Ideal (MRing ι ℤ)) := by
  intro k
  obtain ⟨i, hi⟩ := hr k
  exact ⟨i, by simpa [Ideal.mem_comap] using hi⟩

end ConstantsCorrespondence

theorem pl_corr : ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] (y : (Σ k, ι k) → Ω) (A : Type) [CommRing A] [Algebra A Ω], HasConstants ℤ A y → (pointIdeal A y).comap (MvPolynomial.map (Int.castRingHom A)) = mCoordIdeal y ∧ (∀ W : Ideal (MRing ι ℤ), W.IsPrime → IsRelevant W → mCoordIdeal y ≤ W → ∃! W' : Ideal (MRing ι A), W'.IsPrime ∧ pointIdeal A y ≤ W' ∧ W'.comap (MvPolynomial.map (Int.castRingHom A)) = W) ∧ ∀ (f : MRing ι ℤ) (W' : Ideal (MRing ι A)), W'.IsPrime → IsRelevant W' → pointIdeal A y ≤ W' → divCycle (pointIdeal A y) (MvPolynomial.map (Int.castRingHom A) f) W' = divCycle (mCoordIdeal y) f (W'.comap (MvPolynomial.map (Int.castRingHom A))) := by
  intro K _ _ ι _ Ω _ y A _ _ hA
  have hcomap := comap_pointIdeal_eq_mCoordIdeal (A := A) y
  refine ⟨hcomap, ?_, ?_⟩
  · intro W hW hr hle
    obtain ⟨c, hc⟩ := exists_chart_not_mem hW hr
    have h := exists_pow_chartMonomial_mul_sub_map_mem hA c
    obtain ⟨W', hW', hPW', hWc⟩ := BaseChangeColon.Corr.exists_lift h hW (by rw [hcomap]; exact hle) hc
    have hc' : MvPolynomial.map (Int.castRingHom A) (∏ k, X ⟨k, c k⟩ : MRing ι ℤ) ∉ W' := by
      intro hm
      apply hc
      rw [← hWc]
      exact hm
    refine ⟨W', ⟨hW', hPW', hWc⟩, ?_⟩
    rintro V ⟨hV, hPV, hVc⟩
    have hcV : MvPolynomial.map (Int.castRingHom A) (∏ k, X ⟨k, c k⟩ : MRing ι ℤ) ∉ V := by
      intro hm
      apply hc
      rw [← hVc]
      exact hm
    exact le_antisymm (BaseChangeColon.Corr.mono h hW' hPV hPW' hc' (by rw [hVc, hWc]))
      (BaseChangeColon.Corr.mono h hV hPW' hPV hcV (by rw [hVc, hWc]))
  · intro f W' hW' hr hPW'
    obtain ⟨c, hc⟩ : ∃ c : ∀ k, ι k,
        MvPolynomial.map (Int.castRingHom A) (∏ k, X ⟨k, c k⟩ : MRing ι ℤ) ∉ W' := by
      obtain ⟨c, hc⟩ := exists_chart_not_mem hW' hr
      exact ⟨c, by simpa [map_prod] using hc⟩
    have h := exists_pow_chartMonomial_mul_sub_map_mem hA c
    set φ := MvPolynomial.map (σ := (Σ k, ι k)) (Int.castRingHom A) with hφ
    set J : Ideal (MRing ι ℤ) := mCoordIdeal y ⊔ Ideal.span {f} with hJdef
    have hJ : (pointIdeal A y).comap φ ≤ J := by rw [hcomap]; exact le_sup_left
    have hJeq : pointIdeal A y ⊔ Ideal.span {φ f} = pointIdeal A y ⊔ J.map φ := by
      rw [hJdef, Ideal.map_sup, Ideal.map_span, Set.image_singleton, ← sup_assoc]
      congr 1
      refine (sup_eq_left.2 ?_).symm
      rw [Ideal.map_le_iff_le_comap, hcomap]
    have hmin := BaseChangeColon.Corr.minimal_iff h J hJ hW' hPW' hc
    have hrel := isRelevant_comap_map_intCast hr
    have hWp : (W'.comap φ).IsPrime := Ideal.comap_isPrime φ W'
    have hlen := BaseChangeColon.Corr.length_eq h J hJ W' (W'.comap φ) rfl hPW' hc
    have hmin' : W' ∈ (pointIdeal A y ⊔ Ideal.span {φ f}).minimalPrimes ↔ W'.comap φ ∈ J.minimalPrimes := by
      rw [hJeq]
      exact hmin
    have hlen' : Module.length (Localization.AtPrime W')
        (LocalizedModule W'.primeCompl (MRing ι A ⧸ (pointIdeal A y ⊔ Ideal.span {φ f}))) =
        Module.length (Localization.AtPrime (W'.comap φ))
          (LocalizedModule (W'.comap φ).primeCompl (MRing ι ℤ ⧸ J)) := by
      rw [hJeq]
      exact hlen
    unfold divCycle
    by_cases hm : W'.comap φ ∈ J.minimalPrimes
    · rw [dite_eq_left ⟨hmin'.2 hm, hr⟩, dite_eq_left ⟨hm, hrel⟩]
      exact congrArg (fun t : ℕ∞ => ((ENat.toNat t : ℕ) : ℤ)) hlen'
    · rw [dite_eq_right (fun hh => hm (hmin'.1 hh.1)), dite_eq_right (fun hh => hm hh.1)]

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PointIdealComapPrimeLift =====
