module

public import ReciprocityTheory.NeutralLocalFields.Reciprocity
public import Formalism.ConjugateSelfDual.Statement
public import Mathlib.NumberTheory.Cyclotomic.CyclotomicCharacter
public import Mathlib.NumberTheory.Padics.Complex
public import Mathlib.Order.CompletePartialOrder
public import Mathlib.RepresentationTheory.Invariants
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
public import Mathlib.RingTheory.Valuation.RamificationGroup
public import Mathlib.Topology.Instances.ZMod
public import Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Representation

namespace Neutral.B1

section CohA

set_option linter.unusedVariables false

noncomputable section


variable {R : Type*} [CommRing R]
variable {G : Type*} [Group G] [TopologicalSpace G]
variable {M : Type*} [AddCommGroup M] [Module R M] [TopologicalSpace M]
  [IsTopologicalAddGroup M] [ContinuousConstSMul R M]

section ContMaps

variable (R M)

def contMaps (X : Type*) [TopologicalSpace X] : Submodule R (X → M) where
  carrier := {f | Continuous f}
  zero_mem' := continuous_const
  add_mem' hf hg := hf.add hg
  smul_mem' c _ hf := hf.const_smul c

variable {R M}

end ContMaps

def ContAction (rho : Representation R G M) : Prop :=
  Continuous (fun p : G × M => rho p.1 p.2)

variable (rho : Representation R G M)

def H0 : Submodule R M := rho.invariants

theorem mem_riemannRochSpace_iff_regularAt_everywhere (m : M) : m ∈ H0 rho ↔ ∀ g, rho g m = m := Iff.rfl

