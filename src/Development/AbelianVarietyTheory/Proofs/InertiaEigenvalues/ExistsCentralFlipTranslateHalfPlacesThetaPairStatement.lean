module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlipIdxNeZero
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.BaseIntSet
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.NotMemSpanOfCommute
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.OmVacuumEqSplitFacSmulSum
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IdemSumMulOfSubset
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipVacuumEqMultipleOfTranslateMean
public import Formalism.LocalToGlobal.Divisibility.DefGroupLemmas
public import Formalism.LocalToGlobal.IndefiniteReal.DatumVec
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinPartConjMem
public import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IMemSiegel
public import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsSystem
public import Formalism.LocalToGlobal.HeckeThetaElements.IsHeckeElt
public import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralConjugateFlipScalarFiniteAdelicStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjHalfInvariantFormIdemSumVacuumNeZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.VacuumTranslatesConjHalfSqNormEqCard
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsFlipDet
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulMemLatO
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.Divisors.PerCEmb
import Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsStabForm
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.TypeStar
import Development.AbelianVarietyTheory.Definitions.ThetaValues.PolyDerivSmulLetter
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LowerTriangularMul
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.JetIndepStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.Signature
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipMapsHalfTranslatesSpan, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIdemSumConjugatePlacesSubsetEqFlip, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilOperatorInvCentralFlipInvariantFormEq, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipSplitPlacesInvariantFormPhase, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepresentationPreservesNorm, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MovedVacuumTranslateSumFlipScalar, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralFlipTranslateHalfPlacesThetaPair, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralFlipTranslateHalfPlacesThetaPairStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipMapsHalfTranslatesSpan =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipMapsHalfTranslatesSpan", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlipIdxNeZero\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.BaseIntSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.NotMemSpanOfCommute\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.OmVacuumEqSplitFacSmulSum\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulMemLatO\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IdemSumMulOfSubset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

noncomputable section

namespace GlobalTheory.FlipTranslates

open GlobalTheory.SplitScalar

variable {D : D7}

theorem symplO_nsmul_right (V W : HSp D) (x y : WO V W) (k : ℕ) :
    symplO V W x (k • y) = k • symplO V W x y := by
  induction k with
  | zero => rw [zero_nsmul, zero_nsmul, symplO_zero_right]
  | succ k ih => rw [succ_nsmul, _root_.GlobalTheory.LatVac.symplO_add_right, ih, succ_nsmul]

theorem flipElt_mul_of_half {e eT x : AE D} (m : ℕ) (hx : e * x = x) (h1 : e * eT = eT) (h3 : e * e = e)
    (h5 : e * cA D eT = 0) : flipElt eT m * x = (e - eT) * x + (m : AE D) * (eT * x) := by
  unfold flipElt
  linear_combination (-(cA D eT * (incA D ((m : D.host.E)⁻¹) - 1) + 1 - e)) * hx +
    (incA D ((m : D.host.E)⁻¹) - 1) * x * h5 - x * h3

