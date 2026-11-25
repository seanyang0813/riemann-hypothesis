module

public import Formalism.SharpRestriction.LevelLetterCocycles.ClassMapInjectiveBijectiveNorms
public import Formalism.SharpRestriction.LevelLetterCocycles.RamifiedCoefficientChains
public import Formalism.SharpRestriction.LevelLetterCocycles.ElementDenominator

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.HerrComplexNaturality

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

def HerrNaturality (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.RamifiedCoefficientChains.adm17 D HW F

def AdmNat (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.LocalSituation.ClassMapInjectiveBijectiveNorms D HW F

def HerrNaturalityTheorem (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := AdmNat D HW F → HerrNaturality D HW F

theorem herr_naturality_theorem_holds (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : HerrNaturalityTheorem D HW F := by
  intro h l _ K s LL g
  refine ⟨(h l K s LL g).2.2, ?_⟩
  intro hg T T' f pr pr' hp
  have h1 := (h l K s LL g).1 hg T
  exact (h1.2.2 T' f pr pr' hp).symm

def HerrExtensionClass (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.RamifiedCoefficientChains.adm16 D HW F

def HerrExtensionUpToUnit (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL),
    Formalism.MainNotions.ElementDenominator.coreHerrExt ((HW l).W K s LL h) ∧ Formalism.MainNotions.ElementDenominator.coreHerrExtΔ ((HW l).W K s LL h)

theorem herr_class_maps_of_naturality (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (h1 : HerrNaturality D HW F) (h2 : HerrExtensionUpToUnit D HW F) : Formalism.MainNotions.ElementDenominator.HerrClassMapsLocal D HW F :=
  fun l _ K s LL h => ⟨(h1 l K s LL h).1, (h1 l K s LL h).2, (h2 l K s LL h).1, (h2 l K s LL h).2⟩

end Formalism.MainNotions.HerrComplexNaturality
