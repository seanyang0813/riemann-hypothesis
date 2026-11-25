module

public import Formalism.PadicSubsetSums.CentralIdempotents.CentralIdempotentIntegral
public import Mathlib.LinearAlgebra.Matrix.Trace
public import Mathlib.FieldTheory.IsAlgClosed.Spectrum
public import Mathlib.LinearAlgebra.Matrix.Charpoly.Eigs
public import Mathlib.Algebra.Algebra.Spectrum.Basic
public import Mathlib.Algebra.Polynomial.AlgebraMap
public import Mathlib.Algebra.Polynomial.Monic
public import Mathlib.Algebra.Polynomial.Roots
public import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure
public import Mathlib.RepresentationTheory.Basic
public import Formalism.SharpRestriction.LevelLetterCocycles.IntegralHeckeForms
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndLatticeTraceIntegral
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PadicSubsetSums.StableGradedCounts.TWCentralIdempotentIntegral, Formalism.PadicSubsetSums.StableGradedCounts.TWCutOperator, Formalism.SharpRestriction.LevelLetterCocycles.CommutingEndomorphismPreservesInvariants

-- ===== clump member: Formalism.PadicSubsetSums.StableGradedCounts.TWCentralIdempotentIntegral =====
-- clump-header: {"m": "Formalism.PadicSubsetSums.StableGradedCounts.TWCentralIdempotentIntegral", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndLatticeTraceIntegral\npublic import Formalism.PadicSubsetSums.CentralIdempotents.CentralIdempotentIntegral\npublic import Mathlib.LinearAlgebra.Matrix.Trace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.FieldTheory.IsAlgClosed.Spectrum\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Charpoly.Eigs\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Algebra.Spectrum.Basic\npublic import Mathlib.Algebra.Polynomial.AlgebraMap\npublic import Mathlib.Algebra.Polynomial.Monic\npublic import Mathlib.Algebra.Polynomial.Roots\npublic import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial

namespace Formalism.IrreducibleCountingLemmas.TW

theorem isIntegral_trace_of_isIntegral {K n : Type} [Field K] [Fintype n] [DecidableEq n]
    (M : Matrix n n K) (hM : IsIntegral ℤ M) : IsIntegral ℤ M.trace := by
  apply GlobalTheory.LieDisc.isIntegral_trace_of_isIntegral_matrix <;> assumption

theorem central_idempotent_integral_twist : CentralIdempotentIntegral := by
  intro K _ _ G _ _ e he hc g
  classical
  set x : MonoidAlgebra K G := e * MonoidAlgebra.single g⁻¹ 1 with hx
  have hpow : ∀ k : ℕ, x ^ (k + 1) = e * MonoidAlgebra.single (g⁻¹ ^ (k + 1)) 1 := by
    intro k
    induction k with
    | zero => simp [hx]
    | succ k ih =>
      rw [pow_succ, ih, hx, mul_assoc, ← mul_assoc (MonoidAlgebra.single _ _) e, ← hc,
        mul_assoc, ← mul_assoc e e, he, MonoidAlgebra.single_mul_single, ← pow_succ, one_mul]
  have hcard : 0 < Fintype.card G := Fintype.card_pos
  have hxe : x ^ Fintype.card G = e := by
    obtain ⟨k, hk⟩ := Nat.exists_eq_succ_of_ne_zero hcard.ne'
    rw [hk, Nat.succ_eq_add_one, hpow, ← Nat.succ_eq_add_one, ← hk, pow_card_eq_one,
      ← MonoidAlgebra.one_def, mul_one]
  have hei : IsIntegral ℤ e := by
    refine ⟨X ^ 2 - X, monic_X_pow_sub (by simp), ?_⟩
    simp [pow_two, he]
  have hxi : IsIntegral ℤ x := IsIntegral.of_pow hcard (hxe ▸ hei)
  have hMi : IsIntegral ℤ (Algebra.leftMulMatrix (MonoidAlgebra.basis G K) x) :=
    hxi.map (A := K) (Algebra.leftMulMatrix (MonoidAlgebra.basis G K))
  have htr : (Algebra.leftMulMatrix (MonoidAlgebra.basis G K) x).trace
      = (Fintype.card G : K) * e.coeff g := by
    have : ∀ i : G, Algebra.leftMulMatrix (MonoidAlgebra.basis G K) x i i = e.coeff g := by
      intro i
      rw [Algebra.leftMulMatrix_eq_repr_mul, MonoidAlgebra.basis_apply]
      change (x * MonoidAlgebra.single i 1).coeff i = _
      simp [hx]
    simp [Matrix.trace, this]
  rw [← htr]
  exact isIntegral_trace_of_isIntegral _ hMi

end Formalism.IrreducibleCountingLemmas.TW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PadicSubsetSums.StableGradedCounts.TWCentralIdempotentIntegral =====

-- ===== clump member: Formalism.PadicSubsetSums.StableGradedCounts.TWCutOperator =====
-- clump-header: {"m": "Formalism.PadicSubsetSums.StableGradedCounts.TWCutOperator", "h": "module\n\npublic import Mathlib.RepresentationTheory.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.IrreducibleCountingLemmas.TW

theorem asAlgebraHom_apply_eq_sum {K G V : Type} [Field K] [Group G] [AddCommGroup V] [Module K V]
    (ρ : Representation K G V) (x : MonoidAlgebra K G) (v : V) :
    ρ.asAlgebraHom x v = ∑ g ∈ x.coeff.support, x.coeff g • ρ g v := by
  rw [Representation.asAlgebraHom_def, MonoidAlgebra.lift_apply, Finsupp.sum,
    LinearMap.sum_apply]
  rfl

end Formalism.IrreducibleCountingLemmas.TW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PadicSubsetSums.StableGradedCounts.TWCutOperator =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.CommutingEndomorphismPreservesInvariants =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.CommutingEndomorphismPreservesInvariants", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IntegralHeckeForms\npublic import Formalism.PadicSubsetSums.CentralIdempotents.CentralIdempotentIntegral\npublic import Formalism.PadicSubsetSums.StableGradedCounts.TWCentralIdempotentIntegral\npublic import Formalism.PadicSubsetSums.StableGradedCounts.TWCutOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open scoped TensorProduct

namespace Formalism.MainNotions.IntegralHeckeForms

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} (Y : NExp D.R D.host D.what₂ D.LL0 N X)

namespace Idx

open Formalism.IrreducibleCountingLemmas.TW (relLen)
open Formalism.MainNotions.IntegralHeckeForms (IsLatIn lenR)

section Comm

variable {R W : Type} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] [AddCommGroup W] [Module R W]

