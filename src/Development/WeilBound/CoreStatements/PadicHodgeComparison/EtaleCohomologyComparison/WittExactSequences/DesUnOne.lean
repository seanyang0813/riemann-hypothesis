module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts
public import Mathlib.Algebra.Exact.Basic
public import Mathlib.RingTheory.Ideal.Quotient.Defs
public import Mathlib.RingTheory.Ideal.Span
public import Mathlib.Algebra.Ring.NonZeroDivisors
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesTens
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SemilinearOfAdditive
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ResKill
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ToPfFull

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.FlagDomainConjHostXiEqNeg, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.MulQExact, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesUnOne

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.FlagDomainConjHostXiEqNeg =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.FlagDomainConjHostXiEqNeg", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory TensorProduct GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.D

open PAlg

variable {l : ℕ} [Fact l.Prime]

theorem flagDomainConj_hostXi_eq_neg : WittVector.constantCoeff (xi0 l) = -pFlat l := by
  rw [xi0, map_sub, map_natCast, CharP.cast_eq_zero, zero_sub]
  exact congrArg Neg.neg (WittVector.teichmuller_coeff_zero l _)

theorem un_rep {A : PAlg l} {n : ℕ} (x : A.Un n) : ∃ w : A.W, x = Ideal.Quotient.mk _ (A.th w) := by
  obtain ⟨u, rfl⟩ := Ideal.Quotient.mk_surjective x
  obtain ⟨w, rfl⟩ := Ideal.Quotient.mk_surjective (I := Ideal.span {A.xi}) u
  exact ⟨w, rfl⟩

variable (A : PAlg l)

def rho0 : A.U →+* A.A ⧸ Ideal.span {A.pi} :=
  Ideal.Quotient.lift _ ((Ideal.Quotient.mk _).comp WittVector.constantCoeff) fun a ha => by
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 ha
    have e : WittVector.constantCoeff A.xi = -A.pi := by
      change (WittVector.map A.s (xi0 l)).coeff 0 = -A.s (pFlat l)
      rw [WittVector.map_coeff, ← map_neg, ← flagDomainConj_hostXi_eq_neg]; rfl
    rw [RingHom.comp_apply, map_mul, e]
    exact Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mul_mem_left _ _ (neg_mem (Ideal.mem_span_singleton_self _)))

def rho : A.Un 1 →+* A.A ⧸ Ideal.span {A.pi} :=
  Ideal.Quotient.lift _ (rho0 A) fun a ha => by
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 ha
    rw [map_mul, map_pow, map_natCast, ← map_natCast (Ideal.Quotient.mk (Ideal.span {A.pi})), A.natCast_l, map_zero,
      zero_pow one_ne_zero, mul_zero]

theorem rho_mk (w : A.W) : rho A (Ideal.Quotient.mk _ (A.th w)) = Ideal.Quotient.mk _ (w.coeff 0) := rfl

theorem rho_bij (hU : RU l) : Function.Bijective (rho A) := by
  refine ⟨(injective_iff_map_eq_zero _).2 fun x hx => ?_, fun y => ?_⟩
  · obtain ⟨w, rfl⟩ := un_rep x
    rw [rho_mk, Ideal.Quotient.eq_zero_iff_mem] at hx
    have := ((hU A).2 w).2 hx
    exact Ideal.Quotient.eq_zero_iff_mem.2 (by rwa [pow_one])
  · obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective y
    exact ⟨Ideal.Quotient.mk _ (A.th (WittVector.teichmuller l a)), by rw [rho_mk, WittVector.teichmuller_coeff_zero]⟩

