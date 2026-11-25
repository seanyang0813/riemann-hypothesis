module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EqCjOneSmul
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsBaseEnlargementFixedCoefFieldOfCoeffEnlargemen
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver
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

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open GlobalTheory.Mem.KeepRef GlobalTheory.Mem.R3.Rw.WeilExt
open Formalism.IndefR.Mult Formalism.IndefR.Datum

namespace GlobalTheory.Mem.R3.Rw.LiftExt

def DSTie {D D' : D7} {V : HSp D} {V' : HSp D'} {S : D.what₂.Tau → SPar} {S' : D'.what₂.Tau → SPar} (M' : DSModel V' S') (M : DSModel V S) : Prop :=
  HEq M'.H M.H ∧ HEq M'.nacg M.nacg ∧ HEq M'.ips M.ips ∧ HEq M'.σ M.σ ∧ HEq M'.lam M.lam ∧ HEq M'.ε M.ε ∧ HEq M'.fr M.fr

section Free

variable {D : D7}

def ThetaLift {V W : HSp D} {S : D.what₂.Tau → SPar} (M : DSModel W S) (Wl : Submodule ℂ (MMap M)) (θ : InfFam D)
    (ψ : AddChar (AF D.host.F) ℂ) (c : CoefA V) (BV : D.what₂.Tau → Matrix (Fin V.rank) (Fin V.rank) ℂ)
    (io : LowT M →ₗ[ℂ] c.W →ₗ[ℂ] PolF D W.rank V.rank) (H : HMod (Bridge.Gf V → c.W)) (ν : Measure (GA D V)) (fd : Set (GA D V))
    (ω : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)) (v : WO V W → ℂ) (th : H.H →ₗ[ℂ] MMap M) : Prop :=
  (∀ x, th x ∈ Wl) ∧
    ∃ thP, Lift.IsThetaP ν fd (fun g h f => thetaKO ω h g f) (pureTensorO ψ θ V W (fun _ => 1) (cart M) BV (onb M) v) io
        (LinearMap.range (c.ext ∘ₗ H.e)) thP ∧
      ∀ x (v : ∀ ρ, lowT M ρ), th x (fun ρ => v ρ) = thP ((c.ext ∘ₗ H.e).rangeRestrict x) (PiTensorProduct.tprod ℂ v)

def PostLift {V W : HSp D} {S : D.what₂.Tau → SPar} (M : DSModel W S) (c : CoefA V) (H : HMod (Bridge.Gf V → c.W))
    (X : HMod (MMap M)) (L : (GA D W → ℂ) →ₗ[ℂ] (GA D W → ℂ)) (th : H.H →ₗ[ℂ] MMap M) (g : H.H →ₗ[ℂ] X.H) : Prop :=
  ∀ x, X.e (g x) = postOn M L (th x)

def datW (i : Fin D.R.m) (Pg : Finset (Pl D.host.E)) : LevDat D.host.E ℂ (Wc D i).rank :=
  datY _ D.R.r D.R.t 0 (r_le_rank_Wc i) Pg ∅ (LevelP.triv _ _ _) (fun _ _ => 1) (fun _ => 1) Frm.B

end Free

section Comparison₂

variable {B B' : Base} {C : Cols B} {C' : Cols B'} {a : Late B C} {a' : Late B' C'}
  {V W : HSp a.D} {V' W' : HSp a'.D} {S : a.D.what₂.Tau → SPar} {S' : a'.D.what₂.Tau → SPar} {M : DSModel W S} {M' : DSModel W' S'}



