module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatDefs
public import Mathlib.RingTheory.Ideal.BigOperators
public import Mathlib.Data.Nat.Choose.Cast
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAdicCompleteOfEquiv
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerFiltrationSpanPow
public import Mathlib.RingTheory.DividedPowers.DPMorphism
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistFrobeniusFiltrationCompat
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.GalOCOkToOC
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ChainOf
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLatticeBoundIntegers
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelLatticeBase
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemLatticeSubIffSum
import Mathlib.Tactic.Linter.Style
import GroundTheory.PAdicHodge.ACrisBdRGalois
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisMemLatticeSub, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniquePeriodOfCompatible, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemLatticeIdealIffSum, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeDpowClosedOfHyp, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FontaineLatticeDpowClosed, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesLatticeSub, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesTPowerSpan, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeSubReductionMem, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelFiltrationSpanTPow, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesField, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesFieldStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegers, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegersStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeIsDPMorphismOfCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphism, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphismStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIdealEqMap, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaAlgebraMapIntegers, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaLamEqToB, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelLamGaloisEquivariant, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisA, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisB, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphism, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphismStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBAlgebraMapField, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBEqZeroIffTPowDvd, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBGaloisEquivariant, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBSurjective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompatStatement, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatFinal, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.LatLink

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisMemLatticeSub =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisMemLatticeSub", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option maxSynthPendingDepth 1

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatCris

section Abstract

theorem eq_of_factorial_mul {B : Type} [CommRing B] [Algebra ℚ B] {l : ℕ} (hl : l ≠ 0) (M n : ℕ)
    {D b : B} (h : (n.factorial : B) * D = b ^ n) :
    D = (l : B) ^ (M * n) * (((n.factorial : ℚ))⁻¹ • (((l : ℚ) ^ M)⁻¹ • b) ^ n) := by
  have hl' : (l : ℚ) ≠ 0 := Nat.cast_ne_zero.2 hl
  have hn : (n.factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 n.factorial_ne_zero
  rw [smul_pow, ← h, Algebra.smul_def, Algebra.smul_def]
  have e1 : (l : B) = algebraMap ℚ B (l : ℚ) := (map_natCast _ _).symm
  have e2 : (n.factorial : B) = algebraMap ℚ B (n.factorial : ℚ) := (map_natCast _ _).symm
  rw [e1, e2, ← map_pow, ← mul_assoc, ← mul_assoc, ← mul_assoc, ← map_mul, ← map_mul, ← map_mul]
  have e3 : (l : ℚ) ^ (M * n) * (n.factorial : ℚ)⁻¹ * (((l : ℚ) ^ M)⁻¹) ^ n * (n.factorial : ℚ) = 1 := by
    rw [pow_mul, inv_pow]
    have : ((l : ℚ) ^ M) ^ n ≠ 0 := pow_ne_zero _ (pow_ne_zero _ hl')
    field_simp
  rw [e3, map_one, one_mul]

variable {W A B C : Type} [CommRing W] [CommRing A] [Algebra W A] [CommRing B] [Algebra ℚ B]
  [CommRing C] [Algebra ℚ C]

theorem map_dp_mem (T : A →+* B) (g : B →+* C) (f : W →+* C)
    (hf : ∀ w, g (T (algebraMap W A w)) = f w) (ξ : W) {l : ℕ} (hl : l ≠ 0) (M n : ℕ) {d : A}
    (hd : (n.factorial : A) * d = algebraMap W A ξ ^ n) : g (T d) ∈ sub f ξ l M := by
  have h1 : (n.factorial : B) * T d = T (algebraMap W A ξ) ^ n := by
    rw [← map_pow, ← hd, map_mul, map_natCast]
  have h2 : g (T d) = (l : C) ^ (M * n) * dpE f ξ l M n := by
    rw [eq_of_factorial_mul hl M n h1, map_mul, map_pow, map_natCast, dpE, η, map_rat_smul, map_pow,
      map_rat_smul, hf]
  rw [h2]
  exact mul_mem (pow_mem (natCast_mem _ l) _) (Subring.subset_closure (Or.inr ⟨n, rfl⟩))

theorem map_adjoin_mem (T : A →+* B) (g : B →+* C) (f : W →+* C)
    (hf : ∀ w, g (T (algebraMap W A w)) = f w) (ξ : W) {l : ℕ} (hl : l ≠ 0) (M : ℕ) (d : ℕ → A)
    (hd : ∀ n, (n.factorial : A) * d n = algebraMap W A ξ ^ n) {s : A}
    (hs : s ∈ Algebra.adjoin W (Set.range d)) : g (T s) ∈ sub f ξ l M := by
  induction hs using Algebra.adjoin_induction with
  | mem y hy =>
    obtain ⟨n, rfl⟩ := hy
    exact map_dp_mem T g f hf ξ hl M n (hd n)
  | algebraMap x => rw [hf]; exact Subring.subset_closure (Or.inl (Set.mem_range_self x))
  | add x y _ _ hx hy => rw [map_add (f := _), map_add (f := _)]; exact add_mem hx hy
  | mul x y _ _ hx hy => rw [map_mul, map_mul]; exact mul_mem hx hy

end Abstract

variable (l : ℕ) [Fact l.Prime]

local notation "𝔸" => Localization.Away (l : AInf ℂ_[l] l)

theorem mem_adjoin_dpow {s : 𝔸} (hs : s ∈ ACris.ACrisZero ℂ_[l] l) :
    s ∈ Algebra.adjoin (AInf ℂ_[l] l) (Set.range fun n : ℕ => ACris.dpow n (xi0 l)) := by
  rw [← ACris.acrisZero_eq_adjoin ker_theta0]; exact hs

theorem factorial_mul_dpow_xi (n : ℕ) :
    ((n.factorial : 𝔸)) * ACris.dpow n (xi0 l) = algebraMap (AInf ℂ_[l] l) 𝔸 (xi0 l) ^ n :=
  ACris.factorial_mul_dpow n _

theorem pk_toB_algebraMap (k : ℕ) (w : AInf ℂ_[l] l) :
    pk l k (toBDeRhamPlus (normInteger ℂ_[l]) l (algebraMap (AInf ℂ_[l] l) 𝔸 w)) = fk l k w := rfl


theorem pk_toB_mem (k M : ℕ) {s : 𝔸} (hs : s ∈ ACris.ACrisZero ℂ_[l] l) :
    pk l k (toBDeRhamPlus (normInteger ℂ_[l]) l s) ∈ sub (fk l k) (xi0 l) l M :=
  map_adjoin_mem (W := AInf ℂ_[l] l) (A := 𝔸) (B := BdRp l) (C := Bk l k)
    (toBDeRhamPlus (normInteger ℂ_[l]) l) (pk l k) (fk l k) (pk_toB_algebraMap l k) (xi0 l)
    (Fact.out : l.Prime).ne_zero M (fun n => ACris.dpow n (xi0 l))
    (factorial_mul_dpow_xi l) (mem_adjoin_dpow l hs)



theorem cris_in (l : ℕ) [Fact l.Prime] (M k : ℕ) (c : Acris l) :
    Lat.pk l k (ACris.iota ℂ_[l] l c) ∈ Lat.sub (Lat.fk l k) (xi0 l) l M := by
  obtain ⟨s, hs, hst⟩ := (ACris.embedding₂ ℂ_[l] l k c).2
  have e1 : IsPerfectoidField.evalB ℂ_[l] l k (ACris.iota ℂ_[l] l c) =
      (ACris.embedding₂ ℂ_[l] l k c).1 := ACris.evalₐ_iota k c
  have e2 := IsPerfectoidField.evalB_toBDeRhamPlus (K := ℂ_[l]) (p := l) k s
  have e3 : ACris.iota ℂ_[l] l c - toBDeRhamPlus (normInteger ℂ_[l]) l s ∈
      Ideal.span {tBdR l ^ k} := by
    rw [← Ideal.span_singleton_pow, ← maximalIdeal_eq_span_tBdR, ← IsPerfectoidField.ker_evalB,
      RingHom.mem_ker, map_sub, e1, e2, sub_eq_zero]
    exact hst.symm
  have e4 : pk l k (ACris.iota ℂ_[l] l c) = pk l k (toBDeRhamPlus (normInteger ℂ_[l]) l s) :=
    Ideal.Quotient.eq.2 e3
  rw [e4]
  exact pk_toB_mem l k M hs

end GlobalTheory.CompanionTheory.LatCris
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisMemLatticeSub =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniquePeriodOfCompatible =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniquePeriodOfCompatible", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

theorem existsUnique_limit_of_dvd {R : Type*} [CommRing R] (t : R)
    [IsAdicComplete (Ideal.span {t}) R] (z : ℕ → R)
    (hz : ∀ m, t ^ (m + 1) ∣ z (m + 1) - z m) :
    ∃! x : R, ∀ m, t ^ (m + 1) ∣ x - z m := by
  have hmem : ∀ (n : ℕ) (a : R), a ∈ ((Ideal.span {t}) ^ n • ⊤ : Submodule R R) ↔ t ^ n ∣ a := by
    intro n a
    rw [smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton]
  have hchain : ∀ {m n : ℕ}, m ≤ n → t ^ m ∣ z n - z m := by
    intro m n hmn
    induction n, hmn using Nat.le_induction with
    | base => simp
    | succ n hn ih =>
      have h1 : t ^ m ∣ z (n + 1) - z n := (pow_dvd_pow t (by omega)).trans (hz n)
      have h2 := dvd_add h1 ih
      simpa using h2
  obtain ⟨L, hL⟩ := IsPrecomplete.prec' (I := Ideal.span {t}) z (fun {m n} hmn => by
    rw [SModEq.comm, SModEq.sub_mem, hmem]
    exact hchain hmn)
  refine ⟨L, fun m => ?_, fun x hx => ?_⟩
  · have h1 : t ^ (m + 1) ∣ L - z (m + 1) := by
      have := hL (m + 1)
      rw [SModEq.comm, SModEq.sub_mem, hmem] at this
      exact this
    have h2 := dvd_add h1 (hz m)
    simpa using h2
  · have hLd : ∀ m, t ^ (m + 1) ∣ L - z m := by
      intro m
      have h1 : t ^ (m + 1) ∣ L - z (m + 1) := by
        have := hL (m + 1)
        rw [SModEq.comm, SModEq.sub_mem, hmem] at this
        exact this
      have h2 := dvd_add h1 (hz m)
      simpa using h2
    refine sub_eq_zero.1 (IsHausdorff.haus' (I := Ideal.span {t}) _ fun n => ?_)
    rw [SModEq.zero, hmem]
    have h3 := dvd_sub (hx n) (hLd n)
    have h4 : t ^ (n + 1) ∣ x - L := by simpa using h3
    exact (pow_dvd_pow t (Nat.le_succ n)).trans h4

theorem isAdicComplete_span_tBdR (l : ℕ) [Fact l.Prime] :
    IsAdicComplete (Ideal.span {tBdR l}) (BdRp l) := by
  rw [← maximalIdeal_eq_span_tBdR]
  exact IsPerfectoidField.instIsAdicCompleteMaximalIdealBdR

theorem pInv_rangeRestrict (l : ℕ) [Fact l.Prime] (b : BdRp l) :
    pInv l ((algebraMap (BdRp l) (BdR l)).rangeRestrict b) = b :=
  RingEquiv.symm_apply_apply (RingEquiv.ofBijective (algebraMap (BdRp l) (BdR l)).rangeRestrict
    ⟨fun x y h => IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l)
      (congrArg Subtype.val h), RingHom.rangeRestrict_surjective _⟩) b

theorem pInv_injective (l : ℕ) [Fact l.Prime] : Function.Injective (pInv l) :=
  (RingEquiv.ofBijective (algebraMap (BdRp l) (BdR l)).rangeRestrict
    ⟨fun x y h => IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l)
      (congrArg Subtype.val h), RingHom.rangeRestrict_surjective _⟩).symm.injective