theorem span_pi_eq : (Ideal.span {A.pi}).restrictScalars (Ob l) = (Ideal.span {pFlat l} • ⊤ : Submodule (Ob l) A.A) := by
  rw [Submodule.ideal_span_singleton_smul]
  ext x
  rw [Submodule.restrictScalars_mem, Ideal.mem_span_singleton', Submodule.mem_smul_pointwise_iff_exists]
  constructor
  · rintro ⟨c, rfl⟩
    exact ⟨c, trivial, by rw [Algebra.smul_def, mul_comm]; rfl⟩
  · rintro ⟨b, _, rfl⟩
    exact ⟨b, by rw [Algebra.smul_def, mul_comm]; rfl⟩

def kappa : (A.A ⧸ Ideal.span {A.pi}) ≃ₗ[Ob l] A.A ⧸ (Ideal.span {pFlat l} • ⊤ : Submodule (Ob l) A.A) :=
  (Submodule.Quotient.restrictScalarsEquiv (Ob l) (Ideal.span {A.pi})).symm.trans (Submodule.quotEquivOfEq _ _ (span_pi_eq A))

def tau1 : A.Un 1 →+ (Ob l ⧸ Ideal.span {pFlat l}) ⊗[Ob l] A.A :=
  ((TensorProduct.quotTensorEquivQuotSMul A.A (Ideal.span {pFlat l})).symm.toAddMonoidHom.comp
    (kappa A).toAddMonoidHom).comp (rho A).toAddMonoidHom

theorem kappa_mk (x : A.A) :
    kappa A (Ideal.Quotient.mk _ x) = Submodule.Quotient.mk (p := (Ideal.span {pFlat l} • ⊤ : Submodule (Ob l) A.A)) x := by
  rfl

theorem tau1_mk (w : A.W) : tau1 A (Ideal.Quotient.mk _ (A.th w)) = (1 : Ob l ⧸ Ideal.span {pFlat l}) ⊗ₜ[Ob l] w.coeff 0 := by
  change (TensorProduct.quotTensorEquivQuotSMul A.A (Ideal.span {pFlat l})).symm (kappa A (rho A (Ideal.Quotient.mk _ (A.th w)))) = _
  rw [rho_mk, kappa_mk]
  exact TensorProduct.quotTensorEquivQuotSMul_symm_mk _ _

theorem tau1_bijective (hU : RU l) : Function.Bijective (tau1 A) :=
  (TensorProduct.quotTensorEquivQuotSMul A.A (Ideal.span {pFlat l})).symm.bijective.comp
    ((kappa A).bijective.comp (rho_bij A hU))

theorem tau1_smul (a : Ainf l) (x : A.Un 1) :
    tau1 A (a • x) = WittVector.constantCoeff a • tau1 A x := by
  obtain ⟨w, rfl⟩ := un_rep x
  have e : a • (Ideal.Quotient.mk (Ideal.span {(l : A.U) ^ 1}) (A.th w)) =
      Ideal.Quotient.mk (Ideal.span {(l : A.U) ^ 1}) (A.th (A.sW a * w)) := by
    rw [Algebra.smul_def, IsScalarTower.algebraMap_apply (Ainf l) A.U, Ideal.Quotient.algebraMap_eq, ← map_mul, map_mul A.th]; rfl
  rw [e, tau1_mk, tau1_mk, ← TensorProduct.tmul_smul, WittVector.mul_coeff_zero, Algebra.smul_def]
  change _ ⊗ₜ[Ob l] ((WittVector.map A.s a).coeff 0 * _) = _
  rw [WittVector.map_coeff]; rfl

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.FlagDomainConjHostXiEqNeg =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.MulQExact =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.MulQExact", "h": "module\n\npublic import Mathlib.Algebra.Exact.Basic\npublic import Mathlib.RingTheory.Ideal.Quotient.Defs\npublic import Mathlib.RingTheory.Ideal.Span\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Ring.NonZeroDivisors\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison.D

section SlopeTestRemainingChoices

variable {U : Type} [CommRing U]

def mulQ (a : U) (n : ℕ) : U ⧸ Ideal.span {a ^ 1} →ₗ[U] U ⧸ Ideal.span {a ^ (n + 1)} :=
  Submodule.liftQ _ ((Ideal.span {a ^ (n + 1)}).mkQ ∘ₗ LinearMap.mulLeft U (a ^ n)) (by
    rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, LinearMap.mem_ker]
    change Ideal.Quotient.mk _ (a ^ n * a ^ 1) = 0
    rw [pow_one, ← pow_succ]
    exact Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _))

theorem mulQ_mk (a : U) (n : ℕ) (x : U) :
    mulQ a n (Ideal.Quotient.mk _ x) = Ideal.Quotient.mk _ (a ^ n * x) := rfl