theorem fix_of_idemSum (ψ : AddChar (AF D.host.F) ℂ) (V W : HSp D) {Λ : AddSubgroup (WO V W)}
    (hst : ∀ a : AE D, a * a = a → ∀ u ∈ Λ, a • u ∈ Λ)
    {f₀ : WO V W → ℂ} (hf : IsLatVac (heisO ψ V W) Λ f₀) {ι : Type} (S : Finset ι) (g : ι → AE D) (E : AE D)
    (hEs : E = ∑ i ∈ S, g i) (hg : ∀ i ∈ S, IsSplitIdem D (g i)) (hgE : ∀ i ∈ S, E * g i = g i)
    (hE : E * cA D E = 0) {u : WO V W} (hu : u ∈ Λ) (hhu : IsHalf E u) :
    heisO ψ V W u f₀ = f₀ := by
  have hdec : u = ∑ i ∈ S, g i • u := by
    ext a b
    rw [Matrix.sum_apply]
    simp only [Matrix.smul_apply, smul_eq_mul]
    rw [← Finset.sum_mul, ← hEs, hhu a b]
  have horth : ∀ i ∈ S, cA D (g i) * E = 0 := by
    intro i hi
    have h1 : cA D (g i) = cA D (g i) * cA D E := by rw [← map_mul, mul_comm, hgE i hi]
    rw [h1, mul_assoc, mul_comm (cA D E) E, hE, mul_zero]
  have key : ∀ S' : Finset ι, S' ⊆ S → heisO ψ V W (∑ i ∈ S', g i • u) f₀ = f₀ := by
    intro S'
    induction S' using Finset.induction_on with
    | empty => intro _; rw [Finset.sum_empty, heisO_zero]
    | insert j S' hj ih =>
      intro hS'
      have hjS : j ∈ S := hS' (Finset.mem_insert_self j S')
      have hS'S : S' ⊆ S := fun x hx => hS' (Finset.mem_insert_of_mem hx)
      rw [Finset.sum_insert hj]
      have hhalf : IsHalf E (∑ i ∈ S', g i • u) := by
        intro a b
        rw [Matrix.sum_apply, Finset.mul_sum]
        refine Finset.sum_congr rfl fun i hi => ?_
        simp only [Matrix.smul_apply, smul_eq_mul]
        rw [← mul_assoc, hgE i (hS'S hi)]
      have hsp := hg j hjS
      rw [heisO_add_of_orth ψ V W (symplO_eq_zero V W (horth j hjS) (isHalf_smul hsp.1 u) hhalf), ih hS'S]
      exact hf.2 (g j) hsp (g j • u) (hst _ hsp.1 u hu) (isHalf_smul hsp.1 u)
  rw [hdec]
  exact key S subset_rfl



theorem flip_translates : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (V W : HSp D) (χV χW : (AE D)ˣ →* Circle) (om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)) (ΛV : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)) (ΛW : Submodule (𝓞 D.host.E) (Fin W.rank → D.host.E)) (sW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ) (f₀ : WO V W → ℂ), VacPair ψ θ V W χV χW om ΛV ΛW sW f₀ → ∀ (T : Finset (Formalism.L2.DIV.Pl D.host.E)) (m : ℕ) (eT : AE D) (z : GA D V) (s : ℂ) (Y : Finset (WO V W)), IsIdemSum eT T → Odd m → Nat.Coprime m (GlobalTheory.Tow.badN D) → (∀ PP ∈ T, ((m : ℕ) : 𝓞 D.host.E) ∈ PP.asIdeal) → Formalism.L2.Theta.mt V z = flipElt eT m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) → s ≠ 0 → (∀ y ∈ Y, IsHalf (cA D eT) y ∧ m • y ∈ latO V W (ΛV : Set (Fin V.rank → D.host.E)) (ΛW : Set (Fin W.rank → D.host.E)) (fun _ => True)) → om (z⁻¹, 1) f₀ = s • ∑ y ∈ Y, heisO ψ V W y f₀ → ∀ (M u : ℕ) (e e' : AE D) (P : Finset (Formalism.L2.DIV.Pl D.host.E)) (O : Subring ℂ), M = m * u → (∀ PP ∈ T, ((u : ℕ) : 𝓞 D.host.E) ∉ PP.asIdeal) → IsIdemSum e P → T ⊆ P → e' = e - eT + cA D eT → zeta M ∈ O → ∀ f ∈ trSp ψ V W ΛV ΛW f₀ e M O, ∃ F ∈ trSp ψ V W ΛV ΛW f₀ e' M O, om (z, 1) (s • F) = f := by
  intro D ψ θ V W χV χW om ΛV ΛW sW f₀ hV T m eT z s Y hT hm hmb hmT hz hs hY hom M u e e' P O hM hu he hTP he' hO
  subst he'
  have hvac := hV.2.2.2.2.2.2.2.2
  have hweil := hV.1.weil
  have hth : IsThetaFunO ψ V W f₀ := hvac.2.theta
  have hlat := hvac.2.lat
  obtain ⟨⟨es, hes, hsum⟩, h4⟩ := hT
  have hT' : IsIdemSum eT T := ⟨⟨es, hes, hsum⟩, h4⟩
  have h1 : e * eT = eT := GlobalTheory.Tow.idemSum_mul_of_subset hT' he hTP
  have h2 : eT * eT = eT := GlobalTheory.Tow.idemSum_mul_of_subset hT' hT' subset_rfl
  have h3 : e * e = e := GlobalTheory.Tow.idemSum_mul_of_subset he he subset_rfl
  have h5 : e * cA D eT = 0 := by
    have h := he.2
    calc e * cA D eT = e * cA D (e * eT) := by rw [h1]
      _ = e * cA D e * cA D eT := by rw [map_mul, mul_assoc]
      _ = 0 := by rw [h, zero_mul]
  have h6 : cA D eT * cA D eT = cA D eT := by rw [← map_mul, h2]
  have hm0 : m ≠ 0 := hm.pos.ne'
  have hcc : cA D (cA D eT) = eT := _root_.Formalism.L2.Theta.cA_cA eT
  have hst : ∀ a : AE D, a * a = a → ∀ w ∈ latO V W (ΛV : Set (Fin V.rank → D.host.E))
      (ΛW : Set (Fin W.rank → D.host.E)) (fun _ => True), a • w ∈ latO V W (ΛV : Set (Fin V.rank → D.host.E))
      (ΛW : Set (Fin W.rank → D.host.E)) (fun _ => True) := fun a ha w hw => idem_smul_mem ha w hw
  have hesT : ∀ PP ∈ T, eT * es PP = es PP := by
    intro PP hPP
    rw [hsum, Finset.sum_mul, Finset.sum_eq_single_of_mem PP hPP]
    · exact (hes PP hPP).1.1
    · intro Q hQ hne
      exact GlobalTheory.Tow.idemAt_orth (hes Q hQ) (hes PP hPP) hne

  have hfixT : ∀ w ∈ latO V W (ΛV : Set (Fin V.rank → D.host.E)) (ΛW : Set (Fin W.rank → D.host.E)) (fun _ => True),
      IsHalf eT w → heisO ψ V W w f₀ = f₀ := fun w hw hhw =>
    GlobalTheory.FlipTranslates.fix_of_idemSum ψ V W hst hlat T es eT hsum (fun PP hPP => (hes PP hPP).1) hesT h4 hw hhw
  have hfixC : ∀ w ∈ latO V W (ΛV : Set (Fin V.rank → D.host.E)) (ΛW : Set (Fin W.rank → D.host.E)) (fun _ => True),
      IsHalf (cA D eT) w → heisO ψ V W w f₀ = f₀ := fun w hw hhw =>
    GlobalTheory.FlipTranslates.fix_of_idemSum ψ V W hst hlat T (fun PP => cA D (es PP)) (cA D eT)
      (by rw [hsum, map_sum]) (fun PP hPP => isSplitIdem_conj (hes PP hPP).1)
      (fun PP hPP => by rw [← map_mul, hesT PP hPP]) (by rw [hcc, mul_comm, h4]) hw hhw
  have hT0 : u = 0 → eT = 0 := by
    intro hu0
    have hTe : T = ∅ := by
      by_contra hne
      obtain ⟨PP, hPP⟩ := Finset.nonempty_iff_ne_empty.mpr hne
      apply hu PP hPP
      rw [hu0, Nat.cast_zero]
      exact zero_mem _
    rw [hsum, hTe, Finset.sum_empty]
  have hmt1 : Formalism.L2.Theta.mt W 1 = 1 := by unfold Formalism.L2.Theta.mt; rw [map_one]; rfl
  have hidem : (e - eT) * (e - eT) = e - eT := by linear_combination h3 - 2 * h1 + h2
  let Φ : Module.End ℂ (WO V W → ℂ) := s⁻¹ • om (z⁻¹, 1)
  have hgen : ∀ y : WO V W, IsHalf e y → M • y ∈ latO V W (ΛV : Set (Fin V.rank → D.host.E))
      (ΛW : Set (Fin W.rank → D.host.E)) (fun _ => True) →
      Φ (heisO ψ V W y f₀) ∈ trSp ψ V W ΛV ΛW f₀ (e - eT + cA D eT) M O := by
    intro y hy hMy
    by_cases hf0 : f₀ = 0
    · have h0 : heisO ψ V W y f₀ = 0 := by
        subst hf0
        funext w
        simp [heisO]
      rw [h0, map_zero]
      exact zero_mem _
    set lam : WO V W := m • (eT • y) with hlam
    set b : WO V W := (e - eT) • y with hb
    have hay : actO V W z⁻¹ 1 y = b + lam := by
      show HMul.hMul (HMul.hMul (Formalism.L2.Theta.mt W 1) y) (Formalism.L2.Theta.mt V z⁻¹⁻¹) = _
      rw [inv_inv, hz, hmt1, Matrix.one_mul, Matrix.mul_smul, Matrix.mul_one]
      ext i j
      rw [Matrix.smul_apply, smul_eq_mul, GlobalTheory.FlipTranslates.flipElt_mul_of_half m (hy i j) h1 h3 h5,
        Matrix.add_apply, hb, hlam]
      simp only [Matrix.smul_apply, smul_eq_mul, nsmul_eq_mul]
    have hlamT : IsHalf eT lam := isHalf_nsmul (isHalf_smul h2 y) m
    have hlam0 : u = 0 → lam = 0 := by
      intro hu0
      rw [hlam, hT0 hu0, zero_smul, smul_zero]
    have hlamΛ : lam ∈ latO V W (ΛV : Set (Fin V.rank → D.host.E)) (ΛW : Set (Fin W.rank → D.host.E))
        (fun _ => True) := by
      by_cases hu0 : u = 0
      · rw [hlam0 hu0]; exact zero_mem _
      have huE : (u : D.host.E) ≠ 0 := Nat.cast_ne_zero.mpr hu0
      have hinc : incA D ((u : D.host.E)⁻¹) * (u : AE D) = 1 := by
        rw [← map_natCast (incA D) u, ← map_mul, inv_mul_cancel₀ huE, map_one]
      have heq : lam = (eT * incA D ((u : D.host.E)⁻¹)) • (M • y) := by
        ext i j
        simp only [hlam, Matrix.smul_apply, smul_eq_mul, nsmul_eq_mul, hM, Nat.cast_mul]
        linear_combination (-((m : AE D) * eT * y i j)) * hinc
      rw [heq]
      refine GlobalTheory.LatticeStable.smul_mem_latO D V W _ _ _ _ ?_ _ hMy

      rw [hsum, Finset.sum_mul, map_sum]
      refine AddSubgroup.sum_mem _ fun PP hPP => ?_
      have hx := (hes PP hPP).2 ((u : ℕ) : 𝓞 D.host.E) (Nat.cast_ne_zero.mpr hu0)
      have hc : (((u : ℕ) : 𝓞 D.host.E) : D.host.E) = (u : D.host.E) := by simp
      rw [hc] at hx
      by_contra hn
      exact hu PP hPP (hx.2 hn)
    have hfl : heisO ψ V W lam f₀ = f₀ := hfixT lam hlamΛ hlamT
    have hbh : IsHalf (e - eT) b := isHalf_smul hidem y
    have hblam : symplO V W b lam = 0 := by
      refine symplO_eq_zero V W ?_ hbh hlamT
      rw [map_sub]
      linear_combination (-cA D e) * h1 + eT * he.2 - h4
    have hby : ∀ y'' ∈ Y, symplO V W b y'' = 0 := by
      intro y'' hy''
      refine symplO_eq_zero V W ?_ hbh (hY y'' hy'').1
      rw [← map_mul, sub_mul, h1, h2, sub_self, map_zero]
    have hpow : ∀ y'' ∈ Y, ψ (symplO V W lam y'') ^ m = 1 := by
      intro y'' hy''
      have hmy := hfixC (m • y'') (hY y'' hy'').2 (isHalf_nsmul (hY y'' hy'').1 m)
      have h := heisO_comm ψ V W lam (m • y'') f₀
      rw [hmy, hfl, hmy, symplO_nsmul_right, AddChar.map_nsmul_eq_pow] at h
      obtain ⟨w, hw⟩ := Function.ne_iff.mp hf0
      have h' := congrFun h w
      simp only [Pi.smul_apply, smul_eq_mul, Pi.zero_apply] at h' hw
      have h'' : (ψ (symplO V W lam y'') ^ m - 1) * f₀ w = 0 := by linear_combination -h'
      rcases mul_eq_zero.mp h'' with h0 | h0
      · exact sub_eq_zero.mp h0
      · exact absurd h0 hw
    have hcO : ∀ y'' ∈ Y, ψ (symplO V W lam y'') ∈ O := by
      intro y'' hy''
      by_cases hM0 : M = 0
      · have hu0 : u = 0 := by
          rw [hM] at hM0
          rcases mul_eq_zero.mp hM0 with h | h
          · exact absurd h hm0
          · exact h
        rw [hlam0 hu0, symplO_zero_left, AddChar.map_zero_eq_one]
        exact one_mem _
      have hprim := Complex.isPrimitiveRoot_exp M hM0
      haveI : NeZero M := ⟨hM0⟩
      have hcM : ψ (symplO V W lam y'') ^ M = 1 := by rw [hM, pow_mul, hpow y'' hy'', one_pow]
      obtain ⟨i, -, hi⟩ := hprim.eq_pow_of_pow_eq_one hcM
      rw [← hi]
      exact pow_mem hO i
    have hterm : ∀ y'' ∈ Y, heisO ψ V W (b + lam) (heisO ψ V W y'' f₀) =
        ψ (symplO V W lam y'') • heisO ψ V W (b + y'') f₀ := by
      intro y'' hy''
      rw [heisO_add_of_orth ψ V W hblam, heisO_comm ψ V W lam y'', hfl, heisO_smul,
        ← heisO_add_of_orth ψ V W (hby y'' hy'')]
    have hΦ : Φ (heisO ψ V W y f₀) = ∑ y'' ∈ Y, ψ (symplO V W lam y'') • heisO ψ V W (b + y'') f₀ := by
      show s⁻¹ • om (z⁻¹, 1) (heisO ψ V W y f₀) = _
      rw [hweil.om_heis _ _ _ _ hth, hay, hom, heisO_smul, heisO_sum, smul_smul, inv_mul_cancel₀ hs, one_smul]
      exact Finset.sum_congr rfl hterm
    rw [hΦ]
    refine Submodule.sum_mem _ fun y'' hy'' => ?_
    have hsm : ψ (symplO V W lam y'') • heisO ψ V W (b + y'') f₀ =
        (⟨_, hcO y'' hy''⟩ : O) • heisO ψ V W (b + y'') f₀ := rfl
    rw [hsm]
    refine Submodule.smul_mem _ _ (Submodule.subset_span ⟨b + y'', ?_, ?_, rfl⟩)
    · refine isHalf_add (fun i j => ?_) (fun i j => ?_)
      · have hyij := hy i j
        simp only [hb, Matrix.smul_apply, smul_eq_mul]
        linear_combination (y i j) * (h3 - 2 * h1 + h2 + h5 - h4)
      · have hy2 := (hY y'' hy'').1 i j
        linear_combination (1 - (e - eT + cA D eT)) * hy2 + y'' i j * (h5 - h4 + h6)
    · rw [nsmul_add]
      refine add_mem ?_ ?_
      · rw [hb, smul_comm]
        exact idem_smul_mem hidem _ hMy
      · rw [hM, mul_comm, ← smul_smul]
        exact AddSubgroup.nsmul_mem _ (hY y'' hy'').2 u
  have hall : ∀ g ∈ trSp ψ V W ΛV ΛW f₀ e M O, Φ g ∈ trSp ψ V W ΛV ΛW f₀ (e - eT + cA D eT) M O := by
    intro g hg
    induction hg using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨y, hy, hMy, rfl⟩ := hx
      exact hgen y hy hMy
    | zero => rw [map_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
    | smul a x _ hx => rw [LinearMap.map_smul_of_tower]; exact Submodule.smul_mem _ a hx
  intro f hf
  refine ⟨Φ f, hall f hf, ?_⟩
  show om (z, 1) (s • (s⁻¹ • om (z⁻¹, 1) f)) = f
  rw [smul_smul, mul_inv_cancel₀ hs, one_smul, ← Module.End.mul_apply, ← map_mul, Prod.mk_mul_mk,
    mul_inv_cancel, mul_one, ← Prod.one_eq_mk, map_one, Module.End.one_apply]

end GlobalTheory.FlipTranslates

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipMapsHalfTranslatesSpan =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIdemSumConjugatePlacesSubsetEqFlip =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIdemSumConjugatePlacesSubsetEqFlip", "h": "module\n\npublic import Formalism.LocalToGlobal.Divisibility.DefGroupLemmas\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinPartConjMem\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IdemSumMulOfSubset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PerCEmb\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IMemSiegel\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsSystem\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\nimport Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

namespace GlobalTheory.FlipIdemSum

open Formalism.L2.NTheta (IsIdemAt)

theorem idemSum_flip_subset : ∀ (D : D7) (e eT e' : AE D) (P T : Finset (Formalism.L2.DIV.Pl D.host.E)), IsIdemSum e P → IsIdemSum eT T → T ⊆ P → IsIdemSum e' ((P \ T) ∪ T.image Formalism.L2.DIV.conjPl) → e' = e - eT + cA D eT := by
  intro D e eT e' P T he hT hTP he'
  obtain ⟨⟨es, hes, hsum⟩, hc⟩ := he
  obtain ⟨⟨ts, hts, htsum⟩, -⟩ := hT
  obtain ⟨⟨gs, hgs, hgsum⟩, -⟩ := he'
  have hmul : ∀ Q ∈ P, e * es Q = es Q := fun Q hQ => by
    rw [hsum, Finset.sum_mul, Finset.sum_eq_single_of_mem Q hQ]
    · exact (hes Q hQ).1.1
    · intro R hR hne
      exact GlobalTheory.Tow.idemAt_orth (hes R hR) (hes Q hQ) hne
  have hconj : ∀ PP ∈ P, IsIdemAt (cA D (es PP)) (Formalism.L2.DIV.conjPl PP) := fun PP hPP =>
    GlobalTheory.MovedIdem.isIdemAt_conj (hes PP hPP) fun _ => Iff.rfl
  have hne : ∀ (a : AE D) (Q : HeightOneSpectrum (𝓞 D.host.E)), IsIdemAt a Q → a ≠ 0 := by
    rintro a Q h rfl
    obtain ⟨x, hx, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot Q.ne_bot
    have := (h.2 x hx0).1 hx
    rw [zero_mul, RingHom.map_zero] at this
    exact this (zero_mem _)
  have hdisj : Disjoint (P \ T) (T.image Formalism.L2.DIV.conjPl) := by
    rw [Finset.disjoint_left]
    intro Q hQ hQ'
    obtain ⟨PP, hPP, rfl⟩ := Finset.mem_image.1 hQ'
    have hPPP := hTP hPP
    have h1 := hmul _ (Finset.mem_sdiff.1 hQ).1
    rw [GlobalTheory.Tow.idemAt_unique (hes _ (Finset.mem_sdiff.1 hQ).1) (hconj PP hPPP)] at h1
    have hea' : cA D e * cA D (es PP) = cA D (es PP) := by rw [← map_mul, hmul PP hPPP]
    exact hne _ _ (hconj PP hPPP)
      (by linear_combination (-1 : AE D) * h1 - e * hea' + cA D (es PP) * hc)
  have hinj : ∀ a ∈ T, ∀ b ∈ T, Formalism.L2.DIV.conjPl a = Formalism.L2.DIV.conjPl b → a = b := fun a _ b _ hab => by
    rw [← Formalism.L2.DIV.conjPl_conjPl a, hab, Formalism.L2.DIV.conjPl_conjPl b]
  have hA : ∑ Q ∈ P \ T, gs Q = ∑ Q ∈ P \ T, es Q := Finset.sum_congr rfl fun Q hQ =>
    GlobalTheory.Tow.idemAt_unique (hgs Q (Finset.mem_union_left _ hQ)) (hes Q (Finset.mem_sdiff.1 hQ).1)
  have hB : ∑ Q ∈ T.image Formalism.L2.DIV.conjPl, gs Q = cA D eT := by

    rw [Finset.sum_image hinj, htsum, map_sum]
    refine Finset.sum_congr rfl fun PP hPP => ?_
    rw [GlobalTheory.Tow.idemAt_unique (hts PP hPP) (hes PP (hTP hPP))]
    exact GlobalTheory.Tow.idemAt_unique (hgs _ (Finset.mem_union_right _ (Finset.mem_image_of_mem _ hPP))) (hconj PP (hTP hPP))
  have hTs : eT = ∑ Q ∈ T, es Q := by
    rw [htsum]
    exact Finset.sum_congr rfl fun PP hPP => GlobalTheory.Tow.idemAt_unique (hts PP hPP) (hes PP (hTP hPP))
  rw [hgsum, Finset.sum_union hdisj, hA, hB, hTs, hsum, ← Finset.sum_sdiff hTP]
  ring

end GlobalTheory.FlipIdemSum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIdemSumConjugatePlacesSubsetEqFlip =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilOperatorInvCentralFlipInvariantFormEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilOperatorInvCentralFlipInvariantFormEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlipIdxNeZero\npublic import Formalism.LocalToGlobal.HeckeThetaElements.IsHeckeElt\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PerCEmb\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsStabForm\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\nimport Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

noncomputable section

namespace GlobalTheory.LevelSeries.FlipScalStep

def flipInv {D : D7} (e : AE D) (m : ℕ) : AE D :=
  e * incA D ((m : D.host.E)⁻¹) + cA D e * (m : AE D) + (1 - e - cA D e)

theorem flipElt_mul_flipInv {D : D7} {e : AE D} (he : IsSplitIdem D e) {m : ℕ} (hm : m ≠ 0) :
    flipElt e m * flipInv e m = 1 := by
  obtain ⟨hee, hec, -⟩ := he
  have hcc : cA D e * cA D e = cA D e := by rw [← map_mul, hee]
  have hmE : ((m : D.host.E)) ≠ 0 := Nat.cast_ne_zero.2 hm
  have hinc : (m : AE D) * incA D ((m : D.host.E)⁻¹) = 1 := by
    rw [← map_natCast (incA D) m, ← map_mul, mul_inv_cancel₀ hmE, map_one]
  unfold flipElt flipInv
  linear_combination (e + cA D e) * hinc
    + ((m : AE D) * incA D ((m : D.host.E)⁻¹) - m - incA D ((m : D.host.E)⁻¹) + 1) * (hee + hcc)
    + ((m : AE D) ^ 2 - 2 * m + incA D ((m : D.host.E)⁻¹) ^ 2 - 2 * incA D ((m : D.host.E)⁻¹) + 2) * hec

theorem mt_inv_eq {D : D7} (V : HSp D) (g : GA D V) (e : AE D) {m : ℕ} (he : IsSplitIdem D e) (hm : m ≠ 0)
    (hg : Formalism.L2.Theta.mt V g = flipElt e m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D))) :
    Formalism.L2.Theta.mt V g⁻¹ = flipInv e m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) := by
  have hmul : Formalism.L2.Theta.mt V g⁻¹ * Formalism.L2.Theta.mt V g = 1 := by
    unfold Formalism.L2.Theta.mt
    rw [← Units.val_mul, ← map_mul, inv_mul_cancel, map_one, Units.val_one]
  have hfb : (flipElt e m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D))) *
      (flipInv e m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D))) = 1 := by
    rw [Matrix.smul_mul, Matrix.mul_smul, Matrix.one_mul, smul_smul, flipElt_mul_flipInv he hm, one_smul]
  calc Formalism.L2.Theta.mt V g⁻¹ = Formalism.L2.Theta.mt V g⁻¹ * (Formalism.L2.Theta.mt V g *
        (flipInv e m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)))) := by rw [hg, hfb, Matrix.mul_one]
    _ = _ := by rw [← Matrix.mul_assoc, hmul, Matrix.one_mul]

