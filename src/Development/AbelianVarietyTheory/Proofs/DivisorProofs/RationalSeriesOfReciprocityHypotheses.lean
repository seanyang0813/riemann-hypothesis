module

public import Development.AbelianVarietyTheory.PublishedTheorems.PublishedFoundations.NonemptyAlgHomOfIsRayOfDvd
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SeriesRatSOf
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfSmallInt
public import Development.AbelianVarietyTheory.Definitions.Divisors.LevelOfOfSameBut
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SeriesRationalityBackFromMovedReadings
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRationalScalarNormalisedStandardFrameStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfPowEqOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaleRootOfPrint
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsHalfOfBasePins
import Formalism.LocalToGlobal.IndefiniteReal.FWCentral
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

@[expose] public section

noncomputable section
open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx
open Formalism.IndefR.FWT GlobalTheory.BigTop GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies GlobalTheory.SeriesTie
open GlobalTheory.BigOn GlobalTheory.BigOn.Exp Formalism.L2.Theta GlobalTheory.ExportSeries GlobalTheory.SerRefCore
open scoped TensorProduct
set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 1600000

namespace GlobalTheory.SerRefPt

section Core

variable {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 I0 T0 : Type} {A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T0 D.R.m}

theorem exists_root_of_isNorm {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (Rl : RealDat3 D A3 Ks)
    (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec) {j : Fin D.R.m} (B : Base (Vc D j) (Wc D j)) {ν ν' : ℂ}
    (hN : IsNorm Rl v₀ B ν) (hN' : IsNorm Rl v₀ B ν') : ∃ ζ : ℂ, IsAlgebraic ℚ ζ ∧ ν' = ζ * ν := by
  obtain ⟨h0, c, hc, n, hn, hνn⟩ := hN
  obtain ⟨-, c', hc', m, hm, hν'm⟩ := hN'
  obtain ⟨k, hk, hkk⟩ := isScale_pow_eq Rl v₀ _ hc hc'
  have e1 : ν' ^ (n * m * k) = (ν' ^ m) ^ (n * k) := by rw [← pow_mul]; ring_nf
  have e2 : ν ^ (n * m * k) = (ν ^ n) ^ (m * k) := by rw [← pow_mul]; ring_nf
  have e3 : c' ^ (n * m * k) = c ^ (n * m * k) := by
    rw [show n * m * k = k * (n * m) by ring, pow_mul c', pow_mul c, hkk]
  have e4 : ν' ^ (n * m * k) = ν ^ (n * m * k) := by
    rw [e1, e2, hν'm, hνn, ← pow_mul, ← pow_mul, mul_pow, mul_pow,
      show m * (n * k) = n * m * k by ring, show n * (m * k) = n * m * k by ring, e3]
  refine ⟨ν' / ν, isAlgebraic_of_pow_eq_one (Nat.mul_ne_zero (Nat.mul_ne_zero hn hm) hk) ?_, (div_mul_cancel₀ ν' h0).symm⟩
  rw [div_pow, e4, div_self (pow_ne_zero _ h0)]

theorem theta_eq_zero {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {Rl : RealDat3 D A3 Ks}
    {cG : G0 Rl.Pg D.R.r ≃* G0g D.nd} {S : NX.RatDat D.ntw} (YS : NX.NExpRealS Rl cG S)
    (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec) {ρ : Setup D.ntw} (hρ : ρ.Good) (i : D.ntw.Tw)
    (j : Fin D.R.m) (b : Bool) {ν : ℂ} (h0 : ∀ x ∈ (Rl.FW j).WK, x = 0) (hR : RatBase (realRd YS v₀ hρ i j b ν))
    {s : Finset (Pl D.host.E)} {h : GA D (Vc D j)} {P : PolF D (Wc D j).rank (Vc D j).rank} (hd : ρ.IsDatum i j b s h P) :
    ρ.theta i j b h P = 0 := by
  have hW : ∀ g : NX.FmK S ((j : ℕ) + 1), evW YS v₀ j g.val = 0 := fun g => by
    have h1 : (YS.fi j).e g.val = 0 := h0 _ (((YS.fi j).wk _).1 g.2)
    have h2 : g.val = 0 := (YS.fi j).e.injective (h1.trans (map_zero _).symm)
    rw [h2, map_zero]
  have hK : ∀ x, evK YS v₀ hρ i j b x = 0 := fun x => by
    induction x using TensorProduct.induction_on with
    | zero => exact map_zero _
    | add x y hx hy => rw [map_add (f := _), hx, hy, add_zero]
    | tmul a g => rw [evK_tmul, hW, smul_zero]
  obtain ⟨f, hf⟩ := hR s h P hd
  rw [← hf]
  change ν⁻¹ • evK YS v₀ hρ i j b _ = 0
  exact (congrArg (ν⁻¹ • ·) (hK _)).trans (smul_zero _)

theorem algComb_of_moved {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {Rl : RealDat3 D A3 Ks}
    {cG : G0 Rl.Pg D.R.r ≃* G0g D.nd} {S : NX.RatDat D.ntw} (YS : NX.NExpRealS Rl cG S)
    (w : Fin D.R.m → (D.what₂.LL →+* ℂ) → Γ) (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec) (j : Fin D.R.m)
    {φ : GA D (Wc D j) → ℂ} (h : AlgComb (GlobalTheory.UnframeForms.movedYS YS w) v₀ j φ) : AlgComb YS v₀ j φ := by
  obtain ⟨n, z, g, hz, e⟩ := h
  refine ⟨n, z, fun k => (⟨(S.A ((j : ℕ) + 1)).ρ ((YS.fi j).eG.symm (w j (sg0 D A3.A)))
      (show ↥(S.A ((j : ℕ) + 1)).WK from g k).1,
    YS.rho _ (Nat.le_add_left _ _) j.2 _ _ (show ↥(S.A ((j : ℕ) + 1)).WK from g k).2⟩ : ↥(S.A ((j : ℕ) + 1)).WK), hz, ?_⟩
  rw [e]
  exact Finset.sum_congr rfl fun k _ => congrArg (z k • ·) (GlobalTheory.UnframeForms.evW_moved YS w v₀ j _)

theorem core_cases (hA : GlobalTheory.Published.GlobalArtinReciprocity) (hRF : GlobalTheory.Published.RayClassFieldSt) (hS : GlobalTheory.SerStd.SeriesRatS)
    {T : CoreJ D} [Algebra T.Q.c.F D.what₂.LL] {Rl : RealDat3 D A3 T.Q.c.F} {cG : G0 Rl.Pg D.R.r ≃* G0g D.nd}
    {S : NX.RatDat D.ntw} (YS : NX.NExpRealS Rl cG S) {F : Face D A3.A} {κ : ∀ j : Fin D.R.m, WeightFamilies.Wt D ((j : ℕ) + 1)}
    {v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec}
    {O : ∀ j, OMDat T.toCore Rl.toRealDat j Unit (fun _ => A3.A.μ0)} {ρ : Setup D.ntw} (hρ : ρ.Good) {i : D.ntw.Tw}
    {j : Fin D.R.m} (b : Bool) {hV : T.V ((j : ℕ) + 1) T.σ₀ = Wc D j} (hpin : RealPin Rl cG ρ) (H : RatHyp T Rl F κ v₀ O i j hV)
    (hsp : D.host.cls D.host.pde = PrimeClass.splitK ∧ D.host.cls D.host.pde' = PrimeClass.splitK) :
    (∀ x ∈ (Rl.FW j).WK, x = 0) ∨ ∃ ν, IsNorm Rl v₀ (ρ.B i j b) ν ∧ ∀ s h P, ρ.IsDatum i j b s h P →
      P ∈ ρ.lat i j b (smallInt D) h → AlgComb YS v₀ j (ν • ρ.theta i j b h P) := by
  obtain ⟨fw⟩ := H.fw
  by_cases hc : T.toCore.cuspA ((j : ℕ) + 1) (wtA (κ j)) (κ j).n = ⊥
  · refine Or.inl fun x hx => ?_
    obtain ⟨f, hf⟩ := (fw.e j).surjective ⟨x, hx⟩
    have h0 : f = 0 := Subtype.ext ((Submodule.eq_bot_iff _).1 hc f.1 f.2)
    rw [h0, map_zero] at hf
    exact (congrArg Subtype.val hf).symm
  · obtain ⟨ν, hN, hν⟩ := GlobalTheory.T.exists_rationalScalar_normalised_standardFrame hA hRF hS D Γ Pl0 I0 T0 A3 T Rl cG S YS F κ v₀ O ρ hρ i j b hV hpin H hc
    exact Or.inr ⟨ν, hN, algComb_of_ratScalar YS hRF fw (fw.evaluates_of_lUnif H.unif) H.core H.io
      (GlobalTheory.CoverHalf.primes_eq_of_halfIs T.toCore Rl.toRealDat H.laws.toLawsM H.core.lev (H.pins.2.tuple ()).half)
      H.size H.galois H.small.val H.small.ray H.small.roots hsp hρ hpin i j b hV hν⟩

end Core

end GlobalTheory.SerRefPt

namespace GlobalTheory.SerRefPt

open GlobalTheory.RealGeo GlobalTheory.Unframe GlobalTheory.UnframePt


end GlobalTheory.SerRefPt
