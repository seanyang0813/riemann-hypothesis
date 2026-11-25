module

public import Mathlib.RingTheory.Etale.Basic
public import Mathlib.RingTheory.Etale.Kaehler
public import Mathlib.RingTheory.TensorProduct.Free

@[expose] public section

namespace FunctorialResolution.EmbeddedResolution
namespace EtaleCoordinates

variable (k : Type*) [CommRing k] (ι : Type*) (S : Type*) [CommRing S]

section

variable [Algebra (MvPolynomial ι k) S]

noncomputable def coord (i : ι) : S := algebraMap (MvPolynomial ι k) S (MvPolynomial.X i)

theorem coord_def (i : ι) :
    coord k ι S i = algebraMap (MvPolynomial ι k) S (MvPolynomial.X i) := rfl

end

section

variable [Algebra (MvPolynomial ι k) S] [Algebra k S]
  [IsScalarTower k (MvPolynomial ι k) S] [Algebra.FormallyEtale (MvPolynomial ι k) S]

include ι

theorem exists_basisKaehler :
    ∃ b : Module.Basis ι S (KaehlerDifferential k S),
      ∀ i : ι, b i = KaehlerDifferential.D k S (coord k ι S i) := by
  have h : IsBaseChange S (KaehlerDifferential.map k k (MvPolynomial ι k) S) :=
    KaehlerDifferential.isBaseChange_of_formallyEtale k (MvPolynomial ι k) S
  refine ⟨(Algebra.TensorProduct.basis S
    (KaehlerDifferential.mvPolynomialBasis k ι)).map h.equiv, fun i => ?_⟩
  simp only [Module.Basis.map_apply, Algebra.TensorProduct.basis_apply,
    KaehlerDifferential.mvPolynomialBasis_apply, IsBaseChange.equiv_tmul, one_smul,
    KaehlerDifferential.map_D]
  rfl

noncomputable def basisKaehler : Module.Basis ι S (KaehlerDifferential k S) :=
  (exists_basisKaehler k ι S).choose

@[simp] theorem basisKaehler_apply (i : ι) :
    basisKaehler k ι S i = KaehlerDifferential.D k S (coord k ι S i) :=
  (exists_basisKaehler k ι S).choose_spec i

noncomputable def partialDeriv (i : ι) : Derivation k S S :=
  ((basisKaehler k ι S).coord i).compDer (KaehlerDifferential.D k S)

noncomputable def partialDerivLinear (i : ι) : S →ₗ[k] S :=
  (partialDeriv k ι S i).toLinearMap

theorem partialLinear_leibniz (i : ι) :
    ∀ a b : S, partialDerivLinear k ι S i (a * b)
      = a • partialDerivLinear k ι S i b + b • partialDerivLinear k ι S i a :=
  (partialDeriv k ι S i).leibniz

theorem partialDeriv_apply (i : ι) (s : S) :
    partialDeriv k ι S i s = (basisKaehler k ι S).repr (KaehlerDifferential.D k S s) i := rfl

@[simp] theorem partialDeriv_coord [DecidableEq ι] (i j : ι) :
    partialDeriv k ι S i (coord k ι S j) = if i = j then (1 : S) else 0 := by
  rw [partialDeriv_apply, ← basisKaehler_apply k ι S j, Module.Basis.repr_self,
    Finsupp.single_apply]
  exact if_congr eq_comm rfl rfl

theorem partialDeriv_coord_self (i : ι) :
    partialDeriv k ι S i (coord k ι S i) = 1 := by
  rw [partialDeriv_apply, ← basisKaehler_apply k ι S i, Module.Basis.repr_self,
    Finsupp.single_eq_same]

theorem partialDeriv_coord_of_ne (i j : ι) (h : i ≠ j) :
    partialDeriv k ι S i (coord k ι S j) = 0 := by
  classical
  rw [partialDeriv_coord k ι S i j, ite_eq_right h]

omit [Algebra (MvPolynomial ι k) S] [IsScalarTower k (MvPolynomial ι k) S]
  [Algebra.FormallyEtale (MvPolynomial ι k) S] in
private theorem sum_smul_derivation_apply (c : ι → S) (f : ι → Derivation k S S)
    (s : S) (t : Finset ι) :
    (∑ i ∈ t, c i • f i) s = ∑ i ∈ t, c i * f i s := by
  induction t using Finset.cons_induction_on
  · simp
  · rename_i a u hu ih
    rw [Finset.sum_cons, Finset.sum_cons, ← ih]
    rfl

theorem eq_sum_smul_partialDeriv [Fintype ι] (D : Derivation k S S) :
    D = ∑ i : ι, D (coord k ι S i) • partialDeriv k ι S i := by
  ext s
  have hsum : (∑ i : ι, D (coord k ι S i) • partialDeriv k ι S i) s
      = ∑ i : ι, D (coord k ι S i) * partialDeriv k ι S i s :=
    sum_smul_derivation_apply k ι S (fun i => D (coord k ι S i))
      (partialDeriv k ι S) s Finset.univ
  rw [hsum]
  have h1 : D s = D.liftKaehlerDifferential (KaehlerDifferential.D k S s) := by
    rw [Derivation.liftKaehlerDifferential_comp_D]
  have h2 : KaehlerDifferential.D k S s
      = ∑ i : ι, (basisKaehler k ι S).repr (KaehlerDifferential.D k S s) i
          • basisKaehler k ι S i :=
    ((basisKaehler k ι S).sum_repr (KaehlerDifferential.D k S s)).symm

  rw [h1, h2, map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [map_smul, basisKaehler_apply, Derivation.liftKaehlerDifferential_comp_D, smul_eq_mul,
    ← partialDeriv_apply]
  exact mul_comm _ _

theorem span_range_partialDeriv [Finite ι] :
    Submodule.span S (Set.range (partialDeriv k ι S)) = (⊤ : Submodule S (Derivation k S S)) := by
  let _ : Fintype ι := Fintype.ofFinite ι
  refine Submodule.eq_top_iff'.mpr fun D => ?_
  rw [eq_sum_smul_partialDeriv k ι S D]
  exact sum_mem fun i _ =>
    Submodule.smul_mem _ _ (Submodule.subset_span (Set.mem_range_self i))

end

end EtaleCoordinates
end FunctorialResolution.EmbeddedResolution
