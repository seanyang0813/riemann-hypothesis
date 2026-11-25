module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GenericCentreSpecializes
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LatNormGrLatNeZeroOfSpan

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat

open AlgebraicGeometry CategoryTheory GlobalTheory.CompanionTheory.Ar NumberField

section Defs

variable {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X}

def detLat {F : Type} [AddCommGroup F] [Module Ω F] (L : Lat ξ F) {r : ℕ} (u : Fin r → F) : Lat ξ Ω := fun p =>
  Submodule.span (regAt ξ p)
    {t | ∃ A : Matrix (Fin r) (Fin r) Ω, L.IsFrameAt (fun i => ∑ j, A i j • u j) p ∧ t = A.det}

variable {E : Type} [Field E] [NumberField E] {V : Type} [AddCommGroup V] [Module Ω V]

structure HodgeLat (L : Lat ξ V) (ρ : 𝓞 E →+* Module.End Ω V) (bar : 𝓞 E ≃+* 𝓞 E) (r : ℕ) where

  ρH : 𝓞 E →+* Module.End Ω (V × Module.Dual Ω V)

  HL : Lat ξ (V × Module.Dual Ω V)
  act_fst : ∀ a y, (ρH a y).1 = ρ a y.1
  act_inr : ∀ a φ, ρH a (0, φ) = (0, φ ∘ₗ ρ (bar a))
  map_fst : HL.map (LinearMap.fst Ω V (Module.Dual Ω V)) = L
  comap_inr : HL.comap (LinearMap.inr Ω V (Module.Dual Ω V)) = L.dual
  free : ∀ p : Cpt ξ, ∃ U : X.Opens, p.1 ∈ U ∧ ∃ x : Fin r → V × Module.Dual Ω V,
    ∀ q : Cpt ξ, q.1 ∈ U → HT.IsFreeOn ρH (HL q) x
  vb : L.IsVB (Module.finrank Ω V) ⊤

variable {L : Lat ξ V} {ρ : 𝓞 E →+* Module.End Ω V} {bar : 𝓞 E ≃+* 𝓞 E} {r : ℕ}

def HodgeLat.quot (𝓗 : HodgeLat L ρ bar r) (σ : E →+* Ω) : Lat ξ (V × Module.Dual Ω V) :=
  𝓗.HL.map (HT.eigProj 𝓗.ρH σ)

def HodgeLat.DegZero (𝓗 : HodgeLat L ρ bar r) (σ : E →+* Ω) (ϖ : Ω) : Prop :=
  ∀ u : Fin r → V × Module.Dual Ω V, LinearIndependent Ω u →
    Submodule.span Ω (Set.range u) = HT.eigSp 𝓗.ρH σ → NumTrivMod (detLat (𝓗.quot σ) u) ϖ

def IsAdapted {K W : Type} [Field K] [AddCommGroup W] [Module K W]
    (ρH : 𝓞 E →+* Module.End K (W × Module.Dual K W)) (σ : E →+* K) {p q : ℕ} (v : Fin p → W) (w : Fin q → W)
    (u : Fin (p + q) → W × Module.Dual K W) : Prop :=
  (∀ i, u i ∈ HT.eigSp ρH σ) ∧ (∀ i, (u (Fin.castAdd q i)).1 = v i) ∧
    ∀ j, (u (Fin.natAdd p j)).1 = 0 ∧ ∀ j', (u (Fin.natAdd p j)).2 (w j') = if j = j' then 1 else 0

end Defs

namespace HodgeDeterminantLattice

section Det

variable {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X}
  {F : Type} [AddCommGroup F] [Module Ω F] {r : ℕ}

theorem mem_span_iff {A : Subring Ω} {t : Ω} (ht : t ≠ 0) {y : Ω} :
    y ∈ Submodule.span A {t} ↔ y / t ∈ A := by
  rw [Submodule.mem_span_singleton]
  constructor
  · rintro ⟨c, rfl⟩
    rw [show c • t = (c : Ω) * t from rfl, mul_div_cancel_right₀ _ ht]
    exact c.2
  · intro h
    exact ⟨⟨_, h⟩, div_mul_cancel₀ _ ht⟩

