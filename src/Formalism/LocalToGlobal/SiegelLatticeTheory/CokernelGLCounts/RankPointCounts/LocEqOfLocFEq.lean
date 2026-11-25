module

import Formalism.LocalToGlobal.SubmoduleMembership
public import Formalism.PeriodIntegrals.LatLocGlob
public import Lemmata.GeneralBFactThirdBisAlt.Imports
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.LocalDensityRatio
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermLoc
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsBasisLocF
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.EmbeddingIntegerAlgebraMap
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassMass.PSurjF
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalGlobalLattice.ExistsSmulMemOfLocal, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatLocGlob, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocEqOfLocFEq

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalGlobalLattice.ExistsSmulMemOfLocal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalGlobalLattice.ExistsSmulMemOfLocal", "h": "module\n\nimport Formalism.LocalToGlobal.SubmoduleMembership\npublic import Formalism.PeriodIntegrals.LatLocGlob\npublic import Lemmata.GeneralBFactThirdBisAlt.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.LatLocGlob.Proof

open PI.LatLocGlob

section General

variable {R V : Type} [CommRing R] [AddCommGroup V] [Module R V]

theorem mem_loc {p : Ideal R} {N : Submodule R V} {x : V} :
    x ∈ loc p N ↔ ∃ s : R, s ∉ p ∧ s • x ∈ N := Iff.rfl

def locSub (p : Ideal R) (hp : p.IsPrime) (N : Submodule R V) : Submodule R V where
  carrier := loc p N
  add_mem' := by
    intro x y hx hy
    obtain ⟨s, hs, hsx⟩ := mem_loc.1 hx
    obtain ⟨t, ht, hty⟩ := mem_loc.1 hy
    refine mem_loc.2 ⟨s * t, fun h => (hp.mem_or_mem h).elim hs ht, ?_⟩
    rw [smul_add, mul_smul s t y, mul_comm s t, mul_smul t s x]
    exact N.add_mem (N.smul_mem t hsx) (N.smul_mem s hty)
  zero_mem' := mem_loc.2 ⟨1, (Ideal.ne_top_iff_one p).1 hp.ne_top, by simp⟩
  smul_mem' := by
    intro c x hx
    obtain ⟨s, hs, hsx⟩ := mem_loc.1 hx
    refine mem_loc.2 ⟨s, hs, ?_⟩
    rw [smul_comm s c x]
    exact N.smul_mem c hsx

theorem mem_locSub {p : Ideal R} {hp : p.IsPrime} {N : Submodule R V} {x : V} :
    x ∈ locSub p hp N ↔ x ∈ loc p N := Iff.rfl

theorem mem_loc_of_mem {p : Ideal R} (hp : p ≠ ⊤) {N : Submodule R V} {x : V} (hx : x ∈ N) :
    x ∈ loc p N :=
  mem_loc.2 ⟨1, (Ideal.ne_top_iff_one p).1 hp, by simpa using hx⟩

theorem mem_loc_of_smul {p : Ideal R} (hp : p.IsPrime) {N : Submodule R V} {u : R} {y : V}
    (hu : u ∉ p) (h : u • y ∈ loc p N) : y ∈ loc p N := by
  obtain ⟨s, hs, hsy⟩ := mem_loc.1 h
  exact mem_loc.2 ⟨s * u, fun h' => (hp.mem_or_mem h').elim hs hu, by rwa [mul_smul]⟩

theorem mem_of_forall_loc (N : Submodule R V) (x : V)
    (h : ∀ p : Ideal R, p.IsMaximal → x ∈ loc p N) : x ∈ N := by
  exact Submodule.mem_of_forall_exists_smul_mem N x fun p hp ↦ mem_loc.mp (h p hp)

end General

theorem commonMult {R ι : Type} [CommRing R] [IsDomain R] (P : ι → R → Prop)
    (hP : ∀ i c d, P i c → P i (d * c)) (T : Finset ι)
    (hT : ∀ i ∈ T, ∃ c : R, c ≠ 0 ∧ P i c) : ∃ c : R, c ≠ 0 ∧ ∀ i ∈ T, P i c := by
  classical
  induction T using Finset.induction_on with
  | empty => exact ⟨1, one_ne_zero, by simp⟩
  | insert a T ha ih =>
    obtain ⟨c, hc, hPc⟩ := ih (fun i hi => hT i (Finset.mem_insert_of_mem hi))
    obtain ⟨ca, hca, hPa⟩ := hT a (Finset.mem_insert_self a T)
    refine ⟨c * ca, mul_ne_zero hc hca, ?_⟩
    intro i hi
    rcases Finset.mem_insert.1 hi with rfl | hi
    · exact hP _ _ _ hPa
    · rw [mul_comm]; exact hP _ _ _ (hPc i hi)

