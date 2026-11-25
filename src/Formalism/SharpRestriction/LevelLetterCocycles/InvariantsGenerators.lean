module

public import Formalism.SharpRestriction.LevelLetterCocycles.TableLineDegreeTwo
public import Formalism.SharpRestriction.LevelLetterCocycles.ExtensionClauses

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.InvariantsGenerators

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.tableLineDegreeTwo

section Core

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

def H0FixedPoints (W : LocWach PD LL O v n) : Prop :=
  ∀ T : LocLat G Qp LL O, Nonempty (↥(invariantLattice T) ≃ₗ[O] ↥(fixDD W T))

def FontCore (W : LocWach PD LL O v n) : Prop :=
  (∀ (T T' : LocLat G Qp LL O) (f : W.DD T →ₗ[W.EE] W.DD T'),
    (∀ x, f (W.φD T x) = W.φD T' (f x)) → (∀ g x, f (W.γD T g x) = W.γD T' g (f x)) →
      ∃! F : LatHom T.L T'.L, ∀ x, W.map F x = f x) ∧
  (∀ (T₀ T₁ T₂ : LocLat G Qp LL O) (ι : LatHom T₀.L T₁.L) (π : LatHom T₁.L T₂.L), IsSESLat (Qp := Qp) (O := O) ι π →
    Function.Injective (W.map ι) ∧ Function.Surjective (W.map π) ∧
      ∀ x, W.map π x = 0 ↔ ∃ y, W.map ι y = x) ∧
  (∃ ψ : W.EE →ₗ[O] W.EE, (∀ a x, ψ (W.φE a * x) = a * ψ x) ∧
    (∀ g x, ψ (W.γE g x) = W.γE g (ψ x)) ∧
    (∀ j < PD.p, ∀ a, ψ (algebraMap (LetA O n) W.EE (1 + letπ) ^ j * W.φE a) = if j = 0 then a else 0) ∧
    ∀ x, ∃ c : Fin PD.p → W.EE, x = ∑ j : Fin PD.p, algebraMap (LetA O n) W.EE (1 + letπ) ^ (j : ℕ) * W.φE (c j)) ∧
  ∀ T : LocLat G Qp LL O, ∃ ψ : W.DD T →ₗ[O] W.DD T, (∀ x, ψ (W.φD T x) = x) ∧
    (∀ (a : W.EE) x, ψ (W.φE a • x) = a • ψ x) ∧ ∀ g x, ψ (W.γD T g x) = W.γD T g (ψ x)

end Core

def H0InvariantsUnramified (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hA : CaseA K LL), H0FixedPoints ((HW l).W K 1 LL hA.2.2)

def LitFont (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hA : CaseA K LL), FontCore ((HW l).W K 1 LL hA.2.2)

def HerrExtensionEtale (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hA : CaseA K LL),
    Formalism.MainNotions.tableLineDegreeTwo.HerrExt ((HW l).W K 1 LL hA.2.2) ((F l).E K 1 LL hA.2.2).tie

end Formalism.MainNotions.InvariantsGenerators
