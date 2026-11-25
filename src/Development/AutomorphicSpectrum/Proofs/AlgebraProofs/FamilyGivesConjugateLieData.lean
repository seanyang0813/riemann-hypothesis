module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft
public import Development.WeilBound.CoreStatements.HodgeTatePoints.FirstPowerZeroAt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.ConstantCoeffEv
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalBilinearTermProduct
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MultiplicationByPFactorsFrobenius
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowOneSeriesPFormula
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowerSeriesPowPFrobenius
public import Mathlib.Data.Matrix.Mul
public import Mathlib.RingTheory.LocalRing.ResidueField.Defs
public import Mathlib.Data.Matrix.ColumnRowPartitioned
public import Mathlib.Data.Matrix.Basic
public import Mathlib.Data.Matrix.Block
public import Mathlib.LinearAlgebra.Basis.VectorSpace
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaIsomorphismTransport
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaEquivariantFrobenius
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BetaEquivariantFrobenius
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualLatticeDegreeNeg
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalDataBaseChange
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalGroupActionRingHom
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FrobeniusLatticeDegreeMulP
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.LogChain
import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsSplitGaussChars
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalHermitianActionPairing
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalIsomorphismTransport
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowOnePowTwoCommutation, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowTwoSymplecticRelation, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaAdjointExact, Development.WeilBound.CoreStatements.HodgeTatePoints.CgSplit, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalMatrixCoprimeDecomposition, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FamilyGivesConjugateLieData

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowOnePowTwoCommutation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowOnePowTwoCommutation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.FirstPowerZeroAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj

namespace GlobalTheory.CompanionTheory.Ar.Conj

theorem pow_interchange : ∀ (R : Type) [CommRing R] (d : ℕ) (O : Type) [CommRing O] [StarRing O] (B : FB R d O) (m n : ℕ), pow2 B n ^ m * ev (n := 2) ![pt R d 0, comp1 (B.A.act (n : O)) (pt R d 1)] (pow1 B m) = pow1 B m ^ n * ev (n := 2) ![comp1 (B.A.act (m : O)) (pt R d 0), pt R d 1] (pow2 B n) :=
  PositivityTheory.HtPt.Cc.pow_inter

end GlobalTheory.CompanionTheory.Ar.Conj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowOnePowTwoCommutation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowTwoSymplecticRelation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowTwoSymplecticRelation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.FirstPowerZeroAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj

namespace GlobalTheory.CompanionTheory.Ar.Conj

theorem pow_sy_exchange : ∀ (R : Type) [CommRing R] (d : ℕ) (O : Type) [CommRing O] [StarRing O] (B : FB R d O) (n : ℕ), pow2 B n * B.sy ^ n = ev (n := 2) ![pt R d 0, comp1 (B.A.act (n : O)) (pt R d 1)] B.sy * ev (n := 2) ![pt R d 1, pt R d 0] (pow1 B n) :=
  @PositivityTheory.HtPt.Cc.pow_sy

end GlobalTheory.CompanionTheory.Ar.Conj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowTwoSymplecticRelation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaAdjointExact =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaAdjointExact", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.ConstantCoeffEv\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalBilinearTermProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MultiplicationByPFactorsFrobenius\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowOnePowTwoCommutation\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowOneSeriesPFormula\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowTwoSymplecticRelation\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowerSeriesPowPFrobenius\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.LogChain\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaIsomorphismTransport\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Conj.Isotropy

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ ReciprocityTheory.ChartRestriction.G.TB.LogPf GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj

variable {R : Type} [CommRing R] {d : ℕ}

local notation "P₀" => pt R (n := 2) d 0
local notation "P₁" => pt R (n := 2) d 1

theorem cz_pair {n : ℕ} {a b : Pt R n d} (ha : ∀ i, constantCoeff (a i) = 0)
    (hb : ∀ i, constantCoeff (b i) = 0) : CZ ![a, b] := by
  intro j i
  fin_cases j
  · exact ha i
  · exact hb i

theorem cz_single {n : ℕ} {a : Pt R n d} (ha : ∀ i, constantCoeff (a i) = 0) : CZ ![a] := by
  intro j i
  fin_cases j
  exact ha i

theorem pt_noConst {n : ℕ} (j : Fin n) (i : Fin d) : constantCoeff (pt R d j i) = 0 := by
  simp [pt]

theorem composition_no_constant_term {V : Pt R 1 d} (hV : ∀ i, constantCoeff (V i) = 0) {n : ℕ} {a : Pt R n d}
    (ha : ∀ i, constantCoeff (a i) = 0) (i : Fin d) : constantCoeff (comp1 V a i) = 0 :=
  constantCoeff_ev (cz_single ha) (hV i)

theorem ev_pow_eq {m n : ℕ} {a : Fin m → Pt R n d} (ha : CZ a) (f : PS R m d) (k : ℕ) :
    ev a (f ^ k) = ev a f ^ k := by
  simp only [← evHom_apply ha, map_pow]

theorem ev_pair_ev {n : ℕ} {a b : Pt R n d} (ha : ∀ i, constantCoeff (a i) = 0)
    (hb : ∀ i, constantCoeff (b i) = 0) {u v : Pt R 2 d} (hu : ∀ i, constantCoeff (u i) = 0)
    (hv : ∀ i, constantCoeff (v i) = 0) (f : PS R 2 d) :
    ev ![a, b] (ev ![u, v] f) = ev ![fun i => ev ![a, b] (u i), fun i => ev ![a, b] (v i)] f := by
  rw [ev_ev (cz_pair ha hb) (cz_pair hu hv)]
  congr 1
  funext j i
  fin_cases j <;> rfl

theorem ev_first {n : ℕ} {a b : Pt R n d} (ha : ∀ i, constantCoeff (a i) = 0)
    (hb : ∀ i, constantCoeff (b i) = 0) : (fun i => ev ![a, b] (P₀ i)) = a :=
  funext fun i => ev_X (cz_pair ha hb) 0 i

theorem ev_second {n : ℕ} {a b : Pt R n d} (ha : ∀ i, constantCoeff (a i) = 0)
    (hb : ∀ i, constantCoeff (b i) = 0) : (fun i => ev ![a, b] (P₁ i)) = b :=
  funext fun i => ev_X (cz_pair ha hb) 1 i

theorem ev_first_pow {n : ℕ} (p : ℕ) {a b : Pt R n d} (ha : ∀ i, constantCoeff (a i) = 0)
    (hb : ∀ i, constantCoeff (b i) = 0) :
    (fun i => ev ![a, b] (ptPow R d p 0 i)) = fun i => a i ^ p :=
  funext fun i => by
    simp only [ptPow]
    rw [ev_pow_eq (cz_pair ha hb), ev_X (cz_pair ha hb)]
    rfl

theorem ev_second_pow {n : ℕ} (p : ℕ) {a b : Pt R n d} (ha : ∀ i, constantCoeff (a i) = 0)
    (hb : ∀ i, constantCoeff (b i) = 0) :
    (fun i => ev ![a, b] (ptPow R d p 1 i)) = fun i => b i ^ p :=
  funext fun i => by
    simp only [ptPow]
    rw [ev_pow_eq (cz_pair ha hb), ev_X (cz_pair ha hb)]
    rfl

theorem pt_pow_eq {n : ℕ} (p : ℕ) (j : Fin n) : (fun i => pt R (n := n) d j i ^ p) = ptPow R d p j := rfl

theorem ev_comp1_pair {V : Pt R 1 d} (hV : ∀ i, constantCoeff (V i) = 0) {m n : ℕ}
    {a : Fin m → Pt R n d} (ha : CZ a) {b : Pt R m d} (hb : ∀ i, constantCoeff (b i) = 0) :
    (fun i => ev a (comp1 V b i)) = comp1 V (fun i => ev a (b i)) := by
  funext i
  simp only [comp1]
  rw [ev_ev ha (cz_single hb)]
  congr 1
  funext j l
  fin_cases j
  rfl

theorem composition_frobenius_point {p n : ℕ} {a : Pt R n d} (ha : ∀ i, constantCoeff (a i) = 0) :
    comp1 (ptPow R d p 0) a = fun i => a i ^ p := by
  funext i
  simp only [comp1, ptPow]
  rw [ev_pow_eq (cz_single ha), ev_X (cz_single ha)]
  rfl

theorem composition_assoc_frobenius_point {V : Pt R 1 d} {p n : ℕ} (hp : p ≠ 0) {a : Pt R n d}
    (ha : ∀ i, constantCoeff (a i) = 0) :
    comp1 (comp1 V (ptPow R d p 0)) a = comp1 V (fun i => a i ^ p) := by
  funext i
  simp only [comp1]
  rw [ev_ev (cz_single ha) (cz_single (GlobalTheory.CompanionTheory.Ar.Conj.IsoAlpha.cc_ptPow hp 0))]
  congr 1
  funext j l
  fin_cases j
  exact congrFun (composition_frobenius_point ha) l

theorem lin_tau {p : ℕ} (hp : p ≠ 1) : lin (ptPow R d p 0 : Pt R 1 d) 1 = 0 := by
  ext i j
  simp only [lin, ptPow, Matrix.zero_apply]
  rw [coeff_X_pow, if_neg]
  intro h
  rcases (Finsupp.single_eq_single_iff _ _ _ _).1 h with ⟨_, h⟩ | ⟨h, _⟩
  · exact hp h.symm
  · exact one_ne_zero h

