module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RowShiftTheta
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpecialisedUniversalSeriesEqTwistedThetaSeries
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.OmPureTensorOOfFinite
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

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.LastVertexInv

namespace GlobalTheory.ArrowMultilinear

section General

variable {V : ℕ → Type} [∀ j, AddCommGroup (V j)] [∀ j, Module ℂ (V j)]

theorem chainTo_congr {k k' : ∀ j, V j →ₗ[ℂ] V (j + 1)} : ∀ n, (∀ j < n, k j = k' j) → chainTo k n = chainTo k' n
  | 0, _ => rfl
  | n + 1, h => by
    show k n ∘ₗ chainTo k n = k' n ∘ₗ chainTo k' n
    rw [h n (Nat.lt_succ_self n), chainTo_congr n fun j hj => h j (Nat.lt_succ_of_lt hj)]

theorem chain_multilinear : ∀ (m : ℕ) (A : Fin m → Type) [∀ j, AddCommGroup (A j)] [∀ j, Module ℂ (A j)]
    (k : ∀ j : Fin m, A j →ₗ[ℂ] (V j →ₗ[ℂ] V (j + 1))),
    ∃ M : (∀ j, A j) →ₘₗ[ℂ] (V 0 →ₗ[ℂ] V m), ∀ fs,
      M fs = chainTo (fun j => if h : j < m then k ⟨j, h⟩ (fs ⟨j, h⟩) else 0) m := by
  intro m
  induction m with
  | zero =>
    intro A _ _ k
    exact ⟨MultilinearMap.constOfIsEmpty (RingHom.id ℂ) A LinearMap.id, fun _ => rfl⟩
  | succ m ih =>
    intro A _ _ k
    obtain ⟨M, hM⟩ := ih (fun j => A j.castSucc) (fun j => k j.castSucc)
    let kl : A (Fin.last m) →ₗ[ℂ] (V m →ₗ[ℂ] V (m + 1)) := k (Fin.last m)
    refine ⟨MultilinearMap.uncurryRight
      (((LinearMap.llcomp ℂ (V 0) (V m) (V (m + 1)) ∘ₗ kl).flip).compMultilinearMap M), fun fs => ?_⟩
    show kl (fs (Fin.last m)) ∘ₗ M (Fin.init fs) = _ ∘ₗ chainTo _ m
    rw [hM]
    beta_reduce
    rw [dite_eq_left (Nat.lt_succ_self m)]
    congr 1
    refine chainTo_congr m fun j hj => ?_
    rw [dite_eq_left hj, dite_eq_left (Nat.lt_succ_of_lt hj)]
    rfl