def Z1 : Submodule R (G → M) where
  carrier := {f | Continuous f ∧ ∀ g h, f (g * h) = f g + rho g (f h)}
  zero_mem' := ⟨continuous_const, fun g h => by simp⟩
  add_mem' := fun {f f'} hf hf' => ⟨hf.1.add hf'.1, fun g h => by
    simp only [Pi.add_apply, hf.2, hf'.2, map_add (f := _)]; abel⟩
  smul_mem' c f hf := ⟨hf.1.const_smul c, fun g h => by
    simp only [Pi.smul_apply, hf.2, map_smul, smul_add]⟩

def d0 : M →ₗ[R] (G → M) := LinearMap.pi fun g => rho g - LinearMap.id

def Bd1 : Submodule R (G → M) := LinearMap.range (d0 rho)

theorem mem_contCoboundaries1 (f : G → M) : f ∈ Bd1 rho ↔ ∃ m, ∀ g, f g = rho g m - m := by
  constructor
  · rintro ⟨m, rfl⟩; exact ⟨m, fun g => rfl⟩
  · rintro ⟨m, hm⟩; exact ⟨m, funext fun g => (hm g).symm⟩

abbrev H1 := Z1 rho ⧸ (Bd1 rho).comap (Z1 rho).subtype

def Z2 : Submodule R (G × G → M) where
  carrier := {f | Continuous f ∧
    ∀ g h k, rho g (f (h, k)) - f (g * h, k) + f (g, h * k) - f (g, h) = 0}
  zero_mem' := ⟨continuous_const, fun g h k => by simp⟩
  add_mem' := fun {f f'} hf hf' => ⟨hf.1.add hf'.1, fun g h k => by
    have e1 := hf.2 g h k; have e2 := hf'.2 g h k
    simp only [Pi.add_apply, map_add (f := _)]
    calc _ = (rho g (f (h, k)) - f (g * h, k) + f (g, h * k) - f (g, h)) +
          (rho g (f' (h, k)) - f' (g * h, k) + f' (g, h * k) - f' (g, h)) := by abel
      _ = 0 := by rw [e1, e2, add_zero]⟩
  smul_mem' c f hf := ⟨hf.1.const_smul c, fun g h k => by
    have e := hf.2 g h k
    simp only [Pi.smul_apply, map_smul]
    rw [← smul_sub, ← smul_add, ← smul_sub, e, smul_zero]⟩

def d1 : (G → M) →ₗ[R] (G × G → M) where
  toFun c p := rho p.1 (c p.2) - c (p.1 * p.2) + c p.1
  map_add' c c' := by
    funext p; simp only [Pi.add_apply, map_add (f := _)]; abel
  map_smul' r c := by
    funext p; simp only [Pi.smul_apply, map_smul, RingHom.id_apply, smul_sub, smul_add]

def Bd2 : Submodule R (G × G → M) := (contMaps R M G).map (d1 rho)

theorem mem_contCoboundaries2 (f : G × G → M) :
    f ∈ Bd2 rho ↔ ∃ c : G → M, Continuous c ∧ d1 rho c = f := Iff.rfl

abbrev H2 := Z2 rho ⧸ (Bd2 rho).comap (Z2 rho).subtype

def Cn (rho : Representation R G M) (n : ℕ) : Submodule R ((Fin n → G) → M) := contMaps R M (Fin n → G)

def dn (n : ℕ) : ((Fin n → G) → M) →ₗ[R] ((Fin (n + 1) → G) → M) where
  toFun f g := rho (g 0) (f fun i => g i.succ) + Finset.univ.sum fun j : Fin (n + 1) =>
    (-1 : R) ^ ((j : ℕ) + 1) • f (Fin.contractNth j (· * ·) g)
  map_add' f f' := by
    funext g
    simp [Finset.sum_add_distrib, add_add_add_comm]
  map_smul' r f := by
    funext g
    simp [Finset.smul_sum, ← smul_assoc, mul_comm r]

def Zn (n : ℕ) : Submodule R ((Fin n → G) → M) := Cn rho n ⊓ LinearMap.ker (dn rho n)

def Bn : (n : ℕ) → Submodule R ((Fin n → G) → M)
  | 0 => ⊥
  | n + 1 => (Cn rho n).map (dn rho n)

abbrev Hn (n : ℕ) := Zn rho n ⧸ (Bn rho n).comap (Zn rho n).subtype

section Restriction

variable {H : Type*} [Group H] [TopologicalSpace H] (phi : H →* G)

variable (hphi : Continuous phi)
include hphi

def restrictCocycles1 : Z1 rho →ₗ[R] Z1 (rho.comp phi) where
  toFun f := ⟨f.1 ∘ phi, f.2.1.comp hphi, fun g h => by
    simp only [Function.comp_apply, map_mul, MonoidHom.coe_comp]
    exact f.2.2 _ _⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

def resH1 : H1 rho →ₗ[R] H1 (rho.comp phi) :=
  Submodule.mapQ _ _ (restrictCocycles1 rho phi hphi) fun f hf => by
    obtain ⟨m, hm⟩ := (mem_contCoboundaries1 rho _).1 hf
    exact (mem_contCoboundaries1 _ _).2 ⟨m, fun h => hm (phi h)⟩

def restrictCocycles2 : Z2 rho →ₗ[R] Z2 (rho.comp phi) where
  toFun f := ⟨fun p => f.1 (phi p.1, phi p.2), f.2.1.comp (hphi.prodMap hphi), fun g h k => by
    simp only [map_mul, MonoidHom.coe_comp, Function.comp_apply]
    exact f.2.2 _ _ _⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

def resH2 : H2 rho →ₗ[R] H2 (rho.comp phi) :=
  Submodule.mapQ _ _ (restrictCocycles2 rho phi hphi) fun f hf => by
    obtain ⟨c, hc, hcf⟩ := (mem_contCoboundaries2 rho _).1 hf
    refine (mem_contCoboundaries2 _ _).2 ⟨c ∘ phi, hc.comp hphi, ?_⟩
    funext p
    have e := congrFun hcf (phi p.1, phi p.2)
    simp only [Submodule.coe_subtype] at e
    change _ = f.1 (phi p.1, phi p.2)
    rw [← e]
    simp [d1]

end Restriction

section Map

variable {M' : Type*} [AddCommGroup M'] [Module R M'] [TopologicalSpace M']
  [IsTopologicalAddGroup M'] [ContinuousConstSMul R M']
  (rho' : Representation R G M') (u : M →ₗ[R] M') (hu : Continuous u)
  (hequiv : ∀ g m, u (rho g m) = rho' g (u m))
include hu hequiv

end Map

section Pair

variable {G' : Type*} [Group G'] [TopologicalSpace G']
  {M' : Type*} [AddCommGroup M'] [Module R M'] [TopologicalSpace M']
  [IsTopologicalAddGroup M'] [ContinuousConstSMul R M']
  (rho' : Representation R G' M') (phi : G' →* G) (hphi : Continuous phi)
  (u : M →ₗ[R] M') (hu : Continuous u) (hcompat : ∀ g m, u (rho (phi g) m) = rho' g (u m))
include hphi hu hcompat

end Pair

section MapPair

variable {M' : Type*} [AddCommGroup M'] [Module R M'] [TopologicalSpace M']
  [IsTopologicalAddGroup M'] [ContinuousConstSMul R M']
  (rho' : Representation R G M') (u : M →ₗ[R] M') (hu : Continuous u)
  (hequiv : ∀ g m, u (rho g m) = rho' g (u m))

end MapPair

section RestrictionN

variable {H : Type*} [Group H] [TopologicalSpace H] (phi : H →* G)

variable (hphi : Continuous phi)
include hphi

end RestrictionN

section Tate

def normEnd [Finite G] : Module.End R M := ∑ᶠ g : G, rho g

def normSub [Finite G] : Submodule R (H0 rho) := (LinearMap.range (normEnd rho)).comap (H0 rho).subtype

abbrev tateH0 [Finite G] := H0 rho ⧸ normSub rho

end Tate

end

end CohA

section Coh

noncomputable section


variable {R : Type*} [CommRing R]
variable {G : Type*} [Group G] [TopologicalSpace G]
variable {M : Type*} [AddCommGroup M] [Module R M] [TopologicalSpace M]
  [IsTopologicalAddGroup M] [ContinuousConstSMul R M]

variable (rho : Representation R G M)

section Cup

variable {M' : Type*} [AddCommGroup M'] [Module R M'] [TopologicalSpace M']
  [IsTopologicalAddGroup M'] [ContinuousConstSMul R M']
  {P : Type*} [AddCommGroup P] [Module R P] [TopologicalSpace P]
  [IsTopologicalAddGroup P] [ContinuousConstSMul R P]
  (rho' : Representation R G M') (rhoP : Representation R G P)
  (b : M →ₗ[R] M' →ₗ[R] P) (hb : Continuous fun p : M × M' => b p.1 p.2)
  (hbe : ∀ g x y, b (rho g x) (rho' g y) = rhoP g (b x y))

section CupZ11

include hb hbe

end CupZ11

include hb hbe

end Cup

section Local

variable {I : Type*} {D : I → Type*} [∀ i, Group (D i)] [∀ i, TopologicalSpace (D i)]
  (phi : ∀ i, D i →* G) (hphi : ∀ i, Continuous (phi i))

abbrev LocCond := ∀ i, Submodule R (H1 (rho.comp (phi i)))

def Sel (L : LocCond rho phi) : Submodule R (H1 rho) :=
  ⨅ i, (L i).comap (resH1 rho (phi i) (hphi i))

end Local

section Inertia

variable {D : Type*} [Group D] [TopologicalSpace D] (rhoD : Representation R D M)
  (J : Subgroup D)

def H1ur : Submodule R (H1 rhoD) :=
  LinearMap.ker (resH1 rhoD J.subtype continuous_subtype_val)

end Inertia

end

end Coh

section NatCoh

variable {R : Type*} [CommRing R] {G : Type*} [Group G] [TopologicalSpace G]
  {M : Type*} [AddCommGroup M] [Module R M] [TopologicalSpace M]
  [IsTopologicalAddGroup M] [ContinuousConstSMul R M]
  {M' : Type*} [AddCommGroup M'] [Module R M'] [TopologicalSpace M']
  [IsTopologicalAddGroup M'] [ContinuousConstSMul R M']
  (rho : Representation R G M) (rho' : Representation R G M') (u : M →ₗ[R] M') (hu : Continuous u)
  (hequiv : ∀ g m, u (rho g m) = rho' g (u m))

variable {I : Type*} {Dl : I → Type*} [∀ i, Group (Dl i)] [∀ i, TopologicalSpace (Dl i)]
  (phis : ∀ i, Dl i →* G) (hphis : ∀ i, Continuous (phis i))

end NatCoh

instance (priority := 100) continuousConstSMul_of_discrete {R M : Type*} [SMul R M]
    [TopologicalSpace M] [DiscreteTopology M] : ContinuousConstSMul R M :=
  ⟨fun _ => continuous_of_discreteTopology⟩

section Coeff

variable {R : Type*} [CommRing R] {Γ : Type*} [Group Γ]
  {M : Type*} [AddCommGroup M] [Module R M]

def charRep (χ : Γ →* Rˣ) : Representation R Γ R where
  toFun g := ((χ g : Rˣ) : R) • LinearMap.id
  map_one' := by ext; simp
  map_mul' g h := by ext; simp [mul_comm]

@[simp] theorem charRep_apply (χ : Γ →* Rˣ) (g : Γ) (x : R) :
    charRep χ g x = ((χ g : Rˣ) : R) * x := rfl


end Coeff

section Cup

variable {R : Type*} [CommRing R] [TopologicalSpace R] [DiscreteTopology R]
  {Γ : Type*} [Group Γ] {M : Type*} [AddCommGroup M] [Module R M]
  [TopologicalSpace M] [DiscreteTopology M]

variable {D : Type*} [Group D] [TopologicalSpace D]
  (χ : Γ →* Rˣ) (rho : Representation R Γ M) (φ : D →* Γ)

end Cup

section NatMaps

variable {R : Type*} [CommRing R] [TopologicalSpace R] [DiscreteTopology R]
  {Γ : Type*} [Group Γ] [TopologicalSpace Γ] (χ : Γ →* Rˣ)
  {M : Type*} [AddCommGroup M] [Module R M] [TopologicalSpace M] [DiscreteTopology M]
  {M' : Type*} [AddCommGroup M'] [Module R M'] [TopologicalSpace M'] [DiscreteTopology M']
  (rho : Representation R Γ M) (rho' : Representation R Γ M') (u : M →ₗ[R] M')
  (hequiv : ∀ g m, u (rho g m) = rho' g (u m))

variable {I : Type*} {Dl : I → Type*} [∀ i, Group (Dl i)] [∀ i, TopologicalSpace (Dl i)]
  (phis : ∀ i, Dl i →* Γ) (hphis : ∀ i, Continuous (phis i))

end NatMaps

section Cyc

variable (K L : Type*) [Field K] [Field L] [Algebra K L] [IsAlgClosed L] [CharZero L]
  (n : ℕ) [NeZero n]

def cycN : (L ≃ₐ[K] L) →* (ZMod n)ˣ :=
  (modularCyclotomicCharacter L (HasEnoughRootsOfUnity.natCard_rootsOfUnity L n)).comp
    (MulSemiringAction.toRingAut (L ≃ₐ[K] L) L)


variable {K L n} in
theorem cycN_spec (σ : L ≃ₐ[K] L) (ζ : L) (h : ζ ^ n = 1) :
    σ ζ = ζ ^ ((cycN K L n σ : ZMod n)).val := by
  have hz : ζ ≠ 0 := by
    rintro rfl
    simp [NeZero.ne n] at h
  have ht : Units.mk0 ζ hz ∈ rootsOfUnity n L := by
    rw [mem_rootsOfUnity]; ext; simp [h]
  have := modularCyclotomicCharacter.spec L (HasEnoughRootsOfUnity.natCard_rootsOfUnity L n)
    (MulSemiringAction.toRingAut (L ≃ₐ[K] L) L σ) ht
  simpa [cycN] using this

end Cyc

section Local

variable (p : ℕ) [Fact p.Prime] (K : IntermediateField ℚ_[p] (PadicAlgCl p))

abbrev GK : Type := PadicAlgCl p ≃ₐ[K] PadicAlgCl p

def inertiaSet : Set (GK p K) := {σ | ∀ x : PadicAlgCl p, ‖x‖ ≤ 1 → ‖σ x - x‖ < 1}

def inertiaK : Subgroup (GK p K) := Subgroup.closure (inertiaSet p K)

abbrev cycK (n : ℕ) [NeZero n] : GK p K →* (ZMod n)ˣ := cycN K (PadicAlgCl p) n

variable {p K}


variable (p) in
def KbarMult : Type := Additive (PadicAlgCl p)ˣ

instance : AddCommGroup (KbarMult p) := inferInstanceAs (AddCommGroup (Additive (PadicAlgCl p)ˣ))
instance : TopologicalSpace (KbarMult p) := ⊥
instance : DiscreteTopology (KbarMult p) := ⟨rfl⟩


variable (p K) in
def kbarRep : Representation ℤ (GK p K) (KbarMult p) where
  toFun σ := AddMonoidHom.toIntLinearMap
    (MonoidHom.toAdditive (Units.map (σ : PadicAlgCl p →* PadicAlgCl p)))
  map_one' := by
    apply LinearMap.ext; intro x
    apply Units.ext
    rfl
  map_mul' σ τ := by
    apply LinearMap.ext; intro x
    apply Units.ext
    rfl

abbrev QZ : Type := ℚ ⧸ (Int.castAddHom ℚ).range

end Local

def LocalInvariantIsomorphism : Prop := ∀ (p : ℕ) [Fact p.Prime] (K : IntermediateField ℚ_[p] (PadicAlgCl p)),
  FiniteDimensional ℚ_[p] K →
    Nonempty (H2 (kbarRep p K) ≃ₗ[ℤ] QZ) ∧
    ∀ (n : ℕ) [NeZero n], Nonempty (H2 (charRep (cycK p K n)) ≃ₗ[ZMod n] ZMod n)

section Global

open Formalism.ConjugateSelfDual (G IsPlaceOver Inertia)

variable {F Ω : Type} [Field F] [NumberField F] [Field Ω] [Algebra F Ω]

variable (F) in
def DecInf (j : Ω →+* ℂ) : Subgroup (G F Ω) where
  carrier := {σ | (∀ x, j (σ x) = j x) ∨ ∀ x, j (σ x) = starRingEnd ℂ (j x)}
  one_mem' := Or.inl fun x => rfl
  mul_mem' := by
    rintro σ τ (hσ | hσ) (hτ | hτ)
    · exact Or.inl fun x => by simp only [AlgEquiv.mul_apply, hσ, hτ]
    · exact Or.inr fun x => by simp only [AlgEquiv.mul_apply, hσ, hτ]
    · exact Or.inr fun x => by simp only [AlgEquiv.mul_apply, hσ, hτ]
    · exact Or.inl fun x => by simp only [AlgEquiv.mul_apply, hσ, hτ, Complex.conj_conj]
  inv_mem' := by
    rintro σ (hσ | hσ)
    · refine Or.inl fun x => ?_
      have := hσ (σ⁻¹ x)
      rw [show σ (σ⁻¹ x) = x from by simp] at this
      exact this.symm
    · refine Or.inr fun x => ?_
      have := hσ (σ⁻¹ x)
      rw [show σ (σ⁻¹ x) = x from by simp] at this
      rw [this, Complex.conj_conj]

theorem mem_DecInf (j : Ω →+* ℂ) (σ : G F Ω) :
    σ ∈ DecInf F j ↔ (∀ x, j (σ x) = j x) ∨ ∀ x, j (σ x) = starRingEnd ℂ (j x) := Iff.rfl

instance finite_DecInf (j : Ω →+* ℂ) : Finite (DecInf F j) := by
  classical
  refine Finite.of_injective (fun σ : DecInf F j => decide (∀ x, j (σ.1 x) = j x)) ?_
  intro σ τ h
  have hiff : (∀ x, j (σ.1 x) = j x) ↔ ∀ x, j (τ.1 x) = j x := by simpa using h
  have hσ := (mem_DecInf j σ.1).1 σ.2
  have hτ := (mem_DecInf j τ.1).1 τ.2
  apply Subtype.ext
  apply AlgEquiv.ext
  intro x
  apply j.injective
  by_cases h1 : ∀ x, j (σ.1 x) = j x
  · rw [h1 x, hiff.1 h1 x]
  · have h2 : ¬ ∀ x, j (τ.1 x) = j x := fun h' => h1 (hiff.2 h')
    rw [hσ.resolve_left h1 x, hτ.resolve_left h2 x]

section unram

variable (S : Set (HeightOneSpectrum (𝓞 F)))


variable (Ω) in
def NS : Subgroup (G F Ω) :=
  (Subgroup.normalClosure
    (⋃ v ∈ Sᶜ, ⋃ A ∈ {A : ValuationSubring Ω | IsPlaceOver A v}, Inertia (F := F) A)
    ).topologicalClosure

instance normal_NS : (NS Ω S).Normal := by
  unfold NS; exact Subgroup.is_normal_topologicalClosure _


variable (Ω) in
abbrev GS := G F Ω ⧸ NS Ω S


variable (Ω) in
def toGS : G F Ω →* GS Ω S := QuotientGroup.mk' (NS Ω S)

variable (Ω) in
theorem continuous_toGS : Continuous (toGS Ω S) := QuotientGroup.continuous_mk

end unram


variable (F Ω) in
def cycG [IsAlgClosure F Ω] (n : ℕ) [NeZero n] : G F Ω →* (ZMod n)ˣ :=
  haveI : IsAlgClosed Ω := IsAlgClosure.isAlgClosed F
  haveI : CharZero Ω := charZero_of_injective_algebraMap (algebraMap F Ω).injective
  cycN F Ω n


variable (F Ω) in
structure GData [IsAlgClosure F Ω] (S : Finset (HeightOneSpectrum (𝓞 F))) (n : ℕ) [NeZero n] where

  A : S → ValuationSubring Ω
  hA : ∀ v, IsPlaceOver (A v) v.1

  J : InfinitePlace F → (Ω →+* ℂ)
  hJ : ∀ w, InfinitePlace.mk ((J w).comp (algebraMap F Ω)) = w

  chi : GS Ω (S : Set (HeightOneSpectrum (𝓞 F))) →* (ZMod n)ˣ
  hchi : chi.comp (toGS Ω _) = cycG F Ω n

variable [IsAlgClosure F Ω] {S : Finset (HeightOneSpectrum (𝓞 F))} {n : ℕ} [NeZero n]

def locGrp (D : GData F Ω S n) : S ⊕ InfinitePlace F → Subgroup (G F Ω) :=
  Sum.elim (fun v => (D.A v).decompositionSubgroup F) (fun w => DecInf F (D.J w))

def locHom (D : GData F Ω S n) (i : S ⊕ InfinitePlace F) :
    locGrp D i →* GS Ω (S : Set (HeightOneSpectrum (𝓞 F))) :=
  (toGS Ω _).comp (locGrp D i).subtype

theorem continuous_locHom (D : GData F Ω S n) (i : S ⊕ InfinitePlace F) :
    Continuous (locHom D i) :=
  (continuous_toGS Ω _).comp continuous_subtype_val

abbrev locF (D : GData F Ω S n) (v : S) := locHom D (Sum.inl v)

theorem continuous_locF (D : GData F Ω S n) (v : S) : Continuous (locF D v) :=
  continuous_locHom D _

abbrev locI (D : GData F Ω S n) (w : InfinitePlace F) := locHom D (Sum.inr w)

instance finite_locGrp_inr (D : GData F Ω S n) (w : InfinitePlace F) :
    Finite (locGrp D (Sum.inr w)) :=
  inferInstanceAs (Finite (DecInf F (D.J w)))

end Global

section PTMaps

variable {F Ω : Type} [Field F] [NumberField F] [Field Ω] [Algebra F Ω] [IsAlgClosure F Ω]
  {S : Finset (HeightOneSpectrum (𝓞 F))} {n : ℕ} [NeZero n] (D : GData F Ω S n)
  {M : Type} [AddCommGroup M] [Module (ZMod n) M] [TopologicalSpace M] [DiscreteTopology M]
  (rho : Representation (ZMod n) (GS Ω (S : Set (HeightOneSpectrum (𝓞 F)))) M)

def PTCase (F : Type) [Field F] [NumberField F] (n : ℕ) : Prop :=
  Odd n ∨ InfinitePlace.nrRealPlaces F = 0

def Recip (inv : ∀ v : S, H2 ((charRep D.chi).comp (locF D v)) →ₗ[ZMod n] ZMod n) : Prop :=
  ∀ c : H2 (charRep D.chi),
    ∑ v : S, inv v (resH2 (charRep D.chi) (locF D v) (continuous_locF D v) c) = 0

variable (inv : ∀ v : S, H2 ((charRep D.chi).comp (locF D v)) →ₗ[ZMod n] ZMod n)

end PTMaps

section PTMapsAll

variable {F Ω : Type} [Field F] [NumberField F] [Field Ω] [Algebra F Ω] [IsAlgClosure F Ω]
  {S : Finset (HeightOneSpectrum (𝓞 F))} {n : ℕ} [NeZero n] (D : GData F Ω S n)
  {M : Type} [AddCommGroup M] [Module (ZMod n) M] [TopologicalSpace M] [DiscreteTopology M]
  (rho : Representation (ZMod n) (GS Ω (S : Set (HeightOneSpectrum (𝓞 F)))) M)

abbrev P0 := (∀ v : S, H0 (rho.comp (locF D v))) × (∀ w : InfinitePlace F, tateH0 (rho.comp (locI D w)))

variable (inv : ∀ i : S ⊕ InfinitePlace F, H2 ((charRep D.chi).comp (locHom D i)) →ₗ[ZMod n] ZMod n)

end PTMapsAll

section PTFam

variable {F Ω : Type} [Field F] [NumberField F] [Field Ω] [Algebra F Ω] [IsAlgClosure F Ω]
  {S : Finset (HeightOneSpectrum (𝓞 F))} {n : ℕ} [NeZero n] (D : GData F Ω S n)

variable {M : Type} [AddCommGroup M] [Module (ZMod n) M] [TopologicalSpace M] [DiscreteTopology M]
  (rho : Representation (ZMod n) (GS Ω (S : Set (HeightOneSpectrum (𝓞 F)))) M)
  (hrho : ContAction rho)

end PTFam

section LubinTate

variable (p : ℕ) [Fact p.Prime] (K : IntermediateField ℚ_[p] (PadicAlgCl p))

def intK : Subring (PadicAlgCl p) where
  carrier := {x | x ∈ K ∧ ‖x‖ ≤ 1}
  mul_mem' := by
    rintro a b ⟨ha, ha'⟩ ⟨hb, hb'⟩
    refine ⟨K.mul_mem ha hb, ?_⟩
    rw [norm_mul]
    exact mul_le_one₀ ha' (norm_nonneg _) hb'
  one_mem' := ⟨K.one_mem, by simp⟩
  add_mem' := by
    rintro a b ⟨ha, ha'⟩ ⟨hb, hb'⟩
    exact ⟨K.add_mem ha hb, (IsUltrametricDist.norm_add_le_max _ _).trans (max_le ha' hb')⟩
  zero_mem' := ⟨K.zero_mem, by simp⟩
  neg_mem' := by
    rintro a ⟨ha, ha'⟩
    exact ⟨K.neg_mem ha, by rwa [norm_neg]⟩

abbrev OK : Type := intK p K

variable {p K}

def IsUnif (π : OK p K) : Prop :=
  ‖(π : PadicAlgCl p)‖ < 1 ∧ ∀ x : OK p K, ‖(x : PadicAlgCl p)‖ < 1 → ∃ y : OK p K, x = π * y

def resCard (π : OK p K) : ℕ := Nat.card (OK p K ⧸ Ideal.span {π})

end LubinTate

section FGL

variable {R : Type} [CommRing R]

end FGL

section Division

variable {p : ℕ} [Fact p.Prime] {K : IntermediateField ℚ_[p] (PadicAlgCl p)}

def ltPoly (π : OK p K) : Polynomial (PadicAlgCl p) :=
  Polynomial.X ^ resCard π + Polynomial.C (π : PadicAlgCl p) * Polynomial.X

end Division

section LTRecip

open ValuativeRel

variable (K : Type) [Field K] [ValuativeRel K] [TopologicalSpace K]

end LTRecip


section Hecke

variable (K : Type) [Field K] [NumberField K]

variable {K}

def infComp (x : Ideles K) (v : InfinitePlace K) : v.Completion := (x : AdeleRing (𝓞 K) K).1 v

def finComp (x : Ideles K) (v : HeightOneSpectrum (𝓞 K)) : v.adicCompletion K :=
  (x : AdeleRing (𝓞 K) K).2 v

def embC (σ : K →+* ℂ) : (InfinitePlace.mk σ).Completion →+* ℂ := by
  classical
  exact if σ = (InfinitePlace.mk σ).embedding then InfinitePlace.Completion.extensionEmbedding _
    else (starRingEnd ℂ).comp (InfinitePlace.Completion.extensionEmbedding _)

end Hecke

theorem contAction_trivial {R G M : Type*} [CommRing R] [Group G] [TopologicalSpace G]
    [AddCommGroup M] [Module R M] [TopologicalSpace M] :
    ContAction (Representation.trivial R G M) :=
  continuous_snd

end Neutral.B1
