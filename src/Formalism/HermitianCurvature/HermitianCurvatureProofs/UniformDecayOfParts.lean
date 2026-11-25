module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffForm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegrableOfDecay4
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBFVnice
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorIsomorphismCompactSupport
public import Formalism.HermitianCurvature.RealInputsClosedAdmissibleSettings
public import Formalism.HermitianCurvature.CompositeFormulaLevelZero
public import Mathlib.Analysis.Complex.Circle
public import Mathlib.Analysis.Fourier.Inversion
public import Mathlib.Analysis.Real.Pi.Bounds
public import Mathlib.Analysis.Fourier.FourierTransform
public import Formalism.HermitianCurvature.HerGenC
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SizeStandardCompact
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceCompactSupportCoefficient
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LimitOfModuleForms
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.StandardPairingOfHeads
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CccoefMono
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGSlice
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RoomOffGridSymmetric
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveDensityModerateGrowth
import Mathlib.Analysis.Calculus.ContDiff.Bounds

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.FormWaveMDiff, Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormLeDecay, Formalism.HermitianCurvature.HermitianCurvatureProofs.NormLeIntegralFsv, Formalism.HermitianCurvature.HermitianCurvatureProofs.XiBound, Formalism.HermitianCurvature.HermitianCurvatureProofs.NormFsvSubOnePow, Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffFormOf, Formalism.HermitianCurvature.HermitianCurvatureProofs.NormExpMulISubOne, Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveLSubOneCcle, Formalism.HermitianCurvature.HermitianCurvatureProofs.BoundOnEarlierRegion, Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDifferenceForm, Formalism.HermitianCurvature.HermitianCurvatureProofs.UniformDecayOfParts

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FormWaveMDiff =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FormWaveMDiff", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegrableOfDecay4\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PBFVnice\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGSlice\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorIsomorphismCompactSupport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBO

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd
open scoped ComplexConjugate

theorem fsv_mul_fsv (a b t : ℂ) : P5.fsv a t * P5.fsv b t = P5.fsv (a + b) t := by
  unfold P5.fsv
  rw [← Complex.exp_add]
  congr 1
  simp only [map_add (f := _)]
  ring

section wave

variable {k ρ : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem uInv_cons_apply (s : ℂ) (l : C.Letter) (w : List C.Letter)
    (x : Wd.Ix (Fin (w.length + 1)) → B.Mat k ρ → (Wq →L[ℂ] Wp)) (e : Wd.Ix (Fin (w.length + 1))) :
    KB.uInv s (l :: w) x e =
      if e 0 = 0 then KB.uInv s w (fun e' => x (Fin.cons (0 : Fin 2) e')) (fun a => e a.succ)
      else KB.uInv s w (fun e' => x (Fin.cons (1 : Fin 2) e')) (fun a => e a.succ) +
        (if l.1 then s else conj s) • KB.uInv s w (fun e' => x (Fin.cons (0 : Fin 2) e')) (fun a => e a.succ) :=
  rfl

theorem uInv_cons0 (s : ℂ) (l : C.Letter) (w : List C.Letter)
    (x : Wd.Ix (Fin (w.length + 1)) → B.Mat k ρ → (Wq →L[ℂ] Wp)) :
    (fun e' => KB.uInv s (l :: w) x (Fin.cons (0 : Fin 2) e')) = KB.uInv s w (fun e' => x (Fin.cons 0 e')) := by
  funext e'
  rw [uInv_cons_apply, ite_eq_left (by simp)]
  simp

theorem uInv_cons1 (s : ℂ) (l : C.Letter) (w : List C.Letter)
    (x : Wd.Ix (Fin (w.length + 1)) → B.Mat k ρ → (Wq →L[ℂ] Wp)) :
    (fun e' => KB.uInv s (l :: w) x (Fin.cons (1 : Fin 2) e')) =
      KB.uInv s w (fun e' => x (Fin.cons 1 e')) + (if l.1 then s else conj s) • KB.uInv s w (fun e' => x (Fin.cons 0 e')) := by
  funext e'
  rw [uInv_cons_apply, ite_eq_right (by simp)]
  simp only [Fin.cons_succ, Pi.add_apply, Pi.smul_apply]

theorem uInv_comp (s σ : ℂ) : ∀ (w : List C.Letter) (x : Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)),
    KB.uInv s w (KB.uInv σ w x) = KB.uInv (s + σ) w x
  | [], x => rfl
  | l :: w, x => by
    have hlinear : ∀ (v : List C.Letter)
        (a b : Wd.Ix (Fin v.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) (c : ℂ),
        KB.uInv s v (a + c • b) = KB.uInv s v a + c • KB.uInv s v b := by
      intro v
      induction v with
      | nil => intros; rfl
      | cons m v ih =>
        intro a b c
        funext e
        have htail (j : Fin 2) :
            KB.uInv s v (fun i => a (Fin.cons j i) + c • b (Fin.cons j i)) (fun i => e i.succ) =
              KB.uInv s v (fun i => a (Fin.cons j i)) (fun i => e i.succ) +
                c • KB.uInv s v (fun i => b (Fin.cons j i)) (fun i => e i.succ) :=
          congrFun (ih (fun i => a (Fin.cons j i)) (fun i => b (Fin.cons j i)) c) (fun i => e i.succ)
        by_cases h : e 0 = 0
        · simpa only [uInv_cons_apply, ite_eq_left h, Pi.add_apply, Pi.smul_apply] using htail 0
        · simp only [uInv_cons_apply, ite_eq_right h, Pi.add_apply, Pi.smul_apply, htail 0, htail 1,
            smul_add, smul_smul, mul_comm c]
          abel
    funext e
    rw [uInv_cons_apply, uInv_cons0, uInv_cons1, uInv_cons_apply (s + σ), hlinear,
      uInv_comp s σ w, uInv_comp s σ w]
    split_ifs with h0 hl
    · rfl
    · simp only [Pi.add_apply, Pi.smul_apply]
      rw [add_assoc, ← add_smul, add_comm σ s]
    · simp only [Pi.add_apply, Pi.smul_apply, map_add (f := _)]
      rw [add_assoc, ← add_smul, add_comm (conj σ) (conj s)]

theorem uInv_smulFun (s : ℂ) (φ : B.Mat k ρ → ℂ) : ∀ (w : List C.Letter)
    (x : Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)),
    KB.uInv s w (fun e g => φ g • x e g) = fun e g => φ g • KB.uInv s w x e g
  | [], x => rfl
  | l :: w, x => by
    funext e g
    have ih0 := congrFun (congrFun (uInv_smulFun s φ w (fun i => x (Fin.cons 0 i))) (fun a => e a.succ)) g
    have ih1 := congrFun (congrFun (uInv_smulFun s φ w (fun i => x (Fin.cons 1 i))) (fun a => e a.succ)) g
    by_cases h : e 0 = 0
    · simpa only [uInv_cons_apply, ite_eq_left h] using ih0
    · simp only [uInv_cons_apply, ite_eq_right h, Pi.add_apply, Pi.smul_apply, ih0, ih1, smul_add]
      rw [smul_comm (φ g)]

