module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExpansionEqZeroIffCoeffsMem
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FunctorialityOfPeriodRingMaps
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.FiltrationSpanDividedPowers
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesUnOne
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesTens
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExpansionSurjectiveAdditiveLinear
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ResKill
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SemilinearOfAdditive

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelOneFacts, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelSequenceFacts, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralRingFacts, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.AcrisModLBaseChange, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ForD, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SmulMemFiltrationGraded, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.UDAuxFil, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesAcrZero, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.InWmTeichmullerSubOne

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelOneFacts =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelOneFacts", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExpansionEqZeroIffCoeffsMem\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FunctorialityOfPeriodRingMaps\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExpansionSurjectiveAdditiveLinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg TensorProduct

namespace GlobalTheory.CompanionTheory.ACrisMod

variable {l : ℕ} [Fact l.Prime]


variable (l) in
abbrev Qt : Type := Ob l ⧸ Ideal.span {pFlat l ^ l}


variable (l) in
abbrev Nm : Type := ℕ →₀ Qt l

@[reducible] def modAcr (A : PAlg l) : Module (Ob l) (A.Acr 1) := Module.compHom _ (A.aTo1.comp A.s)

attribute [local instance] modAcr

theorem smul_acr (A : PAlg l) (c : Ob l) (y : A.Acr 1) : c • y = A.aTo1 (A.s c) * y := rfl

def mulDxi (A : PAlg l) (k : ℕ) : A.A →ₗ[Ob l] A.Acr 1 where
  toFun a := A.aTo1 a * A.dxi 1 (l * k)
  map_add' x y := by rw [map_add (f := _), add_mul]
  map_smul' c a := by
    rw [Algebra.smul_def, map_mul, RingHom.id_apply, smul_acr, mul_assoc]; rfl

theorem mulDxi_apply (A : PAlg l) (k : ℕ) (a : A.A) : mulDxi A k a = A.aTo1 a * A.dxi 1 (l * k) := rfl

theorem pow_smul_mulDxi (A : PAlg l) (k : ℕ) : pFlat l ^ l • mulDxi A k = 0 := by
  ext a
  have h := (_root_.GlobalTheory.CompanionTheory.PerfFil.Expand.main A).2.2.2 (l * k)
  rw [LinearMap.smul_apply, smul_acr, mulDxi_apply, LinearMap.zero_apply, map_pow, mul_left_comm]
  have e : A.aTo1 (A.s (pFlat l) ^ l) * A.dxi 1 (l * k) = 0 := h
  rw [e, mul_zero]

def tk (A : PAlg l) (k : ℕ) : Qt l →ₗ[Ob l] (A.A →ₗ[Ob l] A.Acr 1) :=
  (Ideal.span {pFlat l ^ l}).liftQ (LinearMap.toSpanSingleton (Ob l) _ (mulDxi A k)) (by
    intro x hx
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hx
    rw [LinearMap.mem_ker, LinearMap.toSpanSingleton_apply, mul_smul, pow_smul_mulDxi, smul_zero])

def tauL (A : PAlg l) : Nm l ⊗[Ob l] A.A →ₗ[Ob l] A.Acr 1 :=
  TensorProduct.lift (Finsupp.lsum ℕ (tk A))

theorem tauL_one (A : PAlg l) (k : ℕ) (a : A.A) :
    tauL A (Finsupp.single k 1 ⊗ₜ a) = A.aTo1 a * A.dxi 1 (l * k) := by
  have : (1 : Qt l) = Submodule.Quotient.mk (1 : Ob l) := rfl
  rw [tauL, TensorProduct.lift.tmul, Finsupp.lsum_single, this, tk, Submodule.liftQ_apply,
    LinearMap.toSpanSingleton_apply, one_smul, mulDxi_apply]

theorem smul_one_Qt (r : Ob l) : r • (1 : Qt l) = Submodule.Quotient.mk r := by
  change r • (Submodule.Quotient.mk (1 : Ob l) : Qt l) = _
  rw [← Submodule.Quotient.mk_smul, smul_eq_mul, mul_one]

theorem pow_smul_Qt (q : Qt l) : pFlat l ^ l • q = 0 := by
  obtain ⟨r, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero]
  exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)

def gen (A : PAlg l) (c : ℕ →₀ A.A) : Nm l ⊗[Ob l] A.A := c.sum fun k a => Finsupp.single k 1 ⊗ₜ a

theorem gen_zero (A : PAlg l) : gen A 0 = 0 := Finsupp.sum_zero_index

theorem gen_add (A : PAlg l) (c d : ℕ →₀ A.A) : gen A (c + d) = gen A c + gen A d :=
  Finsupp.sum_add_index' (fun _ => TensorProduct.tmul_zero _ _) (fun _ _ _ => TensorProduct.tmul_add _ _ _)

theorem gen_single (A : PAlg l) (k : ℕ) (a : A.A) : gen A (Finsupp.single k a) = Finsupp.single k 1 ⊗ₜ a :=
  Finsupp.sum_single_index (TensorProduct.tmul_zero _ _)

theorem tauL_gen (A : PAlg l) (c : ℕ →₀ A.A) : tauL A (gen A c) = A.expand c := by
  rw [gen, map_finsuppSum, expand]
  exact Finsupp.sum_congr fun k _ => tauL_one A k (c k)

