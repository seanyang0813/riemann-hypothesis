module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIdemEmpty
public import Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.OmAtSmulRight
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqTopOfOneMem
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinTensAlgebraMap
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TranslateSumVacuumMovedByAdelicPair
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PtHomInjective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ActOMemFinSub
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergFinitePointReadsClassicalTranslation
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndexStandardInfSkewThetaLatticeEqAbsNormPow
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualSkewIdealLatticeIsSelfDual
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DefiniteThetaPairTestVectorExpansion
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ThetaTranslateGaloisRationalityCmPoints
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.TwistedTranslateClassInvariantOfMemThetaSpace
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SelfDualLatticePairingDual
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelDatumReferenceTupleSmallField
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNsmulIntMemLatO
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IdempotentSumInfPartIntegralOneSubMem
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
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ThetaAtEqSumHeisOfFourierSum
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPeriodSq
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IdealPeriodLatticeOfCurveDatum
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.InducedTypeThetaGenusOnePermutes
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ThetaSpaceSelfDualPairAtMostLine
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.VacuumUnderAdelicPairModulusOne
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjConjNeBot, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelIndicatorReadsNormPowerUnitVector, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelIndicatorReadsNormPowerUnitVectorStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjConjNeBot =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjConjNeBot", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIdemEmpty\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.OmAtSmulRight\nimport Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SelfDualLatticePairingDual\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqTopOfOneMem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinTensAlgebraMap\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelDatumReferenceTupleSmallField\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TranslateSumVacuumMovedByAdelicPair\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNsmulIntMemLatO\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.IdempotentSumInfPartIntegralOneSubMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.Theta IsDedekindDomain NumberField Finset MeasureTheory
open Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3 Formalism.L2.Indef.Tree.ArchimedeanLeafBounds.Cuts
open Formalism.DivisionValues (vw)
open GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.FunObj.SqNum GlobalTheory.RowTest
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.NormSum (Pair Tup)
open Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.BotSmallDict GlobalTheory.NormExact
open scoped Pointwise
open scoped nonZeroDivisors

noncomputable section




namespace GlobalTheory.SkewLevel

variable {D : D7} {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {LS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)}
  {LT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E)}

theorem conj_ne_bot (P : Finset (Formalism.L2.DIV.Pl D.host.E)) (c : Formalism.L2.DIV.Pl D.host.E → ℕ) :
    D.host.conj • modul P c ≠ ⊥ := fun h => modul_ne_bot P c (by rw [← conj_conj_smul (modul P c), h, Ideal.smul_bot])

theorem conj_conj_ne_bot (P : Finset (Formalism.L2.DIV.Pl D.host.E)) (c : Formalism.L2.DIV.Pl D.host.E → ℕ) :
    D.host.conj • D.host.conj • modul P c ≠ ⊥ := by
  rw [conj_conj_smul]
  exact modul_ne_bot P c

theorem kill (hψ : IsStdChar D ψ (-1)) (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT) {I : Ideal (𝓞 D.host.E)} {y u : WO S T}
    (hy : ∀ m ∈ I, incA D (m : D.host.E) • y ∈ latO S T LS LT (fun _ => True)) (hu : u ∈ latO S T LS LT (fun _ => True))
    {b : 𝓞 D.host.E} (hb : b ∈ D.host.conj • I) : ψ (symplO S T (incA D (b : D.host.E) • u) y) = 1 := by
  rw [GlobalTheory.PlaceModel.symplO_smul, cA_incA_int]
  exact GlobalTheory.LatVac.char_sympl_eq_one hψ hS hT hu (hy _ (mem_conj_smul.1 hb))

theorem smul_finRat_mem (hψ : IsStdChar D ψ (-1)) (hcc : D.host.ccK = ⊤) (gS : S.gram = 1) (hLS : IsStdLat LS)
    (hLT : IsStdLat LT) (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT) (P : Finset (Formalism.L2.DIV.Pl D.host.E))
    (c : Formalism.L2.DIV.Pl D.host.E → ℕ) {z : Matrix (Fin T.rank) (Fin S.rank) D.host.E}
    (hz : z ∈ YYl D (stdL D S.rank) (skewLat D (D.host.conj • modul P c) T.rank)) :
    ∀ m ∈ modul P c, incA D (m : D.host.E) • GlobalTheory.VacUnique.finRat S T z ∈ latO S T LS LT (fun _ => True) := fun m hm => by
  rw [smul_finRat, finRat_mem_iff hψ hcc gS hLS hLT hS hT]
  exact smul_skew_mem (conj_conj_ne_bot P c) hz (by rwa [conj_conj_smul])