theorem sum_smul_sum (C A : Matrix (Fin r) (Fin r) Ω) (u : Fin r → F) (i : Fin r) :
    ∑ j, C i j • ∑ k, A j k • u k = ∑ k, (C * A) i k • u k := by
  simp only [Finset.smul_sum, smul_smul, Matrix.mul_apply, Finset.sum_smul]
  exact Finset.sum_comm

theorem det_ne_zero {A : Matrix (Fin r) (Fin r) Ω} {u : Fin r → F}
    (h : LinearIndependent Ω fun i => ∑ j, A i j • u j) : A.det ≠ 0 := by
  intro h0
  obtain ⟨c, hc, e⟩ := Matrix.exists_vecMul_eq_zero_iff.2 h0
  refine hc (funext (Fintype.linearIndependent_iff.1 h c ?_))
  simp only [Finset.smul_sum, smul_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_eq_zero fun k _ => ?_
  rw [← Finset.sum_smul]
  have := congrFun e k
  simp only [Matrix.vecMul, dotProduct, Pi.zero_apply] at this
  rw [this, zero_smul]

theorem detLat_of_frame {L : Lat ξ F} {u : Fin r → F} (hu : LinearIndependent Ω u) {p : Cpt ξ}
    {A : Matrix (Fin r) (Fin r) Ω} (hA : L.IsFrameAt (fun i => ∑ j, A i j • u j) p) :
    (detLat L u).IsGenAt p A.det := by
  refine ⟨det_ne_zero hA.1, le_antisymm ?_ ?_⟩
  · rw [detLat, Submodule.span_le]
    rintro _ ⟨B, hB, rfl⟩
    have h1 : ∀ i, ∃ c : Fin r → regAt ξ p, ∑ j, c j • ∑ k, A j k • u k = ∑ j, B i j • u j := fun i => by
      rw [← Submodule.mem_span_range_iff_exists_fun, ← hA.2, hB.2]
      exact Submodule.subset_span ⟨i, rfl⟩
    choose C hC using h1
    have e : B = (regAt ξ p).subtype.mapMatrix (Matrix.of C) * A := by
      ext i k
      have h2 := (hC i).symm.trans (sum_smul_sum ((regAt ξ p).subtype.mapMatrix (Matrix.of C)) A u i)
      rw [← sub_eq_zero, ← Finset.sum_sub_distrib] at h2
      simp only [← sub_smul] at h2
      exact sub_eq_zero.1 (Fintype.linearIndependent_iff.1 hu _ h2 k)
    rw [e, Matrix.det_mul, ← RingHom.map_det]
    exact Submodule.mem_span_singleton.2 ⟨_, rfl⟩
  · rw [Submodule.span_singleton_le_iff_mem]
    exact Submodule.subset_span ⟨A, hA, rfl⟩

theorem isGenAt_mul {M L : Lat ξ Ω} {c : Ω} {p : Cpt ξ} {t s : Ω} (hM : M.IsGenAt p t) (hL : L.IsGenAt p (c * t))
    (hs : M.IsGenAt p s) : L.IsGenAt p (c * s) := by
  have hc := left_ne_zero_of_mul hL.1
  refine ⟨mul_ne_zero hc hs.1, ?_⟩
  ext y
  rw [hL.2, mem_span_iff hL.1, mem_span_iff (mul_ne_zero hc hs.1), ← div_div, ← div_div,
    ← mem_span_iff hM.1, ← mem_span_iff hs.1, hM.2.symm.trans hs.2]

theorem detLat_isVB {L : Lat ξ F} {W : Submodule Ω F} (hL : L.IsVB r W) {u : Fin r → F}
    (hu : LinearIndependent Ω u) (hsp : Submodule.span Ω (Set.range u) = W) : (detLat L u).IsVB 1 ⊤ := by
  intro p _
  obtain ⟨U, hU, b, hb, h⟩ := hL p trivial
  have h1 : ∀ i, b i ∈ Submodule.span Ω (Set.range u) := fun i => by
    rw [hsp, ← hb]
    exact Submodule.subset_span ⟨i, rfl⟩
  choose A hA using fun i => (Submodule.mem_span_range_iff_exists_fun Ω).1 (h1 i)
  have h2 : ∀ q : Cpt ξ, q.1 ∈ U → (detLat L u).IsGenAt q (Matrix.of A).det := fun q hq =>
    detLat_of_frame hu (by simpa only [Matrix.of_apply, hA] using h q trivial hq)
  refine ⟨U, hU, fun _ => (Matrix.of A).det, ?_, fun q _ hq => ⟨?_, ?_⟩⟩
  · rw [Set.range_const, eq_top_iff]
    exact fun y _ => Submodule.mem_span_singleton.2 ⟨y / (Matrix.of A).det, div_mul_cancel₀ _ (h2 p hU).1⟩
  · rw [linearIndependent_unique_iff]
    exact (h2 q hq).1
  · rw [Set.range_const]
    exact (h2 q hq).2

end Det

section Eig

variable {A : Type} [CommRing A] {K : Type} [Field K] [Algebra A K]
  {V : Type} [AddCommGroup V] [Module K V] [Module A V] [IsScalarTower A K V]
  {E : Type} [Field E] [NumberField E] {ρ : 𝓞 E →+* Module.End K V} (σ : E →+* K)

theorem eigProj_act (a : 𝓞 E) (x : V) : HT.eigProj ρ σ (ρ a x) = σ (a : E) • HT.eigProj ρ σ x := by
  rw [← HT.LatBasic.mem_eigSp.1 (HT.LatBasic.eigProj_mem ρ σ x) a]

  simp only [HT.eigProj, LinearMap.sum_apply, LinearMap.smul_apply, map_sum, map_smul]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [← Module.End.mul_apply, ← Module.End.mul_apply, ← map_mul, ← map_mul, mul_comm]

variable {X : Submodule A V} {N : ℕ} {t : Fin N → V}

theorem linearIndependent_eigProj (h : HT.IsFreeOn ρ X t) : LinearIndependent K fun i => HT.eigProj ρ σ (t i) := by
  rw [Fintype.linearIndependent_iff]
  intro c hc i
  have h1 := Fintype.linearIndependent_iff.1 h.1 (fun q => c q.1 * σ (HT.dualInt E q.2)) (by
    rw [Fintype.sum_prod_type, ← hc]
    simp only [HT.eigProj, LinearMap.sum_apply, LinearMap.smul_apply, Finset.smul_sum, smul_smul])
  have h2 : c i * σ (∑ k, HT.dualInt E k * integralBasis E k) = 0 := by

    rw [map_sum, Finset.mul_sum]
    exact Finset.sum_eq_zero fun k _ => by rw [map_mul, ← mul_assoc, h1 (i, k), zero_mul]
  rwa [HT.LatBasic.sum_dualInt_mul, map_one, mul_one] at h2

theorem span_eigProj (h : HT.IsFreeOn ρ X t) :
    Submodule.span K (Set.range fun i => HT.eigProj ρ σ (t i)) = HT.eigSp ρ σ := by
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    exact HT.LatBasic.eigProj_mem ρ σ _
  · intro x hx
    have h1 := h.2.1
    rw [h.2.2, Submodule.span_span_of_tower] at h1
    obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun K).1 (h1.ge (Submodule.mem_top (x := x)))

    rw [← HT.LatBasic.eigProj_of_mem hx, ← hc, map_sum]
    refine Submodule.sum_mem _ fun q _ => ?_
    rw [map_smul, eigProj_act]
    exact Submodule.smul_mem _ _ (Submodule.smul_mem _ _ (Submodule.subset_span ⟨q.1, rfl⟩))

