module

public import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.SingleIndexPlacesAreTwisted
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.KernelSpanOverClasses
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.TraceLatticeLeThetaLatticeAtPlace
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

noncomputable section

open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx Formalism.IndefR.FWT
open GlobalTheory.BigTop GlobalTheory.BigOn

namespace GlobalTheory.BigOn

open GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies GlobalTheory.TraceClassRank

section General

open scoped TensorProduct

attribute [local instance 2000] Submodule.module

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}

theorem goodOp_rho_comm {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat D A Ks}
    (hX : ∀ χ ∈ A.X, IsAbsIrrChar χ) (j : Fin D.R.m) (g : G) (x : Fin (R.nW j) → D.what₂.LL) :
    OntoChain.goodOp R j ((R.FW j).ρ g x) = (R.FW j).ρ g (OntoChain.goodOp R j x) := by
  have h := LinearMap.congr_fun (goodOp_comm (R := R) hX j g) x
  simp only [LinearMap.comp_apply, twRep_apply, map_smul] at h
  have h' := congrArg (fun y => (((R.FW j).chi g : D.what₂.LLˣ) : D.what₂.LL) • y) h
  simp only [smul_smul, Units.mul_inv, one_smul] at h'
  exact h'

variable {T : Full D} [inst : Algebra T.J.Q.c.F D.what₂.LL] {R : RealDat D A T.J.Q.c.F}
  {κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)} {v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec}
  {h : LawsP T.toTop} {fw : FWTie T.J R κ v₀} {hinj : Function.Injective D.what₂.OtoLL} {EX : ErrX D} {p : ℕ}
  {ι : Fin D.R.m} {wL wF : WeightFamilies.Wt D ((ι : ℕ) + 1)} {nT : ℕ}
  {Bs : DefBase D.what₂.LL} {Df : DefSide Bs} {S : IndefData Df} {P : Type} [Group P] [Finite P] {oc : OnConst}
  {O : OnObj S P oc} {v : HeightOneSpectrum (𝓞 D.what₂.LL)} {i : Bs.J}
  {z : (Fin (O.nZ i) → D.what₂.LL) ≃ₗ[D.what₂.LL]
    D.what₂.LL ⊗[(recB h.toLawsCore).KO] (recB h.toLawsCore).Cusp ((ι : ℕ) + 1) (κ ι)}
  {act : P → (recB h.toLawsCore).Cusp ((ι : ℕ) + 1) (κ ι) → (recB h.toLawsCore).Cusp ((ι : ℕ) + 1) (κ ι)}
  {inc : P →* G}
  {ℓ : G → (LaMod (T.Q.Dw ((ι : ℕ) + 1)) T.Q.l ≃ₗ[𝓞 D.host.E] LaMod (T.Q.Dw ((ι : ℕ) + 1)) T.Q.l)}
  {U : Subgroup G} {ψ : U →* D.what₂.LLˣ} {ph : ℂ}
  {y : (Fin (O.nX v i) → D.what₂.LL) ≃ₗ[D.what₂.LL] (Fin (OnTies.srcDim A ι (R.mu v) U ψ) → D.what₂.LL)}

theorem tie_e_comm_rho (t : OnTie h fw hinj EX p ι wL wF nT O v i z act inc ℓ U ψ ph y) (ha : ActionPin h fw ι ℓ)
    (hX : ∀ χ ∈ A.X, IsAbsIrrChar χ) (g : P) : O.e i ∘ₗ O.ρ i g = O.ρ i g ∘ₗ O.e i := by
  refine LinearMap.ext fun x => (toForms_bijective h fw ι z).1 ?_
  simp only [LinearMap.comp_apply]
  rw [t.e_eOp, t.rho_eq_of_actionPin ha, t.rho_eq_of_actionPin ha, t.e_eOp]
  exact goodOp_rho_comm hX ι (inc g) _

theorem tie_thetaJ (t : OnTie h fw hinj EX p ι wL wF nT O v i z act inc ℓ U ψ ph y) (ha : ActionPin h fw ι ℓ)
    (hi : Function.Injective inc) (hU : U ≤ inc.range) (hd : FormsDetermined R ι) (hM : SpanOverClasses R ι U ψ ph v p)
    (hty : ∀ x ∈ thetaBase R ι U ψ ph v p, ∀ u : U, (R.FW ι).ρ u x = ((ψ u : D.what₂.LLˣ) : D.what₂.LL) • x)
    {n : ℕ} (hp : RunPin R ι n v p) (hA : CompareOffOwn h fw ι ℓ U ψ ph v p) :
    (O.ThJ v i).FG ∧ O.ThJ v i ≤ (Formalism.EigenvalueLevelCeiling.eig (O.ρ i) O.U O.ψ).restrictScalars (𝓞 D.what₂.LL) ∧
      Formalism.HermitianLatticesTheory.localization₂ v.asIdeal (O.Th0 v i) ≤ Formalism.HermitianLatticesTheory.localization₂ v.asIdeal (O.ThJ v i) := by
  have hb := toForms_bijective h fw ι z
  refine ⟨?_, fun x hx => ?_, trace_lattice_le_theta_lattice_at_place t hi hU hp hA⟩
  · refine Submodule.fg_of_fg_map_injective ((toForms h fw ι z).restrictScalars (𝓞 D.what₂.LL)) hb.1 ?_
    rw [t.ThJ_eq, Submodule.map_comap_eq_of_surjective (f := (toForms h fw ι z).restrictScalars (𝓞 D.what₂.LL)) hb.2]
    exact thetaBase_fg hd hM
  · rw [t.ThJ_eq] at hx
    have hx' : toForms h fw ι z x ∈ thetaBase R ι U ψ ph v p := hx
    change x ∈ Formalism.EigenvalueLevelCeiling.eig _ _ _
    unfold Formalism.EigenvalueLevelCeiling.eig
    simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply,
      sub_eq_zero]
    intro u
    have hU' : ∀ g : P, g ∈ O.U → inc g ∈ U := fun g hg => by
      rw [t.U_eq] at hg
      exact hg
    have hu : inc u ∈ U := hU' u u.2
    apply hb.1
    rw [t.rho_eq_of_actionPin ha, hty _ hx' ⟨inc u, hu⟩, map_smul, t.ψ_eq u hu]

end General

section Point

variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts}
  {Y : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Y cX} {Csz : ℝ} {p : PtAt ex Csz}

theorem conjPl_mem_twPl (hC : (R2 p).Char (F2 p)) {w : HeightOneSpectrum (𝓞 D.what₂.LL)} (hw : w ∈ p.R.twPl) :
    Formalism.DivisionValues.conjPl w ∈ p.R.twPl := by
  by_contra h
  exact hC.tup.mu_ne w hw ((hC.tup.mu_conj w).symm.trans (hC.tup.mu_off _ h))

end Point

end GlobalTheory.BigOn

end
