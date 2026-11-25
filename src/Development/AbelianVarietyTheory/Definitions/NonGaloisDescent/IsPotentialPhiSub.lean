module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsCrysLatOfTrivial
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.OneNotMemFilOne
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal Matrix
open scoped Formalism.Per

namespace GlobalTheory.BKGal.UnitModel

variable {l : ℕ} [hl : Fact l.Prime] {a : ℕ} [NeZero a] {e : ℕ} [NeZero e]
  {O K : Type} [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O]
  [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K]
  (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e)
  {ι : Type} [Fintype ι] [DecidableEq ι]
  {G : Type} [Group G] [TopologicalSpace G]




variable [TameDescentExponentData K l e a]




theorem galOW_iW_of_covers {h : GQ l} {γ : TameGal K l e a} (hc : Covers K t ϖ h γ)
    (f f' : ZMod a → invE l e (A O K))
    (hf : ∀ τ, (f' τ : K⟦X⟧) = ringAct γ (fun σ => (f σ : K⟦X⟧)) τ) :
    galOW O h (ϖ.iW t K f) = ϖ.iW t K f' := by
  choose n hn using fun τ => mem_away.1 (f τ).2
  let N := ∑ τ, n τ
  have hN : ∀ τ, E K l e ^ N * (f τ : K⟦X⟧) ∈ A O K := fun τ => by
    obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_le' (Finset.single_le_sum (f := n) (fun _ _ => Nat.zero_le _)
      (Finset.mem_univ τ))
    rw [show N = k + n τ from hk, pow_add, mul_assoc]
    exact mul_mem (pow_mem (E_mem l e _) _) (hn τ)
  have hE : ringAct γ (fun σ => E K l e ^ N * (f σ : K⟦X⟧)) =
      fun τ => E K l e ^ N * (f' τ : K⟦X⟧) := by
    have : (fun σ => E K l e ^ N * (f σ : K⟦X⟧)) =
        (fun _ : ZMod a => E K l e) ^ N * fun σ => (f σ : K⟦X⟧) := rfl
    rw [this, map_mul, map_pow, ringAct_E]
    exact funext fun τ => by rw [hf τ]; rfl
  have hN' : ∀ τ, E K l e ^ N * (f' τ : K⟦X⟧) ∈ A O K := fun τ => by
    rw [← congrFun hE τ]
    exact rot_A.ringAct_mem γ hN τ
  have h1 := hc (fun τ => ⟨_, hN τ⟩) (fun τ => ⟨_, hN' τ⟩) fun τ => (congrFun hE τ).symm
  have h2 := hc (fun _ => EIn l e _) (fun _ => EIn l e _) fun τ => (congrFun (ringAct_E γ) τ).symm
  set ε : OW l O := inclO l O (ϖ.iTot t K fun _ => EIn l e _) with hε
  have hu : IsUnit ε := by
    rw [hε, PiSys.iTot_E, ← ϖ.iA_E a O K]
    exact ϖ.isUnit_inclO_iA_E O K
  have key : ∀ (g : ZMod a → invE l e (A O K)) (hg : ∀ τ, E K l e ^ N * (g τ : K⟦X⟧) ∈ A O K),
      inclO l O (ϖ.iTot t K fun τ => ⟨_, hg τ⟩) = ε ^ N * ϖ.iW t K g := fun g hg => by
    rw [hε, ← ϖ.iW_of_mem t K, ← ϖ.iW_of_mem t K, ← map_pow, ← map_mul]
    rfl
  have h3 := congrArg (inclO l O) h1
  rw [← galOW_inclO, key, key, map_mul, map_pow, hε, galOW_inclO, h2] at h3
  exact (hu.pow N).mul_left_cancel h3




omit [TameDescentExponentData K l e a] in
theorem isCrisVal_unique {P : PhiMod O K l e a ι} {T : LocLat G ℚ_[l] K O}
    {jB : (ι → OB l O) ≃ₗ[OB l O] TW (OB l O) T} {w : ι → OW l O} {b b' : TW (OB l O) T}
    (h : IsCrisVal t ϖ P jB w b) (h' : IsCrisVal t ϖ P jB w b') : b = b' := by
  obtain ⟨m, c, hm, h1, h2⟩ := h
  obtain ⟨m', c', hm', h1', h2'⟩ := h'
  have key : ∀ (r : OA l O) (d : ι → OA l O), inclL t ϖ P (r • d) = inclO l O r • inclL t ϖ P d := fun r d => by
    rw [inclL_apply, inclL_apply, ← Matrix.mulVec_smul]
    exact congrArg _ (funext fun i => map_mul _ _ _)
  have h3 : m' • c = m • c' := inclL_injective t ϖ P (by rw [key, key, ← h1, ← h1', smul_comm])
  have h4 : toB l O m' • (fun i => toB l O (c i)) = toB l O m • fun i => toB l O (c' i) :=
    funext fun i => by
      have := congrArg (toB l O) (congrFun h3 i)
      simpa only [Pi.smul_apply, smul_eq_mul, map_mul] using this
  have h5 := congrArg jB h4
  rw [map_smul, map_smul, ← h2, ← h2', smul_comm] at h5
  exact (hm'.smul_left_cancel).1 ((hm.smul_left_cancel).1 h5)

theorem isPotential_phi_sub {s : G →* GQ l} {η H : ℕ} {D : BKDat O K l e a ι η H} {T : LocLat G ℚ_[l] K O}
    (R : GalDat t ϖ s D T) {m : Vec K a ι} (hm : m ∈ D.Minv) : R.IsPotential (D.phi m - m) 0 := by
  have hL := D.phi_mem_L hm.1
  have hS : D.phi m ∈ D.MMl := D.ext_mono ((A_le_S l e).trans (le_away _ _)) hL
  refine ⟨sub_mem (mem_ME_of_mem_L hL) (mem_ME_of_mem_M hm.1), toW t ϖ D.toPhiMod ⟨m, mem_ME_of_mem_M hm.1⟩, ⟨_, hS⟩,
    R.jB (toBcris t ϖ D.toPhiMod ⟨_, hS⟩), ?_, fun g => ?_, (D.zeta_phi_sub m).symm, ?_, (sub_self _).symm⟩
  · rw [← toW_phi t ϖ D.toPhiMod hm.1, ← map_sub]
    rfl
  · change D.desc.act g (D.phi m) = D.phi m
    rw [D.desc.act_phi, hm.2 g]
  · refine ⟨1, fun i => ϖ.iTot t K (coordL D.toPhiMod _ ⟨_, hL⟩ i), by rw [map_one]; exact isUnit_one, ?_, ?_⟩
    · rw [map_one, one_smul, ← toW_phi t ϖ D.toPhiMod hm.1]
      exact (toW_toCris_of_mem_L t ϖ D.toPhiMod hL (D.ext_mono (A_le_S l e) hL)).1
    · rw [map_one, one_smul]
      refine congrArg _ (funext fun i => ?_)
      rw [toBcris_apply, toB, AlgHom.comp_apply, ← ϖ.iC_of_mem t K, ← ϖ.iB_of_mem t K]
      rfl

theorem fix_Kur {F : FinExt l} {g : ↥(GK F)} (hg : g ∈ IK F) : (g : GQ l) ∈ (MaximalUnramifiedExtension l).fixingSubgroup := by
  refine (Subgroup.closure_le ((MaximalUnramifiedExtension l).fixingSubgroup.comap (GK F).subtype)).2 (fun σ hσ => ?_) hg
  change (σ : GQ l) ∈ (MaximalUnramifiedExtension l).fixingSubgroup
  rw [← Subgroup.zpowers_le, ← IntermediateField.le_iff_le, MaximalUnramifiedExtension, IntermediateField.adjoin_le_iff]
  rintro x ⟨m, hm, hlm, hx⟩
  have hx1 : ‖x‖ = 1 := (pow_eq_one_iff_of_nonneg (norm_nonneg x) hm.ne').1 (by rw [← norm_pow, hx, norm_one])
  have hx0 : x ≠ 0 := norm_ne_zero_iff.1 (by rw [hx1]; exact one_ne_zero)
  have key : (σ : GQ l) x = x := by
    set y := (σ : GQ l) x / x with hy
    have hy1 : y ^ m = 1 := by rw [hy, div_pow, ← map_pow, hx, map_one, div_one]
    have hy2 : ‖y - 1‖ < 1 := by
      rw [hy, div_sub_one hx0, norm_div, hx1, div_one]
      exact hσ x hx1.le
    have hyn : ‖y‖ = 1 := (pow_eq_one_iff_of_nonneg (norm_nonneg y) hm.ne').1 (by rw [← norm_pow, hy1, norm_one])
    by_contra hne
    have hy3 : y - 1 ≠ 0 := sub_ne_zero.2 fun h => hne ((div_eq_one_iff_eq hx0).1 h)
    have hs : ∑ i ∈ Finset.range m, y ^ i = 0 :=
      (mul_eq_zero.1 ((geom_sum_mul y m).trans (by rw [hy1, sub_self]))).resolve_right hy3
    have hi : ∀ i : ℕ, ‖1 - y ^ i‖ ≤ ‖y - 1‖ := fun i => by
      induction i with
      | zero => simp
      | succ i ih =>
        rw [show 1 - y ^ (i + 1) = (1 - y ^ i) + -(y ^ i * (y - 1)) by ring]
        refine (IsUltrametricDist.norm_add_le_max _ _).trans (max_le ih ?_)
        rw [norm_neg, norm_mul, norm_pow, hyn, one_pow, one_mul]
    have h4 : (m : Om l) = ∑ i ∈ Finset.range m, (1 - y ^ i) := by
      rw [Finset.sum_sub_distrib, hs]
      simp
    have h5 : ‖(m : Om l)‖ ≤ ‖y - 1‖ := by
      rw [h4]
      exact IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg (norm_nonneg _) fun i _ => hi i
    have h6 : ‖(m : Om l)‖ = 1 := by
      rw [← map_natCast (algebraMap ℚ_[l] (Om l)), norm_algebraMap', Padic.norm_natCast_eq_one_iff]
      exact (Nat.Prime.coprime_iff_not_dvd hl.out).2 hlm
    linarith
  rintro ⟨_, k, rfl⟩
  exact MulAction.mem_fixedBy_zpow (α := Om l) (g := (σ : GQ l)) (a := x) key k


omit [NeZero e] [TameDescentExponentData K l e a] in
theorem isGood_of_trivial (Pl : LocPrime l) {LL : FinExt l} (T : QLat LL) (hT : ∀ g x, T.ρ g x = x) :
    IsGood a ϖ Pl T {0} {0} := by
  have := LL.2
  have : FiniteDimensional ℚ_[l] T.V := Module.Finite.trans ↥LL.1 T.V
  have : FiniteDimensional ℚ_[l] (resF T (ϖ.field a)).V := this
  refine ⟨GlobalTheory.TrivCrys.isCrys_of_trivial _ _ fun g x => hT _ x, fun g hg w _ x hx => ?_,
    fun τ j hj => by simpa using GlobalTheory.NL.JumpsSES.jumps_of_trivial _ _ hT τ j hj⟩
  rw [GlobalTheory.TrivCrys.dcris_of_trivial _ (resF T (ϖ.field a)).ρ fun g x => hT _ x] at hx
  have key : ∀ y : T.V ⊗[ℚ_[l]] ↥(K0 (ϖ.field a)),
      actVB (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)) T.ρ g (AlgebraTensorModule.map (LinearMap.id : T.V →ₗ[↥LL.1] T.V)
        (IsScalarTower.toAlgHom ℚ_[l] ↥(K0 (ϖ.field a)) Pl.R.B).toLinearMap y) =
      AlgebraTensorModule.map (LinearMap.id : T.V →ₗ[↥LL.1] T.V)
        (IsScalarTower.toAlgHom ℚ_[l] ↥(K0 (ϖ.field a)) Pl.R.B).toLinearMap y := fun y => by
    induction y using TensorProduct.induction_on with
    | zero => simp only [map_zero]
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul v c =>
      have h1 : (Pl.PD (Formalism.MainNotions.ElementDenominator.qlExt l)).actB g (algebraMap _ Pl.R.B c) = algebraMap _ Pl.R.B c :=
        (Pl.PD_actB _ g _).trans (Pl.actQ_Kur _ ⟨c, c.2.2⟩ ⟨c, c.2.2⟩
          ((IntermediateField.mem_fixingSubgroup_iff _ _).1 (fix_Kur hg) _ c.2.2))
      exact congrArg₂ (fun (x : T.V) (b : Pl.R.B) => x ⊗ₜ[ℚ_[l]] b) (hT g v) h1
  obtain ⟨y, rfl⟩ := hx
  simp only [Finset.prod_singleton, ZMod.val_zero, pow_zero, map_one, map_sub, Polynomial.aeval_X]
  exact sub_eq_zero.2 (key y)


end GlobalTheory.BKGal.UnitModel
