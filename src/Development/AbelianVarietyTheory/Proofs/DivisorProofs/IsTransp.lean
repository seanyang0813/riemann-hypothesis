module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatPIffMulVec
public import Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.TwoLevelLogarithm
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsIsometryOfSabMap
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
import Mathlib.RingTheory.Coalgebra.CoassocSimps
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsArchOne
import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings
import Development.AbelianVarietyTheory.Definitions.ThetaValues.Generic

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Module ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.IndefiniteRowSideFullHecke.FrameWeightGapBounds
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links GlobalTheory.BigTop GlobalTheory.BigOn GlobalTheory.CovTop Formalism.L2.Pj GlobalTheory.FormTies GlobalTheory.Shares
open ReciprocityTheory.ChartRestriction.G.PullbackSections.PfModelLatA GlobalTheory.ShareOn

namespace GlobalTheory.ShareOn

variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts}
  {Y : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Y cX} {Csz : ℝ}

def mvLev {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}
    {Dw : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Datum H} {l : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Level H} (Xo : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Moduli Dw l)
    (c : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff l) (γ : LaMod Dw l ≃ₗ[𝓞 E] LaMod Dw l)
    {S : Type} [CommRing S] [Algebra c.F S] (y : FrPt Xo c S) : FrPt Xo c S :=
  mvPt (K := c.F) (fun S _ _ => FrPt Xo c S)
    (fun {S : Type} [CommRing S] [Algebra c.F S] (g' : LaMod Dw l ≃ₗ[𝓞 E] LaMod Dw l) (y y' : FrPt Xo c S) =>
      levActR (Xo := Xo) (c := c) (levFull Dw l) g' y y') γ y

abbrev latQ (p : PtAt ex Csz) (r : TwoRuns p.T p.P.Gp) (i : Fin D.R.m) (v : HeightOneSpectrum (𝓞 D.what₂.LL))
    (k : (uAt r v i).Comp) : Type :=
  lattice₂ D ((uAt r v i).X k).Λ ⧸ (p.T.Q.l.Mb • (⊤ : Submodule (𝓞 D.host.E) (lattice₂ D ((uAt r v i).X k).Λ)))

def IsTransp (p : PtAt ex Csz) (r : TwoRuns p.T p.P.Gp) (i : Fin D.R.m) (v : HeightOneSpectrum (𝓞 D.what₂.LL))
    (ψ : ∀ k : (uAt r v i).Comp, LaMod (p.T.Q.Dw ((i : ℕ) + 1)) p.T.Q.l ≃ₗ[𝓞 D.host.E] latQ p r i v k)
    (γ : LaMod (p.T.Q.Dw ((i : ℕ) + 1)) p.T.Q.l ≃ₗ[𝓞 D.host.E] LaMod (p.T.Q.Dw ((i : ℕ) + 1)) p.T.Q.l)
    (k k' : (uAt r v i).Comp) (a : GL (Fin D.R.r) D.host.E) : Prop :=
  ∃ hm : GlobalTheory.LevelCusp.IsMatch ((uAt r v i).X k) ((uAt r v i).X k') a,
    (∀ (x : Frame ((uAt r v i).X k).Ψ D.R.r) (hx : x ∈ ((uAt r v i).X k).dom),
      ∃ (hy : castFrame hm.psi (lact a x) ∈ ((uAt r v i).X k').dom) (t : _),
        FrBor t ((uAt r v i).un k' ⟨castFrame hm.psi (lact a x), hy⟩) (mvLev ((r.used v).full.Q.Xo ((i : ℕ) + 1)) (r.used v).full.Q.c γ ((uAt r v i).un k ⟨x, hx⟩))) ∧
    ∀ w : lattice₂ D ((uAt r v i).X k).Λ,
      ∃ hw : Matrix.mulVec (a : Matrix (Fin D.R.r) (Fin D.R.r) D.host.E) (w : Fin D.R.r → D.host.E) ∈
          lattice₂ D ((uAt r v i).X k').Λ,
        Submodule.Quotient.mk (p := p.T.Q.l.Mb • (⊤ : Submodule (𝓞 D.host.E) (lattice₂ D ((uAt r v i).X k').Λ))) ⟨_, hw⟩ =
          ψ k' (γ.symm ((ψ k).symm (Submodule.Quotient.mk w)))

theorem IsTransp.eq_of_eq {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D}
    {Kc : Formalism.MainNotions.G.Consts} {Y : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Y cX} {Csz : ℝ} {p : PtAt ex Csz}
    {r : TwoRuns p.T p.P.Gp} {i : Fin D.R.m} {v : HeightOneSpectrum (𝓞 D.what₂.LL)}
    {ψ : ∀ k : (uAt r v i).Comp, LaMod (p.T.Q.Dw ((i : ℕ) + 1)) p.T.Q.l ≃ₗ[𝓞 D.host.E] latQ p r i v k}
    {γ γ' : LaMod (p.T.Q.Dw ((i : ℕ) + 1)) p.T.Q.l ≃ₗ[𝓞 D.host.E] LaMod (p.T.Q.Dw ((i : ℕ) + 1)) p.T.Q.l}
    {k k' : (uAt r v i).Comp} {a : GL (Fin D.R.r) D.host.E}
    (h₁ : IsTransp p r i v ψ γ k k' a) (h₂ : IsTransp p r i v ψ γ' k k' a) : γ = γ' := by
  obtain ⟨-, -, m₁⟩ := h₁
  obtain ⟨-, -, m₂⟩ := h₂
  have hs : γ.symm = γ'.symm := by
    ext u
    obtain ⟨w, hw⟩ := Submodule.Quotient.mk_surjective _ (ψ k u)
    obtain ⟨hw₁, e₁⟩ := m₁ w
    obtain ⟨hw₂, e₂⟩ := m₂ w
    have := e₁.symm.trans e₂
    simp only [hw, LinearEquiv.symm_apply_apply] at this
    exact (ψ k').injective this
  have := congrArg LinearEquiv.symm hs
  simpa using this

end GlobalTheory.ShareOn

end
