module

public import Formalism.SharpRestriction.CuspSpanNormBounds.PlaceDegreeData
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelaf
public import Formalism.SatakeDualWeyl.StatementC
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AdelstabL
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Separation.CompletelyRegular

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.S.Inh

section Aut

open MeasureTheory NumberField Matrix Finset IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S
open scoped TensorProduct InnerProductSpace ComplexOrder

theorem aut_strictAnti_of_step {n : ℕ} (f : Fin n → ℝ)
    (h : ∀ (i : Fin n) (hi : i.val + 1 < n), f ⟨i.val + 1, hi⟩ < f i) : StrictAnti f := by
  have key : ∀ (k i : ℕ) (hi : i < n) (hk : i + k + 1 < n), f ⟨i + k + 1, hk⟩ < f ⟨i, hi⟩ := by
    intro k
    induction k with
    | zero => intro i hi hk; exact h ⟨i, hi⟩ hk
    | succ k ih =>
      intro i hi hk
      exact (h ⟨i + k + 1, by omega⟩ hk).trans (ih i hi (by omega))
  intro a b hab
  have hab' : a.val < b.val := hab
  have hb : b = ⟨a.val + (b.val - a.val - 1) + 1, by omega⟩ :=
    Fin.ext (show b.val = a.val + (b.val - a.val - 1) + 1 by omega)
  rw [hb]
  exact key _ a.val a.isLt _

