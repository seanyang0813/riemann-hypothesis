module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft
public import Development.WeilBound.CoreStatements.HodgeTatePoints.GermCompOneAssocOfConstantCoeffZero
public import Development.WeilBound.CoreStatements.HodgeTatePoints.FirstPowerZeroAt
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalBilinearTermProduct
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalIsomorphismTransport
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MultiplicationByPFactorsFrobenius
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowOneSeriesPFormula
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowerSeriesPowPFrobenius

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalLinearTermComposition, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsoPowOneLawFormula, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaIsomorphismTransport

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalLinearTermComposition =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalLinearTermComposition", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.GermCompOneAssocOfConstantCoeffZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj

namespace GlobalTheory.CompanionTheory.Ar.Conj

theorem lin_comp_chain : ∀ (R : Type) [CommRing R] (d : ℕ) (φ ψ : Pt R 1 d), (∀ i, constantCoeff (φ i) = 0) → (∀ i, constantCoeff (ψ i) = 0) → lin (comp1 φ ψ) 1 = lin φ 1 * lin ψ 1 ∧ lin (pt R (n := 1) d 0) 1 = 1 ∧ ∀ p : ℕ, 1 ≤ p → lin (comp1 φ (ptPow R d p 0)) p = lin φ 1 ∧ lin (comp1 φ (comp1 ψ (ptPow R d p 0))) p = lin φ 1 * lin ψ 1 :=
  @PositivityTheory.HtPt.Ca.lin_comp

end GlobalTheory.CompanionTheory.Ar.Conj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalLinearTermComposition =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsoPowOneLawFormula =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsoPowOneLawFormula", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.FirstPowerZeroAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj

namespace GlobalTheory.CompanionTheory.Ar.Conj

theorem iso_pow_one_law : ∀ (R : Type) [CommRing R] (d : ℕ) (O : Type) [CommRing O] [StarRing O] (B : FB R d O) (B₂ : FB R d O) (φ ψ : Pt R 1 d) (lam : PS R 2 d) (n : ℕ), IsIso B B₂ φ ψ lam → pow1 B₂ n * ev (n := 2) ![comp1 (B₂.A.act (n : O)) (pt R d 0), pt R d 1] lam = lam ^ n * ev (n := 2) ![comp1 φ (pt R d 0), comp1 φ (pt R d 1)] (pow1 B n) :=
  @PositivityTheory.HtPt.Cc.iso_first_power

end GlobalTheory.CompanionTheory.Ar.Conj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsoPowOneLawFormula =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaIsomorphismTransport =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaIsomorphismTransport", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalBilinearTermProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalIsomorphismTransport\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FormalLinearTermComposition\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.IsoPowOneLawFormula\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MultiplicationByPFactorsFrobenius\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowOneSeriesPFormula\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowerSeriesPowPFrobenius\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ConstantCoeffEv\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj

namespace GlobalTheory.CompanionTheory.Ar.Conj.IsoAlpha

variable {R : Type} [CommRing R] {d : ℕ}

theorem cc_ev {m n : ℕ} (b : Fin m → Pt R n d) (hb : ∀ j i, constantCoeff (b j i) = 0) (f : PS R m d)
    (hf : constantCoeff f = 0) : constantCoeff (ev b f) = 0 :=
  constantCoeff_subst_eq_zero (a := fun p : Fin m × Fin d => b p.1 p.2) (ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ.hasSubst_ev b hb) (fun p => hb p.1 p.2) hf

theorem cc_comp1 {n : ℕ} {φ : Pt R 1 d} {a : Pt R n d} (hφ : ∀ i, constantCoeff (φ i) = 0)
    (ha : ∀ i, constantCoeff (a i) = 0) (i : Fin d) : constantCoeff (comp1 φ a i) = 0 :=
  cc_ev _ (GlobalTheory.GaugeAdjoint.const_one ha) _ (hφ i)

