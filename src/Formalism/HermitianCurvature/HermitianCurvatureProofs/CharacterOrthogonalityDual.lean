module

public import Formalism.HermitianCurvature.BlockKernelPropertiesOfSteps
public import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.LowUniMulVecELast
import Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal

@[expose] public section

noncomputable section

open Matrix Formalism.DoubleCosetMeasures Formalism.FourierDecayAlt.A5
open scoped ComplexConjugate

namespace Formalism.FourierDecayAlt.P.A5x3

section Alg

variable {K : Type} [CommRing K] (R : Subring K) (ψ : AddChar K ℂ)

theorem mem_rng (x : K) : x ∈ LinearMap.range (Algebra.linearMap R K) ↔ x ∈ R := by
  constructor
  · rintro ⟨r, rfl⟩; exact r.2
  · intro h; exact ⟨⟨x, h⟩, rfl⟩

theorem mk_eq_zero (x : K) : (Submodule.Quotient.mk x : KR R) = 0 ↔ x ∈ R := by
  rw [Submodule.Quotient.mk_eq_zero, mem_rng]

theorem mk_eq_mk (x y : K) :
    (Submodule.Quotient.mk x : KR R) = Submodule.Quotient.mk y ↔ x - y ∈ R := by
  rw [Submodule.Quotient.eq, mem_rng]

theorem smul_mk (r : R) (x : K) :
    r • (Submodule.Quotient.mk x : KR R) = Submodule.Quotient.mk ((r : K) * x) := by
  rw [← Submodule.Quotient.mk_smul]; rfl

variable {R ψ}

theorem psi_of_mem (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) {a : K} (ha : a ∈ R) :
    ψ a = 1 := by
  simpa using (h a).2 ha 1 R.one_mem

theorem psiKR_mk (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) (a : K) :
    psiKR R ψ (Submodule.Quotient.mk a) = ψ a := by
  unfold psiKR
  have h1 : Quotient.out (Submodule.Quotient.mk a : KR R) - a ∈ R :=
    (mk_eq_mk R _ _).1 (Submodule.Quotient.mk_out _)
  have h2 : Quotient.out (Submodule.Quotient.mk a : KR R)
      = (Quotient.out (Submodule.Quotient.mk a : KR R) - a) + a := by ring
  rw [h2, AddChar.map_add_eq_mul, psi_of_mem h h1, one_mul]

def psiBar (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) : AddChar (KR R) ℂ where
  toFun := psiKR R ψ
  map_zero_eq_one' := by
    have := psiKR_mk h 0
    rw [Submodule.Quotient.mk_zero] at this
    rw [this, AddChar.map_zero_eq_one]
  map_add_eq_mul' := by
    intro x y
    induction x using Submodule.Quotient.induction_on with
    | H x =>
      induction y using Submodule.Quotient.induction_on with
      | H y =>
        rw [← Submodule.Quotient.mk_add, psiKR_mk h, psiKR_mk h, psiKR_mk h,
          AddChar.map_add_eq_mul]

theorem psiBar_apply (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) (x : KR R) :
    psiBar h x = psiKR R ψ x := rfl

theorem eq_zero_of_psi (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) (y : KR R)
    (hy : ∀ r : R, psiKR R ψ (r • y) = 1) : y = 0 := by
  induction y using Submodule.Quotient.induction_on with
  | H a =>
    rw [mk_eq_zero, ← h a]
    intro r hr
    have := hy ⟨r, hr⟩
    rw [smul_mk, psiKR_mk h] at this
    rw [mul_comm]; exact this

theorem finsum_char {G : Type} [AddCommGroup G] [Finite G] (χ : AddChar G ℂ) :
    ((∀ g, χ g = 1) → ∑ᶠ g, χ g = (Nat.card G : ℂ)) ∧ ((∃ g, χ g ≠ 1) → ∑ᶠ g, χ g = 0) := by
  classical
  have := Fintype.ofFinite G
  rw [finsum_eq_sum_of_fintype, AddChar.sum_eq_ite, Nat.card_eq_fintype_card]
  constructor
  · intro hg
    rw [if_pos (AddChar.eq_zero_iff.2 hg)]
  · intro hg
    rw [if_neg (AddChar.ne_zero_iff.2 hg)]

