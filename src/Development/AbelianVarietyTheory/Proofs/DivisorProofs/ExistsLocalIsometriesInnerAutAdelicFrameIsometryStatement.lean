module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsometryMatchingLatticesMatchesSphericalOps
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IsometryCarriesCharacter
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAdelicUnitaryGroupIso
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable
public import Development.AbelianVarietyTheory.Definitions.Foundations.OfInfProjInfMulOfFinProjFin
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsLocalUnitaryGroupIsoConjIsometry
public import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AfsplitB
public import Development.AbelianVarietyTheory.Definitions.Foundations.ForallEventuallyFinLocIff
public import Development.AbelianVarietyTheory.Definitions.Foundations.HermitianSpaceBaseLatticeEqFrameLattice
public import Formalism.LocalToGlobal.HermitianColumns.InLocalDiscriminantKernel
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCompatFiniteIsometry
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsUnitaryPart
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsBaseFrameSelfDualHermitianFrameLatticeStatement
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec
import Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyNormFinLeOne
import Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv
import Development.AbelianVarietyTheory.Definitions.Foundations.IsHilbertSchmidtOfFiniteDimensional
import Development.AbelianVarietyTheory.Definitions.Foundations.MeasurePreservingRmulQuotMeas
import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphism, Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphismStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsLocalUnitaryGroupIsoConjIsometryStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponents, Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponentsStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNe, Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNeStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelf, Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelfStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMem, Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMemStatement, Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponents, Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponentsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometry, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometryStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphism =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphism", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IsometryCarriesCharacter\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAdelicUnitaryGroupIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyNormFinLeOne\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsHilbertSchmidtOfFiniteDimensional\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MeasurePreservingRmulQuotMeas\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.InnerTwist

theorem exists_inv {R : Type} [CommRing R] {m n : ℕ} (j : Matrix (Fin m) (Fin n) R)
    (h : Function.Bijective j.mulVec) : ∃ j' : Matrix (Fin n) (Fin m) R, j * j' = 1 ∧ j' * j = 1 := by
  let e := LinearEquiv.ofBijective (Matrix.mulVecLin j) h
  refine ⟨LinearMap.toMatrix' (e.symm : (Fin m → R) →ₗ[R] (Fin n → R)), ?_, ?_⟩
  · apply Matrix.toLin'.injective
    rw [Matrix.toLin'_mul, Matrix.toLin'_one, Matrix.toLin'_toMatrix']
    refine LinearMap.ext fun x => ?_
    exact e.apply_symm_apply x
  · apply Matrix.toLin'.injective
    rw [Matrix.toLin'_mul, Matrix.toLin'_one, Matrix.toLin'_toMatrix']
    refine LinearMap.ext fun x => ?_
    exact e.symm_apply_apply x

variable {D : D7}

theorem mat_ext {k l : Type} (X Y : Matrix k l (AF D.host.F ⊗[D.host.F] D.host.E))
    (h1 : X.map (GlobalTheory.FinIsoGrp.pInf D) = Y.map (GlobalTheory.FinIsoGrp.pInf D))
    (h2 : X.map (GlobalTheory.FinIsoGrp.qFin D) = Y.map (GlobalTheory.FinIsoGrp.qFin D)) : X = Y := by
  ext i i'
  exact GlobalTheory.FinIsoGrp.proj_inj D _ _ (congrFun (congrFun h1 i) i') (congrFun (congrFun h2 i) i')

theorem infHom_val (V : HSp D) (g : GA D V) :
    (infHom V g).val = (matHom V g).val.map (GlobalTheory.FinIsoGrp.pInf D) := by
  refine Matrix.ext fun i k => ?_
  rfl

theorem gfc_ext (V : HSp D) (x y : GfC V)
    (h : (finE V (x : GA D V)).val = (finE V (y : GA D V)).val) : x = y := by
  have hx : infHom V (x : GA D V) = 1 := x.2
  have hy : infHom V (y : GA D V) = 1 := y.2
  have hm : (matHom V (x : GA D V)).val = (matHom V (y : GA D V)).val := by
    apply mat_ext
    · rw [← infHom_val, ← infHom_val, hx, hy]
    · rw [← GlobalTheory.FinIsoGrp.finE_val, ← GlobalTheory.FinIsoGrp.finE_val, h]
  have inj : Function.Injective (matHom V) := Subgroup.subtype_injective _
  exact Subtype.ext (inj (Units.ext hm))

end GlobalTheory.InnerTwist

namespace GlobalTheory.InnerTwist

variable {D : D7}

theorem map_one' {R S : Type} [CommRing R] [CommRing S] {n : Type} [Fintype n] [DecidableEq n] (f : R →+* S) :
    (1 : Matrix n n R).map f = 1 :=
  Matrix.map_one _ (RingHom.map_zero f) (RingHom.map_one f)

