module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.FiniteCohomology
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DeRhamComparisonIsFiltered
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.ExistsMonicUnitCoeffZeroAnnihilatingOfSpectrumNo
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.InertiaFixesOfFrobeniusAnnihilatedMemFilZero
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.NormLeOneOfMemSpectrumFrobeniusMatrixFilZero
import Mathlib.Tactic.Abel
import Mathlib.Tactic.Ring

/-!
# Weight-zero period matrices

The crystalline and potentially semistable weight-zero arguments both use the filtration of
a de Rham period matrix and the inertia invariance of a crystalline matrix.
-/

@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N Formalism.BasicNotions
  Formalism.BasicNotions.Loc ReciprocityTheory.Gal TensorProduct Module UpperTheory.V.Loc Topology

section Coord

variable {G : Type} [Group G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {V : Type} [AddCommGroup V] [Module Qp V]
    (ρ : Representation Qp G V) {d : ℕ} (e : Basis (Fin d) Qp V)

private theorem coord_sum (c : Fin d → BdR) (i : Fin d) :
    (TensorProduct.lid Qp BdR) (LinearMap.rTensor BdR (e.coord i) (∑ j, e j ⊗ₜ[Qp] c j)) = c i := by

  simp only [map_sum, LinearMap.rTensor_tmul, TensorProduct.lid_tmul, Basis.coord_apply, Basis.repr_self]
  rw [Finset.sum_eq_single i]
  · simp
  · intro j _ hj
    simp [hj]
  · simp

private theorem sum_mem_fil_iff (a : ℤ) (c : Fin d → BdR) :
    ∑ j, e j ⊗ₜ[Qp] c j ∈ FilV PD (LL := Qp) (V := V) a ↔ ∀ i, c i ∈ PD.Fil a := by
  constructor
  · rintro ⟨z, hz⟩ i
    rw [← coord_sum e c i, ← hz]
    clear hz
    induction z using TensorProduct.induction_on with
    | zero => simp
    | tmul v x =>
      have := ((PD.Fil a).restrictScalars Qp).smul_mem (e.coord i v) x.2
      simpa using this
    | add x y hx hy =>
      simp only [map_add (f := _)]
      exact Submodule.add_mem _ hx hy
  · intro h
    exact Submodule.sum_mem _ fun j _ => ⟨e j ⊗ₜ ⟨c j, h j⟩, rfl⟩

private theorem sum_mem_DdR (c : Fin d → BdR)
    (h : ∀ g, ((LinearMap.toMatrix e e (ρ g)).map (algebraMap Qp BdR)).mulVec (fun j => PD.actdR g (c j)) = c) :
    ∑ j, e j ⊗ₜ[Qp] c j ∈ DdR PD ρ := by
  simp only [DdR, Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.id_apply, sub_eq_zero]
  intro g
  conv_rhs => rw [← h g]

  simp only [map_sum, Matrix.mulVec, dotProduct, tmul_sum, Matrix.map_apply, LinearMap.toMatrix_apply]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_
  change ρ g (e j) ⊗ₜ[Qp] PD.actdR g (c j) = _
  conv_lhs => rw [← e.sum_repr (ρ g (e j))]
  rw [sum_tmul]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [smul_tmul, Algebra.smul_def]

/-- If the invariant vectors lie in filtration zero and meet filtration one trivially,
a period matrix and its inverse both have entries in filtration zero. -/
theorem UpperTheory.deRham_period_matrix_mem_fil_zero_of_weight_zero
    (hinv : ∀ a b, b ∈ PD.Fil a → b ∉ PD.Fil (a + 1) → ∃ β ∈ PD.Fil (-a), β * b - 1 ∈ PD.Fil 1)
    (hT : ∀ n x, x ∈ PD.Fil n → (∀ g, PD.actdR g x - x ∈ PD.Fil (n + 1)) →
      ∃ κ ∈ PD.Fil 0, (∀ g, PD.actdR g κ = κ) ∧ (n ≠ 0 → κ = 0) ∧ x - κ ∈ PD.Fil (n + 1))
    (h0 : DdR PD ρ ≤ FilV PD (LL := Qp) (V := V) 0) (h1 : DdR PD ρ ⊓ FilV PD (LL := Qp) (V := V) 1 = ⊥)
    (N N' : Matrix (Fin d) (Fin d) BdR) (hN : N * N' = 1)
    (hg : ∀ g, (LinearMap.toMatrix e e (ρ g)).map (algebraMap Qp BdR) * N.map (PD.actdR g) = N) :
    (∀ i j, N i j ∈ PD.Fil 0) ∧ ∀ i j, N' i j ∈ PD.Fil 0 := by
  let A : G → Matrix (Fin d) (Fin d) BdR := fun g => (LinearMap.toMatrix e e (ρ g)).map (algebraMap Qp BdR)
  have hA : ∀ g i j, A g i j ∈ PD.Fil 0 := fun g i j => by
    change algebraMap Qp BdR _ ∈ _
    rw [IsScalarTower.algebraMap_apply Qp K BdR, Algebra.algebraMap_eq_smul_one]
    exact Submodule.smul_mem _ _ PD.one_mem
  have hcol : ∀ j g, (A g).mulVec (fun i => PD.actdR g (N i j)) = fun i => N i j := fun j g => by
    funext i
    exact congrFun (congrFun (hg g) i) j
  have hN' : N' * N = 1 := mul_eq_one_comm.1 hN
  have hA' : ∀ g, N' * A g = N'.map (PD.actdR g) := fun g => by
    have h2 : N.map (PD.actdR g) * N'.map (PD.actdR g) = 1 := by
      have := congrArg (fun X : Matrix (Fin d) (Fin d) BdR => X.map (PD.actdR g : BdR →+* BdR)) hN
      simp only [Matrix.map_mul] at this
      rw [Matrix.map_one _ (map_zero _) (map_one _)] at this
      exact this
    calc N' * A g = N' * A g * (N.map (PD.actdR g) * N'.map (PD.actdR g)) := by rw [h2, mul_one]
      _ = N' * (A g * N.map (PD.actdR g)) * N'.map (PD.actdR g) := by simp only [Matrix.mul_assoc]
      _ = _ := by rw [hg g, hN', one_mul]
  refine ⟨fun i j => (sum_mem_fil_iff PD e 0 (fun i => N i j)).1 (h0 (sum_mem_DdR PD ρ e _ (hcol j))) i,
    fun i j => ?_⟩
  have hFa : Antitone fun a => (PD.Fil a).toAddSubgroup :=
    antitone_int_of_succ_le fun a => PD.Fil_anti a
  let R : G → (Fin d → BdR) →+ (Fin d → BdR) := fun g =>
    { toFun := fun c => (A g).mulVec (fun j => PD.actdR g (c j))
      map_zero' := by simp [← Pi.zero_def]
      map_add' := fun x y => by
        rw [← Matrix.mulVec_add]
        congr 1
        funext j
        simp }
  let FM : ℤ → AddSubgroup (Fin d → BdR) := fun a => AddSubgroup.pi Set.univ fun _ => (PD.Fil a).toAddSubgroup
  have hFM : ∀ a c, c ∈ FM a ↔ ∀ i, c i ∈ PD.Fil a := fun a c => by
    simp [FM, AddSubgroup.mem_pi]
  obtain ⟨m, k, b, c, h, hs⟩ := GlobalTheory.DRFil.filtered (G := G) (fun g => (PD.actdR g : BdR →+* BdR)) R
    (fun a => (PD.Fil a).toAddSubgroup) FM
    (fun g b x => by
      change (A g).mulVec _ = _ • (A g).mulVec _
      rw [← Matrix.mulVec_smul]
      congr 1
      funext j
      simp)
    PD.Fil_mul
    (fun a c x z hx hz => (hFM _ _).2 fun i => PD.Fil_mul _ _ _ _ hx ((hFM _ _).1 hz i))
    PD.Fil_G
    (fun g a z hz => (hFM _ _).2 fun i => by
      change ∑ j, A g i j * PD.actdR g (z j) ∈ _
      refine Submodule.sum_mem _ fun j _ => ?_
      have := PD.Fil_mul _ _ _ _ (hA g i j) (PD.Fil_G g _ _ ((hFM _ _).1 hz j))
      rwa [zero_add] at this)
    hinv hT hFa (fun a a' h z hz => (hFM _ _).2 fun i => hFa h ((hFM _ _).1 hz i)) PD.Fil_exh
    (fun x => by
      choose r hr using fun i => PD.Fil_exh (x i)
      obtain ⟨a, ha⟩ := (Set.finite_range r).bddBelow
      exact ⟨a, (hFM _ _).2 fun i => hFa (ha ⟨i, rfl⟩) (hr i)⟩)
    0 (fun i => (1 : Matrix (Fin d) (Fin d) BdR) i j)
    ((hFM _ _).2 fun i => by
      rw [Matrix.one_apply]
      split_ifs
      exacts [PD.one_mem, Submodule.zero_mem _])
    d (fun i => N' i j) (fun j i => N i j) (fun j g => hcol j g)
    (by
      funext i
      rw [← hN, Matrix.mul_apply, Finset.sum_apply]
      exact Finset.sum_congr rfl fun x _ => mul_comm _ _)
  have h3 : N' i j = ∑ n, b n * N'.mulVec (c n) i := by
    have h4 := congrFun (congrArg N'.mulVec hs) i
    rw [Matrix.mulVec_sum, Finset.sum_apply] at h4
    simp only [Matrix.mulVec_smul, Pi.smul_apply, smul_eq_mul] at h4
    rw [← h4]
    exact (congrFun (congrFun (mul_one N') i) j).symm
  rw [h3]
  refine Submodule.sum_mem _ fun n _ => ?_
  obtain ⟨hc, hk, hb⟩ := h n
  by_cases hk1 : 1 ≤ k n
  · have h5 : ∑ j, e j ⊗ₜ[Qp] c n j ∈ DdR PD ρ ⊓ FilV PD (LL := Qp) (V := V) 1 :=
      ⟨sum_mem_DdR PD ρ e _ hc, (sum_mem_fil_iff PD e 1 _).2 fun i => hFa hk1 ((hFM _ _).1 hk i)⟩
    rw [h1, Submodule.mem_bot] at h5
    have h6 : c n = 0 := funext fun i => by
      rw [← coord_sum e (c n) i, h5]
      simp
    rw [h6]
    simp
  · have h5 : b n ∈ PD.Fil 0 := hFa (show (0 : ℤ) ≤ 0 - k n by omega) hb
    obtain ⟨κ, hκ⟩ := PD.invdR (N'.mulVec (c n) i) fun g => by
      have h6 : (A g).mulVec (fun j => PD.actdR g (c n j)) = c n := hc g
      conv_rhs => rw [← h6, Matrix.mulVec_mulVec, hA' g]
      simp [Matrix.mulVec, dotProduct]
    have h6 : N'.mulVec (c n) i ∈ PD.Fil 0 := by
      rw [← hκ, Algebra.algebraMap_eq_smul_one]
      exact Submodule.smul_mem _ _ PD.one_mem
    simpa using PD.Fil_mul _ _ _ _ h5 h6

end Coord

namespace UpperTheory.V.Loc

open Polynomial

variable {l : ℕ} [Fact l.Prime]

private def wtS (l : ℕ) [Fact l.Prime] : Subring (Bcr l) where
  carrier := {b | (PP l).ιB b ∈ ((PP l).PD (botExt l)).Fil 0}
  mul_mem' := fun {a b} ha hb => by
    have := ((PP l).PD (botExt l)).Fil_mul 0 0 _ _ ha hb
    rw [add_zero, ← map_mul] at this
    exact this
  one_mem' := by
    change (PP l).ιB 1 ∈ ((PP l).PD (botExt l)).Fil 0
    rw [map_one]; exact ((PP l).PD (botExt l)).one_mem
  add_mem' := fun {a b} ha hb => by
    change (PP l).ιB (a + b) ∈ ((PP l).PD (botExt l)).Fil 0
    rw [map_add (f := _)]; exact Submodule.add_mem _ ha hb
  zero_mem' := by
    change (PP l).ιB 0 ∈ ((PP l).PD (botExt l)).Fil 0
    rw [map_zero]; exact Submodule.zero_mem _
  neg_mem' := fun {a} ha => by
    change (PP l).ιB (-a) ∈ ((PP l).PD (botExt l)).Fil 0
    rw [map_neg]; exact Submodule.neg_mem _ ha

private theorem wt_alg (K : FinExt l) (c : ↥(K0 K)) : algebraMap ↥(K0 K) (Bcr l) c ∈ wtS l := by
  have h : (PP l).ιB (algebraMap ↥(K0 K) (Bcr l) c) ∈ ((PP l).PD K).Fil 0 := by
    rw [← (PP l).PD_ι K, AlgHom.commutes, IsScalarTower.algebraMap_apply ↥(K0 K) ↥K.1 (PP l).R.BdR,
      Algebra.algebraMap_eq_smul_one]
    exact (((PP l).PD K).Fil 0).smul_mem _ ((PP l).PD K).one_mem
  have h2 := (PP l).PD_Fil K (botExt l) 0
  change (PP l).ιB _ ∈ (((PP l).PD (botExt l)).Fil 0 : Set (PP l).R.BdR)
  rw [← h2]
  exact h

private theorem wt_phi (K : FinExt l) (c : ↥(K0 K)) :
    (PP l).φB (algebraMap ↥(K0 K) (Bcr l) c) = algebraMap ↥(K0 K) (Bcr l) (((PP l).PD K).σ c) := by
  rw [← (PP l).PD_φ K, ((PP l).PD K).φ_K₀]

private theorem wt_iter (K : FinExt l) {d : ℕ} (M : Matrix (Fin d) (Fin d) (Bcr l))
    (A : Matrix (Fin d) (Fin d) ↥(K0 K)) (hA : IsUnit A.det)
    (h : M.map (PP l).φB = M * A.map (algebraMap ↥(K0 K) (Bcr l))) (k : ℕ) :
    ∃ F : Matrix (Fin d) (Fin d) ↥(K0 K), IsUnit F.det ∧
      M.map (((PP l).φB)^[k]) = M * F.map (algebraMap ↥(K0 K) (Bcr l)) := by
  induction k with
  | zero => exact ⟨1, by simp, by simp⟩
  | succ k ih =>
    obtain ⟨F, hF, e⟩ := ih
    refine ⟨A * F.map ((PP l).PD K).σ, ?_, ?_⟩
    · rw [Matrix.det_mul]
      refine hA.mul ?_
      have := hF.map (((PP l).PD K).σ : ↥(K0 K) →+* ↥(K0 K))
      rw [RingHom.map_det] at this
      exact this
    · rw [Function.iterate_succ', ← Matrix.map_map, e, Matrix.map_mul, h, Matrix.map_mul, Matrix.mul_assoc]
      congr 2
      ext i j
      exact wt_phi K _

private theorem wt_aeval (K : FinExt l) (ψ : Bcr l →ₐ[ℚ_[l]] Bcr l)
    (hψ : ∀ c : ↥(K0 K), ψ (algebraMap ↥(K0 K) (Bcr l) c) = algebraMap ↥(K0 K) (Bcr l) c) {d : ℕ}
    (M : Matrix (Fin d) (Fin d) (Bcr l)) (F : Matrix (Fin d) (Fin d) ↥(K0 K))
    (h : M.map ψ = M * F.map (algebraMap ↥(K0 K) (Bcr l))) (Q : ℚ_[l][X]) :
    M.map (aeval (ψ.toLinearMap : Module.End ℚ_[l] (Bcr l)) Q) =
      M * (aeval F (Q.map (algebraMap ℚ_[l] ↥(K0 K)))).map (algebraMap ↥(K0 K) (Bcr l)) := by
  have hp : ∀ n : ℕ, M.map ((ψ.toLinearMap : Module.End ℚ_[l] (Bcr l)) ^ n) =
      M * (F ^ n).map (algebraMap ↥(K0 K) (Bcr l)) := by
    intro n
    induction n with
    | zero =>
      rw [pow_zero, pow_zero, Matrix.map_one _ (map_zero _) (map_one _), Matrix.mul_one]
      rfl
    | succ n ih =>
      have e : M.map ((ψ.toLinearMap : Module.End ℚ_[l] (Bcr l)) ^ (n + 1)) =
          (M.map ((ψ.toLinearMap : Module.End ℚ_[l] (Bcr l)) ^ n)).map ψ := by
        ext i j
        rw [pow_succ']
        rfl
      rw [e, ih, Matrix.map_mul, h, pow_succ', Matrix.map_mul, Matrix.mul_assoc]
      congr 2
      ext i j
      exact hψ _
  induction Q using Polynomial.induction_on' with
  | add p q hp hq =>
    rw [Polynomial.map_add (f := _), map_add (f := _), map_add (f := _), Matrix.map_add _ (map_add _), Matrix.mul_add, ← hp, ← hq]
    rfl
  | monomial n a =>
    rw [Polynomial.map_monomial, aeval_monomial, aeval_monomial, ← Algebra.smul_def, ← Algebra.smul_def]
    ext i j
    have := congrFun (congrFun (hp n) i) j
    simp only [Matrix.map_apply, Matrix.mul_apply] at this
    simp only [Matrix.map_apply, Matrix.mul_apply, LinearMap.smul_apply, this, Matrix.smul_apply, smul_eq_mul,
      map_mul, ← IsScalarTower.algebraMap_apply]
    rw [Algebra.smul_def, Finset.mul_sum]
    exact Finset.sum_congr rfl fun k _ => by ring

/-- Inertia fixes a crystalline period matrix when it and its inverse have entries in
filtration zero and its Frobenius matrix over `K₀` has unit determinant. -/
theorem inertia_fixes_crystalline_period_matrix (K : FinExt l) {d : ℕ} (M M' : Matrix (Fin d) (Fin d) (Bcr l))
    (A : Matrix (Fin d) (Fin d) ↥(K0 K)) (hMM : M * M' = 1)
    (hM : ∀ i j, (PP l).ιB (M i j) ∈ ((PP l).PD (botExt l)).Fil 0)
    (hM' : ∀ i j, (PP l).ιB (M' i j) ∈ ((PP l).PD (botExt l)).Fil 0) (hA : IsUnit A.det)
    (h : M.map (PP l).φB = M * A.map (algebraMap ↥(K0 K) (Bcr l))) :
    ∀ g ∈ Iq l, M.map ((PP l).actQ g) = M := by
  change ∀ i j, M i j ∈ wtS l at hM
  change ∀ i j, M' i j ∈ wtS l at hM'
  haveI := ((PP l).PD K).finK₀
  let s : ↥(K0 K) ≃ₐ[ℚ_[l]] ↥(K0 K) := AlgEquiv.ofBijective ((PP l).PD K).σ ((PP l).PD K).σ_bij
  have hf : 0 < orderOf s := orderOf_pos s
  have hσ : ∀ x : ↥(K0 K), (((PP l).PD K).σ)^[orderOf s] x = x := fun x => by
    have := AlgEquiv.congr_fun (pow_orderOf_eq_one s) x
    rw [AlgEquiv.coe_pow] at this
    exact this
  generalize orderOf s = f at hf hσ
  have hMM' : M' * M = 1 := mul_eq_one_comm.1 hMM
  have hc : ∀ k : ℕ, ((PP l).φB)^[k] = ⇑((PP l).φB ^ k) := fun k => (AlgHom.coe_pow _ _).symm
  choose F hF hMF using wt_iter K M A hA h
  have hinv : ∀ k, M'.transpose.map (((PP l).φB)^[k]) =
      M'.transpose * ((F k)⁻¹).transpose.map (algebraMap ↥(K0 K) (Bcr l)) := by
    intro k
    rw [Matrix.transpose_map, Matrix.transpose_map, ← Matrix.transpose_mul]
    congr 1
    have e1 : M'.map (((PP l).φB)^[k]) * M.map (((PP l).φB)^[k]) = 1 := by
      rw [hc, ← Matrix.map_mul, hMM', Matrix.map_one _ (map_zero _) (map_one _)]
    have e2 : (F k).map (algebraMap ↥(K0 K) (Bcr l)) * ((F k)⁻¹).map (algebraMap ↥(K0 K) (Bcr l)) = 1 := by
      rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ (hF k), Matrix.map_one _ (map_zero _) (map_one _)]
    calc M'.map (((PP l).φB)^[k]) = M'.map (((PP l).φB)^[k]) * (M * ((F k).map (algebraMap ↥(K0 K) (Bcr l)) *
          ((F k)⁻¹).map (algebraMap ↥(K0 K) (Bcr l))) * M') := by rw [e2, Matrix.mul_one, hMM, Matrix.mul_one]
      _ = _ := by
        rw [← Matrix.mul_assoc M, ← hMF, ← Matrix.mul_assoc, ← Matrix.mul_assoc, e1, Matrix.one_mul]
  have hS : ∀ (N : Matrix (Fin d) (Fin d) (Bcr l)) (E : Matrix (Fin d) (Fin d) ↥(K0 K)) (k : ℕ),
      (∀ i j, N i j ∈ wtS l) → N.map (((PP l).φB)^[k]) = N * E.map (algebraMap ↥(K0 K) (Bcr l)) →
      ∀ i j, ((PP l).φB)^[k] (N i j) ∈ wtS l := by
    intro N E k hN e i j
    have := congrFun (congrFun e i) j
    rw [Matrix.map_apply, Matrix.mul_apply] at this
    rw [this]
    exact Subring.sum_mem _ fun r _ => Subring.mul_mem _ (hN _ _) (wt_alg K _)
  have h1 := UpperTheory.norm_le_one_of_mem_spectrum_frobenius_matrix_fil_zero K f hf hσ M M' (F f) hMM' (fun k => hS M (F k) k hM (hMF k)) (hMF f)
  have h2 := UpperTheory.norm_le_one_of_mem_spectrum_frobenius_matrix_fil_zero K f hf hσ M'.transpose M.transpose ((F f)⁻¹).transpose
    (by rw [← Matrix.transpose_mul, hMM', Matrix.transpose_one])
    (fun k => hS M'.transpose _ k (fun i j => hM' j i) (hinv k)) (hinv f)
  obtain ⟨P, hP, hP0, hPF⟩ := UpperTheory.exists_monic_unit_coeff_zero_annihilating_of_spectrum_norm_one (K0 K) (F f) (fun a ha => by
    have hu : IsUnit ((F f).map (algebraMap ↥(K0 K) (Om l))).det := by
      have := (hF f).map (algebraMap ↥(K0 K) (Om l))
      rw [RingHom.map_det] at this
      exact this
    let u := Matrix.nonsingInvUnit ((F f).map (algebraMap ↥(K0 K) (Om l))) hu
    have h0 : a ≠ 0 := spectrum.ne_zero_of_mem_of_unit (a := u) ha
    have ha' : a⁻¹ ∈ spectrum (Om l) (((F f).map (algebraMap ↥(K0 K) (Om l)))⁻¹).transpose := by
      rw [Matrix.spectrum_transpose]
      exact spectrum.inv₀_mem_inv (a := u) ha
    have e : ((F f).map (algebraMap ↥(K0 K) (Om l)))⁻¹ = ((F f)⁻¹).map (algebraMap ↥(K0 K) (Om l)) := by
      apply Matrix.inv_eq_right_inv
      rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ (hF f), Matrix.map_one _ (map_zero _) (map_one _)]
    rw [e, ← Matrix.transpose_map] at ha'
    have h3 := h2 _ ha'
    rw [norm_inv, inv_le_one₀ (norm_pos_iff.2 h0)] at h3
    exact le_antisymm (h1 a ha) h3)
  have hfix : ∀ (k : ℕ) (c : ↥(K0 K)), ((PP l).φB)^[k] (algebraMap ↥(K0 K) (Bcr l) c) =
      algebraMap ↥(K0 K) (Bcr l) ((((PP l).PD K).σ)^[k] c) := by
    intro k
    induction k with
    | zero => intro c; rfl
    | succ k ih => intro c; rw [Function.iterate_succ_apply', Function.iterate_succ_apply', ih, wt_phi]
  have h4 := wt_aeval K ((PP l).φB ^ f) (fun c => by rw [← hc, hfix, hσ]) M (F f) (by rw [← hc]; exact hMF f)
    (P.map (algebraMap ℤ_[l] ℚ_[l]))
  rw [Polynomial.map_map, hPF, Matrix.map_zero _ (map_zero _), Matrix.mul_zero] at h4
  intro g hg
  ext i j
  refine UpperTheory.inertia_fixes_of_frobenius_annihilated_mem_fil_zero (expand ℤ_[l] f P) (hP.expand hf) (by rwa [coeff_expand hf, if_pos (dvd_zero _), Nat.zero_div])
    (M i j) ?_ (fun k => hS M (F k) k hM (hMF k) i j) g hg
  have e : ((PP l).φB.toLinearMap : Module.End ℚ_[l] (Bcr l)) ^ f = ((PP l).φB ^ f).toLinearMap := by
    ext x
    rw [Module.End.pow_apply, AlgHom.toLinearMap_apply, ← hc]
    rfl
  rw [Polynomial.map_expand, expand_aeval, e]
  exact congrFun (congrFun h4 i) j

end UpperTheory.V.Loc
