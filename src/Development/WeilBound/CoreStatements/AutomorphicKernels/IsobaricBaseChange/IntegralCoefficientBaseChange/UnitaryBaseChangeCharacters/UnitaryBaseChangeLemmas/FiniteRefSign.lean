module

public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField
public import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomial
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonsplitCentraliserNormElement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft
public import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramKernelSignNonsplitBaseChangeEqStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFormSignatureRealisation
public import Formalism.SatakeDualWeyl.Statement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeftMulMatrixTransfer
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinprodNonsplitSignTotallyPositiveEqOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramKernelSignNonsplitBaseChangeEq
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetGramRatOneNeZero
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCyclicVectorOfSeparable
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.QuadraticClassFieldTheory
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.RingTheory.PiTensorProduct
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Tactic.Linter.Style
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsSupersetMemSUnits
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.WittVector.IsPoly
import Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary
import Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RamificationIdxEqOneOfIsSquare
import Mathlib.Algebra.AffineMonoid.UniqueSums
import Mathlib.LinearAlgebra.LinearIndependent.BaseChange
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.HermitianTraceFormVanishing
import Mathlib.Analysis.Matrix.Order
import Mathlib.LinearAlgebra.Matrix.Charpoly.Eigs
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DvdOfPhiEqZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainder, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainderStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlaces, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlacesStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialIn, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialInStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CTAevalMulEq, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomial, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomialStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirst, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirstStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecond, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecondStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemNormsOfCongrEquiv, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThird, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThirdStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroup, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroupStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomial, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomialStatement, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.FiniteRefSign

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DvdOfPhiEqZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DvdOfPhiEqZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonsplitCentraliserNormElement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField

noncomputable section
namespace GlobalTheory.CompanionTheory.LocAssembly

def tensorLift {R A B T : Type} [CommRing R] [CommRing A] [CommRing B] [CommRing T] [Algebra R A] [Algebra R B]
    (a : A →+* T) (b : B →+* T) (h : ∀ x : R, a (algebraMap R A x) = b (algebraMap R B x)) : A ⊗[R] B →+* T :=
  letI : Algebra R T := (a.comp (algebraMap R A)).toAlgebra
  (Algebra.TensorProduct.lift (⟨a, fun _ => rfl⟩ : A →ₐ[R] T) (⟨b, fun x => (h x).symm⟩ : B →ₐ[R] T)
    (fun _ _ => Commute.all _ _)).toRingHom

theorem tensorLift_tmul {R A B T : Type} [CommRing R] [CommRing A] [CommRing B] [CommRing T] [Algebra R A]
    [Algebra R B] (a : A →+* T) (b : B →+* T) (h : ∀ x : R, a (algebraMap R A x) = b (algebraMap R B x))
    (x : A) (y : B) : tensorLift a b h (x ⊗ₜ y) = a x * b y := by
  letI : Algebra R T := (a.comp (algebraMap R A)).toAlgebra
  exact Algebra.TensorProduct.lift_tmul _ _ _ x y

theorem exists_common {ι A : Type} [Finite ι] [CommRing A] {R : ι → Type} [∀ i, CommRing (R i)]
    (φ : ∀ i, A →+* R i) (hs : ∀ i, Function.Surjective (φ i)) (q : ι → A) (hq : ∀ i, φ i (q i) = 0)
    (hc : Pairwise (Function.onFun IsCoprime q)) (z : ∀ i, R i) : ∃ f : A, ∀ i, φ i f = z i := by
  choose x hx using fun i => hs i (z i)
  have hcop : Pairwise (Function.onFun IsCoprime fun i => Ideal.span {q i}) := by
    intro i i' hne
    simp only [Function.onFun]
    rw [Ideal.isCoprime_span_singleton_iff]
    exact hc hne
  obtain ⟨f, hf⟩ := Ideal.exists_forall_sub_mem_ideal hcop x
  refine ⟨f, fun i => ?_⟩
  obtain ⟨d, hd⟩ := Ideal.mem_span_singleton.1 (hf i)
  rw [← hx i, ← sub_eq_zero, ← map_sub, hd, map_mul, hq, zero_mul]

theorem aeval_intertwine {K : Type} [Field K] {n : ℕ} (B C H : Matrix (Fin n) (Fin n) K) (h : B * H = H * C)
    (p : K[X]) : aeval B p * H = H * aeval C p := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), add_mul, mul_add, hp, hq]
  | monomial d a =>
    have hpow : B ^ d * H = H * C ^ d := by
      induction d with
      | zero => simp
      | succ d ih => rw [pow_succ, Matrix.mul_assoc, h, ← Matrix.mul_assoc, ih, Matrix.mul_assoc, ← pow_succ]
    simp only [aeval_monomial, Algebra.algebraMap_eq_smul_one, smul_mul_assoc, one_mul, Matrix.mul_smul, hpow]

theorem tmul_split {R A B : Type} [CommRing R] [CommRing A] [CommRing B] [Algebra R A] [Algebra R B] (a : A) (y : B) :
    (a ⊗ₜ[R] (1 : B)) * ((1 : A) ⊗ₜ[R] y) = a ⊗ₜ[R] y := by
  rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]

variable {E : Type} [Field E] [NumberField E] [IsCMField E]
  {k : Type} [CommRing k] [Algebra (maximalRealSubfield E) k]
  {K : Type} [Field K] [Algebra E K]

def phi (j : K ≃+* k ⊗[maximalRealSubfield E] E) {r : ℕ} (Q : SelfRecip E r) :
    K[X] →+* k ⊗[maximalRealSubfield E] Fld Q :=
  eval₂RingHom ((inclBase Q k).toRingHom.comp j.toRingHom) ((1 : k) ⊗ₜ alpha Q)

section
variable (j : K ≃+* k ⊗[maximalRealSubfield E] E) {r : ℕ} (Q : SelfRecip E r)

theorem phi_C (x : K) : phi j Q (C x) = inclBase Q k (j x) := eval₂_C _ _

theorem phi_X : phi j Q X = (1 : k) ⊗ₜ alpha Q := eval₂_X _ _

variable (hj1 : ∀ e : E, j (algebraMap E K e) = (1 : k) ⊗ₜ e)
include hj1

theorem phi_map (p : E[X]) : phi j Q (p.map (algebraMap E K)) = (1 : k) ⊗ₜ (AdjoinRoot.mk Q.1 p : Fld Q) := by
  let g : Fld Q →+* k ⊗[maximalRealSubfield E] Fld Q :=
    (Algebra.TensorProduct.includeRight : Fld Q →ₐ[maximalRealSubfield E] k ⊗[maximalRealSubfield E] Fld Q).toRingHom
  have e : ((inclBase Q k).toRingHom.comp j.toRingHom).comp (algebraMap E K) = g.comp (algebraMap E (Fld Q)) :=
    RingHom.ext fun e => by
      change inclBase Q k (j (algebraMap E K e)) = _
      rw [hj1]
      simp [inclBase, g]
  change eval₂ ((inclBase Q k).toRingHom.comp j.toRingHom) ((1 : k) ⊗ₜ alpha Q) (p.map (algebraMap E K)) = _
  rw [eval₂_map, e]
  refine (Polynomial.hom_eval₂ p (algebraMap E (Fld Q)) g (alpha Q)).symm.trans ?_
  change (1 : k) ⊗ₜ eval₂ (algebraMap E (Fld Q)) (alpha Q) p = _
  rw [← aeval_def]
  congr 1
  exact AdjoinRoot.aeval_eq p

theorem phi_surjective : Function.Surjective (phi j Q) := by
  intro y
  induction y using TensorProduct.induction_on with
  | zero => exact ⟨0, map_zero _⟩
  | add a b ha hb =>
    obtain ⟨x, rfl⟩ := ha
    obtain ⟨y, rfl⟩ := hb
    exact ⟨x + y, map_add _ _ _⟩
  | tmul a y =>
    obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective y
    refine ⟨C (j.symm (a ⊗ₜ 1)) * p.map (algebraMap E K), ?_⟩
    rw [map_mul, phi_C, phi_map j Q hj1, RingEquiv.apply_symm_apply]
    have h1 : inclBase Q k (a ⊗ₜ (1 : E)) = a ⊗ₜ[maximalRealSubfield E] (1 : Fld Q) := by simp [inclBase]
    rw [h1]
    exact tmul_split a _

omit hj1 in
theorem eval₂_root_map : eval₂ ((AdjoinRoot.of (Q.1.map (algebraMap E K))).comp (algebraMap E K))
    (AdjoinRoot.root (Q.1.map (algebraMap E K))) Q.1 = 0 := by
  have h := AdjoinRoot.eval₂_root (Q.1.map (algebraMap E K))
  rwa [eval₂_map] at h


omit hj1 in
def psiB : Fld Q →+* AdjoinRoot (Q.1.map (algebraMap E K)) :=
  AdjoinRoot.lift ((AdjoinRoot.of (Q.1.map (algebraMap E K))).comp (algebraMap E K))
    (AdjoinRoot.root (Q.1.map (algebraMap E K))) (eval₂_root_map Q)

omit hj1 in
theorem psiB_algebraMap (e : E) : psiB (K := K) Q (algebraMap E (Fld Q) e) = AdjoinRoot.of _ (algebraMap E K e) :=
  AdjoinRoot.lift_of (eval₂_root_map Q)

omit hj1 in
theorem psiB_alpha : psiB (K := K) Q (alpha Q) = AdjoinRoot.root _ :=
  AdjoinRoot.lift_root (eval₂_root_map Q)

def psi : k ⊗[maximalRealSubfield E] Fld Q →+* AdjoinRoot (Q.1.map (algebraMap E K)) :=
  tensorLift
    ((AdjoinRoot.of (Q.1.map (algebraMap E K))).comp
      (j.symm.toRingHom.comp (Algebra.TensorProduct.includeLeftRingHom : k →+* k ⊗[maximalRealSubfield E] E)))
    (psiB Q)
    (fun x => by
      have h1 : (algebraMap (maximalRealSubfield E) k x) ⊗ₜ[maximalRealSubfield E] (1 : E) =
          (1 : k) ⊗ₜ algebraMap (maximalRealSubfield E) E x := by
        rw [Algebra.algebraMap_eq_smul_one, TensorProduct.smul_tmul, Algebra.smul_def, mul_one]
      have h2 : j.symm ((1 : k) ⊗ₜ algebraMap (maximalRealSubfield E) E x) =
          algebraMap E K (algebraMap (maximalRealSubfield E) E x) := by
        rw [RingEquiv.symm_apply_eq, hj1]
      have h3 : algebraMap (maximalRealSubfield E) (Fld Q) x =
          algebraMap E (Fld Q) (algebraMap (maximalRealSubfield E) E x) := rfl
      change AdjoinRoot.of _ (j.symm ((algebraMap (maximalRealSubfield E) k x) ⊗ₜ 1)) = psiB Q _
      rw [h1, h2, h3, psiB_algebraMap])

theorem psi_tmul (a : k) (y : Fld Q) : psi j Q hj1 (a ⊗ₜ[maximalRealSubfield E] y) =
    AdjoinRoot.of _ (j.symm (a ⊗ₜ 1)) * psiB Q y :=
  tensorLift_tmul _ _ _ a y

theorem psi_inclBase (y : k ⊗[maximalRealSubfield E] E) :
    psi j Q hj1 (inclBase Q k y) = AdjoinRoot.of _ (j.symm y) := by
  induction y using TensorProduct.induction_on with
  | zero => simp
  | add a b ha hb => simp only [map_add (f := _), ha, hb]
  | tmul a e =>
    have h0 : inclBase Q k (a ⊗ₜ e) = a ⊗ₜ[maximalRealSubfield E] algebraMap E (Fld Q) e := by
      simp [inclBase]
    have h2 : j.symm ((1 : k) ⊗ₜ e) = algebraMap E K e := by rw [RingEquiv.symm_apply_eq, hj1]
    have h3 : j.symm (a ⊗ₜ e) = j.symm (a ⊗ₜ 1) * j.symm ((1 : k) ⊗ₜ e) := by
      rw [← map_mul, tmul_split]
    rw [h0, psi_tmul, psiB_algebraMap, h3, map_mul, h2]

theorem psi_phi (g : K[X]) : psi j Q hj1 (phi j Q g) = AdjoinRoot.mk _ g := by
  have : (psi j Q hj1).comp (phi j Q) = AdjoinRoot.mk (Q.1.map (algebraMap E K)) := by
    refine Polynomial.ringHom_ext (fun x => ?_) ?_
    · rw [RingHom.comp_apply, phi_C, psi_inclBase, RingEquiv.symm_apply_apply]
      rfl
    · rw [RingHom.comp_apply, phi_X, psi_tmul, psiB_alpha]
      have h2 : j.symm ((1 : k) ⊗ₜ[maximalRealSubfield E] (1 : E)) = 1 := by
        rw [RingEquiv.symm_apply_eq, map_one]; rfl
      rw [h2, map_one, one_mul]
      exact AdjoinRoot.mk_X.symm
  exact DFunLike.congr_fun this g

theorem dvd_of_phi_eq_zero {g : K[X]} (h : phi j Q g = 0) : Q.1.map (algebraMap E K) ∣ g := by
  have := psi_phi j Q hj1 g
  rw [h, map_zero] at this
  exact AdjoinRoot.mk_eq_zero.1 this.symm


omit hj1 in
theorem involBase_phi (cK : K →+* K)
    (hj2 : ∀ x, j (cK x) = Algebra.TensorProduct.map (AlgHom.id (maximalRealSubfield E) k)
      ((IsCMField.complexConj E : E ≃ₐ[maximalRealSubfield E] E) : E →ₐ[maximalRealSubfield E] E) (j x))
    (R : K[X]) (hR : phi j Q R = (1 : k) ⊗ₜ (alpha Q)⁻¹) (f : K[X]) :
    involBase Q k (phi j Q f) = phi j Q ((f.map cK).comp R) := by
  let ι : K →+* k ⊗[maximalRealSubfield E] Fld Q := (inclBase Q k).toRingHom.comp j.toRingHom
  let ib : k ⊗[maximalRealSubfield E] Fld Q →+* k ⊗[maximalRealSubfield E] Fld Q := (involBase Q k).toRingHom
  have hιc : ∀ y, involBase Q k (ι y) = ι (cK y) := by
    intro y
    change involBase Q k (inclBase Q k (j y)) = inclBase Q k (j (cK y))
    rw [hj2]
    generalize j y = t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul a e => simp [inclBase, involBase, invol_algebraMap]
    | add a b ha hb => simp only [map_add (f := _), ha, hb]
  have e1 : ib.comp ι = ι.comp cK := RingHom.ext fun y => hιc y
  have e2 : ib ((1 : k) ⊗ₜ alpha Q) = (1 : k) ⊗ₜ (alpha Q)⁻¹ := by
    change (1 : k) ⊗ₜ invol Q (alpha Q) = _
    rw [invol_alpha]
  change ib (eval₂ ι _ f) = eval₂ ι _ _
  rw [Polynomial.hom_eval₂, e1, e2, eval₂_comp, eval₂_map]
  exact congrArg (fun x => eval₂ (ι.comp cK) x f) hR.symm

end

theorem aeval_map_mat' {n : ℕ} (M : Matrix (Fin n) (Fin n) E) (p : E[X]) :
    aeval (M.map (algebraMap E K)) (p.map (algebraMap E K)) = (aeval M p).map (algebraMap E K) := by
  rw [aeval_map_algebraMap]
  have := aeval_algHom_apply (AlgHom.mapMatrix (Algebra.ofId E K)) M p
  have e : (⇑(Algebra.ofId E K) : E → _) = algebraMap E _ := rfl
  simpa [AlgHom.mapMatrix_apply, e] using this

