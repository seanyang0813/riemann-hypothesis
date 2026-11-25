module

public import Formalism.HermitianCurvature.StatementD

@[expose] public section

namespace Formalism.FourierDecayAlt.Top

open Finset MeasureTheory NumberField
open scoped ComplexConjugate Matrix

noncomputable section

open Classical Formalism.REAL Formalism.QuantumDeterminants

structure TypeProj (P : M.Par) {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    (π : B.Mat P.k P.r → (Wp →L[ℂ] Wp)) (z e : Fin (2 * P.r + P.k + 1) → ℂ) where

  E : M.Ty P → (Wp →L[ℂ] Wp)
  idem : ∀ ρ, (E ρ).comp (E ρ) = E ρ
  orth : ∀ ρ ρ', ρ ≠ ρ' → (E ρ).comp (E ρ') = 0
  selfAdj : ∀ ρ (v v' : Wp), inner ℂ (E ρ v) v' = inner ℂ v (E ρ v')
  eigen : ∀ Bs : Fin (P.k - 1) → Fin (2 * P.r + P.k + 1) → ℂ, Q.IsFrameOf P.k P.r [z, e] Bs →
    ∀ ρ (w : ℂ) (v : Wp), Q.capRep P.k P.r π Bs w (E ρ v) = M.xC P ρ (w - ((P.k : ℂ) - 2) / 2) • E ρ v
  full : ∀ Bs : Fin (P.k - 1) → Fin (2 * P.r + P.k + 1) → ℂ, Q.IsFrameOf P.k P.r [z, e] Bs →
    ∀ ρ (v : Wp), (∀ w : ℂ, Q.capRep P.k P.r π Bs w v = M.xC P ρ (w - ((P.k : ℂ) - 2) / 2) • v) → E ρ v = v

def wPt (TT : ℝ) (r : ℕ) (p : C.LPt) : ℝ := Complex.normSq (D.ptMatN p (r + 1)).det / D.ptG TT r p

def cW (P : M.Par) (l0 : ℕ) (w : List C.Letter) (e : Wd.Ix (Fin w.length)) (ρ : M.Ty P) : ℂ :=
  Fr.cs (fun Y => M.sgn P l0 * M.xC P ρ Y) (M.qC P) (D.positionted w) e

def dH (P : M.Par) (l0 : ℕ) (TT : ℝ) (w : List C.Letter) (p : C.LPt) (e : Wd.Ix (Fin w.length)) (ρ : M.Ty P) : ℝ :=
  Real.sqrt (wPt TT P.r p ^ w.length * (cW P l0 w e ρ).re)

structure TopLift (k r : ℕ) (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] where

  Θ : (w : List C.Letter) → Wd.Ix (Fin w.length) → (B.Mat k r → (Wq →L[ℂ] Wp)) → B.Mat k r → (Wq →L[ℂ] Wp)
  nil : ∀ e F, Θ [] e F = F

section lift

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

def IsRadOf (P : M.Par) (Bs : B.RealPlaceData P.k P.r Wp Wq) (Φ : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π')
    (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) : Prop :=
  ∀ x ∈ Q.DomR P.k P.r Bs.z Bs.z',
    (Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) x.1 x.2 = Q.resG P.k P.r (Fin.last P.r) (B.JF Bs F) x.1 x.2

def firstStateVector {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : B.Mat k r → (Wp →L[ℂ] Wp)} {π' : B.Mat k r → (Wq →L[ℂ] Wq)}
    {S : Type} (Φ : Q.RadSp k r z z' π π') : Wd.Ix S → Q.RadSp k r z z' π π' :=
  fun e => if e = (fun _ => 0) then Φ else 0

end lift

section top

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

def topOf (P : M.Par) (l0 : ℕ) (T : D.LevTower P.k P.r Wp Wq) (ν' : Fin (2 * P.r + P.k + 1) → ℂ)
    (m₀ : B.Mat P.k P.r) (Θ : TopLift P.k P.r Wp Wq) (TP : TypeProj P T.base.π T.base.z (m₀ *ᵥ ν'))
    (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (w : List C.Letter) (p q : C.LPt) : ℂ :=
  ∑ e : Wd.Ix (Fin w.length), ∑ ρ : M.Ty P,
    ((dH P l0 (Tz P.k P.r T.base.z * Tz P.k P.r T.base.z') w p e ρ *
        dH P l0 (Tz P.k P.r T.base.z * Tz P.k P.r T.base.z') w q e ρ : ℝ) : ℂ) *
      B.hsInner ((TP.E ρ).comp (D.vecV T.base ν' m₀ (Θ.Θ w e F) p))
        ((TP.E ρ).comp (D.vecV T.base ν' m₀ (Θ.Θ w e F) q))

end top

def VecVTypes : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par)
    (Bs : B.RealPlaceData P.k P.r Wp Wq) (ν' : Fin (2 * P.r + P.k + 1) → ℂ) (m₀ : B.Mat P.k P.r)
    (TP : TypeProj P Bs.π Bs.z (m₀ *ᵥ ν')) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (p : C.LPt),
    Q.IsPlace P Bs.z Bs.z' Bs.π Bs.π' → D.IsBaseFrame Bs ν' m₀ → D.IsLocPt p (P.r + 1) →
      ∑ ρ : M.Ty P, (TP.E ρ).comp (D.vecV Bs ν' m₀ F p) = D.vecV Bs ν' m₀ F p

def TopOfEmpty : Prop :=
  VecVTypes →
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (l0 : ℕ)
    (T : D.LevTower P.k P.r Wp Wq) (ν' : Fin (2 * P.r + P.k + 1) → ℂ) (m₀ : B.Mat P.k P.r)
    (Θ : TopLift P.k P.r Wp Wq) (TP : TypeProj P T.base.π T.base.z (m₀ *ᵥ ν'))
    (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (p q : C.LPt),
    Q.IsPlace P T.base.z T.base.z' T.base.π T.base.π' → D.IsBaseFrame T.base ν' m₀ →
    D.IsLocPt p (P.r + 1) → D.IsLocPt q (P.r + 1) →
    0 < D.ptG (Tz P.k P.r T.base.z * Tz P.k P.r T.base.z') P.r p →
    0 < D.ptG (Tz P.k P.r T.base.z * Tz P.k P.r T.base.z') P.r q →
      topOf P l0 T ν' m₀ Θ TP F [] p q = B.hsInner (D.vecV T.base ν' m₀ F p) (D.vecV T.base ν' m₀ F q)

def TopPSDT : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] (P : M.Par) (l0 : ℕ)
    (T : D.LevTower P.k P.r Wp Wq) (ν' : Fin (2 * P.r + P.k + 1) → ℂ) (m₀ : B.Mat P.k P.r)
    (Θ : TopLift P.k P.r Wp Wq) (TP : TypeProj P T.base.π T.base.z (m₀ *ᵥ ν'))
    (f : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (χ : ℝ → ℝ) (admitted : List C.Letter → Prop),
    D.TopPSD T f χ admitted (topOf P l0 T ν' m₀ Θ TP)

def TypeProjExists : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par)
    (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : B.Mat P.k P.r → (Wp →L[ℂ] Wp)) (π' : B.Mat P.k P.r → (Wq →L[ℂ] Wq))
    (e : Fin (2 * P.r + P.k + 1) → ℂ), Q.IsPlace P z z' π π' → inWb P.k P.r e →
    herm (Hpk P.k P.r) e z = 0 → herm (Hpk P.k P.r) e e = 1 → Nonempty (TypeProj P π z e)

section hermitianSpaces

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {Wp Wq : InfinitePlace E → Type}
  [∀ x, NormedAddCommGroup (Wp x)] [∀ x, InnerProductSpace ℂ (Wp x)] [∀ x, NormedAddCommGroup (Wq x)]
  [∀ x, InnerProductSpace ℂ (Wq x)] [∀ x, FiniteDimensional ℂ (Wp x)] [∀ x, FiniteDimensional ℂ (Wq x)]

end hermitianSpaces

end

end Formalism.FourierDecayAlt.Top
