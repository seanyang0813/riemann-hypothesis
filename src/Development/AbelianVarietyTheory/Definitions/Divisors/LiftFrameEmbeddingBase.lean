module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SumExpSt
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasBlockOfOccurs
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

noncomputable section

namespace GlobalTheory.ExpFrame

open Formalism.CohomologicalDescent.DepthNonnegative

def Embeds (O : Type) [CommRing O] (N : ℕ) {ι : Type} [DecidableEq ι] (lam mu : ι → ℕ → ℕ) (ϖ : O) (Gm : Type) [AddCommGroup Gm]
    [Module (alg O N lam) Gm] : Prop :=
  ∃ ψ : Gm →+ (NablaT O N mu ⧸ (Ideal.span {ϖ} • ⊤ : Submodule O (NablaT O N mu))), Function.Injective ψ ∧
    (∀ (c : O) z, ψ (algebraMap O (alg O N lam) c • z) = c • ψ z) ∧
    (∀ g z y, ψ z = Submodule.Quotient.mk y → ψ (grpA O N lam g • z) = Submodule.Quotient.mk (grp O N mu g y)) ∧
    ∀ τ w (a : alg O N lam) (a' : Module.End O (NablaT O N mu)), IsProj O N lam τ w a → IsProj O N mu τ w a' →
      ∀ z y, ψ z = Submodule.Quotient.mk y → ψ (a • z) = Submodule.Quotient.mk (a' y)

def SubQ (O : Type) [CommRing O] (N : ℕ) {ι : Type} [DecidableEq ι] (lam : ι → ℕ → ℕ) (ϖ : O) (Gm : Type) [AddCommGroup Gm]
    [Module (alg O N lam) Gm] : Prop :=
  ∃ (U : Submodule (alg O N lam) (NablaT O N lam)) (π : U →ₗ[alg O N lam] Gm), Function.Surjective π ∧
    ∀ (x : U) (y : NablaT O N lam), (x : NablaT O N lam) = ϖ • y → π x = 0

section Tests

variable (O : Type) [CommRing O] (N : ℕ) {ι : Type} [DecidableEq ι] (lam : ι → ℕ → ℕ) (ϖ : O)




end Tests

theorem exists_intHom {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ} {J : Type} [Group J]
    (x : J →* GL (Fin n) (TensorProduct F E (Formalism.L2.Herm.Af F))) {β : GL (Fin n) (TensorProduct F E (Formalism.L2.Herm.Af F))} (hβ : β = 1)
    (h : ∀ κ, x κ ∈ Formalism.L2.DIV.St β) :
    ∃ y : J →* GL (Fin n) (Formalism.L2.Herm.intAf F E), ∀ κ a b, ((y κ).val a b : TensorProduct F E (Formalism.L2.Herm.Af F)) = (x κ).val a b := by
  subst hβ
  choose y hy using h
  have h2 : ∀ κ, Formalism.L2.DIV.intGL F E n (y κ) = x κ := fun κ => by simpa [Formalism.L2.DIV.frGL] using hy κ
  refine ⟨MonoidHom.mk' y fun κ κ' => Formalism.L2.DIV.intGL_injective (by rw [map_mul, h2, h2, h2, map_mul]), fun κ a b => ?_⟩
  exact congrArg (fun g : GL (Fin n) (TensorProduct F E (Formalism.L2.Herm.Af F)) => g.val a b) (h2 κ)

end GlobalTheory.ExpFrame

end

noncomputable section

open NumberField IsDedekindDomain TensorProduct
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx Formalism.L2.Pj GlobalTheory.BigTop GlobalTheory.BigOn
open Formalism.CohomologicalDescent.LogSmallConstantBounds (Par)
open Formalism.CohomologicalDescent.ShortWeightBounds (Wts HidaSetting WInputsLink h0)
open GlobalTheory.ExpFrame

namespace GlobalTheory.ExpTie

abbrev presJ {G Γ : Type} [Group G] [Group Γ] {ι : Γ →* G} {W : Type} [NormedAddCommGroup W] [InnerProductSpace ℂ W] {K : Type} [Field K]
    [NumberField K] [StarRing K] {S : CSD K} {σ : K →+* ℂ} {ρ : Γ →* Module.End ℂ W} {J : Subgroup G} {χ : J →* ℂˣ}
    (_ : Bridge.ClassPres ι S σ ρ J χ) : Subgroup G := J

abbrev presChi {G Γ : Type} [Group G] [Group Γ] {ι : Γ →* G} {W : Type} [NormedAddCommGroup W] [InnerProductSpace ℂ W] {K : Type} [Field K]
    [NumberField K] [StarRing K] {S : CSD K} {σ : K →+* ℂ} {ρ : Γ →* Module.End ℂ W} {J : Subgroup G} {χ : J →* ℂˣ}
    (P : Bridge.ClassPres ι S σ ρ J χ) : presJ P →* ℂˣ := χ

variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts}
  {Y : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Y cX} {Csz : ℝ} (p : PtAt ex Csz)

def hkA (j : Fin D.R.m) (t : p.P.T) (i : (blk p j t).Pl × ℕ) : Finset (Bridge.Gf (Vc D j)) := (p.R.B.L j t).hecke.hA i

def levJ (j : Fin D.R.m) (t : p.P.T) : Subgroup (Bridge.Gf (Vc D j)) := presJ (K := D.what₂.LL) (p.R.B.L j t).pres

def levChi (j : Fin D.R.m) (t : p.P.T) : levJ p j t →* ℂˣ := presChi (p.R.B.L j t).pres

def plOf (j : Fin D.R.m) (t : p.P.T) (P : (blk p j t).Pl) : HeightOneSpectrum (𝓞 D.host.E) := p.R.pl ((blk p j t).pl P)

def matOf (j : Fin D.R.m) (g : Bridge.Gf (Vc D j)) :
    Matrix (Fin (Vc D j).rank) (Fin (Vc D j).rank) ((FiniteAdeleRing (𝓞 D.host.F) D.host.F) ⊗[D.host.F] D.host.E) := g.1.val



structure Tied (j : Fin D.R.m) (t : p.P.T) {l : ℕ} [Fact l.Prime] {N : ℕ} (F : Frame l D.what₂.Tau N) (e0 : D.what₂.LL →+* PadicAlgCl l)
    (ix : F.I → (blk p j t).Pl × ℕ) (inc : D.what₂.Tau → (D.host.E →+* PadicAlgCl l)) where

  rk : Fin N ≃o Fin (Vc D j).rank

  e : F.G ≃* Bridge.Gf (Vc D j)

  io : PadicAlgCl l ≃+* ℂ

  ev : D.what₂.Tau → ((FiniteAdeleRing (𝓞 D.host.F) D.host.F) ⊗[D.host.F] D.host.E →+* PadicAlgCl l)

  bs : D.what₂.Tau → GL (Fin N) (PadicAlgCl l)

  sh : D.what₂.Tau → ℤ

  liftFrame_embedding_base : ∀ x, io (e0 x) = D.what₂.embLL x

  half : IsHalf inc

  lab : ∀ τ, inc τ = e0.comp (Links.labLL D τ) ∨ inc τ = cj (e0.comp (Links.labLL D τ))

  ev_rat : ∀ τ x, ev τ (1 ⊗ₜ[D.host.F] x) = inc τ x

  ev_int : ∀ τ (a : FiniteAdeleRing (𝓞 D.host.F) D.host.F), (∀ v, a v ∈ v.adicCompletionIntegers D.host.F) →
    ‖ev τ (a ⊗ₜ[D.host.F] 1)‖ ≤ 1

  rat : ∀ g, g ∈ F.Γ ↔ e g ∈ (Bridge.ratF (Vc D j)).range

  lev : ∀ g, g ∈ F.K ↔ e g ∈ levJ p j t

  kap : ∀ (κ : F.K) τ, (Matrix.GeneralLinearGroup.map F.emb (F.kap κ τ)).val =
    ((bs τ)⁻¹).val * ((matOf j (e κ)).map (ev τ)).submatrix rk rk * (bs τ).val

  chi : ∀ (κ : F.K) (h : e κ ∈ levJ p j t),
    io (F.emb (F.chi κ) * ∏ τ, F.emb (F.kap κ τ).val.det ^ sh τ) * ((levChi p j t ⟨e κ, h⟩ : ℂˣ) : ℂ) = 1

  ix_inj : Function.Injective ix

  ix_range : ∀ i, i ∈ Set.range ix ↔ 1 ≤ i.2 ∧ i.2 ≤ N ∧ ((l : ℕ) : 𝓞 D.host.E) ∉ (plOf p j t i.1).asIdeal

  tr : ∀ i g, g ∈ F.tr i ↔ e g ∈ hkA p j t (ix i)

  cst : ∀ i, F.cst i = 1

theorem isHalf_lab {l : ℕ} [Fact l.Prime] (e0 : D.what₂.LL →+* PadicAlgCl l) : IsHalf fun τ => e0.comp (Links.labLL D τ) := by
  let s : D.R.GG → (D.host.E →+* PadicAlgCl l) := fun g =>
    (e0.comp D.embE).comp (D.host.sigmaOf g : D.host.E →+* D.host.E)
  have hinj : Function.Injective s := fun g g' h =>
    (D.host.gal).symm.injective
      (AlgEquiv.ext fun x => (e0.comp D.embE).injective (RingHom.congr_fun h x))
  have hsurj : Function.Surjective s := by
    haveI := D.host.hostE_isGalois
    haveI : Finite (D.R.GG) := Finite.of_equiv _ (D.host.gal).toEquiv
    refine ((Nat.bijective_iff_injective_and_card s).2 ⟨hinj, ?_⟩).2
    rw [← Nat.card_congr (D.host.gal).toEquiv, IsGalois.card_aut_eq_finrank,
      Nat.card_eq_fintype_card, NumberField.Embeddings.card]
  have hcj : ∀ g, GlobalTheory.ExpFrame.cj (s g) = s (g * D.R.cc) := fun g => by
    ext x
    have h1 : IsCMField.complexConj D.host.E x = D.host.sigmaOf (D.R.cc) x := by
      apply D.host.φ₀.injective
      rw [IsCMField.complexEmbedding_complexConj]
      exact (D.host.conjE_apply D.host.φ₀ x).symm
    show (e0.comp D.embE) (D.host.sigmaOf g (IsCMField.complexConj D.host.E x)) = (e0.comp D.embE) (D.host.sigmaOf (g * _) x)
    rw [h1, Formalism.BasicNotions.Host.sigmaOf, Formalism.BasicNotions.Host.sigmaOf, Formalism.BasicNotions.Host.sigmaOf, map_mul]
    rfl
  refine ⟨fun τ τ' h => D.eTau.injective (Subtype.ext (hinj h)), fun τ τ' h => ?_, fun i => ?_⟩
  · have h1 := hinj ((hcj (D.eTau τ).1).symm.trans h)
    have hi := (Formalism.HC.Frame.mem_Psi_iff _).1 (D.eTau τ).2
    have hj := (Formalism.HC.Frame.mem_Psi_iff _).1 (D.eTau τ').2
    have h2 : (D.eTau τ').1.1.2 = (D.eTau τ).1.1.2 * (-1) := by rw [← h1]; rfl
    rw [hi, hj] at h2
    exact absurd h2 (by decide)
  · obtain ⟨g, rfl⟩ := hsurj i
    rcases Int.units_eq_one_or g.1.2 with hg | hg
    · refine ⟨D.eTau.symm ⟨g, (Formalism.HC.Frame.mem_Psi_iff _).2 hg⟩, Or.inl ?_⟩
      show s g = s (D.eTau (D.eTau.symm _)).1
      rw [Equiv.apply_symm_apply]
    · have hm : g * (D.R.cc)⁻¹ ∈ D.R.Psi := by
        refine (Formalism.HC.Frame.mem_Psi_iff _).2 ?_
        show g.1.2 * (-1)⁻¹ = 1
        rw [hg]; decide
      refine ⟨D.eTau.symm ⟨_, hm⟩, Or.inr ?_⟩
      show s g = GlobalTheory.ExpFrame.cj (s (D.eTau (D.eTau.symm _)).1)
      rw [Equiv.apply_symm_apply, hcj, inv_mul_cancel_right]

theorem levJ_eq (j : Fin D.R.m) (t : p.P.T) : levJ p j t = (levEnv (Vc D j) (p.R.βV j) (p.R.datVt j t)).J := rfl



omit p in
theorem mem_St_of_levEnv {V : Formalism.BasicNotions.TH.HSp D} {β : GL (Fin V.rank) (Formalism.IndefR.Lev.EAf D)} {Lv : Formalism.L2.DIV.LevDat D.host.E ℂ V.rank}
    {g : Bridge.Gf V} (h : g ∈ (levEnv V β Lv).J) : Formalism.UG.bc (Formalism.IndefR.Lev.swapAE D) g.1 ∈ St β := parLev_St h.1


omit p in
theorem exists_intHom_of {V : Formalism.BasicNotions.TH.HSp D} {β : GL (Fin V.rank) (Formalism.IndefR.Lev.EAf D)} (hβ : β = 1) (J : Subgroup (Bridge.Gf V))
    (h : ∀ g ∈ J, Formalism.UG.bc (Formalism.IndefR.Lev.swapAE D) g.1 ∈ St β) :
    ∃ y : J →* GL (Fin V.rank) (Formalism.L2.Herm.intAf D.host.F D.host.E),
      ∀ κ a b, ((y κ).val a b : Formalism.IndefR.Lev.EAf D) = Formalism.IndefR.Lev.swapAE D (κ.1.1.val a b) :=
  exists_intHom ((Formalism.UG.bc (Formalism.IndefR.Lev.swapAE D)).comp ((Bridge.Gf V).subtype.comp J.subtype)) hβ fun κ => h κ.1 κ.2

theorem exists_levInt (j : Fin D.R.m) (t : p.P.T) :
    ∃ y : levJ p j t →* GL (Fin (Vc D j).rank) (Formalism.L2.Herm.intAf D.host.F D.host.E),
      ∀ κ a b, ((y κ).val a b : Formalism.IndefR.Lev.EAf D) = Formalism.IndefR.Lev.swapAE D (matOf j κ.1 a b) :=
  exists_intHom_of (p.betaStd.1 j) (levJ p j t) fun _ h => mem_St_of_levEnv ((levJ_eq p j t).le h)



open Classical in
def FrameAt (j : Fin D.R.m) (P : Par) (W : Wts D.what₂.Tau) (w : HeightOneSpectrum (𝓞 D.what₂.LL)) : Prop :=
  ∀ [Fact (Formalism.EigenvalueLevelCeiling.plc w).Prime], ∃ (F : Frame (Formalism.EigenvalueLevelCeiling.plc w) D.what₂.Tau P.Nr) (R : Reads F W.lam (blk p j (p.R.mu w)) w)
    (inc : D.what₂.Tau → (D.host.E →+* PadicAlgCl (Formalism.EigenvalueLevelCeiling.plc w))), F.Ok ∧ Nonempty (Tied p j (p.R.mu w) F R.e0 R.ix inc)


open Classical in
def GalAt (j : Fin D.R.m) (P : Par) (W : Wts D.what₂.Tau) (w : HeightOneSpectrum (𝓞 D.what₂.LL)) : Prop :=
  ∀ [Fact (Formalism.EigenvalueLevelCeiling.plc w).Prime] (F : Frame (Formalism.EigenvalueLevelCeiling.plc w) D.what₂.Tau P.Nr) (R : Reads F W.lam (blk p j (p.R.mu w)) w)
    (inc : D.what₂.Tau → (D.host.E →+* PadicAlgCl (Formalism.EigenvalueLevelCeiling.plc w))), F.Ok → Tied p j (p.R.mu w) F R.e0 R.ix inc →
    GalSide (AlgebraicClosure D.host.E) inc P W F R.HasBlock

def SmallAt (j : Fin D.R.m) (P : Par) (w : HeightOneSpectrum (𝓞 D.what₂.LL)) : Prop :=
  (Formalism.EigenvalueLevelCeiling.plc w).Prime ∧ P.Nr + 1 < Formalism.EigenvalueLevelCeiling.plc w ∧ ¬ ((Formalism.EigenvalueLevelCeiling.plc w : ℕ) : ℤ) ∣ NumberField.discr D.host.E ∧
    (∀ i, subZ p j (p.R.mu w) ≤ (subZ p j (p.R.mu w)).comap ((blk p j (p.R.mu w)).op i)) ∧
    subZ p j (p.R.mu w) ≤ (blk p j (p.R.mu w)).ZH

end GlobalTheory.ExpTie

end
