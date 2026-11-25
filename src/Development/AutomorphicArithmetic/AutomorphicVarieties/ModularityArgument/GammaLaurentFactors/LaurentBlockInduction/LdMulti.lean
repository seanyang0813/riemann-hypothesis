module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdDefs
public import GroundTheory.AutomorphicForms.GL2.GJFELeviConv
public import GroundTheory.AutomorphicForms.GL2.GJFEBlock
public import GroundTheory.AutomorphicForms.GL2.GJFELeviMulti
import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup

@[expose] public section

noncomputable section

open MeasureTheory Measure GroundTheory GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Parabolic
open GroundTheory.Automorphic.GodementJacquet
open scoped NNReal ENNReal Classical ValuativeRel

namespace UpperTheory.V.Z.Gam

theorem ldShape_one (q : ℂ) : LdShape q 1 0 := ⟨1, 1, 0, by simp, by simp, one_ne_zero, by simp⟩

theorem ldShape_mul {q : ℂ} {γ₁ γ₂ : RatFunc ℂ} {k₁ k₂ : ℕ} (h₁ : LdShape q γ₁ k₁) (h₂ : LdShape q γ₂ k₂) :
    LdShape q (γ₁ * γ₂) (k₁ + k₂) := by
  obtain ⟨P₁, c₁, j₁, he₁, hd₁, hc₁, rfl⟩ := h₁
  obtain ⟨P₂, c₂, j₂, he₂, hd₂, hc₂, rfl⟩ := h₂
  have hP₁ : P₁ ≠ 0 := by
    rintro rfl
    simp at he₁
  have hP₂ : P₂ ≠ 0 := by
    rintro rfl
    simp at he₂
  refine ⟨P₁ * P₂, c₁ * c₂, j₁ + j₂, by simp [he₁, he₂], ?_, mul_ne_zero hc₁ hc₂, ?_⟩
  · rw [Polynomial.natDegree_mul hP₁ hP₂, hd₁, hd₂]
  · rw [div_mul_div_comm, Polynomial.mul_comp, map_mul, map_mul, map_mul,
      zpow_add₀ RatFunc.X_ne_zero]
    ring

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]
  [∀ n : ℕ, MeasurableSpace (GL (Fin n) F)] [∀ n : ℕ, BorelSpace (GL (Fin n) F)]
  {W : Type} [AddCommGroup W] [Module ℂ W]

variable (F W) in
def LdMulti (ψ : AddChar F Circle) (r : ℕ) : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι], Fintype.card ι = r →
  ∀ (d : ι → ℕ) [∀ i, NeZero (d i)] (μ : ∀ i, Measure (GL (Fin (d i)) F))
    [∀ i, (μ i).IsHaarMeasure]
    (H : Type) [Group H] [TopologicalSpace H] [IsTopologicalGroup H]
    [LocallyCompactSpace H] [T2Space H] [TotallyDisconnectedSpace H] [SecondCountableTopology H]
    (ρ : Representation ℂ ((∀ i, GL (Fin (d i)) F) × H) W), IsAdmissible ρ → ρ.IsIrreducible →
    ∀ α : ι → ℂ, (∀ i, α i ≠ 0) →
      (∀ i v, ρ (Pi.mulSingle i (centralUnif F (d i)), 1) v = α i • v) →
      (∀ v : W, ∀ ℓ ∈ smoothVectors (Representation.dual ρ),
        ∃ C : Set (∀ i, GL (Fin (d i)) F), IsCompact C ∧
          ∀ x, ℓ (ρ (x, 1) v) ≠ 0 → ∃ j : ι → ℤ, (fun i => centralUnif F (d i) ^ j i) * x ∈ C) →
    ∃ γ : RatFunc ℂ, LdShape ((GroundTheory.LocalField.residueCard F : ℕ) : ℂ) γ
        (∑ i, if d i = 1 ∧ ∀ g ∈ integralGL F (d i), ρ (Pi.mulSingle i g, 1) = 1 then 1 else 0) ∧
      ∀ Ψ : ∀ i, Matrix (Fin (d i)) (Fin (d i)) F → ℂ,
      (∀ i, IsSchwartzBruhat (Ψ i)) → ∀ w : W, ∀ ℓ ∈ smoothVectors (Representation.dual ρ),
        RatFE F γ (fun s => ∫ x, multiA ρ Ψ w ℓ s x ∂Measure.pi μ)
          (fun s => ∫ x, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s x
            ∂Measure.pi μ)

theorem ldMulti_all (hB : LdBlock) {ψ : AddChar F Circle} (hψ : Continuous ψ) (hψ1 : ψ ≠ 1) :
    ∀ r, LdMulti F W ψ r := by
  intro r ι _ _ hcard d _ μ _ H _ _ _ _ _ _ _ ρ hadm hirr α hα0 hα hsupp
  obtain ⟨γ, hsh, hfe⟩ := multiFEStatement_all.{0, 0, 0} (M := Multiplicative ℕ)
    (PH := fun H _ => SecondCountableTopology H)
    (Shape := fun γ k => LdShape ((GroundTheory.LocalField.residueCard F : ℕ) : ℂ) γ (Multiplicative.toAdd k))
    (wt := fun m _ h => Multiplicative.ofAdd (if m = 1 ∧ h then 1 else 0))
    (by simpa using ldShape_one _)
    (fun h₁ h₂ => by simpa [toAdd_mul] using ldShape_mul h₁ h₂)
    (fun _ _ _ _ _ _ h => have := h; inferInstance)
    (fun _ _ _ _ h => have := h; inferInstance)
    hψ hψ1
    (fun m _ μ₀ _ H₁ _ _ _ _ _ _ hSC ρ₁ hadm₁ hirr₁ α₁ hα₁0 hα₁ hsupp₁ γa hfe => by
      simpa using @hB F _ _ _ _ _ _ m _ _ _ μ₀ _ H₁ _ _ _ _ _ _ hSC W _ _ ρ₁ hadm₁ hirr₁ α₁ hα₁0 hα₁ hsupp₁
        ψ hψ hψ1 γa hfe)
    r ι hcard d μ H inferInstance ρ hadm hirr α hα0 hα hsupp
  refine ⟨γ, ?_, hfe⟩
  simpa [← ofAdd_sum] using hsh

end UpperTheory.V.Z.Gam
