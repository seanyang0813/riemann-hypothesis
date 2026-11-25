module

public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveWedgeHighestCoefficient
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionAction
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairMultiplicityGenericUnitary
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairStructureOnLine
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SgMulSelf
public import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.EigenspaceCyclicDensity.CreationOperators.WtProj
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HarishChandraDecompositionLevi
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveUnipotentOfRestriction
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.VanishingKernelLeviReal
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Bool
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairMultiplicityTopCycle, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ActionUnipotentRadicalReal, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundarySquareLeviReal, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveRestrictionOfBdsqVanish, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionActionHolds

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairMultiplicityTopCycle =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairMultiplicityTopCycle", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveWedgeHighestCoefficient\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.PairMult

noncomputable section

open Finset
open CompanionTheory.D.LK (Pos)

namespace GlobalTheory.CompanionTheory.PairMult.TopCycQ

variable {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V]


theorem mem_omQ (lev : Fin n → ℕ) (l : Lt n) :
    l ∈ omQ lev ↔ l.1 = true ∧ lev l.2.1.1 < lev l.2.1.2 := by
  simp [omQ]

theorem insert_ne_omQ (lev : Fin n → ℕ) (s t : Bool) (i j k : Pos n)
    (ht : i.1.2 = j.1.1 ∧ k.1.1 = i.1.1 ∧ k.1.2 = j.1.2) (C : Finset (Lt n)) :
    insert (s, i) (insert (t, j) (C.erase ((s == t), k))) ≠ omQ lev := by
  intro e
  have hi := (mem_omQ lev _).1 (e ▸ mem_insert_self _ _)
  have hj := (mem_omQ lev _).1 (e ▸ mem_insert_of_mem (mem_insert_self _ _))
  obtain ⟨t1, t2, t3⟩ := ht
  have hs : s = true := hi.1
  have htt : t = true := hj.1
  subst hs htt
  have ck : ((true == true), k) ∈ omQ lev := (mem_omQ lev _).2
    ⟨rfl, by rw [t2, t3]; exact (hi.2.trans_eq (congrArg lev t1)).trans hj.2⟩
  rw [← e] at ck
  rcases mem_insert.1 ck with h | h
  · have hk : k = i := congrArg Prod.snd h
    subst hk
    have pj := j.2
    rw [← t1, t3] at pj
    exact lt_irrefl _ pj
  · rcases mem_insert.1 h with h | h
    · have hk : k = j := congrArg Prod.snd h
      subst hk
      have pi := i.2
      rw [← t2, t1] at pi
      exact lt_irrefl _ pi
    · exact notMem_erase _ _ h

theorem topCyc : TopCyc := by
  intro n lev V _ _ E1 E2 _ v hv
  funext A
  simp only [bdq, LinearMap.add_apply, LinearMap.sum_apply, Pi.add_apply, Finset.sum_apply, Pi.zero_apply]
  rw [Finset.sum_eq_zero, Finset.sum_eq_zero, add_zero]
  · intro s _
    refine Finset.sum_eq_zero fun t _ => Finset.sum_eq_zero fun i _ => Finset.sum_eq_zero fun j _ =>
      Finset.sum_eq_zero fun k _ => ?_
    split_ifs with ht
    · rw [Module.End.mul_apply, Module.End.mul_apply, GlobalTheory.CompanionTheory.PairMult.COU.cre_apply]
      split_ifs with hk
      · rw [GlobalTheory.CompanionTheory.PairMult.COU.ann_apply]
        split_ifs with h1
        · exact smul_zero _
        · rw [GlobalTheory.CompanionTheory.PairMult.COU.ann_apply]
          split_ifs with h2
          · simp
          · rw [topq, Pi.single_eq_of_ne (insert_ne_omQ lev s t i j k ht A), smul_zero, smul_zero, smul_zero]
      · rfl
    · rfl
  · intro l _
    show Tl E1 E2 l (annq l (topq lev v) A) = 0
    rw [GlobalTheory.CompanionTheory.PairMult.COU.ann_apply]
    split_ifs with hl
    · exact map_zero _
    · by_cases e : insert l A = omQ lev
      · have hlK := (mem_omQ lev l).1 (e ▸ mem_insert_self l A)
        rw [topq, e, Pi.single_eq_same, map_smul, hv l hlK, smul_zero]
      · rw [topq, Pi.single_eq_of_ne e, smul_zero, map_zero]

end GlobalTheory.CompanionTheory.PairMult.TopCycQ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairMultiplicityTopCycle =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ActionUnipotentRadicalReal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ActionUnipotentRadicalReal", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionAction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveWedgeHighestCoefficient\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairMultiplicityGenericUnitary\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairMultiplicityTopCycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Bool\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace GlobalTheory.CompanionTheory.PairBridge

open CompanionTheory.D.LK (Pos key)
open PositivityTheory.RgBcC.RealD (annL creL liftL xL bdL adLL adCL evLc evLv evKP kA pA inUU omU SuppL DegL IsPairA)
open GlobalTheory.CompanionTheory.PairMult (annq creq liftq Tl Ts bdq adLq lFq c1 c2 ev2 evB SuppQ DegQ inUL inKU omQ topq PairRel IsSubL)

variable {n : ℕ}

abbrev Lr (n : ℕ) : Type := Bool × Pos n

def fl : Lr n ≃ Lr n where
  toFun l := (!l.1, l.2)
  invFun l := (!l.1, l.2)
  left_inv l := by simp
  right_inv l := by simp

@[simp] theorem fl_fl (l : Lr n) : fl (fl l) = l := by simp [fl]

def flS (A : Finset (Lr n)) : Finset (Lr n) := A.map fl.toEmbedding

theorem mem_flS {l : Lr n} {A : Finset (Lr n)} : l ∈ flS A ↔ fl l ∈ A := by
  unfold flS
  rw [Finset.mem_map_equiv]
  rfl

@[simp] theorem flS_flS (A : Finset (Lr n)) : flS (flS A) = A := by
  ext l
  simp [mem_flS]

theorem flS_insert (l : Lr n) (A : Finset (Lr n)) : flS (insert (fl l) A) = insert l (flS A) := by
  ext m
  simp [mem_flS, fl.injective.eq_iff]

theorem flS_erase (l : Lr n) (A : Finset (Lr n)) : flS (A.erase (fl l)) = (flS A).erase l := by
  ext m
  simp [mem_flS, fl.injective.eq_iff]

theorem card_flS (A : Finset (Lr n)) : (flS A).card = A.card := by simp [flS]

theorem key_iff (m l : Lr n) : PositivityTheory.RgBcC.RealD.keyL m < PositivityTheory.RgBcC.RealD.keyL l ↔
    GlobalTheory.CompanionTheory.PairMult.keyL (fl m) < GlobalTheory.CompanionTheory.PairMult.keyL (fl l) := by
  obtain ⟨s, i⟩ := m
  obtain ⟨t, j⟩ := l
  have hi := _root_.GlobalTheory.CompanionTheory.RealMult.BdSqProof.key_lt i
  have hj := _root_.GlobalTheory.CompanionTheory.RealMult.BdSqProof.key_lt j
  have hn : n * n ≤ (n + 1) * (n + 1) := by nlinarith
  cases s <;> cases t <;> simp [PositivityTheory.RgBcC.RealD.keyL, GlobalTheory.CompanionTheory.PairMult.keyL, fl] <;> omega

theorem sg_eq (l : Lr n) (A : Finset (Lr n)) :
    PositivityTheory.RgBcC.RealD.sgL l (flS A) = GlobalTheory.CompanionTheory.PairMult.sgL (fl l) A := by
  unfold PositivityTheory.RgBcC.RealD.sgL GlobalTheory.CompanionTheory.PairMult.sgL
  congr 1
  unfold flS
  rw [Finset.filter_map, Finset.card_map]
  congr 1
  apply Finset.filter_congr
  intro j _
  have := key_iff (fl j) l
  simpa using this

section Chains

variable {V : Type} [AddCommGroup V] [Module ℂ V]

def Phi : (Finset (Lr n) → V) →ₗ[ℂ] (Finset (Lr n) → V) := LinearMap.funLeft ℂ V flS

theorem Phi_apply (x : Finset (Lr n) → V) (A : Finset (Lr n)) : Phi x A = x (flS A) := rfl

@[simp] theorem Phi_Phi (x : Finset (Lr n) → V) : Phi (Phi x) = x := by
  funext A
  simp [Phi_apply]

theorem Phi_ann (l : Lr n) (x : Finset (Lr n) → V) : Phi (annL l x) = annq (fl l) (Phi x) := by
  funext A
  show (if l ∈ flS A then 0 else PositivityTheory.RgBcC.RealD.sgL l (flS A) • x (insert l (flS A))) =
    if fl l ∈ A then 0 else GlobalTheory.CompanionTheory.PairMult.sgL (fl l) A • x (flS (insert (fl l) A))
  simp only [mem_flS, sg_eq, flS_insert]

theorem Phi_cre (l : Lr n) (x : Finset (Lr n) → V) : Phi (creL l x) = creq (fl l) (Phi x) := by
  funext A
  show (if l ∈ flS A then PositivityTheory.RgBcC.RealD.sgL l (flS A) • x ((flS A).erase l) else 0) =
    if fl l ∈ A then GlobalTheory.CompanionTheory.PairMult.sgL (fl l) A • x (flS (A.erase (fl l))) else 0
  simp only [mem_flS, sg_eq, flS_erase]

theorem Phi_lift (T : V →ₗ[ℂ] V) (x : Finset (Lr n) → V) : Phi (liftL n T x) = liftq n T (Phi x) := rfl

theorem xL_eq (E1 E2 : Fin n → Fin n → Module.End ℂ V) (l : Lr n) : xL E1 E2 l = Tl E1 E2 (fl l) := by
  obtain ⟨s, i⟩ := l
  cases s <;> simp [xL, Tl, Ts, fl, kA, pA]

def supS (V : Type) [AddCommGroup V] [Module ℂ V] (P : Lr n → Prop) : Submodule ℂ (Finset (Lr n) → V) where
  carrier := {x | SuppL P x}
  add_mem' := by
    intro x y hx hy A h l hl
    by_contra hP
    have h1 : x A = 0 := by_contra fun h0 => hP (hx A h0 l hl)
    have h2 : y A = 0 := by_contra fun h0 => hP (hy A h0 l hl)
    exact h (by simp [h1, h2])
  zero_mem' := fun A h => absurd rfl h
  smul_mem' := by
    intro c x hx A h l hl
    by_contra hP
    have h1 : x A = 0 := by_contra fun h0 => hP (hx A h0 l hl)
    exact h (by simp [h1])

theorem mem_supS {P : Lr n → Prop} {x : Finset (Lr n) → V} : x ∈ supS V P ↔ SuppL P x := Iff.rfl

theorem ann_zero {P : Lr n → Prop} {x : Finset (Lr n) → V} (hx : SuppL P x) {l : Lr n} (hl : ¬ P l) :
    annL l x = 0 := by
  funext A
  show (if l ∈ A then 0 else PositivityTheory.RgBcC.RealD.sgL l A • x (insert l A)) = 0
  by_cases h : l ∈ A
  · simp [h]
  · have : x (insert l A) = 0 := by_contra fun h0 => hl (hx _ h0 l (Finset.mem_insert_self l A))
    simp [h, this]

theorem ann_supp {P : Lr n → Prop} {x : Finset (Lr n) → V} (hx : SuppL P x) (l : Lr n) : SuppL P (annL l x) := by
  intro A hA m hm
  have h1 : (if l ∈ A then 0 else PositivityTheory.RgBcC.RealD.sgL l A • x (insert l A)) ≠ 0 := hA
  by_cases h : l ∈ A
  · simp [h] at h1
  · rw [if_neg h] at h1
    have h2 : x (insert l A) ≠ 0 := fun h0 => h1 (by rw [h0, smul_zero])
    exact hx _ h2 m (Finset.mem_insert_of_mem hm)

theorem cre_supp {P : Lr n → Prop} {x : Finset (Lr n) → V} (hx : SuppL P x) {l : Lr n} (hl : P l) :
    SuppL P (creL l x) := by
  intro A hA m hm
  have h1 : (if l ∈ A then PositivityTheory.RgBcC.RealD.sgL l A • x (A.erase l) else 0) ≠ 0 := hA
  by_cases h : l ∈ A
  · rw [if_pos h] at h1
    have h2 : x (A.erase l) ≠ 0 := fun h0 => h1 (by rw [h0, smul_zero])
    by_cases hml : m = l
    · exact hml ▸ hl
    · exact hx _ h2 m (Finset.mem_erase.2 ⟨hml, hm⟩)
  · simp [h] at h1

