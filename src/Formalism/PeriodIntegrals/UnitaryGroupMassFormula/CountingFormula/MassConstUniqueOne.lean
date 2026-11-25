module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.StepsR
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassLandSt
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.FiniteDimensionalOfOrtho
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.LamGEqOneOfOrtho
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.LiStatOf
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassLand
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.SiegelMassRatioOfLI
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic

@[expose] public section

open NumberField Module Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.CntLocal Formalism.L2.SG.Pf.Cnt
open Classical

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula.RowsMassW

open Formalism.HermitianLattices.Ext.L3

section Local

variable (K F : Type) [Field K] [Field F] [NumberField F] [Algebra F K]

def vT (T : ℕ) (𝔭 : Ideal (𝓞 F)) : ℕ :=
  Multiset.count 𝔭 (UniqueFactorizationMonoid.normalizedFactors (Ideal.span {((T : ℕ) : 𝓞 F)}))

end Local

section Const

variable {K F : Type} [Field K] [NumberField K] [StarRing K] [Field F] [NumberField F] [Algebra F K]

theorem massConst_unique_one (hK : Formalism.HermitianLatticesTheory.IsCMUnram K) (hF : IsFixF K F) {c c' : ℝ}
    (hc : MassConst K F 1 c) (hc' : MassConst K F 1 c') : c = c' := by
  have ho := stdLat_isOrtho K 1
  have hs := stdForm_isSymm K 1
  have e := hc _ (stdForm K 1) (stdLat K 1) hs (isTotPosDef_of_ortho hK hs ho) (finrank_of_ortho ho)
    (isFullLattice_of_ortho ho) (isIntegralLat_of_ortho ho)
  have e' := hc' _ (stdForm K 1) (stdLat K 1) hs (isTotPosDef_of_ortho hK hs ho) (finrank_of_ortho ho)
    (isFullLattice_of_ortho ho) (isIntegralLat_of_ortho ho)
  rw [lamG_eq_one_of_ortho hK hF hs ho, mul_one] at e e'
  rw [← e, ← e']

variable [Fact Formalism.HermitianLattices.Ext.L3.HermRepUnram] in
theorem massConst_cMass (hK : Formalism.HermitianLatticesTheory.IsCMUnram K) (hF : IsFixF K F) (m : ℕ) (hm : 1 ≤ m) :
    MassConst K F m (cMass K F m) := by
  obtain ⟨c₁, hc₁, hall⟩ := massConst_all hermRepUnram liStat hK hF
  have h1 : MassConst K F 1 c₁ := by
    have := hall 1 le_rfl
    rwa [Finset.Icc_eq_empty (by norm_num), Finset.prod_empty, mul_one] at this
  have hex : ∃ c : ℝ, 0 < c ∧ MassConst K F 1 c := ⟨c₁, hc₁, h1⟩
  have hone : cOne K F = c₁ := by
    unfold cOne
    rw [dite_eq_left hex]
    exact massConst_unique_one hK hF hex.choose_spec.2 h1
  unfold cMass
  rw [hone]
  exact hall m hm

end Const


end PI.UnitaryGroupMassFormula.CntFormula.RowsMassW