variable {C : Type} [AddCommGroup C] [Module R C]

def chC (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) (μ : C →ₗ[R] KR R) : AddChar C ℂ :=
  (psiBar h).compAddMonoidHom μ.toAddMonoidHom

theorem chC_apply (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) (μ : C →ₗ[R] KR R) (c : C) :
    chC h μ c = psiKR R ψ (μ c) := rfl

theorem chC_injective (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) :
    Function.Injective (chC h : (C →ₗ[R] KR R) → AddChar C ℂ) := by
  intro μ ν hμν
  ext c
  rw [← sub_eq_zero]
  apply eq_zero_of_psi h
  intro r
  have h1 : chC h μ (r • c) = chC h ν (r • c) := by rw [hμν]
  rw [chC_apply, chC_apply, map_smul, map_smul] at h1
  rw [smul_sub, sub_eq_add_neg, ← psiBar_apply h, AddChar.map_add_eq_mul,
    AddChar.map_neg_eq_inv, psiBar_apply, psiBar_apply, h1]
  exact mul_inv_cancel₀ (AddChar.val_isUnit (psiBar h) _).ne_zero

theorem finite_dual (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) [Finite C] :
    Finite (C →ₗ[R] KR R) :=
  Finite.of_injective _ (chC_injective h)


open Classical in
theorem sum_over_C (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) [Finite C]
    (μ : C →ₗ[R] KR R) :
    ∑ᶠ c : C, psiKR R ψ (μ c) = if μ = 0 then (Nat.card C : ℂ) else 0 := by
  split_ifs with hμ
  · apply (finsum_char (chC h μ)).1
    intro g
    rw [hμ, chC_apply, LinearMap.zero_apply, ← psiBar_apply h, AddChar.map_zero_eq_one]
  · apply (finsum_char (chC h μ)).2
    by_contra hcon
    push Not at hcon
    apply hμ
    apply chC_injective h
    ext c
    rw [hcon c, chC_apply, LinearMap.zero_apply, ← psiBar_apply h, AddChar.map_zero_eq_one]

def chS (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) (S : Submodule R (C →ₗ[R] KR R))
    (c : C) : AddChar S ℂ :=
  (psiBar h).compAddMonoidHom
    ((LinearMap.applyₗ c : (C →ₗ[R] KR R) →ₗ[R] KR R).comp S.subtype).toAddMonoidHom

theorem chS_apply (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R)
    (S : Submodule R (C →ₗ[R] KR R)) (c : C) (α : S) :
    chS h S c α = psiKR R ψ ((α : C →ₗ[R] KR R) c) := rfl


open Classical in
theorem sum_over_S (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) [Finite C]
    (S : Submodule R (C →ₗ[R] KR R)) (c : C) :
    ∑ᶠ α : S, psiKR R ψ ((α : C →ₗ[R] KR R) c) =
      if ∀ α ∈ S, α c = 0 then (Nat.card S : ℂ) else 0 := by
  have := finite_dual (C := C) h
  split_ifs with hc
  · apply (finsum_char (chS h S c)).1
    intro α
    rw [chS_apply, hc α α.2, ← psiBar_apply h, AddChar.map_zero_eq_one]
  · apply (finsum_char (chS h S c)).2
    by_contra hcon
    push Not at hcon
    apply hc
    intro α hα
    apply eq_zero_of_psi h
    intro r
    have := hcon ⟨r • α, S.smul_mem r hα⟩
    rw [chS_apply] at this
    exact this

end Alg

section Alg2

variable {K : Type} [CommRing K] {R : Subring K} {ψ : AddChar K ℂ}
variable {C : Type} [AddCommGroup C] [Module R C]


