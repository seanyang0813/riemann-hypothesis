module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LeviSmoothLocalization.LeviBlockInduction.GxDefs
public import GroundTheory.AutomorphicForms.GL2.GJFELeviConv
public import GroundTheory.AutomorphicForms.GL2.GJFEBlock
public import GroundTheory.AutomorphicForms.GL2.GJFELeviMulti
import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup

@[expose] public section

noncomputable section

open MeasureTheory Measure GroundTheory GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Parabolic
open GroundTheory.Automorphic.GodementJacquet
open scoped NNReal ENNReal Classical ValuativeRel

namespace UpperTheory.V.Z.ImaginaryQuadraticEtaCharacter

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]
  [∀ n : ℕ, MeasurableSpace (GL (Fin n) F)] [∀ n : ℕ, BorelSpace (GL (Fin n) F)]
  {W : Type} [AddCommGroup W] [Module ℂ W]

variable (F W) in
def GxMulti (ψ : AddChar F Circle) (r : ℕ) : Prop :=
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
    ∃ γ : RatFunc ℂ, GxShape ((GroundTheory.LocalField.residueCard F : ℕ) : ℂ) γ
        (∏ i, if d i = 1 ∧ ∀ g ∈ integralGL F (d i), ρ (Pi.mulSingle i g, 1) = 1 then
          1 - Polynomial.C (α i) * Polynomial.X else 1) ∧
      ∀ Ψ : ∀ i, Matrix (Fin (d i)) (Fin (d i)) F → ℂ,
      (∀ i, IsSchwartzBruhat (Ψ i)) → ∀ w : W, ∀ ℓ ∈ smoothVectors (Representation.dual ρ),
        RatFE F γ (fun s => ∫ x, multiA ρ Ψ w ℓ s x ∂Measure.pi μ)
          (fun s => ∫ x, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s x
            ∂Measure.pi μ)

theorem gxMulti_all (hB : GxBlock) {ψ : AddChar F Circle} (hψ : Continuous ψ) (hψ1 : ψ ≠ 1) :
    ∀ r, GxMulti F W ψ r := fun r ι _ _ hcard d _ μ _ H _ _ _ _ _ _ _ ρ hadm hirr α hα0 hα hsupp =>
  multiFEStatement_all.{0, 0, 0} (M := Polynomial ℂ)
    (PH := fun H _ => SecondCountableTopology H)
    (Shape := GxShape ((GroundTheory.LocalField.residueCard F : ℕ) : ℂ))
    (wt := fun m a h => if m = 1 ∧ h then 1 - Polynomial.C a * Polynomial.X else 1)
    (gxShape_one _) gxShape_mul
    (fun _ _ _ _ _ _ h => have := h; inferInstance)
    (fun _ _ _ _ h => have := h; inferInstance)
    hψ hψ1
    (fun m _ μ₀ _ H₁ _ _ _ _ _ _ hSC ρ₁ hadm₁ hirr₁ α₁ hα₁0 hα₁ hsupp₁ γa hfe =>
      @hB F _ _ _ _ _ _ m _ _ _ μ₀ _ H₁ _ _ _ _ _ _ hSC W _ _ ρ₁ hadm₁ hirr₁ α₁ hα₁0 hα₁ hsupp₁
        ψ hψ hψ1 γa hfe)
    r ι hcard d μ H inferInstance ρ hadm hirr α hα0 hα hsupp

end UpperTheory.V.Z.ImaginaryQuadraticEtaCharacter
