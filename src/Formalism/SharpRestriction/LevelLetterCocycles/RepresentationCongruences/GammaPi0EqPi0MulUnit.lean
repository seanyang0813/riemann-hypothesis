module

public import Mathlib.RingTheory.PowerSeries.Substitution
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup
public import Mathlib.RingTheory.PowerSeries.Inverse
import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.Pi0MemADelta
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.ConstantCoeffAlgHom, Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.GammaPi0EqPi0MulUnit

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.ConstantCoeffAlgHom =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.ConstantCoeffAlgHom", "h": "module\n\npublic import Mathlib.RingTheory.PowerSeries.Substitution\nimport Mathlib.Algebra.Order.Algebra\nimport Mathlib.Analysis.Normed.Group.Basic\nimport Mathlib.Analysis.Real.Sqrt\nimport Mathlib.Data.EReal.Inv\nimport Mathlib.Geometry.Convex.ConvexSpace.Defs\nimport Mathlib.Tactic.ContinuousFunctionalCalculus\nimport Mathlib.Tactic.Positivity.Finset\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open PowerSeries

namespace Formalism.MainNotions.N.WachTwistedLattices.PowerSeriesTruncation

variable {O : Type*} [CommRing O]

theorem coeff_X_pow_mul_lt {n d : ℕ} (h : d < n) (p : PowerSeries O) :
    coeff d (X ^ n * p) = 0 := by
  first
  | rw [PowerSeries.coeff_X_pow_mul', if_neg (not_le.mpr h)]

theorem coeff_pow_mul_lt {Y : PowerSeries O} (hY : constantCoeff Y = 0) {n d : ℕ} (h : d < n)
    (p : PowerSeries O) : coeff d (Y ^ n * p) = 0 := by
  obtain ⟨Z, rfl⟩ := PowerSeries.X_dvd_iff.mpr hY
  rw [mul_pow, mul_assoc]
  exact coeff_X_pow_mul_lt h _

theorem trunc_decomp (a : PowerSeries O) (k : ℕ) :
    ∃ b, a = (trunc k a : PowerSeries O) + X ^ k * b := by
  have hd : (X : PowerSeries O) ^ k ∣ a - (trunc k a : PowerSeries O) := by
    rw [PowerSeries.X_pow_dvd_iff]
    intro m hm
    rw [map_sub, Polynomial.coeff_coe, PowerSeries.coeff_trunc, if_pos hm, sub_self]
  obtain ⟨b, hb⟩ := hd
  exact ⟨b, by rw [← hb]; ring⟩

theorem algHom_coe (ψ : PowerSeries O →ₐ[O] PowerSeries O) (p : Polynomial O) :
    ψ (p : PowerSeries O) = Polynomial.aeval (ψ X) p := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq => rw [Polynomial.coe_add, map_add (f := _), hp, hq, map_add (f := _)]
  | monomial n c =>
    rw [← Polynomial.C_mul_X_pow_eq_monomial]
    simp only [Polynomial.coe_mul, Polynomial.coe_pow, Polynomial.coe_C, Polynomial.coe_X, map_mul,
      map_pow, Polynomial.aeval_C, Polynomial.aeval_X]
    congr 1
    first
    | exact ψ.commutes c

private theorem natDegree_trunc_lt_of_pos (a : PowerSeries O) {N : ℕ} (hN : 0 < N) :
    (trunc N a).natDegree < N := by
  obtain ⟨N', rfl⟩ : ∃ N', N = N' + 1 := ⟨N - 1, by omega⟩
  first
  | exact PowerSeries.natDegree_trunc_lt a N'

private theorem coeff_algHom_eq_sum_range_of_lt (σ : PowerSeries O →ₐ[O] PowerSeries O)
    (hσ : constantCoeff (σ X) = 0) (a : PowerSeries O) {m N : ℕ} (hN : m < N) :
    coeff m (σ a) = ∑ n ∈ Finset.range N, coeff n a * coeff m (σ X ^ n) := by
  obtain ⟨b, hb⟩ := trunc_decomp a N
  have hdeg := natDegree_trunc_lt_of_pos a (lt_of_le_of_lt (Nat.zero_le m) hN)

  rw [show σ a = σ ((trunc N a : PowerSeries O) + X ^ N * b) from congrArg σ hb, map_add (f := _), map_mul,
  map_pow, algHom_coe, map_add,
  coeff_pow_mul_lt hσ hN, add_zero,
  Polynomial.aeval_eq_sum_range' hdeg, map_sum]
  refine Finset.sum_congr rfl fun i hi => ?_
  rw [Finset.mem_range] at hi
  first
  | rw [map_smul, smul_eq_mul, PowerSeries.coeff_trunc, if_pos hi]

private theorem coeff_subst_eq_sum_range_of_lt {Y : PowerSeries O} (hY : constantCoeff Y = 0)
    (a : PowerSeries O) {m N : ℕ} (hN : m < N) :
    coeff m (a.subst Y) = ∑ n ∈ Finset.range N, coeff n a * coeff m (Y ^ n) := by
  have hs := PowerSeries.HasSubst.of_constantCoeff_zero' hY
  let σ : PowerSeries O →ₐ[O] PowerSeries O := PowerSeries.substAlgHom hs
  have h1 : ∀ f : PowerSeries O, σ f = f.subst Y := fun f => by
    first
    | simp [σ, PowerSeries.coe_substAlgHom]
  have h2 : σ X = Y := by
    rw [h1]
    first
    | exact PowerSeries.subst_X hs
  have h3 := coeff_algHom_eq_sum_range_of_lt σ (by rw [h2]; exact hY) a hN
  rw [h2, h1] at h3
  exact h3

theorem algHom_eq_subst (ψ : PowerSeries O →ₐ[O] PowerSeries O)
    (hψ : constantCoeff (ψ X) = 0) (a : PowerSeries O) : ψ a = a.subst (ψ X) := by
  ext m
  rw [coeff_algHom_eq_sum_range_of_lt ψ hψ a (Nat.lt_succ_self m),
    coeff_subst_eq_sum_range_of_lt hψ a (Nat.lt_succ_self m)]

def qn (Y Z : PowerSeries O) (n : ℕ) : PowerSeries O :=
  ∑ i ∈ Finset.range n, Y ^ i * Z ^ (n - 1 - i)

theorem coeff_qn {Y Z : PowerSeries O} (hY : constantCoeff Y = 0) (hZ : constantCoeff Z = 0)
    {n j : ℕ} (h : j + 1 < n) : coeff j (qn Y Z n) = 0 := by
  obtain ⟨Y', rfl⟩ := PowerSeries.X_dvd_iff.mpr hY
  obtain ⟨Z', rfl⟩ := PowerSeries.X_dvd_iff.mpr hZ
  unfold qn

  rw [map_sum]
  refine Finset.sum_eq_zero fun i hi => ?_
  rw [Finset.mem_range] at hi
  have e : n - 1 = i + (n - 1 - i) := by omega
  have hprod : (X * Y') ^ i * (X * Z') ^ (n - 1 - i) = X ^ (n - 1) * (Y' ^ i * Z' ^ (n - 1 - i)) := by
    generalize n - 1 - i = k at e ⊢
    rw [e]
    ring
  rw [hprod]
  exact coeff_X_pow_mul_lt (by omega) _

theorem subst_sub_subst_dvd {Y Z : PowerSeries O} (hY : constantCoeff Y = 0)
    (hZ : constantCoeff Z = 0) (a : PowerSeries O) : (Y - Z) ∣ a.subst Y - a.subst Z := by
  classical
  have hYZ : ∀ n, (Y - Z) * qn Y Z n = Y ^ n - Z ^ n := fun n => by
    unfold qn
    rw [mul_comm]
    first
    | exact geom_sum₂_mul Y Z n
  have stab : ∀ q M, q + 2 ≤ M →
      ∑ n ∈ Finset.range M, coeff n a * coeff q (qn Y Z n) =
        ∑ n ∈ Finset.range (q + 2), coeff n a * coeff q (qn Y Z n) := by
    intro q M hM
    symm
    refine Finset.sum_subset (fun x hx => by rw [Finset.mem_range] at hx ⊢; omega) fun n _ hn => ?_
    rw [Finset.mem_range, not_lt] at hn
    rw [coeff_qn hY hZ (by omega), mul_zero]
  refine ⟨PowerSeries.mk fun q =>
    ∑ n ∈ Finset.range (q + 2), coeff n a * coeff q (qn Y Z n), ?_⟩
  ext m
  symm
  have hm : m < m + 2 := by omega
  rw [map_sub, PowerSeries.coeff_mul, coeff_subst_eq_sum_range_of_lt hY a hm,
    coeff_subst_eq_sum_range_of_lt hZ a hm, ← Finset.sum_sub_distrib]
  have h1 : ∀ n, coeff n a * coeff m (Y ^ n) - coeff n a * coeff m (Z ^ n) =
      ∑ p ∈ Finset.antidiagonal m, coeff p.1 (Y - Z) * (coeff n a * coeff p.2 (qn Y Z n)) := by
    intro n
    have e := congrArg (coeff m) (hYZ n)
    rw [map_sub, PowerSeries.coeff_mul] at e
    rw [← mul_sub, ← e, Finset.mul_sum]
    exact Finset.sum_congr rfl fun p _ => by ring
  rw [Finset.sum_congr rfl fun n _ => h1 n]
  conv_rhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun p hp => ?_
  rw [PowerSeries.coeff_mk, ← Finset.mul_sum,
    stab p.2 (m + 2) (by rw [Finset.mem_antidiagonal] at hp; omega)]

end Formalism.MainNotions.N.WachTwistedLattices.PowerSeriesTruncation
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.ConstantCoeffAlgHom =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.GammaPi0EqPi0MulUnit =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.GammaPi0EqPi0MulUnit", "h": "module\n\nimport Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.Pi0MemADelta\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ConstantCoeffAlgHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.FrobeniusPowerSeries.GS

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.ArcLiftingSetup PowerSeries

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {PD : PeriodData G Qp K₀ K B BdR}

variable (W : LocWach PD LL O v n)

theorem γA_apply (g : W.Gam) (a : LetA O n) (i : ZMod n) : W.γA g a i = W.γ₀ g (a i) := rfl

theorem γA_mul (g h : W.Gam) (a : LetA O n) : W.γA (g * h) a = W.γA g (W.γA h a) := by
  funext i
  rw [γA_apply, γA_apply, γA_apply, map_mul]
  rfl

theorem γA_comm (g h : W.Gam) (a : LetA O n) : W.γA g (W.γA h a) = W.γA h (W.γA g a) := by
  rw [← γA_mul, mul_comm, γA_mul]

theorem γA_mem (g : W.Gam) {a : LetA O n} (ha : a ∈ W.AΔ) : W.γA g a ∈ W.AΔ := by
  intro δ hδ
  rw [γA_comm, ha δ hδ]

theorem delF_iff (g : W.Gam) : g ∈ W.DelF ↔ IsOfFinOrder g := by
  rw [W.DelF_def, isOfFinOrder_iff_pow_eq_one]

theorem π₀_mem : W.π₀ ∈ W.AΔ := by
  apply Formalism.MainNotions.N.FrobeniusPowerSeries.TypesA.pi0_mem_ADelta

theorem qA_mem : qA W ∈ W.AΔ :=
  W.AΔ.add_mem (π₀_mem W) (natCast_mem _ _)

theorem φpow_γA (t : ℕ) (g : W.Gam) (a : LetA O n) :
    (W.φA ^ t) (W.γA g a) = W.γA g ((W.φA ^ t) a) := by
  induction t generalizing a with
  | zero => simp
  | succ t ih => rw [pow_succ, AlgHom.mul_apply, AlgHom.mul_apply, W.φA_γA, ih]

theorem φpow_mem (t : ℕ) {a : LetA O n} (ha : a ∈ W.AΔ) : (W.φA ^ t) a ∈ W.AΔ := by
  intro δ hδ
  rw [← φpow_γA, ha δ hδ]

theorem ps_mem (s : ℕ) : ps W s ∈ W.AΔ := φpow_mem W s (qA_mem W)

theorem γD_smulA (T : LocLat G Qp LL O) (g : W.Gam) (a : LetA O n) (x : W.DD T) :
    W.γD T g (a • x) = W.γA g a • W.γD T g x := by
  rw [← algebraMap_smul W.EE a x, W.γD_smul, W.γE_ext, algebraMap_smul]
  rfl

theorem γA_letE (g : W.Gam) (c : ZMod n) : W.γA g (letE c) = letE c := by
  funext i
  change W.γ₀ g ((letE c : LetA O n) i) = (letE c : LetA O n) i
  by_cases h : i = c
  · subst h; simp [letE]
  · simp [letE, Pi.single_eq_of_ne h]

theorem γE_ι (g : W.Gam) (a : LetA O n) :
    W.γE g (algebraMap (LetA O n) W.EE a) = algebraMap (LetA O n) W.EE (W.γA g a) := W.γE_ext g a

theorem isUnit_p_add (x : W.EE) : IsUnit (((PD.p : ℕ) : W.EE) * x + 1) := by
  have := W.EE_complete
  have h : ((PD.p : ℕ) : W.EE) ∈ (⊥ : Ideal W.EE).jacobson :=
    IsAdicComplete.le_jacobson_bot (I := Ideal.span {((PD.p : ℕ) : W.EE)}) (Ideal.subset_span rfl)
  exact Ideal.mem_jacobson_bot.1 h x

theorem cancelE {c a b : LetA O n} (hc : IsUnit (algebraMap (LetA O n) W.EE c)) (h : c * a = c * b) :
    a = b := by
  apply W.EE_inj
  have := congrArg (algebraMap (LetA O n) W.EE) h
  rw [map_mul, map_mul] at this
  exact hc.mul_left_cancel this

theorem quot_mem {c x : LetA O n} (hc : c ∈ W.AΔ) (hcu : IsUnit (algebraMap (LetA O n) W.EE c))
    (h : c * x ∈ W.AΔ) : x ∈ W.AΔ := by
  intro δ hδ
  apply cancelE W hcu
  have h1 : W.γA δ (c * x) = c * x := h δ hδ
  rw [map_mul, hc δ hδ] at h1
  exact h1

def RD : Prop :=
  (∃ w : (LetA O n)ˣ, W.π₀ = (w : LetA O n) * letπ ^ (PD.p - 1)) ∧
  (∃ w : (LetA O n)ˣ, W.φA W.π₀ = (w : LetA O n) * W.π₀ * qA W ^ (PD.p - 1)) ∧
  (∃ w : (LetA O n)ˣ, W.γA W.gam W.π₀ - W.π₀ = (w : LetA O n) * W.π₀ * qA W) ∧
  (∀ a ∈ W.AΔ, ∃ F : ZMod n → PowerSeries O, ∀ i, a i = PowerSeries.subst (W.π₀ i) (F i))

theorem rd_of (h : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W 1 (PD.p - 1) W.π₀
    (fun _ => Polynomial.X + Polynomial.C ((PD.p : ℕ) : O))) : RD W := by
  have hE : Formalism.MainNotions.DeltaInvariantLattices.Eat (fun _ : ZMod n => Polynomial.X + Polynomial.C ((PD.p : ℕ) : O)) W.π₀ =
      qA W := by
    funext i
    simp [Formalism.MainNotions.DeltaInvariantLattices.Eat, qA, lA]
  obtain ⟨-, hsub, hπ, -, -, hφ, hγ, -⟩ := h
  rw [hE] at hφ hγ
  refine ⟨hπ, hφ, hγ, fun a ha => ?_⟩
  obtain ⟨F, hF, -⟩ := hsub a ha
  exact ⟨F, hF⟩

section RDsec

variable {W}

theorem p_sub_one_pos : 1 ≤ PD.p - 1 := by
  have := PD.hp.two_le
  omega

theorem π₀₁_eq (hR : RD W) : ∃ c : PowerSeries O, W.π₀₁ = c * X ^ (PD.p - 1) := by
  obtain ⟨⟨w, hw⟩, -⟩ := id hR
  exact ⟨(w : LetA O n) 0, congrFun hw 0⟩

theorem π₀₁_cc (hR : RD W) : constantCoeff W.π₀₁ = 0 := by
  obtain ⟨c, hc⟩ := π₀₁_eq hR
  have h1 : PD.p - 1 ≠ 0 := by have := p_sub_one_pos (PD := PD); omega
  rw [hc, map_mul, map_pow, constantCoeff_X, zero_pow h1, mul_zero]

theorem isUnit_π₀ (hR : RD W) : IsUnit (algebraMap (LetA O n) W.EE W.π₀) := by
  obtain ⟨⟨w, hw⟩, -⟩ := id hR
  rw [hw, map_mul, map_pow]
  exact (w.isUnit.map _).mul (W.EE_π.pow _)

theorem isUnit_qA (hR : RD W) : IsUnit (algebraMap (LetA O n) W.EE (qA W)) := by
  obtain ⟨u, hu⟩ := isUnit_π₀ hR
  have e : algebraMap (LetA O n) W.EE (qA W) =
      (u : W.EE) * (((PD.p : ℕ) : W.EE) * ((u⁻¹ : W.EEˣ) : W.EE) + 1) := by
    rw [mul_add, mul_one, mul_left_comm, Units.mul_inv, mul_one, hu, qA, lA, map_add (f := _), map_natCast,
      add_comm]
  rw [e]
  exact u.isUnit.mul (isUnit_p_add W _)

theorem isUnit_π₀qA (hR : RD W) : IsUnit (algebraMap (LetA O n) W.EE (W.π₀ * qA W)) := by
  rw [map_mul]
  exact (isUnit_π₀ hR).mul (isUnit_qA hR)

theorem π₀qA_mem : W.π₀ * qA W ∈ W.AΔ := W.AΔ.mul_mem (π₀_mem W) (qA_mem W)

theorem gamma_pi0_eq_pi0_mul_unit (hR : RD W) :
    ∃ w : (LetA O n)ˣ, (w : LetA O n) ∈ W.AΔ ∧ W.γA W.gam W.π₀ = W.π₀ * (1 + w * qA W) := by
  obtain ⟨-, -, ⟨w, hw⟩, -⟩ := id hR
  refine ⟨w, quot_mem W π₀qA_mem (isUnit_π₀qA hR) ?_, by linear_combination hw⟩
  have : W.π₀ * qA W * (w : LetA O n) = W.γA W.gam W.π₀ - W.π₀ := by rw [hw]; ring
  rw [this]
  exact W.AΔ.sub_mem (γA_mem W _ (π₀_mem W)) (π₀_mem W)

theorem γ₀π₀₁_cc (hR : RD W) : constantCoeff (W.γ₀ W.gam W.π₀₁) = 0 := by
  obtain ⟨c, hc⟩ := π₀₁_eq hR
  have h1 : PD.p - 1 ≠ 0 := by have := p_sub_one_pos (PD := PD); omega
  rw [hc, map_mul, map_pow, map_mul, map_pow, (W.γ₀_X W.gam).1, zero_pow h1, mul_zero]

theorem gam_A_core (hR : RD W) {f : LetA O n} (hf : f ∈ W.AΔ) :
    ∃ g ∈ W.AΔ, W.γA W.gam f - f = W.π₀ * qA W * g := by
  have hR' := id hR
  obtain ⟨-, -, ⟨w, hw⟩, hsub⟩ := hR'
  obtain ⟨F, hF⟩ := hsub f hf
  have hcc := π₀₁_cc hR
  have hγcc := γ₀π₀₁_cc hR
  have hs : HasSubst W.π₀₁ := HasSubst.of_constantCoeff_zero' hcc
  have hdiv : ∀ i, ∃ c : PowerSeries O,
      (W.γA W.gam f - f) i = (W.γA W.gam W.π₀ - W.π₀) i * c := by
    intro i
    let ψ : PowerSeries O →ₐ[O] PowerSeries O := (W.γ₀ W.gam).comp (substAlgHom hs)
    have hψX : ψ X = W.γ₀ W.gam W.π₀₁ := by
      show W.γ₀ W.gam (substAlgHom hs X) = _
      rw [coe_substAlgHom, subst_X hs]
    have hψ : ψ (F i) = (F i).subst (W.γ₀ W.gam W.π₀₁) := by
      rw [Formalism.MainNotions.N.WachTwistedLattices.PowerSeriesTruncation.algHom_eq_subst ψ (by rw [hψX]; exact hγcc), hψX]
    have e1 : (W.γA W.gam f - f) i = (F i).subst (W.γ₀ W.gam W.π₀₁) - (F i).subst W.π₀₁ := by
      rw [Pi.sub_apply, γA_apply, hF i, ← hψ]
      show _ = (W.γ₀ W.gam) (substAlgHom hs (F i)) - _
      rw [coe_substAlgHom]
      rfl
    obtain ⟨c, hc⟩ := Formalism.MainNotions.N.WachTwistedLattices.PowerSeriesTruncation.subst_sub_subst_dvd hγcc hcc (F i)
    exact ⟨c, by rw [e1, hc]; rfl⟩
  choose c hc using hdiv
  have hfc : W.γA W.gam f - f = (W.γA W.gam W.π₀ - W.π₀) * c := funext hc
  refine ⟨(w : LetA O n) * c, quot_mem W π₀qA_mem (isUnit_π₀qA hR) ?_, ?_⟩
  · have : W.π₀ * qA W * ((w : LetA O n) * c) = W.γA W.gam f - f := by rw [hfc, hw]; ring
    rw [this]
    exact W.AΔ.sub_mem (γA_mem W _ hf) hf
  · rw [hfc, hw]; ring

theorem π₀_dvd_φpow (hR : RD W) (m : ℕ) : W.π₀ ∣ (W.φA ^ m) W.π₀ := by
  obtain ⟨-, ⟨w, hw⟩, -⟩ := id hR
  induction m with
  | zero => simp
  | succ m ih =>
    rw [pow_succ, AlgHom.mul_apply, hw, map_mul, map_mul]
    exact Dvd.dvd.mul_right (Dvd.dvd.mul_left ih _) _

theorem φpow_π₀ (hR : RD W) (t : ℕ) :
    ∃ h : LetA O n, (W.φA ^ (t + 1)) W.π₀ = W.π₀ * qA W * h := by
  obtain ⟨a, ha⟩ := π₀_dvd_φpow hR t
  obtain ⟨-, ⟨w, hw⟩, -⟩ := id hR
  obtain ⟨k, hk⟩ : ∃ k, PD.p - 1 = k + 1 := ⟨PD.p - 1 - 1, by have := p_sub_one_pos (PD := PD); omega⟩
  refine ⟨w * qA W ^ k * W.φA a, ?_⟩
  rw [pow_succ', AlgHom.mul_apply, ha, map_mul, hw, hk, pow_succ]
  ring

theorem γqA {w : LetA O n} (hw : W.γA W.gam W.π₀ = W.π₀ * (1 + w * qA W)) :
    W.γA W.gam (qA W) = qA W * (1 + w * W.π₀) := by
  have : W.γA W.gam (qA W) = W.γA W.gam W.π₀ + lA W := by
    simp only [qA, lA, map_add (f := _), map_natCast]
  rw [this, hw]
  simp only [qA]
  ring

theorem gam_ps_core (hR : RD W) (s : ℕ) (hs : 1 ≤ s) :
    ∃ g ∈ W.AΔ, W.γA W.gam (ps W s) = ps W s * (1 + W.π₀ * qA W * g) := by
  obtain ⟨t, rfl⟩ : ∃ t, s = t + 1 := ⟨s - 1, by omega⟩
  obtain ⟨w, hwΔ, hw⟩ := gamma_pi0_eq_pi0_mul_unit hR
  obtain ⟨h, hh⟩ := φpow_π₀ hR t
  have hγ : W.γA W.gam (ps W (t + 1)) =
      ps W (t + 1) * (1 + (W.φA ^ (t + 1)) (w : LetA O n) * (W.φA ^ (t + 1)) W.π₀) := by
    show W.γA W.gam ((W.φA ^ (t + 1)) (qA W)) = (W.φA ^ (t + 1)) (qA W) * _
    rw [← φpow_γA, γqA hw, map_mul, map_add (f := _), map_one, map_mul]
  refine ⟨(W.φA ^ (t + 1)) (w : LetA O n) * h, quot_mem W π₀qA_mem (isUnit_π₀qA hR) ?_, ?_⟩
  · have : W.π₀ * qA W * ((W.φA ^ (t + 1)) (w : LetA O n) * h) =
        (W.φA ^ (t + 1)) (w : LetA O n) * (W.φA ^ (t + 1)) W.π₀ := by rw [hh]; ring
    rw [this]
    exact W.AΔ.mul_mem (φpow_mem W _ hwΔ) (φpow_mem W _ (π₀_mem W))
  · rw [hγ, hh]; ring

end RDsec

def S1 : Submonoid (LetA O n) where
  carrier := {r | ∃ y ∈ W.AΔ, r = 1 + W.π₀ * y}
  one_mem' := ⟨0, W.AΔ.zero_mem, by ring⟩
  mul_mem' := by
    rintro a b ⟨y, hy, rfl⟩ ⟨z, hz, rfl⟩
    exact ⟨y + z + W.π₀ * y * z, W.AΔ.add_mem (W.AΔ.add_mem hy hz)
      (W.AΔ.mul_mem (W.AΔ.mul_mem (π₀_mem W) hy) hz), by ring⟩

theorem mem_invariants_of_mem_S1 {r : LetA O n} (hr : r ∈ S1 W) : r ∈ W.AΔ := by
  obtain ⟨y, hy, rfl⟩ := hr
  exact W.AΔ.add_mem W.AΔ.one_mem (W.AΔ.mul_mem (π₀_mem W) hy)

section RDsec2

variable {W}

theorem exists_inverse_in_S1 (hR : RD W) {r : LetA O n} (hr : r ∈ S1 W) : ∃ r' ∈ S1 W, r * r' = 1 := by
  have hrΔ := mem_invariants_of_mem_S1 W hr
  obtain ⟨y, hy, rfl⟩ := hr
  have hcc := π₀₁_cc hR
  have hu : IsUnit (1 + W.π₀ * y) := by
    rw [Pi.isUnit_iff]
    intro i
    rw [PowerSeries.isUnit_iff_constantCoeff]
    show IsUnit (constantCoeff (1 + W.π₀₁ * y i))
    rw [map_add (f := _), map_mul, hcc, zero_mul, add_zero, map_one]
    exact isUnit_one
  set z : LetA O n := ((hu.unit⁻¹ : (LetA O n)ˣ) : LetA O n) with hzdef
  have hz : (1 + W.π₀ * y) * z = 1 := hu.mul_val_inv
  have hzΔ : z ∈ W.AΔ := by
    intro δ hδ
    have h1 : (1 + W.π₀ * y) * W.γA δ z = 1 := by
      have := congrArg (W.γA δ) hz
      rw [map_mul, map_one, hrΔ δ hδ] at this
      exact this
    calc W.γA δ z = (1 + W.π₀ * y) * z * W.γA δ z := by rw [hz, one_mul]
      _ = z * ((1 + W.π₀ * y) * W.γA δ z) := by ring
      _ = z := by rw [h1, mul_one]
  refine ⟨z, ⟨-(y * z), W.AΔ.neg_mem (W.AΔ.mul_mem hy hzΔ), ?_⟩, hz⟩
  linear_combination hz

theorem psγ (hR : RD W) (t : ℕ) :
    ∃ r ∈ S1 W, ∃ r' ∈ S1 W, r * r' = 1 ∧ W.γA W.gam (ps W t) = r * ps W t := by
  obtain ⟨w, hwΔ, hw⟩ := gamma_pi0_eq_pi0_mul_unit hR
  obtain ⟨a, ha⟩ := π₀_dvd_φpow hR t
  have hyΔ : (W.φA ^ t) (w : LetA O n) * a ∈ W.AΔ := by
    refine quot_mem W (π₀_mem W) (isUnit_π₀ hR) ?_
    have : W.π₀ * ((W.φA ^ t) (w : LetA O n) * a) =
        (W.φA ^ t) (w : LetA O n) * (W.φA ^ t) W.π₀ := by rw [ha]; ring
    rw [this]
    exact W.AΔ.mul_mem (φpow_mem W _ hwΔ) (φpow_mem W _ (π₀_mem W))
  have hS : 1 + W.π₀ * ((W.φA ^ t) (w : LetA O n) * a) ∈ S1 W := ⟨_, hyΔ, rfl⟩
  obtain ⟨r', hr', hrr⟩ := exists_inverse_in_S1 hR hS
  refine ⟨_, hS, r', hr', hrr, ?_⟩
  show W.γA W.gam ((W.φA ^ t) (qA W)) = _ * (W.φA ^ t) (qA W)
  rw [← φpow_γA, γqA hw, map_mul, map_add (f := _), map_one, map_mul, ha]
  ring

theorem γ_prod (r : ℕ → LetA O n) (hγ : ∀ t, W.γA W.gam (ps W t) = r t * ps W t) (e : ℕ)
    (k : ℕ → ℕ) :
    W.γA W.gam (∏ s ∈ Finset.range e, ps W s ^ k s) =
      (∏ s ∈ Finset.range e, r s ^ k s) * ∏ s ∈ Finset.range e, ps W s ^ k s := by
  rw [map_prod, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun s _ => ?_
  rw [map_pow, hγ, mul_pow]

theorem gam_frac_core (hR : RD W) (a : ZMod n) (e : ℕ) (α : ℕ → ℤ) (f : W.EE)
    (hf : InId W a e α f) :
    InId W a e α (W.γE W.gam f) ∧
      InFr W a (W.π₀ * ∏ s ∈ Finset.range e, ps W s ^ (α s).toNat)
        (∏ s ∈ Finset.range e, ps W s ^ (-(α s)).toNat) (W.γE W.gam f - f) := by
  obtain ⟨u, hu, hfu⟩ := hf
  choose r hr r' hr' hrr hγ using psγ hR
  set num := ∏ s ∈ Finset.range e, ps W s ^ (α s).toNat with hnum
  set den := ∏ s ∈ Finset.range e, ps W s ^ (-(α s)).toNat with hden
  set R := ∏ s ∈ Finset.range e, r s ^ (α s).toNat with hRdef
  set Rd := ∏ s ∈ Finset.range e, r s ^ (-(α s)).toNat with hRddef
  set Rd' := ∏ s ∈ Finset.range e, r' s ^ (-(α s)).toNat with hRd'def
  have hRS : R ∈ S1 W := Submonoid.prod_mem _ fun s _ => Submonoid.pow_mem _ (hr s) _
  have hRd'S : Rd' ∈ S1 W := Submonoid.prod_mem _ fun s _ => Submonoid.pow_mem _ (hr' s) _
  have hRdd : Rd * Rd' = 1 := by
    rw [hRddef, hRd'def, ← Finset.prod_mul_distrib]
    exact Finset.prod_eq_one fun s _ => by rw [← mul_pow, hrr, one_pow]
  have hγn : W.γA W.gam num = R * num := γ_prod r hγ e _
  have hγd : W.γA W.gam den = Rd * den := γ_prod r hγ e _
  have h1 : algebraMap (LetA O n) W.EE (W.γA W.gam den) * W.γE W.gam f =
      algebraMap (LetA O n) W.EE (W.γA W.gam (letE a * num * u)) := by
    rw [← γE_ι, ← γE_ι, ← map_mul, hfu]
  have e1 : W.γA W.gam (letE a * num * u) = letE a * (R * num) * W.γA W.gam u := by
    rw [map_mul, map_mul, γA_letE, hγn]
  rw [e1, hγd] at h1
  have key : algebraMap (LetA O n) W.EE den * W.γE W.gam f =
      algebraMap (LetA O n) W.EE (letE a * num * (Rd' * R * W.γA W.gam u)) := by
    calc algebraMap (LetA O n) W.EE den * W.γE W.gam f
        = algebraMap (LetA O n) W.EE (Rd' * Rd) * (algebraMap (LetA O n) W.EE den * W.γE W.gam f) := by
          rw [mul_comm Rd' Rd, hRdd, map_one, one_mul]
      _ = algebraMap (LetA O n) W.EE Rd' *
            (algebraMap (LetA O n) W.EE (Rd * den) * W.γE W.gam f) := by
          rw [map_mul, map_mul]; ring
      _ = algebraMap (LetA O n) W.EE Rd' * algebraMap (LetA O n) W.EE (letE a * (R * num) * W.γA W.gam u) := by
          rw [h1]
      _ = _ := by rw [← map_mul]; congr 1; ring
  obtain ⟨y, hy, hyR⟩ : Rd' * R ∈ S1 W := (S1 W).mul_mem hRd'S hRS
  obtain ⟨g, hg, hgu⟩ := gam_A_core hR hu
  have hγu := γA_mem W W.gam hu
  refine ⟨⟨Rd' * R * W.γA W.gam u, W.AΔ.mul_mem (mem_invariants_of_mem_S1 W ((S1 W).mul_mem hRd'S hRS)) hγu, key⟩,
    ⟨qA W * g + y * W.γA W.gam u, W.AΔ.add_mem (W.AΔ.mul_mem (qA_mem W) hg) (W.AΔ.mul_mem hy hγu), ?_⟩⟩
  rw [mul_sub, key, hfu, ← map_sub]
  congr 1
  rw [hyR]
  linear_combination (letE a * num) * hgu

end RDsec2

end Formalism.MainNotions.N.FrobeniusPowerSeries.GS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.GammaPi0EqPi0MulUnit =====