section Frac

variable {R K V : Type} [CommRing R] [IsDomain R] [Field K] [Algebra R K] [IsFractionRing R K]
  [AddCommGroup V] [Module K V] [Module R V] [IsScalarTower R K V]

alias exists_smul_mem := _root_.Bl.general_b_fact_third_bis_other.goal1

theorem exists_smul_le {N N' : Submodule R V} (hN : N.FG)
    (hN' : Submodule.span K (N' : Set V) = ⊤) : ∃ c : R, c ≠ 0 ∧ ∀ x ∈ N, c • x ∈ N' := by
  obtain ⟨s, rfl⟩ := hN
  obtain ⟨c, hc, hcs⟩ := commonMult (fun (g : V) (c : R) => c • g ∈ N')
    (fun g c d h => by rw [mul_smul]; exact N'.smul_mem d h) s
    (fun g _ => exists_smul_mem (K := K) N' (by rw [hN']; exact Submodule.mem_top))
  refine ⟨c, hc, fun x hx => ?_⟩
  have hle : Submodule.span R (s : Set V) ≤ N'.comap (c • LinearMap.id) := by
    rw [Submodule.span_le]
    intro g hg
    simpa using hcs g hg
  simpa using hle hx

end Frac

section DedekindLFunctions

variable {R V : Type} [CommRing R] [IsDedekindDomain R] [AddCommGroup V] [Module R V]

theorem exists_smul_mem_of_local (W : Ideal R → Set V) (L : Submodule R V)
    (hL : ∀ y, y ∈ L ↔ ∀ q : Ideal R, q.IsMaximal → y ∈ W q)
    (hWsmul : ∀ q : Ideal R, q.IsMaximal → ∀ (r : R) (y : V), y ∈ W q → r • y ∈ W q)
    (hWsat : ∀ q : Ideal R, q.IsMaximal → ∀ (u : R) (y : V), u ∉ q → u • y ∈ W q → y ∈ W q)
    {p : Ideal R} (hp : p.IsMaximal) {x : V} (hx : x ∈ W p) {d : R} (hd : d ≠ 0)
    (hdx : d • x ∈ L) : ∃ s : R, s ∉ p ∧ s • x ∈ L := by
  classical
  by_cases hdp : d ∈ p
  swap
  · exact ⟨d, hdp, hdx⟩
  have hpbot : p ≠ ⊥ := fun h => hd (by rw [h] at hdp; simpa using hdp)
  have hnf : ¬ IsField R := by
    rw [Ring.not_isField_iff_exists_ideal_bot_lt_and_lt_top]
    exact ⟨p, bot_lt_iff_ne_bot.2 hpbot, lt_top_iff_ne_top.2 hp.ne_top⟩
  let I : Ideal R := L.comap (LinearMap.toSpanSingleton R V x)
  have hI : ∀ r, r ∈ I ↔ r • x ∈ L := fun r => by simp [I]
  have hI0 : I ≠ ⊥ := by
    intro h
    have h1 := (hI d).2 hdx
    rw [h] at h1
    exact hd (by simpa using h1)
  obtain ⟨Z, hZle, hZne⟩ := PrimeSpectrum.exists_primeSpectrum_prod_le_and_ne_bot_of_domain hnf hI0
  have key : ∀ Y : Multiset (Ideal R), (∀ P ∈ Y, P.IsPrime ∧ P ≠ ⊥) →
      ∀ y ∈ W p, (∀ r ∈ Y.prod, r • y ∈ L) → ∃ s : R, s ∉ p ∧ s • y ∈ L := by
    intro Y
    induction Y using Multiset.induction_on with
    | empty =>
      intro _ y _ hy
      refine ⟨1, (Ideal.ne_top_iff_one p).1 hp.ne_top, hy 1 ?_⟩
      simp
    | cons P Y ih =>
      intro hPY y hyp hy
      have hP := hPY P (Multiset.mem_cons.2 (Or.inl rfl))
      have hPmax : P.IsMaximal := Ring.DimensionLEOne.maximalOfPrime hP.2 hP.1
      have hY' : ∀ Q ∈ Y, Q.IsPrime ∧ Q ≠ ⊥ := fun Q hQ => hPY Q (Multiset.mem_cons.2 (Or.inr hQ))
      rw [Multiset.prod_cons] at hy
      by_cases hPp : P = p
      · apply ih hY' y hyp
        intro r hr
        rw [hL]
        intro q hq
        by_cases hqp : q = p
        · rw [hqp]; exact hWsmul p hp r y hyp
        · obtain ⟨t, htP, htq⟩ : ∃ t ∈ P, t ∉ q := by
            by_contra h
            push Not at h
            exact hqp ((hPmax.eq_of_le hq.ne_top (fun t ht => h t ht)).symm.trans hPp)
          have h1 := (hL _).1 (hy (t * r) (Ideal.mul_mem_mul htP hr)) q hq
          rw [mul_smul] at h1
          exact hWsat q hq t _ htq h1
      · obtain ⟨a, haP, hap⟩ : ∃ a ∈ P, a ∉ p := by
          by_contra h
          push Not at h
          exact hPp (hPmax.eq_of_le hp.ne_top (fun t ht => h t ht))
        obtain ⟨s, hs, hsy⟩ := ih hY' (a • y) (hWsmul p hp a y hyp) (fun r hr => by
          have h1 := hy (a * r) (Ideal.mul_mem_mul haP hr)
          rwa [mul_comm, mul_smul] at h1)
        refine ⟨s * a, fun h => (hp.isPrime.mem_or_mem h).elim hs hap, ?_⟩
        rwa [mul_smul]
  apply key (Z.map PrimeSpectrum.asIdeal) _ x hx
  · intro r hr
    exact (hI r).1 (hZle hr)
  · intro P hP
    obtain ⟨P', _, rfl⟩ := Multiset.mem_map.1 hP
    refine ⟨P'.isPrime, fun h => hZne ?_⟩
    have h0 : (0 : Ideal R) ∈ Z.map PrimeSpectrum.asIdeal := by
      rw [Ideal.zero_eq_bot, ← h]; exact hP
    rw [← Ideal.zero_eq_bot]
    exact Multiset.prod_eq_zero h0

