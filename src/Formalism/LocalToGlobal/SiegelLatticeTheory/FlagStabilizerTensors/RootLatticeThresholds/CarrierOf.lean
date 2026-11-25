module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierParts

@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S

namespace Formalism.L2.SG.Pf.Carrier

attribute [local instance] instCM

structure CarrierIn {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) : Type 1 where
  Wp : InfinitePlace D.host.E → Type
  Wq : InfinitePlace D.host.E → Type
  [pN : ∀ x, NormedAddCommGroup (Wp x)]
  [pI : ∀ x, InnerProductSpace ℂ (Wp x)]
  [qN : ∀ x, NormedAddCommGroup (Wq x)]
  [qI : ∀ x, InnerProductSpace ℂ (Wq x)]
  [pF : ∀ x, FiniteDimensional ℂ (Wp x)]
  [qF : ∀ x, FiniteDimensional ℂ (Wq x)]
  nf : ℕ
  pl : Fin nf ≃ InfinitePlace D.host.E
  emb : Fin nf → (D.host.E →+* ℂ)
  hemb : ∀ v, InfinitePlace.mk (emb v) = pl v
  G : Formalism.FourierDecayAlt.Sz.Glob (InfinitePlace D.host.E)
  CA : ℝ
  de : ℕ → ℝ
  de' : ℕ → ℝ
  l : ℕ
  grid : Fin nf → ℕ → Finset ℝ
  grid1 : Fin nf → Finset ℝ
  hv : G.v = Formalism.FourierDecayAlt.S6.rd D.host.E / 2
  T : ∀ j : Fin nf, Formalism.FourierDecayAlt.D.LevTower G.k G.r (Wp (pl j)) (Wq (pl j))
  hT : ∀ j, Formalism.QuantumDeterminants.Tz G.k G.r (T j).base.z = ((D.mem u).A.T : ℝ) ∧
    Formalism.QuantumDeterminants.Tz G.k G.r (T j).base.z' = ((D.mem u').A.T : ℝ)
  fc : ∀ j : Fin nf, Formalism.FourierDecayAlt.B.Mat G.k G.r → (Wq (pl j) →L[ℂ] Wp (pl j))
  χ : ℝ → ℝ
  sg : Fin nf → ℂ
  ν' : Fin nf → Fin (2 * G.r + G.k + 1) → ℂ
  m₀ : Fin nf → Formalism.FourierDecayAlt.B.Mat G.k G.r
  top : ∀ j : Fin nf, (Formalism.FourierDecayAlt.B.Mat G.k G.r → (Wq (pl j) →L[ℂ] Wp (pl j))) → List Formalism.FourierDecayAlt.C.Letter →
    Formalism.FourierDecayAlt.C.LPt → Formalism.FourierDecayAlt.C.LPt → ℂ
  A₀ : ℝ
  τ : Fin nf ≃ InfinitePlace X.B.I.F
  Q : ∀ _ : InfinitePlace X.B.I.F, Matrix (Fin X.B.I.n) (Fin (2 * G.r + G.k + 1)) ℂ
  Qi : ∀ _ : InfinitePlace X.B.I.F, Matrix (Fin (2 * G.r + G.k + 1)) (Fin X.B.I.n) ℂ
  eP : ∀ v, Wp (pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u v
  eQ : ∀ v, Wq (pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u' v

attribute [instance] CarrierIn.pN CarrierIn.pI CarrierIn.qN CarrierIn.qI CarrierIn.pF CarrierIn.qF

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}

def sOf (I : CarrierIn X u u') : Formalism.FourierDecayAlt.C.HidaSetting D.host.E I.Wp I.Wq where
  f := I.nf
  pl := I.pl
  emb := I.emb
  hemb := I.hemb
  G := I.G
  CA := I.CA
  de := I.de
  de' := I.de'
  T := ((D.mem u).A.T : ℝ)
  T' := ((D.mem u').A.T : ℝ)
  l := I.l
  grid := I.grid
  grid1 := I.grid1
  pd := fun j => Formalism.FourierDecayAlt.D.componentFamilySetting_ofSetting (I.T j) (I.fc j) I.χ (I.sg j) (I.ν' j) (I.m₀ j) (I.top j)
    ((I.G.g1 * I.G.g2 : ℕ) : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E) 1
  hv := I.hv
  hT := I.hT

structure ModelsFor {Wp Wq : InfinitePlace D.host.E → Type} [∀ x, NormedAddCommGroup (Wp x)]
    [∀ x, InnerProductSpace ℂ (Wp x)] [∀ x, NormedAddCommGroup (Wq x)] [∀ x, InnerProductSpace ℂ (Wq x)]
    (_S : Formalism.FourierDecayAlt.C.HidaSetting D.host.E Wp Wq) where

def CarrierOf (I : CarrierIn X u u') (_Mo : ModelsFor (sOf I)) : Parts X u u' where
  Wp := I.Wp
  Wq := I.Wq
  S := sOf I
  T := I.T
  f := I.fc
  χ := I.χ
  ν' := I.ν'
  m₀ := I.m₀
  top := I.top
  A₀ := I.A₀
  τ := I.τ
  Q := I.Q
  Qi := I.Qi
  eP := I.eP
  eQ := I.eQ

end Formalism.L2.SG.Pf.Carrier