theorem isAutFunSm_iff (hP : B'.toPre = B.toPre) (hW : HEq W' W) {θ : InfFam a.D} {θ' : InfFam a'.D} (hθ : HEq θ' θ)
    {φ : GA a.D W → ℂ} {φ' : GA a'.D W' → ℂ} (hφ : HEq φ' φ) : IsAutFunSm θ' W' φ' ↔ IsAutFunSm θ W φ := by
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have : W' = W := by with_unfolding_all exact eq_of_heq hW
  subst W'
  have : θ' = θ := by with_unfolding_all exact eq_of_heq hθ
  subst θ'
  have : φ' = φ := by with_unfolding_all exact eq_of_heq hφ
  subst φ'
  refine ⟨fun h => ⟨⟨?_, ?_, ?_⟩, ?_, ?_, ?_⟩, fun h => ⟨⟨?_, ?_, ?_⟩, ?_, ?_, ?_⟩⟩
  · exact (by with_unfolding_all exact (h.1.1 :))
  · exact (by with_unfolding_all exact (h.1.2 :))
  · exact (by with_unfolding_all exact (h.1.3 :))
  · exact (by with_unfolding_all exact (h.2 :))
  · exact (by with_unfolding_all exact (h.3 :))
  · exact (by with_unfolding_all exact (h.4 :))
  · exact (by with_unfolding_all exact (h.1.1 :))
  · exact (by with_unfolding_all exact (h.1.2 :))
  · exact (by with_unfolding_all exact (h.1.3 :))
  · exact (by with_unfolding_all exact (h.2 :))
  · exact (by with_unfolding_all exact (h.3 :))
  · exact (by with_unfolding_all exact (h.4 :))

theorem isMultMap_iff (hP : B'.toPre = B.toPre) (hW : HEq W' W) (h : DSTie M' M) {θ : InfFam a.D} {θ' : InfFam a'.D} (hθ : HEq θ' θ)
    {J : Set (GA a.D W)} {J' : Set (GA a'.D W')} (hJ : HEq J' J) {χ : GA a.D W → ℂ} {χ' : GA a'.D W' → ℂ} (hχ : HEq χ' χ)
    {T : MMap M} {T' : MMap M'} (hT : HEq T' T) : IsMultMap θ' M' J' χ' T' ↔ IsMultMap θ M J χ T := by
  have k := fun φ φ' => isAutFunSm_iff (φ := φ) (φ' := φ') hP hW hθ
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have : W' = W := by with_unfolding_all exact eq_of_heq hW
  subst W'
  rcases M with @⟨H, nacg, ips, σ, lam, ε, fr, enum, ds, fu, fg⟩
  rcases M' with @⟨H', nacg', ips', σ', lam', ε', fr', enum', ds', fu', fg'⟩
  rcases h with ⟨h1, h2, h3, h4, h5, h6, h7⟩
  have : H' = H := by with_unfolding_all exact eq_of_heq h1
  subst H'
  have : nacg' = nacg := by with_unfolding_all exact eq_of_heq h2
  subst nacg'
  have : ips' = ips := by with_unfolding_all exact eq_of_heq h3
  subst ips'
  have : σ' = σ := by with_unfolding_all exact eq_of_heq h4
  subst σ'
  have : lam' = lam := by with_unfolding_all exact eq_of_heq h5
  subst lam'
  have : ε' = ε := by with_unfolding_all exact eq_of_heq h6
  subst ε'
  have : fr' = fr := by with_unfolding_all exact eq_of_heq h7
  subst fr'
  have : θ' = θ := by with_unfolding_all exact eq_of_heq hθ
  subst θ'
  have : J' = J := by with_unfolding_all exact eq_of_heq hJ
  subst J'
  have : χ' = χ := by with_unfolding_all exact eq_of_heq hχ
  subst χ'
  have : T' = T := by with_unfolding_all exact eq_of_heq hT
  subst T'
  refine ⟨fun h => ⟨fun v => ?_, ?_, ?_, ?_, ?_⟩, fun h => ⟨fun v => ?_, ?_, ?_, ?_, ?_⟩⟩
  · exact (by with_unfolding_all exact ((k (T v) (((T v))) (((HEq.refl (T v))))).1 (((h.1 ((by with_unfolding_all exact (v :)))))) : _))
  · exact (by with_unfolding_all exact (h.2 :))
  · exact (by with_unfolding_all exact (h.3 :))
  · exact (by with_unfolding_all exact (h.4 :))
  · exact (by with_unfolding_all exact (h.5 :))
  · exact (by with_unfolding_all exact ((k (T ((v))) (((T ((by with_unfolding_all exact (v :)))))) (((HEq.refl (T ((by with_unfolding_all exact (v :)))))))).2 (h.1 ((v))) : _))
  · exact (by with_unfolding_all exact (h.2 :))
  · exact (by with_unfolding_all exact (h.3 :))
  · exact (by with_unfolding_all exact (h.4 :))
  · exact (by with_unfolding_all exact (h.5 :))

theorem mult_heq (hP : B'.toPre = B.toPre) (hW : HEq W' W) (h : DSTie M' M) {θ : InfFam a.D} {θ' : InfFam a'.D} (hθ : HEq θ' θ)
    {J : Set (GA a.D W)} {J' : Set (GA a'.D W')} (hJ : HEq J' J) {χ : GA a.D W → ℂ} {χ' : GA a'.D W' → ℂ} (hχ : HEq χ' χ) :
    HEq (Mult θ' M' J' χ') (Mult θ M J χ) := by
  have k := fun T T' => isMultMap_iff (T := T) (T' := T') hP hW h hθ hJ hχ
  unfold Mult
  generalize IsMultMap θ' M' J' χ' = p' at k ⊢
  generalize IsMultMap θ M J χ = p at k ⊢
  clear hθ hJ hχ
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have : W' = W := by with_unfolding_all exact eq_of_heq hW
  subst W'
  rcases M with @⟨H, nacg, ips, σ, lam, ε, fr, enum, ds, fu, fg⟩
  rcases M' with @⟨H', nacg', ips', σ', lam', ε', fr', enum', ds', fu', fg'⟩
  rcases h with ⟨h1, h2, h3, h4, h5, h6, h7⟩
  have : H' = H := by with_unfolding_all exact eq_of_heq h1
  subst H'
  have : nacg' = nacg := by with_unfolding_all exact eq_of_heq h2
  subst nacg'
  have : ips' = ips := by with_unfolding_all exact eq_of_heq h3
  subst ips'
  have : σ' = σ := by with_unfolding_all exact eq_of_heq h4
  subst σ'
  have : lam' = lam := by with_unfolding_all exact eq_of_heq h5
  subst lam'
  have : ε' = ε := by with_unfolding_all exact eq_of_heq h6
  subst ε'
  have : fr' = fr := by with_unfolding_all exact eq_of_heq h7
  subst fr'
  have hp : @Eq _ ((by with_unfolding_all exact (p' :))) p := funext fun T => (by with_unfolding_all exact ((propext (k T ((T)) (((HEq.refl T))))) : _))
  have hp' : HEq p' p := (by with_unfolding_all exact ((heq_of_eq hp) :))
  clear k hp
  have : p' = p := by with_unfolding_all exact eq_of_heq hp'
  subst p'
  exact (by with_unfolding_all exact ((HEq.refl (Submodule.span ℂ {T | p T})) :))

theorem thetaLift_of (hP : B'.toPre = B.toPre) (hV : HEq V' V) (hW : HEq W' W) (h : DSTie M' M)
    {Wl : Submodule ℂ (MMap M)} {Wl' : Submodule ℂ (MMap M')} (hWl : HEq Wl' Wl) {θ : InfFam a.D} {θ' : InfFam a'.D} (hθ : HEq θ' θ)
    {ψ : AddChar (AF a.D.host.F) ℂ} {ψ' : AddChar (AF a'.D.host.F) ℂ} (hψ : HEq ψ' ψ) {c : CoefA V} {c' : CoefA V'}
    (c1 : HEq c'.W c.W) (c2 : HEq c'.ρ c.ρ) (c3 : HEq c'.nW c.nW) (c4 : HEq c'.iW c.iW)
    {BV BV'} (hBV : HEq BV' BV) {io io'} (hio : HEq io' io) {H H'} (hH : HEq H' H) {ν ν'} (hν : HEq ν' ν) {fd fd'} (hfd : HEq fd' fd)
    {ω ω'} (hω : HEq ω' ω) {v v'} (hv : HEq v' v) {th th'} (hth : HEq th' th)
    (h0 : ThetaLift M Wl θ ψ c BV io H ν fd ω v th) : ThetaLift M' Wl' θ' ψ' c' BV' io' H' ν' fd' ω' v' th' := by
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have : W' = W := by with_unfolding_all exact eq_of_heq hW
  subst W'
  rcases M with @⟨H, nacg, ips, σ, lam, ε, fr, enum, ds, fu, fg⟩
  rcases M' with @⟨H', nacg', ips', σ', lam', ε', fr', enum', ds', fu', fg'⟩
  rcases h with ⟨h1, h2, h3, h4, h5, h6, h7⟩
  have : H' = H := by with_unfolding_all exact eq_of_heq h1
  subst H'
  have : nacg' = nacg := by with_unfolding_all exact eq_of_heq h2
  subst nacg'
  have : ips' = ips := by with_unfolding_all exact eq_of_heq h3
  subst ips'
  have : σ' = σ := by with_unfolding_all exact eq_of_heq h4
  subst σ'
  have : lam' = lam := by with_unfolding_all exact eq_of_heq h5
  subst lam'
  have : ε' = ε := by with_unfolding_all exact eq_of_heq h6
  subst ε'
  have : fr' = fr := by with_unfolding_all exact eq_of_heq h7
  subst fr'
  have : V' = V := by with_unfolding_all exact eq_of_heq hV
  subst V'
  rcases c with @⟨Wc, nc, ic, fc, ρc⟩
  rcases c' with @⟨Wc', nc', ic', fc', ρc'⟩
  have : Wc' = Wc := by with_unfolding_all exact eq_of_heq c1
  subst Wc'
  have : nc' = nc := by with_unfolding_all exact eq_of_heq c3
  subst nc'
  have : ic' = ic := by with_unfolding_all exact eq_of_heq c4
  subst ic'
  have : ρc' = ρc := by with_unfolding_all exact eq_of_heq c2
  subst ρc'
  have : fc' = fc := Subsingleton.elim _ _
  subst fc'
  have : Wl' = Wl := by with_unfolding_all exact eq_of_heq hWl
  subst Wl'
  have : θ' = θ := by with_unfolding_all exact eq_of_heq hθ
  subst θ'
  have : ψ' = ψ := by with_unfolding_all exact eq_of_heq hψ
  subst ψ'
  have : BV' = BV := by with_unfolding_all exact eq_of_heq hBV
  subst BV'
  have : io' = io := by with_unfolding_all exact eq_of_heq hio
  subst io'
  have : H' = H := by with_unfolding_all exact eq_of_heq hH
  subst H'
  have : ν' = ν := by with_unfolding_all exact eq_of_heq hν
  subst ν'
  have : fd' = fd := by with_unfolding_all exact eq_of_heq hfd
  subst fd'
  have : ω' = ω := by with_unfolding_all exact eq_of_heq hω
  subst ω'
  have : v' = v := by with_unfolding_all exact eq_of_heq hv
  subst v'
  have : th' = th := by with_unfolding_all exact eq_of_heq hth
  subst th'
  exact (by with_unfolding_all exact (h0 :))

theorem postLift_of (hP : B'.toPre = B.toPre) (hV : HEq V' V) (hW : HEq W' W) (h : DSTie M' M) {c : CoefA V} {c' : CoefA V'}
    (c1 : HEq c'.W c.W) (c2 : HEq c'.ρ c.ρ) (c3 : HEq c'.nW c.nW) (c4 : HEq c'.iW c.iW)
    {Y Y'} (hY : HEq Y' Y) {X X'} (hX : HEq X' X) {L L'} (hL : HEq L' L) {th th'} (hth : HEq th' th) {g g'} (hg : HEq g' g)
    (h0 : PostLift M c Y X L th g) : PostLift M' c' Y' X' L' th' g' := by
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have : W' = W := by with_unfolding_all exact eq_of_heq hW
  subst W'
  rcases M with @⟨H, nacg, ips, σ, lam, ε, fr, enum, ds, fu, fg⟩
  rcases M' with @⟨H', nacg', ips', σ', lam', ε', fr', enum', ds', fu', fg'⟩
  rcases h with ⟨h1, h2, h3, h4, h5, h6, h7⟩
  have : H' = H := by with_unfolding_all exact eq_of_heq h1
  subst H'
  have : nacg' = nacg := by with_unfolding_all exact eq_of_heq h2
  subst nacg'
  have : ips' = ips := by with_unfolding_all exact eq_of_heq h3
  subst ips'
  have : σ' = σ := by with_unfolding_all exact eq_of_heq h4
  subst σ'
  have : lam' = lam := by with_unfolding_all exact eq_of_heq h5
  subst lam'
  have : ε' = ε := by with_unfolding_all exact eq_of_heq h6
  subst ε'
  have : fr' = fr := by with_unfolding_all exact eq_of_heq h7
  subst fr'
  have : V' = V := by with_unfolding_all exact eq_of_heq hV
  subst V'
  rcases c with @⟨Wc, nc, ic, fc, ρc⟩
  rcases c' with @⟨Wc', nc', ic', fc', ρc'⟩
  have : Wc' = Wc := by with_unfolding_all exact eq_of_heq c1
  subst Wc'
  have : nc' = nc := by with_unfolding_all exact eq_of_heq c3
  subst nc'
  have : ic' = ic := by with_unfolding_all exact eq_of_heq c4
  subst ic'
  have : ρc' = ρc := by with_unfolding_all exact eq_of_heq c2
  subst ρc'
  have : fc' = fc := Subsingleton.elim _ _
  subst fc'
  have : Y' = Y := by with_unfolding_all exact eq_of_heq hY
  subst Y'
  have : X' = X := by with_unfolding_all exact eq_of_heq hX
  subst X'
  have : L' = L := by with_unfolding_all exact eq_of_heq hL
  subst L'
  have : th' = th := by with_unfolding_all exact eq_of_heq hth
  subst th'
  have : g' = g := by with_unfolding_all exact eq_of_heq hg
  subst g'
  exact (by with_unfolding_all exact (h0 :))

end Comparison₂

section Fields

variable {B B' : Base} {C : Cols B} {C' : Cols B'} {a : Late B C} {a' : Late B' C'}


theorem m_eq (hP : B'.toPre = B.toPre) : a'.D.R.m = a.D.R.m := by
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  exact (by with_unfolding_all exact ((Eq.refl a.D.R.m) :))

theorem wc_heq (hP : B'.toPre = B.toPre) {i : Fin a.D.R.m} {i' : Fin a'.D.R.m} (h : (i : ℕ) = i') : HEq (Wc a'.D i') (Wc a.D i) := by
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have hi : i' = i := by
    apply Fin.ext
    exact h.symm
  subst i'
  exact (by with_unfolding_all exact ((HEq.refl (Wc a.D i)) :))

theorem vc_heq (hP : B'.toPre = B.toPre) {i : Fin a.D.R.m} {i' : Fin a'.D.R.m} (h : (i : ℕ) = i') : HEq (Vc a'.D i') (Vc a.D i) := by
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have hi : i' = i := by
    apply Fin.ext
    exact h.symm
  subst i'
  exact (by with_unfolding_all exact ((HEq.refl (Vc a.D i)) :))

theorem lev_heq (hP : B'.toPre = B.toPre) {i : Fin a.D.R.m} {i' : Fin a'.D.R.m} (h : (i : ℕ) = i')
    {β : ∀ i, GL (Fin (Wc a.D i).rank) (Lev.EAf a.D)} {β' : ∀ i, GL (Fin (Wc a'.D i).rank) (Lev.EAf a'.D)} (hβ : HEq β' β)
    {Pg : Finset (Pl a.D.host.E)} {Pg' : Finset (Pl a'.D.host.E)} (hPg : HEq Pg' Pg) :
    HEq (levS _ (β' i') (datW i' Pg')) (levS _ (β i) (datW i Pg)) ∧ HEq (levChi _ (β' i') (datW i' Pg')) (levChi _ (β i) (datW i Pg)) := by
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have hi : i' = i := by
    apply Fin.ext
    exact h.symm
  subst i'
  have : β' = β := by with_unfolding_all exact eq_of_heq hβ
  subst β'
  have : Pg' = Pg := by with_unfolding_all exact eq_of_heq hPg
  subst Pg'
  exact (by with_unfolding_all exact ((And.intro (HEq.refl (levS _ (β i) (datW i Pg))) (HEq.refl (levChi _ (β i) (datW i Pg)))) :))

theorem gaL_heq (hP : B'.toPre = B.toPre) {i : Fin a.D.R.m} {i' : Fin a'.D.R.m} (h : (i : ℕ) = i')
    {β : ∀ i, GL (Fin (Wc a.D i).rank) (Lev.EAf a.D)} {β' : ∀ i, GL (Fin (Wc a'.D i).rank) (Lev.EAf a'.D)} (hβ : HEq β' β)
    {Pg : Finset (Pl a.D.host.E)} {Pg' : Finset (Pl a'.D.host.E)} (hPg : HEq Pg' Pg)
    {G G' : Type} [iG : Group G] [fG : Fintype G] [iG' : Group G'] [fG' : Fintype G'] (hG : G' = G) (hi : HEq iG' iG)
    {eG : G ≃* G0 Pg a.D.R.r} {eG' : G' ≃* G0 Pg' a'.D.R.r} (he : HEq eG' eG) {c : G → ℂ} {c' : G' → ℂ}
    (hc : ∀ g' g, HEq g' g → c' g' = c g) :
    HEq (gaL _ (β' i') (datW i' Pg') eG' c') (gaL _ (β i) (datW i Pg) eG c) := by
  subst hG
  obtain rfl := eq_of_heq hi
  obtain rfl : fG' = fG := Subsingleton.elim _ _
  obtain rfl : c' = c := funext fun g => hc g g HEq.rfl
  clear hc
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have hi : i' = i := by
    apply Fin.ext
    exact h.symm
  subst i'
  have : β' = β := by with_unfolding_all exact eq_of_heq hβ
  subst β'
  have : Pg' = Pg := by with_unfolding_all exact eq_of_heq hPg
  subst Pg'
  have : eG' = eG := by with_unfolding_all exact eq_of_heq he
  subst eG'
  exact (by with_unfolding_all exact ((HEq.refl (gaL _ (β i) (datW i Pg) eG c')) :))

theorem gc_eq (hP : B'.toPre = B.toPre) {px : PreX B.toPre} {px' : PreX B'.toPre} (hpx : HEq px' px) :
    Gc B' px' = Gc B px ∧ HEq (inferInstance : Group (Gc B' px')) (inferInstance : Group (Gc B px)) := by
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  have : px' = px := by with_unfolding_all exact eq_of_heq hpx
  subst px'
  exact (by with_unfolding_all exact ((And.intro (Eq.refl (Gc B px)) (HEq.refl (inferInstance : Group (Gc B px)))) :))

variable {G G' : Type} [iG : Group G] [Fintype G] [iG' : Group G'] [Fintype G'] {Pl0 T0 Pl0' T0' : Type}
  {A : FamIn a.D.what₂.LL G Pl0 T0 a.D.R.m} {A' : FamIn a'.D.what₂.LL G' Pl0' T0' a'.D.R.m}
  {Ks Ks' : Type} [Field Ks] [NumberField Ks] [Algebra Ks a.D.what₂.LL] [Field Ks'] [NumberField Ks'] [Algebra Ks' a'.D.what₂.LL]
  {R : RealDat a.D A Ks} {R' : RealDat a'.D A' Ks'}

theorem lift_of (hP : B'.toPre = B.toPre) {i : Fin a.D.R.m} {i' : Fin a'.D.R.m} (h : (i : ℕ) = i') {t : T0} {t' : T0'}
    (hG : G' = G) (hi : HEq iG' iG) (hψ : HEq R'.ψ R.ψ) (hθ : HEq R'.θ R.θ) (hβ : HEq R'.βW R.βW) (hPg : HEq R'.Pg R.Pg)
    (he : HEq R'.eG R.eG) (c1 : HEq (R'.cV i').W (R.cV i).W) (c2 : HEq (R'.cV i').ρ (R.cV i).ρ) (c3 : HEq (R'.cV i').nW (R.cV i).nW)
    (c4 : HEq (R'.cV i').iW (R.cV i).iW) (hio : HEq (R'.ioP i') (R.ioP i)) (hBV : HEq (R'.BV i') (R.BV i))
    (hM : DSTie (R'.MW i' a'.D.what₂.embLL) (R.MW i a.D.what₂.embLL)) (hHW : HEq (R'.HW i' a'.D.what₂.embLL) (R.HW i a.D.what₂.embLL))
    (hω : HEq (R'.ωP i' t') (R.ωP i t)) (hv : HEq (R'.vP i' t') (R.vP i t)) (hHV : HEq (R'.HV i' t') (R.HV i t))
    (hF : HEq (R'.thF i' t') (R.thF i t)) (hg : HEq (R'.thG i' t') (R.thG i t)) (hν : HEq (R'.νV i' t') (R.νV i t))
    (hfd : HEq (R'.fdV i' t') (R.fdV i t))
    (hc : ∀ g' g, HEq g' g → a'.D.what₂.embLL ((idemOf A'.X).coeff g') = a.D.what₂.embLL ((idemOf A.X).coeff g))
    (h0 : R.PThF i t (R.thF i t) ∧ R.PThG i t (R.thG i t)) : R'.PThF i' t' (R'.thF i' t') ∧ R'.PThG i' t' (R'.thG i' t') := by
  have s : a.D.what₂.embLL = sg0 a.D A := (sgAt_mk _ R.hv0).symm
  have s' : a'.D.what₂.embLL = sg0 a'.D A' := (sgAt_mk _ R'.hv0).symm
  have hM0 : DSTie (R'.MW i' (sg0 a'.D A')) (R.MW i (sg0 a.D A)) := s ▸ s' ▸ hM
  have hHW0 : HEq (R'.HW i' (sg0 a'.D A')) (R.HW i (sg0 a.D A)) := s ▸ s' ▸ hHW
  have hc0 : ∀ g' g, HEq g' g → RealDat.eC (A := A') (sg0 a'.D A') g' = RealDat.eC (A := A) (sg0 a.D A) g := s ▸ s' ▸ hc
  have hW := wc_heq hP h
  have hV := vc_heq hP h
  have hl := lev_heq hP h hβ hPg
  have f0 : ThetaLift (R.MW i (sg0 a.D A)) (Mult R.θ _ (levS _ (R.βW i) (datW i R.Pg)) (levChi _ (R.βW i) (datW i R.Pg))) R.θ R.ψ (R.cV i)
      (R.BV i) (R.ioP i) (R.HV i t) (R.νV i t) (R.fdV i t) (R.ωP i t) (R.vP i t) (R.thF i t) := (by with_unfolding_all exact (h0.1 :))
  have g0 : PostLift (R.MW i (sg0 a.D A)) (R.cV i) (R.HV i t) (R.HW i (sg0 a.D A))
      (gaL _ (R.βW i) (datW i R.Pg) R.eG (RealDat.eC (A := A) (sg0 a.D A))) (R.thF i t) (R.thG i t) := (by with_unfolding_all exact (h0.2 :))
  have f1 := thetaLift_of hP hV hW hM0 (mult_heq hP hW hM0 hθ hl.1 hl.2) hθ hψ c1 c2 c3 c4 hBV hio hHV hν hfd hω hv hF f0
  have g1 := postLift_of hP hV hW hM0 c1 c2 c3 c4 hHV hHW0 (gaL_heq hP h hβ hPg hG hi he hc0) hF hg g0
  exact (by with_unfolding_all exact ((And.intro f1 g1) :))

end Fields



theorem liftAt_of_rSide : ∀ {B B' : Base} {f : Fr B.toPre} {f' : Fr B'.toPre} {T : TwDat B} {T' : TwDat B'} {w : ColW B f T} {w' : ColW B' f' T'}
  {Z : w.Lt} {Z' : w'.Lt} {hX : B.fields.Ok} {hX' : B'.fields.Ok} {Wt : Set B.places.Pl}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks (w'.st Z').toD7.what₂.LL] {Xg : Finset (Gc B' w'.px → B'.LL)} {tr : TrI B' w'.px}
  (z : Dat (w.st Z) w.I hX T Wt) (Wt' : Set B'.places.Pl)
  (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) Ks), Enl0 B B' → HEq w'.px w.px → z.R.toRealDat.ExAt → RSide z Wt' R' → IdemSame z Xg → LiftAt R'.toRealDat (mu0F (X := B'.fields) (tuOf w'.I (usedOf w'.I T' Wt'))) := by
  intro B B' f f' T T' w w' Z Z' hX hX' Wt Ks _ _ _ Xg tr z Wt' R' hE hpx hEx hS hI i'
  let := z.alg
  have hP : B'.toPre = B.toPre := hE.1
  have hm := m_eq (a := Z) (a' := Z') hP
  let i : Fin (w.st Z).toD7.R.m := Fin.cast hm i'
  have h : (i : ℕ) = i' := rfl
  obtain ⟨⟨hψ, hθ, hβ, -, -, -, -, -, -, hPg, he, -, h1, -⟩, h2⟩ := hS
  obtain ⟨c1, c2, c3, c4, -, hio, hBV, m1, m2, m3, m4, m5, m6, m7, -, hHW, -⟩ := h1 i i' h
  obtain ⟨hω, hv, hHV, hF, hg, hν, hfd⟩ := h2 i i' h
  have hG := gc_eq hP hpx
  have hb := z.pins.char.base.thP
  have l1 := (hb.thF i (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt)))).1 (hEx.thF i _)
  have l2 := (hb.thG i (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt)))).1 (hEx.thG i _)
  exact lift_of (a := Z) (a' := Z') (R := z.R.toRealDat) (R' := R'.toRealDat) hP h hG.1 hG.2 hψ hθ hβ hPg he c1 c2 c3 c4 hio hBV
    ⟨m1, m2, m3, m4, m5, m6, m7⟩ hHW hω hv hHV hF hg hν hfd hI ⟨l1, l2⟩

end GlobalTheory.Mem.R3.Rw.LiftExt

end