end DedekindLFunctions

section Main

variable {R K V : Type} [CommRing R] [IsDedekindDomain R] [Field K] [Algebra R K]
  [IsFractionRing R K] [AddCommGroup V] [Module K V] [Module R V] [IsScalarTower R K V]

theorem exists_unique_lat (L0 : Submodule R V) (hL0 : IsFullLat K L0) (M : Ideal R → Set V)
    (hM : ∀ p : Ideal R, p.IsMaximal → ∃ N : Submodule R V, IsFullLat K N ∧ M p = loc p N)
    (hfin : Set.Finite {p : Ideal R | p.IsMaximal ∧ M p ≠ loc p L0}) :
    ∃! L : Submodule R V, IsFullLat K L ∧ ∀ p : Ideal R, p.IsMaximal → loc p L = M p := by
  classical
  obtain ⟨hL0fg, hL0sp⟩ := hL0
  choose! N hNfull hMN using hM
  have hMsmul : ∀ q : Ideal R, q.IsMaximal → ∀ (r : R) (y : V), y ∈ M q → r • y ∈ M q := by
    intro q hq r y hy
    rw [hMN q hq] at hy ⊢
    exact mem_locSub.1 ((locSub q hq.isPrime (N q)).smul_mem r (mem_locSub.2 hy))
  have hMsat : ∀ q : Ideal R, q.IsMaximal → ∀ (u : R) (y : V), u ∉ q → u • y ∈ M q → y ∈ M q := by
    intro q hq u y hu h
    rw [hMN q hq] at h ⊢
    exact mem_loc_of_smul hq.isPrime hu h
  let L : Submodule R V := ⨅ q : {q : Ideal R // q.IsMaximal}, locSub q.1 q.2.isPrime (N q.1)
  have hL : ∀ x, x ∈ L ↔ ∀ q : Ideal R, q.IsMaximal → x ∈ M q := by
    intro x
    simp only [L, Submodule.mem_iInf, mem_locSub]
    constructor
    · intro h q hq
      rw [hMN q hq]
      exact h ⟨q, hq⟩
    · intro h q
      rw [← hMN q.1 q.2]
      exact h q.1 q.2
  obtain ⟨c1, hc1, hc1N⟩ := commonMult (fun (q : Ideal R) (c : R) => ∀ y ∈ N q, c • y ∈ L0)
    (fun q c d h y hy => by rw [mul_smul]; exact L0.smul_mem d (h y hy)) hfin.toFinset
    (fun q hq => by
      have hq' : q.IsMaximal ∧ M q ≠ loc q L0 := (Set.Finite.mem_toFinset hfin).1 hq
      obtain ⟨hfg, _⟩ := hNfull q hq'.1
      exact exists_smul_le (K := K) hfg hL0sp)
  obtain ⟨c2, hc2, hc2N⟩ := commonMult (fun (q : Ideal R) (c : R) => ∀ y ∈ L0, c • y ∈ N q)
    (fun q c d h y hy => by rw [mul_smul]; exact (N q).smul_mem d (h y hy)) hfin.toFinset
    (fun q hq => by
      have hq' : q.IsMaximal ∧ M q ≠ loc q L0 := (Set.Finite.mem_toFinset hfin).1 hq
      obtain ⟨_, hsp⟩ := hNfull q hq'.1
      exact exists_smul_le (K := K) hL0fg hsp)
  have hLc1 : ∀ x ∈ L, c1 • x ∈ L0 := by
    intro x hx
    apply mem_of_forall_loc
    intro q hq
    have hxq := (hL x).1 hx q hq
    by_cases hqS : M q = loc q L0
    · rw [hqS] at hxq
      exact mem_locSub.1 ((locSub q hq.isPrime L0).smul_mem c1 (mem_locSub.2 hxq))
    · rw [hMN q hq] at hxq
      obtain ⟨s, hs, hsx⟩ := mem_loc.1 hxq
      refine mem_loc.2 ⟨s, hs, ?_⟩
      rw [smul_comm]
      exact hc1N q ((Set.Finite.mem_toFinset hfin).2 ⟨hq, hqS⟩) _ hsx
  have hLc2 : ∀ y ∈ L0, c2 • y ∈ L := by
    intro y hy
    rw [hL]
    intro q hq
    by_cases hqS : M q = loc q L0
    · rw [hqS]
      exact mem_loc_of_mem hq.ne_top (L0.smul_mem c2 hy)
    · rw [hMN q hq]
      exact mem_loc_of_mem hq.ne_top (hc2N q ((Set.Finite.mem_toFinset hfin).2 ⟨hq, hqS⟩) y hy)
  have hLfg : L.FG := by
    let f : V →ₗ[R] V := c1 • LinearMap.id
    have hK1 : algebraMap R K c1 ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective R K)).2 hc1
    have hf : Function.Injective f := fun v w h => by
      have h' : c1 • v = c1 • w := by simpa only [f, LinearMap.smul_apply, LinearMap.id_apply] using h
      have h'' : algebraMap R K c1 • v = algebraMap R K c1 • w := by
        rw [algebraMap_smul, algebraMap_smul]; exact h'
      exact (smul_right_inj hK1).1 h''
    refine Submodule.fg_of_fg_map_injective (f := f) hf ?_
    refine Submodule.FG.of_le hL0fg ?_
    rintro _ ⟨x, hx, rfl⟩
    simpa [f] using hLc1 x hx
  have hLspan : Submodule.span K (L : Set V) = ⊤ := by
    rw [eq_top_iff, ← hL0sp, Submodule.span_le]
    intro y hy
    have hK : algebraMap R K c2 ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective R K)).2 hc2
    have h1 : c2 • y ∈ Submodule.span K (L : Set V) := Submodule.subset_span (hLc2 y hy)
    have h2 := Submodule.smul_mem _ (algebraMap R K c2)⁻¹ h1
    rwa [← algebraMap_smul K c2 y, inv_smul_smul₀ hK] at h2
  have hLfull : IsFullLat K L := by
    unfold IsFullLat
    exact ⟨hLfg, hLspan⟩
  have hloc : ∀ p : Ideal R, p.IsMaximal → loc p L = M p := by
    intro p hp
    ext x
    constructor
    · intro hx
      obtain ⟨s, hs, hsx⟩ := mem_loc.1 hx
      exact hMsat p hp s x hs ((hL _).1 hsx p hp)
    · intro hx
      obtain ⟨d, hd, hdx⟩ := exists_smul_mem (K := K) L (v := x) (by rw [hLspan]; exact Submodule.mem_top)
      obtain ⟨s, hs, hsx⟩ := exists_smul_mem_of_local M L hL hMsmul hMsat hp hx hd hdx
      exact mem_loc.2 ⟨s, hs, hsx⟩
  refine ExistsUnique.intro L ⟨hLfull, hloc⟩ ?_
  rintro L' ⟨_, hloc'⟩
  ext x
  constructor
  · intro hx
    rw [hL]
    intro q hq
    rw [← hloc' q hq]
    exact mem_loc_of_mem hq.ne_top hx
  · intro hx
    apply mem_of_forall_loc L' x
    intro q hq
    rw [hloc' q hq]
    exact (hL x).1 hx q hq

end Main

theorem latLocGlob_core : LatLocGlob := by
  intro R K V _ _ _ _ _ _ _ _ _ _ L0 hL0 M hM hfin
  exact exists_unique_lat L0 hL0 M hM hfin

end PI.LatLocGlob.Proof
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalGlobalLattice.ExistsSmulMemOfLocal =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatLocGlob =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatLocGlob", "h": "module\n\npublic import Formalism.PeriodIntegrals.LatLocGlob\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalGlobalLattice.ExistsSmulMemOfLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

alias latLocGlob := _root_.PI.LatLocGlob.Proof.latLocGlob_core
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatLocGlob =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocEqOfLocFEq =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocEqOfLocFEq", "h": "module\n\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.LocalDensityRatio\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermLoc\npublic import Formalism.PeriodIntegrals.LatLocGlob\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsBasisLocF\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.EmbeddingIntegerAlgebraMap\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatLocGlob\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassMass.PSurjF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField IsDedekindDomain IsDedekindDomain.HeightOneSpectrum Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermLoc

namespace Formalism.L2.SG.Pf.FrameGlobalPatching

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def LatPatch : Prop :=
  ∀ (D : D7) (Zd : LocDat D) (Λ₀ : Submodule (𝓞 D.host.E) (VS D).V), Submodule.IsFullLattice D.host.E Λ₀ →
    ∀ Mf : ∀ p : PlF D, Submodule (Zd.M p).L.O (Vp D p),
      (∀ p, ∃ Λ' : Submodule (𝓞 D.host.E) (VS D).V, Submodule.IsFullLattice D.host.E Λ' ∧ Mf p = lattice₂ D Zd.M p Λ') →
      {p | Mf p ≠ lattice₂ D Zd.M p Λ₀}.Finite →
      ∃! Λ : Submodule (𝓞 D.host.E) (VS D).V, Submodule.IsFullLattice D.host.E Λ ∧ ∀ p, lattice₂ D Zd.M p Λ = Mf p

end Formalism.L2.SG.Pf.FrameGlobalPatching

namespace Formalism.L2.SG.Pf.LocalDenominators

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

theorem localLattice_eq_iff (Zd : LocDat D) (p : PlF D) {Λ₁ Λ₂ : Submodule (𝓞 D.host.E) (VS D).V}
    (h₁ : Submodule.IsFullLattice D.host.E Λ₁) (h₂ : Submodule.IsFullLattice D.host.E Λ₂) :
    lattice₂ D Zd.M p Λ₁ = lattice₂ D Zd.M p Λ₂ ↔
      Formalism.HermitianLattices.Ext.L3.locF p.asIdeal Λ₁ = Formalism.HermitianLattices.Ext.L3.locF p.asIdeal Λ₂ := by
  haveI := p.isPrime
  letI := h₁
  letI := h₂
  have mem_iff {Λ : Submodule (𝓞 D.host.E) (VS D).V} [Submodule.IsFullLattice D.host.E Λ] (x : (VS D).V) :
      baseChange₂ D p x ∈ lattice₂ D Zd.M p Λ ↔ x ∈ Formalism.HermitianLattices.Ext.L3.locF p.asIdeal Λ :=
    baseChangeAt_mem_localLattice_iff Zd p (by infer_instance) x
  constructor
  · intro h
    ext x
    rw [← mem_iff (Λ := Λ₁), ← mem_iff (Λ := Λ₂), h]
  · intro h
    have key {A B : Submodule (𝓞 D.host.E) (VS D).V} [Submodule.IsFullLattice D.host.E B]
        (hAB : Formalism.HermitianLattices.Ext.L3.locF p.asIdeal A = Formalism.HermitianLattices.Ext.L3.locF p.asIdeal B) :
        lattice₂ D Zd.M p A ≤ lattice₂ D Zd.M p B := by
      refine Submodule.span_le.2 ?_
      rintro _ ⟨y, hy, rfl⟩
      rw [SetLike.mem_coe, mem_iff, ← hAB]
      exact (Formalism.HermitianLattices.Ext.L3.LocalSpans.mem_locF p.asIdeal A y).2
        ⟨1, fun h1 => p.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 h1), by simpa using hy⟩
    exact le_antisymm (key h) (key h.symm)

section Loc

variable {V : Type} [AddCommGroup V] [Module (𝓞 D.host.E) V]

theorem loc_of_locF (p : PlF D) {P : Ideal (𝓞 D.host.E)} (hP : P.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) = p.asIdeal)
    (B : Submodule (𝓞 D.host.E) V) {x : V} (hx : x ∈ Formalism.HermitianLattices.Ext.L3.locF p.asIdeal B) :
    x ∈ PI.LatLocGlob.loc P B := by
  haveI := p.isPrime
  obtain ⟨t, ht, htx⟩ := (Formalism.HermitianLattices.Ext.L3.LocalSpans.mem_locF p.asIdeal B x).1 hx
  refine ⟨algebraMap (𝓞 D.host.F) (𝓞 D.host.E) t, fun h => ht ?_, htx⟩
  rw [← hP]; exact h

theorem locF_of_loc (p : PlF D) (B : Submodule (𝓞 D.host.E) V) {x : V}
    (hx : ∀ P : Ideal (𝓞 D.host.E), P.IsMaximal → P.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) = p.asIdeal →
      x ∈ PI.LatLocGlob.loc P B) :
    x ∈ Formalism.HermitianLattices.Ext.L3.locF p.asIdeal B := by
  haveI := p.isPrime
  let I : Ideal (𝓞 D.host.E) :=
    { carrier := {a | a • x ∈ B}
      add_mem' := fun {a c} ha hc => by simp only [Set.mem_setOf_eq, add_smul] at *; exact B.add_mem ha hc
      zero_mem' := by simp
      smul_mem' := fun c a ha => by simp only [Set.mem_setOf_eq, smul_eq_mul, mul_smul] at *; exact B.smul_mem c ha }
  by_contra hnot
  have hle : I.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) ≤ p.asIdeal := by
    intro t ht
    by_contra htp
    exact hnot ((Formalism.HermitianLattices.Ext.L3.LocalSpans.mem_locF p.asIdeal B x).2 ⟨t, htp, ht⟩)
  obtain ⟨Q, hIQ, hQ, hQp⟩ := Ideal.exists_ideal_over_prime_of_isIntegral p.asIdeal I hle
  have hQm : Q.IsMaximal := Ideal.isMaximal_of_isIntegral_of_isMaximal_under (R := 𝓞 D.host.F) Q (by rw [hQp]; exact p.isMaximal)
  obtain ⟨s, hs, hsx⟩ := hx Q hQm hQp
  exact hs (hIQ hsx)

