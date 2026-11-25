module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RiRank
import Mathlib.Tactic.Linter.Style

import Development.WeilBound.CoreStatements.HodgeTatePoints.RiRank

@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open PositivityTheory.HtPt.Ri (wsum wsum_eq mem_xIdeal v_card_sub_one)
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

alias r_decomp_relay := _root_.PositivityTheory.HtPt.Ri.r_decomp

end GlobalTheory.CompanionTheory.Ar.GR