open Classical in
theorem sum_over_dual' (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) [Finite C]
    (hsep : ∀ c : C, (∀ α : C →ₗ[R] KR R, α c = 0) → c = 0) (x : C) :
    ∑ᶠ α : C →ₗ[R] KR R, psiKR R ψ (α x) =
      if x = 0 then (Nat.card (C →ₗ[R] KR R) : ℂ) else 0 := by
  have h1 := sum_over_S h (⊤ : Submodule R (C →ₗ[R] KR R)) x
  have h2 : ∑ᶠ α : (⊤ : Submodule R (C →ₗ[R] KR R)), psiKR R ψ ((α : C →ₗ[R] KR R) x) =
      ∑ᶠ α : C →ₗ[R] KR R, psiKR R ψ (α x) :=
    finsum_comp_equiv (Submodule.topEquiv (R := R) (M := C →ₗ[R] KR R)).toEquiv
      (f := fun α : C →ₗ[R] KR R => psiKR R ψ (α x))
  rw [← h2, h1, Nat.card_congr (Submodule.topEquiv (R := R) (M := C →ₗ[R] KR R)).toEquiv]
  by_cases hx : x = 0
  · rw [if_pos hx, if_pos]
    intro α _
    rw [hx, map_zero]
  · rw [if_neg hx, if_neg]
    intro hcon
    exact hx (hsep x fun α => hcon α Submodule.mem_top)

