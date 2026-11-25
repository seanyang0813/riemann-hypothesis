module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl
public import Mathlib.Algebra.Polynomial.Degree.Operations
public import Mathlib.Algebra.Polynomial.Eval.Coeff
public import Mathlib.Algebra.Polynomial.Eval.Degree
public import Mathlib.Algebra.Polynomial.Monic
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FaceFaceApply
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CofaceRel
public import Mathlib.Data.Nat.Prime.Defs
public import Mathlib.LinearAlgebra.TensorProduct.Tower
public import Mathlib.LinearAlgebra.DFinsupp
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectTensorProduct
public import Mathlib.Algebra.Colimit.Ring
public import Mathlib.RingTheory.TensorProduct.Basic
public import Mathlib.RingTheory.TensorProduct.Maps
public import Mathlib.Algebra.MvPolynomial.Rename
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPQ
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FrobeniusPowerSolutionLift
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OneTmulMemRangeIff
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectFrobeniusRootSolution
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PqLift
public import Mathlib.RingTheory.AdjoinRoot
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CovOfAlgHom
public import Mathlib.RingTheory.AdicCompletion.Basic
public import Mathlib.RingTheory.AdicCompletion.RingHom
public import Mathlib.Algebra.Polynomial.Laurent
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRingHomPowPrimePow
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PfFacts
public import Mathlib.GroupTheory.MonoidLocalization.Away
public import Mathlib.RingTheory.Localization.Away.Basic
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectTensorGeneratedLift
public import Mathlib.RingTheory.Valuation.ValuationRing
public import Mathlib.RingTheory.Flat.Equalizer
public import Mathlib.Algebra.Exact.Basic
public import Mathlib.Algebra.Module.Torsion.Basic
public import Mathlib.RingTheory.Flat.Basic
public import Mathlib.RingTheory.Flat.TorsionFree
public import Mathlib.Algebra.Algebra.Hom
public import Mathlib.LinearAlgebra.TensorProduct.Map
public import Mathlib.RingTheory.Ideal.Span
public import Mathlib.LinearAlgebra.Quotient.Basic
public import Mathlib.Algebra.Polynomial.Lifts
public import Mathlib.Algebra.BigOperators.Fin
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompletionComplete
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConstOfRhoEq
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsComplNonZeroDivisor
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemPowSmulTopIff
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PfOfIsCompl
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProdLeftEqRTensor
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorPunitEqZero
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AicValOfIsColim, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AltAlt, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BijectiveAlgebraMapZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodBaseChange, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CancelLTensor, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComplVal, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DirectedSystemTrR, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsIsWP, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsKill, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRetraction, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueCompEq, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsComplExistsUnique, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LaurentEqToLaurentSubInvert, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEqZeroOfCPowMemSpan, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PqBaseChangePolynomial, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulEqZeroOfLTensorSubtypeEqZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulMemRangeLTensorOfLTensorEqZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SolvAtStage, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TmulEqZeroOfMemSpan, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TorsQuot, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitTZpow, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpHomotopy, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpPf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TensCompl

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AicValOfIsColim =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AicValOfIsColim", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Polynomial.Degree.Operations\npublic import Mathlib.Algebra.Polynomial.Eval.Coeff\npublic import Mathlib.Algebra.Polynomial.Eval.Degree\npublic import Mathlib.Algebra.Polynomial.Monic\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.Colim

theorem iota_tr {A : Type} [CommRing A] {G : ℕ → Type} [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)]
    {f : ∀ n, G n →ₐ[A] G (n + 1)} {L : Type} [CommRing L] [Algebra A L] {ι : ∀ n, G n →ₐ[A] L}
    (hc : IsColim f ι) (n : ℕ) : ∀ (k : ℕ) (x : G n), ι (n + k) (tr f n k x) = ι n x
  | 0, _ => rfl
  | k + 1, x => by
    show ι (n + k + 1) (f (n + k) (tr f n k x)) = ι n x
    rw [hc.comm, iota_tr hc n k x]

theorem aic_of_isColim {A : Type} [CommRing A] {G : ℕ → Type} [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)]
    {f : ∀ n, G n →ₐ[A] G (n + 1)} {L : Type} [CommRing L] [Algebra A L] {ι : ∀ n, G n →ₐ[A] L}
    (hc : IsColim f ι) (hA : ∀ n, AICm (f n : G n →+* G (n + 1))) : AIC L := by
  intro P hP hd
  obtain ⟨n, y, hy⟩ := hc.surj P.natDegree (fun i => P.coeff i)
  set Q : Polynomial (G n) := Polynomial.X ^ P.natDegree + ∑ i : Fin P.natDegree, Polynomial.C (y i) * Polynomial.X ^ (i : ℕ) with hQ
  have hQm : Q.Monic := Polynomial.monic_X_pow_add (Polynomial.degree_sum_fin_lt y)
  have hmap : Q.map (ι n : G n →+* L) = P := by

    rw [hQ, Polynomial.map_add (f := _), Polynomial.map_pow, Polynomial.map_X, Polynomial.map_sum]
    simp only [Polynomial.map_mul, Polynomial.map_C, Polynomial.map_pow, Polynomial.map_X, RingHom.coe_coe, hy]
    conv_rhs => rw [hP.as_sum]
    rw [Fin.sum_univ_eq_sum_range (fun i => Polynomial.C (P.coeff i) * Polynomial.X ^ i) P.natDegree]
  have hQd : 0 < Q.natDegree := by
    have := Polynomial.natDegree_map_le (f := (ι n : G n →+* L)) (p := Q)
    rw [hmap] at this; omega
  obtain ⟨x, hx⟩ := hA n Q hQm hQd
  refine ⟨ι (n + 1) x, ?_⟩
  have h2 : (Q.map (f n : G n →+* G (n + 1))).map (ι (n + 1) : G (n + 1) →+* L) = P := by
    rw [Polynomial.map_map, ← hmap]; congr 1; ext z; simp [hc.comm]
  rw [← h2]
  exact Polynomial.IsRoot.map (ι (n + 1) : G (n + 1) →+* L) hx

theorem val_of_isColim {A : Type} [CommRing A] (π : A) {G : ℕ → Type} [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)]
    {f : ∀ n, G n →ₐ[A] G (n + 1)} {L : Type} [CommRing L] [Algebra A L] {ι : ∀ n, G n →ₐ[A] L}
    (hc : IsColim f ι) (hV : ∀ n, VALm (algebraMap A (G n) π) (f n : G n →+* G (n + 1))) :
    VAL (algebraMap A L π) := by
  intro u v ⟨N, hN⟩
  obtain ⟨a, b, hab⟩ := Ideal.mem_span_pair.mp hN
  obtain ⟨n, y, hy⟩ := hc.surj 4 ![a, b, u, v]
  have h0 := hy 0; have h1 := hy 1; have h2 := hy 2; have h3 := hy 3
  simp only [Matrix.cons_val] at h0 h1 h2 h3
  obtain ⟨k, hk⟩ := hc.ker n 1 (fun _ => y 0 * y 2 + y 1 * y 3 - algebraMap A (G n) π ^ N)
    (fun _ => by simp [h0, h1, h2, h3, hab])
  have hk0 := hk 0
  set m := n + k
  set t := tr f n k
  have hspan : algebraMap A (G m) π ^ N ∈ Ideal.span {t (y 2), t (y 3)} := by
    refine Ideal.mem_span_pair.mpr ⟨t (y 0), t (y 1), ?_⟩
    have := hk0
    simp only [map_sub, map_add (f := _), map_mul, map_pow, AlgHom.commutes] at this
    exact (sub_eq_zero.mp this)
  obtain ⟨e, he, he1, he2⟩ := hV m (t (y 2)) (t (y 3)) ⟨N, hspan⟩
  have hu : ι (m + 1) (f m (t (y 2))) = u := by rw [hc.comm, iota_tr hc n k, h2]
  have hv : ι (m + 1) (f m (t (y 3))) = v := by rw [hc.comm, iota_tr hc n k, h3]
  refine ⟨ι (m + 1) e, he.map (ι (m + 1)), ?_, ?_⟩
  · rw [Ideal.mem_span_singleton] at he1 ⊢
    have := map_dvd (ι (m + 1)) he1
    simpa [map_mul, hu, hv] using this
  · rw [Ideal.mem_span_singleton] at he2 ⊢
    have := map_dvd (ι (m + 1)) he2
    simpa [map_mul, map_sub, hu, hv] using this

theorem aic_val_of_isColim : ∀ (A : Type) [CommRing A] (π : A) (G : ℕ → Type) [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)] (f : ∀ n, G n →ₐ[A] G (n + 1))(L : Type) [CommRing L] [Algebra A L] (ι : ∀ n, G n →ₐ[A] L), IsColim f ι → (∀ n, AICm (f n : G n →+* G (n + 1))) → (∀ n, VALm (algebraMap A (G n) π) (f n : G n →+* G (n + 1))) → AIC L ∧ VAL (algebraMap A L π) :=
  fun _ _ π _ _ _ _ _ _ _ _ hc hA hV => ⟨aic_of_isColim hc hA, val_of_isColim π hc hV⟩
end GlobalTheory.CompanionTheory.Colim
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AicValOfIsColim =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AltAlt =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AltAlt", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FaceFaceApply\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CofaceRel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.WpCoface