theorem existsUnique_bdRp_of_compatible (l : ℕ) [Fact l.Prime]
    (y : ∀ m : ℕ, Bk l (m + 1)) (hy : ∀ m, dk l (m + 1) (y (m + 1)) = y m) :
    ∃! x : BdRp l, ∀ m, pk l (m + 1) x = y m := by
  haveI := isAdicComplete_span_tBdR l
  choose z hz using fun m => Ideal.Quotient.mk_surjective (y m)
  have key : ∀ (m : ℕ) (x : BdRp l), pk l (m + 1) x = y m ↔ tBdR l ^ (m + 1) ∣ x - z m := by
    intro m x
    rw [← hz m, pk, Ideal.Quotient.eq, Ideal.mem_span_singleton]
  have hstep : ∀ m, tBdR l ^ (m + 1) ∣ z (m + 1) - z m := by
    intro m
    rw [← key m]
    have := hy m
    rw [← hz (m + 1)] at this
    exact this
  obtain ⟨x, hx, hu⟩ := existsUnique_limit_of_dvd (tBdR l) z hstep
  exact ⟨x, fun m => (key m x).2 (hx m), fun x' hx' => hu x' fun m => (key m x').1 (hx' m)⟩

theorem levSys_existsUnique {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}
    {M : ℕ} (h : LevHyp l K M) :
    ∀ y : ∀ m, ((levSys h).L m).B, (∀ m, (levSys h).dB m (y (m + 1)) = y m) →
      ∃! x : (per l K).P, ∀ m, ((levSys h).L m).toB x = y m := by
  intro y hy
  obtain ⟨b, hb, hu⟩ := existsUnique_bdRp_of_compatible l y hy
  refine ⟨(algebraMap (BdRp l) (BdR l)).rangeRestrict b, fun m => ?_, fun x' hx' => ?_⟩
  · change pk l (m + 1) (pInv l ((algebraMap (BdRp l) (BdR l)).rangeRestrict b)) = y m
    rw [pInv_rangeRestrict]
    exact hb m
  · refine pInv_injective l ?_
    rw [pInv_rangeRestrict]
    exact hu _ hx'

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniquePeriodOfCompatible =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemLatticeIdealIffSum =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemLatticeIdealIffSum", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.RingTheory.Ideal.BigOperators\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemLatticeSubIffSum\n\n"}
section -- clump:auto
@[expose] public section

open DividedPowers CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.LatIdeal

section
variable {W B : Type} [CommRing W] [CommRing B] [Algebra ℚ B] (f : W →+* B) (ξ : W) (l M : ℕ)

theorem dpE_succ_mem_IB (i : ℕ) : Lat.dpE f ξ l M (i + 1) ∈ Lat.IB f ξ := by
  have h1 : Lat.η f ξ l M ∈ Lat.IB f ξ := by
    unfold Lat.η Lat.IB
    rw [Algebra.smul_def]
    exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)
  unfold Lat.dpE
  rw [Algebra.smul_def, pow_succ]
  exact Ideal.mul_mem_left _ _ (Ideal.mul_mem_left _ _ h1)

theorem dpE_zero : Lat.dpE f ξ l M 0 = 1 := by
  unfold Lat.dpE
  rw [pow_zero, Nat.factorial_zero, Nat.cast_one, inv_one, one_smul]

