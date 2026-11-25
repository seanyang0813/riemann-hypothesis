module

public import GroundTheory.HeightsAndTheta.Heights.KernelsLattice
public import Mathlib.Algebra.Module.Lattice.Full
import Mathlib.Tactic.TypeStar

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open NumberField Matrix
open scoped nonZeroDivisors ComplexOrder

noncomputable section

def LinesLatticeBasis.Statement : Prop :=
  ∀ (V : Type) [AddCommGroup V] [Module ℚ V] [FiniteDimensional ℚ V] (ι : Type) [Fintype ι],
    Fintype.card ι = Module.finrank ℚ V → ∀ M : Submodule ℤ V, Submodule.IsFullLattice ℚ M →
      ∃ b : Module.Basis ι ℚ V, M = Submodule.span ℤ (Set.range b)

def LinesGenIndexDet.Statement : Prop :=
  ∀ (V : Type) [AddCommGroup V] [Module ℚ V] [FiniteDimensional ℚ V] (ι : Type) [Fintype ι]
    [DecidableEq ι] (bA bB : Module.Basis ι ℚ V) (A B : AddSubgroup V),
    A = AddSubgroup.closure (Set.range bA) → B = AddSubgroup.closure (Set.range bB) →
      genIndex A B = |((bA.det bB : ℚ) : ℝ)|

def LinesIsLattice.Statement : Prop :=
  ∀ (K : Type) [Field K] [NumberField K] (ι : Type) [Fintype ι] (M : Submodule (𝓞 K) (ι → K)),
    (M.restrictScalars ℤ).FG → Submodule.span K (M : Set (ι → K)) = ⊤ →
      Submodule.IsFullLattice ℚ (M.restrictScalars ℤ)

def LinesGenIndexTrans.Statement : Prop :=
  ∀ (V : Type) [AddCommGroup V] [Module ℚ V] [FiniteDimensional ℚ V] (A B C : Submodule ℤ V),
    Submodule.IsFullLattice ℚ A → Submodule.IsFullLattice ℚ B → Submodule.IsFullLattice ℚ C →
      0 < genIndex A.toAddSubgroup B.toAddSubgroup ∧
        genIndex A.toAddSubgroup B.toAddSubgroup * genIndex B.toAddSubgroup C.toAddSubgroup =
          genIndex A.toAddSubgroup C.toAddSubgroup

def LinesIdealLatticeFG.Statement : Prop :=
  ∀ (K : Type) [Field K] [NumberField K] (n : ℕ) (a : Fin n → FractionalIdeal (𝓞 K)⁰ K),
    (∀ x, a x ≠ 0) →
      (idealLattice a).FG ∧ Submodule.span K (idealLattice a : Set (Fin n → K)) = ⊤

end

end GroundTheory.Heights₂.Heights