theorem pair_multilinear {ι κ X Y : Type} {A : ι → Type} {B : κ → Type} [∀ j, AddCommGroup (A j)] [∀ j, Module ℂ (A j)]
    [∀ j, AddCommGroup (B j)] [∀ j, Module ℂ (B j)] [AddCommGroup X] [Module ℂ X] [AddCommGroup Y] [Module ℂ Y]
    (β : X →ₗ[ℂ] Y →ₗ[ℂ] ℂ) (Ma : (∀ j, A j) →ₘₗ[ℂ] X) (Mb : (∀ j, B j) →ₘₗ[ℂ] Y) :
    ∃ M : (∀ j, A j) →ₘₗ[ℂ] ((∀ j, B j) →ₘₗ[ℂ] ℂ), ∀ a b, M a b = β (Ma a) (Mb b) := by
  let L : X →ₗ[ℂ] ((∀ j, B j) →ₘₗ[ℂ] ℂ) :=
    { toFun := fun x => (β x).compMultilinearMap Mb
      map_add' := fun x x' => by ext b; simp
      map_smul' := fun c x => by ext b; simp }
  exact ⟨L.compMultilinearMap Ma, fun _ _ => rfl⟩

theorem compl_multilinear {ι κ X Y P Q : Type} {A : ι → Type} {B : κ → Type} [∀ j, AddCommGroup (A j)] [∀ j, Module ℂ (A j)]
    [∀ j, AddCommGroup (B j)] [∀ j, Module ℂ (B j)] [AddCommGroup X] [Module ℂ X] [AddCommGroup Y] [Module ℂ Y]
    [AddCommGroup P] [Module ℂ P] [AddCommGroup Q] [Module ℂ Q]
    (β : X →ₗ[ℂ] Y →ₗ[ℂ] ℂ) (c : (∀ j, A j) → P →ₗ[ℂ] X) (r : (∀ j, B j) → Q →ₗ[ℂ] Y) (u : P) (v : Q)
    (hc : ∃ M : (∀ j, A j) →ₘₗ[ℂ] X, ∀ a, M a = c a u)
    (hr : ∃ M : (∀ j, B j) →ₘₗ[ℂ] Y, ∀ b, M b = r b v) :
    ∃ M : (∀ j, A j) →ₘₗ[ℂ] ((∀ j, B j) →ₘₗ[ℂ] ℂ), ∀ a b, M a b = β.compl₁₂ (c a) (r b) u v := by
  obtain ⟨Ma, ha⟩ := hc
  obtain ⟨Mb, hb⟩ := hr
  obtain ⟨M, hM⟩ := pair_multilinear β Ma Mb
  exact ⟨M, fun a b => by rw [hM, ha, hb, LinearMap.compl₁₂_apply]⟩

end General

section Jet

variable {ι : Type} [Fintype ι] {a b : ℕ}

theorem jetLin_add (J J' : (Formalism.L2.Ker.DVar ι a b →₀ ℕ) → ℂ) :
    Formalism.L2.Ker.jetLin (J + J') = Formalism.L2.Ker.jetLin J + Formalism.L2.Ker.jetLin J' := by
  refine (MvPolynomial.basisMonomials _ ℂ).ext fun m => ?_
  simp only [Formalism.L2.Ker.jetLin, LinearMap.add_apply, Module.Basis.constr_basis, Pi.add_apply, map_add (f := _)]

theorem jetLin_smul (c : ℂ) (J : (Formalism.L2.Ker.DVar ι a b →₀ ℕ) → ℂ) :
    Formalism.L2.Ker.jetLin (c • J) = c • Formalism.L2.Ker.jetLin J := by
  refine (MvPolynomial.basisMonomials _ ℂ).ext fun m => ?_
  simp only [Formalism.L2.Ker.jetLin, LinearMap.smul_apply, Module.Basis.constr_basis, Pi.smul_apply, map_smul]

end Jet

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc}

theorem jetTab_add (W : G.Weil) (B : VertexFrames G) (p : Pair T) {f f' : WO (G.pS p) (G.pT p) → ℂ}
    (hf : IsThetaFunO W.ψ _ _ f) (hf' : IsThetaFunO W.ψ _ _ f') (x : FinPt G p.small) (y : FinPt G p.big) :
    jetTab W B p (f + f') x y = jetTab W B p f x y + jetTab W B p f' x y := by
  funext k
  simp only [jetTab, kerFin, fockIn, GridData.Weil.ker, thetaKO, Pi.add_apply]
  rw [GlobalTheory.SpecFac.pureTensorO_add W.ψ_std W.θ_is _ _ _ _ hf hf', map_add (f := _), Pi.add_apply]

theorem jetTab_smul (W : G.Weil) (B : VertexFrames G) (p : Pair T) (c : ℂ) (f : WO (G.pS p) (G.pT p) → ℂ)
    (x : FinPt G p.small) (y : FinPt G p.big) :
    jetTab W B p (c • f) x y = c • jetTab W B p f x y := by
  funext k
  simp only [jetTab, kerFin, fockIn, GridData.Weil.ker, thetaKO, Pi.smul_apply]
  rw [GlobalTheory.FiniteFock.pureTensorO_smul, map_smul, Pi.smul_apply]

def fockLin (W : G.Weil) (B : VertexFrames G) (p : Pair T) (x : FinPt G p.small) (y : FinPt G p.big) :
    thSub W p →ₗ[ℂ] (VV ℂ (wt G p.small) →ₗ[ℂ] VV ℂ (wt G p.big)) where
  toFun f := fockComp W B p f x y
  map_add' f f' := by
    ext1 v
    simp only [fockComp, Submodule.coe_add]
    rw [jetTab_add W B p f.2 f'.2]
    simp only [Formalism.L2.Ker.jetOp, Formalism.L2.Ker.jetMap, jetLin_add, LinearMap.comp_apply, LinearMap.add_apply, map_add (f := _)]
  map_smul' c f := by
    ext1 v
    simp only [fockComp, Submodule.coe_smul]
    rw [jetTab_smul]
    simp only [Formalism.L2.Ker.jetOp, Formalism.L2.Ker.jetMap, jetLin_smul, LinearMap.comp_apply, LinearMap.smul_apply, map_smul,
      RingHom.id_apply]

variable {W : G.Weil} {U : Set T}

theorem col_multilinear (S : GridChoice W U) (t : T) (x : ∀ j, FinPt G (.top j)) (Ψ₀ : VV ℂ (wt G (.top 0))) :
    ∃ M : (∀ j : Fin D.R.m, thSub W (.top t j)) →ₘₗ[ℂ] VV ℂ (wt G (.top D.R.m)),
      ∀ fs, M fs = colMapV S (fun j => (fs j : WO (G.pS (.top t j)) (G.pT (.top t j)) → ℂ)) x Ψ₀ := by
  obtain ⟨Mc, hc⟩ := chain_multilinear (V := fun j => VV ℂ (wt G (.top j))) D.R.m
    (fun j : Fin D.R.m => thSub W (.top t j))
    (fun j => S.Z.scal 1 (.top t j) • fockLin W S.N.frC (.top t j) (x j * S.N.u _) (x (j + 1) * S.N.u _))
  refine ⟨(LinearMap.applyₗ (R := ℂ) (rhoVr (tauE D) _ (S.N.fr (.top 0))⁻¹ Ψ₀)).compMultilinearMap Mc, fun fs => ?_⟩
  show Mc fs _ = _
  rw [hc]
  refine LinearMap.congr_fun (chainTo_congr (V := fun j => VV ℂ (wt G (.top j))) D.R.m fun j hj => ?_) _
  exact dite_congr rfl (fun _ => rfl) (fun _ => rfl)

theorem row_multilinear (S : GridChoice W U) (y : ∀ i, FinPt G (.grid i D.R.m))
    (F₀ : VV ℂ (listedWt G (.grid 0 D.R.m))) :
    ∃ M : (∀ i : Fin D.R.m, thSub W (.chi i D.R.m : Pair T)) →ₘₗ[ℂ] VV ℂ (wt G (.grid D.R.m D.R.m)),
      ∀ gs, M gs =
        rowMapV S (fun i => (gs i : WO (G.pS (.chi i D.R.m : Pair T)) (G.pT (.chi i D.R.m : Pair T)) → ℂ)) y F₀ := by
  obtain ⟨Mr, hr⟩ := chain_multilinear (V := fun i => VV ℂ (wt G (.grid i D.R.m))) D.R.m
    (fun i : Fin D.R.m => thSub W (.chi i D.R.m : Pair T))
    (fun i => S.Z.scal 1 (.chi i D.R.m : Pair T) •
      fockLin W S.N.frC (.chi i D.R.m : Pair T) (y i * S.N.u _) (y (i + 1) * S.N.u _))
  refine ⟨(LinearMap.applyₗ (R := ℂ)
    (rhoVr (tauE D) _ (S.N.fr (.grid 0 D.R.m))⁻¹ (funOf (listedWt G (.grid 0 D.R.m)) F₀))).compMultilinearMap Mr,
    fun gs => ?_⟩
  show Mr gs _ = _
  rw [hr]
  refine LinearMap.congr_fun (chainTo_congr (V := fun i => VV ℂ (wt G (.grid i D.R.m))) D.R.m fun j hj => ?_) _
  exact dite_congr rfl (fun _ => rfl) (fun _ => rfl)

theorem pairing_multilinear {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T}
    (S : GridChoice W U) (t : T) (x : ∀ j, FinPt G (.top j)) (y : ∀ i, FinPt G (.grid i D.R.m))
    (Ψ₀ : VV ℂ (wt G (.top 0))) (F₀ : VV ℂ (listedWt G (.grid 0 D.R.m))) :
    ∃ M : (∀ j : Fin D.R.m, thSub W (.top t j)) →ₘₗ[ℂ]
        ((∀ i : Fin D.R.m, thSub W (.chi i D.R.m : Pair T)) →ₘₗ[ℂ] ℂ),
      ∀ fs gs, M fs gs = (brPair (listedWt G (.grid D.R.m D.R.m)) G.sp.topDec.rank.symm (wt G (.top D.R.m))).compl₁₂
        (colMapV S (fun j => (fs j : WO (G.pS (.top t j)) (G.pT (.top t j)) → ℂ)) x)
        (rowMapV S (fun i => (gs i : WO (G.pS (.chi i D.R.m : Pair T)) (G.pT (.chi i D.R.m : Pair T)) → ℂ)) y) Ψ₀ F₀ := by
  exact compl_multilinear (brPair (listedWt G (.grid D.R.m D.R.m)) G.sp.topDec.rank.symm (wt G (.top D.R.m)))
    (fun fs : ∀ j : Fin D.R.m, thSub W (.top t j) =>
      colMapV S (fun j => (fs j : WO (G.pS (.top t j)) (G.pT (.top t j)) → ℂ)) x)
    (fun gs : ∀ i : Fin D.R.m, thSub W (.chi i D.R.m : Pair T) =>
      rowMapV S (fun i => (gs i : WO (G.pS (.chi i D.R.m : Pair T)) (G.pT (.chi i D.R.m : Pair T)) → ℂ)) y) Ψ₀ F₀
    (col_multilinear S t x Ψ₀) (row_multilinear S y F₀)

end GlobalTheory.ArrowMultilinear