end Comm

end Idx

namespace Idx

open Formalism.IrreducibleCountingLemmas.TW (relLen)
open Formalism.MainNotions.IntegralHeckeForms (IsLatIn lenR)

section BaseChange

variable {R R' W W' : Type} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
  [CommRing R'] [IsDomain R'] [IsDiscreteValuationRing R'] [Algebra R R']
  [AddCommGroup W] [Module R W] [AddCommGroup W'] [Module R W'] [Module R' W'] [IsScalarTower R R' W']

variable {ι : W →ₗ[R] W'}

variable (hι : IsBaseChange R' ι)


variable {ϖ : R} {ϖ' : R'} {u : R'ˣ} {e : ℕ}



end BaseChange

end Idx

namespace Idx

open Formalism.IrreducibleCountingLemmas.TW (relLen)
open Formalism.MainNotions.IntegralHeckeForms (IsLatIn lenR)

section Transfer

variable {O Ok O' Fm : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  [CommRing Ok] [IsDomain Ok] [IsDiscreteValuationRing Ok] [CommRing O'] [IsDomain O']
  [IsDiscreteValuationRing O'] [Algebra O Ok] [Algebra Ok O'] [Algebra O O'] [IsScalarTower O Ok O']
  [AddCommGroup Fm] [Module O Fm]


end Transfer

end Idx

namespace Idx

open Formalism.IrreducibleCountingLemmas.TW (relLen)
open Formalism.MainNotions.IntegralHeckeForms (IsLatIn lenR)

section More

variable {R W : Type} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] [AddCommGroup W] [Module R W]

end More

end Idx

instance neZero_g (k : Fin 2) : NeZero (D.host.g k) := ⟨(D.host.g_prime k).ne_zero⟩

instance finite_levelGroup (N : NData D.R D.host D.what₂) : Finite (G0g N) := by
  unfold G0g
  infer_instance

theorem natCard_codeWordStages_finiteGroup_eq (N : NData D.R D.host D.what₂) : Nat.card (G0g N) = D.what₂.restRowsFiniteGroupCard := by
  unfold G0g
  rw [Nat.card_pi, Fintype.prod_sigma, N.restN_card_levelGroup_eq]
  refine Finset.prod_congr rfl fun k _ => ?_
  show ∏ _y : N.PlG k, Nat.card (GL (Fin D.R.r) (ZMod (D.host.g k))) = _
  rw [Finset.prod_const, Finset.card_univ, N.card_PlG]

def repG (i : X.Tw) (j : ℕ) (b : Bool) : Representation (FractionRing (X.O i)) (G0g N) (Y.Fm i j b) :=
  LinearEquiv.automorphismGroup.toLinearMapMonoidHom.comp (Y.actG i j b)

theorem repG_apply (i : X.Tw) (j : ℕ) (b : Bool) (g : G0g N) (x : Y.Fm i j b) :
    repG Y i j b g x = Y.actG i j b g x := rfl

theorem eG_eq (i : X.Tw) (j : ℕ) (b : Bool) : eG Y i j b = (repG Y i j b).asAlgebraHom (Y.eAlg i b) := rfl

theorem eAlg_integral (i : X.Tw) (b : Bool) [CharZero (FractionRing (X.O i))] :
    ∃ c : MonoidAlgebra (X.O i) (G0g N),
      MonoidAlgebra.map (algebraMap (X.O i) (FractionRing (X.O i))).toAddMonoidHom c =
        ((D.what₂.restRowsFiniteGroupCard : ℕ) : FractionRing (X.O i)) • Y.eAlg i b := by
  classical
  let _ : Fintype (G0g N) := Fintype.ofFinite _
  have hcard : Fintype.card (G0g N) = D.what₂.restRowsFiniteGroupCard := by
    rw [← Nat.card_eq_fintype_card, natCard_codeWordStages_finiteGroup_eq]
  have hint : ∀ g : G0g N, ∃ o : X.O i, algebraMap (X.O i) (FractionRing (X.O i)) o =
      ((D.what₂.restRowsFiniteGroupCard : ℕ) : FractionRing (X.O i)) * (Y.eAlg i b).coeff g := by
    intro g
    have h := Formalism.IrreducibleCountingLemmas.TW.central_idempotent_integral_twist (FractionRing (X.O i)) (G0g N) (Y.eAlg i b)
      (Y.eAlg_idem i b) (Y.eAlg_central i b) g
    rw [hcard] at h
    have hO : IsIntegral (X.O i) (((D.what₂.restRowsFiniteGroupCard : ℕ) : FractionRing (X.O i)) * (Y.eAlg i b).coeff g) := by
      obtain ⟨p, hp, he⟩ := h
      refine ⟨p.map (Int.castRingHom (X.O i)), hp.map _, ?_⟩
      rw [Polynomial.eval₂_map]
      exact (congrArg (fun f => Polynomial.eval₂ f _ p) (RingHom.ext_int _ _)).trans he
    exact IsIntegrallyClosed.isIntegral_iff.1 hO
  choose o ho using hint
  refine ⟨MonoidAlgebra.ofCoeff (Finsupp.equivFunOnFinite.symm o), ?_⟩
  ext g
  simp [MonoidAlgebra.coeff_map, ho]

theorem eG_idem (i : X.Tw) (j : ℕ) (b : Bool) (x : Y.Fm i j b) :
    eG Y i j b (eG Y i j b x) = eG Y i j b x := by
  rw [eG_eq, ← Module.End.mul_apply, ← map_mul, Y.eAlg_idem]

theorem eG_comm (i : X.Tw) (j : ℕ) (b : Bool) (g : G0g N) (x : Y.Fm i j b) :
    Y.actG i j b g (eG Y i j b x) = eG Y i j b (Y.actG i j b g x) := by
  rw [← repG_apply, ← repG_apply, eG_eq, ← Representation.asAlgebraHom_single_one (repG Y i j b) g,
    ← Module.End.mul_apply, ← map_mul, ← Module.End.mul_apply, ← map_mul, Y.eAlg_central]

theorem eG_mem (i : X.Tw) (j : ℕ) (b : Bool) (W : Submodule (FractionRing (X.O i)) (Y.Fm i j b))
    (hW : GStable Y i j b W) (x : Y.Fm i j b) (hx : x ∈ W) : eG Y i j b x ∈ W := by
  rw [eG_eq, Formalism.IrreducibleCountingLemmas.TW.asAlgebraHom_apply_eq_sum]
  exact Submodule.sum_mem _ fun g _ => W.smul_mem _ (hW g x hx)

theorem eG_irred (i : X.Tw) (j : ℕ) (b : Bool) (W : Submodule (FractionRing (X.O i)) (Y.Fm i j b))
    (hW : GIrred Y i j b W) : (∀ x ∈ W, eG Y i j b x = x) ∨ (∀ x ∈ W, eG Y i j b x = 0) := by
  obtain ⟨_, hst, hirr⟩ := hW
  have hle : W.map (eG Y i j b) ≤ W := by
    rintro _ ⟨x, hx, rfl⟩
    exact eG_mem Y i j b W hst x hx
  have hst' : GStable Y i j b (W.map (eG Y i j b)) := by
    rintro g _ ⟨x, hx, rfl⟩
    exact ⟨Y.actG i j b g x, hst g x hx, (eG_comm Y i j b g x).symm⟩
  rcases hirr _ hle hst' with h | h
  · right
    intro x hx
    have : eG Y i j b x ∈ W.map (eG Y i j b) := ⟨x, hx, rfl⟩
    rw [h] at this
    exact (Submodule.mem_bot _).1 this
  · left
    intro x hx
    rw [← h] at hx
    obtain ⟨y, _, rfl⟩ := hx
    exact eG_idem Y i j b y

def HeckeCommutesLevelGroup : Prop :=
  ∀ (i : X.Tw), X.NonzeroIndexPlace i → ∀ (b : Bool), ∀ j ∈ Finset.Icc 1 D.R.m, ∀ g k P, HkIdx i k P →
    (Y.actG i j b g).toLinearMap ∘ₗ Y.hkF i j b k P = Y.hkF i j b k P ∘ₗ (Y.actG i j b g).toLinearMap

theorem admissibleGoodIdempotent_iff_reduced [∀ i : X.Tw, CharZero (FractionRing (X.O i))] : GroupAlgebraIntegrality Y ↔ HeckeCommutesLevelGroup Y := by
  constructor
  · intro h i hi b j hj
    exact ((h i hi b).2 j hj).1
  · intro h i hi b
    exact ⟨eAlg_integral Y i b, fun j hj => ⟨h i hi b j hj, fun _ W _ hW => eG_irred Y i j b W hW⟩⟩

theorem mem_typeSubspace_iff_unipotent_character {i : X.Tw} {j : ℕ} {b : Bool} (x : Y.Fm i j b) :
    x ∈ Fm0 Y i j b ↔ ∀ u : Y.U, Y.actG i j b u x =
      ((Y.psiU i b u : (FractionRing (X.O i))ˣ) : FractionRing (X.O i)) • x := by
  unfold Fm0
  simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply,
    LinearMap.id_apply, sub_eq_zero, LinearEquiv.coe_coe]

theorem AO_apply (i : X.Tw) (j : ℕ) (b : Bool) (x : Y.Fm i j b) :
    AO Y i j b x = ((D.what₂.restRowsFiniteGroupCard : ℕ) : FractionRing (X.O i)) • eG Y i j b x := by
  show ((D.what₂.restRowsFiniteGroupCard : ℕ) : X.O i) • eG Y i j b x = _
  rw [Nat.cast_smul_eq_nsmul, Nat.cast_smul_eq_nsmul]

theorem card_ne_zero (i : X.Tw) [CharZero (FractionRing (X.O i))] :
    ((D.what₂.restRowsFiniteGroupCard : ℕ) : FractionRing (X.O i)) ≠ 0 :=
  Nat.cast_ne_zero.2 D.what₂.restRowsFiniteGroupCard_pos.ne'

section Lat

open Formalism.IrreducibleCountingLemmas

theorem sIdx_eq {R W : Type} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] [AddCommGroup W]
    [Module R W] (l : ℕ) (M N' : Submodule R W) :
    sIdx l M N' = (TW.sIdx M N' : ℝ) / ((IsDiscreteValuationRing.addVal R (l : R)).toNat : ℝ) := by
  unfold sIdx lenR TW.sIdx TW.relLen
  push_cast
  rw [sub_div]

variable {R : Type} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] {U : Type} [AddCommGroup U]
  [Module R U]