theorem ev_ev {l m n : ℕ} (b : Fin m → Pt R n d) (hb : ∀ j i, constantCoeff (b j i) = 0)
    (a : Fin l → Pt R m d) (ha : ∀ j i, constantCoeff (a j i) = 0) (f : PS R l d) :
    ev b (ev a f) = ev (fun j i => ev b (a j i)) f :=
  subst_comp_subst_apply (ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ.hasSubst_ev a ha) (ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ.hasSubst_ev b hb) f

theorem ev_pt {m n : ℕ} (b : Fin m → Pt R n d) (hb : ∀ j i, constantCoeff (b j i) = 0) (j : Fin m) (l : Fin d) :
    ev b (pt R d j l) = b j l :=
  subst_X (ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ.hasSubst_ev b hb) (j, l)

theorem ev_comp1 {m n : ℕ} (b : Fin m → Pt R n d) (hb : ∀ j i, constantCoeff (b j i) = 0) (C : Pt R 1 d)
    (a : Pt R m d) (ha : ∀ i, constantCoeff (a i) = 0) (i : Fin d) :
    ev b (comp1 C a i) = comp1 C (fun l => ev b (a l)) i := by
  change ev b (ev ![a] (C i)) = ev ![fun l => ev b (a l)] (C i)
  rw [ev_ev b hb _ (GlobalTheory.GaugeAdjoint.const_one ha)]
  congr 1
  funext j l
  fin_cases j
  rfl

theorem composition_assoc_no_constant {n : ℕ} (C A : Pt R 1 d) (a : Pt R n d) (hA : ∀ i, constantCoeff (A i) = 0)
    (ha : ∀ i, constantCoeff (a i) = 0) : comp1 (comp1 C A) a = comp1 C (comp1 A a) := by
  funext i
  change ev ![a] (ev ![A] (C i)) = ev ![comp1 A a] (C i)
  rw [ev_ev _ (GlobalTheory.GaugeAdjoint.const_one ha) _ (GlobalTheory.GaugeAdjoint.const_one hA)]
  congr 1
  funext j l
  fin_cases j
  rfl

theorem composition_identity_point_right (a : Pt R 1 d) : comp1 a (pt R d 0) = a :=
  funext fun i => ev_pt_self _ (fun j => by fin_cases j; rfl) _

theorem cc_ptPow {n : ℕ} {p : ℕ} (hp : p ≠ 0) (j : Fin n) (i : Fin d) :
    constantCoeff (ptPow R d p j i) = 0 := by
  simp [ptPow, hp]

theorem comp1_point_power_expand {n : ℕ} (p : ℕ) (a : Pt R n d) (ha : ∀ i, constantCoeff (a i) = 0) :
    comp1 (ptPow R d p (0 : Fin 1)) a = fun i => a i ^ p := by
  funext i
  change ev ![a] ((X ((0 : Fin 1), i) : PS R 1 d) ^ p) = _
  unfold ev
  rw [← coe_substAlgHom (ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ.hasSubst_ev _ (GlobalTheory.GaugeAdjoint.const_one ha)), map_pow, coe_substAlgHom, subst_X (ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ.hasSubst_ev _ (GlobalTheory.GaugeAdjoint.const_one ha))]
  rfl

def frobPt (p : ℕ) [Fact p.Prime] [CharP R p] (φ : Pt R 1 d) : Pt R 1 d :=
  fun i => MvPowerSeries.map (frobenius R p) (φ i)

section Frob

variable (p : ℕ) [Fact p.Prime] [CharP R p]

theorem cc_frobPt {φ : Pt R 1 d} (hφ : ∀ i, constantCoeff (φ i) = 0) (i : Fin d) :
    constantCoeff (frobPt p φ i) = 0 := by
  have h := congrArg (frobenius R p) (hφ i)
  rw [map_zero] at h
  rw [← h, frobPt, ← coeff_zero_eq_constantCoeff_apply, ← coeff_zero_eq_constantCoeff_apply, coeff_map]