open Classical in
theorem bdL_apply (S : Lr n → Prop) (E1 E2 : Fin n → Fin n → Module.End ℂ V) (x : Finset (Lr n) → V) :
    bdL S E1 E2 x = (∑ l : Lr n, if S l then liftL n (xL E1 E2 l) (annL l x) else 0) +
      ∑ l : Lr n, ∑ m : Lr n, ∑ k : Lr n,
        if S l ∧ S m ∧ l.2.1.2 = m.2.1.1 ∧ k.1 = xor l.1 m.1 ∧ k.2.1.1 = l.2.1.1 ∧ k.2.1.2 = m.2.1.2 then
          creL k (annL m (annL l x)) else 0 := by
  unfold bdL
  rw [LinearMap.add_apply, LinearMap.sum_apply, LinearMap.sum_apply]
  congr 1
  · refine Finset.sum_congr rfl fun l _ => ?_
    split_ifs <;> simp
  · refine Finset.sum_congr rfl fun l _ => ?_
    rw [LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun k _ => ?_
    split_ifs <;> simp

theorem bdq_apply (E1 E2 : Fin n → Fin n → Module.End ℂ V) (y : Finset (Lr n) → V) :
    bdq E1 E2 y = (∑ l : Lr n, liftq n (Tl E1 E2 l) (annq l y)) +
      ∑ s : Bool, ∑ t : Bool, ∑ i : Pos n, ∑ j : Pos n, ∑ k : Pos n,
        if i.1.2 = j.1.1 ∧ k.1.1 = i.1.1 ∧ k.1.2 = j.1.2 then creq ((s == t), k) (annq (t, j) (annq (s, i) y)) else 0 := by
  unfold bdq
  rw [LinearMap.add_apply]
  refine congrArg₂ (· + ·) ?_ ?_
  · rw [LinearMap.sum_apply]
    rfl
  · rw [LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun s _ => ?_
    rw [LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun t _ => ?_
    rw [LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun k _ => ?_
    split_ifs
    · rfl
    · rfl

theorem sum_letters {M : Type} [AddCommGroup M] (H : Lr n → Lr n → Lr n → M) :
    (∑ l : Lr n, ∑ m : Lr n, ∑ k : Lr n,
      if l.2.1.2 = m.2.1.1 ∧ k.1 = xor l.1 m.1 ∧ k.2.1.1 = l.2.1.1 ∧ k.2.1.2 = m.2.1.2 then H (fl l) (fl m) (fl k) else 0) =
    ∑ s : Bool, ∑ t : Bool, ∑ i : Pos n, ∑ j : Pos n, ∑ k : Pos n,
      if i.1.2 = j.1.1 ∧ k.1.1 = i.1.1 ∧ k.1.2 = j.1.2 then H (s, i) (t, j) ((s == t), k) else 0 := by
  have e : ∀ l m : Lr n, (∑ k : Lr n,
      if (fl l).2.1.2 = (fl m).2.1.1 ∧ k.1 = xor (fl l).1 (fl m).1 ∧ k.2.1.1 = (fl l).2.1.1 ∧ k.2.1.2 = (fl m).2.1.2 then
        H (fl (fl l)) (fl (fl m)) (fl k) else 0) =
      ∑ k : Pos n, if l.2.1.2 = m.2.1.1 ∧ k.1.1 = l.2.1.1 ∧ k.1.2 = m.2.1.2 then H l m ((l.1 == m.1), k) else 0 := by
    intro l m
    rw [← Equiv.sum_comp fl, Fintype.sum_prod_type, Fintype.sum_bool]
    obtain ⟨s, i⟩ := l
    obtain ⟨t, j⟩ := m
    cases s <;> cases t <;> simp [fl]
  rw [← Equiv.sum_comp fl]
  have e2 : ∀ l : Lr n, (∑ m : Lr n, ∑ k : Lr n,
      if (fl l).2.1.2 = m.2.1.1 ∧ k.1 = xor (fl l).1 m.1 ∧ k.2.1.1 = (fl l).2.1.1 ∧ k.2.1.2 = m.2.1.2 then
        H (fl (fl l)) (fl m) (fl k) else 0) =
      ∑ t : Bool, ∑ j : Pos n, ∑ k : Pos n,
        if l.2.1.2 = j.1.1 ∧ k.1.1 = l.2.1.1 ∧ k.1.2 = j.1.2 then H l (t, j) ((l.1 == t), k) else 0 := by
    intro l
    rw [← Equiv.sum_comp fl]
    refine (Finset.sum_congr rfl fun m _ => e l m).trans ?_
    rw [Fintype.sum_prod_type]
  refine (Finset.sum_congr rfl fun l _ => e2 l).trans ?_
  rw [Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun s _ => ?_
  exact Finset.sum_comm

open Classical in
theorem Phi_bd (S : Lr n → Prop) (E1 E2 : Fin n → Fin n → Module.End ℂ V) {x : Finset (Lr n) → V} (hx : SuppL S x) :
    Phi (bdL S E1 E2 x) = bdq E1 E2 (Phi x) := by

  rw [bdL_apply, bdq_apply, map_add (f := _), map_sum, map_sum]
  refine congrArg₂ (· + ·) ?_ ?_
  · rw [← Equiv.sum_comp fl (fun l => liftq n (Tl E1 E2 l) (annq l (Phi x)))]
    refine Finset.sum_congr rfl fun l _ => ?_
    by_cases h : S l
    · rw [if_pos h, Phi_lift, Phi_ann, xL_eq]
    · rw [if_neg h, map_zero, ← Phi_ann, ann_zero hx h, map_zero, map_zero]
  · rw [← sum_letters (fun l m k => creq k (annq m (annq l (Phi x))))]
    refine Finset.sum_congr rfl fun l _ => ?_

    rw [map_sum]
    refine Finset.sum_congr rfl fun m _ => ?_

    rw [map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    have hk : Phi (creL k (annL m (annL l x))) = creq (fl k) (annq (fl m) (annq (fl l) (Phi x))) := by
      rw [Phi_cre, Phi_ann, Phi_ann]
    by_cases hR : l.2.1.2 = m.2.1.1 ∧ k.1 = xor l.1 m.1 ∧ k.2.1.1 = l.2.1.1 ∧ k.2.1.2 = m.2.1.2
    · rw [if_pos hR]
      by_cases hl : S l
      · by_cases hm : S m
        · rw [if_pos ⟨hl, hm, hR⟩, hk]
        · rw [if_neg (fun h => hm h.2.1), map_zero, ← hk, ann_zero (ann_supp hx l) hm]
          simp
      · rw [if_neg (fun h => hl h.1), map_zero, ← hk, ann_zero hx hl]
        simp
    · rw [if_neg hR, if_neg (fun h => hR h.2.2), map_zero]

theorem adLL_apply (lev : Fin n → ℕ) (s : Bool) (p q : Fin n) (x : Finset (Lr n) → V) :
    adLL lev s p q x = ∑ l : Lr n, ∑ k : Lr n,
      if inUU lev l then adCL s p q l k • creL k (annL l x) else 0 := by
  unfold adLL
  rw [LinearMap.sum_apply]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [LinearMap.sum_apply]
  refine Finset.sum_congr rfl fun k _ => ?_
  split_ifs
  · rfl
  · rfl

theorem adLq_apply (s : Bool) (p q : Fin n) (y : Finset (Lr n) → V) :
    adLq s p q y = ∑ t : Bool, ∑ i : Pos n, ∑ k : Pos n,
      CompanionTheory.RgExh.U.adC p q i k • creq ((s == t), k) (annq (t, i) y) := by
  unfold adLq
  rw [LinearMap.sum_apply]
  refine Finset.sum_congr rfl fun t _ => ?_
  rw [LinearMap.sum_apply]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [LinearMap.sum_apply]
  refine Finset.sum_congr rfl fun k _ => ?_
  rfl

theorem adC_eq (s t c : Bool) (p q : Fin n) (i k : Pos n) :
    adCL s p q (fl (t, i)) (fl (c, k)) = if c = (!s == t) then CompanionTheory.RgExh.U.adC p q i k else 0 := by
  cases s <;> cases t <;> cases c <;> simp [adCL, fl, CompanionTheory.RgExh.U.adC]

theorem Phi_ad (lev : Fin n → ℕ) (s : Bool) (p q : Fin n) {x : Finset (Lr n) → V} (hx : SuppL (inUU lev) x) :
    Phi (adLL lev s p q x) = adLq (!s) p q (Phi x) := by

  rw [adLL_apply, adLq_apply, map_sum]
  have h1 : ∀ l k : Lr n, Phi (if inUU lev l then adCL s p q l k • creL k (annL l x) else 0) =
      adCL s p q l k • creq (fl k) (annq (fl l) (Phi x)) := by
    intro l k
    by_cases h : inUU lev l
    · rw [if_pos h, map_smul, Phi_cre, Phi_ann]
    · rw [if_neg h, map_zero, ← Phi_ann, ann_zero hx h]
      simp
  have h2 : ∀ l : Lr n, Phi (∑ k : Lr n, if inUU lev l then adCL s p q l k • creL k (annL l x) else 0) =
      ∑ k : Lr n, adCL s p q l k • creq (fl k) (annq (fl l) (Phi x)) := by
    intro l

    rw [map_sum]
    exact Finset.sum_congr rfl fun k _ => h1 l k
  refine (Finset.sum_congr rfl fun l _ => h2 l).trans ?_
  rw [← Equiv.sum_comp fl, Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun t _ => Finset.sum_congr rfl fun i _ => ?_
  rw [← Equiv.sum_comp fl, Fintype.sum_prod_type, Fintype.sum_bool]
  simp only [adC_eq, fl_fl]
  cases s <;> cases t <;> simp

def tau : FreeAlgebra ℂ (Bool × Fin n × Fin n) →ₐ[ℂ] FreeAlgebra ℂ (Bool × Fin n × Fin n) :=
  FreeAlgebra.lift ℂ fun p => if p.1 then FreeAlgebra.ι ℂ (true, p.2) - FreeAlgebra.ι ℂ (false, p.2)
    else FreeAlgebra.ι ℂ (true, p.2) + FreeAlgebra.ι ℂ (false, p.2)

theorem evalPair_tau_eq_evalKPair (E1 E2 : Fin n → Fin n → Module.End ℂ V) (a : FreeAlgebra ℂ (Bool × Fin n × Fin n)) :
    ev2 E1 E2 (tau a) = evKP E1 E2 a := by
  have h : (ev2 E1 E2).comp tau = evKP E1 E2 := by
    refine FreeAlgebra.hom_ext ?_
    funext p
    obtain ⟨s, p, q⟩ := p
    cases s <;> simp [tau, ev2, evKP, pA, kA]
  exact DFunLike.congr_fun h a

theorem evB_tau (lev : Fin n → ℕ) (E1 E2 : Fin n → Fin n → Module.End ℂ V) (b : FreeAlgebra ℂ (Bool × Fin n × Fin n)) :
    evB lev E1 E2 (tau b) = evLv lev E1 E2 b := by
  have h : (evB lev E1 E2).comp tau = evLv lev E1 E2 := by
    refine FreeAlgebra.hom_ext ?_
    funext p
    obtain ⟨s, p, q⟩ := p
    by_cases hl : lev p = lev q <;> cases s <;> simp [tau, evB, evLv, pA, kA, hl]
  exact DFunLike.congr_fun h b

theorem c_add (E1 E2 : Fin n → Fin n → Module.End ℂ V) (p q : Fin n) :
    c1 E1 E2 p q + c2 E1 E2 p q = lFq E1 E2 true p q := by
  unfold c1 c2
  rw [← smul_add]
  have : lFq E1 E2 true p q + lFq E1 E2 false p q + (lFq E1 E2 true p q - lFq E1 E2 false p q) =
      (2 : ℂ) • lFq E1 E2 true p q := by
    rw [two_smul]
    abel
  rw [this, smul_smul]
  norm_num

theorem c_sub (E1 E2 : Fin n → Fin n → Module.End ℂ V) (p q : Fin n) :
    c1 E1 E2 p q - c2 E1 E2 p q = lFq E1 E2 false p q := by
  unfold c1 c2
  rw [← smul_sub]
  have : lFq E1 E2 true p q + lFq E1 E2 false p q - (lFq E1 E2 true p q - lFq E1 E2 false p q) =
      (2 : ℂ) • lFq E1 E2 false p q := by
    rw [two_smul]
    abel
  rw [this, smul_smul]
  norm_num

theorem lift_supp {P : Lr n → Prop} {x : Finset (Lr n) → V} (hx : SuppL P x) (T : V →ₗ[ℂ] V) :
    SuppL P (liftL n T x) := by
  intro A hA
  refine hx A fun h => hA ?_
  show T (x A) = 0
  rw [h, map_zero]

theorem ad_supp (lev : Fin n → ℕ) (s : Bool) {p q : Fin n} (hpq : lev p = lev q) {x : Finset (Lr n) → V}
    (hx : SuppL (inUU lev) x) : SuppL (inUU lev) (adLL lev s p q x) := by
  rw [adLL_apply, ← mem_supS]
  refine Submodule.sum_mem _ fun l _ => Submodule.sum_mem _ fun k _ => ?_
  by_cases hl : inUU lev l
  · rw [if_pos hl]
    by_cases hc : adCL s p q l k = 0
    · rw [hc, zero_smul]
      exact Submodule.zero_mem _
    · refine Submodule.smul_mem _ _ ?_
      have hk : inUU lev k := by
        by_contra hk
        apply hc
        have h0 : lev l.2.1.1 < lev l.2.1.2 := hl
        have h1 : ¬ (q = l.2.1.1 ∧ k.1 = xor s l.1 ∧ k.2.1 = (p, l.2.1.2)) := by
          rintro ⟨rfl, _, h3⟩
          apply hk
          show lev k.2.1.1 < lev k.2.1.2
          rw [h3]
          simpa [hpq] using h0
        have h2 : ¬ (l.2.1.2 = p ∧ k.1 = xor s l.1 ∧ k.2.1 = (l.2.1.1, q)) := by
          rintro ⟨rfl, _, h3⟩
          apply hk
          show lev k.2.1.1 < lev k.2.1.2
          rw [h3]
          simpa [← hpq] using h0
        simp [adCL, h1, h2]
      exact cre_supp (ann_supp hx l) hk
  · rw [if_neg hl]
    exact Submodule.zero_mem _

theorem Phi_evLc (lev : Fin n → ℕ) (E1 E2 : Fin n → Fin n → Module.End ℂ V)
    (b : FreeAlgebra ℂ (Bool × Fin n × Fin n)) :
    ∀ x : Finset (Lr n) → V, SuppL (inUU lev) x → SuppL (inUU lev) (evLc lev E1 E2 b x) ∧
      Phi (evLc lev E1 E2 b x) = evB lev (c1 E1 E2) (c2 E1 E2) (tau b) (Phi x) := by
  induction b using FreeAlgebra.induction with
  | grade0 r =>
    intro x hx
    simp only [AlgHom.commutes, Module.algebraMap_end_apply]
    exact ⟨(supS V (inUU lev)).smul_mem r hx, map_smul Phi r x⟩
  | grade1 p =>
    intro x hx
    obtain ⟨s, p, q⟩ := p
    by_cases hl : lev p = lev q
    · have e1 : evLc lev E1 E2 (FreeAlgebra.ι ℂ (s, p, q)) x =
          liftL n (if s then pA E1 E2 p q else kA E1 E2 p q) x + adLL lev s p q x := by
        simp [evLc, hl]
      have e2 : evB lev (c1 E1 E2) (c2 E1 E2) (tau (FreeAlgebra.ι ℂ (s, p, q))) = lFq E1 E2 (!s) p q := by
        cases s <;> simp [tau, evB, hl, c_add, c_sub]
      rw [e1, e2]
      refine ⟨(supS V (inUU lev)).add_mem (lift_supp hx _) (ad_supp lev s hl hx), ?_⟩
      rw [map_add (f := _), Phi_lift, Phi_ad lev s p q hx]
      have e3 : lFq E1 E2 (!s) p q (Phi x) = liftq n (Ts E1 E2 (!s) p q) (Phi x) + adLq (!s) p q (Phi x) := by
        unfold lFq
        rw [LinearMap.add_apply]
      rw [e3]
      cases s <;> simp [Ts, kA, pA]
    · have e1 : evLc lev E1 E2 (FreeAlgebra.ι ℂ (s, p, q)) = 0 := by simp [evLc, hl]
      have e2 : evB lev (c1 E1 E2) (c2 E1 E2) (tau (FreeAlgebra.ι ℂ (s, p, q))) = 0 := by
        cases s <;> simp [tau, evB, hl]
      rw [e1, e2]
      simp only [LinearMap.zero_apply, map_zero]
      exact ⟨(supS V (inUU lev)).zero_mem, trivial⟩
  | mul a b ha hb =>
    intro x hx
    obtain ⟨h1, h2⟩ := hb x hx
    obtain ⟨h3, h4⟩ := ha _ h1
    simp only [map_mul, Module.End.mul_apply]
    exact ⟨h3, by rw [h4, h2]⟩
  | add a b ha hb =>
    intro x hx
    obtain ⟨h1, h2⟩ := ha x hx
    obtain ⟨h3, h4⟩ := hb x hx
    simp only [map_add (f := _), LinearMap.add_apply]
    exact ⟨(supS V (inUU lev)).add_mem h1 h3, by rw [h2, h4]⟩

theorem flS_omQ (lev : Fin n → ℕ) : flS (omQ lev) = omU lev := by
  ext l
  obtain ⟨s, i⟩ := l
  cases s <;> simp [mem_flS, omQ, omU, fl]

theorem Phi_top (lev : Fin n → ℕ) (u : V) : Phi (Pi.single (omU lev) u) = topq lev u := by
  funext A
  rw [Phi_apply]
  unfold topq
  by_cases h : A = omQ lev
  · subst h
    rw [flS_omQ]
    simp
  · have h' : flS A ≠ omU lev := by
      intro h2
      apply h
      rw [← flS_omQ] at h2
      have := congrArg flS h2
      simpa using this
    rw [Pi.single_eq_of_ne h', Pi.single_eq_of_ne h]

theorem lift_top (lev : Fin n → ℕ) (T : V →ₗ[ℂ] V) (u : V) : liftq n T (topq lev u) = topq lev (T u) := by
  funext A
  show T (topq lev u A) = topq lev (T u) A
  unfold topq
  by_cases h : A = omQ lev
  · subst h
    simp
  · rw [Pi.single_eq_of_ne h, Pi.single_eq_of_ne h, map_zero]

theorem single_supp (lev : Fin n → ℕ) (u : V) : SuppL (inUU lev) (Pi.single (omU lev) u : Finset (Lr n) → V) := by
  intro A hA l hl
  have hAe : A = omU lev := by
    by_contra h
    exact hA (Pi.single_eq_of_ne h _)
  subst hAe
  exact (Finset.mem_filter.1 hl).2.2

theorem top_supp (lev : Fin n → ℕ) (u : V) : SuppQ (inKU lev) (topq lev u) := by
  intro A hA l hl
  have hAe : A = omQ lev := by
    by_contra h
    exact hA (Pi.single_eq_of_ne h _)
  subst hAe
  exact (Finset.mem_filter.1 hl).2

theorem top_deg (lev : Fin n → ℕ) (u : V) : DegQ (omQ lev).card (topq lev u) := by
  intro A hA
  have hAe : A = omQ lev := by
    by_contra h
    exact hA (Pi.single_eq_of_ne h _)
  rw [hAe]

end Chains

theorem isSubL_inKU (lev : Fin n → ℕ) : IsSubL lev (inKU lev) := by
  refine ⟨fun l h => h.2, ?_⟩
  intro s t i j k h1 h2 h3 hs ht
  obtain ⟨hs1, hs2⟩ := hs
  obtain ⟨ht1, ht2⟩ := ht
  simp only at hs1 ht1 hs2 ht2
  subst hs1 ht1
  refine ⟨rfl, ?_⟩
  show lev k.1.1 < lev k.1.2
  rw [h2, h3]
  rw [h1] at hs2
  exact hs2.trans ht2

theorem omQ_card (lev : Fin n → ℕ) : (omQ lev).card = (omU lev).card := by
  rw [← flS_omQ, card_flS]

theorem actUU_of (hG : GlobalTheory.CompanionTheory.PairMult.GenCOU2) (hT : GlobalTheory.CompanionTheory.PairMult.TopCyc) : PositivityTheory.RgBcC.RealD.ActUU := by
  intro n lev hlev a b ha hab V _ _ E1 E2 hE v hv
  have hP : PairRel E1 E2 := hE
  have hcyc : bdq E1 E2 (topq lev v) = 0 := by
    refine hT n lev V E1 E2 hP v ?_
    rintro ⟨s, i⟩ ⟨hs, hi⟩
    simp only at hs
    subst hs
    have := hv (fl (true, i)) rfl hi
    rwa [xL_eq, fl_fl] at this
  obtain ⟨w, hw1, hw2, hw3⟩ := hG n lev (inKU lev) (tau a) (tau b) hlev (isSubL_inKU lev) (by
    intro V _ _ E1 E2 hP
    refine ⟨?_, ?_⟩
    · rintro ⟨s, i⟩ ⟨hs, _⟩
      simp only at hs
      subst hs
      rw [evalPair_tau_eq_evalKPair]
      exact ha V E1 E2 hP i.1.1 i.1.2
    · intro x
      obtain ⟨w, hw⟩ := hab V E1 E2 hP x
      refine ⟨fun l => w (fl l), ?_⟩
      rw [evalPair_tau_eq_evalKPair, evB_tau, hw, ← Equiv.sum_comp fl]
      refine Finset.sum_congr rfl fun l _ => ?_
      by_cases h : inUU lev l
      · rw [if_pos h, if_pos (show inUL lev (fl l) from h), xL_eq, fl_fl]
      · rw [if_neg h, if_neg (show ¬ inUL lev (fl l) from h)]) V E1 E2 hP (omQ lev).card (topq lev v)
    (top_supp lev v) (top_deg lev v) hcyc
  have hsw : SuppL (inUU lev) (Phi w) := by
    intro A hA l hl
    exact hw1 (flS A) hA (fl l) (by simpa [mem_flS] using hl)
  have hdw : DegL ((omU lev).card + 1) (Phi w) := by
    intro A hA
    rw [← omQ_card, ← hw2 (flS A) hA, card_flS]
  refine ⟨Phi w, hsw, hdw, ?_⟩
  apply (show Function.Injective (Phi : (Finset (Lr n) → V) → _) from
    Function.LeftInverse.injective Phi_Phi)
  rw [Phi_bd _ E1 E2 hsw, Phi_Phi, ← hw3, map_sub, Phi_top, (Phi_evLc lev E1 E2 b _ (single_supp lev v)).2, Phi_top,
    lift_top, evalPair_tau_eq_evalKPair]

theorem actUU : PositivityTheory.RgBcC.RealD.ActUU := actUU_of _root_.GlobalTheory.CompanionTheory.PairMult.COU.genCOU2 _root_.GlobalTheory.CompanionTheory.PairMult.TopCycQ.topCyc

end GlobalTheory.CompanionTheory.PairBridge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ActionUnipotentRadicalReal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundarySquareLeviReal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundarySquareLeviReal", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionAction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PairStructureOnLine\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SgMulSelf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Bool\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Finset

noncomputable section

open PositivityTheory.RgBcC PositivityTheory.RgBcC.Real PositivityTheory.RgBcC.RealD

namespace GlobalTheory.CompanionTheory.KPChains

open GlobalTheory.CompanionTheory.RealMult (cp Pair2)
open GlobalTheory.CompanionTheory.RealMult.BdSqProof (d_sq cp_jacobi sum_cp)
open CompanionTheory.D.LK (Pos)

variable {n : ℕ}

def cstL (i j k : Lt n) : ℂ := if k.1 = xor i.1 j.1 then cp i.2 j.2 k.2 else 0

def ttL (i j k : Lt n) : ℂ :=
  if i.2.1.2 = j.2.1.1 ∧ k.1 = xor i.1 j.1 ∧ k.2.1.1 = i.2.1.1 ∧ k.2.1.2 = j.2.1.2 then 1 else 0

def IsClosedL (S : Lt n → Prop) : Prop :=
  ∀ l m k : Lt n, S l → S m → l.2.1.2 = m.2.1.1 → k.1 = xor l.1 m.1 → k.2.1 = (l.2.1.1, m.2.1.2) → S k

theorem cstL_eq (i j k : Lt n) : cstL i j k = ttL i j k - ttL j i k := by
  have e : ∀ p q : Lt n, (p.2.1.2 = q.2.1.1 ∧ k.1 = xor p.1 q.1 ∧ k.2.1.1 = p.2.1.1 ∧ k.2.1.2 = q.2.1.2) ↔
      (k.1 = xor p.1 q.1 ∧ p.2.1.2 = q.2.1.1 ∧ k.2.1 = (p.2.1.1, q.2.1.2)) := by
    intro p q
    rw [Prod.ext_iff]
    tauto
  simp only [cstL, ttL, cp, e, Bool.xor_comm j.1 i.1]
  by_cases h : k.1 = xor i.1 j.1 <;> simp [h, Prod.ext_iff]

theorem cstL_anti (i j k : Lt n) : cstL i j k = -cstL j i k := by
  rw [cstL_eq, cstL_eq]; ring

theorem sum_cstL (p q r k : Lt n) : ∑ i, cstL p q i * cstL i r k =
    if k.1 = xor (xor p.1 q.1) r.1 then ∑ m, cp p.2 q.2 m * cp m r.2 k.2 else 0 := by
  obtain ⟨s, p⟩ := p
  obtain ⟨t, q⟩ := q
  obtain ⟨u, r⟩ := r
  obtain ⟨w, k⟩ := k
  rw [Fintype.sum_prod_type]
  cases s <;> cases t <;> cases u <;> cases w <;> simp [cstL]

theorem cstL_jacobi (p q r k : Lt n) :
    ∑ i, cstL p q i * cstL i r k + ∑ i, cstL q r i * cstL i p k + ∑ i, cstL r p i * cstL i q k = 0 := by
  rw [sum_cstL, sum_cstL, sum_cstL]
  have h1 : xor (xor q.1 r.1) p.1 = xor (xor p.1 q.1) r.1 := by cases p.1 <;> cases q.1 <;> cases r.1 <;> rfl
  have h2 : xor (xor r.1 p.1) q.1 = xor (xor p.1 q.1) r.1 := by cases p.1 <;> cases q.1 <;> cases r.1 <;> rfl
  rw [h1, h2]
  split_ifs
  · exact cp_jacobi _ _ _ _
  · simp

theorem cstL_supp {S : Lt n → Prop} (hS : IsClosedL S) {i j k : Lt n} (hi : S i) (hj : S j) (hk : ¬S k) :
    cstL i j k = 0 := by
  simp only [cstL]
  split_ifs with hw
  swap
  · rfl
  have a1 : ¬(i.2.1.2 = j.2.1.1 ∧ k.2.1 = (i.2.1.1, j.2.1.2)) := fun h => hk (hS i j k hi hj h.1 hw h.2)
  have a2 : ¬(j.2.1.2 = i.2.1.1 ∧ k.2.1 = (j.2.1.1, i.2.1.2)) := fun h =>
    hk (hS j i k hj hi h.1 (hw.trans (Bool.xor_comm _ _)) h.2)
  simp [cp, a1, a2]


open Classical in
theorem sum_sub (S : Lt n → Prop) {M : Type*} [AddCommMonoid M] (f : Lt n → M) :
    ∑ k : {l // S l}, f k.1 = ∑ k, if S k then f k else 0 := by
  rw [← Finset.sum_filter]
  exact (Finset.sum_subtype _ (by simp) f).symm

theorem half_sum {ι M : Type*} [Fintype ι] [AddCommGroup M] [Module ℂ M] (t : ι → ι → ι → ℂ) (Y : ι → ι → ι → M)
    (hY : ∀ i j k, Y j i k = -Y i j k) :
    (1 / 2 : ℂ) • ∑ i, ∑ j, ∑ k, (t i j k - t j i k) • Y i j k = ∑ i, ∑ j, ∑ k, t i j k • Y i j k := by
  have e : ∑ i, ∑ j, ∑ k, t j i k • Y i j k = -∑ i, ∑ j, ∑ k, t i j k • Y i j k := by
    rw [Finset.sum_comm]
    simp only [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ => ?_
    rw [hY i j k, smul_neg]
  simp only [sub_smul, Finset.sum_sub_distrib]
  rw [e, sub_neg_eq_add, ← two_smul ℂ, smul_smul]
  norm_num

section Ring

variable {R : Type} [Ring R] [Algebra ℂ R]


open Classical in
def partA (S : Lt n → Prop) (X an : Lt n → R) : R := ∑ l, if S l then X l * an l else 0


open Classical in
def partB (S : Lt n → Prop) (an cr : Lt n → R) : R :=
  ∑ l : Lt n, ∑ m : Lt n, ∑ k : Lt n,
    if S l ∧ S m ∧ l.2.1.2 = m.2.1.1 ∧ k.1 = xor l.1 m.1 ∧ k.2.1.1 = l.2.1.1 ∧ k.2.1.2 = m.2.1.2 then
      cr k * an m * an l else 0


open Classical in
theorem partB_eq {S : Lt n → Prop} (hS : IsClosedL S) (an cr : Lt n → R) (haa : ∀ i j, an i * an j + an j * an i = 0) :
    (1 / 2 : ℂ) • ∑ i : {l // S l}, ∑ j : {l // S l}, ∑ k : {l // S l},
      cstL i.1 j.1 k.1 • (cr k.1 * an j.1 * an i.1) = partB S an cr := by
  have hY : ∀ (i j k : {l // S l}), cr k.1 * an i.1 * an j.1 = -(cr k.1 * an j.1 * an i.1) := by
    intro i j k
    rw [mul_assoc, eq_neg_of_add_eq_zero_left (haa i.1 j.1), mul_neg, mul_assoc]
  simp only [cstL_eq]
  rw [half_sum (fun i j k : {l // S l} => ttL i.1 j.1 k.1) (fun i j k : {l // S l} => cr k.1 * an j.1 * an i.1) hY]
  have e1 : ∀ i j : {l // S l}, ∑ k : {l // S l}, ttL i.1 j.1 k.1 • (cr k.1 * an j.1 * an i.1) =
      ∑ k : Lt n, if S i.1 ∧ S j.1 ∧ i.1.2.1.2 = j.1.2.1.1 ∧ k.1 = xor i.1.1 j.1.1 ∧ k.2.1.1 = i.1.2.1.1 ∧
        k.2.1.2 = j.1.2.1.2 then cr k * an j.1 * an i.1 else 0 := by
    intro i j
    rw [sum_sub S (fun k => ttL i.1 j.1 k • (cr k * an j.1 * an i.1))]
    refine Finset.sum_congr rfl fun k _ => ?_
    by_cases hc : i.1.2.1.2 = j.1.2.1.1 ∧ k.1 = xor i.1.1 j.1.1 ∧ k.2.1.1 = i.1.2.1.1 ∧ k.2.1.2 = j.1.2.1.2
    · have hk : S k := hS i.1 j.1 k i.2 j.2 hc.1 hc.2.1 (Prod.ext hc.2.2.1 hc.2.2.2)
      simp [ttL, hc, hk, i.2, j.2]
    · have hc' : ¬(S i.1 ∧ S j.1 ∧ i.1.2.1.2 = j.1.2.1.1 ∧ k.1 = xor i.1.1 j.1.1 ∧ k.2.1.1 = i.1.2.1.1 ∧
          k.2.1.2 = j.1.2.1.2) := fun h => hc h.2.2
      rw [if_neg hc']
      simp [ttL, hc]
  simp only [e1]
  have e2 : ∀ G : Lt n → Lt n → R, (∀ i j, ¬(S i ∧ S j) → G i j = 0) →
      ∑ i : {l // S l}, ∑ j : {l // S l}, G i.1 j.1 = ∑ i, ∑ j, G i j := by
    intro G hG
    rw [sum_sub S (fun i => ∑ j : {l // S l}, G i j.1)]
    refine Finset.sum_congr rfl fun i _ => ?_
    by_cases hi : S i
    · rw [if_pos hi, sum_sub S (G i)]
      refine Finset.sum_congr rfl fun j _ => ?_
      split_ifs with hj
      · rfl
      · exact (hG i j fun h => hj h.2).symm
    · rw [if_neg hi]
      exact (Finset.sum_eq_zero fun j _ => hG i j fun h => hi h.1).symm
  rw [e2 (fun i j => ∑ k : Lt n, if S i ∧ S j ∧ i.2.1.2 = j.2.1.1 ∧ k.1 = xor i.1 j.1 ∧ k.2.1.1 = i.2.1.1 ∧
        k.2.1.2 = j.2.1.2 then cr k * an j * an i else 0)]
  · rfl
  · intro i j hij
    refine Finset.sum_eq_zero fun k _ => ?_
    rw [if_neg fun h => hij ⟨h.1, h.2.1⟩]


open Classical in
theorem part_sq {S : Lt n → Prop} (hS : IsClosedL S) (X an cr : Lt n → R)
    (hX : ∀ i j, S i → S j → X i * X j - X j * X i = ∑ k, cstL i j k • X k)
    (h1 : ∀ i j, Commute (X i) (an j)) (h2 : ∀ i j, Commute (X i) (cr j))
    (haa : ∀ i j, an i * an j + an j * an i = 0) (hcc : ∀ i j, cr i * cr j + cr j * cr i = 0)
    (hac : ∀ i j, an i * cr j + cr j * an i = if i = j then 1 else 0) :
    (partA S X an + partB S an cr) * (partA S X an + partB S an cr) = 0 := by
  have eA : ∑ i : {l // S l}, X i.1 * an i.1 = partA S X an := sum_sub S fun l => X l * an l
  have hL : ∀ i j : {l // S l}, X i.1 * X j.1 - X j.1 * X i.1 = ∑ k : {l // S l}, cstL i.1 j.1 k.1 • X k.1 := by
    intro i j
    rw [hX i.1 j.1 i.2 j.2, sum_sub S fun k => cstL i.1 j.1 k • X k]
    refine Finset.sum_congr rfl fun k _ => ?_
    split_ifs with hk
    · rfl
    · rw [cstL_supp hS i.2 j.2 hk, zero_smul]
  have hJ : ∀ p q r k : {l // S l}, ∑ i : {l // S l}, cstL p.1 q.1 i.1 * cstL i.1 r.1 k.1 +
      ∑ i : {l // S l}, cstL q.1 r.1 i.1 * cstL i.1 p.1 k.1 +
      ∑ i : {l // S l}, cstL r.1 p.1 i.1 * cstL i.1 q.1 k.1 = 0 := by
    intro p q r k
    have e : ∀ a b c : {l // S l}, ∑ i : {l // S l}, cstL a.1 b.1 i.1 * cstL i.1 c.1 k.1 =
        ∑ i, cstL a.1 b.1 i * cstL i c.1 k.1 := by
      intro a b c
      rw [sum_sub S fun i => cstL a.1 b.1 i * cstL i c.1 k.1]
      refine Finset.sum_congr rfl fun i _ => ?_
      split_ifs with hi
      · rfl
      · rw [cstL_supp hS a.2 b.2 hi, zero_mul]
    rw [e, e, e]
    exact cstL_jacobi _ _ _ _
  have hd := d_sq (ι := {l // S l}) (fun i j k => cstL i.1 j.1 k.1) (fun i => X i.1) (fun i => an i.1) (fun i => cr i.1)
    hL (fun i j => h1 _ _) (fun i j => h2 _ _) (fun i j k => cstL_anti _ _ _) hJ (fun i j => haa _ _)
    (fun i j => hcc _ _) (fun i j => by
      have := hac i.1 j.1
      simpa only [Subtype.ext_iff] using this)
  rw [eA, partB_eq hS an cr haa] at hd
  exact hd

end Ring

section Chains

variable {V : Type} [AddCommGroup V] [Module ℂ V]

theorem xL_comm {E1 E2 : Fin n → Fin n → Module.End ℂ V} (h : Pair2 E1 E2) (i j : Lt n) :
    xL E1 E2 i * xL E1 E2 j - xL E1 E2 j * xL E1 E2 i = ∑ k, cstL i j k • xL E1 E2 k := by
  obtain ⟨s, p⟩ := i
  obtain ⟨t, q⟩ := j
  have e : ∑ k, cstL (s, p) (t, q) k • xL E1 E2 k = ∑ r : Pos n, cp p q r • xL E1 E2 (xor s t, r) := by
    rw [Fintype.sum_prod_type]
    cases s <;> cases t <;> simp [cstL]
  rw [e]
  have g1 := h.gl1 p.1.1 p.1.2 q.1.1 q.1.2
  have g2 := h.gl2 p.1.1 p.1.2 q.1.1 q.1.2
  have c1 := h.comm p.1.1 p.1.2 q.1.1 q.1.2
  have c2 := h.comm q.1.1 q.1.2 p.1.1 p.1.2
  have sK : ∑ r : Pos n, cp p q r • xL E1 E2 (false, r) = _ := sum_cp (fun a b => E1 a b + E2 a b) p q
  have sP : ∑ r : Pos n, cp p q r • xL E1 E2 (true, r) = _ := sum_cp (fun a b => E1 a b - E2 a b) p q
  cases s <;> cases t
  · change (E1 p.1.1 p.1.2 + E2 p.1.1 p.1.2) * (E1 q.1.1 q.1.2 + E2 q.1.1 q.1.2) -
      (E1 q.1.1 q.1.2 + E2 q.1.1 q.1.2) * (E1 p.1.1 p.1.2 + E2 p.1.1 p.1.2) = ∑ r : Pos n, cp p q r • xL E1 E2 (false, r)
    have e : (E1 p.1.1 p.1.2 + E2 p.1.1 p.1.2) * (E1 q.1.1 q.1.2 + E2 q.1.1 q.1.2) -
        (E1 q.1.1 q.1.2 + E2 q.1.1 q.1.2) * (E1 p.1.1 p.1.2 + E2 p.1.1 p.1.2) =
        (E1 p.1.1 p.1.2 * E1 q.1.1 q.1.2 - E1 q.1.1 q.1.2 * E1 p.1.1 p.1.2) +
          (E2 p.1.1 p.1.2 * E2 q.1.1 q.1.2 - E2 q.1.1 q.1.2 * E2 p.1.1 p.1.2) := by
      simp only [add_mul, mul_add, c1, ← c2]
      abel
    rw [sK, e, g1, g2]
    split_ifs <;> abel
  · change (E1 p.1.1 p.1.2 + E2 p.1.1 p.1.2) * (E1 q.1.1 q.1.2 - E2 q.1.1 q.1.2) -
      (E1 q.1.1 q.1.2 - E2 q.1.1 q.1.2) * (E1 p.1.1 p.1.2 + E2 p.1.1 p.1.2) = ∑ r : Pos n, cp p q r • xL E1 E2 (true, r)
    have e : (E1 p.1.1 p.1.2 + E2 p.1.1 p.1.2) * (E1 q.1.1 q.1.2 - E2 q.1.1 q.1.2) -
        (E1 q.1.1 q.1.2 - E2 q.1.1 q.1.2) * (E1 p.1.1 p.1.2 + E2 p.1.1 p.1.2) =
        (E1 p.1.1 p.1.2 * E1 q.1.1 q.1.2 - E1 q.1.1 q.1.2 * E1 p.1.1 p.1.2) -
          (E2 p.1.1 p.1.2 * E2 q.1.1 q.1.2 - E2 q.1.1 q.1.2 * E2 p.1.1 p.1.2) := by
      simp only [add_mul, mul_add, sub_mul, mul_sub, c1, ← c2]
      abel
    rw [sP, e, g1, g2]
    split_ifs <;> abel
  · change (E1 p.1.1 p.1.2 - E2 p.1.1 p.1.2) * (E1 q.1.1 q.1.2 + E2 q.1.1 q.1.2) -
      (E1 q.1.1 q.1.2 + E2 q.1.1 q.1.2) * (E1 p.1.1 p.1.2 - E2 p.1.1 p.1.2) = ∑ r : Pos n, cp p q r • xL E1 E2 (true, r)
    have e : (E1 p.1.1 p.1.2 - E2 p.1.1 p.1.2) * (E1 q.1.1 q.1.2 + E2 q.1.1 q.1.2) -
        (E1 q.1.1 q.1.2 + E2 q.1.1 q.1.2) * (E1 p.1.1 p.1.2 - E2 p.1.1 p.1.2) =
        (E1 p.1.1 p.1.2 * E1 q.1.1 q.1.2 - E1 q.1.1 q.1.2 * E1 p.1.1 p.1.2) -
          (E2 p.1.1 p.1.2 * E2 q.1.1 q.1.2 - E2 q.1.1 q.1.2 * E2 p.1.1 p.1.2) := by
      simp only [add_mul, mul_add, sub_mul, mul_sub, c1, ← c2]
      abel
    rw [sP, e, g1, g2]
    split_ifs <;> abel
  · change (E1 p.1.1 p.1.2 - E2 p.1.1 p.1.2) * (E1 q.1.1 q.1.2 - E2 q.1.1 q.1.2) -
      (E1 q.1.1 q.1.2 - E2 q.1.1 q.1.2) * (E1 p.1.1 p.1.2 - E2 p.1.1 p.1.2) = ∑ r : Pos n, cp p q r • xL E1 E2 (false, r)
    have e : (E1 p.1.1 p.1.2 - E2 p.1.1 p.1.2) * (E1 q.1.1 q.1.2 - E2 q.1.1 q.1.2) -
        (E1 q.1.1 q.1.2 - E2 q.1.1 q.1.2) * (E1 p.1.1 p.1.2 - E2 p.1.1 p.1.2) =
        (E1 p.1.1 p.1.2 * E1 q.1.1 q.1.2 - E1 q.1.1 q.1.2 * E1 p.1.1 p.1.2) +
          (E2 p.1.1 p.1.2 * E2 q.1.1 q.1.2 - E2 q.1.1 q.1.2 * E2 p.1.1 p.1.2) := by
      simp only [sub_mul, mul_sub, c1, ← c2]
      abel
    rw [sK, e, g1, g2]
    split_ifs <;> abel

end Chains

theorem bdSqL : PositivityTheory.RgBcC.RealD.BdSqL := by
  intro n S hS V _ _ E1 E2 hE
  have h : Pair2 E1 E2 := ⟨hE.1, hE.2.1, hE.2.2⟩
  have hX : ∀ i j : Lt n, (liftL n (xL E1 E2 i) : Module.End ℂ (Cq n V)) * liftL n (xL E1 E2 j) -
      liftL n (xL E1 E2 j) * liftL n (xL E1 E2 i) = ∑ k, cstL i j k • (liftL n (xL E1 E2 k) : Module.End ℂ (Cq n V)) := by
    intro i j
    refine LinearMap.ext fun x => funext fun A => ?_
    have := LinearMap.congr_fun (xL_comm h i j) (x A)
    simpa [liftL, LinearMap.sum_apply, Finset.sum_apply] using this
  exact part_sq hS (fun i => (liftL n (xL E1 E2 i) : Module.End ℂ (Cq n V))) annL creL (fun i j _ _ => hX i j)
    (fun i j => GlobalTheory.CompanionTheory.RealMult.BdSqProof.lift_ann _ j) (fun i j => GlobalTheory.CompanionTheory.RealMult.BdSqProof.lift_cre _ j)
    GlobalTheory.CompanionTheory.RealMult.BdSqProof.ann_ann GlobalTheory.CompanionTheory.RealMult.BdSqProof.cre_cre GlobalTheory.CompanionTheory.RealMult.BdSqProof.ann_cre

end GlobalTheory.CompanionTheory.KPChains
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundarySquareLeviReal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveRestrictionOfBdsqVanish =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveRestrictionOfBdsqVanish", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionAction\npublic import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.EigenspaceCyclicDensity.CreationOperators.WtProj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Finset

noncomputable section

namespace GlobalTheory.CompanionTheory.InjRL

open PositivityTheory.RgBcC PositivityTheory.RgBcC.Real PositivityTheory.RgBcC.RealD

def wP {n : ℕ} (l : Lt n) : ℕ := n - ((l.2.1.2 : ℕ) - (l.2.1.1 : ℕ))

def potL {n : ℕ} (B : Finset (Lt n)) : ℕ := ∑ l ∈ B, wP l

def pPart {n : ℕ} (A : Finset (Lt n)) : Finset (Lt n) := A.filter fun l => l.1 = true

section Alg

variable {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V]

theorem annL_apply (l : Lt n) (x : Cq n V) (A : Finset (Lt n)) :
    annL l x A = if l ∈ A then 0 else sgL l A • x (insert l A) := rfl

theorem creL_apply (l : Lt n) (x : Cq n V) (A : Finset (Lt n)) :
    creL l x A = if l ∈ A then sgL l A • x (A.erase l) else 0 := rfl

theorem liftL_apply (T : V →ₗ[ℂ] V) (x : Cq n V) (A : Finset (Lt n)) : liftL n T x A = T (x A) := rfl

theorem FtL_apply (E1 E2 : Fin n → Fin n → Module.End ℂ V) (c : Fin n) (x : Cq n V) (A : Finset (Lt n)) :
    FtL E1 E2 c x A = kA E1 E2 c c (x A) + (wtL A c : ℂ) • x A := rfl

abbrev TriL (S : Lt n → Prop) (l m k : Lt n) : Prop :=
  S l ∧ S m ∧ l.2.1.2 = m.2.1.1 ∧ k.1 = xor l.1 m.1 ∧ k.2.1.1 = l.2.1.1 ∧ k.2.1.2 = m.2.1.2

open Classical in
theorem bdL_apply (S : Lt n → Prop) (E1 E2 : Fin n → Fin n → Module.End ℂ V) (x : Cq n V) (A : Finset (Lt n)) :
    bdL S E1 E2 x A = (∑ l : Lt n, if S l then xL E1 E2 l (annL l x A) else 0) +
      ∑ l : Lt n, ∑ m : Lt n, ∑ k : Lt n, if TriL S l m k then creL k (annL m (annL l x)) A else 0 := by
  simp only [bdL, LinearMap.add_apply, Pi.add_apply, LinearMap.sum_apply, Finset.sum_apply]
  congr 1
  · refine Finset.sum_congr rfl fun l _ => ?_
    split_ifs <;> rfl
  · refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun m _ => Finset.sum_congr rfl fun k _ => ?_
    split_ifs <;> rfl

theorem annL_ne {l : Lt n} {x : Cq n V} {A : Finset (Lt n)} (h : annL l x A ≠ 0) : l ∉ A ∧ x (insert l A) ≠ 0 := by
  rw [annL_apply] at h
  by_cases hi : l ∈ A
  · simp [hi] at h
  · exact ⟨hi, fun h0 => h (by simp [h0])⟩

theorem creL_ne {l : Lt n} {x : Cq n V} {A : Finset (Lt n)} (h : creL l x A ≠ 0) : l ∈ A ∧ x (A.erase l) ≠ 0 := by
  rw [creL_apply] at h
  by_cases hi : l ∈ A
  · exact ⟨hi, fun h0 => h (by simp [h0])⟩
  · simp [hi] at h

theorem triL_ne {l m k : Lt n} {x : Cq n V} {A : Finset (Lt n)} (h : creL k (annL m (annL l x)) A ≠ 0) :
    k ∈ A ∧ m ∉ A.erase k ∧ l ∉ insert m (A.erase k) ∧ x (insert l (insert m (A.erase k))) ≠ 0 :=
  let h1 := creL_ne h
  let h2 := annL_ne h1.2
  let h3 := annL_ne h2.2
  ⟨h1.1, h2.1, h3.1, h3.2⟩

theorem bdL_sub_ne {S S' : Lt n → Prop} (h0 : ∀ l, S' l → S l) (E1 E2 : Fin n → Fin n → Module.End ℂ V)
    (x : Cq n V) (A : Finset (Lt n)) (h : bdL S E1 E2 x A ≠ bdL S' E1 E2 x A) :
    (∃ l, S l ∧ ¬S' l ∧ annL l x A ≠ 0) ∨
      ∃ l m k, TriL S l m k ∧ ¬(S' l ∧ S' m) ∧ creL k (annL m (annL l x)) A ≠ 0 := by
  classical
  by_contra hc
  push Not at hc
  apply h
  rw [bdL_apply, bdL_apply]
  congr 1
  · refine Finset.sum_congr rfl fun l _ => ?_
    by_cases h1 : S' l
    · rw [if_pos h1, if_pos (h0 _ h1)]
    · rw [if_neg h1]
      split_ifs with h2
      · rw [hc.1 l h2 h1, map_zero]
      · rfl
  · refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun m _ => Finset.sum_congr rfl fun k _ => ?_
    by_cases h1 : TriL S' l m k
    · rw [if_pos h1, if_pos ⟨h0 _ h1.1, h0 _ h1.2.1, h1.2.2⟩]
    · rw [if_neg h1]
      split_ifs with h2
      · exact hc.2 l m k h2 fun a b => h1 ⟨a, b, h2.2.2⟩
      · rfl

theorem bdL_ne (S : Lt n → Prop) (E1 E2 : Fin n → Fin n → Module.End ℂ V) (x : Cq n V) (A : Finset (Lt n))
    (h : bdL S E1 E2 x A ≠ 0) :
    (∃ l, S l ∧ annL l x A ≠ 0) ∨ ∃ l m k, TriL S l m k ∧ creL k (annL m (annL l x)) A ≠ 0 := by
  classical
  by_contra hc
  push Not at hc
  apply h
  rw [bdL_apply, Finset.sum_eq_zero, Finset.sum_eq_zero, add_zero]
  · refine fun l _ => Finset.sum_eq_zero fun m _ => Finset.sum_eq_zero fun k _ => ?_
    split_ifs with h2
    · exact hc.2 l m k h2
    · rfl
  · intro l _
    split_ifs with h2
    · rw [hc.1 l h2, map_zero]
    · rfl

theorem pPart_insert (l : Lt n) (A : Finset (Lt n)) :
    pPart (insert l A) = if l.1 = true then insert l (pPart A) else pPart A := filter_insert _ _ _

theorem pPart_erase_of_not {k : Lt n} (hk : ¬k.1 = true) (A : Finset (Lt n)) : pPart (A.erase k) = pPart A := by
  ext a
  simp only [pPart, mem_filter, mem_erase]
  exact ⟨fun h => ⟨h.1.2, h.2⟩, fun h => ⟨⟨fun e => hk (e ▸ h.2), h.1⟩, h.2⟩⟩

theorem potL_insert {l : Lt n} {B : Finset (Lt n)} (h : l ∉ B) : potL (insert l B) = wP l + potL B :=
  Finset.sum_insert h

theorem degL_bdL (S : Lt n → Prop) (E1 E2 : Fin n → Fin n → Module.End ℂ V) {j : ℕ} {x : Cq n V}
    (hx : DegL (j + 1) x) : DegL j (bdL S E1 E2 x) := by
  intro A hA
  rcases bdL_ne S E1 E2 x A hA with ⟨l, -, h1⟩ | ⟨l, m, k, -, h1⟩
  · obtain ⟨h2, h3⟩ := annL_ne h1
    have := hx _ h3
    rw [card_insert_of_notMem h2] at this
    omega
  · obtain ⟨h2, h3, h4, h5⟩ := triL_ne h1
    have := hx _ h5
    rw [card_insert_of_notMem h4, card_insert_of_notMem h3] at this
    have := card_erase_add_one h2
    omega

theorem partL_bdK (E1 E2 : Fin n → Fin n → Module.End ℂ V) {B : Finset (Lt n)} {x : Cq n V} (hx : PartL B x) :
    PartL B (bdL isK E1 E2 x) := by
  intro A hA
  rcases bdL_ne isK E1 E2 x A hA with ⟨l, hl, h1⟩ | ⟨l, m, k, ht, h1⟩
  · obtain ⟨-, h3⟩ := annL_ne h1
    have e : pPart (insert l A) = B := hx _ h3
    rw [pPart_insert, if_neg (by simp [show l.1 = false from hl])] at e
    exact e
  · obtain ⟨-, -, -, h5⟩ := triL_ne h1
    have e : pPart (insert l (insert m (A.erase k))) = B := hx _ h5
    have hl : l.1 = false := ht.1
    have hm : m.1 = false := ht.2.1
    have hk : k.1 = false := by rw [ht.2.2.2.1, hl, hm]; rfl
    rw [pPart_insert, if_neg (by simp [hl]), pPart_insert, if_neg (by simp [hm]),
      pPart_erase_of_not (by simp [hk])] at e
    exact e

theorem suppL_bdL {S : Lt n → Prop}
    (hS : ∀ l m k : Lt n, S l → S m → l.2.1.2 = m.2.1.1 → k.1 = xor l.1 m.1 → k.2.1 = (l.2.1.1, m.2.1.2) → S k)
    (E1 E2 : Fin n → Fin n → Module.End ℂ V) {x : Cq n V} (hx : SuppL S x) : SuppL S (bdL S E1 E2 x) := by
  intro A hA e he
  rcases bdL_ne S E1 E2 x A hA with ⟨l, -, h1⟩ | ⟨l, m, k, ht, h1⟩
  · exact hx _ (annL_ne h1).2 e (mem_insert_of_mem he)
  · have h5 := (triL_ne h1).2.2.2
    by_cases hk : e = k
    · subst hk
      exact hS l m e (hx _ h5 l (mem_insert_self _ _)) (hx _ h5 m (mem_insert_of_mem (mem_insert_self _ _))) ht.2.2.1
        ht.2.2.2.1 (Prod.ext ht.2.2.2.2.1 ht.2.2.2.2.2)
    · exact hx _ h5 e (mem_insert_of_mem (mem_insert_of_mem (mem_erase.2 ⟨hk, he⟩)))

theorem pot_lt (lev : Fin n → ℕ) (E1 E2 : Fin n → Fin n → Module.End ℂ V) {B : Finset (Lt n)} {x : Cq n V}
    (hx : PartL B x) (A : Finset (Lt n)) (hA : (bdL (inRR lev) E1 E2 x - bdL isK E1 E2 x) A ≠ 0) :
    potL (pPart A) < potL B := by
  have hne : bdL (inRR lev) E1 E2 x A ≠ bdL isK E1 E2 x A := fun h => hA (by
    rw [Pi.sub_apply, h, sub_self])
  have hpos : ∀ l : Lt n, (l.2.1.1 : ℕ) < l.2.1.2 ∧ (l.2.1.2 : ℕ) < n := fun l => ⟨l.2.2, l.2.1.2.2⟩
  rcases bdL_sub_ne (S := inRR lev) (S' := isK) (fun _ h => Or.inl h) E1 E2 x A hne with
    ⟨l, -, h2, h3⟩ | ⟨l, m, k, ht, h2, h3⟩
  · obtain ⟨h4, h5⟩ := annL_ne h3
    have e1 : pPart (insert l A) = B := hx _ h5
    have hl : l.1 = true := by simpa [isK] using h2
    rw [pPart_insert, if_pos hl] at e1
    rw [← e1, potL_insert (B := pPart A) (fun h => h4 (mem_filter.1 h).1)]
    have := hpos l
    simp only [wP]
    omega
  · obtain ⟨h4, h5, h6, h7⟩ := triL_ne h3
    have e1 : pPart (insert l (insert m (A.erase k))) = B := hx _ h7
    obtain ⟨-, -, t1, t0, t2, t3⟩ := ht
    have pl := hpos l
    have pm := hpos m
    have pk := hpos k
    have v1 : (l.2.1.2 : ℕ) = m.2.1.1 := congrArg Fin.val t1
    have v2 : (k.2.1.1 : ℕ) = l.2.1.1 := congrArg Fin.val t2
    have v3 : (k.2.1.2 : ℕ) = m.2.1.2 := congrArg Fin.val t3
    set R := pPart (A.erase k) with hR
    have hmR : m ∉ R := fun h => h5 (mem_filter.1 h).1
    have hlR : l ∉ R := fun h => h6 (mem_insert_of_mem (mem_filter.1 h).1)
    have hlm : l ∉ insert m R := fun h => h6 (by
      rcases mem_insert.1 h with h | h
      · exact h ▸ mem_insert_self _ _
      · exact absurd h hlR)
    have hkR : k ∉ R := fun h => notMem_erase k A (mem_filter.1 h).1
    have hA' : pPart A = if k.1 = true then insert k R else R := by
      conv_lhs => rw [← insert_erase h4, pPart_insert]
    rw [pPart_insert, pPart_insert, ← hR] at e1
    rw [hA', ← e1]
    cases hl : l.1 <;> cases hm : m.1
    · exact absurd ⟨hl, hm⟩ h2
    · have hk : k.1 = true := by rw [t0, hl, hm]; rfl
      simp only [hk, if_true, Bool.false_eq_true, if_false]
      rw [potL_insert hkR, potL_insert hmR]
      simp only [wP]
      omega
    · have hk : k.1 = true := by rw [t0, hl, hm]; rfl
      simp only [hk, if_true, Bool.false_eq_true, if_false]
      rw [potL_insert hkR, potL_insert hlR]
      simp only [wP]
      omega
    · have hk : k.1 = false := by rw [t0, hl, hm]; rfl
      simp only [hk, if_true, Bool.false_eq_true, if_false]
      rw [potL_insert hlm, potL_insert hmR]
      simp only [wP]
      omega

def alL (l : Lt n) (c : Fin n) : ℝ := (if l.2.1.1 = c then 1 else 0) - (if l.2.1.2 = c then 1 else 0)

theorem wtL_insert {l : Lt n} {A : Finset (Lt n)} (h : l ∉ A) (c : Fin n) :
    wtL (insert l A) c = wtL A c + alL l c := by
  simp only [wtL, alL, filter_insert]
  have h1 : ∀ p : Lt n → Prop, ∀ [DecidablePred p], l ∉ A.filter p := fun p _ hh => h (mem_filter.1 hh).1
  split_ifs <;> (try simp only [card_insert_of_notMem (h1 _)]) <;> push_cast <;> ring

theorem FtL_ann (E1 E2 : Fin n → Fin n → Module.End ℂ V) (c : Fin n) (l : Lt n) (x : Cq n V) :
    FtL E1 E2 c (annL l x) = annL l (FtL E1 E2 c x) - (alL l c : ℂ) • annL l x := by
  funext A
  simp only [FtL_apply, annL_apply, Pi.sub_apply, Pi.smul_apply]
  by_cases h : l ∈ A
  · simp [h]
  · rw [if_neg h, if_neg h, wtL_insert h, map_smul]
    push_cast
    module

theorem FtL_cre (E1 E2 : Fin n → Fin n → Module.End ℂ V) (c : Fin n) (l : Lt n) (x : Cq n V) :
    FtL E1 E2 c (creL l x) = creL l (FtL E1 E2 c x) + (alL l c : ℂ) • creL l x := by
  funext A
  simp only [FtL_apply, creL_apply, Pi.add_apply, Pi.smul_apply]
  by_cases h : l ∈ A
  · have e : wtL A c = wtL (A.erase l) c + alL l c := by
      conv_lhs => rw [← insert_erase h]
      exact wtL_insert (notMem_erase l A) c
    rw [if_pos h, if_pos h, e, map_smul]
    push_cast
    module
  · simp [h]

theorem gl_diag {F : Fin n → Fin n → Module.End ℂ V} (h : Formalism.REAL.GlRel F) {a b : Fin n} (hab : a ≠ b) (c : Fin n)
    (x : V) : F c c (F a b x) = F a b (F c c x) +
      ((((if a = c then 1 else 0) - (if b = c then 1 else 0) : ℝ)) : ℂ) • F a b x := by
  have := LinearMap.congr_fun (h c c a b) x
  simp only [LinearMap.sub_apply, Module.End.mul_apply] at this
  rw [sub_eq_iff_eq_add.1 this]
  by_cases h1 : c = a
  · subst h1
    simp [hab.symm]
    abel
  · by_cases h2 : b = c
    · subst h2
      simp [hab, Ne.symm hab]
      abel
    · simp [h1, h2, Ne.symm h1]

theorem kA_xL {E1 E2 : Fin n → Fin n → Module.End ℂ V} (hP : IsPairA E1 E2) (l : Lt n) (c : Fin n) (x : V) :
    kA E1 E2 c c (xL E1 E2 l x) = xL E1 E2 l (kA E1 E2 c c x) + (alL l c : ℂ) • xL E1 E2 l x := by
  have hne : l.2.1.1 ≠ l.2.1.2 := l.2.2.ne
  have g1 := gl_diag hP.1 hne c x
  have g2 := gl_diag hP.2.1 hne c x
  have c1 : E1 c c (E2 l.2.1.1 l.2.1.2 x) = E2 l.2.1.1 l.2.1.2 (E1 c c x) :=
    LinearMap.congr_fun (hP.2.2 c c l.2.1.1 l.2.1.2) x
  have c2 : E2 c c (E1 l.2.1.1 l.2.1.2 x) = E1 l.2.1.1 l.2.1.2 (E2 c c x) :=
    (LinearMap.congr_fun (hP.2.2 l.2.1.1 l.2.1.2 c c) x).symm
  simp only [xL, alL]
  cases hl : l.1
  · simp only [kA, pA, Bool.false_eq_true, if_false, LinearMap.add_apply, map_add (f := _)]
    rw [g1, g2, c1, c2]
    module
  · simp only [kA, pA, if_true, LinearMap.add_apply, LinearMap.sub_apply, map_add (f := _), map_sub]
    rw [g1, g2, c1, c2]
    module

theorem ftL_bdL {E1 E2 : Fin n → Fin n → Module.End ℂ V} (hP : IsPairA E1 E2) (S : Lt n → Prop) (c : Fin n) :
    Commute (FtL E1 E2 c) (bdL S E1 E2) := by
  classical
  unfold bdL
  refine Commute.add_right (Commute.sum_right _ _ _ fun l _ => ?_) (Commute.sum_right _ _ _ fun l _ =>
    Commute.sum_right _ _ _ fun m _ => Commute.sum_right _ _ _ fun k _ => ?_)
  · split_ifs with hi
    · refine LinearMap.ext fun x => ?_
      have e : ∀ y : Cq n V, FtL E1 E2 c (liftL n (xL E1 E2 l) y) =
          liftL n (xL E1 E2 l) (FtL E1 E2 c y) + (alL l c : ℂ) • liftL n (xL E1 E2 l) y := by
        intro y
        funext A
        simp only [FtL_apply, liftL_apply, Pi.add_apply, Pi.smul_apply, map_add (f := _), map_smul, kA_xL hP]
        module
      simp only [Module.End.mul_apply]
      rw [e, FtL_ann, map_sub, map_smul, sub_add_cancel]
    · exact Commute.zero_right _
  · split_ifs with ht
    · refine LinearMap.ext fun x => ?_
      simp only [Module.End.mul_apply]
      rw [FtL_cre, FtL_ann, FtL_ann]
      have : (alL k c : ℂ) = alL l c + alL m c := by
        rw [← Complex.ofReal_add]
        simp only [alL, ht.2.2.2.2.1, ht.2.2.2.2.2, ht.2.2.1]
        congr 1
        ring
      simp only [map_sub, map_smul, this]
      module
    · exact Commute.zero_right _

theorem wtL_omN (n : ℕ) : wtL (omN n) = (2 : ℝ) • rhoV n := by
  funext c
  have h1 : ((omN n).filter fun l => l.2.1.1 = c).card = (Ioi c).card := by
    refine card_bij (fun l _ => l.2.1.2) (fun l hl => ?_) (fun l hl m hm h => ?_) (fun b hb => ?_)
    · exact mem_Ioi.2 ((mem_filter.1 hl).2 ▸ l.2.2)
    · have a1 := (mem_filter.1 hl).2
      have a2 := (mem_filter.1 hm).2
      have a3 := (mem_filter.1 (mem_filter.1 hl).1).2
      have a4 := (mem_filter.1 (mem_filter.1 hm).1).2
      exact Prod.ext (a3.trans a4.symm) (Subtype.ext (Prod.ext (a1.trans a2.symm) h))
    · exact ⟨(false, ⟨(c, b), mem_Ioi.1 hb⟩), by simp [omN], rfl⟩
  have h2 : ((omN n).filter fun l => l.2.1.2 = c).card = (Iio c).card := by
    refine card_bij (fun l _ => l.2.1.1) (fun l hl => ?_) (fun l hl m hm h => ?_) (fun b hb => ?_)
    · exact mem_Iio.2 ((mem_filter.1 hl).2 ▸ l.2.2)
    · have a1 := (mem_filter.1 hl).2
      have a2 := (mem_filter.1 hm).2
      have a3 := (mem_filter.1 (mem_filter.1 hl).1).2
      have a4 := (mem_filter.1 (mem_filter.1 hm).1).2
      exact Prod.ext (a3.trans a4.symm) (Subtype.ext (Prod.ext h (a1.trans a2.symm)))
    · exact ⟨(false, ⟨(b, c), mem_Iio.1 hb⟩), by simp [omN], rfl⟩
  have h3 : (Ioi c).card + (c : ℕ) + 1 = n := by
    have := c.2
    rw [Fin.card_Ioi]
    omega
  have h4 : (((Ioi c).card : ℕ) : ℝ) + (c : ℕ) + 1 = n := by exact_mod_cast h3
  simp only [wtL, Pi.smul_apply, smul_eq_mul, rhoV]
  rw [h1, h2, Fin.card_Iio, ← h4]
  ring

theorem kA_comm {E1 E2 : Fin n → Fin n → Module.End ℂ V} (hP : IsPairA E1 E2) (c d : Fin n) (v : V) :
    kA E1 E2 c c (kA E1 E2 d d v) = kA E1 E2 d d (kA E1 E2 c c v) := by
  have g : ∀ {F : Fin n → Fin n → Module.End ℂ V}, Formalism.REAL.GlRel F → ∀ v, F c c (F d d v) = F d d (F c c v) := by
    intro F h v
    have := LinearMap.congr_fun (h c c d d) v
    simp only [LinearMap.sub_apply, Module.End.mul_apply] at this
    by_cases hcd : c = d
    · subst hcd; rfl
    · rw [if_neg hcd, if_neg (Ne.symm hcd)] at this
      simpa [sub_eq_zero] using this
  have c1 : ∀ v, E1 c c (E2 d d v) = E2 d d (E1 c c v) := fun v => LinearMap.congr_fun (hP.2.2 c c d d) v
  have c2 : ∀ v, E1 d d (E2 c c v) = E2 c c (E1 d d v) := fun v => LinearMap.congr_fun (hP.2.2 d d c c) v
  simp only [kA, LinearMap.add_apply, map_add (f := _), g hP.1, g hP.2.1, c1, c2]
  abel

theorem FtL_commute {E1 E2 : Fin n → Fin n → Module.End ℂ V} (hP : IsPairA E1 E2) (c d : Fin n) :
    Commute (FtL E1 E2 c) (FtL E1 E2 d) := by
  refine LinearMap.ext fun x => funext fun A => ?_
  simp only [Module.End.mul_apply, FtL_apply, map_add (f := _), map_smul, kA_comm hP c d, smul_add, smul_smul,
    mul_comm (wtL A c : ℂ)]
  abel

theorem chainL_mem_iSup (E1 E2 : Fin n → Fin n → Module.End ℂ V) (c : Fin n)
    (h : ∀ v : V, v ∈ ⨆ μ : ℂ, (kA E1 E2 c c).eigenspace μ) (t : Cq n V) :
    t ∈ ⨆ μ : ℂ, (FtL E1 E2 c).eigenspace μ := by
  classical
  rw [← Finset.univ_sum_single t]
  refine Submodule.sum_mem _ fun A _ => ?_
  have hle : (⨆ μ : ℂ, (kA E1 E2 c c).eigenspace μ).map (LinearMap.single ℂ (fun _ : Finset (Lt n) => V) A) ≤
      ⨆ μ : ℂ, (FtL E1 E2 c).eigenspace μ := by
    rw [Submodule.map_iSup]
    refine iSup_le fun μ => le_trans ?_ (le_iSup _ (μ + (wtL A c : ℂ)))
    rintro _ ⟨y, hy, rfl⟩
    have hy' := Module.End.mem_eigenspace_iff.1 hy
    rw [Module.End.mem_eigenspace_iff]
    funext B
    rw [FtL_apply]
    by_cases hB : B = A
    · subst hB
      simp [hy', add_smul]
    · simp [Pi.single_eq_of_ne hB]
  exact hle ⟨t A, h _, rfl⟩

end Alg

theorem wtProjL {n : ℕ} {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
    {E1 E2 : Fin n → Fin n → Module.End ℂ V} (hP : IsPairA E1 E2)
    (hU : ∀ c (x y : V), inner ℂ (kA E1 E2 c c x) y = inner ℂ x (kA E1 E2 c c y))
    (hL : ∀ x : V, ∃ S : Submodule ℂ V, FiniteDimensional ℂ S ∧ x ∈ S ∧ ∀ c, ∀ w ∈ S, kA E1 E2 c c w ∈ S)
    (D : Module.End ℂ (Cq n V)) (hD : ∀ c, Commute (FtL E1 E2 c) D) (τ : Fin n → ℝ) (t : Cq n V)
    (ht : WtL E1 E2 τ (D t)) : ∃ t' : Cq n V, WtL E1 E2 τ t' ∧ D t' = D t ∧ ∀ A, t A = 0 → t' A = 0 := by
  have hdiag : ∀ c (x : Cq n V), x ∈ ⨆ μ : ℂ, (FtL E1 E2 c).eigenspace μ := fun c =>
    chainL_mem_iSup E1 E2 c fun v => by
      obtain ⟨S, hS, hv, hst⟩ := hL v
      haveI := hS
      exact GlobalTheory.CompanionTheory.LKWtProj.mem_iSup_eigenspace (kA E1 E2 c c) (fun x y => hU c x y) S (hst c) v hv
  let W : Submodule ℂ (Cq n V) :=
    { carrier := {x | ∀ A, t A = 0 → x A = 0}
      add_mem' := fun {a b} ha hb A hA => by simp [ha A hA, hb A hA]
      zero_mem' := fun A _ => rfl
      smul_mem' := fun c a ha A hA => by simp [ha A hA] }
  have hW : ∀ c, ∀ x ∈ W, FtL E1 E2 c x ∈ W := fun c x hx A hA => by
    have : x A = 0 := hx A hA
    rw [FtL_apply, this]; simp
  have key : ∀ s : Finset (Fin n), ∃ t' : Cq n V, (∀ c ∈ s, FtL E1 E2 c t' = (τ c : ℂ) • t') ∧ D t' = D t ∧
      t' ∈ W := by
    intro s
    induction s using Finset.induction_on with
    | empty => exact ⟨t, by simp, rfl, fun A hA => hA⟩
    | insert c s _ ih =>
      obtain ⟨u, hu1, hu2, hu3⟩ := ih
      obtain ⟨P, hP1, hP2, hP3, hP4⟩ := GlobalTheory.CompanionTheory.LKWtProj.exists_proj (FtL E1 E2 c) (τ c) u (hdiag c u)
      refine ⟨P u, fun d hd => ?_, ?_, hP2 W (hW c) u hu3⟩
      · rcases Finset.mem_insert.1 hd with rfl | hd
        · exact hP4
        · have := LinearMap.congr_fun (hP1 _ (FtL_commute hP c d)).eq u
          simp only [Module.End.mul_apply] at this
          rw [← this, hu1 d hd, map_smul]
      · have := LinearMap.congr_fun (hP1 _ (hD c)).eq u
        simp only [Module.End.mul_apply] at this
        rw [← this, hu2, hP3 _ (ht c)]
  obtain ⟨t', h1, h2, h3⟩ := key univ
  exact ⟨t', fun c => h1 c (mem_univ c), h2, h3⟩

theorem inRR_closed {n : ℕ} {lev : Fin n → ℕ} (hm : Monotone lev) (l m k : Lt n) (hl : inRR lev l) (hm' : inRR lev m)
    (e : l.2.1.2 = m.2.1.1) (e1 : k.1 = xor l.1 m.1) (e2 : k.2.1 = (l.2.1.1, m.2.1.2)) : inRR lev k := by
  have m1 : lev l.2.1.1 ≤ lev l.2.1.2 := hm l.2.2.le
  have m2 : lev m.2.1.1 ≤ lev m.2.1.2 := hm m.2.2.le
  have m3 : lev l.2.1.2 = lev m.2.1.1 := congrArg lev e
  have k1 : k.2.1.1 = l.2.1.1 := (Prod.ext_iff.1 e2).1
  have k2 : k.2.1.2 = m.2.1.2 := (Prod.ext_iff.1 e2).2
  rcases hl with hl | hl
  · rcases hm' with hm' | hm'
    · left; rw [e1, hl, hm']; rfl
    · right; show lev k.2.1.1 < lev k.2.1.2; rw [k1, k2]; omega
  · right
    show lev k.2.1.1 < lev k.2.1.2
    rw [k1, k2]
    rcases hm' with hm' | hm' <;> omega

theorem suppL_sub {n : ℕ} {V : Type} [AddCommGroup V] {P : Lt n → Prop} {x y : Cq n V} (hx : SuppL P x)
    (hy : SuppL P y) : SuppL P (x - y) := by
  intro A hA
  by_cases h : x A = 0
  · exact hy A fun h' => hA (by simp [h, h'])
  · exact hx A h

theorem suppL_sum {n : ℕ} {V : Type} [AddCommGroup V] {ι : Type} {P : Lt n → Prop} (s : Finset ι) (f : ι → Cq n V)
    (h : ∀ b ∈ s, SuppL P (f b)) : SuppL P (∑ b ∈ s, f b) := by
  intro A hA
  rw [Finset.sum_apply] at hA
  obtain ⟨b, hb, h'⟩ := exists_ne_zero_of_sum_ne_zero hA
  exact h b hb A h'

theorem injRL_of (hB : BdSqL) (hV : VanKL) : InjRL := by
  intro n lam hanti lev hlev V _ _ E1 E2 hA u y hu hS hD hb
  have hP : IsPairA E1 E2 := ⟨hA.gl1, hA.gl2, hA.comm⟩
  have hcl : ∀ l m k : Lt n, inRR lev l → inRR lev m → l.2.1.2 = m.2.1.1 → k.1 = xor l.1 m.1 →
      k.2.1 = (l.2.1.1, m.2.1.2) → inRR lev k := inRR_closed hlev.1
  set τ : Fin n → ℝ := muQ lam lev + (2 : ℝ) • rhoV n with hτ
  have hsq : ∀ x, bdL (inRR lev) E1 E2 (bdL (inRR lev) E1 E2 x) = 0 := fun x =>
    LinearMap.congr_fun (hB n _ hcl V E1 E2 hP) x
  have main : ∀ N (y : Cq n V), (∀ A, y A ≠ 0 → A.card = (omN n).card + 1 ∧ potL (pPart A) < N) →
      SuppL (inRR lev) y → WtL E1 E2 τ y → bdL (inRR lev) E1 E2 y = Pi.single (omN n) u → u = 0 := by
    intro N
    induction N with
    | zero =>
      intro y h _ _ hb
      obtain rfl : y = 0 := funext fun A => by by_contra h'; exact Nat.not_lt_zero _ (h A h').2
      simpa using (congrFun hb (omN n)).symm
    | succ N ih =>
      intro y h hys hw hb
      let r : Finset (Lt n) → Cq n V := fun B A => if pPart A = B then y A else 0
      have hry : ∀ B A, r B A ≠ 0 → pPart A = B ∧ y A ≠ 0 := fun B A hA => by
        simp only [r] at hA
        split_ifs at hA with h1
        · exact ⟨h1, hA⟩
        · exact absurd rfl hA
      have hr : ∀ B, PartL B (r B) := fun B A hA => (hry B A hA).1
      have hrD : ∀ B, DegL ((omN n).card + 1) (r B) := fun B A hA => (h A (hry B A hA).2).1
      have hsum : y = ∑ B, r B := funext fun A => by simp [r, Finset.sum_apply]
      have hrne : ∀ B A, r B A ≠ 0 → potL B < N + 1 ∧ B.Nonempty ∧ ∀ l ∈ B, l.1 = true ∧ inUU lev l := fun B A hA => by
        obtain ⟨h3, h2⟩ := hry B A hA
        have h4 := h A h2
        refine ⟨h3 ▸ h4.2, nonempty_iff_ne_empty.2 fun hB => ?_, fun l hl => ?_⟩
        · have hsub : A ⊆ omN n := fun i hi => mem_filter.2 ⟨mem_univ _, by
            by_contra hc
            have : i ∈ pPart A := mem_filter.2 ⟨hi, by simpa using hc⟩
            rw [h3, hB] at this
            exact notMem_empty i this⟩
          have := card_le_card hsub
          omega
        · rw [← h3] at hl
          obtain ⟨hl1, hl2⟩ := mem_filter.1 hl
          refine ⟨hl2, (hys A h2 l hl1).resolve_left ?_⟩
          rw [hl2]; simp
      have hrw : ∀ B, WtL E1 E2 τ (r B) := fun B c => funext fun A => by
        have := congrFun (hw c) A
        change kA E1 E2 c c (y A) + (wtL A c : ℂ) • y A = (τ c : ℂ) • y A at this
        change kA E1 E2 c c (r B A) + (wtL A c : ℂ) • r B A = (τ c : ℂ) • r B A
        simp only [r]
        split_ifs
        · exact this
        · simp
      have hz : ∀ B, potL B = N → bdL isK E1 E2 (r B) = 0 := by
        intro B hBN
        funext A
        by_contra hne
        have hAB : pPart A = B := partL_bdK E1 E2 (hr B) A hne
        have hr0 : r B ≠ 0 := fun h0 => hne (by rw [h0, map_zero])
        obtain ⟨A₀, hA₀⟩ := Function.ne_iff.1 hr0
        obtain ⟨-, hBn, -⟩ := hrne B A₀ hA₀
        have hAo : A ≠ omN n := by
          rintro rfl
          obtain ⟨i, hi⟩ := hBn
          rw [← hAB] at hi
          have h1 := (mem_filter.1 hi).2
          have h2 := (mem_filter.1 (mem_filter.1 hi).1).2
          rw [h1] at h2
          simp at h2
        have e := congrFun hb A

        rw [Pi.single_eq_of_ne hAo, hsum, map_sum, Finset.sum_apply, Finset.sum_eq_single B] at e
        · apply hne
          by_contra h'
          have := pot_lt lev E1 E2 (hr B) A (by rw [Pi.sub_apply, e, zero_sub]; exact neg_ne_zero.2 h')
          rw [hAB] at this
          exact lt_irrefl _ this
        · intro B' _ hB'
          by_cases h1 : r B' = 0
          · simp [h1]
          obtain ⟨A₁, hA₁⟩ := Function.ne_iff.1 h1
          have h2 := (hrne B' A₁ hA₁).1
          have h3 : bdL isK E1 E2 (r B') A = 0 := by
            by_contra h3; exact hB' ((partL_bdK E1 E2 (hr B') A h3).symm.trans hAB)
          by_contra h4
          have := pot_lt lev E1 E2 (hr B') A (by rw [Pi.sub_apply, h3, sub_zero]; exact h4)
          rw [hAB] at this
          omega
        · simp
      have hex : ∀ B, ∃ t : Cq n V, WtL E1 E2 τ t ∧ (potL B = N → bdL isK E1 E2 t = r B) ∧ (potL B ≠ N → t = 0) ∧
          (t = 0 ∨ PartL B t) ∧ DegL ((omN n).card + 1 + 1) t ∧ SuppL (inRR lev) t := by
        intro B
        by_cases h0 : potL B = N ∧ r B ≠ 0
        · obtain ⟨A₀, hA₀⟩ := Function.ne_iff.1 h0.2
          obtain ⟨-, hBn, hBU⟩ := hrne B A₀ hA₀
          obtain ⟨t, t1, t2, t3, t4⟩ := hV n lam hanti lev hlev V E1 E2 hA B _ (r B) hBn hBU (hr B) (hrD B) (hrw B)
            (hz B h0.1)
          refine ⟨t, t3, fun _ => t4, fun h => absurd h0.1 h, Or.inr t1, t2, fun A hA i hi => ?_⟩
          by_cases hci : i.1 = false
          · exact Or.inl hci
          · have : i ∈ pPart A := mem_filter.2 ⟨hi, by simpa using hci⟩
            have e : pPart A = B := t1 A hA
            rw [e] at this
            exact Or.inr (hBU i this).2
        · refine ⟨0, fun c => by simp, fun h => ?_, fun _ => rfl, Or.inl rfl, fun A hA => absurd rfl hA,
            fun A hA => absurd rfl hA⟩
          rw [map_zero]
          by_contra h'
          exact h0 ⟨h, Ne.symm h'⟩
      choose t t1 t2 t3 t4 t5d t5 using hex
      refine ih (y - ∑ B, bdL (inRR lev) E1 E2 (t B)) (fun A hA => ?_)
        (suppL_sub hys (suppL_sum _ _ fun B _ => suppL_bdL hcl E1 E2 (t5 B))) (fun c => ?_) ?_
      · have e : (y - ∑ B, bdL (inRR lev) E1 E2 (t B)) A =
            ∑ B, ((if potL B = N then 0 else r B A) - (bdL (inRR lev) E1 E2 (t B) - bdL isK E1 E2 (t B)) A) := by
          rw [Pi.sub_apply, congrFun hsum A, Finset.sum_apply, Finset.sum_apply, ← Finset.sum_sub_distrib]
          refine Finset.sum_congr rfl fun B _ => ?_
          split_ifs with h1
          · rw [Pi.sub_apply, t2 B h1]; abel
          · simp [t3 B h1]
        rw [e] at hA
        obtain ⟨B, -, hB⟩ := exists_ne_zero_of_sum_ne_zero hA
        by_cases h1 : potL B = N
        · rw [if_pos h1, zero_sub, neg_ne_zero] at hB
          rcases t4 B with h2 | h2
          · simp [h2] at hB
          · have h3 := pot_lt lev E1 E2 h2 A hB
            refine ⟨?_, by omega⟩
            rw [Pi.sub_apply] at hB
            by_cases h4 : bdL (inRR lev) E1 E2 (t B) A = 0
            · refine degL_bdL isK E1 E2 (t5d B) A fun h5 => hB (by rw [h4, h5, sub_zero])
            · exact degL_bdL _ E1 E2 (t5d B) A h4
        · rw [if_neg h1, t3 B h1] at hB
          have hB' : r B A ≠ 0 := by simpa using hB
          have h2 := (hrne B A hB').1
          have h3 := (hry B A hB')
          exact ⟨(h A h3.2).1, by rw [h3.1]; omega⟩

      · rw [map_sub, map_sum, hw c, smul_sub, Finset.smul_sum]
        congr 1
        refine Finset.sum_congr rfl fun B _ => ?_
        rw [← Module.End.mul_apply, (ftL_bdL hP _ c).eq, Module.End.mul_apply, t1 B c, map_smul]

      · rw [map_sub, map_sum, hb, Finset.sum_eq_zero, sub_zero]
        exact fun B _ => hsq _
  obtain ⟨y', y1, y2, y3⟩ := wtProjL hP (fun c x y => hA.unitK c c x y)
    (fun x => by
      obtain ⟨S, h1, h2, h3⟩ := hA.locFin x
      exact ⟨S, h1, h2, fun c => h3 c c⟩) _ (fun c => ftL_bdL hP _ c) τ y (fun c => funext fun A => by
    rw [hb]
    change kA E1 E2 c c ((Pi.single (omN n) u : Cq n V) A) + (wtL A c : ℂ) • (Pi.single (omN n) u : Cq n V) A =
      (τ c : ℂ) • (Pi.single (omN n) u : Cq n V) A
    by_cases e : A = omN n
    · subst e
      have h1 : kA E1 E2 c c u = (muQ lam lev c : ℂ) • u := hu.1 c
      rw [Pi.single_eq_same, h1, wtL_omN, ← add_smul, hτ]
      simp
    · simp [Pi.single_eq_of_ne e])
  refine main ((univ.sup fun A : Finset (Lt n) => potL A) + 1) y' (fun A hA => ⟨hD A fun h => hA (y3 A h), ?_⟩)
    (fun A hA => hS A fun h => hA (y3 A h)) y1 (y2.trans hb)
  exact Nat.lt_succ_of_le (Finset.le_sup (f := fun A : Finset (Lt n) => potL A) (mem_univ _))

end GlobalTheory.CompanionTheory.InjRL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveRestrictionOfBdsqVanish =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionActionHolds =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionActionHolds", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionAction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ActionUnipotentRadicalReal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundarySquareLeviReal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HarishChandraDecompositionLevi\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveRestrictionOfBdsqVanish\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveUnipotentOfRestriction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.VanishingKernelLeviReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.RgBcC.RealD

theorem injective_decomposition_action_holds : InjectiveDecompositionAction :=
  injective_decomposition_action_of _root_.GlobalTheory.CompanionTheory.KPChains.bdSqL _root_.GlobalTheory.CompanionTheory.KostL.vanKL _root_.GlobalTheory.CompanionTheory.InjRL.injRL_of _root_.GlobalTheory.CompanionTheory.LvChain.injUU_of_injRL (hcdecL_of _root_.GlobalTheory.CompanionTheory.RealHCLv.hcdecLv) _root_.GlobalTheory.CompanionTheory.PairBridge.actUU

end PositivityTheory.RgBcC.RealD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.RealDescent.RealLeviDescent.InjectiveDecompositionActionHolds =====