theorem eigQuot_eq_span (h : HT.IsFreeOn ρ X t) (hσ : ∀ a : 𝓞 E, σ (a : E) ∈ (algebraMap A K).range) :
    HT.eigQuot ρ σ X = Submodule.span A (Set.range fun i => HT.eigProj ρ σ (t i)) := by
  apply le_antisymm
  · rw [HT.eigQuot, h.2.2, Submodule.map_span, Submodule.span_le]
    rintro _ ⟨_, ⟨q, rfl⟩, rfl⟩
    obtain ⟨c, hc⟩ := hσ (RingOfIntegers.basis E q.2)
    change HT.eigProj ρ σ _ ∈ _
    rw [eigProj_act, ← hc, algebraMap_smul]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨q.1, rfl⟩)
  · rw [Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    refine ⟨t i, ?_, rfl⟩
    have e : t i = ρ 1 (t i) := by simp

    rw [h.2.2, e, ← (RingOfIntegers.basis E).sum_repr 1, map_sum, LinearMap.sum_apply]
    refine Submodule.sum_mem _ fun k _ => ?_
    rw [map_zsmul, LinearMap.smul_apply]
    exact zsmul_mem (Submodule.subset_span (Set.mem_range.2 ⟨(i, k), rfl⟩)) _

end Eig

end HodgeDeterminantLattice

namespace HodgeLat

open HodgeDeterminantLattice

variable {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X}
  {E : Type} [Field E] [NumberField E] {V : Type} [AddCommGroup V] [Module Ω V]
  {L : Lat ξ V} {ρ : 𝓞 E →+* Module.End Ω V} {bar : 𝓞 E ≃+* 𝓞 E} {r : ℕ} (𝓗 : HodgeLat L ρ bar r) (σ : E →+* Ω)


include 𝓗 in
theorem finiteDimensional : FiniteDimensional Ω V := by
  obtain ⟨-, -, b, hb, -⟩ := 𝓗.vb ⟨genPt ξ, specializes_rfl⟩ trivial
  exact ⟨hb ▸ Submodule.fg_span (Set.finite_range b)⟩

theorem quot_apply (p : Cpt ξ) : 𝓗.quot σ p = HT.eigQuot 𝓗.ρH σ (𝓗.HL p) := rfl

theorem exists_basis_eigSp : ∃ u : Fin r → V × Module.Dual Ω V, LinearIndependent Ω u ∧
    Submodule.span Ω (Set.range u) = HT.eigSp 𝓗.ρH σ := by
  obtain ⟨U, hU, x, h⟩ := 𝓗.free ⟨genPt ξ, specializes_rfl⟩
  exact ⟨_, linearIndependent_eigProj σ (h _ hU), span_eigProj σ (h _ hU)⟩

theorem quot_isVB (hσ : ∀ (p : Cpt ξ) (a : 𝓞 E), σ (a : E) ∈ regAt ξ p) :
    (𝓗.quot σ).IsVB r (HT.eigSp 𝓗.ρH σ) := fun p _ => by
  obtain ⟨U, hU, x, h⟩ := 𝓗.free p
  exact ⟨U, hU, _, span_eigProj σ (h p hU), fun q _ hq => ⟨linearIndependent_eigProj σ (h q hq),
    eigQuot_eq_span σ (h q hq) fun a => ⟨⟨_, hσ q a⟩, rfl⟩⟩⟩

theorem det_isVB (hσ : ∀ (p : Cpt ξ) (a : 𝓞 E), σ (a : E) ∈ regAt ξ p) {u : Fin r → V × Module.Dual Ω V}
    (hu : LinearIndependent Ω u) (hsp : Submodule.span Ω (Set.range u) = HT.eigSp 𝓗.ρH σ) :
    (detLat (𝓗.quot σ) u).IsVB 1 ⊤ := detLat_isVB (𝓗.quot_isVB σ hσ) hu hsp

end HodgeLat

end GlobalTheory.CompanionTheory.Ar.Flat