theorem mul_flipInv_sub {D : D7} {e : AE D} (he : IsSplitIdem D e) (m : ℕ) :
    (e + cA D e) * (flipInv e m - 1) = flipInv e m - 1 := by
  obtain ⟨hee, hec, -⟩ := he
  have hcc : cA D e * cA D e = cA D e := by rw [← map_mul, hee]
  unfold flipInv
  linear_combination (incA D ((m : D.host.E)⁻¹) - 1) * hee + ((m : AE D) - 1) * hcc
    + ((m : AE D) + incA D ((m : D.host.E)⁻¹) - 2) * hec

theorem idem_mul_flipInv_pow {D : D7} {e : AE D} (he : IsSplitIdem D e) (m n : ℕ) :
    e * flipInv e m ^ n = e * incA D ((m : D.host.E)⁻¹) ^ n := by
  obtain ⟨hee, hec, -⟩ := he
  have heb : e * flipInv e m = e * incA D ((m : D.host.E)⁻¹) := by
    unfold flipInv
    linear_combination (incA D ((m : D.host.E)⁻¹) - 1) * hee + ((m : AE D) - 1) * hec
  induction n with
  | zero => rfl
  | succ n ih =>
    linear_combination flipInv e m * ih + incA D ((m : D.host.E)⁻¹) ^ n * heb