end Loc

section Patch

variable {V : Type} [AddCommGroup V] [Module (𝓞 D.host.E) V]

theorem loc_locF (p : PlF D) {P : Ideal (𝓞 D.host.E)} (hPp : P.IsPrime)
    (hP : P.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) = p.asIdeal) (A : Submodule (𝓞 D.host.E) V) {x : V}
    (hx : x ∈ PI.LatLocGlob.loc P (Formalism.HermitianLattices.Ext.L3.locF p.asIdeal A)) : x ∈ PI.LatLocGlob.loc P A := by
  haveI := p.isPrime
  obtain ⟨s, hs, hsx⟩ := hx
  obtain ⟨t, ht, htx⟩ := (Formalism.HermitianLattices.Ext.L3.LocalSpans.mem_locF p.asIdeal A _).1 hsx
  refine ⟨algebraMap (𝓞 D.host.F) (𝓞 D.host.E) t * s, fun h => (hPp.mem_or_mem h).elim (fun h1 => ht ?_) hs, ?_⟩
  · rw [← hP]; exact h1
  · rw [mul_smul]; exact htx

theorem loc_eq_of_locF_eq (p : PlF D) {P : Ideal (𝓞 D.host.E)} (hPp : P.IsPrime)
    (hP : P.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) = p.asIdeal) {A B : Submodule (𝓞 D.host.E) V}
    (h : Formalism.HermitianLattices.Ext.L3.locF p.asIdeal A = Formalism.HermitianLattices.Ext.L3.locF p.asIdeal B) :
    PI.LatLocGlob.loc P A = PI.LatLocGlob.loc P B := by
  haveI := p.isPrime
  have sub : ∀ {A B : Submodule (𝓞 D.host.E) V}, Formalism.HermitianLattices.Ext.L3.locF p.asIdeal A = Formalism.HermitianLattices.Ext.L3.locF p.asIdeal B →
      PI.LatLocGlob.loc P A ⊆ PI.LatLocGlob.loc P B := by
    intro A B hAB x hx
    obtain ⟨s, hs, hsx⟩ := hx
    have h1 : s • x ∈ Formalism.HermitianLattices.Ext.L3.locF p.asIdeal B := by
      rw [← hAB]
      exact (Formalism.HermitianLattices.Ext.L3.LocalSpans.mem_locF p.asIdeal A _).2
        ⟨1, fun h1 => p.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 h1), by simpa using hsx⟩
    exact loc_locF p hPp hP B ⟨s, hs, h1⟩
  exact Set.Subset.antisymm (sub h) (sub h.symm)

