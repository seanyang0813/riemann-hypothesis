module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.CntLocal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.RingInverseMulEquiv

@[expose] public section

noncomputable section

namespace PI.CntNotIntW

open NumberField Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.CntLocal
open Classical ValuativeRel

def FrIntG : Prop :=
  ∀ (D : Formalism.BasicNotions.D7) (δ : ∀ p : PlF D, (D.s.atP p).Fp) (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep),
    (∀ p, Agree δ M p) → ∀ p (g : Loc.SplitG (M p).L), (M p).split = some g → ∀ a,
      (g.e (frFac δ p a)).1 ∈ 𝒪[(D.s.atP p).Fp]

theorem frFac_last (D : Formalism.BasicNotions.D7) (δ : ∀ p : PlF D, (D.s.atP p).Fp) (p : PlF D) :
    frFac δ p (Fin.last D.R.rS) = 1 := by
  unfold frFac
  simp only [Fin.val_last, Nat.sub_self, pow_zero, Ring.inverse_one]

theorem frFac_coord (D : Formalism.BasicNotions.D7) (δ : ∀ p : PlF D, (D.s.atP p).Fp)
    (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep) (hA : ∀ p, Agree δ M p) (p : PlF D)
    (g : Loc.SplitG (M p).L) (a : Fin (D.R.rS + 1)) :
    (g.e (frFac δ p a)).2 = (g.e (frFac δ p a)).1 := by
  have hc : (M p).L.cj (frFac δ p a) = frFac δ p a := by
    rw [(hA p).2.2.1, cj_frFac]
  have h := g.e_cj (frFac δ p a)
  rw [hc] at h
  have h2 := congrArg Prod.snd h
  rw [Prod.snd_swap] at h2
  exact h2

theorem zhatLoc_eq (D : Formalism.BasicNotions.D7) (δ : ∀ p : PlF D, (D.s.atP p).Fp)
    (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep) (hA : ∀ p, Agree δ M p) (p : PlF D) (Z : MatZ D)
    (a b : Fin (D.R.rS + 1)) :
    ZhatLoc M δ p Z a b = frFac δ p b * frFac δ p a * (D.s.atP p).ιE (Z a b) := by
  have h : (M p).L.cj = (D.s.atP p).cj := (hA p).2.2.1
  simp only [ZhatLoc, Matrix.of_apply]
  rw [h, cj_frFac]

end PI.CntNotIntW
