module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.EtaleLocalizationAtPrimeTensorOfLowHeight
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst

@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar

open AlgebraicGeometry CategoryTheory NumberField MvPolynomial
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi
open GlobalTheory.CompanionTheory.Ar.Num
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg)

noncomputable section

variable (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Ω : Type} [Field Ω] [Algebra O Ω]
variable {K : Type} [Fintype K] {J : K → Type} [∀ k, Fintype (J k)]
variable {F : Type} [Field F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ}

structure IsPreFamily (x : (Σ k, J k) → Ω) (p : ℕ) (w : O) (σ : Sg → F →+* IsLocalRing.ResidueField O)
    (φ : Equiv.Perm Sg) (D : (∀ k, J k) → LieLatticeData Ω F n Sg r s) : Prop where
  famM : IsLatFamily O x fun c => (D c).M
  fam : ∀ τ, IsLatFamily O x (fun c => (D c).lie τ) ∧ IsLatFamily O x (fun c => (D c).W τ) ∧
    IsLatFamily O x (fun c => (D c).om τ) ∧ IsLatFamily O x (fun c => (D c).omHT τ) ∧
    IsLatFamily O x (fun c => (D c).Gam τ) ∧ IsLatFamily O x (fun c => (D c).Del τ) ∧
    IsLatFamily O x (fun c => (D c).Th τ)
  char : (p : O) ≠ 0 ∧ (∃ u : O, IsUnit u ∧ w ^ (p - 1) = u * (p : O)) ∧ ¬ IsUnit (p : O)
  base : ∀ c, mseg x c ≠ 0 → (D c).Base (chartRing O (mseg x) c) p (algebraMap O Ω w)
  test : ∀ c, mseg x c ≠ 0 → ∀ (C : Type) [Field C] [Algebra O C] [Algebra Ω C] [IsScalarTower O Ω C]
    (RC : Subalgebra O C), IsTestPt p (chartRing O (mseg x) c) RC → ∀ χ : Sg → F →*₀ C,
      (∀ τ a (o : O), IsLocalRing.residue O o = σ τ a →
        χ τ a - algebraMap O C o ∈ RC ∧ ∀ u ∈ RC, u * (χ τ a - algebraMap O C o) ≠ 1) →
      ((D c).bc RC).Facts RC p (algebraMap O C w) (fun τ a => χ τ a) φ

variable {X : Scheme.{0}} {ξ : Spec (CommRingCat.of Ω) ⟶ X} {V : Type} [AddCommGroup V] [Module Ω V]

def coordLat (y : (Σ k, J k) → Ω) (L : Lat ξ V) {m : ℕ} (b : Fin m → V) (c : ∀ k, J k) : AddSubgroup (Fin m → Ω) :=
  ⨅ (q : Cpt ξ) (_ : InChart ξ (mseg y) c q) (_ : ∀ o : O, algebraMap O Ω o ∈ regAt ξ q),
    (L q).toAddSubgroup.comap (Fintype.linearCombination Ω b).toAddMonoidHom

def IsFamilyOf (y : (Σ k, J k) → Ω) (D : (∀ k, J k) → LieLatticeData Ω F n Sg r s) (L L' Lc Lc' : Sg → Lat ξ V)
    (b : ∀ τ, Fin (r τ) → V) (bc : ∀ τ, Fin (s τ) → V) : Prop :=
  ∀ c, mseg y c ≠ 0 → ∀ τ, (D c).lie τ = coordLat O y (L τ) (b τ) c ∧ (D c).W τ = coordLat O y (L' τ) (b τ) c ∧
    (D c).om τ = dotDual (chartRing O (mseg y) c) (coordLat O y (Lc τ) (bc τ) c) ∧
    (D c).omHT τ = dotDual (chartRing O (mseg y) c) (coordLat O y (Lc' τ) (bc τ) c)

namespace Fam


omit [IsDomain O] [IsDiscreteValuationRing O] [∀ k, Fintype (J k)] in
theorem mem_coordLat_iff (y : (Σ k, J k) → Ω) (L : Lat ξ V) {m : ℕ} (b : Fin m → V) (c : ∀ k, J k) (a : Fin m → Ω) :
    a ∈ coordLat O y L b c ↔ ∀ q : Cpt ξ, InChart ξ (mseg y) c q → (∀ o : O, algebraMap O Ω o ∈ regAt ξ q) →
      ∑ i, a i • b i ∈ L q := by
  simp [coordLat, AddSubgroup.mem_iInf, Fintype.linearCombination_apply]



omit [IsDomain O] [IsDiscreteValuationRing O] [∀ k, Fintype (J k)] in
theorem chartRing_le_regAt (y : (Σ k, J k) → Ω) (c : ∀ k, J k) (q : Cpt ξ) (h1 : InChart ξ (mseg y) c q)
    (h2 : ∀ o : O, algebraMap O Ω o ∈ regAt ξ q) {a : Ω} (ha : a ∈ chartRing O (mseg y) c) : a ∈ regAt ξ q := by
  induction ha using Algebra.adjoin_induction with
  | mem t ht => obtain ⟨j, rfl⟩ := ht; exact h1.2 j
  | algebraMap o => exact h2 o
  | add s t _ _ hs ht => exact add_mem hs ht
  | mul s t _ _ hs ht => exact mul_mem hs ht





end Fam

end

end GlobalTheory.CompanionTheory.Ar