theorem comap_ne_bot {P : Ideal (𝓞 D.host.E)} (hP : P.IsMaximal) :
    P.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) ≠ ⊥ := by
  have hne : P ≠ ⊥ := Ring.ne_bot_of_isMaximal_of_not_isField hP (RingOfIntegers.not_isField D.host.E)
  obtain ⟨a, ha, ha0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne
  exact Ideal.comap_ne_bot_of_integral_mem ha0 ha (Algebra.IsIntegral.isIntegral (R := 𝓞 D.host.F) a)

def plOf (P : Ideal (𝓞 D.host.E)) (hP : P.IsMaximal) : PlF D :=
  ⟨P.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)), Ideal.comap_isPrime _ _, comap_ne_bot hP⟩

theorem finite_over (p : PlF D) :
    {P : Ideal (𝓞 D.host.E) | P.IsMaximal ∧ P.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) = p.asIdeal}.Finite := by
  have hmap : p.asIdeal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) ≠ 0 := by
    rw [Ne, Ideal.zero_eq_bot, Ideal.map_eq_bot_iff_of_injective (FaithfulSMul.algebraMap_injective _ _)]
    exact p.ne_bot
  refine ((Ideal.finite_factors hmap).image HeightOneSpectrum.asIdeal).subset ?_
  rintro P ⟨hPm, hPp⟩
  have hne : P ≠ ⊥ := Ring.ne_bot_of_isMaximal_of_not_isField hPm (RingOfIntegers.not_isField D.host.E)
  refine ⟨⟨P, hPm.isPrime, hne⟩, ?_, rfl⟩
  show P ∣ _
  rw [Ideal.dvd_iff_le, Ideal.map_le_iff_le_comap, hPp]

