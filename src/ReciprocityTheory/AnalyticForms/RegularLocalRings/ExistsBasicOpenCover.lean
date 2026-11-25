module

public import ReciprocityTheory.AnalyticForms.RegularLocalRings.StalkLoc
public import ReciprocityTheory.AnalyticForms.RegularLocalRings.IsOpenAlt
public import Mathlib.AlgebraicGeometry.Noetherian
public import ReciprocityTheory.AnalyticForms.RegularLocalRings.ExistsMulMemOfAlgebraMapLocRingEqZero
public import ReciprocityTheory.AnalyticForms.RegularLocalRings.ClosureFromSpecMemCompsH

@[expose] public section

namespace ReciprocityTheory.AnForm.R

open AlgebraicGeometry CategoryTheory MvPolynomial TopologicalSpace IrreducibleComponentPreimages

noncomputable section

section Top

variable {α : Type*} [TopologicalSpace α]

def comps (T : Set α) : Set (Set α) :=
  {C | Maximal (fun C => IsIrreducible C ∧ C ⊆ T) C}

private theorem isIrreducible_preimage_coe_of_subset (T D : Set α) (hDT : D ⊆ T) (hD : IsIrreducible D) :
    IsIrreducible ((↑) ⁻¹' D : Set T) := by
  refine ⟨?_, ?_⟩
  · obtain ⟨y, hy⟩ := hD.1
    exact ⟨⟨y, hDT hy⟩, hy⟩
  · intro u v hu hv hau hbv
    obtain ⟨u', hu', rfl⟩ := isOpen_induced_iff.1 hu
    obtain ⟨v', hv', rfl⟩ := isOpen_induced_iff.1 hv
    obtain ⟨a, ha, hau⟩ := hau
    obtain ⟨b, hb, hbv⟩ := hbv
    obtain ⟨c, hc, hcu, hcv⟩ := hD.2 u' v' hu' hv' ⟨a.1, ha, hau⟩ ⟨b.1, hb, hbv⟩
    exact ⟨⟨c, hDT hc⟩, hc, hcu, hcv⟩

theorem comps_finite [NoetherianSpace α] (T : Set α) : (comps T).Finite := by
  have hfin : (irreducibleComponents T).Finite := NoetherianSpace.finite_irreducibleComponents
  refine (hfin.image (fun S : Set T => ((↑) '' S : Set α))).subset ?_
  intro C hC
  have hC' : Maximal (fun C => IsIrreducible C ∧ C ⊆ T) C := hC
  have himg : ((↑) '' ((↑) ⁻¹' C : Set T) : Set α) = C := by
    rw [Subtype.image_preimage_coe, Set.inter_eq_right.2 hC'.1.2]
  refine ⟨(↑) ⁻¹' C, ⟨isIrreducible_preimage_coe_of_subset T C hC'.1.2 hC'.1.1, fun S hS hCS => ?_⟩, himg⟩
  have hSI : IsIrreducible ((↑) '' S : Set α) := hS.image _ continuous_subtype_val.continuousOn
  have hle := hC'.2 ⟨hSI, by rintro _ ⟨z, -, rfl⟩; exact z.2⟩
    (by rw [← himg]; exact Set.image_mono hCS)
  intro z hz
  exact hle ⟨z, hz, rfl⟩

theorem isClosed_of_mem_comps {T : Set α} (hT : IsClosed T) {C : Set α} (hC : C ∈ comps T) :
    IsClosed C := by
  have hC' : Maximal (fun C => IsIrreducible C ∧ C ⊆ T) C := hC
  have hcl : closure C ≤ C := hC'.2 ⟨hC'.1.1.closure, closure_minimal hC'.1.2 hT⟩ subset_closure
  exact closure_subset_iff_isClosed.1 hcl

theorem sUnion_comps (T : Set α) : ⋃₀ comps T = T := by
  refine Set.Subset.antisymm (Set.sUnion_subset fun C hC => hC.1.2) fun x hx => ?_
  let y : T := ⟨x, hx⟩
  have hI : IsIrreducible (irreducibleComponent y) := isIrreducible_irreducibleComponent
  refine ⟨(↑) '' irreducibleComponent y,
    ⟨⟨hI.image _ continuous_subtype_val.continuousOn, by rintro _ ⟨z, -, rfl⟩; exact z.2⟩, ?_⟩,
    ⟨y, mem_irreducibleComponent, rfl⟩⟩
  intro D hD hCD
  have hpre := isIrreducible_preimage_coe_of_subset T D hD.2 hD.1
  have hsub : irreducibleComponent y ⊆ (↑) ⁻¹' D := fun z hz => hCD ⟨z, hz, rfl⟩
  have hle := (irreducibleComponent_mem_irreducibleComponents y).2 hpre hsub
  intro d hd
  exact ⟨⟨d, hD.2 hd⟩, hle hd, rfl⟩

end Top

variable {W : Scheme.{0}}

def IsBranch (T : Set W) {U : W.Opens} (f : Γ(W, U)) (y : W) (C : Set W) : Prop :=
  C ∈ comps T ∧ y ∈ C ∧ ∃ h : IsIrreducible C, h.genericPoint ∈ U ∧ h.genericPoint ∈ W.zeroLocus {f}

theorem existsUnique_branch [IsNoetherian W] {Z : W.IdealSheafData} (y : W) (U : W.affineOpens)
    (hy : y ∈ U.1) {n : ℕ} (f : Fin n → Γ(W, U.1)) (J : Finset (Fin n))
    [IsRegularLocalRing (W.presheaf.stalk y)]
    (hrsp : FinalTheorems.Rsp (W.presheaf.stalk y) n (fun i => W.presheaf.germ U.1 y hy (f i)))
    (hZU : Z.ideal U = Ideal.span {∏ i ∈ J, f i}) (i : Fin n) (hi : i ∈ J) :
    ∃! C, IsBranch (Z.support : Set W) (f i) y C := by
  exact existsUnique_branchH y U hy f J hrsp hZU i hi

theorem branch_ne [IsNoetherian W] {Z : W.IdealSheafData} (y : W) (U : W.affineOpens)
    (hy : y ∈ U.1) {n : ℕ} (f : Fin n → Γ(W, U.1)) (J : Finset (Fin n))
    [IsRegularLocalRing (W.presheaf.stalk y)]
    (hrsp : FinalTheorems.Rsp (W.presheaf.stalk y) n (fun i => W.presheaf.germ U.1 y hy (f i)))
    (hZU : Z.ideal U = Ideal.span {∏ i ∈ J, f i}) {i j : Fin n} (hi : i ∈ J) (hj : j ∈ J)
    (hij : i ≠ j) {C C' : Set W} (hC : IsBranch (Z.support : Set W) (f i) y C)
    (hC' : IsBranch (Z.support : Set W) (f j) y C') : C ≠ C' := by
  exact branch_neH y U hy f J hrsp hZU hi hj hij hC hC'

theorem exists_open_comps [IsNoetherian W] {Z : W.IdealSheafData} (y : W) (U : W.affineOpens)
    (hy : y ∈ U.1) {n : ℕ} (f : Fin n → Γ(W, U.1)) (J : Finset (Fin n))
    [IsRegularLocalRing (W.presheaf.stalk y)]
    (hrsp : FinalTheorems.Rsp (W.presheaf.stalk y) n (fun i => W.presheaf.germ U.1 y hy (f i)))
    (hZU : Z.ideal U = Ideal.span {∏ i ∈ J, f i}) :
    ∃ O : W.Opens, y ∈ O ∧ O ≤ U.1 ∧ ∀ C ∈ comps (Z.support : Set W),
      C ∩ O = {z ∈ (O : Set W) | ∃ i ∈ J, IsBranch (Z.support : Set W) (f i) y C ∧
        z ∈ W.zeroLocus {f i}} := by
  exact exists_open_compsH y U hy f J hrsp hZU

section Chart

variable {s : W ⟶ Spec (.of ℂ)}

end Chart

end

end ReciprocityTheory.AnForm.R
