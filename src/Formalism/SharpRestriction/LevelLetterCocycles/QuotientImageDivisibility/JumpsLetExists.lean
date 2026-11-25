module

public import Formalism.WeaklyAdmissibleFiltrations.Statement
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemCrit
public import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ConstantCoeffQZeroEqP
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IndepOfSpan
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ExistsInfFilVEqBot
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsInfFilVEqBot, Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.JumpsLetExists

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsInfFilVEqBot =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsInfFilVEqBot", "h": "module\n\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ExistsInfFilVEqBot\npublic import Formalism.WeaklyAdmissibleFiltrations.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound.MC

open Formalism.WeaklyAdmissibleFiltrations TensorProduct Module

section Fil

variable {G : Type} [Group G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]

theorem filB_anti : Antitone PD.Fil := antitone_int_of_succ_le PD.Fil_anti

private theorem range_tensor_map_subtype_mono {S T : Submodule Qp BdR} (h : S ≤ T) :
    LinearMap.range (AlgebraTensorModule.map (LinearMap.id : V →ₗ[LL] V) S.subtype) ≤
      LinearMap.range (AlgebraTensorModule.map (LinearMap.id : V →ₗ[LL] V) T.subtype) := by
  rintro _ ⟨w, rfl⟩
  induction w using TensorProduct.induction_on with
  | zero => simp
  | tmul x y => exact LinearMap.mem_range.mpr ⟨x ⊗ₜ[Qp] ⟨(y : BdR), h y.2⟩, by simp⟩
  | add w₁ w₂ h₁ h₂ =>
    rw [map_add (f := _)]
    exact add_mem h₁ h₂

theorem filVB_anti : Antitone (FilV PD (LL := LL) (V := V)) := by
  intro a b hab
  exact range_tensor_map_subtype_mono (S := (PD.Fil b).restrictScalars Qp) (T := (PD.Fil a).restrictScalars Qp)
    fun y hy => filB_anti PD hab hy

private theorem mem_FilV_iff' (a : ℤ) (z : V ⊗[Qp] BdR) :
    z ∈ Formalism.WeaklyAdmissibleFiltrations.FilV PD (LL := LL) (V := V) a ↔
      ∃ w, AlgebraTensorModule.map (LinearMap.id : V →ₗ[LL] V)
        ((PD.Fil a).restrictScalars Qp).subtype w = z := Iff.rfl

theorem tmul_mem_filV (a : ℤ) (x : V) {y : BdR} (hy : y ∈ PD.Fil a) :
    x ⊗ₜ[Qp] y ∈ FilV PD (LL := LL) (V := V) a :=
  (mem_FilV_iff' PD a _).mpr
    ⟨x ⊗ₜ[Qp] (⟨y, hy⟩ : (PD.Fil a).restrictScalars Qp), by simp⟩

theorem filV_exh (z : V ⊗[Qp] BdR) : ∃ a : ℤ, z ∈ FilV PD (LL := LL) (V := V) a := by
  induction z using TensorProduct.induction_on with
  | zero => exact ⟨0, Submodule.zero_mem _⟩
  | tmul x y =>
    obtain ⟨a, ha⟩ := PD.Fil_exh y
    exact ⟨a, tmul_mem_filV PD a x ha⟩
  | add z₁ z₂ h₁ h₂ =>
    obtain ⟨a₁, ha₁⟩ := h₁
    obtain ⟨a₂, ha₂⟩ := h₂
    exact ⟨min a₁ a₂, add_mem (filVB_anti PD (min_le_left _ _) ha₁)
      (filVB_anti PD (min_le_right _ _) ha₂)⟩

private theorem exists_int_finset_subset_FilV (s : Finset (V ⊗[Qp] BdR)) :
    ∃ a : ℤ, ∀ z ∈ s, z ∈ Formalism.WeaklyAdmissibleFiltrations.FilV PD (LL := LL) (V := V) a := by
  induction s using Finset.induction_on with
  | empty => exact ⟨0, by simp⟩
  | @insert x s hx ih =>
    obtain ⟨a, ha⟩ := ih
    obtain ⟨c, hc⟩ := filV_exh PD (LL := LL) x
    refine ⟨min a c, fun z hz => ?_⟩
    rcases Finset.mem_insert.mp hz with rfl | hz
    · exact filVB_anti PD (min_le_right _ _) hc
    · exact filVB_anti PD (min_le_left _ _) (ha z hz)

theorem exists_le_filV (D : Submodule LL (V ⊗[Qp] BdR)) [FiniteDimensional LL D] :
    ∃ a : ℤ, D ≤ FilV PD (LL := LL) (V := V) a := by
  obtain ⟨s, hs⟩ := (Module.Finite.iff_fg (N := D)).mp inferInstance
  obtain ⟨a, ha⟩ := exists_int_finset_subset_FilV PD (LL := LL) (V := V) s
  refine ⟨a, ?_⟩
  rw [← hs]
  exact Submodule.span_le.mpr fun z hz => ha z (Finset.mem_coe.mp hz)

theorem exists_inf_filV_eq_bot (D : Submodule LL (V ⊗[Qp] BdR)) [FiniteDimensional LL D] :
    ∃ a : ℤ, D ⊓ FilV PD (LL := LL) (V := V) a = ⊥ := by
  apply Formalism.MainNotions.N.Ln34.CrystallineExponents.exists_inf_filV_eq_bot

end Fil

end Formalism.MainNotions.N.Pv.LocalLengthBound.MC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsInfFilVEqBot =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.JumpsLetExists =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.JumpsLetExists", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemCrit\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ConstantCoeffQZeroEqP\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsInfFilVEqBot\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IndepOfSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct Module Formalism.MainNotions.N.Pv.LocalLengthBound.Ser Formalism.MainNotions.N.Pv.LocalLengthBound.MC

section Pf

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)