theorem suppAt_inv {D : D7} (V : HSp D) (g : GA D V) (e : AE D) {m : ℕ} (he : IsSplitIdem D e) (hm : m ≠ 0)
    (hg : Formalism.L2.Theta.mt V g = flipElt e m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D))) :
    Formalism.L2.Theta.SuppAt e V g⁻¹ := by
  intro i j
  rw [mt_inv_eq V g e he hm hg, Matrix.sub_apply, Matrix.smul_apply, smul_eq_mul]
  calc (e + cA D e) * (flipInv e m * (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) i j -
        (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) i j)
      = ((e + cA D e) * (flipInv e m - 1)) * (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) i j := by ring
    _ = _ := by rw [mul_flipInv_sub he m]; ring

theorem isDetAt_inv {D : D7} (V : HSp D) (g : GA D V) (e : AE D) {m : ℕ} (he : IsSplitIdem D e) (hm : m ≠ 0)
    (hg : Formalism.L2.Theta.mt V g = flipElt e m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)))
    {x : (AE D)ˣ} (hx : IsFlipDet V e m x) : Formalism.L2.Theta.IsDetAt e V g⁻¹ x := by
  unfold Formalism.L2.Theta.IsDetAt
  rw [mt_inv_eq V g e he hm hg, Matrix.det_smul, Matrix.det_one, mul_one, Fintype.card_fin,
    idem_mul_flipInv_pow he m]
  unfold IsFlipDet at hx
  have hee := he.1
  have hmE : ((m : D.host.E)) ≠ 0 := Nat.cast_ne_zero.2 hm
  have hinc : incA D ((m : D.host.E)⁻¹) * (m : AE D) = 1 := by
    rw [← map_natCast (incA D) m, ← map_mul, inv_mul_cancel₀ hmE, map_one]
  have hpow : incA D ((m : D.host.E)⁻¹) ^ V.rank * (m : AE D) ^ V.rank = 1 := by
    rw [← mul_pow, hinc, one_pow]
  have hy : (e * incA D ((m : D.host.E)⁻¹) ^ V.rank + (1 - e)) * (e * (m : AE D) ^ V.rank + (1 - e)) = 1 := by
    linear_combination (2 - incA D ((m : D.host.E)⁻¹) ^ V.rank - (m : AE D) ^ V.rank) * hee + e ^ 2 * hpow
  linear_combination (e * incA D ((m : D.host.E)⁻¹) ^ V.rank + (1 - e)) * hx - (x : AE D) * hy