theorem alt_alt (A : Type) [CommRing A] (B : Type) [CommRing B] [Algebra A B] (K : ℕ → Type)
    [∀ n, CommRing (K n)] [∀ n, Algebra A (K n)] (ι : ∀ n, Fin n → (B →ₐ[A] K n))
    (δ : ∀ n, Fin (n + 1) → (K n →ₐ[A] K (n + 1))) (hwp : ∀ n, IsWP (ι n))
    (hδ : ∀ n k i, (δ n k).comp (ι n i) = ι (n + 1) (k.succAbove i)) (n : ℕ) (z : K n) :
    alt (δ (n + 1)) (alt (δ n) z) = 0 := by
  have hrel : ∀ (j : Fin (n + 2)) (i : Fin (n + 1)),
      δ (n + 1) (j.succAbove i) (δ n (i.predAbove j) z) = δ (n + 1) j (δ n i z) := fun j i =>
    DFunLike.congr_fun (coface_rel A B K ι δ hwp hδ n j i) z
  have hexp : alt (δ (n + 1)) (alt (δ n) z) = ∑ p : Fin (n + 2) × Fin (n + 1),
      ((-1 : ℤ) ^ (p.1 : ℕ) * (-1 : ℤ) ^ (p.2 : ℕ)) • δ (n + 1) p.1 (δ n p.2 z) := by
    rw [Fintype.sum_prod_type]

    simp only [alt, LinearMap.sum_apply, LinearMap.smul_apply, AlgHom.toLinearMap_apply, map_sum,
    map_zsmul, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => by rw [mul_comm]
  rw [hexp]
  refine Finset.sum_involution (fun p _ => (p.1.succAbove p.2, p.2.predAbove p.1)) ?_ ?_ ?_ ?_
  · rintro ⟨j, i⟩ _
    dsimp only
    rw [hrel, GlobalTheory.CatH.DSq.sign_swap, neg_smul, add_neg_cancel]
  · rintro ⟨j, i⟩ _ _ h
    exact Fin.succAbove_ne j i (congrArg Prod.fst h)
  · intro _ _; exact Finset.mem_univ _
  · rintro ⟨j, i⟩ _
    simp only [Fin.succAbove_succAbove_predAbove, Fin.predAbove_predAbove_succAbove]

end GlobalTheory.CompanionTheory.WpCoface
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AltAlt =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BijectiveAlgebraMapZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BijectiveAlgebraMapZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.Coproduct

theorem bijective_algebraMap_zero {A B K : Type} [CommRing A] [CommRing B] [CommRing K]
    [Algebra A B] [Algebra A K] {ι : Fin 0 → (B →ₐ[A] K)} (h : IsWP ι) :
    Function.Bijective (algebraMap A K) := by
  obtain ⟨z, hz, -⟩ := h.ex A (RingHom.id A) (fun i => i.elim0) (fun i => i.elim0)
  have hzx : ∀ a, z (algebraMap A K a) = a := fun a => by
    simpa using congrArg (fun f : A →+* A => f a) hz
  have hid : (algebraMap A K).comp z = RingHom.id K := by
    refine h.uniq K _ _ ?_ (fun i => i.elim0)
    ext a
    simp [hzx]
  refine Function.bijective_iff_has_inverse.mpr ⟨z, hzx, fun k => ?_⟩
  simpa using congrArg (fun f : K →+* K => f k) hid

theorem bijective_one {A B K : Type} [CommRing A] [CommRing B] [CommRing K]
    [Algebra A B] [Algebra A K] {ι : Fin 1 → (B →ₐ[A] K)} (h : IsWP ι) :
    Function.Bijective (ι 0) := by
  obtain ⟨z, hz, hy⟩ := h.ex B (algebraMap A B) (fun _ => RingHom.id B)
    (fun _ => RingHom.id_comp _)
  have hzi : ∀ b, z (ι 0 b) = b := fun b => by
    simpa using congrArg (fun f : B →+* B => f b) (hy 0)
  have hza : ∀ a, z (algebraMap A K a) = algebraMap A B a := fun a => by
    simpa using congrArg (fun f : A →+* B => f a) hz
  have hid : ((ι 0 : B →ₐ[A] K) : B →+* K).comp z = RingHom.id K := by
    refine h.uniq K _ _ ?_ (fun i => ?_)
    · ext a
      simp [hza]
    · obtain rfl : i = 0 := Subsingleton.elim _ _
      ext b
      simp [hzi]
  refine Function.bijective_iff_has_inverse.mpr ⟨z, hzi, fun k => ?_⟩
  simpa using congrArg (fun f : K →+* K => f k) hid

theorem exists_coface {A B : Type} [CommRing A] [CommRing B] [Algebra A B]
    (K : ℕ → Type) [∀ n, CommRing (K n)] [∀ n, Algebra A (K n)]
    (ι : ∀ n, Fin n → (B →ₐ[A] K n)) (h : ∀ n, IsWP (ι n)) :
    ∃ δ : ∀ n, Fin (n + 1) → (K n →ₐ[A] K (n + 1)),
      ∀ n k i, (δ n k).comp (ι n i) = ι (n + 1) (k.succAbove i) := by
  have key : ∀ (n : ℕ) (k : Fin (n + 1)), ∃ d : K n →ₐ[A] K (n + 1),
      ∀ i, d.comp (ι n i) = ι (n + 1) (k.succAbove i) := by
    intro n k
    obtain ⟨z, hz, hy⟩ := (h n).ex (K (n + 1)) (algebraMap A (K (n + 1)))
      (fun i => (ι (n + 1) (k.succAbove i) : B →+* K (n + 1)))
      (fun i => by ext a; simp)
    refine ⟨{ z with commutes' := fun a => congrArg (fun f : A →+* K (n + 1) => f a) hz },
      fun i => ?_⟩
    ext b
    exact congrArg (fun f : B →+* K (n + 1) => f b) (hy i)
  choose δ hδ using key
  exact ⟨δ, hδ⟩

theorem coproduct_low_and_coface : ∀ (A : Type) [CommRing A](B : Type) [CommRing B] [Algebra A B] (K : ℕ → Type) [∀ n, CommRing (K n)] [∀ n, Algebra A (K n)] (ι : ∀ n, Fin n → (B →ₐ[A] K n)), (∀ n, IsWP (ι n)) → Function.Bijective (algebraMap A (K 0)) ∧ Function.Bijective (ι 1 0) ∧ ∃ δ : ∀ n, Fin (n + 1) → (K n →ₐ[A] K (n + 1)), ∀ n k i, (δ n k).comp (ι n i) = ι (n + 1) (k.succAbove i) := by
  intro A _ B _ _ K _ _ ι h
  exact ⟨bijective_algebraMap_zero (h 0), bijective_one (h 1), exists_coface K ι h⟩

end GlobalTheory.CompanionTheory.Coproduct
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BijectiveAlgebraMapZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodBaseChange =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodBaseChange", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Mathlib.LinearAlgebra.TensorProduct.Tower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.GoodBaseChange

theorem good_baseChange : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A](B : Type) [CommRing B] [Algebra A B] (r : ℕ → A) (K₁ K₀ : Type) [AddCommGroup K₁] [Module A K₁] [AddCommGroup K₀] [Module A K₀] (d : K₁ →ₗ[A] K₀), Good p r d → Good p (fun k => algebraMap A B (r k)) (d.baseChange B) := by
  intro p _ A _ B _ _ r K₁ K₀ _ _ _ _ d hd
  intro C _ _ hC w hw k
  letI : Algebra A C := Algebra.compHom C (algebraMap A B)
  haveI : IsScalarTower A B C := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  let e₁ := AlgebraTensorModule.cancelBaseChange A B C C K₁
  let e₀ := AlgebraTensorModule.cancelBaseChange A B C C K₀
  have hnat : ∀ v, e₀ ((d.baseChange B).lTensor C v) = d.lTensor C (e₁ v) := by
    intro v
    induction v using TensorProduct.induction_on with
    | zero => simp
    | tmul c y =>
      induction y using TensorProduct.induction_on with
      | zero => simp
      | tmul b x =>
        simp [e₀, e₁, LinearMap.baseChange_tmul, AlgebraTensorModule.cancelBaseChange_tmul]
      | add y y' h h' => simp only [tmul_add, map_add (f := _), h, h']
    | add v v' h h' => simp only [map_add (f := _), h, h']
  have hw' : d.lTensor C (e₁ w) = 0 := by rw [← hnat, hw, map_zero]
  have hmem := hd C hC (e₁ w) hw' k
  have hsmul : r k • e₁ w = e₁ (algebraMap A B (r k) • w) := by
    rw [← algebraMap_smul C (algebraMap A B (r k)) w, map_smul, algebraMap_smul]
    rfl
  have key : ∀ u : C ⊗[A] LinearMap.ker d,
      e₁.symm ((LinearMap.ker d).subtype.lTensor C u) ∈
        LinearMap.range ((LinearMap.ker (d.baseChange B)).subtype.lTensor C) := by
    intro u
    induction u using TensorProduct.induction_on with
    | zero => simp
    | tmul c x =>
      have hx : (1 : B) ⊗ₜ[A] (x : K₁) ∈ LinearMap.ker (d.baseChange B) := by
        simp [LinearMap.baseChange_tmul]
      refine ⟨c ⊗ₜ ⟨_, hx⟩, ?_⟩
      simp [e₁, AlgebraTensorModule.cancelBaseChange_symm_tmul]
    | add u u' h h' => rw [map_add (f := _), map_add (f := _)]; exact Submodule.add_mem _ h h'
  obtain ⟨u, hu⟩ := hmem
  have := key u
  rw [hu, hsmul, LinearEquiv.symm_apply_apply] at this
  exact this

end GlobalTheory.CompanionTheory.GoodBaseChange
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodBaseChange =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CancelLTensor =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CancelLTensor", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Mathlib.LinearAlgebra.DFinsupp\npublic import Mathlib.LinearAlgebra.TensorProduct.Tower\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectTensorProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.CovComp

theorem cancel_lTensor (A : Type) [CommRing A] (B : Type) [CommRing B] [Algebra A B]
    (B₁ : Type) [CommRing B₁] [Algebra A B₁] [Algebra B B₁] [IsScalarTower A B B₁]
    {K₁ K₀ : Type} [AddCommGroup K₁] [Module A K₁] [AddCommGroup K₀] [Module A K₀]
    (d : K₁ →ₗ[A] K₀) (w : B₁ ⊗[B] (B ⊗[A] K₁)) :
    TensorProduct.AlgebraTensorModule.cancelBaseChange A B B₁ B₁ K₀ ((d.baseChange B).lTensor B₁ w) =
      d.lTensor B₁ (TensorProduct.AlgebraTensorModule.cancelBaseChange A B B₁ B₁ K₁ w) := by
  induction w with
  | add x y hx hy => simp only [map_add (f := _), hx, hy]
  | tmul b t =>
    induction t with
    | add x y hx hy => simp only [map_add (f := _), TensorProduct.tmul_add, hx, hy]
    | tmul c k => simp [TensorProduct.AlgebraTensorModule.cancelBaseChange_tmul]

theorem cov_comp : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A](B : Type) [CommRing B] [Algebra A B](B₁ : Type) [CommRing B₁] [Algebra A B₁] [Algebra B B₁] [IsScalarTower A B B₁] (r : ℕ → A), Pf p A → Pf p B → IsRt p r → Cov p r B → Cov p (fun k => algebraMap A B (r k)) B₁ → Cov p r B₁ := by
  intro p _ A _ B _ _ B₁ _ _ _ _ r hA hB hr h1 h2
  unfold Cov at h1 h2 ⊢
  intro K₁ K₀ _ _ _ _ hK₁ hK₀ d hd z hz k
  have e1 : Pf p (B ⊗[A] K₁) := PerfectRing.pf_tensor p A B K₁ hA hB hK₁
  have e0 : Pf p (B ⊗[A] K₀) := PerfectRing.pf_tensor p A B K₀ hA hB hK₀
  have e2 : Good p (fun k => algebraMap A B (r k)) (d.baseChange B) :=
    GoodBaseChange.good_baseChange p A B r K₁ K₀ d hd
  have hz' : (1 : B₁) ⊗ₜ[B] ((1 : B) ⊗ₜ[A] z) ∈ (LinearMap.lTensor B₁ (d.baseChange B)).range := by
    obtain ⟨w, hw⟩ := hz
    refine ⟨(TensorProduct.AlgebraTensorModule.cancelBaseChange A B B₁ B₁ K₁).symm w, ?_⟩
    apply (TensorProduct.AlgebraTensorModule.cancelBaseChange A B B₁ B₁ K₀).injective
    rw [cancel_lTensor, LinearEquiv.apply_symm_apply, hw]
    simp
  have hB' := h2 _ _ e1 e0 (d.baseChange B) e2 _ hz' (k + 1)
  have h3 : (1 : B) ⊗ₜ[A] (r (k + 1) • z) ∈ (LinearMap.lTensor B d).range := by
    obtain ⟨v, hv⟩ := hB'
    refine ⟨v, ?_⟩
    change (d.baseChange B) v = _
    rw [hv, algebraMap_smul, ← TensorProduct.tmul_smul]
  have h4 := h1 K₁ K₀ hK₁ hK₀ d hd (r (k + 1) • z) h3 (k + 1)
  have hp : 2 ≤ p := (Fact.out : p.Prime).two_le
  have hrk : r k = r (k + 1) ^ (p - 2) * (r (k + 1) * r (k + 1)) := by
    rw [← hr k, ← sq, ← pow_add, Nat.sub_add_cancel hp]
  rw [hrk, mul_smul, mul_smul]
  exact Submodule.smul_mem _ _ h4

end GlobalTheory.CompanionTheory.CovComp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CancelLTensor =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComplVal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComplVal", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.ComplVal

theorem side {T : Type} [CommRing T] (t : T) (hu : ∀ x : T, IsUnit (1 + t * x))
    (f f' a b w E : T) (N : ℕ) (hE : E * E = E) (hab : a * f + b * f' = t ^ N)
    (hw : E * f = t ^ (N + 1) * w) : ∃ c, c * f' = E * f := by
  obtain ⟨v, hv⟩ := (hu (-(w * a))).exists_left_inv
  have key : (1 + t * -(w * a)) * (E * f) = E * t * w * b * f' := by
    linear_combination E * hw - E * t * w * hab - f * hE
  exact ⟨v * (E * t * w * b), by linear_combination -v * key + E * f * hv⟩

theorem mid {T : Type} [CommRing T] (P Q E f F f' F' k v v' u' : T) (hP : P * P = P) (hQ : Q * Q = Q)
    (hA : P * f = P * F * v) (hB : Q * f' = Q * F' * v') (hu : v' * u' = 1)
    (hk : k * F' = P * Q * E * F) : ∃ c, c * f' = P * Q * E * f := by
  exact ⟨v * k * Q * u', by
    linear_combination v * k * u' * hB + v * k * Q * F' * hu + v * Q * hk + v * P * E * F * hQ - Q * E * hA⟩

theorem core {T : Type} [CommRing T] (t : T) (hu : ∀ x : T, IsUnit (1 + t * x))
    (f f' F F' a b s s' c c' d d' k k' E₁ E₂ E : T) (N : ℕ)
    (h₁ : E₁ * E₁ = E₁) (h₂ : E₂ * E₂ = E₂) (hE : E * E = E)
    (hab : a * f + b * f' = t ^ N)
    (hs : s * t ^ (N + 2) = f - F) (hs' : s' * t ^ (N + 2) = f' - F')
    (hc : c * t ^ (N + 1) = E₁ * F) (hc' : c' * t ^ (N + 1) = E₂ * F')
    (hd : d * F = (1 - E₁) * t ^ (N + 1)) (hd' : d' * F' = (1 - E₂) * t ^ (N + 1))
    (hk : k * F' = (1 - E₁) * (1 - E₂) * E * F)
    (hk' : k' * F = (1 - E₁) * (1 - E₂) * (1 - E) * F') :
    ∃ e : T, IsIdempotentElem e ∧ e * f ∈ Ideal.span {f'} ∧ (1 - e) * f' ∈ Ideal.span {f} := by
  obtain ⟨c₁, hc₁⟩ := GlobalTheory.CompanionTheory.ComplVal.side t hu f f' a b (c + E₁ * s * t) E₁ N h₁ hab
    (by linear_combination -E₁ * hs - hc)
  obtain ⟨c₂, hc₂⟩ := GlobalTheory.CompanionTheory.ComplVal.side t hu f' f b a (c' + E₂ * s' * t) E₂ N h₂
    (by linear_combination hab) (by linear_combination -E₂ * hs' - hc')
  have hP : (1 - E₁) * (1 - E₁) = 1 - E₁ := by linear_combination h₁
  have hQ : (1 - E₂) * (1 - E₂) = 1 - E₂ := by linear_combination h₂
  have hA : (1 - E₁) * f = (1 - E₁) * F * (1 + t * (s * d)) := by
    linear_combination -(1 - E₁) * hs - s * t ^ (N + 2) * h₁ - s * t * (1 - E₁) * hd
  have hB : (1 - E₂) * f' = (1 - E₂) * F' * (1 + t * (s' * d')) := by
    linear_combination -(1 - E₂) * hs' - s' * t ^ (N + 2) * h₂ - s' * t * (1 - E₂) * hd'
  obtain ⟨u₁, hu₁⟩ := (hu (s' * d')).exists_right_inv
  obtain ⟨u₂, hu₂⟩ := (hu (s * d)).exists_right_inv
  obtain ⟨c₃, hc₃⟩ := GlobalTheory.CompanionTheory.ComplVal.mid (1 - E₁) (1 - E₂) E f F f' F' k (1 + t * (s * d))
    (1 + t * (s' * d')) u₁ hP hQ hA hB hu₁ hk
  obtain ⟨c₄, hc₄⟩ := GlobalTheory.CompanionTheory.ComplVal.mid (1 - E₂) (1 - E₁) (1 - E) f' F' f F k' (1 + t * (s' * d'))
    (1 + t * (s * d)) u₂ hQ hP hB hA hu₂ (by linear_combination hk')
  refine ⟨E₁ + (1 - E₁) * (1 - E₂) * E, ?_, ?_, ?_⟩
  · show (E₁ + (1 - E₁) * (1 - E₂) * E) * (E₁ + (1 - E₁) * (1 - E₂) * E) = E₁ + (1 - E₁) * (1 - E₂) * E
    linear_combination (1 - 2 * (1 - E₂) * E + (1 - E₂) ^ 2 * E ^ 2) * h₁ + (1 - E₁) * E ^ 2 * h₂
      + (1 - E₁) * (1 - E₂) * hE
  · exact Ideal.mem_span_singleton'.2 ⟨c₁ + c₃, by linear_combination hc₁ + hc₃⟩
  · exact Ideal.mem_span_singleton'.2 ⟨(1 - E₁) * c₂ + c₄, by linear_combination (1 - E₁) * hc₂ + hc₄⟩

theorem compl_val : ∀ (B : Type) [CommRing B] (T : Type) [CommRing T] (π : B) (g : B →+* T), CrystallineSemistableComparison.D.IsCompl π g → VAL π → VAL (g π) := by
  intro B _ T _ π g hC hV
  unfold CrystallineSemistableComparison.D.VAL at hV ⊢
  have := hC.compl
  have hJ : g π ∈ (⊥ : Ideal T).jacobson :=
    IsAdicComplete.le_jacobson_bot (I := Ideal.span {g π}) (Ideal.mem_span_singleton_self (g π))
  have hu : ∀ x : T, IsUnit (1 + g π * x) := fun x => by
    rw [add_comm]; exact Ideal.mem_jacobson_bot.1 hJ x
  intro f₀ f₁ hN
  obtain ⟨N, hN⟩ := hN
  obtain ⟨a, b, hab⟩ := Ideal.mem_span_pair.1 hN
  obtain ⟨x₁, hx₁⟩ := hC.surj (N + 2) f₀
  obtain ⟨x₂, hx₂⟩ := hC.surj (N + 2) f₁
  obtain ⟨s, hs⟩ := Ideal.mem_span_singleton'.1 hx₁
  obtain ⟨s', hs'⟩ := Ideal.mem_span_singleton'.1 hx₂
  obtain ⟨e₁, he₁, h1a, h1b⟩ := hV x₁ (π ^ (N + 1)) ⟨N + 1, Ideal.mem_span_pair.2 ⟨0, 1, by ring⟩⟩
  obtain ⟨e₂, he₂, h2a, h2b⟩ := hV x₂ (π ^ (N + 1)) ⟨N + 1, Ideal.mem_span_pair.2 ⟨0, 1, by ring⟩⟩
  obtain ⟨c₀, hc₀⟩ := Ideal.mem_span_singleton'.1 h1a
  obtain ⟨d₀, hd₀⟩ := Ideal.mem_span_singleton'.1 h1b
  obtain ⟨c₁, hc₁⟩ := Ideal.mem_span_singleton'.1 h2a
  obtain ⟨d₁, hd₁⟩ := Ideal.mem_span_singleton'.1 h2b
  obtain ⟨P, hPdef⟩ : ∃ P : B, P = (1 - e₁) * (1 - e₂) := ⟨_, rfl⟩
  have hPP : P * P = P := by
    rw [hPdef]; linear_combination (1 - e₂) ^ 2 * he₁.eq + (1 - e₁) * he₂.eq
  have hPe : P * (1 - e₁) = P := by
    rw [hPdef]; linear_combination (1 - e₂) * he₁.eq
  obtain ⟨e, he, ha, hb⟩ := hV (P * x₁ + (1 - P)) (P * x₂) ⟨N + 1, Ideal.mem_span_pair.2
    ⟨P * d₀ + (1 - P) * π ^ (N + 1), 0, by
      linear_combination P * hd₀ + π ^ (N + 1) * hPe
        + (d₀ * x₁ - d₀ - π ^ (N + 1) * x₁ + π ^ (N + 1)) * hPP⟩⟩
  obtain ⟨m, hm⟩ := Ideal.mem_span_singleton'.1 ha
  obtain ⟨m', hm'⟩ := Ideal.mem_span_singleton'.1 hb
  have hkB : m * P * x₂ = (1 - e₁) * (1 - e₂) * e * x₁ := by
    linear_combination P * hm - (m * x₂ - e * x₁ + e) * hPP + e * x₁ * hPdef
  have hk'B : m' * P * x₁ = (1 - e₁) * (1 - e₂) * (1 - e) * x₂ := by
    linear_combination P * hm' - (m' * x₁ - m' - (1 - e) * x₂) * hPP + (1 - e) * x₂ * hPdef
  have i₁ : g e₁ * g e₁ = g e₁ := by rw [← map_mul, he₁.eq]
  have i₂ : g e₂ * g e₂ = g e₂ := by rw [← map_mul, he₂.eq]
  have i₃ : g e * g e = g e := by rw [← map_mul, he.eq]
  have hc : g c₀ * g π ^ (N + 1) = g e₁ * g x₁ := by
    have h := congrArg g hc₀; simp only [map_mul, map_pow] at h; linear_combination h
  have hc' : g c₁ * g π ^ (N + 1) = g e₂ * g x₂ := by
    have h := congrArg g hc₁; simp only [map_mul, map_pow] at h; linear_combination h
  have hd : g d₀ * g x₁ = (1 - g e₁) * g π ^ (N + 1) := by
    have h := congrArg g hd₀; simp only [map_mul, map_pow, map_sub, map_one] at h; linear_combination h
  have hd' : g d₁ * g x₂ = (1 - g e₂) * g π ^ (N + 1) := by
    have h := congrArg g hd₁; simp only [map_mul, map_pow, map_sub, map_one] at h; linear_combination h
  have hk : g m * g P * g x₂ = (1 - g e₁) * (1 - g e₂) * g e * g x₁ := by
    have h := congrArg g hkB; simp only [map_mul, map_sub, map_one] at h; linear_combination h
  have hk' : g m' * g P * g x₁ = (1 - g e₁) * (1 - g e₂) * (1 - g e) * g x₂ := by
    have h := congrArg g hk'B; simp only [map_mul, map_sub, map_one] at h; linear_combination h
  exact GlobalTheory.CompanionTheory.ComplVal.core (g π) hu f₀ f₁ (g x₁) (g x₂) a b s s' (g c₀) (g c₁) (g d₀) (g d₁)
    (g m * g P) (g m' * g P) (g e₁) (g e₂) (g e) N i₁ i₂ i₃ hab hs hs' hc hc' hd hd' hk hk'

end GlobalTheory.CompanionTheory.ComplVal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComplVal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DirectedSystemTrR =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DirectedSystemTrR", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Algebra.Colimit.Ring\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

noncomputable section

namespace GlobalTheory.CompanionTheory.ColimEx

variable {A : Type} [CommRing A] {G : ℕ → Type} [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)]
  (f : ∀ n, G n →ₐ[A] G (n + 1))

def trA (i j : ℕ) (h : i ≤ j) : G i →ₐ[A] G j :=
  Nat.leRecOn (motive := fun k => G i →ₐ[A] G k) h (fun {k} g => (f k).comp g)
    (AlgHom.id A (G i))

theorem trA_self (i : ℕ) (h : i ≤ i) : trA f i i h = AlgHom.id A (G i) :=
  Nat.leRecOn_self (motive := fun k => G i →ₐ[A] G k) _

theorem trA_succ (i k : ℕ) (h : i ≤ k) (h2 : i ≤ k + 1) :
    trA f i (k + 1) h2 = (f k).comp (trA f i k h) :=
  Nat.leRecOn_succ (motive := fun k => G i →ₐ[A] G k) h _

theorem trA_trans (i j k : ℕ) (hij : i ≤ j) (hjk : j ≤ k) (x : G i) :
    trA f j k hjk (trA f i j hij x) = trA f i k (hij.trans hjk) x := by
  induction k, hjk using Nat.le_induction with
  | base => rw [trA_self]; rfl
  | succ k hjk ih =>
    rw [trA_succ f j k hjk, trA_succ f i k (hij.trans hjk)]
    simp only [AlgHom.comp_apply, ih]

theorem tr_eq_trA (n k : ℕ) (x : G n) : tr f n k x = trA f n (n + k) (Nat.le_add_right n k) x := by
  induction k with
  | zero =>
    show tr f n 0 x = trA f n n (Nat.le_refl n) x
    rw [trA_self]; rfl
  | succ k ih =>
    have h := trA_succ f n (n + k) (Nat.le_add_right n k) (Nat.le_add_right n (k + 1))
    show f (n + k) (tr f n k x) = trA f n (n + k + 1) (Nat.le_add_right n (k + 1)) x
    rw [h, AlgHom.comp_apply, ih]

def trR (i j : ℕ) (h : i ≤ j) : G i →+* G j := (trA f i j h).toRingHom

instance directedSystem_trR : DirectedSystem G fun i j h => trR f i j h where
  map_self i x := by simp [trR, trA_self]
  map_map k j i hij hjk x := trA_trans f i j k hij hjk x

abbrev Lim := Ring.DirectLimit G fun i j h => trR f i j h

instance : Algebra A (Lim f) :=
  ((Ring.DirectLimit.of G (fun i j h => trR f i j h) 0).comp (algebraMap A (G 0))).toAlgebra

def ι (n : ℕ) : G n →ₐ[A] Lim f :=
  { Ring.DirectLimit.of G (fun i j h => trR f i j h) n with
    commutes' := fun a => by
      show Ring.DirectLimit.of G (fun i j h => trR f i j h) n (algebraMap A (G n) a) =
        Ring.DirectLimit.of G (fun i j h => trR f i j h) 0 (algebraMap A (G 0) a)
      rw [← Ring.DirectLimit.of_f (G := G) (f := fun i j h => trR f i j h) (Nat.zero_le n)
        (algebraMap A (G 0) a)]
      simp [trR] }

theorem ι_apply (n : ℕ) (x : G n) :
    ι f n x = Ring.DirectLimit.of G (fun i j h => trR f i j h) n x := rfl

theorem ι_trA (i j : ℕ) (h : i ≤ j) (x : G i) : ι f j (trA f i j h x) = ι f i x := by
  rw [ι_apply, ι_apply]
  exact Ring.DirectLimit.of_f (G := G) (f := fun i j h => trR f i j h) h x

theorem ι_tr (n k : ℕ) (x : G n) : ι f (n + k) (tr f n k x) = ι f n x := by
  rw [tr_eq_trA, ι_trA]

theorem isColim : IsColim f (ι f) := by
  refine ⟨?_, ?_, ?_⟩
  · intro n x
    have := ι_tr f n 1 x
    simpa [tr] using this
  · intro m x
    choose n y hy using fun i => Ring.DirectLimit.exists_of (x i)
    refine ⟨Finset.univ.sup n, fun i => trA f (n i) _ (Finset.le_sup (Finset.mem_univ i)) (y i),
      fun i => ?_⟩
    rw [ι_trA, ι_apply, hy]
  · intro n m y hy
    have h0 : ∀ i, ∃ j, ∃ hij : n ≤ j, trR f n j hij (y i) = 0 := fun i =>
      Ring.DirectLimit.of.zero_exact (f' := fun i j h => trR f i j h) (hy i)
    choose j hj hz using h0
    refine ⟨Finset.univ.sup fun i => j i - n, fun i => ?_⟩
    have hle : j i ≤ n + Finset.univ.sup fun i => j i - n := by
      have := Finset.le_sup (f := fun i => j i - n) (Finset.mem_univ i)
      omega
    rw [tr_eq_trA, ← trA_trans f n (j i) _ (hj i) hle]
    have : trA f n (j i) (hj i) (y i) = 0 := hz i
    rw [this, map_zero]

end GlobalTheory.CompanionTheory.ColimEx

theorem GlobalTheory.CompanionTheory.ColimEx.exists_isColim : ∀ (A : Type) [CommRing A](G : ℕ → Type) [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)] (f : ∀ n, G n →ₐ[A] G (n + 1)), ∃ (L : Type) (_ : CommRing L) (_ : Algebra A L), ∃ ι : ∀ n, G n →ₐ[A] L, IsColim f ι :=
  fun A _ G _ _ f => ⟨GlobalTheory.CompanionTheory.ColimEx.Lim f, inferInstance, inferInstance, GlobalTheory.CompanionTheory.ColimEx.ι f,
    GlobalTheory.CompanionTheory.ColimEx.isColim f⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DirectedSystemTrR =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsIsWP =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsIsWP", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.TensorProduct.Basic\npublic import Mathlib.RingTheory.TensorProduct.Maps\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.AlgCoproduct

theorem exists_isWP : ∀ (A : Type) [CommRing A](B : Type) [CommRing B] [Algebra A B] (n : ℕ),
    ∃ (K : Type) (_ : CommRing K) (_ : Algebra A K) (ι : Fin n → (B →ₐ[A] K)), IsWP ι := by
  intro A _ B _ _ n
  induction n with
  | zero =>
    refine ⟨A, inferInstance, inferInstance, fun i => i.elim0, ?_⟩
    constructor
    · intro T _ x y _
      exact ⟨x, by ext a; rfl, fun i => i.elim0⟩
    · intro T _ z z' h _
      exact h
  | succ n ih =>
    obtain ⟨K, _, _, ι, hι⟩ := ih
    refine ⟨B ⊗[A] K, inferInstance, inferInstance,
      Fin.cons Algebra.TensorProduct.includeLeft
        (fun i => (Algebra.TensorProduct.includeRight).comp (ι i)), ?_⟩
    constructor
    · intro T _ x y hy
      obtain ⟨z, hz, hzi⟩ := hι.ex T x (fun i => y i.succ) (fun i => hy i.succ)
      letI : Algebra A T := x.toAlgebra
      let f : B →ₐ[A] T := { y 0 with commutes' := fun a => RingHom.congr_fun (hy 0) a }
      let g : K →ₐ[A] T := { z with commutes' := fun a => RingHom.congr_fun hz a }
      refine ⟨(Algebra.TensorProduct.productMap f g).toRingHom, ?_, ?_⟩
      · ext a
        exact (Algebra.TensorProduct.productMap f g).commutes a
      · intro i
        refine Fin.cases ?_ (fun j => ?_) i
        · ext b
          simp [f, g]
        · ext b
          have := RingHom.congr_fun (hzi j) b
          simpa [f, g] using this
    · intro T _ z z' h hi
      have hB : ∀ b : B, z (b ⊗ₜ[A] 1) = z' (b ⊗ₜ[A] 1) := fun b => by
        simpa using RingHom.congr_fun (hi 0) b
      have hK : (z.comp (Algebra.TensorProduct.includeRight : K →ₐ[A] B ⊗[A] K).toRingHom) =
          z'.comp (Algebra.TensorProduct.includeRight : K →ₐ[A] B ⊗[A] K).toRingHom := by
        refine hι.uniq T _ _ ?_ (fun i => ?_)
        · ext a
          have := RingHom.congr_fun h a
          simpa [Algebra.TensorProduct.algebraMap_apply] using this
        · ext b
          simpa using RingHom.congr_fun (hi i.succ) b
      refine RingHom.ext fun t => ?_
      induction t using TensorProduct.induction_on with
      | zero => simp
      | tmul b k =>
        have h1 : b ⊗ₜ[A] k = (b ⊗ₜ[A] (1 : K)) * ((1 : B) ⊗ₜ[A] k) := by simp
        have h2 : z ((1 : B) ⊗ₜ[A] k) = z' ((1 : B) ⊗ₜ[A] k) := RingHom.congr_fun hK k
        rw [h1, map_mul, map_mul, hB, h2]
      | add a b ha hb => simp [ha, hb]

end GlobalTheory.CompanionTheory.AlgCoproduct
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsIsWP =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsKill =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsKill", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Algebra.MvPolynomial.Rename\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPQ\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FrobeniusPowerSolutionLift\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OneTmulMemRangeIff\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectFrobeniusRootSolution\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PqLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.BigStep

def gens {A : Type} [CommRing A] (𝓔 : Set (Set (MvPolynomial (Fin 3) A))) :
    Set (MvPolynomial (𝓔 × Fin 3) A) :=
  {f | ∃ (E : 𝓔) (q : MvPolynomial (Fin 3) A), q ∈ E.1 ∧
    f = MvPolynomial.rename (fun t => (E, t)) q}

theorem exists_kill (p : ℕ) {A : Type} [CommRing A] (r : ℕ → A)
    {𝓔 : Set (Set (MvPolynomial (Fin 3) A))}
    (hfin : ∀ J : Set (Set (MvPolynomial (Fin 3) A)), J.Finite → J ⊆ 𝓔 →
      ∃ (B : Type) (_ : CommRing B) (_ : Algebra A B), Pf p B ∧ Cov p r B ∧
        ∀ E ∈ J, Pt (algebraMap A B) E)
    (F : Finset (MvPolynomial (𝓔 × Fin 3) A)) (hF : (F : Set _) ⊆ gens 𝓔) :
    ∃ (B : Type) (_ : CommRing B) (_ : Algebra A B), Pf p B ∧ Cov p r B ∧
      ∃ τ : MvPolynomial (𝓔 × Fin 3) A →ₐ[A] B, ∀ g ∈ F, τ g = 0 := by
  classical
  have hg : ∀ g : {g // g ∈ F}, ∃ (E : 𝓔) (q : MvPolynomial (Fin 3) A), q ∈ E.1 ∧
      g.1 = MvPolynomial.rename (fun t => (E, t)) q := fun g => hF g.2
  choose Eg qg hq hgq using hg
  obtain ⟨B₁, i1, i2, hP, hC, hpt⟩ := hfin (Set.range fun g : {g // g ∈ F} => (Eg g).1)
    (Set.finite_range _) (by rintro _ ⟨g, rfl⟩; exact (Eg g).2)
  have hpt' : ∀ E : 𝓔, ∃ y : Fin 3 → B₁, E.1 ∈ (Set.range fun g : {g // g ∈ F} => (Eg g).1) →
      ∀ q ∈ E.1, MvPolynomial.eval₂ (algebraMap A B₁) y q = 0 := by
    intro E
    by_cases h : E.1 ∈ (Set.range fun g : {g // g ∈ F} => (Eg g).1)
    · obtain ⟨y, hy⟩ := hpt _ h
      exact ⟨y, fun _ => hy⟩
    · exact ⟨0, fun h' => absurd h' h⟩
  choose y hy using hpt'
  refine ⟨B₁, i1, i2, hP, hC, MvPolynomial.aeval (fun v => y v.1 v.2), ?_⟩
  intro g hg
  have e := hgq ⟨g, hg⟩
  simp only at e
  rw [e, MvPolynomial.aeval_rename, MvPolynomial.aeval_def]
  exact hy _ ⟨⟨g, hg⟩, rfl⟩ _ (hq ⟨g, hg⟩)

theorem big_step : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A] (r : ℕ → A) (𝓔 : Set (Set (MvPolynomial (Fin 3) A))), Pf p A → (∀ J : Set (Set (MvPolynomial (Fin 3) A)), J.Finite → J ⊆ 𝓔 → ∃ (B : Type) (_ : CommRing B) (_ : Algebra A B), Pf p B ∧ Cov p r B ∧ ∀ E ∈ J, Pt (algebraMap A B) E) → ∃ (B : Type) (_ : CommRing B) (_ : Algebra A B), Pf p B ∧ Cov p r B ∧ (∀ E ∈ 𝓔, Pt (algebraMap A B) E) ∧ ∀ (T : Type) [CommRing T] (x : A →+* T), Pf p T → (∀ E ∈ 𝓔, Pt x E) → ∃ y : B →+* T, y.comp (algebraMap A B) = x := by
  classical
  intro p _ A _ r 𝓔 hA hfin
  have hpS : (p : MvPolynomial (𝓔 × Fin 3) A) = 0 := by
    have := congrArg (algebraMap A (MvPolynomial (𝓔 × Fin 3) A)) hA.char
    simpa using this
  obtain ⟨B, instB, i, hQ⟩ := GlobalTheory.CompanionTheory.PerfClos.exists_PQ p (MvPolynomial (𝓔 × Fin 3) A)
    (Ideal.span (gens 𝓔)) hpS
  letI instAB : Algebra A B := (i.comp MvPolynomial.C).toAlgebra
  let iA : MvPolynomial (𝓔 × Fin 3) A →ₐ[A] B := { i with commutes' := fun _ => rfl }
  refine ⟨B, instB, instAB, hQ.pf, ?_, ?_, ?_⟩
  · apply GlobalTheory.CompanionTheory.CovCmp.cov_of_solv
    intro m n a c hS
    obtain ⟨k, s, hs⟩ := GlobalTheory.CompanionTheory.PerfectQuotient.solv_pow p A (MvPolynomial (𝓔 × Fin 3) A) B iA
      (Ideal.span (gens 𝓔)) m n a c hA.char hQ hS
    have hT := fun t => Submodule.mem_span_finite_of_mem_span (hs t)
    choose G hGs hGm using hT
    obtain ⟨B₁, i1, i2, hP, hC, τ, hτ⟩ := exists_kill p r hfin (Finset.univ.biUnion G) (by
      intro g hg
      obtain ⟨t, -, ht⟩ := Finset.mem_biUnion.1 (Finset.mem_coe.1 hg)
      exact hGs t ht)
    refine ⟨B₁, i1, i2, hC,
      GlobalTheory.CompanionTheory.PerfectRing.solv_of_solv_pow p A B₁ m n k a c hP ⟨fun j => τ (s j), fun t => ?_⟩⟩
    have hle : Ideal.span (G t : Set (MvPolynomial (𝓔 × Fin 3) A)) ≤ RingHom.ker τ :=
      Ideal.span_le.2 fun g hg =>
        hτ g (Finset.mem_biUnion.2 ⟨t, Finset.mem_univ t, Finset.mem_coe.1 hg⟩)
    have h0 := hle (hGm t)

    rw [RingHom.mem_ker, map_sub, map_sum, AlgHom.commutes, sub_eq_zero] at h0
    simpa only [map_smul] using h0
  · intro E hE
    refine ⟨fun t => i (MvPolynomial.X ((⟨E, hE⟩ : 𝓔), t)), fun q hq => ?_⟩
    have hz : i (MvPolynomial.rename (fun t => ((⟨E, hE⟩ : 𝓔), t)) q) = 0 :=
      (hQ.ker _).2 ⟨0, by
        have h : MvPolynomial.rename (fun t => ((⟨E, hE⟩ : 𝓔), t)) q ∈ Ideal.span (gens 𝓔) :=
          Ideal.subset_span ⟨⟨E, hE⟩, q, hq, rfl⟩
        simpa using h⟩
    have hi : i = MvPolynomial.eval₂Hom (i.comp MvPolynomial.C) (fun v => i (MvPolynomial.X v)) :=
      MvPolynomial.ringHom_ext (by simp) (by simp)
    have hz' : MvPolynomial.eval₂Hom (i.comp MvPolynomial.C) (fun v => i (MvPolynomial.X v))
        (MvPolynomial.rename (fun t => ((⟨E, hE⟩ : 𝓔), t)) q) = 0 := by
      rw [← hi]; exact hz
    rw [MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_rename] at hz'
    exact hz'
  · intro T _ x hT hpts
    have hpts' : ∀ E : 𝓔, ∃ y : Fin 3 → T, ∀ q ∈ E.1, MvPolynomial.eval₂ x y q = 0 :=
      fun E => hpts E.1 E.2
    choose y hy using hpts'
    have hle : Ideal.span (gens 𝓔) ≤
        RingHom.ker (MvPolynomial.eval₂Hom x (fun v : 𝓔 × Fin 3 => y v.1 v.2)) := by
      refine Ideal.span_le.2 ?_
      rintro _ ⟨E, q, hq, rfl⟩
      show MvPolynomial.eval₂Hom x (fun v : 𝓔 × Fin 3 => y v.1 v.2) _ = 0
      rw [MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_rename]
      exact hy E q hq
    obtain ⟨ψ, hψ, -⟩ := GlobalTheory.CompanionTheory.PerfectRing.pq_lift p _ B T i _
      (MvPolynomial.eval₂Hom x (fun v : 𝓔 × Fin 3 => y v.1 v.2)) hQ hT (fun g hg => hle hg)
    refine ⟨ψ, RingHom.ext fun a => ?_⟩
    have := RingHom.congr_fun hψ (MvPolynomial.C a)
    show ψ (i (MvPolynomial.C a)) = x a
    simpa using this

end GlobalTheory.CompanionTheory.BigStep
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsKill =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRetraction =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRetraction", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.RingTheory.AdjoinRoot\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CovOfAlgHom\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPQ\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FrobeniusPowerSolutionLift\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OneTmulMemRangeIff\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectFrobeniusRootSolution\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.CovRoot

theorem exists_retraction {A : Type} [CommRing A] (P : Polynomial A) (hP : P.Monic)
    (hd : 0 < P.natDegree) : ∃ ρ : AdjoinRoot P →ₗ[A] A, ρ 1 = 1 := by
  let b := AdjoinRoot.powerBasis' hP
  have h0 : 0 < b.dim := by simpa [b] using hd
  refine ⟨b.basis.coord ⟨0, h0⟩, ?_⟩
  have h1 : b.basis ⟨0, h0⟩ = 1 := by simp
  change b.basis.repr 1 ⟨0, h0⟩ = 1
  rw [← h1, b.basis.repr_self]
  simp

theorem cov_root : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A] (r : ℕ → A)
    (P : Polynomial A), Pf p A → P.Monic → 0 < P.natDegree →
    ∃ (B : Type) (_ : CommRing B) (_ : Algebra A B), Pf p B ∧ Cov p r B ∧
      ∃ x : B, Polynomial.aeval x P = 0 := by
  intro p _ A _ r P hA hP hd
  have hpS : (p : AdjoinRoot P) = 0 := by
    have := congrArg (algebraMap A (AdjoinRoot P)) hA.char
    simpa using this
  obtain ⟨T, _, i, hq⟩ := GlobalTheory.CompanionTheory.PerfClos.exists_PQ p (AdjoinRoot P) ⊥ hpS
  letI : Algebra A T := (i.comp (algebraMap A (AdjoinRoot P))).toAlgebra
  let i' : AdjoinRoot P →ₐ[A] T := { i with commutes' := fun _ => rfl }
  have hq' : PQ p (i' : AdjoinRoot P →+* T) ⊥ := hq
  refine ⟨T, inferInstance, inferInstance, hq.pf, ?_, i' (AdjoinRoot.root P), ?_⟩
  · refine GlobalTheory.CompanionTheory.CovCmp.cov_of_solv p A T r fun m n a c hs => ?_
    refine ⟨A, inferInstance, inferInstance, GlobalTheory.CompanionTheory.CovMono.cov_self p A r, ?_⟩
    obtain ⟨k, s, hs'⟩ := _root_.GlobalTheory.CompanionTheory.PerfectQuotient.solv_pow p A (AdjoinRoot P) T i' ⊥ m n a c hA.char hq' hs
    refine _root_.GlobalTheory.CompanionTheory.PerfectRing.solv_of_solv_pow p A A m n k a c hA ?_
    obtain ⟨ρ, hρ⟩ := exists_retraction P hP hd
    have hρa : ∀ x : A, ρ (algebraMap A (AdjoinRoot P) x) = x := fun x => by
      rw [Algebra.algebraMap_eq_smul_one, map_smul, hρ, smul_eq_mul, mul_one]
    refine ⟨fun j => ρ (s j), fun t => ?_⟩
    have h := sub_eq_zero.mp ((Ideal.mem_bot).mp (hs' t))
    have h2 := congrArg ρ h

    rw [map_sum, hρa] at h2
    simpa using h2
  · rw [Polynomial.aeval_algHom_apply]
    have : Polynomial.aeval (AdjoinRoot.root P) P = 0 := by
      simp [AdjoinRoot.aeval_eq]
    rw [this, map_zero]

end GlobalTheory.CompanionTheory.CovRoot
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRetraction =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueCompEq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueCompEq", "h": "module\n\npublic import Mathlib.RingTheory.AdicCompletion.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.AdicCompletion.RingHom\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.PfCompl

open Ideal

variable {B T T₁ : Type*} [CommRing B] [CommRing T] [CommRing T₁]

theorem exists_level_hom (π : B) (g : B →+* T) (x : B →+* T₁) (M : ℕ)
    (hsurj : ∀ y : T, ∃ b, y - g b ∈ span {g π ^ M})
    (hinj : ∀ b, g b ∈ span {g π ^ M} → b ∈ span {π ^ M}) :
    ∃ f : T →+* T₁ ⧸ (span {x π}) ^ M,
      ∀ y b, y - g b ∈ span {g π ^ M} → f y = Ideal.Quotient.mk _ (x b) := by
  have hIJ : span {π ^ M} ≤ (span {g π ^ M}).comap g := by
    rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, Ideal.mem_comap, map_pow]
    exact Ideal.mem_span_singleton_self _
  have hxK : span {π ^ M} ≤ ((span {x π}) ^ M).comap x := by
    rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, Ideal.mem_comap, map_pow]
    exact Ideal.pow_mem_pow (Ideal.mem_span_singleton_self _) M
  have hinj' : Function.Injective (Ideal.quotientMap (span {g π ^ M}) g hIJ) := by
    refine Ideal.quotientMap_injective' ?_
    intro b hb
    exact hinj b (Ideal.mem_comap.1 hb)
  have hsurj' : Function.Surjective (Ideal.quotientMap (span {g π ^ M}) g hIJ) := by
    intro z
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective z
    obtain ⟨b, hb⟩ := hsurj y
    exact ⟨Ideal.Quotient.mk _ b, by rw [Ideal.quotientMap_mk]; exact (Ideal.Quotient.eq.2 hb).symm⟩
  let e := RingEquiv.ofBijective _ ⟨hinj', hsurj'⟩
  refine ⟨(Ideal.quotientMap _ x hxK).comp (e.symm.toRingHom.comp (Ideal.Quotient.mk _)), ?_⟩
  intro y b hy
  have h1 : e (Ideal.Quotient.mk _ b) = Ideal.Quotient.mk (span {g π ^ M}) y := by
    show Ideal.quotientMap _ g hIJ (Ideal.Quotient.mk _ b) = _
    rw [Ideal.quotientMap_mk]
    exact (Ideal.Quotient.eq.2 hy).symm
  have h2 : e.symm (Ideal.Quotient.mk _ y) = Ideal.Quotient.mk (span {π ^ M}) b := by
    rw [← h1, RingEquiv.symm_apply_apply]
  show Ideal.quotientMap _ x hxK (e.symm (Ideal.Quotient.mk _ y)) = _
  rw [h2, Ideal.quotientMap_mk]

theorem mk_eq_of_comp_eq (π : B) (g : B →+* T) (x : B →+* T₁) (ψ : T →+* T₁)
    (hψ : ψ.comp g = x) (M : ℕ) (y : T) (b : B) (hy : y - g b ∈ span {g π ^ M}) :
    Ideal.Quotient.mk ((span {x π}) ^ M) (ψ y) = Ideal.Quotient.mk _ (x b) := by
  have hb : x b = ψ (g b) := (DFunLike.congr_fun hψ b).symm
  have hπ : ψ (g π) = x π := DFunLike.congr_fun hψ π
  rw [Ideal.Quotient.eq, hb, ← map_sub]
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.1 hy
  rw [← ht, map_mul, map_pow, hπ]
  exact Ideal.mul_mem_left _ _ (Ideal.pow_mem_pow (Ideal.mem_span_singleton_self _) M)

theorem existsUnique_comp_eq (π : B) (g : B →+* T)
    (hsurj : ∀ (M : ℕ) (y : T), ∃ b, y - g b ∈ span {g π ^ M})
    (hinj : ∀ (M : ℕ) (b : B), g b ∈ span {g π ^ M} → b ∈ span {π ^ M})
    (x : B →+* T₁) (hc : IsAdicComplete (span {x π}) T₁) :
    ∃! ψ : T →+* T₁, ψ.comp g = x := by
  have key : ∀ a c : T₁,
      (∀ n : ℕ, Ideal.Quotient.mk (span {x π} ^ n) a = Ideal.Quotient.mk _ c) → a = c := by
    intro a c h
    have h0 := IsHausdorff.haus' (I := span {x π}) (a - c) fun n => by
      rw [SModEq.sub_mem, sub_zero, Ideal.smul_eq_mul, Ideal.mul_top]
      exact Ideal.Quotient.eq.1 (h n)
    exact sub_eq_zero.1 h0
  choose f hf using fun n => exists_level_hom π g x n (hsurj n) (hinj n)
  have hle : ∀ {m n : ℕ}, m ≤ n → ∀ z : T, z ∈ span {g π ^ n} → z ∈ span {g π ^ m} := by
    intro m n h z hz
    obtain ⟨t, rfl⟩ := Ideal.mem_span_singleton'.1 hz
    refine Ideal.mem_span_singleton'.2 ⟨t * g π ^ (n - m), ?_⟩
    rw [mul_assoc, ← pow_add, Nat.sub_add_cancel h]
  have hcompat : ∀ {m n : ℕ} (h : m ≤ n),
      (Ideal.Quotient.factorPow (span {x π}) h).comp (f n) = f m := by
    intro m n h
    ext y
    obtain ⟨b, hb⟩ := hsurj n y
    rw [RingHom.comp_apply, hf n y b hb, hf m y b (hle h _ hb)]
    first
      | rfl
  refine ⟨IsAdicComplete.liftRingHom _ f hcompat, ?_, ?_⟩
  · ext b
    apply key
    intro n
    rw [RingHom.comp_apply, IsAdicComplete.mk_liftRingHom, hf n (g b) b (by simp)]
  · intro ψ hψ
    ext y
    apply key
    intro n
    rw [IsAdicComplete.mk_liftRingHom]
    obtain ⟨b, hb⟩ := hsurj n y
    rw [hf n y b hb]
    exact mk_eq_of_comp_eq π g x ψ hψ n y b hb

end GlobalTheory.CompanionTheory.PfCompl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueCompEq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsComplExistsUnique =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsComplExistsUnique", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueCompEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.PfCompl

theorem isCompl_existsUnique :
    ∀ (B : Type) [CommRing B] (T : Type) [CommRing T] (π : B) (g : B →+* T), IsCompl π g →
      ∀ (T₁ : Type) [CommRing T₁] (x : B →+* T₁), IsAdicComplete (Ideal.span {x π}) T₁ →
        ∃! ψ : T →+* T₁, ψ.comp g = x := by
  intro B _ T _ π g h T₁ _ x hc
  exact existsUnique_comp_eq π g h.surj h.inj x hc

end GlobalTheory.CompanionTheory.PfCompl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsComplExistsUnique =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LaurentEqToLaurentSubInvert =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LaurentEqToLaurentSubInvert", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Algebra.Polynomial.Laurent\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRingHomPowPrimePow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PfFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.PerfectRing

theorem laurent_eq_toLaurent_sub_invert {K : Type} [CommRing K] (h : K[T;T⁻¹]) :
    ∃ α β : Polynomial K, h = Polynomial.toLaurent α -
      LaurentPolynomial.invert (Polynomial.toLaurent β) := by
  induction h using LaurentPolynomial.induction_on' with
  | add f g hf hg =>
    obtain ⟨α₁, β₁, rfl⟩ := hf
    obtain ⟨α₂, β₂, rfl⟩ := hg
    refine ⟨α₁ + α₂, β₁ + β₂, ?_⟩
    simp only [map_add (f := _)]
    ring
  | C_mul_T n a =>
    rcases le_total 0 n with hn | hn
    · obtain ⟨m, rfl⟩ := Int.eq_ofNat_of_zero_le hn
      refine ⟨Polynomial.monomial m a, 0, ?_⟩
      simp [Polynomial.toLaurent_C_mul_T]
    · obtain ⟨m, hm⟩ := Int.eq_ofNat_of_zero_le (neg_nonneg.2 hn)
      refine ⟨0, -Polynomial.monomial m a, ?_⟩
      have hn' : n = -(m : ℤ) := by omega
      subst hn'
      simp [Polynomial.toLaurent_C_mul_T, map_mul, LaurentPolynomial.invert_T,
        LaurentPolynomial.invert_C]

theorem b_surj : ∀ (p : ℕ) [Fact p.Prime] (K : Type) [CommRing K] (K₁ : Type) [CommRing K₁] (K₂ : Type) [CommRing K₂] (K₃ : Type) [CommRing K₃] (f g : K) (i₁ : Polynomial K →+* K₁) (i₂ : Polynomial K →+* K₂) (i₃ : K[T;T⁻¹] →+* K₃) (ρ₁ : K₁ →+* K₃) (ρ₂ : K₂ →+* K₃), Pf p K → PQ p i₁ (Ideal.span {Polynomial.C f - Polynomial.X * Polynomial.C g}) → PQ p i₂ (Ideal.span {Polynomial.C g - Polynomial.X * Polynomial.C f}) → PQ p i₃ (Ideal.span {LaurentPolynomial.C f - LaurentPolynomial.T 1 * LaurentPolynomial.C g}) → (∀ α, ρ₁ (i₁ α) = i₃ (Polynomial.toLaurent α)) → (∀ β, ρ₂ (i₂ β) = i₃ (LaurentPolynomial.invert (Polynomial.toLaurent β))) → ∀ y : K₃, ∃ (b₁ : K₁) (b₂ : K₂), y = ρ₁ b₁ - ρ₂ b₂ := by
  intro p _ K _ K₁ _ K₂ _ K₃ _ f g i₁ i₂ i₃ ρ₁ ρ₂ _ h₁ h₂ h₃ e₁ e₂ y
  obtain ⟨k, h, hy⟩ := h₃.pow y
  obtain ⟨α, β, rfl⟩ := laurent_eq_toLaurent_sub_invert h
  obtain ⟨-, -, root₁, -, -⟩ := pf_facts p K₁ h₁.pf
  obtain ⟨-, -, root₂, -, -⟩ := pf_facts p K₂ h₂.pf
  obtain ⟨-, -, -, inj₃, -⟩ := pf_facts p K₃ h₃.pf
  obtain ⟨b₁, hb₁⟩ := root₁ k (i₁ α)
  obtain ⟨b₂, hb₂⟩ := root₂ k (i₂ β)
  obtain ⟨F, hF⟩ := GlobalTheory.CompanionTheory.Frobenius.exists_ringHom_pow_prime_pow p K₃ h₃.pf.char k
  refine ⟨b₁, b₂, inj₃ k _ _ ?_⟩
  have key : (ρ₁ b₁ - ρ₂ b₂) ^ p ^ k = ρ₁ (b₁ ^ p ^ k) - ρ₂ (b₂ ^ p ^ k) := by
    rw [← hF (ρ₁ b₁ - ρ₂ b₂), map_sub F, hF, hF, map_pow, map_pow]
  rw [hy, key, hb₁, hb₂, e₁, e₂, map_sub]

end GlobalTheory.CompanionTheory.PerfectRing
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LaurentEqToLaurentSubInvert =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEqZeroOfCPowMemSpan =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEqZeroOfCPowMemSpan", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PfFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.GroupTheory.MonoidLocalization.Away\npublic import Mathlib.RingTheory.Localization.Away.Basic\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.PerfectRing

theorem mul_eq_zero_of_C_pow_mem_span (K : Type) [CommRing K]
    (hred : ∀ (x : K) (n : ℕ), x ^ n = 0 → x = 0) (f g a : K) (n : ℕ)
    (h : (Polynomial.C a) ^ n ∈
      Ideal.span {Polynomial.C f - Polynomial.X * Polynomial.C g}) : g * a = 0 := by
  let L := Localization.Away g
  let u : L := IsLocalization.Away.invSelf g
  have hu : algebraMap K L g * u = 1 := IsLocalization.Away.mul_invSelf g
  let φ : Polynomial K →+* L := Polynomial.eval₂RingHom (algebraMap K L) (u * algebraMap K L f)
  have h0 : φ (Polynomial.C f - Polynomial.X * Polynomial.C g) = 0 := by
    have e1 : φ (Polynomial.C f) = algebraMap K L f := by simp [φ]
    have e2 : φ Polynomial.X = u * algebraMap K L f := by simp [φ]
    have e3 : φ (Polynomial.C g) = algebraMap K L g := by simp [φ]
    rw [map_sub, map_mul, e1, e2, e3]
    linear_combination (-(algebraMap K L f)) * hu
  have h1 : φ ((Polynomial.C a) ^ n) = 0 := by
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 h
    rw [← hc, map_mul, h0, mul_zero]
  have h2 : algebraMap K L (a ^ n) = 0 := by
    have e : φ ((Polynomial.C a) ^ n) = algebraMap K L (a ^ n) := by simp [φ]
    rw [← e, h1]
  obtain ⟨⟨m, hm⟩, e⟩ := (IsLocalization.map_eq_zero_iff (Submonoid.powers g) L _).1 h2
  obtain ⟨M, rfl⟩ := hm
  have e' : g ^ M * a ^ n = 0 := e
  apply hred _ (M + n)
  calc (g * a) ^ (M + n) = g ^ n * a ^ M * (g ^ M * a ^ n) := by ring
    _ = 0 := by rw [e', mul_zero]

theorem b_inj : ∀ (p : ℕ) [Fact p.Prime] (K : Type) [CommRing K] (K₁ : Type) [CommRing K₁]
    (K₂ : Type) [CommRing K₂] (f g : K) (i₁ : Polynomial K →+* K₁) (i₂ : Polynomial K →+* K₂)
    (r : ℕ → K) (N : ℕ), Pf p K → IsRt p r → r 0 ^ N ∈ Ideal.span {f, g} →
    PQ p i₁ (Ideal.span {Polynomial.C f - Polynomial.X * Polynomial.C g}) →
    PQ p i₂ (Ideal.span {Polynomial.C g - Polynomial.X * Polynomial.C f}) →
    ∀ a : K, i₁ (Polynomial.C a) = 0 → i₂ (Polynomial.C a) = 0 → ∀ k, r k * a = 0 := by
  intro p _ K _ K₁ _ K₂ _ f g i₁ i₂ r N hK hr hN h₁ h₂ a ha₁ ha₂
  obtain ⟨-, hred, -, -, hroots⟩ := pf_facts p K hK
  obtain ⟨k₁, hk₁⟩ := (h₁.ker _).1 ha₁
  obtain ⟨k₂, hk₂⟩ := (h₂.ker _).1 ha₂
  have hg : g * a = 0 := mul_eq_zero_of_C_pow_mem_span K hred f g a _ hk₁
  have hf : f * a = 0 := mul_eq_zero_of_C_pow_mem_span K hred g f a _ hk₂
  obtain ⟨u, v, huv⟩ := Ideal.mem_span_pair.1 hN
  have h0 : r 0 ^ N * a = 0 := by
    rw [← huv]
    linear_combination u * hf + v * hg
  exact (hroots r hr).2.2 N a h0

end GlobalTheory.CompanionTheory.PerfectRing
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEqZeroOfCPowMemSpan =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PqBaseChangePolynomial =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PqBaseChangePolynomial", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Mathlib.RingTheory.TensorProduct.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectTensorGeneratedLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.Perfection

theorem pq_baseChange_polynomial : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A](B : Type) [CommRing B] [Algebra A B] (K : Type) [CommRing K] [Algebra A K] (i : Polynomial A →ₐ[A] B) (h : Polynomial A), Pf p A → Pf p K → PQ p (i : Polynomial A →+* B) (Ideal.span {h}) → ∃ i₁ : Polynomial K →+* B ⊗[A] K, PQ p i₁ (Ideal.span {h.map (algebraMap A K)}) ∧ (∀ a, i₁ (Polynomial.C a) = (1 : B) ⊗ₜ[A] a) ∧ i₁ Polynomial.X = i Polynomial.X ⊗ₜ[A] (1 : K) := by
  intro p _ A _ B _ _ K _ _ i h hA hK hPQ
  let i₁ : Polynomial K →+* B ⊗[A] K :=
    Polynomial.eval₂RingHom (Algebra.TensorProduct.includeRight : K →ₐ[A] B ⊗[A] K).toRingHom
      (i Polynomial.X ⊗ₜ[A] (1 : K))
  have hC : ∀ a, i₁ (Polynomial.C a) = (1 : B) ⊗ₜ[A] a := by
    intro a
    simp [i₁]
  have hX : i₁ Polynomial.X = i Polynomial.X ⊗ₜ[A] (1 : K) := by
    simp [i₁]
  have hj : ∀ s : Polynomial A, i₁ (Polynomial.mapRingHom (algebraMap A K) s) = i s ⊗ₜ[A] (1 : K) := by
    intro s
    induction s using Polynomial.induction_on with
    | C a =>
      have h1 : i (Polynomial.C a) = algebraMap A B a := by
        rw [← Polynomial.algebraMap_eq]
        exact i.commutes a
      rw [Polynomial.coe_mapRingHom, Polynomial.map_C, hC, h1, Algebra.algebraMap_eq_smul_one,
        Algebra.algebraMap_eq_smul_one, TensorProduct.smul_tmul]
    | add f g hf hg =>
      rw [map_add (f := _), map_add (f := _), hf, hg, map_add (f := _), TensorProduct.add_tmul]
    | monomial n a ih =>
      have e : (Polynomial.C a * Polynomial.X ^ (n + 1) : Polynomial A)
          = (Polynomial.C a * Polynomial.X ^ n) * Polynomial.X := by ring
      rw [e, map_mul, map_mul, ih, map_mul]
      have e2 : Polynomial.mapRingHom (algebraMap A K) (Polynomial.X : Polynomial A) = Polynomial.X := by
        simp
      rw [e2, hX, Algebra.TensorProduct.tmul_mul_tmul, one_mul]
      simp only [map_mul]
  have hcl : Subring.closure (Set.range (Polynomial.C : K →+* Polynomial K) ∪
      Set.range (Polynomial.mapRingHom (algebraMap A K))) = ⊤ := by
    rw [eq_top_iff]
    intro f _
    induction f using Polynomial.induction_on with
    | C a => exact Subring.subset_closure (Or.inl ⟨a, rfl⟩)
    | add f g hf hg => exact Subring.add_mem _ (hf trivial) (hg trivial)
    | monomial n a ih =>
      have e : (Polynomial.C a * Polynomial.X ^ (n + 1) : Polynomial K)
          = (Polynomial.C a * Polynomial.X ^ n) * Polynomial.X := by ring
      rw [e]
      refine Subring.mul_mem _ (ih trivial) (Subring.subset_closure (Or.inr ⟨Polynomial.X, ?_⟩))
      simp
  have hcomp : (Polynomial.C : K →+* Polynomial K).comp (algebraMap A K)
      = (Polynomial.mapRingHom (algebraMap A K)).comp (algebraMap A (Polynomial A)) := by
    ext a
    simp
  have key := _root_.GlobalTheory.CompanionTheory.PerfectRing.pq_baseChange p A (Polynomial A) B K (Polynomial K) i (Ideal.span {h})
    Polynomial.C (Polynomial.mapRingHom (algebraMap A K)) i₁ hA hK hPQ hcomp hcl hC hj
  refine ⟨i₁, ?_, hC, hX⟩
  rw [Ideal.map_span, Set.image_singleton] at key
  simpa using key

end GlobalTheory.CompanionTheory.Perfection
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PqBaseChangePolynomial =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulEqZeroOfLTensorSubtypeEqZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulEqZeroOfLTensorSubtypeEqZero", "h": "module\n\npublic import Mathlib.RingTheory.Valuation.ValuationRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Flat.Equalizer\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Algebra.Exact.Basic\npublic import Mathlib.Algebra.Module.Torsion.Basic\npublic import Mathlib.RingTheory.Flat.Basic\npublic import Mathlib.RingTheory.Flat.TorsionFree\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.Dblock

theorem smul_eq_zero_of_lTensor_subtype_eq_zero :
    ∀ (R : Type) [CommRing R] [IsDomain R] [ValuationRing R] (r : ℕ → R) (N : Type)
      [AddCommGroup N] [Module R N] (K : Type) [AddCommGroup K] [Module R K] (I : Submodule R K),
      (∀ (a : R) (x : K), a ≠ 0 → a • x ∈ I → ∀ k, r k • x ∈ I) →
      ∀ w : N ⊗[R] I, I.subtype.lTensor N w = 0 → ∀ k, r k • w = 0 := by
  intro R _ _ _ r N _ _ K _ _ I hI w hw k
  let I' : Submodule R K :=
    { carrier := {x | ∃ a : R, a ≠ 0 ∧ a • x ∈ I}
      zero_mem' := ⟨1, one_ne_zero, by simp⟩
      add_mem' := by
        rintro x y ⟨a, ha, hax⟩ ⟨b, hb, hby⟩
        refine ⟨a * b, mul_ne_zero ha hb, ?_⟩
        rw [smul_add]
        refine I.add_mem ?_ ?_
        · rw [mul_comm, mul_smul]; exact I.smul_mem _ hax
        · rw [mul_smul]; exact I.smul_mem _ hby
      smul_mem' := by
        rintro c x ⟨a, ha, hax⟩
        refine ⟨a, ha, ?_⟩
        rw [smul_comm]; exact I.smul_mem _ hax }
  have hle : I ≤ I' := fun x hx => ⟨1, one_ne_zero, by simpa using hx⟩
  have hflat : Module.Flat R (K ⧸ I') := by
    rw [Module.Flat.flat_iff_torsion_eq_bot_of_isBezout, eq_bot_iff]
    intro y hy
    obtain ⟨x, rfl⟩ := I'.mkQ_surjective y
    obtain ⟨a, ha⟩ := (Submodule.mem_torsion_iff _).1 hy
    have hax : (a : R) • x ∈ I' := by
      rw [← Submodule.Quotient.mk_eq_zero]
      simpa [Submonoid.smul_def] using ha
    obtain ⟨b, hb, hbx⟩ := hax
    have hx : x ∈ I' := ⟨b * a, mul_ne_zero hb (nonZeroDivisors.ne_zero a.2), by
      rw [mul_smul]; exact hbx⟩
    simpa using (Submodule.Quotient.mk_eq_zero I').2 hx
  have hinj : Function.Injective (I'.subtype.lTensor N) :=
    LinearMap.lTensor_injective_of_exact_of_flat I'.mkQ I'.mkQ_surjective I'.subtype
      I'.injective_subtype (LinearMap.exact_subtype_mkQ I') N
  let ι : I →ₗ[R] I' := Submodule.inclusion hle
  let φ : I' →ₗ[R] I := LinearMap.codRestrict I (r k • I'.subtype) (fun x => by
    obtain ⟨a, ha, hax⟩ := x.2
    exact hI a x ha hax k)
  have h1 : ι.lTensor N w = 0 := by
    apply hinj
    rw [map_zero, ← LinearMap.comp_apply, ← LinearMap.lTensor_comp]
    exact hw
  have hcomp : φ ∘ₗ ι = r k • LinearMap.id := by
    ext x
    rfl
  have h2 : φ.lTensor N (ι.lTensor N w) = r k • w := by
    rw [← LinearMap.comp_apply, ← LinearMap.lTensor_comp, hcomp, LinearMap.lTensor_smul,
      LinearMap.lTensor_id]
    rfl
  rw [← h2, h1, map_zero]

end GlobalTheory.CompanionTheory.Dblock
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulEqZeroOfLTensorSubtypeEqZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulMemRangeLTensorOfLTensorEqZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulMemRangeLTensorOfLTensorEqZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Mathlib.RingTheory.Valuation.ValuationRing\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulEqZeroOfLTensorSubtypeEqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.Dblock

theorem smul_mem_range_lTensor_of_lTensor_eq_zero :
    ∀ (p : ℕ) [Fact p.Prime] (R : Type) [CommRing R] [IsDomain R] [ValuationRing R] (r : ℕ → R)
      (N : Type) [AddCommGroup N] [Module R N] (K₀ : Type) [AddCommGroup K₀] [Module R K₀]
      (K₁ : Type) [AddCommGroup K₁] [Module R K₁] (K₂ : Type) [AddCommGroup K₂] [Module R K₂]
      (K₃ : Type) [AddCommGroup K₃] [Module R K₃] (d₀ : K₀ →ₗ[R] K₁) (d₁ : K₁ →ₗ[R] K₂)
      (d₂ : K₂ →ₗ[R] K₃), IsRt p r → (∀ z, d₂ (d₁ z) = 0) →
      (∀ z, d₁ z = 0 → ∀ k, r k • z ∈ LinearMap.range d₀) →
      (∀ z, d₂ z = 0 → ∀ k, r k • z ∈ LinearMap.range d₁) →
      (∀ (a : R) (x : K₃), a ≠ 0 → a • x = 0 → ∀ k, r k • x = 0) →
      ∀ w : N ⊗[R] K₁, d₁.lTensor N w = 0 → ∀ k, r k • w ∈ LinearMap.range (d₀.lTensor N) := by
  intro p _ R _ _ _ r N _ _ K₀ _ _ K₁ _ _ K₂ _ _ K₃ _ _ d₀ d₁ d₂ hr hdd h1 h2 h3 w hw k
  have hp : 2 ≤ p := (Fact.out : p.Prime).two_le
  have hrk : ∀ k, r k = r (k + 1) ^ (p - 2) * (r (k + 1) * r (k + 1)) := by
    intro k
    rw [← pow_two, ← pow_add, Nat.sub_add_cancel hp]
    exact (hr k).symm
  have hsat : ∀ (a : R) (x : K₂), a ≠ 0 → a • x ∈ LinearMap.range d₁ →
      ∀ k, r k • x ∈ LinearMap.range d₁ := by
    rintro a x ha ⟨y, hy⟩ k
    have hax : a • d₂ x = 0 := by
      rw [← map_smul, ← hy, hdd]
    have h0 : d₂ (r (k + 1) • x) = 0 := by
      rw [map_smul]
      exact h3 a _ ha hax (k + 1)
    have h4 := h2 _ h0 (k + 1)
    rw [hrk k, mul_smul, mul_smul]
    exact Submodule.smul_mem _ _ h4
  have hsub : (LinearMap.range d₁).subtype ∘ₗ d₁.rangeRestrict = d₁ := by
    ext x
    rfl
  have hw' : (LinearMap.range d₁).subtype.lTensor N (d₁.rangeRestrict.lTensor N w) = 0 := by
    rw [← LinearMap.comp_apply, ← LinearMap.lTensor_comp, hsub]
    exact hw
  have h5 := smul_eq_zero_of_lTensor_subtype_eq_zero R r N K₂ (LinearMap.range d₁) hsat _ hw' (k + 1)
  have h6 : d₁.rangeRestrict.lTensor N (r (k + 1) • w) = 0 := by
    rw [map_smul]
    exact h5
  have hex : Function.Exact (LinearMap.ker d₁).subtype d₁.rangeRestrict := by
    intro x
    constructor
    · intro hx
      have hx' : d₁ x = 0 := congrArg Subtype.val hx
      exact ⟨⟨x, hx'⟩, rfl⟩
    · rintro ⟨z, rfl⟩
      exact Subtype.ext z.2
  obtain ⟨u, hu⟩ := (lTensor_exact N hex d₁.surjective_rangeRestrict _).1 h6
  have h7 : ∀ u : N ⊗[R] LinearMap.ker d₁,
      r (k + 1) • (LinearMap.ker d₁).subtype.lTensor N u ∈ LinearMap.range (d₀.lTensor N) := by
    intro u
    induction u with
    | tmul n z =>
      obtain ⟨y, hy⟩ := h1 z z.2 (k + 1)
      exact ⟨n ⊗ₜ y, by simp [hy, TensorProduct.tmul_smul]⟩
    | add a b ha hb =>
      rw [map_add (f := _), smul_add]
      exact Submodule.add_mem _ ha hb
  rw [hrk k, mul_smul, mul_smul, ← hu]
  exact Submodule.smul_mem _ _ (h7 u)

end GlobalTheory.CompanionTheory.Dblock
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulMemRangeLTensorOfLTensorEqZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SolvAtStage =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SolvAtStage", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.SeqColim

theorem map_tr {A : Type} [CommRing A] {G : ℕ → Type} [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)]
    (f : ∀ n, G n →ₐ[A] G (n + 1)) {L : Type} [CommRing L] [Algebra A L] (ι : ∀ n, G n →ₐ[A] L)
    (h : IsColim f ι) (n : ℕ) : ∀ (k : ℕ) (x : G n), ι (n + k) (tr f n k x) = ι n x
  | 0, x => rfl
  | k + 1, x => by
      show ι (n + k + 1) (f (n + k) (tr f n k x)) = ι n x
      rw [h.comm, map_tr f ι h n k x]

theorem pf_of_stages (p : ℕ) {A : Type} [CommRing A] {G : ℕ → Type} [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)]
    (f : ∀ n, G n →ₐ[A] G (n + 1)) {L : Type} [CommRing L] [Algebra A L] (ι : ∀ n, G n →ₐ[A] L)
    (h : IsColim f ι) (hG : ∀ n, Pf p (G n)) : Pf p L := by
  refine ⟨?_, ?_, ?_⟩
  · have := congrArg (ι 0) (hG 0).char
    simpa using this
  · intro x y hxy
    obtain ⟨n, z, hz⟩ := h.surj 2 ![x, y]
    have h0 : ι n (z 0 ^ p - z 1 ^ p) = 0 := by
      have e0 := hz 0
      have e1 := hz 1
      simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at e0 e1
      simp [map_sub, map_pow, e0, e1, hxy]
    obtain ⟨k, hk⟩ := h.ker n 1 (fun _ => z 0 ^ p - z 1 ^ p) (fun _ => h0)
    have hk0 := hk 0
    simp only [map_sub, map_pow, sub_eq_zero] at hk0
    have heq := (hG (n + k)).bij.1 hk0
    have e0 := hz 0
    have e1 := hz 1
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at e0 e1
    have := congrArg (ι (n + k)) heq
    rw [map_tr f ι h, map_tr f ι h, e0, e1] at this
    exact this
  · intro x
    obtain ⟨n, z, hz⟩ := h.surj 1 (fun _ => x)
    obtain ⟨w, hw⟩ := (hG n).bij.2 (z 0)
    refine ⟨ι n w, ?_⟩
    simp only at hw ⊢
    rw [← map_pow, hw, hz 0]

theorem solv_at_stage {A : Type} [CommRing A] {G : ℕ → Type} [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)]
    (f : ∀ n, G n →ₐ[A] G (n + 1)) {L : Type} [CommRing L] [Algebra A L] (ι : ∀ n, G n →ₐ[A] L)
    (h : IsColim f ι) (m n : ℕ) (a : Fin m → Fin n → A) (c : Fin m → A) (hs : Solv L a c) :
    ∃ N, Solv (G N) a c := by
  obtain ⟨y, hy⟩ := hs
  obtain ⟨N₀, z, hz⟩ := h.surj n y
  have hd : ∀ i, ι N₀ ((∑ j, a i j • z j) - algebraMap A (G N₀) (c i)) = 0 := by
    intro i

    simp only [map_sub, map_sum, map_smul, AlgHom.commutes, hz, hy i, sub_self]
  obtain ⟨k, hk⟩ := h.ker N₀ m _ hd
  refine ⟨N₀ + k, fun j => tr f N₀ k (z j), fun i => ?_⟩
  have := hk i

  simp only [map_sub, map_sum, map_smul, AlgHom.commutes, sub_eq_zero] at this
  exact this

end GlobalTheory.CompanionTheory.SeqColim

namespace GlobalTheory.CompanionTheory

theorem colim_pf : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A](G : ℕ → Type) [∀ n, CommRing (G n)] [∀ n, Algebra A (G n)] (f : ∀ n, G n →ₐ[A] G (n + 1))(L : Type) [CommRing L] [Algebra A L] (ι : ∀ n, G n →ₐ[A] L), IsColim f ι → ((∀ n, Pf p (G n)) → Pf p L) ∧ ∀ (m n : ℕ) (a : Fin m → Fin n → A) (c : Fin m → A), Solv L a c → ∃ N, Solv (G N) a c := by
  intro p _ A _ G _ _ f L _ _ ι h
  exact ⟨SeqColim.pf_of_stages p f ι h, fun m n a c hs => SeqColim.solv_at_stage f ι h m n a c hs⟩

end GlobalTheory.CompanionTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SolvAtStage =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TmulEqZeroOfMemSpan =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TmulEqZeroOfMemSpan", "h": "module\n\npublic import Mathlib.Algebra.Algebra.Hom\npublic import Mathlib.LinearAlgebra.TensorProduct.Map\npublic import Mathlib.RingTheory.Ideal.Span\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.LinearAlgebra.Quotient.Basic\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.TensCompl

theorem tmul_eq_zero_of_mem_span {R N A : Type} [CommRing R] [AddCommGroup N] [Module R N]
    [CommRing A] [Algebra R A] (c : R) (M : ℕ) (hN : ∀ x : N, c ^ M • x = 0) (n : N) (a : A)
    (ha : a ∈ Ideal.span {algebraMap R A c ^ M}) : n ⊗ₜ[R] a = 0 := by
  obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.mp ha
  have : b * algebraMap R A c ^ M = c ^ M • b := by
    rw [Algebra.smul_def, map_pow, mul_comm]
  rw [this, ← smul_tmul, hN, zero_tmul]

theorem main : ∀ (R : Type) [CommRing R] (r : ℕ → R) (M : ℕ) (N : Type) [AddCommGroup N] [Module R N](B : Type) [CommRing B] [Algebra R B] (T : Type) [CommRing T] [Algebra R T] (g : B →ₐ[R] T), (∀ x : N, r 0 ^ M • x = 0) → (∀ y : T, ∃ x, y - g x ∈ Ideal.span {algebraMap R T (r 0) ^ M}) → (∀ x : B, g x ∈ Ideal.span {algebraMap R T (r 0) ^ M} → ∀ k, r k • x ∈ Ideal.span {algebraMap R B (r 0) ^ M}) → Function.Surjective (g.toLinearMap.lTensor N) ∧ ∀ w : N ⊗[R] B, g.toLinearMap.lTensor N w = 0 → ∀ k, r k • w = 0 := by
  intro R _ r M N _ _ B _ _ T _ _ g h1 h2 h3
  constructor
  · intro z
    induction z using TensorProduct.induction_on with
    | zero => exact ⟨0, map_zero _⟩
    | tmul n y =>
      obtain ⟨x, hx⟩ := h2 y
      refine ⟨n ⊗ₜ x, ?_⟩
      have h0 := tmul_eq_zero_of_mem_span (r 0) M h1 n _ hx
      rw [tmul_sub, sub_eq_zero] at h0
      rw [h0]
      simp
    | add a b ha hb =>
      obtain ⟨a', rfl⟩ := ha
      obtain ⟨b', rfl⟩ := hb
      exact ⟨a' + b', map_add _ _ _⟩
  · intro w hw k
    choose s hs using h2
    let I : Ideal T := Ideal.span {algebraMap R T (r 0) ^ M}
    let P : Submodule R B := (Ideal.span {algebraMap R B (r 0) ^ M}).restrictScalars R
    have key : ∀ x : B, g x ∈ I → r k • x ∈ P := fun x hx => h3 x hx k
    have hadd : ∀ y y' : T, r k • s (y + y') - (r k • s y + r k • s y') ∈ P := by
      intro y y'
      rw [← smul_add, ← smul_sub]
      apply key
      have e : g (s (y + y') - (s y + s y')) =
          (y - g (s y)) + (y' - g (s y')) - (y + y' - g (s (y + y'))) := by
        simp only [map_sub, map_add (f := _)]; ring
      rw [e]
      exact I.sub_mem (I.add_mem (hs y) (hs y')) (hs _)
    have hsmul : ∀ (c : R) (y : T), r k • s (c • y) - c • (r k • s y) ∈ P := by
      intro c y
      rw [smul_comm c, ← smul_sub]
      apply key
      have e : g (s (c • y) - c • s y) =
          algebraMap R T c * (y - g (s y)) - (c • y - g (s (c • y))) := by
        rw [map_sub, map_smul, mul_sub, ← Algebra.smul_def, ← Algebra.smul_def]; abel
      rw [e]
      exact I.sub_mem (I.mul_mem_left _ (hs y)) (hs _)
    let L : T →ₗ[R] B ⧸ P :=
      { toFun := fun y => P.mkQ (r k • s y)
        map_add' := fun y y' => by
          rw [← map_add (f := _)]
          exact (Submodule.Quotient.eq P).mpr (hadd y y')
        map_smul' := fun c y => by
          simp only [RingHom.id_apply]
          rw [← map_smul]
          exact (Submodule.Quotient.eq P).mpr (hsmul c y) }
    let F : (B ⧸ P) →ₗ[R] N →ₗ[R] N ⊗[R] B :=
      P.liftQ (TensorProduct.mk R N B).flip (by
        intro b hb
        rw [LinearMap.mem_ker]
        ext n
        exact tmul_eq_zero_of_mem_span (r 0) M h1 n b hb)
    let Φ : N ⊗[R] T →ₗ[R] N ⊗[R] B := TensorProduct.lift (F ∘ₗ L).flip
    have hΦ : ∀ (n : N) (y : T), Φ (n ⊗ₜ y) = n ⊗ₜ (r k • s y) := fun n y => by
      simp [Φ, F, L]
    have hcomp : ∀ v : N ⊗[R] B, Φ (g.toLinearMap.lTensor N v) = r k • v := by
      intro v
      induction v using TensorProduct.induction_on with
      | zero => simp
      | tmul n b =>
        rw [LinearMap.lTensor_tmul, hΦ, ← tmul_smul, ← sub_eq_zero, ← tmul_sub, ← smul_sub]
        apply tmul_eq_zero_of_mem_span (r 0) M h1 n
        apply key
        have e : g (s (g b) - b) = -(g b - g (s (g b))) := by
          simp only [map_sub]; ring
        have e' : (g.toLinearMap) b = g b := rfl
        rw [e', e]
        exact I.neg_mem (hs _)
      | add a b ha hb => rw [map_add (f := _), map_add (f := _), ha, hb, smul_add]
    rw [← hcomp w, hw, map_zero]

end GlobalTheory.CompanionTheory.TensCompl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TmulEqZeroOfMemSpan =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TorsQuot =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TorsQuot", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PfFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Polynomial.Eval.Coeff\npublic import Mathlib.Algebra.Polynomial.Lifts\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.PerfectRing

theorem tors_quot : ∀ (p : ℕ) [Fact p.Prime] (B : Type) [CommRing B] (π : B), Pf p B →
    ∃ (B₁ : Type) (_ : CommRing B₁) (q : B →+* B₁), Function.Surjective q ∧ Pf p B₁ ∧
      q π ∈ nonZeroDivisors B₁ ∧ (∀ x, q x = 0 ↔ π * x = 0) ∧ (AIC B → AIC B₁) ∧
      (VAL π → VAL (q π)) := by
  intro p _ B _ π h
  have hp : p.Prime := Fact.out
  obtain ⟨⟨F, hF⟩, hred, -, -, -⟩ := pf_facts p B h

  have hpow : ∀ (N : ℕ) (x : B), π ^ N * x = 0 → π * x = 0 := by
    intro N x e
    apply hred _ (N + 1)
    calc (π * x) ^ (N + 1) = π * x ^ N * (π ^ N * x) := by ring
      _ = 0 := by rw [e, mul_zero]

  have hfrob : ∀ x : B, π * x ^ p = 0 → π * x = 0 := by
    intro x e
    apply hred _ p
    have h1 : p = (p - 1) + 1 := by have := hp.one_lt; omega
    rw [mul_pow]
    conv_lhs => rw [h1, pow_succ π]
    rw [← h1, mul_assoc, e, mul_zero]
  let I : Ideal B :=
    { carrier := {x | π * x = 0}
      add_mem' := fun {a b} ha hb => by
        simp only [Set.mem_setOf_eq] at ha hb ⊢
        rw [mul_add, ha, hb, add_zero]
      zero_mem' := by simp
      smul_mem' := fun c x hx => by
        simp only [Set.mem_setOf_eq, smul_eq_mul] at hx ⊢
        rw [mul_left_comm, hx, mul_zero] }
  have hI : ∀ x, Ideal.Quotient.mk I x = 0 ↔ π * x = 0 := fun x => Ideal.Quotient.eq_zero_iff_mem
  have hsurj : Function.Surjective (Ideal.Quotient.mk I) := Ideal.Quotient.mk_surjective
  refine ⟨B ⧸ I, inferInstance, Ideal.Quotient.mk I, hsurj, ⟨?_, ?_, ?_⟩, ?_, hI, ?_, ?_⟩
  · rw [← map_natCast (Ideal.Quotient.mk I), h.char, map_zero]
  · intro a b e
    obtain ⟨x, rfl⟩ := hsurj a
    obtain ⟨y, rfl⟩ := hsurj b
    simp only at e
    rw [← map_pow, ← map_pow, ← sub_eq_zero, ← map_sub, hI] at e
    rw [← sub_eq_zero, ← map_sub, hI]
    apply hfrob
    have : (x - y) ^ p = x ^ p - y ^ p := by
      rw [← hF, map_sub, hF, hF]
    rw [this, e]
  · intro a
    obtain ⟨x, rfl⟩ := hsurj a
    obtain ⟨y, rfl⟩ := h.bij.2 x
    exact ⟨Ideal.Quotient.mk I y, by simp only [map_pow]⟩
  · rw [mem_nonZeroDivisors_iff_right]
    intro a e
    obtain ⟨x, rfl⟩ := hsurj a
    rw [← map_mul, hI] at e
    rw [hI]
    apply hpow 2
    rw [← e]
    ring
  · intro hA P hP hdeg
    have hl : P ∈ Polynomial.lifts (Ideal.Quotient.mk I) :=
      (Polynomial.map_surjective _ hsurj P).imp (fun Q hQ => by simpa using hQ) |> fun ⟨Q, hQ⟩ =>
        (Polynomial.mem_lifts _).2 ⟨Q, hQ⟩
    obtain ⟨Q, rfl, hQd, hQm⟩ := Polynomial.lifts_and_natDegree_eq_and_monic hl hP
    obtain ⟨x, hx⟩ := hA Q hQm (hQd ▸ hdeg)
    exact ⟨Ideal.Quotient.mk I x, hx.map (Ideal.Quotient.mk I)⟩
  · intro hV f₁ g₁ ⟨N, hN⟩
    obtain ⟨f, rfl⟩ := hsurj f₁
    obtain ⟨g, rfl⟩ := hsurj g₁
    obtain ⟨a₁, b₁, hab⟩ := Ideal.mem_span_pair.1 hN
    obtain ⟨a, rfl⟩ := hsurj a₁
    obtain ⟨b, rfl⟩ := hsurj b₁
    have ht : π * (a * f + b * g - π ^ N) = 0 := by
      rw [← hI, map_sub, map_add (f := _), map_mul, map_mul, map_pow, hab, sub_self]
    have hmem : π ^ (N + 1) ∈ Ideal.span {f, g} := by
      refine Ideal.mem_span_pair.2 ⟨π * a, π * b, ?_⟩
      linear_combination ht
    obtain ⟨e, he, h1, h2⟩ := hV f g ⟨N + 1, hmem⟩
    refine ⟨Ideal.Quotient.mk I e, he.map _, ?_, ?_⟩
    · rw [Ideal.mem_span_singleton] at h1 ⊢
      rw [← map_mul]
      exact map_dvd _ h1
    · rw [Ideal.mem_span_singleton] at h2 ⊢
      have : (1 - Ideal.Quotient.mk I e) * Ideal.Quotient.mk I g
          = Ideal.Quotient.mk I ((1 - e) * g) := by
        rw [map_mul, map_sub, map_one]
      rw [this]
      exact map_dvd _ h2

end GlobalTheory.CompanionTheory.PerfectRing
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TorsQuot =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitTZpow =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitTZpow", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Algebra.Polynomial.Laurent\npublic import Mathlib.RingTheory.TensorProduct.Basic\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectTensorGeneratedLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

noncomputable section

namespace GlobalTheory.CompanionTheory.PerfBC

theorem bc_laur : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A](B : Type) [CommRing B] [Algebra A B] (K : Type) [CommRing K] [Algebra A K] (i : A[T;T⁻¹] →ₐ[A] B) (f g : A), Pf p A → Pf p K → PQ p (i : A[T;T⁻¹] →+* B) (Ideal.span {LaurentPolynomial.C f - LaurentPolynomial.T 1 * LaurentPolynomial.C g}) → ∃ i₁ : K[T;T⁻¹] →+* B ⊗[A] K, PQ p i₁ (Ideal.span {LaurentPolynomial.C (algebraMap A K f) - LaurentPolynomial.T 1 * LaurentPolynomial.C (algebraMap A K g)}) ∧ (∀ a, i₁ (LaurentPolynomial.C a) = (1 : B) ⊗ₜ[A] a) ∧ ∀ n : ℤ, i₁ (LaurentPolynomial.T n) = i (LaurentPolynomial.T n) ⊗ₜ[A] (1 : K) := by
  intro p _ A _ B _ _ K _ _ i f g hA hK hPQ
  let j : A[T;T⁻¹] →+* K[T;T⁻¹] :=
    AddMonoidAlgebra.liftNCRingHom ((LaurentPolynomial.C : K →+* K[T;T⁻¹]).comp (algebraMap A K))
      (AddMonoidAlgebra.of K ℤ) (fun _ _ => Commute.all _ _)
  let i₁ : K[T;T⁻¹] →+* B ⊗[A] K :=
    AddMonoidAlgebra.liftNCRingHom
      (Algebra.TensorProduct.includeRight : K →ₐ[A] B ⊗[A] K).toRingHom
      (((Algebra.TensorProduct.includeLeftRingHom : B →+* B ⊗[A] K).comp
        (i : A[T;T⁻¹] →+* B)).toMonoidHom.comp (AddMonoidAlgebra.of A ℤ))
      (fun _ _ => Commute.all _ _)
  have hi1 : ∀ (n : ℤ) (k : K), i₁ (AddMonoidAlgebra.single n k) =
      ((1 : B) ⊗ₜ[A] k) * (i (LaurentPolynomial.T n) ⊗ₜ[A] (1 : K)) := by
    intro n k
    exact AddMonoidAlgebra.liftNC_single _ _ n k
  have hj1 : ∀ (n : ℤ) (a : A), j (AddMonoidAlgebra.single n a) =
      LaurentPolynomial.C (algebraMap A K a) * LaurentPolynomial.T n := by
    intro n a
    exact AddMonoidAlgebra.liftNC_single _ _ n a
  have hC : ∀ a, i₁ (LaurentPolynomial.C a) = (1 : B) ⊗ₜ[A] a := by
    intro a
    have h1 := hi1 0 a
    rw [LaurentPolynomial.T_zero, map_one, ← Algebra.TensorProduct.one_def, mul_one] at h1
    exact h1
  have hT : ∀ n : ℤ, i₁ (LaurentPolynomial.T n) = i (LaurentPolynomial.T n) ⊗ₜ[A] (1 : K) := by
    intro n
    have h1 := hi1 n 1
    rw [← Algebra.TensorProduct.one_def, one_mul] at h1
    exact h1
  have hjC : ∀ a, j (LaurentPolynomial.C a) = LaurentPolynomial.C (algebraMap A K a) := by
    intro a
    have h1 := hj1 0 a
    rw [LaurentPolynomial.T_zero, mul_one] at h1
    exact h1
  have hjT : ∀ n : ℤ, j (LaurentPolynomial.T n) = LaurentPolynomial.T n := by
    intro n
    have h1 := hj1 n 1
    rw [map_one, map_one, one_mul] at h1
    exact h1
  have hiC : ∀ a, i (LaurentPolynomial.C a) = algebraMap A B a := by
    intro a
    rw [← AlgHom.commutes i a, LaurentPolynomial.algebraMap_apply, Algebra.algebraMap_self_apply]
  have hcomp : (LaurentPolynomial.C : K →+* K[T;T⁻¹]).comp (algebraMap A K) =
      j.comp (algebraMap A A[T;T⁻¹]) := by
    ext a
    rw [RingHom.comp_apply, RingHom.comp_apply, LaurentPolynomial.algebraMap_apply,
      Algebra.algebraMap_self_apply, hjC]
  have hgen : Subring.closure (Set.range (LaurentPolynomial.C : K →+* K[T;T⁻¹]) ∪ Set.range j) = ⊤ := by
    rw [eq_top_iff]
    intro q _
    refine LaurentPolynomial.induction_on' q ?_ ?_
    · intro a b ha hb
      exact Subring.add_mem _ ha hb
    · intro n a
      exact Subring.mul_mem _ (Subring.subset_closure (Or.inl ⟨a, rfl⟩))
        (Subring.subset_closure (Or.inr ⟨LaurentPolynomial.T n, hjT n⟩))
  have hij : ∀ s, i₁ (j s) = i s ⊗ₜ[A] (1 : K) := by
    intro s
    refine LaurentPolynomial.induction_on' s ?_ ?_
    · intro a b ha hb
      rw [map_add (f := _), map_add (f := _), ha, hb, map_add (f := _), TensorProduct.add_tmul]
    · intro n a
      rw [map_mul, map_mul, hjC, hjT, map_mul, hC, hT, hiC, Algebra.TensorProduct.tmul_mul_tmul,
        one_mul, mul_one, ← Algebra.smul_def, TensorProduct.smul_tmul,
        ← Algebra.algebraMap_eq_smul_one]
  have hmap : (Ideal.span {LaurentPolynomial.C f - LaurentPolynomial.T 1 * LaurentPolynomial.C g} :
      Ideal A[T;T⁻¹]).map j = Ideal.span {(LaurentPolynomial.C (algebraMap A K f) -
        LaurentPolynomial.T 1 * LaurentPolynomial.C (algebraMap A K g))} := by
    rw [Ideal.map_span, Set.image_singleton, map_sub, map_mul, hjC, hjC, hjT]
  refine ⟨i₁, ?_, hC, hT⟩
  rw [← hmap]
  exact _root_.GlobalTheory.CompanionTheory.PerfectRing.pq_baseChange p A A[T;T⁻¹] B K K[T;T⁻¹] i _ LaurentPolynomial.C j i₁ hA hK hPQ hcomp hgen
    hC hij

end GlobalTheory.CompanionTheory.PerfBC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitTZpow =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpHomotopy =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpHomotopy", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Fin\npublic import Mathlib.RingTheory.TensorProduct.Basic\npublic import Mathlib.RingTheory.TensorProduct.Maps\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.WpHomotopy

theorem wp_homotopy : ∀ (A : Type) [CommRing A](B : Type) [CommRing B] [Algebra A B] (K : ℕ → Type) [∀ n, CommRing (K n)] [∀ n, Algebra A (K n)] (ι : ∀ n, Fin n → (B →ₐ[A] K n)) (δ : ∀ n, Fin (n + 1) → (K n →ₐ[A] K (n + 1))), (∀ n, IsWP (ι n)) → (∀ n k i, (δ n k).comp (ι n i) = ι (n + 1) (k.succAbove i)) → ∃ H : ∀ n, K (n + 1) →ₗ[A] B ⊗[A] K n, (∀ z, H 0 (alt (δ 0) z) = (1 : B) ⊗ₜ[A] z) ∧ ∀ n z, (alt (δ n)).lTensor B (H n z) + H (n + 1) (alt (δ (n + 1)) z) = (1 : B) ⊗ₜ[A] z := by
  intro A _ B _ _ K _ _ ι δ hW hδ
  have huniq : ∀ (m : ℕ) (T : Type) [CommRing T] [Algebra A T] (f g : K m →ₐ[A] T),
      (∀ i, f.comp (ι m i) = g.comp (ι m i)) → f = g := by
    intro m T _ _ f g hfg
    have key := (hW m).uniq T (f : K m →+* T) (g : K m →+* T)
      (by ext a; simp)
      (fun i => by
        ext b
        exact DFunLike.congr_fun (hfg i) b)
    ext x
    exact DFunLike.congr_fun key x
  have hex : ∀ n, ∃ h : K (n + 1) →ₐ[A] B ⊗[A] K n,
      h.comp (ι (n + 1) 0) = Algebra.TensorProduct.includeLeft ∧
      ∀ i : Fin n, h.comp (ι (n + 1) i.succ) =
        (Algebra.TensorProduct.includeRight : K n →ₐ[A] B ⊗[A] K n).comp (ι n i) := by
    intro n
    obtain ⟨z, hz, hzi⟩ := (hW (n + 1)).ex (B ⊗[A] K n) (algebraMap A (B ⊗[A] K n))
      (Fin.cons (α := fun _ => B →+* B ⊗[A] K n)
        ((Algebra.TensorProduct.includeLeft : B →ₐ[A] B ⊗[A] K n) : B →+* B ⊗[A] K n)
        (fun i => (((Algebra.TensorProduct.includeRight : K n →ₐ[A] B ⊗[A] K n).comp (ι n i) :
          B →ₐ[A] B ⊗[A] K n) : B →+* B ⊗[A] K n)))
      (by
        intro i
        refine Fin.cases ?_ (fun j => ?_) i
        · ext a; simp
        · ext a; simp)
    refine ⟨{ z with commutes' := fun a => DFunLike.congr_fun hz a }, ?_, fun i => ?_⟩
    · ext b
      simpa using DFunLike.congr_fun (hzi 0) b
    · ext b
      simpa using DFunLike.congr_fun (hzi i.succ) b
  choose h hl hr using hex
  have h0 : ∀ n, (h n).comp (δ n 0) = (Algebra.TensorProduct.includeRight : K n →ₐ[A] B ⊗[A] K n) := by
    intro n
    refine huniq n _ _ _ (fun i => ?_)
    rw [AlgHom.comp_assoc, hδ, Fin.succAbove_zero]
    exact hr n i
  have hs : ∀ n (k : Fin (n + 1)), (h (n + 1)).comp (δ (n + 1) k.succ) =
      (Algebra.TensorProduct.map (AlgHom.id A B) (δ n k)).comp (h n) := by
    intro n k
    refine huniq (n + 1) _ _ _ (fun i => ?_)
    rw [AlgHom.comp_assoc, hδ, AlgHom.comp_assoc]
    refine Fin.cases ?_ (fun j => ?_) i
    · rw [Fin.succ_succAbove_zero, hl, hl]
      ext b
      simp
    · rw [Fin.succ_succAbove_succ, hr, hr, ← AlgHom.comp_assoc]
      have e := hδ n k j
      ext b
      have e' := DFunLike.congr_fun e b
      simp only [AlgHom.comp_apply] at e' ⊢
      simp [e']
  refine ⟨fun n => (h n).toLinearMap, fun z => ?_, fun n z => ?_⟩
  · have e := DFunLike.congr_fun (h0 0) z
    simpa [alt] using e
  · have e0 := DFunLike.congr_fun (h0 (n + 1)) z
    have es : ∀ k : Fin (n + 1), h (n + 1) (δ (n + 1) k.succ z) =
        ((δ n k).toLinearMap.lTensor B) (h n z) := by
      intro k
      have e := DFunLike.congr_fun (hs n k) z
      simp only [AlgHom.comp_apply] at e
      rw [e]
      generalize h n z = t
      induction t using TensorProduct.induction_on with
      | zero => simp
      | tmul a b => simp
      | add x y hx hy => simp only [map_add (f := _), hx, hy]
    have a1 : alt (δ (n + 1)) z = δ (n + 1) 0 z +
        ∑ k : Fin (n + 1), -((-1 : ℤ) ^ (k : ℕ) • δ (n + 1) k.succ z) := by
      simp [alt, Fin.sum_univ_succ, LinearMap.sum_apply, pow_succ]
    have a2 : ∀ t : B ⊗[A] K n, (alt (δ n)).lTensor B t =
        ∑ k : Fin (n + 1), (-1 : ℤ) ^ (k : ℕ) • ((δ n k).toLinearMap.lTensor B) t := by
      intro t
      induction t using TensorProduct.induction_on with
      | zero => simp
      | tmul a b =>
        simp only [alt, LinearMap.lTensor_tmul, LinearMap.sum_apply, LinearMap.smul_apply,
          TensorProduct.tmul_sum, TensorProduct.tmul_smul]
      | add x y hx hy =>
        simp only [map_add (f := _), hx, hy, smul_add, Finset.sum_add_distrib]
    show (alt (δ n)).lTensor B (h n z) + h (n + 1) (alt (δ (n + 1)) z) = (1 : B) ⊗ₜ[A] z
    have e1 : h (n + 1) (δ (n + 1) 0 z) = (1 : B) ⊗ₜ[A] z := by
      simpa using e0

    rw [a1, a2, map_add (f := _), e1, map_sum, add_left_comm, ← Finset.sum_add_distrib]
    have : ∀ k : Fin (n + 1), (-1 : ℤ) ^ (k : ℕ) • ((δ n k).toLinearMap.lTensor B) (h n z) +
        h (n + 1) (-((-1 : ℤ) ^ (k : ℕ) • δ (n + 1) k.succ z)) = 0 := by
      intro k
      rw [map_neg, map_zsmul, es k, add_neg_cancel]
    rw [Finset.sum_congr rfl (fun k _ => this k)]
    simp

end GlobalTheory.CompanionTheory.WpHomotopy
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpHomotopy =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpPf =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpPf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRingHomPowPrimePow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PfFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial

namespace GlobalTheory.CompanionTheory.PerfectRing

theorem wp_pf : ∀ (p : ℕ) [Fact p.Prime] (A : Type) [CommRing A] (B : Type) [CommRing B] [Algebra A B]
    (K : Type) [CommRing K] [Algebra A K] (n : ℕ) (ι : Fin n → (B →ₐ[A] K)),
    IsWP ι → Pf p A → Pf p B → Pf p K := by
  intro p _ A _ B _ _ K _ _ n ι hW hA hB
  obtain ⟨⟨FA, hFA⟩, -⟩ := pf_facts p A hA
  obtain ⟨⟨FB, hFB⟩, -⟩ := pf_facts p B hB
  have hchar : (p : K) = 0 := by
    have := congrArg (algebraMap A K) hA.char
    simpa using this
  obtain ⟨F, hF⟩ := GlobalTheory.CompanionTheory.Frobenius.exists_ringHom_pow_prime_pow p K hchar 1
  have hF' : ∀ x, F x = x ^ p := fun x => by rw [hF, pow_one]
  have hcompat : ∀ i, (((ι i : B →+* K)).comp (FB.symm : B →+* B)).comp (algebraMap A B) =
      (algebraMap A K).comp (FA.symm : A →+* A) := by
    intro i
    ext a
    obtain ⟨b, rfl⟩ := FA.surjective a
    have h1 : algebraMap A B (FA b) = FB (algebraMap A B b) := by
      rw [hFA, hFB, map_pow]
    simp [h1]
  obtain ⟨z, hz1, hz2⟩ := hW.ex K ((algebraMap A K).comp (FA.symm : A →+* A))
    (fun i => ((ι i : B →+* K)).comp (FB.symm : B →+* B)) hcompat
  have hz1' : ∀ a, z (algebraMap A K a) = algebraMap A K (FA.symm a) := fun a => by
    simpa using congrArg (fun f : A →+* K => f a) hz1
  have hz2' : ∀ i b, z (ι i b) = ι i (FB.symm b) := fun i b => by
    simpa using congrArg (fun f : B →+* K => f b) (hz2 i)
  have hFa : ∀ a, F (algebraMap A K a) = algebraMap A K (FA a) := fun a => by
    rw [hF', hFA, map_pow]
  have hFb : ∀ i b, F (ι i b) = ι i (FB b) := fun i b => by
    rw [hF', hFB, map_pow]
  have hFz : F.comp z = RingHom.id K := by
    apply hW.uniq K
    · ext a
      simp [hz1', hFa]
    · intro i
      ext b
      simp [hz2', hFb]
  have hzF : z.comp F = RingHom.id K := by
    apply hW.uniq K
    · ext a
      simp [hz1', hFa]
    · intro i
      ext b
      simp [hz2', hFb]
  refine ⟨hchar, ?_, ?_⟩
  · intro x y hxy
    have h : F x = F y := by rw [hF', hF']; exact hxy
    have := congrArg z h
    have hx : ∀ w, z (F w) = w := fun w => by
      simpa using congrArg (fun f : K →+* K => f w) hzF
    rwa [hx, hx] at this
  · intro y
    refine ⟨z y, ?_⟩
    have : F (z y) = y := by simpa using congrArg (fun f : K →+* K => f y) hFz
    simpa [hF'] using this

end GlobalTheory.CompanionTheory.PerfectRing
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpPf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TensCompl =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TensCompl", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\npublic import Mathlib.Algebra.Polynomial.Laurent\npublic import Mathlib.RingTheory.TensorProduct.Maps\npublic import Mathlib.RingTheory.Valuation.ValuationRing\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AicValOfIsColim\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AltAlt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BijectiveAlgebraMapZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CancelLTensor\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CofaceRel\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComplVal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompletionComplete\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CovOfAlgHom\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DirectedSystemTrR\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConstOfRhoEq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsIsWP\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsKill\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPQ\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRetraction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsComplExistsUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsComplNonZeroDivisor\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LaurentEqToLaurentSubInvert\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemPowSmulTopIff\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEqZeroOfCPowMemSpan\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OneTmulMemRangeIff\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PfFacts\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PfOfIsCompl\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PqBaseChangePolynomial\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PqLift\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProdLeftEqRTensor\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulMemRangeLTensorOfLTensorEqZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SolvAtStage\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorPunitEqZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TmulEqZeroOfMemSpan\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TorsQuot\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitTZpow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpHomotopy\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WpPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.D
open scoped LaurentPolynomial
namespace CrystallineSemistableComparison.D.Leaf

end CrystallineSemistableComparison.D.Leaf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.TensCompl =====