theorem mem_vanI_at (hFr : IsFractionRing O LL) (T : LocLat G Qp LL O) (c : ZMod n) (ζ : LL)
    (hfree : Formalism.MainNotions.DeltaInvariantLattices.FreeLetter W T (W.Nl T c) c) (h3 : Formalism.MainNotions.DeltaInvariantLattices.p3 W T)
    (h4 : Formalism.MainNotions.UnusedSlot80.LevR.Lv1 W T c 0 ζ ∧ Formalism.MainNotions.UnusedSlot80.LevR.Lv2 W T c 0 ζ)
    [FiniteDimensional LL ↥(Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c)]
    (y : W.DD T) (hy : y ∈ W.N T) (hyc : (letE c : LetA O n) • y = y) (k : ℕ)
    (hexp : ∀ j : ℤ, W.levN T c ζ ⟨y, hy⟩ j ∈ Formalism.MainNotions.WachCoordinates.FilLev W T c 0 ((k : ℤ) - j)) :
    y ∈ Formalism.MainNotions.DeltaInvariantLattices.vanI W c ζ k • W.N T := by
  obtain ⟨r, b, hbS, hu⟩ := hfree
  have hbN : ∀ m, b m ∈ W.N T := fun m => Nl_le_N W T c (hbS m)
  have hFa : Antitone (FilV PD (LL := LL) (V := T.V)) := filVB_anti PD
  have hfl : ∀ a, Formalism.MainNotions.WachCoordinates.FilLev W T c 0 a =
      Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c ⊓ FilV PD (LL := LL) (V := T.V) a :=
    fun a => Formalism.MainNotions.UnusedSlot80.LevR.filLev_zero W T c a
  obtain ⟨a₀, h₀⟩ := exists_le_filV PD (Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c)
  obtain ⟨a₁, h₁⟩ := exists_inf_filV_eq_bot PD (Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c)
  let e : Fin r → ℤ → T.V ⊗[Qp] BdR := fun m => W.levN T c ζ ⟨b m, hbN m⟩
  have he : ∀ m k, e m k ∈ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c ⊓ FilV PD (LL := LL) (V := T.V) (-k) :=
    fun m k => hfl (-k) ▸ h4.1 _ k
  have hLB : ∀ m, LB (1 - a₁) (e m) := by
    intro m i hi
    have h := he m i
    have h' : e m i ∈ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c ⊓ FilV PD (LL := LL) (V := T.V) a₁ :=
      ⟨(Submodule.mem_inf.1 h).1, hFa (by omega) (Submodule.mem_inf.1 h).2⟩
    rw [h₁] at h'
    exact (Submodule.mem_bot LL).1 h'
  have hF : ∀ m k, e m k ∈ FilV PD (LL := LL) (V := T.V) (-k) :=
    fun m k => (Submodule.mem_inf.1 (he m k)).2

  have hexpand : ∀ (x : W.DD T) (hx : x ∈ W.N T), (letE c : LetA O n) • x = x →
      ∃ β : Fin r → PowerSeries O, x = ∑ m, (Pi.single c (β m) : LetA O n) • b m ∧
        ∀ j, W.levN T c ζ ⟨x, hx⟩ j =
          ∑ m, smulS (W.lev c ζ (Pi.single c (β m))) (e m) j := by
    intro x hx hxc
    obtain ⟨β, hβ, -⟩ := hu x (mem_Nl_of W hx hxc)
    refine ⟨β, hβ, fun j => ?_⟩
    have hs : ∑ m, (Pi.single c (β m) : LetA O n) • b m ∈ W.N T := hβ ▸ hx
    have e1 : (⟨x, hx⟩ : ↥(W.N T)) = ⟨_, hs⟩ := Subtype.ext hβ
    rw [e1]
    exact levN_sum W c ζ hbN _ hs j
  have hS : ∀ k : ℤ, ∀ w ∈ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c ⊓ FilV PD (LL := LL) (V := T.V) (-k),
      ∃ γ : Fin r → LL, (∀ j < k, ∑ m, γ m • e m j ∈ FilV PD (LL := LL) (V := T.V) (-j + 1)) ∧
        ∑ m, γ m • e m k - w ∈ FilV PD (LL := LL) (V := T.V) (-k + 1) := by
    intro k w hw
    rw [← hfl] at hw
    obtain ⟨x, α, hα, hlow, hk⟩ := h4.2 k w hw
    have hx'N : (letE c : LetA O n) • (x : W.DD T) ∈ W.N T := (W.N T).smul_mem _ x.2
    have hx'c : (letE c : LetA O n) • ((letE c : LetA O n) • (x : W.DD T)) =
        (letE c : LetA O n) • (x : W.DD T) := by rw [smul_smul, letE_mul_self]
    obtain ⟨β, -, hβ⟩ := hexpand _ hx'N hx'c
    have hxe : ∀ j, W.levN T c ζ x j =
        ∑ m, smulS (W.lev c ζ (Pi.single c (β m))) (e m) j := by
      intro j
      rw [← hβ j, ← Formalism.MainNotions.UnusedSlot80.LevR.levN_letE W T c ζ x j]
      rfl
    let γ : Fin r → LL := fun m => α * PowerSeries.constantCoeff (W.lev c ζ (Pi.single c (β m)))
    have key : ∀ j, α • W.levN T c ζ x j - ∑ m, γ m • e m j ∈
        FilV PD (LL := LL) (V := T.V) (-j + 1) := by
      intro j
      have e2 : α • W.levN T c ζ x j - ∑ m, γ m • e m j =
          ∑ m, α • (smulS (W.lev c ζ (Pi.single c (β m))) (e m) j -
            PowerSeries.constantCoeff (W.lev c ζ (Pi.single c (β m))) • e m j) := by
        rw [hxe j, Finset.smul_sum, ← Finset.sum_sub_distrib]
        refine Finset.sum_congr rfl fun m _ => ?_
        rw [smul_sub, mul_smul]
      rw [e2]
      exact Submodule.sum_mem _ fun m _ =>
        Submodule.smul_mem _ _ (smulS_sub_cc hFa (hLB m) (hF m) _ j)
    refine ⟨γ, fun j hj => ?_, ?_⟩
    · have h1 : α • W.levN T c ζ x j ∈ FilV PD (LL := LL) (V := T.V) (-j + 1) := by
        have := hlow j hj
        rw [hfl] at this
        exact (Submodule.mem_inf.1 this).2
      have := Submodule.sub_mem _ h1 (key j)
      rwa [sub_sub_cancel] at this
    · have h1 : α • W.levN T c ζ x k - w ∈ FilV PD (LL := LL) (V := T.V) (-k + 1) := by
        rw [hfl] at hk
        exact (Submodule.mem_inf.1 hk).2
      have := Submodule.sub_mem _ h1 (key k)
      rwa [sub_sub_sub_cancel_left] at this
  have hr := rank_le W hFr T c hbS hu h3
  have hind := indep_of_span hFa (Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c) a₀ a₁ h₀ h₁ he hS hr
  obtain ⟨β, hβ, hyβ⟩ := hexpand y hy hyc
  have hdg : ∀ j : ℤ, ∑ m, smulS (W.lev c ζ (Pi.single c (β m))) (e m) j ∈
      FilV PD (LL := LL) (V := T.V) ((k : ℤ) - j) := by
    intro j
    have := hexp j
    rw [hyβ j, hfl] at this
    exact (Submodule.mem_inf.1 this).2
  have hdvd := dvd_of_dg hFa (Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c) a₁ h₁ he hind k _ hdg
  rw [hβ]
  refine Submodule.sum_mem _ fun m _ => Submodule.smul_mem_smul ?_ (hbN m)
  show W.lev c ζ (Pi.single c (β m)) ∈ Ideal.span {(PowerSeries.X : PowerSeries LL) ^ k}
  exact Ideal.mem_span_singleton.2 (hdvd m)

