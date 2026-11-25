module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SupportDatum.Blocks

@[expose] public section

noncomputable section

namespace PI.SupportDatumW

open NumberField IsDedekindDomain Formalism.MainNotions.S Formalism.MainNotions.S.LocalSplitGroups ValuativeRel
open scoped BigOperators ComplexOrder
open Classical

theorem modBlocks_some {A B : Type} [Monoid B] (f : ℕ → ℕ → A → B) (bs : List (A × ℕ)) (a : ℕ)
    (l : List (Bˣ × ℕ+)) (h : modBlocks f a bs = some l) :
    l.map (fun x => ((x.1 : B), (x.2 : ℕ))) = mapBlocks f a bs := by
  induction bs generalizing a l with
  | nil =>
    simp only [modBlocks, Option.some.injEq] at h
    subst h
    simp [mapBlocks]
  | cons b rest ih =>
    obtain ⟨t, s⟩ := b
    simp only [modBlocks] at h
    split_ifs at h with hu
    obtain ⟨l', hl', rfl⟩ := Option.map_eq_some_iff.mp h
    simp [mapBlocks, ih (a + s) l' hl']

theorem mapBlocks_snd {A B : Type} (f : ℕ → ℕ → A → B) (bs : List (A × ℕ)) (a : ℕ) :
    (mapBlocks f a bs).map Prod.snd = bs.map Prod.snd := by
  induction bs generalizing a with
  | nil => simp [mapBlocks]
  | cons b rest ih =>
    obtain ⟨t, s⟩ := b
    simp [mapBlocks, ih]

theorem blkDet_append {K : Type} [CommRing K] (l1 l2 : List (K × ℕ)) :
    blkDet (l1 ++ l2) = blkDet l1 * blkDet l2 := by
  induction l1 with
  | nil => simp [blkDet]
  | cons b rest ih =>
    obtain ⟨t, s⟩ := b
    simp only [List.cons_append, blkDet, ih]
    ring

end PI.SupportDatumW
