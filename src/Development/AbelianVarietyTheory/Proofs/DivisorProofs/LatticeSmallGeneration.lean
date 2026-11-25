module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfRoot
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvOfRoot
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsIsScalar
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ToUnitsCompToCircle
public import Formalism.LocalToGlobal.IndefiniteReal.FWTie
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapUniqueBijectiveComplexExtension
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCoefScale
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodBaseDataWeightEqLiftCoeffModuleWeight
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
import Development.AbelianVarietyTheory.Definitions.Divisors.LevelOfOfSameBut
import Development.AbelianVarietyTheory.Definitions.Divisors.TupleReadBaseTupleEqFamily

@[expose] public section

open GlobalTheory.BigTop GlobalTheory.BigOn GlobalTheory.BigOn.Exp

noncomputable section
open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx
open Formalism.IndefR.FWT GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies GlobalTheory.SeriesTie
open Formalism.L2.Theta GlobalTheory.ExportSeries GlobalTheory.ConjTwist
open Formalism.L2.Host (embLL0)
open scoped TensorProduct


namespace GlobalTheory.BigOn.Exp

theorem coefLat_le_span {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}
    {T : CoreJ D} [Algebra T.Q.c.F D.what₂.LL] {R : RealDat D A T.Q.c.F} {F : Face D A}
    {κw : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)} {v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec}
    {O : ∀ i, OMDat T.toCore R i Unit (fun _ => A.μ0)} (hC : GlobalTheory.Hk3.Core R F) (hFW : Nonempty (FWTie T R κw v₀))
    (hio : IoExt R) (i : Fin D.R.m) (hO : OMPins T R κw v₀ O i) (B : Base (Vc D i) (Wc D i)) (hB : B.Good)
    (hBo : BaseOf R i B) {Oc Oc' : Subring ℂ} (hc : IsCoefRing (embLL0 D) (labLL0 D) Oc)
    (hc' : IsCoefRing (embLL0 D) (labLL0 D) Oc') (h : Bridge.Gf (Vc D i)) {P : PolF D (Wc D i).rank (Vc D i).rank}
    (hP : P ∈ B.coefLat (embLL0 D) (labLL0 D) Oc h) :
    P ∈ Submodule.span Oc (B.coefLat (embLL0 D) (labLL0 D) Oc' h : Set (PolF D (Wc D i).rank (Vc D i).rank)) := by
  obtain ⟨c, hcE, -, -⟩ := GlobalTheory.CoefExtC.exists_extC_bijective_unique D G Pl0 T0 A T R F κw v₀ hC hFW i Unit _ (O i) hO.2
  obtain ⟨u, w₀, hu, -, -⟩ := FWT.IsChosenExtremalVector.io _ hO.2.lift.v0 hio
  obtain ⟨κ, -, -, -, hL⟩ := GlobalTheory.CoefLatConj.coefLat_conj D G Pl0 T0 A T R F κw v₀ O hC hFW hio i hO c hcE u hu B hB hBo
  have e1 := (hL ↥D.LL0 (embLL0 D) (labLL0 D) Oc hc).1 h
  have e2 := (hL ↥D.LL0 (embLL0 D) (labLL0 D) Oc' hc').1 h
  rw [e1] at hP
  refine Submodule.span_mono ?_ hP
  intro Q hQ
  rw [SetLike.mem_coe, e2]
  exact Submodule.subset_span hQ

theorem baseOf_of_realPin_at {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 I0 T0 : Type}
    {A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T0 D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
    {Rl : RealDat3 D A3 Ks} {cG : G0 Rl.Pg D.R.r ≃* G0g D.nd}
    (hL : Rl.toLevCh.Is A3.A.μ0) {ρ : Setup D.ntw} (hρ : ρ.Good) (hp : RealPin Rl cG ρ) (i : D.ntw.Tw)
    (j : Fin D.R.m) (b : Bool) : BaseOf Rl.toRealDat j (ρ.B i j b) := by
  apply _root_.GlobalTheory.BigOn.Exp.TwConj.baseOf_of_realPin <;> assumption

theorem smallInt_isCoefRing (D : D7) : IsCoefRing (embLL0 D) (labLL0 D) (smallInt D) :=
  ⟨embLL0_labLL0, fun a => ⟨a, rfl⟩⟩

end GlobalTheory.BigOn.Exp