theorem calc_cmp {f : PS R 2 d} (hf : AxOne f) {φ ψ : Pt R 1 d} (hφ : ∀ i, constantCoeff (φ i) = 0)
    (hψ : ∀ i, constantCoeff (ψ i) = 0) :
    AxOne (ev (n := 2) ![comp1 φ P₀, comp1 ψ P₁] f) ∧
      bil (ev (n := 2) ![comp1 φ P₀, comp1 ψ P₁] f) 1 1 = (lin φ 1).transpose * bil f 1 1 * lin ψ 1 :=
  have t := _root_.GlobalTheory.CompanionTheory.Ar.Conj.BilCalc.bil_calc R d f f φ ψ hf hf hφ hψ
  ⟨t.2.2.2.1, t.2.2.2.2.1⟩

theorem calc_right {f : PS R 2 d} (hf : AxOne f) {p : ℕ} (hp0 : p ≠ 0) (hp : p ≠ 1) :
    AxOne (ev (n := 2) ![P₀, ptPow R d p 1] f) ∧ bil (ev (n := 2) ![P₀, ptPow R d p 1] f) 1 1 = 0 := by
  have t := calc_cmp hf (φ := pt R d 0) (ψ := ptPow R d p 0) (pt_noConst 0) (GlobalTheory.CompanionTheory.Ar.Conj.IsoAlpha.cc_ptPow hp0 0)
  rw [PositivityTheory.HtPt.Ca.comp1_identity_left, composition_frobenius_point (pt_noConst 1), pt_pow_eq, lin_tau hp, Matrix.mul_zero] at t
  exact t

theorem calc_left {f : PS R 2 d} (hf : AxOne f) {p : ℕ} (hp0 : p ≠ 0) (hp : p ≠ 1) :
    AxOne (ev (n := 2) ![ptPow R d p 0, P₁] f) ∧ bil (ev (n := 2) ![ptPow R d p 0, P₁] f) 1 1 = 0 := by
  have t := calc_cmp hf (φ := ptPow R d p 0) (ψ := pt R d 0) (GlobalTheory.CompanionTheory.Ar.Conj.IsoAlpha.cc_ptPow hp0 0) (pt_noConst 0)
  rw [PositivityTheory.HtPt.Ca.comp1_identity_left, composition_frobenius_point (pt_noConst 0), pt_pow_eq, lin_tau hp, Matrix.transpose_zero,
    Matrix.zero_mul, Matrix.zero_mul] at t
  exact t

theorem calc_map_right {f : PS R 2 d} (hf : AxOne f) {V : Pt R 1 d} (hV : ∀ i, constantCoeff (V i) = 0) :
    AxOne (ev (n := 2) ![P₀, comp1 V P₁] f) ∧
      bil (ev (n := 2) ![P₀, comp1 V P₁] f) 1 1 = bil f 1 1 * lin V 1 := by
  have t := calc_cmp hf (φ := pt R d 0) (ψ := V) (pt_noConst 0) hV
  rw [PositivityTheory.HtPt.Ca.comp1_identity_left, lin_pt_eq_one, Matrix.transpose_one, Matrix.one_mul] at t
  exact t

theorem calc_map_left {f : PS R 2 d} (hf : AxOne f) {V : Pt R 1 d} (hV : ∀ i, constantCoeff (V i) = 0) :
    AxOne (ev (n := 2) ![comp1 V P₀, P₁] f) ∧
      bil (ev (n := 2) ![comp1 V P₀, P₁] f) 1 1 = (lin V 1).transpose * bil f 1 1 := by
  have t := calc_cmp hf (φ := V) (ψ := pt R d 0) hV (pt_noConst 0)
  rw [PositivityTheory.HtPt.Ca.comp1_identity_left, lin_pt_eq_one, Matrix.mul_one] at t
  exact t

theorem axOne_map {S : Type} [CommRing S] (φ : R →+* S) {f : PS R 2 d} (hf : AxOne f) :
    AxOne (MvPowerSeries.map φ f) := by
  have key : ∀ a : Fin 2 → Pt R 1 d, CZ a → ev a f = 1 →
      ev (fun j l => MvPowerSeries.map φ (a j l)) (MvPowerSeries.map φ f) = 1 := by
    intro a ha h
    have e : MvPowerSeries.map φ (ev a f) =
        ev (fun j l => MvPowerSeries.map φ (a j l)) (MvPowerSeries.map φ f) := by
      unfold ev
      exact map_subst ha.hasSubst f
    rw [← e, h, map_one]
  have c0 : ∀ i, constantCoeff ((0 : Pt R 1 d) i) = 0 := fun i => by simp
  have c1 : ∀ i, constantCoeff (pt R (n := 1) d 0 i) = 0 := pt_noConst 0
  constructor
  · have := key _ (cz_pair c0 c1) hf.1
    convert this using 2
    funext j l
    fin_cases j
    · simp
    · simp [pt]
  · have := key _ (cz_pair c1 c0) hf.2
    convert this using 2
    funext j l
    fin_cases j
    · simp [pt]
    · simp

theorem calc_mul {f g : PS R 2 d} (hf : AxOne f) (hg : AxOne g) :
    AxOne (f * g) ∧ bil (f * g) 1 1 = bil f 1 1 + bil g 1 1 :=
  have t := _root_.GlobalTheory.CompanionTheory.Ar.Conj.BilCalc.bil_calc R d f g (pt R d 0) (pt R d 0) hf hg (pt_noConst 0) (pt_noConst 0)
  ⟨t.1, t.2.1 1⟩

theorem calc_swap {f : PS R 2 d} (hf : AxOne f) :
    bil (ev (n := 2) ![P₁, P₀] f) 1 1 = (bil f 1 1).transpose :=
  (_root_.GlobalTheory.CompanionTheory.Ar.Conj.BilCalc.bil_calc R d f f (pt R d 0) (pt R d 0) hf hf (pt_noConst 0) (pt_noConst 0)).2.2.2.2.2.1 1 1

theorem calc_pow {f : PS R 2 d} (hf : AxOne f) {p : ℕ} (hp : 1 ≤ p) :
    bil (ev (n := 2) ![ptPow R d p 0, ptPow R d p 1] f) p p = bil f 1 1 :=
  (_root_.GlobalTheory.CompanionTheory.Ar.Conj.BilCalc.bil_calc R d f f (pt R d 0) (pt R d 0) hf hf (pt_noConst 0) (pt_noConst 0)).2.2.2.2.2.2 p p hp hp

theorem bil_map_eq_zero {S : Type} [CommRing S] (φ : R →+* S) {f : PS R 2 d} (h : bil f 1 1 = 0) :
    bil (MvPowerSeries.map φ f) 1 1 = 0 := by
  ext i j
  have := congrFun (congrFun h i) j
  simp only [bil, coeff_map, Matrix.zero_apply] at this ⊢
  rw [this, map_zero]

variable {O : Type} [CommRing O] [StarRing O]

