module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TwistPlacesOffPrimeQZero
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeCharacterIdeleCharacterMatchUnique
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.RowClaim
open Formalism.L2.Host (HChar)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.RowEx

noncomputable section

namespace GlobalTheory.RowEx

theorem triIs_congr {D : D7} {T : Type} {A A' WW : HSp D} {X : Tri T A A' WW} {ψ ψ' : AddChar (AF D.host.F) ℂ} {θ θ' : InfFam D}
    {α α' β β' : T → ((AE D)ˣ →* Circle)} {ν ν' : T → Formalism.L2.Host.HChar D.host.E} {S S' : T → Finset (Pl D.host.E)}
    (h : X.Is ψ θ α β ν S) (e1 : ψ' = ψ) (e2 : θ' = θ) (e3 : ∀ t, α' t = α t) (e4 : ∀ t, β' t = β t) (e5 : ∀ t, ν' t = ν t)
    (e6 : ∀ t, S' t = S t) : X.Is ψ' θ' α' β' ν' S' := by
  obtain rfl := e1
  obtain rfl := e2
  obtain rfl := funext e3
  obtain rfl := funext e4
  obtain rfl := funext e5
  obtain rfl := funext e6
  exact h



theorem trBot_holds : TrBot := by
  intro X X' T T' L L' sc G G' W W' S S' μ₀ μ₀' ι hA M σ hB
  obtain ⟨hl, hg, hw, -⟩ := hA
  have pre := hl.pre
  cases X with | mk B C Wr V Sg N Gj =>
  cases X' with | mk B' C' Wr' V' Sg' N' Gj' =>
  cases B
  cases B'
  dsimp only at pre
  subst pre
  let DX := GlobalTheory.Mem.Stages.toD7 ⟨_, C, Wr, V, Sg, N, Gj⟩
  let DX' := GlobalTheory.Mem.Stages.toD7 ⟨_, C', Wr', V', Sg', N', Gj'⟩
  obtain ⟨f, f', hff, hC, hC'⟩ := hl.C
  obtain rfl : f' = f := eq_of_heq hff
  have hψ : W'.ψ = W.ψ := eq_of_heq hw.ψ
  have hθ : W'.θ = W.θ := eq_of_heq hw.θ
  have hxiH : ∀ t, L'.xiH t = L.xiH (ι t) := fun t => eq_of_heq (hl.xi t)
  have hQ : ∀ t, L'.Q t = L.Q (ι t) := fun t => eq_of_heq (hl.Q t)
  have hchi : G'.ch.chi = G.ch.chi := eq_of_heq hg.chi
  have hchiH : G'.ch.chiH = G.ch.chiH := eq_of_heq hg.chiH
  have hv0 : G'.pl.v0 = G.pl.v0 := eq_of_heq hg.v0
  have hwp : G'.pl.w = G.pl.w := eq_of_heq hg.w
  have hCmu : ∀ j, L'.C.mu0 j = L.C.mu0 j := fun j => by
    have a : L.C.mu0 j = f'.mu0 j := by rw [hC]; rfl
    have b : L'.C.mu0 j = f'.mu0 j := by rw [hC']; rfl
    exact b.trans a.symm
  have hCeta : L'.C.eta = L.C.eta := by
    have a : L.C.eta = f'.eta := by rw [hC]; rfl
    have b : L'.C.eta = f'.eta := by rw [hC']; rfl
    exact b.trans a.symm
  have hmu0 : ∀ j : Fin DX'.R.m, L'.mu0 (↑j + 1) = L.mu0 (↑j + 1) := fun j => by
    have h1 : ChrEq (L.mu0 (↑j + 1)) (L'.C.mu0 j) := by rw [hCmu j]; exact hl.is.mu0 j
    exact (GlobalTheory.ChrEqUnique.chrEq_unique DX').2.1 _ _ _ (hl.is'.mu0 j) h1
  have heta : L'.eta = L.eta := by
    have h1 : ChrEq L.eta L'.C.eta := by rw [hCeta]; exact hl.is.eta
    exact (GlobalTheory.ChrEqUnique.chrEq_unique DX').2.1 _ _ _ hl.is'.eta h1
  have hxi : ∀ t, L'.xi t = L.xi (ι t) := fun t => by
    have h1 : ChrEq (L.xi (ι t)) (L'.xiH t) := by rw [hxiH t]; exact hl.is.xi (ι t)
    exact (GlobalTheory.ChrEqUnique.chrEq_unique DX').2.1 _ _ _ (hl.is'.xi t) h1

  have thImp : ∀ ψ S T f, @IsThetaFunO DX ψ S T f → @IsThetaFunO DX' ψ S T f :=
    fun _ _ _ _ h => ⟨h.quasi, h.level, h.cont, h.smooth⟩
  have thImp' : ∀ ψ S T f, @IsThetaFunO DX' ψ S T f → @IsThetaFunO DX ψ S T f :=
    fun _ _ _ _ h => ⟨h.quasi, h.level, h.cont, h.smooth⟩
  have thEq : @IsThetaFunO DX' = fun ψ S T f => @IsThetaFunO DX ψ S T f := by
    funext ψ S T f
    exact propext ⟨thImp' _ _ _ _, thImp _ _ _ _⟩
  have wImp : ∀ ψ S T x1 x2 ω, @IsWeilDatumO DX ψ S T x1 x2 ω →
      @IsWeilDatumO DX' ψ S T x1 x2 ω := fun _ _ _ _ _ _ h =>
    { std := h.std
      hecS := h.hecS
      hecT := h.hecT
      resS := h.resS
      resT := h.resT
      om_pres := by rewrite [thEq]; exact h.om_pres
      om_heis := by rewrite [thEq]; exact h.om_heis
      om_aut := by rewrite [thEq]; exact h.om_aut
      om_cont := by rewrite [thEq]; exact h.om_cont
      om_unit := by rewrite [thEq]; exact h.om_unit
      om_split := by rewrite [thEq]; exact h.om_split }
  have vacImp : ∀ ψ θ S T sS sT LS LT f, @IsVacO DX ψ θ S T sS sT LS LT f →
      @IsVacO DX' ψ θ S T sS sT LS LT f :=
    fun _ _ _ _ _ _ _ _ _ h => by
      unfold IsVacO
      rewrite [thEq]
      exact ⟨h.1, h.2.inf, h.2.theta, h.2.lat, h.2.fock, h.2.norm⟩
  have pmImp : ∀ m n ψ B hs e Λ c f₀ T, @IsPlaceModel DX m n ψ B hs e Λ c f₀ T →
      @IsPlaceModel DX' m n ψ B hs e Λ c f₀ T :=
    fun _ _ _ _ _ _ _ _ _ _ h => ⟨h.trans, h.modul, h.vac⟩
  have pmImp' : ∀ m n ψ B hs e Λ c f₀ T, @IsPlaceModel DX' m n ψ B hs e Λ c f₀ T →
      @IsPlaceModel DX m n ψ B hs e Λ c f₀ T :=
    fun _ _ _ _ _ _ _ _ _ _ h => ⟨h.trans, h.modul, h.vac⟩
  have pmEq : @IsPlaceModel DX' = fun m n ψ B hs e Λ c f₀ T =>
      @IsPlaceModel DX m n ψ B hs e Λ c f₀ T := by
    funext m n ψ B hs e Λ c f₀ T
    exact propext ⟨pmImp' _ _ _ _ _ _ _ _ _ _, pmImp _ _ _ _ _ _ _ _ _ _⟩
  intro i j
  obtain ⟨A, A', WW, Y, hb, hsum⟩ := hB i j
  have hmu : ∀ t, L'.mu t (↑j + 1) = L.mu (ι t) (↑j + 1) := fun t => by
    show L'.mu0 (↑j + 1) * L'.xi t = _
    rw [hmu0 j, hxi t]
    rfl
  have hnu : ∀ t, SqNum.nuH G' t i j = SqNum.nuH G (ι t) i j := fun t => by
    show L'.C.mu0 j * L'.xiH t / G'.ch.chiH (DX'.R.m - ↑i) = _
    rw [hCmu j, hxiH t, hchiH]
    rfl
  have hloc : ∀ t, locPl G' t = locPl G (ι t) := fun t => by
    unfold locPl GlobalTheory.ChiGrid.Places.W0 GlobalTheory.ChiGrid.Places.S0
    rw [hQ t, hv0, hwp]
    rfl
  refine ⟨A, A', WW,
    ⟨⟨Y.rA.Λ, Y.rA.β, Y.rA.s, Y.rA.B⟩, ⟨Y.rA'.Λ, Y.rA'.β, Y.rA'.s, Y.rA'.B⟩,
      ⟨Y.rW.Λ, Y.rW.β, Y.rW.s, Y.rW.B⟩, fun t => Y.ω (ι t), fun t => Y.ω' (ι t), Y.vac,
      Y.vac', fun t => Y.e (ι t), fun t => Y.c (ι t), fun t => Y.f (ι t), fun t => Y.f' (ι t),
      Y.m, Y.fd, Y.m', Y.fd'⟩, ⟨hb.rank, hb.rank', hb.std, hb.std', hb.stdW, ?_⟩, ?_⟩
  · have e3 : ∀ t, L'.mu t (↑j + 1) * L'.eta ^ (rankV DX' i j % 2) =
        L.mu (ι t) (↑j + 1) * L.eta ^ (rankV DX i j % 2) := fun t => by
      rw [hmu t, heta]
      rfl
    have e4 : ∀ _ : T', G'.ch.chi (DX'.R.m - ↑i) * L'.eta ^ (rankV DX' i j % 2) =
        G.ch.chi (DX.R.m - ↑i) * L.eta ^ (rankV DX i j % 2) := fun _ => by
      rw [hchi, heta]
      rfl
    refine triIs_congr ?_ hψ hθ e3 e4 hnu hloc
    exact ⟨hb.is.rank, hb.is.rigA, hb.is.rigA', hb.is.rigW,
      fun t => by unfold GlobalTheory.Grid.IsWeil; exact wImp _ _ _ _ _ _ (hb.is.weil (ι t)),
      fun t => by unfold GlobalTheory.Grid.IsWeil; exact wImp _ _ _ _ _ _ (hb.is.weil' (ι t)),
      vacImp _ _ _ _ _ _ _ _ _ hb.is.isVac, vacImp _ _ _ _ _ _ _ _ _ hb.is.isVac',
      fun t => hb.is.idem (ι t), fun t => hb.is.expo (ι t),
      fun t => by unfold IsThetaAt; rewrite [pmEq]; exact hb.is.fst (ι t),
      fun t => by unfold IsThetaAt; rewrite [pmEq]; exact hb.is.snd (ι t),
      hb.is.meas, hb.is.meas'⟩
  · obtain ⟨Ω, Ω', h0, h0', H⟩ := hsum
    refine ⟨Ω, Ω', h0, h0', fun t h hh => ?_⟩
    rw [hψ, hθ]
    exact H (ι t) h hh

end GlobalTheory.RowEx

end