def tauOf (hbij : Function.Bijective (algebraMap K₀ K)) (i : ZMod n) : K →ₐ[Qp] LL :=
  (W.emb i).comp (AlgEquiv.ofBijective (IsScalarTower.toAlgHom Qp K₀ K) hbij).symm.toAlgHom

theorem tauOf_over (hbij : Function.Bijective (algebraMap K₀ K)) (i : ZMod n) (x : K₀) :
    tauOf W hbij i (algebraMap K₀ K x) = W.emb i x := by
  show W.emb i ((AlgEquiv.ofBijective (IsScalarTower.toAlgHom Qp K₀ K) hbij).symm
    (algebraMap K₀ K x)) = W.emb i x
  congr 1
  exact (AlgEquiv.symm_apply_eq _).2 rfl

theorem tauOf_unique (hbij : Function.Bijective (algebraMap K₀ K)) (i : ZMod n)
    (τ : K →ₐ[Qp] LL) (hτ : Formalism.MainNotions.DeltaInvariantLattices.OverLetter W τ i) : τ = tauOf W hbij i := by
  ext x
  obtain ⟨y, rfl⟩ := hbij.2 x
  rw [tauOf_over]
  exact congrArg (fun f : K₀ →ₐ[Qp] LL => f y) hτ

theorem fd_ιDi (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (hD : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL)
    (T : LocLat G Qp LL O) (hT : IsCrys PD T.ρ) (c : ZMod n) :
    FiniteDimensional LL ↥(Formalism.MainNotions.DeltaInvariantLattices.ιDi W T c) := by
  have := ((hD hA.1 T.V T.ρ hT).2 (tauOf W hA.1 c)).1
  exact Submodule.finiteDimensional_of_le
    (Formalism.MainNotions.UnusedSlot80.LevR.ιDi_le W T c (tauOf W hA.1 c) (tauOf_over W hA.1 c) hA.1.2)

theorem jumpsLet_exists (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (hD : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL)
    (T : LocLat G Qp LL O) (hT : IsCrys PD T.ρ) :
    ∃ M h : ZMod n → ℕ, Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T M h := by
  have hex : ∀ i : ZMod n, ∃ a₀ a₁ : ℤ,
      DdRE PD T.ρ (tauOf W hA.1 i) ≤ FilV PD (LL := LL) (V := T.V) a₀ ∧
      DdRE PD T.ρ (tauOf W hA.1 i) ⊓ FilV PD (LL := LL) (V := T.V) a₁ = ⊥ := by
    intro i
    have := ((hD hA.1 T.V T.ρ hT).2 (tauOf W hA.1 i)).1
    obtain ⟨a₀, h₀⟩ := exists_le_filV PD (DdRE PD T.ρ (tauOf W hA.1 i))
    obtain ⟨a₁, h₁⟩ := exists_inf_filV_eq_bot PD (DdRE PD T.ρ (tauOf W hA.1 i))
    exact ⟨a₀, a₁, h₀, h₁⟩
  choose a₀ a₁ h₀ h₁ using hex
  refine ⟨fun i => (-(a₀ i)).toNat, fun i => (a₁ i).toNat, fun τ i hτ a ha => ?_⟩
  obtain rfl := tauOf_unique W hA.1 i τ hτ
  have hFa : Antitone (FilV PD (LL := LL) (V := T.V)) := filVB_anti PD
  unfold IsJumpV FildR at ha
  constructor
  · by_contra hlt
    apply ha
    have hle : a + 1 ≤ a₀ i := by have := Int.self_le_toNat (-(a₀ i)); push Not at hlt; omega
    rw [inf_eq_left.2 ((h₀ i).trans (hFa hle)), inf_eq_left.2 ((h₀ i).trans (hFa (by omega)))]
  · by_contra hlt
    apply ha
    have hle : a₁ i ≤ a := by have := Int.self_le_toNat (a₁ i); push Not at hlt; omega
    have e1 : DdRE PD T.ρ (tauOf W hA.1 i) ⊓ FilV PD (LL := LL) (V := T.V) a = ⊥ :=
      eq_bot_iff.2 ((inf_le_inf_left _ (hFa hle)).trans (h₁ i).le)
    have e2 : DdRE PD T.ρ (tauOf W hA.1 i) ⊓ FilV PD (LL := LL) (V := T.V) (a + 1) = ⊥ :=
      eq_bot_iff.2 ((inf_le_inf_left _ (hFa (by omega))).trans (h₁ i).le)
    rw [e1, e2]

theorem shift_exp (hs : W.s = 1) (hp : (PD.p : LL) ≠ 0) (T : LocLat G Qp LL O) (c : ZMod n)
    {ζ : LL} (hζ : IsPrimitiveRoot ζ PD.p) (x : W.DD T) (k : ℕ) (hk : W.Q ^ k • x ∈ W.N T)
    (hexp : ∀ j : ℤ, W.levN T c ζ ⟨W.Q ^ k • x, hk⟩ j ∈ Formalism.MainNotions.WachCoordinates.FilLev W T c 0 ((k : ℤ) - j))
    (k' : ℕ) (hk' : W.Q ^ k' • x ∈ W.N T) :
    ∀ j : ℤ, W.levN T c ζ ⟨W.Q ^ k' • x, hk'⟩ j ∈ Formalism.MainNotions.WachCoordinates.FilLev W T c 0 ((k' : ℤ) - j) := by
  obtain ⟨u, hu0, hq⟩ := lev_q_eq W c hζ hp
  have hQ : W.lev c ζ W.Q = PowerSeries.X * u := by rw [Q_eq_q W hs]; exact hq
  have hFl : Antitone (Formalism.MainNotions.WachCoordinates.FilLev W T c 0) := Formalism.MainNotions.UnusedSlot80.LevR.filLev_anti W T c 0
  have hlevsmul : ∀ (a : LetA O n) (z : ↥(W.N T)),
      W.levN T c ζ (a • z) = smulS (W.lev c ζ a) (W.levN T c ζ z) := by
    intro a z
    funext j
    rw [W.levN_smul]
    rfl
  have hud : ∀ d : ℕ, PowerSeries.constantCoeff (u ^ d) ≠ 0 := fun d => by
    rw [map_pow]; exact pow_ne_zero _ hu0
  rcases le_total k' k with hle | hle
  · obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le hle
    have e1 : (⟨W.Q ^ (k' + d) • x, hk⟩ : ↥(W.N T)) = W.Q ^ d • ⟨W.Q ^ k' • x, hk'⟩ :=
      Subtype.ext (by simp only [SetLike.val_smul]; rw [smul_smul, ← pow_add, add_comm])
    obtain ⟨M, hM⟩ := W.levN_supp T c ζ ⟨W.Q ^ k' • x, hk'⟩
    have hg : LB M (W.levN T c ζ ⟨W.Q ^ k' • x, hk'⟩) := hM
    have hexp' : ∀ j : ℤ, smulS (u ^ d) (W.levN T c ζ ⟨W.Q ^ k' • x, hk'⟩) j ∈
        Formalism.MainNotions.WachCoordinates.FilLev W T c 0 ((k' : ℤ) - j) := by
      intro j
      have := hexp (j + d)
      rw [e1, hlevsmul, map_pow, hQ, mul_pow, smulS_mul hg, smulS_X_pow (LB_smulS hg _)] at this
      simp only at this
      rw [show j + (d : ℤ) - (d : ℤ) = j by ring,
        show ((k' + d : ℕ) : ℤ) - (j + d) = (k' : ℤ) - j by push_cast; ring] at this
      exact this
    intro j
    rw [← smulS_inv hg (u ^ d) (hud d)]
    exact Dg_smulS hFl (LB_smulS hg _) hexp' _ j
  · obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le hle
    have e1 : (⟨W.Q ^ (k + d) • x, hk'⟩ : ↥(W.N T)) = W.Q ^ d • ⟨W.Q ^ k • x, hk⟩ :=
      Subtype.ext (by simp only [SetLike.val_smul]; rw [smul_smul, ← pow_add, add_comm])
    obtain ⟨M, hM⟩ := W.levN_supp T c ζ ⟨W.Q ^ k • x, hk⟩
    have hg : LB M (W.levN T c ζ ⟨W.Q ^ k • x, hk⟩) := hM
    have hD := Dg_smulS hFl hg hexp (u ^ d)
    intro j
    rw [e1, hlevsmul, map_pow, hQ, mul_pow, smulS_mul hg, smulS_X_pow (LB_smulS hg _)]
    simp only
    have := hD (j - d)
    rwa [show (k : ℤ) - (j - d) = ((k + d : ℕ) : ℤ) - j by push_cast; ring] at this

theorem memCrit_of [NeZero n] (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (hFr : IsFractionRing O LL)
    (h1 : Formalism.MainNotions.DeltaInvariantLattices.WachLatticeFree W) (h3 : Formalism.MainNotions.DeltaInvariantLattices.P3W W) (h4 : Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W)
    (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (hD : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL) : MemCrit W := by
  intro T hT c x k hk hxc hexp
  have hs : W.s = 1 := hA.2.1
  have hp : (PD.p : LL) ≠ 0 := by
    intro h0
    have := W.v_l
    rw [h0, AddValuation.map_zero] at this
    exact WithTop.top_ne_coe this
  obtain ⟨M, h, hJ⟩ := jumpsLet_exists W hA hD T hT
  have h5T := (h5 T M h hT hJ).2.2 x ⟨k, hk⟩
  refine h5T.2 fun i ζ hQ k' hk' => ?_
  by_cases hic : i = c
  · subst hic
    have hζ := qroot_prim W hs hp hQ
    have := fd_ιDi W hA hD T hT i
    exact mem_vanI_at W hFr T i ζ ((h1 T hT).2 i) (h3 T hT)
      (h4 T hT i 0 ζ (by rwa [zero_add, pow_one])) (W.Q ^ k' • x) hk'
      (by rw [smul_comm, hxc]) k' (shift_exp W hs hp T i hζ x k hk (hexp ζ hζ) k' hk')
  · have hl : (letE c : LetA O n) ∈ Formalism.MainNotions.DeltaInvariantLattices.vanI W i ζ k' := by
      show W.lev i ζ (letE c) ∈ Ideal.span {(PowerSeries.X : PowerSeries LL) ^ k'}
      rw [W.lev_letter i ζ _ (by simp [letE, Pi.single_eq_of_ne hic])]
      exact Ideal.zero_mem _
    have e1 : W.Q ^ k' • x = (letE c : LetA O n) • (W.Q ^ k' • x) := by rw [smul_comm, hxc]
    rw [e1]
    exact Submodule.smul_mem_smul hl hk'

end Pf

end Formalism.MainNotions.N.Pv.LocalLengthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.JumpsLetExists =====