theorem mulQ_inj (a : U) (ha : a ∈ nonZeroDivisors U) (n : ℕ) : Function.Injective (mulQ a n) := by
  rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
  intro x hx
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
  rw [mulQ_mk, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton'] at hx
  obtain ⟨c, hc⟩ := hx
  refine Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton'.2 ⟨c, ?_⟩)
  have hn := pow_mem ha n
  rw [pow_succ, mul_comm (a ^ n) a, ← mul_assoc, mul_comm _ (a ^ n)] at hc
  rw [pow_one]
  exact (mul_cancel_left_mem_nonZeroDivisors hn).1 hc

theorem mulQ_exact (a : U) (n : ℕ) :
    Function.Exact (mulQ a n) (Ideal.Quotient.factor (Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow a n.le_succ))) := by
  intro x
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
  rw [Ideal.Quotient.factor_mk, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton']
  constructor
  · rintro ⟨c, rfl⟩
    exact ⟨Ideal.Quotient.mk _ c, by rw [mulQ_mk, mul_comm]⟩
  · rintro ⟨z, hz⟩
    obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective z
    rw [mulQ_mk, Ideal.Quotient.eq, Ideal.mem_span_singleton'] at hz
    obtain ⟨d, hd⟩ := hz
    exact ⟨c - d * a, by rw [sub_mul, mul_assoc, ← pow_succ', hd]; ring⟩

end SlopeTestRemainingChoices

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.MulQExact =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesUnOne =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesUnOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesTens\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.FlagDomainConjHostXiEqNeg\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.MulQExact\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ResKill\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.SemilinearOfAdditive\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ToPfFull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory TensorProduct GroundTheory.PAdicHodge CrystallineSemistableComparison.CH

universe w v u v' u' v'' u''

namespace CrystallineSemistableComparison.D

variable (l : ℕ) [Fact l.Prime]

theorem rtW_dvd (k : ℕ) : rtW l (k + 2) ^ 3 ∣ rtW l k ∧ (rtW l k).coeff 0 = rt l k := by
  refine ⟨?_, WittVector.teichmuller_coeff_zero l _⟩
  have h := (isRt_rt l).1
  have e : rt l k = rt l (k + 2) ^ (l * l) := by rw [pow_mul, h (k + 1), h k]
  have h2 : 2 ≤ l := (Fact.out : l.Prime).two_le
  have hl : 3 ≤ l * l := by nlinarith
  refine ⟨WittVector.teichmuller l (rt l (k + 2) ^ (l * l - 3)), ?_⟩
  rw [rtW, rtW, e, ← map_pow, ← map_mul, ← pow_add, Nat.add_sub_cancel' hl]

theorem des_Un_one (h : ObFacts l) (hU : RU l) (k : ℕ) : Des (UnF l 1) (rtW l k) := by
  have hd := des_tens l h (Ob l ⧸ Ideal.span {pFlat l}) 1 (fun x => by
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
    change Ideal.Quotient.mk _ (pFlat l ^ 1 * y) = 0
    exact Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mul_mem_right _ _ (by rw [pow_one]; exact Ideal.mem_span_singleton_self _))) k
  have hn : ∀ {A B : PAlg l} (f : A ⟶ B) (x : (UnF l 1).obj A),
      tau1 B (((UnF l 1).map f).hom x) = ((toPf l ⋙ tensF l (Ob l) (Ob l ⧸ Ideal.span {pFlat l})).map f).hom (tau1 A x) := by
    intro A B f x
    obtain ⟨w, rfl⟩ := un_rep x
    have e : ((UnF l 1).map f).hom (Ideal.Quotient.mk _ (A.th w)) = Ideal.Quotient.mk _ (B.th (PAlg.mapW f w)) := rfl
    rw [e, tau1_mk, tau1_mk, PAlg.mapW, WittVector.map_coeff]
    rfl
  refine (des_semi WittVector.constantCoeff (testι l) (UnF l 1) (toPf l ⋙ tensF l (Ob l) (Ob l ⧸ Ideal.span {pFlat l}))
    (fun A => tau1 A) (fun A a x => tau1_smul A a x) (fun A => tau1_bijective A hU) hn (rtW l k)).2 ?_
  change DesJ _ _ ((rtW l k).coeff 0)
  rw [(rtW_dvd l k).2]
  exact hd

theorem des_Un (h : ObFacts l) (hU : RU l) (n k : ℕ) : Des (UnF l n) (rtW l k) := by
  induction n generalizing k with
  | zero =>
    refine des_span (testι l) (UnF l 0) {rtW l k} (fun a _ => Or.inr fun A x => ?_) _ (Ideal.subset_span rfl)
    have hz : ∀ z : A.Un 0, z = 0 := fun z => by
      obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective z
      exact Ideal.Quotient.eq_zero_iff_mem.2 (by rw [pow_zero, Ideal.span_singleton_one]; trivial)
    exact hz _
  | succ n ih =>
    have hα : ∀ (A : PAlg l) (a : Ainf l) (x : (UnF l 1).obj A),
        (mulQ (l : A.U) n).toAddMonoidHom (RingHom.id (Ainf l) a • x) = RingHom.id (Ainf l) a • (mulQ (l : A.U) n).toAddMonoidHom x := by
      intro A a x
      obtain ⟨u, rfl⟩ := Ideal.Quotient.mk_surjective x
      change mulQ (l : A.U) n (a • Ideal.Quotient.mk _ u) = a • mulQ (l : A.U) n (Ideal.Quotient.mk _ u)
      rw [algebra_compatible_smul A.U a, LinearMap.map_smul, ← algebra_compatible_smul]
    have hβ : ∀ (A : PAlg l) (a : Ainf l) (x : (UnF l (n + 1)).obj A),
        (Ideal.Quotient.factor (Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow (l : A.U) n.le_succ))).toAddMonoidHom
          (RingHom.id (Ainf l) a • x) = RingHom.id (Ainf l) a •
        (Ideal.Quotient.factor (Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow (l : A.U) n.le_succ))).toAddMonoidHom x := by
      intro A a x
      obtain ⟨u, rfl⟩ := Ideal.Quotient.mk_surjective x
      rfl
    have nα : ∀ {A B : PAlg l} (f : A ⟶ B) (x : (UnF l 1).obj A),
        (mulQ (l : B.U) n).toAddMonoidHom (((UnF l 1).map f).hom x) = ((UnF l (n + 1)).map f).hom ((mulQ (l : A.U) n).toAddMonoidHom x) := by
      intro A B f x
      obtain ⟨u, rfl⟩ := Ideal.Quotient.mk_surjective x
      change Ideal.Quotient.mk _ ((l : B.U) ^ n * PAlg.mapU f u) = Ideal.Quotient.mk _ (PAlg.mapU f ((l : A.U) ^ n * u))
      rw [map_mul (PAlg.mapU f), map_pow (PAlg.mapU f), map_natCast (PAlg.mapU f)]
    have nβ : ∀ {A B : PAlg l} (f : A ⟶ B) (x : (UnF l (n + 1)).obj A),
        (Ideal.Quotient.factor (Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow (l : B.U) n.le_succ))).toAddMonoidHom
          (((UnF l (n + 1)).map f).hom x) = ((UnF l n).map f).hom
        ((Ideal.Quotient.factor (Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow (l : A.U) n.le_succ))).toAddMonoidHom x) := by
      intro A B f x
      obtain ⟨u, rfl⟩ := Ideal.Quotient.mk_surjective x
      rfl
    have key := (des_ses (RingHom.id (Ainf l)) (RingHom.id _) (RingHom.id _) (testι l) (UnF l 1) (UnF l (n + 1)) (UnF l n)
      (fun A => (mulQ (l : A.U) n).toAddMonoidHom)
      (fun A => (Ideal.Quotient.factor (Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow (l : A.U) n.le_succ))).toAddMonoidHom)
      hα hβ nα nβ (fun A => mulQ_inj _ (hU A).1 n) (fun A => mulQ_exact _ n)
      (fun A y => by
        obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective y
        exact ⟨Ideal.Quotient.mk _ z, rfl⟩) (rtW l (k + 2))).1
      (des_Un_one l h hU (k + 2)) (ih (k + 2))
    exact des_span (testι l) (UnF l (n + 1)) {rtW l (k + 2) ^ 3}
      (fun a ha => Or.inl (by rw [Set.mem_singleton_iff.1 ha]; exact key)) _ (Ideal.mem_span_singleton.2 (rtW_dvd l k).1)