theorem card_dual (h : ∀ a : K, (∀ r ∈ R, ψ (a * r) = 1) ↔ a ∈ R) [Finite C]
    (hsep : ∀ c : C, (∀ α : C →ₗ[R] KR R, α c = 0) → c = 0) :
    Nat.card (C →ₗ[R] KR R) = Nat.card C := by
  classical
  have := finite_dual (C := C) h
  have := Fintype.ofFinite C
  have := Fintype.ofFinite (C →ₗ[R] KR R)
  have e1 : ∑ c : C, ∑ α : C →ₗ[R] KR R, psiKR R ψ (α c) = (Nat.card (C →ₗ[R] KR R) : ℂ) := by
    simp_rw [← finsum_eq_sum_of_fintype (fun α : C →ₗ[R] KR R => psiKR R ψ (α _)),
      sum_over_dual' h hsep]
    rw [Finset.sum_ite_eq' Finset.univ (0 : C), if_pos (Finset.mem_univ _)]
  have e2 : ∑ c : C, ∑ α : C →ₗ[R] KR R, psiKR R ψ (α c) = (Nat.card C : ℂ) := by
    rw [Finset.sum_comm]
    have h5 : ∀ α : C →ₗ[R] KR R, ∑ c : C, psiKR R ψ (α c) =
        if α = 0 then (Nat.card C : ℂ) else 0 := by
      intro α
      rw [← finsum_eq_sum_of_fintype, sum_over_C h]
      split_ifs <;> rfl
    simp_rw [h5]
    rw [Finset.sum_ite_eq' Finset.univ (0 : C →ₗ[R] KR R), if_pos (Finset.mem_univ _)]
  exact_mod_cast e1.symm.trans e2

end Alg2

section Cok

variable {K : Type} [CommRing K] (R : Subring K) {n : ℕ}

def rowFun (Z : Matrix (Fin n) (Fin n) K) (a : Fin n) : (Fin n → R) →ₗ[R] KR R :=
  (Submodule.mkQ _).comp ((LinearMap.proj a : (Fin n → K) →ₗ[R] K).comp
    ((Z⁻¹.mulVecLin.restrictScalars R).comp (coeLin R)))

theorem rowFun_apply (Z : Matrix (Fin n) (Fin n) K) (a : Fin n) (v : Fin n → R) :
    rowFun R Z a v = Submodule.Quotient.mk ((Z⁻¹ *ᵥ coeLin R v) a) := rfl

theorem rowFun_kills (Z : Matrix (Fin n) (Fin n) K) (hZ : IsUnit Z.det) (a : Fin n) :
    latZ R Z ≤ LinearMap.ker (rowFun R Z a) := by
  intro v hv
  obtain ⟨y, hy⟩ := (Formalism.DoubleCosetMeasures.P.mem_latZ R Z v).1 hv
  rw [LinearMap.mem_ker, rowFun_apply, ← hy, mulVec_mulVec, Matrix.nonsing_inv_mul Z hZ,
    one_mulVec, mk_eq_zero, Formalism.DoubleCosetMeasures.P.coeLin_apply]
  exact (y a).2

theorem coker_sep (Z : Matrix (Fin n) (Fin n) K) (hZ : IsUnit Z.det) (c : coker R Z)
    (hc : ∀ α : coker R Z →ₗ[R] KR R, α c = 0) : c = 0 := by
  induction c using Submodule.Quotient.induction_on with
  | H v =>
    rw [Submodule.Quotient.mk_eq_zero, Formalism.DoubleCosetMeasures.P.mem_latZ]
    have h1 : ∀ a, (Z⁻¹ *ᵥ coeLin R v) a ∈ R := by
      intro a
      have := hc ((latZ R Z).liftQ (rowFun R Z a) (rowFun_kills R Z hZ a))
      rw [Submodule.liftQ_apply, rowFun_apply, mk_eq_zero] at this
      exact this
    refine ⟨fun a => ⟨_, h1 a⟩, ?_⟩
    have h2 : coeLin R (fun a => (⟨_, h1 a⟩ : R)) = Z⁻¹ *ᵥ coeLin R v := by
      funext a
      rw [Formalism.DoubleCosetMeasures.P.coeLin_apply]
    rw [h2, mulVec_mulVec, Matrix.mul_nonsing_inv Z hZ, one_mulVec]

end Cok

section Top

variable {K : Type} [CommRing K] [TopologicalSpace K] [IsTopologicalRing K] {R : Subring K}
  {ψ : AddChar K ℂ}

theorem finite_quot (hD : LocalDatum K R ψ) (d : R) (hd : IsUnit (d : K)) :
    Finite (R ⧸ Ideal.span {d}) := by
  have : CompactSpace R := isCompact_iff_compactSpace.1 hD.isCompact
  obtain ⟨u, hu⟩ := hd
  have hopen : IsOpen ((Ideal.span {d}).toAddSubgroup : Set R) := by
    have h1 : ((Ideal.span {d}).toAddSubgroup : Set R) =
        (fun x : R => ((u⁻¹ : Kˣ) : K) * (x : K)) ⁻¹' (R : Set K) := by
      ext x
      simp only [Submodule.coe_toAddSubgroup, SetLike.mem_coe, Set.mem_preimage]
      rw [Ideal.mem_span_singleton']
      constructor
      · rintro ⟨c, rfl⟩
        rw [Subring.coe_mul, ← hu, mul_comm (c : K), ← mul_assoc, Units.inv_mul, one_mul]
        exact c.2
      · intro hx
        refine ⟨⟨_, hx⟩, ?_⟩
        apply Subtype.ext
        rw [Subring.coe_mul, ← hu]
        simp only
        rw [mul_comm, ← mul_assoc, Units.mul_inv, one_mul]
    rw [h1]
    exact hD.isOpen.preimage (by fun_prop)
  exact AddSubgroup.quotient_finite_of_isOpen (Ideal.span {d}).toAddSubgroup hopen

theorem finite_coker (hD : LocalDatum K R ψ) {n : ℕ} (Z : Matrix (Fin n) (Fin n) K)
    (hZ : IsInt R Z) (hdet : IsUnit Z.det) : Finite (coker R Z) :=
  (Formalism.DoubleCosetMeasures.P.isoFinite K R (finite_quot hD) n Z hZ hdet).1

end Top

end Formalism.FourierDecayAlt.P.A5x3

namespace Formalism.FourierDecayAlt.P

open A5x3

theorem characterOrthogonalityDual : Formalism.FourierDecayAlt.A5.CharOrthDual := by
  intro K _ _ _ R ψ hD n Z hZ hdet
  have := finite_coker hD Z hZ hdet
  refine ⟨finite_dual hD.selfDual, fun x => ?_⟩
  rw [sum_over_dual' hD.selfDual (coker_sep R Z hdet) x,
    card_dual hD.selfDual (coker_sep R Z hdet)]
  split_ifs <;> simp

theorem characterOrthogonality : Formalism.FourierDecayAlt.A5.CharOrth := by
  intro K _ _ _ R ψ hD n Z hZ hdet μ
  have := finite_coker hD Z hZ hdet
  rw [sum_over_C hD.selfDual μ]
  split_ifs <;> simp

end Formalism.FourierDecayAlt.P