theorem om_inv_flip_eq : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (V W : HSp D) (χV χW : (AE D)ˣ →* Circle) (om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)), IsWeilDatumO ψ V W χV χW om → ∀ (P : Formalism.L2.DIV.Pl D.host.E) (e : AE D) (m : ℕ) (g : GA D V) (x : (AE D)ˣ) (ℓ : (WO V W → ℂ) →ₗ[ℂ] ℂ), Formalism.L2.NTheta.IsIdemAt e P → m ≠ 0 → Formalism.L2.Theta.mt V g = flipElt e m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) → IsFlipDet V e m x → (∀ y : WO V W, IsHalf (cA D e) y → ∀ φ : WO V W → ℂ, IsThetaFunO ψ V W φ → ℓ (heisO ψ V W y φ) = ℓ φ) → ∃ r : ℝ, 0 < r ∧ ∀ f : WO V W → ℂ, IsThetaFunO ψ V W f → ℓ (om (g⁻¹, 1) f) = (r : ℂ) * ((χW x : Circle) : ℂ)⁻¹ * ℓ f := by
  intro D ψ V W χV χW om hW P e m g x ℓ hP hm hg hx hℓ
  have he : IsSplitIdem D e := hP.1
  have hm1 : Formalism.L2.Theta.mt W (1 : GA D W) = 1 := by
    unfold Formalism.L2.Theta.mt
    rw [map_one, Units.val_one]
  have h1 : Formalism.L2.Theta.SuppAt e W 1 := fun i j => by rw [hm1, sub_self, Matrix.zero_apply, mul_zero]
  have h1' : Formalism.L2.Theta.IsDetAt e W 1 1 := by
    unfold Formalism.L2.Theta.IsDetAt
    rw [hm1, Matrix.det_one, mul_one, add_sub_cancel, Units.val_one]
  obtain ⟨r, hr, H⟩ := hW.om_split e he g⁻¹ 1 (suppAt_inv V g e he hm hg) h1 x 1 (isDetAt_inv V g e he hm hg hx) h1'
  refine ⟨r, hr, fun f hf => ?_⟩
  rw [H ℓ (fun u hu f hf => hℓ u hu f hf) f hf, splitFacO, map_one, mul_one, Circle.coe_inv]

end GlobalTheory.LevelSeries.FlipScalStep
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilOperatorInvCentralFlipInvariantFormEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipSplitPlacesInvariantFormPhase =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipSplitPlacesInvariantFormPhase", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlipIdxNeZero\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralConjugateFlipScalarFiniteAdelicStatement\npublic import Formalism.LocalToGlobal.HeckeThetaElements.IsHeckeElt\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilOperatorInvCentralFlipInvariantFormEq\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.IdemSumMulOfSubset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

noncomputable section

namespace GlobalTheory.LevelSeries

variable {D : D7}

theorem cflip_flipElt_add {a b : AE D} (m : ℕ) (h1 : a * b = 0) (h2 : a * cA D b = 0) (h3 : cA D a * b = 0)
    (h4 : cA D a * cA D b = 0) : flipElt (a + b) m = flipElt a m * flipElt b m := by
  unfold flipElt
  rw [map_add (f := _)]
  linear_combination (-((m : AE D) - 1) ^ 2) * h1 - ((m : AE D) - 1) * (incA D ((m : D.host.E)⁻¹) - 1) * h2
    - ((m : AE D) - 1) * (incA D ((m : D.host.E)⁻¹) - 1) * h3 - (incA D ((m : D.host.E)⁻¹) - 1) ^ 2 * h4

theorem cflip_sum_idem {S : Finset (Formalism.L2.DIV.Pl D.host.E)} {es : Formalism.L2.DIV.Pl D.host.E → AE D}
    (hes : ∀ PP ∈ S, Formalism.L2.NTheta.IsIdemAt (es PP) PP) : (∑ PP ∈ S, es PP) * (∑ PP ∈ S, es PP) = ∑ PP ∈ S, es PP := by
  rw [Finset.sum_mul]
  refine Finset.sum_congr rfl fun PP hPP => ?_
  rw [Finset.mul_sum, Finset.sum_eq_single_of_mem PP hPP]
  · exact (hes PP hPP).1.1
  · intro Q hQ hne
    exact GlobalTheory.Tow.idemAt_orth (hes PP hPP) (hes Q hQ) (Ne.symm hne)

theorem cflip_mul_cA_eq_zero {e u v : AE D} (he : e * cA D e = 0) (hu : e * u = u) (hv : e * v = v) : u * cA D v = 0 := by
  rw [← hu, ← hv, map_mul]
  linear_combination (u * cA D v) * he

theorem cflip_isHalf_mono {m n : ℕ} {e u : AE D} (hu : e * u = u) {y : Mx D m n} (hy : Formalism.IndefR.Datum.IsHalf (cA D u) y) :
    Formalism.IndefR.Datum.IsHalf (cA D e) y := by
  intro i j
  rw [← hy i j, ← mul_assoc, ← map_mul, hu]

theorem cflip_det_split {R : Type*} [CommRing R] {a b t x : R} (hab : a * b = 0)
    (hx : x * ((a + b) * t + (1 - (a + b))) = 1) : x * ((a * t + (1 - a)) * (b * t + (1 - b))) = 1 := by
  linear_combination hx + (x * (t - 1) ^ 2) * hab

theorem cflip_smul_one_mul {R : Type*} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n] (c d : R)
    (X : Matrix n n R) : ((c * d) • (1 : Matrix n n R)) * X = c • ((d • (1 : Matrix n n R)) * X) := by
  rw [mul_smul, Matrix.smul_mul]

theorem cflip_unit_split {R : Type*} [CommRing R] {x u v : R} (h : x * (u * v) = 1) : x = x * v * (x * u) := by
  linear_combination (-x) * h


