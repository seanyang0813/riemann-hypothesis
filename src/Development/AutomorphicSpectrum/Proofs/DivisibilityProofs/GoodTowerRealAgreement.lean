module

public import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialPullbackStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRes
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.LiftToLogResolutionAnalytic
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CoordsAt
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.HasMultiplier
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.HodgeIPIffHodgeFormConj
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsCptGen
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.RegAtFractionNoetherianClosed
public import Development.WeilBound.CoreStatements.FlagImmersions.Transport
public import Development.WeilBound.CoreStatements.VolumeEquality.Pieces
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsUniqueLeftBasisCoordsAdicCompletion
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.CuspCorrespondenceBound
public import ReciprocityTheory.AnalyticForms.LeviForms.IsRegFamilyInhabitStatement
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.SectionBoundaryClosedAndCodense
public import Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifVec
public import Development.AutomorphicSpectrum.Statements.TowerExistence.GoodTowerExistsX
public import Development.WeilBound.CoreStatements.FlagImmersions.ContAtOfHoloOn
public import Development.WeilBound.CoreStatements.FlagImmersions.CoordsOrbit
public import Development.WeilBound.CoreStatements.FlagImmersions.CountableBall
public import Development.WeilBound.CoreStatements.FlagImmersions.EqZeroOfTri
public import Development.WeilBound.CoreStatements.FlagImmersions.ExistsModelOfEq
public import Development.WeilBound.CoreStatements.FlagImmersions.ExistsRightInv
public import Development.WeilBound.CoreStatements.FlagImmersions.GenRigidOf
public import Development.WeilBound.CoreStatements.FlagImmersions.HasPerConj
public import Development.WeilBound.CoreStatements.FlagImmersions.Imports
public import Development.WeilBound.CoreStatements.FlagImmersions.IsHolToOfLocal
public import Development.WeilBound.CoreStatements.FlagImmersions.NormDetEq
public import Development.WeilBound.CoreStatements.FlagImmersions.PerCoord
public import Development.WeilBound.CoreStatements.FlagImmersions.RankLem
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Proofs.MetricProofs.SameOrbitRefl

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.ExistsInverse, Development.WeilBound.CoreStatements.FlagImmersions.NeZeroOfHasVal, Development.WeilBound.CoreStatements.FlagImmersions.AnalyticAtAeval, Development.WeilBound.CoreStatements.FlagImmersions.TopLeIffCentre, Development.WeilBound.CoreStatements.FlagImmersions.FlagImmersion, Development.WeilBound.CoreStatements.FlagImmersions.GlobalModelRealTower, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GoodTowerRealAgreement

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.ExistsInverse =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.ExistsInverse", "h": "module\n\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialPullbackStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRes\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.LiftToLogResolutionAnalytic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.SameOrbitRefl\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace RootFieldNumerics.Bh

open Filter Topology ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M ReciprocityTheory.ChartRestriction.G.Geo

theorem contAt_of_holoOn {e : ℕ} {X : Type} [TopologicalSpace X] {A : FinHolAtlas e X} {U : Set X} {f : X → ℂ}
    (hf : A.HoloOn U f) {x : X} (hx : x ∈ U) : ContinuousAt f x := by
  obtain ⟨j, hj⟩ := A.cover x
  have h1 := (hf j (A.chart j x) ⟨(A.chart j).map_source hj, by
    show (A.chart j).symm (A.chart j x) ∈ U
    rwa [(A.chart j).left_inv hj]⟩).continuousAt
  have h2 := h1.comp ((A.chart j).continuousAt hj)
  refine h2.congr ?_
  filter_upwards [(A.chart j).open_source.mem_nhds hj] with y hy
  simp [(A.chart j).left_inv hy]

