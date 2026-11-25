module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.RealObj
public import Formalism.HermitianCurvature.StatementMA

@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S
open scoped InnerProductSpace ComplexConjugate

namespace Formalism.L2.SG.Pf.Carrier

open Formalism.L2.SG.RealObj

def instCM (D : D7) : IsCMField D.host.E := D.host.isCMField_hostE

attribute [local instance] instCM

structure Parts {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) : Type 1 where
  Wp : InfinitePlace D.host.E → Type
  Wq : InfinitePlace D.host.E → Type
  [pN : ∀ x, NormedAddCommGroup (Wp x)]
  [pI : ∀ x, InnerProductSpace ℂ (Wp x)]
  [qN : ∀ x, NormedAddCommGroup (Wq x)]
  [qI : ∀ x, InnerProductSpace ℂ (Wq x)]
  [pF : ∀ x, FiniteDimensional ℂ (Wp x)]
  [qF : ∀ x, FiniteDimensional ℂ (Wq x)]
  S : Formalism.FourierDecayAlt.C.HidaSetting D.host.E Wp Wq
  T : ∀ j : Fin S.f, Formalism.FourierDecayAlt.D.LevTower S.G.k S.G.r (Wp (S.pl j)) (Wq (S.pl j))
  f : ∀ j : Fin S.f, Formalism.FourierDecayAlt.B.Mat S.G.k S.G.r → (Wq (S.pl j) →L[ℂ] Wp (S.pl j))
  χ : ℝ → ℝ
  ν' : Fin S.f → Fin (2 * S.G.r + S.G.k + 1) → ℂ
  m₀ : Fin S.f → Formalism.FourierDecayAlt.B.Mat S.G.k S.G.r
  top : ∀ j : Fin S.f, (Formalism.FourierDecayAlt.B.Mat S.G.k S.G.r → (Wq (S.pl j) →L[ℂ] Wp (S.pl j))) → List Formalism.FourierDecayAlt.C.Letter →
    Formalism.FourierDecayAlt.C.LPt → Formalism.FourierDecayAlt.C.LPt → ℂ
  A₀ : ℝ
  τ : Fin S.f ≃ InfinitePlace X.B.I.F
  Q : ∀ _ : InfinitePlace X.B.I.F, Matrix (Fin X.B.I.n) (Fin (2 * S.G.r + S.G.k + 1)) ℂ
  Qi : ∀ _ : InfinitePlace X.B.I.F, Matrix (Fin (2 * S.G.r + S.G.k + 1)) (Fin X.B.I.n) ℂ
  eP : ∀ v, Wp (S.pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u v
  eQ : ∀ v, Wq (S.pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u' v

attribute [instance] Parts.pN Parts.pI Parts.qN Parts.qI Parts.pF Parts.qF

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}

def Parts.Pins (P : Parts X u u') (CA : ℝ) (G0 : Formalism.FourierDecayAlt.Sz.Glob (InfinitePlace D.host.E)) (de de' : ℕ → ℝ)
    (l : ℕ) : Prop :=
  P.S.CA = CA ∧ P.S.G = G0 ∧ P.S.de = de ∧ P.S.de' = de' ∧ P.S.l = l ∧ Formalism.L2.SG.DataInst.Compat P.S u u'

def Parts.Built (P : Parts X u u') : Prop := Formalism.FourierDecayAlt.D.IsBuilt P.S P.T P.f P.χ P.ν' P.m₀ P.top P.A₀

def Parts.FromX (P : Parts X u u') : Prop := BuiltFromX X P.S u u' P.T P.f P.τ P.Q P.Qi P.eP P.eQ

def Parts.Base (P : Parts X u u') (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) : Prop :=
  BaseFromX X P.S u u' i0 i0' P.τ P.Q P.Qi P.ν' P.m₀

end Formalism.L2.SG.Pf.Carrier