theorem exists_gen (A : PAlg l) (x : Nm l ⊗[Ob l] A.A) : ∃ c, gen A c = x := by
  induction x using TensorProduct.induction_on with
  | zero => exact ⟨0, gen_zero A⟩
  | add x y hx hy =>
    obtain ⟨c, rfl⟩ := hx
    obtain ⟨d, rfl⟩ := hy
    exact ⟨c + d, gen_add A c d⟩
  | tmul n a =>
    induction n using Finsupp.induction_linear with
    | zero => exact ⟨0, by rw [gen_zero, TensorProduct.zero_tmul]⟩
    | add f g hf hg =>
      obtain ⟨c, hc⟩ := hf
      obtain ⟨d, hd⟩ := hg
      exact ⟨c + d, by rw [gen_add, hc, hd, TensorProduct.add_tmul]⟩
    | single k q =>
      obtain ⟨r, rfl⟩ := Submodule.Quotient.mk_surjective _ q
      refine ⟨Finsupp.single k (r • a), ?_⟩
      rw [gen_single, TensorProduct.tmul_smul, TensorProduct.smul_tmul', Finsupp.smul_single]
      congr 2
      exact smul_one_Qt r

theorem gen_eq_zero (A : PAlg l) (c : ℕ →₀ A.A) (h : ∀ k, c k ∈ Ideal.span {A.pi ^ l}) : gen A c = 0 := by
  refine Finset.sum_eq_zero fun k _ => ?_
  obtain ⟨b, hb⟩ := Ideal.mem_span_singleton'.1 (h k)
  have e : c k = pFlat l ^ l • b := by
    rw [Algebra.smul_def, ← hb, mul_comm]
    congr 1
    exact (map_pow A.s _ _).symm
  have z : pFlat l ^ l • (Finsupp.single k 1 : Nm l) = 0 := by
    rw [Finsupp.smul_single, pow_smul_Qt, Finsupp.single_zero]
  change Finsupp.single k 1 ⊗ₜ[Ob l] (c k) = 0
  rw [e, ← TensorProduct.smul_tmul, z, TensorProduct.zero_tmul]

theorem tauL_bijective (A : PAlg l) : Function.Bijective (tauL A) := by
  refine ⟨(injective_iff_map_eq_zero _).2 fun x hx => ?_, fun y => ?_⟩
  · obtain ⟨c, rfl⟩ := exists_gen A x
    rw [tauL_gen] at hx
    exact gen_eq_zero A c ((_root_.GlobalTheory.CompanionTheory.ExpandKer.expand_eq_zero_iff A c).1 hx)
  · obtain ⟨c, rfl⟩ := (_root_.GlobalTheory.CompanionTheory.PerfFil.Expand.main A).1 y
    exact ⟨gen A c, tauL_gen A c⟩

def tau (A : PAlg l) : Nm l ⊗[Ob l] A.A ≃+ A.Acr 1 :=
  { Equiv.ofBijective (tauL A) (tauL_bijective A) with map_add' := map_add (tauL A) }

theorem tau_apply (A : PAlg l) (x : Nm l ⊗[Ob l] A.A) : tau A x = tauL A x := rfl

theorem map_gen {A B : PAlg l} (f : A ⟶ B) (c : ℕ →₀ A.A) :
    ((D.toPf l ⋙ D.tensF l (Ob l) (Nm l)).map f).hom (gen A c) =
      gen B (c.mapRange (Hom.f f) (map_zero _)) := by
  rw [gen, map_finsuppSum, gen, Finsupp.sum_mapRange_index (fun _ => TensorProduct.tmul_zero _ _)]
  rfl

theorem pow_smul_Nm (x : Nm l) : pFlat l ^ l • x = 0 :=
  Finsupp.ext fun k => (Finsupp.smul_apply _ _ _).trans (pow_smul_Qt (x k))

theorem algebraMap_eq (A : PAlg l) (a : Ainf l) (y : A.Acr 1) :
    algebraMap (Ainf l) (A.Acr 1) a * y = a.coeff 0 • y := by
  rw [(_root_.GlobalTheory.CompanionTheory.PAlgNat.expand_nat A A (𝟙 A)).2.2.2.2.2 a]
  rfl

theorem tau_smul (A : PAlg l) (a : Ainf l) (x : Nm l ⊗[Ob l] A.A) :
    tau A (a.coeff 0 • x) = algebraMap (Ainf l) (A.Acr 1) a * tau A x :=
  ((tauL A).map_smul (a.coeff 0) x).trans (algebraMap_eq A a (tauL A x)).symm

theorem tau_map (A B : PAlg l) (f : A ⟶ B) (x : Nm l ⊗[Ob l] A.A) :
    tau B (((D.toPf l ⋙ D.tensF l (Ob l) (Nm l)).map f).hom x) = mapAcr f 1 (tau A x) := by
  obtain ⟨c, rfl⟩ := exists_gen A x
  rw [tau_apply, tau_apply, map_gen, tauL_gen, tauL_gen]
  exact ((_root_.GlobalTheory.CompanionTheory.PAlgNat.expand_nat A B f).2.1 c).symm

theorem acr1 (l : ℕ) [Fact l.Prime] : CrystallineSemistableComparison.D.RAcr1 l :=
  ⟨Nm l, inferInstance, inferInstance, l, tau, pow_smul_Nm, tau_smul, tau_map⟩

end GlobalTheory.CompanionTheory.ACrisMod
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelOneFacts =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelSequenceFacts =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelSequenceFacts", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

noncomputable section

namespace GlobalTheory.CompanionTheory.LSeq

variable {l : ℕ} [Fact l.Prime] (A : PAlg l)

theorem lpow_nzd (n : ℕ) : (l : A.Acr0) ^ n ∈ nonZeroDivisors A.Acr0 :=
  pow_mem (A.acris_torsion_free l (Fact.out : l.Prime).ne_zero) n



def alphaL (n : ℕ) : A.Acr0 →ₗ[A.Acr0] (A.Acr0 ⧸ Ideal.span {(l : A.Acr0) ^ (n + 1)}) :=
  (Submodule.mkQ _).comp (LinearMap.mulLeft A.Acr0 ((l : A.Acr0) ^ n))


set_option synthInstance.maxHeartbeats 400000 in
def alpha (n : ℕ) : A.Acr 1 →+ A.Acr (n + 1) :=
  ((Ideal.span {(l : A.Acr0) ^ 1}).liftQ (alphaL A n) (by
    intro x hx
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hx
    rw [LinearMap.mem_ker]
    simp only [alphaL, LinearMap.comp_apply, LinearMap.mulLeft_apply, Submodule.mkQ_apply]
    rw [Submodule.Quotient.mk_eq_zero]
    exact Ideal.mem_span_singleton'.2 ⟨c, by ring⟩)).toAddMonoidHom

theorem alpha_mk (n : ℕ) (y : A.Acr0) :
    alpha A n (A.mkAcr 1 y) = A.mkAcr (n + 1) ((l : A.Acr0) ^ n * y) := rfl

theorem alpha_injective (n : ℕ) : Function.Injective (alpha A n) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro x hx
  obtain ⟨y, rfl⟩ : ∃ y, A.mkAcr 1 y = x := Ideal.Quotient.mk_surjective x
  rw [alpha_mk] at hx
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq_zero_iff_mem.1 hx)
  have h0 : (l : A.Acr0) ^ n * (y - c * (l : A.Acr0) ^ 1) = 0 := by
    rw [mul_sub, ← hc]; ring
  have h1 := mem_nonZeroDivisors_iff_left.1 (lpow_nzd A n) _ h0
  exact Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton'.2 ⟨c, (sub_eq_zero.1 h1).symm⟩)

theorem alpha_exact (n : ℕ) : Function.Exact (alpha A n) (A.red n.le_succ) := by
  intro x
  obtain ⟨y, rfl⟩ : ∃ y, A.mkAcr (n + 1) y = x := Ideal.Quotient.mk_surjective x
  rw [red_mk]
  constructor
  · intro h
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq_zero_iff_mem.1 h)
    exact ⟨A.mkAcr 1 c, by rw [alpha_mk, ← hc, mul_comm]⟩
  · rintro ⟨z, hz⟩
    obtain ⟨w, rfl⟩ : ∃ w, A.mkAcr 1 w = z := Ideal.Quotient.mk_surjective z
    rw [← red_mk A n.le_succ y, ← hz, alpha_mk, red_mk]
    exact Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton'.2 ⟨w, mul_comm _ _⟩)

theorem racrSeq (l : ℕ) [Fact l.Prime] : CrystallineSemistableComparison.D.RAcrSeq l :=
  fun n => ⟨fun A => alpha A n, fun A y => alpha_mk A n y, fun A => ⟨alpha_injective A n, alpha_exact A n⟩⟩

end GlobalTheory.CompanionTheory.LSeq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelSequenceFacts =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralRingFacts =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralRingFacts", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.TiltFacts

variable (l : ℕ) [Fact l.Prime]

theorem isDomain_ob : IsDomain (CrystallineSemistableComparison.Ob l) :=
  IsPerfectoidField.isDomain_preTilt (K := ℂ_[l]) l

theorem norm_pFlat_eq : ‖(pFlat l : PreTilt (normInteger ℂ_[l]) l)‖ = ‖(l : ℂ_[l])‖ := by
  rw [preTilt_norm_def, coe_untilt_pFlat]

theorem norm_pFlat_pos : 0 < ‖(pFlat l : PreTilt (normInteger ℂ_[l]) l)‖ := by
  rw [norm_pFlat_eq]
  exact norm_pos_iff.2 (Nat.cast_ne_zero.2 (Fact.out : l.Prime).ne_zero)

theorem norm_pFlat_lt_one : ‖(pFlat l : PreTilt (normInteger ℂ_[l]) l)‖ < 1 := by
  rw [norm_pFlat_eq]
  exact IsPerfectoidField.norm_natCast_lt_one

theorem rt_pow (k : ℕ) : CrystallineSemistableComparison.D.rt l k ^ l ^ k = pFlat l := by
  have h := (iterateFrobeniusEquiv (CrystallineSemistableComparison.Ob l) l k).apply_symm_apply (pFlat l)
  rwa [iterateFrobeniusEquiv_def] at h

theorem exists_dvd_pFlat_pow (a : CrystallineSemistableComparison.Ob l) (ha : a ≠ 0) : ∃ M : ℕ, a ∣ pFlat l ^ M := by
  obtain ⟨M, hM⟩ := exists_pow_lt_of_lt_one (norm_pos_iff.2 ha) (norm_pFlat_lt_one l)
  refine ⟨M, preTilt_dvd_iff_norm_le.2 ?_⟩
  rw [norm_pow]
  exact hM.le

theorem exists_rt_dvd (a : CrystallineSemistableComparison.Ob l) (ha : ¬ IsUnit a) : ∃ k : ℕ, CrystallineSemistableComparison.D.rt l k ∣ a := by
  have hlt : ‖a‖ < 1 := by
    refine lt_of_le_of_ne (preTilt_norm_le_one a) fun h => ha ?_
    exact (IsPerfectoidField.isUnit_iff_norm_untilt l).2 (by rwa [preTilt_norm_def] at h)
  have hl : 1 < l := (Fact.out : l.Prime).one_lt
  obtain ⟨n, hn⟩ := exists_pow_lt_of_lt_one (norm_pFlat_pos l) hlt
  have hnl : n ≤ l ^ n := (Nat.lt_pow_self hl).le
  refine ⟨n, preTilt_dvd_iff_norm_le.2 ?_⟩
  have h1 : ‖a‖ ^ l ^ n ≤ ‖CrystallineSemistableComparison.D.rt l n‖ ^ l ^ n := by
    rw [← norm_pow (CrystallineSemistableComparison.D.rt l n), rt_pow]
    exact (pow_le_pow_of_le_one (norm_nonneg _) hlt.le hnl).trans hn.le
  exact le_of_pow_le_pow_left₀ (pow_ne_zero _ (by omega)) (norm_nonneg _) h1

theorem obFacts : ∀ (l : ℕ) [Fact l.Prime], CrystallineSemistableComparison.D.ObFacts l := by
  intro l _
  haveI := isDomain_ob l
  refine ⟨inferInstance, ?_, exists_dvd_pFlat_pow l, exists_rt_dvd l⟩
  refine (ValuationRing.iff_dvd_total).2 ⟨fun a b => ?_⟩
  rcases le_total ‖a‖ ‖b‖ with h | h
  · exact Or.inr (preTilt_dvd_iff_norm_le.2 h)
  · exact Or.inl (preTilt_dvd_iff_norm_le.2 h)

end GlobalTheory.CompanionTheory.TiltFacts
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralRingFacts =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.AcrisModLBaseChange =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.AcrisModLBaseChange", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelOneFacts\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisLevelSequenceFacts\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralRingFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

theorem CrystallineSemistableComparison.RL.d_ob : ∀ (l : ℕ) [Fact l.Prime], CrystallineSemistableComparison.D.ObFacts l := _root_.GlobalTheory.CompanionTheory.TiltFacts.obFacts

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.AcrisModLBaseChange =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ForD =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ForD", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.AcrisModLBaseChange\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.FiltrationSpanDividedPowers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CrystallineSemistableComparison.PAlg

theorem CrystallineSemistableComparison.R.forD (l : ℕ) [Fact l.Prime] : CrystallineSemistableComparison.D.RIn l :=
  ⟨RL.d_ob l, _root_.GlobalTheory.CompanionTheory.ACrisMod.acr1 l, _root_.GlobalTheory.CompanionTheory.LSeq.racrSeq l, fun A => ⟨(RL.u_tf A).1, fun x => by
    rw [← (RL.u_mod A).2, RingHom.mem_ker, sharpMap_coeff, Ideal.Quotient.eq_zero_iff_mem, pow_one]⟩, fun A n r => RL.gr A n r⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ForD =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SmulMemFiltrationGraded =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SmulMemFiltrationGraded", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory TensorProduct GroundTheory.PAdicHodge CrystallineSemistableComparison.CH

namespace CrystallineSemistableComparison.D

open PAlg

variable {l : ℕ} [Fact l.Prime]


theorem fil_succ_le' (A : PAlg l) (n r : ℕ) : A.Fil n (r + 1) ≤ A.Fil n r :=
  Ideal.span_mono fun _ ⟨k, hk, hz⟩ => ⟨k, by omega, hz⟩

theorem dxi_mem_fil' (A : PAlg l) (n r : ℕ) : A.dxi n r ∈ A.Fil n r := Ideal.subset_span ⟨r, le_rfl, rfl⟩

def gr (h : RGr l) (A : PAlg l) (n r : ℕ) (z : A.Acr n) (hz : z ∈ A.Fil n r) : A.Un n :=
  Ideal.Quotient.mk _ (A.th (Classical.choose ((h A n r).1 z hz)))

theorem gr_eq (h : RGr l) (A : PAlg l) {n r : ℕ} (z : A.Acr n) (hz : z ∈ A.Fil n r) (x : A.W)
    (hx : z - A.toAcr n x * A.dxi n r ∈ A.Fil n (r + 1)) : gr h A n r z hz = Ideal.Quotient.mk _ (A.th x) := by
  have h0 := Classical.choose_spec ((h A n r).1 z hz)
  show Ideal.Quotient.mk _ (A.th (Classical.choose ((h A n r).1 z hz))) = _
  rw [Ideal.Quotient.eq, ← map_sub]
  apply ((h A n r).2 _).1
  have e : A.toAcr n (Classical.choose ((h A n r).1 z hz) - x) * A.dxi n r =
      (z - A.toAcr n x * A.dxi n r) - (z - A.toAcr n (Classical.choose ((h A n r).1 z hz)) * A.dxi n r) := by
    rw [map_sub]; ring
  rw [e]; exact sub_mem hx h0

theorem gr_spec (h : RGr l) (A : PAlg l) {n r : ℕ} (z : A.Acr n) (hz : z ∈ A.Fil n r) :
    ∃ x : A.W, z - A.toAcr n x * A.dxi n r ∈ A.Fil n (r + 1) ∧ gr h A n r z hz = Ideal.Quotient.mk _ (A.th x) :=
  ⟨_, Classical.choose_spec ((h A n r).1 z hz), rfl⟩

def fv {A : PAlg l} {n r : ℕ} (z : (FilF l n r).obj A) : A.Acr n := z.1

theorem fv_mem {A : PAlg l} {n r : ℕ} (z : (FilF l n r).obj A) : fv z ∈ A.Fil n r := z.2

theorem fv_add {A : PAlg l} {n r : ℕ} (z z' : (FilF l n r).obj A) : fv (z + z') = fv z + fv z' := rfl

theorem fv_zero {A : PAlg l} {n r : ℕ} : fv (0 : (FilF l n r).obj A) = 0 := rfl

theorem gr_zero (h : RGr l) (A : PAlg l) (n r : ℕ) : gr h A n r (fv (0 : (FilF l n r).obj A)) (fv_mem _) = 0 := by
  rw [gr_eq h A _ _ 0 (by rw [fv_zero, map_zero, zero_mul, sub_zero]; exact zero_mem _), map_zero, map_zero]

theorem gr_add (h : RGr l) (A : PAlg l) (n r : ℕ) (z z' : (FilF l n r).obj A) :
    gr h A n r (fv (z + z')) (fv_mem _) = gr h A n r (fv z) (fv_mem z) + gr h A n r (fv z') (fv_mem z') := by
  obtain ⟨x, hx, e⟩ := gr_spec h A (fv z) (fv_mem z)
  obtain ⟨x', hx', e'⟩ := gr_spec h A (fv z') (fv_mem z')
  have hs : fv (z + z') - A.toAcr n (x + x') * A.dxi n r =
      (fv z - A.toAcr n x * A.dxi n r) + (fv z' - A.toAcr n x' * A.dxi n r) := by rw [fv_add, map_add (f := _)]; ring
  rw [gr_eq h A _ _ (x + x') (by rw [hs]; exact add_mem hx hx'), e, e', map_add (f := _), map_add (f := _)]

def grF (h : RGr l) (A : PAlg l) (n r : ℕ) : (FilF l n r).obj A →+ (UnF l n).obj A where
  toFun z := gr h A n r (fv z) (fv_mem z)
  map_zero' := gr_zero h A n r
  map_add' := gr_add h A n r

theorem grF_apply (h : RGr l) (A : PAlg l) {n r : ℕ} (z : (FilF l n r).obj A) (x : A.W)
    (hx : fv z - A.toAcr n x * A.dxi n r ∈ A.Fil n (r + 1)) : grF h A n r z = Ideal.Quotient.mk _ (A.th x) :=
  gr_eq h A _ (fv_mem z) x hx

theorem fv_inj {A : PAlg l} {n r : ℕ} {z z' : (FilF l n r).obj A} (e : fv z = fv z') : z = z' := Subtype.ext e

def mkF {A : PAlg l} {n r : ℕ} (z : A.Acr n) (hz : z ∈ A.Fil n r) : (FilF l n r).obj A := ⟨z, hz⟩

theorem fv_mkF {A : PAlg l} {n r : ℕ} (z : A.Acr n) (hz : z ∈ A.Fil n r) : fv (mkF (l := l) z hz) = z := rfl

theorem fv_smul {A : PAlg l} {n r : ℕ} (a : Acris l) (z : (FilF l n r).obj A) : fv (a • z) = A.cris n a * fv z := rfl

theorem fv_map {A B : PAlg l} (f : A ⟶ B) {n r : ℕ} (z : (FilF l n r).obj A) :
    fv (((FilF l n r).map f).hom z) = mapAcr f n (fv z) := rfl

theorem un_smul (A : PAlg l) (n : ℕ) (a : Ainf l) (x : A.W) :
    (a • (show (UnF l n).obj A from Ideal.Quotient.mk _ (A.th x))) =
      (show (UnF l n).obj A from Ideal.Quotient.mk _ (A.th (A.sW a * x))) := rfl

theorem un_map {A B : PAlg l} (f : A ⟶ B) (n : ℕ) (x : A.W) :
    ((UnF l n).map f).hom (Ideal.Quotient.mk _ (A.th x)) = Ideal.Quotient.mk _ (B.th (mapW f x)) := rfl

def grx (h : RGr l) {A : PAlg l} {n r : ℕ} (z : (FilF l n r).obj A) : A.W := Classical.choose ((h A n r).1 (fv z) (fv_mem z))

theorem grx_spec (h : RGr l) {A : PAlg l} {n r : ℕ} (z : (FilF l n r).obj A) :
    fv z - A.toAcr n (grx h z) * A.dxi n r ∈ A.Fil n (r + 1) := Classical.choose_spec ((h A n r).1 (fv z) (fv_mem z))

theorem un_smul' (A : PAlg l) (n : ℕ) (a : Ainf l) (x : A.W) :
    (show (UnF l n).obj A from Ideal.Quotient.mk _ (A.th (A.sW a * x))) = RingHom.id (Ainf l) a • (show (UnF l n).obj A from Ideal.Quotient.mk _ (A.th x)) := by
  rw [RingHom.id_apply]; exact (un_smul A n a x).symm

theorem grF_algebraMap_smul (h : RGr l) (A : PAlg l) (n r : ℕ) (a : Ainf l) (z : (FilF l n r).obj A) (x : A.W) (hx : fv z - A.toAcr n x * A.dxi n r ∈ A.Fil n (r + 1))
    (hm : fv (algebraMap (Ainf l) (Acris l) a • z) - A.toAcr n (A.sW a * x) * A.dxi n r ∈ A.Fil n (r + 1)) :
    grF h A n r (algebraMap (Ainf l) (Acris l) a • z) = RingHom.id (Ainf l) a • grF h A n r z := by
  rw [grF_apply h A _ _ hm, grF_apply h A z x hx]
  exact un_smul' A n a x

theorem smul_mem_filtration_graded (A : PAlg l) (n r : ℕ) (a : Ainf l) (z : (FilF l n r).obj A) (x : A.W) (hx : fv z - A.toAcr n x * A.dxi n r ∈ A.Fil n (r + 1)) :
    fv (algebraMap (Ainf l) (Acris l) a • z) - A.toAcr n (A.sW a * x) * A.dxi n r ∈ A.Fil n (r + 1) := by
  have : fv (algebraMap (Ainf l) (Acris l) a • z) - A.toAcr n (A.sW a * x) * A.dxi n r =
      A.toAcr n (A.sW a) * (fv z - A.toAcr n x * A.dxi n r) := by
    rw [fv_smul, cris_algebraMap, map_mul]; ring
  rw [this]; exact Ideal.mul_mem_left _ _ hx

theorem grF_smul (h : RGr l) (A : PAlg l) (n r : ℕ) (a : Ainf l) (z : (FilF l n r).obj A) :
    grF h A n r (algebraMap (Ainf l) (Acris l) a • z) = RingHom.id (Ainf l) a • grF h A n r z :=
  grF_algebraMap_smul h A n r a z _ (grx_spec h z) (smul_mem_filtration_graded A n r a z _ (grx_spec h z))

def incF (A : PAlg l) (n r : ℕ) : (FilF l n (r + 1)).obj A →+ (FilF l n r).obj A where
  toFun z := mkF (fv z) (fil_succ_le' A n r (fv_mem z))
  map_zero' := rfl
  map_add' _ _ := rfl

theorem fv_incF (A : PAlg l) (n r : ℕ) (z : (FilF l n (r + 1)).obj A) : fv (incF A n r z) = fv z := rfl

theorem incF_inj (A : PAlg l) (n r : ℕ) : Function.Injective (incF A n r) := fun z z' e => fv_inj (by
  have := congrArg (fv (l := l) (A := A) (n := n) (r := r)) e
  rwa [fv_incF, fv_incF] at this)

theorem incF_smul (A : PAlg l) (n r : ℕ) (a : Ainf l) (z : (FilF l n (r + 1)).obj A) :
    incF A n r (algebraMap (Ainf l) (Acris l) a • z) = algebraMap (Ainf l) (Acris l) a • incF A n r z := rfl

theorem incF_nat {A B : PAlg l} (f : A ⟶ B) (n r : ℕ) (z : (FilF l n (r + 1)).obj A) :
    incF B n r (((FilF l n (r + 1)).map f).hom z) = ((FilF l n r).map f).hom (incF A n r z) := rfl

theorem ex_mem (h : RGr l) (A : PAlg l) (n r : ℕ) (y : (FilF l n r).obj A) (x : A.W)
    (hx : fv y - A.toAcr n x * A.dxi n r ∈ A.Fil n (r + 1)) (h0 : (Ideal.Quotient.mk (Ideal.span {(l : A.U) ^ n}) (A.th x) : A.Un n) = 0) :
    fv y ∈ A.Fil n (r + 1) := by
  have hm := ((h A n r).2 x).2 (Ideal.Quotient.eq_zero_iff_mem.1 h0)
  have : fv y = (fv y - A.toAcr n x * A.dxi n r) + A.toAcr n x * A.dxi n r := by ring
  rw [this]; exact add_mem hx hm

theorem ex1 (h : RGr l) (A : PAlg l) (n r : ℕ) (y : (FilF l n r).obj A) (x : A.W)
    (hx : fv y - A.toAcr n x * A.dxi n r ∈ A.Fil n (r + 1)) (hy : grF h A n r y = 0) : y ∈ Set.range (incF A n r) :=
  ⟨mkF (fv y) (ex_mem h A n r y x hx ((grF_apply h A y x hx).symm.trans hy)), fv_inj (fv_incF A n r _)⟩

theorem ex2 (h : RGr l) (A : PAlg l) (n r : ℕ) (w : (FilF l n (r + 1)).obj A) : grF h A n r (incF A n r w) = 0 := by
  rw [grF_apply h A _ 0 (by rw [fv_incF, map_zero, zero_mul, sub_zero]; exact fv_mem w), map_zero, map_zero]

theorem ex3 (h : RGr l) (A : PAlg l) (n r : ℕ) (y : (FilF l n r).obj A) : grF h A n r y = 0 ↔ y ∈ Set.range (incF A n r) := by
  constructor
  · exact ex1 h A n r y _ (grx_spec h y)
  · rintro ⟨w, rfl⟩
    exact ex2 h A n r w

theorem grF_exact (h : RGr l) (A : PAlg l) (n r : ℕ) : Function.Exact (incF A n r) (grF h A n r) := by
  intro y
  exact ex3 h A n r y

theorem grF_surj (h : RGr l) (A : PAlg l) (n r : ℕ) : Function.Surjective (grF h A n r) := by
  intro u
  obtain ⟨u', rfl⟩ := Ideal.Quotient.mk_surjective (I := Ideal.span {(l : A.U) ^ n}) u
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective (I := Ideal.span {A.xi}) u'
  refine ⟨mkF (A.toAcr n x * A.dxi n r) (Ideal.mul_mem_left _ _ (dxi_mem_fil' A n r)), ?_⟩
  exact grF_apply h A _ x (by rw [fv_mkF, sub_self]; exact zero_mem _)

theorem nat_mem {A B : PAlg l} (f : A ⟶ B) (n r : ℕ) (z : (FilF l n r).obj A) (x : A.W)
    (hx : fv z - A.toAcr n x * A.dxi n r ∈ A.Fil n (r + 1)) :
    fv (((FilF l n r).map f).hom z) - B.toAcr n (mapW f x) * B.dxi n r ∈ B.Fil n (r + 1) := by
  rw [fv_map, ← mapAcr_toAcr, ← mapAcr_dxi f n r, ← map_mul, ← map_sub]
  exact mapAcr_fil f n (r + 1) hx

theorem graded_naturality (h : RGr l) {A B : PAlg l} (f : A ⟶ B) (n r : ℕ) (z : (FilF l n r).obj A) (x : A.W)
    (hx : fv z - A.toAcr n x * A.dxi n r ∈ A.Fil n (r + 1)) :
    grF h B n r (((FilF l n r).map f).hom z) = ((UnF l n).map f).hom (grF h A n r z) := by
  rw [grF_apply h B _ _ (nat_mem f n r z x hx), grF_apply h A z x hx]
  exact (un_map f n x).symm

theorem grF_nat (h : RGr l) {A B : PAlg l} (f : A ⟶ B) (n r : ℕ) (z : (FilF l n r).obj A) :
    grF h B n r (((FilF l n r).map f).hom z) = ((UnF l n).map f).hom (grF h A n r z) :=
  graded_naturality h f n r z _ (grx_spec h z)

def fil0Inclusion (A : PAlg l) (n : ℕ) : (FilF l n 0).obj A →+ (AcrF l n).obj A where
  toFun z := fv z
  map_zero' := rfl
  map_add' _ _ := rfl

theorem filtration_zero_inclusion_bijective (A : PAlg l) (n : ℕ) : Function.Bijective (fil0Inclusion A n) :=
  ⟨fun _ _ e => fv_inj e, fun y => ⟨mkF (r := 0) y (by rw [GlobalTheory.CompanionTheory.FilMul.Fil_zero]; trivial), rfl⟩⟩

theorem filtration_zero_inclusion_smul (A : PAlg l) (n : ℕ) (a : Acris l) (z : (FilF l n 0).obj A) :
    fil0Inclusion A n (a • z) = RingHom.id (Acris l) a • fil0Inclusion A n z := rfl

theorem fil0Inclusion_map {A B : PAlg l} (f : A ⟶ B) (n : ℕ) (z : (FilF l n 0).obj A) :
    fil0Inclusion B n (((FilF l n 0).map f).hom z) = ((AcrF l n).map f).hom (fil0Inclusion A n z) := rfl

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SmulMemFiltrationGraded =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.UDAuxFil =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.UDAuxFil", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesUnOne\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ResKill\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SemilinearOfAdditive\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SmulMemFiltrationGraded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory TensorProduct GroundTheory.PAdicHodge CrystallineSemistableComparison.CH

namespace CrystallineSemistableComparison.D

open PAlg

variable (l : ℕ) [Fact l.Prime]

theorem des_Fil_zero (hA : ∀ n k, Des (AcrF l n) (algebraMap (Ainf l) (Acris l) (rtW l k))) (n k : ℕ) :
    Des (FilF l n 0) (algebraMap (Ainf l) (Acris l) (rtW l k)) :=
  (des_semi (RingHom.id (Acris l)) (testι l) (FilF l n 0) (AcrF l n) (fun A => fil0Inclusion A n)
    (fun A a x => filtration_zero_inclusion_smul A n a x) (fun A => filtration_zero_inclusion_bijective A n) (fun f x => fil0Inclusion_map f n x) _).2 (hA n k)

theorem des_Fil_succ (h : RIn l) (n r k : ℕ) (ih : Des (FilF l n r) (algebraMap (Ainf l) (Acris l) (rtW l (k + 2)))) :
    Des (FilF l n (r + 1)) (algebraMap (Ainf l) (Acris l) (rtW l k)) := by
  have hs := (des_ses (algebraMap (Ainf l) (Acris l)) (algebraMap (Ainf l) (Acris l)) (RingHom.id (Ainf l)) (testι l)
    (FilF l n (r + 1)) (FilF l n r) (UnF l n) (fun A => incF A n r) (fun A => grF h.2.2.2.2 A n r)
    (fun A a x => incF_smul A n r a x) (fun A a x => grF_smul h.2.2.2.2 A n r a x)
    (fun f x => incF_nat f n r x) (fun f x => grF_nat h.2.2.2.2 f n r x)
    (fun A => incF_inj A n r) (fun A => grF_exact h.2.2.2.2 A n r) (fun A => grF_surj h.2.2.2.2 A n r) (rtW l (k + 2))).2 ih
    (des_Un l h.1 h.2.2.2.1 n (k + 2))
  exact des_span (testι l) (FilF l n (r + 1)) {algebraMap (Ainf l) (Acris l) (rtW l (k + 2) ^ 3)} (by
    rintro a rfl; exact Or.inl hs) _ (Ideal.mem_span_singleton.2 (map_dvd _ (rtW_dvd l k).1))

theorem des_Fil_of (h : RIn l) (hA : ∀ n k, Des (AcrF l n) (algebraMap (Ainf l) (Acris l) (rtW l k))) (n r k : ℕ) :
    Des (FilF l n r) (algebraMap (Ainf l) (Acris l) (rtW l k)) := by
  induction r generalizing k with
  | zero => exact des_Fil_zero l hA n k
  | succ r ih => exact des_Fil_succ l h n r k (ih (k + 2))

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.UDAuxFil =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesAcrZero =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesAcrZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesTens\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesUnOne\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ResKill\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SemilinearOfAdditive\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.UDAuxFil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory TensorProduct GroundTheory.PAdicHodge CrystallineSemistableComparison.CH

universe w v u v' u' v'' u''

namespace CrystallineSemistableComparison.D

variable (l : ℕ) [Fact l.Prime]

theorem acr_zero_eq (A : PAlg l) (x : A.Acr 0) : x = 0 := by
  have h1 : (1 : A.Acr 0) = 0 := by simpa using A.pow_l_acr 0
  rw [← mul_one x, h1, mul_zero]

theorem des_Acr_zero (s : Acris l) : Des (AcrF l 0) s :=
  des_span (testι l) (AcrF l 0) {s} (fun _ _ => Or.inr fun A x => by
    have hx : x = 0 := acr_zero_eq l A x
    rw [hx, smul_zero]) s (Ideal.subset_span rfl)

theorem des_Acr_one (h : ObFacts l) (h1 : RAcr1 l) (k : ℕ) :
    Des (AcrF l 1) (algebraMap (Ainf l) (Acris l) (rtW l k)) := by
  obtain ⟨N, _, _, M, τ, hN, hτ, hn⟩ := h1
  have h0 := des_tens l h N M hN k
  let σ : Ainf l →+* Ob l := WittVector.constantCoeff
  have e1 : Des (toPf l ⋙ tensF l (Ob l) N ⋙ ModuleCat.restrictScalars σ) (rtW l k) := by
    refine (des_semi σ (testι l) (toPf l ⋙ tensF l (Ob l) N ⋙ ModuleCat.restrictScalars σ) (toPf l ⋙ tensF l (Ob l) N)
      (fun A => AddMonoidHom.id _) (fun A a x => rfl) (fun A => Function.bijective_id) (fun f x => rfl) (rtW l k)).2 ?_
    have hc : σ (rtW l k) = rt l k := (rtW_dvd l k).2
    rw [hc]; exact h0
  refine (des_semi (algebraMap (Ainf l) (Acris l)) (testι l) (toPf l ⋙ tensF l (Ob l) N ⋙ ModuleCat.restrictScalars σ)
    (AcrF l 1) (fun A => (τ A).toAddMonoidHom) (fun A a x => ?_) (fun A => (τ A).bijective) (fun f x => hn _ _ f x) (rtW l k)).1 e1
  refine (hτ A a x).trans ?_
  change _ = A.cris 1 (algebraMap (Ainf l) (Acris l) a) * τ A x
  rw [A.cris_algebraMap]; rfl

theorem mkAcr_surj (A : PAlg l) (m : ℕ) : Function.Surjective (A.mkAcr m) := Ideal.Quotient.mk_surjective

theorem acr_smul_eq (A : PAlg l) (m : ℕ) (a : Ainf l) (z : A.Acr m) :
    (algebraMap (Ainf l) (Acris l) a) • z = A.mkAcr m (algebraMap A.W A.Acr0 (A.sW a)) * z := by
  rw [Algebra.smul_def]; exact congrArg (· * z) (A.cris_algebraMap m a)

theorem des_span_dvd {R : Type} [CommRing R] (F : PAlg l ⥤ ModuleCat.{0} R) (a b : R) (hab : a ∣ b) (ha : Des F a) : Des F b :=
  des_span (testι l) F {a} (fun c hc => Or.inl (by rw [Set.mem_singleton_iff.1 hc]; exact ha)) b
    (Ideal.mem_span_singleton.2 hab)

theorem seq_smul (n : ℕ) (A : PAlg l) (α : A.Acr 1 →+ A.Acr (n + 1))
    (hmk : ∀ y : A.Acr0, α (A.mkAcr 1 y) = A.mkAcr (n + 1) ((l : A.Acr0) ^ n * y)) (a : Ainf l) (x : A.Acr 1) :
    α (algebraMap (Ainf l) (Acris l) a • x) = algebraMap (Ainf l) (Acris l) a • α x := by
  obtain ⟨y, rfl⟩ := mkAcr_surj l A 1 x
  rw [acr_smul_eq, acr_smul_eq, ← map_mul, hmk, hmk, ← map_mul, mul_left_comm]

theorem seq_nat (n : ℕ) {A B : PAlg l} (f : A ⟶ B) (α : A.Acr 1 →+ A.Acr (n + 1)) (α' : B.Acr 1 →+ B.Acr (n + 1))
    (hmk : ∀ y : A.Acr0, α (A.mkAcr 1 y) = A.mkAcr (n + 1) ((l : A.Acr0) ^ n * y))
    (hmk' : ∀ y : B.Acr0, α' (B.mkAcr 1 y) = B.mkAcr (n + 1) ((l : B.Acr0) ^ n * y)) (x : A.Acr 1) :
    α' (PAlg.mapAcr f 1 x) = PAlg.mapAcr f (n + 1) (α x) := by
  obtain ⟨y, rfl⟩ := mkAcr_surj l A 1 x
  change α' ((PAlg.pdOk_hom f).acr 1 (A.mkAcr 1 y)) = (PAlg.pdOk_hom f).acr (n + 1) (α (A.mkAcr 1 y))
  rw [hmk, PAlg.PdOk.acr_mk, PAlg.PdOk.acr_mk, hmk']
  simp only [map_mul, map_pow, map_natCast]

theorem red_surj (A : PAlg l) (n : ℕ) : Function.Surjective (A.red (Nat.le_succ n)) := fun x => by
  obtain ⟨y, rfl⟩ := mkAcr_surj l A n x
  exact ⟨A.mkAcr (n + 1) y, rfl⟩

theorem des_Acr_succ (h2 : RAcrSeq l) (n : ℕ)
    (h1k : ∀ k, Des (AcrF l 1) (algebraMap (Ainf l) (Acris l) (rtW l k)))
    (hnk : ∀ k, Des (AcrF l n) (algebraMap (Ainf l) (Acris l) (rtW l k))) (k : ℕ) :
    Des (AcrF l (n + 1)) (algebraMap (Ainf l) (Acris l) (rtW l k)) := by
  obtain ⟨α, hαmk, hαe⟩ := h2 n
  let σ := algebraMap (Ainf l) (Acris l)
  have := (des_ses σ σ σ (testι l) (AcrF l 1) (AcrF l (n + 1)) (AcrF l n) (fun A => α A)
    (fun A => ((redF l (Nat.le_succ n)).app A).hom.toAddMonoidHom)
    (fun A a x => seq_smul l n A (α A) (hαmk A) a x)
    (fun A a x => ((redF l (Nat.le_succ n)).app A).hom.map_smul (σ a) x)
    (fun {A B} f x => seq_nat l n f (α A) (α B) (hαmk A) (hαmk B) x)
    (fun {A B} f x => congrArg (fun g => ModuleCat.Hom.hom g x) ((redF l (Nat.le_succ n)).naturality f))
    (fun A => (hαe A).1) (fun A => (hαe A).2)
    (fun A => red_surj l A n) (rtW l (k + 2))).1 (h1k _) (hnk _)
  exact des_span_dvd l _ _ _ (map_dvd σ (rtW_dvd l k).1) this

theorem un_kill (A : PAlg l) (n : ℕ) (x : (UnF l n).obj A) : ((l : Ainf l) ^ n) • x = 0 := by
  have h0 : (l : A.Un n) ^ n = 0 := by
    rw [← map_natCast (Ideal.Quotient.mk (Ideal.span {(l : A.U) ^ n})), ← map_pow]
    exact Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _)
  refine (Algebra.smul_def (A := A.Un n) _ x).trans ?_
  rw [map_pow, map_natCast, h0, zero_mul]

theorem acr_kill (A : PAlg l) (n : ℕ) (x : A.Acr n) : algebraMap (Ainf l) (Acris l) ((l : Ainf l) ^ n) • x = 0 := by
  rw [acr_smul_eq]
  simp only [map_pow, map_natCast]
  rw [A.pow_l_acr, zero_mul]

theorem fil_kill (A : PAlg l) (n r : ℕ) (x : (FilF l n r).obj A) :
    algebraMap (Ainf l) (Acris l) ((l : Ainf l) ^ n) • x = 0 :=
  Subtype.ext (acr_kill l A n x.1)

theorem des_of_map {R : Type} [CommRing R] (F : PAlg l ⥤ ModuleCat.{0} R) (σ : Ainf l →+* R) (n : ℕ)
    (hk : ∀ (A : PAlg l) (x : F.obj A), σ ((l : Ainf l) ^ n) • x = 0) (hr : ∀ k, Des F (σ (rtW l k)))
    (s : Ainf l) (hs : s ∈ Ideal.span (insert ((l : Ainf l) ^ n) (Set.range (rtW l)))) : Des F (σ s) := by
  have hm := Ideal.mem_map_of_mem σ hs
  rw [Ideal.map_span] at hm
  refine des_span (testι l) F _ ?_ _ hm
  rintro _ ⟨b, hb, rfl⟩
  rcases hb with rfl | ⟨k, rfl⟩
  · exact Or.inr hk
  · exact Or.inl (hr k)

theorem des_Acr (h : ObFacts l) (h1 : RAcr1 l) (h2 : RAcrSeq l) (n k : ℕ) :
    Des (AcrF l n) (algebraMap (Ainf l) (Acris l) (rtW l k)) := by
  induction n generalizing k with
  | zero => exact des_Acr_zero l _
  | succ n ih => exact des_Acr_succ l h2 n (des_Acr_one l h h1) ih k

theorem des_Fil (h : RIn l) (n r k : ℕ) : Des (FilF l n r) (algebraMap (Ainf l) (Acris l) (rtW l k)) :=
  des_Fil_of l h (fun n k => des_Acr l h.1 h.2.1 h.2.2.1 n k) n r k

theorem out_of_rin (h : RIn l) : Out l := fun s hs n => by
  have hw := wm_span l h.1 s hs n
  refine ⟨?_, ?_, fun r => ?_⟩
  · exact des_of_map l (UnF l n) (RingHom.id _) n (fun A x => un_kill l A n x) (des_Un l h.1 h.2.2.2.1 n) s hw
  · exact des_of_map l (AcrF l n) (algebraMap _ _) n (fun A x => acr_kill l A n x) (des_Acr l h.1 h.2.1 h.2.2.1 n) s hw
  · exact des_of_map l (FilF l n r) (algebraMap _ _) n (fun A x => fil_kill l A n r x) (des_Fil l h n r) s hw

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesAcrZero =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.InWmTeichmullerSubOne =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.InWmTeichmullerSubOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ForD\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesAcrZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.D

variable (l : ℕ) [Fact l.Prime]

theorem out : Out l := out_of_rin l (CrystallineSemistableComparison.R.forD l)

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.InWmTeichmullerSubOne =====