end Lat

section BC

open Formalism.IrreducibleCountingLemmas

theorem full_span {R U : Type*} [CommRing R] [IsDomain R] [AddCommGroup U] [Module R U]
    (N' : Submodule R U) (s : Set U) (hs : ∀ x ∈ s, ∃ c : R, c ≠ 0 ∧ c • x ∈ N') :
    ∀ x ∈ Submodule.span R s, ∃ c : R, c ≠ 0 ∧ c • x ∈ N' := by
  intro x hx
  induction hx using Submodule.span_induction with
  | mem x h => exact hs x h
  | zero => exact ⟨1, one_ne_zero, by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨c, hc, hcx⟩ := hx
    obtain ⟨d, hd, hdy⟩ := hy
    refine ⟨c * d, mul_ne_zero hc hd, ?_⟩
    rw [smul_add]
    refine N'.add_mem ?_ ?_
    · rw [mul_comm, mul_smul]; exact N'.smul_mem d hcx
    · rw [mul_smul]; exact N'.smul_mem c hdy
  | smul a x _ hx =>
    obtain ⟨c, hc, hcx⟩ := hx
    exact ⟨c, hc, by rw [smul_comm]; exact N'.smul_mem a hcx⟩

variable {O : Type} [CommRing O] [IsDomain O] {W : Type} [AddCommGroup W] [Module O W]
  [Module (FractionRing O) W] [IsScalarTower O (FractionRing O) W]

