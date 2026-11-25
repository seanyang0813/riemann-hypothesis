module

public import Formalism.SharpRestriction.LevelLetterCocycles.RamifiedCoefficientChains

@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.LocalTheoryWindows

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module

inductive LT where
  | thin : LT
  | up (b : ℕ) : LT
  | down (b : ℕ) : LT
  deriving DecidableEq

def LT.thick : LT → Bool
  | .thin => false
  | _ => true

def LT.isUp : LT → Bool
  | .up _ => true
  | _ => false

def LT.isDown : LT → Bool
  | .down _ => true
  | _ => false

def LT.size : LT → ℕ
  | .thin => 0
  | .up b => b
  | .down b => b

def LT.win (G S η : ℕ) : LT → Set ℤ
  | .thin => Set.Icc (-(G : ℤ)) G
  | .up b => Set.Icc (b : ℤ) (b + S) ∪ Set.Icc (-(η : ℤ)) η
  | .down b => Set.Icc (-(b : ℤ) - S) (-(b : ℤ)) ∪ Set.Icc (-(η : ℤ)) η

def LT.ok (η : ℕ) : LT → Prop
  | .thin => True
  | .up b => η < b
  | .down b => η < b

def CutsOK (n j : ℕ) (ty : ZMod n → LT) (cuts : Finset (ZMod n)) (arcLen : ZMod n → ℕ) : Prop :=
  cuts.Nonempty ∧ 1 ≤ j ∧
    (∀ c ∈ cuts, 1 ≤ arcLen c ∧ arcLen c ≤ n ∧ c - ((arcLen c : ℕ) : ZMod n) ∈ cuts ∧
      ∀ d : ℕ, 1 ≤ d → d < arcLen c → c - (d : ZMod n) ∉ cuts) ∧
    (∀ c ∈ cuts, j ≤ arcLen c) ∧
    (∀ c ∈ cuts, ∀ k : ℕ, 1 ≤ k → k ≤ j → ty (c + (k : ZMod n)) = LT.thin)

def thickLv {n : ℕ} (ty : ZMod n → LT) (arcLen : ZMod n → ℕ) (c : ZMod n) : Finset ℕ :=
  (Finset.range (arcLen c)).filter fun s => (ty (c - (s : ZMod n))).thick

def ro {n : ℕ} (ty : ZMod n → LT) (arcLen : ZMod n → ℕ) (c : ZMod n) : ℕ :=
  (thickLv ty arcLen c).card

section Core

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

end Core

section Lit

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {Bc BdR : Type} [CommRing Bc] [CommRing BdR] [Algebra Qp Bc] [Algebra K₀ Bc]
    [IsScalarTower Qp K₀ Bc] [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR]
    [IsScalarTower Qp K BdR] [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]

def H1fGeneratorBound (PD : PeriodData G Qp K₀ K Bc BdR) (LL O : Type) [Field LL] [Algebra Qp LL]
    [TopologicalSpace LL] [CommRing O] [Algebra O LL] : Prop :=
  Formalism.MainNotions.RamifiedCoefficientChains.H1fGeneratorBound PD LL O

end Lit

section Theory

def H1fGeneratorBoundAll (Th : LocTheory) : Prop := Formalism.MainNotions.RamifiedCoefficientChains.H1fGeneratorBoundAll Th

end Theory

end Formalism.MainNotions.LocalTheoryWindows