theorem lin_frobPt (φ : Pt R 1 d) : lin (frobPt p φ) 1 = (lin φ 1).map (· ^ p) := by
  ext i j
  simp only [lin, frobPt, coeff_map, Matrix.map_apply, frobenius_def]

theorem frobenius_point_commutes_composition {φ : Pt R 1 d} (hφ : ∀ i, constantCoeff (φ i) = 0) :
    comp1 (ptPow R d p (0 : Fin 1)) φ = comp1 (frobPt p φ) (ptPow R d p (0 : Fin 1)) := by
  rw [comp1_point_power_expand p φ hφ]
  funext i
  rw [_root_.GlobalTheory.CompanionTheory.Ar.Conj.pow_eq_ev_frobenius R p d 1 (φ i)]
  change _ = ev ![ptPow R d p (0 : Fin 1)] (frobPt p φ i)
  congr 1
  funext j
  fin_cases j
  rfl

end Frob

def E (A B : Pt R 1 d) (f : PS R 2 d) : PS R 2 d :=
  ev (n := 2) ![comp1 A (pt R d 0), comp1 B (pt R d 1)] f

theorem E_E {A B C D : Pt R 1 d} (hA : ∀ i, constantCoeff (A i) = 0) (hB : ∀ i, constantCoeff (B i) = 0)
    (hC : ∀ i, constantCoeff (C i) = 0) (hD : ∀ i, constantCoeff (D i) = 0) (f : PS R 2 d) :
    E A B (E C D f) = E (comp1 C A) (comp1 D B) f := by
  have h0 : ∀ i, constantCoeff ((pt R d 0 : Pt R 2 d) i) = 0 := GlobalTheory.GaugeAdjoint.const_pt 0
  have h1 : ∀ i, constantCoeff ((pt R d 1 : Pt R 2 d) i) = 0 := GlobalTheory.GaugeAdjoint.const_pt 1
  have hb := GlobalTheory.GaugeAdjoint.const_two (cc_comp1 hA h0) (cc_comp1 hB h1)
  unfold E
  rw [ev_ev _ hb _ (GlobalTheory.GaugeAdjoint.const_two (cc_comp1 hC h0) (cc_comp1 hD h1))]
  congr 1
  funext j l
  fin_cases j
  · change ev _ (comp1 C (pt R d 0) l) = comp1 (comp1 C A) (pt R d 0) l
    rw [ev_comp1 _ hb _ _ h0, composition_assoc_no_constant C A _ hA h0]
    congr 2
    funext m
    exact ev_pt _ hb 0 m
  · change ev _ (comp1 D (pt R d 1) l) = comp1 (comp1 D B) (pt R d 1) l
    rw [ev_comp1 _ hb _ _ h1, composition_assoc_no_constant D B _ hB h1]
    congr 2
    funext m
    exact ev_pt _ hb 1 m

theorem E_eq_ptPow (p : ℕ) (f : PS R 2 d) :
    E (ptPow R d p (0 : Fin 1)) (pt R d 0) f = ev (n := 2) ![ptPow R d p 0, ptPow R d 1 1] f := by
  have e : (pt R d 1 : Pt R 2 d) = ptPow R d 1 1 := funext fun i => (pow_one _).symm
  unfold E
  rw [comp1_point_power_expand p _ (GlobalTheory.GaugeAdjoint.const_pt 0), germ_comp1_zero_point_left _ (GlobalTheory.GaugeAdjoint.const_pt 1), e]
  rfl

theorem E_eq_ptPow' (p : ℕ) (f : PS R 2 d) :
    E (ptPow R d p (0 : Fin 1)) (pt R d 0) f = ev (n := 2) ![ptPow R d p 0, pt R d 1] f := by
  unfold E
  rw [comp1_point_power_expand p _ (GlobalTheory.GaugeAdjoint.const_pt 0), germ_comp1_zero_point_left _ (GlobalTheory.GaugeAdjoint.const_pt 1)]
  rfl