private theorem mul_mem_set_f_mul_dpE {y z : B}
    (hy : y ∈ {y : B | ∃ (w : W) (k : ℕ), y = f w * Lat.dpE f ξ l M k})
    (hz : z ∈ {y : B | ∃ (w : W) (k : ℕ), y = f w * Lat.dpE f ξ l M k}) :
    y * z ∈ {y : B | ∃ (w : W) (k : ℕ), y = f w * Lat.dpE f ξ l M k} := by
  obtain ⟨w, a, rfl⟩ := hy
  obtain ⟨w', b, rfl⟩ := hz
  refine ⟨w * w' * (((a + b).choose a : ℕ) : W), a + b, ?_⟩
  rw [map_mul, map_mul, map_natCast]
  linear_combination (f w * f w') * _root_.GlobalTheory.CompanionTheory.LatSpan.dpE_mul f ξ l M a b

private theorem mul_mem_closure_f_mul_dpE {y z : B}
    (hy : y ∈ AddSubgroup.closure {y : B | ∃ (w : W) (k : ℕ), y = f w * Lat.dpE f ξ l M k})
    (hz : z ∈ AddSubgroup.closure {y : B | ∃ (w : W) (k : ℕ), y = f w * Lat.dpE f ξ l M k}) :
    y * z ∈ AddSubgroup.closure {y : B | ∃ (w : W) (k : ℕ), y = f w * Lat.dpE f ξ l M k} := by
  induction hy using AddSubgroup.closure_induction with
  | mem y hy' =>
    induction hz using AddSubgroup.closure_induction with
    | mem z hz' => exact AddSubgroup.subset_closure (mul_mem_set_f_mul_dpE f ξ l M hy' hz')
    | zero => rw [mul_zero]; exact zero_mem _
    | add z1 z2 _ _ h1 h2 => rw [mul_add]; exact add_mem h1 h2
    | neg z _ h => rw [mul_neg]; exact neg_mem h
  | zero => rw [zero_mul]; exact zero_mem _
  | add y1 y2 _ _ h1 h2 => rw [add_mul]; exact add_mem h1 h2
  | neg y _ h => rw [neg_mul]; exact neg_mem h

private theorem mem_closure_f_mul_dpE_of_mem_sub {y : B} (hy : y ∈ Lat.sub f ξ l M) :
    y ∈ AddSubgroup.closure {y : B | ∃ (w : W) (k : ℕ), y = f w * Lat.dpE f ξ l M k} := by
  unfold Lat.sub at hy
  induction hy using Subring.closure_induction with
  | mem y hy' =>
    apply AddSubgroup.subset_closure
    rcases hy' with ⟨w, rfl⟩ | ⟨k, rfl⟩
    · exact ⟨w, 0, by rw [dpE_zero, mul_one]⟩
    · exact ⟨1, k, by rw [map_one, one_mul]⟩
  | zero => exact zero_mem _
  | one => exact AddSubgroup.subset_closure ⟨1, 0, by rw [dpE_zero, map_one, mul_one]⟩
  | add y z _ _ h1 h2 => exact add_mem h1 h2
  | neg y _ h => exact neg_mem h
  | mul y z _ _ h1 h2 => exact mul_mem_closure_f_mul_dpE f ξ l M h1 h2

private theorem exists_repr_of_mem_closure_f_mul_dpE {y : B}
    (hy : y ∈ AddSubgroup.closure {y : B | ∃ (w : W) (k : ℕ), y = f w * Lat.dpE f ξ l M k}) :
    ∃ (w₀ : W) (c : ℕ →₀ W), y = f w₀ + c.sum (fun i w => f w * Lat.dpE f ξ l M (i + 1)) := by
  induction hy using AddSubgroup.closure_induction with
  | mem y hy' =>
    obtain ⟨w, k, rfl⟩ := hy'
    cases k with
    | zero => exact ⟨w, 0, by rw [dpE_zero, mul_one, Finsupp.sum_zero_index, add_zero]⟩
    | succ j =>
      refine ⟨0, Finsupp.single j w, ?_⟩
      rw [map_zero, zero_add, Finsupp.sum_single_index]
      simp
  | zero => exact ⟨0, 0, by rw [map_zero, Finsupp.sum_zero_index, add_zero]⟩
  | add y z _ _ h1 h2 =>
    obtain ⟨a, c, rfl⟩ := h1
    obtain ⟨b, d, rfl⟩ := h2
    refine ⟨a + b, c + d, ?_⟩
    rw [Finsupp.sum_add_index', map_add (f := _)]
    · ring
    · intro i
      simp
    · intro i b1 b2
      simp [add_mul]
  | neg y _ h =>
    obtain ⟨a, c, rfl⟩ := h
    refine ⟨-a, -c, ?_⟩
    rw [Finsupp.sum_neg_index, map_neg, neg_add]
    · simp only [map_neg, neg_mul, Finsupp.sum, Finset.sum_neg_distrib]
    · intro i
      simp

private theorem exists_fin_sum_eq_finsupp_sum_f_mul_dpE (c : ℕ →₀ W) :
    ∃ (n : ℕ) (c' : Fin n → W), c.sum (fun i w => f w * Lat.dpE f ξ l M (i + 1)) =
      ∑ i : Fin n, f (c' i) * Lat.dpE f ξ l M (i + 1) := by
  have hs : c.support ⊆ Finset.range (c.support.sup id + 1) := by
    intro i hi
    rw [Finset.mem_range, Nat.lt_succ_iff]
    exact Finset.le_sup (f := id) hi
  refine ⟨c.support.sup id + 1, fun i => c i, ?_⟩
  rw [Finsupp.sum_of_support_subset c hs (fun i w => f w * Lat.dpE f ξ l M (i + 1))
    (fun _ _ => by simp)]
  exact (Fin.sum_univ_eq_sum_range (fun i => f (c i) * Lat.dpE f ξ l M (i + 1)) _).symm

private theorem f_xi_eq_f_pow_mul_dpE_one (hl : (l : ℚ) ≠ 0) :
    f ξ = f ((l : W) ^ M) * Lat.dpE f ξ l M 1 := by
  have h1 : Lat.dpE f ξ l M 1 = ((l : ℚ) ^ M)⁻¹ • f ξ := by
    unfold Lat.dpE Lat.η
    rw [pow_one, Nat.factorial_one, Nat.cast_one, inv_one, one_smul]
  rw [h1, Algebra.smul_def, ← mul_assoc, map_pow, map_natCast,
    ← map_natCast (algebraMap ℚ B) l, ← map_pow, ← map_mul, mul_inv_cancel₀ (pow_ne_zero _ hl),
    map_one, one_mul]

private theorem finsupp_sum_add_single_zero_f_mul_dpE (c : ℕ →₀ W) (v : W) :
    (c + Finsupp.single 0 v).sum (fun i w => f w * Lat.dpE f ξ l M (i + 1))
      = c.sum (fun i w => f w * Lat.dpE f ξ l M (i + 1)) + f v * Lat.dpE f ξ l M 1 := by
  rw [Finsupp.sum_add_index', Finsupp.sum_single_index]
  all_goals simp [add_mul]

theorem mem_I_iff (m : ℕ) (H : Lat.Hyp f ξ l m) (x : Lat.A f ξ l M) :
    x ∈ Lat.I f ξ l M ↔
      ∃ (n : ℕ) (c : Fin n → W), Lat.ι f ξ l M x = ∑ i, f (c i) * Lat.dpE f ξ l M (i + 1) := by
  have hI : x ∈ Lat.I f ξ l M ↔ Lat.ι f ξ l M x ∈ Lat.IB f ξ := Iff.rfl
  rw [hI]
  constructor
  · intro hx
    have hsub : Lat.ι f ξ l M x ∈ Lat.sub f ξ l M := (x : ↥(Lat.sub f ξ l M)).2
    obtain ⟨w₀, c, hc⟩ := exists_repr_of_mem_closure_f_mul_dpE f ξ l M (mem_closure_f_mul_dpE_of_mem_sub f ξ l M hsub)
    have hS : c.sum (fun i w => f w * Lat.dpE f ξ l M (i + 1)) ∈ Lat.IB f ξ :=
      by
        unfold Finsupp.sum
        exact Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_left _ _ (dpE_succ_mem_IB f ξ l M i))
    have hw : f w₀ ∈ Lat.IB f ξ := by
      have h2 := sub_mem hx hS
      rwa [hc, add_sub_cancel_right] at h2
    unfold Lat.IB at hw
    obtain ⟨b, hb⟩ := Ideal.mem_span_singleton'.mp hw
    obtain ⟨w', rfl⟩ := H.gr 0 H.one_le w₀ b
      (by rw [pow_zero, mul_one, zero_add, pow_one, ← hb, mul_comm])
    have hl : (l : ℚ) ≠ 0 := by
      intro h
      apply H.l0
      have h3 : l = 0 := by exact_mod_cast h
      rw [h3, Nat.cast_zero]
    obtain ⟨n, c', hc'⟩ := exists_fin_sum_eq_finsupp_sum_f_mul_dpE f ξ l M (c + Finsupp.single 0 ((l : W) ^ M * w'))
    refine ⟨n, c', ?_⟩
    rw [← hc', finsupp_sum_add_single_zero_f_mul_dpE f ξ l M, hc]
    simp only [map_mul]
    rw [f_xi_eq_f_pow_mul_dpE_one f ξ l M hl]
    ring
  · rintro ⟨n, c, hc⟩
    rw [hc]
    exact Ideal.sum_mem _ (fun i _ => Ideal.mul_mem_left _ _ (dpE_succ_mem_IB f ξ l M _))

end

theorem mem_I : ∀ {W B : Type} [CommRing W] [CommRing B] [Algebra ℚ B] (f : W →+* B) (ξ : W) (l M : ℕ) (m : ℕ),
    Lat.Hyp f ξ l m → ∀ x : Lat.A f ξ l M, x ∈ Lat.I f ξ l M ↔
      ∃ (n : ℕ) (c : Fin n → W), Lat.ι f ξ l M x = ∑ i, f (c i) * Lat.dpE f ξ l M (i + 1) := by
  intro W B _ _ _ f ξ l M m H x
  exact mem_I_iff f ξ l M m H x

end GlobalTheory.CompanionTheory.LatIdeal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemLatticeIdealIffSum =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeDpowClosedOfHyp =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeDpowClosedOfHyp", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemLatticeIdealIffSum\npublic import Mathlib.Data.Nat.Choose.Cast\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open DividedPowers CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.LatDP

variable {B : Type} [CommRing B] [Algebra ℚ B]

theorem inv_fact_smul_add_pow_mem (S : Subring B) {z w : B}
    (hz : ∀ k : ℕ, ((k.factorial : ℚ))⁻¹ • z ^ k ∈ S) (hw : ∀ k : ℕ, ((k.factorial : ℚ))⁻¹ • w ^ k ∈ S)
    (k : ℕ) : ((k.factorial : ℚ))⁻¹ • (z + w) ^ k ∈ S := by
  have e : ((k.factorial : ℚ))⁻¹ • (z + w) ^ k =
      ∑ i ∈ Finset.range (k + 1), (((i.factorial : ℚ))⁻¹ • z ^ i) * ((((k - i).factorial : ℚ))⁻¹ • w ^ (k - i)) := by
    rw [add_pow, Finset.smul_sum]
    refine Finset.sum_congr rfl fun i hi => ?_
    have hik : i ≤ k := Nat.lt_succ_iff.1 (Finset.mem_range.1 hi)
    have hc : ((k.choose i : ℕ) : B) = ((k.choose i : ℕ) : ℚ) • (1 : B) := by
      rw [Algebra.smul_def, mul_one, map_natCast]
    rw [hc, mul_smul_comm, mul_one, smul_smul, smul_mul_smul_comm, Nat.cast_choose ℚ hik]
    congr 1
    have h1 : (k.factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 k.factorial_ne_zero
    have h2 : (i.factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 i.factorial_ne_zero
    have h3 : ((k - i).factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (k - i).factorial_ne_zero
    field_simp
  rw [e]
  exact S.sum_mem fun i _ => S.mul_mem (hz i) (hw _)

variable {W : Type} [CommRing W] (f : W →+* B) (ξ : W) (l M : ℕ)

theorem inv_fact_smul_dpE_pow (j k : ℕ) (hj : j ≠ 0) :
    ((k.factorial : ℚ))⁻¹ • Lat.dpE f ξ l M j ^ k =
      ((k.uniformBell j : ℕ) : B) * Lat.dpE f ξ l M (k * j) := by
  have hU : ((k.uniformBell j : ℕ) : ℚ) * (j.factorial : ℚ) ^ k * (k.factorial : ℚ) = ((k * j).factorial : ℚ) := by
    exact_mod_cast Nat.uniformBell_mul_eq k hj
  have hc : ((k.uniformBell j : ℕ) : B) = ((k.uniformBell j : ℕ) : ℚ) • (1 : B) := by
    rw [Algebra.smul_def, mul_one, map_natCast]
  have h1 : (k.factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 k.factorial_ne_zero
  have h2 : (j.factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 j.factorial_ne_zero
  have h3 : ((k * j).factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (k * j).factorial_ne_zero
  rw [Lat.dpE, Lat.dpE, smul_pow, ← pow_mul, smul_smul, hc, smul_mul_assoc, one_mul, smul_smul, mul_comm j k]
  congr 1
  have h4 : (j.factorial : ℚ) ^ k ≠ 0 := pow_ne_zero _ h2
  rw [eq_mul_inv_iff_mul_eq₀ h3, ← hU, inv_pow]
  field_simp

theorem inv_fact_smul_term_mem (c : W) (j k : ℕ) (hj : j ≠ 0) :
    ((k.factorial : ℚ))⁻¹ • (f c * Lat.dpE f ξ l M j) ^ k ∈ Lat.sub f ξ l M := by
  have e : ((k.factorial : ℚ))⁻¹ • (f c * Lat.dpE f ξ l M j) ^ k =
      f c ^ k * (((k.uniformBell j : ℕ) : B) * Lat.dpE f ξ l M (k * j)) := by
    rw [mul_pow, ← mul_smul_comm, inv_fact_smul_dpE_pow f ξ l M j k hj]
  rw [e]
  have hf : f c ∈ Lat.sub f ξ l M := Subring.subset_closure (Or.inl ⟨c, rfl⟩)
  have hd : Lat.dpE f ξ l M (k * j) ∈ Lat.sub f ξ l M := Subring.subset_closure (Or.inr ⟨_, rfl⟩)
  exact mul_mem (pow_mem hf _) (mul_mem (natCast_mem _ _) hd)

theorem inv_fact_smul_sum_mem {n : ℕ} (c : Fin n → W) (s : Finset (Fin n)) (k : ℕ) :
    ((k.factorial : ℚ))⁻¹ • (∑ i ∈ s, f (c i) * Lat.dpE f ξ l M (i + 1)) ^ k ∈ Lat.sub f ξ l M := by
  classical
  induction s using Finset.induction_on generalizing k with
  | empty =>
    rcases k with _ | k
    · simpa using (Lat.sub f ξ l M).one_mem
    · simp
  | insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact inv_fact_smul_add_pow_mem _ (fun k => inv_fact_smul_term_mem f ξ l M _ _ k (Nat.succ_ne_zero _)) ih k

theorem dpClosed {W B : Type} [CommRing W] [CommRing B] [Algebra ℚ B] (f : W →+* B) (ξ : W) (l M : ℕ) (m : ℕ)
    (h : Lat.Hyp f ξ l m) : Lat.DPClosed (Lat.ι f ξ l M) (Lat.γB f ξ) := by
  intro x hx k
  obtain ⟨n, c, e⟩ := (_root_.GlobalTheory.CompanionTheory.LatIdeal.mem_I f ξ l M m h x).1 hx
  refine ⟨⟨_, inv_fact_smul_sum_mem f ξ l M c Finset.univ k⟩, ?_⟩
  rw [RatAlgebra.dpow_eq_inv_fact_smul _ (Lat.γB f ξ) hx, e, Ring.inverse_eq_inv']
  rfl

end GlobalTheory.CompanionTheory.LatDP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeDpowClosedOfHyp =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FontaineLatticeDpowClosed =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FontaineLatticeDpowClosed", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAdicCompleteOfEquiv\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeDpowClosedOfHyp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatCHc

theorem subsingleton_Bk_zero (l : ℕ) [Fact l.Prime] : Subsingleton (Lat.Bk l 0) := by
  refine Ideal.Quotient.subsingleton_iff.2 ?_
  rw [pow_zero, Ideal.span_singleton_one]

theorem hc_k : ∀ (l : ℕ) [Fact l.Prime] (M k : ℕ),
    Lat.DPClosed (Lat.ι (Lat.fk l k) (xi0 l) l M) (Lat.γB (Lat.fk l k) (xi0 l)) := by
  intro l _ M k
  rcases Nat.eq_zero_or_pos k with rfl | hk
  · intro x _ n
    haveI := subsingleton_Bk_zero l
    exact ⟨0, Subsingleton.elim _ _⟩
  · exact GlobalTheory.CompanionTheory.LatDP.dpClosed _ _ l M k (GlobalTheory.CompanionTheory.LatCHyp.hyp_k l k hk)

end GlobalTheory.CompanionTheory.LatCHc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FontaineLatticeDpowClosed =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesLatticeSub =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesLatticeSub", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatGal

theorem map_mem_sub_of_mul {W B : Type} [CommRing W] [CommRing B] [Algebra ℚ B] (f : W →+* B) (ξ : W) (l M : ℕ)
    (g : B →+* B) (s : W → W) (hs : ∀ w, g (f w) = f (s w)) (u : W) (hu : s ξ = u * ξ) :
    ∀ x ∈ sub f ξ l M, g x ∈ sub f ξ l M := by
  have hle : sub f ξ l M ≤ (sub f ξ l M).comap g := by
    refine Subring.closure_le.2 ?_
    rintro z (⟨w, rfl⟩ | ⟨i, rfl⟩)
    · show g (f w) ∈ sub f ξ l M
      rw [hs]
      exact Subring.subset_closure (Or.inl ⟨_, rfl⟩)
    · show g (dpE f ξ l M i) ∈ sub f ξ l M
      have hη : g (η f ξ l M) = f u * η f ξ l M := by
        rw [η, map_rat_smul, hs, hu, map_mul, mul_smul_comm]
      have hd : g (dpE f ξ l M i) = f u ^ i * dpE f ξ l M i := by
        rw [dpE, map_rat_smul, map_pow, hη, mul_pow, mul_smul_comm]
      rw [hd]
      have h1 : f u ∈ sub f ξ l M := Subring.subset_closure (Or.inl ⟨u, rfl⟩)
      have h2 : dpE f ξ l M i ∈ sub f ξ l M := Subring.subset_closure (Or.inr ⟨i, rfl⟩)
      exact (sub f ξ l M).mul_mem ((sub f ξ l M).pow_mem h1 i) h2
  exact fun x hx => hle hx

theorem gal_mem_sub : ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) (M k : ℕ)
    (g : K.fixingSubgroup) (hT : Ideal.span {tBdR l ^ k} ≤ (Ideal.span {tBdR l ^ k}).comap (Lat.gP l g)),
    ∀ x ∈ Lat.sub (Lat.fk l k) (xi0 l) l M,
      Ideal.quotientMap _ (Lat.gP l g) hT x ∈ Lat.sub (Lat.fk l k) (xi0 l) l M := by
  intro l _ K M k g hT
  have hmem : toBot g.1 • xi0 l ∈ RingHom.ker (theta0 l) :=
    gal_smul_mem_ker_fontaineTheta (toBot g.1) (by
      rw [ker_theta0]; exact Ideal.mem_span_singleton_self _)
  rw [ker_theta0, Ideal.mem_span_singleton'] at hmem
  obtain ⟨u, hu⟩ := hmem
  refine map_mem_sub_of_mul (fk l k) (xi0 l) l M _ (fun w => toBot g.1 • w) (fun w => ?_) u hu.symm
  show Ideal.quotientMap _ (gP l g) hT (Ideal.Quotient.mk _ (wittToBDeRhamPlus (normInteger ℂ_[l]) l w)) =
    Ideal.Quotient.mk _ (wittToBDeRhamPlus (normInteger ℂ_[l]) l (toBot g.1 • w))
  rw [Ideal.quotientMap_mk, ← gal_smul_wittToBDeRhamPlus]
  rfl

end GlobalTheory.CompanionTheory.LatGal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesLatticeSub =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesTPowerSpan =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesTPowerSpan", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatGal

private theorem galBdRHom_mem_maximalIdeal {p : ℕ} [Fact p.Prime] {K : IntermediateField ℚ_[p] (PadicAlgCl p)}
    (σ : PadicAlgCl p ≃ₐ[K] PadicAlgCl p) (x : BDeRhamPlus (normInteger ℂ_[p]) p)
    (hx : x ∈ IsLocalRing.maximalIdeal (BDeRhamPlus (normInteger ℂ_[p]) p)) :
    galBdRHom σ x ∈ IsLocalRing.maximalIdeal (BDeRhamPlus (normInteger ℂ_[p]) p) := by
  rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hx ⊢
  intro hu
  apply hx
  have h1 : galBdRHom σ⁻¹ (galBdRHom σ x) = x := by
    rw [← RingHom.comp_apply, ← galBdRHom_mul, inv_mul_cancel, galBdRHom_one, RingHom.id_apply]
  rw [← h1]
  exact hu.map _

theorem span_tBdR_pow_le_comap (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l))
    (k : ℕ) (g : K.fixingSubgroup) :
    Ideal.span {tBdR l ^ k} ≤ (Ideal.span {tBdR l ^ k}).comap (Lat.gP l g) := by
  rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, Ideal.mem_comap, map_pow]
  have ht : Lat.gP l g (tBdR l) ∈ Ideal.span {tBdR l} := by
    rw [← maximalIdeal_eq_span_tBdR]
    exact galBdRHom_mem_maximalIdeal _ _ (by rw [maximalIdeal_eq_span_tBdR]; exact Ideal.mem_span_singleton_self _)
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp ht
  rw [← hc, mul_pow]
  exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)

end GlobalTheory.CompanionTheory.LatGal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesTPowerSpan =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeSubReductionMem =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeSubReductionMem", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatLevel

theorem dk_fk (l : ℕ) [Fact l.Prime] (k : ℕ) (w : Ainf l) :
    Lat.dk l k (Lat.fk l (k + 1) w) = Lat.fk l k w := by
  simp only [Lat.dk, Lat.fk, RingHom.comp_apply]
  exact Ideal.Quotient.factor_mk _ _

theorem dk_dpE (l : ℕ) [Fact l.Prime] (M k i : ℕ) :
    Lat.dk l k (Lat.dpE (Lat.fk l (k + 1)) (xi0 l) l M i) = Lat.dpE (Lat.fk l k) (xi0 l) l M i := by
  simp only [Lat.dpE, Lat.η, map_rat_smul, map_pow, dk_fk]

theorem dk_mem_sub (l : ℕ) [Fact l.Prime] (M k : ℕ) :
    ∀ x ∈ Lat.sub (Lat.fk l (k + 1)) (xi0 l) l M, Lat.dk l k x ∈ Lat.sub (Lat.fk l k) (xi0 l) l M := by
  intro x hx
  have hle : Lat.sub (Lat.fk l (k + 1)) (xi0 l) l M ≤
      (Lat.sub (Lat.fk l k) (xi0 l) l M).comap (Lat.dk l k) := by
    refine Subring.closure_le.2 ?_
    rintro y (⟨w, rfl⟩ | ⟨i, rfl⟩)
    · refine Subring.mem_comap.2 ?_
      rw [dk_fk]
      exact Subring.subset_closure (Or.inl ⟨w, rfl⟩)
    · refine Subring.mem_comap.2 ?_
      rw [dk_dpE]
      exact Subring.subset_closure (Or.inr ⟨i, rfl⟩)
  exact hle hx

end GlobalTheory.CompanionTheory.LatLevel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeSubReductionMem =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelFiltrationSpanTPow =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelFiltrationSpanTPow", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerFiltrationSpanPow\nimport GroundTheory.PAdicHodge.ACrisBdRGalois\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatPdpB

variable (l : ℕ) [Fact l.Prime]

theorem span_xi_eq_span_fontaine_t :
    Ideal.span {wittToBDeRhamPlus (normInteger ℂ_[l]) l (xi0 l)} = Ideal.span {tBdR l} := by
  haveI : IsPerfectoidField ℂ_[l] l := IsPerfectoidField.padicComplex l
  have hg := IsPerfectoidField.ker_fontaineTheta_eq_span_kerThetaGenerator ℂ_[l] l
  generalize IsPerfectoidField.kerThetaGenerator ℂ_[l] l = g at hg
  have hnorm : ∀ z : normInteger ℂ_[l], ‖(z : ℂ_[l])‖ ≤ 1 := fun z => mem_normInteger.1 z.2
  have hbound : ∀ w : WittVector l (PreTilt (normInteger ℂ_[l]) l),
      WittVector.fontaineTheta (normInteger ℂ_[l]) l w = 0 →
      ‖((PreTilt.untilt (WittVector.constantCoeff w) : normInteger ℂ_[l]) : ℂ_[l])‖ ≤
        ‖((l : normInteger ℂ_[l]) : ℂ_[l])‖ := by
    intro w hw
    have h1 : Ideal.Quotient.mk (Ideal.span {(l : normInteger ℂ_[l])})
        (PreTilt.untilt (WittVector.constantCoeff w)) = 0 := by
      rw [PreTilt.mk_untilt_eq_coeff_zero]
      have h2 := WittVector.mk_fontaineTheta (R := normInteger ℂ_[l]) (p := l) w
      rw [hw, map_zero] at h2
      exact h2.symm
    rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton'] at h1
    obtain ⟨z, hz⟩ := h1
    rw [← hz, Subring.coe_mul, norm_mul]
    exact mul_le_of_le_one_left (norm_nonneg _) (hnorm z)
  have hx : xi0 l ∈ RingHom.ker (WittVector.fontaineTheta (normInteger ℂ_[l]) l) := by
    rw [RingHom.mem_ker, CrystallineSemistableComparison.xi0, map_sub, map_natCast, WittVector.fontaineTheta_teichmuller,
      untilt_pFlat, sub_self]
  rw [hg, Ideal.mem_span_singleton'] at hx
  obtain ⟨c, hc⟩ := hx
  have hg0 : WittVector.fontaineTheta (normInteger ℂ_[l]) l g = 0 := by
    rw [← RingHom.mem_ker, hg]
    exact Ideal.mem_span_singleton_self g
  have hcn : WittVector.fontaineTheta (normInteger ℂ_[l]) l c ≠ 0 := by
    intro hc0
    have hcm : c ∈ RingHom.ker (WittVector.fontaineTheta (normInteger ℂ_[l]) l) := hc0
    rw [hg, Ideal.mem_span_singleton'] at hcm
    obtain ⟨d, hd⟩ := hcm
    have hxe : xi0 l = d * g * g := by rw [← hc, ← hd]
    have hco := congrArg WittVector.constantCoeff hxe
    have hT : WittVector.constantCoeff (WittVector.teichmuller l (pFlat l)) = pFlat l :=
      WittVector.teichmuller_coeff_zero l _
    rw [CrystallineSemistableComparison.xi0, map_sub, map_natCast, hT, map_mul, map_mul,
      CharP.cast_eq_zero (PreTilt (normInteger ℂ_[l]) l) l, zero_sub] at hco
    have hpf : pFlat l = (-WittVector.constantCoeff d) * WittVector.constantCoeff g *
        WittVector.constantCoeff g := by
      rw [neg_mul, neg_mul, ← hco, neg_neg]
    have hu := congrArg (fun y => ‖((PreTilt.untilt y : normInteger ℂ_[l]) : ℂ_[l])‖) hpf
    simp only [map_mul, Subring.coe_mul, norm_mul, untilt_pFlat] at hu
    have hb := hbound g hg0
    have hd1 := hnorm (PreTilt.untilt (-WittVector.constantCoeff d))
    have hpos : 0 < ‖((l : normInteger ℂ_[l]) : ℂ_[l])‖ := by
      rw [norm_pos_iff]; push_cast; exact natCast_p_ne_zero_cp
    have hlt : ‖((l : normInteger ℂ_[l]) : ℂ_[l])‖ < 1 :=
      IsPerfectoidField.norm_natCast_integer_lt_one (K := ℂ_[l]) l
    have hn0 := norm_nonneg ((PreTilt.untilt (WittVector.constantCoeff g) : normInteger ℂ_[l]) : ℂ_[l])
    have hn1 := norm_nonneg ((PreTilt.untilt (-WittVector.constantCoeff d) : normInteger ℂ_[l]) : ℂ_[l])
    nlinarith [mul_le_mul hb hb hn0 hpos.le, mul_le_mul_of_nonneg_right hd1 (mul_nonneg hn0 hn0),
      mul_lt_of_lt_one_left hpos hlt]
  have hcu : IsUnit (wittToBDeRhamPlus (normInteger ℂ_[l]) l c) := by
    by_contra hnu
    have hm : wittToBDeRhamPlus (normInteger ℂ_[l]) l c ∈
        IsLocalRing.maximalIdeal (BDeRhamPlus (normInteger ℂ_[l]) l) :=
      (IsLocalRing.mem_maximalIdeal _).2 (mem_nonunits_iff.2 hnu)
    rw [IsPerfectoidField.maximalIdeal_bDeRhamPlus, RingHom.mem_ker,
      IsPerfectoidField.thetaBDeRhamPlusField_wittToBDeRhamPlus] at hm
    exact hcn (by exact_mod_cast hm)
  rw [← hc, map_mul, Ideal.span_singleton_mul_left_unit hcu,
    ← IsPerfectoidField.maximalIdeal_bDeRhamPlus_eq_span hg, maximalIdeal_eq_span_tBdR]

theorem span_fk_pow (k r : ℕ) :
    Ideal.span {fk l k (xi0 l) ^ r} = Ideal.span {pk l k (tBdR l) ^ r} := by
  have h2 : Ideal.span {wittToBDeRhamPlus (normInteger ℂ_[l]) l (xi0 l) ^ r} =
      Ideal.span {tBdR l ^ r} := by
    rw [← Ideal.span_singleton_pow, ← Ideal.span_singleton_pow, span_xi_eq_span_fontaine_t]
  have h3 := congrArg (Ideal.map (pk l k)) h2
  simp only [Ideal.map_span, Set.image_singleton, map_pow] at h3
  exact h3

theorem pInv_eq_tBdR {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (t : (per l K).P)
    (ht : (t : (per l K).B) = (per l K).tB) : pInv l t = tBdR l := by
  have hi : GroundTheory.PAdicHodge.ACris.iota ℂ_[l] l (Formalism.Per6.tA l) = tBdR l :=
    GroundTheory.PAdicHodge.ACris.iota_periodT (ε := epsilon l) untilt_epsilon
  have key : (algebraMap (Formalism.Per6.BdRp l) (Formalism.Per6.BdR l)).rangeRestrict (tBdR l) = t := by
    apply Subtype.ext
    refine Eq.trans ?_ ht.symm
    show algebraMap (Formalism.Per6.BdRp l) (Formalism.Per6.BdR l) (tBdR l) =
      algebraMap (Formalism.Per6.BdRp l) (Formalism.Per6.BdR l)
        (GroundTheory.PAdicHodge.ACris.iota ℂ_[l] l (Formalism.Per6.tA l))
    rw [hi]
  rw [← key]
  unfold CrystallineSemistableComparison.Pb.Lat.pInv
  simp only [RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom]
  exact (RingEquiv.symm_apply_eq _).2 rfl

end GlobalTheory.CompanionTheory.LatPdpB


open GlobalTheory.CompanionTheory.LatPdpB in
theorem GlobalTheory.CompanionTheory.LatPdpB.dividedPowerFiltration_lev_eq_span_pow : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ), ∀ (r : ℕ) (t : (per l K).P), (t : (per l K).B) = (per l K).tB → pdP (lev h k).γB r = Ideal.span {(lev h k).toB t ^ r} := by
  intro l _ K M h k r t ht
  show pdP (γB (fk l k) (xi0 l)) r = Ideal.span {(pk l k) (pInv l t) ^ r}
  rw [GlobalTheory.CompanionTheory.DPFiltration.pdP_γB, pInv_eq_tBdR l t ht, span_fk_pow]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelFiltrationSpanTPow =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesField =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesField", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

theorem sigmaB_fixes_K {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}
    (h : LevHyp l K M) (k : ℕ) : ∀ g (a : K),
    (lev h k).σB g (algebraMap K (lev h k).B a) = algebraMap K (lev h k).B a := by
  intro g a
  have key : gP l g (kP l K a) = kP l K a := by
    have h1 : galBdRHom (toBot g.1) (algClToBdR l (a : PadicAlgCl l))
        = algClToBdR l ((toBot g.1) (a : PadicAlgCl l)) :=
      gal_smul_algClToBdR (toBot g.1) (a : PadicAlgCl l)
    have h2 : (toBot g.1) (a : PadicAlgCl l) = (a : PadicAlgCl l) := g.2 a
    rw [h2] at h1
    exact h1
  change gB h k g (pk l k (kP l K a)) = pk l k (kP l K a)
  change Ideal.quotientMap _ (gP l g) (h.galT k g) (Ideal.Quotient.mk _ (kP l K a)) = Ideal.Quotient.mk _ (kP l K a)
  rw [Ideal.quotientMap_mk, key]

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesField =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesFieldStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesFieldStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

theorem _root_.GlobalTheory.T.level_galois_fixes_field : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ), ∀ g (a : K), (lev h k).σB g (algebraMap K (lev h k).B a) = algebraMap K (lev h k).B a := by
  first | exact @GlobalTheory.CompanionTheory.LatC.sigmaB_fixes_K
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesFieldStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegers =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegers", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

theorem gP_kP {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}
    (g : K.fixingSubgroup) (x : K) : gP l g (kP l K x) = kP l K x := by
  have h1 : (toBot g.1) • algClToBdR l (K.val x) = algClToBdR l ((toBot g.1) (K.val x)) :=
    gal_smul_algClToBdR _ _
  have h2 : (toBot g.1) (K.val x) = K.val x := (IntermediateField.mem_fixingSubgroup_iff _ _).1 g.2 _ x.2
  rw [h2] at h1
  exact h1

theorem sigA_fix : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ), ∀ g (a : OK l K), (lev h k).σA g (algebraMap (OK l K) (lev h k).A a) = algebraMap (OK l K) (lev h k).A a := by
  intro l _ K M h k g a
  apply ι_injective (fk l k) (xi0 l) l M
  show gB h k g (pk l k (kP l K a)) = pk l k (kP l K a)
  show Ideal.quotientMap _ (gP l g) (h.galT k g) (Ideal.Quotient.mk _ (kP l K a)) = _
  rw [Ideal.quotientMap_mk, gP_kP]
  rfl

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegers =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegersStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegersStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

theorem _root_.GlobalTheory.T.level_galois_fixes_integers : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ), ∀ g (a : OK l K), (lev h k).σA g (algebraMap (OK l K) (lev h k).A a) = algebraMap (OK l K) (lev h k).A a := by
  first | exact @GlobalTheory.CompanionTheory.LatC.sigA_fix
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegersStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeIsDPMorphismOfCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeIsDPMorphismOfCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatDefs\npublic import Mathlib.RingTheory.DividedPowers.DPMorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open DividedPowers CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.LatDP

theorem γB_map {W B W' B' : Type} [CommRing W] [CommRing B] [Algebra ℚ B] [CommRing W'] [CommRing B']
    [Algebra ℚ B'] (f : W →+* B) (ξ : W) (f' : W' →+* B') (ξ' : W') (g : B →+* B') {y : B}
    (hy : y ∈ Lat.IB f ξ) (hy' : g y ∈ Lat.IB f' ξ') (n : ℕ) :
    g ((Lat.γB f ξ).dpow n y) = (Lat.γB f' ξ').dpow n (g y) := by
  have h1 := (Lat.γB f ξ).factorial_mul_dpow_eq_pow (n := n) hy
  have h2 := (Lat.γB f' ξ').factorial_mul_dpow_eq_pow (n := n) hy'
  have hu : IsUnit (n.factorial : B') := by
    have := (IsUnit.mk0 (n.factorial : ℚ) (by exact_mod_cast n.factorial_ne_zero)).map (algebraMap ℚ B')
    rwa [map_natCast] at this
  apply hu.mul_left_cancel
  rw [h2, ← map_pow, ← h1, map_mul, map_natCast]

theorem isDPMorphism_map {W B W' B' : Type} [CommRing W] [CommRing B] [Algebra ℚ B] [CommRing W']
    [CommRing B'] [Algebra ℚ B'] (f : W →+* B) (ξ : W) (f' : W' →+* B') (ξ' : W') (l M : ℕ)
    (g : B →+* B') (hmap : ∀ x ∈ Lat.sub f ξ l M, g x ∈ Lat.sub f' ξ' l M) (u : W')
    (hg : g (f ξ) = f' (u * ξ')) (hc : Lat.DPClosed (Lat.ι f ξ l M) (Lat.γB f ξ))
    (hc' : Lat.DPClosed (Lat.ι f' ξ' l M) (Lat.γB f' ξ')) :
    IsDPMorphism (Lat.γ f ξ l M hc) (Lat.γ f' ξ' l M hc') (Lat.map f ξ f' ξ' l M g hmap) := by
  have hB : ∀ x ∈ Lat.I f ξ l M, g (Lat.ι f ξ l M x) ∈ Lat.IB f' ξ' := by
    intro x hx
    have hx' : Lat.ι f ξ l M x ∈ Lat.IB f ξ := hx
    simp only [Lat.IB, Ideal.mem_span_singleton] at hx' ⊢
    obtain ⟨c, hc0⟩ := hx'
    refine ⟨f' u * g c, ?_⟩
    rw [hc0, map_mul, hg, map_mul]; ring
  have hI : ∀ x ∈ Lat.I f ξ l M, Lat.map f ξ f' ξ' l M g hmap x ∈ Lat.I f' ξ' l M := by
    intro x hx
    show Lat.ι f' ξ' l M (Lat.map f ξ f' ξ' l M g hmap x) ∈ Lat.IB f' ξ'
    rw [Lat.ι_map]; exact hB x hx
  refine ⟨Ideal.map_le_iff_le_comap.2 fun x hx => hI x hx, fun {n} x hx => ?_⟩
  apply Lat.ι_injective f' ξ' l M
  rw [Lat.ι_γ f' ξ' l M hc' (hI x hx)]
  simp only [Lat.ι_map]
  rw [Lat.ι_γ f ξ l M hc hx]
  have hx' : Lat.ι f ξ l M x ∈ Lat.IB f ξ := hx
  exact (γB_map f ξ f' ξ' g hx' (hB x hx) n).symm

end GlobalTheory.CompanionTheory.LatDP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeIsDPMorphismOfCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphism =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphism", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeIsDPMorphismOfCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistFrobeniusFiltrationCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatSigDP

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}

theorem exists_gB_xi (h : LevHyp l K M) (k : ℕ) (g : K.fixingSubgroup) :
    ∃ u : Ainf l, gB h k g (fk l k (xi0 l)) = fk l k (u * xi0 l) := by
  obtain ⟨u, hu⟩ := GlobalTheory.CompanionTheory.TwFil.exists_gal_xi (toBot g.1)
  refine ⟨u, ?_⟩
  have e : galBdRHom (toBot g.1) (wittToBDeRhamPlus (normInteger ℂ_[l]) l (xi0 l)) =
      wittToBDeRhamPlus (normInteger ℂ_[l]) l (u * xi0 l) := by
    rw [← hu, ← gal_smul_wittToBDeRhamPlus]
    rfl
  show Ideal.Quotient.mk _ (galBdRHom (toBot g.1) (wittToBDeRhamPlus (normInteger ℂ_[l]) l (xi0 l))) = _
  rw [e]
  rfl

theorem sigA_isDPMorphism (h : LevHyp l K M) (k : ℕ) (g : K.fixingSubgroup) :
    IsDPMorphism (lev h k).γ (lev h k).γ ((lev h k).σA g) := by
  obtain ⟨u, hu⟩ := exists_gB_xi h k g
  exact GlobalTheory.CompanionTheory.LatDP.isDPMorphism_map (fk l k) (xi0 l) (fk l k) (xi0 l) l M (gB h k g) (h.gal k g) u hu
    (h.hc k) (h.hc k)

end GlobalTheory.CompanionTheory.LatSigDP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphism =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphismStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphismStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

theorem _root_.GlobalTheory.T.level_galois_isDPMorphism : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ), ∀ g, IsDPMorphism (lev h k).γ (lev h k).γ ((lev h k).σA g) := by
  first | exact @GlobalTheory.CompanionTheory.LatSigDP.sigA_isDPMorphism
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphismStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIdealEqMap =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIdealEqMap", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

theorem lev_IB_eq_map {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}
    (h : LevHyp l K M) (k : ℕ) : (lev h k).IB = (lev h k).I.map (lev h k).ι := by
  have key : IB (fk l k) (xi0 l) = (I (fk l k) (xi0 l) l M).map (ι (fk l k) (xi0 l) l M) := by
    apply le_antisymm
    · refine Ideal.span_le.2 ?_
      rintro _ ⟨⟩
      have hm : ofW (fk l k) (xi0 l) l M (xi0 l) ∈ I (fk l k) (xi0 l) l M := by
        show ι (fk l k) (xi0 l) l M (ofW (fk l k) (xi0 l) l M (xi0 l)) ∈ IB (fk l k) (xi0 l)
        rw [ι_ofW]
        exact Ideal.subset_span rfl
      have := Ideal.mem_map_of_mem (ι (fk l k) (xi0 l) l M) hm
      rwa [ι_ofW] at this
    · exact Ideal.map_comap_le
  exact key

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIdealEqMap =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaAlgebraMapIntegers =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaAlgebraMapIntegers", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

theorem iota_algebraMap_OK : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ), ∀ a : OK l K, (lev h k).ι (algebraMap (OK l K) (lev h k).A a) = algebraMap K (lev h k).B (a : K) := by
  intro l _ K M h k a
  rfl

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaAlgebraMapIntegers =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaLamEqToB =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaLamEqToB", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section
open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

theorem algebraMap_pInv {l : ℕ} [Fact l.Prime] (z : ↥(algebraMap (BdRp l) (BdR l)).range) :
    algebraMap (BdRp l) (BdR l) (pInv l z) = z.1 :=
  congrArg Subtype.val ((RingEquiv.ofBijective (algebraMap (BdRp l) (BdR l)).rangeRestrict
    ⟨fun x y h => IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l) (congrArg Subtype.val h),
      RingHom.rangeRestrict_surjective _⟩).apply_symm_apply z)

theorem iota_lam_eq_toB {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ) :
    ∀ (c : (per l K).A) (y : (per l K).P), (y : (per l K).B) = (per l K).i c →
      (lev h k).ι ((lev h k).lam c) = (lev h k).toB y := by
  intro c y hy
  have h1 : (lev h k).ι ((lev h k).lam c) = pk l k (ACris.iota ℂ_[l] l c) := rfl
  have h2 : (lev h k).toB y = pk l k (pInv l y) := rfl
  rw [h1, h2]
  congr 1
  apply IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l)
  exact hy.symm.trans (algebraMap_pInv y).symm

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaLamEqToB =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelLamGaloisEquivariant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelLamGaloisEquivariant", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport GroundTheory.PAdicHodge.ACrisBdRGalois\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatCSig

variable {p : ℕ} [Fact p.Prime] {K K' : IntermediateField ℚ_[p] (PadicAlgCl p)}

theorem galCp_congr (σ : PadicAlgCl p ≃ₐ[K] PadicAlgCl p) (τ : PadicAlgCl p ≃ₐ[K'] PadicAlgCl p)
    (h : ∀ y, σ y = τ y) : (galCp σ : ℂ_[p] →+* ℂ_[p]) = (galCp τ : ℂ_[p] →+* ℂ_[p]) := by
  refine RingHom.ext fun x => ?_
  refine UniformSpace.Completion.induction_on x
    (isClosed_eq (continuous_galCp σ) (continuous_galCp τ)) fun a => ?_
  show galCp σ (a : ℂ_[p]) = galCp τ (a : ℂ_[p])
  rw [galCp_coe, galCp_coe, h]

theorem galMap_congr (σ : PadicAlgCl p ≃ₐ[K] PadicAlgCl p) (τ : PadicAlgCl p ≃ₐ[K'] PadicAlgCl p)
    (h : ∀ y, σ y = τ y) : AInf.galMap σ = AInf.galMap τ :=
  AInf.map_congr (galCp_congr σ τ h) _ _

theorem galAway_congr (σ : PadicAlgCl p ≃ₐ[K] PadicAlgCl p) (τ : PadicAlgCl p ≃ₐ[K'] PadicAlgCl p)
    (h : ∀ y, σ y = τ y) : galAway σ = galAway τ :=
  IsLocalization.ringHom_ext (Submonoid.powers (p : WittVector p (PreTilt (normInteger ℂ_[p]) p)))
    (RingHom.ext fun w => by
      simp only [RingHom.comp_apply, galAway_algebraMap]
      rw [AInf.gal_smul_def, AInf.gal_smul_def, galMap_congr σ τ h])

theorem galQuot_congr (σ : PadicAlgCl p ≃ₐ[K] PadicAlgCl p) (τ : PadicAlgCl p ≃ₐ[K'] PadicAlgCl p)
    (h : ∀ y, σ y = τ y) (n : ℕ) : galQuot σ n = galQuot τ n :=
  Ideal.Quotient.ringHom_ext (RingHom.ext fun a => by
    simp only [RingHom.comp_apply, galQuot_mk]
    rw [galAway_congr σ τ h])

theorem galBdRHom_congr (σ : PadicAlgCl p ≃ₐ[K] PadicAlgCl p) (τ : PadicAlgCl p ≃ₐ[K'] PadicAlgCl p)
    (h : ∀ y, σ y = τ y) : galBdRHom σ = galBdRHom τ :=
  RingHom.ext fun x => IsPerfectoidField.evalB_ext fun n => by
    rw [evalB_galBdRHom, evalB_galBdRHom, galQuot_congr σ τ h]

theorem gP_iota {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}
    (g : K.fixingSubgroup) (c : Acris l) :
    gP l g (ACris.iota ℂ_[l] l c) =
      ACris.iota ℂ_[l] l (ACris.galCris (IntermediateField.fixingSubgroupEquiv K g) c) := by
  have h := ACris.iota_gal_smul (IntermediateField.fixingSubgroupEquiv K g) c
  rw [ACris.gal_smul_def, gal_smul_bdR_def] at h
  rw [h]
  exact congrArg (fun f => f (ACris.iota ℂ_[l] l c))
    (galBdRHom_congr (toBot g.1) (IntermediateField.fixingSubgroupEquiv K g) fun y => rfl)

theorem sig_lam : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}
    (h : LevHyp l K M) (k : ℕ), ∀ g c,
    (lev h k).σA g ((lev h k).lam c) = (lev h k).lam ((per l K).σA g c) := by
  intro l _ K M h k g c
  apply ι_injective (fk l k) (xi0 l) l M
  show gB h k g (pk l k (ACris.iota ℂ_[l] l c)) =
    pk l k (ACris.iota ℂ_[l] l (ACris.galCris (IntermediateField.fixingSubgroupEquiv K g) c))
  rw [← gP_iota]
  exact Ideal.quotientMap_mk

end GlobalTheory.CompanionTheory.LatCSig
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelLamGaloisEquivariant =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisA =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisA", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatLevel

theorem dk_gB {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}
    (h : LevHyp l K M) (k : ℕ) (g : K.fixingSubgroup) (x : Bk l (k + 1)) :
    dk l k (gB h (k + 1) g x) = gB h k g (dk l k x) := by
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
  simp only [dk, gB, Ideal.quotientMap_mk, Ideal.Quotient.factor_mk]

theorem levSys_dA_σA {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}
    (h : LevHyp l K M) : ∀ m g a,
    (levSys h).dA m (((levSys h).L (m + 1)).σA g a) = ((levSys h).L m).σA g ((levSys h).dA m a) := by
  intro m g a
  apply Subtype.ext
  exact dk_gB h (m + 1) g a.1

end GlobalTheory.CompanionTheory.LatLevel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisA =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisB =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisB", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatLevel

theorem dB_sigmaB {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}
    (h : LevHyp l K M) : ∀ m g b, (levSys h).dB m (((levSys h).L (m + 1)).σB g b) =
      ((levSys h).L m).σB g ((levSys h).dB m b) := by
  intro m g b
  change Bk l (m + 1 + 1) at b
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective b
  show dk l (m + 1) (gB h (m + 1 + 1) g (Ideal.Quotient.mk _ x)) =
    gB h (m + 1) g (dk l (m + 1) (Ideal.Quotient.mk _ x))
  simp only [gB, dk, Ideal.quotientMap_mk, Ideal.Quotient.factor_mk]

end GlobalTheory.CompanionTheory.LatLevel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisB =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphism =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphism", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

section Gen
variable {W B W' B' : Type} [CommRing W] [CommRing B] [Algebra ℚ B] [CommRing W'] [CommRing B'] [Algebra ℚ B']
  (f : W →+* B) (ξ : W) (f' : W' →+* B') (ξ' : W') (l M : ℕ)

theorem map_isDPMorphism (g : B →+* B') (h : ∀ x ∈ Lat.sub f ξ l M, g x ∈ Lat.sub f' ξ' l M)
    (hg : g (f ξ) = f' ξ')
    (hc : DPClosed (Lat.ι f ξ l M) (Lat.γB f ξ)) (hc' : DPClosed (Lat.ι f' ξ' l M) (Lat.γB f' ξ')) :
    IsDPMorphism (Lat.γ f ξ l M hc) (Lat.γ f' ξ' l M hc') (Lat.map f ξ f' ξ' l M g h) := by
  have hIB : ∀ x ∈ Lat.IB f ξ, g x ∈ Lat.IB f' ξ' := by
    intro x hx
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hx
    rw [map_mul, hg]
    exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)
  refine ⟨?_, ?_⟩
  · rw [Ideal.map_le_iff_le_comap]
    intro a ha
    show Lat.ι f' ξ' l M (Lat.map f ξ f' ξ' l M g h a) ∈ Lat.IB f' ξ'
    rw [Lat.ι_map]
    exact hIB _ ha
  · intro n a ha
    have ha' : Lat.ι f ξ l M a ∈ Lat.IB f ξ := ha
    have hb : Lat.map f ξ f' ξ' l M g h a ∈ Lat.I f' ξ' l M := by
      show Lat.ι f' ξ' l M (Lat.map f ξ f' ξ' l M g h a) ∈ Lat.IB f' ξ'
      rw [Lat.ι_map]
      exact hIB _ ha'
    apply Lat.ι_injective f' ξ' l M
    rw [Lat.ι_γ _ _ _ _ _ hb, Lat.ι_map, Lat.ι_map, Lat.ι_γ _ _ _ _ _ ha, DividedPowers.RatAlgebra.dpow_eq_inv_fact_smul _ _ ha',
      DividedPowers.RatAlgebra.dpow_eq_inv_fact_smul _ _ (hIB _ ha'), map_rat_smul, map_pow]

end Gen

variable {l : ℕ} [Fact l.Prime]

theorem dk_fk (k : ℕ) (w : Ainf l) : dk l k (fk l (k + 1) w) = fk l k w := by
  rfl

theorem levSys_ddp {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (m : ℕ) :
    IsDPMorphism ((levSys h).L (m + 1)).γ ((levSys h).L m).γ ((levSys h).dA m) := by
  exact map_isDPMorphism (fk l (m + 2)) (xi0 l) (fk l (m + 1)) (xi0 l) l M (dk l (m + 1))
    (fun x hx => h.dIn (m + 1) x hx) (dk_fk (m + 1) (xi0 l)) (h.hc (m + 2)) (h.hc (m + 1))

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphism =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphismStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphismStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

theorem _root_.GlobalTheory.T.level_system_transition_isDPMorphism : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M), ∀ m, IsDPMorphism ((levSys h).L (m + 1)).γ ((levSys h).L m).γ ((levSys h).dA m) := by
  first | exact @GlobalTheory.CompanionTheory.LatC.levSys_ddp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphismStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBAlgebraMapField =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBAlgebraMapField", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

theorem toB_on_K : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ), ∀ (a : K) (y : (per l K).P), (y : (per l K).B) = (per l K).o a → (lev h k).toB y = algebraMap K (lev h k).B a := by
  intro l _ K M h k a y hy
  have hinj : Function.Injective (algebraMap (BdRp l) (BdR l)) := fun x y h =>
    IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l) h
  have key : pInv l y = kP l K a := by
    apply hinj
    have h1 : algebraMap (BdRp l) (BdR l) (pInv l y) = y.1 := by
      have := (RingEquiv.ofBijective (algebraMap (BdRp l) (BdR l)).rangeRestrict
        ⟨fun x y h => IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l) (congrArg Subtype.val h), RingHom.rangeRestrict_surjective _⟩).apply_symm_apply y
      exact congrArg Subtype.val this
    rw [h1]
    exact hy
  show pk l k (pInv l y) = pk l k (kP l K a)
  rw [key]

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBAlgebraMapField =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBEqZeroIffTPowDvd =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBEqZeroIffTPowDvd", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport GroundTheory.PAdicHodge.ACrisBdRGalois\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

theorem lev_toB_ker {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ) :
    ∀ x : (per l K).P, (lev h k).toB x = 0 ↔ ∃ y : (per l K).P, (x : (per l K).B) = (per l K).tB ^ k * y := by
  have ht : (per l K).tB = algebraMap (BdRp l) (BdR l) (tBdR l) := by
    change DeRhamPotentiallySemistable.DRPst.iC l (tA l) = _
    change algebraMap (BdRp l) (BdR l) (ACris.iota ℂ_[l] l (tA l)) = _
    rw [show ACris.iota ℂ_[l] l (tA l) = tBdR l from ACris.iota_periodT (untilt_epsilon (p := l))]
  have hinj : Function.Injective (algebraMap (BdRp l) (BdR l)) :=
    IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l)
  have hp : ∀ x : ↥(algebraMap (BdRp l) (BdR l)).range, algebraMap (BdRp l) (BdR l) (pInv l x) = x := by
    intro x
    obtain ⟨z, hz⟩ := x.2
    have : pInv l x = z := by
      apply (RingEquiv.ofBijective (algebraMap (BdRp l) (BdR l)).rangeRestrict
        ⟨fun x y h => IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l) (congrArg Subtype.val h), RingHom.rangeRestrict_surjective _⟩).symm_apply_eq.2
      exact Subtype.ext hz.symm
    rw [this, hz]
  intro x
  change pk l k (pInv l x) = 0 ↔ _
  rw [pk, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton']
  constructor
  · rintro ⟨z, hz⟩
    refine ⟨⟨algebraMap (BdRp l) (BdR l) z, z, rfl⟩, ?_⟩
    have := hp x
    rw [← hz, map_mul, map_pow, mul_comm] at this
    rw [ht]
    exact this.symm
  · rintro ⟨y, hy⟩
    obtain ⟨z, hz⟩ := y.2
    refine ⟨z, hinj ?_⟩
    rw [map_mul, map_pow, mul_comm, hp x, hz]
    rw [ht] at hy
    exact hy.symm

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBEqZeroIffTPowDvd =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBGaloisEquivariant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBGaloisEquivariant", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC

theorem pInv_algebraMap (l : ℕ) [Fact l.Prime] (b : BdRp l) (hb : algebraMap (BdRp l) (BdR l) b ∈ (algebraMap (BdRp l) (BdR l)).range) :
    pInv l ⟨algebraMap (BdRp l) (BdR l) b, hb⟩ = b := by
  have : (⟨algebraMap (BdRp l) (BdR l) b, hb⟩ : ↥(algebraMap (BdRp l) (BdR l)).range) = (algebraMap (BdRp l) (BdR l)).rangeRestrict b := rfl
  rw [this]
  exact (RingEquiv.ofBijective (algebraMap (BdRp l) (BdR l)).rangeRestrict
    ⟨fun x y h => IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l) (congrArg Subtype.val h), RingHom.rangeRestrict_surjective _⟩).symm_apply_apply b

theorem sigmaB_toB {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ} (h : LevHyp l K M) (k : ℕ) :
    ∀ (g : K.fixingSubgroup) (x y : (per l K).P), (per l K).σ g x = y →
      (lev h k).σB g ((lev h k).toB x) = (lev h k).toB y := by
  rintro g ⟨_, b, rfl⟩ ⟨y, hy⟩ hxy
  have hy' : y = algebraMap (BdRp l) (BdR l) (gP l g b) := by
    refine (Eq.trans hxy.symm ?_)
    exact galBdRField_algebraMap (toBot g.1) b
  subst hy'
  show gB h k g (pk l k (pInv l ⟨_, _⟩)) = pk l k (pInv l ⟨_, _⟩)
  rw [pInv_algebraMap, pInv_algebraMap]
  rfl

end GlobalTheory.CompanionTheory.LatC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBGaloisEquivariant =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBSurjective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBSurjective", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatLevels

theorem pInv_surjective (l : ℕ) [Fact l.Prime] : Function.Surjective (pInv l) := by
  intro x
  refine ⟨(algebraMap (BdRp l) (BdR l)).rangeRestrict x, ?_⟩
  unfold pInv
  exact (RingEquiv.ofBijective (algebraMap (BdRp l) (BdR l)).rangeRestrict
    ⟨fun x y h => IsPerfectoidField.algebraMap_bDeRham_injective (K := ℂ_[l]) (p := l)
      (congrArg Subtype.val h), RingHom.rangeRestrict_surjective _⟩).symm_apply_apply x

theorem toB_surjective {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}
    (h : LevHyp l K M) (k : ℕ) : Function.Surjective (lev h k).toB := by
  have h1 : Function.Surjective ((pk l k).comp (pInv l)) := by
    rw [RingHom.coe_comp]
    exact (Ideal.Quotient.mk_surjective).comp (pInv_surjective l)
  exact h1

end GlobalTheory.CompanionTheory.LatLevels
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBSurjective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.GalOCOkToOC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

namespace GlobalTheory.CompanionTheory.LatC.Red

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}

theorem ι_lam_ainf (h : LevHyp l K M) (k : ℕ) (w : Ainf l) :
    (lev h k).ι ((lev h k).lam (algebraMap (Ainf l) (Acris l) w)) = fk l k w := by
  show pk l k (ACris.iota ℂ_[l] l (algebraMap (Ainf l) (Acris l) w)) = _
  rw [ACris.iota_algebraMap]
  rfl

theorem pk_mem_of_theta (k : ℕ) {d : BdRp l} (hd : IsPerfectoidField.thetaBDeRhamPlusField (K := ℂ_[l]) l d = 0) :
    pk l k d ∈ IB (fk l k) (xi0 l) := by
  have h1 : d ∈ RingHom.ker (IsPerfectoidField.thetaBDeRhamPlusField (K := ℂ_[l]) l) := hd
  rw [IsPerfectoidField.ker_thetaBDeRhamPlusField, ker_thetaBDeRhamPlus ker_theta0,
    Ideal.mem_span_singleton'] at h1
  obtain ⟨c, rfl⟩ := h1
  rw [map_mul]
  exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)

theorem xi_and_sub_mem_I (h : LevHyp l K M) (k : ℕ) :
    (lev h k).lam (algebraMap (Ainf l) (Acris l) (xi0 l)) ∈ (lev h k).I ∧
      ∀ (a : OK l K) (w : Ainf l), theta0 l w = okToOC l K a →
        algebraMap (OK l K) (lev h k).A a - (lev h k).lam (algebraMap (Ainf l) (Acris l) w) ∈ (lev h k).I := by
  refine ⟨?_, fun a w hw => ?_⟩
  · show (lev h k).ι _ ∈ IB (fk l k) (xi0 l)
    rw [ι_lam_ainf]
    exact Ideal.mem_span_singleton_self _
  · show (lev h k).ι _ ∈ IB (fk l k) (xi0 l)
    have e : (lev h k).ι (algebraMap (OK l K) (lev h k).A a) = pk l k (kP l K (a : K)) := rfl
    have e2 : (lev h k).ι ((lev h k).lam (algebraMap (Ainf l) (Acris l) w)) =
        pk l k (wittToBDeRhamPlus (normInteger ℂ_[l]) l w) := ι_lam_ainf h k w
    have e3 : (lev h k).ι (algebraMap (OK l K) (lev h k).A a -
        (lev h k).lam (algebraMap (Ainf l) (Acris l) w)) =
        pk l k (kP l K (a : K) - wittToBDeRhamPlus (normInteger ℂ_[l]) l w) := by
      rw [map_sub, e, e2, map_sub]
    rw [e3]
    apply pk_mem_of_theta
    rw [map_sub, IsPerfectoidField.thetaBDeRhamPlusField_wittToBDeRhamPlus, sub_eq_zero]
    have := thetaAlgHom_algClToBdR l (K.val (a : K))
    rw [thetaAlgHom_apply] at this
    refine this.trans ?_
    show _ = ((theta0 l w : OC l) : ℂ_[l])
    rw [hw]
    rfl

end GlobalTheory.CompanionTheory.LatC.Red
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompatStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompatStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.GalOCOkToOC\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Lat

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompatStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatFinal =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatFinal", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatDefs\npublic import Mathlib.RingTheory.DividedPowers.DPMorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open DividedPowers

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatFinal =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.LatLink =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.LatLink", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatCDefs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ChainOf\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisMemLatticeSub\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLatticeBoundIntegers\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniquePeriodOfCompatible\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FontaineLatticeDpowClosed\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesLatticeSub\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GaloisPreservesTPowerSpan\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LatticeSubReductionMem\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelFiltrationSpanTPow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesFieldStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisFixesIntegersStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelGaloisIsDPMorphismStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIdealEqMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaAlgebraMapIntegers\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelIotaLamEqToB\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelLamGaloisEquivariant\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelLatticeBase\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisA\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionGaloisB\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSystemTransitionIsDPMorphismStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBAlgebraMapField\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBEqZeroIffTPowDvd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBGaloisEquivariant\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelToBSurjective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelXiMemIdealAndThetaCompatStatement\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.LatFinal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge Formalism.Per6 DividedPowers

namespace CrystallineSemistableComparison.HT

open Pb Pb.Lat

theorem dp_of_char {K A B A' B' : Type} [Field K] [CharZero K] [CommRing A] [CommRing B] [CommRing A'] [CommRing B'] [Algebra K B']
    {I : Ideal A} {I' : Ideal A'} {J : Ideal B} {J' : Ideal B'} (δ : DividedPowers J) (δ' : DividedPowers J') (ι : A →+* B)
    (ι' : A' →+* B') (s : A →+* A') (g : B →+* B') (hJ : J = I.map ι) (hJ' : J' = I'.map ι') (hs : I.map s ≤ I')
    (h : ∀ a, g (ι a) = ι' (s a)) : IsDPMorphism δ δ' g := by
  have h1 : J.map g ≤ J' := by
    rw [hJ, hJ', Ideal.map_le_iff_le_comap, Ideal.map_le_iff_le_comap]
    intro a ha
    change g (ι a) ∈ I'.map ι'
    rw [h]
    exact Ideal.mem_map_of_mem _ (hs (Ideal.mem_map_of_mem _ ha))
  refine ⟨h1, fun {n} a ha => ?_⟩
  have hu : IsUnit (n.factorial : B') := by
    have := (isUnit_iff_ne_zero.2 (Nat.cast_ne_zero.2 n.factorial_ne_zero) : IsUnit (n.factorial : K)).map (algebraMap K B')
    rwa [map_natCast] at this
  refine hu.mul_left_cancel ?_
  rw [δ'.factorial_mul_dpow_eq_pow (h1 (Ideal.mem_map_of_mem _ ha)), ← map_natCast g, ← map_mul, δ.factorial_mul_dpow_eq_pow ha, map_pow]

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M : ℕ}

theorem levHyp_ex [FiniteDimensional ℚ_[l] K] : ∃ M : ℕ, LevHyp l K M :=
  (_root_.GlobalTheory.CompanionTheory.LatCOK.exists_uniform_mem_sub l K).imp fun M h => ⟨h, _root_.GlobalTheory.CompanionTheory.LatCris.cris_in l M, _root_.GlobalTheory.CompanionTheory.LatCHc.hc_k l M, _root_.GlobalTheory.CompanionTheory.LatGal.span_tBdR_pow_le_comap l K,
    fun k g => _root_.GlobalTheory.CompanionTheory.LatGal.gal_mem_sub l K M k g _, _root_.GlobalTheory.CompanionTheory.LatLevel.dk_mem_sub l M⟩

theorem lev_σ_ι (h : LevHyp l K M) (k : ℕ) (g : K.fixingSubgroup) (a : (lev h k).A) :
    (lev h k).ι ((lev h k).σA g a) = (lev h k).σB g ((lev h k).ι a) :=
  ι_map (fk l k) (xi0 l) (fk l k) (xi0 l) l M (gB h k g) (h.gal k g) a

theorem lev_good (h : LevHyp l K M) (k : ℕ) (hk : 1 ≤ k) : (lev h k).Good := by
  exact {
    pos := hk
    lat := _root_.GlobalTheory.CompanionTheory.LatCBase.latBase_lev h k hk
    toB_surj := _root_.GlobalTheory.CompanionTheory.LatLevels.toB_surjective h k
    toB_ker := _root_.GlobalTheory.CompanionTheory.LatC.lev_toB_ker h k
    toB_K := _root_.GlobalTheory.CompanionTheory.LatC.toB_on_K h k
    ι_inj := ι_injective (fk l k) (xi0 l) l M
    ι_dp := GlobalTheory.CompanionTheory.LatNil.isDPMorphism_ι (fk l k) (xi0 l) l M (h.hc k)
    ι_I := rfl
    IB_eq := _root_.GlobalTheory.CompanionTheory.LatC.lev_IB_eq_map h k
    ι_O := _root_.GlobalTheory.CompanionTheory.LatC.iota_algebraMap_OK h k
    ι_lam := _root_.GlobalTheory.CompanionTheory.LatC.iota_lam_eq_toB h k
    σB_toB := _root_.GlobalTheory.CompanionTheory.LatC.sigmaB_toB h k
    σ_ι := lev_σ_ι h k
    σ_lam := _root_.GlobalTheory.CompanionTheory.LatCSig.sig_lam h k
    σ_O := GlobalTheory.T.level_galois_fixes_integers h k
    σ_dp := GlobalTheory.T.level_galois_isDPMorphism h k
    σB_dp g := dp_of_char (K := K) (lev h k).γB (lev h k).γB (lev h k).ι (lev h k).ι ((lev h k).σA g) ((lev h k).σB g)
      (_root_.GlobalTheory.CompanionTheory.LatC.lev_IB_eq_map h k) (_root_.GlobalTheory.CompanionTheory.LatC.lev_IB_eq_map h k) (GlobalTheory.T.level_galois_isDPMorphism h k g).1 fun a => (lev_σ_ι h k g a).symm
    σB_K := GlobalTheory.T.level_galois_fixes_field h k
    pdP_B := _root_.GlobalTheory.CompanionTheory.LatPdpB.dividedPowerFiltration_lev_eq_span_pow h k
  }

theorem dk_pk (k : ℕ) (x : BdRp l) : dk l k (pk l (k + 1) x) = pk l k x := rfl

theorem sys_dι (h : LevHyp l K M) (m : ℕ) (a : ((levSys h).L (m + 1)).A) :
    (levSys h).dB m (((levSys h).L (m + 1)).ι a) = ((levSys h).L m).ι ((levSys h).dA m a) :=
  (ι_map (fk l (m + 2)) (xi0 l) (fk l (m + 1)) (xi0 l) l M (dk l (m + 1)) (h.dIn (m + 1)) a).symm

theorem levSys_good (h : LevHyp l K M) : (levSys h).Good := by
  exact {
    lev m := lev_good h (m + 1) (Nat.le_add_left 1 m)
    dB_toB m x := dk_pk (m + 1) (pInv l x)
    dι := sys_dι h
    dlam m c := Subtype.ext (dk_pk (m + 1) (ACris.iota ℂ_[l] l c))
    dO m a := Subtype.ext (dk_pk (m + 1) (kP l K a))
    dK m k := dk_pk (m + 1) (kP l K k)
    ddp := _root_.GlobalTheory.CompanionTheory.LatC.levSys_ddp h
    ddpB m := dp_of_char (K := K) ((levSys h).L (m + 1)).γB ((levSys h).L m).γB ((levSys h).L (m + 1)).ι ((levSys h).L m).ι
      ((levSys h).dA m) ((levSys h).dB m) (_root_.GlobalTheory.CompanionTheory.LatC.lev_IB_eq_map h (m + 2)) (_root_.GlobalTheory.CompanionTheory.LatC.lev_IB_eq_map h (m + 1)) (GlobalTheory.T.level_system_transition_isDPMorphism h m).1 (sys_dι h m)
    dσ := _root_.GlobalTheory.CompanionTheory.LatLevel.levSys_dA_σA h
    dσB := _root_.GlobalTheory.CompanionTheory.LatLevel.dB_sigmaB h
    cpl := _root_.GlobalTheory.CompanionTheory.LatC.levSys_existsUnique h
  }

theorem levSys_ex [FiniteDimensional ℚ_[l] K] : ∃ S : Kap.LevSys (per l K), S.Good ∧ ∀ m, (S.L m).CrisOK :=
  (levHyp_ex (l := l) (K := K)).elim fun _ h => ⟨levSys h, levSys_good h, fun m => _root_.GlobalTheory.CompanionTheory.LatC.Red.xi_and_sub_mem_I h (m + 1)⟩

end CrystallineSemistableComparison.HT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.LatLink =====