theorem wm_span (h : ObFacts l) (s : Ainf l) (hs : InWm l s) (n : ℕ) :
    s ∈ Ideal.span (insert ((l : Ainf l) ^ n) (Set.range (rtW l))) := by
  obtain ⟨_, _, _, h4⟩ := h
  have hr : ∀ k, rtW l k ∈ Ideal.span (insert ((l : Ainf l) ^ n) (Set.range (rtW l))) :=
    fun k => Ideal.subset_span (Set.mem_insert_of_mem _ ⟨k, rfl⟩)
  have hl : (l : Ainf l) ^ n ∈ Ideal.span (insert ((l : Ainf l) ^ n) (Set.range (rtW l))) :=
    Ideal.subset_span (Set.mem_insert _ _)
  cases n with
  | zero =>
    rw [Ideal.eq_top_of_isUnit_mem _ hl (by rw [pow_zero]; exact isUnit_one)]
    exact Submodule.mem_top
  | succ m =>
    obtain ⟨c, hc⟩ := WittVector.dvd_sub_sum_teichmuller_iterateFrobeniusEquiv_coeff s m
    rw [sub_eq_iff_eq_add] at hc
    rw [hc]
    refine add_mem (Ideal.mul_mem_right _ _ hl) (Ideal.sum_mem _ fun i _ => Ideal.mul_mem_right _ _ ?_)
    have hnu : ¬ IsUnit (((frobeniusEquiv (Ob l) l).symm ^ i) (s.coeff i)) := fun hu =>
      hs i ((isUnit_map_iff ((frobeniusEquiv (Ob l) l).symm ^ i) _).1 hu)
    obtain ⟨k, d, hd⟩ := h4 _ hnu
    rw [hd, map_mul]
    exact Ideal.mul_mem_right _ _ (hr k)

end CrystallineSemistableComparison.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.DesUnOne =====