theorem axOne_E {A B : Pt R 1 d} (hA : ∀ i, constantCoeff (A i) = 0) (hB : ∀ i, constantCoeff (B i) = 0)
    {f : PS R 2 d} (hf : AxOne f) : AxOne (E A B f) :=
  (_root_.GlobalTheory.CompanionTheory.Ar.Conj.BilCalc.bil_calc R d f f A B hf hf hA hB).2.2.2.1

theorem bil_E {A B : Pt R 1 d} (hA : ∀ i, constantCoeff (A i) = 0) (hB : ∀ i, constantCoeff (B i) = 0)
    {f : PS R 2 d} (hf : AxOne f) : bil (E A B f) 1 1 = (lin A 1).transpose * bil f 1 1 * lin B 1 :=
  (_root_.GlobalTheory.CompanionTheory.Ar.Conj.BilCalc.bil_calc R d f f A B hf hf hA hB).2.2.2.2.1

theorem bil_E_ptPow {p : ℕ} (hp : 1 ≤ p) {f : PS R 2 d} (hf : AxOne f) :
    bil (E (ptPow R d p (0 : Fin 1)) (pt R d 0) f) p 1 = bil f 1 1 := by
  have hc : ∀ i, constantCoeff ((pt R d 0 : Pt R 1 d) i) = 0 := GlobalTheory.GaugeAdjoint.const_pt 0
  rw [E_eq_ptPow]
  exact (_root_.GlobalTheory.CompanionTheory.Ar.Conj.BilCalc.bil_calc R d f f _ _ hf hf hc hc).2.2.2.2.2.2 p 1 hp le_rfl

theorem axOne_one : AxOne (1 : PS R 2 d) := ⟨ev_one _, ev_one _⟩

theorem axOne_pow {f : PS R 2 d} (hf : AxOne f) (n : ℕ) : AxOne (f ^ n) := by
  induction n with
  | zero => simpa using axOne_one
  | succ n ih => rw [pow_succ]; exact PositivityTheory.HtPt.Ca.axOne_mul ih hf

theorem bil_pow {f : PS R 2 d} (hf : AxOne f) {m : ℕ} (hm : m ≠ 0) (n : ℕ) :
    bil (f ^ n) m 1 = n • bil f m 1 := by
  induction n with
  | zero => simp [bil_one_eq_zero hm]
  | succ n ih => rw [pow_succ, PositivityTheory.HtPt.Ca.bil_mul_left (axOne_pow hf n) hf, ih, succ_nsmul]

section Main

variable {O : Type} [CommRing O] [StarRing O] (p : ℕ) [Fact p.Prime] [CharP R p]
variable {B B₂ : FB R d O} {φ ψ : Pt R 1 d} {lam : PS R 2 d}

theorem hw_rel (h : IsIso B B₂ φ ψ lam) : lin φ 1 * hw B₂ p = hw B p * (lin φ 1).map (· ^ p) := by
  obtain ⟨V, cV, eV, lV⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.mulp_factors_frobenius R p d O B
  obtain ⟨V₂, cV₂, eV₂, lV₂⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.mulp_factors_frobenius R p d O B₂
  have hp : p ≠ 0 := (Fact.out : p.Prime).ne_zero
  have hp1 : 1 ≤ p := Nat.one_le_iff_ne_zero.2 hp
  have e := h.act (p : O)
  rw [eV₂, eV, composition_assoc_no_constant V _ φ (cc_ptPow hp 0) h.c₁, frobenius_point_commutes_composition p h.c₁] at e
  have l1 := ((_root_.GlobalTheory.CompanionTheory.Ar.Conj.lin_comp_chain R d φ V₂ h.c₁ cV₂).2.2 p hp1).2
  have l2 := ((_root_.GlobalTheory.CompanionTheory.Ar.Conj.lin_comp_chain R d V (frobPt p φ) cV (cc_frobPt p h.c₁)).2.2 p hp1).2
  rw [← lV₂, ← lV, ← lin_frobPt, ← l1, ← l2, e]