theorem aut_isHCParam_lamS (R : Ranks) (P : HCParam R) : Formalism.QuantumDeterminants.IsHCParam (lamS R P) := by
  have hk : R.m + 3 ≤ R.k := R.m_add_three_le_k
  have hm : 2 ≤ R.m := R.two_le_m
  have hr : R.r = R.k + R.m - 1 := rfl
  have hv : ∀ (j : ℕ) (hj : j < R.k - 1) (x : Fin R.r), x.val = j → lamS R P x = (P.v ⟨j, hj⟩ : ℝ) := by
    intro j hj x hx
    subst hx
    simp only [lamS, dif_pos hj]
  have hb : ∀ (j : ℕ) (hj : j < R.m) (x : Fin R.r), x.val = R.k - 1 + j → lamS R P x = -(P.b ⟨j, hj⟩ : ℝ) := by
    intro j hj x hx
    have h1 : ¬ x.val < R.k - 1 := by omega
    have h2 : x.val - (R.k - 1) < R.m := by omega
    have e : (⟨x.val - (R.k - 1), h2⟩ : Fin R.m) = ⟨j, hj⟩ := Fin.ext (show x.val - (R.k - 1) = j by omega)
    simp only [lamS, dif_neg h1, dif_pos h2, e]
  refine ⟨aut_strictAnti_of_step _ ?_, ?_⟩
  · intro i hi
    have hir : i.val + 1 < R.k + R.m - 1 := hr ▸ hi
    rcases lt_trichotomy (i.val + 1) (R.k - 1) with h1 | h1 | h1
    · rw [hv (i.val + 1) h1 ⟨i.val + 1, hi⟩ rfl, hv i.val (by omega) i rfl]
      have a1 := P.u_gt_v ⟨i.val + 1, h1⟩
      have a2 := P.v_gt_u ⟨i.val, by omega⟩
      exact_mod_cast a1.trans a2
    · rw [hb 0 (by omega) ⟨i.val + 1, hi⟩ (show i.val + 1 = R.k - 1 + 0 by omega), hv i.val (by omega) i rfl]
      have a1 := P.u_last_gt (by omega) (by omega)
      have a2 := P.v_gt_u ⟨i.val, by omega⟩
      have e : (⟨R.k - 1, by omega⟩ : Fin R.k) = ⟨i.val + 1, by omega⟩ := Fin.ext (show R.k - 1 = i.val + 1 by omega)
      rw [e] at a1
      exact_mod_cast a1.trans a2
    · have hj : i.val - (R.k - 1) + 1 < R.m := by omega
      have hj' : i.val - (R.k - 1) < R.m := by omega
      rw [hb (i.val - (R.k - 1) + 1) hj ⟨i.val + 1, hi⟩ (show i.val + 1 = R.k - 1 + (i.val - (R.k - 1) + 1) by omega),
        hb (i.val - (R.k - 1)) hj' i (by omega)]
      have a1 := P.gap_be ⟨i.val - (R.k - 1), hj'⟩
      have a2 := P.gap_eb ⟨i.val - (R.k - 1), hj'⟩ hj
      have ht : (0 : ℚ) < ((R.t : ℚ) + 3) / 2 := by positivity
      have a3 : P.b ⟨i.val - (R.k - 1), hj'⟩ < P.b ⟨i.val - (R.k - 1) + 1, hj⟩ := by linarith
      have a4 : (P.b ⟨i.val - (R.k - 1), hj'⟩ : ℝ) < P.b ⟨i.val - (R.k - 1) + 1, hj⟩ := by exact_mod_cast a3
      linarith
  · intro a
    have ha : a.val < R.k + R.m - 1 := hr ▸ a.isLt
    obtain ⟨K2, hK⟩ := R.k_even
    obtain ⟨M2, hM⟩ := R.m_even
    have hrr : ((R.r : ℕ) : ℝ) = (K2 : ℝ) + K2 + M2 + M2 - 1 := by
      have h1 : R.r + 1 = K2 + K2 + M2 + M2 := by omega
      have h2 : ((R.r : ℕ) : ℝ) + 1 = (K2 : ℝ) + K2 + M2 + M2 := by exact_mod_cast h1
      linarith
    rw [hrr]
    by_cases h1 : a.val < R.k - 1
    · obtain ⟨z, hz⟩ := P.v_int ⟨a.val, h1⟩
      refine ⟨z - K2 - M2 + 1, ?_⟩
      rw [hv a.val h1 a rfl, hz]
      push_cast
      ring
    · have h2 : a.val - (R.k - 1) < R.m := by omega
      obtain ⟨z, hz⟩ := P.b_int ⟨a.val - (R.k - 1), h2⟩
      refine ⟨-z - K2 - M2 + 1, ?_⟩
      rw [hb (a.val - (R.k - 1)) h2 a (by omega), hz]
      push_cast
      ring

theorem aut_isHCParam_of_autTie {D : D7} {X : RowsAut} {pl : InfinitePlace X.I.F ≃ D.what₂.Tau}
    (T : AutTie D X pl) (v : InfinitePlace X.I.F) : Formalism.QuantumDeterminants.IsHCParam (X.lam v) := by
  have hl : X.lam v = fun i => lamS D.R (D.hc (pl v)) (Fin.cast T.n_eq i) := funext (T.lam_eq v)
  obtain ⟨h1, h2⟩ := aut_isHCParam_lamS D.R (D.hc (pl v))
  rw [hl]
  refine ⟨fun a b hab => h1 (by simpa using hab), fun a => ?_⟩
  obtain ⟨m, hm⟩ := h2 (Fin.cast T.n_eq a)
  have hn : (X.I.n : ℝ) = D.R.r := by exact_mod_cast T.n_eq
  exact ⟨m, by rw [hn]; exact hm⟩

theorem aut_rowsTie_iff (D : D7) (X : RowsAut) :
    Formalism.MainNotions.PlaceDegreeData.RowsTie D X ↔ (∃ pl : InfinitePlace X.I.F ≃ D.what₂.Tau, AutTie D X pl) ∧
      (SplitsCompl D.host.E (D.host.g 0) → SplitsCompl X.I.E X.g₀) := by
  unfold Formalism.MainNotions.PlaceDegreeData.RowsTie
  constructor
  · rintro ⟨h1, _, h3⟩
    exact ⟨h1, h3⟩
  · rintro ⟨⟨pl, T⟩, h3⟩
    exact ⟨⟨pl, T⟩, fun v => aut_isHCParam_of_autTie T v, h3⟩

theorem aut_exists_emb (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E]
    (cm : CMData F E) (v : InfinitePlace F) : ∃ φ : E →+* ℂ, ∀ a : F, φ (algebraMap F E a) = v.embedding a := by
  letI : Algebra F ℂ := v.embedding.toAlgebra
  haveI : Module.Finite F E := Module.finite_of_finrank_pos (by rw [cm.deg2]; norm_num)
  refine ⟨(IsAlgClosed.lift : E →ₐ[F] ℂ).toRingHom, fun a => ?_⟩
  exact (IsAlgClosed.lift : E →ₐ[F] ℂ).commutes a

theorem unitary_points_rank_zero_subsingleton {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E]
    [Algebra F E] (cm : CMData F E) (J : Matrix (Fin 0) (Fin 0) E) :
    Subsingleton (Formalism.UG.UPts cm.sig J (Af F)) := by
  constructor
  intro a b
  apply Subtype.ext
  apply Units.ext
  ext i j
  exact i.elim0

attribute [local instance] unitary_points_rank_zero_subsingleton

def aut_inst0 (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E]
    (cm : CMData F E) : AutInst :=
  letI : TopologicalSpace (Formalism.UG.UPts cm.sig (0 : Matrix (Fin 0) (Fin 0) E) (Af F)) := ⊥
  { F := F, E := E, cm := cm, n := 0, J := 0
    J_herm := Subsingleton.elim _ _
    J_det := by simp
    L := ⊤
    L_span := Subsingleton.elim _ _
    L_fg := by rw [Subsingleton.elim (⊤ : Submodule (𝓞 E) (Fin 0 → E)) ⊥]; exact Submodule.fg_bot
    L_dual := fun x => ⟨fun _ y _ => ⟨0, by simp [Formalism.UG.hform]⟩, fun _ => trivial⟩
    ε := fun _ i => i.elim0
    φ := fun v => (aut_exists_emb F E cm v).choose
    φ_over := fun v => (aut_exists_emb F E cm v).choose_spec
    P := fun _ => 1
    P_unit := fun _ => isUnit_one
    P_spec := fun _ => Subsingleton.elim _ _
    topf := ⊥
    topf_group := inferInstance
    topf_open := fun _ _ => isOpen_discrete _
    topf_basis := fun U hU => ⟨1, le_rfl, fun x _ => by rw [Subsingleton.elim x 1]; exact mem_of_mem_nhds hU⟩ }

theorem aut_Jm_allPos (n : ℕ) : Formalism.REAL.Jm (allPos n) = 1 := by
  unfold Formalism.REAL.Jm allPos
  simp

theorem aut_compact_allPos (n : ℕ) : CompactSpace (Formalism.REAL.UJ (allPos n)) := by
  have hJ : Formalism.REAL.Jm (allPos n) = 1 := aut_Jm_allPos n
  let S : Set (Matrix (Fin n) (Fin n) ℂ) := {A | Aᴴ * A = 1}
  have hSc : IsCompact S := by
    have hcl : IsClosed S :=
      isClosed_eq (continuous_id.matrix_conjTranspose.matrix_mul continuous_id) continuous_const
    have hbd : S ⊆ Set.pi Set.univ (fun _ => Set.pi Set.univ (fun _ => Metric.closedBall (0 : ℂ) 1)) := by
      intro A hA i _ j _
      have h1 := congrFun (congrFun hA j) j
      simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.one_apply_eq] at h1
      have h2 : ∑ x, Complex.normSq (A x j) = 1 := by
        have h3 : ((∑ x, Complex.normSq (A x j) : ℝ) : ℂ) = 1 := by
          rw [← h1]
          push_cast
          refine Finset.sum_congr rfl fun x _ => ?_
          rw [Complex.normSq_eq_conj_mul_self, Complex.star_def]
        exact_mod_cast h3
      have h4 : Complex.normSq (A i j) ≤ 1 :=
        h2 ▸ Finset.single_le_sum (fun x _ => Complex.normSq_nonneg (A x j)) (Finset.mem_univ i)
      rw [Complex.normSq_eq_norm_sq] at h4
      rw [mem_closedBall_zero_iff]
      nlinarith [norm_nonneg (A i j)]
    exact (isCompact_univ_pi fun _ => isCompact_univ_pi fun _ => isCompact_closedBall (0 : ℂ) 1).of_isClosed_subset
      hcl hbd
  haveI : CompactSpace S := isCompact_iff_compactSpace.mp hSc
  let φ : S → Formalism.REAL.UJ (allPos n) := fun A =>
    ⟨⟨A.1, A.1ᴴ, by
        first
          | exact mul_eq_one_comm.mp A.2
          | (rw [← Matrix.inv_eq_left_inv A.2]; exact Matrix.mul_nonsing_inv _ (Matrix.isUnit_det_of_left_inverse A.2)), A.2⟩, by
      show A.1ᴴ * Formalism.REAL.Jm (allPos n) * A.1 = Formalism.REAL.Jm (allPos n)
      rw [hJ, Matrix.mul_one, A.2]⟩
  have hφ : Continuous φ := by
    apply Continuous.subtype_mk
    exact Units.continuous_iff.mpr ⟨continuous_subtype_val, continuous_subtype_val.matrix_conjTranspose⟩
  have hsurj : Function.Surjective φ := by
    intro g
    have hg : ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) ∈ S := by
      have h := g.2
      change ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)ᴴ * Formalism.REAL.Jm (allPos n) *
        ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) = Formalism.REAL.Jm (allPos n) at h
      rwa [hJ, Matrix.mul_one] at h
    exact ⟨⟨_, hg⟩, Subtype.ext (Units.ext rfl)⟩
  exact hsurj.compactSpace hφ

attribute [local instance] aut_compact_allPos

section Top

theorem aut_top_of_subgroups {G : Type*} [Group G] (K : ℕ → Subgroup G)
    (hmul : ∀ a b, 1 ≤ a → 1 ≤ b → K (a * b) ≤ K a ⊓ K b)
    (hconj : ∀ (x : G) (g : ℕ), 1 ≤ g → ∃ g', 1 ≤ g' ∧ ∀ k ∈ K g', x * k * x⁻¹ ∈ K g) :
    ∃ t : TopologicalSpace G, @IsTopologicalGroup G t _ ∧ (∀ g, 1 ≤ g → @IsOpen G t (K g : Set G)) ∧
      ∀ U ∈ @nhds G t 1, ∃ g, 1 ≤ g ∧ (K g : Set G) ⊆ U := by
  let B : GroupFilterBasis G :=
    { sets := {S | ∃ g, 1 ≤ g ∧ S = (K g : Set G)}
      nonempty := ⟨_, 1, le_rfl, rfl⟩
      inter_sets := by
        rintro _ _ ⟨a, ha, rfl⟩ ⟨b, hb, rfl⟩
        exact ⟨_, ⟨a * b, Nat.mul_pos ha hb, rfl⟩, fun x hx => hmul a b ha hb hx⟩
      one' := by rintro _ ⟨g, _, rfl⟩; exact (K g).one_mem
      mul' := by
        rintro _ ⟨g, hg, rfl⟩
        exact ⟨_, ⟨g, hg, rfl⟩, by rintro _ ⟨a, ha, b, hb, rfl⟩; exact (K g).mul_mem ha hb⟩
      inv' := by
        rintro _ ⟨g, hg, rfl⟩
        exact ⟨_, ⟨g, hg, rfl⟩, fun x hx => (K g).inv_mem hx⟩
      conj' := by
        rintro x _ ⟨g, hg, rfl⟩
        obtain ⟨g', hg', h⟩ := hconj x g hg
        exact ⟨_, ⟨g', hg', rfl⟩, fun k hk => h k hk⟩ }
  refine ⟨B.topology, B.isTopologicalGroup, ?_, ?_⟩
  · intro g hg
    let _ := B.topology
    have := B.isTopologicalGroup
    exact Subgroup.isOpen_of_mem_nhds (K g) (g := 1) (B.nhds_one_hasBasis.mem_of_mem ⟨g, hg, rfl⟩)
  · intro U hU
    obtain ⟨S, ⟨g, hg, rfl⟩, hS⟩ := B.nhds_one_hasBasis.mem_iff.1 hU
    exact ⟨g, hg, hS⟩

variable {A : Type} [CommRing A] {R : Type} [CommRing R] [Algebra R A] {n : ℕ}

theorem aut_natSmul_mem (Λ : Submodule R (Fin n → A)) (N : ℕ) {z : Fin n → A} (hz : z ∈ Λ) : (N : A) • z ∈ Λ := by
  rw [Nat.cast_smul_eq_nsmul]
  exact nsmul_mem hz N

def aut_KG (Λ : Submodule R (Fin n → A)) (g : ℕ) : Subgroup (GL (Fin n) A) where
  carrier := {x | x ∈ Formalism.UG.stabGL Λ ∧ ∀ y ∈ Λ, ∃ z ∈ Λ,
      ((x : Matrix (Fin n) (Fin n) A) - 1) *ᵥ y = (g : A) • z}
  one_mem' := ⟨one_mem _, fun y _ => ⟨0, zero_mem _, by simp⟩⟩
  mul_mem' := by
    rintro a b ⟨ha1, ha2⟩ ⟨hb1, hb2⟩
    refine ⟨mul_mem ha1 hb1, fun y hy => ?_⟩
    obtain ⟨z1, hz1, e1⟩ := hb2 y hy
    obtain ⟨z2, hz2, e2⟩ := ha2 y hy
    have ha1' : ∀ v, v ∈ Λ ↔ (a : Matrix (Fin n) (Fin n) A) *ᵥ v ∈ Λ := ha1
    refine ⟨(a : Matrix (Fin n) (Fin n) A) *ᵥ z1 + z2, add_mem ((ha1' z1).1 hz1) hz2, ?_⟩
    have h : (((a * b : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) - 1) =
        (a : Matrix (Fin n) (Fin n) A) * ((b : Matrix (Fin n) (Fin n) A) - 1) +
          ((a : Matrix (Fin n) (Fin n) A) - 1) := by
      rw [Units.val_mul, mul_sub, mul_one]; abel
    rw [h, Matrix.add_mulVec, ← Matrix.mulVec_mulVec, e1, e2, Matrix.mulVec_smul, smul_add]
  inv_mem' := by
    rintro a ⟨h1, h2⟩
    refine ⟨inv_mem h1, fun y hy => ?_⟩
    obtain ⟨z, hz, e⟩ := h2 y hy
    have hi : ∀ v, v ∈ Λ ↔ ((a⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) *ᵥ v ∈ Λ := inv_mem h1
    refine ⟨-(((a⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) *ᵥ z), neg_mem ((hi z).1 hz), ?_⟩
    have h : (((a⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) - 1) =
        -(((a⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) * ((a : Matrix (Fin n) (Fin n) A) - 1)) := by
      rw [mul_sub, mul_one, Units.inv_mul]; abel
    rw [h, Matrix.neg_mulVec, ← Matrix.mulVec_mulVec, e, Matrix.mulVec_smul, smul_neg]

theorem aut_KG_mul (Λ : Submodule R (Fin n → A)) (a b : ℕ) : aut_KG Λ (a * b) ≤ aut_KG Λ a ⊓ aut_KG Λ b := by
  rintro x ⟨hx1, hx2⟩
  refine Subgroup.mem_inf.mpr ⟨⟨hx1, fun y hy => ?_⟩, ⟨hx1, fun y hy => ?_⟩⟩
  · obtain ⟨z, hz, e⟩ := hx2 y hy
    exact ⟨(b : A) • z, aut_natSmul_mem Λ b hz, by rw [e, Nat.cast_mul, mul_smul]⟩
  · obtain ⟨z, hz, e⟩ := hx2 y hy
    exact ⟨(a : A) • z, aut_natSmul_mem Λ a hz, by rw [e, Nat.cast_mul, mul_comm, mul_smul]⟩

theorem aut_KG_conj (Λ : Submodule R (Fin n → A)) (hunit : ∀ N : ℕ, 1 ≤ N → IsUnit (N : A))
    (hden : ∀ x : GL (Fin n) A, ∃ N : ℕ, 1 ≤ N ∧ ∀ y ∈ Λ, (N : A) • ((x : Matrix (Fin n) (Fin n) A) *ᵥ y) ∈ Λ)
    (x : GL (Fin n) A) (g : ℕ) (hg : 1 ≤ g) :
    ∃ g', 1 ≤ g' ∧ ∀ k ∈ aut_KG Λ g', x * k * x⁻¹ ∈ aut_KG Λ g := by
  obtain ⟨N1, hN1, h1⟩ := hden x
  obtain ⟨N2, hN2, h2⟩ := hden x⁻¹
  have hg1 : 1 ≤ g * N1 * N2 := Nat.mul_pos (Nat.mul_pos hg hN1) hN2
  refine ⟨g * N1 * N2, hg1, ?_⟩
  have C : ∀ k ∈ aut_KG Λ (g * N1 * N2), ∀ y ∈ Λ, ∃ z ∈ Λ,
      (((x * k * x⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) - 1) *ᵥ y = (g : A) • z := by
    rintro k ⟨-, hk⟩ y hy
    obtain ⟨z0, hz0, e0⟩ := hk _ (h2 y hy)
    have e1 : ((k : Matrix (Fin n) (Fin n) A) - 1) *ᵥ (((x⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) *ᵥ y)
        = ((g * N1 : ℕ) : A) • z0 := by
      rw [Matrix.mulVec_smul, Nat.cast_mul (g * N1) N2, mul_comm ((g * N1 : ℕ) : A), mul_smul] at e0
      exact ((hunit N2 hN2).smul_left_cancel).mp e0
    refine ⟨(N1 : A) • ((x : Matrix (Fin n) (Fin n) A) *ᵥ z0), h1 z0 hz0, ?_⟩
    have hM : ((x * k * x⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) - 1 =
        (x : Matrix (Fin n) (Fin n) A) * ((k : Matrix (Fin n) (Fin n) A) - 1) *
          ((x⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) := by
      rw [Units.val_mul, Units.val_mul, mul_sub, sub_mul, mul_one, Units.mul_inv]
    rw [hM, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, e1, Matrix.mulVec_smul, Nat.cast_mul, mul_smul]
  have F : ∀ k ∈ aut_KG Λ (g * N1 * N2), ∀ v ∈ Λ,
      ((x * k * x⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) *ᵥ v ∈ Λ := by
    intro k hk v hv
    obtain ⟨z, hz, e⟩ := C k hk v hv
    have e2 : ((x * k * x⁻¹ : GL (Fin n) A) : Matrix (Fin n) (Fin n) A) *ᵥ v = v + (g : A) • z := by
      rw [← e, Matrix.sub_mulVec, Matrix.one_mulVec]
      abel
    rw [e2]
    exact add_mem hv (aut_natSmul_mem Λ g hz)
  intro k hk
  have hki : k⁻¹ ∈ aut_KG Λ (g * N1 * N2) := inv_mem hk
  refine ⟨fun v => ⟨F k hk v, fun hv => ?_⟩, C k hk⟩
  have h3 := F k⁻¹ hki _ hv
  rwa [Matrix.mulVec_mulVec, ← Units.val_mul, show x * k⁻¹ * x⁻¹ * (x * k * x⁻¹) = 1 by group, Units.val_one,
    Matrix.one_mulVec] at h3

end Top

section Std

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E]

def aut_HTop (cm : CMData F E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (L : Submodule (𝓞 E) (Fin n → E)) : Prop :=
  ∃ t : TopologicalSpace (Formalism.UG.UPts cm.sig J (Af F)), @IsTopologicalGroup _ t _ ∧
    (∀ g : ℕ, 1 ≤ g → @IsOpen _ t {x : Formalism.UG.UPts cm.sig J (Af F) |
      (x : GL (Fin n) (E ⊗[F] Af F)) ∈ Formalism.UG.stabGL (lamAf (F := F) L) ∧
        ∀ y ∈ lamAf (F := F) L, ∃ z ∈ lamAf (F := F) L,
          ((x : GL (Fin n) (E ⊗[F] Af F)) - 1 : Matrix (Fin n) (Fin n) (E ⊗[F] Af F)) *ᵥ y = (g : E ⊗[F] Af F) • z}) ∧
    ∀ U ∈ @nhds _ t (1 : Formalism.UG.UPts cm.sig J (Af F)), ∃ g : ℕ, 1 ≤ g ∧
      {x : Formalism.UG.UPts cm.sig J (Af F) |
        (x : GL (Fin n) (E ⊗[F] Af F)) ∈ Formalism.UG.stabGL (lamAf (F := F) L) ∧
        ∀ y ∈ lamAf (F := F) L, ∃ z ∈ lamAf (F := F) L,
          ((x : GL (Fin n) (E ⊗[F] Af F)) - 1 : Matrix (Fin n) (Fin n) (E ⊗[F] Af F)) *ᵥ y = (g : E ⊗[F] Af F) • z} ⊆ U

end Std

section Den

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}

open Formalism.UG Formalism.UG.P

theorem aut_lamAf_eq (L : Submodule (𝓞 E) (Fin n → E)) :
    lamAf (F := F) L = latS (F := F) (Af F) (IntAf F E) L := by
  unfold lamAf Formalism.UG.latS
  rw [Set.image_eq_range]
  rfl

theorem aut_natCast_eq (N : ℕ) : ((N : ℕ) : E ⊗[F] Af F) = levelafC E ((N : ℕ) : 𝓞 F) := by
  unfold Formalism.UG.P.levelafC
  rw [map_natCast, ← Algebra.TensorProduct.includeRight_apply, map_natCast]

theorem aut_unit (N : ℕ) (hN : 1 ≤ N) : IsUnit ((N : ℕ) : E ⊗[F] Af F) := by
  have h : ((N : ℕ) : E ⊗[F] Af F) = algebraMap F (E ⊗[F] Af F) (N : F) := (map_natCast _ N).symm
  rw [h]
  have hN' : (N : F) ≠ 0 := by exact_mod_cast (show N ≠ 0 by omega)
  exact hN'.isUnit.map _

theorem aut_den (L : Submodule (𝓞 E) (Fin n → E)) (hfg : L.FG)
    (hspan : Submodule.span E (L : Set (Fin n → E)) = ⊤) (x : GL (Fin n) (E ⊗[F] Af F)) :
    ∃ N : ℕ, 1 ≤ N ∧ ∀ y ∈ lamAf (F := F) L,
      ((N : ℕ) : E ⊗[F] Af F) • ((x : Matrix (Fin n) (Fin n) (E ⊗[F] Af F)) *ᵥ y) ∈ lamAf (F := F) L := by
  obtain ⟨c1, hc1, h1⟩ := adelstabL_lower (F := F) L hspan
  obtain ⟨c2, hc2, h2⟩ := adelstabL_upper (F := F) L (Module.Finite.iff_fg.mpr hfg)
  obtain ⟨d, hd, c, hc, ⟨X', hX'⟩, -⟩ := levelaf_exists_denom (F := F) (E := E) x
  have hD0 : c1 * c2 * d ≠ 0 := mul_ne_zero (mul_ne_zero hc1 hc2) hd
  have hmem := Ideal.absNorm_mem (Ideal.span {c1 * c2 * d})
  obtain ⟨D', hD'⟩ := Ideal.mem_span_singleton'.1 hmem
  refine ⟨Ideal.absNorm (Ideal.span {c1 * c2 * d}), ?_, fun y hy => ?_⟩
  · have : Ideal.absNorm (Ideal.span {c1 * c2 * d}) ≠ 0 := by
      rw [Ne, Ideal.absNorm_eq_zero_iff, Ideal.span_singleton_eq_bot]
      exact hD0
    omega
  · rw [aut_lamAf_eq] at hy ⊢
    have hent : ∀ i j, levelafC E d * (x : Matrix (Fin n) (Fin n) (E ⊗[F] Af F)) i j ∈ IntAf F E := by
      intro i j
      have := congrFun (congrFun hX' i) j
      simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.smul_apply, smul_eq_mul, hc] at this
      rw [← this]
      exact (X' i j).2
    have hu : ∀ i, (∑ j, (levelafC E d * (x : Matrix (Fin n) (Fin n) (E ⊗[F] Af F)) i j) *
        (levelafC E c2 * y j)) ∈ IntAf F E :=
      fun i => sum_mem fun j _ => mul_mem (hent i j) (h2 y hy j)
    have h3 := Submodule.smul_mem _ (⟨levelafC E D', levelafC_mem D'⟩ : IntAf F E) (h1 _ hu)
    convert h3 using 1
    funext i
    rw [aut_natCast_eq, ← hD', levelafC_mul, levelafC_mul, levelafC_mul]
    simp only [Pi.smul_apply, smul_eq_mul, Subring.smul_def, Matrix.mulVec, dotProduct, Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    ring

end Den

theorem aut_HTop_holds {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E]
    (cm : CMData F E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (L : Submodule (𝓞 E) (Fin n → E)) (hfg : L.FG)
    (hspan : Submodule.span E (L : Set (Fin n → E)) = ⊤) : aut_HTop cm J L := by
  let K : ℕ → Subgroup (Formalism.UG.UPts cm.sig J (Af F)) := fun g =>
    (aut_KG (lamAf (F := F) L) g).comap (Formalism.UG.UPts cm.sig J (Af F)).subtype
  obtain ⟨t, ht1, ht2, ht3⟩ := aut_top_of_subgroups K
    (fun a b ha hb x hx => by
      have h := aut_KG_mul (lamAf (F := F) L) a b hx
      exact Subgroup.mem_inf.mpr ⟨(Subgroup.mem_inf.mp h).1, (Subgroup.mem_inf.mp h).2⟩)
    (fun x g hg => by
      obtain ⟨g', hg', h'⟩ := aut_KG_conj (lamAf (F := F) L) (aut_unit (F := F) (E := E)) (aut_den L hfg hspan)
        (x : GL (Fin n) (E ⊗[F] Af F)) g hg
      exact ⟨g', hg', fun k hk => h' k hk⟩)
  exact ⟨t, ht1, ht2, ht3⟩

section AtRecord

end AtRecord

end Aut

end Formalism.MainNotions.S.Inh

end