end Patch

theorem latPatch_holds : Formalism.L2.SG.Pf.FrameGlobalPatching.LatPatch := by
  intro D Zd Λ₀ hΛ₀ Mf hMf hfin
  choose Λ' hΛ' hMΛ' using hMf
  have hfullΛ (L : Submodule (𝓞 D.host.E) (VS D).V) (hL : Submodule.IsFullLattice D.host.E L) :
      PI.LatLocGlob.IsFullLat D.host.E L := ⟨hL.toIsLattice.fg, hL.span_eq_top⟩
  let M : Ideal (𝓞 D.host.E) → Set (VS D).V := fun P =>
    if hP : P.IsMaximal then PI.LatLocGlob.loc P (Λ' (plOf P hP)) else ∅
  have hMP : ∀ P (hP : P.IsMaximal), M P = PI.LatLocGlob.loc P (Λ' (plOf P hP)) := fun P hP => by
    simp only [M, dif_pos hP]
  have hexc : {P : Ideal (𝓞 D.host.E) | P.IsMaximal ∧ M P ≠ PI.LatLocGlob.loc P Λ₀}.Finite := by
    refine (hfin.biUnion fun p _ => finite_over p).subset ?_
    rintro P ⟨hPm, hne⟩
    refine Set.mem_biUnion (x := plOf P hPm) ?_ ⟨hPm, rfl⟩
    intro heq
    apply hne
    rw [hMP P hPm]
    have h1 : lattice₂ D Zd.M (plOf P hPm) (Λ' (plOf P hPm)) = lattice₂ D Zd.M (plOf P hPm) Λ₀ := by
      rw [← hMΛ']; by_contra h; exact h (by simpa using heq) |>.elim
    exact loc_eq_of_locF_eq (plOf P hPm) hPm.isPrime rfl ((localLattice_eq_iff Zd _ (hΛ' _) hΛ₀).1 h1)
  obtain ⟨L, ⟨hLfull, hLloc⟩, huniq⟩ := latLocGlob (𝓞 D.host.E) D.host.E (VS D).V Λ₀ (hfullΛ Λ₀ hΛ₀) M
    (fun P hP => ⟨Λ' (plOf P hP), hfullΛ _ (hΛ' _), hMP P hP⟩) hexc
  have hL : Submodule.IsFullLattice D.host.E L := by
    letI := Submodule.IsLattice.of_fg D.host.E hLfull.1
    exact ⟨hLfull.2⟩
  have hlocP : ∀ (p : PlF D) (P : Ideal (𝓞 D.host.E)), P.IsMaximal →
      P.comap (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) = p.asIdeal →
      PI.LatLocGlob.loc P L = PI.LatLocGlob.loc P (Λ' p) := by
    intro p P hPm hPp
    rw [hLloc P hPm, hMP P hPm]
    have : plOf P hPm = p := HeightOneSpectrum.ext hPp
    rw [this]
  have hlocF : ∀ p : PlF D, Formalism.HermitianLattices.Ext.L3.locF p.asIdeal L = Formalism.HermitianLattices.Ext.L3.locF p.asIdeal (Λ' p) := by
    intro p
    ext x
    constructor
    · intro hx
      refine locF_of_loc p _ fun P hPm hPp => ?_
      rw [← hlocP p P hPm hPp]
      exact loc_of_locF p hPp L hx
    · intro hx
      refine locF_of_loc p _ fun P hPm hPp => ?_
      rw [hlocP p P hPm hPp]
      exact loc_of_locF p hPp _ hx
  refine ⟨L, ⟨hL, fun p => ?_⟩, ?_⟩
  · rw [hMΛ' p]
    exact (localLattice_eq_iff Zd p hL (hΛ' p)).2 (hlocF p)
  · rintro Λ ⟨hΛ, hΛp⟩
    have h1 : ∀ p : PlF D, Formalism.HermitianLattices.Ext.L3.locF p.asIdeal Λ = Formalism.HermitianLattices.Ext.L3.locF p.asIdeal L := fun p =>
      ((localLattice_eq_iff Zd p hΛ (hΛ' p)).1 ((hΛp p).trans (hMΛ' p))).trans (hlocF p).symm
    have sub : ∀ {A B : Submodule (𝓞 D.host.E) (VS D).V}, Submodule.IsLattice D.host.E B →
        (∀ p : PlF D, Formalism.HermitianLattices.Ext.L3.locF p.asIdeal A = Formalism.HermitianLattices.Ext.L3.locF p.asIdeal B) → A ≤ B := by
      intro A B hB hAB x hx
      refine PI.UnitaryGroupMassFormula.UJClassMass.interLocF (F := D.host.F) B hB x fun v => ?_
      haveI := v.isPrime
      have h2 : x ∈ Formalism.HermitianLattices.Ext.L3.locF v.asIdeal B := by
        rw [← hAB v]
        exact (Formalism.HermitianLattices.Ext.L3.LocalSpans.mem_locF v.asIdeal A x).2
          ⟨1, fun h1 => v.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 h1), by simpa using hx⟩
      exact (Formalism.HermitianLattices.Ext.L3.LocalSpans.mem_locF v.asIdeal B x).1 h2
    exact le_antisymm (sub hL.toIsLattice h1) (sub hΛ.toIsLattice fun p => (h1 p).symm)

end Formalism.L2.SG.Pf.LocalDenominators
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocEqOfLocFEq =====