theorem final_calc {K : Type} [Field K] {n : ℕ} (A H' : Matrix (Fin n) (Fin n) K) (cK : K →+* K) (f m R : K[X])
    (T : Matrix (Fin n) (Fin n) K) (hint : cT cK A * H' = H' * aeval A R)
    (hkey : aeval A ((f.map cK).comp R) * aeval A m * aeval A f = T) :
    H' * T = cT cK (aeval A f) * (H' * aeval A m) * aeval A f := by
  have e := aeval_intertwine _ _ _ hint (f.map cK)
  rw [← aeval_comp] at e
  rw [← hkey, GlobalTheory.NormInert.cT_aeval, ← Matrix.mul_assoc (aeval (cT cK A) _) H', e]
  simp only [Matrix.mul_assoc]

theorem assembly (j : K ≃+* k ⊗[maximalRealSubfield E] E) (hj1 : ∀ e : E, j (algebraMap E K e) = (1 : k) ⊗ₜ e)
    (cK : K →+* K)
    (hj2 : ∀ x, j (cK x) = Algebra.TensorProduct.map (AlgHom.id (maximalRealSubfield E) k)
      ((IsCMField.complexConj E : E ≃ₐ[maximalRealSubfield E] E) : E →ₐ[maximalRealSubfield E] E) (j x))
    {n : ℕ} (γ₀ : GL (Fin n) E) (hell : γ₀.val.charpoly ∈ Ell E n) (H₀ : Matrix (Fin n) (Fin n) E)
    (hinv : cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀)
    (m : K[X]) (t : E[X])
    (hz : ∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly →
      ∃ z : (k ⊗[maximalRealSubfield E] Fld Q)ˣ,
        phi j Q m * ((z : k ⊗[maximalRealSubfield E] Fld Q) * involBase Q k (z : k ⊗[maximalRealSubfield E] Fld Q)) =
          phi j Q (t.map (algebraMap E K))) :
    ∃ c : GL (Fin n) K, c.val * (γ₀.val.map (algebraMap E K)) = (γ₀.val.map (algebraMap E K)) * c.val ∧
      (H₀ * aeval γ₀.val t).map (algebraMap E K) =
        cT cK c.val * ((H₀.map (algebraMap E K)) * aeval (γ₀.val.map (algebraMap E K)) m) * c.val := by
  have hcK : ∀ e : E, cK (algebraMap E K e) = algebraMap E K (IsCMField.complexConj E e) := by
    intro e
    apply j.injective
    rw [hj2, hj1, hj1]
    simp
  set P := γ₀.val.charpoly with hPdef
  have hPsep : P.Separable := hell.2.2.1
  have hP0 : P ≠ 0 := hell.1.ne_zero
  have hself : ∀ Q : E[X], Q.Monic → Irreducible Q → Q ∣ P → IsSelfRecip E Q.natDegree Q :=
    GlobalTheory.SelfRecipFactor.isSelfRecip_of_dvd_ell E n P hell
  have hXP : IsCoprime X P := by
    rw [Polynomial.irreducible_X.coprime_iff_not_dvd]
    intro hX
    exact (hself X monic_X irreducible_X hX).2.2.2.1 (by simp)
  obtain ⟨a, b, hab⟩ := hXP
  set S := (UniqueFactorizationMonoid.normalizedFactors P).toFinset with hS
  have hmem : ∀ Q ∈ S, Q.Monic ∧ Irreducible Q ∧ Q ∣ P := by
    intro Q hQ
    rw [hS, Multiset.mem_toFinset] at hQ
    have hirr := UniqueFactorizationMonoid.irreducible_of_normalized_factor Q hQ
    refine ⟨?_, hirr, UniqueFactorizationMonoid.dvd_of_mem_normalizedFactors hQ⟩
    have hn := UniqueFactorizationMonoid.normalize_normalized_factor Q hQ
    rw [← hn]; exact Polynomial.monic_normalize hirr.ne_zero
  have hcopS : (S : Set E[X]).Pairwise (Function.onFun IsCoprime fun Q : E[X] => Q) := by
    intro Q hQ Q' hQ' hne
    simp only [Function.onFun]
    rw [(hmem Q hQ).2.1.coprime_iff_not_dvd]
    intro hd
    exact hne (eq_of_monic_of_associated (hmem Q hQ).1 (hmem Q' hQ').1
      ((hmem Q hQ).2.1.associated_of_dvd (hmem Q' hQ').2.1 hd))
  have hcopK : (S : Set E[X]).Pairwise (Function.onFun IsCoprime fun Q : E[X] => Q.map (algebraMap E K)) := by
    intro Q hQ Q' hQ' hne
    have := (hcopS hQ hQ' hne).map (mapRingHom (algebraMap E K))
    simpa [Function.onFun] using this
  have hassoc : Associated (∏ Q ∈ S, Q) P := by
    have hnd := (UniqueFactorizationMonoid.squarefree_iff_nodup_normalizedFactors hP0).1 hPsep.squarefree
    rw [Finset.prod_eq_multiset_prod, hS, Multiset.toFinset_val, hnd.dedup, Multiset.map_id']
    exact UniqueFactorizationMonoid.prod_normalizedFactors hP0
  let Qs : ∀ Q : S, SelfRecip E Q.1.natDegree := fun Q =>
    ⟨Q.1, hself Q.1 (hmem Q.1 Q.2).1 (hmem Q.1 Q.2).2.1 (hmem Q.1 Q.2).2.2⟩
  have hQsP : ∀ Q : S, (Qs Q).1 ∣ P := fun Q => (hmem Q.1 Q.2).2.2
  choose z hzQ using fun Q : S => hz _ (Qs Q) (hQsP Q)
  have hcommon : ∀ y : ∀ Q : S, k ⊗[maximalRealSubfield E] Fld (Qs Q), ∃ f : K[X], ∀ Q : S, phi j (Qs Q) f = y Q := by
    intro y
    refine exists_common (fun Q : S => phi j (Qs Q)) (fun Q => phi_surjective j (Qs Q) hj1)
      (fun Q : S => Q.1.map (algebraMap E K)) (fun Q => ?_) (fun Q Q' hne => ?_) y
    · have h0 : (AdjoinRoot.mk (Qs Q).1 (Qs Q).1 : Fld (Qs Q)) = 0 := AdjoinRoot.mk_self
      have := phi_map j (Qs Q) hj1 (Qs Q).1
      rw [h0] at this
      exact this.trans (TensorProduct.tmul_zero _ _)
    · exact hcopK Q.2 Q'.2 (fun h => hne (Subtype.ext h))
  set A : Matrix (Fin n) (Fin n) K := γ₀.val.map (algebraMap E K) with hA
  have hCH : aeval A (P.map (algebraMap E K)) = 0 := by
    rw [hPdef, hA, ← Matrix.charpoly_map]
    exact Matrix.aeval_self_charpoly _
  have hvan : ∀ h : K[X], (∀ Q : S, phi j (Qs Q) h = 0) → aeval A h = 0 := by
    intro h hh
    have h1 : (∏ Q ∈ S, Q.map (algebraMap E K)) ∣ h :=
      Finset.prod_dvd_of_coprime hcopK fun Q hQ => dvd_of_phi_eq_zero j (Qs ⟨Q, hQ⟩) hj1 (hh ⟨Q, hQ⟩)
    rw [← Polynomial.map_prod] at h1
    obtain ⟨d, hd⟩ := (Polynomial.map_dvd (algebraMap E K) hassoc.symm.dvd).trans h1
    rw [hd, map_mul, hCH, zero_mul]
  obtain ⟨f, hf⟩ := hcommon fun Q => (z Q : k ⊗[maximalRealSubfield E] Fld (Qs Q))
  obtain ⟨g, hg⟩ := hcommon fun Q => ((z Q)⁻¹ : (k ⊗[maximalRealSubfield E] Fld (Qs Q))ˣ)
  have hfg : aeval A f * aeval A g = 1 := by
    have := hvan (f * g - 1) fun Q => by
      rw [map_sub, map_mul, hf, hg, Units.mul_inv, map_one, sub_self]
    rw [map_sub, map_mul, map_one] at this
    exact sub_eq_zero.1 this
  have hgf : aeval A g * aeval A f = 1 := by rw [← map_mul, mul_comm, map_mul, hfg]
  set R : K[X] := a.map (algebraMap E K) with hRdef
  have hBA : aeval A R * A = 1 := by
    have := congrArg (fun p : E[X] => aeval A (p.map (algebraMap E K))) hab
    simp only [Polynomial.map_add (f := _), Polynomial.map_mul, map_add (f := _), map_mul, hCH, Polynomial.map_X, aeval_X,
      Polynomial.map_one, map_one, mul_zero, add_zero] at this
    exact this
  have hAB : A * aeval A R = 1 := by
    rw [show A * aeval A R = aeval A (X * R) by simp, mul_comm, map_mul, aeval_X, hBA]
  have hphiR : ∀ Q : S, phi j (Qs Q) R = (1 : k) ⊗ₜ (alpha (Qs Q))⁻¹ := by
    intro Q
    rw [hRdef, phi_map j (Qs Q) hj1]
    congr 1
    have := congrArg (AdjoinRoot.mk (Qs Q).1) hab
    rw [map_add (f := _), map_mul, map_mul, map_one, AdjoinRoot.mk_X, AdjoinRoot.mk_eq_zero.2 (hQsP Q), mul_zero, add_zero] at this
    exact eq_inv_of_mul_eq_one_left this
  set H' : Matrix (Fin n) (Fin n) K := H₀.map (algebraMap E K) with hH'
  have hcTmap : (cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val).map (algebraMap E K) = cT cK A := by
    ext x y
    simp [cT, hA, hcK]
  have hmap : cT cK A * H' * A = H' := by
    have := congrArg (Matrix.map · (algebraMap E K)) hinv
    simp only [Matrix.map_mul] at this
    rw [hcTmap] at this
    exact this
  have hint : cT cK A * H' = H' * aeval A R := by
    calc cT cK A * H' = cT cK A * H' * (A * aeval A R) := by rw [hAB, Matrix.mul_one]
      _ = H' * aeval A R := by rw [← Matrix.mul_assoc, hmap]
  have hkey : aeval A ((f.map cK).comp R * m * f - t.map (algebraMap E K)) = 0 := by
    refine hvan _ fun Q => ?_
    have h1 := involBase_phi j (Qs Q) cK hj2 R (hphiR Q) f
    rw [map_sub, map_mul, map_mul, ← h1, hf, ← hzQ Q]
    ring
  rw [map_sub, map_mul, map_mul, sub_eq_zero] at hkey
  refine ⟨⟨aeval A f, aeval A g, hfg, hgf⟩, ?_, ?_⟩
  · change aeval A f * A = A * aeval A f
    rw [show A * aeval A f = aeval A (X * f) by simp,
      show aeval A f * A = aeval A (f * X) by simp, mul_comm]
  · change _ = cT cK (aeval A f) * (H' * aeval A m) * aeval A f
    rw [Matrix.map_mul, ← aeval_map_mat']
    exact final_calc A H' cK f m R _ hint hkey

section Concrete

end Concrete

end GlobalTheory.CompanionTheory.LocAssembly
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DvdOfPhiEqZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainder =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainder", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

namespace GlobalTheory.CompanionTheory.EllCRT

private theorem monic_of_mem_normalizedFactors' {K : Type} [Field K] {P q : K[X]}
    (hq : q ∈ UniqueFactorizationMonoid.normalizedFactors P) : q.Monic := by
  have hq0 : q ≠ 0 := (UniqueFactorizationMonoid.irreducible_of_normalized_factor q hq).ne_zero
  rw [← UniqueFactorizationMonoid.normalize_normalized_factor q hq]
  exact Polynomial.monic_normalize hq0

private theorem span_sup_span_eq_unit_ideal_of_ne_normalizedFactors {K : Type} [Field K] {P p q : K[X]}
    (hp : p ∈ UniqueFactorizationMonoid.normalizedFactors P)
    (hq : q ∈ UniqueFactorizationMonoid.normalizedFactors P) (hpq : p ≠ q) :
    Ideal.span {p} ⊔ Ideal.span {q} = ⊤ := by
  have hpi : Irreducible p := UniqueFactorizationMonoid.irreducible_of_normalized_factor p hp
  have hqi : Irreducible q := UniqueFactorizationMonoid.irreducible_of_normalized_factor q hq
  have hcop : IsCoprime p q := by
    rw [Irreducible.coprime_iff_not_dvd hpi]
    intro hd
    exact hpq (Polynomial.eq_of_monic_of_associated (monic_of_mem_normalizedFactors' hp)
      (monic_of_mem_normalizedFactors' hq) (hpi.associated_of_dvd hqi hd))
  exact (Ideal.sup_eq_top_iff_isCoprime p q).mpr hcop

theorem exists_congr_monic_factors {K : Type} [Field K] {P : K[X]} (hP : P ≠ 0) (t : K[X] → K[X]) :
    ∃ m : K[X], ∀ f : K[X], f.Monic → Irreducible f → f ∣ P → f ∣ m - t f := by
  classical
  let S : Finset K[X] := (UniqueFactorizationMonoid.normalizedFactors P).toFinset
  have hcop : Pairwise (Function.onFun IsCoprime (fun i : S => Ideal.span {(i : K[X])})) := by
    intro i j hij
    show IsCoprime (Ideal.span {(i : K[X])}) (Ideal.span {(j : K[X])})
    exact Ideal.isCoprime_iff_sup_eq.mpr (span_sup_span_eq_unit_ideal_of_ne_normalizedFactors (Multiset.mem_toFinset.mp i.2)
      (Multiset.mem_toFinset.mp j.2) (fun h => hij (Subtype.ext h)))
  obtain ⟨r, hr⟩ := Ideal.exists_forall_sub_mem_ideal hcop (fun i : S => t i)
  refine ⟨r, fun f hfm hfi hfP => ?_⟩
  obtain ⟨q, hq, hfq⟩ := UniqueFactorizationMonoid.exists_mem_normalizedFactors_of_dvd hP hfi hfP
  have hfeq : f = q := Polynomial.eq_of_monic_of_associated hfm (monic_of_mem_normalizedFactors' hq) hfq
  subst hfeq
  have h := hr ⟨f, Multiset.mem_toFinset.mpr hq⟩
  exact Ideal.mem_span_singleton.mp h

private theorem adjoinRoot_exists_mk_eq {R : Type} [CommRing R] {f : R[X]} (x : AdjoinRoot f) :
    ∃ p : R[X], AdjoinRoot.mk f p = x :=
  AdjoinRoot.mk_surjective x

private theorem adjoinRoot_mk_eq_of_selfRecip_val_eq {E : Type} [Field E] [NumberField E] [IsCMField E]
    (g : ∀ (r : ℕ) (Q : SelfRecip E r), Fld Q) {r r' : ℕ} (Q : SelfRecip E r)
    (Q' : SelfRecip E r') (hQ : Q'.1 = Q.1) (l : E[X])
    (hl : (AdjoinRoot.mk Q'.1 l : Fld Q') = g r' Q') :
    (AdjoinRoot.mk Q.1 l : Fld Q) = g r Q := by
  have h1 : Q'.1.natDegree = r' := Q'.2.2.2.1
  have h2 : Q.1.natDegree = r := Q.2.2.2.1
  rw [hQ] at h1
  have hrr : r' = r := h1.symm.trans h2
  subst hrr
  obtain rfl : Q' = Q := Subtype.ext hQ
  exact hl

private theorem exists_polynomial_lift_adjoinRoot_selfRecip {E : Type} [Field E] [NumberField E] [IsCMField E]
    (g : ∀ (r : ℕ) (Q : SelfRecip E r), Fld Q) :
    ∃ t : E[X] → E[X], ∀ (r : ℕ) (Q : SelfRecip E r),
      (AdjoinRoot.mk Q.1 (t Q.1) : Fld Q) = g r Q := by
  classical
  refine ⟨fun f => if h : ∃ Q' : SelfRecip E f.natDegree, Q'.1 = f then
      (adjoinRoot_exists_mk_eq (f := h.choose.1) (g f.natDegree h.choose)).choose else 0, ?_⟩
  intro r Q
  have hex : ∃ Q' : SelfRecip E Q.1.natDegree, Q'.1 = Q.1 :=
    ⟨⟨Q.1, by rw [Q.2.2.2.1]; exact Q.2⟩, rfl⟩
  dsimp only
  rw [dite_eq_left hex]
  exact adjoinRoot_mk_eq_of_selfRecip_val_eq g Q hex.choose hex.choose_spec _
    (adjoinRoot_exists_mk_eq (f := hex.choose.1) (g Q.1.natDegree hex.choose)).choose_spec

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (γ₀ : GL (Fin n) E),
    γ₀.val.charpoly ∈ Ell E n → ∀ g : ∀ (r : ℕ) (Q : SelfRecip E r), Fld Q, ∃ m : E[X],
      ∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly →
        (AdjoinRoot.mk Q.1 m : Fld Q) = g r Q := by
  intro E _ _ _ n γ₀ _ g
  obtain ⟨t, ht⟩ := exists_polynomial_lift_adjoinRoot_selfRecip g
  obtain ⟨m, hm⟩ := exists_congr_monic_factors (Matrix.charpoly_monic γ₀.val).ne_zero t
  refine ⟨m, fun r Q hQ => ?_⟩
  rw [← ht r Q]
  exact AdjoinRoot.mk_eq_mk.mpr (hm Q.1 Q.2.1 Q.2.2.1 hQ)

end GlobalTheory.CompanionTheory.EllCRT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainder =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainderStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainderStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

theorem _root_.GlobalTheory.T.exists_polynomial_chinese_remainder : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ g : ∀ (r : ℕ) (Q : SelfRecip E r), Fld Q, ∃ m : E[X], ∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → (AdjoinRoot.mk Q.1 m : Fld Q) = g r Q := by
  first | exact @GlobalTheory.CompanionTheory.EllCRT.main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainderStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlaces =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlaces", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsSupersetMemSUnits\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramKernelSignNonsplitBaseChangeEqStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFormSignatureRealisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField

noncomputable section
namespace GlobalTheory.CompanionTheory.FinSign

theorem ordL_eq_zero_of_v_eq_one {L : Type} [Field L] [Valued L (WithZero (Multiplicative ℤ))] {x : L}
    (h : Valued.v x = 1) : ordL x = 0 := by
  unfold ordL
  rw [dite_eq_right (by rw [h]; exact one_ne_zero)]
  simp [h]
  rfl

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (n : ℕ) (γ₀ : GL (Fin n) E) (H₀ : Matrix (Fin n) (Fin n) E), IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → (∀ τ : E →+* ℂ, ∃ Q : Matrix (Fin n) (Fin n) ℂ, Q.det ≠ 0 ∧ H₀.map τ = cT (starRingEnd ℂ) Q * Q) → ∀ P₁ : E[X], {w : Pl E | ¬ IsSplitAt w ∧ sgnOn (cj w) (H₀.map (algebraMap E (w.adicCompletion E))) (atPl w P₁) (γ₀.val.map (algebraMap E (w.adicCompletion E))) ≠ 1}.Finite := by
  intro E _ _ _ hU n γ₀ H₀ _ _ hpos P₁
  obtain ⟨hd0, -⟩ := gramOn_det_totallyPositive_of_posDef H₀ hpos
    (LinearMap.ker (Matrix.toLin' (aeval γ₀.val P₁)))
  refine (GlobalTheory.QNorm.finite_valuation_ne_one E (Units.mk0 _ hd0)).subset ?_
  rintro w ⟨hw, hs⟩
  simp only [Set.mem_setOf_eq, Units.val_mk0]
  intro h1
  apply hs
  unfold sgnOn
  have hv : Valued.v (algebraMap E (w.adicCompletion E)
      (gramOn (IsCMField.complexConj E).toRingEquiv.toRingHom H₀
        (LinearMap.ker (Matrix.toLin' (aeval γ₀.val P₁)))).det) = 1 :=
    (w.valuedAdicCompletion_eq_valuation' _).trans h1
  rw [aeval_map_mat, GlobalTheory.T.gramKernelSign_nonsplit_baseChange_eq E hU w hw n H₀ (aeval γ₀.val P₁), ordL_eq_zero_of_v_eq_one hv]
  simp

end GlobalTheory.CompanionTheory.FinSign
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlaces =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlacesStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlacesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

theorem _root_.GlobalTheory.T.finite_nonsplit_sign_places : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (n : ℕ) (γ₀ : GL (Fin n) E) (H₀ : Matrix (Fin n) (Fin n) E), IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → (∀ τ : E →+* ℂ, ∃ Q : Matrix (Fin n) (Fin n) ℂ, Q.det ≠ 0 ∧ H₀.map τ = cT (starRingEnd ℂ) Q * Q) → ∀ P₁ : E[X], {w : Pl E | ¬ IsSplitAt w ∧ sgnOn (cj w) (H₀.map (algebraMap E (w.adicCompletion E))) (atPl w P₁) (γ₀.val.map (algebraMap E (w.adicCompletion E))) ≠ 1}.Finite := by
  first | exact @GlobalTheory.CompanionTheory.FinSign.main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlacesStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialIn =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialIn", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

namespace GlobalTheory.CompanionTheory.FormRatio

theorem exists_eq_mul_aeval (K : Type) [Field K] (σ : K →+* K) (n : ℕ)
    (A H₀ H : Matrix (Fin n) (Fin n) K) (_hA : IsUnit A.det) (hs : A.charpoly.Separable)
    (hH₀ : H₀.det ≠ 0) (e₀ : cT σ A * H₀ * A = H₀) (e : cT σ A * H * A = H) :
    ∃ m : K[X], H = H₀ * aeval A m := by
  have hH₀' : IsUnit H₀.det := isUnit_iff_ne_zero.mpr hH₀
  have hB : IsUnit (cT σ A).det := by
    refine isUnit_iff_ne_zero.mpr fun h0 => hH₀ ?_
    have h1 := congrArg Matrix.det e₀
    rw [Matrix.det_mul, Matrix.det_mul, h0, zero_mul, zero_mul] at h1
    exact h1.symm
  have k1 : H * A = (cT σ A)⁻¹ * H := by
    calc H * A = ((cT σ A)⁻¹ * cT σ A) * H * A := by
          rw [Matrix.nonsing_inv_mul _ hB, one_mul]
      _ = (cT σ A)⁻¹ * (cT σ A * H * A) := by simp only [mul_assoc]
      _ = (cT σ A)⁻¹ * H := by rw [e]
  have k0 : H₀ * A = (cT σ A)⁻¹ * H₀ := by
    calc H₀ * A = ((cT σ A)⁻¹ * cT σ A) * H₀ * A := by
          rw [Matrix.nonsing_inv_mul _ hB, one_mul]
      _ = (cT σ A)⁻¹ * (cT σ A * H₀ * A) := by simp only [mul_assoc]
      _ = (cT σ A)⁻¹ * H₀ := by rw [e₀]
  have k2 : A * H₀⁻¹ = H₀⁻¹ * (cT σ A)⁻¹ := by
    calc A * H₀⁻¹ = H₀⁻¹ * (H₀ * A) * H₀⁻¹ := by
          rw [← mul_assoc H₀⁻¹ H₀ A, Matrix.nonsing_inv_mul _ hH₀', one_mul]
      _ = H₀⁻¹ * ((cT σ A)⁻¹ * H₀) * H₀⁻¹ := by rw [k0]
      _ = H₀⁻¹ * (cT σ A)⁻¹ * (H₀ * H₀⁻¹) := by simp only [mul_assoc]
      _ = H₀⁻¹ * (cT σ A)⁻¹ := by rw [Matrix.mul_nonsing_inv _ hH₀', mul_one]
  have hc : Commute A (H₀⁻¹ * H) := by
    show A * (H₀⁻¹ * H) = H₀⁻¹ * H * A
    calc A * (H₀⁻¹ * H) = A * H₀⁻¹ * H := (mul_assoc _ _ _).symm
      _ = H₀⁻¹ * (cT σ A)⁻¹ * H := by rw [k2]
      _ = H₀⁻¹ * (H * A) := by rw [k1, mul_assoc]
      _ = H₀⁻¹ * H * A := (mul_assoc _ _ _).symm
  obtain ⟨m, hm⟩ := ClsFin.exists_aeval_of_comm A (H₀⁻¹ * H) hs hc
  refine ⟨m, ?_⟩
  rw [← hm, ← mul_assoc, Matrix.mul_nonsing_inv _ hH₀', one_mul]

end GlobalTheory.CompanionTheory.FormRatio
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialIn =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialInStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialInStatement", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialIn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialInStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CTAevalMulEq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CTAevalMulEq", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct

namespace GlobalTheory.CompanionTheory.AdjointPoly

theorem cT_aeval_mul_eq :
    ∀ (K : Type) [Field K] (s : K →+* K) (n : ℕ) (A H₀ : Matrix (Fin n) (Fin n) K) (a : K[X]),
      cT s A * H₀ * A = H₀ → aeval A a * A = 1 →
      ∀ f : K[X], cT s (aeval A f) * H₀ = H₀ * aeval A ((f.map s).comp a) := by
  intro K _ s n A H₀ a hA ha f
  have hcomm : A * aeval A a = aeval A a * A := by
    have h : aeval A (X * a) = aeval A (a * X) := by rw [mul_comm]
    simpa only [map_mul, aeval_X] using h
  have hAB : A * aeval A a = 1 := hcomm.trans ha
  have hstep : cT s A * H₀ = H₀ * aeval A a := by
    calc cT s A * H₀ = cT s A * H₀ * (A * aeval A a) := by rw [hAB, mul_one]
      _ = (cT s A * H₀ * A) * aeval A a := by simp only [mul_assoc]
      _ = H₀ * aeval A a := by rw [hA]
  have cT_mul : ∀ P Q : Matrix (Fin n) (Fin n) K, cT s (P * Q) = cT s Q * cT s P := by
    intro P Q
    simp only [cT, Matrix.map_mul, Matrix.transpose_mul]
  have cT_add : ∀ P Q : Matrix (Fin n) (Fin n) K, cT s (P + Q) = cT s P + cT s Q := by
    intro P Q
    ext i j
    simp [cT]
  have cT_C : ∀ c : K, cT s (algebraMap K (Matrix (Fin n) (Fin n) K) c)
      = algebraMap K (Matrix (Fin n) (Fin n) K) (s c) := by
    intro c
    ext i j
    simp only [cT, Matrix.transpose_apply, Matrix.map_apply, Matrix.algebraMap_matrix_apply]
    by_cases h : i = j
    · subst h; simp
    · have h' : ¬ j = i := fun e => h e.symm
      simp [h, h']
  induction f using Polynomial.induction_on with
  | C c =>
    simp only [aeval_C, Polynomial.map_C, Polynomial.C_comp]
    rw [cT_C, Algebra.commutes]
  | add p q hp hq =>
    simp only [map_add (f := _), Polynomial.map_add (f := _), Polynomial.add_comp, cT_add, add_mul, mul_add, hp, hq]
  | monomial k c ih =>
    have e1 : aeval A (C c * X ^ (k + 1)) = A * aeval A (C c * X ^ k) := by
      have h : aeval A (C c * X ^ (k + 1)) = aeval A (X * (C c * X ^ k)) := by
        congr 1; ring
      rw [h, map_mul, aeval_X]
    have e2 : ((C c * X ^ (k + 1) : K[X]).map s).comp a
        = ((C c * X ^ k : K[X]).map s).comp a * a := by
      simp only [Polynomial.map_mul, Polynomial.map_C, Polynomial.map_pow, Polynomial.map_X,
        Polynomial.mul_comp, Polynomial.C_comp, Polynomial.pow_comp, Polynomial.X_comp, pow_succ]
      ring
    rw [e1, e2, cT_mul, mul_assoc, hstep, ← mul_assoc, ih, mul_assoc,
      map_mul (aeval A) (((C c * X ^ k : K[X]).map s).comp a) a]

end GlobalTheory.CompanionTheory.AdjointPoly
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CTAevalMulEq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomial =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomial", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomial\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeftMulMatrixTransfer\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CTAevalMulEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

namespace GlobalTheory.CompanionTheory.HermFixed

theorem dvd_of_monic_irreducible_factors {K : Type} [Field K] {P d : K[X]} (hs : P.Separable)
    (h : ∀ Q : K[X], Q.Monic → Irreducible Q → Q ∣ P → Q ∣ d) : P ∣ d := by
  by_cases hd : d = 0
  · simp [hd]
  have hP0 : P ≠ 0 := hs.ne_zero
  have hnd : (UniqueFactorizationMonoid.normalizedFactors P).Nodup :=
    (UniqueFactorizationMonoid.squarefree_iff_nodup_normalizedFactors hP0).1 hs.squarefree
  refine (UniqueFactorizationMonoid.dvd_iff_normalizedFactors_le_normalizedFactors hP0 hd).2 ?_
  refine (Multiset.le_iff_subset hnd).2 fun Q hQ => ?_
  have hirr := UniqueFactorizationMonoid.irreducible_of_normalized_factor Q hQ
  have hnorm := UniqueFactorizationMonoid.normalize_normalized_factor Q hQ
  have hmon : Q.Monic := by
    rw [← hnorm]
    exact Polynomial.monic_normalize hirr.ne_zero
  have hdvd := UniqueFactorizationMonoid.dvd_of_mem_normalizedFactors hQ
  exact UniqueFactorizationMonoid.mem_normalizedFactors_iff' hd |>.2 ⟨hirr, hnorm, h Q hmon hirr hdvd⟩

theorem dvd_map_comp_sub {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (Q : SelfRecip E r)
    (m r₀ : E[X]) (hr : Q.1 ∣ X * r₀ - 1)
    (hfix : invol Q (AdjoinRoot.mk Q.1 m : Fld Q) = (AdjoinRoot.mk Q.1 m : Fld Q)) :
    Q.1 ∣ (m.map (IsCMField.complexConj E).toRingEquiv.toRingHom).comp r₀ - m := by
  have h1 : AdjoinRoot.mk Q.1 (X * r₀ - 1) = 0 := AdjoinRoot.mk_eq_zero.2 hr
  rw [map_sub, map_mul, AdjoinRoot.mk_X, map_one, sub_eq_zero] at h1
  have hR : AdjoinRoot.mk Q.1 r₀ = (AdjoinRoot.root Q.1)⁻¹ := eq_inv_of_mul_eq_one_right h1
  have hinv : invol Q (AdjoinRoot.mk Q.1 m : Fld Q)
      = AdjoinRoot.mk Q.1 ((m.map (IsCMField.complexConj E).toRingEquiv.toRingHom).comp r₀) := by
    show AdjoinRoot.lift ((AdjoinRoot.of Q.1).comp (IsCMField.complexConj E : E →+* E)) (AdjoinRoot.root Q.1)⁻¹
      (eval₂_conj_inv_root Q) (AdjoinRoot.mk Q.1 m) = _
    rw [AdjoinRoot.lift_mk, ← hR, Polynomial.comp, Polynomial.hom_eval₂, eval₂_map]
    rfl
  have heq : AdjoinRoot.mk Q.1 ((m.map (IsCMField.complexConj E).toRingEquiv.toRingHom).comp r₀)
      = AdjoinRoot.mk Q.1 m := hinv.symm.trans hfix
  refine AdjoinRoot.mk_eq_zero.1 ?_
  rw [map_sub, heq, sub_self]

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → ∀ m : E[X], (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → invol Q (AdjoinRoot.mk Q.1 m : Fld Q) = (AdjoinRoot.mk Q.1 m : Fld Q)) → IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom (H₀ * aeval γ₀.val m) := by
  intro E _ _ _ n γ₀ hell H₀ hH _ hiso m hfix
  have hsep : γ₀.val.charpoly.Separable := hell.2.2.1
  obtain ⟨r₀, hr₀⟩ := GlobalTheory.BCT.ClsFin.exists_aeval_of_comm γ₀.val (γ₀⁻¹).val hsep
    (by rw [Units.mul_inv, Units.inv_mul])
  have hPr : γ₀.val.charpoly ∣ X * r₀ - 1 := by
    refine GlobalTheory.ClassParam.charpoly_dvd_of_aeval γ₀.val hsep _ ?_
    rw [map_sub, map_mul, aeval_X, ← hr₀, Units.mul_inv, map_one, sub_self]
  have hAB : aeval γ₀.val r₀ * γ₀.val = 1 := by rw [← hr₀, Units.inv_mul]
  have key := GlobalTheory.CompanionTheory.AdjointPoly.cT_aeval_mul_eq E (IsCMField.complexConj E).toRingEquiv.toRingHom n
    γ₀.val H₀ r₀ hiso hAB m
  have hdvd : γ₀.val.charpoly ∣
      (m.map (IsCMField.complexConj E).toRingEquiv.toRingHom).comp r₀ - m :=
    dvd_of_monic_irreducible_factors hsep fun Q hmon hirr hQ =>
      dvd_map_comp_sub ⟨Q, GlobalTheory.SelfRecipFactor.isSelfRecip_of_dvd_ell E n _ hell Q hmon hirr hQ⟩ m r₀
        (hQ.trans hPr) (hfix _ ⟨Q, GlobalTheory.SelfRecipFactor.isSelfRecip_of_dvd_ell E n _ hell Q hmon hirr hQ⟩ hQ)
  have heq : aeval γ₀.val ((m.map (IsCMField.complexConj E).toRingEquiv.toRingHom).comp r₀)
      = aeval γ₀.val m := by
    obtain ⟨t, ht⟩ := hdvd
    have h0 : aeval γ₀.val ((m.map (IsCMField.complexConj E).toRingEquiv.toRingHom).comp r₀ - m) = 0 := by
      rw [ht, map_mul, Matrix.aeval_self_charpoly, zero_mul]
    rwa [map_sub, sub_eq_zero] at h0
  have hH' : cT (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ = H₀ := hH
  have hmul : cT (IsCMField.complexConj E).toRingEquiv.toRingHom (H₀ * aeval γ₀.val m)
      = cT (IsCMField.complexConj E).toRingEquiv.toRingHom (aeval γ₀.val m)
        * cT (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ := by
    simp only [cT, Matrix.map_mul, Matrix.transpose_mul]
  show cT (IsCMField.complexConj E).toRingEquiv.toRingHom (H₀ * aeval γ₀.val m) = H₀ * aeval γ₀.val m
  rw [hmul, hH', key, heq]

end GlobalTheory.CompanionTheory.HermFixed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomial =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomialStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomialStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

theorem _root_.GlobalTheory.T.involution_compatible_polynomial : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → ∀ m : E[X], (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → invol Q (AdjoinRoot.mk Q.1 m : Fld Q) = (AdjoinRoot.mk Q.1 m : Fld Q)) → IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom (H₀ * aeval γ₀.val m) := by
  first | exact @GlobalTheory.CompanionTheory.HermFixed.main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomialStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirst =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirst", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinprodNonsplitSignTotallyPositiveEqOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramKernelSignNonsplitBaseChangeEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFormSignatureRealisation\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.RamificationIdxEqOneOfIsSquare\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetGramRatOneNeZero\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeftMulMatrixTransfer\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCyclicVectorOfSeparable\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.LinearIndependent.BaseChange\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

noncomputable section
namespace GlobalTheory.CompanionTheory.LocalSignInert

section Gram
variable {K : Type} [Field K] (σ : K →+* K) {n : ℕ}

theorem hform_mul_right (H M : Matrix (Fin n) (Fin n) K) (x y : Fin n → K) :
    hform σ (H * M) x y = hform σ H x (M *ᵥ y) := by
  simp only [hform, Matrix.mul_apply, Matrix.mulVec, dotProduct, Finset.mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem hform_sum_smul {ι : Type} [Fintype ι] (H : Matrix (Fin n) (Fin n) K) (x : Fin n → K)
    (c : ι → K) (f : ι → Fin n → K) :
    hform σ H x (∑ l, c l • f l) = ∑ l, hform σ H x (f l) * c l := by
  simp only [hform, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.mul_sum, Finset.sum_mul]
  symm
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun l _ => ?_
  ring

def restr (M : Matrix (Fin n) (Fin n) K) (V : Submodule K (Fin n → K)) (hM : ∀ y ∈ V, M *ᵥ y ∈ V) : V →ₗ[K] V :=
  (Matrix.toLin' M).restrict fun y hy => by rw [Matrix.toLin'_apply]; exact hM y hy

theorem restr_coe (M : Matrix (Fin n) (Fin n) K) (V : Submodule K (Fin n → K)) (hM : ∀ y ∈ V, M *ᵥ y ∈ V) (y : V) :
    (restr M V hM y : Fin n → K) = M *ᵥ (y : Fin n → K) := by
  simp [restr, Matrix.toLin'_apply]

theorem det_gramOn_mul (H M : Matrix (Fin n) (Fin n) K) (V : Submodule K (Fin n → K))
    (hM : ∀ y ∈ V, M *ᵥ y ∈ V) :
    (gramOn σ (H * M) V).det = (gramOn σ H V).det * LinearMap.det (restr M V hM) := by
  set b := Module.finBasis K V
  have hmat : gramOn σ (H * M) V = gramOn σ H V * LinearMap.toMatrix b b (restr M V hM) := by
    ext i j
    have hT : M *ᵥ (b j : Fin n → K) = ∑ l, (LinearMap.toMatrix b b (restr M V hM) l j) • (b l : Fin n → K) := by
      rw [← restr_coe M V hM]
      have h := b.sum_repr (restr M V hM (b j))
      calc ((restr M V hM (b j) : V) : Fin n → K) = ((∑ l, b.repr (restr M V hM (b j)) l • b l : V) : Fin n → K) := by
            rw [h]
        _ = _ := by simp only [AddSubmonoidClass.coe_finsetSum, Submodule.coe_smul, LinearMap.toMatrix_apply]
    simp only [gramOn, Matrix.of_apply, Matrix.mul_apply]
    rw [hform_mul_right, hT, hform_sum_smul]
  rw [hmat, Matrix.det_mul, LinearMap.det_toMatrix]

end Gram

section Core
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (Q : SelfRecip E r)
  {k K : Type} [Field k] [Algebra (maximalRealSubfield E) k] [Field K]
  (φ : E →+* K) (cm : k →+* K)
  (hc : ∀ a : maximalRealSubfield E, cm (algebraMap _ k a) = φ (algebraMap _ E a))
  {n : ℕ} (ψ : Fld Q →ₗ[E] (Fin n → E))


include hc in
def vecT : k ⊗[maximalRealSubfield E] Fld Q →+ (Fin n → K) :=
  TensorProduct.liftAddHom
    (AddMonoidHom.mk' (fun a : k => AddMonoidHom.mk' (fun y : Fld Q => cm a • (φ ∘ ψ y))
        (fun y y' => by
          ext i
          simp [mul_add]))
      (fun a a' => by
        ext y i
        simp [add_mul]))
    (fun s a y => by
      have e1 : s • y = algebraMap (maximalRealSubfield E) E s • y := (algebraMap_smul E s y).symm
      have e2 : cm (s • a) = φ (algebraMap (maximalRealSubfield E) E s) * cm a := by
        rw [Algebra.smul_def, map_mul, hc]
      funext i
      show cm (s • a) * φ (ψ y i) = cm a * φ (ψ (s • y) i)
      rw [e2, e1, map_smul, Pi.smul_apply, smul_eq_mul, map_mul]
      ring)

theorem vecT_tmul (a : k) (y : Fld Q) : vecT Q φ cm hc ψ (a ⊗ₜ y) = cm a • (φ ∘ ψ y) := rfl

theorem vecT_smul (a : k) (t : k ⊗[maximalRealSubfield E] Fld Q) :
    vecT Q φ cm hc ψ (a • t) = cm a • vecT Q φ cm hc ψ t := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul b y => rw [TensorProduct.smul_tmul', vecT_tmul, vecT_tmul, smul_eq_mul, map_mul, mul_smul]
  | add s t hs ht => rw [smul_add, map_add (f := _), map_add (f := _), hs, ht, smul_add]

variable (j : K ≃+* k ⊗[maximalRealSubfield E] E) (hj : ∀ a e, j.symm (a ⊗ₜ e) = cm a * φ e)
  (A₀ : Matrix (Fin n) (Fin n) E) (hψ : ∀ y, ψ (alpha Q * y) = A₀ *ᵥ ψ y)

include hj in
theorem vecT_inclBase (u : k ⊗[maximalRealSubfield E] E) (t : k ⊗[maximalRealSubfield E] Fld Q) :
    vecT Q φ cm hc ψ (inclBase Q k u * t) = j.symm u • vecT Q φ cm hc ψ t := by
  induction u using TensorProduct.induction_on with
  | zero => simp
  | add a b ha hb => rw [map_add (f := _), add_mul, map_add (f := _), ha, hb, map_add (f := _), add_smul]
  | tmul a e =>
    induction t using TensorProduct.induction_on with
    | zero => simp
    | add s t hs ht => rw [mul_add, map_add (f := _), hs, ht, map_add (f := _), smul_add]
    | tmul b y =>
      have e1 : inclBase Q k (a ⊗ₜ e) = a ⊗ₜ algebraMap E (Fld Q) e := rfl
      rw [e1, Algebra.TensorProduct.tmul_mul_tmul, vecT_tmul, vecT_tmul, hj, ← Algebra.smul_def, map_smul]
      ext i
      simp
      ring

include hψ in
theorem vecT_alpha (t : k ⊗[maximalRealSubfield E] Fld Q) :
    vecT Q φ cm hc ψ (((1 : k) ⊗ₜ alpha Q) * t) = (A₀.map φ) *ᵥ vecT Q φ cm hc ψ t := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | add s t hs ht => rw [mul_add, map_add (f := _), hs, ht, map_add (f := _), Matrix.mulVec_add]
  | tmul b y =>
    rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, vecT_tmul, vecT_tmul, hψ, Matrix.mulVec_smul]
    congr 1
    ext i
    exact RingHom.map_mulVec φ A₀ (ψ y) i


include hj hψ in
theorem vecT_eval (m : K[X]) : ∀ t : k ⊗[maximalRealSubfield E] Fld Q,
    vecT Q φ cm hc ψ (eval₂RingHom ((inclBase Q k).toRingHom.comp j.toRingHom) ((1 : k) ⊗ₜ alpha Q) m * t) =
      aeval (A₀.map φ) m *ᵥ vecT Q φ cm hc ψ t := by
  induction m using Polynomial.induction_on with
  | C a =>
    intro t
    have e1 : eval₂RingHom ((inclBase Q k).toRingHom.comp j.toRingHom) ((1 : k) ⊗ₜ alpha Q) (C a) =
        inclBase Q k (j a) := by simp
    rw [e1, vecT_inclBase Q φ cm hc ψ j hj, aeval_C, Algebra.algebraMap_eq_smul_one, Matrix.smul_mulVec,
      Matrix.one_mulVec, RingEquiv.symm_apply_apply]
  | add p q hp hq =>
    intro t
    rw [map_add (f := _), add_mul, map_add (f := _), hp, hq, map_add (f := _), Matrix.add_mulVec]
  | monomial d a ih =>
    intro t
    have e1 : (C a * X ^ (d + 1) : K[X]) = (C a * X ^ d) * X := by rw [pow_succ, mul_assoc]
    have e2 : eval₂RingHom ((inclBase Q k).toRingHom.comp j.toRingHom) ((1 : k) ⊗ₜ alpha Q) X = (1 : k) ⊗ₜ alpha Q := by
      simp
    have e3 : eval₂RingHom ((inclBase Q k).toRingHom.comp j.toRingHom) ((1 : k) ⊗ₜ alpha Q) ((C a * X ^ d) * X) * t =
        eval₂RingHom ((inclBase Q k).toRingHom.comp j.toRingHom) ((1 : k) ⊗ₜ alpha Q) (C a * X ^ d) *
          (((1 : k) ⊗ₜ alpha Q) * t) := by
      rw [RingHom.map_mul _ (C a * X ^ d) X, e2, mul_assoc]
    have e4 : aeval (A₀.map φ) ((C a * X ^ d) * X) = aeval (A₀.map φ) (C a * X ^ d) * A₀.map φ := by
      rw [map_mul (aeval (A₀.map φ)) (C a * X ^ d) X, aeval_X]
    rw [e1, e3, ih, e4, ← Matrix.mulVec_mulVec, vecT_alpha Q φ cm hc ψ A₀ hψ]

theorem det_restr_eq (b : Module.Basis (Fin r) (maximalRealSubfield E) (plus Q)) (B : Module.Basis (Fin r) E (Fld Q))
    (hB : ∀ i, B i = b i) (V : Submodule K (Fin n → K)) (cB : Module.Basis (Fin r) K V)
    (hcB : ∀ i, (cB i : Fin n → K) = φ ∘ ψ (B i)) (M : Matrix (Fin n) (Fin n) K) (hM : ∀ y ∈ V, M *ᵥ y ∈ V)
    (x : k ⊗[maximalRealSubfield E] plus Q)
    (hMx : ∀ t, vecT Q φ cm hc ψ (inclPlus Q k x * t) = M *ᵥ vecT Q φ cm hc ψ t) :
    LinearMap.det (restr M V hM) = cm (Algebra.norm k x) := by
  let bb : Module.Basis (Fin r) k (k ⊗[maximalRealSubfield E] plus Q) := Algebra.TensorProduct.basis k b
  let L := Algebra.leftMulMatrix bb x
  have h1 : ∀ i, bb i = (1 : k) ⊗ₜ b i := fun i => Algebra.TensorProduct.basis_apply b i
  have h2 : ∀ j, x * ((1 : k) ⊗ₜ b j) = ∑ i, L i j • ((1 : k) ⊗ₜ[maximalRealSubfield E] b i) := by
    intro j
    simp only [L, Algebra.leftMulMatrix_eq_repr_mul, ← h1]
    exact (bb.sum_repr _).symm
  have h3 : ∀ i, inclPlus Q k ((1 : k) ⊗ₜ b i) = (1 : k) ⊗ₜ B i := fun i => by
    rw [hB]; rfl
  have h4 : ∀ j, inclPlus Q k x * ((1 : k) ⊗ₜ B j) = ∑ i, L i j • ((1 : k) ⊗ₜ[maximalRealSubfield E] B i) := by
    intro j

    rw [← h3, ← map_mul, h2, map_sum]
    simp only [map_smul, h3]
  have h5 : ∀ i, vecT Q φ cm hc ψ ((1 : k) ⊗ₜ B i) = (cB i : Fin n → K) := by
    intro i
    rw [vecT_tmul, map_one, one_smul, hcB]
  have h6 : ∀ j, M *ᵥ (cB j : Fin n → K) = ∑ i, cm (L i j) • (cB i : Fin n → K) := by
    intro j

    rw [← h5, ← hMx, h4, map_sum]
    simp only [vecT_smul, h5]
  have h7 : LinearMap.toMatrix cB cB (restr M V hM) = L.map cm := by
    ext i j
    have e : restr M V hM (cB j) = ∑ l, cm (L l j) • cB l := Subtype.ext (by
      rw [restr_coe, h6]; simp)
    rw [LinearMap.toMatrix_apply, e, Module.Basis.repr_sum_self]
    rfl
  rw [← LinearMap.det_toMatrix cB, h7, Algebra.norm_eq_matrix_det bb, RingHom.map_det]
  rfl

end Core

section Psi
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (Q : SelfRecip E r)

theorem exists_psi {n : ℕ} (A : Matrix (Fin n) (Fin n) E) (hs : A.charpoly.Separable) (hQ : Q.1 ∣ A.charpoly) :
    ∃ ψ : Fld Q →ₗ[E] (Fin n → E), Function.Injective ψ ∧ (∀ y, ψ (alpha Q * y) = A *ᵥ ψ y) ∧
      LinearMap.range ψ = LinearMap.ker (Matrix.toLin' (aeval A Q.1)) := by
  obtain ⟨v, hv⟩ := GlobalTheory.CompanionTheory.TorusCh.CyclicVector.exists_cyclic_vector E n A hs
  have hann : ∀ h : E[X], aeval A h *ᵥ v = 0 → A.charpoly ∣ h := by
    intro h hh
    refine GlobalTheory.ClassParam.charpoly_dvd_of_aeval A hs h ?_
    have h1 : ∀ y, aeval A h *ᵥ y = 0 := by
      intro y
      obtain ⟨g, rfl⟩ := hv y
      rw [Matrix.mulVec_mulVec, ← map_mul, mul_comm, map_mul, ← Matrix.mulVec_mulVec, hh, Matrix.mulVec_zero]
    have h2 : Matrix.toLin' (aeval A h) = 0 := LinearMap.ext fun y => by
      rw [Matrix.toLin'_apply, h1 y]; rfl
    exact Matrix.toLin'.injective (by rw [h2, map_zero])
  obtain ⟨R, hR⟩ := hQ
  have hP0 : A.charpoly ≠ 0 := (Matrix.charpoly_monic A).ne_zero
  have hQ0 : Q.1 ≠ 0 := fun h => hP0 (by rw [hR, h, zero_mul])
  have hR0 : R ≠ 0 := fun h => hP0 (by rw [hR, h, mul_zero])
  obtain ⟨e₀, he₀⟩ : ∃ e : Fin n → E, e = aeval A R *ᵥ v := ⟨_, rfl⟩
  have hkill : ∀ u : E[X], aeval A (Q.1 * u) *ᵥ e₀ = 0 := by
    intro u
    rw [he₀, Matrix.mulVec_mulVec, ← map_mul, show Q.1 * u * R = u * (Q.1 * R) by ring, ← hR, map_mul,
      Matrix.aeval_self_charpoly, mul_zero, Matrix.zero_mulVec]
  have hmk : ∀ g g' : E[X], AdjoinRoot.mk Q.1 g = AdjoinRoot.mk Q.1 g' → aeval A g *ᵥ e₀ = aeval A g' *ᵥ e₀ := by
    intro g g' h
    obtain ⟨u, hu⟩ : Q.1 ∣ g - g' := AdjoinRoot.mk_eq_mk.1 h
    have h1 := hkill u
    rw [← hu, map_sub, Matrix.sub_mulVec, sub_eq_zero] at h1
    exact h1
  let rep : Fld Q → E[X] := fun y => (AdjoinRoot.mk_surjective (g := Q.1) y).choose
  have hrep : ∀ y : Fld Q, AdjoinRoot.mk Q.1 (rep y) = y := fun y =>
    (AdjoinRoot.mk_surjective (g := Q.1) y).choose_spec
  have hsm : ∀ (c : E) (g : E[X]), AdjoinRoot.mk Q.1 (c • g) = (c • (AdjoinRoot.mk Q.1 g : Fld Q) : Fld Q) := by
    intro c g
    rw [Polynomial.smul_eq_C_mul, map_mul, AdjoinRoot.mk_C, Algebra.smul_def]
    rfl
  let ψ : Fld Q →ₗ[E] (Fin n → E) :=
    { toFun := fun y => aeval A (rep y) *ᵥ e₀
      map_add' := fun y y' => by
        rw [← Matrix.add_mulVec, ← map_add (f := _)]
        refine hmk _ _ ?_
        rw [map_add (f := _), hrep, hrep, hrep]
        rfl
      map_smul' := fun c y => by
        rw [RingHom.id_apply, ← Matrix.smul_mulVec, ← map_smul]
        refine hmk _ _ ?_
        rw [hsm, hrep, hrep]
        rfl }
  have hψ : ∀ g : E[X], ψ (AdjoinRoot.mk Q.1 g) = aeval A g *ᵥ e₀ := fun g => hmk _ _ (hrep _)
  refine ⟨ψ, (injective_iff_map_eq_zero _).2 fun y hy => ?_, fun y => ?_, ?_⟩
  · obtain ⟨g, rfl⟩ := AdjoinRoot.mk_surjective (g := Q.1) y
    rw [hψ, he₀, Matrix.mulVec_mulVec, ← map_mul] at hy
    have h1 : A.charpoly ∣ g * R := hann _ hy
    rw [hR] at h1
    exact AdjoinRoot.mk_eq_zero.2 ((mul_dvd_mul_iff_right hR0).1 h1)
  · obtain ⟨g, rfl⟩ := AdjoinRoot.mk_surjective (g := Q.1) y
    have h1 : ∀ z : Fld Q, z = AdjoinRoot.mk Q.1 g → alpha Q * z = AdjoinRoot.mk Q.1 (X * g) := by
      intro z hz
      rw [hz, map_mul, AdjoinRoot.mk_X]
      rfl
    rw [h1 _ rfl, hψ, hψ, map_mul, aeval_X, ← Matrix.mulVec_mulVec]
  · ext y
    constructor
    · rintro ⟨z, rfl⟩
      obtain ⟨g, rfl⟩ := AdjoinRoot.mk_surjective (g := Q.1) z
      rw [LinearMap.mem_ker, Matrix.toLin'_apply, hψ, Matrix.mulVec_mulVec, ← map_mul]
      exact hkill g
    · intro hy
      obtain ⟨h, rfl⟩ := hv y
      rw [LinearMap.mem_ker, Matrix.toLin'_apply, Matrix.mulVec_mulVec, ← map_mul] at hy
      have h1 : A.charpoly ∣ Q.1 * h := hann _ hy
      rw [hR] at h1
      obtain ⟨g, hg⟩ := (mul_dvd_mul_iff_left hQ0).1 h1
      refine ⟨AdjoinRoot.mk Q.1 g, ?_⟩
      rw [hψ, he₀, Matrix.mulVec_mulVec, ← map_mul, hg, mul_comm]

theorem exists_basis_ker {K : Type} [Field K] (φ : E →+* K) {n : ℕ} (ψ : Fld Q →ₗ[E] (Fin n → E))
    (hinj : Function.Injective ψ) (B : Module.Basis (Fin r) E (Fld Q)) (B₀ : Matrix (Fin n) (Fin n) E)
    (hr : LinearMap.range ψ = LinearMap.ker (Matrix.toLin' B₀)) :
    ∃ cB : Module.Basis (Fin r) K (LinearMap.ker (Matrix.toLin' (B₀.map φ))),
      ∀ i, (cB i : Fin n → K) = φ ∘ ψ (B i) := by
  letI := φ.toAlgebra
  haveI : FaithfulSMul E K := (faithfulSMul_iff_algebraMap_injective E K).2 φ.injective
  set V' := LinearMap.ker (Matrix.toLin' (B₀.map φ)) with hV'
  have hmem : ∀ i, φ ∘ ψ (B i) ∈ V' := fun i =>
    GlobalTheory.UnitaryClasses.BaseChangeSign.mem_ker_map φ (hr ▸ LinearMap.mem_range_self ψ (B i))
  have hfr : Module.finrank K V' = r := by
    rw [hV', GlobalTheory.UnitaryClasses.BaseChangeSign.finrank_ker_map φ B₀, ← hr, LinearMap.finrank_range_of_inj hinj,
      finrank_fld]
  have hr0 : 0 < r := by
    have h1 := Q.2.2.2.1
    have h2 := Irreducible.natDegree_pos Q.2.2.1
    omega
  haveI : Nonempty (Fin r) := ⟨⟨0, hr0⟩⟩
  let u : Fin r → V' := fun i => ⟨φ ∘ ψ (B i), hmem i⟩
  have hli : LinearIndependent K u := by
    apply LinearIndependent.of_comp V'.subtype
    have h0 : LinearIndependent E (fun i => ψ (B i)) :=
      B.linearIndependent.map' ψ (LinearMap.ker_eq_bot.2 hinj)
    exact linearIndependent_algebraMap_comp_iff.2 h0
  let c := basisOfLinearIndependentOfCardEqFinrank hli (by rw [hfr, Fintype.card_fin])
  exact ⟨c, fun i => by simp [c, u]⟩

end Psi

section Sign
variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem sign_complMap (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E)))
    (hv : w.under (𝓞 (maximalRealSubfield E)) = v) (a : (v.adicCompletion (maximalRealSubfield E))ˣ) :
    (-1 : ℂ) ^ ordL (GlobalTheory.LFun.complMap hv (a : v.adicCompletion (maximalRealSubfield E))) =
      ((GlobalTheory.QuadSymbol.eta (maximalRealSubfield E) E (v.adicCompletion (maximalRealSubfield E)) a : ℤ) : ℂ) := by
  subst hv
  rw [GlobalTheory.TotPosSign.eta_inert (GlobalTheory.TotPosSign.not_isSplit_under hw) (GlobalTheory.TotPosSign.isUnram_of_unr hU _),
    GlobalTheory.TotPosSign.neg_one_zpow_cast]
  congr 1
  refine GlobalTheory.TotPosSign.ordL_congr ?_
  have e := GlobalTheory.LFun.valued_complMap (F := maximalRealSubfield E) (E := E) (w := w) rfl
    (a := (a : (w.under (𝓞 (maximalRealSubfield E))).adicCompletion (maximalRealSubfield E))) a.ne_zero
  rw [GlobalTheory.LFun.isUnram_iff.1 (GlobalTheory.TotPosSign.isUnram_of_unr hU _) w rfl, pow_one] at e
  exact e

end Sign

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) (hv : w.under (𝓞 (maximalRealSubfield E)) = v), ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → (∀ τ : E →+* ℂ, ∃ Q : Matrix (Fin n) (Fin n) ℂ, Q.det ≠ 0 ∧ H₀.map τ = cT (starRingEnd ℂ) Q * Q) → ∀ (m : (w.adicCompletion E)[X]) (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → ∀ x : ((v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] plus Q)ˣ, inclPlus Q (v.adicCompletion (maximalRealSubfield E)) (x : (v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] plus Q) = locPhi hU w hw v hv Q m → sgnOn (cj w) ((H₀.map (algebraMap E (w.adicCompletion E))) * aeval (γ₀.val.map (algebraMap E (w.adicCompletion E))) m) (atPl w Q.1) (γ₀.val.map (algebraMap E (w.adicCompletion E))) = ((GlobalTheory.QuadSymbol.eta (maximalRealSubfield E) E (v.adicCompletion (maximalRealSubfield E)) (Units.map (Algebra.norm (v.adicCompletion (maximalRealSubfield E)) : (v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] plus Q →* (v.adicCompletion (maximalRealSubfield E))) x) : ℤ) : ℂ) * sgnOn (cj w) (H₀.map (algebraMap E (w.adicCompletion E))) (atPl w Q.1) (γ₀.val.map (algebraMap E (w.adicCompletion E))) := by
  intro E _ _ _ hU w hw v hv n γ₀ hell H₀ _ _ _ hpos m r Q hQ x hx
  have hsep : γ₀.val.charpoly.Separable := hell.2.2.1
  obtain ⟨ψ, hinj, hαψ, hrange⟩ := exists_psi Q γ₀.val hsep hQ
  obtain ⟨θ, h0, hθ⟩ : ∃ θ : E, θ ≠ 0 ∧ IsCMField.complexConj E θ = -θ := by
    obtain ⟨z, hz⟩ : ∃ z : E, IsCMField.complexConj E z ≠ z := by
      by_contra h
      push_neg at h
      exact IsCMField.complexConj_ne_one E (AlgEquiv.ext h)
    exact ⟨z - IsCMField.complexConj E z, sub_ne_zero.mpr hz.symm, by simp⟩
  obtain ⟨b, B, hB⟩ := GlobalTheory.TraceClasses.exists_bases Q h0 hθ
  have hcm : ∀ a : maximalRealSubfield E, GlobalTheory.LFun.complMap hv (algebraMap _ (v.adicCompletion (maximalRealSubfield E)) a) =
      algebraMap E (w.adicCompletion E) (algebraMap _ E a) := GlobalTheory.LFun.complMap_algebraMap hv
  have hj : ∀ a e, (locJ hU w hw v hv).symm (a ⊗ₜ e) = GlobalTheory.LFun.complMap hv a * algebraMap E (w.adicCompletion E) e :=
    fun a e => GlobalTheory.LFun.toCompl_tmul hv a e
  have hval := aeval_map_mat w γ₀.val Q.1
  unfold sgnOn
  rw [hval]
  set A := γ₀.val.map (algebraMap E (w.adicCompletion E)) with hA
  set V := LinearMap.ker (Matrix.toLin' ((aeval γ₀.val Q.1).map (algebraMap E (w.adicCompletion E)))) with hV
  obtain ⟨cB, hcB⟩ := exists_basis_ker Q (algebraMap E (w.adicCompletion E)) ψ hinj B (aeval γ₀.val Q.1) hrange
  have hM : ∀ y ∈ V, aeval A m *ᵥ y ∈ V := by
    intro y hy
    rw [hV, LinearMap.mem_ker, Matrix.toLin'_apply] at hy ⊢
    rw [← hval] at hy ⊢
    rw [Matrix.mulVec_mulVec, ← map_mul, mul_comm, map_mul, ← Matrix.mulVec_mulVec, hy, Matrix.mulVec_zero]
  have hdet : LinearMap.det (restr (aeval A m) V hM) =
      GlobalTheory.LFun.complMap hv (Algebra.norm (v.adicCompletion (maximalRealSubfield E))
        (x : v.adicCompletion (maximalRealSubfield E) ⊗[maximalRealSubfield E] plus Q)) := by
    refine det_restr_eq Q (algebraMap E (w.adicCompletion E)) (GlobalTheory.LFun.complMap hv) hcm ψ b B hB V cB hcB
      (aeval A m) hM _ fun t => ?_
    rw [hx]
    exact vecT_eval Q (algebraMap E (w.adicCompletion E)) (GlobalTheory.LFun.complMap hv) hcm ψ (locJ hU w hw v hv) hj
      γ₀.val hαψ m t
  have hφ : ∀ y : E, cj w (algebraMap E (w.adicCompletion E) y) =
      algebraMap E (w.adicCompletion E) ((IsCMField.complexConj E).toRingEquiv.toRingHom y) :=
    fun y => ((GlobalTheory.ConjAtPlace.main E hU w).2.2.2.1 hw).1 y
  obtain ⟨t, ht, hg⟩ := GlobalTheory.UnitaryClasses.BaseChangeSign.gram_det_map (IsCMField.complexConj E).toRingEquiv.toRingHom
    (cj w) (algebraMap E (w.adicCompletion E)) hφ H₀ (aeval γ₀.val Q.1)
  have hd0 := (gramOn_det_totallyPositive_of_posDef H₀ hpos (LinearMap.ker (Matrix.toLin' (aeval γ₀.val Q.1)))).1
  have hg0 : (gramOn (cj w) (H₀.map (algebraMap E (w.adicCompletion E))) V).det ≠ 0 := by
    rw [hV, hg]
    exact mul_ne_zero (mul_ne_zero ((_root_.map_ne_zero _).2 ht) ((_root_.map_ne_zero _).2 hd0)) ht
  have hs := sign_complMap hU w hw v hv (Units.map (Algebra.norm (v.adicCompletion (maximalRealSubfield E)) :
    (v.adicCompletion (maximalRealSubfield E)) ⊗[maximalRealSubfield E] plus Q →* (v.adicCompletion (maximalRealSubfield E))) x)
  have hn0 : GlobalTheory.LFun.complMap hv (Algebra.norm (v.adicCompletion (maximalRealSubfield E))
      (x : v.adicCompletion (maximalRealSubfield E) ⊗[maximalRealSubfield E] plus Q)) ≠ 0 :=
    (_root_.map_ne_zero _).2 (Units.ne_zero (Units.map (Algebra.norm (v.adicCompletion (maximalRealSubfield E)) :
      (v.adicCompletion (maximalRealSubfield E)) ⊗[maximalRealSubfield E] plus Q →* (v.adicCompletion (maximalRealSubfield E))) x))
  rw [det_gramOn_mul (cj w) _ (aeval A m) V hM, hdet, _root_.Formalism.UG.P.fSatake_ord_mul hg0 hn0,
    zpow_add₀ (by norm_num : (-1 : ℂ) ≠ 0), mul_comm, ← hs]
  rfl

end GlobalTheory.CompanionTheory.LocalSignInert
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirst =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirstStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirstStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirstStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecond =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecond", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonsplitCentraliserNormElement\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetGramRatOneNeZero\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeftMulMatrixTransfer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

noncomputable section

namespace GlobalTheory.CompanionTheory.LocPhiUnit

section Fixed

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (Q : SelfRecip E r)
  (k : Type) [CommRing k] [Algebra (maximalRealSubfield E) k]

theorem exists_inclPlus_half (z : k ⊗[maximalRealSubfield E] Fld Q) :
    ∃ a : k ⊗[maximalRealSubfield E] plus Q,
      inclPlus Q k a = ((1 : k) ⊗ₜ[maximalRealSubfield E] (2⁻¹ : Fld Q)) * (z + involBase Q k z) := by
  induction z using TensorProduct.induction_on with
  | zero => exact ⟨0, by simp⟩
  | tmul s y =>
    refine ⟨s ⊗ₜ ⟨(y + invol Q y) / 2, ?_⟩, ?_⟩
    · change invol Q _ = _
      simp only [map_div₀, map_add (f := _), invol_invol, map_ofNat, AlgHom.id_apply, add_comm]
    · change s ⊗ₜ[maximalRealSubfield E] ((y + invol Q y) / 2) = _ * (s ⊗ₜ y + s ⊗ₜ invol Q y)
      rw [← TensorProduct.tmul_add, Algebra.TensorProduct.tmul_mul_tmul, one_mul, div_eq_inv_mul]
  | add x y hx hy =>
    obtain ⟨a, ha⟩ := hx
    obtain ⟨b, hb⟩ := hy
    refine ⟨a + b, ?_⟩
    rw [map_add (f := _), ha, hb, map_add (f := _)]
    ring

theorem exists_inclPlus_of_fixed {z : k ⊗[maximalRealSubfield E] Fld Q} (hz : involBase Q k z = z) :
    ∃ a : k ⊗[maximalRealSubfield E] plus Q, inclPlus Q k a = z := by
  obtain ⟨a, ha⟩ := exists_inclPlus_half Q k z
  refine ⟨a, ?_⟩
  have h2 : (2 : k ⊗[maximalRealSubfield E] Fld Q) = (1 : k) ⊗ₜ[maximalRealSubfield E] (2 : Fld Q) :=
    (map_ofNat (Algebra.TensorProduct.includeRight :
      Fld Q →ₐ[maximalRealSubfield E] k ⊗[maximalRealSubfield E] Fld Q) 2).symm
  rw [ha, hz, ← two_mul, ← mul_assoc, h2, Algebra.TensorProduct.tmul_mul_tmul, mul_one,
    inv_mul_cancel₀ two_ne_zero, ← Algebra.TensorProduct.one_def, one_mul]

theorem inclPlus_injective : Function.Injective (inclPlus Q k) :=
  Module.Flat.lTensor_preserves_injective_linearMap (M := k) (plus Q).val.toLinearMap
    Subtype.val_injective

theorem exists_unit_of_fixed {y : k ⊗[maximalRealSubfield E] Fld Q} (hu : IsUnit y)
    (hy : involBase Q k y = y) :
    ∃ x : (k ⊗[maximalRealSubfield E] plus Q)ˣ,
      inclPlus Q k (x : k ⊗[maximalRealSubfield E] plus Q) = y := by
  obtain ⟨u, rfl⟩ := hu
  have hinv : involBase Q k ((u⁻¹ : (k ⊗[maximalRealSubfield E] Fld Q)ˣ) :
      k ⊗[maximalRealSubfield E] Fld Q) = (u⁻¹ : (k ⊗[maximalRealSubfield E] Fld Q)ˣ) := by
    have h1 : (u : k ⊗[maximalRealSubfield E] Fld Q) * involBase Q k
        ((u⁻¹ : (k ⊗[maximalRealSubfield E] Fld Q)ˣ) : k ⊗[maximalRealSubfield E] Fld Q) = 1 := by
      conv_lhs => rw [← hy]
      rw [← map_mul, Units.mul_inv, map_one]
    calc _ = ((u⁻¹ : (k ⊗[maximalRealSubfield E] Fld Q)ˣ) : k ⊗[maximalRealSubfield E] Fld Q) *
          ((u : k ⊗[maximalRealSubfield E] Fld Q) * involBase Q k
            ((u⁻¹ : (k ⊗[maximalRealSubfield E] Fld Q)ˣ) : k ⊗[maximalRealSubfield E] Fld Q)) := by
          rw [Units.inv_mul_cancel_left]
      _ = _ := by rw [h1, mul_one]
  obtain ⟨a, ha⟩ := exists_inclPlus_of_fixed Q k hy
  obtain ⟨b, hb⟩ := exists_inclPlus_of_fixed Q k hinv
  have hab : a * b = 1 := inclPlus_injective Q k (by rw [map_mul, ha, hb, Units.mul_inv, map_one])
  exact ⟨⟨a, b, hab, by rw [mul_comm]; exact hab⟩, ha⟩

end Fixed

section Matrix

theorem aeval_mul_of_intertwine {K : Type} [Field K] {n : ℕ} {B C H : Matrix (Fin n) (Fin n) K}
    (h : B * H = H * C) (g : K[X]) : aeval B g * H = H * aeval C g := by
  induction g using Polynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), add_mul, mul_add, hp, hq]
  | monomial d a =>
    have e : B ^ d * H = H * C ^ d :=
      (((show SemiconjBy H C B from h.symm).pow_right d).eq).symm
    rw [aeval_monomial, aeval_monomial]
    simp only [Algebra.algebraMap_eq_smul_one, smul_mul_assoc, one_mul, mul_smul_comm, e]

theorem cT_mul {K : Type} [Field K] (s : K →+* K) {n : ℕ} (B C : Matrix (Fin n) (Fin n) K) :
    cT s (B * C) = cT s C * cT s B := by
  simp [cT, Matrix.map_mul, Matrix.transpose_mul]

end Matrix

section Local

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem involBase_locPhi (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w)
    (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) (hv : w.under (𝓞 (maximalRealSubfield E)) = v)
    {r : ℕ} (Q : SelfRecip E r) {r₀ : E[X]} (hr : AdjoinRoot.mk Q.1 (X * r₀ - 1) = 0)
    (f : (w.adicCompletion E)[X]) :
    involBase Q (v.adicCompletion (maximalRealSubfield E)) (locPhi hU w hw v hv Q f) =
      locPhi hU w hw v hv Q ((f.map (cj w)).comp (atPl w r₀)) := by
  set k := v.adicCompletion (maximalRealSubfield E)
  let ι : w.adicCompletion E →+* k ⊗[maximalRealSubfield E] Fld Q :=
    (inclBase Q k).toRingHom.comp (locJ hU w hw v hv).toRingHom
  have hιc : ∀ y, involBase Q k (ι y) = ι (cj w y) := by
    intro y
    change involBase Q k (inclBase Q k (locJ hU w hw v hv y)) =
      inclBase Q k (locJ hU w hw v hv (cj w y))
    rw [locJ_cj]
    generalize locJ hU w hw v hv y = t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul a e => simp [inclBase, involBase, invol_algebraMap]
    | add a b ha hb => simp only [map_add (f := _), ha, hb]
  let ib : k ⊗[maximalRealSubfield E] Fld Q →+* k ⊗[maximalRealSubfield E] Fld Q :=
    (involBase Q k).toRingHom
  have hR : locPhi hU w hw v hv Q (atPl w r₀) = (1 : k) ⊗ₜ (alpha Q)⁻¹ := by
    rw [locPhi_atPl]
    congr 1
    rw [map_sub, map_mul, AdjoinRoot.mk_X, map_one, sub_eq_zero] at hr
    exact eq_inv_of_mul_eq_one_right hr
  have e1 : ib.comp ι = ι.comp (cj w) := RingHom.ext fun y => hιc y
  have e2 : ib ((1 : k) ⊗ₜ alpha Q) = (1 : k) ⊗ₜ (alpha Q)⁻¹ := by
    change (1 : k) ⊗ₜ invol Q (alpha Q) = _
    rw [invol_alpha]
  change ib (eval₂ ι _ f) = eval₂ ι _ _
  rw [Polynomial.hom_eval₂, e1, e2, eval₂_comp, eval₂_map]
  exact congrArg (fun x => eval₂ (ι.comp (cj w)) x f) hR.symm

end Local

theorem locPhi_mem_units_plus : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) (hv : w.under (𝓞 (maximalRealSubfield E)) = v), ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → ∀ m : (w.adicCompletion E)[X], IsHerm (cj w) ((H₀.map (algebraMap E (w.adicCompletion E))) * aeval (γ₀.val.map (algebraMap E (w.adicCompletion E))) m) → ((H₀.map (algebraMap E (w.adicCompletion E))) * aeval (γ₀.val.map (algebraMap E (w.adicCompletion E))) m).det ≠ 0 → ∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → ∃ x : ((v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] plus Q)ˣ, inclPlus Q (v.adicCompletion (maximalRealSubfield E)) (x : (v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] plus Q) = locPhi hU w hw v hv Q m := by
  intro E _ _ _ hU w hw v hv n γ₀ hell H₀ hH hdet h3 m hM hMdet r Q hQ
  have hsep : γ₀.val.charpoly.Separable := hell.2.2.1
  obtain ⟨r₀, hr₀⟩ := GlobalTheory.BCT.ClsFin.exists_aeval_of_comm γ₀.val (γ₀⁻¹).val hsep
    (by rw [Units.mul_inv, Units.inv_mul])
  have hPr : γ₀.val.charpoly ∣ X * r₀ - 1 := by
    refine GlobalTheory.ClassParam.charpoly_dvd_of_aeval γ₀.val hsep _ ?_
    rw [map_sub, map_mul, aeval_X, ← hr₀, Units.mul_inv, map_one, sub_self]
  have hr : AdjoinRoot.mk Q.1 (X * r₀ - 1) = 0 := AdjoinRoot.mk_eq_zero.2 (hQ.trans hPr)
  obtain ⟨A, hA⟩ : ∃ A, A = γ₀.val.map (algebraMap E (w.adicCompletion E)) := ⟨_, rfl⟩
  obtain ⟨H, hHd⟩ : ∃ H, H = H₀.map (algebraMap E (w.adicCompletion E)) := ⟨_, rfl⟩
  rw [← hA, ← hHd] at hM hMdet
  obtain ⟨M, hMd⟩ : ∃ M, M = aeval A m := ⟨_, rfl⟩
  rw [← hMd] at hM hMdet
  have hAsep : A.charpoly.Separable := by rw [hA, Matrix.charpoly_map]; exact hsep.map
  have hAP : A.charpoly = atPl w γ₀.val.charpoly := by rw [hA]; exact Matrix.charpoly_map _ _
  have hAi : A * aeval A (atPl w r₀) = 1 := by
    rw [hA, aeval_map_mat, ← hr₀, ← Matrix.map_mul, Units.mul_inv,
      Matrix.map_one _ (map_zero _) (map_one _)]
  have hHh : cT (cj w) H = H := by
    rw [hHd, ← cT_map hU w hw]
    exact congrArg (Matrix.map · (algebraMap E (w.adicCompletion E))) hH
  have hcA : cT (cj w) A * H * A = H := by
    have := congrArg (Matrix.map · (algebraMap E (w.adicCompletion E))) h3
    simp only [Matrix.map_mul, cT_map hU w hw] at this
    rw [hA, hHd]
    exact this
  have hint : cT (cj w) A * H = H * aeval A (atPl w r₀) := by
    calc cT (cj w) A * H = cT (cj w) A * H * (A * aeval A (atPl w r₀)) := by rw [hAi, Matrix.mul_one]
      _ = H * aeval A (atPl w r₀) := by rw [← Matrix.mul_assoc, hcA]
  have hH0 : IsUnit H := by
    rw [Matrix.isUnit_iff_isUnit_det, Matrix.det_mul] at *
    exact (left_ne_zero_of_mul hMdet).isUnit
  have hM0 : IsUnit M := by
    rw [Matrix.isUnit_iff_isUnit_det]
    rw [Matrix.det_mul] at hMdet
    exact (right_ne_zero_of_mul hMdet).isUnit
  have hfix : M = aeval A ((m.map (cj w)).comp (atPl w r₀)) := by
    have h1 : cT (cj w) M * H = H * M := by
      have := hM
      rw [IsHerm, cT_mul, hHh] at this
      exact this
    rw [hMd, GlobalTheory.NormInert.cT_aeval, aeval_mul_of_intertwine hint, ← aeval_comp, ← hMd] at h1
    exact (hH0.mul_left_cancel h1).symm
  have hdiv : A.charpoly ∣ (m.map (cj w)).comp (atPl w r₀) - m :=
    GlobalTheory.ClassParam.charpoly_dvd_of_aeval A hAsep _ (by rw [map_sub, ← hfix, ← hMd, sub_self])
  have hΦ0 : locPhi hU w hw v hv Q A.charpoly = 0 := by
    rw [hAP, locPhi_atPl]
    exact (congrArg _ (AdjoinRoot.mk_eq_zero.2 hQ)).trans (TensorProduct.tmul_zero _ _)
  have hy : involBase Q (v.adicCompletion (maximalRealSubfield E)) (locPhi hU w hw v hv Q m) =
      locPhi hU w hw v hv Q m := by
    obtain ⟨t, ht⟩ := hdiv
    rw [involBase_locPhi hU w hw v hv Q hr, ← sub_eq_zero, ← map_sub, ht, map_mul, hΦ0, zero_mul]
  obtain ⟨u, hu⟩ := hM0
  have hcomm : Commute A (u : Matrix (Fin n) (Fin n) (w.adicCompletion E)) := by
    rw [hu, hMd]
    have := congrArg (aeval A) (mul_comm (X : (w.adicCompletion E)[X]) m)
    rw [map_mul, map_mul, aeval_X] at this
    exact this
  obtain ⟨g, hg⟩ := GlobalTheory.BCT.ClsFin.exists_aeval_of_comm A
    ((u⁻¹ : (Matrix (Fin n) (Fin n) (w.adicCompletion E))ˣ) : Matrix (Fin n) (Fin n) (w.adicCompletion E))
    hAsep hcomm.units_inv_right.eq
  have hdiv2 : A.charpoly ∣ m * g - 1 :=
    GlobalTheory.ClassParam.charpoly_dvd_of_aeval A hAsep _ (by
      rw [map_sub, map_mul, ← hg, ← hMd, ← hu, Units.mul_inv, map_one, sub_self])
  have hone : locPhi hU w hw v hv Q m * locPhi hU w hw v hv Q g = 1 := by
    obtain ⟨t, ht⟩ := hdiv2
    rw [← map_mul, ← sub_eq_zero, ← map_one (locPhi hU w hw v hv Q), ← map_sub, ht, map_mul, hΦ0,
      zero_mul]
  exact exists_unit_of_fixed Q _ (isUnit_iff_exists_inv.2 ⟨_, hone⟩) hy

end GlobalTheory.CompanionTheory.LocPhiUnit

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecond =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecondStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecondStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecond\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecondStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemNormsOfCongrEquiv =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemNormsOfCongrEquiv", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonsplitCentraliserNormElement\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeftMulMatrixTransfer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField

noncomputable section

namespace GlobalTheory.CompanionTheory.NormCongr

theorem aeval_intertwine {K : Type} [Field K] {n : ℕ} {X Y H : Matrix (Fin n) (Fin n) K}
    (h : X * H = H * Y) (p : K[X]) : aeval X p * H = H * aeval Y p := by
  have hpow : ∀ k : ℕ, X ^ k * H = H * Y ^ k := by
    intro k
    induction k with
    | zero => simp
    | succ k ih => rw [pow_succ, Matrix.mul_assoc, h, ← Matrix.mul_assoc, ih, Matrix.mul_assoc, ← pow_succ]
  induction p using Polynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), add_mul, mul_add, hp, hq]
  | monomial k a =>
    rw [aeval_monomial, aeval_monomial, Matrix.mul_assoc, hpow, ← Matrix.mul_assoc,
      Algebra.commutes a H, Matrix.mul_assoc]

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem mem_norms_of_congr (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w)
    (k : Type) [CommRing k] [Algebra (maximalRealSubfield E) k]
    (n : ℕ) (γ₀ : GL (Fin n) E) (hell : γ₀.val.charpoly ∈ Ell E n)
    (H₀ : Matrix (Fin n) (Fin n) E) (hdet : H₀.det ≠ 0)
    (hinv : cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀)
    (m : (w.adicCompletion E)[X]) (c : GL (Fin n) (w.adicCompletion E))
    (hc1 : c.val * (γ₀.val.map (algebraMap E (w.adicCompletion E))) =
      (γ₀.val.map (algebraMap E (w.adicCompletion E))) * c.val)
    (hc2 : (H₀.map (algebraMap E (w.adicCompletion E))) * aeval (γ₀.val.map (algebraMap E (w.adicCompletion E))) m =
      cT (cj w) c.val * (H₀.map (algebraMap E (w.adicCompletion E))) * c.val)
    (r : ℕ) (Q : SelfRecip E r) (hQ : Q.1 ∣ γ₀.val.charpoly)
    (ι : w.adicCompletion E →+* k ⊗[maximalRealSubfield E] Fld Q)
    (hι1 : ∀ e : E, ι (algebraMap E _ e) = (1 : k) ⊗ₜ algebraMap E (Fld Q) e)
    (hιc : ∀ y, involBase Q k (ι y) = ι (cj w y))
    (x : (k ⊗[maximalRealSubfield E] plus Q)ˣ)
    (hx : inclPlus Q k (x : k ⊗[maximalRealSubfield E] plus Q) = eval₂ ι ((1 : k) ⊗ₜ alpha Q) m) :
    x ∈ norms Q k := by
  have hsep : γ₀.val.charpoly.Separable := hell.2.2.1
  obtain ⟨r₀, hr₀⟩ := GlobalTheory.BCT.ClsFin.exists_aeval_of_comm γ₀.val (γ₀⁻¹).val hsep
    (by rw [Units.mul_inv, Units.inv_mul])
  have hPr : γ₀.val.charpoly ∣ X * r₀ - 1 := by
    refine GlobalTheory.ClassParam.charpoly_dvd_of_aeval γ₀.val hsep _ ?_
    rw [map_sub, map_mul, aeval_X, ← hr₀, Units.mul_inv, map_one, sub_self]
  set A : Matrix (Fin n) (Fin n) (w.adicCompletion E) := γ₀.val.map (algebraMap E (w.adicCompletion E)) with hA
  set H : Matrix (Fin n) (Fin n) (w.adicCompletion E) := H₀.map (algebraMap E (w.adicCompletion E)) with hH
  have hAsep : A.charpoly.Separable := by rw [hA, Matrix.charpoly_map]; exact hsep.map
  have hAP : A.charpoly = atPl w γ₀.val.charpoly := Matrix.charpoly_map _ _
  obtain ⟨f, hf⟩ := GlobalTheory.BCT.ClsFin.exists_aeval_of_comm A c.val hAsep hc1.symm
  have hAi : A * aeval A (atPl w r₀) = 1 := by
    rw [hA, aeval_map_mat, ← hr₀, ← Matrix.map_mul, Units.mul_inv, Matrix.map_one _ (map_zero _) (map_one _)]
  have hcA : cT (cj w) A * H * A = H := by
    have := congrArg (Matrix.map · (algebraMap E (w.adicCompletion E))) hinv
    simp only [Matrix.map_mul, cT_map hU w hw] at this
    exact this
  have hHu : IsUnit H.det := by
    rw [hH, ← RingHom.mapMatrix_apply, ← RingHom.map_det]
    exact (hdet.isUnit).map _
  have hcT : cT (cj w) A * H = H * aeval A (atPl w r₀) := by
    calc cT (cj w) A * H = cT (cj w) A * H * (A * aeval A (atPl w r₀)) := by rw [hAi, Matrix.mul_one]
      _ = H * aeval A (atPl w r₀) := by rw [← Matrix.mul_assoc, hcA]
  have hdiv : atPl w γ₀.val.charpoly ∣ (f.map (cj w)).comp (atPl w r₀) * f - m := by
    rw [← hAP]
    refine GlobalTheory.ClassParam.charpoly_dvd_of_aeval A hAsep _ ?_
    have h1 : cT (cj w) (aeval A f) * H = H * aeval A ((f.map (cj w)).comp (atPl w r₀)) := by
      rw [GlobalTheory.NormInert.cT_aeval, aeval_intertwine hcT, aeval_comp]
    have h2 : H * aeval A m = H * (aeval A ((f.map (cj w)).comp (atPl w r₀)) * aeval A f) := by
      rw [hc2, hf, h1, Matrix.mul_assoc]
    have h3 : aeval A m = aeval A ((f.map (cj w)).comp (atPl w r₀)) * aeval A f := by
      have hHi : H⁻¹ * H = 1 := Matrix.nonsing_inv_mul _ hHu
      calc aeval A m = H⁻¹ * H * aeval A m := by rw [hHi, Matrix.one_mul]
        _ = H⁻¹ * H * (aeval A ((f.map (cj w)).comp (atPl w r₀)) * aeval A f) := by
          rw [Matrix.mul_assoc, h2, ← Matrix.mul_assoc]
        _ = _ := by rw [hHi, Matrix.one_mul]
    rw [map_sub, map_mul, ← h3, sub_self]
  let ib : k ⊗[maximalRealSubfield E] Fld Q →+* k ⊗[maximalRealSubfield E] Fld Q := (involBase Q k).toRingHom
  let Φ : (w.adicCompletion E)[X] →+* k ⊗[maximalRealSubfield E] Fld Q := eval₂RingHom ι ((1 : k) ⊗ₜ alpha Q)
  let g : Fld Q →+* k ⊗[maximalRealSubfield E] Fld Q :=
    (Algebra.TensorProduct.includeRight : Fld Q →ₐ[maximalRealSubfield E] k ⊗[maximalRealSubfield E] Fld Q).toRingHom
  have hΦ : ∀ p : E[X], Φ (atPl w p) = (1 : k) ⊗ₜ AdjoinRoot.mk Q.1 p := by
    intro p
    have e : ι.comp (algebraMap E _) = g.comp (algebraMap E (Fld Q)) := RingHom.ext fun e => hι1 e
    change eval₂ ι ((1 : k) ⊗ₜ alpha Q) (p.map (algebraMap E (w.adicCompletion E))) = _
    rw [eval₂_map, e]
    refine (Polynomial.hom_eval₂ p (algebraMap E (Fld Q)) g (alpha Q)).symm.trans ?_
    change (1 : k) ⊗ₜ eval₂ (algebraMap E (Fld Q)) (alpha Q) p = _
    rw [← aeval_def]
    congr 1
    exact AdjoinRoot.aeval_eq p
  have hR : Φ (atPl w r₀) = (1 : k) ⊗ₜ (alpha Q)⁻¹ := by
    rw [hΦ]
    congr 1
    have h1 : AdjoinRoot.mk Q.1 (X * r₀ - 1) = 0 := AdjoinRoot.mk_eq_zero.2 (hQ.trans hPr)
    rw [map_sub, map_mul, AdjoinRoot.mk_X, map_one, sub_eq_zero] at h1
    exact eq_inv_of_mul_eq_one_right h1
  have hinvΦ : ib (Φ f) = Φ ((f.map (cj w)).comp (atPl w r₀)) := by
    have e1 : ib.comp ι = ι.comp (cj w) := RingHom.ext fun y => hιc y
    have e2 : ib ((1 : k) ⊗ₜ alpha Q) = (1 : k) ⊗ₜ (alpha Q)⁻¹ := by
      change (1 : k) ⊗ₜ invol Q (alpha Q) = _
      rw [invol_alpha]
    change ib (eval₂ ι _ f) = eval₂ ι _ _
    rw [Polynomial.hom_eval₂, e1, e2, eval₂_comp, eval₂_map]
    exact congrArg (fun x => eval₂ (ι.comp (cj w)) x f) hR.symm
  obtain ⟨t, ht⟩ := hdiv
  have hft : f * (f.map (cj w)).comp (atPl w r₀) = m + atPl w γ₀.val.charpoly * t := by
    rw [← ht]; ring
  have h0 : Φ (atPl w γ₀.val.charpoly) = 0 := by
    rw [hΦ]
    exact (congrArg _ (AdjoinRoot.mk_eq_zero.2 hQ)).trans (TensorProduct.tmul_zero _ _)
  have hz : Φ f * ib (Φ f) = inclPlus Q k (x : k ⊗[maximalRealSubfield E] plus Q) := by
    rw [hinvΦ, ← map_mul, hft, map_add (f := _), map_mul, h0, zero_mul, add_zero, hx]
    rfl
  have hu : IsUnit (Φ f) :=
    isUnit_of_mul_isUnit_left (by rw [hz]; exact x.isUnit.map _)
  exact ⟨hu.unit, Units.ext hz⟩

theorem mem_norms_of_congr_equiv (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w)
    (k : Type) [CommRing k] [Algebra (maximalRealSubfield E) k]
    (j : w.adicCompletion E ≃+* k ⊗[maximalRealSubfield E] E)
    (hj1 : ∀ e : E, j (algebraMap E _ e) = 1 ⊗ₜ e)
    (hj2 : ∀ x, j (cj w x) = Algebra.TensorProduct.map (AlgHom.id (maximalRealSubfield E) k)
      ((IsCMField.complexConj E : E ≃ₐ[maximalRealSubfield E] E) : E →ₐ[maximalRealSubfield E] E) (j x))
    (n : ℕ) (γ₀ : GL (Fin n) E) (hell : γ₀.val.charpoly ∈ Ell E n)
    (H₀ : Matrix (Fin n) (Fin n) E) (hdet : H₀.det ≠ 0)
    (hinv : cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀)
    (m : (w.adicCompletion E)[X]) (c : GL (Fin n) (w.adicCompletion E))
    (hc1 : c.val * (γ₀.val.map (algebraMap E (w.adicCompletion E))) =
      (γ₀.val.map (algebraMap E (w.adicCompletion E))) * c.val)
    (hc2 : (H₀.map (algebraMap E (w.adicCompletion E))) * aeval (γ₀.val.map (algebraMap E (w.adicCompletion E))) m =
      cT (cj w) c.val * (H₀.map (algebraMap E (w.adicCompletion E))) * c.val)
    (r : ℕ) (Q : SelfRecip E r) (hQ : Q.1 ∣ γ₀.val.charpoly)
    (x : (k ⊗[maximalRealSubfield E] plus Q)ˣ)
    (hx : inclPlus Q k (x : k ⊗[maximalRealSubfield E] plus Q) =
      eval₂ (((inclBase Q k).toRingHom).comp j.toRingHom) ((1 : k) ⊗ₜ alpha Q) m) :
    x ∈ norms Q k := by
  refine mem_norms_of_congr hU w hw k n γ₀ hell H₀ hdet hinv m c hc1 hc2 r Q hQ _ (fun e => ?_) (fun y => ?_) x hx
  · change inclBase Q k (j (algebraMap E _ e)) = _
    rw [hj1]
    simp [inclBase]
  · change involBase Q k (inclBase Q k (j y)) = inclBase Q k (j (cj w y))
    rw [hj2]
    generalize j y = t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul a e => simp [inclBase, involBase, invol_algebraMap]
    | add a b ha hb => simp only [map_add (f := _), ha, hb]

end GlobalTheory.CompanionTheory.NormCongr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemNormsOfCongrEquiv =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThird =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThird", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemNormsOfCongrEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

noncomputable section

namespace GlobalTheory.CompanionTheory.NormCongr

theorem mem_norms_locPhi : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) (hv : w.under (𝓞 (maximalRealSubfield E)) = v), ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → ∀ (m : (w.adicCompletion E)[X]) (c : GL (Fin n) (w.adicCompletion E)), c.val * (γ₀.val.map (algebraMap E (w.adicCompletion E))) = (γ₀.val.map (algebraMap E (w.adicCompletion E))) * c.val → (H₀.map (algebraMap E (w.adicCompletion E))) * aeval (γ₀.val.map (algebraMap E (w.adicCompletion E))) m = cT (cj w) c.val * (H₀.map (algebraMap E (w.adicCompletion E))) * c.val → ∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → ∀ x : ((v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] plus Q)ˣ, inclPlus Q (v.adicCompletion (maximalRealSubfield E)) (x : (v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] plus Q) = locPhi hU w hw v hv Q m → x ∈ norms Q (v.adicCompletion (maximalRealSubfield E)) := by
  intro E _ _ _ hU w hw v hv n γ₀ hell H₀ _ hdet hinv m c hc1 hc2 r Q hQ x hx
  exact mem_norms_of_congr_equiv hU w hw (v.adicCompletion (maximalRealSubfield E)) (locJ hU w hw v hv)
    (locJ_algebraMap hU w hw v hv) (locJ_cj hU w hw v hv) n γ₀ hell H₀ hdet hinv m c hc1 hc2 r Q hQ x hx

end GlobalTheory.CompanionTheory.NormCongr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThird =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThirdStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThirdStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThird\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThirdStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroup =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroup", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.QuadraticClassFieldTheory\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetGramRatOneNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.HermitianTraceFormVanishing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

noncomputable section

namespace GlobalTheory.CompanionTheory.NormClassNorm

theorem norm_mem_normGroup : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (k : Type) [Field k]
    [Algebra (maximalRealSubfield E) k] (r : ℕ) (Q : SelfRecip E r)
    (x : (k ⊗[(maximalRealSubfield E)] plus Q)ˣ), x ∈ norms Q k →
    Units.map (Algebra.norm k : k ⊗[(maximalRealSubfield E)] plus Q →* k) x ∈
      GlobalTheory.QuadSymbol.normGroup (maximalRealSubfield E) E k := by
  intro E _ _ _ k _ _ r Q x hx
  obtain ⟨z, hz⟩ : ∃ z : E, IsCMField.complexConj E z ≠ z := by
    by_contra h
    push Not at h
    exact IsCMField.complexConj_ne_one E (AlgEquiv.ext h)
  have hθ : IsCMField.complexConj E (z - IsCMField.complexConj E z) =
      -(z - IsCMField.complexConj E z) := by
    rw [map_sub, IsCMField.complexConj_apply_apply]; ring
  obtain ⟨b, B, hB⟩ := GlobalTheory.TraceClasses.exists_bases Q (sub_ne_zero.2 hz.symm) hθ
  have h1 : Isometric Q k (GlobalTheory.TraceClasses.gramRat Q B 1)
      ((1 : (k ⊗[(maximalRealSubfield E)] plus Q)ˣ) : k ⊗[(maximalRealSubfield E)] plus Q) := by
    have := (GlobalTheory.TraceClasses.isometric_tmul_iff Q B k (GlobalTheory.TraceClasses.gramRat Q B 1) 1).2
      (GlobalTheory.HermLocal.CongrOver.of_congr ⟨1, by simp, by simp⟩)
    simpa [Algebra.TensorProduct.one_def] using this
  have h2 := Isometric.of_norm Q k hx h1
  rw [one_mul] at h2
  have h3 := GlobalTheory.TraceClasses.norm_div_mem Q hB k (δ := 1) (by simp) h2
  have h4 : GlobalTheory.QuadSymbol.toUnits (maximalRealSubfield E) k 1 = 1 := map_one _
  rwa [h4, div_one] at h3

end GlobalTheory.CompanionTheory.NormClassNorm

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroup =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroupStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroupStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.QuadraticClassFieldTheory\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroupStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomial =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomial", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonsplitCentraliserNormElement\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeftMulMatrixTransfer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.Charpoly.Eigs\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder ComplexConjugate
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField

noncomputable section

namespace GlobalTheory.CompanionTheory.PosDefNorm

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem norm_value_pos {r : ℕ} (Q : SelfRecip E r) (ρ : Fld Q →+* ℂ) (hn : ‖ρ (alpha Q)‖ = 1) (y : Fld Q)
    (hz : ∀ u : InfinitePlace (maximalRealSubfield E), ∃ z : (u.Completion ⊗[maximalRealSubfield E] Fld Q)ˣ,
      (z : u.Completion ⊗[maximalRealSubfield E] Fld Q) *
        involBase Q u.Completion (z : u.Completion ⊗[maximalRealSubfield E] Fld Q) = 1 ⊗ₜ y) :
    0 < ρ y := by
  have hinv : ∀ x, ρ (invol Q x) = conj (ρ x) := by
    have h : (ρ.comp (invol Q : Fld Q →+* Fld Q)) = (starRingEnd ℂ).comp ρ := by
      refine AdjoinRoot.ringHom_ext (RingHom.ext fun e => ?_) ?_
      · change ρ (invol Q (algebraMap E (Fld Q) e)) = conj (ρ (algebraMap E (Fld Q) e))
        rw [invol_algebraMap]
        exact IsCMField.complexEmbedding_complexConj E (ρ.comp (algebraMap E (Fld Q))) e
      · change ρ (invol Q (alpha Q)) = conj (ρ (alpha Q))
        rw [invol_alpha, map_inv₀]
        exact Complex.inv_eq_conj hn
    exact fun x => DFunLike.congr_fun h x
  let ρF : maximalRealSubfield E →+* ℂ := ρ.comp (algebraMap (maximalRealSubfield E) (Fld Q))
  let w := InfinitePlace.mk ρF
  have hw : w.IsReal := IsTotallyReal.isReal w
  letI : Algebra (maximalRealSubfield E) ℂ := ρF.toAlgebra
  let g : w.Completion →ₐ[maximalRealSubfield E] ℂ :=
    ⟨InfinitePlace.Completion.extensionEmbedding w, fun a => by
      change InfinitePlace.Completion.extensionEmbedding w (algebraMap (maximalRealSubfield E) w.Completion a) = ρF a
      simpa only [InfinitePlace.Completion.algebraMap_apply] using
        (InfinitePlace.Completion.extensionEmbedding_coe w (WithAbs.toAbs _ a)).trans
          (DFunLike.congr_fun (InfinitePlace.embedding_mk_eq_of_isReal (InfinitePlace.isReal_mk_iff.1 hw)) a)⟩
  have hg : ∀ a, conj (g a) = g a := fun a => by
    have : g a = (InfinitePlace.Completion.extensionEmbeddingOfIsReal hw a : ℂ) :=
      (InfinitePlace.Completion.extensionEmbeddingOfIsReal_apply hw a).symm
    rw [this, Complex.conj_ofReal]
  let f := (Algebra.TensorProduct.productMap g
    (⟨ρ, fun _ => rfl⟩ : Fld Q →ₐ[maximalRealSubfield E] ℂ)).toRingHom
  have hf : ∀ a e, f (a ⊗ₜ e) = g a * ρ e := fun _ _ => rfl
  have hfi : ∀ t, f (involBase Q w.Completion t) = conj (f t) := fun t => by
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul a e =>
      rw [involBase, Algebra.TensorProduct.map_tmul, hf, hf, map_mul, hg]
      exact congrArg _ (hinv e)
    | add a b ha hb => simp only [map_add (f := _), ha, hb]
  obtain ⟨z, hz⟩ := hz w
  have h1 := congrArg f hz
  rw [map_mul, hfi, hf, map_one, one_mul, Complex.mul_conj] at h1
  have h2 : f (z : w.Completion ⊗[maximalRealSubfield E] Fld Q) ≠ 0 := (z.isUnit.map f).ne_zero
  rw [← h1]
  exact_mod_cast Complex.normSq_pos.2 h2

theorem exists_irreducible_factor (P : E[X]) (hP : P.Monic) (τ : E →+* ℂ) (μ : ℂ) (h : eval₂ τ μ P = 0) :
    ∃ R : E[X], R.Monic ∧ Irreducible R ∧ R ∣ P ∧ eval₂ τ μ R = 0 := by
  letI : Algebra E ℂ := τ.toAlgebra
  have hi : IsIntegral E μ := ⟨P, hP, h⟩
  exact ⟨minpoly E μ, minpoly.monic hi, minpoly.irreducible hi, minpoly.dvd E μ h, minpoly.aeval E μ⟩

theorem aeval_units_conj {n : ℕ} (u : (Matrix (Fin n) (Fin n) ℂ)ˣ) (A : Matrix (Fin n) (Fin n) ℂ) (p : ℂ[X]) :
    aeval ((u : Matrix (Fin n) (Fin n) ℂ) * A * ((u⁻¹ : _ˣ) : Matrix (Fin n) (Fin n) ℂ)) p =
      (u : Matrix (Fin n) (Fin n) ℂ) * aeval A p * ((u⁻¹ : _ˣ) : Matrix (Fin n) (Fin n) ℂ) := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), hp, hq, mul_add, add_mul]
  | monomial k a =>
    rw [aeval_monomial, aeval_monomial, Units.conj_pow]
    simp only [Algebra.algebraMap_eq_smul_one, smul_mul_assoc, one_mul, mul_smul_comm]

theorem posDef_aeval {n : ℕ} (U : Matrix (Fin n) (Fin n) ℂ) (hU : Uᴴ * U = 1) (hs : U.charpoly.Separable)
    (hn : ∀ μ : ℂ, U.charpoly.IsRoot μ → ‖μ‖ = 1) (p : ℂ[X])
    (hp : ∀ μ : ℂ, U.charpoly.IsRoot μ → 0 < p.eval μ) : (aeval U p).PosDef := by
  have hU' : U * Uᴴ = 1 := mul_eq_one_comm.1 hU
  obtain ⟨r, hr⟩ := GlobalTheory.BCT.ClsFin.exists_aeval_of_comm U Uᴴ hs (hU'.trans hU.symm)
  have hdiv : U.charpoly ∣ X * r - 1 := by
    refine GlobalTheory.ClassParam.charpoly_dvd_of_aeval U hs _ ?_
    rw [map_sub, map_mul, aeval_X, ← hr, hU', map_one, sub_self]
  have hrv : ∀ μ : ℂ, U.charpoly.IsRoot μ → r.eval μ = conj μ := fun μ hμ => by
    obtain ⟨t, ht⟩ := hdiv
    have h1 := congrArg (eval μ) ht
    have h0 : eval μ U.charpoly = 0 := hμ
    rw [eval_mul, h0, zero_mul, eval_sub, eval_mul, eval_X, eval_one, sub_eq_zero] at h1
    rw [← Complex.inv_eq_conj (hn μ hμ)]
    exact eq_inv_of_mul_eq_one_right h1
  have hcT : (aeval U p)ᴴ = aeval U ((p.map (starRingEnd ℂ)).comp r) := by
    have h1 := GlobalTheory.NormInert.cT_aeval (starRingEnd ℂ) U p
    have h2 : ∀ M : Matrix (Fin n) (Fin n) ℂ, cT (starRingEnd ℂ) M = Mᴴ := fun M => rfl
    rw [h2, h2, hr, ← aeval_comp] at h1
    exact h1
  have hzero : aeval U (p - (p.map (starRingEnd ℂ)).comp r) = 0 := by
    by_cases h0 : p - (p.map (starRingEnd ℂ)).comp r = 0
    · rw [h0, map_zero]
    have hd : U.charpoly ∣ p - (p.map (starRingEnd ℂ)).comp r := by
      refine (IsAlgClosed.splits _).dvd_of_roots_le_roots U.charpoly_monic.ne_zero ?_
      rw [Multiset.le_iff_subset (nodup_roots hs)]
      intro μ hμ
      have hμ' := isRoot_of_mem_roots hμ
      rw [mem_roots h0, IsRoot.def, eval_sub, eval_comp, hrv μ hμ', sub_eq_zero, eval_map]
      have h3 : eval₂ (starRingEnd ℂ) (conj μ) p = conj (eval μ p) := by
        rw [eval, Polynomial.hom_eval₂, RingHom.comp_id]
      rw [h3]
      exact (Complex.conj_eq_iff_im.2 (Complex.pos_iff.1 (hp μ hμ')).2.symm).symm
    obtain ⟨t, ht⟩ := hd
    rw [ht, map_mul, Matrix.aeval_self_charpoly, zero_mul]
  have hH : (aeval U p).IsHermitian := by
    rw [Matrix.IsHermitian, hcT]
    rw [map_sub, sub_eq_zero] at hzero
    exact hzero.symm
  rw [hH.posDef_iff_eigenvalues_pos]
  intro i
  haveI : Nonempty (Fin n) := ⟨i⟩
  have h1 : ((hH.eigenvalues i : ℝ) : ℂ) ∈ spectrum ℂ (aeval U p) := by
    have := hH.eigenvalues_mem_spectrum_real i
    rw [← spectrum.preimage_algebraMap ℂ] at this
    exact this
  rw [spectrum.map_polynomial_aeval_of_nonempty _ _ (spectrum.nonempty_of_isAlgClosed_of_finiteDimensional ℂ U)] at h1
  obtain ⟨μ, hμ, e⟩ := h1
  have h2 := hp μ (Matrix.mem_spectrum_iff_isRoot_charpoly.1 hμ)
  rw [show eval μ p = ((hH.eigenvalues i : ℝ) : ℂ) from e] at h2
  exact_mod_cast h2

open scoped MatrixOrder Matrix.Norms.L2Operator in
theorem exists_factor {n : ℕ} {T : Matrix (Fin n) (Fin n) ℂ} (hT : T.PosSemidef) :
    ∃ S : Matrix (Fin n) (Fin n) ℂ, T = Sᴴ * S := by
  obtain ⟨y, rfl⟩ := CStarAlgebra.nonneg_iff_eq_star_mul_self.mp hT.nonneg
  exact ⟨y, rfl⟩

theorem map_aeval {n : ℕ} (τ : E →+* ℂ) (A : Matrix (Fin n) (Fin n) E) (p : E[X]) :
    (aeval A p).map τ = aeval (A.map τ) (p.map τ) := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq =>
    rw [map_add (f := _), Polynomial.map_add (f := _), map_add (f := _), ← hp, ← hq]
    ext i j
    simp
  | monomial k a =>
    rw [aeval_monomial, Polynomial.map_monomial, aeval_monomial]
    have e : (A.map τ) ^ k = (A ^ k).map τ := by rw [Matrix.map_pow]
    rw [e]
    ext i j
    simp [Algebra.algebraMap_eq_smul_one]

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → (∀ τ : E →+* ℂ, ∃ Q : Matrix (Fin n) (Fin n) ℂ, Q.det ≠ 0 ∧ H₀.map τ = cT (starRingEnd ℂ) Q * Q) → ∀ m : E[X], (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → invol Q (AdjoinRoot.mk Q.1 m : Fld Q) = (AdjoinRoot.mk Q.1 m : Fld Q)) → (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → ∀ u : InfinitePlace (maximalRealSubfield E), ∃ z : (u.Completion ⊗[(maximalRealSubfield E)] Fld Q)ˣ, (z : u.Completion ⊗[(maximalRealSubfield E)] Fld Q) * involBase Q u.Completion (z : u.Completion ⊗[(maximalRealSubfield E)] Fld Q) = 1 ⊗ₜ (AdjoinRoot.mk Q.1 m : Fld Q)) → ∀ τ : E →+* ℂ, ∃ Q' : Matrix (Fin n) (Fin n) ℂ, Q'.det ≠ 0 ∧ (H₀ * aeval γ₀.val m).map τ = cT (starRingEnd ℂ) Q' * Q' := by
  intro E _ _ _ n γ₀ hell H₀ _ _ hiso hdef m _ hz τ
  obtain ⟨Q, hQ, hHQ⟩ := hdef τ
  have h2 : ∀ M : Matrix (Fin n) (Fin n) ℂ, cT (starRingEnd ℂ) M = Mᴴ := fun M => rfl
  rw [h2] at hHQ
  set A := γ₀.val.map τ with hA
  have hiso' : Aᴴ * (Qᴴ * Q) * A = Qᴴ * Q := by
    have h := congrArg (fun M => M.map τ) hiso
    simp only [Matrix.map_mul] at h
    have e : (cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val).map τ = Aᴴ := by
      ext i j
      exact IsCMField.complexEmbedding_complexConj E τ (γ₀.val j i)
    rw [e, hHQ] at h
    exact h
  let u : (Matrix (Fin n) (Fin n) ℂ)ˣ := ((Matrix.isUnit_iff_isUnit_det Q).2 (isUnit_iff_ne_zero.2 hQ)).unit
  have hu : (u : Matrix (Fin n) (Fin n) ℂ) = Q := rfl
  obtain ⟨Qi, hQi⟩ : ∃ Qi : Matrix (Fin n) (Fin n) ℂ, Qi = ((u⁻¹ : _ˣ) : Matrix (Fin n) (Fin n) ℂ) := ⟨_, rfl⟩
  have e1 : Q * Qi = 1 := by rw [hQi, ← hu]; exact u.mul_inv
  have e2 : Qi * Q = 1 := by rw [hQi, ← hu]; exact u.inv_mul
  have hconj := aeval_units_conj u A (m.map τ)
  have hchar := Matrix.charpoly_units_conj u A
  rw [← Matrix.coe_units_inv] at hchar
  rw [hu, ← hQi] at hconj hchar
  have hAc : A.charpoly = γ₀.val.charpoly.map τ := Matrix.charpoly_map _ _
  obtain ⟨U, hUd⟩ : ∃ U, U = Q * A * Qi := ⟨_, rfl⟩
  rw [← hUd] at hconj hchar
  have hU : Uᴴ * U = 1 := by
    have e3 : Qiᴴ * Qᴴ = 1 := by rw [← conjTranspose_mul, e1, conjTranspose_one]
    calc Uᴴ * U = Qiᴴ * (Aᴴ * (Qᴴ * Q) * A) * Qi := by
          simp only [hUd, conjTranspose_mul, Matrix.mul_assoc]
      _ = (Qiᴴ * Qᴴ) * (Q * Qi) := by rw [hiso']; simp only [Matrix.mul_assoc]
      _ = 1 := by rw [e1, e3, Matrix.mul_one]
  have hroot : ∀ μ : ℂ, U.charpoly.IsRoot μ → (γ₀.val.charpoly.map τ).IsRoot μ := fun μ h => by
    rwa [hchar, hAc] at h
  have hnorm : ∀ μ : ℂ, U.charpoly.IsRoot μ → ‖μ‖ = 1 := fun μ h =>
    hell.2.2.2 τ μ ((mem_roots (Polynomial.map_ne_zero hell.1.ne_zero)).2 (hroot μ h))
  have hsep : U.charpoly.Separable := by
    rw [hchar, hAc]
    exact hell.2.2.1.map
  have hp : ∀ μ : ℂ, U.charpoly.IsRoot μ → 0 < (m.map τ).eval μ := fun μ h => by
    have h0 : eval₂ τ μ γ₀.val.charpoly = 0 := by
      rw [← eval_map]
      exact hroot μ h
    obtain ⟨R, Rm, Ri, Rd, Re⟩ := exists_irreducible_factor _ hell.1 τ μ h0
    let S : SelfRecip E R.natDegree := ⟨R, GlobalTheory.SelfRecipFactor.isSelfRecip_of_dvd_ell E n _ hell R Rm Ri Rd⟩
    let ρ : Fld S →+* ℂ := AdjoinRoot.lift τ μ Re
    have hα : ρ (alpha S) = μ := AdjoinRoot.lift_root Re
    have hm : ρ (AdjoinRoot.mk S.1 m : Fld S) = eval₂ τ μ m := AdjoinRoot.lift_mk Re m
    have := norm_value_pos S ρ (by rw [hα]; exact hnorm μ h) _ (hz _ S Rd)
    rwa [hm, ← eval_map] at this
  have hT := posDef_aeval U hU hsep hnorm (m.map τ) hp
  obtain ⟨S, hS⟩ := exists_factor hT.posSemidef
  have hdetS : S.det ≠ 0 := fun h => by
    have := hT.det_pos
    rw [hS, Matrix.det_mul, h, mul_zero] at this
    exact lt_irrefl _ this
  refine ⟨S * Q, by rw [Matrix.det_mul]; exact mul_ne_zero hdetS hQ, ?_⟩
  have e4 : Q * aeval A (m.map τ) = (Sᴴ * S) * Q := by
    rw [← hS, hconj, Matrix.mul_assoc, e2, Matrix.mul_one]
  rw [Matrix.map_mul, hHQ, map_aeval, h2, conjTranspose_mul, Matrix.mul_assoc, e4]
  simp only [Matrix.mul_assoc]

end GlobalTheory.CompanionTheory.PosDefNorm
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomial =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomialStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomialStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

theorem _root_.GlobalTheory.T.positive_hermitian_polynomial : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → (∀ τ : E →+* ℂ, ∃ Q : Matrix (Fin n) (Fin n) ℂ, Q.det ≠ 0 ∧ H₀.map τ = cT (starRingEnd ℂ) Q * Q) → ∀ m : E[X], (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → invol Q (AdjoinRoot.mk Q.1 m : Fld Q) = (AdjoinRoot.mk Q.1 m : Fld Q)) → (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → ∀ u : InfinitePlace (maximalRealSubfield E), ∃ z : (u.Completion ⊗[(maximalRealSubfield E)] Fld Q)ˣ, (z : u.Completion ⊗[(maximalRealSubfield E)] Fld Q) * involBase Q u.Completion (z : u.Completion ⊗[(maximalRealSubfield E)] Fld Q) = 1 ⊗ₜ (AdjoinRoot.mk Q.1 m : Fld Q)) → ∀ τ : E →+* ℂ, ∃ Q' : Matrix (Fin n) (Fin n) ℂ, Q'.det ≠ 0 ∧ (H₀ * aeval γ₀.val m).map τ = cT (starRingEnd ℂ) Q' * Q' := by
  first | exact @GlobalTheory.CompanionTheory.PosDefNorm.main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomialStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.FiniteRefSign =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.FiniteRefSign", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.ToComplBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DvdOfPhiEqZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPolynomialChineseRemainderStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteNonsplitSignPlacesStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianFormPolynomialInStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvolutionCompatiblePolynomialStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassFirstStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassSecondStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalHermitianClassThirdStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormMemNormGroupStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PositiveHermitianPolynomialStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField PositivityTheory.BCUSide.HermitianLocalForms

namespace PositivityTheory.BCUSide.HermitianLocalForms.Lem

alias ratio_poly := _root_.GlobalTheory.CompanionTheory.FormRatio.exists_eq_mul_aeval

theorem exists_crt : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ g : ∀ (r : ℕ) (Q : SelfRecip E r), Fld Q, ∃ m : E[X], ∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → (AdjoinRoot.mk Q.1 m : Fld Q) = g r Q := GlobalTheory.T.exists_polynomial_chinese_remainder

theorem herm_of_plus : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → ∀ m : E[X], (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → invol Q (AdjoinRoot.mk Q.1 m : Fld Q) = (AdjoinRoot.mk Q.1 m : Fld Q)) → IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom (H₀ * aeval γ₀.val m) := GlobalTheory.T.involution_compatible_polynomial

theorem posDef_of_inf : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → (∀ τ : E →+* ℂ, ∃ Q : Matrix (Fin n) (Fin n) ℂ, Q.det ≠ 0 ∧ H₀.map τ = cT (starRingEnd ℂ) Q * Q) → ∀ m : E[X], (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → invol Q (AdjoinRoot.mk Q.1 m : Fld Q) = (AdjoinRoot.mk Q.1 m : Fld Q)) → (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → ∀ u : InfinitePlace (maximalRealSubfield E), ∃ z : (u.Completion ⊗[(maximalRealSubfield E)] Fld Q)ˣ, (z : u.Completion ⊗[(maximalRealSubfield E)] Fld Q) * involBase Q u.Completion (z : u.Completion ⊗[(maximalRealSubfield E)] Fld Q) = 1 ⊗ₜ (AdjoinRoot.mk Q.1 m : Fld Q)) → ∀ τ : E →+* ℂ, ∃ Q' : Matrix (Fin n) (Fin n) ℂ, Q'.det ≠ 0 ∧ (H₀ * aeval γ₀.val m).map τ = cT (starRingEnd ℂ) Q' * Q' := GlobalTheory.T.positive_hermitian_polynomial

theorem finite_ref_sign : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (n : ℕ) (γ₀ : GL (Fin n) E) (H₀ : Matrix (Fin n) (Fin n) E), IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → (∀ τ : E →+* ℂ, ∃ Q : Matrix (Fin n) (Fin n) ℂ, Q.det ≠ 0 ∧ H₀.map τ = cT (starRingEnd ℂ) Q * Q) → ∀ P₁ : E[X], {w : Pl E | ¬ IsSplitAt w ∧ sgnOn (cj w) (H₀.map (algebraMap E (w.adicCompletion E))) (atPl w P₁) (γ₀.val.map (algebraMap E (w.adicCompletion E))) ≠ 1}.Finite := GlobalTheory.T.finite_nonsplit_sign_places

theorem local_assembly : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) (hv : w.under (𝓞 (maximalRealSubfield E)) = v), ∀ (n : ℕ) (γ₀ : GL (Fin n) E), γ₀.val.charpoly ∈ Ell E n → ∀ H₀ : Matrix (Fin n) (Fin n) E, IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H₀ → H₀.det ≠ 0 → cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ₀.val * H₀ * γ₀.val = H₀ → ∀ (m : (w.adicCompletion E)[X]) (t : E[X]), (∀ (r : ℕ) (Q : SelfRecip E r), Q.1 ∣ γ₀.val.charpoly → ∃ z : ((v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] Fld Q)ˣ, locPhi hU w hw v hv Q m * ((z : (v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] Fld Q) * involBase Q (v.adicCompletion (maximalRealSubfield E)) (z : (v.adicCompletion (maximalRealSubfield E)) ⊗[(maximalRealSubfield E)] Fld Q)) = locPhi hU w hw v hv Q (atPl w t)) → ∃ c : GL (Fin n) (w.adicCompletion E), c.val * (γ₀.val.map (algebraMap E (w.adicCompletion E))) = (γ₀.val.map (algebraMap E (w.adicCompletion E))) * c.val ∧ (H₀ * aeval γ₀.val t).map (algebraMap E (w.adicCompletion E)) = cT (cj w) c.val * ((H₀.map (algebraMap E (w.adicCompletion E))) * aeval (γ₀.val.map (algebraMap E (w.adicCompletion E))) m) * c.val := by
  intro E _ _ _ hU w hw v hv n γ₀ hP H₀ _ _ h3 m t hz
  exact GlobalTheory.CompanionTheory.LocAssembly.assembly (locJ hU w hw v hv) (locJ_algebraMap hU w hw v hv) (cj w)
    (locJ_cj hU w hw v hv) γ₀ hP H₀ h3 m t hz

end PositivityTheory.BCUSide.HermitianLocalForms.Lem
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLemmas.FiniteRefSign =====