theorem surj_of_degree {e : ℕ} {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y] [T2Space X] [CompactSpace Y]
    {A : FinHolAtlas e X} {B : FinHolAtlas e Y} {h : Y → X} {S : Set X} (hc : Continuous h) (hd : IsDegreeOff A B h 1 S) :
    Function.Surjective h := by
  have h1 : IsClosed (Set.range h) := (isCompact_range hc).isClosed
  have h2 : Dense Sᶜ := interior_eq_empty_iff_dense_compl.1 hd.2.1
  have h3 : Sᶜ ⊆ Set.range h := fun x hx => by
    obtain ⟨y, hy⟩ := Set.nonempty_of_ncard_ne_zero (s := h ⁻¹' {x}) (by rw [hd.2.2.2.2.1 x hx]; exact one_ne_zero)
    exact ⟨y, hy⟩
  rw [← Set.range_eq_univ, ← h1.closure_eq]
  exact (h2.mono h3).closure_eq

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem SO_symm {z z' : (Σ k, ι k) → ℂ} (h : SameOrbit z z') : SameOrbit z' z := by
  obtain ⟨c, hc, rfl⟩ := h
  exact ⟨fun k => (c k)⁻¹, fun k => inv_ne_zero (hc k), funext fun p => by rw [inv_mul_cancel_left₀ (hc _)]⟩

theorem SO_ne {z z' : (Σ k, ι k) → ℂ} (h : SameOrbit z z') (q : Σ k, ι k) : z q ≠ 0 ↔ z' q ≠ 0 := by
  obtain ⟨c, hc, rfl⟩ := h
  simp [hc q.1]

theorem isOpen_lift_ne {P J : Ideal (MRing ι)} {e : ℕ} (R : AnLogRes P J e) (q : Σ k, ι k) :
    IsOpen {w : R.X | R.lift w w q ≠ 0} := by
  refine isOpen_iff_mem_nhds.2 fun w hw => ?_
  filter_upwards [(R.isOpen_U w).mem_nhds (R.mem_U w),
    (contAt_of_holoOn (R.holo w q) (R.mem_U w)).eventually_ne hw] with w' h1 h2
  exact (SO_ne (R.compat w' w w' ⟨R.mem_U w', h1⟩) q).2 h2

theorem exists_inverse {P J : Ideal (MRing ι)} {e : ℕ} (R : AnLogRes P J e) (hJ : J = ⊤) {X : Type} [TopologicalSpace X]
    (A : FinHolAtlas e X) (π : R.X → X) (hs : Function.Surjective π)
    (key : ∀ w₁, ∃ (O : Set X) (μ : X → (Σ k, ι k) → ℂ), IsOpen O ∧ π w₁ ∈ O ∧ (∀ q, A.HoloOn O fun x => μ x q) ∧
      ∀ w, π w ∈ O → SameOrbit (R.lift w w) (μ (π w))) :
    ∃ ψ : X → R.X, HoloMap A R.A ψ ∧ (∀ x, π (ψ x) = x) ∧ ∀ w, ψ (π w) = w := by
  have hinj : Function.Injective π := fun w w₁ e₀ => by
    obtain ⟨O, μ, -, h1, -, h2⟩ := key w₁
    have a1 := h2 w (e₀ ▸ h1)
    rw [e₀] at a1
    refine R.inj w w₁ (fun h => ?_) (_root_.GlobalTheory.CompanionTheory.Ar.PB.Cj.sameOrbit_trans a1 (SO_symm (h2 w₁ h1)))
    simpa using h.2 1 (hJ ▸ Submodule.mem_top)
  let ψ := Function.surjInv hs
  have r : ∀ x, π (ψ x) = x := Function.surjInv_eq hs
  have loc : ∀ j, ∀ t ∈ (A.chart j).target, ∃ V, IsOpen V ∧ t ∈ V ∧ ContinuousOn (ψ ∘ (A.chart j).symm) V ∧
      ∀ k, AnalyticOnNhd ℂ (R.A.chart k ∘ (ψ ∘ (A.chart j).symm)) (V ∩ (ψ ∘ (A.chart j).symm) ⁻¹' (R.A.chart k).source) := by
    intro j t ht
    obtain ⟨O, μ, hO, h1, h2, h3⟩ := key (ψ ((A.chart j).symm t))
    rw [r] at h1
    have hV : IsOpen ((A.chart j).target ∩ (A.chart j).symm ⁻¹' O) := (A.chart j).isOpen_inter_preimage_symm hO
    refine ⟨_, hV, ⟨ht, h1⟩, _root_.GlobalTheory.CompanionTheory.Ar.PB.HoloLift.holo_of_analytic_lift K ι P J e e R hJ _ (fun u => μ ((A.chart j).symm u)) _ hV (fun q => h2 q j)
      fun u hu => ?_⟩
    have := h3 (ψ ((A.chart j).symm u)) (by rw [r]; exact hu.2)
    rwa [r] at this
  refine ⟨ψ, ⟨continuous_iff_continuousAt.2 fun x => ?_, fun j k t ht => ?_⟩, r, fun w => hinj (r _)⟩
  · obtain ⟨j, hj⟩ := A.cover x
    obtain ⟨V, hV, h1, h2, -⟩ := loc j _ ((A.chart j).map_source hj)
    refine ((h2.continuousAt (hV.mem_nhds h1)).comp ((A.chart j).continuousAt hj)).congr ?_
    filter_upwards [(A.chart j).open_source.mem_nhds hj] with y hy
    simp [(A.chart j).left_inv hy]
  · obtain ⟨V, -, h1, -, h2⟩ := loc j t ht.1
    exact h2 k t ⟨h1, ht.2⟩

end RootFieldNumerics.Bh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.ExistsInverse =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.NeZeroOfHasVal =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.NeZeroOfHasVal", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CoordsAt\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.HasMultiplier\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.HodgeIPIffHodgeFormConj\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsCptGen\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.RegAtFractionNoetherianClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace RootFieldNumerics.Bh

open AlgebraicGeometry CategoryTheory MvPolynomial
open ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

variable {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X} {K : Type} [Fintype K] {J : K → Type}
  [∀ k, Fintype (J k)] {y : (Σ k, J k) → Ω}

theorem exists_poly (T : CoordTie ℤ ξ (fun c' : (k : K) → J k => ∏ k, y ⟨k, c' k⟩)) (hn : IsNormalScheme X)
    (c : (k : K) → J k) (hc : ∀ k, y ⟨k, c k⟩ ≠ 0) {a : Ω} (ha : a ∈ integralClosure (chartRingZ y c) Ω) :
    ∃ p : MRing J, aeval (fun q : Σ k, J k => y q / y ⟨q.1, c q.1⟩) p = a := by
  classical
  have hc0 : (∏ k, y ⟨k, c k⟩) ≠ 0 := Finset.prod_ne_zero_iff.2 fun k _ => hc k
  have hle : Algebra.adjoin ℤ (Set.range fun j : (k : K) → J k => (∏ k, y ⟨k, j k⟩) / ∏ k, y ⟨k, c k⟩) ≤ chartRingZ y c := by
    refine Algebra.adjoin_le ?_
    rintro _ ⟨j, rfl⟩
    show (∏ k, y ⟨k, j k⟩) / ∏ k, y ⟨k, c k⟩ ∈ chartRingZ y c
    rw [← Finset.prod_div_distrib]
    exact Subalgebra.prod_mem _ fun k _ => Algebra.subset_adjoin ⟨⟨k, j k⟩, rfl⟩
  have hge : chartRingZ y c ≤ Algebra.adjoin ℤ (Set.range fun j : (k : K) → J k => (∏ k, y ⟨k, j k⟩) / ∏ k, y ⟨k, c k⟩) := by
    refine Algebra.adjoin_le ?_
    rintro _ ⟨⟨k, i⟩, rfl⟩
    refine Algebra.subset_adjoin ⟨Function.update c k i, ?_⟩
    show (∏ k', y ⟨k', Function.update c k i k'⟩) / ∏ k, y ⟨k, c k⟩ = y ⟨k, i⟩ / y ⟨k, c k⟩
    rw [← Finset.prod_div_distrib, Finset.prod_eq_single k]
    · rw [Function.update_self]
    · intro k' _ h
      rw [Function.update_of_ne h, div_self (hc k')]
    · simp
  have hmem : a ∈ chartRingZ y c := by
    refine hle ((T.ring c hc0 a).2 fun q hq => ?_)
    obtain ⟨h1, -, h3⟩ := _root_.GlobalTheory.CompanionTheory.Ar.RegAtRing.regAt_ring X Ω ξ T.gen q
    have h4 := h3 (hn q.1).2
    let φ : chartRingZ y c →+* regAt ξ q :=
      (algebraMap (chartRingZ y c) Ω).codRestrict _ fun r => (T.ring c hc0 r).1 (hge r.2) q hq
    have h5 : IsIntegral (regAt ξ q) a := IsIntegral.map_of_comp_eq φ (RingHom.id Ω) rfl ha
    obtain ⟨r, rfl⟩ := (isIntegrallyClosed_iff Ω).1 h4 h5
    exact r.2
  unfold chartRingZ at hmem
  rw [Algebra.adjoin_range_eq_range_aeval] at hmem
  exact hmem

variable {z : Spec (CommRingCat.of ℂ) ⟶ X} {w : (Σ k, J k) → ℂ}

theorem val_ratio (h : CoordsAt ξ y z w) (k : K) (i c : J k) (hc : w ⟨k, c⟩ ≠ 0) :
    ValAt ξ z (y ⟨k, i⟩ / y ⟨k, c⟩) (w ⟨k, i⟩ / w ⟨k, c⟩) := by
  obtain ⟨r, hr, e⟩ := (h.2 k c (IsUnit.mk0 _ hc)).2 i
  rwa [e, mul_div_cancel_right₀ _ hc]

theorem val_prod (hz : genPt ξ ⤳ centre z) {a : K → Ω} {r : K → ℂ} (h : ∀ k, ValAt ξ z (a k) (r k)) :
    ValAt ξ z (∏ k, a k) (∏ k, r k) := by
  classical
  have : ∀ s : Finset K, ValAt ξ z (∏ k ∈ s, a k) (∏ k ∈ s, r k) := fun s => by
    induction s using Finset.induction_on with
    | empty => simpa using CxVal.one hz
    | insert k s hk ih =>
      rw [Finset.prod_insert hk, Finset.prod_insert hk]
      exact CxVal.mul (h k) ih
  exact this _

theorem val_pow (hz : genPt ξ ⤳ centre z) {a : Ω} {r : ℂ} (h : ValAt ξ z a r) (n : ℕ) : ValAt ξ z (a ^ n) (r ^ n) := by
  induction n with
  | zero => simpa using CxVal.one hz
  | succ n ih => rw [pow_succ, pow_succ]; exact CxVal.mul ih h

def fn (y : (Σ k, J k) → Ω) (s : Ω) (m : ℕ) (k₀ : K) (i₀ : J k₀) (c : (k : K) → J k) : Ω :=
  s * (∏ k, y ⟨k, c k⟩) / y ⟨k₀, i₀⟩ ^ m

theorem val_fn (hz : genPt ξ ⤳ centre z) (h : CoordsAt ξ y z w) {s : Ω} {m : ℕ} {k₀ : K} (i₀ : J k₀) (c c' : (k : K) → J k)
    (hc : ∀ k, w ⟨k, c' k⟩ ≠ 0) (hi : w ⟨k₀, i₀⟩ ≠ 0) {p : MRing J}
    (hp : aeval (fun q : Σ k, J k => y q / y ⟨q.1, c' q.1⟩) p = fn y s m k₀ (c' k₀) c') :
    ValAt ξ z (fn y s m k₀ i₀ c) (aeval (fun q : Σ k, J k => w q / w ⟨q.1, c' q.1⟩) p * (∏ k, w ⟨k, c k⟩ / w ⟨k, c' k⟩) *
      (w ⟨k₀, c' k₀⟩ / w ⟨k₀, i₀⟩) ^ m) := by
  have h1 := CxVal.aeval hz (fun q : Σ k, J k => val_ratio h q.1 q.2 (c' q.1) (hc q.1)) p
  have h2 := val_prod hz fun k => val_ratio h k (c k) (c' k) (hc k)
  have h3 := val_pow hz (val_ratio h k₀ (c' k₀) i₀ hi) m
  have hy := fun k => (h.2 k (c' k) (IsUnit.mk0 _ (hc k))).1
  have hy0 := (h.2 k₀ i₀ (IsUnit.mk0 _ hi)).1
  have hP : (∏ k, y ⟨k, c' k⟩) ≠ 0 := Finset.prod_ne_zero_iff.2 fun k _ => hy k
  have hk := hy k₀
  convert CxVal.mul (CxVal.mul h1 h2) h3 using 1
  have hp' : aeval (fun q : Σ k, J k => y ⟨q.1, q.2⟩ / y ⟨q.1, c' q.1⟩) p = fn y s m k₀ (c' k₀) c' := hp
  rw [hp', Finset.prod_div_distrib, div_pow]
  unfold fn
  field_simp

theorem fn_eq [DecidableEq K] {s : Ω} {m : ℕ} {k₀ : K} {a : K → ℤ} (ha : a k₀ = 1 ∧ ∀ k, k ≠ k₀ → a k = 0)
    (c : (k : K) → J k) (hc : ∀ k, y ⟨k, c k⟩ ≠ 0) :
    s * ∏ k, y ⟨k, c k⟩ ^ (-((m : ℤ) * a k - 1)) = fn y s m k₀ (c k₀) c := by
  have e : ∀ k, y ⟨k, c k⟩ ^ (-((m : ℤ) * a k - 1)) = y ⟨k, c k⟩ / y ⟨k, c k⟩ ^ ((m : ℤ) * a k) := fun k => by
    rw [neg_sub, zpow_sub₀ (hc k), zpow_one]
  simp only [e, Finset.prod_div_distrib]
  rw [Finset.prod_eq_single k₀ (f := fun k => y ⟨k, c k⟩ ^ ((m : ℤ) * a k))]
  · rw [ha.1, mul_one, zpow_natCast, fn, mul_div_assoc]
  · intro k _ h
    rw [ha.2 k h, mul_zero, zpow_zero]
  · simp

theorem ne_zero_of_hasVal (hz : genPt ξ ⤳ centre z) (h : CoordsAt ξ y z w) {s : Ω} {a : K → ℤ} (c : (k : K) → J k)
    (hc : ∀ k, w ⟨k, c k⟩ ≠ 0) {p : MRing J}
    (hp : aeval (fun q : Σ k, J k => y q / y ⟨q.1, c q.1⟩) p = s * ∏ k, y ⟨k, c k⟩ ^ (-a k)) {v : ℂ} (hv : v ≠ 0)
    (hs : Small.HasVal y a s w v) : aeval (fun q : Σ k, J k => w q / w ⟨q.1, c q.1⟩) p ≠ 0 := by
  obtain ⟨dg, dh, g, h', hg, hh, hd, e1, hne, e2⟩ := hs
  have hy := fun k => (h.2 k (c k) (IsUnit.mk0 _ (hc k))).1
  have V := fun f : MRing J => CxVal.aeval hz (fun q : Σ k, J k => val_ratio h q.1 q.2 (c q.1) (hc q.1)) f
  have ey : y = fun q => y ⟨q.1, c q.1⟩ * (y ⟨q.1, q.2⟩ / y ⟨q.1, c q.1⟩) :=
    funext fun q => (mul_div_cancel₀ _ (hy q.1)).symm
  have ew : w = fun q => w ⟨q.1, c q.1⟩ * (w ⟨q.1, q.2⟩ / w ⟨q.1, c q.1⟩) :=
    funext fun q => (mul_div_cancel₀ _ (hc q.1)).symm
  have g1 := aeval_blockScale hg (fun k => y ⟨k, c k⟩) fun q => y ⟨q.1, q.2⟩ / y ⟨q.1, c q.1⟩
  have g2 := aeval_blockScale hh (fun k => y ⟨k, c k⟩) fun q => y ⟨q.1, q.2⟩ / y ⟨q.1, c q.1⟩
  have g3 := aeval_blockScale hg (fun k => w ⟨k, c k⟩) fun q => w ⟨q.1, q.2⟩ / w ⟨q.1, c q.1⟩
  rw [← ey] at g1 g2
  rw [← ew] at g3
  have key : aeval (fun q : Σ k, J k => y ⟨q.1, q.2⟩ / y ⟨q.1, c q.1⟩) g =
      aeval (fun q : Σ k, J k => y ⟨q.1, q.2⟩ / y ⟨q.1, c q.1⟩) p *
        aeval (fun q : Σ k, J k => y ⟨q.1, q.2⟩ / y ⟨q.1, c q.1⟩) h' := by
    have hp' : aeval (fun q : Σ k, J k => y ⟨q.1, q.2⟩ / y ⟨q.1, c q.1⟩) p = s * ∏ k, y ⟨k, c k⟩ ^ (-a k) := hp
    have h0 : (∏ k, y ⟨k, c k⟩ ^ dg k) ≠ 0 := Finset.prod_ne_zero_iff.2 fun k _ => pow_ne_zero _ (hy k)
    have h1 : (∏ k, y ⟨k, c k⟩ ^ dg k) * ∏ k, y ⟨k, c k⟩ ^ (-a k) = ∏ k, y ⟨k, c k⟩ ^ dh k := by
      rw [← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun k _ => ?_
      rw [← zpow_natCast, ← zpow_natCast, ← zpow_add₀ (hy k), hd k]
      congr 1
      ring
    refine mul_left_cancel₀ h0 ?_
    rw [← g1, e1, g2, hp', ← h1]
    ring
  have e3 := CxVal.unique (key ▸ V g) (CxVal.mul (V p) (V h'))
  intro h0
  have h0' : aeval (fun q : Σ k, J k => w ⟨q.1, q.2⟩ / w ⟨q.1, c q.1⟩) p = 0 := h0
  rw [h0', zero_mul] at e3
  rw [e3, mul_zero, e2] at g3
  exact mul_ne_zero hv hne g3

end RootFieldNumerics.Bh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.NeZeroOfHasVal =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.AnalyticAtAeval =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.AnalyticAtAeval", "h": "module\n\npublic import Development.WeilBound.CoreStatements.FlagImmersions.Transport\npublic import Development.WeilBound.CoreStatements.FlagImmersions.ExistsInverse\npublic import Development.WeilBound.CoreStatements.FlagImmersions.NeZeroOfHasVal\npublic import Development.WeilBound.CoreStatements.VolumeEquality.Pieces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace RootFieldNumerics

open AlgebraicGeometry CategoryTheory NumberField Filter Topology MvPolynomial
open ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.PB Bh

theorem Bh.analyticAt_aeval {σ : Type} {n : ℕ} {f : σ → (Fin n → ℂ) → ℂ} {t : Fin n → ℂ} (h : ∀ q, AnalyticAt ℂ (f q) t)
    (p : MvPolynomial σ ℤ) : AnalyticAt ℂ (fun u => aeval (fun q => f q u) p) t := by
  induction p using MvPolynomial.induction_on with
  | C a => simpa using analyticAt_const
  | add p q hp hq => simpa using hp.fun_add hq
  | mul_X p i hp => simpa using hp.fun_mul (h i)

theorem biholo_of : Descend → Biholo := by
  intro hD E _ _ _ H D l Xo c Y S RM Sys Fx Or hJ hdeg hamp
  classical
  obtain ⟨m, n, s, hs, hamp⟩ := hamp
  have hd : IsDegreeOff Sys.A Or.Re.R.A Or.Re.π 1 Or.Re.br := by
    have := Or.Re.degree
    rwa [Or.Re_deg, hdeg] at this
  have hsurj := surj_of_degree Or.Re.holo.1 hd
  set R := Or.Re.R with hR
  set π := Or.Re.π with hπ
  let k₀ := Or.k₀
  have hmem : ∀ w, ∀ w' ∈ R.U w, R.lift w w' ∈ mcPts (mCoordIdeal RM.y) := R.mem
  choose z hz using fun w => SheetDecomposition.exists_pt Or.𝔐 (hmem w w (R.mem_U w))
  have hz' : ∀ w, ∀ w' ∈ R.U w, CoordsAt Or.𝔐.ξ RM.y (z w') (R.lift w w') := fun w w' h => by
    obtain ⟨a, ha, e⟩ := R.compat w w' w' ⟨h, R.mem_U w'⟩
    exact SheetDecomposition.coords_of_sat Or.𝔐 (hz w') ⟨_, rfl, a, ha, e⟩
  have hpoly : ∀ i (cc : (k : RM.K) → RM.ι k), (∀ k, RM.y ⟨k, cc k⟩ ≠ 0) → ∃ p : MRing RM.ι,
      aeval (fun q : Σ k, RM.ι k => RM.y q / RM.y ⟨q.1, cc q.1⟩) p = s i * ∏ k, RM.y ⟨k, cc k⟩ ^ (-((m : ℤ) * RM.A.a k - 1)) ∧
      aeval (fun q : Σ k, RM.ι k => RM.y q / RM.y ⟨q.1, cc q.1⟩) p = fn RM.y (s i) m k₀ (cc k₀) cc := fun i cc hc => by
    have h1 := hs i cc hc
    simp only [Nat.cast_one, one_mul] at h1
    obtain ⟨p, hp⟩ := exists_poly Or.𝔐.tie Or.𝔐.normal cc hc h1
    exact ⟨p, hp, hp.trans (fn_eq Or.A_deg cc hc)⟩
  have hchart : ∀ w, ∃ cc : (k : RM.K) → RM.ι k, (∀ k, R.lift w w ⟨k, cc k⟩ ≠ 0) ∧ ∀ k, RM.y ⟨k, cc k⟩ ≠ 0 := fun w => by
    choose cc hc using (hmem w w (R.mem_U w)).1
    exact ⟨cc, hc, fun k => ((hz w).2 k (cc k) (IsUnit.mk0 _ (hc k))).1⟩
  let f : Fin n → RM.ι k₀ → ((k : RM.K) → RM.ι k) → R.X → ℂ := fun i i₀ cc w =>
    if h : ∃ r, ValAt Or.𝔐.ξ (z w) (fn RM.y (s i) m k₀ i₀ cc) r then h.choose else 0
  have hf : ∀ i i₀ cc w r, ValAt Or.𝔐.ξ (z w) (fn RM.y (s i) m k₀ i₀ cc) r → f i i₀ cc w = r := fun i i₀ cc w r h => by
    have h' : ∃ r, ValAt Or.𝔐.ξ (z w) (fn RM.y (s i) m k₀ i₀ cc) r := ⟨r, h⟩
    simp only [f, dif_pos h']
    exact CxVal.unique h'.choose_spec h
  let U : RM.ι k₀ → Set Sys.X := fun i₀ => {x | Fx.pt x (Or.ix.symm i₀) ≠ 0}
  have hU : ∀ i₀ w, π w ∈ U i₀ ↔ R.lift w w ⟨k₀, i₀⟩ ≠ 0 := fun i₀ w => by
    obtain ⟨a, ha⟩ := Or.π_pt w
    have h1 : R.lift w w ⟨k₀, i₀⟩ = a * Fx.pt (π w) (Or.ix.symm i₀) := by
      have := congrFun ha (Or.ix.symm i₀)
      simpa using this
    have h2 : a ≠ 0 := by
      rintro rfl
      obtain ⟨i, hi⟩ := (hmem w w (R.mem_U w)).1 k₀
      have := congrFun ha (Or.ix.symm i)
      exact hi (by simpa using this)
    rw [h1]
    simp [U, h2]
  have hUo : ∀ i₀, IsOpen (U i₀) := fun i₀ => by
    have e : (U i₀)ᶜ = π '' {w | R.lift w w ⟨k₀, i₀⟩ ≠ 0}ᶜ := by
      ext x
      obtain ⟨w, rfl⟩ := hsurj x
      exact ⟨fun h => ⟨w, fun h' => h ((hU _ _).2 h'), rfl⟩, fun ⟨w', h, e⟩ h' => h ((hU _ _).1 (e ▸ h'))⟩
    rw [← isClosed_compl_iff, e]
    exact Or.Re.holo.1.isClosedMap _ (isOpen_lift_ne R _).isClosed_compl
  have hhol : ∀ i i₀ cc, R.A.HoloOn (π ⁻¹' U i₀) (f i i₀ cc) := fun i i₀ cc j t ht => by
    obtain ⟨c', hc', hy'⟩ := hchart ((R.A.chart j).symm t)
    obtain ⟨p, -, hp⟩ := hpoly i c' hy'
    have h0 := (hU _ _).1 ht.2
    set w₁ := (R.A.chart j).symm t with hw₁
    have ha : ∀ q, AnalyticAt ℂ (fun u => R.lift w₁ ((R.A.chart j).symm u) q) t := fun q =>
      R.holo w₁ q j t ⟨ht.1, R.mem_U w₁⟩
    have hA : AnalyticAt ℂ (fun u => aeval (fun q : Σ k, RM.ι k => R.lift w₁ ((R.A.chart j).symm u) q /
        R.lift w₁ ((R.A.chart j).symm u) ⟨q.1, c' q.1⟩) p *
        (∏ k, R.lift w₁ ((R.A.chart j).symm u) ⟨k, cc k⟩ / R.lift w₁ ((R.A.chart j).symm u) ⟨k, c' k⟩) *
        (R.lift w₁ ((R.A.chart j).symm u) ⟨k₀, c' k₀⟩ / R.lift w₁ ((R.A.chart j).symm u) ⟨k₀, i₀⟩) ^ m) t :=
      ((Bh.analyticAt_aeval (fun q => (ha q).fun_div (ha _) (hc' _)) p).fun_mul
        (Finset.analyticAt_fun_prod _ fun k _ => (ha _).fun_div (ha _) (hc' _))).fun_mul
        (((ha _).fun_div (ha _) h0).fun_pow m)
    refine hA.congr ?_
    have e1 : ∀ᶠ u in 𝓝 t, (R.A.chart j).symm u ∈ R.U w₁ :=
      ((R.A.chart j).continuousAt_symm ht.1).eventually_mem ((R.isOpen_U w₁).mem_nhds (R.mem_U w₁))
    have e2 : ∀ᶠ u in 𝓝 t, ∀ k, R.lift w₁ ((R.A.chart j).symm u) ⟨k, c' k⟩ ≠ 0 :=
      Filter.eventually_all.2 fun k => (ha _).continuousAt.eventually_ne (hc' k)
    filter_upwards [e1, e2, (ha _).continuousAt.eventually_ne h0] with u h1 h2 h3
    exact (hf _ _ _ _ _ (val_fn (Or.𝔐.all _) (hz' w₁ _ h1) i₀ cc c' h2 h3 hp)).symm
  choose F hF hFf using fun i i₀ cc =>
    hD _ Sys.X R.X Sys.A R.A π Or.Re.br (U i₀) (f i i₀ cc) Or.Re.holo hd (hUo i₀) (hhol i i₀ cc)
  refine exists_inverse R hJ Sys.A π hsurj fun w₁ => ?_
  obtain ⟨c', hc', hy'⟩ := hchart w₁
  obtain ⟨i, v, hv, hval⟩ := hamp ℂ (R.lift w₁ w₁) ⟨(hmem w₁ w₁ (R.mem_U w₁)).1, fun g hg => by
    have := (hmem w₁ w₁ (R.mem_U w₁)).2 g hg
    rwa [MvPolynomial.eval_map] at this⟩
  obtain ⟨p, hp1, hp2⟩ := hpoly i c' hy'
  have hu := ne_zero_of_hasVal (Or.𝔐.all _) (hz w₁) c' hc' hp1 hv hval
  have hin : π w₁ ∈ U (c' k₀) := (hU _ _).2 (hc' k₀)
  refine ⟨{x ∈ U (c' k₀) | F i (c' k₀) c' x ≠ 0}, fun x q => F i (c' k₀) (Function.update c' q.1 q.2) x, ?_, ⟨hin, ?_⟩,
    fun q j => (hF _ _ _ j).mono fun t ht => ⟨ht.1, ht.2.1⟩, fun w hw => ?_⟩
  · refine isOpen_iff_mem_nhds.2 fun x hx => ?_
    filter_upwards [(hUo _).mem_nhds hx.1, (contAt_of_holoOn (hF i _ c') hx.1).eventually_ne hx.2] with x' h1 h2
    exact ⟨h1, h2⟩
  · rw [hFf _ _ _ _ hin, hf _ _ _ _ _ (val_fn (Or.𝔐.all _) (hz w₁) (c' k₀) c' c' hc' (hc' k₀) hp2)]
    exact mul_ne_zero (mul_ne_zero hu (Finset.prod_ne_zero_iff.2 fun k _ => div_ne_zero (hc' k) (hc' k)))
      (pow_ne_zero _ (div_ne_zero (hc' _) (hc' _)))
  · obtain ⟨c₂, hc₂, hy₂⟩ := hchart w
    obtain ⟨p₂, -, hp₂⟩ := hpoly i c₂ hy₂
    have h0 := (hU _ _).1 hw.1
    obtain ⟨κ, hκ⟩ : ∃ κ : ℂ, ∀ cc, F i (c' k₀) cc (π w) = κ * ∏ k, R.lift w w ⟨k, cc k⟩ := by
      refine ⟨aeval (fun q : Σ k, RM.ι k => R.lift w w q / R.lift w w ⟨q.1, c₂ q.1⟩) p₂ *
        (R.lift w w ⟨k₀, c₂ k₀⟩ / R.lift w w ⟨k₀, c' k₀⟩) ^ m / ∏ k, R.lift w w ⟨k, c₂ k⟩, fun cc => ?_⟩
      rw [hFf _ _ _ _ hw.1, hf _ _ _ _ _ (val_fn (Or.𝔐.all _) (hz w) (c' k₀) cc c₂ hc₂ h0 hp₂), Finset.prod_div_distrib]
      ring
    have h1 := hw.2
    rw [hκ] at h1
    have h2 := left_ne_zero_of_mul h1
    have h3 := Finset.prod_ne_zero_iff.1 (right_ne_zero_of_mul h1)
    refine SO_symm ⟨fun k => κ * ∏ k' ∈ Finset.univ.erase k, R.lift w w ⟨k', c' k'⟩,
      fun k => mul_ne_zero h2 (Finset.prod_ne_zero_iff.2 fun k' _ => h3 k' (Finset.mem_univ _)), funext fun q => ?_⟩
    obtain ⟨k, j⟩ := q
    show F i (c' k₀) (Function.update c' k j) (π w) = _
    rw [hκ, ← Finset.prod_erase_mul _ _ (Finset.mem_univ k), Function.update_self, mul_assoc]
    congr 2
    exact Finset.prod_congr rfl fun k' hk' => by rw [Function.update_of_ne (Finset.ne_of_mem_erase hk')]

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.AnalyticAtAeval =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.TopLeIffCentre =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.TopLeIffCentre", "h": "module\n\npublic import Development.WeilBound.CoreStatements.FlagImmersions.Transport\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsUniqueLeftBasisCoordsAdicCompletion\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.CuspCorrespondenceBound\npublic import ReciprocityTheory.AnalyticForms.LeviForms.IsRegFamilyInhabitStatement\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.SectionBoundaryClosedAndCodense\npublic import Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace RootFieldNumerics.Un

open AlgebraicGeometry CategoryTheory NumberField Filter Topology Matrix
open ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp GlobalTheory.CompanionTheory.Ar.PB
open scoped ComplexOrder

theorem top_le_iff_centre {X : Scheme.{0}} (z : Sp ℂ ⟶ X) (U : X.Opens) : ⊤ ≤ z ⁻¹ᵁ U ↔ centre z ∈ U := by
  constructor
  · exact fun h => h (show IsLocalRing.closedPoint ℂ ∈ (⊤ : (Sp ℂ).Opens) from trivial)
  · intro h q _
    have e : q = IsLocalRing.closedPoint ℂ := Subsingleton.elim (α := PrimeSpectrum ℂ) _ _
    subst e
    exact h

theorem eventually_centre {X : Scheme.{0}} {n : ℕ} {V : Set (Fin n → ℂ)} {z : (Fin n → ℂ) → (Sp ℂ ⟶ X)} (hz : IsHolTo V z)
    {t₀ : Fin n → ℂ} (ht : t₀ ∈ V) (U : X.Opens) (h : centre (z t₀) ∈ U) : ∀ᶠ t in 𝓝 t₀, centre (z t) ∈ U := by
  filter_upwards [(hz U 0).1.mem_nhds ⟨ht, (top_le_iff_centre _ _).2 h⟩] with t h' using (top_le_iff_centre _ _).1 h'.2

theorem fibreLatVec_comp {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {X : Scheme.{0}} {t : SAB H X}
    {z : Sp ℂ ⟶ X} {g : ℕ} {Λ : Type} [AddCommGroup Λ] [Module (𝓞 E) Λ] {R : RiemLat E g Λ} {A₀ A₁ : Type}
    {x : A₀ → Fin g → ℂ} {v : A₀ → (epsAt z ⟶ t.G)} (h : FibreLatVec t z R x v) (f : A₁ → A₀) :
    FibreLatVec t z R (fun a => x (f a)) fun a => v (f a) := by
  obtain ⟨A, i, φ, u, χ, h1, h2, h3, h4, h5, h6⟩ := h
  exact ⟨A, i, φ, u, χ, h1, h2, h3, h4, h5, fun a => h6 _⟩

theorem exists_tr {Ω Li : Type} [Field Ω] [AddCommGroup Li] [Module Ω Li] {r : ℕ} (b b₀ : Fin r → Li)
    (h : ∀ i, flagStep Ω b i = flagStep Ω b₀ i) (i : Fin r) : ∃ t : Ω, b i - t • b₀ i ∈ flagStep Ω b₀ i := by
  have h1 : b i ∈ flagStep Ω b₀ (i + 1) := by
    rw [← h]
    exact Submodule.subset_span ⟨i, Nat.lt_succ_self _, rfl⟩
  have h2 : {k : Fin r | (k : ℕ) < i + 1} = insert i {k : Fin r | (k : ℕ) < i} := by
    ext k
    simp only [Set.mem_ofPred_eq, Set.mem_insert_iff, Fin.ext_iff]
    omega
  rw [flagStep, h2, Set.image_insert_eq, Submodule.mem_span_insert] at h1
  obtain ⟨a, w, hw, e⟩ := h1
  exact ⟨a, by rw [e, add_sub_cancel_left]; exact hw⟩

theorem leadMinor_smul {r : ℕ} (c : ℝ) (Γ : Matrix (Fin r) (Fin r) ℂ) (k : ℕ) :
    leadMinor ((c : ℂ) • Γ) k = c ^ k * leadMinor Γ k := by
  unfold leadMinor
  split_ifs with h
  · rw [Matrix.submatrix_smul, Pi.smul_apply, Pi.smul_apply, Matrix.det_smul, Fintype.card_fin, ← Complex.ofReal_pow,
      Complex.re_ofReal_mul]
  · simp

theorem log_nu {r : ℕ} {Γ : Matrix (Fin r) (Fin r) ℂ} (h : Γ.PosDef) (i : Fin r) :
    Real.log (Real.sqrt (leadMinor ((Real.pi : ℂ) • Γ) (i + 1) / leadMinor ((Real.pi : ℂ) • Γ) i)) =
      Real.log (Real.sqrt (leadMinor Γ (i + 1) / leadMinor Γ i)) + Real.log (Real.sqrt Real.pi) := by
  have h1 := leadMinor_pos_of_posDef h (s := i + 1) i.2
  have h2 := leadMinor_pos_of_posDef h (s := i) i.2.le
  have hp := Real.pi_pos
  have e : leadMinor ((Real.pi : ℂ) • Γ) (i + 1) / leadMinor ((Real.pi : ℂ) • Γ) i =
      leadMinor Γ (i + 1) / leadMinor Γ i * Real.pi := by
    rw [leadMinor_smul, leadMinor_smul, pow_succ]
    field_simp
  rw [e, Real.sqrt_mul (div_pos h1 h2).le, Real.log_mul (Real.sqrt_pos.2 (div_pos h1 h2)).ne' (Real.sqrt_pos.2 hp).ne']

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Tor.Level H} {Xo : Moduli D l}
  {c : Coeff l} {Y : Model Xo c (algebraMap (𝓞 c.F) c.F)}

def CountAt {Ω : Type} [Field Ω] {K : Type} [Fintype K] {J : K → Type} {y : (Σ k, J k) → Ω} (𝔐 : HodgeCpt Y ∅ y)
    (Fl : 𝔐.Flag) (U : 𝔐.X.Opens) : Prop :=
  ∀ (b : ∀ s, Fin (labelRk D s) → 𝔐.Li) (g : ℕ) (Λ : Type) [AddCommGroup Λ]
      [Module (𝓞 E) Λ] (R : RiemLat E g Λ) (F : CMType H ⊕ CMType H → ℕ → Submodule ℂ (Fin g → ℂ)),
      (∀ s i, flagStep Ω (b s) i = flagStep Ω (Fl.b s) i) →
      {z : Sp ℂ ⟶ 𝔐.X | centre z ∈ U ∧ 𝔐.Interior z ∧ (∀ s, (𝔐.V s).IsFrameAt (b s) ⟨centre z, 𝔐.all _⟩) ∧
        ∃ (x : (Σ s, Fin (labelRk D s)) → Fin g → ℂ) (v : (Σ s, Fin (labelRk D s)) → (epsAt z ⟶ 𝔐.t.G)),
          (∀ a, 𝔐.M.ValAt z (b a.1 a.2) (v a)) ∧ FibreLatVec 𝔐.t z R x v ∧
          ∀ s k, flagStep ℂ (fun i => x ⟨s, i⟩) k = F s k}.Countable

theorem root_log (Γ : ∀ s, Matrix (Fin (labelRk D s)) (Fin (labelRk D s)) ℂ) (hΓ : ∀ s, (Γ s).PosDef) (τ : CMType H)
    (i : Fin (D.p + D.q)) :
    (HodgeCpt.rootSgn D (τ, i) : ℝ) * Real.log (Real.sqrt
      (leadMinor ((Real.pi : ℂ) • Γ (HodgeCpt.rootIdx D (τ, i)).1) ((HodgeCpt.rootIdx D (τ, i)).2 + 1) /
        leadMinor ((Real.pi : ℂ) • Γ (HodgeCpt.rootIdx D (τ, i)).1) (HodgeCpt.rootIdx D (τ, i)).2)) =
      grLog (p := D.p) (q := D.q) (Γ (.inl τ)) (Γ (.inr τ)) i +
        (HodgeCpt.rootSgn D (τ, i) : ℝ) * Real.log (Real.sqrt Real.pi) := by
  rw [log_nu (hΓ _), mul_add]
  congr 1
  let F : (Σ s, Fin (labelRk D s)) → ℝ := fun a => Real.log (Real.sqrt (leadMinor (Γ a.1) (a.2 + 1) / leadMinor (Γ a.1) a.2))
  show _ * F (HodgeCpt.rootIdx D (τ, i)) = _
  by_cases h : (i : ℕ) < D.p
  · have e : HodgeCpt.rootIdx D (τ, i) = ⟨.inl τ, ⟨i, h⟩⟩ := dif_pos h
    rw [e]
    simp only [HodgeCpt.rootSgn, grLog, if_pos h, F, Int.cast_one, one_mul]
    rfl
  · have e : HodgeCpt.rootIdx D (τ, i) = ⟨.inr τ, ⟨D.p + D.q - 1 - i, by have := i.2; show _ < D.q; omega⟩⟩ := dif_neg h
    rw [e]
    simp only [HodgeCpt.rootSgn, grLog, if_neg h, F, Int.cast_neg, Int.cast_one, neg_mul, one_mul]
    rfl

theorem locChart (hLP : LocPer) (hT : Transport) (hFV : FrameVals) (hPM : PerMat) (hPot : PotLoc) (hG : Top.Given)
    (hN : 1 ≤ D.p + D.q) {RM : Top.RootModel (CMType H) (D.p + D.q)}
    {Sys : AnSys (Top.dimFl (CMType H) (D.p + D.q)) (Option (RootIx D))} {Fx : FixedData Y Sys} (Or : RootOrigin Y ∅ RM Fx)
    (ψ : Sys.X → Or.Re.R.X) (hψ : HoloMap Sys.A Or.Re.R.A ψ) (hπ : ∀ x, Or.Re.π (ψ x) = x) (z : Sys.X → (Sp ℂ ⟶ Or.𝔐.X))
    (hzi : Function.Injective z) (hzc : ∀ x, CoordsAt Or.𝔐.ξ RM.y (z x) (Or.Re.R.lift (ψ x) (ψ x)))
    (k : Fin Sys.A.n) (hzh : IsHolTo (Sys.A.chart k).target fun t => z ((Sys.A.chart k).symm t))
    (U : Or.𝔐.X.Opens) (x₀ : Sys.X) (hx₀ : x₀ ∈ Sys.open') (hk : x₀ ∈ (Sys.A.chart k).source) (hU : centre (z x₀) ∈ U) :
    ∃ (V : Set (Fin (Top.dimFl (CMType H) (D.p + D.q)) → ℂ))
      (gm : CMType H → (Fin (Top.dimFl (CMType H) (D.p + D.q)) → ℂ) → Matrix (Fin (D.p + D.q)) (Fin (D.p + D.q)) ℂ),
      IsOpen V ∧ Sys.A.chart k x₀ ∈ V ∧ V ⊆ (Sys.A.chart k).target ∧ (∀ t ∈ V, (Sys.A.chart k).symm t ∈ Sys.open') ∧
      (∀ τ a b, AnalyticOnNhd ℂ (fun t => gm τ t a b) V) ∧ (∀ t ∈ V, ∀ τ, InFlagDomain (D.p + D.q) D.p (gm τ t)) ∧
      (∀ t₁ ∈ V, ∀ p : RootIx D, ∃ G : (Fin (Top.dimFl (CMType H) (D.p + D.q)) → ℂ) → ℂ, AnalyticAt ℂ G t₁ ∧ ∀ᶠ t in 𝓝 t₁,
        (Sys.potH (some p)).φ ((Sys.A.chart k).symm t₁) ((Sys.A.chart k).symm t) =
          stepPot (D.p + D.q) D.p p.2 (gm p.1 t) + (G t).re) ∧
      (CountAt Or.𝔐 Or.Fl U → ∀ t ∈ V, {t' ∈ V | SameFl (fun τ => gm τ t) fun τ => gm τ t'}.Countable) := by
  classical
  set ch := Sys.A.chart k with hch
  let t₀ := ch x₀
  have hs₀ : ch.symm t₀ = x₀ := ch.left_inv hk
  have hop : IsOpen Sys.open' := (_root_.GlobalTheory.CompanionTheory.Ar.Bdry.bdry_isClosed_dense_compl _ _ Sys.A Sys.L Sys.s _ Sys.m Sys.W Sys.sec Sys.snc).1.isOpen_compl
  let V₁ := ch.target ∩ ch.symm ⁻¹' Sys.open'
  have hV₁ : IsOpen V₁ := ch.isOpen_inter_preimage_symm hop
  have ht₁ : t₀ ∈ V₁ := ⟨ch.map_source hk, by show ch.symm t₀ ∈ Sys.open'; rwa [hs₀]⟩
  let z' := fun t => z (ch.symm t)
  have hz₁ : IsHolTo V₁ z' := SheetDecomposition.vecMono hzh hV₁ Set.inter_subset_left
  have hint : ∀ t ∈ V₁, Or.𝔐.Interior (z' t) := fun t ht =>
    (Or.interior _ _ (hzc _)).2 (by rw [hπ]; exact ht.2)
  choose Us hUs b hb hfr using fun s => Or.Fl.sub s ⟨centre (z' t₀), Or.𝔐.all _⟩ trivial
  obtain ⟨g, Λ, _, _, R, V₂, σ, hV₂, ht₂, h21, hfam, hlab, hvec⟩ :=
    hLP hG E H D l Xo c Y ∅ RM.Ω RM.K RM.ι RM.y Or.𝔐 _ V₁ z' hN hV₁ hz₁ hint t₀ ht₁
  let I := Σ s : CMType H ⊕ CMType H, Fin (labelRk D s)
  let e := Fintype.equivFin I
  obtain ⟨xF, hxa, hxe⟩ := hvec _ (fun a => b (e.symm a).1 (e.symm a).2) fun a =>
    (hFV hG E H D l Xo c Y RM.Ω RM.K RM.ι RM.y Or.𝔐 (z' t₀) _ (b _) hN (hint _ ht₁) (hfr _ _ trivial (hUs _))).1 _
  let x : I → (Fin (Top.dimFl (CMType H) (D.p + D.q)) → ℂ) → Fin g → ℂ := fun a => xF (e a)
  have hev : ∀ᶠ t in 𝓝 t₀, t ∈ V₂ ∧ (∀ s, centre (z' t) ∈ Us s) ∧ centre (z' t) ∈ U ∧ (∀ a, AnalyticAt ℂ (x a) t) ∧
      ∃ v : I → (epsAt (z' t) ⟶ Or.𝔐.t.G), (∀ a, Or.𝔐.M.ValAt (z' t) (b a.1 a.2) (v a)) ∧
        FibreLatVec Or.𝔐.t (z' t) (R t) (fun a => x a t) v := by
    filter_upwards [hV₂.mem_nhds ht₂, Filter.eventually_all.2 fun s => eventually_centre hz₁ ht₁ (Us s) (hUs s),
      eventually_centre hz₁ ht₁ U (by show centre (z (ch.symm t₀)) ∈ U; rwa [hs₀]),
      Filter.eventually_all.2 fun a : I => (hxa (e a)).eventually_analyticAt, hxe] with t h1 h2 h3 h4 ⟨v, hv, hf⟩
    refine ⟨h1, h2, h3, h4, fun a => v (e a), fun a => ?_, fibreLatVec_comp hf e⟩
    have := hv (e a)
    rwa [e.symm_apply_apply] at this
  obtain ⟨V₃, h3, hV₃, ht₃⟩ := eventually_nhds_iff.1 hev
  have hfr₃ : ∀ t ∈ V₃, ∀ s, (Or.𝔐.V s).IsFrameAt (b s) ⟨centre (z' t), Or.𝔐.all _⟩ := fun t ht s =>
    hfr s _ trivial ((h3 t ht).2.1 s)
  have hval : ∀ t ∈ V₃, ∀ s, LinearIndependent ℂ (fun i => x ⟨s, i⟩ t) ∧
      Submodule.span ℂ (Set.range fun i => x ⟨s, i⟩ t) = eigSp (R t).B (σ s) ∧
      Or.𝔐.M.GramAt Or.𝔐.t.PP.L (z' t) (b s) ((Real.pi : ℂ) • (R t).gram fun i => x ⟨s, i⟩ t) ∧
      ((R t).gram fun i => x ⟨s, i⟩ t).PosDef := fun t ht s => by
    obtain ⟨h1, -, -, -, v, hv, hf⟩ := h3 t ht
    exact (hFV hG E H D l Xo c Y RM.Ω RM.K RM.ι RM.y Or.𝔐 (z' t) s (b s) hN (hint _ (h21 h1)) (hfr₃ t ht s)).2 g Λ (R t) σ
      _ (fun i => v ⟨s, i⟩) (hlab t h1) (fun i => hv ⟨s, i⟩) (fibreLatVec_comp hf fun i => ⟨s, i⟩)
  obtain ⟨σ', -, hσu, -, -, -, hσ⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Cusp.LabPt.exists_labVal E H D l Xo c Y ∅ RM.Ω RM.K RM.ι RM.y Or.𝔐 ℂ (z' t₀)
  obtain rfl := hσu σ (hlab _ ht₂)
  obtain ⟨hcm, -, hconj⟩ := hσ (RingHom.id ℂ)
  simp only [RingHom.id_comp] at hcm hconj
  have hfam₃ : IsHolFam V₃ R := ⟨fun t ht t' ht' => hfam.1 t (h3 t ht).1 t' (h3 t' ht').1,
    fun a => (hfam.2 a).mono fun t ht => (h3 t ht).1⟩
  obtain ⟨V, gm, hV, ht, hV3, hga, hgp, hrig⟩ := hPM E (CMType H) g _ D.p D.q Λ V₃ R (fun τ => σ (.inl τ))
    (fun τ i => x ⟨.inl τ, i⟩) (fun τ i => x ⟨.inr τ, i⟩) hV₃ hfam₃ hcm
    ⟨fun τ i t ht => (h3 t ht).2.2.2.1 _, fun τ i t ht => (h3 t ht).2.2.2.1 _, fun t ht τ =>
      ⟨⟨(hval t ht (.inl τ)).1, (hval t ht (.inl τ)).2.1⟩, (hval t ht (.inr τ)).1, by
        rw [← hconj]; exact (hval t ht (.inr τ)).2.1⟩⟩ t₀ ht₃
  have hV1 : V ⊆ V₁ := fun t ht => h21 (h3 t (hV3 ht)).1
  refine ⟨V, gm, hV, ht, fun t ht => (hV1 ht).1, fun t ht => (hV1 ht).2, hga, fun t ht τ => (hgp t ht τ).1,
    fun t₁ ht₁ p => ?_, fun hC t ht => ?_⟩
  · choose tr htr using fun a : I => exists_tr (b a.1) (Or.Fl.b a.1) (hb a.1) a.2
    let Γ := fun t s => (R t).gram fun i => x ⟨s, i⟩ t
    let nu : I → (Fin (Top.dimFl (CMType H) (D.p + D.q)) → ℂ) → ℝ := fun a t =>
      Real.sqrt (leadMinor ((Real.pi : ℂ) • Γ t a.1) (a.2 + 1) / leadMinor ((Real.pi : ℂ) • Γ t a.1) a.2)
    obtain ⟨G, hGa, hGe⟩ := hPot E H D l Xo c Y ∅ RM Sys Fx Or ψ k V z' (fun r => tr (HodgeCpt.rootIdx D r))
      (fun r => nu (HodgeCpt.rootIdx D r)) hψ hπ hV (fun t ht => (hV1 ht).1) (fun t ht => ⟨(hV1 ht).2, hzc _, fun r =>
        ⟨Or.𝔐.all _, b _, _, hb _, hfr₃ t (hV3 ht) _, htr _, (hval t (hV3 ht) _).2.2.1,
          (hval t (hV3 ht) _).2.2.2.smul (by exact_mod_cast Real.pi_pos), rfl⟩⟩) t₁ ht₁ p
    let C : ℝ := ∑ i ∈ Finset.Iic p.2, (HodgeCpt.rootSgn D (p.1, i) : ℝ) * Real.log (Real.sqrt Real.pi)
    refine ⟨fun t => G t + C, hGa.add analyticAt_const, ?_⟩
    filter_upwards [hGe, hV.mem_nhds ht₁] with t h1 h2
    rw [h1, (hgp t h2 p.1).2 p.2, Complex.add_re, Complex.ofReal_re]
    have := fun i => root_log (Γ t) (fun s => (hval t (hV3 h2) s).2.2.2) p.1 i
    rw [Finset.sum_congr rfl fun i _ => this i, Finset.sum_add_distrib]
    exact (add_right_comm _ _ _).trans (add_assoc _ _ _)
  · refine Set.MapsTo.countable_of_injOn (f := z') ?_ ?_ (hC b g Λ (R t) (fun s k => flagStep ℂ (fun i => x ⟨s, i⟩ t) k) hb)
    · rintro t' ⟨ht', hs⟩
      obtain ⟨h, hP, hfl⟩ := hrig t ht t' ht' hs
      obtain ⟨h1, -, hU', -, v, hv, hf⟩ := h3 t' (hV3 ht')
      refine ⟨hU', hint _ (hV1 ht'), hfr₃ t' (hV3 ht'), fun a => h.symm (x a t'), v, hv,
        hT E H _ _ _ g Λ (R t) (R t') h I _ v (hfam₃.1 t (hV3 ht) t' (hV3 ht')) hP hf, ?_⟩
      rintro (τ | τ) k
      · exact (hfl τ k).1
      · exact (hfl τ k).2
    · intro t₁ h₁ t₂ h₂ e
      exact ch.symm.injOn (hV1 h₁.1).1 (hV1 h₂.1).1 (hzi e)

end RootFieldNumerics.Un
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.TopLeIffCentre =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.FlagImmersion =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.FlagImmersion", "h": "module\n\npublic import Development.WeilBound.CoreStatements.FlagImmersions.Transport\npublic import Development.WeilBound.CoreStatements.FlagImmersions.TopLeIffCentre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace RootFieldNumerics.Un

open AlgebraicGeometry CategoryTheory NumberField Filter Topology Matrix
open ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp GlobalTheory.CompanionTheory.Ar.PB

section Man

variable {e : ℕ} {X : Type} [TopologicalSpace X] (A : FinHolAtlas e X)

theorem holoOn_chart (k : Fin A.n) {V : Set (Fin e → ℂ)} {f : (Fin e → ℂ) → ℂ} (hf : AnalyticOnNhd ℂ f V) :
    A.HoloOn ((A.chart k).source ∩ A.chart k ⁻¹' V) fun y => f (A.chart k y) := fun j t ht =>
  (hf _ ht.2.2).comp (f := A.chart k ∘ (A.chart j).symm) (A.holo j k t ⟨ht.1, ht.2.1⟩)

theorem periodChart {Ψ : Type} [Finite Ψ] {N j : ℕ} (pot : Ψ × Fin N → LocPot X) (k : Fin A.n) {V : Set (Fin e → ℂ)}
    {gm : Ψ → (Fin e → ℂ) → Matrix (Fin N) (Fin N) ℂ} (hV : IsOpen V) {x : X} (hx : x ∈ (A.chart k).source)
    (hxV : A.chart k x ∈ V) (ha : ∀ τ a b, AnalyticOnNhd ℂ (fun t => gm τ t a b) V) (hd : ∀ t ∈ V, ∀ τ, InFlagDomain N j (gm τ t))
    (hp : ∀ p : Ψ × Fin N, ∃ G : (Fin e → ℂ) → ℂ, AnalyticAt ℂ G (A.chart k x) ∧ ∀ᶠ t in 𝓝 (A.chart k x),
      (pot p).φ x ((A.chart k).symm t) = stepPot N j p.2 (gm p.1 t) + (G t).re) :
    ∃ W, IsPeriodChart A j pot x W fun τ y => gm τ (A.chart k y) := by
  choose G hG hGe using hp
  obtain ⟨V', h', hV', hx'⟩ := eventually_nhds_iff.1 ((hV.eventually_mem hxV).and
    ((Filter.eventually_all.2 fun p => (hG p).eventually_analyticAt).and (Filter.eventually_all.2 hGe)))
  refine ⟨(A.chart k).source ∩ A.chart k ⁻¹' V', (A.chart k).isOpen_inter_preimage hV', ⟨hx, hx'⟩,
    fun τ a b => holoOn_chart A k ((ha τ a b).mono fun t ht => (h' t ht).1), fun τ y hy => hd _ (h' _ hy.2).1 τ,
    fun p => ⟨fun y => G p (A.chart k y), holoOn_chart A k fun t ht => (h' t ht).2.1 p, fun y hy => ?_⟩⟩
  have := (h' _ hy.2).2.2 p
  rwa [(A.chart k).left_inv hy.1] at this

theorem flagImmersion {Ψ : Type} {N : ℕ} (k : Fin A.n) {gm : Ψ → (Fin e → ℂ) → Matrix (Fin N) (Fin N) ℂ} {x : X}
    (hx : x ∈ (A.chart k).source) (ha : ∀ τ a b, AnalyticAt ℂ (fun t => gm τ t a b) (A.chart k x))
    (h : ∀ v : Fin e → ℂ, (∀ τ, ((gm τ (A.chart k x))⁻¹ *
      Matrix.of fun a b => fderiv ℂ (fun z => gm τ z a b) (A.chart k x) v).BlockTriangular id) → v = 0) :
    IsFlagImmersionAt A (fun τ y => gm τ (A.chart k y)) x := by
  intro k' hx' v hv
  let T := A.chart k ∘ (A.chart k').symm
  let T' := A.chart k' ∘ (A.chart k).symm
  have e₁ : T (A.chart k' x) = A.chart k x := congrArg _ ((A.chart k').left_inv hx')
  have hT : DifferentiableAt ℂ T (A.chart k' x) :=
    (A.holo k' k _ ⟨(A.chart k').map_source hx', by
      rw [Set.mem_preimage]; rwa [(A.chart k').left_inv hx']⟩).differentiableAt
  have hT' : DifferentiableAt ℂ T' (T (A.chart k' x)) := by
    rw [e₁]
    exact (A.holo k k' _ ⟨(A.chart k).map_source hx, by
      rw [Set.mem_preimage]; rwa [(A.chart k).left_inv hx]⟩).differentiableAt
  have h0 : fderiv ℂ T (A.chart k' x) v = 0 := h _ fun τ => by
    have e₂ : (Matrix.of fun a b => fderiv ℂ (fun z => gm τ z a b) (A.chart k x) (fderiv ℂ T (A.chart k' x) v)) =
        Matrix.of fun a b => fderiv ℂ (fun z => gm τ (A.chart k ((A.chart k').symm z)) a b) (A.chart k' x) v := by
      ext a b
      have h1 : DifferentiableAt ℂ (fun t => gm τ t a b) (T (A.chart k' x)) := by
        rw [e₁]
        exact (ha τ a b).differentiableAt
      have h2 := fderiv_comp _ h1 hT
      rw [e₁] at h2
      exact (congrArg (fun L : (Fin e → ℂ) →L[ℂ] ℂ => L v) h2).symm
    rw [e₂]
    exact hv τ
  have hid : T' ∘ T =ᶠ[𝓝 (A.chart k' x)] id := by
    have hc : ContinuousAt (A.chart k').symm (A.chart k' x) := (A.chart k').continuousAt_symm ((A.chart k').map_source hx')
    have h1 : ∀ᶠ t in 𝓝 (A.chart k' x), (A.chart k').symm t ∈ (A.chart k).source :=
      hc.eventually_mem ((A.chart k).open_source.mem_nhds (by rwa [(A.chart k').left_inv hx']))
    filter_upwards [h1, (A.chart k').open_target.mem_nhds ((A.chart k').map_source hx')] with t h1 h2
    show A.chart k' ((A.chart k).symm (A.chart k ((A.chart k').symm t))) = t
    rw [(A.chart k).left_inv h1, (A.chart k').right_inv h2]
  have h3 := hid.fderiv_eq (𝕜 := ℂ)
  rw [fderiv_comp _ hT' hT, fderiv_id] at h3
  have h4 := congrArg (fun L => L v) h3
  simpa [h0] using h4.symm

end Man

theorem unif_of (hB : Biholo) (hLP : LocPer) (hT : Transport) (hFV : FrameVals) (hPM : PerMat) (hFI : FlagImm)
    (hC : CountGen) (hPot : PotLoc) (hPts : PtsFam) (hG : Top.Given) {E : Type} [Field E] [NumberField E] [IsCMField E]
    {H : Host E} {D : Datum H} {l : Tor.Level H} {Xo : Moduli D l} {c : Coeff l} {Y : Model Xo c (algebraMap (𝓞 c.F) c.F)}
    (hN : 1 ≤ D.p + D.q) {RM : Top.RootModel (CMType H) (D.p + D.q)}
    {Sys : AnSys (Top.dimFl (CMType H) (D.p + D.q)) (Option (RootIx D))} {Fx : FixedData Y Sys} (Or : RootOrigin Y ∅ RM Fx)
    (hJ : Or.Re.J = ⊤) (hd : Or.Fl.deg = 1) (hA : Ht.AmpleQ RM.y RM.A.a) :
    IsUniformised Sys.A Sys.open' D.p fun p => Sys.potH (some p) := by
  obtain ⟨ψ, hψ, hπ, hπ'⟩ := hB E H D l Xo c Y ∅ RM Sys Fx Or hJ hd hA
  obtain ⟨z, hzi, hzc, hzh, hzU⟩ := hPts E H D l Xo c Y ∅ RM Sys Fx Or ψ hJ hψ hπ hπ'
  constructor
  · intro x hx
    obtain ⟨k, hk⟩ := Sys.A.cover x
    obtain ⟨V, gm, hV, hxV, -, -, ha, hfd, hp, -⟩ :=
      locChart hLP hT hFV hPM hPot hG hN Or ψ hψ hπ z hzi hzc k (hzh k) ⊤ x hx hk trivial
    obtain ⟨W, hW⟩ := periodChart Sys.A (fun p => Sys.potH (some p)) k hV hk hxV ha hfd fun p => by
      have := hp _ hxV p
      rwa [(Sys.A.chart k).left_inv hk] at this
    exact ⟨W, _, hW⟩
  · obtain ⟨U, hU, hcnt⟩ := hC hG E H D l Xo c Y RM.Ω RM.K RM.ι RM.y Or.𝔐 Or.Fl hN hd
    obtain ⟨x, hx, hxU⟩ := hzU U hU
    obtain ⟨k, hk⟩ := Sys.A.cover x
    obtain ⟨V, gm, hV, hxV, hVt, hVo, ha, hfd, hp, hcV⟩ :=
      locChart hLP hT hFV hPM hPot hG hN Or ψ hψ hπ z hzi hzc k (hzh k) U x hx hk hxU
    obtain ⟨t, ht, him⟩ := hFI (CMType H) _ _ V gm hV ⟨_, hxV⟩ ha (fun t ht τ => (hfd t ht τ).1) (hcV hcnt)
    have e : Sys.A.chart k ((Sys.A.chart k).symm t) = t := (Sys.A.chart k).right_inv (hVt ht)
    have hs := (Sys.A.chart k).map_target (hVt ht)
    obtain ⟨W, hW⟩ := periodChart Sys.A (fun p => Sys.potH (some p)) k hV hs (by rwa [e]) ha hfd fun p => by
      rw [e]
      exact hp t ht p
    exact ⟨_, hVo t ht, W, _, hW, flagImmersion Sys.A k hs (fun τ a b => by rw [e]; exact ha τ a b t ht) (by rwa [e])⟩

end RootFieldNumerics.Un
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.FlagImmersion =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.GlobalModelRealTower =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.GlobalModelRealTower", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.TowerExistence.GoodTowerExistsX\npublic import Development.WeilBound.CoreStatements.FlagImmersions.AnalyticAtAeval\npublic import Development.WeilBound.CoreStatements.FlagImmersions.ContAtOfHoloOn\npublic import Development.WeilBound.CoreStatements.FlagImmersions.CoordsOrbit\npublic import Development.WeilBound.CoreStatements.FlagImmersions.CountableBall\npublic import Development.WeilBound.CoreStatements.FlagImmersions.EqZeroOfTri\npublic import Development.WeilBound.CoreStatements.FlagImmersions.ExistsModelOfEq\npublic import Development.WeilBound.CoreStatements.FlagImmersions.ExistsRightInv\npublic import Development.WeilBound.CoreStatements.FlagImmersions.FlagImmersion\npublic import Development.WeilBound.CoreStatements.FlagImmersions.GenRigidOf\npublic import Development.WeilBound.CoreStatements.FlagImmersions.HasPerConj\npublic import Development.WeilBound.CoreStatements.FlagImmersions.Imports\npublic import Development.WeilBound.CoreStatements.FlagImmersions.IsHolToOfLocal\npublic import Development.WeilBound.CoreStatements.FlagImmersions.NormDetEq\npublic import Development.WeilBound.CoreStatements.FlagImmersions.PerCoord\npublic import Development.WeilBound.CoreStatements.FlagImmersions.RankLem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory NumberField ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top
open GroundTheory.Heights₂.Heights.LowerBoundFree (ComponentData ComponentSetting degMu ArLimExists slX)

theorem RootFieldNumerics.global_model_real_tower : Given → ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] [IsAbelianGalois ℚ E] (H : Host E) (D : Datum H) (Xo : ∀ l : Level H, Moduli D l) (l : Level H) (c : Coeff l) (Y : Model (Xo l) c (algebraMap (𝓞 c.F) c.F)) [DecidableEq (CMType H)] (T : RootTower (CMType H) (D.p + D.q)) (o : GoodOrigin Y T) (II : IntersectionSystem), IsGlobal Xo l c Y → o.Extra → IsFullIntersectionSystem II → 1 ≤ D.p → 1 ≤ D.q → (realOf o.toTowerOrigin).Unif := by
  intro hG E _ _ _ _ H D Xo l c Y _ T o II _ _ _ hp _ a
  rw [o.j_eq]
  exact RootFieldNumerics.Un.unif_of (RootFieldNumerics.biholo_of RootFieldNumerics.descend) RootFieldNumerics.locPer RootFieldNumerics.transport RootFieldNumerics.frameVals
    (RootFieldNumerics.perMat_of RootFieldNumerics.perCoord RootFieldNumerics.matStep) (RootFieldNumerics.flagImm_of RootFieldNumerics.rankLem)
    (RootFieldNumerics.countGen_of (RootFieldNumerics.genRigid_of RootFieldNumerics.frameVals)) RootFieldNumerics.potLoc RootFieldNumerics.ptsFam hG (le_add_right hp) (o.refOr a)
    (o.ref_top a) (o.ref_deg a) (o.ample a)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.GlobalModelRealTower =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GoodTowerRealAgreement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GoodTowerRealAgreement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.TowerExistence.GoodTowerExistsX\npublic import Development.WeilBound.CoreStatements.FlagImmersions.GlobalModelRealTower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory NumberField ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top
open GroundTheory.Heights₂.Heights.LowerBoundFree (ComponentData ComponentSetting degMu ArLimExists slX)

theorem _root_.GlobalTheory.CompanionTheory.Relay.good_tower_real_agreement : Given → ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] [IsAbelianGalois ℚ E] (H : Host E) (D : Datum H) (Xo : ∀ l : Level H, Moduli D l) (l : Level H) (c : Coeff l) (Y : Model (Xo l) c (algebraMap (𝓞 c.F) c.F)) [DecidableEq (CMType H)] (T : RootTower (CMType H) (D.p + D.q)) (o : GoodOrigin Y T) (II : IntersectionSystem), IsGlobal Xo l c Y → o.Extra → IsFullIntersectionSystem II → 1 ≤ D.p → 1 ≤ D.q → (realOf o.toTowerOrigin).Unif := by
  first | exact @RootFieldNumerics.global_model_real_tower
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GoodTowerRealAgreement =====
