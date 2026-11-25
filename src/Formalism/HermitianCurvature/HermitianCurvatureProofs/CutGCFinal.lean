module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAdjointnessFromHermitian
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGaugeVLem
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCAsm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCGenToQQ
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCRadSpSmooth
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCSecMove
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheSectionStab
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChainRecursionFromSingleDescent
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGaugeGQLFam
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGaugeGRawSmooth

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCFamLocal, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCModelLocal, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCFinal

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCFamLocal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCFamLocal", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAdjointnessFromHermitian\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ChainRecursionFromSingleDescent\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGaugeVLem\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

noncomputable section

open Classical

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem family_locality_holds : FamLocal := by
  intro Wp Wq _ _ _ _ _ _ P Bs hpl hk X Dc Φ hΦ q
  have hk1 : 1 ≤ P.k := by omega
  have hz := hpl.2.1
  have hz' := hpl.2.2.1
  have hT : 0 < Tz P.k P.r Bs.z := by rw [hpl.2.2.2.1]; exact hpl.1.T_pos
  have hT' : 0 < Tz P.k P.r Bs.z' := by rw [hpl.2.2.2.2.1]; exact hpl.1.T'_pos
  have hsec := Bs.sec
  obtain ⟨hOpen, hIsDom, hMu, hFF⟩ := hΦ

  have hdom : ∀ x ∈ Q.DomR P.k P.r Bs.z Bs.z', x.2 ∈ Dc x.1 := by
    intro x hx
    obtain ⟨h, hh, h', hh', hg⟩ := Formalism.FourierDecayAlt.P.NFRadRedA.decomp hk1 hz hz' hT hT' hsec hx.2.1 hx.2.2
    set ζ := Q.zetaL P.k P.r Bs.z Bs.z' (Fin.last P.r) x.2 with hζ
    have hζT : P.TT < Complex.normSq ζ := by
      have h1 := hx.2.2
      unfold Q.GGl at h1
      show P.T * P.T' < _
      rw [← hpl.2.2.2.1, ← hpl.2.2.2.2.1]
      linarith
    let q' : MA.Qp P.r P.TT := ⟨(x.1, ζ), hx.1, hζT⟩
    have hmu : NF.muZ P.k P.r Bs.μsec ζ ∈ Dc x.1 := hMu q'
    have hmuG : NF.muZ P.k P.r Bs.μsec ζ ∈ Q.Glev P.k P.r (Fin.last P.r) :=
      Formalism.FourierDecayAlt.P.CutMP.Gauge.VLem.muZ_glev hpl q'
    have hS : ∀ {w : Fin (2 * P.r + P.k + 1) → ℂ} {s : Q.Mx P.k P.r}, s ∈ UWset P.k P.r w →
        s ∈ Q.Slev P.k P.r w (Fin.last P.r) := by
      intro w s hs
      exact ⟨s, hs, 1, Formalism.FourierDecayAlt.P.Qx6.one_nlev _, by simp⟩
    rw [hg]
    exact (hIsDom x.1 hx.1).2 _ ⟨hmuG, hmu⟩ h (hS hh) h' (hS hh')

  let Φt : Q.Fn P.k P.r (Wq →L[ℂ] Wp) := fun c g => if (c, g) ∈ Q.DomR P.k P.r Bs.z Bs.z' then Φ c g else 0
  have hΦt_mem : Φt ∈ Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π' := by
    refine ⟨fun x hx => ?_, fun x₀ hx₀ => ?_, fun x hx h hh h' hh' => ?_⟩
    · show (if (x.1, x.2) ∈ Q.DomR P.k P.r Bs.z Bs.z' then Φ x.1 x.2 else 0) = 0
      rw [if_neg hx]
    · obtain ⟨U, F, hU, hx₀U, hF, hΦF⟩ := hFF.1 x₀ ⟨hx₀.1, hdom x₀ hx₀⟩ hx₀.2.1
      have hO : IsOpen {x : (Fin P.r → ℂ) × Q.Mx P.k P.r | x.1 ∈ OmX P.r ∧ 0 < Q.GGl P.k P.r Bs.z Bs.z' x.2} := by
        have h1 : IsOpen {x : (Fin P.r → ℂ) × Q.Mx P.k P.r | x.1 ∈ OmX P.r} := by
          have : IsOpen (OmX P.r) := by
            have e : OmX P.r = ⋂ l, {x : Fin P.r → ℂ | x l ≠ 0} := by ext x; simp [OmX]
            rw [e]
            exact isOpen_iInter_of_finite fun l => isOpen_ne_fun (continuous_apply l) continuous_const
          exact this.preimage continuous_fst
        have h2 : IsOpen {x : (Fin P.r → ℂ) × Q.Mx P.k P.r | 0 < Q.GGl P.k P.r Bs.z Bs.z' x.2} :=
          isOpen_lt continuous_const ((Formalism.FourierDecayAlt.P.Qx5.GGl_continuous P.k P.r Bs.z Bs.z').comp continuous_snd)
        exact h1.inter h2
      refine ⟨U ∩ {x | x.1 ∈ OmX P.r ∧ 0 < Q.GGl P.k P.r Bs.z Bs.z' x.2}, F, hU.inter hO, ⟨hx₀U, hx₀.1, hx₀.2.2⟩,
        hF.mono Set.inter_subset_left, fun x hx hxG => ?_⟩
      have hxD : x ∈ Q.DomR P.k P.r Bs.z Bs.z' := ⟨hx.2.1, hxG, hx.2.2⟩
      show (if (x.1, x.2) ∈ Q.DomR P.k P.r Bs.z Bs.z' then Φ x.1 x.2 else 0) = F x
      rw [if_pos hxD]
      exact hΦF x hx.1 hxG
    · have hxD' := Formalism.FourierDecayAlt.P.Qx5.DomR_inv hh hh' hx
      show (if (x.1, h * x.2 * h') ∈ Q.DomR P.k P.r Bs.z Bs.z' then Φ x.1 (h * x.2 * h') else 0) =
        (Bs.π h).comp ((if (x.1, x.2) ∈ Q.DomR P.k P.r Bs.z Bs.z' then Φ x.1 x.2 else 0).comp (Bs.π' h'))
      rw [if_pos hxD', if_pos hx]
      exact (hFF.2 x.1 hx.1).2.2.2 x.2 ⟨hx.2.1, hdom x hx⟩ h hh h' hh'
  refine ⟨⟨Φt, hΦt_mem⟩, {ζ' | Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ'}, ?_, fun ζ' hζ' => ?_⟩
  · refine (isOpen_lt continuous_const Complex.continuous_normSq).mem_nhds ?_
    show Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq q.1.2
    rw [hpl.2.2.2.1, hpl.2.2.2.2.1]
    exact q.2.2
  have hqD : (q.1.1, NF.muZ P.k P.r Bs.μsec ζ') ∈ Q.DomR P.k P.r Bs.z Bs.z' :=
    Formalism.FourierDecayAlt.P.NFRadRedA.mem_domR hz hz' hsec (q := (q.1.1, ζ')) ⟨q.2.1, hζ'⟩
  have hval : Φt q.1.1 (NF.muZ P.k P.r Bs.μsec ζ') = Φ q.1.1 (NF.muZ P.k P.r Bs.μsec ζ') := by
    show (if (q.1.1, NF.muZ P.k P.r Bs.μsec ζ') ∈ Q.DomR P.k P.r Bs.z Bs.z' then _ else 0) = _
    rw [if_pos hqD]
  refine ⟨hval, fun Y a b => ?_⟩
  rw [X.t_apply Y a b ⟨Φt, hΦt_mem⟩ (q.1.1, NF.muZ P.k P.r Bs.μsec ζ') hqD]
  show Q.tL P.k P.r Bs.z Bs.z' (Fin.last P.r) Y a b (Φt q.1.1) (NF.muZ P.k P.r Bs.μsec ζ') =
    Q.tL P.k P.r Bs.z Bs.z' (Fin.last P.r) Y a b (Φ q.1.1) (NF.muZ P.k P.r Bs.μsec ζ')
  have hDo : IsOpen {g : Q.Mx P.k P.r | 0 < Q.GGl P.k P.r Bs.z Bs.z' g} :=
    isOpen_lt continuous_const (Formalism.FourierDecayAlt.P.Qx5.GGl_continuous P.k P.r Bs.z Bs.z')
  refine (Formalism.FourierDecayAlt.P.Qx2.ll_tL (i := Fin.last P.r) hDo Bs.z Bs.z' Y a b).1 (Φt q.1.1) (Φ q.1.1) (fun x hx => ?_)
    _ ⟨hqD.2.1, hqD.2.2⟩
  show (if (q.1.1, x) ∈ Q.DomR P.k P.r Bs.z Bs.z' then Φ q.1.1 x else 0) = Φ q.1.1 x
  rw [if_pos ⟨q.2.1, hx.1, hx.2⟩]

end

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCFamLocal =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCModelLocal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCModelLocal", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Filter Topology

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

noncomputable section

section loc

variable {r : ℕ} {TT : ℝ}

def LocOpQ (T : Module.End ℂ (MA.SmQ r TT)) : Prop :=
  ∀ (h₁ h₂ : MA.SmQ r TT) (c : Fin r → ℂ) (V : Set ℂ), IsOpen V →
    (∀ q : MA.Qp r TT, q.1.1 = c → q.1.2 ∈ V → (h₁ : MA.Qp r TT → ℂ) q = (h₂ : MA.Qp r TT → ℂ) q) →
    ∀ q : MA.Qp r TT, q.1.1 = c → q.1.2 ∈ V → (T h₁ : MA.Qp r TT → ℂ) q = (T h₂ : MA.Qp r TT → ℂ) q

theorem locOp_add {T S : Module.End ℂ (MA.SmQ r TT)} (hT : LocOpQ T) (hS : LocOpQ S) : LocOpQ (T + S) := by
  intro h₁ h₂ c V hV hag q hq hqV
  have e : ∀ h : MA.SmQ r TT, (((T + S) h : MA.SmQ r TT) : MA.Qp r TT → ℂ) q =
      (T h : MA.Qp r TT → ℂ) q + (S h : MA.Qp r TT → ℂ) q := fun h => rfl
  rw [e, e, hT h₁ h₂ c V hV hag q hq hqV, hS h₁ h₂ c V hV hag q hq hqV]

theorem locOp_mul {T S : Module.End ℂ (MA.SmQ r TT)} (hT : LocOpQ T) (hS : LocOpQ S) : LocOpQ (T * S) :=
  fun h₁ h₂ c V hV hag q hq hqV =>
    hT (S h₁) (S h₂) c V hV (fun q' hq' hqV' => hS h₁ h₂ c V hV hag q' hq' hqV') q hq hqV

theorem locOp_smul (z : ℂ) {T : Module.End ℂ (MA.SmQ r TT)} (hT : LocOpQ T) : LocOpQ (z • T) := by
  intro h₁ h₂ c V hV hag q hq hqV
  have e : ∀ h : MA.SmQ r TT, (((z • T) h : MA.SmQ r TT) : MA.Qp r TT → ℂ) q =
      z * (T h : MA.Qp r TT → ℂ) q := fun h => rfl
  rw [e, e, hT h₁ h₂ c V hV hag q hq hqV]

theorem locOp_zero : LocOpQ (0 : Module.End ℂ (MA.SmQ r TT)) :=
  fun _ _ _ _ _ _ _ _ _ => rfl

theorem locOp_one : LocOpQ (1 : Module.End ℂ (MA.SmQ r TT)) :=
  fun _ _ _ _ _ hag q hq hqV => hag q hq hqV

theorem locOp_mulOp (f : MA.SmQ r TT) : LocOpQ ((MA.anQ r TT).mulOp f) := by
  intro h₁ h₂ c V hV hag q hq hqV
  show ((f * h₁ : MA.SmQ r TT) : MA.Qp r TT → ℂ) q = ((f * h₂ : MA.SmQ r TT) : MA.Qp r TT → ℂ) q
  simp only [Subalgebra.coe_mul, Pi.mul_apply]
  rw [hag q hq hqV]

theorem dirE_zeta (v : M.Var r) (hv : ((ofLex v).1 : ℕ) = r) : MA.dirE v = ((0 : Fin r → ℂ), (1 : ℂ)) := by
  unfold MA.dirE
  rw [dite_eq_right (by omega)]

theorem fderiv_zeta_local {f₁ f₂ : MA.Qp r TT → ℂ} (hf₁ : f₁ ∈ MA.smSub r TT) (hf₂ : f₂ ∈ MA.smSub r TT)
    (c : Fin r → ℂ) (V : Set ℂ) (hV : IsOpen V)
    (hag : ∀ q : MA.Qp r TT, q.1.1 = c → q.1.2 ∈ V → f₁ q = f₂ q)
    (q : MA.Qp r TT) (hq : q.1.1 = c) (hqV : q.1.2 ∈ V) (w : ℂ) :
    fderiv ℝ (MA.ext f₁) q.1 ((0 : Fin r → ℂ), w) = fderiv ℝ (MA.ext f₂) q.1 ((0 : Fin r → ℂ), w) := by
  set γ : ℝ → MA.E r := fun t => q.1 + t • ((0 : Fin r → ℂ), w) with hγ
  have hγd : HasDerivAt γ ((0 : Fin r → ℂ), w) 0 := by
    have h := ((hasDerivAt_id (0 : ℝ)).smul_const ((0 : Fin r → ℂ), w)).const_add q.1
    rw [one_smul] at h
    exact h
  have hγ0 : γ 0 = q.1 := by simp [hγ]
  have hq0 : γ 0 ∈ MA.Qset r TT := by rw [hγ0]; exact q.2
  have h1 : HasDerivAt (MA.ext f₁ ∘ γ) (fderiv ℝ (MA.ext f₁) (γ 0) ((0 : Fin r → ℂ), w)) 0 :=
    (MA.ext_smooth_diff hf₁ (γ 0) hq0).hasFDerivAt.comp_hasDerivAt 0 hγd
  have h2 : HasDerivAt (MA.ext f₂ ∘ γ) (fderiv ℝ (MA.ext f₂) (γ 0) ((0 : Fin r → ℂ), w)) 0 :=
    (MA.ext_smooth_diff hf₂ (γ 0) hq0).hasFDerivAt.comp_hasDerivAt 0 hγd

  have hγc : Continuous γ := continuous_const.add (continuous_id.smul continuous_const)
  have hQ : ∀ᶠ t in 𝓝 (0 : ℝ), γ t ∈ MA.Qset r TT :=
    hγc.continuousAt.preimage_mem_nhds (by rw [hγ0]; exact (MA.Qset_open r TT).mem_nhds q.2)
  have hV' : ∀ᶠ t in 𝓝 (0 : ℝ), (γ t).2 ∈ V :=
    (continuous_snd.comp hγc).continuousAt.preimage_mem_nhds (by
      show V ∈ 𝓝 ((γ 0).2)
      rw [hγ0]; exact hV.mem_nhds hqV)
  have heq : MA.ext f₁ ∘ γ =ᶠ[𝓝 0] MA.ext f₂ ∘ γ := by
    filter_upwards [hQ, hV'] with t ht htV
    simp only [Function.comp_apply, MA.ext, dif_pos ht]
    refine hag ⟨γ t, ht⟩ ?_ htV
    show (q.1 + t • ((0 : Fin r → ℂ), w)).1 = c
    simp [hq]
  have := h1.unique (h2.congr_of_eventuallyEq heq)
  rwa [hγ0] at this

theorem locOp_euler (v : M.Var r) (hv : ((ofLex v).1 : ℕ) = r) : LocOpQ (MA.eulerQ (TT := TT) v) := by
  intro h₁ h₂ c V hV hag q hq hqV
  show MA.coordE v q.1 * MA.wirt v (MA.ext h₁.1) q.1 = MA.coordE v q.1 * MA.wirt v (MA.ext h₂.1) q.1
  unfold MA.wirt
  rw [dirE_zeta v hv]
  have hI : Complex.I • ((0 : Fin r → ℂ), (1 : ℂ)) = ((0 : Fin r → ℂ), Complex.I) := by
    ext <;> simp
  rw [hI, fderiv_zeta_local h₁.2 h₂.2 c V hV hag q hq hqV 1, fderiv_zeta_local h₁.2 h₂.2 c V hV hag q hq hqV Complex.I]

end loc

section ent

variable (P : M.Par)

def EntOK (A : MA.A P (MA.DQ P)) : Prop := ∀ π π', LocOpQ (A π π').1

theorem entOK_add {A B : MA.A P (MA.DQ P)} (hA : EntOK P A) (hB : EntOK P B) : EntOK P (A + B) :=
  fun π π' => locOp_add (hA π π') (hB π π')

theorem entOK_mul {A B : MA.A P (MA.DQ P)} (hA : EntOK P A) (hB : EntOK P B) : EntOK P (A * B) := by
  intro π π'
  rw [Matrix.mul_apply]
  have key : ∀ s : Finset (M.Ty P), LocOpQ (∑ j ∈ s, A π j * B j π').1 := by
    classical
    intro s
    refine Finset.induction_on s ?_ ?_
    · rw [Finset.sum_empty]
      exact locOp_zero
    · intro j s hj ih
      rw [Finset.sum_insert hj]
      exact locOp_add (locOp_mul (hA π j) (hB j π')) ih
  exact key Finset.univ

theorem entOK_sum {ι : Type} (s : Finset ι) (A : ι → MA.A P (MA.DQ P)) (hA : ∀ i ∈ s, EntOK P (A i)) :
    EntOK P (∑ i ∈ s, A i) := by
  classical
  revert hA
  refine Finset.induction_on s (fun _ => by rw [Finset.sum_empty]; exact fun _ _ => locOp_zero) ?_
  intro i s hi ih hA
  rw [Finset.sum_insert hi]
  exact entOK_add P (hA i (Finset.mem_insert_self i s)) (ih fun j hj => hA j (Finset.mem_insert_of_mem hj))

theorem locOp_algebraMap (z : ℂ) : LocOpQ ((algebraMap ℂ (MA.DQ P).Pr z).1) := by
  rw [show (algebraMap ℂ (MA.DQ P).Pr z).1 = z • 1 by simp [Algebra.algebraMap_eq_smul_one]; rfl]
  exact locOp_smul z locOp_one

theorem entOK_algebraMap (z : ℂ) : EntOK P (algebraMap ℂ (MA.A P (MA.DQ P)) z) := by
  rw [Matrix.algebraMap_eq_diagonal]
  intro π π'
  by_cases h : π = π'
  · subst h
    rw [Matrix.diagonal_apply_eq]
    exact locOp_algebraMap P z
  · rw [Matrix.diagonal_apply_ne _ h]
    exact locOp_zero

theorem entOK_diag (x : M.Ty P → (MA.DQ P).Pr) (hx : ∀ π, LocOpQ (x π).1) : EntOK P (Matrix.diagonal x) := by
  intro π π'
  by_cases h : π = π'
  · subst h
    rw [Matrix.diagonal_apply_eq]
    exact hx π
  · rw [Matrix.diagonal_apply_ne _ h]
    exact locOp_zero

theorem entOK_sc (w : (MA.DQ P).Pr) (hw : LocOpQ w.1) : EntOK P (MA.sc P (MA.DQ P) w) := by
  intro π π'
  unfold MA.sc
  rw [Matrix.scalar_apply, Matrix.diagonal_apply]
  split_ifs
  · exact hw
  · exact locOp_zero

theorem entOK_fnP (f fb : (MA.DQ P).R) : EntOK P (MA.sc P (MA.DQ P) ((MA.DQ P).fnP f fb)) :=
  entOK_sc P _ (locOp_mulOp f)

theorem entOK_kap (φ : M.Ty P → ℂ) : EntOK P (MA.kap P (MA.DQ P) φ) := by
  intro π π'
  simp only [MA.kap, AlgHom.comp_apply, Matrix.diagonalAlgHom_apply, Matrix.diagonal_apply]
  split_ifs
  · exact locOp_algebraMap P _
  · exact locOp_zero

theorem entOK_SS (l : ℕ) : EntOK P (MA.SS P (MA.DQ P) l) := by
  intro π π'
  unfold MA.SS
  simp only [Matrix.of_apply]
  split_ifs
  · exact locOp_algebraMap P _
  · exact locOp_zero

theorem entOK_star_SS (l : ℕ) : EntOK P (star (MA.SS P (MA.DQ P) l)) := by
  intro π π'
  rw [Matrix.star_apply]
  unfold MA.SS
  simp only [Matrix.of_apply]
  split_ifs
  · rw [← algebraMap_star_comm]; exact locOp_algebraMap P _
  · rw [star_zero]; exact locOp_zero

theorem locOp_dz : LocOpQ (MA.DQ P).dzP.1 := by
  show LocOpQ ((MA.DQ P).mulOp ((MA.DQ P).inv ((MA.DQ P).x M.vz)) * (MA.DQ P).ev M.vz)
  exact locOp_mul (locOp_mulOp _) (locOp_euler M.vz (by simp [M.vz]))

theorem locOp_dzb : LocOpQ (MA.DQ P).dzbP.1 := by
  show LocOpQ ((MA.DQ P).mulOp ((MA.DQ P).inv ((MA.DQ P).x M.vzb)) * (MA.DQ P).ev M.vzb)
  exact locOp_mul (locOp_mulOp _) (locOp_euler M.vzb (by simp [M.vzb]))

theorem entOK_nab : EntOK P (MA.nabA P (MA.DQ P)) := by
  refine entOK_diag P _ fun π => ?_
  show LocOpQ ((MA.DQ P).dzP.1 + (M.aC P π : ℂ) • ((MA.DQ P).mulOp ((MA.DQ P).x M.vzb) *
    (MA.DQ P).mulOp ((MA.DQ P).inv ((MA.DQ P).gg P.TT))))
  exact locOp_add (locOp_dz P) (locOp_smul _ (locOp_mul (locOp_mulOp _) (locOp_mulOp _)))

theorem entOK_nabs : EntOK P (MA.nabsA P (MA.DQ P)) := by
  refine entOK_diag P _ fun π => ?_
  show LocOpQ (-(MA.DQ P).dzbP.1 + (M.aC P π : ℂ) • ((MA.DQ P).mulOp ((MA.DQ P).x M.vz) *
    (MA.DQ P).mulOp ((MA.DQ P).inv ((MA.DQ P).gg P.TT))))
  refine locOp_add ?_ (locOp_smul _ (locOp_mul (locOp_mulOp _) (locOp_mulOp _)))
  rw [show -(MA.DQ P).dzbP.1 = (-1 : ℂ) • (MA.DQ P).dzbP.1 by rw [neg_one_smul]]
  exact locOp_smul _ (locOp_dzb P)

private theorem locOpQ_neg {r : ℕ} {TT : ℝ} {T : Module.End ℂ (MA.SmQ r TT)} (hT : LocOpQ T) :
    LocOpQ (-T) := by
  intro h₁ h₂ c V hV hag q hq hqV
  have e : ∀ h : MA.SmQ r TT, (((-T) h : MA.SmQ r TT) : MA.Qp r TT → ℂ) q =
      -(T h : MA.Qp r TT → ℂ) q := fun h => rfl
  rw [e, e, hT h₁ h₂ c V hV hag q hq hqV]

theorem entOK_neg {A : MA.A P (MA.DQ P)} (hA : EntOK P A) : EntOK P (-A) :=
  fun π π' => locOpQ_neg (hA π π')

theorem entOK_sub {A B : MA.A P (MA.DQ P)} (hA : EntOK P A) (hB : EntOK P B) : EntOK P (A - B) := by
  rw [sub_eq_add_neg]
  exact entOK_add P hA (entOK_neg P hB)

theorem entOK_QQr (Y : ℂ) (a b : Fin 2) : EntOK P (MA.QQr P (MA.DQ P) Y a b) := by
  have hz : EntOK P (MA.zA P (MA.DQ P)) := entOK_fnP P _ _
  have hzb : EntOK P (MA.zbA P (MA.DQ P)) := entOK_fnP P _ _
  have hgg : EntOK P (MA.ggA P (MA.DQ P)) := entOK_fnP P _ _
  have hggi : EntOK P (MA.ggiA P (MA.DQ P)) := entOK_fnP P _ _
  have hx : EntOK P (MA.xA P (MA.DQ P) Y) := entOK_kap P _
  have hl0 : EntOK P (MA.l0A P (MA.DQ P) Y) :=
    entOK_sub P (entOK_neg P (entOK_nab P)) (entOK_mul P (entOK_algebraMap P _) (entOK_mul P hzb hggi))
  have hm0 : EntOK P (MA.m0A P (MA.DQ P) Y) :=
    entOK_sub P (entOK_neg P (entOK_nabs P)) (entOK_mul P (entOK_algebraMap P _) (entOK_mul P hz hggi))
  have hS21 : EntOK P (MA.weightedSumBis P (MA.DQ P) Y) :=
    entOK_sum P _ _ fun l _ => entOK_mul P (entOK_SS P l) (entOK_kap P _)
  have hS12 : EntOK P (MA.S12 P (MA.DQ P) Y) :=
    entOK_sum P _ _ fun l _ => entOK_mul P (entOK_kap P _) (entOK_star_SS P l)
  have hS4 : EntOK P (MA.S4 P (MA.DQ P) Y) :=
    entOK_sum P _ _ fun l _ => entOK_sum P _ _ fun j _ =>
      entOK_mul P (entOK_mul P (entOK_star_SS P l) (entOK_SS P j)) (entOK_kap P _)
  fin_cases a <;> fin_cases b
  · show EntOK P (MA.t11 P (MA.DQ P) Y)
    unfold MA.t11
    exact entOK_add P (entOK_add P (entOK_add P (entOK_add P (entOK_mul P hggi (entOK_kap P _))
      (entOK_mul P (entOK_mul P (entOK_mul P hgg hx) hm0) hl0))
      (entOK_mul P (entOK_mul P (entOK_mul P hgg hm0) hggi) hS21)) (entOK_mul P hS12 hl0)) (entOK_mul P hggi hS4)
  · show EntOK P (MA.t12 P (MA.DQ P) Y)
    unfold MA.t12
    exact entOK_add P (entOK_mul P (entOK_mul P hgg hx) hm0) hS12
  · show EntOK P (MA.t21 P (MA.DQ P) Y)
    unfold MA.t21
    exact entOK_add P (entOK_mul P (entOK_mul P hgg hx) hl0) hS21
  · show EntOK P (MA.t22 P (MA.DQ P) Y)
    unfold MA.t22
    exact entOK_mul P hgg hx

end ent

theorem smq_sum_apply {r : ℕ} {TT : ℝ} {ι : Type} (s : Finset ι) (F : ι → MA.SmQ r TT) (q : MA.Qp r TT) :
    ((∑ i ∈ s, F i : MA.SmQ r TT) : MA.Qp r TT → ℂ) q = ∑ i ∈ s, (F i : MA.Qp r TT → ℂ) q := by
  classical
  refine Finset.induction_on s (by rw [Finset.sum_empty, Finset.sum_empty]; rfl) ?_
  intro i s hi ih
  rw [Finset.sum_insert hi, Finset.sum_insert hi, ← ih]
  rfl

theorem model_locality_holds : ModelLocal := by
  intro P f g c V hV hag Y a b ρ q hq hqV
  have hE := entOK_QQr P Y a b
  show ((∑ π', (MA.QQr P (MA.DQ P) Y a b ρ π').1 (f π') : MA.SmQ P.r P.TT) : MA.Qp P.r P.TT → ℂ) q =
    ((∑ π', (MA.QQr P (MA.DQ P) Y a b ρ π').1 (g π') : MA.SmQ P.r P.TT) : MA.Qp P.r P.TT → ℂ) q
  refine (smq_sum_apply (r := P.r) (TT := P.TT) Finset.univ
    (fun π' => (MA.QQr P (MA.DQ P) Y a b ρ π').1 (f π')) q).trans ?_
  refine Eq.trans ?_ (smq_sum_apply (r := P.r) (TT := P.TT) Finset.univ
    (fun π' => (MA.QQr P (MA.DQ P) Y a b ρ π').1 (g π')) q).symm
  exact Finset.sum_congr rfl fun π' _ =>
    hE ρ π' (f π') (g π') c V hV (fun q' hq' hq'V => hag π' q' hq' hq'V) q hq hqV

end

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCModelLocal =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCFinal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCFinal", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCFamLocal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCGenToQQ\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCModelLocal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCRadSpSmooth\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCSecMove\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGaugeGQLFam\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGaugeGRawSmooth\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheSectionStab\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

theorem gCore_of_genTransfer (hGT : GenTransfer) : GCore :=
  gauge_construction_of_truncation gauge_section_exists section_move_holds family_locality_holds hGT generator_to_quadratic_form model_locality_holds
    radial_space_smoothness Formalism.FourierDecayAlt.P.CutMP.Gauge.raw_gauge_smoothness_holds Formalism.FourierDecayAlt.P.CutMP.Gauge.quadratic_local_family_holds assumption_on_sections_holds

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCFinal =====