theorem lift_abs {R R₁ R₂ : Type} [CommRing R] [CommRing R₁] [CommRing R₂] {n : Type} [Fintype n] [DecidableEq n]
    (σ : R →+* R) (σ₁ : R₁ →+* R₁) (σ₂ : R₂ →+* R₂) (p : R →+* R₁) (q : R →+* R₂)
    (hinj : ∀ x y, p x = p y → q x = q y → x = y) (s : R₂ → R) (hs1 : ∀ y, p (s y) = 0) (hs2 : ∀ y, q (s y) = y)
    (hp : ∀ x, p (σ x) = σ₁ (p x)) (hq : ∀ x, q (σ x) = σ₂ (q x)) (J : Matrix n n R) (X Y : Matrix n n R₂)
    (hXY : X * Y = 1) (hYX : Y * X = 1) (hX : Formalism.UG.cT σ₂ X * J.map q * X = J.map q) :
    ∃ u : GL n R, Formalism.UG.cT σ (u : Matrix n n R) * J * (u : Matrix n n R) = J ∧
      (u : Matrix n n R).map p = 1 ∧ (u : Matrix n n R).map q = X := by
  have ext : ∀ {k l : Type} (A B : Matrix k l R), A.map p = B.map p → A.map q = B.map q → A = B := by
    intro k l A B ha hb
    ext i i'
    exact hinj _ _ (congrFun (congrFun ha i) i') (congrFun (congrFun hb i) i')
  let lift : Matrix n n R₂ → Matrix n n R := fun Z => (1 - s 1) • (1 : Matrix n n R) + Z.map s
  have lp : ∀ Z, (lift Z).map p = 1 := by
    intro Z; ext i k
    by_cases h : i = k <;> simp [lift, Matrix.one_apply, h, hs1]
  have lq : ∀ Z, (lift Z).map q = Z := by
    intro Z; ext i k
    by_cases h : i = k <;> simp [lift, h, hs2]
  have hmul : ∀ Z W : Matrix n n R₂, Z * W = 1 → lift Z * lift W = 1 := by
    intro Z W hZW
    apply ext
    · rw [Matrix.map_mul, lp, lp, Matrix.one_mul, map_one']
    · rw [Matrix.map_mul, lq, lq, hZW, map_one']
  have cp : ∀ A : Matrix n n R, (Formalism.UG.cT σ A).map p = Formalism.UG.cT σ₁ (A.map p) := by
    intro A; ext i k; exact hp _
  have cq : ∀ A : Matrix n n R, (Formalism.UG.cT σ A).map q = Formalism.UG.cT σ₂ (A.map q) := by
    intro A; ext i k; exact hq _
  refine ⟨⟨lift X, lift Y, hmul X Y hXY, hmul Y X hYX⟩, ?_, lp X, lq X⟩
  show Formalism.UG.cT σ (lift X) * J * lift X = J
  apply ext
  · rw [Matrix.map_mul, Matrix.map_mul, cp, lp, Formalism.UG.cT_one, Matrix.one_mul, Matrix.mul_one]
  · rw [Matrix.map_mul, Matrix.map_mul, cq, lq]
    exact hX

theorem exists_fin (V : HSp D) (X Y : Matrix (Fin V.rank) (Fin V.rank) (Formalism.IndefR.Lev.EAf D)) (hXY : X * Y = 1) (hYX : Y * X = 1)
    (hX : Formalism.UG.cT (Formalism.UG.sigR D.sp.cm.sig (Formalism.L2.Herm.Af D.host.F)) X *
        V.gram.map (Formalism.UG.inclE (F := D.host.F) (Formalism.L2.Herm.Af D.host.F)) * X =
      V.gram.map (Formalism.UG.inclE (F := D.host.F) (Formalism.L2.Herm.Af D.host.F))) :
    ∃ b : GfC V, (finE V (b : GA D V)).val = X := by
  choose s hs1 hs2 using GlobalTheory.FinIsoGrp.proj_surj D
  rw [← GlobalTheory.FinIsoGrp.gram_map] at hX
  obtain ⟨u, hu, hup, huq⟩ := lift_abs (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (AF D.host.F) D.sp.cm.sig)
    (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (Ainf D.host.F) D.sp.cm.sig) (Formalism.UG.sigR D.sp.cm.sig (Formalism.L2.Herm.Af D.host.F))
    (GlobalTheory.FinIsoGrp.pInf D) (GlobalTheory.FinIsoGrp.qFin D) (GlobalTheory.FinIsoGrp.proj_inj D) s hs1 hs2
    (fun x => GlobalTheory.FinIsoGrp.map_sig (fstA D.host.F) D.sp.cm.sig x) (GlobalTheory.FinIsoGrp.qFin_sig D)
    (JR (AF D.host.F) V.gram) X Y hXY hYX hX
  let b0 : GA D V := (⟨u, hu⟩ : HR (AF D.host.F) D.sp.cm.sig V.gram)
  have hb : infHom V b0 = 1 := by
    apply Units.ext
    exact (infHom_val V b0).trans hup
  refine ⟨⟨b0, hb⟩, ?_⟩
  rw [GlobalTheory.FinIsoGrp.finE_val]
  exact huq

theorem alg {R : Type} [CommRing R] {m n : Type} [Fintype m] [DecidableEq m] [Fintype n] [DecidableEq n]
    (σ : R →+* R) (j j₀ : Matrix m n R) (j' k' : Matrix n m R) (G : Matrix n n R) (G' : Matrix m m R)
    (h1 : j * j' = 1) (h2 : j' * j = 1) (k1 : j₀ * k' = 1) (k2 : k' * j₀ = 1)
    (hJ : Formalism.UG.cT σ j * G' * j = G) (hJ₀ : Formalism.UG.cT σ j₀ * G' * j₀ = G) :
    Formalism.UG.cT σ (k' * j) * G * (k' * j) = G ∧ (k' * j) * (j' * j₀) = 1 ∧ (j' * j₀) * (k' * j) = 1 := by
  have hk : Formalism.UG.cT σ k' * G * k' = G' := by
    calc Formalism.UG.cT σ k' * G * k' = Formalism.UG.cT σ (j₀ * k') * G' * (j₀ * k') := by
          rw [← hJ₀, Formalism.UG.cT_mul]; simp only [Matrix.mul_assoc]
      _ = G' := by rw [k1, Formalism.UG.cT_one, Matrix.one_mul, Matrix.mul_one]
  refine ⟨?_, ?_, ?_⟩
  · calc Formalism.UG.cT σ (k' * j) * G * (k' * j) = Formalism.UG.cT σ j * (Formalism.UG.cT σ k' * G * k') * j := by
          rw [Formalism.UG.cT_mul]; simp only [Matrix.mul_assoc]
      _ = G := by rw [hk, hJ]
  · calc (k' * j) * (j' * j₀) = k' * (j * j') * j₀ := by simp only [Matrix.mul_assoc]
      _ = 1 := by rw [h1, Matrix.mul_one, k2]
  · calc (j' * j₀) * (k' * j) = j' * (j₀ * k') * j := by simp only [Matrix.mul_assoc]
      _ = 1 := by rw [k1, Matrix.mul_one, h2]

theorem alg2 {R : Type} [CommRing R] {m n : Type} [Fintype m] [DecidableEq m] [Fintype n] [DecidableEq n]
    (j j₀ : Matrix m n R) (j' k' : Matrix n m R) (h1 : j * j' = 1) (k1 : j₀ * k' = 1)
    (P Q : Matrix m m R) (A : Matrix n n R) (c1 : P * j = j * A) (c2 : Q * j₀ = j₀ * ((k' * j) * A * (j' * j₀))) :
    P = Q := by
  have e1 : P = j * A * j' := by
    calc P = P * (j * j') := by rw [h1, Matrix.mul_one]
      _ = j * A * j' := by rw [← Matrix.mul_assoc, c1]
  have e2 : Q = j * A * j' := by
    calc Q = Q * (j₀ * k') := by rw [k1, Matrix.mul_one]
      _ = (j₀ * k') * j * A * j' * (j₀ * k') := by
          rw [← Matrix.mul_assoc, c2]; simp only [Matrix.mul_assoc]
      _ = j * A * j' := by rw [k1, Matrix.one_mul, Matrix.mul_one]
  rw [e1, e2]

theorem inv_val {R : Type} [CommRing R] {n : Type} [Fintype n] [DecidableEq n] (u : GL n R) (X Y : Matrix n n R)
    (hu : u.val = X) (hYX : Y * X = 1) : (u⁻¹).val = Y := by
  calc (u⁻¹).val = (Y * X) * (u⁻¹).val := by rw [hYX, Matrix.one_mul]
    _ = Y * (u.val * (u⁻¹).val) := by rw [hu]; simp only [Matrix.mul_assoc]
    _ = Y := by rw [Units.mul_inv, Matrix.mul_one]

theorem conj_inner : ∀ (D : D7) (V V' : HSp D) (j j₀ : Matrix (Fin V'.rank) (Fin V.rank) (Formalism.IndefR.Lev.EAf D)) (Φ Φ₀ : GfC V ≃ₜ* GfC V'), GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsIsom V V' (Formalism.L2.Herm.Af D.host.F) j → GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsIsom V V' (Formalism.L2.Herm.Af D.host.F) j₀ → GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsConjBy V V' j Φ → GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsConjBy V V' j₀ Φ₀ → ∃ b : GfC V, ∀ g, Φ g = Φ₀ (b * g * b⁻¹) := by
  intro D V V' j j₀ Φ Φ₀ hj hj₀ hΦ hΦ₀
  obtain ⟨j', h1, h2⟩ := exists_inv j hj.1
  obtain ⟨k', k1, k2⟩ := exists_inv j₀ hj₀.1
  obtain ⟨hX, hXY, hYX⟩ := alg _ j j₀ j' k' _ _ h1 h2 k1 k2 hj.2 hj₀.2
  obtain ⟨b, hb⟩ := exists_fin V _ _ hXY hYX hX
  refine ⟨b, fun g => gfc_ext V' _ _ ?_⟩
  have hbinv := inv_val (finE V (b : GA D V)) _ _ hb hYX
  have e0 : (finE V ((b * g * b⁻¹ : GfC V) : GA D V)).val =
      HMul.hMul (HMul.hMul (HMul.hMul k' j) (finE V (g : GA D V)).val) (HMul.hMul j' j₀) := by
    rw [Subgroup.coe_mul, Subgroup.coe_mul, Subgroup.coe_inv, map_mul, map_mul, map_inv, Units.val_mul, Units.val_mul,
      hbinv, hb]
  have c2 := hΦ₀ (b * g * b⁻¹)
  unfold GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.mmul at c2
  rw [e0] at c2
  exact alg2 j j₀ j' k' h1 k1 _ _ _ (hΦ g) c2

end GlobalTheory.InnerTwist
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphism =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphismStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphismStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IsometryCarriesCharacter\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

theorem _root_.GlobalTheory.T.adelicIsometryConj_differ_by_innerAutomorphism : ∀ (D : D7) (V V' : HSp D) (j j₀ : Matrix (Fin V'.rank) (Fin V.rank) (Formalism.IndefR.Lev.EAf D)) (Φ Φ₀ : GfC V ≃ₜ* GfC V'), GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsIsom V V' (Formalism.L2.Herm.Af D.host.F) j → GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsIsom V V' (Formalism.L2.Herm.Af D.host.F) j₀ → GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsConjBy V V' j Φ → GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsConjBy V V' j₀ Φ₀ → ∃ b : GfC V, ∀ g, Φ g = Φ₀ (b * g * b⁻¹) := by
  first | exact @GlobalTheory.InnerTwist.conj_inner
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphismStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsLocalUnitaryGroupIsoConjIsometryStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsLocalUnitaryGroupIsoConjIsometryStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.OfInfProjInfMulOfFinProjFin\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsLocalUnitaryGroupIsoConjIsometry\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

open scoped TensorProduct


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsLocalUnitaryGroupIsoConjIsometryStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponents =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponents", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAdelicUnitaryGroupIso\npublic import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AfsplitB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyNormFinLeOne\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsHilbertSchmidtOfFiniteDimensional\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MeasurePreservingRmulQuotMeas\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

open scoped TensorProduct

namespace GlobalTheory.TrFinExt

private theorem eq_of_finE_map_prV_eq_forall_place {D : D7} (V : HSp D) (a b : GA D V)
    (h : ∀ u : HeightOneSpectrum (𝓞 D.host.F), (Formalism.IndefR.Lev.finE V a).val.map (Formalism.UG.prV (E := D.host.E) u) = (Formalism.IndefR.Lev.finE V b).val.map (Formalism.UG.prV (E := D.host.E) u))
    (i j : Fin V.rank) :
    (Formalism.IndefR.Lev.finE V a).val i j = (Formalism.IndefR.Lev.finE V b).val i j := by

  rw [← sub_eq_zero]
  refine Formalism.UG.P.afsplit_inj _ fun w => ?_
  have hw := congrFun (congrFun (h w) i) j
  rw [Matrix.map_apply, Matrix.map_apply] at hw
  rw [map_sub, hw, sub_self]

theorem gfc_ext : ∀ {D : D7} (V : HSp D) (x y : GfC V), (∀ u : HeightOneSpectrum (𝓞 D.host.F), (Formalism.IndefR.Lev.finE V (x : GA D V)).val.map (Formalism.UG.prV (E := D.host.E) u) = (Formalism.IndefR.Lev.finE V (y : GA D V)).val.map (Formalism.UG.prV (E := D.host.E) u)) → x = y := by
  intro D V x y h

  have hx : infHom V (x : GA D V) = 1 := x.2
  have hy : infHom V (y : GA D V) = 1 := y.2
  apply Subtype.ext
  apply Subtype.ext
  apply Units.ext
  ext i j
  apply GlobalTheory.FinIsoGrp.proj_inj D
  · have ex := congrArg (fun g : GL (Fin V.rank) (Ainf D.host.F ⊗[D.host.F] D.host.E) => g.val i j) hx
    have ey := congrArg (fun g : GL (Fin V.rank) (Ainf D.host.F ⊗[D.host.F] D.host.E) => g.val i j) hy
    exact ex.trans ey.symm
  · have e := eq_of_finE_map_prV_eq_forall_place V (x : GA D V) (y : GA D V) h i j
    rw [GlobalTheory.FinIsoGrp.finE_val, GlobalTheory.FinIsoGrp.finE_val] at e
    exact e

end GlobalTheory.TrFinExt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponents =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponentsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponentsStatement", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponents\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

open scoped TensorProduct


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponentsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ForallEventuallyFinLocIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

open scoped TensorProduct

namespace GlobalTheory.LocFinComp

theorem prV_swap_snd {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E]
    (u : HeightOneSpectrum (𝓞 F)) (x : AF F ⊗[F] E) :
    Formalism.UG.prV (E := E) u (Algebra.TensorProduct.comm F (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af F) E
      (Algebra.TensorProduct.map (sndA F) (AlgHom.id F E) x)) =
    Algebra.TensorProduct.comm F (Fv F u) E (Algebra.TensorProduct.map (evFin F u) (AlgHom.id F E) x) := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a e => exact Eq.refl _
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem finE_locFin_map_prV_ne : ∀ {D : D7} (V : HSp D) {v u : HeightOneSpectrum (𝓞 D.host.F)}, u ≠ v → ∀ (g : Gv V v), (Formalism.IndefR.Lev.finE V (locFin V v g : GA D V)).val.map (Formalism.UG.prV (E := D.host.E) u) = 1 := by
  intro D V v u huv g
  have hp : GlobalTheory.AdelicU.proj D.sp.cm.sig V.gram u (locFin V v g : GA D V) = 1 :=
    GlobalTheory.AdelicU.proj_emb_ne D.sp.cm.sig V.gram huv g
  have hm := congrArg (fun y => (GlobalTheory.AdelicU.matHom _ D.sp.cm.sig V.gram y).val) hp
  simp only [GlobalTheory.AdelicU.matHom_proj, map_one, Units.val_one] at hm
  ext i j
  have hij := congrFun (congrFun hm i) j
  have key := prV_swap_snd (F := D.host.F) (E := D.host.E) u
    ((Formalism.L2.Theta.matHom V (locFin V v g : GA D V)).val i j)
  refine key.trans ((congrArg (Algebra.TensorProduct.comm _ _ _) hij).trans ?_)
  by_cases h : i = j
  · subst h
    simp
  · simp [Matrix.one_apply_ne h]

end GlobalTheory.LocFinComp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ForallEventuallyFinLocIff\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

open scoped TensorProduct


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelf =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelf", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ForallEventuallyFinLocIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

open scoped TensorProduct

namespace GlobalTheory.FinLocSelf

theorem prV_swap_sndA {D : D7} (v : HeightOneSpectrum (𝓞 D.host.F)) (x : AF D.host.F ⊗[D.host.F] D.host.E) :
    Formalism.UG.prV (E := D.host.E) v (Formalism.IndefR.Lev.swapAE D
      (Algebra.TensorProduct.map (sndA D.host.F) (AlgHom.id D.host.F D.host.E) x)) =
    Algebra.TensorProduct.comm D.host.F (Fv D.host.F v) D.host.E (compFin D.host.F D.host.E v x) := by
  have h : ((Algebra.TensorProduct.map (AlgHom.id D.host.F D.host.E) (Formalism.UG.evalV D.host.F v)).comp
      ((Algebra.TensorProduct.comm D.host.F (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F) D.host.E).toAlgHom.comp
        (Algebra.TensorProduct.map (sndA D.host.F) (AlgHom.id D.host.F D.host.E)))) =
      (Algebra.TensorProduct.comm D.host.F (Fv D.host.F v) D.host.E).toAlgHom.comp
        (Algebra.TensorProduct.map (evFin D.host.F v) (AlgHom.id D.host.F D.host.E)) :=
    Algebra.TensorProduct.ext' fun _ _ => rfl
  exact DFunLike.congr_fun h x

theorem finE_locFin_map_prV {D : D7} (V : HSp D) (v : HeightOneSpectrum (𝓞 D.host.F)) (g : Gv V v) :
    (Formalism.IndefR.Lev.finE V (locFin V v g : GA D V)).val.map (Formalism.UG.prV (E := D.host.E) v) =
      (GlobalTheory.AdelicU.matHom _ D.sp.cm.sig V.gram g).val.map
        (Algebra.TensorProduct.comm D.host.F (Fv D.host.F v) D.host.E) := by
  conv_rhs => rw [← proj_emb_self D.sp.cm.sig V.gram v g]
  rw [matHom_proj]
  ext i j
  exact prV_swap_sndA v _

end GlobalTheory.FinLocSelf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelf =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelfStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelfStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ForallEventuallyFinLocIff\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

open scoped TensorProduct


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelfStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMem", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.HermitianSpaceBaseLatticeEqFrameLattice\npublic import Formalism.LocalToGlobal.HermitianColumns.InLocalDiscriminantKernel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsHilbertSchmidtOfFiniteDimensional\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MeasurePreservingRmulQuotMeas\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

open scoped TensorProduct

namespace GlobalTheory.TwistLat

theorem comm_symm_mem_intLoc {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (v : HeightOneSpectrum (𝓞 F)) {a : E ⊗[F] Fv F v} (ha : a ∈ Formalism.BasicNotions.intV E v) :
    (Algebra.TensorProduct.comm F (Fv F v) E).symm a ∈ GlobalTheory.AdelicU.intLoc F E v := by
  have hle : Formalism.BasicNotions.intV E v ≤ (GlobalTheory.AdelicU.intLoc F E v).comap
      ((Algebra.TensorProduct.comm F (Fv F v) E).symm : E ⊗[F] Fv F v →+* Fv F v ⊗[F] E) := by
    unfold Formalism.BasicNotions.intV Formalism.UG.tensInt
    rw [Subring.closure_le]
    rintro z (⟨⟨e, he⟩, rfl⟩ | ⟨⟨b, hb⟩, rfl⟩)
    · obtain ⟨x, rfl⟩ := RingHom.mem_range.1 (show e ∈ (algebraMap (𝓞 E) E).range from he)
      simp only [SetLike.mem_coe, Subring.mem_comap, RingHom.coe_coe]
      simpa using GlobalTheory.AdelicU.tmul_mem_intLoc (E := E) (v := v) (one_mem _) x
    · simp only [SetLike.mem_coe, Subring.mem_comap, RingHom.coe_coe]
      simpa using GlobalTheory.AdelicU.tmul_mem_intLoc (E := E) (v := v) (a := b) hb 1
  exact hle ha

theorem mem_latLoc_iff_comm_mem_locL : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ} (L : Submodule (𝓞 E) (Fin n → E)) (v : HeightOneSpectrum (𝓞 F)) (y : Fin n → Fv F v ⊗[F] E), y ∈ GlobalTheory.AdelicU.latLoc F L v ↔ (fun i => Algebra.TensorProduct.comm F (Fv F v) E (y i)) ∈ Formalism.L2.Herm.locL v L := by
  intro F E _ _ _ _ _ n L v y
  constructor
  · intro hy
    refine GlobalTheory.AdelicU.latLoc_induction
      (p := fun y => (fun i => Algebra.TensorProduct.comm F (Fv F v) E (y i)) ∈ Formalism.L2.Herm.locL v L)
      (fun a ha x hx => ?_) ?_ (fun y z hy hz => ?_) (fun y hy => ?_) hy
    · have hmem : ((1 : E) ⊗ₜ[F] a) ∈ Formalism.BasicNotions.intV E v :=
        Subring.subset_closure (Or.inr ⟨⟨a, ha⟩, rfl⟩)
      have h2 := (Formalism.L2.Herm.locL v L).smul_mem ⟨_, hmem⟩
        (Submodule.subset_span ⟨x, hx, rfl⟩ : (fun i => Formalism.UG.inclE (F := F) (Fv F v) (x i)) ∈ Formalism.L2.Herm.locL v L)
      convert h2 using 1
      funext i
      simp [Formalism.UG.inclE, Subring.smul_def]
    · convert (Formalism.L2.Herm.locL v L).zero_mem using 1
      funext i; simp
    · convert (Formalism.L2.Herm.locL v L).add_mem hy hz using 1
      funext i; simp
    · convert (Formalism.L2.Herm.locL v L).neg_mem hy using 1
      funext i; simp
  · intro hy
    have key : ∀ z : Fin n → E ⊗[F] Fv F v, z ∈ Formalism.L2.Herm.locL v L →
        (fun i => (Algebra.TensorProduct.comm F (Fv F v) E).symm (z i)) ∈ GlobalTheory.AdelicU.latLoc F L v := by
      intro z hz
      unfold Formalism.L2.Herm.locL Formalism.UG.latS at hz
      induction hz using Submodule.span_induction with
      | mem z hz =>
        obtain ⟨x, hx, rfl⟩ := hz
        convert GlobalTheory.AdelicU.tmul_mem_latLoc (F := F) (v := v) (one_mem _) hx using 1
        funext i; simp [Formalism.UG.inclE]
      | zero =>
        convert (GlobalTheory.AdelicU.latLoc F L v).zero_mem using 1
        funext i; simp
      | add z w _ _ hz hw =>
        convert (GlobalTheory.AdelicU.latLoc F L v).add_mem hz hw using 1
        funext i; simp
      | smul c z _ hz =>
        have h2 := (GlobalTheory.AdelicU.latLoc F L v).smul_mem ⟨_, comm_symm_mem_intLoc v c.2⟩ hz
        convert h2 using 1
        funext i; simp [Subring.smul_def]
    convert key _ hy using 1
    funext i; simp

end GlobalTheory.TwistLat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMemStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMemStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.HermitianSpaceBaseLatticeEqFrameLattice\npublic import Formalism.LocalToGlobal.HermitianColumns.InLocalDiscriminantKernel\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

open scoped TensorProduct


theorem _root_.GlobalTheory.T.mem_localLatticeCompletion_iff_comm_mem : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ} (L : Submodule (𝓞 E) (Fin n → E)) (v : HeightOneSpectrum (𝓞 F)) (y : Fin n → Fv F v ⊗[F] E), y ∈ GlobalTheory.AdelicU.latLoc F L v ↔ (fun i => Algebra.TensorProduct.comm F (Fv F v) E (y i)) ∈ Formalism.L2.Herm.locL v L := by
  first | exact @GlobalTheory.TwistLat.mem_latLoc_iff_comm_mem_locL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMemStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponents =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponents", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IsometryCarriesCharacter\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ForallEventuallyFinLocIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCompatFiniteIsometry\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsLocalUnitaryGroupIsoConjIsometryStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsUnitaryPart\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteAdelicUnitaryPointExtLocalComponentsStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentNeStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FinitePartLocalToFiniteAdelicComponentSelfStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemLocalLatticeCompletionIffCommMemStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

noncomputable section

namespace GlobalTheory.TwistPC

open scoped TensorProduct

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem hform_eq {A : Type} [CommRing A] (τ : A →+* A) {n : ℕ} (J : Matrix (Fin n) (Fin n) A) (x y : Fin n → A) :
    Formalism.UG.hform τ J x y = (τ ∘ x) ⬝ᵥ (J.mulVec y) := by
  simp [Formalism.UG.hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]

theorem hform_mulVec {A : Type} [CommRing A] (τ : A →+* A) {m n : ℕ} (J' : Matrix (Fin m) (Fin m) A)
    (M : Matrix (Fin m) (Fin n) A) (x y : Fin n → A) :
    Formalism.UG.hform τ J' (M.mulVec x) (M.mulVec y) = Formalism.UG.hform τ (Formalism.UG.cT τ M * J' * M) x y := by
  rw [hform_eq, hform_eq]
  have e : τ ∘ M.mulVec x = (M.map τ).mulVec (τ ∘ x) := by
    funext i; exact RingHom.map_mulVec τ M x i
  rw [e, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, Formalism.UG.cT, Matrix.mulVec_transpose,
    dotProduct_comm, Matrix.dotProduct_mulVec, dotProduct_comm]

theorem comm_comm' (v : HeightOneSpectrum (𝓞 F)) (x : E ⊗[F] Fv F v) :
    Algebra.TensorProduct.comm F (Fv F v) E (Algebra.TensorProduct.comm F E (Fv F v) x) = x := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem comm_comm'' (v : HeightOneSpectrum (𝓞 F)) (x : Fv F v ⊗[F] E) :
    Algebra.TensorProduct.comm F E (Fv F v) (Algebra.TensorProduct.comm F (Fv F v) E x) = x := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem comm_sigR' (σ : E →ₐ[F] E) (v : HeightOneSpectrum (𝓞 F)) (x : E ⊗[F] Fv F v) :
    Algebra.TensorProduct.comm F E (Fv F v) (Formalism.UG.sigR σ (Fv F v) x) =
      Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (Fv F v) σ (Algebra.TensorProduct.comm F E (Fv F v) x) := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp [Formalism.UG.sigR, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem locData (σ : E →ₐ[F] E) {r r' : ℕ} (J : Matrix (Fin r) (Fin r) E) (J' : Matrix (Fin r') (Fin r') E)
    (Λ : Submodule (𝓞 E) (Fin r → E)) (Λ' : Submodule (𝓞 E) (Fin r' → E)) (v : HeightOneSpectrum (𝓞 F))
    (jv : Matrix (Fin r') (Fin r) (E ⊗[F] Fv F v)) (jv' : Matrix (Fin r) (Fin r') (E ⊗[F] Fv F v))
    (k1 : jv * jv' = 1) (k2 : jv' * jv = 1)
    (hiso : Formalism.UG.cT (Formalism.UG.sigR σ (Fv F v)) jv * J'.map (Formalism.UG.inclE (F := F) (Fv F v)) * jv =
      J.map (Formalism.UG.inclE (F := F) (Fv F v)))
    (hlat : jv.mulVec '' (Formalism.L2.Herm.locL v Λ : Set (Fin r → E ⊗[F] Fv F v)) =
      (Formalism.L2.Herm.locL v Λ' : Set (Fin r' → E ⊗[F] Fv F v))) :
    ∃ jl : GLoc σ J v ≃ₜ* GLoc σ J' v, IsLatticeConj Λ Λ' jl ∧ ∀ g,
      (GlobalTheory.AdelicU.matHom _ σ J' (jl g)).val =
        jv.map (Algebra.TensorProduct.comm F E (Fv F v)) * (GlobalTheory.AdelicU.matHom _ σ J g).val *
          jv'.map (Algebra.TensorProduct.comm F E (Fv F v)) := by
  obtain ⟨cm, hcm⟩ : ∃ cm : E ⊗[F] Fv F v →+* Fv F v ⊗[F] E,
      cm = (Algebra.TensorProduct.comm F E (Fv F v)).toRingEquiv.toRingHom := ⟨_, rfl⟩
  obtain ⟨cb, hcb⟩ : ∃ cb : Fv F v ⊗[F] E →+* E ⊗[F] Fv F v,
      cb = (Algebra.TensorProduct.comm F (Fv F v) E).toRingEquiv.toRingHom := ⟨_, rfl⟩
  have ecm : ∀ {m k : ℕ} (X : Matrix (Fin m) (Fin k) (E ⊗[F] Fv F v)),
      X.map (Algebra.TensorProduct.comm F E (Fv F v)) = X.map cm := by
    intro m k X; subst hcm; rfl
  have bc1 : ∀ x, cb (cm x) = x := fun x => by subst hcm hcb; exact comm_comm' v x
  have bc2 : ∀ x, cm (cb x) = x := fun x => by subst hcm hcb; exact comm_comm'' v x
  have bcm : ∀ {m k : ℕ} (X : Matrix (Fin m) (Fin k) (E ⊗[F] Fv F v)), (X.map cm).map cb = X := by
    intro m k X; ext i l; exact bc1 _
  simp only [ecm]
  have hab : jv.map cm * jv'.map cm = 1 := by rw [← Matrix.map_mul, k1, Matrix.map_one _ (map_zero _) (map_one _)]
  have hba : jv'.map cm * jv.map cm = 1 := by rw [← Matrix.map_mul, k2, Matrix.map_one _ (map_zero _) (map_one _)]
  have hJ : Formalism.UG.cT (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (Fv F v) σ) (jv.map cm) * JR (F := F) (Fv F v) J' * jv.map cm =
      JR (F := F) (Fv F v) J := by
    have e := congrArg (fun X => X.map cm) hiso
    simp only [Matrix.map_mul] at e
    convert e using 3
    · ext i k; subst hcm; exact (comm_sigR' σ v _).symm
    · ext i k; subst hcm; simp [JR, Formalism.UG.inclE, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.inclR]
    · ext i k; subst hcm; simp [JR, Formalism.UG.inclE, Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.inclR]
  obtain ⟨φ, hφ⟩ := _root_.GlobalTheory.LocIsoConj.exists_locIso σ J J' v _ _ hab hba hJ
  refine ⟨φ, ?_, hφ⟩
  have injv : Function.Injective jv.mulVec := fun x y hxy => by
    have := congrArg jv'.mulVec hxy
    simpa [Matrix.mulVec_mulVec, k2] using this
  have hA : (jv.map cm).map cb = jv := bcm jv
  refine ⟨LinearEquiv.ofLinear (Matrix.mulVecLin (jv.map cm)) (Matrix.mulVecLin (jv'.map cm))
    (LinearMap.ext fun x => by simp [Matrix.mulVec_mulVec, hab])
    (LinearMap.ext fun x => by simp [Matrix.mulVec_mulVec, hba]), fun y y' => ?_, fun y => ?_, fun g y => ?_⟩
  · show GlobalTheory.AdelicU.hLin σ J' (Fv F v) ((jv.map cm).mulVec y) ((jv.map cm).mulVec y') = GlobalTheory.AdelicU.hLin σ J (Fv F v) y y'
    unfold GlobalTheory.AdelicU.hLin hR
    rw [hform_mulVec, hJ]
  · show (jv.map cm).mulVec y ∈ GlobalTheory.AdelicU.latLoc F Λ' v ↔ y ∈ GlobalTheory.AdelicU.latLoc F Λ v
    have ecb : ∀ {m : ℕ} (z : Fin m → Fv F v ⊗[F] E),
        (fun i => Algebra.TensorProduct.comm F (Fv F v) E (z i)) = cb ∘ z := by
      intro m z; subst hcb; rfl
    rw [GlobalTheory.T.mem_localLatticeCompletion_iff_comm_mem, GlobalTheory.T.mem_localLatticeCompletion_iff_comm_mem, ecb, ecb]
    have e : cb ∘ (jv.map cm).mulVec y = jv.mulVec (cb ∘ y) := by
      funext i
      rw [Function.comp_apply, RingHom.map_mulVec, hA]
    rw [e]
    have := injv.mem_set_image (s := (Formalism.L2.Herm.locL v Λ : Set (Fin r → E ⊗[F] Fv F v))) (a := cb ∘ y)
    rw [hlat] at this
    exact this
  · show (GlobalTheory.AdelicU.matHom _ σ J' (φ g)).val.mulVec ((jv.map cm).mulVec y) =
      (jv.map cm).mulVec ((GlobalTheory.AdelicU.matHom _ σ J g).val.mulVec y)
    rw [hφ, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, Matrix.mul_assoc, hba, Matrix.mul_one]

theorem assemble (v : HeightOneSpectrum (𝓞 F)) {r r' : ℕ} (jv : Matrix (Fin r') (Fin r) (E ⊗[F] Fv F v))
    (jv' : Matrix (Fin r) (Fin r') (E ⊗[F] Fv F v)) (M : Matrix (Fin r) (Fin r) (Fv F v ⊗[F] E)) :
    jv * M.map (Algebra.TensorProduct.comm F (Fv F v) E) * jv' =
      (jv.map (Algebra.TensorProduct.comm F E (Fv F v)) * M * jv'.map (Algebra.TensorProduct.comm F E (Fv F v))).map
        (Algebra.TensorProduct.comm F (Fv F v) E) := by
  have e : ∀ {m k : ℕ} (X : Matrix (Fin m) (Fin k) (E ⊗[F] Fv F v)),
      (X.map (Algebra.TensorProduct.comm F E (Fv F v))).map (Algebra.TensorProduct.comm F (Fv F v) E) = X := by
    intro m k X; ext i l; exact comm_comm' v _
  rw [Matrix.map_mul, Matrix.map_mul, e, e]

end Gen



theorem isom_locComponents : ∀ (D : D7) (V V' : HSp D) (j : Matrix (Fin V'.rank) (Fin V.rank) (Formalism.IndefR.Lev.EAf D)) (Φ₀ : GfC V ≃ₜ* GfC V'), GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsLatIsom V V' (frameLat V) (frameLat V') j → GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsConjBy V V' j Φ₀ → ∃ jl : ∀ v, GLoc D.sp.cm.sig V.gram v ≃ₜ* GLoc D.sp.cm.sig V'.gram v, (∀ v, IsLatticeConj (frameLat V) (frameLat V') (jl v)) ∧ ∀ v g, Φ₀ (locFin V v g) = locFin V' v (jl v g) := by
  intro D V V' j Φ₀ hj hΦ
  obtain ⟨j', h1, h2⟩ := GlobalTheory.FinAdIdent.exists_inv hj.1.1
  have key := fun v => locData D.sp.cm.sig V.gram V'.gram (frameLat V) (frameLat V') v
    (j.map (Formalism.UG.prV (E := D.host.E) v)) (j'.map (Formalism.UG.prV (E := D.host.E) v))
    (GlobalTheory.HeckeTrans.map_mul_one _ h1) (GlobalTheory.HeckeTrans.map_mul_one _ h2)
    (GlobalTheory.FinAdIdent.isLocLatIsom_map hj v).1.2 (GlobalTheory.FinAdIdent.isLocLatIsom_map hj v).2
  choose jl hjl hjm using key
  refine ⟨jl, hjl, fun v g => ?_⟩
  apply _root_.GlobalTheory.TrFinExt.gfc_ext
  intro u
  have hc := hΦ (locFin V v g)
  have e1 := congrArg (fun X => GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.mmul X j') hc
  simp only [GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.mmul, Matrix.mul_assoc, h1, Matrix.mul_one] at e1
  rw [e1, Matrix.map_mul, Matrix.map_mul]
  by_cases hu : u = v
  · subst hu
    rw [_root_.GlobalTheory.FinLocSelf.finE_locFin_map_prV V u g, _root_.GlobalTheory.FinLocSelf.finE_locFin_map_prV V' u (jl u g), hjm]
    rw [← Matrix.mul_assoc]
    exact assemble (F := D.host.F) (E := D.host.E) u _ _ _
  · rw [_root_.GlobalTheory.LocFinComp.finE_locFin_map_prV_ne V hu, _root_.GlobalTheory.LocFinComp.finE_locFin_map_prV_ne V' hu, Matrix.one_mul, ← Matrix.map_mul, h1,
      Matrix.map_one _ (map_zero _) (map_one _)]

end GlobalTheory.TwistPC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponents =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponentsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponentsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IsometryCarriesCharacter\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ForallEventuallyFinLocIff\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponents\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

theorem _root_.GlobalTheory.T.adelicLatticeIsometry_eq_prod_localComponents : ∀ (D : D7) (V V' : HSp D) (j : Matrix (Fin V'.rank) (Fin V.rank) (Formalism.IndefR.Lev.EAf D)) (Φ₀ : GfC V ≃ₜ* GfC V'), GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsLatIsom V V' (frameLat V) (frameLat V') j → GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsConjBy V V' j Φ₀ → ∃ jl : ∀ v, GLoc D.sp.cm.sig V.gram v ≃ₜ* GLoc D.sp.cm.sig V'.gram v, (∀ v, IsLatticeConj (frameLat V) (frameLat V') (jl v)) ∧ ∀ v g, Φ₀ (locFin V v g) = locFin V' v (jl v g) := by
  first | exact @GlobalTheory.TwistPC.isom_locComponents
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponentsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometry =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometry", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ForallEventuallyFinLocIff\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicIsometryConjDifferByInnerAutomorphismStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdelicLatticeIsometryEqProdLocalComponentsStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsBaseFrameSelfDualHermitianFrameLatticeStatement\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsUnitaryPart\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAdelicUnitaryGroupIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IsometryCarriesCharacter\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

noncomputable section

namespace GlobalTheory.FinIsoLocal

theorem bij_of_frame {A : Type} [CommRing A] {m n : ℕ} (h : n = m) (j : Matrix (Fin m) (Fin n) A) (β : GL (Fin n) A)
    (M : GL (Fin m) A) (hj : j * β.val = M.val.submatrix id (Fin.cast h)) : Function.Bijective j.mulVec := by
  subst h
  have hj' : j = M.val * (β⁻¹).val := by
    have e : M.val.submatrix id (Fin.cast rfl) = M.val := by ext a b; rfl
    rw [e] at hj
    rw [← hj, Matrix.mul_assoc, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.mul_one]
  refine GlobalTheory.FinAdIdent.bij_of_inv (j' := β.val * (M⁻¹).val) ?_ ?_
  · rw [hj', Matrix.mul_assoc, ← Matrix.mul_assoc (β⁻¹).val, ← Units.val_mul, inv_mul_cancel, Units.val_one,
      Matrix.one_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one]
  · rw [hj', Matrix.mul_assoc, ← Matrix.mul_assoc (M⁻¹).val, ← Units.val_mul, inv_mul_cancel, Units.val_one,
      Matrix.one_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one]

end GlobalTheory.FinIsoLocal

theorem GlobalTheory.FinIsoLocal.exists_local_inner : ∀ {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), Given R F → ∀ (i : Fin D.R.m) (j : Matrix (Fin (Wc D i).rank) (Fin (Yc D 0).rank) (Formalism.IndefR.Lev.EAf D)) (Φ : GfC (Yc D 0) ≃ₜ* GfC (Wc D i)), GlobalTheory.CuspMult.IsFinIso (Yc D 0) (Wc D i) (R.βY 0) (R.βW i) R.Pg j Φ → ∃ (jl : ∀ v, GLoc D.sp.cm.sig (Yc D 0).gram v ≃ₜ* GLoc D.sp.cm.sig (Wc D i).gram v) (Φ₀ : GfC (Yc D 0) ≃ₜ* GfC (Wc D i)) (b : GfC (Yc D 0)), (∀ v, IsLatticeConj (frameLat (Yc D 0)) (frameLat (Wc D i)) (jl v)) ∧ (∀ v g, Φ₀ (locFin (Yc D 0) v g) = locFin (Wc D i) v (jl v g)) ∧ ∀ g, Φ g = Φ₀ (b * g * b⁻¹) := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F _ i j Φ hΦ
  obtain ⟨h, u, hu, -⟩ := hΦ.frame
  have hbij := GlobalTheory.FinIsoLocal.bij_of_frame h j (R.βY 0) (R.βW i * intGL D.host.F D.host.E (Wc D i).rank u) hu
  have hIs : GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsIsom (Yc D 0) (Wc D i) (Formalism.L2.Herm.Af D.host.F) j := ⟨hbij, hΦ.isom⟩
  have hC : GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.IsConjBy (Yc D 0) (Wc D i) j Φ := hΦ.conj
  obtain ⟨β₀, hβ₀, -⟩ := GlobalTheory.T.exists_baseFrame_selfDual_hermitianFrameLattice D (Yc D 0)
  obtain ⟨β₀', hβ₀', -⟩ := GlobalTheory.T.exists_baseFrame_selfDual_hermitianFrameLattice D (Wc D i)
  have hT : GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter.OnePlaceOver (D := D) (∅ : Set (Formalism.L2.DIV.Pl D.host.E)) := by
    intro PP hPP; exact absurd hPP (Set.notMem_empty PP)
  obtain ⟨j₀, hL, -⟩ := GlobalTheory.FinAdIdent.globalIsometry D (Yc D 0) (Wc D i) h (frameLat (Yc D 0)) (frameLat (Wc D i))
    β₀ β₀' 1 1 hβ₀ hβ₀' ∅ hT
  obtain ⟨j₀', h1₀, h2₀⟩ := GlobalTheory.FinAdIdent.exists_inv hL.1.1
  obtain ⟨Φ₀, hC₀⟩ := GlobalTheory.FinIsoGrp.exists_finIso (Yc D 0) (Wc D i) j₀ j₀' h1₀ h2₀ hL.1.2
  obtain ⟨jl, h1, h2⟩ := GlobalTheory.T.adelicLatticeIsometry_eq_prod_localComponents D (Yc D 0) (Wc D i) j₀ Φ₀ hL hC₀
  obtain ⟨b, hb⟩ := GlobalTheory.T.adelicIsometryConj_differ_by_innerAutomorphism D (Yc D 0) (Wc D i) j j₀ Φ Φ₀ hIs hL.1 hC hC₀
  exact ⟨jl, Φ₀, b, h1, h2, hb⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometry =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometryStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometryStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.EllipticPartTestData\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ForallEventuallyFinLocIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometry\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasTypeVec\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField IsDedekindDomain
open GlobalTheory.AdelicU GlobalTheory.OpTrace GlobalTheory.Orb GlobalTheory.AutomorphicL2Unitary GlobalTheory.AutMult Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult
open GlobalTheory.IndefiniteRowSideFullHecke.PlusPolynomialRoots (IsTestData PPol Tor Phi PhiOK PhiReal ellKernel Gap NoFixed IsLatticeConj GeomExpansion EllipticPart TraceEq)
open GlobalTheory.PRep (IsAdmissible)
open GlobalTheory.TrMult
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Datum Formalism.IndefR.Cx
open GlobalTheory.LiftRows

theorem _root_.GlobalTheory.T.exists_localIsometries_innerAut_adelicFrameIsometry : ∀ {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), Given R F → ∀ (i : Fin D.R.m) (j : Matrix (Fin (Wc D i).rank) (Fin (Yc D 0).rank) (Formalism.IndefR.Lev.EAf D)) (Φ : GfC (Yc D 0) ≃ₜ* GfC (Wc D i)), GlobalTheory.CuspMult.IsFinIso (Yc D 0) (Wc D i) (R.βY 0) (R.βW i) R.Pg j Φ → ∃ (jl : ∀ v, GLoc D.sp.cm.sig (Yc D 0).gram v ≃ₜ* GLoc D.sp.cm.sig (Wc D i).gram v) (Φ₀ : GfC (Yc D 0) ≃ₜ* GfC (Wc D i)) (b : GfC (Yc D 0)), (∀ v, IsLatticeConj (frameLat (Yc D 0)) (frameLat (Wc D i)) (jl v)) ∧ (∀ v g, Φ₀ (locFin (Yc D 0) v g) = locFin (Wc D i) v (jl v g)) ∧ ∀ g, Φ g = Φ₀ (b * g * b⁻¹) := by
  first | exact @GlobalTheory.FinIsoLocal.exists_local_inner
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalIsometriesInnerAutAdelicFrameIsometryStatement =====
