module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeGram
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LeftEqIffLieVecSmul
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Fl.Test

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor

section Frames

variable {S : Scheme.{0}} {R : Type} [CommRing R] {O : Type} [CommRing O]

theorem lieMult_iff_exists_frame {k : Type} [Field k] {G : Over S} [GrpObj G] (act : OAct O G) (t : Sp k ⟶ S)
    (τ : O →+* k) (n : ℕ) : LieMult act t τ n ↔ ∃ v : Fin n → (epsAt t ⟶ G), IsEigFrame act t τ v := Iff.rfl

variable {G : Over S} [GrpObj G] {x : Sp R ⟶ S} {V : Type} [AddCommGroup V] [Module R V]

theorem pt_zero (M : LieModel G x V) : M.pt 0 = 1 := by
  have h := M.add 0 0
  rw [add_zero] at h
  exact (mul_eq_left.1 h.symm)

theorem pt_sum (M : LieModel G x V) {n : ℕ} (e : Fin n → V) :
    M.pt (∑ i, e i) = (List.ofFn fun i => M.pt (e i)).prod := by
  induction n with
  | zero => simp [pt_zero]
  | succ n ih => rw [Fin.sum_univ_succ, M.add, ih, List.ofFn_succ, List.prod_cons]

theorem isComb_iff (M : LieModel G x V) {n : ℕ} (c : Fin n → R) (e : Fin n → V) (w : V) :
    IsComb c (fun i => M.pt (e i)) (M.pt w) ↔ w = ∑ i, c i • e i := by
  constructor
  · rintro ⟨u, hu, hw⟩
    have : u = fun i => M.pt (c i • e i) := funext fun i => Over.OverMorphism.ext ((hu i).trans (M.smul _ _).symm)
    rw [this, ← pt_sum] at hw
    exact M.inj hw
  · rintro rfl
    exact ⟨fun i => M.pt (c i • e i), fun i => M.smul _ _, pt_sum M _⟩

theorem isEigVec_iff (M : LieModel G x V) (act : OAct O G) (ρ : O →+* Module.End R V) (h : M.IsActOf act.act ρ)
    (τ : O →+* R) (e : V) : IsEigVec act x τ (M.pt e) ↔ e ∈ eigSp ρ τ := by
  simp only [IsEigVec, M.tan, true_and, eigSp, Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply,
    LinearMap.smul_apply, LinearMap.id_apply, sub_eq_zero]
  refine forall_congr' fun a => ?_
  rw [← h a e]
  constructor
  · intro H
    exact M.inj (Over.OverMorphism.ext (H.trans (M.smul _ _).symm))
  · intro H
    rw [H]; exact M.smul _ _