omit [IsDomain O] [Module (FractionRing O) W] [IsScalarTower O (FractionRing O) W] in
theorem baseChange_mono' (O' : Type) [CommRing O'] [Algebra O O'] {P V : Submodule O W} (h : P ≤ V) :
    P.baseChange O' ≤ V.baseChange O' := by
  rw [Submodule.baseChange_eq_span, Submodule.span_le]
  rintro _ ⟨x, hx, rfl⟩
  exact Submodule.tmul_mem_baseChange_of_mem 1 (h hx)


omit [Module (FractionRing O) W] [IsScalarTower O (FractionRing O) W] in
theorem isLatIn_baseChange (O' : Type) [CommRing O'] [IsDomain O'] [Algebra O O']
    (hinj : Function.Injective (algebraMap O O')) (P V : Submodule O W) (h : IsLatIn P V) :
    IsLatIn (P.baseChange O') (V.baseChange O') := by
  obtain ⟨⟨t, ht⟩, hle, hfull⟩ := h
  refine ⟨?_, baseChange_mono' O' hle, ?_⟩
  · rw [← ht, Submodule.baseChange_span]
    exact Submodule.fg_span (t.finite_toSet.image _)
  · rw [Submodule.baseChange_eq_span O' V]
    apply full_span
    rintro _ ⟨v, hv, rfl⟩
    obtain ⟨c, hc, hcv⟩ := hfull v hv
    refine ⟨algebraMap O O' c, (map_ne_zero_iff _ hinj).2 hc, ?_⟩
    rw [TensorProduct.mk_apply, algebraMap_smul, ← TensorProduct.tmul_smul]
    exact Submodule.tmul_mem_baseChange_of_mem 1 hcv


variable {Ok O' : Type} [CommRing Ok] [CommRing O'] [Algebra O Ok] [Algebra O O'] [Algebra Ok O']
  [IsScalarTower O Ok O']


variable (O W Ok O') in
abbrev rho : Ok ⊗[O] W →ₗ[O] O' ⊗[O] W :=
  LinearMap.rTensor W (IsScalarTower.toAlgHom O Ok O').toLinearMap








end BC

section Tw

open Formalism.MainNotions.BlochKatoReduction.Gen (psiAt PsiOk)

theorem psiAt_comp {Γ Γ' A : Type} [Group Γ] [Group Γ'] [CommGroup A] (b : Bool) (χ : Γ' →* A)
    (f : Γ →* Γ') : psiAt b (χ.comp f) = (psiAt b χ).comp f := by
  cases b <;> rfl

theorem TwOK_inv {i : X.Tw} {k : ℕ} {Q : Finset (PlE D.host)} {ψ : G D.host.E N.Om →* (X.Ok i k)ˣ}
    (h : TwOK i k Q ψ) : TwOK i k Q ψ⁻¹ := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := h
  have hk : (ψ⁻¹).ker = ψ.ker := by
    ext g
    simp [MonoidHom.mem_ker]
  refine ⟨h1, h2, by rw [hk]; exact h3, ?_, ?_, ?_, ?_⟩
  · intro g g' hg
    simp only [MonoidHom.inv_apply]
    rw [h4 g g' hg]
  · intro g
    rw [MonoidHom.inv_apply]
    exact Subgroup.inv_mem _ (h5 g)
  · intro v A hA
    rw [← h6 v A hA]
    simp
  · intro v hv A' hA' σ hσ
    rw [MonoidHom.inv_apply, h7 v hv A' hA' σ hσ, inv_one]

theorem TwOK_psiAt {i : X.Tw} {k : ℕ} {Q : Finset (PlE D.host)} {ψ : G D.host.E N.Om →* (X.Ok i k)ˣ}
    (b : Bool) (h : TwOK i k Q ψ) : TwOK i k Q (psiAt b ψ) := by
  cases b
  · exact TwOK_inv h
  · exact h

theorem TwOK_of_PsiOk {i : X.Tw} {A Q : Finset (PlE D.host)} {k' : ℕ} {ψ' : X.RCG i Q →* (X.Ok i k')ˣ}
    (h : PsiOk i A Q k' ψ') : TwOK i k' Q (ψ'.comp (X.art i Q)) := by
  classical
  obtain ⟨h1, h2, _, h4, h5, h6, h7, h8⟩ := h
  exact ⟨fun P hP => (h1 P hP).1, (Finset.disjoint_union_right.1 h2).1, h4, h5, h6, h7, h8⟩

end Tw

instance charZero_K (D : Formalism.BasicNotions.D7) (i : D.ntw.Tw) : CharZero (FractionRing (D.ntw.O i)) :=
  (D.nth.iC i).charZero

end Formalism.MainNotions.IntegralHeckeForms

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.CommutingEndomorphismPreservesInvariants =====