theorem centralFlip_phase : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (V W : HSp D) (χV χW : (AE D)ˣ →* Circle) (om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)), IsWeilDatumO ψ V W χV χW om → ∀ (T : Finset (Formalism.L2.DIV.Pl D.host.E)) (eT : AE D) (m : ℕ) (z : GA D V) (x : (AE D)ˣ) (ℓ : (WO V W → ℂ) →ₗ[ℂ] ℂ), IsIdemSum eT T → m ≠ 0 → Formalism.L2.Theta.mt V z = flipElt eT m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) → IsFlipDet V eT m x → (∀ y : WO V W, IsHalf (cA D eT) y → ∀ φ : WO V W → ℂ, IsThetaFunO ψ V W φ → ℓ (heisO ψ V W y φ) = ℓ φ) → ∃ r : ℝ, 0 < r ∧ ∀ f : WO V W → ℂ, IsThetaFunO ψ V W f → ℓ (om (z⁻¹, 1) f) = (r : ℂ) * ((χW x : Circle) : ℂ)⁻¹ * ℓ f := by
  intro D ψ V W χV χW om hW T
  induction T using Finset.induction_on with
  | empty =>
    intro eT m z x ℓ hS hm hz hx hℓ
    obtain ⟨⟨es, -, he⟩, -⟩ := hS
    rw [Finset.sum_empty] at he
    subst he
    have h1 : flipElt (0 : AE D) m = 1 := by unfold flipElt; simp
    have hz1 : z = 1 := GlobalTheory.IdemSupport.mt_inj V (by rw [hz, h1, one_smul, GlobalTheory.IdemSupport.mt_one])
    have hx1 : x = 1 := by simpa [IsFlipDet] using hx
    subst hz1 hx1
    refine ⟨1, one_pos, fun f hf => ?_⟩
    simp only [inv_one, Circle.coe_one, map_one, inv_one, Complex.ofReal_one, one_mul]
    show ℓ ((om 1) f) = ℓ f
    rw [map_one]
    rfl
  | @insert P T' hP ih =>
    intro eT m z x ℓ hS hm hz hx hℓ
    obtain ⟨⟨es, hes, heT⟩, hT⟩ := hS
    have hesP := hes P (Finset.mem_insert_self P T')
    have hes' : ∀ Q ∈ T', Formalism.L2.NTheta.IsIdemAt (es Q) Q := fun Q hQ => hes Q (Finset.mem_insert_of_mem hQ)
    have heT' : eT = es P + ∑ Q ∈ T', es Q := by rw [heT, Finset.sum_insert hP]
    have hab : es P * ∑ Q ∈ T', es Q = 0 := by
      rw [Finset.mul_sum]
      exact Finset.sum_eq_zero fun Q hQ => GlobalTheory.Tow.idemAt_orth hesP (hes' Q hQ) (fun h => hP (h ▸ hQ))
    have hbb := cflip_sum_idem hes'
    have heA : eT * es P = es P := by
      rw [heT', add_mul, hesP.1.1, mul_comm, hab, add_zero]
    have heB : eT * ∑ Q ∈ T', es Q = ∑ Q ∈ T', es Q := by
      rw [heT', add_mul, hab, hbb, zero_add]
    have hSa : IsIdemSum (es P) {P} :=
      ⟨⟨es, by simpa using hesP, by simp⟩, cflip_mul_cA_eq_zero hT heA heA⟩
    have hSb : IsIdemSum (∑ Q ∈ T', es Q) T' := ⟨⟨es, hes', rfl⟩, cflip_mul_cA_eq_zero hT heB heB⟩
    have hflip : flipElt eT m = flipElt (es P) m * flipElt (∑ Q ∈ T', es Q) m := by
      rw [heT']
      refine cflip_flipElt_add m hab (cflip_mul_cA_eq_zero hT heA heB) ?_ (by rw [← map_mul, hab, map_zero])
      rw [mul_comm]
      exact cflip_mul_cA_eq_zero hT heB heA
    obtain ⟨zP, -, -, hzP⟩ := _root_.GlobalTheory.LevelSeries.flip_central_exists D V {P} m (es P) hSa hm

    have h1 : Formalism.L2.Theta.mt V zP * Formalism.L2.Theta.mt V zP⁻¹ = 1 := by
      rw [← GlobalTheory.IdemSupport.mt_mul, mul_inv_cancel, GlobalTheory.IdemSupport.mt_one]
    have hz' : Formalism.L2.Theta.mt V (z * zP⁻¹) =
        flipElt (∑ Q ∈ T', es Q) m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) := by
      rw [hzP] at h1
      calc Formalism.L2.Theta.mt V (z * zP⁻¹)
          = (flipElt (∑ Q ∈ T', es Q) m * flipElt (es P) m) • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) *
              Formalism.L2.Theta.mt V zP⁻¹ := by
            rw [GlobalTheory.IdemSupport.mt_mul, hz, hflip, mul_comm (flipElt (es P) m)]
        _ = flipElt (∑ Q ∈ T', es Q) m • (flipElt (es P) m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) *
              Formalism.L2.Theta.mt V zP⁻¹) := cflip_smul_one_mul _ _ _
        _ = _ := by rw [h1]

    have hx0 : (x : AE D) * ((es P * (m : AE D) ^ V.rank + (1 - es P)) * ((∑ Q ∈ T', es Q) * (m : AE D) ^ V.rank + (1 - ∑ Q ∈ T', es Q))) = 1 := by
      rw [heT'] at hx
      exact cflip_det_split hab hx
    have hxa : (x : AE D) * ((∑ Q ∈ T', es Q) * (m : AE D) ^ V.rank + (1 - ∑ Q ∈ T', es Q)) * (es P * (m : AE D) ^ V.rank + (1 - es P)) = 1 := by
      rw [mul_assoc, mul_comm ((∑ Q ∈ T', es Q) * (m : AE D) ^ V.rank + _)]; exact hx0
    have hxb : (x : AE D) * (es P * (m : AE D) ^ V.rank + (1 - es P)) * ((∑ Q ∈ T', es Q) * (m : AE D) ^ V.rank + (1 - ∑ Q ∈ T', es Q)) = 1 := by
      rw [mul_assoc]; exact hx0
    let xa : (AE D)ˣ := ⟨_, _, hxa, by rw [mul_comm]; exact hxa⟩
    let xb : (AE D)ˣ := ⟨_, _, hxb, by rw [mul_comm]; exact hxb⟩
    have hxx : x = xa * xb := by
      apply Units.ext
      simp only [xa, xb, Units.val_mul]
      exact cflip_unit_split hx0
    have hxaD : IsFlipDet V (es P) m xa := hxa
    have hxbD : IsFlipDet V (∑ Q ∈ T', es Q) m xb := hxb
    obtain ⟨rP, hrP, hPstep⟩ := _root_.GlobalTheory.LevelSeries.FlipScalStep.om_inv_flip_eq D ψ V W χV χW om hW P (es P) m zP xa ℓ hesP hm hzP hxaD
      (fun y hy φ hφ => hℓ y (cflip_isHalf_mono heA hy) φ hφ)
    obtain ⟨r', hr', hrest⟩ := ih (∑ Q ∈ T', es Q) m (z * zP⁻¹) xb ℓ hSb hm hz' hxbD
      (fun y hy φ hφ => hℓ y (cflip_isHalf_mono heB hy) φ hφ)
    refine ⟨rP * r', mul_pos hrP hr', fun f hf => ?_⟩
    have hsplit : ((z⁻¹ : GA D V), (1 : GA D W)) = (zP⁻¹, 1) * ((z * zP⁻¹)⁻¹, 1) := by
      ext <;> simp
    rw [hsplit, map_mul, Module.End.mul_apply, hPstep _ (hW.om_pres _ _ hf), hrest f hf, hxx, map_mul]
    push_cast
    ring

end GlobalTheory.LevelSeries

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipSplitPlacesInvariantFormPhase =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepresentationPreservesNorm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepresentationPreservesNorm", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PerCEmb\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IMemSiegel\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsStabForm\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsSystem\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.PolyDerivSmulLetter\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LowerTriangularMul\nimport Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.JetIndepStatement\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.Signature\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

namespace GlobalTheory.WeilUnitNorm

open MeasureTheory

theorem weil_norm_one_of_unit_norm : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (χS χT : (AE D)ˣ →* Circle) (om : GA D S × GA D T →* Module.End ℂ (WO S T → ℂ)), IsWeilDatumO ψ S T χS χT om → ∀ (μ : MeasureTheory.Measure (WO S T)) (𝓕 : Set (WO S T)), IsCovolOne (ratL T S) μ 𝓕 → ∀ (p : GA D S × GA D T) (f : WO S T → ℂ), IsThetaFunO ψ S T f → nrm2 μ 𝓕 f = 1 → nrm2 μ 𝓕 (om p f) = 1 := by
  intro D ψ S T χS χT om hW μ 𝓕 hC p f hf h1
  haveI : BorelSpace (WO S T) := ⟨rfl⟩
  have key := hW.om_unit μ 𝓕 hC.1 hC.2.1 p f hf
  have hf' := hW.om_pres p f hf
  have m1 : AEStronglyMeasurable (fun w => ‖om p f w‖ ^ 2) (μ.restrict 𝓕) :=
    (hf'.cont.norm.pow 2).aestronglyMeasurable
  have m2 : AEStronglyMeasurable (fun w => ‖f w‖ ^ 2) (μ.restrict 𝓕) :=
    (hf.cont.norm.pow 2).aestronglyMeasurable
  have e : nrm2 μ 𝓕 (om p f) = nrm2 μ 𝓕 f := by
    unfold nrm2
    rw [integral_eq_lintegral_of_nonneg_ae (Filter.Eventually.of_forall fun _ => by positivity) m1,
      integral_eq_lintegral_of_nonneg_ae (Filter.Eventually.of_forall fun _ => by positivity) m2]
    congr 1
    simp_rw [ENNReal.ofReal_pow (norm_nonneg _), ofReal_norm]
    exact key
  rw [e, h1]

end GlobalTheory.WeilUnitNorm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepresentationPreservesNorm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MovedVacuumTranslateSumFlipScalar =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MovedVacuumTranslateSumFlipScalar", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlipIdxNeZero\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.BaseIntSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipSplitPlacesInvariantFormPhase\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjHalfInvariantFormIdemSumVacuumNeZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.VacuumTranslatesConjHalfSqNormEqCard\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepresentationPreservesNorm\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IMemSiegel\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar
set_option synthInstance.maxHeartbeats 400000
open GlobalTheory.LevelSeries

noncomputable section

namespace GlobalTheory.FlipScal

open MeasureTheory

theorem nrm2_const_smul {D : D7} {m n : ℕ} (μ : Measure (Mx D m n)) (𝓕 : Set (Mx D m n)) (c : ℂ) (f : Mx D m n → ℂ) :
    nrm2 μ 𝓕 (c • f) = ‖c‖ ^ 2 * nrm2 μ 𝓕 f := by
  unfold nrm2
  rw [← integral_const_mul]
  congr 1
  funext w
  rw [Pi.smul_apply, norm_smul, mul_pow]

theorem moved_vacuum_factor : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (V W : HSp D) (χV χW : (AE D)ˣ →* Circle) (om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)) (ΛV : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)) (ΛW : Submodule (𝓞 D.host.E) (Fin W.rank → D.host.E)) (sW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ) (f₀ : WO V W → ℂ), VacPair ψ θ V W χV χW om ΛV ΛW sW f₀ → ∀ (T : Finset (Formalism.L2.DIV.Pl D.host.E)) (m : ℕ) (eT : AE D) (z : GA D V) (x : (AE D)ˣ) (lam : ℂ) (Y : Finset (WO V W)), IsIdemSum eT T → Odd m → Nat.Coprime m (GlobalTheory.Tow.badN D) → (∀ PP ∈ T, ((m : ℕ) : 𝓞 D.host.E) ∈ PP.asIdeal) → z ∈ GfC V → Formalism.L2.Theta.mt V z = flipElt eT m • (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) → IsFlipDet V eT m x → (∀ y ∈ Y, IsHalf (cA D eT) y ∧ m • y ∈ latO V W (ΛV : Set (Fin V.rank → D.host.E)) (ΛW : Set (Fin W.rank → D.host.E)) (fun _ => True)) → (∀ y ∈ Y, ∀ y' ∈ Y, y - y' ∈ latO V W (ΛV : Set (Fin V.rank → D.host.E)) (ΛW : Set (Fin W.rank → D.host.E)) (fun _ => True) → y = y') → Y.card = flipIdx V W T m → om (z⁻¹, 1) f₀ = lam • ∑ y ∈ Y, heisO ψ V W y f₀ → lam = flipScal χW V W T m x := by
  intro D ψ θ V W χV χW om ΛV ΛW sW f₀ hP T m eT z x lam Y hT hm hcop hTm hz hmt hx hY hYu hcard hom
  have hm0 : m ≠ 0 := by rintro rfl; exact Nat.not_odd_zero hm
  have hW := hP.1.weil
  have hf := hP.2.2.2.2.2.2.2.2
  obtain ⟨ℓ, hℓ0, hℓ⟩ := _root_.GlobalTheory.LevelSeries.exists_invariant_form_idemSum D ψ θ V W χV χW om ΛV ΛW sW f₀ hP T eT hT
  obtain ⟨r, hr, hrℓ⟩ := _root_.GlobalTheory.LevelSeries.centralFlip_phase D ψ V W χV χW om hW T eT m z x ℓ hT hm0 hmt hx hℓ
  have hth := hf.2.theta
  have h1 := hrℓ f₀ hth
  have hsum : ℓ (∑ y ∈ Y, heisO ψ V W y f₀) = (Y.card : ℂ) * ℓ f₀ := by
    set_option synthInstance.maxHeartbeats 100000 in
      rw [map_sum, Finset.sum_congr rfl fun y hy => hℓ y (hY y hy).1 f₀ hth, Finset.sum_const, nsmul_eq_mul]
  rw [hom, map_smul, hsum, smul_eq_mul] at h1
  have h2 : lam * Y.card = r * ((χW x : Circle) : ℂ)⁻¹ := mul_right_cancel₀ hℓ0 (by rw [← h1]; ring)
  obtain ⟨p, hp⟩ := hf.2.norm.1
  have hn := _root_.GlobalTheory.WeilUnitNorm.weil_norm_one_of_unit_norm D ψ V W χV χW om hW p.1 p.2 hp (z⁻¹, 1) f₀ hth (hf.2.norm.2 p hp)
  rw [hom, nrm2_const_smul, _root_.GlobalTheory.VacTransOrth.vacuumTranslates_conjHalf_sq_norm_eq_card_alt D ψ θ V W χV χW om ΛV ΛW sW f₀ hP T eT hT Y (fun y hy => (hY y hy).1) hYu p.1 p.2
    hp] at hn
  have hχ : ‖((χW x : Circle) : ℂ)⁻¹‖ = 1 := by rw [norm_inv, Circle.norm_coe, inv_one]
  have h3 : ‖lam‖ * Y.card = r := by
    have := congrArg norm h2
    rwa [norm_mul, norm_mul, hχ, mul_one, Complex.norm_natCast, Complex.norm_real, Real.norm_of_nonneg hr.le] at this
  have hN : (0 : ℝ) < Y.card := by
    rcases (Nat.eq_zero_or_pos Y.card) with h | h
    · rw [h, Nat.cast_zero, mul_zero] at h3; exact absurd h3 hr.ne
    · exact_mod_cast h
  have h4 : r = Real.sqrt (Y.card : ℝ) := by
    rw [← h3]
    have : ‖lam‖ ^ 2 = (Y.card : ℝ)⁻¹ := eq_inv_of_mul_eq_one_left hn
    rw [eq_comm, Real.sqrt_eq_iff_mul_self_eq hN.le (by positivity),
      show ‖lam‖ * (Y.card : ℝ) * (‖lam‖ * Y.card) = ‖lam‖ ^ 2 * Y.card * Y.card by ring, this,
      inv_mul_cancel₀ hN.ne', one_mul]
  have hNc : (Y.card : ℂ) ≠ 0 := by exact_mod_cast hN.ne'
  unfold flipScal
  rw [← hcard]
  have hs : Real.sqrt (Y.card : ℝ) ≠ 0 := (Real.sqrt_pos.2 hN).ne'
  have h5 : lam = r * ((χW x : Circle) : ℂ)⁻¹ / Y.card := by rw [← h2]; field_simp
  rw [h5, h4]
  have hsq : ((Real.sqrt (Y.card : ℝ) : ℝ) : ℂ) * ((Real.sqrt (Y.card : ℝ) : ℝ) : ℂ) = Y.card := by
    rw [← Complex.ofReal_mul, Real.mul_self_sqrt hN.le]; push_cast; rfl
  have hsc : ((Real.sqrt (Y.card : ℝ) : ℝ) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.2 hs
  field_simp
  rw [← hsq]
  ring

end GlobalTheory.FlipScal

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MovedVacuumTranslateSumFlipScalar =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralFlipTranslateHalfPlacesThetaPair =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralFlipTranslateHalfPlacesThetaPair", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsFlipDet\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.BaseIntSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\npublic import Formalism.LocalToGlobal.Divisibility.DefGroupLemmas\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FlipIdxNeZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipMapsHalfTranslatesSpan\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralFlipVacuumEqMultipleOfTranslateMean\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralConjugateFlipScalarFiniteAdelicStatement\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIdemSumConjugatePlacesSubsetEqFlip\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IMemSiegel\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsSystem\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MovedVacuumTranslateSumFlipScalar\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.IdemSumMulOfSubset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

noncomputable section

namespace GlobalTheory.LevelSeries

theorem exists_central_flip_step : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (V W : HSp D) (χV χW : (AE D)ˣ →* Circle) (om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)) (ΛV : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)) (ΛW : Submodule (𝓞 D.host.E) (Fin W.rank → D.host.E)) (sW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ) (f₀ : WO V W → ℂ), VacPair ψ θ V W χV χW om ΛV ΛW sW f₀ → ∀ (T : Finset (Formalism.L2.DIV.Pl D.host.E)) (m : ℕ), ∃ z : GA D V, z ∈ GfC V ∧ (∀ l : ℕ, (∀ PP ∈ T, ((l : ℕ) : 𝓞 D.host.E) ∉ PP.asIdeal) → OneAt V l z) ∧ ∀ eT : AE D, IsIdemSum eT T → Odd m → Nat.Coprime m (GlobalTheory.Tow.badN D) → (∀ PP ∈ T, ((m : ℕ) : 𝓞 D.host.E) ∈ PP.asIdeal) → ∃ x : (AE D)ˣ, IsFlipDet V eT m x ∧ ∀ (M u : ℕ) (e e' : AE D) (P : Finset (Formalism.L2.DIV.Pl D.host.E)) (O : Subring ℂ), M = m * u → (∀ PP ∈ T, ((u : ℕ) : 𝓞 D.host.E) ∉ PP.asIdeal) → IsIdemSum e P → T ⊆ P → IsIdemSum e' ((P \ T) ∪ T.image Formalism.L2.DIV.conjPl) → zeta M ∈ O → ∀ f ∈ trSp ψ V W ΛV ΛW f₀ e M O, ∃ F ∈ trSp ψ V W ΛV ΛW f₀ e' M O, om (z, 1) (flipScal χW V W T m x • F) = f := by
  intro D ψ θ V W χV χW om ΛV ΛW sW f₀ hV T m
  by_cases h : ∃ eT : AE D, IsIdemSum eT T ∧ m ≠ 0
  · obtain ⟨eT₀, h0, hm0⟩ := h
    obtain ⟨z, hzG, hzOne, hzmt⟩ := _root_.GlobalTheory.LevelSeries.flip_central_exists D V T m eT₀ h0 hm0
    refine ⟨z, hzG, hzOne, ?_⟩
    intro eT heT hodd hcop hmT
    have h1 : eT₀ * eT = eT := GlobalTheory.Tow.idemSum_mul_of_subset heT h0 subset_rfl
    have h2 : eT * eT₀ = eT₀ := GlobalTheory.Tow.idemSum_mul_of_subset h0 heT subset_rfl
    have hEq : eT = eT₀ := by rw [← h1, mul_comm, h2]
    subst hEq
    have hidem : eT * eT = eT := GlobalTheory.Tow.idemSum_mul_of_subset heT heT subset_rfl
    have hinv : incA D ((m : D.host.E)⁻¹) * (m : AE D) = 1 := by
      rw [← map_natCast (incA D) m, ← map_mul, inv_mul_cancel₀ (Nat.cast_ne_zero.2 hm0), map_one]
    have hpq : incA D ((m : D.host.E)⁻¹) ^ V.rank * (m : AE D) ^ V.rank = 1 := by
      rw [← mul_pow, hinv, one_pow]
    have hunit : (eT * incA D ((m : D.host.E)⁻¹) ^ V.rank + (1 - eT)) * (eT * (m : AE D) ^ V.rank + (1 - eT)) = 1 := by
      linear_combination (eT * eT) * hpq + (2 - incA D ((m : D.host.E)⁻¹) ^ V.rank - (m : AE D) ^ V.rank) * hidem
    let x : (AE D)ˣ := Units.mkOfMulEqOne _ _ hunit
    have hx : IsFlipDet V eT m x := hunit
    refine ⟨x, hx, ?_⟩
    obtain ⟨lam, Y, hY, hYd, hYc, hom⟩ := _root_.GlobalTheory.LevelSeries.moved_vacuum_eq_mean D ψ θ V W χV χW om ΛV ΛW sW f₀ hV T m eT z heT hodd hcop hmT hzG hzmt
    have hlam := _root_.GlobalTheory.FlipScal.moved_vacuum_factor D ψ θ V W χV χW om ΛV ΛW sW f₀ hV T m eT z x lam Y heT hodd hcop hmT hzG hzmt hx hY hYd hYc hom
    subst hlam
    have hs : flipScal χW V W T m x ≠ 0 := by
      unfold flipScal
      refine mul_ne_zero (inv_ne_zero (Circle.coe_ne_zero _)) (inv_ne_zero ?_)
      rw [Complex.ofReal_ne_zero, Real.sqrt_ne_zero']
      exact Nat.cast_pos.2 (Nat.pos_of_ne_zero (flipIdx_ne_zero V W T hm0))
    intro M u e e' P O hM hu he hTP he' hz
    exact _root_.GlobalTheory.FlipTranslates.flip_translates D ψ θ V W χV χW om ΛV ΛW sW f₀ hV T m eT z _ Y heT hodd hcop hmT hzmt hs hY hom M u e e' P O hM hu he hTP
      (_root_.GlobalTheory.FlipIdemSum.idemSum_flip_subset D e eT e' P T he heT hTP he') hz
  · refine ⟨1, (GfC V).one_mem, fun l _ => oneAt_one V l, ?_⟩
    intro eT heT hodd
    exact absurd ⟨eT, heT, (Nat.pos_of_ne_zero (by rintro rfl; exact (Nat.not_odd_zero hodd))).ne'⟩ h

end GlobalTheory.LevelSeries

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralFlipTranslateHalfPlacesThetaPair =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralFlipTranslateHalfPlacesThetaPairStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralFlipTranslateHalfPlacesThetaPairStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsFlipDet\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.BaseIntSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\npublic import Formalism.LocalToGlobal.Divisibility.DefGroupLemmas\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralFlipTranslateHalfPlacesThetaPair\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralFlipTranslateHalfPlacesThetaPairStatement =====