theorem waveG_comp (Bs : B.RealPlaceData k ρ Wp Wq) (s σ : ℂ) (w : List C.Letter)
    (x : Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) :
    KB.waveG Bs s w (KB.waveG Bs σ w x) = KB.waveG Bs (s + σ) w x := by
  have e : KB.waveG Bs σ w x = fun e g => P5.fsv σ (Dmin k ρ Bs.z Bs.z' g ⟨1, by omega⟩) • KB.uInv σ w x e g := rfl
  funext e' g
  rw [e]
  show P5.fsv s (Dmin k ρ Bs.z Bs.z' g ⟨1, by omega⟩) •
      KB.uInv s w (fun e g => P5.fsv σ (Dmin k ρ Bs.z Bs.z' g ⟨1, by omega⟩) • KB.uInv σ w x e g) e' g =
    P5.fsv (s + σ) (Dmin k ρ Bs.z Bs.z' g ⟨1, by omega⟩) • KB.uInv (s + σ) w x e' g
  rw [uInv_smulFun, uInv_comp, smul_smul, fsv_mul_fsv]

theorem onOld_eq_self {w : List C.Letter}
    (M : (Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) → Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp))
    (hM : ∀ x, M x = x) :
    ∀ (ys : List ℝ) (x : Wd.Ix (Fin (KB.plusW ys w).length) → B.Mat k ρ → (Wq →L[ℂ] Wp)), KB.onOld M ys x = x
  | [], x => hM x
  | _ :: ys, x => by
    funext e
    show KB.onOld M ys (fun e' => x (Fin.cons (e (0 : Fin ((KB.plusW ys w).length + 1))) e')) (fun a => e a.succ) = x e
    rw [onOld_eq_self M hM ys]
    exact congrArg x (Fin.cons_self_tail e)

theorem mDiff_eq (Bs : B.RealPlaceData k ρ Wp Wq) (σ : ℂ) (w : List C.Letter)
    (x : Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) :
    mDiff Bs σ w x = KB.waveG Bs (3 * σ) w x - (3 : ℂ) • KB.waveG Bs (2 * σ) w x +
      (3 : ℂ) • KB.waveG Bs σ w x - x := by
  have hV : ∀ y, waveL Bs σ w y = KB.waveG Bs σ w y := fun _ => rfl
  have e2 : KB.waveG Bs σ w (KB.waveG Bs σ w x) = KB.waveG Bs (2 * σ) w x := by
    rw [waveG_comp]; congr 1; ring
  have e3 : KB.waveG Bs σ w (KB.waveG Bs (2 * σ) w x) = KB.waveG Bs (3 * σ) w x := by
    rw [waveG_comp]; congr 1; ring
  simp only [mDiff, pow_succ, pow_zero, one_mul, mul_apply_eq_comp, LinearMap.sub_apply, one_apply_eq_self,
    map_sub, hV]
  rw [e2, e3]
  module

end wave

section forms

variable {k ρ : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem mDiff_apply_eq (Bs : B.RealPlaceData k ρ Wp Wq) (σ : ℂ) (w : List C.Letter)
    (x : Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) (e : Wd.Ix (Fin w.length)) :
    mDiff Bs σ w x e = KB.waveG Bs (3 * σ) w x e + (-3 : ℂ) • KB.waveG Bs (2 * σ) w x e +
      (3 : ℂ) • KB.waveG Bs σ w x e + (-1 : ℂ) • x e := by
  rw [mDiff_eq]
  simp only [Pi.sub_apply, Pi.add_apply, Pi.smul_apply]
  module

theorem mDiff_nice (Bs : B.RealPlaceData k ρ Wp Wq) (σ : ℂ) (w : List C.Letter) (ε : ℝ)
    (x : Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) (hx : ∀ e, JC.NiceCoef Bs ε (x e)) :
    ∀ e, JC.NiceCoef Bs ε (mDiff Bs σ w x e) := by
  intro e
  rw [mDiff_apply_eq]
  have hw : ∀ t, JC.NiceCoef Bs ε (KB.waveG Bs t w x e) := fun t => Formalism.FourierDecayAlt.P.PBFV.waveG_nice Bs ε t w x hx e
  exact Formalism.FourierDecayAlt.P.JCx2.mn_nice_add (Formalism.FourierDecayAlt.P.JCx2.mn_nice_add (Formalism.FourierDecayAlt.P.JCx2.mn_nice_add (hw _)
    (Formalism.FourierDecayAlt.P.JCx2.mn_nice_smul _ (hw _))) (Formalism.FourierDecayAlt.P.JCx2.mn_nice_smul _ (hw _)))
    (Formalism.FourierDecayAlt.P.JCx2.mn_nice_smul _ (hx e))

end forms

section place

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem mDiff_cpt (hP : P5.ThmPActualCpt) (P : M.Par) (p : KB.Pl P Wp Wq) (j : ℕ) (hj : j ≤ P.r)
    (w : List C.Letter) (hw : KB.CutWord P p.l0 w) (σ : ℂ)
    (x : Wd.Ix (Fin w.length) → B.Mat P.k (P.r - j) → (Wq →L[ℂ] Wp)) (hx : ∀ e, KB.CptCoef (p.T.bs j) (x e)) :
    ∀ e, KB.CptCoef (p.T.bs j) (mDiff (p.T.bs j) σ w x e) := by
  have hc : ∀ t e, KB.CptCoef (p.T.bs j) (KB.waveG (p.T.bs j) t w x e) := fun t =>
    (Formalism.FourierDecayAlt.P.vector_isomorphism_compact_support hP Wp Wq P p j hj w hw t x x hx hx).1
  intro e
  rw [mDiff_apply_eq]
  exact Formalism.FourierDecayAlt.P.PBG.cpt_add_smul _ _ (Formalism.FourierDecayAlt.P.PBG.cpt_add_smul _ _
    (Formalism.FourierDecayAlt.P.PBG.cpt_add_smul _ _ (hc _ e) (hc _ e)) (hc _ e)) (hx e)

theorem form_wave_mDiff (P : M.Par) (p : KB.Pl P Wp Wq) (j : ℕ) (hj : j ≤ P.r) (w : List C.Letter)
    (x y : Wd.Ix (Fin w.length) → B.Mat P.k (P.r - j) → (Wq →L[ℂ] Wp))
    (hx : ∀ e, KB.CptCoef (p.T.bs j) (x e)) (hy : ∀ e, KB.CptCoef (p.T.bs j) (y e)) (s σ : ℂ) :
    p.form j hj w (KB.waveG (p.T.bs j) s w (mDiff (p.T.bs j) σ w x)) y =
      p.form j hj w (KB.waveG (p.T.bs j) (s + 3 * σ) w x) y - 3 * p.form j hj w (KB.waveG (p.T.bs j) (s + 2 * σ) w x) y +
        3 * p.form j hj w (KB.waveG (p.T.bs j) (s + σ) w x) y - p.form j hj w (KB.waveG (p.T.bs j) s w x) y := by
  obtain ⟨ε, hε, hxn⟩ := nice_common (p.T.bs j) hx
  obtain ⟨ε', hε', hyn⟩ := nice_common (p.T.bs j) hy
  have hd : ∀ t, Formalism.FourierDecayAlt.P.PBG.DecV (KB.waveG (p.T.bs j) t w x) := fun t =>
    Formalism.FourierDecayAlt.P.PBG.decV_of_nice (Formalism.FourierDecayAlt.P.PBFV.waveG_nice (p.T.bs j) ε t w x hxn)
  have hdy : Formalism.FourierDecayAlt.P.PBG.DecV y := Formalism.FourierDecayAlt.P.PBG.decV_of_nice hyn
  have hV : ∀ z, waveL (p.T.bs j) s w z = KB.waveG (p.T.bs j) s w z := fun _ => rfl
  have hW : KB.waveG (p.T.bs j) s w (mDiff (p.T.bs j) σ w x) =
      KB.waveG (p.T.bs j) (s + 3 * σ) w x + (-3 : ℂ) • KB.waveG (p.T.bs j) (s + 2 * σ) w x +
        (3 : ℂ) • KB.waveG (p.T.bs j) (s + σ) w x + (-1 : ℂ) • KB.waveG (p.T.bs j) s w x := by
    rw [mDiff_eq]
    calc KB.waveG (p.T.bs j) s w (KB.waveG (p.T.bs j) (3 * σ) w x - (3 : ℂ) • KB.waveG (p.T.bs j) (2 * σ) w x +
          (3 : ℂ) • KB.waveG (p.T.bs j) σ w x - x)
        = waveL (p.T.bs j) s w (KB.waveG (p.T.bs j) (3 * σ) w x - (3 : ℂ) • KB.waveG (p.T.bs j) (2 * σ) w x +
          (3 : ℂ) • KB.waveG (p.T.bs j) σ w x - x) := rfl
      _ = waveL (p.T.bs j) s w (KB.waveG (p.T.bs j) (3 * σ) w x) -
            (3 : ℂ) • waveL (p.T.bs j) s w (KB.waveG (p.T.bs j) (2 * σ) w x) +
            (3 : ℂ) • waveL (p.T.bs j) s w (KB.waveG (p.T.bs j) σ w x) - waveL (p.T.bs j) s w x := by
          simp only [map_sub, map_add (f := _), map_smul]
      _ = _ := by
          simp only [hV, waveG_comp]
          module
  rw [hW]
  unfold KB.Pl.form
  set A3 := KB.waveG (p.T.bs j) (s + 3 * σ) w x
  set A2 := KB.waveG (p.T.bs j) (s + 2 * σ) w x
  set A1 := KB.waveG (p.T.bs j) (s + σ) w x
  set A0 := KB.waveG (p.T.bs j) s w x
  have d32 := Formalism.FourierDecayAlt.P.PBG.decV_add (hd (s + 3 * σ)) (Formalism.FourierDecayAlt.P.PBG.decV_smul (-3 : ℂ) (hd (s + 2 * σ)))
  have d321 := Formalism.FourierDecayAlt.P.PBG.decV_add d32 (Formalism.FourierDecayAlt.P.PBG.decV_smul (3 : ℂ) (hd (s + σ)))
  rw [Formalism.FourierDecayAlt.P.PBG.form_sesq_left P p.T (M.sgn P p.l0) ⟨j, by omega⟩ w (A3 + (-3 : ℂ) • A2 + (3 : ℂ) • A1) A0 y
      (-1) d321 (hd s) hdy,
    Formalism.FourierDecayAlt.P.PBG.form_sesq_left P p.T (M.sgn P p.l0) ⟨j, by omega⟩ w (A3 + (-3 : ℂ) • A2) A1 y 3 d32
      (hd (s + σ)) hdy,
    Formalism.FourierDecayAlt.P.PBG.form_sesq_left P p.T (M.sgn P p.l0) ⟨j, by omega⟩ w A3 A2 y (-3) (hd (s + 3 * σ))
      (hd (s + 2 * σ)) hdy]
  ring

end place

end Formalism.FourierDecayAlt.P.PBO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FormWaveMDiff =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormLeDecay =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormLeDecay", "h": "module\n\npublic import Formalism.HermitianCurvature.RealInputsClosedAdmissibleSettings\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBO

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.YangianSpanCharacter.T Formalism.FourierDecayAlt.P5

theorem norm_fsv (a t : ℂ) : ‖fsv a t‖ = 1 := by
  unfold fsv
  rw [Complex.norm_exp]
  have : (a * t - conj a * conj t).re = 0 := by
    simp [Complex.mul_re, Complex.sub_re, Complex.conj_re, Complex.conj_im]
  rw [this, Real.exp_zero]

theorem continuous_fsv₂ : Continuous (fun q : ℂ × ℂ => fsv q.1 q.2) := by
  unfold fsv
  exact Complex.continuous_exp.comp ((continuous_fst.mul continuous_snd).sub
    ((Complex.continuous_conj.comp continuous_fst).mul (Complex.continuous_conj.comp continuous_snd)))

theorem integrable_fsv_mul {φ : ℂ → ℂ} (hi : Integrable φ) (a : ℂ) :
    Integrable (fun t => fsv a t * φ t) := by
  refine hi.bdd_mul (c := 1) ?_ (Filter.Eventually.of_forall fun t => (norm_fsv a t).le)
  exact (continuous_fsv₂.comp (continuous_const.prodMk continuous_id)).aestronglyMeasurable

theorem continuous_transform {φ : ℂ → ℂ} (hφ : Continuous φ) (hi : Integrable φ) :
    Continuous (fun s : ℂ => ∫ t, fsv s t * φ t) := by
  refine continuous_of_dominated (bound := fun t => ‖φ t‖) (fun s => ?_) (fun s => ?_) hi.norm ?_
  · exact ((continuous_fsv₂.comp (continuous_const.prodMk continuous_id)).mul hφ).aestronglyMeasurable
  · exact Filter.Eventually.of_forall fun t => by rw [norm_mul, norm_fsv, one_mul]
  · exact Filter.Eventually.of_forall fun t =>
      (continuous_fsv₂.comp (continuous_id.prodMk continuous_const)).mul continuous_const

theorem integrable_decay3' : Integrable (fun s : ℂ => ((1 + ‖s‖) ^ 3)⁻¹) := by
  have hd : Integrable (fun t : ℂ => (1 + ‖t‖) ^ (-(3 : ℝ))) volume := by
    refine integrable_one_add_norm ?_
    rw [Complex.finrank_real_complex]; norm_num
  refine hd.congr (Filter.Eventually.of_forall fun t => ?_)
  have h1 : (0 : ℝ) < 1 + ‖t‖ := by positivity
  simp only []
  rw [Real.rpow_neg h1.le, show (3 : ℝ) = ((3 : ℕ) : ℝ) by norm_num, Real.rpow_natCast]

theorem integral_norm_le_decay {Ξ : ℂ → ℂ} (hΞ : Continuous Ξ) {K : ℝ} (hK : ∀ s, ‖Ξ s‖ ≤ K * ((1 + ‖s‖) ^ 3)⁻¹) :
    Integrable Ξ ∧ ∫ s, ‖Ξ s‖ ≤ K * ∫ s : ℂ, ((1 + ‖s‖) ^ 3)⁻¹ := by
  have hint : Integrable Ξ :=
    Integrable.mono' (integrable_decay3'.const_mul K) hΞ.aestronglyMeasurable (Filter.Eventually.of_forall hK)
  refine ⟨hint, ?_⟩
  rw [← integral_const_mul]
  exact integral_mono hint.norm (integrable_decay3'.const_mul K) hK

theorem fsv_sigma {c : ℂ} (hc : c ≠ 0) :
    fsv (Complex.I * (Real.pi : ℂ) / (2 * c)) c = -1 ∧
      ‖Complex.I * (Real.pi : ℂ) / (2 * c)‖ = Real.pi / (2 * ‖c‖) := by
  constructor
  · unfold fsv
    have e1 : Complex.I * (Real.pi : ℂ) / (2 * c) * c = Complex.I * (Real.pi / 2 : ℝ) := by
      push_cast; field_simp
    have e2 : conj (Complex.I * (Real.pi : ℂ) / (2 * c)) * conj c = -(Complex.I * (Real.pi / 2 : ℝ)) := by
      rw [← map_mul, e1, map_mul, Complex.conj_I, Complex.conj_ofReal]; ring
    rw [e1, e2, sub_neg_eq_add, ← two_mul, show (2 : ℂ) * (Complex.I * ((Real.pi / 2 : ℝ) : ℂ)) =
      Real.pi * Complex.I by push_cast; ring, Complex.exp_pi_mul_I]
  · rw [norm_div, norm_mul, norm_mul, Complex.norm_I, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos Real.pi_pos, Complex.norm_two, one_mul]

theorem rr_eq_form {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {P : M.Par} (p : KB.Pl P Wp Wq)
    (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (j : ℕ) (hj : j ≤ P.r) (w : List C.Letter) (h : C.LPt)
    (hh : D.IsLocPt h j) :
    p.RR F j w h h = p.form j hj w (KB.slv p.T F j hj w h hh.2) (KB.slv p.T F j hj w h hh.2) := by
  unfold KB.Pl.RR D.RRplace
  rw [dite_eq_left ⟨hh, hh⟩, dite_eq_left hj]
  rfl

theorem bdd_of_tendsto {u : ℕ → ℂ} {x : ℂ} (hu : Tendsto u atTop (𝓝 x)) : ∃ B : ℝ, 0 ≤ B ∧ ∀ n, ‖u n‖ ≤ B := by
  obtain ⟨B, hB⟩ := isBounded_iff_forall_norm_le.1 (Metric.isBounded_range_of_tendsto u hu)
  exact ⟨max B 0, le_max_right _ _, fun n => (hB _ ⟨n, rfl⟩).trans (le_max_left _ _)⟩

end Formalism.FourierDecayAlt.P.PBO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormLeDecay =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NormLeIntegralFsv =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.NormLeIntegralFsv", "h": "module\n\npublic import Formalism.HermitianCurvature.CompositeFormulaLevelZero\npublic import Mathlib.Analysis.Complex.Circle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Fourier.Inversion\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Real.Pi.Bounds\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Fourier.FourierTransform\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Real
open scoped FourierTransform RealInnerProductSpace ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBO

def isoQ : ℂ ≃ₗᵢ[ℝ] ℂ where
  toFun s := conj (Complex.I * s)
  invFun w := -Complex.I * conj w
  map_add' a b := by simp [mul_add]
  map_smul' c a := by
    simp only [RingHom.id_apply, Complex.real_smul, map_mul, Complex.conj_ofReal]
    ring
  left_inv a := by
    simp only [map_mul, Complex.conj_I, Complex.conj_conj]
    ring_nf
    simp
  right_inv w := by
    simp only [map_mul, map_neg, Complex.conj_I, Complex.conj_conj]
    ring_nf
    simp [Complex.I_sq]
  norm_map' s := by simp

theorem isoQ_apply (s : ℂ) : isoQ s = conj (Complex.I * s) := rfl

theorem fsv_smul (s u z : ℂ) : P5.fsv s u * z = 𝐞 (-⟪u, (π⁻¹ : ℝ) • isoQ s⟫) • z := by
  unfold P5.fsv
  simp [Circle.smul_def, isoQ_apply]
  left
  rw [Real.fourierChar_apply]
  congr 1
  have hπ : π ≠ 0 := Real.pi_ne_zero
  apply Complex.ext <;> simp <;> field_simp <;> ring

theorem norm_le_integral_fsv (φ : ℂ → ℂ) (hφ : Continuous φ) (hi : MeasureTheory.Integrable φ)
    (hΞ : MeasureTheory.Integrable (fun s : ℂ => ∫ t : ℂ, P5.fsv s t * φ t)) (t : ℂ) :
    ‖φ t‖ ≤ ∫ s : ℂ, ‖∫ u : ℂ, P5.fsv s u * φ u‖ := by
  have hc : (π⁻¹ : ℝ) ≠ 0 := inv_ne_zero Real.pi_ne_zero
  have hL : ∀ s : ℂ, (∫ u : ℂ, P5.fsv s u * φ u) = 𝓕 φ ((π⁻¹ : ℝ) • isoQ s) := by
    intro s
    rw [fourier_eq]
    exact integral_congr_ae (Filter.Eventually.of_forall fun u => fsv_smul s u (φ u))
  have hmp : MeasurePreserving isoQ := isoQ.measurePreserving
  have hme : MeasurableEmbedding isoQ := isoQ.toHomeomorph.measurableEmbedding
  have hint1 : Integrable (fun s : ℂ => 𝓕 φ ((π⁻¹ : ℝ) • s)) := by
    have h1 : Integrable ((fun s : ℂ => 𝓕 φ ((π⁻¹ : ℝ) • s)) ∘ isoQ) := by
      have h2 := hΞ
      simp_rw [hL] at h2
      exact h2
    exact (hmp.integrable_comp_emb hme).mp h1
  have hint : Integrable (𝓕 φ) := by
    first
      | exact (integrable_comp_smul_iff volume (𝓕 φ) hc).mp hint1
  have hinv : 𝓕⁻ (𝓕 φ) t = φ t := by
    first
      | exact hi.fourierInv_fourier_eq hint hφ.continuousAt
  have hb : ‖φ t‖ ≤ ∫ w : ℂ, ‖𝓕 φ w‖ := by
    rw [← hinv]
    first
      | rw [fourierInv_eq]
    refine (norm_integral_le_integral_norm _).trans (le_of_eq ?_)
    congr 1
    funext w
    first
      | exact Circle.norm_smul _ _
  have e1 := hmp.integral_comp hme (fun s : ℂ => ‖𝓕 φ ((π⁻¹ : ℝ) • s)‖)
  have e2 := Measure.integral_comp_smul (volume : Measure ℂ) (fun w : ℂ => ‖𝓕 φ w‖) (π⁻¹ : ℝ)
  try dsimp only at e1
  try dsimp only at e2
  have heq : (∫ s : ℂ, ‖∫ u : ℂ, P5.fsv s u * φ u‖) =
      |((π⁻¹ : ℝ) ^ 2)⁻¹| • ∫ w : ℂ, ‖𝓕 φ w‖ := by
    simp_rw [hL]
    rw [e1, e2, Complex.finrank_real_complex]
  rw [heq, smul_eq_mul]
  have h0 : 0 ≤ ∫ w : ℂ, ‖𝓕 φ w‖ := integral_nonneg fun _ => norm_nonneg _
  have hπ : 1 ≤ |((π⁻¹ : ℝ) ^ 2)⁻¹| := by
    rw [inv_pow, inv_inv, abs_of_pos (by positivity)]
    exact one_le_pow₀ (by linarith [Real.pi_gt_three])
  exact hb.trans (le_mul_of_one_le_left h0 hπ)

end Formalism.FourierDecayAlt.P.PBO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NormLeIntegralFsv =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.XiBound =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.XiBound", "h": "module\n\npublic import Formalism.HermitianCurvature.HerGenC\npublic import Formalism.HermitianCurvature.RealInputsClosedAdmissibleSettings\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SizeStandardCompact\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceCompactSupportCoefficient\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorIsomorphismCompactSupport\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBO

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.YangianSpanCharacter.T Formalism.FourierDecayAlt.P5

theorem xi_bound (hP : P5.ThmPActualCpt) {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]
    (P : M.Par) (p : KB.Pl P Wp Wq) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (hF : KB.CptCoef p.T.base F)
    (j : ℕ) (hj : j ≤ P.r) (w : List C.Letter) (hw : KB.CutWord P p.l0 w) (h h' : C.LPt) (hh : D.IsLocPt h j)
    (hh' : D.IsLocPt h' j)
    (grid : Fin 3 → Fin (2 * j + 1) → ℝ) (hinj : ∀ a, Function.Injective (grid a))
    (hgr : ∀ n : Fin 3 → Fin (2 * j + 1), KB.CutWord P p.l0 (KB.plusW (List.ofFn fun a => grid a (n a)) w) ∧
        KB.CutWord P p.l0 (KB.minusW (List.ofFn fun a => grid a (n a)) w) ∧
        (List.ofFn fun a => grid a (n a)).Pairwise (fun y y' => 2 < |y - y'|))
    (Mo : (Wd.Ix (Fin w.length) → B.Mat P.k (P.r - j) → (Wq →L[ℂ] Wp)) →ₗ[ℂ]
      (Wd.Ix (Fin w.length) → B.Mat P.k (P.r - j) → (Wq →L[ℂ] Wp)))
    (hMo : ∀ ε x, (∀ e, JC.NiceCoef (p.T.bs j) ε (x e)) → ∀ e, JC.NiceCoef (p.T.bs j) ε (Mo x e))
    (hMoC : ∀ x, (∀ e, KB.CptCoef (p.T.bs j) (x e)) → ∀ e, KB.CptCoef (p.T.bs j) (Mo x e)) (a b : ℝ)
    (hA0 : ‖p.form j hj w (Mo (KB.slv p.T F j hj w h hh.2)) (Mo (KB.slv p.T F j hj w h hh.2))‖ ≤ a)
    (hB0 : ‖p.form j hj w (KB.slv p.T F j hj w h' hh'.2) (KB.slv p.T F j hj w h' hh'.2)‖ ≤ b)
    (hA : ∀ n : Fin 3 → Fin (2 * j + 1), ‖p.form j hj (KB.plusW (List.ofFn fun a => grid a (n a)) w)
        (KB.onOld Mo _ (KB.slv p.T F j hj (KB.plusW (List.ofFn fun a => grid a (n a)) w) h hh.2))
        (KB.onOld Mo _ (KB.slv p.T F j hj (KB.plusW (List.ofFn fun a => grid a (n a)) w) h hh.2))‖ ≤ a)
    (hB : ∀ n : Fin 3 → Fin (2 * j + 1), ‖p.form j hj (KB.minusW (List.ofFn fun a => grid a (n a)) w)
        (KB.slv p.T F j hj (KB.minusW (List.ofFn fun a => grid a (n a)) w) h' hh'.2)
        (KB.slv p.T F j hj (KB.minusW (List.ofFn fun a => grid a (n a)) w) h' hh'.2)‖ ≤ b) (s : ℂ) :
    ‖p.form j hj w (KB.waveG (p.T.bs j) s w (Mo (KB.slv p.T F j hj w h hh.2))) (KB.slv p.T F j hj w h' hh'.2)‖ ≤
      8 * (1 + ∑ n : Fin 3 → Fin (2 * j + 1), |∏ a, F7.lagCo (grid a) (n a)| /
        Real.sqrt (((List.ofFn fun a => grid a (n a)).map fun y : ℝ => (Wd.qw (M.qC P) (D.positionted w) y).re).prod)) *
        Real.sqrt (a * b) * ((1 + ‖s‖) ^ 3)⁻¹ := by
  have ha : 0 ≤ a := (norm_nonneg _).trans hA0
  have hb : 0 ≤ b := (norm_nonneg _).trans hB0
  set x := KB.slv p.T F j hj w h hh.2 with hxdef
  set y := KB.slv p.T F j hj w h' hh'.2 with hydef
  have hxc : ∀ e, KB.CptCoef (p.T.bs j) (x e) := fun e =>
    Formalism.FourierDecayAlt.P.slice_compact_support_coefficient Wp Wq P p F j hj w h hh hF e
  have hyc : ∀ e, KB.CptCoef (p.T.bs j) (y e) := fun e =>
    Formalism.FourierDecayAlt.P.slice_compact_support_coefficient Wp Wq P p F j hj w h' hh' hF e
  set R := Real.sqrt (a * b) with hRdef
  have hR : 0 ≤ R := Real.sqrt_nonneg _

  have hCS : ‖p.form j hj w (KB.waveG (p.T.bs j) s w (Mo x)) y‖ ≤ R := by
    obtain ⟨-, hss⟩ := Formalism.FourierDecayAlt.P.size_standard_compact hP Wp Wq P p j hj w [] hw hw List.Pairwise.nil
    obtain ⟨hWc, hiso⟩ := Formalism.FourierDecayAlt.P.vector_isomorphism_compact_support hP Wp Wq P p j hj w hw s (Mo x) (Mo x) (hMoC x hxc)
      (hMoC x hxc)
    have key := hss (KB.waveG (p.T.bs j) s w (Mo x)) y hWc hyc
    simp only [List.map_nil, List.prod_nil, mul_one] at key
    change ‖p.form j hj w (KB.waveG (p.T.bs j) s w (Mo x)) y‖ ^ 2 ≤
      (p.form j hj w (KB.waveG (p.T.bs j) s w (Mo x)) (KB.waveG (p.T.bs j) s w (Mo x))).re *
        (p.form j hj w y y).re at key
    rw [hiso] at key
    have h1 := Complex.abs_re_le_norm (p.form j hj w (Mo x) (Mo x))
    have h2 := Complex.abs_re_le_norm (p.form j hj w y y)
    have hab : (p.form j hj w (Mo x) (Mo x)).re * (p.form j hj w y y).re ≤ a * b := by
      calc (p.form j hj w (Mo x) (Mo x)).re * (p.form j hj w y y).re
          ≤ |(p.form j hj w (Mo x) (Mo x)).re * (p.form j hj w y y).re| := le_abs_self _
        _ = |(p.form j hj w (Mo x) (Mo x)).re| * |(p.form j hj w y y).re| := abs_mul _ _
        _ ≤ a * b := mul_le_mul (h1.trans hA0) (h2.trans hB0) (abs_nonneg _) ha
    have habs := Real.abs_le_sqrt (key.trans hab)
    rwa [abs_of_nonneg (norm_nonneg _)] at habs

  set K := ∑ n : Fin 3 → Fin (2 * j + 1), |∏ a, F7.lagCo (grid a) (n a)| /
        Real.sqrt (((List.ofFn fun a => grid a (n a)).map fun y : ℝ => (Wd.qw (M.qC P) (D.positionted w) y).re).prod)
    with hKdef
  have hK : 0 ≤ K := Finset.sum_nonneg fun n _ => div_nonneg (abs_nonneg _) (Real.sqrt_nonneg _)
  have hT : ‖s‖ ^ 3 * ‖p.form j hj w (KB.waveG (p.T.bs j) s w (Mo x)) y‖ ≤ K * R := by
    refine (wave_bound3 hP P p F hF j hj w h h' hh hh' grid hinj hgr Mo hMo hMoC s).trans ?_
    rw [hKdef, Finset.sum_mul]
    refine Finset.sum_le_sum fun n _ => ?_
    obtain ⟨hc1, hc2, hpw⟩ := hgr n
    obtain ⟨hq, -⟩ := Formalism.FourierDecayAlt.P.size_standard_compact hP Wp Wq P p j hj w _ hc1 hc2 hpw
    have hqpos : 0 < ((List.ofFn fun a => grid a (n a)).map fun y : ℝ => (Wd.qw (M.qC P) (D.positionted w) y).re).prod := by
      refine List.prod_pos fun c hc => ?_
      obtain ⟨y, hy, rfl⟩ := List.mem_map.1 hc
      exact hq y hy
    rw [show ∀ u v x : ℝ, u / v * x = u * (x / v) from fun u v x => by ring]
    refine mul_le_mul_of_nonneg_left ?_ (abs_nonneg (∏ a, F7.lagCo (grid a) (n a)))
    rw [← Real.sqrt_div' _ hqpos.le]
    refine Real.sqrt_le_sqrt (div_le_div_of_nonneg_right ?_ hqpos.le)
    have h1 := Complex.abs_re_le_norm (p.form j hj (KB.plusW (List.ofFn fun a => grid a (n a)) w)
        (KB.onOld Mo _ (KB.slv p.T F j hj (KB.plusW (List.ofFn fun a => grid a (n a)) w) h hh.2))
        (KB.onOld Mo _ (KB.slv p.T F j hj (KB.plusW (List.ofFn fun a => grid a (n a)) w) h hh.2)))
    have h2 := Complex.abs_re_le_norm (p.form j hj (KB.minusW (List.ofFn fun a => grid a (n a)) w)
        (KB.slv p.T F j hj (KB.minusW (List.ofFn fun a => grid a (n a)) w) h' hh'.2)
        (KB.slv p.T F j hj (KB.minusW (List.ofFn fun a => grid a (n a)) w) h' hh'.2))
    exact (le_abs_self _).trans ((abs_mul _ _).le.trans
      (mul_le_mul (h1.trans (hA n)) (h2.trans (hB n)) (abs_nonneg _) ha))

  have hu : 0 < 1 + ‖s‖ := by positivity
  rw [← div_eq_mul_inv, le_div_iff₀ (pow_pos hu 3)]
  by_cases hs : ‖s‖ ≤ 1
  · have hu8 : (1 + ‖s‖) ^ 3 ≤ 8 := by
      calc (1 + ‖s‖) ^ 3 ≤ 2 ^ 3 := pow_le_pow_left₀ hu.le (by linarith) 3
        _ = 8 := by norm_num
    calc ‖p.form j hj w (KB.waveG (p.T.bs j) s w (Mo x)) y‖ * (1 + ‖s‖) ^ 3 ≤ R * 8 :=
          mul_le_mul hCS hu8 (by positivity) hR
      _ ≤ 8 * (1 + K) * R := by linarith [mul_nonneg hK hR]
  · push Not at hs
    have hu8 : (1 + ‖s‖) ^ 3 ≤ 8 * ‖s‖ ^ 3 := by
      calc (1 + ‖s‖) ^ 3 ≤ (2 * ‖s‖) ^ 3 := pow_le_pow_left₀ hu.le (by linarith) 3
        _ = 8 * ‖s‖ ^ 3 := by ring
    calc ‖p.form j hj w (KB.waveG (p.T.bs j) s w (Mo x)) y‖ * (1 + ‖s‖) ^ 3
        ≤ ‖p.form j hj w (KB.waveG (p.T.bs j) s w (Mo x)) y‖ * (8 * ‖s‖ ^ 3) :=
          mul_le_mul_of_nonneg_left hu8 (norm_nonneg _)
      _ = 8 * (‖s‖ ^ 3 * ‖p.form j hj w (KB.waveG (p.T.bs j) s w (Mo x)) y‖) := by ring
      _ ≤ 8 * (K * R) := by linarith
      _ ≤ 8 * (1 + K) * R := by linarith

end Formalism.FourierDecayAlt.P.PBO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.XiBound =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NormFsvSubOnePow =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.NormFsvSubOnePow", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FormWaveMDiff\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormLeDecay\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LimitOfModuleForms\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormLeIntegralFsv\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RoomOffGridSymmetric\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceCompactSupportCoefficient\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.StandardPairingOfHeads\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.XiBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBO

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.YangianSpanCharacter.T Formalism.FourierDecayAlt.P5

theorem transform_diff3 {φ : ℂ → ℂ} (hi : Integrable φ) (σ s : ℂ) :
    ∫ t, fsv s t * ((fsv σ t - 1) ^ 3 * φ t) =
      (∫ t, fsv (s + 3 * σ) t * φ t) - 3 * (∫ t, fsv (s + 2 * σ) t * φ t) + 3 * (∫ t, fsv (s + σ) t * φ t) -
        ∫ t, fsv s t * φ t := by
  have e : ∀ t, fsv s t * ((fsv σ t - 1) ^ 3 * φ t) =
      fsv (s + 3 * σ) t * φ t - 3 * (fsv (s + 2 * σ) t * φ t) + 3 * (fsv (s + σ) t * φ t) - fsv s t * φ t := by
    intro t
    have e1 : fsv (s + σ) t = fsv s t * fsv σ t := (fsv_mul_fsv s σ t).symm
    have e2 : fsv (s + 2 * σ) t = fsv s t * fsv σ t * fsv σ t := by
      rw [fsv_mul_fsv, fsv_mul_fsv]; congr 1; ring
    have e3 : fsv (s + 3 * σ) t = fsv s t * fsv σ t * fsv σ t * fsv σ t := by
      rw [fsv_mul_fsv, fsv_mul_fsv, fsv_mul_fsv]; congr 1; ring
    rw [e1, e2, e3]; ring
  simp only [e]
  have i0 := integrable_fsv_mul hi s
  have i1 := integrable_fsv_mul hi (s + σ)
  have i2 := integrable_fsv_mul hi (s + 2 * σ)
  have i3 := integrable_fsv_mul hi (s + 3 * σ)
  have j1 : Integrable (fun t => fsv (s + 3 * σ) t * φ t - 3 * (fsv (s + 2 * σ) t * φ t)) := i3.sub (i2.const_mul 3)
  have j2 : Integrable (fun t => fsv (s + 3 * σ) t * φ t - 3 * (fsv (s + 2 * σ) t * φ t) +
      3 * (fsv (s + σ) t * φ t)) := j1.add (i1.const_mul 3)
  rw [integral_sub j2 i0, integral_add j1 (i1.const_mul 3), integral_sub i3 (i2.const_mul 3),
    integral_const_mul, integral_const_mul]

theorem norm_fsv_sub_one_pow (σ t : ℂ) : ‖(fsv σ t - 1) ^ 3‖ ≤ 8 := by
  rw [norm_pow]
  have : ‖fsv σ t - 1‖ ≤ 2 := (norm_sub_le _ _).trans (by rw [norm_fsv, norm_one]; norm_num)
  calc ‖fsv σ t - 1‖ ^ 3 ≤ 2 ^ 3 := pow_le_pow_left₀ (norm_nonneg _) this 3
    _ = 8 := by norm_num



theorem decayUnif_of (hRH : KB.RadHead) (hHT : KB.HeadTop) (hWDF : WaveDiffForm) : DecayUnif := by
  intro hP Cb
  obtain ⟨CcF, hFL⟩ := Formalism.FourierDecayAlt.P.limit_of_module_forms Cb
  obtain ⟨CcW, hWD⟩ := hWDF hP Cb
  refine ⟨max CcF CcW, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f χ ε A N cut lo hi hθ hχ hε hf hfA hthr hcut hon hroom j hj w hw hN h h' hh hh'
  have hX : 0 ≤ ((P.r : ℝ) + 1) ^ 4 * (((N + 3 : ℕ) : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 +
      (2 * (P.r : ℝ) + P.k + 1) ^ 3) := by positivity
  have hthrF : CcF * ((P.r : ℝ) + 1) ^ 4 * (((N + 3 : ℕ) : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 +
      (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤ A := by
    have := mul_le_mul_of_nonneg_right (le_max_left CcF CcW) hX
    rw [mul_assoc] at hthr ⊢; exact this.trans hthr
  have hthrW : CcW * ((P.r : ℝ) + 1) ^ 4 * (((N + 3 : ℕ) : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 +
      (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤ A := by
    have := mul_le_mul_of_nonneg_right (le_max_right CcF CcW) hX
    rw [mul_assoc] at hthr ⊢; exact this.trans hthr
  obtain ⟨hcpt, hlim⟩ := hFL Wp Wq P p f χ ε A (N + 3) cut hθ hχ hε hf hfA hthrF hcut
  have hWDa := hWD Wp Wq P p f χ ε A N cut hθ hχ hε hf hfA hthrW hcut j hj w hw hN h hh

  obtain ⟨grid, hinj, hgr⟩ := grid_exists P p.l0 lo hi hon w hw j (by
    have h1 : (w.length : ℝ) ≤ N := by exact_mod_cast hN
    have h2 : (j : ℝ) ≤ P.r := by exact_mod_cast hj
    linarith)
  have hlp : ∀ n : Fin 3 → Fin (2 * j + 1), (KB.plusW (List.ofFn fun a => grid a (n a)) w).length ≤ N + 3 := by
    intro n; rw [Formalism.FourierDecayAlt.P.PBD.plusW_eq]; simp; omega
  have hlm : ∀ n : Fin 3 → Fin (2 * j + 1), (KB.minusW (List.ofFn fun a => grid a (n a)) w).length ≤ N + 3 := by
    intro n; rw [Formalism.FourierDecayAlt.P.PBD.minusW_eq]; simp; omega

  have bnd : ∀ (w' : List C.Letter), KB.CutWord P p.l0 w' → w'.length ≤ N + 3 → ∀ a : C.LPt,
      ∃ B, 0 ≤ B ∧ ∀ n, ‖p.RR (fun g => cut n g • D.cutF p.T.base χ f ε g) j w' a a‖ ≤ B :=
    fun w' hw' hl a => bdd_of_tendsto (hlim j w' hw' hl a a)
  choose Bp hBp0 hBp using fun n => bnd _ (hgr n).1 (hlp n) h
  choose Bm hBm0 hBm using fun n => bnd _ (hgr n).2.1 (hlm n) h'
  obtain ⟨Bh, hBh0, hBh⟩ := bnd w hw (by omega) h
  obtain ⟨Bh', hBh'0, hBh'⟩ := bnd w hw (by omega) h'
  set B := Bh + Bh' + ∑ n, (Bp n + Bm n) with hBdef
  have hS0 : 0 ≤ ∑ n, (Bp n + Bm n) := Finset.sum_nonneg fun n _ => add_nonneg (hBp0 n) (hBm0 n)
  have hB0 : 0 ≤ B := by positivity
  have hBpB : ∀ n, Bp n ≤ B := fun n => by
    have := Finset.single_le_sum (f := fun n => Bp n + Bm n) (fun n _ => add_nonneg (hBp0 n) (hBm0 n))
      (Finset.mem_univ n)
    linarith [hBm0 n]
  have hBmB : ∀ n, Bm n ≤ B := fun n => by
    have := Finset.single_le_sum (f := fun n => Bp n + Bm n) (fun n _ => add_nonneg (hBp0 n) (hBm0 n))
      (Finset.mem_univ n)
    linarith [hBp0 n]
  have hBhB : Bh ≤ B := by linarith
  have hBh'B : Bh' ≤ B := by linarith

  choose Cw hCw using fun n : Fin 3 → Fin (2 * j + 1) => hWDa (List.ofFn fun a => grid a (n a)) (by simp)
    (hgr n).1
  obtain ⟨C0, hC0⟩ := hWDa [] (by simp) hw
  set CW := |C0| + ∑ n, |Cw n| with hCWdef
  have hCW0 : 0 ≤ CW := by positivity
  have hCwW : ∀ n, Cw n ≤ CW := fun n => by
    have := Finset.single_le_sum (f := fun n => |Cw n|) (fun n _ => abs_nonneg _) (Finset.mem_univ n)
    linarith [le_abs_self (Cw n), abs_nonneg C0]
  have hC0W : C0 ≤ CW := by
    linarith [le_abs_self C0, Finset.sum_nonneg (fun n (_ : n ∈ Finset.univ) => abs_nonneg (Cw n))]

  set K := ∑ n : Fin 3 → Fin (2 * j + 1), |∏ a, F7.lagCo (grid a) (n a)| /
        Real.sqrt (((List.ofFn fun a => grid a (n a)).map fun y : ℝ => (Wd.qw (M.qC P) (D.positionted w) y).re).prod)
    with hKdef
  have hK : 0 ≤ K := Finset.sum_nonneg fun n _ => div_nonneg (abs_nonneg _) (Real.sqrt_nonneg _)
  set T1 := 8 * (1 + K) * Real.sqrt (B * B) with hT1
  have hT10 : 0 ≤ T1 := by positivity
  have hxi : ∀ m s, ‖p.form j hj w (KB.waveG (p.T.bs j) s w (KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h hh.2))
      (KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h' hh'.2)‖ ≤ T1 * ((1 + ‖s‖) ^ 3)⁻¹ := by
    intro m s
    refine xi_bound hP P p (fun g => cut m g • D.cutF p.T.base χ f ε g) (hcpt m) j hj w hw h h' hh hh' grid hinj hgr LinearMap.id
      (fun ε x hx => hx) (fun x hx => hx) B B ?_ ?_ ?_ ?_ s
    · show ‖p.form j hj w (KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h hh.2) (KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h hh.2)‖ ≤ B
      rw [← rr_eq_form p (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h hh]; exact (hBh m).trans hBhB
    · rw [← rr_eq_form p (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h' hh']; exact (hBh' m).trans hBh'B
    · intro n
      rw [onOld_eq_self (w := w) (⇑(LinearMap.id (R := ℂ)
        (M := Wd.Ix (Fin w.length) → FourierDecayAlt.B.Mat P.k (P.r - j) → (Wq →L[ℂ] Wp)))) (fun x => rfl), ← rr_eq_form p (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj _ h hh]
      exact (hBp n m).trans (hBpB n)
    · intro n
      rw [← rr_eq_form p (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj _ h' hh']
      exact (hBm n m).trans (hBmB n)
  set I3 := ∫ s : ℂ, ((1 + ‖s‖) ^ 3)⁻¹ with hI3
  have hI30 : 0 ≤ I3 := integral_nonneg fun s => by positivity
  set C := T1 + 8 * T1 * I3 + (1 + K) * Real.sqrt (CW * B) * I3 * Real.pi ^ 3 with hCdef
  have hX3 : 0 ≤ (1 + K) * Real.sqrt (CW * B) * I3 * Real.pi ^ 3 := by positivity
  have hT8 : 0 ≤ 8 * T1 * I3 := mul_nonneg (mul_nonneg (by norm_num) hT10) hI30
  have hC1 : T1 ≤ C := by rw [hCdef]; linarith only [hX3, hT8]
  clear_value C I3 T1 K CW B
  refine ⟨C, fun m => ⟨fun c hc => ?_, fun s => ?_⟩⟩
  swap
  · have hs0 : (0 : ℝ) ≤ ((1 + ‖s‖) ^ 3)⁻¹ := inv_nonneg.2 (pow_nonneg (by positivity) 3)
    exact (hxi m s).trans (mul_le_mul_of_nonneg_right hC1 hs0)
  obtain ⟨φ, hφc, hφi, hφeq, hφs⟩ := pStdCpt_of_heads hP hRH hHT Wp Wq P p (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h h' hh hh' Cb hθ
    (hcpt m) hw
  rw [← hφeq c hc]
  have hΞ : ∀ s, ‖∫ t, fsv s t * φ t‖ ≤ T1 * ((1 + ‖s‖) ^ 3)⁻¹ := fun s => by rw [hφs s]; exact hxi m s
  obtain ⟨hΞi, hΞI⟩ := integral_norm_le_decay (continuous_transform hφc hφi) hΞ
  have hφle := norm_le_integral_fsv φ hφc hφi hΞi c
  have hu : 0 < 1 + ‖c‖ := by positivity
  rw [← div_eq_mul_inv, le_div_iff₀ (pow_pos hu 3)]
  by_cases hc1 : ‖c‖ ≤ 1
  · have hu8 : (1 + ‖c‖) ^ 3 ≤ 8 := by
      calc (1 + ‖c‖) ^ 3 ≤ 2 ^ 3 := pow_le_pow_left₀ hu.le (by linarith) 3
        _ = 8 := by norm_num
    have h1 : ‖φ c‖ ≤ T1 * I3 := hφle.trans (by rw [hI3]; exact hΞI)
    have hTI : 0 ≤ T1 * I3 := mul_nonneg hT10 hI30
    calc ‖φ c‖ * (1 + ‖c‖) ^ 3 ≤ (T1 * I3) * 8 := mul_le_mul h1 hu8 (pow_nonneg hu.le 3) hTI
      _ = 8 * T1 * I3 := by ring
      _ ≤ C := by rw [hCdef]; linarith only [hX3, hT10]
  · push Not at hc1
    obtain ⟨hfσ, hσn⟩ := fsv_sigma hc
    set σ := Complex.I * (Real.pi : ℂ) / (2 * c) with hσdef
    have hc0 : 0 < ‖c‖ := by linarith
    have hσ2 : ‖σ‖ ≤ 2 := by
      rw [hσn, div_le_iff₀ (by linarith only [hc0])]
      linarith only [Real.pi_le_four, hc1]
    clear_value σ
    have hxc : ∀ e, KB.CptCoef (p.T.bs j) ((KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h hh.2) e) := fun e =>
      Formalism.FourierDecayAlt.P.slice_compact_support_coefficient Wp Wq P p _ j hj w h hh (hcpt m) e
    have hyc : ∀ e, KB.CptCoef (p.T.bs j) ((KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h' hh'.2) e) := fun e =>
      Formalism.FourierDecayAlt.P.slice_compact_support_coefficient Wp Wq P p _ j hj w h' hh' (hcpt m) e
    have hfc : Continuous (fun t => (fsv σ t - 1) ^ 3) :=
      ((continuous_fsv₂.comp (continuous_const.prodMk continuous_id)).sub continuous_const).pow 3
    have hψc : Continuous (fun t => (fsv σ t - 1) ^ 3 * φ t) := hfc.mul hφc
    have hψi : Integrable (fun t => (fsv σ t - 1) ^ 3 * φ t) :=
      hφi.bdd_mul (c := 8) hfc.aestronglyMeasurable
        (Filter.Eventually.of_forall fun t => norm_fsv_sub_one_pow σ t)
    have hσ6 : 0 ≤ ‖σ‖ ^ 6 := pow_nonneg (norm_nonneg _) 6
    have hΨb : ∀ s, ‖∫ t, fsv s t * ((fsv σ t - 1) ^ 3 * φ t)‖ ≤
        (8 * (1 + K) * Real.sqrt (CW * ‖σ‖ ^ 6 * B)) * ((1 + ‖s‖) ^ 3)⁻¹ := by
      intro s
      rw [transform_diff3 hφi σ s, hφs, hφs, hφs, hφs, ← form_wave_mDiff P p j hj w _ _ hxc hyc s σ]
      have hA0 : ‖p.form j hj w (mDiff (p.T.bs j) σ w (KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h hh.2)) (mDiff (p.T.bs j) σ w (KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h hh.2))‖ ≤ CW * ‖σ‖ ^ 6 :=
        (hC0 m σ hσ2).trans (mul_le_mul_of_nonneg_right hC0W hσ6)
      have hB0' : ‖p.form j hj w (KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h' hh'.2) (KB.slv p.T (fun g => cut m g • D.cutF p.T.base χ f ε g) j hj w h' hh'.2)‖ ≤ B := by
        rw [← rr_eq_form p _ j hj w h' hh']; exact (hBh' m).trans hBh'B
      have key := xi_bound hP P p _ (hcpt m) j hj w hw h h' hh hh' grid hinj hgr (mDiff (p.T.bs j) σ w)
        (fun ε x hx => mDiff_nice _ σ w ε x hx) (fun x hx => mDiff_cpt hP P p j hj w hw σ x hx)
        (CW * ‖σ‖ ^ 6) B hA0 hB0'
        (fun n => (hCw n m σ hσ2).trans (mul_le_mul_of_nonneg_right (hCwW n) hσ6))
        (fun n => by rw [← rr_eq_form p _ j hj _ h' hh']; exact (hBm n m).trans (hBmB n)) s
      rw [← hKdef] at key
      exact key
    obtain ⟨hΨi, hΨI⟩ := integral_norm_le_decay (continuous_transform hψc hψi) hΨb
    have hψle := norm_le_integral_fsv _ hψc hψi hΨi c
    have hψc' : ‖(fsv σ c - 1) ^ 3 * φ c‖ = 8 * ‖φ c‖ := by
      rw [hfσ, norm_mul]; norm_num
    have hsq : Real.sqrt (CW * ‖σ‖ ^ 6 * B) = ‖σ‖ ^ 3 * Real.sqrt (CW * B) := by
      rw [show CW * ‖σ‖ ^ 6 * B = (‖σ‖ ^ 3) ^ 2 * (CW * B) by ring, Real.sqrt_mul (pow_nonneg (pow_nonneg (norm_nonneg _) 3) 2),
        Real.sqrt_sq (pow_nonneg (norm_nonneg _) 3)]
    have h1 : 8 * ‖φ c‖ ≤ 8 * (1 + K) * (‖σ‖ ^ 3 * Real.sqrt (CW * B)) * I3 := by
      rw [← hψc', ← hsq, hI3]; exact hψle.trans hΨI
    have h2 : ‖φ c‖ ≤ (1 + K) * Real.sqrt (CW * B) * ‖σ‖ ^ 3 * I3 := by linarith only [h1]
    have hu8 : (1 + ‖c‖) ^ 3 ≤ 8 * ‖c‖ ^ 3 := by
      calc (1 + ‖c‖) ^ 3 ≤ (2 * ‖c‖) ^ 3 := pow_le_pow_left₀ hu.le (by linarith only [hc1]) 3
        _ = 8 * ‖c‖ ^ 3 := by ring
    have hπ : ‖σ‖ ^ 3 * (8 * ‖c‖ ^ 3) = Real.pi ^ 3 := by
      have hc3 : (2 : ℝ) ^ 3 * ‖c‖ ^ 3 ≠ 0 := (mul_pos (by norm_num) (pow_pos hc0 3)).ne'
      rw [hσn, div_pow, mul_pow, div_mul_eq_mul_div, mul_div_assoc,
        show (8 : ℝ) * ‖c‖ ^ 3 / (2 ^ 3 * ‖c‖ ^ 3) = 1 by rw [div_eq_one_iff_eq hc3]; norm_num, mul_one]
    have hK1 : (0 : ℝ) ≤ 1 + K := by linarith only [hK]
    have hs3 : (0 : ℝ) ≤ ‖σ‖ ^ 3 := pow_nonneg (norm_nonneg σ) 3
    have hQ4 : 0 ≤ (1 + K) * Real.sqrt (CW * B) * ‖σ‖ ^ 3 * I3 :=
      mul_nonneg (mul_nonneg (mul_nonneg hK1 (Real.sqrt_nonneg (CW * B))) hs3) hI30
    calc ‖φ c‖ * (1 + ‖c‖) ^ 3 ≤ ((1 + K) * Real.sqrt (CW * B) * ‖σ‖ ^ 3 * I3) * (8 * ‖c‖ ^ 3) :=
          mul_le_mul h2 hu8 (pow_nonneg hu.le 3) hQ4
      _ = (1 + K) * Real.sqrt (CW * B) * I3 * (‖σ‖ ^ 3 * (8 * ‖c‖ ^ 3)) := by ring
      _ = (1 + K) * Real.sqrt (CW * B) * I3 * Real.pi ^ 3 := by rw [hπ]
      _ ≤ C := by rw [hCdef]; linarith only [hT10, hT8]

end Formalism.FourierDecayAlt.P.PBO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NormFsvSubOnePow =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffFormOf =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffFormOf", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CccoefMono\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveDensityModerateGrowth\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RoomOffGridSymmetric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P.StandardPairingDecay

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Matrix Filter Topology

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def OnOldBound : Prop :=
  ∀ (k ρ : ℕ) (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] (Bs : B.RealPlaceData k ρ Wp Wq) (w : List C.Letter) (m : ℕ),
    ∃ K : ℝ, 0 ≤ K ∧ ∀ σ : ℂ, ‖σ‖ ≤ 2 → ∀ (ys : List ℝ) (A : ℝ)
      (x : Wd.Ix (Fin (KB.plusW ys w).length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) (c : ℝ),
      (∀ e, B.CCle (A + 3 * ((m + 1 : ℕ) : ℝ)) m (x e) c) →
      ∀ e, B.CCle A m (KB.onOld (PBO.mDiff Bs σ w) ys x e) (K * ‖σ‖ ^ 3 * c)

theorem plusW_length (ys : List ℝ) (w : List C.Letter) : (KB.plusW ys w).length = ys.length + w.length := by
  rw [Formalism.FourierDecayAlt.P.PBD.plusW_eq]
  simp

theorem waveDiffForm_of (hO : OnOldBound) : PBO.WaveDiffForm := by
  intro _hP Cb
  obtain ⟨Cs, hCs0, hSQ⟩ := Formalism.FourierDecayAlt.P.PBE.sliceQ
  refine ⟨2 * Cs + 2, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f χ ε A N cut _hInD hχ hε hf hfA hA hcut j hj w hw hwN h hh ys hys hcw
  have hk2 : 2 ≤ P.k := p.hl.2.2
  set N₂ : ℕ := 2 * N + 6 with hN₂
  set R : ℝ := ((P.r : ℝ) + 1) ^ 4 with hRdef
  have hR1 : 1 ≤ R := one_le_pow₀ (by have : (0 : ℝ) ≤ P.r := Nat.cast_nonneg _; linarith)
  set n0 : ℝ := 2 * (P.r : ℝ) + P.k + 1 with hn0
  have hn01 : 1 ≤ n0 := by
    have : (0 : ℝ) ≤ P.r := Nat.cast_nonneg _
    have : (0 : ℝ) ≤ P.k := Nat.cast_nonneg _
    rw [hn0]; linarith
  set X : ℝ := ((N + 3 : ℕ) : ℝ) * n0 ^ 2 + n0 ^ 3 with hXdef
  have hX1 : 1 ≤ X := by
    have h1 : 1 ≤ n0 ^ 3 := one_le_pow₀ hn01
    have : 0 ≤ ((N + 3 : ℕ) : ℝ) * n0 ^ 2 := by positivity
    rw [hXdef]; linarith
  have hA' : Cs * ((P.r : ℝ) + 1) ^ 4 * ((N₂ : ℝ) * (2 * (P.r : ℝ) + P.k + 1) ^ 2 +
      (2 * (P.r : ℝ) + P.k + 1) ^ 3) ≤ A - 1 := by
    have hX2 : (N₂ : ℝ) * n0 ^ 2 + n0 ^ 3 ≤ 2 * X := by
      rw [hXdef, hN₂]
      push_cast
      have : 0 ≤ n0 ^ 3 := by positivity
      linarith
    have hRX : 1 ≤ R * X := one_le_mul_of_one_le_of_one_le (one_le_pow₀ (by linarith [Nat.cast_nonneg (α := ℝ) P.r])) hX1
    have h0 : (2 * Cs + 2) * R * X ≤ A := hA
    calc Cs * R * ((N₂ : ℝ) * n0 ^ 2 + n0 ^ 3) ≤ Cs * R * (2 * X) :=
          mul_le_mul_of_nonneg_left hX2 (by positivity)
      _ = (2 * Cs + 2) * R * X - 2 * (R * X) := by ring
      _ ≤ A - 1 := by linarith
  set MM := 3 * (11 * (N₂ * (2 * P.r + P.k + 1) ^ 2 + (2 * P.r + P.k + 1) ^ 3) + 5) with hMM
  obtain ⟨bf, hbf⟩ := hfA MM
  have hbf0 : 0 ≤ bf := Formalism.FourierDecayAlt.P.JCx2.pd_ccle_nonneg hbf
  have hbf' : B.CCle (A - 1) MM f bf := Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_A (by linarith) hbf
  obtain ⟨Kp, hKp0, hKp⟩ := Formalism.FourierDecayAlt.P.JCx2.pd_cut_ccle (k := P.k) (r := P.r) (E := Wq →L[ℂ] Wp) MM
  have hψ : ∀ n : ℕ, B.CCle (A - 1) MM (fun g => Formalism.FourierDecayAlt.P.JCx2.pdPsi ((n : ℝ) + 1) g • f g)
      (Kp * bf / ((n : ℝ) + 1)) := fun n => hKp _ (by positivity) A f bf hbf
  have hψs : ∀ n : ℕ, B.CkOn ⊤ (B.GV P.k P.r) (fun g => Formalism.FourierDecayAlt.P.JCx2.pdPsi ((n : ℝ) + 1) g • f g) :=
    fun n => Formalism.FourierDecayAlt.P.JCx2.pd_smooth_smul (Formalism.FourierDecayAlt.P.JCx2.pd_psi_cd _) hf
  set hn : ℕ → B.Mat P.k P.r → (Wq →L[ℂ] Wp) := fun n g => cut n g • f g with hhn
  have hneq : ∀ n, hn n = fun g => f g + (-1 : ℂ) • (Formalism.FourierDecayAlt.P.JCx2.pdPsi ((n : ℝ) + 1) g • f g) := by
    intro n; funext g
    simp only [hhn, Formalism.FourierDecayAlt.P.PBE.cut_eq cut hcut n g, sub_smul, one_smul]
    simp [sub_eq_add_neg]
  have hnC : ∀ n, B.CCle (A - 1) MM (hn n) (bf + Kp * bf) := by
    intro n
    rw [hneq n]
    refine Formalism.FourierDecayAlt.P.JCx2.pd_ccle_mono_c (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_add hbf' (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_smul (-1) (hψ n))) ?_
    have h1 : Kp * bf / ((n : ℝ) + 1) ≤ Kp * bf := div_le_self (by positivity) (by
      have : (0 : ℝ) ≤ n := Nat.cast_nonneg n; linarith)
    simp only [norm_neg, norm_one, one_mul]
    linarith
  have hns : ∀ n, B.CkOn ⊤ (B.GV P.k P.r) (hn n) := by
    intro n
    rw [hneq n]
    exact Formalism.FourierDecayAlt.P.BetaSesquilinearity.CkOn_add hf (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CkOn_smul (-1) (hψs n))
  have hFn : ∀ n, (fun g => cut n g • D.cutF p.T.base χ f ε g) = D.cutF p.T.base χ (hn n) ε := by
    intro n; funext g
    simp only [D.cutF, hhn]
    rw [smul_comm]
  set w' := KB.plusW ys w with hw'
  have hw'len : w'.length ≤ N + 3 := by rw [hw', plusW_length]; omega
  have hN₂w : w'.length ≤ N₂ := by omega
  have hc : P.r - j = P.r - D.ptSize h := by rw [hh.2]
  have hQ := fun e => hSQ Cs le_rfl P.k P.r Wp Wq p.T χ (A - 1) N₂ P rfl rfl hk2 hχ hA' ε hε j hj w' hN₂w h hc hh e
  choose εa Ka hεa hKa hQ1 _hQ2 using hQ
  set KK : ℝ := ∑ e, Ka e with hKK
  have hKa' : ∀ e, Ka e ≤ KK := fun e =>
    Finset.single_le_sum (f := Ka) (fun e _ => hKa e) (Finset.mem_univ e)
  have hKK0 : 0 ≤ KK := Finset.sum_nonneg fun e _ => hKa e
  set cs : ℝ := KK * (bf + Kp * bf) with hcs
  have hcs0 : 0 ≤ cs := by positivity
  have hsl : ∀ n e, B.CCle (P5.Auser P N₂ + 1) (P5.mmUser P N₂) (Formalism.FourierDecayAlt.P.PBE.xs p.T χ ε j hj w' h hc (hn n) e) cs := by
    intro n e
    obtain ⟨-, h2⟩ := hQ1 e (hn n) _ (hns n) (hnC n)
    exact Formalism.FourierDecayAlt.P.JCx2.pd_ccle_mono_c h2 (mul_le_mul_of_nonneg_right (hKa' e) (by positivity))
  have hxs : ∀ n, KB.slv p.T (D.cutF p.T.base χ (hn n) ε) j hj w' h hh.2 =
      Formalism.FourierDecayAlt.P.PBE.xs p.T χ ε j hj w' h hc (hn n) := fun n => rfl
  set mo : ℕ := 5 + (2 * (P.r - j) + P.k + 1) * w'.length with hmo
  obtain ⟨K3, hK30, hK3⟩ := hO P.k (P.r - j) Wp Wq (p.T.bs j) w mo
  set Af : ℝ := P5.Auser P w'.length + 1 with hAf
  obtain ⟨Cf, hCf0, hCf⟩ := Formalism.FourierDecayAlt.P.JCx4.formLev_bound_mm P p.T (M.sgn P p.l0) ⟨j, by omega⟩ w' Af le_rfl
  have hq : ((2 * (P.r - j) + P.k + 1 : ℕ) : ℝ) ≤ n0 := by
    rw [hn0]
    have : P.r - j ≤ P.r := Nat.sub_le _ _
    have : ((P.r - j : ℕ) : ℝ) ≤ P.r := by exact_mod_cast this
    push_cast
    linarith
  have hL : (w'.length : ℝ) ≤ (N : ℝ) + 3 := by exact_mod_cast hw'len
  have hdec : Af - 1 + 3 * ((mo + 1 : ℕ) : ℝ) ≤ P5.Auser P N₂ + 1 := by
    have hmo' : ((mo + 1 : ℕ) : ℝ) = 6 + ((2 * (P.r - j) + P.k + 1 : ℕ) : ℝ) * (w'.length : ℝ) := by
      rw [hmo]; push_cast; ring
    have hnV : ((P5.nV P : ℕ) : ℝ) = n0 := by rw [hn0]; unfold P5.nV; push_cast; ring
    have hR3 : 1 ≤ ((P.r : ℝ) + 1) ^ 3 := one_le_pow₀ (by have : (0 : ℝ) ≤ P.r := Nat.cast_nonneg _; linarith)
    have hdiff : P5.Auser P N₂ - P5.Auser P w'.length =
        127 * ((P.r : ℝ) + 1) ^ 3 * (n0 ^ 2 * ((N₂ : ℝ) - w'.length)) := by
      unfold P5.Auser; rw [hnV]; ring
    have hgap : (N : ℝ) + 3 ≤ (N₂ : ℝ) - w'.length := by rw [hN₂]; push_cast; linarith
    have hN3 : (3 : ℝ) ≤ (N : ℝ) + 3 := by have : (0 : ℝ) ≤ N := Nat.cast_nonneg _; linarith
    have h1 : 127 * (n0 ^ 2 * ((N : ℝ) + 3)) ≤ P5.Auser P N₂ - P5.Auser P w'.length := by
      rw [hdiff]
      have hb : n0 ^ 2 * ((N : ℝ) + 3) ≤ n0 ^ 2 * ((N₂ : ℝ) - w'.length) :=
        mul_le_mul_of_nonneg_left hgap (by positivity)
      have hpos : 0 ≤ n0 ^ 2 * ((N : ℝ) + 3) := by positivity
      have hY : 0 ≤ n0 ^ 2 * ((N₂ : ℝ) - w'.length) := le_trans hpos hb
      have hR : n0 ^ 2 * ((N₂ : ℝ) - w'.length) ≤ ((P.r : ℝ) + 1) ^ 3 * (n0 ^ 2 * ((N₂ : ℝ) - w'.length)) :=
        le_mul_of_one_le_left hY hR3
      calc 127 * (n0 ^ 2 * ((N : ℝ) + 3)) ≤ 127 * (((P.r : ℝ) + 1) ^ 3 * (n0 ^ 2 * ((N₂ : ℝ) - w'.length))) := by
            linarith
        _ = 127 * ((P.r : ℝ) + 1) ^ 3 * (n0 ^ 2 * ((N₂ : ℝ) - w'.length)) := by ring
    have h2 : ((2 * (P.r - j) + P.k + 1 : ℕ) : ℝ) * (w'.length : ℝ) ≤ n0 * ((N : ℝ) + 3) :=
      mul_le_mul hq hL (Nat.cast_nonneg _) (by linarith)
    have ha3 : 3 ≤ n0 * ((N : ℝ) + 3) := by
      calc (3 : ℝ) ≤ (N : ℝ) + 3 := hN3
        _ = 1 * ((N : ℝ) + 3) := by ring
        _ ≤ n0 * ((N : ℝ) + 3) := mul_le_mul_of_nonneg_right hn01 (by linarith)
    have hb2 : n0 * ((N : ℝ) + 3) ≤ n0 ^ 2 * ((N : ℝ) + 3) := by
      have e : n0 ^ 2 * ((N : ℝ) + 3) = n0 * (n0 * ((N : ℝ) + 3)) := by ring
      rw [e]
      exact le_mul_of_one_le_left (by linarith) hn01
    have h3 : 3 * (n0 * ((N : ℝ) + 3)) + 17 ≤ 127 * (n0 ^ 2 * ((N : ℝ) + 3)) := by linarith
    rw [hAf, hmo']
    linarith
  have hord : mo ≤ P5.mmUser P N₂ := by
    have h1 : 2 * (P.r - j) + P.k + 1 ≤ P5.nV P := by unfold P5.nV; omega
    have h2 : w'.length ≤ 3 * (P.r + 1) * (N₂ + 2) := by
      have : N + 3 ≤ 3 * (P.r + 1) * (N₂ + 2) := (show N + 3 ≤ N₂ + 2 by omega).trans (Nat.le_mul_of_pos_left _ (by omega))
      omega
    have h3 : (2 * (P.r - j) + P.k + 1) * w'.length ≤ P5.nV P * (3 * (P.r + 1) * (N₂ + 2)) :=
      Nat.mul_le_mul h1 h2
    have e : P5.mmUser P N₂ = 5 + 3 * (P.r + 1) * (N₂ + 2) * P5.nV P + N₂ * P.r := rfl
    have e2 : P5.nV P * (3 * (P.r + 1) * (N₂ + 2)) = 3 * (P.r + 1) * (N₂ + 2) * P5.nV P := by ring
    rw [e, hmo]
    rw [e2] at h3
    exact le_trans (Nat.add_le_add_left h3 5) (Nat.le_add_right _ _)
  refine ⟨Cf * (K3 * cs) * (K3 * cs), fun n σ hσ => ?_⟩
  rw [hFn n, hxs n]
  have hx : ∀ e, B.CCle (Af - 1 + 3 * ((mo + 1 : ℕ) : ℝ)) mo (Formalism.FourierDecayAlt.P.PBE.xs p.T χ ε j hj w' h hc (hn n) e) cs :=
    fun e => Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_A hdec (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_m hord (hsl n e))
  have hu := hK3 σ hσ ys (Af - 1) _ cs hx
  have hv : ∀ e, B.CCle (Af - 1 - 2 * (w'.length : ℝ)) 5
      (KB.onOld (PBO.mDiff (p.T.bs j) σ w) ys (Formalism.FourierDecayAlt.P.PBE.xs p.T χ ε j hj w' h hc (hn n)) e)
      (K3 * ‖σ‖ ^ 3 * cs) := fun e =>
    Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_A (by have : (0 : ℝ) ≤ w'.length := Nat.cast_nonneg _; linarith)
      (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_m (by rw [hmo]; omega) (hu e))
  have hb := hCf _ _ _ _ hu hv
  show ‖D.formLev p.T (M.sgn P p.l0) ⟨j, by omega⟩ w' _ _‖ ≤ _
  refine hb.trans (le_of_eq ?_)
  ring

end Formalism.FourierDecayAlt.P.StandardPairingDecay
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffFormOf =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NormExpMulISubOne =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.NormExpMulISubOne", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBFVnice\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveDensityModerateGrowth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Complex

namespace Formalism.FourierDecayAlt.P.StandardPairingDecay

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Matrix

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem norm_exp_mul_I_sub_one (y : ℝ) : ‖Complex.exp ((y : ℂ) * I) - 1‖ ≤ |y| := by
  rw [Complex.exp_mul_I, ← Complex.ofReal_cos, ← Complex.ofReal_sin]
  have hc : 1 - y ^ 2 / 2 ≤ Real.cos y := Real.one_sub_sq_div_two_le_cos
  have hs := Real.sin_sq_add_cos_sq y
  have e : (↑(Real.cos y) + ↑(Real.sin y) * I - 1 : ℂ) = ↑(Real.cos y - 1) + ↑(Real.sin y) * I := by
    push_cast; ring
  rw [e]
  have h2 : ‖(↑(Real.cos y - 1) + ↑(Real.sin y) * I : ℂ)‖ ^ 2 ≤ |y| ^ 2 := by
    rw [Complex.sq_norm, Complex.normSq_add_mul_I, sq_abs]
    linarith
  exact (pow_le_pow_iff_left₀ (norm_nonneg _) (abs_nonneg _) two_ne_zero).1 h2

theorem norm_exp_sub_one_of_re (z : ℂ) (hz : z.re = 0) : ‖Complex.exp z - 1‖ ≤ ‖z‖ := by
  have hz' : z = (z.im : ℂ) * I := by
    apply Complex.ext <;> simp [hz]
  rw [hz']
  refine (norm_exp_mul_I_sub_one z.im).trans (le_of_eq ?_)
  rw [Complex.norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Real.norm_eq_abs]

theorem iter_add_const {E F : Type} [NormedAddCommGroup E] [NormedSpace ℝ E] [NormedAddCommGroup F]
    [NormedSpace ℝ F] (i : ℕ) (f : E → F) (c : F) (x : E) :
    iteratedFDeriv ℝ (i + 1) (fun y => f y + c) x = iteratedFDeriv ℝ (i + 1) f x := by
  rw [iteratedFDeriv_succ_eq_comp_right, iteratedFDeriv_succ_eq_comp_right]
  congr 2
  funext y
  exact fderiv_add_const c

variable {k r : ℕ}

theorem mult_phase {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] (m : ℕ) (D : Mat k r →L[ℝ] ℂ) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ σ : ℂ, ‖σ‖ ≤ 2 → ∀ (A : ℝ) (F : Mat k r → E) (c : ℝ),
      CCle (A + ((m + 1 : ℕ) : ℝ)) m F c →
      CCle A m (fun g => (Complex.exp (PBFV.phaseL σ D g) - 1) • F g) (K * ‖σ‖ * c) := by
  obtain ⟨C1, hC1, hdlr⟩ := Formalism.FourierDecayAlt.P.JCx4.dlr_bound (k := k) (r := r) (E := E →L[ℂ] E) m
  obtain ⟨K0, hK0⟩ : ∃ K : ℝ, ∀ M : Mat k r, ‖D M‖ ≤ K * ‖M‖ := ⟨_, D.le_opNorm⟩
  set KD : ℝ := max K0 0 with hKDdef
  have hKD0 : 0 ≤ KD := le_max_right _ _
  have hKD : ∀ M : Mat k r, ‖D M‖ ≤ KD * ‖M‖ := fun M =>
    (hK0 M).trans (mul_le_mul_of_nonneg_right (le_max_left _ _) (norm_nonneg _))
  set Lid : ℂ →L[ℝ] (E →L[ℂ] E) :=
    ContinuousLinearMap.smulRight (ContinuousLinearMap.id ℝ ℂ) (ContinuousLinearMap.id ℂ E) with hLid
  set L : ℝ := 1 + 4 * KD with hLdef
  have hL1 : 1 ≤ L := by rw [hLdef]; linarith
  set K : ℝ := 2 ^ m * (C1 * (2 ^ m * (((m + 1 : ℕ) : ℝ) * (‖Lid‖ * (2 * KD * (1 + L ^ m)))))) with hKdef
  refine ⟨K, by positivity, ?_⟩
  intro σ hσ A F c hF
  have hc0 : 0 ≤ c := Formalism.FourierDecayAlt.P.JCx2.pd_ccle_nonneg hF
  set θ : Mat k r →L[ℝ] ℂ := PBFV.phaseL σ D with hθdef
  have hθ0 : ∀ g, (θ g).re = 0 := PBFV.phaseL_re σ D
  set t : ℝ := 2 * ‖σ‖ * KD with htdef
  have ht0 : 0 ≤ t := by positivity
  have htL : t ≤ L := by
    rw [htdef, hLdef]
    have : ‖σ‖ * KD ≤ 2 * KD := mul_le_mul_of_nonneg_right hσ hKD0
    linarith
  have hθM : ∀ M : Mat k r, ‖θ M‖ ≤ t * ‖M‖ := by
    intro M
    rw [hθdef, PBFV.phaseL_apply]
    calc ‖σ * D M - (starRingEnd ℂ) (σ * D M)‖ ≤ ‖σ * D M‖ + ‖(starRingEnd ℂ) (σ * D M)‖ := norm_sub_le _ _
      _ = 2 * (‖σ‖ * ‖D M‖) := by rw [Complex.norm_conj, norm_mul]; ring
      _ ≤ 2 * (‖σ‖ * (KD * ‖M‖)) := by gcongr; exact hKD M
      _ = t * ‖M‖ := by rw [htdef]; ring
  have hθK := θ.opNorm_le_bound ht0 hθM
  have hexp : ContDiff ℝ ⊤ Complex.exp := Complex.contDiff_exp
  set f0 : Mat k r → ℂ := fun g => Complex.exp (θ g) with hf0def
  have hf0 : ContDiff ℝ ⊤ f0 := hexp.comp θ.contDiff
  have hit0 : ∀ i g, ‖iteratedFDeriv ℝ i f0 g‖ ≤ t ^ i := by
    intro i g
    have h2 : iteratedFDeriv ℝ i f0 g =
        (iteratedFDeriv ℝ i Complex.exp (θ g)).compContinuousLinearMap (fun _ => θ) :=
      θ.iteratedFDeriv_comp_right (f := Complex.exp) hexp g (by exact_mod_cast le_top)
    have h3 := ContinuousMultilinearMap.norm_compContinuousLinearMap_le
      (iteratedFDeriv ℝ i Complex.exp (θ g)) (fun _ : Fin i => θ)
    have h5 := h3.trans (mul_le_mul (le_of_eq (by rw [PBFV.norm_iter_cexp, hθ0, Real.exp_zero]))
      (Finset.prod_le_prod₀ (fun _ _ => norm_nonneg _) (fun _ _ => hθK))
      (Finset.prod_nonneg fun _ _ => norm_nonneg _) zero_le_one)
    rw [one_mul, Finset.prod_const, Finset.card_univ, Fintype.card_fin] at h5
    rw [h2]; exact h5
  set f1 : Mat k r → ℂ := fun g => f0 g + (-1 : ℂ) with hf1def
  have hf1 : ContDiff ℝ ⊤ f1 := hf0.add contDiff_const
  set Λ : Mat k r → (E →L[ℂ] E) := fun g => Lid (f1 g) with hΛdef
  have hΛ : ∀ g, Λ g = (Complex.exp (θ g) - 1) • ContinuousLinearMap.id ℂ E := fun g => by
    simp [Λ, Lid, f1, f0, sub_eq_add_neg]
  have hΛc : ContDiff ℝ ⊤ Λ := Lid.contDiff.comp hf1
  have hitΛ : ∀ i, i ≤ m → ∀ g, ‖iteratedFDeriv ℝ i Λ g‖ ≤ ‖Lid‖ * (t * (‖g‖ + L ^ m)) := by
    intro i hi g
    have h1 := Lid.norm_iteratedFDeriv_comp_left (f := f1) (x := g) (N := ⊤) (n := i)
      hf1.contDiffAt (by exact_mod_cast le_top)
    refine h1.trans (mul_le_mul_of_nonneg_left ?_ (norm_nonneg _))
    rcases i with _ | j
    · rw [norm_iteratedFDeriv_zero]
      have e1 : f1 g = Complex.exp (θ g) - 1 := by simp [f1, f0, sub_eq_add_neg]
      rw [e1]
      calc ‖Complex.exp (θ g) - 1‖ ≤ ‖θ g‖ := norm_exp_sub_one_of_re _ (hθ0 g)
        _ ≤ t * ‖g‖ := hθM g
        _ ≤ t * (‖g‖ + L ^ m) := by
          have : 0 ≤ L ^ m := by positivity
          exact mul_le_mul_of_nonneg_left (by linarith) ht0
    · rw [show f1 = fun y => f0 y + (-1 : ℂ) from rfl, iter_add_const]
      calc ‖iteratedFDeriv ℝ (j + 1) f0 g‖ ≤ t ^ (j + 1) := hit0 _ g
        _ = t * t ^ j := by ring
        _ ≤ t * L ^ m := by
          refine mul_le_mul_of_nonneg_left ?_ ht0
          calc t ^ j ≤ L ^ j := pow_le_pow_left₀ ht0 htL j
            _ ≤ L ^ m := pow_le_pow_right₀ hL1 (by omega)
        _ ≤ t * (‖g‖ + L ^ m) := by
          have : 0 ≤ ‖g‖ := norm_nonneg _
          exact mul_le_mul_of_nonneg_left (by linarith) ht0
  set Cm : ℝ := C1 * (2 ^ m * (((m + 1 : ℕ) : ℝ) * (‖Lid‖ * (t * (1 + L ^ m))))) with hCm
  have hab : ∀ u v : List (Mat k r), (∀ X ∈ u, unitLie k r X) → (∀ X ∈ v, unitLie k r X) →
      u.length + v.length ≤ m → ∀ g ∈ GV k r, g ∉ (∅ : Set (Mat k r)) →
        ‖dLR u v Λ g‖ ≤ Cm * gN g ^ (((m + 1 : ℕ) : ℕ) : ℝ) := by
    intro u v hu hv hl g hg _
    rw [Real.rpow_natCast]
    have h1 := hdlr Λ (hΛc.of_le (by exact_mod_cast le_top)) u v hu hv hl g
    have hg1 : 1 ≤ gN g := Formalism.FourierDecayAlt.P.BetaSesquilinearity.gN_ge_one hg
    have hng : ‖g‖ ≤ gN g := Formalism.FourierDecayAlt.P.JCx2.mn_norm_le_gN g
    have hsum : ∑ i ∈ Finset.range (m + 1), ‖iteratedFDeriv ℝ i Λ g‖ ≤
        ((m + 1 : ℕ) : ℝ) * (‖Lid‖ * (t * (‖g‖ + L ^ m))) := by
      calc ∑ i ∈ Finset.range (m + 1), ‖iteratedFDeriv ℝ i Λ g‖
          ≤ ∑ _i ∈ Finset.range (m + 1), ‖Lid‖ * (t * (‖g‖ + L ^ m)) :=
            Finset.sum_le_sum fun i hi => hitΛ i (Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)) g
        _ = ((m + 1 : ℕ) : ℝ) * (‖Lid‖ * (t * (‖g‖ + L ^ m))) := by simp
    have hpow : (1 + ‖g‖) ^ m ≤ 2 ^ m * gN g ^ m := by
      rw [← mul_pow]
      exact pow_le_pow_left₀ (by positivity) (by linarith) m
    have hgL : ‖g‖ + L ^ m ≤ (1 + L ^ m) * gN g := by linarith [le_mul_of_one_le_right (by positivity : 0 ≤ L ^ m) hg1]
    have hS0 : 0 ≤ ∑ i ∈ Finset.range (m + 1), ‖iteratedFDeriv ℝ i Λ g‖ :=
      Finset.sum_nonneg fun _ _ => norm_nonneg _
    have hLid0 : 0 ≤ ‖Lid‖ := norm_nonneg _
    calc ‖dLR u v Λ g‖ ≤ C1 * (1 + ‖g‖) ^ m * ∑ i ∈ Finset.range (m + 1), ‖iteratedFDeriv ℝ i Λ g‖ := h1
      _ ≤ C1 * (2 ^ m * gN g ^ m) * (((m + 1 : ℕ) : ℝ) * (‖Lid‖ * (t * ((1 + L ^ m) * gN g)))) := by
          apply mul_le_mul (mul_le_mul_of_nonneg_left hpow hC1) (hsum.trans ?_) hS0
          · exact mul_nonneg hC1 (by positivity)
          · gcongr
      _ = Cm * gN g ^ (m + 1) := by rw [hCm]; ring
  have ha : CkOn (m : ℕ∞) Set.univ Λ := fun g₀ _ =>
    ⟨Set.univ, Λ, isOpen_univ, trivial, (hΛc.of_le (by exact_mod_cast le_top)).contDiffOn, fun _ _ _ => rfl⟩
  have hb' := Formalism.FourierDecayAlt.P.BetaSesquilinearity.prodBound (O := ∅) (UU := Set.univ) isOpen_empty (fun g _ => Or.inr trivial)
    (A := A) (d := (((m + 1 : ℕ) : ℕ) : ℝ)) ha hab hF (fun g _ h => h.elim)
  have e : (fun g => (Complex.exp (PBFV.phaseL σ D g) - 1) • F g) = Formalism.FourierDecayAlt.P.BetaSesquilinearity.ap Λ F := by
    funext g
    simp [Formalism.FourierDecayAlt.P.BetaSesquilinearity.ap, hΛ, θ]
  rw [e]
  refine Formalism.FourierDecayAlt.P.JCx2.pd_ccle_mono_c hb' (le_of_eq ?_)
  have hCm0 : 0 ≤ Cm := by rw [hCm]; positivity
  rw [abs_of_nonneg hCm0, abs_of_nonneg hc0, hCm, hKdef, htdef]
  ring

end Formalism.FourierDecayAlt.P.StandardPairingDecay
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.NormExpMulISubOne =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveLSubOneCcle =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveLSubOneCcle", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormExpMulISubOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P.StandardPairingDecay

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Matrix

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section one

variable {k ρ : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem waveL_sub_one_ccle (Bs : B.RealPlaceData k ρ Wp Wq) (w : List C.Letter) (m : ℕ) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ σ : ℂ, ‖σ‖ ≤ 2 → ∀ (A : ℝ) (x : Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) (c : ℝ),
      (∀ e, B.CCle (A + ((m + 1 : ℕ) : ℝ)) m (x e) c) →
      ∀ e, B.CCle A m (((PBO.waveL Bs σ w - 1) x) e) (K * ‖σ‖ * c) := by
  have uInv_ccle (A : ℝ) (m : ℕ) (σ : ℂ) (hσ : ‖σ‖ ≤ 2) :
      ∀ (w : List C.Letter) (x : Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) (c : ℝ),
        (∀ e, B.CCle A m (x e) c) → ∀ e,
        B.CCle A m (KB.uInv σ w x e) (3 ^ w.length * c) ∧
        B.CCle A m (fun g => KB.uInv σ w x e g - x e g) (3 ^ w.length * ‖σ‖ * c) := by
    intro w
    induction w with
    | nil =>
      intro x c hx e
      have hc : 0 ≤ c := JCx2.pd_ccle_nonneg (hx e)
      refine ⟨by simpa [KB.uInv] using hx e, ?_⟩
      simp only [KB.uInv, sub_self, List.length_nil, pow_zero, one_mul]
      exact JCx2.pd_ccle_mono_c BetaSesquilinearity.CCle_zero (by positivity)
    | cons l w ih =>
      intro x c hx e
      have hc : 0 ≤ c := JCx2.pd_ccle_nonneg (hx e)
      have ih0 := ih (fun e' => x (Fin.cons (0 : Fin 2) e')) c (fun e' => hx _) (fun a => e a.succ)
      have ih1 := ih (fun e' => x (Fin.cons (1 : Fin 2) e')) c (fun e' => hx _) (fun a => e a.succ)
      have hs : ‖(if l.1 then σ else (starRingEnd ℂ) σ)‖ = ‖σ‖ := (by cases l.1 <;> simp)
      have h3 : (0 : ℝ) ≤ 3 ^ w.length := by positivity
      have hσ0 : 0 ≤ ‖σ‖ := norm_nonneg _
      have hlen : (l :: w).length = w.length + 1 := rfl
      have hce : e = Fin.cons (e 0) (fun a => e a.succ) := (Fin.cons_self_tail e).symm
      have hp : (3 : ℝ) ^ (l :: w).length = 3 * 3 ^ w.length := by rw [hlen, pow_succ, mul_comm]
      simp only [KB.uInv]
      by_cases he : e 0 = 0
      · rw [if_pos he]
        have hxe : x e = x (Fin.cons (0 : Fin 2) (fun a => e a.succ)) := by
          conv_lhs => rw [hce, he]
        refine ⟨JCx2.pd_ccle_mono_c ih0.1 (by rw [hp]; linarith [mul_nonneg h3 hc]), ?_⟩
        rw [hxe]
        exact JCx2.pd_ccle_mono_c ih0.2 (by rw [hp]; linarith [mul_nonneg (mul_nonneg h3 hσ0) hc])
      · rw [if_neg he]
        have he1 : e 0 = 1 := by
          rcases Fin.exists_fin_two.1 ⟨e 0, rfl⟩ with h | h
          · exact absurd h he
          · exact h
        have hxe : x e = x (Fin.cons (1 : Fin 2) (fun a => e a.succ)) := by
          conv_lhs => rw [hce, he1]
        refine ⟨?_, ?_⟩
        · have := BetaSesquilinearity.CCle_add ih1.1 (BetaSesquilinearity.CCle_smul (if l.1 then σ else (starRingEnd ℂ) σ) ih0.1)
          rw [hs] at this
          exact JCx2.pd_ccle_mono_c (show B.CCle A m ((KB.uInv σ w (fun e' => x (Fin.cons (1 : Fin 2) e')) (fun a => e a.succ)) +
            (if l.1 then σ else (starRingEnd ℂ) σ) • KB.uInv σ w (fun e' => x (Fin.cons (0 : Fin 2) e')) (fun a => e a.succ)) _ from this)
            (by rw [hp]; linarith [mul_le_mul_of_nonneg_right hσ (mul_nonneg h3 hc)])
        · have := BetaSesquilinearity.CCle_add ih1.2 (BetaSesquilinearity.CCle_smul (if l.1 then σ else (starRingEnd ℂ) σ) ih0.1)
          rw [hs] at this
          rw [hxe]
          have hf : (fun g => (KB.uInv σ w (fun e' => x (Fin.cons (1 : Fin 2) e')) (fun a => e a.succ) +
              (if l.1 then σ else (starRingEnd ℂ) σ) • KB.uInv σ w (fun e' => x (Fin.cons (0 : Fin 2) e')) (fun a => e a.succ)) g -
              x (Fin.cons (1 : Fin 2) (fun a => e a.succ)) g) =
              fun g => (KB.uInv σ w (fun e' => x (Fin.cons (1 : Fin 2) e')) (fun a => e a.succ) g -
                x (Fin.cons (1 : Fin 2) (fun a => e a.succ)) g) +
                (if l.1 then σ else (starRingEnd ℂ) σ) • KB.uInv σ w (fun e' => x (Fin.cons (0 : Fin 2) e')) (fun a => e a.succ) g := by
            funext g
            simp only [Pi.add_apply, Pi.smul_apply]
            abel
          rw [hf]
          exact JCx2.pd_ccle_mono_c this (by rw [hp]; linarith [mul_nonneg (mul_nonneg h3 hσ0) hc])
  obtain ⟨K1, hK1, hmul⟩ := mult_phase (E := Wq →L[ℂ] Wp) m
    (JCx2.mnLinHerm (fvec k ρ Bs.z' 0) (fvec k ρ Bs.z 0))
  refine ⟨(K1 + 1) * 3 ^ w.length, by positivity, ?_⟩
  intro σ hσ A x c hx e
  have hc : 0 ≤ c := JCx2.pd_ccle_nonneg (hx e)
  have hu := uInv_ccle (A + ((m + 1 : ℕ) : ℝ)) m σ hσ w x c hx e
  have h1 := hmul σ hσ A (KB.uInv σ w x e) (3 ^ w.length * c) hu.1
  have h2 : B.CCle A m (fun g => KB.uInv σ w x e g - x e g) (3 ^ w.length * ‖σ‖ * c) :=
    BetaSesquilinearity.CCle_mono_A (by have : (0 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := Nat.cast_nonneg _; linarith) hu.2
  have h3 := BetaSesquilinearity.CCle_add h1 h2
  have hf : ((PBO.waveL Bs σ w - 1) x) e = fun g =>
      (Complex.exp (PBFV.phaseL σ (JCx2.mnLinHerm (fvec k ρ Bs.z' 0) (fvec k ρ Bs.z 0)) g) - 1) •
        KB.uInv σ w x e g + (KB.uInv σ w x e g - x e g) := by
    funext g
    simp only [LinearMap.sub_apply, Module.End.one_apply, Pi.sub_apply, PBO.waveL, LinearMap.coe_mk,
      AddHom.coe_mk, KB.waveG]
    rw [PBFV.fsv_dmin_one σ Bs.z Bs.z' g (by omega), sub_smul, one_smul]
    abel
  rw [hf]
  refine JCx2.pd_ccle_mono_c h3 (le_of_eq ?_)
  ring

theorem mDiff_ccle (Bs : B.RealPlaceData k ρ Wp Wq) (w : List C.Letter) (m : ℕ) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ σ : ℂ, ‖σ‖ ≤ 2 → ∀ (A : ℝ) (x : Wd.Ix (Fin w.length) → B.Mat k ρ → (Wq →L[ℂ] Wp)) (c : ℝ),
      (∀ e, B.CCle (A + 3 * ((m + 1 : ℕ) : ℝ)) m (x e) c) →
      ∀ e, B.CCle A m ((PBO.mDiff Bs σ w x) e) (K * ‖σ‖ ^ 3 * c) := by
  obtain ⟨K, hK, h1⟩ := waveL_sub_one_ccle Bs w m
  refine ⟨K ^ 3, by positivity, ?_⟩
  intro σ hσ A x c hx
  set M : ℝ := ((m + 1 : ℕ) : ℝ) with hM
  have hx' : ∀ e, B.CCle ((A + M + M) + M) m (x e) c := fun e => by
    have : (A + M + M) + M = A + 3 * M := by ring
    rw [this]; exact hx e
  have s1 := h1 σ hσ (A + M + M) x c hx'
  have s2 := h1 σ hσ (A + M) _ _ s1
  have s3 := h1 σ hσ A _ _ s2
  intro e
  have he : PBO.mDiff Bs σ w x = (PBO.waveL Bs σ w - 1) ((PBO.waveL Bs σ w - 1) ((PBO.waveL Bs σ w - 1) x)) := by
    simp only [PBO.mDiff, pow_succ, pow_zero, one_mul]
    rfl
  rw [he]
  refine JCx2.pd_ccle_mono_c (s3 e) (le_of_eq ?_)
  ring

end one

end Formalism.FourierDecayAlt.P.StandardPairingDecay
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveLSubOneCcle =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BoundOnEarlierRegion =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.BoundOnEarlierRegion", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffFormOf\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveLSubOneCcle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P.StandardPairingDecay

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Matrix

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem bound_on_earlier_region : OnOldBound := by
  intro k ρ Wp Wq _ _ _ _ Bs w m
  obtain ⟨K, hK, hM⟩ := mDiff_ccle Bs w m
  refine ⟨K, hK, fun σ hσ ys => ?_⟩
  induction ys with
  | nil => intro A x c hx e; exact hM σ hσ A x c hx e
  | cons y ys ih =>
    intro A x c hx e
    exact ih A (fun e' => x (Fin.cons (e (0 : Fin ((KB.plusW ys w).length + 1))) e')) c (fun e' => hx _)
      (fun a => e a.succ)

end Formalism.FourierDecayAlt.P.StandardPairingDecay
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BoundOnEarlierRegion =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDifferenceForm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDifferenceForm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BoundOnEarlierRegion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem Formalism.FourierDecayAlt.P.wave_difference_form : Formalism.FourierDecayAlt.P.PBO.WaveDiffForm :=
  Formalism.FourierDecayAlt.P.StandardPairingDecay.waveDiffForm_of Formalism.FourierDecayAlt.P.StandardPairingDecay.bound_on_earlier_region
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDifferenceForm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.UniformDecayOfParts =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.UniformDecayOfParts", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDiffForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormFsvSubOnePow\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveDifferenceForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBO

open Formalism.FourierDecayAlt

def DecayUnifOfHeads : Prop := KB.RadHead → KB.HeadTop → DecayUnif

theorem decayUnifOfHeads : DecayUnifOfHeads := fun hRH hHT =>
  decayUnif_of hRH hHT Formalism.FourierDecayAlt.P.wave_difference_form

end Formalism.FourierDecayAlt.P.PBO

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.UniformDecayOfParts =====