theorem am_mul_hw {p : ℕ} [Fact p.Prime] [CharP R p] (B : FB R d O) :
    am B p * hw B p = (hw B p).transpose * (bil B.sy 1 1 * hw B p + (am B p).transpose) := by
  have hp0 : p ≠ 0 := (Fact.out : p.Prime).ne_zero
  have hp1 : p ≠ 1 := (Fact.out : p.Prime).ne_one
  obtain ⟨V, hV, hact, hlin⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.mulp_factors_frobenius R p d O B
  obtain ⟨g, hg, ha, hgb⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.pow_one_series_in_p R p d O B
  have c0 : ∀ i, constantCoeff (P₀ i) = 0 := pt_noConst 0
  have c1 : ∀ i, constantCoeff (P₁ i) = 0 := pt_noConst 1
  have u0 : ∀ i, constantCoeff (ptPow R (n := 2) d p 0 i) = 0 := GlobalTheory.CompanionTheory.Ar.Conj.IsoAlpha.cc_ptPow hp0 0
  have u1 : ∀ i, constantCoeff (ptPow R (n := 2) d p 1 i) = 0 := GlobalTheory.CompanionTheory.Ar.Conj.IsoAlpha.cc_ptPow hp0 1
  have v0 := composition_no_constant_term hV c0
  have v1 := composition_no_constant_term hV c1
  have w0 := composition_no_constant_term hV u0
  have w1 := composition_no_constant_term hV u1
  have hA0 : comp1 (B.A.act (p : O)) P₀ = comp1 V (ptPow R d p 0) := by
    rw [hact, composition_assoc_frobenius_point hp0 c0, pt_pow_eq]
  have hA1 : comp1 (B.A.act (p : O)) P₁ = comp1 V (ptPow R d p 1) := by
    rw [hact, composition_assoc_frobenius_point hp0 c1, pt_pow_eq]
  have hsym : AxOne B.sy := ⟨B.symmetry_zero_fst, B.symmetry_zero_snd⟩
  have hfs : ∀ f : PS R 2 d, f ^ p = ev (n := 2) ![ptPow R d p 0, ptPow R d p 1]
      (MvPowerSeries.map (frobenius R p) f) := by
    intro f
    rw [_root_.GlobalTheory.CompanionTheory.Ar.Conj.pow_eq_ev_frobenius R p d 2 f]
    congr 1
    funext j
    fin_cases j <;> rfl

  obtain ⟨sy', hsy'⟩ : ∃ s, s = ev (n := 2) ![P₁, P₀] B.sy := ⟨_, rfl⟩
  obtain ⟨s2, hs2⟩ : ∃ s, s = ev (n := 2) ![P₀, comp1 V P₁] B.sy := ⟨_, rfl⟩
  obtain ⟨g1, hg1⟩ : ∃ s, s = ev (n := 2) ![P₁, P₀] g := ⟨_, rfl⟩
  obtain ⟨t, ht⟩ : ∃ s, s = ev (n := 2) ![ptPow R d p 0, P₁] (MvPowerSeries.map (frobenius R p) sy') :=
    ⟨_, rfl⟩
  have axs2 : AxOne s2 := hs2 ▸ (calc_map_right hsym hV).1
  have bs2 : bil s2 1 1 = bil B.sy 1 1 * hw B p := by rw [hs2, (calc_map_right hsym hV).2, hlin]
  have axg1 : AxOne g1 := hg1 ▸ PositivityTheory.HtPt.Ca.axOne_swap hg
  have bg1 : bil g1 1 1 = (am B p).transpose := by rw [hg1, calc_swap hg, hgb]
  have axsy' : AxOne (MvPowerSeries.map (frobenius R p) sy') :=
    axOne_map _ (hsy' ▸ PositivityTheory.HtPt.Ca.axOne_swap hsym)
  have axt : AxOne t := ht ▸ (calc_left axsy' hp0 hp1).1
  have bt : bil t 1 1 = 0 := ht ▸ (calc_left axsy' hp0 hp1).2
  obtain ⟨g', hg'⟩ : ∃ s, s = s2 * g1 * t := ⟨_, rfl⟩
  have axg' : AxOne g' := hg' ▸ (calc_mul (calc_mul axs2 axg1).1 axt).1
  have bg' : bil g' 1 1 = bil B.sy 1 1 * hw B p + (am B p).transpose := by
    rw [hg', (calc_mul (calc_mul axs2 axg1).1 axt).2, (calc_mul axs2 axg1).2, bs2, bg1, bt, add_zero]
  have cQ := cz_pair c0 u1
  have hb : pow2 B p = ev (n := 2) ![P₀, ptPow R d p 1] g' := by
    have e1 := _root_.GlobalTheory.CompanionTheory.Ar.Conj.pow_sy_exchange R d O B p
    have f1 : ev (n := 2) ![P₀, comp1 (B.A.act (p : O)) P₁] B.sy =
        ev (n := 2) ![P₀, ptPow R d p 1] s2 := by
      rw [hA1, hs2, ev_pair_ev c0 u1 c0 v1, ev_first c0 u1, ev_comp1_pair hV cQ c1, ev_second c0 u1]
    have f2 : ev (n := 2) ![P₁, P₀] (pow1 B p) = ev (n := 2) ![P₀, ptPow R d p 1] g1 := by
      rw [ha, hg1, ev_pair_ev c1 c0 u0 c1, ev_first_pow p c1 c0, ev_second c1 c0, pt_pow_eq,
        ev_pair_ev c0 u1 c1 c0, ev_first c0 u1, ev_second c0 u1]
    have f3 : sy' ^ p = ev (n := 2) ![P₀, ptPow R d p 1] t := by
      rw [hfs, ht, ev_pair_ev c0 u1 u0 c1, ev_first_pow p c0 u1, ev_second c0 u1, pt_pow_eq]
    have f4 : B.sy ^ p * sy' ^ p = 1 := by rw [← mul_pow, hsy', B.sy_inv, one_pow]
    calc pow2 B p = pow2 B p * (B.sy ^ p * sy' ^ p) := by rw [f4, mul_one]
      _ = pow2 B p * B.sy ^ p * sy' ^ p := (mul_assoc _ _ _).symm
      _ = ev (n := 2) ![P₀, ptPow R d p 1] s2 * ev (n := 2) ![P₀, ptPow R d p 1] g1 *
          ev (n := 2) ![P₀, ptPow R d p 1] t := by rw [e1, f1, f2, f3]
      _ = ev (n := 2) ![P₀, ptPow R d p 1] g' := by rw [hg', ev_mul cQ, ev_mul cQ]

  obtain ⟨g2, hg2⟩ : ∃ s, s = ev (n := 2) ![P₀, comp1 V P₁] g := ⟨_, rfl⟩
  obtain ⟨g3, hg3⟩ : ∃ s, s = ev (n := 2) ![comp1 V P₀, P₁] g' := ⟨_, rfl⟩
  have axg2 : AxOne g2 := hg2 ▸ (calc_map_right hg hV).1
  have bg2 : bil g2 1 1 = am B p * hw B p := by rw [hg2, (calc_map_right hg hV).2, hgb, hlin]
  have axg3 : AxOne g3 := hg3 ▸ (calc_map_left axg' hV).1
  have bg3 : bil g3 1 1 = (hw B p).transpose * (bil B.sy 1 1 * hw B p + (am B p).transpose) := by
    rw [hg3, (calc_map_left axg' hV).2, hlin, bg']
  have cP := cz_pair u0 u1
  have h1 : ev (n := 2) ![P₀, comp1 (B.A.act (p : O)) P₁] (pow1 B p) =
      ev (n := 2) ![ptPow R d p 0, ptPow R d p 1] g2 := by
    rw [hA1, ha, hg2, ev_pair_ev c0 w1 u0 c1, ev_first_pow p c0 w1, ev_second c0 w1, pt_pow_eq,
      ev_pair_ev u0 u1 c0 v1, ev_first u0 u1, ev_comp1_pair hV cP c1, ev_second u0 u1]
  have h2 : ev (n := 2) ![comp1 (B.A.act (p : O)) P₀, P₁] (pow2 B p) =
      ev (n := 2) ![ptPow R d p 0, ptPow R d p 1] g3 := by
    rw [hA0, hb, hg3, ev_pair_ev w0 c1 c0 u1, ev_first w0 c1, ev_second_pow p w0 c1, pt_pow_eq,
      ev_pair_ev u0 u1 v0 c1, ev_comp1_pair hV cP c0, ev_first u0 u1, ev_second u0 u1]
  have hmain : ev (n := 2) ![ptPow R d p 0, ptPow R d p 1]
        (MvPowerSeries.map (frobenius R p) (pow2 B p) * g2) =
      ev (n := 2) ![ptPow R d p 0, ptPow R d p 1]
        (MvPowerSeries.map (frobenius R p) (pow1 B p) * g3) := by
    rw [ev_mul cP, ev_mul cP, ← hfs, ← hfs, ← h1, ← h2]
    exact _root_.GlobalTheory.CompanionTheory.Ar.Conj.pow_interchange R d O B p p

  have axb : AxOne (pow2 B p) := hb ▸ (calc_right axg' hp0 hp1).1
  have bb : bil (pow2 B p) 1 1 = 0 := hb ▸ (calc_right axg' hp0 hp1).2
  have axa : AxOne (pow1 B p) := ha ▸ (calc_left hg hp0 hp1).1
  have ba : bil (pow1 B p) 1 1 = 0 := ha ▸ (calc_left hg hp0 hp1).2
  have axfb := axOne_map (frobenius R p) axb
  have axfa := axOne_map (frobenius R p) axa
  have hp : 1 ≤ p := Nat.one_le_iff_ne_zero.2 hp0
  have hco := congrArg (fun f => bil f p p) hmain
  rw [calc_pow (calc_mul axfb axg2).1 hp, calc_pow (calc_mul axfa axg3).1 hp, (calc_mul axfb axg2).2,
    (calc_mul axfa axg3).2, bil_map_eq_zero _ bb, bil_map_eq_zero _ ba, zero_add, zero_add, bg2, bg3] at hco
  exact hco

theorem beta_comp_alpha : ∀ (R : Type) [CommRing R] (p : ℕ) [Fact p.Prime] [CharP R p] (d : ℕ) (O : Type)
    [CommRing O] [StarRing O] (B : FB R d O),
    (∀ u y, u ⬝ᵥ beta B p y = pairH B (alpha B p u) y) ∧ beta B p ∘ₗ alpha B p = 0 := by
  intro R _ p _ _ d O _ _ B
  refine ⟨fun u y => dotProduct_beta B p u y, LinearMap.ext fun u => ?_⟩
  have h : (hw B p).transpose * (am B p).transpose - am B p * hw B p +
      (hw B p).transpose * bil B.sy 1 1 * hw B p = 0 := by
    rw [am_mul_hw, Matrix.mul_add, Matrix.mul_assoc]
    abel
  rw [LinearMap.comp_apply, beta_alpha_apply, h, Matrix.zero_mulVec]
  rfl

end GlobalTheory.CompanionTheory.Ar.Conj.Isotropy
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaAdjointExact =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.CgSplit =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.CgSplit", "h": "module\n\npublic import Mathlib.Data.Matrix.Mul\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Data.Matrix.Basic\npublic import Mathlib.Data.Matrix.Block\npublic import Mathlib.LinearAlgebra.Basis.VectorSpace\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.HtPt.Cg

open Matrix

theorem left_inv_of_residue {A : Type} [CommRing A] [IsLocalRing A] {m n : Type} [Fintype m] [Fintype n]
    [DecidableEq m] [DecidableEq n] (M : Matrix m n A)
    (h : ∀ u, (M.map (IsLocalRing.residue A)).mulVec u = 0 → u = 0) : ∃ N : Matrix n m A, N * M = 1 := by
  have hi : LinearMap.ker (Matrix.toLin' (M.map (IsLocalRing.residue A))) = ⊥ := by
    rw [LinearMap.ker_eq_bot']
    intro u hu
    exact h u (by simpa using hu)
  obtain ⟨g, hg⟩ := LinearMap.exists_leftInverse_of_injective _ hi
  have h1 : LinearMap.toMatrix' g * M.map (IsLocalRing.residue A) = 1 := by
    have := congrArg LinearMap.toMatrix' hg
    rwa [LinearMap.toMatrix'_comp, LinearMap.toMatrix'_toLin', LinearMap.toMatrix'_id] at this
  choose l hl using fun i j => IsLocalRing.residue_surjective (LinearMap.toMatrix' g i j)
  have h2 : (Matrix.of l * M).map (IsLocalRing.residue A) = 1 := by
    rw [Matrix.map_mul, ← h1]
    congr 1
    ext i j
    exact hl i j
  have h3 : IsUnit (Matrix.of l * M).det := by
    rw [← IsLocalRing.residue_ne_zero_iff_isUnit, RingHom.map_det, RingHom.mapMatrix_apply, h2, det_one]
    exact one_ne_zero
  exact ⟨(Matrix.of l * M)⁻¹ * Matrix.of l, by rw [Matrix.mul_assoc, nonsing_inv_mul _ h3]⟩

theorem split_local : ∀ (A : Type) [CommRing A] [IsLocalRing A] (d : ℕ) (h a S : Matrix (Fin d) (Fin d) A), a * h - h.transpose * S * h - h.transpose * a.transpose = 0 → (∀ u : Fin d → IsLocalRing.ResidueField A, (h.map (IsLocalRing.residue A)).mulVec u = 0 → (a.transpose.map (IsLocalRing.residue A)).mulVec u = 0 → u = 0) → ∃ r₁ r₂ s₁ s₂ : Matrix (Fin d) (Fin d) A, r₁ * h + r₂ * a.transpose = 1 ∧ (a - h.transpose * S) * s₁ - h.transpose * s₂ = 1 ∧ h * r₁ + s₁ * (a - h.transpose * S) = 1 ∧ h * r₂ - s₁ * h.transpose = 0 ∧ a.transpose * r₁ + s₂ * (a - h.transpose * S) = 0 ∧ a.transpose * r₂ - s₂ * h.transpose = 1 := by
  intro A _ _ d h a S hiso hinj
  obtain ⟨N, hN⟩ := left_inv_of_residue (fromRows h a.transpose) (fun u hu => by
    rw [fromRows_map, fromRows_mulVec] at hu
    exact hinj u (funext fun i => congrFun hu (Sum.inl i)) (funext fun i => congrFun hu (Sum.inr i)))
  obtain ⟨x, y, rfl⟩ : ∃ x y, N = fromCols x y := ⟨_, _, (fromCols_toCols N).symm⟩
  rw [fromCols_mul_fromRows] at hN
  have hT : h.transpose * x.transpose + a * y.transpose = 1 := by
    have := congrArg Matrix.transpose hN
    simpa [transpose_add, transpose_mul] using this
  set b := a - h.transpose * S with hb
  set s₁ := y.transpose
  set s₂ := -(x.transpose + S * y.transpose) with hs₂
  have e2 : b * s₁ - h.transpose * s₂ = 1 := by
    rw [← hT, hb, hs₂]; noncomm_ring
  have e0 : b * h - h.transpose * a.transpose = 0 := by
    rw [← hiso, hb]; noncomm_ring
  set w := x * s₁ + y * s₂ with hw
  have e1 : (x - w * b) * h + (y + w * h.transpose) * a.transpose = 1 := by
    have : (x - w * b) * h + (y + w * h.transpose) * a.transpose =
      (x * h + y * a.transpose) - w * (b * h - h.transpose * a.transpose) := by noncomm_ring
    rw [this, hN, e0]; simp
  have e3 : (x - w * b) * s₁ + (y + w * h.transpose) * s₂ = 0 := by
    have : (x - w * b) * s₁ + (y + w * h.transpose) * s₂ =
      (x * s₁ + y * s₂) - w * (b * s₁ - h.transpose * s₂) := by noncomm_ring
    rw [this, e2, ← hw]; simp
  have hNM : fromBlocks (x - w * b) (y + w * h.transpose) b (-h.transpose) *
      fromBlocks h s₁ a.transpose s₂ = 1 := by
    rw [fromBlocks_multiply, e1, e3, ← fromBlocks_one]
    congr 1
    · rw [← e0]; noncomm_ring
    · rw [← e2]; noncomm_ring
  have hMN := mul_eq_one_comm.1 hNM
  rw [fromBlocks_multiply, ← fromBlocks_one, fromBlocks_inj] at hMN
  obtain ⟨f1, f2, f3, f4⟩ := hMN
  refine ⟨_, _, s₁, s₂, e1, e2, f1, ?_, f3, ?_⟩
  · rw [← f2]; noncomm_ring
  · rw [← f4]; noncomm_ring

end PositivityTheory.HtPt.Cg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.CgSplit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalMatrixCoprimeDecomposition =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalMatrixCoprimeDecomposition", "h": "module\n\npublic import Mathlib.Data.Matrix.Mul\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.CgSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsSplitGaussChars\nimport Mathlib.RingTheory.MvPowerSeries.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\n\n"}
section -- clump:auto
@[expose] public section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj

namespace GlobalTheory.CompanionTheory.Ar.Split

theorem isotropic_residue_injective_splits : ∀ (A : Type) [CommRing A] [IsLocalRing A] (d : ℕ) (h a S : Matrix (Fin d) (Fin d) A), a * h - h.transpose * S * h - h.transpose * a.transpose = 0 → (∀ u : Fin d → IsLocalRing.ResidueField A, (h.map (IsLocalRing.residue A)).mulVec u = 0 → (a.transpose.map (IsLocalRing.residue A)).mulVec u = 0 → u = 0) → ∃ r₁ r₂ s₁ s₂ : Matrix (Fin d) (Fin d) A, r₁ * h + r₂ * a.transpose = 1 ∧ (a - h.transpose * S) * s₁ - h.transpose * s₂ = 1 ∧ h * r₁ + s₁ * (a - h.transpose * S) = 1 ∧ h * r₂ - s₁ * h.transpose = 0 ∧ a.transpose * r₁ + s₂ * (a - h.transpose * S) = 0 ∧ a.transpose * r₂ - s₂ * h.transpose = 1 :=
  @PositivityTheory.HtPt.Cg.split_local

end GlobalTheory.CompanionTheory.Ar.Split
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalMatrixCoprimeDecomposition =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FamilyGivesConjugateLieData =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FamilyGivesConjugateLieData", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaAdjointExact\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaIsomorphismTransport\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaEquivariantFrobenius\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BetaEquivariantFrobenius\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualLatticeDegreeNeg\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalDataBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalGroupActionRingHom\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FrobeniusLatticeDegreeMulP\npublic import Mathlib.Data.Matrix.Mul\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalMatrixCoprimeDecomposition\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalHermitianActionPairing\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalIsomorphismTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Conj.Fam

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj GlobalTheory.CompanionTheory.Ar.Crv.Inhab

variable {K : Type} [Field K] (C : ACurve K) {d : ℕ}

def colLat (i : C.I) (g : Matrix (Fin d) (Fin d) K) : AddSubgroup (Fin d → K) :=
  (trivLat C d i).map (Matrix.toLin' g).toAddMonoidHom

def stdH (d : ℕ) (i : C.I) : AddSubgroup ((Fin d → K) × (Fin d → K)) :=
  (trivLat C d i).prod (trivLat C d i)

def imLat (i : C.I) (T : ((Fin d → K) × (Fin d → K)) →ₗ[K] (Fin d → K) × (Fin d → K)) :
    AddSubgroup ((Fin d → K) × (Fin d → K)) :=
  (stdH C d i).map T.toAddMonoidHom

theorem mem_colLat {i : C.I} {g : Matrix (Fin d) (Fin d) K} {x : Fin d → K} :
    x ∈ colLat C i g ↔ ∃ w ∈ trivLat C d i, g.mulVec w = x := by
  simp [colLat, AddSubgroup.mem_map]

theorem mem_imLat {i : C.I} {T : ((Fin d → K) × (Fin d → K)) →ₗ[K] (Fin d → K) × (Fin d → K)}
    {y : (Fin d → K) × (Fin d → K)} : y ∈ imLat C i T ↔ ∃ w ∈ stdH C d i, T w = y := by
  simp [imLat, AddSubgroup.mem_map]

theorem mem_stdH {i : C.I} {y : (Fin d → K) × (Fin d → K)} :
    y ∈ stdH C d i ↔ y.1 ∈ trivLat C d i ∧ y.2 ∈ trivLat C d i := AddSubgroup.mem_prod

theorem mem_colLat_iff {i : C.I} {g g' : Matrix (Fin d) (Fin d) K} (h₁ : g * g' = 1) (h₂ : g' * g = 1)
    {x : Fin d → K} : x ∈ colLat C i g ↔ ∀ j, C.v i (g'.mulVec x j) ≤ 1 := by
  rw [mem_colLat]
  constructor
  · rintro ⟨w, hw, rfl⟩
    rw [Matrix.mulVec_mulVec, h₂, Matrix.one_mulVec]
    exact hw
  · intro h
    exact ⟨g'.mulVec x, h, by rw [Matrix.mulVec_mulVec, h₁, Matrix.one_mulVec]⟩

def frame {g g' : Matrix (Fin d) (Fin d) K} (h₁ : g * g' = 1) (h₂ : g' * g = 1) :
    Module.Basis (Fin d) K (Fin d → K) :=
  (Pi.basisFun K (Fin d)).map (Matrix.toLin'OfInv h₂ h₁)

theorem frame_repr {g g' : Matrix (Fin d) (Fin d) K} (h₁ : g * g' = 1) (h₂ : g' * g = 1)
    (x : Fin d → K) (q : Fin d) : (frame h₁ h₂).repr x q = g'.mulVec x q := by
  simp [frame, Matrix.toLin'OfInv]

theorem frame_apply {g g' : Matrix (Fin d) (Fin d) K} (h₁ : g * g' = 1) (h₂ : g' * g = 1)
    (q : Fin d) : frame h₁ h₂ q = fun r => g r q := by
  funext r
  simp [frame, Matrix.toLin'OfInv]

theorem isLatOf_frame (i : C.I) {g g' : Matrix (Fin d) (Fin d) K} (h₁ : g * g' = 1) (h₂ : g' * g = 1) :
    IsLatOf C i (frame h₁ h₂) (colLat C i g) := fun x => by
  rw [mem_colLat_iff C h₁ h₂]
  simp only [frame_repr]

theorem isBun_frames {V ι : Type} [AddCommGroup V] [Module K V] [Fintype ι]
    (b : C.I → Module.Basis ι K V) (b₀ : Module.Basis ι K V) (L : C.I → AddSubgroup V)
    (hb : ∀ i x, x ∈ L i ↔ ∀ q, C.v i ((b i).repr x q) ≤ 1)
    (hfin : {i | ¬ ∀ x, x ∈ L i ↔ ∀ q, C.v i (b₀.repr x q) ≤ 1}.Finite) : IsBun C L := by
  let e : ι ≃ Fin (Module.finrank K V) :=
    Fintype.equivFinOfCardEq (Module.finrank_eq_card_basis b₀).symm
  have re : ∀ (c : Module.Basis ι K V) (i : C.I) (L' : AddSubgroup V),
      (∀ x, x ∈ L' ↔ ∀ q, C.v i (c.repr x q) ≤ 1) → IsLatOf C i (c.reindex e) L' := by
    intro c i L' h x
    rw [h]
    simp only [Module.Basis.repr_reindex_apply]
    exact ⟨fun H q => H _, fun H q => by simpa using H (e q)⟩
  exact ⟨fun i => ⟨_, re _ i _ (hb i)⟩, b₀.reindex e,
    hfin.subset fun i hi h => hi (re _ _ _ h)⟩

def IntM (i : C.I) (M : Matrix (Fin d) (Fin d) K) : Prop := ∀ a b, C.v i (M a b) ≤ 1

theorem colLat_eq_triv {i : C.I} {g g' : Matrix (Fin d) (Fin d) K} (h₁ : g * g' = 1) (h₂ : g' * g = 1)
    (hg : IntM C i g) (hg' : IntM C i g') : colLat C i g = trivLat C d i := by
  ext x
  rw [mem_colLat]
  constructor
  · rintro ⟨w, hw, rfl⟩
    exact mulVec_mem_trivLat C hg hw
  · intro hx
    exact ⟨g'.mulVec x, mulVec_mem_trivLat C hg' hx, by rw [Matrix.mulVec_mulVec, h₁, Matrix.one_mulVec]⟩

theorem isBun_colLat (g g' : C.I → Matrix (Fin d) (Fin d) K) (h₁ : ∀ i, g i * g' i = 1)
    (h₂ : ∀ i, g' i * g i = 1) (hfin : {i | ¬ (IntM C i (g i) ∧ IntM C i (g' i))}.Finite) :
    IsBun C fun i => colLat C i (g i) := by
  refine isBun_frames C (fun i => frame (h₁ i) (h₂ i)) (Pi.basisFun K (Fin d)) _
    (fun i x => (isLatOf_frame C i (h₁ i) (h₂ i)) x) (hfin.subset fun i hi h => hi ?_)
  intro x
  rw [colLat_eq_triv C (h₁ i) (h₂ i) h.1 h.2]
  simp [mem_trivLat]

theorem dotDual_colLat (g g' : C.I → Matrix (Fin d) (Fin d) K) (h₁ : ∀ i, g i * g' i = 1)
    (h₂ : ∀ i, g' i * g i = 1) :
    dotDual C (fun i => colLat C i (g i)) = fun i => colLat C i (g' i).transpose := by
  funext i
  have t₁ : (g' i).transpose * (g i).transpose = 1 := by
    rw [← Matrix.transpose_mul, h₁, Matrix.transpose_one]
  have t₂ : (g i).transpose * (g' i).transpose = 1 := by
    rw [← Matrix.transpose_mul, h₂, Matrix.transpose_one]
  have := DegDual.isLatOf_dual C (fun i => colLat C i (g i)) (dotProductBilin K K) i
    (frame (h₁ i) (h₂ i)) (frame t₁ t₂) (fun y q => ?_) (isLatOf_frame C i (h₁ i) (h₂ i))
  · ext y
    rw [show dotDual C (fun i => colLat C i (g i)) i = dualLat C _ (dotProductBilin K K) i from rfl,
      this y, (isLatOf_frame C i t₁ t₂) y]
  · rw [frame_repr, frame_apply]
    simp [Matrix.mulVec, dotProduct, Matrix.transpose_apply]

theorem frobLat_colLat (p : ℕ) [Fact p.Prime] [CharP K p] (g g' : C.I → Matrix (Fin d) (Fin d) K)
    (h₁ : ∀ i, g i * g' i = 1) (h₂ : ∀ i, g' i * g i = 1) :
    frobLat C p (fun i => colLat C i (g i)) = fun i => colLat C i ((g i).map (· ^ p)) := by
  funext i
  have e : ∀ M : Matrix (Fin d) (Fin d) K, M.map (· ^ p) = (frobenius K p).mapMatrix M := fun M => rfl
  have t₁ : (g i).map (· ^ p) * (g' i).map (· ^ p) = 1 := by
    rw [e, e, ← map_mul, h₁, map_one]
  have t₂ : (g' i).map (· ^ p) * (g i).map (· ^ p) = 1 := by
    rw [e, e, ← map_mul, h₂, map_one]
  have := DegFrob.isLatOf_frob C p (fun i => colLat C i (g i)) i (frame (h₁ i) (h₂ i)) (frame t₁ t₂)
    (fun q => ?_) (isLatOf_frame C i (h₁ i) (h₂ i))
  · ext y
    rw [this y, (isLatOf_frame C i t₁ t₂) y]
  · rw [frame_apply, frame_apply]
    rfl

def stdBasis (K : Type) [Field K] (d : ℕ) :
    Module.Basis (Fin d ⊕ Fin d) K ((Fin d → K) × (Fin d → K)) :=
  (Pi.basisFun K (Fin d)).prod (Pi.basisFun K (Fin d))

theorem forall_stdBasis (i : C.I) (y : (Fin d → K) × (Fin d → K)) :
    (∀ q, C.v i ((stdBasis K d).repr y q) ≤ 1) ↔ y ∈ stdH C d i := by
  rw [mem_stdH, Sum.forall]
  simp [stdBasis, mem_trivLat]

theorem isBun_imLat (T : C.I → ((Fin d → K) × (Fin d → K)) →ₗ[K] (Fin d → K) × (Fin d → K))
    (hT : ∀ i, Function.Bijective (T i))
    (hfin : {i | imLat C i (T i) ≠ stdH C d i}.Finite) : IsBun C fun i => imLat C i (T i) := by
  refine isBun_frames C (fun i => (stdBasis K d).map (LinearEquiv.ofBijective (T i) (hT i)))
    (stdBasis K d) _ (fun i x => ?_) (hfin.subset fun i hi h => hi ?_)
  · rw [mem_imLat]
    simp only [Module.Basis.map_repr, LinearEquiv.trans_apply]
    rw [forall_stdBasis]
    constructor
    · rintro ⟨w, hw, rfl⟩
      have : (LinearEquiv.ofBijective (T i) (hT i)).symm (T i w) = w :=
        (LinearEquiv.ofBijective (T i) (hT i)).symm_apply_apply w
      rwa [this]
    · intro h
      exact ⟨_, h, (LinearEquiv.ofBijective (T i) (hT i)).apply_symm_apply x⟩
  · intro x
    rw [forall_stdBasis]
    exact iff_of_eq (congrArg (x ∈ ·) h)

theorem transH_mem_stdH {i : C.I} {φ ψ : Pt K 1 d} {lam : PS K 2 d}
    (hg : IntM C i (lin φ 1)) (hg' : IntM C i (lin ψ 1)) (hl : IntM C i (bil lam 1 1))
    {w : (Fin d → K) × (Fin d → K)} (hw : w ∈ stdH C d i) : transH φ ψ lam w ∈ stdH C d i := by
  rw [mem_stdH] at hw ⊢
  rw [transH_apply]
  exact ⟨mulVec_mem_trivLat C hg hw.1, mulVec_mem_trivLat C (fun a b => hg' b a)
    (add_mem hw.2 (mulVec_mem_trivLat C (fun a b => hl b a) hw.1))⟩

theorem imLat_transH_eq {i : C.I} {φ ψ : Pt K 1 d} {lam : PS K 2 d}
    (h₁ : lin φ 1 * lin ψ 1 = 1) (h₂ : lin ψ 1 * lin φ 1 = 1)
    (hg : IntM C i (lin φ 1)) (hg' : IntM C i (lin ψ 1)) (hl : IntM C i (bil lam 1 1)) :
    imLat C i (transH φ ψ lam) = stdH C d i := by
  ext y
  rw [mem_imLat]
  constructor
  · rintro ⟨w, hw, rfl⟩
    exact transH_mem_stdH C hg hg' hl hw
  · intro hy
    have hy' := (mem_stdH C).1 hy
    have a₁ := mulVec_mem_trivLat C hg' hy'.1
    have a₂ := mulVec_mem_trivLat C (fun a b => hl b a) a₁
    have a₃ := mulVec_mem_trivLat C (fun a b => hg b a) hy'.2
    refine ⟨((lin ψ 1).mulVec y.1, (lin φ 1).transpose.mulVec y.2 -
      (bil lam 1 1).transpose.mulVec ((lin ψ 1).mulVec y.1)),
      (mem_stdH C).2 ⟨a₁, sub_mem a₃ a₂⟩, ?_⟩
    have t : (lin ψ 1).transpose * (lin φ 1).transpose = 1 := by
      rw [← Matrix.transpose_mul, h₁, Matrix.transpose_one]
    rw [transH_apply]
    refine Prod.ext ?_ ?_
    · simp only [Matrix.mulVec_mulVec, h₁, Matrix.one_mulVec]
    · simp only [sub_add_cancel, Matrix.mulVec_mulVec, t, Matrix.one_mulVec]

theorem hodge_family (φ ψ : C.I → Pt K 1 d) (lam : C.I → PS K 2 d)
    (h₁ : ∀ i, lin (φ i) 1 * lin (ψ i) 1 = 1) (h₂ : ∀ i, lin (ψ i) 1 * lin (φ i) 1 = 1) :
    ShortExact C (dotDual C fun i => colLat C i (lin (φ i) 1))
      (fun i => imLat C i (transH (φ i) (ψ i) (lam i))) (fun i => colLat C i (lin (φ i) 1))
      (LinearMap.inr K _ _) (LinearMap.fst K _ _) := by
  rw [dotDual_colLat C _ _ h₁ h₂]
  refine ⟨LinearMap.inr_injective, Function.Exact.inr_fst, LinearMap.fst_surjective,
    fun i x => ?_, fun i z => ?_⟩
  · rw [mem_colLat]
    simp only [LinearMap.inr_apply]
    rw [mem_imLat]
    constructor
    · rintro ⟨w, hw, rfl⟩
      refine ⟨(0, w), (mem_stdH C).2 ⟨zero_mem _, hw⟩, ?_⟩
      rw [transH_apply]
      simp
    · rintro ⟨w, hw, e⟩
      rw [transH_apply, Prod.mk.injEq] at e
      have hw' := (mem_stdH C).1 hw
      have e₁ : w.1 = 0 := by
        have := congrArg (lin (ψ i) 1).mulVec e.1
        simpa [Matrix.mulVec_mulVec, h₂ i] using this
      refine ⟨w.2, hw'.2, ?_⟩
      rw [← e.2, e₁]
      simp
  · rw [mem_colLat]
    simp only [LinearMap.fst_apply]
    constructor
    · rintro ⟨w, hw, rfl⟩
      refine ⟨transH (φ i) (ψ i) (lam i) (w, 0), (mem_imLat C).2
        ⟨(w, 0), (mem_stdH C).2 ⟨hw, zero_mem _⟩, rfl⟩, ?_⟩
      rw [transH_apply]
    · rintro ⟨y, hy, rfl⟩
      obtain ⟨w, hw, rfl⟩ := (mem_imLat C).1 hy
      exact ⟨w.1, ((mem_stdH C).1 hw).1, by rw [transH_apply]⟩

structure LocSplit (i : C.I) (a : (Fin d → K) →ₗ[K] (Fin d → K) × (Fin d → K))
    (b : ((Fin d → K) × (Fin d → K)) →ₗ[K] Fin d → K) : Prop where

  a_int : ∀ u ∈ trivLat C d i, a u ∈ stdH C d i

  b_int : ∀ y ∈ stdH C d i, b y ∈ trivLat C d i

  zero : ∀ u, b (a u) = 0

  split : ∃ (r : ((Fin d → K) × (Fin d → K)) →ₗ[K] Fin d → K)
    (s : (Fin d → K) →ₗ[K] (Fin d → K) × (Fin d → K)),
    (∀ y ∈ stdH C d i, r y ∈ trivLat C d i) ∧ (∀ z ∈ trivLat C d i, s z ∈ stdH C d i) ∧
      (∀ u, r (a u) = u) ∧ (∀ z, b (s z) = z) ∧ ∀ y, a (r y) + s (b y) = y

theorem conj_family (p : ℕ) [Fact p.Prime] [CharP K p] (hI : Nonempty C.I)
    (g g' : C.I → Matrix (Fin d) (Fin d) K) (h₁ : ∀ i, g i * g' i = 1) (h₂ : ∀ i, g' i * g i = 1)
    (T : C.I → ((Fin d → K) × (Fin d → K)) →ₗ[K] (Fin d → K) × (Fin d → K))
    (hT : ∀ i, Function.Bijective (T i))
    (α : (Fin d → K) →ₗ[K] (Fin d → K) × (Fin d → K))
    (β : ((Fin d → K) × (Fin d → K)) →ₗ[K] Fin d → K)
    (a : C.I → (Fin d → K) →ₗ[K] (Fin d → K) × (Fin d → K))
    (b : C.I → ((Fin d → K) × (Fin d → K)) →ₗ[K] Fin d → K)
    (hα : ∀ i u, α (((g i).map (· ^ p)).mulVec u) = T i (a i u))
    (hβ : ∀ i y, β (T i y) = ((g' i).transpose.map (· ^ p)).mulVec (b i y))
    (hloc : ∀ i, LocSplit C i (a i) (b i)) :
    ShortExact C (frobLat C p fun i => colLat C i (g i)) (fun i => imLat C i (T i))
      (frobLat C p (dotDual C fun i => colLat C i (g i))) α β := by
  have fm : ∀ M : Matrix (Fin d) (Fin d) K, M.map (· ^ p) = (frobenius K p).mapMatrix M :=
    fun _ => rfl
  have t₁ : ∀ i, (g' i).transpose * (g i).transpose = 1 := fun i => by
    rw [← Matrix.transpose_mul, h₁, Matrix.transpose_one]
  have t₂ : ∀ i, (g i).transpose * (g' i).transpose = 1 := fun i => by
    rw [← Matrix.transpose_mul, h₂, Matrix.transpose_one]
  have hF₂ : frobLat C p (dotDual C fun i => colLat C i (g i)) =
      fun i => colLat C i ((g' i).transpose.map (· ^ p)) := by
    rw [dotDual_colLat C g g' h₁ h₂]
    exact frobLat_colLat C p (fun i => (g' i).transpose) (fun i => (g i).transpose) t₁ t₂
  rw [hF₂, frobLat_colLat C p g g' h₁ h₂]
  have G₁ : ∀ i (u : Fin d → K), ((g i).map (· ^ p)).mulVec (((g' i).map (· ^ p)).mulVec u) = u :=
    fun i u => by rw [Matrix.mulVec_mulVec, fm, fm, ← map_mul, h₁, map_one, Matrix.one_mulVec]
  have G₂ : ∀ i (u : Fin d → K), ((g' i).map (· ^ p)).mulVec (((g i).map (· ^ p)).mulVec u) = u :=
    fun i u => by rw [Matrix.mulVec_mulVec, fm, fm, ← map_mul, h₂, map_one, Matrix.one_mulVec]
  have D₁ : ∀ i (u : Fin d → K), ((g' i).transpose.map (· ^ p)).mulVec
      (((g i).transpose.map (· ^ p)).mulVec u) = u :=
    fun i u => by rw [Matrix.mulVec_mulVec, fm, fm, ← map_mul, t₁, map_one, Matrix.one_mulVec]
  have D₂ : ∀ i (u : Fin d → K), ((g i).transpose.map (· ^ p)).mulVec
      (((g' i).transpose.map (· ^ p)).mulVec u) = u :=
    fun i u => by rw [Matrix.mulVec_mulVec, fm, fm, ← map_mul, t₂, map_one, Matrix.one_mulVec]
  obtain ⟨i₀⟩ := hI
  obtain ⟨r₀, s₀, -, -, ra₀, bs₀, as₀⟩ := (hloc i₀).split
  refine ⟨?_, ?_, ?_, fun i x => ?_, fun i z => ?_⟩
  · rw [injective_iff_map_eq_zero]
    intro x hx
    have e : T i₀ (a i₀ (((g' i₀).map (· ^ p)).mulVec x)) = 0 := by
      rw [← hα, G₁, hx]
    have e' : a i₀ (((g' i₀).map (· ^ p)).mulVec x) = 0 :=
      (hT i₀).1 (by rw [e, map_zero])
    have e'' := ra₀ (((g' i₀).map (· ^ p)).mulVec x)
    rw [e', map_zero] at e''
    rw [← G₁ i₀ x, ← e'', Matrix.mulVec_zero]
  · intro y
    obtain ⟨w, rfl⟩ := (hT i₀).2 y
    constructor
    · intro hy
      rw [hβ] at hy
      have e : b i₀ w = 0 := by
        rw [← D₂ i₀ (b i₀ w), hy, Matrix.mulVec_zero]
      have e' := as₀ w
      rw [e, map_zero, add_zero] at e'
      exact ⟨((g i₀).map (· ^ p)).mulVec (r₀ w), by rw [hα, e']⟩
    · rintro ⟨x, hx⟩
      have e : T i₀ w = T i₀ (a i₀ (((g' i₀).map (· ^ p)).mulVec x)) := by
        rw [← hα, G₁, hx]
      rw [e, hβ, (hloc i₀).zero, Matrix.mulVec_zero]
  · intro z
    refine ⟨T i₀ (s₀ (((g i₀).transpose.map (· ^ p)).mulVec z)), ?_⟩
    rw [hβ, bs₀, D₁]
  · obtain ⟨r, s, hr, hs, ra, bs, as⟩ := (hloc i).split
    rw [mem_colLat]
    constructor
    · rintro ⟨w, hw, rfl⟩
      exact (mem_imLat C).2 ⟨a i w, (hloc i).a_int w hw, (hα i w).symm⟩
    · intro hx
      obtain ⟨w, hw, e⟩ := (mem_imLat C).1 hx
      have e' : w = a i (((g' i).map (· ^ p)).mulVec x) := (hT i).1 (by rw [e, ← hα, G₁])
      refine ⟨r w, hr w hw, ?_⟩
      rw [e', ra, G₁]
  · obtain ⟨r, s, hr, hs, ra, bs, as⟩ := (hloc i).split
    rw [mem_colLat]
    constructor
    · rintro ⟨w, hw, rfl⟩
      exact ⟨T i (s w), (mem_imLat C).2 ⟨s w, hs w hw, rfl⟩, by rw [hβ, bs]⟩
    · rintro ⟨y, hy, rfl⟩
      obtain ⟨w, hw, rfl⟩ := (mem_imLat C).1 hy
      exact ⟨b i w, (hloc i).b_int w hw, (hβ i w).symm⟩

theorem intM_map (i : C.I) (M : Matrix (Fin d) (Fin d) (C.v i).valuationSubring) :
    IntM C i (M.map (C.v i).valuationSubring.subtype) := fun a b =>
  (Valuation.mem_valuationSubring_iff _ _).1 (M a b).2

omit [Field K] in
theorem matrix_eq_zero_of_mulVec {R : Type} [CommRing R] {M : Matrix (Fin d) (Fin d) R}
    (h : ∀ u, M.mulVec u = 0) : M = 0 := by
  ext a b
  have := congrFun (h (Pi.single b 1)) a
  simpa using this

variable {O : Type} [CommRing O] [StarRing O]

theorem locSplit_of_mats (B : FB K d O) (p : ℕ) (i : C.I) (r₁ r₂ s₁ s₂ : Matrix (Fin d) (Fin d) K)
    (ih : IntM C i (hw B p)) (ia : IntM C i (am B p)) (iS : IntM C i (bil B.sy 1 1))
    (ir₁ : IntM C i r₁) (ir₂ : IntM C i r₂) (is₁ : IntM C i s₁) (is₂ : IntM C i s₂)
    (hz : ∀ u, beta B p (alpha B p u) = 0)
    (e₁ : r₁ * hw B p + r₂ * (am B p).transpose = 1)
    (e₂ : (am B p - (hw B p).transpose * bil B.sy 1 1) * s₁ - (hw B p).transpose * s₂ = 1)
    (e₃ : hw B p * r₁ + s₁ * (am B p - (hw B p).transpose * bil B.sy 1 1) = 1)
    (e₄ : hw B p * r₂ - s₁ * (hw B p).transpose = 0)
    (e₅ : (am B p).transpose * r₁ + s₂ * (am B p - (hw B p).transpose * bil B.sy 1 1) = 0)
    (e₆ : (am B p).transpose * r₂ - s₂ * (hw B p).transpose = 1) :
    LocSplit C i (alpha B p) (beta B p) := by
  refine ⟨fun u hu => ?_, fun y hy => ?_, hz, ?_⟩
  · rw [alpha_apply]
    exact (mem_stdH C).2 ⟨mulVec_mem_trivLat C ih hu, mulVec_mem_trivLat C (fun a b => ia b a) hu⟩
  · have hy' := (mem_stdH C).1 hy
    rw [beta_apply, Matrix.sub_mulVec, ← Matrix.mulVec_mulVec]
    exact sub_mem (mulVec_mem_trivLat C (fun a b => ih b a) hy'.2)
      (sub_mem (mulVec_mem_trivLat C ia hy'.1) (mulVec_mem_trivLat C (fun a b => ih b a)
        (mulVec_mem_trivLat C iS hy'.1)))
  · let r : ((Fin d → K) × (Fin d → K)) →ₗ[K] Fin d → K := Matrix.toLin' r₁ ∘ₗ LinearMap.fst K _ _ +
      Matrix.toLin' r₂ ∘ₗ LinearMap.snd K _ _
    let s : (Fin d → K) →ₗ[K] (Fin d → K) × (Fin d → K) :=
      LinearMap.prod (-Matrix.toLin' s₁) (-Matrix.toLin' s₂)
    have hr : ∀ y, r y = r₁.mulVec y.1 + r₂.mulVec y.2 := fun y => by simp [r]
    have hs : ∀ z, s z = (-(s₁.mulVec z), -(s₂.mulVec z)) := fun z => by simp [s]
    refine ⟨r, s, fun y hy => ?_, fun z hz' => ?_, fun u => ?_, fun z => ?_, fun y => ?_⟩
    · have hy' := (mem_stdH C).1 hy
      rw [hr]
      exact add_mem (mulVec_mem_trivLat C ir₁ hy'.1) (mulVec_mem_trivLat C ir₂ hy'.2)
    · rw [hs]
      exact (mem_stdH C).2 ⟨neg_mem (mulVec_mem_trivLat C is₁ hz'),
        neg_mem (mulVec_mem_trivLat C is₂ hz')⟩
    · rw [hr, alpha_apply]
      simp only [Matrix.mulVec_mulVec, ← Matrix.add_mulVec, e₁, Matrix.one_mulVec]
    · have E : ((am B p - (hw B p).transpose * bil B.sy 1 1) * s₁).mulVec z -
          ((hw B p).transpose * s₂).mulVec z = z := by
        rw [← Matrix.sub_mulVec, e₂, Matrix.one_mulVec]
      rw [hs, beta_apply]
      simp only [Matrix.mulVec_neg, Matrix.mulVec_mulVec]
      calc _ = ((am B p - (hw B p).transpose * bil B.sy 1 1) * s₁).mulVec z -
          ((hw B p).transpose * s₂).mulVec z := by abel
        _ = z := E
    · have E₃ : (hw B p * r₁).mulVec y.1 +
          (s₁ * (am B p - (hw B p).transpose * bil B.sy 1 1)).mulVec y.1 = y.1 := by
        rw [← Matrix.add_mulVec, e₃, Matrix.one_mulVec]
      have E₄ : (hw B p * r₂).mulVec y.2 - (s₁ * (hw B p).transpose).mulVec y.2 = 0 := by
        rw [← Matrix.sub_mulVec, e₄, Matrix.zero_mulVec]
      have E₅ : ((am B p).transpose * r₁).mulVec y.1 +
          (s₂ * (am B p - (hw B p).transpose * bil B.sy 1 1)).mulVec y.1 = 0 := by
        rw [← Matrix.add_mulVec, e₅, Matrix.zero_mulVec]
      have E₆ : ((am B p).transpose * r₂).mulVec y.2 - (s₂ * (hw B p).transpose).mulVec y.2 = y.2 := by
        rw [← Matrix.sub_mulVec, e₆, Matrix.one_mulVec]
      rw [alpha_apply, hs, hr, beta_apply]
      refine Prod.ext ?_ ?_
      · simp only [Prod.fst_add, Matrix.mulVec_add, Matrix.mulVec_sub,
          Matrix.mulVec_mulVec]
        calc _ = ((hw B p * r₁).mulVec y.1 +
              (s₁ * (am B p - (hw B p).transpose * bil B.sy 1 1)).mulVec y.1) +
            ((hw B p * r₂).mulVec y.2 - (s₁ * (hw B p).transpose).mulVec y.2) := by abel
          _ = y.1 := by rw [E₃, E₄, add_zero]
      · simp only [Prod.snd_add, Matrix.mulVec_add, Matrix.mulVec_sub,
          Matrix.mulVec_mulVec]
        calc _ = (((am B p).transpose * r₁).mulVec y.1 +
              (s₂ * (am B p - (hw B p).transpose * bil B.sy 1 1)).mulVec y.1) +
            (((am B p).transpose * r₂).mulVec y.2 - (s₂ * (hw B p).transpose).mulVec y.2) := by abel
          _ = y.2 := by rw [E₅, E₆, zero_add]

theorem locSplit {p : ℕ} [Fact p.Prime] [CharP K p] (F : Family C p d O) (i : C.I) :
    LocSplit C i (alpha (F.BK i) p) (beta (F.BK i) p) := by
  haveI : CharP (C.v i).valuationSubring p :=
    (RingHom.charP_iff (C.v i).valuationSubring.subtype Subtype.val_injective p).2 inferInstance
  have mK := _root_.GlobalTheory.CompanionTheory.Ar.Conj.map_mats_baseChange _ _ (C.v i).valuationSubring.subtype d O (F.Bi i) (F.BK i) (F.mapK i)
  have mk := _root_.GlobalTheory.CompanionTheory.Ar.Conj.map_mats_baseChange _ _ (IsLocalRing.residue _) d O (F.Bi i) (F.Bk i) (F.mapk i)
  have iz : am (F.Bi i) p * hw (F.Bi i) p -
      (hw (F.Bi i) p).transpose * bil (F.Bi i).sy 1 1 * hw (F.Bi i) p -
      (hw (F.Bi i) p).transpose * (am (F.Bi i) p).transpose = 0 := by
    have h0 := matrix_eq_zero_of_mulVec (M := (hw (F.Bi i) p).transpose * (am (F.Bi i) p).transpose -
        am (F.Bi i) p * hw (F.Bi i) p +
        (hw (F.Bi i) p).transpose * bil (F.Bi i).sy 1 1 * hw (F.Bi i) p) fun u => by
      rw [← beta_alpha_apply]
      exact LinearMap.congr_fun (_root_.GlobalTheory.CompanionTheory.Ar.Conj.Isotropy.beta_comp_alpha _ p d O (F.Bi i)).2 u
    rw [← neg_eq_zero, ← h0]
    abel
  have inj : ∀ u : Fin d → IsLocalRing.ResidueField (C.v i).valuationSubring,
      ((hw (F.Bi i) p).map (IsLocalRing.residue _)).mulVec u = 0 →
      ((am (F.Bi i) p).transpose.map (IsLocalRing.residue _)).mulVec u = 0 → u = 0 := by
    intro u h1 h2
    apply F.inj i
    rw [map_zero, alpha_apply, (mk.2.2 p).1, (mk.2.2 p).2, ← Matrix.transpose_map, h1, h2]
    rfl
  obtain ⟨r₁, r₂, s₁, s₂, e₁, e₂, e₃, e₄, e₅, e₆⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Split.isotropic_residue_injective_splits _ d _ _ _ iz inj
  let Φ := (C.v i).valuationSubring.subtype.mapMatrix (m := Fin d)
  have hT : ∀ M, Φ M.transpose = (Φ M).transpose := fun M => rfl
  have hh : hw (F.BK i) p = Φ (hw (F.Bi i) p) := (mK.2.2 p).1
  have ha : am (F.BK i) p = Φ (am (F.Bi i) p) := (mK.2.2 p).2
  have hS : bil (F.BK i).sy 1 1 = Φ (bil (F.Bi i).sy 1 1) := mK.2.1
  have c₁ := congrArg Φ e₁
  have c₂ := congrArg Φ e₂
  have c₃ := congrArg Φ e₃
  have c₄ := congrArg Φ e₄
  have c₅ := congrArg Φ e₅
  have c₆ := congrArg Φ e₆
  simp only [map_add (f := _), map_sub, map_mul, map_one, map_zero, hT] at c₁ c₂ c₃ c₄ c₅ c₆
  refine locSplit_of_mats C (F.BK i) p i (Φ r₁) (Φ r₂) (Φ s₁) (Φ s₂) ?_ ?_ ?_
    (intM_map C i _) (intM_map C i _) (intM_map C i _) (intM_map C i _)
    (fun u => LinearMap.congr_fun (_root_.GlobalTheory.CompanionTheory.Ar.Conj.Isotropy.beta_comp_alpha K p d O (F.BK i)).2 u) ?_ ?_ ?_ ?_ ?_ ?_
  · rw [hh]; exact intM_map C i _
  · rw [ha]; exact intM_map C i _
  · rw [hS]; exact intM_map C i _
  all_goals simp only [hh, ha, hS]
  exacts [c₁, c₂, c₃, c₄, c₅, c₆]

theorem rhoH_mem_stdH (i : C.I) (B₀ : FB (C.v i).valuationSubring d O) (B : FB K d O)
    (h : IsMapOf (C.v i).valuationSubring.subtype B₀ B) (a : O) {w : (Fin d → K) × (Fin d → K)}
    (hw : w ∈ stdH C d i) : rhoH B a w ∈ stdH C d i := by
  obtain ⟨hm, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.map_mats_baseChange _ _ (C.v i).valuationSubring.subtype d O B₀ B h
  have hr : ∀ b, IntM C i (rho B b) := fun b => by rw [(hm b).1]; exact intM_map C i _
  have ha : IntM C i (bil (B.ad a) 1 1) := by rw [(hm a).2]; exact intM_map C i _
  rw [mem_stdH] at hw ⊢
  rw [rhoH_apply]
  exact ⟨mulVec_mem_trivLat C (hr a) hw.1, sub_mem (mulVec_mem_trivLat C (fun x y => hr _ y x) hw.2)
    (mulVec_mem_trivLat C (fun x y => ha y x) hw.1)⟩

theorem family_conj : ∀ (K : Type) [Field K] (C : ACurve K) (p : ℕ) [Fact p.Prime] [CharP K p]
    (d : ℕ) (O : Type) [CommRing O] [StarRing O] (F : Family C p d O), Nonempty C.I →
    ∃ D : ConjData C p O d, (∀ a, D.ρ a = rho F.B a) ∧
      ∀ i u, u ∈ D.lie i ↔ ∀ j, C.v i ((lin (F.ψ i) 1).mulVec u j) ≤ 1 := by
  intro K _ C p _ _ d O _ _ F hI
  obtain ⟨ρ, hρ⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.rho_hom K d O F.B
  obtain ⟨⟨ρH, hρH⟩, -, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.rhoH_hom_adjoint K d O F.B
  have iso := fun i => _root_.GlobalTheory.CompanionTheory.Ar.Conj.Iso.rho_pairing K d O F.B (F.BK i) (F.φ i) (F.ψ i) (F.lam i) (F.iso i)
  have h₁ := fun i => (iso i).1
  have h₂ := fun i => (iso i).2.1
  have hT := fun i => (iso i).2.2.1
  have hc := fun i => (iso i).2.2.2.2.1
  have good : ∀ i, (∀ a b, C.v i (lin (F.φ i) 1 a b) ≤ 1 ∧ C.v i (lin (F.ψ i) 1 a b) ≤ 1 ∧
      C.v i (bil (F.lam i) 1 1 a b) ≤ 1) → IntM C i (lin (F.φ i) 1) ∧ IntM C i (lin (F.ψ i) 1) ∧
        IntM C i (bil (F.lam i) 1 1) := fun i h =>
    ⟨fun a b => (h a b).1, fun a b => (h a b).2.1, fun a b => (h a b).2.2⟩
  have hiso := fun i => _root_.GlobalTheory.CompanionTheory.Ar.Conj.alpha_beta_of_isIso K p d O F.B (F.BK i) (F.φ i) (F.ψ i) (F.lam i) (F.iso i)
  refine ⟨{ lie := fun i => colLat C i (lin (F.φ i) 1)
            H := fun i => imLat C i (transH (F.φ i) (F.ψ i) (F.lam i))
            lie_bun := isBun_colLat C _ _ h₁ h₂ (F.ae.subset fun i hi h => hi ?_)
            H_bun := isBun_imLat C _ hT (F.ae.subset fun i hi h => hi ?_)
            ρ := ρ
            ρH := ρH
            ρH_hom := fun a i x hx => ?_
            ρH_fst := fun a y => ?_
            ρH_inr := fun a φ => ?_
            hodge := hodge_family C _ _ _ h₁ h₂
            α := alpha F.B p
            β := beta F.B p
            conj := conj_family C p hI _ _ h₁ h₂ _ hT _ _ _ _ (fun i u => (hiso i).1 u)
              (fun i y => (hiso i).2 y) (fun i => locSplit C F i)
            α_act := fun a u => ?_
            β_act := fun a y => ?_ }, hρ, fun i u => mem_colLat_iff C (h₁ i) (h₂ i)⟩
  · exact ⟨(good i h).1, (good i h).2.1⟩
  · obtain ⟨g₁, g₂, g₃⟩ := good i h
    exact imLat_transH_eq C (h₁ i) (h₂ i) g₁ g₂ g₃
  · obtain ⟨w, hw, rfl⟩ := (mem_imLat C).1 hx
    rw [hρH]
    refine (mem_imLat C).2 ⟨rhoH (F.BK i) a w, rhoH_mem_stdH C i (F.Bi i) (F.BK i) (F.mapK i) a hw, ?_⟩
    exact (LinearMap.congr_fun (hc i a) w).symm
  · rw [hρH, rhoH_fst, hρ]
  · rw [hρH, rhoH_inr, hρ]
  · rw [hρ, hρH]
    exact _root_.GlobalTheory.CompanionTheory.Ar.Conj.AlphaAct.alpha_comm_act K p d O F.B a u
  · rw [hρ, hρH]
    exact _root_.GlobalTheory.CompanionTheory.Ar.Conj.beta_rhoH_eq K p d O F.B a y

end GlobalTheory.CompanionTheory.Ar.Conj.Fam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FamilyGivesConjugateLieData =====