theorem am_rel (h : IsIso B B₂ φ ψ lam) :
    am B₂ p + (hw B₂ p).transpose * bil lam 1 1 =
      ((lin φ 1).map (· ^ p)).transpose * am B p * lin φ 1 := by
  obtain ⟨V₂, cV₂, eV₂, lV₂⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.mulp_factors_frobenius R p d O B₂
  obtain ⟨g₂, ax₂, e₂, b₂⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.pow_one_series_in_p R p d O B₂
  obtain ⟨g, ax, e, b⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.pow_one_series_in_p R p d O B
  have hp : p ≠ 0 := (Fact.out : p.Prime).ne_zero
  have hp1 : 1 ≤ p := Nat.one_le_iff_ne_zero.2 hp
  have cPw : ∀ i, constantCoeff (ptPow R d p (0 : Fin 1) i) = 0 := cc_ptPow hp 0
  have cI : ∀ i, constantCoeff ((pt R d 0 : Pt R 1 d) i) = 0 := GlobalTheory.GaugeAdjoint.const_pt 0
  have cF : ∀ i, constantCoeff (frobPt p φ i) = 0 := cc_frobPt p h.c₁
  have key := _root_.GlobalTheory.CompanionTheory.Ar.Conj.iso_pow_one_law R d O B B₂ φ ψ lam p h
  have r1 : pow1 B₂ p = E (ptPow R d p (0 : Fin 1)) (pt R d 0) g₂ := by rw [e₂, E_eq_ptPow']
  have r2 : ev (n := 2) ![comp1 (B₂.A.act (p : O)) (pt R d 0), pt R d 1] lam =
      E (ptPow R d p (0 : Fin 1)) (pt R d 0) (E V₂ (pt R d 0) lam) := by
    rw [E_E cPw cI cV₂ cI, composition_identity_point_right, ← eV₂]
    unfold E
    rw [germ_comp1_zero_point_left _ (GlobalTheory.GaugeAdjoint.const_pt 1)]
  have r3 : ev (n := 2) ![comp1 φ (pt R d 0), comp1 φ (pt R d 1)] (pow1 B p) =
      E (ptPow R d p (0 : Fin 1)) (pt R d 0) (E (frobPt p φ) φ g) := by
    change E φ φ (pow1 B p) = _
    rw [e, ← E_eq_ptPow', E_E h.c₁ h.c₁ cPw cI, E_E cPw cI cF h.c₁, frobenius_point_commutes_composition p h.c₁,
      germ_comp1_zero_point_left _ h.c₁, composition_identity_point_right]
  rw [r1, r2, r3] at key
  have a1 := axOne_E cPw cI ax₂
  have aL := axOne_E cV₂ cI h.ax
  have a2 := axOne_E cPw cI aL
  have aG := axOne_E cF h.c₁ ax
  have a3 := axOne_E cPw cI aG
  have k := congrArg (fun f => bil f p 1) key
  have z : p • bil lam p 1 = 0 := by
    ext i j
    simp [nsmul_eq_mul]
  beta_reduce at k
  rw [PositivityTheory.HtPt.Ca.bil_mul_left a1 a2, PositivityTheory.HtPt.Ca.bil_mul_left (axOne_pow h.ax p) a3, bil_E_ptPow hp1 ax₂, bil_E_ptPow hp1 aL,
    bil_E_ptPow hp1 aG, bil_pow h.ax hp, z, zero_add, bil_E cV₂ cI h.ax, bil_E cF h.c₁ ax, lV₂, b₂, b,
    lin_frobPt, lin_pt_eq_one, mul_one] at k
  exact k

theorem frob_mul_eq_one {g g' : Matrix (Fin d) (Fin d) R} (h : g * g' = 1) :
    g.map (· ^ p) * g'.map (· ^ p) = 1 := by
  have e : ∀ M : Matrix (Fin d) (Fin d) R, M.map (· ^ p) = (frobenius R p).mapMatrix M := fun M => by
    ext i j
    simp [frobenius_def]
  rw [e, e, ← map_mul, h, map_one]

end Main

end GlobalTheory.CompanionTheory.Ar.Conj.IsoAlpha

namespace GlobalTheory.CompanionTheory.Ar.Conj

theorem alpha_beta_of_isIso : ∀ (R : Type) [CommRing R] (p : ℕ) [Fact p.Prime] [CharP R p] (d : ℕ) (O : Type)
    [CommRing O] [StarRing O] (B : FB R d O) (B₂ : FB R d O) (φ ψ : Pt R 1 d) (lam : PS R 2 d),
    IsIso B B₂ φ ψ lam →
      (∀ u, alpha B p (((lin φ 1).map (· ^ p)).mulVec u) = transH φ ψ lam (alpha B₂ p u)) ∧
        ∀ y, beta B p (transH φ ψ lam y) = ((lin ψ 1).transpose.map (· ^ p)).mulVec (beta B₂ p y) := by
  intro R _ p _ _ d O _ _ B B₂ φ ψ lam h
  obtain ⟨i1, -, -, -, -, hpair⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Conj.Iso.rho_pairing R d O B B₂ φ ψ lam h
  have H1 := IsoAlpha.hw_rel p h
  have H2 := IsoAlpha.am_rel p h
  have A : ∀ u, alpha B p (((lin φ 1).map (· ^ p)).mulVec u) = transH φ ψ lam (alpha B₂ p u) := by
    intro u
    rw [alpha_apply, alpha_apply, transH_apply]
    refine Prod.ext ?_ ?_
    · simp only [Matrix.mulVec_mulVec, H1]
    · change (am B p).transpose.mulVec (((lin φ 1).map (· ^ p)).mulVec u) =
        (lin ψ 1).transpose.mulVec ((am B₂ p).transpose.mulVec u +
          (bil lam 1 1).transpose.mulVec ((hw B₂ p).mulVec u))
      have t : (am B₂ p).transpose + (bil lam 1 1).transpose * hw B₂ p =
          (lin φ 1).transpose * ((am B p).transpose * (lin φ 1).map (· ^ p)) := by
        have := congrArg Matrix.transpose H2
        simpa [Matrix.transpose_add, Matrix.transpose_mul, Matrix.mul_assoc] using this
      rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, ← Matrix.add_mulVec, Matrix.mulVec_mulVec, t,
        ← Matrix.mul_assoc, ← Matrix.transpose_mul, i1, Matrix.transpose_one, Matrix.one_mul]
  refine ⟨A, fun y => ?_⟩
  have key : ∀ v, ((lin φ 1).map (· ^ p)).mulVec v ⬝ᵥ beta B p (transH φ ψ lam y) = v ⬝ᵥ beta B₂ p y := fun v => by
    rw [dotProduct_beta, A, hpair, ← dotProduct_beta]
  have k2 : ((lin φ 1).map (· ^ p)).transpose.mulVec (beta B p (transH φ ψ lam y)) = beta B₂ p y := by
    have k3 : ∀ v, v ⬝ᵥ ((lin φ 1).map (· ^ p)).transpose.mulVec (beta B p (transH φ ψ lam y)) =
        v ⬝ᵥ beta B₂ p y := fun v => by
      rw [Matrix.dotProduct_mulVec, Matrix.vecMul_transpose, key]
    funext i
    simpa using k3 (Pi.single i 1)
  rw [← k2, Matrix.mulVec_mulVec, Matrix.transpose_map, ← Matrix.transpose_mul,
    IsoAlpha.frob_mul_eq_one p i1, Matrix.transpose_one, Matrix.one_mulVec]

end GlobalTheory.CompanionTheory.Ar.Conj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaBetaIsomorphismTransport =====
