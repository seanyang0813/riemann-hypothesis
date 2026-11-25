module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasShape
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIdempotentPlaceChartFiniteAdeles
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSupportedUnitaryAdjointAction
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParahoricLevelLiftsExist
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.InfPartOfSplitIdem
public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Mathlib.LinearAlgebra.Matrix.SchurComplement
public import Formalism.LocalToGlobal.IndefiniteReal.DatumVec
public import Mathlib.Data.Matrix.ColumnRowPartitioned
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzVanishOffTranslates
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameAdjointChartBijectiveConjugateHalfStatement
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeisOAdd
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.LocalToGlobal.IndefiniteReal.PartsOrth
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNsmulIntMemLatO
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMapMulInv
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.GoodIdempotentBadPlaces
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsInvariantForm
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitarySupportedAtSplitPlaceLift, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinsumCharDetFixHyperplaneEqZero, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslates, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslatesStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSupp, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSuppStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemSpanTranslatesConjugateHalfTwistPlace, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemSpanTranslatesConjugateHalfTwistPlaceStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitarySupportedAtSplitPlaceLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitarySupportedAtSplitPlaceLift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasShape\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParahoricLevelLiftsExist\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.InfPartOfSplitIdem\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeisOAdd\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.DownLift.SplitCoef

namespace GlobalTheory.DownLift.SplitCoef

open GlobalTheory.ParahoricLift GlobalTheory.LevSplit Formalism.L2.NTheta

theorem lift_map_eq_of_smul {A B : Type} [CommRing A] [CommRing B] {m n : ℕ} (φ : A →+* B) (p : A) (hp : φ p = 1)
    (M M' : Matrix (Fin m) (Fin n) A) (h : p • M = p • M') : M.map φ = M'.map φ := by
  ext i j
  have := congrArg φ (congrFun (congrFun h i) j)
  simpa only [Matrix.smul_apply, smul_eq_mul, map_mul, hp, one_mul, Matrix.map_apply] using this

theorem lift_smul_eq_of_map {A B : Type} [CommRing A] [CommRing B] {m n : ℕ} (φ : A →+* B) (p : A)
    (hker : ∀ z, φ z = 0 ↔ p * z = 0) (M M' : Matrix (Fin m) (Fin n) A) (h : M.map φ = M'.map φ) : p • M = p • M' := by
  ext i j
  have h2 := congrFun (congrFun h i) j
  simp only [Matrix.map_apply] at h2
  have h3 : φ (M i j - M' i j) = 0 := by rw [map_sub, h2, sub_self]
  rw [hker, mul_sub, sub_eq_zero] at h3
  simpa only [Matrix.smul_apply, smul_eq_mul] using h3

theorem lift_smul_conj {A : Type} [CommRing A] {n : ℕ} (β : GL (Fin n) A) (p : A) (M : Matrix (Fin n) (Fin n) A) :
    p • (β.1 * M * (β⁻¹).1) = β.1 * (p • M) * (β⁻¹).1 := by
  rw [Matrix.mul_smul, Matrix.smul_mul]

theorem lift_smul_conj_inv {A : Type} [CommRing A] {n : ℕ} (β : GL (Fin n) A) (p : A) (M : Matrix (Fin n) (Fin n) A) :
    p • ((β⁻¹).1 * M * β.1) = (β⁻¹).1 * (p • M) * β.1 := by
  rw [Matrix.mul_smul, Matrix.smul_mul]

theorem lift_conj_mul_smul {A : Type} [CommRing A] {n : ℕ} (β : GL (Fin n) A) (p : A) (M M' : Matrix (Fin n) (Fin n) A)
    (h : p • (M * M') = p • (1 : Matrix (Fin n) (Fin n) A)) :
    p • ((β.1 * M * (β⁻¹).1) * (β.1 * M' * (β⁻¹).1)) = p • (1 : Matrix (Fin n) (Fin n) A) := by
  have e3 : (β.1 * M * (β⁻¹).1) * (β.1 * M' * (β⁻¹).1) = β.1 * (M * M') * (β⁻¹).1 := by
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc (β⁻¹).1 β.1, Units.inv_mul, Matrix.one_mul]
  rw [e3, lift_smul_conj, h, Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_one, Units.mul_inv]

theorem lift_conj_part {A : Type} [CommRing A] {n : ℕ} (β : GL (Fin n) A) (p : A) (g M : Matrix (Fin n) (Fin n) A)
    (h : p • g = p • (β.1 * M * (β⁻¹).1)) : p • ((β⁻¹).1 * g * β.1) = p • M := by
  rw [lift_smul_conj_inv, h, lift_smul_conj]
  simp only [Matrix.mul_assoc]
  rw [Units.inv_mul, Matrix.mul_one, ← Matrix.mul_assoc, Units.inv_mul, Matrix.one_mul]

theorem lift_chart_idem {D : D7} {e : AE D} {v : HeightOneSpectrum (𝓞 D.host.F)} {φ : Formalism.IndefR.Lev.EAf D →+* Fv D.host.F v}
    (hker : ∀ z, φ z = 0 ↔ toEAf D e * z = 0) (he : toEAf D e * toEAf D e = toEAf D e) : φ (toEAf D e) = 1 := by
  have h0 : φ (1 - toEAf D e) = 0 := by
    rw [hker, mul_sub, mul_one, he, sub_self]
  rw [map_sub, map_one, sub_eq_zero] at h0
  exact h0.symm

theorem lift_chart_int {D : D7} {e : AE D} {v : HeightOneSpectrum (𝓞 D.host.F)} {φ : Formalism.IndefR.Lev.EAf D →+* Fv D.host.F v}
    (hsurj : Function.Surjective φ) (h1 : φ (toEAf D e) = 1)
    (hint : ∀ z, toEAf D e * z ∈ Formalism.L2.Herm.intAf D.host.F D.host.E ↔ φ z ∈ v.adicCompletionIntegers D.host.F)
    (o : GlobalTheory.SplitHecke.Ov D v) : ∃ s : Formalism.L2.Herm.intAf D.host.F D.host.E, φ (s : Formalism.IndefR.Lev.EAf D) = (o : Fv D.host.F v) := by
  obtain ⟨z, hz⟩ := hsurj (o : Fv D.host.F v)
  refine ⟨⟨toEAf D e * z, (hint z).2 (hz ▸ o.2)⟩, ?_⟩
  show φ (toEAf D e * z) = _
  rw [map_mul, h1, one_mul, hz]

theorem lift_frG_one {D : D7} (T : HSp D) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D)) :
    Formalism.IndefR.Fin.LevelGroupLemmas.Lat.frG T βT 1 = 1 := by
  unfold Formalism.IndefR.Fin.LevelGroupLemmas.Lat.frG
  rw [map_one, mul_one, inv_mul_cancel]

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}

theorem mem_St_of_part_inv (σ : E →ₐ[F] E) (J : Matrix (Fin n) (Fin n) E) (Λ : Submodule (𝓞 E) (Fin n → E))
    (β : GL (Fin n) (E ⊗[F] Formalism.L2.Herm.Af F)) (hβ : IsFrame β Λ) (hΛ : HatSelfDual σ J Λ)
    (p : Formalism.L2.Herm.intAf F E) (hq : Formalism.UG.sigR σ (Formalism.L2.Herm.Af F) p ∈ Formalism.L2.Herm.intAf F E)
    (Y Y' : Matrix (Fin n) (Fin n) (Formalism.L2.Herm.intAf F E))
    (hmm : (p : E ⊗[F] Formalism.L2.Herm.Af F) • ((β.1 * Y.map (Formalism.L2.Herm.intAf F E).subtype * (β⁻¹).1) *
      (β.1 * Y'.map (Formalism.L2.Herm.intAf F E).subtype * (β⁻¹).1)) = (p : E ⊗[F] Formalism.L2.Herm.Af F) • 1)
    (g : GL (Fin n) (E ⊗[F] Formalism.L2.Herm.Af F)) (hg : g ∈ Formalism.UG.UPts σ J (Formalism.L2.Herm.Af F))
    (f : E ⊗[F] Formalism.L2.Herm.Af F) (hf : f = p + Formalism.UG.sigR σ (Formalism.L2.Herm.Af F) p) (hs : f • (g.1 - 1) = g.1 - 1)
    (hY : (p : E ⊗[F] Formalism.L2.Herm.Af F) • g.1 =
      (p : E ⊗[F] Formalism.L2.Herm.Af F) • (β.1 * Y.map (Formalism.L2.Herm.intAf F E).subtype * (β⁻¹).1)) : g ∈ St β := by
  subst hf
  exact (mem_St_iff β Λ hβ g).2 (stab_of_part _ _ _ hΛ p.2 hq g hg hs _ _ (frame_mulVec β Λ hβ Y)
    (frame_mulVec β Λ hβ Y') hmm hY)

end Gen



theorem exists_supp_lift_adj : ∀ (D : D7) (S T : HSp D) (βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D)) (e : AE D) (PP : Pl D.host.E) (v : HeightOneSpectrum (𝓞 D.host.F)) (φ : Formalism.IndefR.Lev.EAf D →+* Fv D.host.F v) (ι : kP PP ≃+* IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v)), Formalism.L2.NTheta.IsIdemAt e PP → LevChart e PP v φ ι → ∀ (Λ : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)) (N : ℕ), IsBaseFrame S βS Λ N → ∀ h : GL (Fin S.rank) (GlobalTheory.SplitHecke.Ov D v), ∃ κ : GA D S, SuppAt e S κ ∧ κ ∈ GfC S ∧ finE S κ ∈ St βS ∧ (redFn βS PP (finE S κ)).val.map ι = h.val.map (IsLocalRing.residue (GlobalTheory.SplitHecke.Ov D v)) ∧ (∀ PP', PP' ≠ PP → ¬ Formalism.IndefR.Lev.IsConjPl PP PP' → redFn βS PP' (finE S κ) = 1) ∧ ∀ x : WO S T, rdAdj S T βS βT φ (actO S T κ 1 x) = h.val.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) * rdAdj S T βS βT φ x := by
  intro D S T βS βT e PP v φ ι he hL Λ N hB h
  obtain ⟨hsurj, hker, hint, hres⟩ := hL
  have := PP.isPrime
  obtain ⟨p, hp, hpp, hres1⟩ := exists_idem_int he
  have hpe : toEAf D e = (p : Formalism.IndefR.Lev.EAf D) := hp.symm
  have hpp' : toEAf D e * toEAf D e = toEAf D e := by rw [hpe]; exact congrArg Subtype.val hpp
  have hp1 : φ (p : Formalism.IndefR.Lev.EAf D) = 1 := hpe ▸ lift_chart_idem hker hpp'
  have hker' : ∀ z, φ z = 0 ↔ (p : Formalism.IndefR.Lev.EAf D) * z = 0 := fun z => hpe ▸ hker z
  choose lf hlf using lift_chart_int hsurj (hpe ▸ hp1) hint
  set Y : Matrix (Fin S.rank) (Fin S.rank) (Formalism.L2.Herm.intAf D.host.F D.host.E) := h.val.map lf with hYdef
  set Y' : Matrix (Fin S.rank) (Fin S.rank) (Formalism.L2.Herm.intAf D.host.F D.host.E) := (h⁻¹).val.map lf with hY'def
  have hY : (Y.map (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype).map φ =
      h.val.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) := Matrix.ext fun i j => hlf _
  have hY' : (Y'.map (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype).map φ =
      (h⁻¹).val.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) := Matrix.ext fun i j => hlf _
  have hYY : (p : Formalism.IndefR.Lev.EAf D) • (Y.map (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype *
      Y'.map (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype) = (p : Formalism.IndefR.Lev.EAf D) • 1 := by
    refine lift_smul_eq_of_map φ _ hker' _ _ ?_
    rw [Matrix.map_mul, hY, hY', ← Matrix.map_mul, Units.mul_inv, Matrix.map_one _ (map_zero _) (map_one _),
      Matrix.map_one _ (map_zero _) (map_one _)]
  have hmm := lift_conj_mul_smul βS _ _ _ hYY
  have hmm' := hmm
  rw [hp] at hmm'
  obtain ⟨κ, hs, hκ⟩ := split_lift_fin S he.1 _ _ hmm'
  have hP : IsPrimeIdem PP e (e + cA D e) := Or.inl ⟨he, rfl⟩
  obtain ⟨-, -, T3, -⟩ := GlobalTheory.IdemSupport.supported_group_and_prime_idempotents S
  have hsf := supp_fin S (f := e + cA D e) hs
  have hκ' : (p : Formalism.IndefR.Lev.EAf D) • (finE S κ).1 =
      (p : Formalism.IndefR.Lev.EAf D) • (βS.1 * Y.map (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype * (βS⁻¹).1) := by
    rw [hp]; exact hκ
  have hf : finSw D (e + cA D e) = p + Formalism.UG.sigR D.sp.cm.sig (Formalism.L2.Herm.Af D.host.F) p := by
    rw [RingHom.map_add (f := _), finSw_cA, hp]
  have hSt : finE S κ ∈ St βS :=
    mem_St_of_part_inv D.sp.cm.sig S.gram Λ βS hB.1 (hatL_selfDual hB) p (sigR_int p.2) Y Y' hmm (finE S κ)
      (finE_mem_UA S κ) _ hf hsf hκ'
  refine ⟨κ, hs, (T3 PP e _ hP).2.2.1 κ hs, hSt, ?_, fun P' h1 h2 => ?_, fun x => ?_⟩
  · rw [redFn_of_smul_eq βS PP _ hSt p hres1 Y hκ']
    ext i j
    simp only [Matrix.map_apply]
    exact hres (lf (h.val i j)) (h.val i j) (hlf _).symm
  · obtain ⟨y, y', hy, hyy, a1, a2⟩ := exists_sep h1 fun h => h2 (isConjPl_symm h)
    obtain ⟨w, hw⟩ := idem_div_int hP y y' hyy a1 a2
    refine redFn_eq_one βS P' _ hSt (w * oToS D.host.F D.host.E y) ?_ ?_
    · rw [RingHom.map_mul, resS_oToS, Ideal.Quotient.eq_zero_iff_mem.2 hy, mul_zero]
    · have e1 : ((w * oToS D.host.F D.host.E y : Formalism.L2.Herm.intAf D.host.F D.host.E) : Formalism.IndefR.Lev.EAf D) =
          finSw D (e + cA D e) := hw
      rw [e1]
      exact hsf
  · have hG : (Formalism.IndefR.Fin.LevelGroupLemmas.Lat.frG S βS κ).val.map φ =
        h.val.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) := by
      rw [← hY]
      refine lift_map_eq_of_smul φ _ hp1 _ _ ?_
      unfold Formalism.IndefR.Fin.LevelGroupLemmas.Lat.frG
      rw [Units.val_mul, Units.val_mul]
      exact lift_conj_part βS _ _ _ hκ'
    unfold rdAdj
    rw [Formalism.IndefR.Fin.LevelGroupLemmas.Lat.frMapAdj_actO, lift_frG_one, inv_one, Units.val_one, Matrix.mul_one, Matrix.map_mul, hG]

end GlobalTheory.DownLift.SplitCoef
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitarySupportedAtSplitPlaceLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinsumCharDetFixHyperplaneEqZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinsumCharDetFixHyperplaneEqZero", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Matrix.SchurComplement\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped InnerProductSpace BigOperators

namespace GlobalTheory


open Matrix in
theorem finsum_char_det_fix_hyperplane_eq_zero :
    ∀ (k : Type) [Field k] [Finite k] (r : ℕ) (ξ : kˣ →* ℂˣ), ξ ≠ 1 → ∀ a : Fin r → k, a ≠ 0 →
      ∑ᶠ g ∈ {g : GL (Fin r) k | ∀ v, a ⬝ᵥ v = 0 → (g : Matrix (Fin r) (Fin r) k).mulVec v = v},
        ((ξ (Matrix.GeneralLinearGroup.det g) : ℂˣ) : ℂ) = 0 := by
  intro k _ _ r ξ hξ a ha
  set S : Set (GL (Fin r) k) :=
    {g : GL (Fin r) k | ∀ v, a ⬝ᵥ v = 0 → (g : Matrix (Fin r) (Fin r) k).mulVec v = v} with hS
  obtain ⟨c, hc⟩ : ∃ c : kˣ, ξ c ≠ 1 := by
    by_contra h
    push_neg at h
    exact hξ (MonoidHom.ext h)
  obtain ⟨i, hi⟩ : ∃ i, a i ≠ 0 := by
    by_contra h
    push_neg at h
    exact ha (funext h)
  set v₀ : Fin r → k := Pi.single i (a i)⁻¹ with hv₀
  have hav₀ : a ⬝ᵥ v₀ = 1 := by
    rw [hv₀, dotProduct_single, mul_inv_cancel₀ hi]
  set u : Fin r → k := ((c : k) - 1) • v₀ with hu
  set M : Matrix (Fin r) (Fin r) k :=
    1 + replicateCol (Fin 1) u * replicateRow (Fin 1) a with hM
  have hdet : M.det = (c : k) := by
    have h1 := det_one_add_replicateCol_mul_replicateRow (ι := Fin 1) u a
    rw [hM]
    refine h1.trans ?_
    rw [hu, dotProduct_smul, hav₀, smul_eq_mul, mul_one]
    ring
  have hMfix : ∀ v, a ⬝ᵥ v = 0 → M *ᵥ v = v := by
    intro v hv
    rw [hM, Matrix.add_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec]
    have : replicateRow (Fin 1) a *ᵥ v = 0 := by
      ext j
      simp [Matrix.mulVec, replicateRow, hv]
    rw [this, Matrix.mulVec_zero, add_zero]
  let h₀ : GL (Fin r) k := Matrix.GeneralLinearGroup.mkOfDetNeZero M (by rw [hdet]; exact c.ne_zero)
  have hh₀ : (h₀ : Matrix (Fin r) (Fin r) k) = M := rfl
  have hdeth₀ : Matrix.GeneralLinearGroup.det h₀ = c := by
    ext
    simp [Matrix.GeneralLinearGroup.val_det_apply, hh₀, hdet]
  have hh₀S : h₀ ∈ S := fun v hv => by rw [hh₀]; exact hMfix v hv
  have hmulS : ∀ g ∈ S, h₀ * g ∈ S := by
    intro g hg v hv
    rw [Units.val_mul, ← Matrix.mulVec_mulVec, hg v hv, hh₀S v hv]
  have hinvS : ∀ g ∈ S, h₀⁻¹ * g ∈ S := by
    intro g hg v hv
    have h1 : (h₀ : Matrix (Fin r) (Fin r) k) *ᵥ v = v := hh₀S v hv
    rw [Units.val_mul, ← Matrix.mulVec_mulVec, hg v hv]
    conv_lhs => rw [← h1]
    rw [Matrix.mulVec_mulVec, Units.inv_mul, Matrix.one_mulVec]
  have hbij : Set.BijOn (fun g => h₀ * g) S S := by
    refine ⟨fun g hg => hmulS g hg, fun x _ y _ hxy => mul_left_cancel hxy, ?_⟩
    intro g hg
    exact ⟨h₀⁻¹ * g, hinvS g hg, by simp⟩
  set F : GL (Fin r) k → ℂ := fun g => ((ξ (Matrix.GeneralLinearGroup.det g) : ℂˣ) : ℂ) with hF
  have hFmul : ∀ g, F (h₀ * g) = ((ξ c : ℂˣ) : ℂ) * F g := by
    intro g
    simp [hF, map_mul, hdeth₀]
  have key : ∑ᶠ g ∈ S, F (h₀ * g) = ∑ᶠ g ∈ S, F g :=
    finsum_mem_eq_of_bijOn (fun g => h₀ * g) hbij (fun x _ => rfl)
  simp_rw [hFmul] at key
  rw [← mul_finsum_mem] at key
  have hc' : ((ξ c : ℂˣ) : ℂ) ≠ 1 := by
    intro h
    exact hc (Units.ext h)
  have : (((ξ c : ℂˣ) : ℂ) - 1) * ∑ᶠ g ∈ S, F g = 0 := by
    rw [sub_mul, key, one_mul, sub_self]
  rcases mul_eq_zero.mp this with h | h
  · exact absurd (sub_eq_zero.mp h) hc'
  · exact h

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinsumCharDetFixHyperplaneEqZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslates", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinsumCharDetFixHyperplaneEqZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzVanishOffTranslates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasShape\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeisOAdd\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\nimport Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.DownLift.SplitCoef

namespace GlobalTheory.ParahoricPure

section
variable {O K : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field K] [Algebra O K]
  [IsFractionRing O K] {r t : ℕ}

theorem mem_ball_iff {ϖ : O} (hϖ : Irreducible ϖ) (w : Matrix (Fin r ⊕ Fin t) (Fin r) O) :
    (∃ z : Matrix (Fin r ⊕ Fin t) (Fin r) O, w.map (algebraMap O K) =
      (Matrix.fromRows (1 : Matrix (Fin r) (Fin r) O) (0 : Matrix (Fin t) (Fin r) O) + ϖ • z).map (algebraMap O K)) ↔
    w.map (IsLocalRing.residue O) = Matrix.fromRows (1 : Matrix (Fin r) (Fin r) _) (0 : Matrix (Fin t) (Fin r) _) := by
  have he : (Matrix.fromRows (1 : Matrix (Fin r) (Fin r) O) (0 : Matrix (Fin t) (Fin r) O)).map (IsLocalRing.residue O)
      = Matrix.fromRows (1 : Matrix (Fin r) (Fin r) _) (0 : Matrix (Fin t) (Fin r) _) := by
    ext i j
    rcases i with i | i
    · simp [Matrix.one_apply, apply_ite (IsLocalRing.residue O)]
    · simp
  have hm := (IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).1 hϖ
  constructor
  · rintro ⟨z, hz⟩
    have := Matrix.map_injective (IsFractionRing.injective O K) hz
    have h0 : IsLocalRing.residue O ϖ = 0 := by
      rw [IsLocalRing.residue_eq_zero_iff, hm]; exact Ideal.mem_span_singleton_self _
    rw [this, ← he]
    ext i j
    simp [h0]
  · intro h
    rw [← he] at h
    have : ∀ i j, ∃ c : O, c * ϖ = w i j - Matrix.fromRows (1 : Matrix (Fin r) (Fin r) O) (0 : Matrix (Fin t) (Fin r) O) i j := by
      intro i j
      rw [← Ideal.mem_span_singleton', ← hm, ← IsLocalRing.residue_eq_zero_iff, map_sub, sub_eq_zero]
      exact congrFun (congrFun h i) j
    choose c hc using this
    refine ⟨Matrix.of c, ?_⟩
    congr 1
    ext i j
    simp only [Matrix.add_apply, Matrix.smul_apply, Matrix.of_apply, smul_eq_mul]
    rw [mul_comm, hc]; ring

omit [IsDomain O] [IsDiscreteValuationRing O] in
theorem map_diag {k : Type} [CommRing k] (f : O →+* k) (L : Matrix (Fin r) (Fin r) O) :
    (Matrix.fromBlocks L 0 0 (1 : Matrix (Fin t) (Fin t) O)).map f = Matrix.fromBlocks (L.map f) 0 0 1 := by
  rw [Matrix.fromBlocks_map]
  simp [Matrix.map_one]

theorem isUnit_diag (L : Matrix (Fin r) (Fin r) O) (g : GL (Fin r) (IsLocalRing.ResidueField O))
    (h : L.map (IsLocalRing.residue O) = g.val) :
    IsUnit (Matrix.fromBlocks L 0 0 (1 : Matrix (Fin t) (Fin t) O)) := by
  rw [Matrix.isUnit_iff_isUnit_det, Matrix.det_fromBlocks_zero₂₁, Matrix.det_one, mul_one]
  rw [← IsLocalRing.residue_ne_zero_iff_isUnit, RingHom.map_det, RingHom.mapMatrix_apply, h]
  exact (Matrix.isUnit_iff_isUnit_det _ |>.1 g.isUnit).ne_zero

theorem diag_mem_ball_iff {ϖ : O} (hϖ : Irreducible ϖ) (L : Matrix (Fin r) (Fin r) O)
    (w : Matrix (Fin r ⊕ Fin t) (Fin r) O) :
    (∃ z : Matrix (Fin r ⊕ Fin t) (Fin r) O,
      (Matrix.fromBlocks L 0 0 (1 : Matrix (Fin t) (Fin t) O)).map (algebraMap O K) * w.map (algebraMap O K) =
      (Matrix.fromRows (1 : Matrix (Fin r) (Fin r) O) (0 : Matrix (Fin t) (Fin r) O) + ϖ • z).map (algebraMap O K)) ↔
    (L.map (IsLocalRing.residue O) * (w.map (IsLocalRing.residue O)).toRows₁ = 1 ∧
      (w.map (IsLocalRing.residue O)).toRows₂ = 0) := by
  rw [← Matrix.map_mul, mem_ball_iff hϖ, Matrix.map_mul, map_diag]
  conv_lhs => rw [← Matrix.fromRows_toRows (w.map (IsLocalRing.residue O)), Matrix.fromBlocks_mul_fromRows]
  rw [Matrix.fromRows_ext_iff]
  simp

end

theorem mem_span_sum (O K : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [Finite (IsLocalRing.ResidueField O)] [Field K] [Algebra O K] [IsFractionRing O K] (r t : ℕ)
    (ϖ : O) (hϖ : Irreducible ϖ) (ξ : (IsLocalRing.ResidueField O)ˣ →* ℂˣ) (hξ : ξ ≠ 1)
    (Φ Φ₀ : Matrix (Fin r ⊕ Fin t) (Fin r) K → ℂ)
    (H0 : ∀ (z : Matrix (Fin r ⊕ Fin t) (Fin r) O) (u : (IsLocalRing.ResidueField O)ˣ),
      (z.map (IsLocalRing.residue O)).toRows₂ = 0 →
      (u : IsLocalRing.ResidueField O) = (z.map (IsLocalRing.residue O)).toRows₁.det →
      Φ₀ (z.map (algebraMap O K)) = ((ξ u : ℂˣ) : ℂ)⁻¹)
    (H1 : ∀ m, Φ₀ m ≠ 0 → ∃ z : Matrix (Fin r ⊕ Fin t) (Fin r) O, m = z.map (algebraMap O K) ∧
      (z.map (IsLocalRing.residue O)).toRows₂ = 0 ∧ IsUnit (z.map (IsLocalRing.residue O)).toRows₁.det)
    (H2 : ∃ N : ℕ, (∀ m (z : Matrix (Fin r ⊕ Fin t) (Fin r) O), Φ (m + (ϖ ^ N • z).map (algebraMap O K)) = Φ m) ∧
      ∀ m, Φ m ≠ 0 → ∃ z : Matrix (Fin r ⊕ Fin t) (Fin r) O, algebraMap O K (ϖ ^ N) • m = z.map (algebraMap O K))
    (H3 : ∀ h : GL (Fin r ⊕ Fin t) O, (h.val.map (IsLocalRing.residue O)).toBlocks₂₁ = 0 →
      ∀ m m' : Matrix (Fin r ⊕ Fin t) (Fin r) K,
        Φ (h.val.map (algebraMap O K) * m) * Φ₀ m' = Φ m * Φ₀ (h.val.map (algebraMap O K) * m')) :
    Φ ∈ Submodule.span ℂ {Ψ | ∃ γ : GL (Fin r) K, Ψ = fun m => Φ₀ (m * γ.val)} := by
  classical
  have hm := (IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).1 hϖ
  set e : Matrix (Fin r ⊕ Fin t) (Fin r) O := Matrix.fromRows 1 0 with he
  have her : e.map (IsLocalRing.residue O) = Matrix.fromRows 1 0 :=
    (mem_ball_iff (K := K) hϖ e).1 ⟨0, by simp [he]⟩
  have law : ∀ h : GL (Fin r ⊕ Fin t) O, (h.val.map (IsLocalRing.residue O)).toBlocks₂₁ = 0 →
      ∀ u : (IsLocalRing.ResidueField O)ˣ,
        (u : IsLocalRing.ResidueField O) = (h.val.map (IsLocalRing.residue O)).toBlocks₁₁.det →
        ∀ m, Φ (h.val.map (algebraMap O K) * m) = ((ξ u : ℂˣ) : ℂ)⁻¹ * Φ m := by
    intro h hh u hu m
    have h1 := H3 h hh m (e.map (algebraMap O K))
    have h2 : (h.val * e).map (IsLocalRing.residue O) =
        Matrix.fromRows (h.val.map (IsLocalRing.residue O)).toBlocks₁₁ 0 := by
      rw [Matrix.map_mul, her]
      conv_lhs => rw [← Matrix.fromBlocks_toBlocks (h.val.map (IsLocalRing.residue O)), Matrix.fromBlocks_mul_fromRows]
      simp [hh]
    rw [H0 e 1 (by simp [her]) (by simp [her]), ← Matrix.map_mul, H0 (h.val * e) u (by simp [h2]) (by simp [h2, hu])] at h1
    simpa [mul_comm] using h1
  have lawD : ∀ (L : Matrix (Fin r) (Fin r) O) (g : GL (Fin r) (IsLocalRing.ResidueField O)),
      L.map (IsLocalRing.residue O) = g.val → ∀ m,
      Φ ((Matrix.fromBlocks L 0 0 (1 : Matrix (Fin t) (Fin t) O)).map (algebraMap O K) * m) =
        ((ξ (Matrix.GeneralLinearGroup.det g) : ℂˣ) : ℂ)⁻¹ * Φ m := by
    intro L g hg m
    have := law (isUnit_diag (t := t) L g hg).unit (by rw [IsUnit.unit_spec, map_diag]; simp)
      (Matrix.GeneralLinearGroup.det g) (by rw [IsUnit.unit_spec, map_diag, hg]; simp) m
    rwa [IsUnit.unit_spec] at this
  have hspan := GlobalTheory.parahoric_schwartz_mem_span_translates O K r t ϖ hϖ Φ H2 ?_ ?_
  rotate_left
  · intro h ha hb x
    have := law h ?_ 1 ?_ x
    · simpa using this
    · ext a b
      simp only [Matrix.toBlocks₂₁, Matrix.of_apply, Matrix.map_apply, Matrix.zero_apply]
      rw [IsLocalRing.residue_eq_zero_iff, hm]; exact hb a b
    · have : (h.val.map (IsLocalRing.residue O)).toBlocks₁₁ = 1 := by
        ext a b
        have := ha a b
        rw [← hm, ← IsLocalRing.residue_eq_zero_iff, map_sub, sub_eq_zero] at this
        simp only [Matrix.toBlocks₁₁, Matrix.of_apply, Matrix.map_apply, this]
        simp [Matrix.one_apply, apply_ite (IsLocalRing.residue O)]
      simp [this]
  · intro a ha lift hl x
    have h0 := GlobalTheory.finsum_char_det_fix_hyperplane_eq_zero (IsLocalRing.ResidueField O) r ξ⁻¹ (inv_ne_one.2 hξ) a ha
    rw [finsum_mem_congr rfl (fun g _ => lawD (lift g) g (hl g) x), ← finsum_mem_mul]
    simp only [MonoidHom.inv_apply, Units.val_inv_eq_inv_val] at h0
    rw [h0, zero_mul]
  have hsurj : ∀ g : GL (Fin r) (IsLocalRing.ResidueField O), ∃ L : Matrix (Fin r) (Fin r) O,
      L.map (IsLocalRing.residue O) = g.val := by
    intro g
    have hs' : ∀ i j, ∃ o : O, IsLocalRing.residue O o = g.val i j :=
      fun i j => IsLocalRing.residue_surjective _
    choose L hL using hs'
    exact ⟨Matrix.of L, by ext i j; exact hL i j⟩
  choose lift hl using hsurj
  letI : Fintype (GL (Fin r) (IsLocalRing.ResidueField O)) := Fintype.ofFinite _
  let D : GL (Fin r) (IsLocalRing.ResidueField O) → Matrix (Fin r ⊕ Fin t) (Fin r ⊕ Fin t) K := fun g =>
    (Matrix.fromBlocks (lift g) 0 0 (1 : Matrix (Fin t) (Fin t) O)).map (algebraMap O K)
  let A : (Matrix (Fin r ⊕ Fin t) (Fin r) K → ℂ) →ₗ[ℂ] (Matrix (Fin r ⊕ Fin t) (Fin r) K → ℂ) :=
    ∑ g, ((ξ (Matrix.GeneralLinearGroup.det g) : ℂˣ) : ℂ) • LinearMap.funLeft ℂ ℂ (fun x => D g * x)
  have hA : ∀ Ψ x, A Ψ x = ∑ g, ((ξ (Matrix.GeneralLinearGroup.det g) : ℂˣ) : ℂ) * Ψ (D g * x) := by
    intro Ψ x
    simp [A, LinearMap.sum_apply, Finset.sum_apply, LinearMap.funLeft_apply]
  have hAΦ : A Φ = (Fintype.card (GL (Fin r) (IsLocalRing.ResidueField O)) : ℂ) • Φ := by
    funext x
    rw [hA]
    simp only [D, lawD _ _ (hl _)]
    simp [← mul_assoc]
  have key : ∀ y : Matrix (Fin r ⊕ Fin t) (Fin r) K,
      ∑ g, ((ξ (Matrix.GeneralLinearGroup.det g) : ℂˣ) : ℂ) *
        (if ∃ z : Matrix (Fin r ⊕ Fin t) (Fin r) O, D g * y = (e + ϖ • z).map (algebraMap O K) then 1 else 0) = Φ₀ y := by
    intro y
    by_cases hy : ∃ g, ∃ z : Matrix (Fin r ⊕ Fin t) (Fin r) O, D g * y = (e + ϖ • z).map (algebraMap O K)
    · obtain ⟨g, hg⟩ := hy
      obtain ⟨w, rfl⟩ : ∃ w : Matrix (Fin r ⊕ Fin t) (Fin r) O, y = w.map (algebraMap O K) := by
        obtain ⟨z, hz⟩ := hg
        obtain ⟨U, hU⟩ := isUnit_diag (t := t) (lift g) g (hl g)
        refine ⟨(U⁻¹).val * (e + ϖ • z), ?_⟩
        rw [Matrix.map_mul, ← hz]
        simp only [D]
        rw [← hU, ← Matrix.mul_assoc, ← Matrix.map_mul, Units.inv_mul]
        simp [Matrix.map_one]
      have hg' := (diag_mem_ball_iff hϖ (lift g) w).1 hg
      rw [hl] at hg'
      rw [Finset.sum_eq_single g, if_pos hg, mul_one,
        H0 w (Matrix.GeneralLinearGroup.det g)⁻¹ hg'.2]
      · simp
      · have := congrArg Matrix.det hg'.1
        rw [Matrix.det_mul, Matrix.det_one] at this
        rw [Units.val_inv_eq_inv_val, Matrix.GeneralLinearGroup.val_det_apply]
        exact (eq_inv_of_mul_eq_one_right this).symm
      · intro g' _ hne
        rw [if_neg, mul_zero]
        intro h'
        have h2 := ((diag_mem_ball_iff hϖ (lift g') w).1 h').1
        rw [hl] at h2
        apply hne
        ext1
        exact Matrix.left_inv_eq_left_inv h2 hg'.1
      · simp
    · rw [Finset.sum_eq_zero (fun g _ => by rw [if_neg (fun h => hy ⟨g, h⟩), mul_zero])]
      by_contra h0
      obtain ⟨w, rfl, h2, h1⟩ := H1 y (Ne.symm h0)
      obtain ⟨g, hg⟩ := (Matrix.isUnit_iff_isUnit_det _).2 h1
      refine hy ⟨g⁻¹, (diag_mem_ball_iff hϖ (lift g⁻¹) w).2 ⟨?_, h2⟩⟩
      rw [hl, ← hg, Units.inv_mul]
  have hc : (Fintype.card (GL (Fin r) (IsLocalRing.ResidueField O)) : ℂ) ≠ 0 := by
    exact_mod_cast Fintype.card_ne_zero
  rw [← Submodule.smul_mem_iff _ hc, ← hAΦ]
  refine Submodule.mem_comap.1 ((Submodule.span_le (p := Submodule.comap A _)).2 ?_ hspan)
  rintro Ψ ⟨γ, rfl⟩
  refine Submodule.subset_span ⟨γ, ?_⟩
  funext x
  rw [hA, ← key]
  refine Finset.sum_congr rfl fun g _ => ?_
  simp only [Set.indicator_apply, Set.mem_setOf_eq, Matrix.mul_assoc]
  congr

theorem lowZero_iff {κ : Type} [Zero κ] {r t : ℕ} (y : Matrix (Fin (r + t)) (Fin r) κ) :
    LowZero r y ↔ Matrix.toRows₂ (y.submatrix finSumFinEquiv id) = 0 := by
  constructor
  · intro h
    ext a b
    exact h _ _ (by simp) b.2
  · intro h i j hi _
    obtain ⟨a, rfl⟩ := finSumFinEquiv.surjective i
    rcases a with a | a
    · have := a.2
      simp at hi
      omega
    · exact congrFun (congrFun h a) j

theorem topL_eq {κ : Type} [Zero κ] {r t : ℕ} (y : Matrix (Fin (r + t)) (Fin r) κ) :
    topL r y = Matrix.toRows₁ (y.submatrix finSumFinEquiv id) := by
  ext a b
  unfold topL
  rw [dite_eq_left ⟨by have := a.2; omega, b.2⟩]
  rfl

theorem lowZero_of_toBlocks {κ : Type} [Zero κ] {r t : ℕ} (y : Matrix (Fin r ⊕ Fin t) (Fin r ⊕ Fin t) κ)
    (h : y.toBlocks₂₁ = 0) : LowZero r (y.submatrix finSumFinEquiv.symm finSumFinEquiv.symm) := by
  intro i j hi hj
  obtain ⟨a, rfl⟩ := finSumFinEquiv.surjective i
  obtain ⟨b, rfl⟩ := finSumFinEquiv.surjective j
  rcases a with a | a
  · have := a.2
    simp at hi
    omega
  · rcases b with b | b
    · simpa [Matrix.toBlocks₂₁] using congrFun (congrFun h a) b
    · simp at hj

end GlobalTheory.ParahoricPure

namespace GlobalTheory


open ParahoricPure in
theorem parahoric_schwartz_mem_span_datum_translates : ∀ (O K : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Finite (IsLocalRing.ResidueField O)] [Field K] [Algebra O K] [IsFractionRing O K] (n r : ℕ), r ≤ n → ∀ ϖ : O, Irreducible ϖ → ∀ ξ : (IsLocalRing.ResidueField O)ˣ →* ℂˣ, ξ ≠ 1 → ∀ Φ Φ₀ : Matrix (Fin n) (Fin r) K → ℂ, (∀ (z : Matrix (Fin n) (Fin r) O) (u : (IsLocalRing.ResidueField O)ˣ), LowZero r (z.map (IsLocalRing.residue O)) → (u : IsLocalRing.ResidueField O) = (topL r (z.map (IsLocalRing.residue O))).det → Φ₀ (z.map (algebraMap O K)) = ((ξ u : ℂˣ) : ℂ)⁻¹) → (∀ m, Φ₀ m ≠ 0 → ∃ z : Matrix (Fin n) (Fin r) O, m = z.map (algebraMap O K) ∧ LowZero r (z.map (IsLocalRing.residue O)) ∧ IsUnit (topL r (z.map (IsLocalRing.residue O))).det) → (∃ N : ℕ, (∀ m (z : Matrix (Fin n) (Fin r) O), Φ (m + (ϖ ^ N • z).map (algebraMap O K)) = Φ m) ∧ ∀ m, Φ m ≠ 0 → ∃ z : Matrix (Fin n) (Fin r) O, algebraMap O K (ϖ ^ N) • m = z.map (algebraMap O K)) → (∀ h : GL (Fin n) O, LowZero r (h.val.map (IsLocalRing.residue O)) → ∀ m m' : Matrix (Fin n) (Fin r) K, Φ (h.val.map (algebraMap O K) * m) * Φ₀ m' = Φ m * Φ₀ (h.val.map (algebraMap O K) * m')) → Φ ∈ Submodule.span ℂ {Ψ | ∃ γ : GL (Fin r) K, Ψ = fun m => Φ₀ (m * γ.val)} := by
  intro O K _ _ _ _ _ _ _ n r hr ϖ hϖ ξ hξ Φ Φ₀ H0 H1 H2 H3
  obtain ⟨t, rfl⟩ := Nat.exists_eq_add_of_le hr
  let e : Fin r ⊕ Fin t ≃ Fin (r + t) := finSumFinEquiv
  have hs := mem_span_sum O K r t ϖ hϖ ξ hξ (fun x => Φ (x.submatrix e.symm id))
    (fun x => Φ₀ (x.submatrix e.symm id)) ?_ ?_ ?_ ?_
  · let R : (Matrix (Fin r ⊕ Fin t) (Fin r) K → ℂ) →ₗ[ℂ] (Matrix (Fin (r + t)) (Fin r) K → ℂ) :=
      LinearMap.funLeft ℂ ℂ (fun x => x.submatrix e id)
    have hR : R (fun x => Φ (x.submatrix e.symm id)) = Φ := by
      funext x
      simp [R, LinearMap.funLeft_apply, Matrix.submatrix_submatrix]
    rw [← hR]
    refine Submodule.mem_comap.1 ((Submodule.span_le (p := Submodule.comap R _)).2 ?_ hs)
    rintro Ψ ⟨γ, rfl⟩
    refine Submodule.subset_span ⟨γ, ?_⟩
    funext x
    simp only [R, LinearMap.funLeft_apply]
    congr 1
    ext i j
    simp [Matrix.mul_apply]
  · intro z u h1 h2
    refine H0 (z.submatrix e.symm id) u ?_ ?_
    · rw [lowZero_iff, ← h1]; congr 1; ext i j; simp [e]
    · rw [topL_eq, h2]; congr 2; ext i j; simp [e]
  · intro m hm
    obtain ⟨z, h1, h2, h3⟩ := H1 _ hm
    refine ⟨z.submatrix e id, ?_, (lowZero_iff _).1 h2, by rw [topL_eq] at h3; exact h3⟩
    ext i j
    simpa using congrFun (congrFun h1 (e i)) j
  · obtain ⟨N, h1, h2⟩ := H2
    refine ⟨N, fun m z => h1 (m.submatrix e.symm id) (z.submatrix e.symm id), fun m hm => ?_⟩
    obtain ⟨z, hz⟩ := h2 _ hm
    refine ⟨z.submatrix e id, ?_⟩
    ext i j
    simpa using congrFun (congrFun hz (e i)) j
  · intro h hh m m'
    let h' : GL (Fin (r + t)) O := Units.map (Matrix.reindexAlgEquiv O O e).toMonoidHom h
    have hv : h'.val = h.val.submatrix e.symm e.symm := rfl
    have hmul : ∀ x : Matrix (Fin r ⊕ Fin t) (Fin r) K, (h.val.map (algebraMap O K) * x).submatrix e.symm id =
        h'.val.map (algebraMap O K) * x.submatrix e.symm id := by
      intro x
      rw [hv, ← Matrix.submatrix_map, Matrix.submatrix_mul_equiv]
    simp only [hmul]
    exact H3 h' (lowZero_of_toBlocks _ hh) _ _

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslates =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslatesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslatesStatement", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasShape\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeisOAdd\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\nimport Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.DownLift.SplitCoef

theorem _root_.GlobalTheory.T.parahoric_schwartz_mem_span_datum_translates_alt : ∀ (O K : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Finite (IsLocalRing.ResidueField O)] [Field K] [Algebra O K] [IsFractionRing O K] (n r : ℕ), r ≤ n → ∀ ϖ : O, Irreducible ϖ → ∀ ξ : (IsLocalRing.ResidueField O)ˣ →* ℂˣ, ξ ≠ 1 → ∀ Φ Φ₀ : Matrix (Fin n) (Fin r) K → ℂ, (∀ (z : Matrix (Fin n) (Fin r) O) (u : (IsLocalRing.ResidueField O)ˣ), LowZero r (z.map (IsLocalRing.residue O)) → (u : IsLocalRing.ResidueField O) = (topL r (z.map (IsLocalRing.residue O))).det → Φ₀ (z.map (algebraMap O K)) = ((ξ u : ℂˣ) : ℂ)⁻¹) → (∀ m, Φ₀ m ≠ 0 → ∃ z : Matrix (Fin n) (Fin r) O, m = z.map (algebraMap O K) ∧ LowZero r (z.map (IsLocalRing.residue O)) ∧ IsUnit (topL r (z.map (IsLocalRing.residue O))).det) → (∃ N : ℕ, (∀ m (z : Matrix (Fin n) (Fin r) O), Φ (m + (ϖ ^ N • z).map (algebraMap O K)) = Φ m) ∧ ∀ m, Φ m ≠ 0 → ∃ z : Matrix (Fin n) (Fin r) O, algebraMap O K (ϖ ^ N) • m = z.map (algebraMap O K)) → (∀ h : GL (Fin n) O, LowZero r (h.val.map (IsLocalRing.residue O)) → ∀ m m' : Matrix (Fin n) (Fin r) K, Φ (h.val.map (algebraMap O K) * m) * Φ₀ m' = Φ m * Φ₀ (h.val.map (algebraMap O K) * m')) → Φ ∈ Submodule.span ℂ {Ψ | ∃ γ : GL (Fin r) K, Ψ = fun m => Φ₀ (m * γ.val)} := by
  first | exact @GlobalTheory.parahoric_schwartz_mem_span_datum_translates
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslatesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSupp =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSupp", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasShape\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameAdjointChartBijectiveConjugateHalfStatement\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNsmulIntMemLatO\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMapMulInv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeisOAdd\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.NotMemSpanOfCommute\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.DownLift.SplitCoef

noncomputable section




namespace GlobalTheory.DownLift.SplitCoef

variable {D : D7}

theorem frMapAdj_nsmul (S T : HSp D) (βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D))
    (n : ℕ) (x : WO S T) : frMapAdj S T βS βT (n • x) = n • frMapAdj S T βS βT x :=
  (AddMonoidHom.mk' (frMapAdj S T βS βT) (GlobalTheory.PlaceVec.frMapAdj_add S T βS βT)).map_nsmul n x

theorem rdAdj_add (S T : HSp D) (βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D))
    {v : HeightOneSpectrum (𝓞 D.host.F)} (φ : Formalism.IndefR.Lev.EAf D →+* Fv D.host.F v) (x y : WO S T) :
    rdAdj S T βS βT φ (x + y) = rdAdj S T βS βT φ x + rdAdj S T βS βT φ y := by
  ext i j
  simp only [rdAdj, GlobalTheory.PlaceVec.frMapAdj_add, Matrix.map_apply, Matrix.add_apply, map_add (f := _)]

theorem rdAdj_nsmul (S T : HSp D) (βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D))
    {v : HeightOneSpectrum (𝓞 D.host.F)} (φ : Formalism.IndefR.Lev.EAf D →+* Fv D.host.F v) (n : ℕ) (x : WO S T) :
    rdAdj S T βS βT φ (n • x) = n • rdAdj S T βS βT φ x :=
  (AddMonoidHom.mk' (rdAdj S T βS βT φ) (rdAdj_add S T βS βT φ)).map_nsmul n x

theorem rdAdj_sub (S T : HSp D) (βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D))
    {v : HeightOneSpectrum (𝓞 D.host.F)} (φ : Formalism.IndefR.Lev.EAf D →+* Fv D.host.F v) (x y : WO S T) :
    rdAdj S T βS βT φ (x - y) = rdAdj S T βS βT φ x - rdAdj S T βS βT φ y :=
  (AddMonoidHom.mk' (rdAdj S T βS βT φ) (rdAdj_add S T βS βT φ)).map_sub x y

theorem exists_natCast_dvd_pow (v : HeightOneSpectrum (𝓞 D.host.F)) {ϖ : GlobalTheory.SplitHecke.Ov D v} (hϖ : Irreducible ϖ)
    (m : ℕ) (hm : 0 < m) : ∃ N : ℕ, (m : GlobalTheory.SplitHecke.Ov D v) ∣ ϖ ^ N := by
  have hne : (m : GlobalTheory.SplitHecke.Ov D v) ≠ 0 := by
    intro h
    have h1 := congrArg (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) h
    rw [map_natCast, map_zero, ← map_natCast (algebraMap D.host.F (Fv D.host.F v))] at h1
    have h2 := (algebraMap D.host.F (Fv D.host.F v)).injective (h1.trans (map_zero _).symm)
    exact hm.ne' (by exact_mod_cast h2)
  obtain ⟨N, u, hu⟩ := IsDiscreteValuationRing.associated_pow_irreducible hne hϖ
  exact ⟨N, (u : GlobalTheory.SplitHecke.Ov D v), hu.symm⟩

end GlobalTheory.DownLift.SplitCoef

namespace GlobalTheory.DownLift.SplitCoef

theorem sbHalf_locConst_cptSupp : ∀ (D : D7) (S T : HSp D) (βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D)) (e : AE D) (PP : Pl D.host.E) (v : HeightOneSpectrum (𝓞 D.host.F)) (φ : Formalism.IndefR.Lev.EAf D →+* Fv D.host.F v) (ι : kP PP ≃+* IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v)), Formalism.L2.NTheta.IsIdemAt e PP → LevChart e PP v φ ι → ∀ (ΛS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)) (ΛT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E)), Submodule.IsFullLattice D.host.E ΛS → Submodule.IsFullLattice D.host.E ΛT → ∀ Φ : WO S T → ℂ, IsSBHalf (cA D e) (latH S T ΛS ΛT) Φ → ∀ ϖ : (GlobalTheory.SplitHecke.Ov D v), Irreducible ϖ → ∃ N : ℕ, (∀ x x' : WO S T, IsHalf (cA D e) x → IsHalf (cA D e) x' → ∀ z : Matrix (Fin S.rank) (Fin T.rank) (GlobalTheory.SplitHecke.Ov D v), rdAdj S T βS βT φ x' = rdAdj S T βS βT φ x + (ϖ ^ N • z).map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) → Φ x' = Φ x) ∧ ∀ x : WO S T, Φ x ≠ 0 → ∃ z : Matrix (Fin S.rank) (Fin T.rank) (GlobalTheory.SplitHecke.Ov D v), algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v) (ϖ ^ N) • rdAdj S T βS βT φ x = z.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) := by
  intro D S T βS βT e PP v φ ι he hL ΛS ΛT hS hT Φ hΦ ϖ hϖ
  obtain ⟨hsurj, hinj, hint, -⟩ := _root_.GlobalTheory.DownLift.ReadAdj.rdAdj_read D S T βS βT e PP v φ ι he hL
  obtain ⟨hsupp, k, hk, hinv, hkΛ⟩ := hΦ
  obtain ⟨K1, hK1, hdown⟩ := GlobalTheory.PlaceVec.frMapAdj_down S T βS βT
  obtain ⟨K2, hK2, hmem⟩ := GlobalTheory.PlaceVec.exists_nsmul_int_mem_latO hS hT
  obtain ⟨L1, hL1, hlat⟩ := GlobalTheory.PlaceVec.exists_nsmul_latO_int (S := S) (T := T) hS.fg hT.fg
  obtain ⟨L2, hL2, hup⟩ := GlobalTheory.PlaceVec.frMapAdj_up S T βS βT
  have hce : infPart D (cA D e) = 0 := GlobalTheory.PlaceVec.infPart_cA (GlobalTheory.SplitScalar.infPart_splitIdem he.1)
  obtain ⟨N, hN⟩ := exists_natCast_dvd_pow v hϖ (k * (K2 * K1) * (L2 * (L1 * k)))
    (by positivity)
  have hA : ((k * (K2 * K1) : ℕ) : GlobalTheory.SplitHecke.Ov D v) ∣ ϖ ^ N :=
    (Nat.cast_dvd_cast (Dvd.intro _ rfl)).trans hN
  have hM : ((L2 * (L1 * k) : ℕ) : GlobalTheory.SplitHecke.Ov D v) ∣ ϖ ^ N :=
    (Nat.cast_dvd_cast (Dvd.intro_left _ rfl)).trans hN
  refine ⟨N, ?_, ?_⟩
  · intro x x' hx hx' z hxz
    obtain ⟨w, hw⟩ := hA
    obtain ⟨t, ht, hrt⟩ := hsurj ((w • z).map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)))
    have htI : IsIntM (frMapAdj S T βS βT t) := (hint t ht).2 ⟨w • z, hrt⟩
    have h1 := hdown t htI
    rw [← GlobalTheory.PlaceVec.map_toEAf_nsmul] at h1
    have h0 : (K1 • t).map (infPart D) = 0 := by
      ext i j
      rw [Matrix.map_apply, Matrix.smul_apply, map_nsmul, ← ht i j, map_mul, hce, zero_mul, smul_zero, Matrix.zero_apply]
    have h2 := hmem _ h0 h1
    have hu : IsHalf (cA D e) (K2 • K1 • t) := GlobalTheory.SplitScalar.isHalf_nsmul (GlobalTheory.SplitScalar.isHalf_nsmul ht _) _
    have key : x' - x = k • (K2 • K1 • t) := by
      refine hinj _ _ (GlobalTheory.SplitScalar.isHalf_sub hx' hx) (GlobalTheory.SplitScalar.isHalf_nsmul hu _) ?_
      rw [rdAdj_sub, hxz, add_sub_cancel_left, rdAdj_nsmul, rdAdj_nsmul, rdAdj_nsmul, hrt, hw]
      ext i j
      simp only [Matrix.map_apply, Matrix.smul_apply, smul_eq_mul, nsmul_eq_mul, map_mul, map_natCast]
      push_cast
      ring_nf
    have : x' = x + k • (K2 • K1 • t) := by rw [← key]; abel
    rw [this, hinv _ h2 hu x]
  · intro x hx
    have hhalf := hsupp x hx
    have h1 := hlat _ (hkΛ x hx)
    rw [← GlobalTheory.PlaceVec.map_toEAf_nsmul] at h1
    have h2 := hup _ h1
    rw [← frMapAdj_nsmul] at h2
    obtain ⟨z0, hz0⟩ := (hint _ (GlobalTheory.SplitScalar.isHalf_nsmul (GlobalTheory.SplitScalar.isHalf_nsmul (GlobalTheory.SplitScalar.isHalf_nsmul hhalf k) L1) L2)).1 h2
    rw [rdAdj_nsmul, rdAdj_nsmul, rdAdj_nsmul] at hz0
    obtain ⟨w', hw'⟩ := hM
    refine ⟨w' • z0, ?_⟩
    ext i j
    have hij := congrFun (congrFun hz0 i) j
    simp only [Matrix.map_apply, Matrix.smul_apply, smul_eq_mul, nsmul_eq_mul] at hij ⊢
    rw [hw', map_mul, map_mul, ← hij, map_natCast]
    push_cast
    ring_nf

end GlobalTheory.DownLift.SplitCoef

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSupp =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSuppStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSuppStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasShape\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSupp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeisOAdd\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.DownLift.SplitCoef

theorem _root_.GlobalTheory.T.schwartzBruhat_conjHalf_locallyConstant_compactSupport : ∀ (D : D7) (S T : HSp D) (βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D)) (e : AE D) (PP : Pl D.host.E) (v : HeightOneSpectrum (𝓞 D.host.F)) (φ : Formalism.IndefR.Lev.EAf D →+* Fv D.host.F v) (ι : kP PP ≃+* IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v)), Formalism.L2.NTheta.IsIdemAt e PP → LevChart e PP v φ ι → ∀ (ΛS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)) (ΛT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E)), Submodule.IsFullLattice D.host.E ΛS → Submodule.IsFullLattice D.host.E ΛT → ∀ Φ : WO S T → ℂ, IsSBHalf (cA D e) (latH S T ΛS ΛT) Φ → ∀ ϖ : (GlobalTheory.SplitHecke.Ov D v), Irreducible ϖ → ∃ N : ℕ, (∀ x x' : WO S T, IsHalf (cA D e) x → IsHalf (cA D e) x' → ∀ z : Matrix (Fin S.rank) (Fin T.rank) (GlobalTheory.SplitHecke.Ov D v), rdAdj S T βS βT φ x' = rdAdj S T βS βT φ x + (ϖ ^ N • z).map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) → Φ x' = Φ x) ∧ ∀ x : WO S T, Φ x ≠ 0 → ∃ z : Matrix (Fin S.rank) (Fin T.rank) (GlobalTheory.SplitHecke.Ov D v), algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v) (ϖ ^ N) • rdAdj S T βS βT φ x = z.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) := by
  intro D S T βS βT e PP v φ ι he hL ΛS ΛT hS hT Φ hΦ ϖ hϖ
  first
  | exact GlobalTheory.DownLift.SplitCoef.sbHalf_locConst_cptSupp D S T βS βT e PP v φ ι he hL ΛS ΛT hS hT Φ hΦ ϖ hϖ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSuppStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemSpanTranslatesConjugateHalfTwistPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemSpanTranslatesConjugateHalfTwistPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasShape\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.GoodIdempotentBadPlaces\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIdempotentPlaceChartFiniteAdeles\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSupportedUnitaryAdjointAction\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsUnitarySupportedAtSplitPlaceLift\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameAdjointChartBijectiveConjugateHalfStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParahoricSchwartzMemSpanDatumTranslatesStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchwartzBruhatConjHalfLocallyConstantCompactSuppStatement\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsInvariantForm\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeisOAdd\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.DownLift.SplitCoef

noncomputable section
namespace GlobalTheory.DownLift.ConjHalfGen

theorem lowZero_map_iff {A B : Type} [CommRing A] [CommRing B] (f : A ≃+* B) {b a : ℕ} (k : ℕ)
    (y : Matrix (Fin b) (Fin a) A) : LowZero k (y.map f) ↔ LowZero k y := by
  unfold LowZero
  simp only [Matrix.map_apply, map_eq_zero_iff f f.injective]

theorem topL_map {A B : Type} [Zero A] [Zero B] (f : A → B) (hf : f 0 = 0) {b a : ℕ} (k : ℕ)
    (y : Matrix (Fin b) (Fin a) A) : topL k (y.map f) = (topL k y).map f := by
  ext i j
  simp only [topL, Matrix.map_apply]
  split_ifs <;> simp [hf]

theorem det_topL_map {A B : Type} [CommRing A] [CommRing B] (f : A →+* B) {b a : ℕ} (k : ℕ)
    (y : Matrix (Fin b) (Fin a) A) : (topL k (y.map f)).det = f (topL k y).det := by
  rw [topL_map f (map_zero f), RingHom.map_det]
  rfl

theorem det_topL_mapE {A B : Type} [CommRing A] [CommRing B] (f : A ≃+* B) {b a : ℕ} (k : ℕ)
    (y : Matrix (Fin b) (Fin a) A) : (topL k (y.map f)).det = f (topL k y).det :=
  det_topL_map (f : A →+* B) k y

theorem omegaQ_single {D : D7} {a b : ℕ} (PP : Pl D.host.E) (r : ℕ) (ξ : ∀ PP : Pl D.host.E, (kP PP)ˣ →* ℂˣ)
    (y : ∀ PP : Pl D.host.E, Matrix (Fin b) (Fin a) (kP PP)) (hz : LowZero r (y PP)) (u : (kP PP)ˣ)
    (hu : (u : kP PP) = (topL r (y PP)).det) :
    omegaQ {PP} r ξ (-1) y = ((ξ PP u : ℂˣ) : ℂ)⁻¹ := by
  have h : ∀ PP' ∈ ({PP} : Finset (Pl D.host.E)), LowZero r (y PP') ∧ IsUnit (topL r (y PP')).det := by
    intro PP' hP
    rw [Finset.mem_singleton] at hP
    subst hP
    exact ⟨hz, hu ▸ u.isUnit⟩
  unfold omegaQ
  rw [dite_eq_left h, Finset.prod_eq_single ⟨PP, Finset.mem_singleton_self PP⟩]
  · rw [_root_.zpow_neg_one]
    congr 4
    ext
    simp [hu]
  · intro x _ hx
    exfalso
    exact hx (Subtype.ext (Finset.mem_singleton.1 x.2))
  · intro hx
    exact absurd (Finset.mem_attach _ _) hx

theorem omegaQ_ne_zero {D : D7} {a b : ℕ} (PP : Pl D.host.E) (r : ℕ) (ξ : ∀ PP : Pl D.host.E, (kP PP)ˣ →* ℂˣ)
    (k : ℤ) (y : ∀ PP : Pl D.host.E, Matrix (Fin b) (Fin a) (kP PP)) (h : omegaQ {PP} r ξ k y ≠ 0) :
    LowZero r (y PP) ∧ IsUnit (topL r (y PP)).det := by
  unfold omegaQ at h
  split_ifs at h with h'
  · exact h' PP (Finset.mem_singleton_self PP)
  · exact absurd rfl h

end GlobalTheory.DownLift.ConjHalfGen
end

noncomputable section
namespace GlobalTheory.DownLift.ConjHalfGen



theorem mem_span_translT : ∀ (D : D7) (S T : HSp D) (βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D)), T.rank ≤ S.rank → ∀ (ΛS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)) (ΛT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E)), ∀ N : ℕ, IsBaseFrame S βS ΛS N → Submodule.IsFullLattice D.host.E ΛS → Submodule.IsFullLattice D.host.E ΛT → ∀ (e : AE D) (PP : Pl D.host.E), Formalism.L2.NTheta.IsIdemAt e PP → ∀ ξ : ∀ PP : Pl D.host.E, (kP PP)ˣ →* ℂˣ, ξ PP ≠ 1 → ∀ Φ : WO S T → ℂ, IsSBHalf (cA D e) (latH S T ΛS ΛT) Φ → (∀ κ : GA D S, SuppAt e S κ → κ ∈ GfC S → finE S κ ∈ St βS → redFn βS PP (finE S κ) ∈ blockTri (blk2 T.rank) → (∀ PP', PP' ≠ PP → ¬ Formalism.IndefR.Lev.IsConjPl PP PP' → redFn βS PP' (finE S κ) = 1) → ∀ x x' : WO S T, IsHalf (cA D e) x → IsHalf (cA D e) x' → Φ (actO S T κ 1 x) * adjDat S T βS βT e (omegaQ {PP} T.rank ξ (-1)) x' = Φ x * adjDat S T βS βT e (omegaQ {PP} T.rank ξ (-1)) (actO S T κ 1 x')) → Φ ∈ Submodule.span ℂ (translT S T (cA D e) (adjDat S T βS βT e (omegaQ {PP} T.rank ξ (-1)))) := by
  classical
  intro D S T βS βT hrn ΛS ΛT N hBF hLS hLT e PP hidem ξ hξ Φ hΦ hlaw
  obtain ⟨v, φ, ι, hch⟩ := _root_.GlobalTheory.DownLift.SplitCoef.exists_levChart D e PP hidem
  obtain ⟨hsurj, hinj, hint, hred⟩ := _root_.GlobalTheory.DownLift.ReadAdj.rdAdj_read D S T βS βT e PP v φ ι hidem hch
  haveI : Finite (IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v)) := Finite.of_equiv _ ι.toEquiv
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible (GlobalTheory.SplitHecke.Ov D v)
  choose σ hσH hσ using hsurj
  set ω := omegaQ {PP} T.rank ξ (-1) with hω
  set Φ' : Matrix (Fin S.rank) (Fin T.rank) (Fv D.host.F v) → ℂ := fun m => Φ (σ m) with hΦ'
  set Φ₀' : Matrix (Fin S.rank) (Fin T.rank) (Fv D.host.F v) → ℂ := fun m => adjDat S T βS βT e ω (σ m) with hΦ₀'
  set ξ' : (IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v))ˣ →* ℂˣ :=
    (ξ PP).comp (Units.map (ι.symm : IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v) ≃+* kP PP).toMonoidHom) with hξ'
  have hξ'1 : ξ' ≠ 1 := by
    intro h1
    apply hξ
    ext u
    have h2 := DFunLike.congr_fun h1 (Units.map (ι : kP PP ≃+* _).toMonoidHom u)
    have h3 : Units.map (ι.symm : IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v) ≃+* kP PP).toMonoidHom
        (Units.map (ι : kP PP ≃+* _).toMonoidHom u) = u := by
      ext; simp
    simp only [hξ', MonoidHom.comp_apply, h3, MonoidHom.one_apply] at h2
    rw [h2]; rfl

  have hA : ∀ (z : Matrix (Fin S.rank) (Fin T.rank) (GlobalTheory.SplitHecke.Ov D v)) (u : (IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v))ˣ),
      LowZero T.rank (z.map (IsLocalRing.residue (GlobalTheory.SplitHecke.Ov D v))) →
      (u : IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v)) = (topL T.rank (z.map (IsLocalRing.residue (GlobalTheory.SplitHecke.Ov D v)))).det →
      Φ₀' (z.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v))) = ((ξ' u : ℂˣ) : ℂ)⁻¹ := by
    intro z u hz hu
    set x := σ (z.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)))
    have hxH := hσH (z.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)))
    have hxr := hσ (z.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)))
    have hxI : IsIntM (frMapAdj S T βS βT x) := (hint x hxH).2 ⟨z, hxr⟩
    have hxR := hred x z hxI hxr
    have hLZ : LowZero T.rank (redM PP (frMapAdj S T βS βT x)) := by
      rw [← lowZero_map_iff ι, hxR]; exact hz
    have hdet : ι (topL T.rank (redM PP (frMapAdj S T βS βT x))).det = (u : IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v)) := by
      rw [hu, ← hxR, det_topL_mapE ι]
    show adjDat S T βS βT e ω x = _
    unfold adjDat
    rw [if_pos ⟨hxH, hxI⟩, hω, omegaQ_single PP T.rank ξ _ hLZ
      (Units.map (ι.symm : IsLocalRing.ResidueField (GlobalTheory.SplitHecke.Ov D v) ≃+* kP PP).toMonoidHom u)]
    · rfl
    · simp [← hdet]
  have hB : ∀ m, Φ₀' m ≠ 0 → ∃ z : Matrix (Fin S.rank) (Fin T.rank) (GlobalTheory.SplitHecke.Ov D v),
      m = z.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) ∧
      LowZero T.rank (z.map (IsLocalRing.residue (GlobalTheory.SplitHecke.Ov D v))) ∧
      IsUnit (topL T.rank (z.map (IsLocalRing.residue (GlobalTheory.SplitHecke.Ov D v)))).det := by
    intro m hm
    have hm' : adjDat S T βS βT e ω (σ m) ≠ 0 := hm
    unfold adjDat at hm'
    split_ifs at hm' with hc
    · obtain ⟨z, hz⟩ := (hint (σ m) hc.1).1 hc.2
      have hR := hred (σ m) z hc.2 hz
      obtain ⟨h1, h2⟩ := omegaQ_ne_zero PP T.rank ξ (-1) _ hm'
      refine ⟨z, by rw [← hz, hσ], ?_, ?_⟩
      · rw [← hR, lowZero_map_iff ι]; exact h1
      · rw [← hR, det_topL_mapE ι]; exact h2.map _
    · exact absurd rfl hm'

  have hC : ∃ N : ℕ, (∀ m (z : Matrix (Fin S.rank) (Fin T.rank) (GlobalTheory.SplitHecke.Ov D v)),
      Φ' (m + (ϖ ^ N • z).map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v))) = Φ' m) ∧
      ∀ m, Φ' m ≠ 0 → ∃ z : Matrix (Fin S.rank) (Fin T.rank) (GlobalTheory.SplitHecke.Ov D v),
        algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v) (ϖ ^ N) • m = z.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) := by
    obtain ⟨N', hinv, hsupp⟩ := GlobalTheory.T.schwartzBruhat_conjHalf_locallyConstant_compactSupport D S T βS βT e PP v φ ι hidem hch ΛS ΛT (by first | exact hLS) (by first | exact hLT) Φ hΦ ϖ hϖ
    refine ⟨N', fun m z => ?_, fun m hm => ?_⟩
    · exact hinv (σ m) _ (hσH m) (hσH _) z (by rw [hσ, hσ])
    · obtain ⟨z, hz⟩ := hsupp (σ m) hm
      exact ⟨z, by rw [← hσ m]; exact hz⟩

  have hD : ∀ h : GL (Fin S.rank) (GlobalTheory.SplitHecke.Ov D v), LowZero T.rank (h.val.map (IsLocalRing.residue (GlobalTheory.SplitHecke.Ov D v))) →
      ∀ m m' : Matrix (Fin S.rank) (Fin T.rank) (Fv D.host.F v),
      Φ' (h.val.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) * m) * Φ₀' m' =
        Φ' m * Φ₀' (h.val.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) * m') := by
    intro h hLZ m m'
    obtain ⟨κ, hsupp, hGf, hSt, hrκ, hoth, hact⟩ := _root_.GlobalTheory.DownLift.SplitCoef.exists_supp_lift_adj D S T βS βT e PP v φ ι hidem hch ΛS N hBF h
    have hBT : redFn βS PP (finE S κ) ∈ blockTri (blk2 T.rank) := by
      rw [mem_blockTri]
      intro i j hij
      have hj : j.val < T.rank := by
        by_contra hj; simp only [blk2, if_neg hj] at hij; split_ifs at hij <;> omega
      have hi : T.rank ≤ i.val := by
        by_contra hi; simp only [blk2, if_pos (Nat.lt_of_not_le hi)] at hij; omega
      have h1 := congrFun (congrFun hrκ i) j
      simp only [Matrix.map_apply] at h1
      have h4 := hLZ i j hi hj
      simp only [Matrix.map_apply] at h4
      exact ι.injective ((h1.trans h4).trans (map_zero ι).symm)
    have hmove : ∀ y, σ (h.val.map (algebraMap (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v)) * y) = actO S T κ 1 (σ y) := by
      intro y
      refine hinj _ _ (hσH _) (GlobalTheory.SplitHecke.isHalf_actO κ 1 (hσH y)) ?_
      rw [hσ, hact, hσ]
    show Φ (σ _) * adjDat S T βS βT e ω (σ m') = Φ (σ m) * adjDat S T βS βT e ω (σ _)
    rw [hmove, hmove]
    exact hlaw κ hsupp hGf hSt hBT hoth (σ m) (σ m') (hσH m) (hσH m')
  have hpure := GlobalTheory.T.parahoric_schwartz_mem_span_datum_translates_alt (GlobalTheory.SplitHecke.Ov D v) (Fv D.host.F v) S.rank T.rank hrn ϖ hϖ ξ' hξ'1 Φ' Φ₀' hA hB hC hD

  let L : ((Matrix (Fin S.rank) (Fin T.rank) (Fv D.host.F v)) → ℂ) →ₗ[ℂ] (WO S T → ℂ) :=
    { toFun := fun Ψ x => if IsHalf (cA D e) x then Ψ (rdAdj S T βS βT φ x) else 0
      map_add' := fun Ψ Ψ' => by funext x; simp only [Pi.add_apply]; split_ifs <;> simp
      map_smul' := fun c Ψ => by funext x; simp only [Pi.smul_apply, RingHom.id_apply]; split_ifs <;> simp }
  have hLΦ : L Φ' = Φ := by
    funext x
    show (if IsHalf (cA D e) x then Φ (σ (rdAdj S T βS βT φ x)) else 0) = Φ x
    split_ifs with hx
    · rw [hinj _ x (hσH _) hx (hσ _)]
    · by_contra hne
      exact hx (hΦ.1 x (Ne.symm hne))
  have hmem := Submodule.mem_map_of_mem (f := L) hpure
  rw [Submodule.map_span, hLΦ] at hmem
  refine Submodule.span_mono ?_ hmem
  rintro _ ⟨Ψ, ⟨γ, rfl⟩, rfl⟩
  obtain ⟨g, hgs, hgx⟩ := _root_.GlobalTheory.DownLift.SplitCoef.exists_supp_rdAdj_mul D S T βS βT e PP v φ ι hidem hch γ
  refine ⟨g, ?_, ?_⟩
  · intro i j
    have := hgs i j
    rwa [Formalism.L2.Theta.cA_cA, add_comm]
  · funext x
    show (if IsHalf (cA D e) x then adjDat S T βS βT e ω (σ (rdAdj S T βS βT φ x * γ.val)) else 0) = adjDat S T βS βT e ω (actO S T 1 g x)
    split_ifs with hx
    · have hgH := GlobalTheory.SplitHecke.isHalf_actO 1 g hx
      rw [hinj _ (actO S T 1 g x) (hσH _) hgH (by rw [hσ, hgx])]
    · have hgH : ¬ IsHalf (cA D e) (actO S T 1 g x) := by
        intro h'
        have := GlobalTheory.SplitHecke.isHalf_actO (1 : GA D S)⁻¹ g⁻¹ h'
        rw [GlobalTheory.SplitHecke.actO_inv_actO] at this
        exact hx this
      unfold adjDat
      rw [if_neg (fun h' => hgH h'.1)]

end GlobalTheory.DownLift.ConjHalfGen
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemSpanTranslatesConjugateHalfTwistPlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemSpanTranslatesConjugateHalfTwistPlaceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemSpanTranslatesConjugateHalfTwistPlaceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasShape\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemSpanTranslatesConjugateHalfTwistPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeisOAdd\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.DownLift.SplitCoef

theorem _root_.GlobalTheory.T.mem_span_translates_conjugateHalf_twistPlace : ∀ (D : D7) (S T : HSp D) (βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)) (βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D)), T.rank ≤ S.rank → ∀ (ΛS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)) (ΛT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E)), ∀ N : ℕ, IsBaseFrame S βS ΛS N → Submodule.IsFullLattice D.host.E ΛS → Submodule.IsFullLattice D.host.E ΛT → ∀ (e : AE D) (PP : Pl D.host.E), Formalism.L2.NTheta.IsIdemAt e PP → ∀ ξ : ∀ PP : Pl D.host.E, (kP PP)ˣ →* ℂˣ, ξ PP ≠ 1 → ∀ Φ : WO S T → ℂ, IsSBHalf (cA D e) (latH S T ΛS ΛT) Φ → (∀ κ : GA D S, SuppAt e S κ → κ ∈ GfC S → finE S κ ∈ St βS → redFn βS PP (finE S κ) ∈ blockTri (blk2 T.rank) → (∀ PP', PP' ≠ PP → ¬ Formalism.IndefR.Lev.IsConjPl PP PP' → redFn βS PP' (finE S κ) = 1) → ∀ x x' : WO S T, IsHalf (cA D e) x → IsHalf (cA D e) x' → Φ (actO S T κ 1 x) * adjDat S T βS βT e (omegaQ {PP} T.rank ξ (-1)) x' = Φ x * adjDat S T βS βT e (omegaQ {PP} T.rank ξ (-1)) (actO S T κ 1 x')) → Φ ∈ Submodule.span ℂ (translT S T (cA D e) (adjDat S T βS βT e (omegaQ {PP} T.rank ξ (-1)))) := by
  intro D S T βS βT hr ΛS ΛT N hB hS hT e PP he ξ hξ Φ hΦ hlaw
  exact GlobalTheory.DownLift.ConjHalfGen.mem_span_translT D S T βS βT hr ΛS ΛT N hB
    (by first | exact hS) (by first | exact hT)
    e PP he ξ hξ Φ hΦ hlaw
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemSpanTranslatesConjugateHalfTwistPlaceStatement =====