theorem isEigFrame_iff (M : LieModel G x V) (act : OAct O G) (ρ : O →+* Module.End R V) (h : M.IsActOf act.act ρ)
    (τ : O →+* R) {n : ℕ} (e : Fin n → V) : IsEigFrame act x τ (fun i => M.pt (e i)) ↔
      LinearIndependent R e ∧ Submodule.span R (Set.range e) = eigSp ρ τ := by
  simp only [IsEigFrame, isEigVec_iff M act ρ h]
  constructor
  · rintro ⟨h1, h2⟩
    refine ⟨Fintype.linearIndependent_iff.2 fun c hc => ?_, le_antisymm ?_ fun w hw => ?_⟩
    · obtain ⟨c0, -, hu⟩ := h2 (M.pt 0) ((isEigVec_iff M act ρ h τ 0).2 (Submodule.zero_mem _))
      have a := hu c ((isComb_iff M c e 0).2 hc.symm)
      have b := hu 0 ((isComb_iff M 0 e 0).2 (by simp))
      exact fun i => congrFun (a.trans b.symm) i
    · rintro _ hw
      exact Submodule.span_le.2 (by rintro _ ⟨i, rfl⟩; exact h1 i) hw
    · obtain ⟨c, hc, -⟩ := h2 (M.pt w) ((isEigVec_iff M act ρ h τ w).2 hw)
      rw [(isComb_iff M c e w).1 hc]
      exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  · rintro ⟨h1, h2⟩
    refine ⟨fun i => h2 ▸ Submodule.subset_span ⟨i, rfl⟩, fun w hw => ?_⟩
    obtain ⟨w, rfl⟩ := M.onto w hw.1
    have hw' := (isEigVec_iff M act ρ h τ w).1 hw
    rw [← h2, Submodule.mem_span_range_iff_exists_fun] at hw'
    obtain ⟨c, hc⟩ := hw'
    refine ⟨c, (isComb_iff M c e w).2 hc.symm, fun d hd => ?_⟩
    have hd' := (isComb_iff M d e w).1 hd
    have := Fintype.linearIndependent_iff.1 h1 (d - c) (by
      simp only [Pi.sub_apply, sub_smul, Finset.sum_sub_distrib, hc, ← hd', sub_self])
    exact funext fun i => sub_eq_zero.1 (this i)


open GlobalTheory.Diag in
def torusModel (x : Sp R ⟶ S) (X : Type) [AddCommGroup X] : LieModel (splitTorus S X) x (X →+ R) where
  pt c := epsVec _ c
  tan c := (reduces_iff (by rw [← Category.assoc, fstHom_base, Category.id_comp]) _).2
    ((exists_epsVec_iff _).1 ⟨c, rfl⟩)
  inj := epsVec_injective
  onto v hv := (exists_epsVec_iff _).2
    ((reduces_iff (by rw [← Category.assoc, fstHom_base, Category.id_comp]) _).1 hv)
  add := epsVec_add
  smul a c := (left_eq_epsScaleR_iff a (by rw [← Category.assoc, ← epsScaleR_base]) c _).2 rfl

end Frames

section Form

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem trace_basis_mul_sesq (D : Datum H) (x y : D.La) (j) :
    Algebra.trace ℚ E ((RingOfIntegers.basis E j : E) * sesq D x y) = D.EF (RingOfIntegers.basis E j • x) y := by
  classical
  have key : ∀ k, Algebra.trace ℚ E ((RingOfIntegers.basis E j : E) * HT.dualInt E k) = if j = k then 1 else 0 := by
    intro k
    have := LinearMap.BilinForm.apply_dualBasis_left (B := Algebra.traceForm ℚ E) (traceForm_nondegenerate ℚ E)
      (integralBasis E) k j
    rw [Algebra.traceForm_apply, integralBasis_apply, mul_comm] at this
    convert this
    unfold HT.dualInt
    congr!

  simp only [sesq, Finset.mul_sum, map_sum]
  have : ∀ k, Algebra.trace ℚ E ((RingOfIntegers.basis E j : E) *
      ((D.EF (RingOfIntegers.basis E k • x) y : E) * HT.dualInt E k)) =
      (D.EF (RingOfIntegers.basis E k • x) y : ℚ) * if j = k then 1 else 0 := by
    intro k
    rw [mul_left_comm, ← zsmul_eq_mul, map_zsmul, key, zsmul_eq_mul]
  simp [this]

theorem trace_mul_sesq (D : Datum H) (x y : D.La) (a : 𝓞 E) :
    Algebra.trace ℚ E ((a : E) * sesq D x y) = D.EF (a • x) y := by
  have h : a ∈ Submodule.span ℤ (Set.range (RingOfIntegers.basis E)) := by simp
  induction h using Submodule.span_induction with
  | mem b hb => obtain ⟨j, rfl⟩ := hb; exact trace_basis_mul_sesq D x y j
  | zero => simp
  | add b c _ _ hb hc => simp [add_mul, add_smul, hb, hc]
  | smul m b _ hb =>
    have e : ((m • b : 𝓞 E) : E) * sesq D x y = m • ((b : E) * sesq D x y) := by
      simp only [zsmul_eq_mul, ← _root_.mul_assoc]; simp
    rw [e, map_zsmul, hb, smul_assoc]; simp

theorem eq_of_trace {s t : E} (h : ∀ a : 𝓞 E, Algebra.trace ℚ E ((a : E) * s) = Algebra.trace ℚ E ((a : E) * t)) :
    s = t := by
  rw [← sub_eq_zero]
  refine (traceForm_nondegenerate ℚ E).1 _ fun z => ?_
  have : (Algebra.traceForm ℚ E) (s - t) = 0 := (integralBasis E).ext fun k => by
    rw [Algebra.traceForm_apply, integralBasis_apply, sub_mul, map_sub, mul_comm s, mul_comm t]
    exact sub_eq_zero.2 (h _)
  simp [this]

theorem sesq_smul_right (D : Datum H) (c : 𝓞 E) (x y : D.La) : sesq D x (H.bar c • y) = c * sesq D x y :=
  eq_of_trace fun a => by
    rw [trace_mul_sesq, ← D.adj, ← mul_smul, ← trace_mul_sesq, ← _root_.mul_assoc, mul_comm (a : E)]; simp


end Form

end GlobalTheory.CompanionTheory.Ar.Fl.Test
