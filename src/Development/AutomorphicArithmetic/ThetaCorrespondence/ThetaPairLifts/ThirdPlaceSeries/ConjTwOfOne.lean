module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfRoot
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LatticeHasSmallGenerators
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKsFormOfAlgebraicFormsIso
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

@[expose] public section



section
noncomputable section
open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx
open Formalism.IndefR.FWT GlobalTheory.BigTop GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies GlobalTheory.SeriesTie
open GlobalTheory.BigOn GlobalTheory.BigOn.Exp Formalism.L2.Theta GlobalTheory.ExportSeries
open scoped TensorProduct


namespace GlobalTheory.BigOn.Exp.TwConj
open GlobalTheory.ConjTwist
section Coord
variable {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 I0 T : Type}
  {A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
  {Rl : RealDat3 D A3 Ks} {cG : G0 Rl.Pg D.R.r ≃* G0g D.nd} {S : NX.RatDat D.ntw} (YS : NX.NExpRealS Rl cG S)
  (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec) (j : Fin D.R.m)
end Coord
section Point
variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts}
  {Y : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Y cX} {Csz : ℝ}
variable (p : PtAt ex Csz) (w : D.what₂.places.Pl) (j : Fin D.R.m)
end Point
section Tuples
variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}
end Tuples
def TwistTrivialCondition : Prop := _root_.GlobalTheory.BigOn.Exp.TwistConditions fun _ _ _ _ p w j => OneAt p w j
def TupleCondition : Prop := _root_.GlobalTheory.BigOn.Exp.TwistConditions fun Fm x hx i p w j => ∀ ρ ρ' : Setup (Fm.D x i).ntw, ρ.Good → ρ'.Good → RealPin p.R p.cG ρ →
  SameBut ρ ρ' → (Adapted p w ρ ∨ Adapted p w ρ') →
  HasTuples p.T p.R.toRealDat p.κ p.v₀ p.O (phs p) j (baseW (Fm.ex x hx i) w j ρ) (twW (Fm.ex x hx i) w ρ) (twW (Fm.ex x hx i) w ρ')
def FixedPointCondition : Prop := _root_.GlobalTheory.BigOn.Exp.TwistConditions fun Fm x hx i p w j => ∀ ρ : Setup (Fm.D x i).ntw, ρ.Good → RealPin p.R p.cG ρ →
  ρ.LevelOf (Fm.D x i).nexp → ∀ τ : ℂ ≃+* ℂ, (∀ z, τ (Formalism.L2.Host.embLL0 (Fm.D x i) z) = Formalism.L2.Host.embLL0 (Fm.D x i) z) →
  FixBase p.T p.R.toRealDat j τ ∧ FixDat (baseW (Fm.ex x hx i) w j ρ) τ
def CoefficientCondition : Prop := _root_.GlobalTheory.BigOn.Exp.TwistConditions fun Fm x hx i p w j => ∀ (ρ : Setup (Fm.D x i).ntw) (ν : ℂ), ρ.Good → RealPin p.R p.cG ρ →
  IsNorm p.R p.v₀ (baseW (Fm.ex x hx i) w j ρ) ν →
  ∃ (c : VsV (Fm.D x i) j ℂ →ₗ[ℂ] (p.R.cV j).W) (u : ∀ σ, lowT (p.R.MW j (sg0 (Fm.D x i) p.P.A3.A)) σ) (ξ : ℂ),
    ExtC p.R.toRealDat j (inC (p.O j).c') (p.O j).c0' c ∧
    (∀ σ, (u σ : (p.R.MW j (sg0 (Fm.D x i) p.P.A3.A)).sm σ) = p.v₀ j (sg0 (Fm.D x i) p.P.A3.A) σ) ∧ IsRoot1 ξ ∧
    ∀ h₀, ∀ P ∈ ρ.lat ((Fm.ex x hx i).nch.twI w) j ((Fm.ex x hx i).nch.sd w) (smallInt (Fm.D x i)) h₀,
      ∃ y : VsV (Fm.D x i) j ℂ, ν • P = (ξ * phs p j) • p.R.ioP j (PiTensorProduct.tprod ℂ u) (c y) ∧
        ∀ τ : ℂ ≃+* ℂ, (∀ z, τ (Formalism.L2.Host.embLL0 (Fm.D x i) z) = Formalism.L2.Host.embLL0 (Fm.D x i) z) → ConjVec j τ y y
def NormCondition : Prop := _root_.GlobalTheory.BigOn.Exp.TwistConditions fun Fm x _ i p _ j => ∀ (B : Base (Vc (Fm.D x i) j) (Wc (Fm.D x i) j)) (ν ν' : ℂ),
  IsNorm p.R p.v₀ B ν → IsNorm p.R p.v₀ B ν' → ∃ n : ℕ, n ≠ 0 ∧ ν' ^ n = ν ^ n
theorem conjTw_of_twAdm_latSmallGen_normAt_twOne (hA : _root_.GlobalTheory.BigOn.Exp.TwAdmAlt) (hG : _root_.GlobalTheory.BigOn.Exp.LatticeHasSmallGenerators) (hN : _root_.GlobalTheory.BigOn.Exp.TwConj.NormCondition) (hO : _root_.GlobalTheory.BigOn.Exp.TwConj.TwistTrivialCondition) : _root_.GlobalTheory.BigOn.Exp.ConjugateTwist := by
  refine _root_.GlobalTheory.BigOn.Exp.TwistConditions.imp (_root_.GlobalTheory.BigOn.Exp.TwistConditions.and (_root_.GlobalTheory.BigOn.Exp.TwistConditions.and hA hG) (_root_.GlobalTheory.BigOn.Exp.TwistConditions.and hN hO)) fun Fm x hx i p hr hm w _ j H => ?_
  obtain ⟨⟨a1, a2⟩, a3, a4⟩ := H
  intro ρ ρ' hρ hρ' ν ν' hp hS hν hR hF
  obtain ⟨Z⟩ := hm.2.2.series
  have hU : p.R.toRealDat.LUnif := hr.prim.unif
  have hW : p.R.toRealDat.models_HW := p.charW.base.models.HW
  have hK : (p.Sx.A ((j : ℕ) + 1)).IsKsForm := GlobalTheory.isKsForm_of_formsIso _ _ (p.nexp.fi j) (p.fw.ks j)
  have hL : ρ.LevelOf (Fm.D x i).nexp := levelOf_of_sameBut hm.2.2 hρ' hρ hF.pin hp hS.symm hF.level
  have hν' := hF.norm
  have hν'' := hν'
  rw [hS.2.2.2.1] at hν''
  exact le_antisymm
    (twLat_le p w j hU hW (Z.vec j) hK a1.1 a2 a4 ρ ρ' hρ hρ' ν ν' hp hS hL (Or.inr hF.adapted) hν hν'.1 (a3 _ _ _ hν hν'') hR hF.rat)
    (twLat_le p w j hU hW (Z.vec j) hK a1.1 a2 a4 ρ' ρ hρ' hρ ν' ν hF.pin hS.symm hF.level (Or.inl hF.adapted) hν' hν.1
      (a3 _ _ _ hν'' hν) hF.rat hR)
end GlobalTheory.BigOn.Exp.TwConj
end
end