theorem kill_of_inId (hψ : IsStdChar D ψ (-1)) (hcc : D.host.ccK = ⊤) (hLS : IsStdLat LS)
    (hLT : IsStdLat LT) (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT) {e : Formalism.L2.Theta.AE D}
    {P : Finset (Formalism.L2.DIV.Pl D.host.E)} (he : GoodIdem e P) {I : Ideal (𝓞 D.host.E)} {t y : WO S T}
    (ht : IsHalf (cA D e) t) (hI : ∀ i j, GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle.InId (D.host.conj • I) (toEAf D (t i j)))
    (hy : ∀ m ∈ I, incA D (m : D.host.E) • y ∈ latO S T LS LT (fun _ => True)) : ψ (symplO S T t y) = 1 := by
  obtain ⟨hinf, hint, -⟩ := GlobalTheory.IdemSumIdeal.isIdemSum_props _ _ (fun _ => 0) (GlobalTheory.RefDatumLev.isIdemSum_conjPl he.1)
  have hee : cA D e * cA D e = cA D e := by rw [← RingHom.map_mul, GlobalTheory.PlaceVec.idemSum_mul_self he.1]
  obtain ⟨n, f, hf⟩ := Submodule.fg_iff_exists_fin_generating_family.1 (IsNoetherian.noetherian (D.host.conj • I))
  have hfI : ∀ k, f k ∈ D.host.conj • I := fun k => hf ▸ Submodule.subset_span ⟨k, rfl⟩
  have hc : ∀ i j, ∃ c : Fin n → Formalism.L2.Theta.AE D, (∀ k, toEAf D (c k) ∈ Formalism.L2.Herm.intAf D.host.F D.host.E) ∧
      toEAf D (t i j) = ∑ k, toEAf D (incA D (f k : D.host.E)) * toEAf D (c k) := fun i j => by
    obtain ⟨h1, h2⟩ := hI i j
    have e1 : Formalism.L2.DIV.idS D.host.F (D.host.conj • I) =
        Ideal.span (Set.range fun k => Formalism.L2.DIV.oToS D.host.F D.host.E (f k)) := by
      rw [Formalism.L2.DIV.idS, ← hf]
      refine (Ideal.map_span _ _).trans ?_
      rw [← Set.range_comp]
      rfl
    rw [e1, Ideal.mem_span_range_iff_exists_fun] at h2
    obtain ⟨r, hr⟩ := h2
    choose c hc using fun k => toEAf_surj (D := D) (r k : EAf D)
    refine ⟨c, fun k => hc k ▸ (r k).2, ?_⟩
    have h3 := congrArg (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype hr

    rw [map_sum] at h3
    refine h3.symm.trans (Finset.sum_congr rfl fun k _ => ?_)
    rw [map_mul, hc, mul_comm]
    rfl
  choose c hc1 hc2 using hc
  let u : Fin n → WO S T := fun k => Matrix.of fun i j => cA D e * c i j k
  have hu1 : ∀ k, IsHalf (cA D e) (u k) := fun k i j => by
    change cA D e * (cA D e * c i j k) = cA D e * c i j k
    rw [← mul_assoc, hee]
  have hu2 : ∀ k, u k ∈ latO S T LS LT (fun _ => True) := fun k =>
    (half_mem_iff hcc hLS hLT hS hT he _ (hu1 k)).2 fun i j => by
      change toEAf D (cA D e * c i j k) ∈ _
      rw [RingHom.map_mul]
      exact mul_mem hint (hc1 i j k)
  have hent : ∀ i j, (∑ k, incA D (f k : D.host.E) • u k) i j = cA D e * ∑ k, incA D (f k : D.host.E) * c i j k :=
    fun i j => by
      rw [Matrix.sum_apply, Finset.mul_sum]
      exact Finset.sum_congr rfl fun k _ => mul_left_comm _ _ _
  have e2 : t = ∑ k, incA D (f k : D.host.E) • u k := half_ext hinf ht
    (fun i j => by rw [hent, ← mul_assoc, hee]) fun i j => by

      rw [hent, ← ht i j, RingHom.map_mul, RingHom.map_mul, hc2, map_sum]
      simp only [RingHom.map_mul]
  rw [e2]
  exact Finset.sum_induction _ (fun t => ψ (symplO S T t y) = 1)
    (fun a b ha hb => by rw [GlobalTheory.PlaceModel.symplO_add_left, AddChar.map_add_eq_mul, ha, hb, one_mul])
    (by rw [GlobalTheory.PlaceModel.symplO_zero_left, AddChar.map_zero_eq_one]) fun k _ => kill hψ hS hT hy (hu2 k) (hfI k)

theorem inId_of_kill (hψ : IsStdChar D ψ (-1)) (hcc : D.host.ccK = ⊤) (gS : S.gram = 1) (hLS : IsStdLat LS)
    (hLT : IsStdLat LT) (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT) {e : Formalism.L2.Theta.AE D}
    {P : Finset (Formalism.L2.DIV.Pl D.host.E)} (he : GoodIdem e P) (c : Formalism.L2.DIV.Pl D.host.E → ℕ) {t : WO S T}
    (ht : IsHalf (cA D e) t) (htΛ : t ∈ latO S T LS LT (fun _ => True))
    (hk : ∀ z ∈ YYl D (stdL D S.rank) (skewLat D (D.host.conj • modul P c) T.rank),
      ψ (symplO S T t (GlobalTheory.VacUnique.finRat S T z)) = 1) (i j) :
    GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle.InId (D.host.conj • modul P c) (toEAf D (t i j)) := by
  have hN : 0 < Ideal.absNorm (D.host.conj • D.host.conj • modul P c) :=
    Nat.pos_of_ne_zero (Ideal.absNorm_eq_zero_iff.not.2 (conj_conj_ne_bot P c))
  have h1 : ∀ s ∈ (((D.host.conj • modul P c : Ideal (𝓞 D.host.E)) : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) /
      (D.host.conj • D.host.conj • modul P c : Ideal (𝓞 D.host.E))),
      toEAf D (incA D (star s) * t i j) ∈ Formalism.L2.Herm.intAf D.host.F D.host.E := fun s hs => by
    have hh : IsHalf (cA D e) (incA D (star s) • t) := fun i j => by
      change cA D e * (incA D (star s) * t i j) = incA D (star s) * t i j
      rw [mul_left_comm, ht]
    refine (half_mem_iff hcc hLS hLT hS hT he _ hh).1 ?_ i j
    refine ((GlobalTheory.LatVac.latO_selfDual_approx_sign D ψ S T LS LT hψ hS hT).1 _ (Matrix.ext fun i j => ?_)).2 fun u hu => ?_
    · have : infPart D (t i j) = 0 := congrFun (congrFun (GlobalTheory.VacUnique.latO_inf S T _ _ _ htΛ) i) j
      change infPart D (incA D (star s) * t i j) = 0
      rw [RingHom.map_mul, this, mul_zero]
    · obtain ⟨γ, hγ, v, hv, rfl⟩ := approx hψ hcc gS hLS hLT hS hT hN hu
      obtain ⟨b, -, hb⟩ := mul_mem_of_skew (conj_conj_ne_bot P c) hs (Ideal.absNorm_mem _)
      have e1 : incA D s • Ideal.absNorm (D.host.conj • D.host.conj • modul P c) • v = incA D (b : D.host.E) • v := by
        rw [hb, mul_comm, RingHom.map_mul, mul_smul]
        congr 1
        rw [← Nat.cast_smul_eq_nsmul (Formalism.L2.Theta.AE D)]
        congr 1
        exact (map_natCast ((incA D).comp (algebraMap (𝓞 D.host.E) D.host.E)) _).symm
      rw [GlobalTheory.PlaceModel.symplO_smul, GlobalTheory.DualPairCheck.cA_incA, star_star, smul_add, GlobalTheory.PlaceModel.symplO_add_right,
        AddChar.map_add_eq_mul, smul_finRat, hk _ (smul_mem_skew _ hs hγ), one_mul, e1]
      exact GlobalTheory.LatVac.char_sympl_eq_one hψ hS hT htΛ (GlobalTheory.VacSign.smul_mem_latO b hv)
  have h2 : ∀ r ∈ ((D.host.conj • modul P c : Ideal (𝓞 D.host.E)) : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E),
      GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle.InId (D.host.conj • modul P c) (toEAf D (incA D (star r) * t i j)) := fun r hr => by
    rw [← div_mul_cancel₀ ((D.host.conj • modul P c : Ideal (𝓞 D.host.E)) : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E)
      (FractionalIdeal.coeIdeal_ne_zero.2 (conj_conj_ne_bot P c))] at hr
    refine FractionalIdeal.mul_induction_on hr (fun s hs m hm => ?_) fun x y hx hy => ?_
    · obtain ⟨m, hm', rfl⟩ := (FractionalIdeal.mem_coeIdeal _).1 hm
      have e1 : star (s * algebraMap (𝓞 D.host.E) D.host.E m) = ((D.host.conj • m : 𝓞 D.host.E) : D.host.E) * star s := by
        rw [star_mul, _root_.Formalism.L2.Herm.star_conj (algebraMap (𝓞 D.host.E) D.host.E m)]
        rfl
      rw [e1, RingHom.map_mul (incA D), mul_assoc]
      exact inId_mul (mem_conj_smul.1 hm') (h1 s hs)
    · rw [star_add, RingHom.map_add (f := _), add_mul, RingHom.map_add (f := _)]
      exact inId_add hx hy
  obtain ⟨b, hb, a, ha, hab⟩ := Ideal.isCoprime_iff_exists.1 (isCoprime_conj he.1 c)
  have h3 := h2 _ (FractionalIdeal.mem_coeIdeal_of_mem _ (Ideal.smul_mem_pointwise_smul D.host.conj _ _ ha))
  have e2 : star (algebraMap (𝓞 D.host.E) D.host.E (D.host.conj • a)) = (a : D.host.E) := by
    change star (D.host.conj (a : D.host.E)) = _
    rw [← _root_.Formalism.L2.Herm.star_conj, star_star]
  have e3 : t i j = incA D (b : D.host.E) * t i j + incA D (a : D.host.E) * t i j := by
    have : (b : D.host.E) + (a : D.host.E) = 1 := by exact_mod_cast congrArg (algebraMap (𝓞 D.host.E) D.host.E) hab
    rw [← add_mul, ← RingHom.map_add (f := _), this, RingHom.map_one, one_mul]
  rw [e2] at h3
  rw [e3, RingHom.map_add (f := _)]
  exact inId_add (inId_mul hb ((half_mem_iff hcc hLS hLT hS hT he _ ht).1 htΛ i j)) h3

theorem heisO_eq_half (hψ : IsStdChar D ψ (-1)) (hcc : D.host.ccK = ⊤) (gS : S.gram = 1) (hLS : IsStdLat LS)
    (hLT : IsStdLat LT) (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT) {e : Formalism.L2.Theta.AE D}
    {P : Finset (Formalism.L2.DIV.Pl D.host.E)} (he : IsIdemSum e P) (c : Formalism.L2.DIV.Pl D.host.E → ℕ) {vac : WO S T → ℂ}
    (hvac : IsLatVac (heisO ψ S T) (latO S T LS LT fun _ => True) vac) {z : Matrix (Fin T.rank) (Fin S.rank) D.host.E}
    (hz : z ∈ YYl D (stdL D S.rank) (skewLat D (D.host.conj • modul P c) T.rank)) :
    heisO ψ S T (e • GlobalTheory.VacUnique.finRat S T (2 • z)) vac = heisO ψ S T (GlobalTheory.VacUnique.finRat S T (2 • z)) vac := by
  have hee : cA D e * cA D e = cA D e := by rw [← RingHom.map_mul, GlobalTheory.PlaceVec.idemSum_mul_self he]
  have hy := smul_finRat_mem hψ hcc gS hLS hLT hS hT P c (nsmul_mem hz 2)
  have hl : (1 - e) • GlobalTheory.VacUnique.finRat S T z ∈ latO S T LS LT (fun _ => True) :=
    GlobalTheory.AdTh.MovedSum.one_sub_smul_mem_latO_pow S T _ _ e P he _ fun s hs => ⟨∑ w ∈ P, c w,
      smul_finRat_mem hψ hcc gS hLS hLT hS hT P c hz _ (by
        rw [← Finset.prod_pow_eq_pow_sum]
        exact Ideal.prod_mem_prod fun w hw => Ideal.pow_mem_pow (hs w hw) _)⟩
  have e0 : cA D e • (1 - e) • GlobalTheory.VacUnique.finRat S T z = cA D e • GlobalTheory.VacUnique.finRat S T z := by
    rw [smul_smul, mul_sub, mul_comm (cA D e) e, he.2, sub_zero, mul_one]
  have hl' : cA D e • GlobalTheory.VacUnique.finRat S T z ∈ latO S T LS LT (fun _ => True) :=
    e0 ▸ GlobalTheory.PlaceModelSum.idem_smul_latO hee hl
  obtain ⟨b, hb, a, ha, hab⟩ := Ideal.isCoprime_iff_exists.1 (isCoprime_conj he c)
  have hA : ∀ w ∈ AddSubgroup.closure {w : Matrix (Fin T.rank) (Fin S.rank) D.host.E |
      ∃ s ∈ (((D.host.conj • modul P c : Ideal (𝓞 D.host.E)) : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) /
        (D.host.conj • D.host.conj • modul P c : Ideal (𝓞 D.host.E))),
        ∃ γ ∈ YYl D (stdL D S.rank) (stdL D T.rank), w = s • γ},
      ψ (symplO S T (incA D (a : D.host.E) • cA D e • GlobalTheory.VacUnique.finRat S T w) (GlobalTheory.VacUnique.finRat S T (2 • z))) = 1 := by
    intro w hw
    induction hw using AddSubgroup.closure_induction with
    | mem w hw =>
      obtain ⟨s, hs, γ, hγ, rfl⟩ := hw
      obtain ⟨b', hb', e1⟩ := mul_mem_of_skew (conj_conj_ne_bot P c) hs (m := a) (by rwa [conj_conj_smul])
      rw [smul_comm, smul_finRat, smul_smul, ← e1, ← smul_finRat, smul_comm]
      exact kill hψ hS hT hy (GlobalTheory.PlaceModelSum.idem_smul_latO hee ((finRat_mem_iff hψ hcc gS hLS hLT hS hT _).2 hγ)) hb'
    | zero => rw [map_zero, smul_zero, smul_zero, GlobalTheory.PlaceModel.symplO_zero_left, AddChar.map_zero_eq_one]
    | add x y _ _ hx hy =>
      rw [map_add (f := _), smul_add, smul_add, GlobalTheory.PlaceModel.symplO_add_left, AddChar.map_add_eq_mul, hx, hy, one_mul]
    | neg x _ hx =>
      have h := AddChar.map_zero_eq_one ψ
      rw [← GlobalTheory.PlaceModel.symplO_zero_left S T (GlobalTheory.VacUnique.finRat S T (2 • z)),
        ← add_neg_cancel (incA D (a : D.host.E) • cA D e • GlobalTheory.VacUnique.finRat S T x), GlobalTheory.PlaceModel.symplO_add_left,
        AddChar.map_add_eq_mul, hx, one_mul] at h
      rwa [map_neg, smul_neg, smul_neg]
  have hB : ψ (symplO S T (cA D e • GlobalTheory.VacUnique.finRat S T z) (GlobalTheory.VacUnique.finRat S T (2 • z))) = 1 := by
    have : (b : D.host.E) + (a : D.host.E) = 1 := by exact_mod_cast congrArg (algebraMap (𝓞 D.host.E) D.host.E) hab
    rw [← one_smul (Formalism.L2.Theta.AE D) (cA D e • GlobalTheory.VacUnique.finRat S T z), ← RingHom.map_one (incA D), ← this,
      RingHom.map_add, add_smul, GlobalTheory.PlaceModel.symplO_add_left, AddChar.map_add_eq_mul, kill hψ hS hT hy hl' hb,
      hA z (skew_mem_closure _ hz), one_mul]
  have h2 : algebraMap D.host.F (AF D.host.F) (1 / 2) * 2 = 1 := by
    rw [← map_ofNat (algebraMap D.host.F (AF D.host.F)) 2, ← map_mul]
    norm_num
  have hC : symplOH S T (e • GlobalTheory.VacUnique.finRat S T (2 • z)) (2 • (1 - e) • GlobalTheory.VacUnique.finRat S T z) =
      -symplO S T (cA D e • GlobalTheory.VacUnique.finRat S T z) (GlobalTheory.VacUnique.finRat S T (2 • z)) := by
    rw [symplOH, two_nsmul ((1 - e) • GlobalTheory.VacUnique.finRat S T z), GlobalTheory.PlaceModel.symplO_add_right,
      GlobalTheory.PlaceModel.symplO_smul, e0, ← GlobalTheory.PlaceModel.symplO_skew, ← two_mul, ← mul_assoc, h2, one_mul]
  have h := GlobalTheory.LatVac.heisO_heisO ψ (e • GlobalTheory.VacUnique.finRat S T (2 • z)) (2 • (1 - e) • GlobalTheory.VacUnique.finRat S T z) vac
  rw [hvac.1 _ hl, hC, AddChar.map_neg_eq_inv, hB, inv_one, one_smul] at h
  rw [h, map_nsmul, smul_comm 2 (1 - e), ← add_smul, add_sub_cancel, one_smul]

end GlobalTheory.SkewLevel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjConjNeBot =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelIndicatorReadsNormPowerUnitVector =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelIndicatorReadsNormPowerUnitVector", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIdemEmpty\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PtHomInjective\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SelfDualLatticePairingDual\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ThetaAtEqSumHeisOfFourierSum\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ActOMemFinSub\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjConjNeBot\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqTopOfOneMem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergFinitePointReadsClassicalTranslation\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndexStandardInfSkewThetaLatticeEqAbsNormPow\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPeriodSq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualSkewIdealLatticeIsSelfDual\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DefiniteThetaPairTestVectorExpansion\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IdealPeriodLatticeOfCurveDatum\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.InducedTypeThetaGenusOnePermutes\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ThetaSpaceSelfDualPairAtMostLine\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ThetaTranslateGaloisRationalityCmPoints\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.TwistedTranslateClassInvariantOfMemThetaSpace\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.VacuumUnderAdelicPairModulusOne\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNsmulIntMemLatO\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.Theta IsDedekindDomain NumberField Finset MeasureTheory
open Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3 Formalism.L2.Indef.Tree.ArchimedeanLeafBounds.Cuts
open Formalism.DivisionValues (vw)
open GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.FunObj.SqNum GlobalTheory.RowTest
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.NormSum (Pair Tup)
open Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.BotSmallDict GlobalTheory.NormExact
open scoped Pointwise

noncomputable section




namespace GlobalTheory.SkewLevel

theorem sum_section {M Q : Type} [AddCommGroup M] [AddCommGroup Q] [Fintype Q] (π : M →+ Q) (Z : Q → M) (hZ : ∀ q, π (Z q) = q)
    (χ : M → ℂ) (hadd : ∀ x y, χ (x + y) = χ x * χ y) (hker : ∀ x, π x = 0 → χ x = 1) {m : M} (hm : χ m ≠ 1) :
    ∑ q, χ (Z q) = 0 := by
  have h1 : ∀ q, χ (Z (q + π m)) = χ m * χ (Z q) := fun q => by
    have e : Z (q + π m) = (Z (q + π m) - (m + Z q)) + (m + Z q) := by abel
    rw [e, hadd, hker _ (by rw [map_sub, map_add (f := _), hZ, hZ]; abel), one_mul, hadd]
  have h2 : ∑ q, χ (Z q) = χ m * ∑ q, χ (Z q) := by
    rw [Finset.mul_sum, ← Equiv.sum_comp (Equiv.addRight (π m)) (fun q => χ (Z q))]
    exact Finset.sum_congr rfl fun q _ => h1 q
  have h3 : (χ m - 1) * ∑ q, χ (Z q) = 0 := by linear_combination -h2
  exact (mul_eq_zero.1 h3).resolve_left (sub_ne_zero.2 hm)

variable {D : D7}

theorem pt_mem_iff {δ : ℂ} {a d : ℕ} (L : Submodule (𝓞 D.host.E) (Fin a → D.host.E))
    (L' : Submodule (𝓞 D.host.E) (Fin d → D.host.E)) (y : VC D a d) :
    y ∈ La D (tor0 D ⊤ δ) L L' ↔ ∃ z ∈ YYl D L L', GlobalTheory.ThetaLatticePoints.ptHom D ⊤ δ a d z = y := by
  constructor
  · intro hy
    have h : La D (tor0 D ⊤ δ) L L' ≤ (YYl D L L').toAddSubgroup.map (GlobalTheory.ThetaLatticePoints.ptHom D ⊤ δ a d) := by
      refine (AddSubgroup.closure_le _).2 ?_
      rintro _ ⟨w, hw, A, hA, rfl⟩
      obtain ⟨c, -, rfl⟩ := (GlobalTheory.CurveLattice.mem_lamOf D ⊤ δ w).1 hw
      exact ⟨((c : D.host.K) : D.host.E) • A, (YYl D L L').smul_mem (algebraMap (𝓞 D.host.K) (𝓞 D.host.E) c) hA,
        GlobalTheory.ThetaLatticePoints.ptHom_smul D ⊤ δ a d c A⟩
    exact h hy
  · rintro ⟨z, hz, rfl⟩
    exact AddSubgroup.subset_closure ⟨δ, AddSubgroup.subset_closure ⟨1, trivial, by simp⟩, z, hz, rfl⟩

theorem reads_sum {ψ : AddChar (AF D.host.F) ℂ} {θ : InfFam D} {S T : HSp D} {a d : ℕ} {hS : S.rank = a} {hT : T.rank = d}
    {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} {r : D.host.E} {ι : Type} (s : Finset ι) (G : ι → VC D a d → ℂ) (f : ι → WO S T → ℂ)
    (h : ∀ i, Reads ψ θ hS hT cc δ r (G i) (f i)) : Reads ψ θ hS hT cc δ r (∑ i ∈ s, G i) (∑ i ∈ s, f i) := by
  induction s using Finset.induction_on with
  | empty => exact ⟨(GlobalTheory.FinWeilO.thetaSub ψ S T).zero_mem, fun w _ => by simp⟩
  | insert i s hi ih =>
    rw [Finset.sum_insert hi, Finset.sum_insert hi]
    exact (h i).add ih

theorem reads_level : ∀ {D : D7} (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (S T : HSp D) {a d : ℕ} (hS : S.rank = a) (hT : T.rank = d) (δ : ℂ),
    D.host.ccK = ⊤ → Setup ψ θ S T ⊤ δ 1 →
    ∀ (LS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)) (LT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E)),
    IsStdLat LS → IsStdLat LT → IsSelfDualC S LS → IsSelfDualC T LT →
    ∀ (e : Formalism.L2.Theta.AE D) (P : Finset (Formalism.L2.DIV.Pl D.host.E)) (c : Formalism.L2.DIV.Pl D.host.E → ℕ), GoodIdem e P →
    IsSBHalf (cA D e) (latO S T LS LT fun _ => True) (cosetFn (cA D e) (D.host.conj • modul P c) (0 : WO S T)) →
    ∀ (κ : ℂ) (e0 : VC D a d → ℂ) (vac : WO S T → ℂ), e0 ∈ Th D (tor0 D ⊤ δ) (stdL D a) (stdL D d) →
    Reads ψ θ hS hT ⊤ δ 1 (κ • e0) vac → IsLatVac (heisO ψ S T) (latO S T LS LT fun _ => True) vac →
    ∀ Tm : (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ),
    IsPlaceModel ψ (symplO S T) (heisO ψ S T) (cA D e) (latO S T LS LT fun _ => True) 1 vac Tm →
    ∃ ζ : ℂ, IsRootOne ζ ∧ Reads ψ θ hS hT ⊤ δ 1
      ((κ * ζ) • ((Real.sqrt ((Ideal.absNorm (D.host.conj • modul P c) : ℝ) ^ (a * d)) : ℂ))⁻¹ •
        Iop D (tor0 D ⊤ δ) (La0 D (tor0 D ⊤ δ) a d) (La D (tor0 D ⊤ δ) (stdL D a) (skewLat D (D.host.conj • modul P c) d)) e0)
      (Tm (cosetFn (cA D e) (D.host.conj • modul P c) 0)) := by
  intro D ψ θ S T a d hS hT δ hcc hset LS LT hLS hLT hSd hTd e P c he _ κ e0 vac he0 hread hvac Tm hTm
  subst hS hT
  have hc := hset.crv
  have hψ := hset.std
  have gS := hset.gS
  have hG := (GlobalTheory.InducedType.induced_type D).1
  have hne := conj_ne_bot P c
  have hidx := GlobalTheory.SkewIndex.index_inter_skew D δ hc _ hne
    (by rw [conj_conj_smul]; exact isCoprime_conj he.1 c) S.rank T.rank
  have hN0 : 0 < Ideal.absNorm (D.host.conj • modul P c) := Nat.pos_of_ne_zero (Ideal.absNorm_eq_zero_iff.not.2 hne)
  have kp : KLat D (tor0 D ⊤ δ) (La D (tor0 D ⊤ δ) (stdL D S.rank) (skewLat D (D.host.conj • modul P c) T.rank)) :=
    Or.inr ⟨_, _, GlobalTheory.NormSum.VacMove.sd_of_moves (GlobalTheory.NormSum.VacMove.moves_one D S.rank),
      GlobalTheory.SkewLatSD.skewLat_sd D _ T.rank hne, rfl⟩
  obtain ⟨-, -, hIm, -, -, -, hq⟩ := GlobalTheory.ThetaLine.theta_line D hG ⊤ δ hc S.rank T.rank _ kp
  have hrep := GlobalTheory.ThetaConj.repInd_of_thSp D _ _ _ (La0 D (tor0 D ⊤ δ) S.rank T.rank) _ e0 hq
    (fun x hx y hy => hIm _ (GlobalTheory.GalTheta.weilElement_smul_mem_thetaLattice D hG ⊤ δ _ _ x hx) y hy) he0
  have hmem0 := pt_mem_iff (δ := δ) (stdL D S.rank) (stdL D T.rank)
  have hmem2 := pt_mem_iff (δ := δ) (stdL D S.rank) (skewLat D (D.host.conj • modul P c) T.rank)
  have hinj := GlobalTheory.ThetaLatticePoints.ptHom_injective D ⊤ (delta_ne_zero hc) S.rank T.rank
  have hkI := fun t ht htΛ hk => inId_of_kill hψ hcc gS hLS hLT hSd hTd he c (t := t) ht htΛ hk
  have hsm := fun z hz => smul_finRat_mem hψ hcc gS hLS hLT hSd hTd P c (z := z) hz
  have hhalf := fun z hz => heisO_eq_half hψ hcc gS hLS hLT hSd hTd he.1 c hvac (z := z) hz
  have hsk := fun z hz m hm => smul_skew_mem (conj_conj_ne_bot P c) (a := S.rank) (d := T.rank) (z := z) hz (m := m) hm
  rw [conj_conj_smul] at hsk
  set I := D.host.conj • modul P c with hI
  set p := GlobalTheory.ThetaLatticePoints.ptHom D ⊤ δ S.rank T.rank with hp
  set Y := YYl D (stdL D S.rank) (skewLat D I T.rank) with hY
  set A₁ := La0 D (tor0 D ⊤ δ) S.rank T.rank with hA₁
  set A₂ := La D (tor0 D ⊤ δ) (stdL D S.rank) (skewLat D I T.rank) with hA₂
  haveI : Finite (A₂ ⧸ A₁.addSubgroupOf A₂) := AddSubgroup.index_ne_zero_iff_finite.1 (by rw [hidx]; positivity)
  letI : Fintype (A₂ ⧸ A₁.addSubgroupOf A₂) := Fintype.ofFinite _
  have hcard : Fintype.card (A₂ ⧸ A₁.addSubgroupOf A₂) = Ideal.absNorm I ^ (S.rank * T.rank) := by
    rw [← hidx, AddSubgroup.index_eq_card, Nat.card_eq_fintype_card]
  obtain ⟨m, hm, u, hmu⟩ := exists_add_two he c
  have hz : ∀ q : A₂ ⧸ A₁.addSubgroupOf A₂, ∃ z ∈ Y, ((Quotient.out q : A₂) : VC D S.rank T.rank) - p (2 • z) ∈ A₁ := fun q => by
    obtain ⟨z, hz, ez⟩ := (hmem2 _).1 (Quotient.out q).2
    refine ⟨u • z, Y.smul_mem u hz, (hmem0 _).2 ⟨m • z, hsk z hz m hm, ?_⟩⟩
    rw [← ez, ← map_sub, two_nsmul, ← add_smul, ← mul_two, eq_sub_of_add_eq hmu, sub_smul, one_smul]
  choose z hzY hzq using hz
  have hp2 : ∀ w ∈ Y, p w ∈ A₂ := fun w hw => (hmem2 _).2 ⟨w, hw, rfl⟩
  let π : Y →+ A₂ ⧸ A₁.addSubgroupOf A₂ := (QuotientAddGroup.mk' _).comp
    ((p.comp Y.toAddSubgroup.subtype).codRestrict A₂ fun w => hp2 w w.2)
  have hπ : ∀ q, π ⟨2 • z q, nsmul_mem (hzY q) 2⟩ = q := fun q => by
    conv_rhs => rw [← QuotientAddGroup.out_eq' q]
    refine QuotientAddGroup.eq.2 ?_
    rw [AddSubgroup.mem_addSubgroupOf, neg_add_eq_sub]
    exact hzq q
  have hπ0 : ∀ w : Y, π w = 0 → GlobalTheory.VacUnique.finRat S T (-w.1) ∈ latO S T LS LT (fun _ => True) := fun w hw => by
    obtain ⟨w', hw', ew⟩ := (hmem0 (p w.1)).1
      ((QuotientAddGroup.eq_zero_iff (N := A₁.addSubgroupOf A₂) (⟨p w.1, hp2 w w.2⟩ : A₂)).1 hw)
    rw [finRat_mem_iff hψ hcc gS hLS hLT hSd hTd, ← hinj ew]
    exact neg_mem hw'
  have hn : ((Ideal.absNorm I ^ (S.rank * T.rank) : ℕ) : ℂ) ≠ 0 := Nat.cast_ne_zero.2 (by positivity)
  have hfun : cosetFn (cA D e) I (0 : WO S T) = ∑ q, ((Ideal.absNorm I ^ (S.rank * T.rank) : ℕ) : ℂ)⁻¹ • fun t =>
      ψ (symplO S T t (e • GlobalTheory.VacUnique.finRat S T (2 • -z q))) * halfInd (cA D e) (latO S T LS LT fun _ => True) t := by
    funext t
    rw [Finset.sum_apply]
    simp only [Pi.smul_apply, smul_eq_mul]
    rw [← Finset.mul_sum, ← Finset.sum_mul]
    simp only [cosetFn, halfInd, Matrix.zero_apply, sub_zero]
    by_cases h1 : t ∈ latO S T LS LT (fun _ => True) ∧ IsHalf (cA D e) t
    · have e1 : ∀ y, symplO S T t (e • y) = symplO S T t y := fun y => by
        rw [← cA_cA e, ← GlobalTheory.PlaceModel.symplO_smul, (GlobalTheory.PlaceModel.mem_half S T).1 ((GlobalTheory.PlaceModel.isHalf_iff S T).1 h1.2)]
      simp only [e1]
      rw [if_pos h1, mul_one]
      by_cases h2 : ∀ i j, GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle.InId I (toEAf D (t i j))
      · rw [if_pos ⟨h1.2, h2⟩, Finset.sum_congr rfl fun q _ =>
          kill_of_inId hψ hcc hLS hLT hSd hTd he h1.2 h2 (hsm _ (nsmul_mem (neg_mem (hzY q)) 2)),
          Finset.sum_const, Finset.card_univ, hcard, nsmul_eq_mul, mul_one, inv_mul_cancel₀ hn]
      · rw [if_neg fun h => h2 h.2]
        obtain ⟨w, hw, hw1⟩ : ∃ w ∈ Y, ψ (symplO S T t (GlobalTheory.VacUnique.finRat S T w)) ≠ 1 := by
          by_contra h
          push_neg at h
          exact h2 (hkI t h1.2 h1.1 h)
        have h3 := sum_section π (fun q => ⟨2 • z q, nsmul_mem (hzY q) 2⟩) hπ
          (fun w => ψ (symplO S T t (GlobalTheory.VacUnique.finRat S T (-w.1))))
          (fun x y => by
            rw [Submodule.coe_add, neg_add, map_add (f := _), GlobalTheory.PlaceModel.symplO_add_right, AddChar.map_add_eq_mul])
          (fun x hx => GlobalTheory.LatVac.char_sympl_eq_one hψ hSd hTd h1.1 (hπ0 x hx)) (m := ⟨-w, neg_mem hw⟩)
          (by simpa only [neg_neg] using hw1)
        simp only [smul_neg]
        rw [h3, mul_zero]
    · rw [if_neg h1, mul_zero, mul_zero, if_neg fun h => h1 ⟨(half_mem_iff hcc hLS hLT hSd hTd he t h.1).2 fun i j => (h.2 i j).1, h.1⟩]
  have hv : Tm (halfInd (cA D e) (latO S T LS LT fun _ => True)) = vac := by simpa using hTm.vac
  have hee := GlobalTheory.PlaceVec.idemSum_mul_self he.1
  have hTmΦ : Tm (cosetFn (cA D e) I 0) = ((Ideal.absNorm I ^ (S.rank * T.rank) : ℕ) : ℂ)⁻¹ •
      ∑ q, heisO ψ S T (finPt rfl rfl 1 (2 • z q)) vac := by

    rw [hfun, map_sum, Finset.smul_sum]
    refine Finset.sum_congr rfl fun q _ => ?_
    have e1 : finPt (rfl : S.rank = S.rank) (rfl : T.rank = T.rank) 1 (2 • z q) = GlobalTheory.VacUnique.finRat S T (2 • -z q) := by
      unfold finPt
      congr 1
      refine Matrix.ext fun i j => ?_
      simp
    rw [map_smul, hTm.modul _ (GlobalTheory.isSBHalf_halfInd _ _) _ (fun i j => by
      change cA D (cA D e) * (e * _) = e * _
      rw [cA_cA, ← mul_assoc, hee]), hv, hhalf _ (neg_mem (hzY q)), e1]
  have hR := (reads_sum Finset.univ _ _ fun q =>
    heisO_finPt_reads ψ θ S T rfl rfl ⊤ δ 1 hset _ _ hread (2 • z q)).smul ((Ideal.absNorm I ^ (S.rank * T.rank) : ℕ) : ℂ)⁻¹
  refine ⟨1, IsRootOne.one, ?_⟩
  rw [hTmΦ]
  convert hR using 1
  have hU : ∀ q : A₂ ⧸ A₁.addSubgroupOf A₂, ∀ y, al D (tor0 D ⊤ δ) ((Quotient.out q : A₂) : VC D S.rank T.rank) *
      U D (tor0 D ⊤ δ) ((Quotient.out q : A₂) : VC D S.rank T.rank) e0 y =
        U D (tor0 D ⊤ δ) (pt D (tor0 D ⊤ δ) δ (2 • z q)) e0 y := fun q y => by
    have h1 := congrFun (hrep _ (Quotient.out q).2 _ (hp2 _ (nsmul_mem (hzY q) 2)) (hzq q)) y
    obtain ⟨k, hk⟩ := hq _ (hp2 _ (hzY q))
    have h2 : al D (tor0 D ⊤ δ) (p (2 • z q)) = 1 := by
      rw [GlobalTheory.ThetaConj.al_of_qH D _ _ (2 * (2 * k)) (by
        rw [map_nsmul, GlobalTheory.NormSum.Expand.qH_nsmul, hk]; push_cast; ring), zpow_mul]
      norm_num
    simp only [GlobalTheory.ThetaConj.aU, h2, one_mul] at h1
    exact h1
  have hs : ((Real.sqrt ((Ideal.absNorm I : ℝ) ^ (S.rank * T.rank)) : ℂ))⁻¹ *
      ((Real.sqrt (((Ideal.absNorm I ^ (S.rank * T.rank) : ℕ) : ℝ)) : ℂ))⁻¹ =
        ((Ideal.absNorm I ^ (S.rank * T.rank) : ℕ) : ℂ)⁻¹ := by
    have h1 : (((Ideal.absNorm I ^ (S.rank * T.rank) : ℕ) : ℝ)) = (Ideal.absNorm I : ℝ) ^ (S.rank * T.rank) := by
      push_cast; rfl
    rw [h1, ← mul_inv, ← Complex.ofReal_mul, Real.mul_self_sqrt (by positivity)]
    push_cast; rfl
  funext y
  simp only [Pi.smul_apply, smul_eq_mul, Iop, finsum_eq_sum_of_fintype, hidx, hU, Finset.sum_apply]
  rw [← hs]
  simp only [U, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun q _ => by ring

end GlobalTheory.SkewLevel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelIndicatorReadsNormPowerUnitVector =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelIndicatorReadsNormPowerUnitVectorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelIndicatorReadsNormPowerUnitVectorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIdemEmpty\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelIndicatorReadsNormPowerUnitVector\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.Theta IsDedekindDomain NumberField Finset MeasureTheory
open Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3 Formalism.L2.Indef.Tree.ArchimedeanLeafBounds.Cuts
open Formalism.DivisionValues (vw)
open GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.FunObj.SqNum GlobalTheory.RowTest
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.NormSum (Pair Tup)
open Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.BotSmallDict GlobalTheory.NormExact
open scoped Pointwise


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelIndicatorReadsNormPowerUnitVectorStatement =====
