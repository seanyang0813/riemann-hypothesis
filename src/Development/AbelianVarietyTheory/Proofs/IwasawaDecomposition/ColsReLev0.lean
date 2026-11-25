module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LatAtLattice
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

@[expose] public section

noncomputable section

namespace GlobalTheory.Mem.Top.ColOwe

open Formalism.BasicNotions Formalism.L2.Forms GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.TC NumberField IsDedekindDomain

variable {B : Base} {C : Cols B}

abbrev recOf (Z : Later B C) : D7 := assemble B C Z.W Z.V Z.S Z.N Z.G

variable {Z : Later B C} (Z' : Later B C)



def atTTRe {u : B.Word} (A : AtTTied (D := recOf Z) u) : AtTTied (D := recOf Z') u := { A with }



def clsRe {u : B.Word} {i : ℕ} {hi : i ≤ B.R.m} (K : ClsTied (D := recOf Z) u i hi) : ClsTied (D := recOf Z') u i hi := { K with }



def valRe {u : B.Word} {eV : (C.mem u).A.vT ≃ PlT (recOf Z) u} {i : ℕ} {hi : i ≤ B.R.m} {K : ClsTied (D := recOf Z) u i hi}
    (W : ValTied (D := recOf Z) u eV i hi K) : ValTied (D := recOf Z') u eV i hi (clsRe Z' K) := { W with }



def lvRe {u : B.Word} {A : AtTTied (D := recOf Z) u} {i : ℕ} {hi : i ≤ B.R.m} (P : LvTied (D := recOf Z) u A i hi) :
    LvTied (D := recOf Z') u (atTTRe Z' A) i hi := { P with }



def clsPRe {u : B.Word} (K : ClsPTied (D := recOf Z) u) : ClsPTied (D := recOf Z') u := { K with }



def valPRe {u : B.Word} {K : ClsPTied (D := recOf Z) u} (W : ValPTied (D := recOf Z) u K) :
    ValPTied (D := recOf Z') u (clsPRe Z' K) := { W with }



def tilRe {u : B.Word} {A : AtTTied (D := recOf Z) u} {K : ClsPTied (D := recOf Z) u} {P : LvTied (D := recOf Z) u A B.R.m le_rfl}
    (Tl : TilTied (D := recOf Z) u A K P) : TilTied (D := recOf Z') u (atTTRe Z' A) (clsPRe Z' K) (lvRe Z' P) := { Tl with }



def tilAdRe {u : B.Word} {A : AtTTied (D := recOf Z) u} {K : ClsPTied (D := recOf Z) u} {P : LvTied (D := recOf Z) u A B.R.m le_rfl}
    {Tl : TilTied (D := recOf Z) u A K P} {Km : ClsTied (D := recOf Z) u B.R.m le_rfl} (Ta : TilAd (D := recOf Z) Tl Km) :
    TilAd (D := recOf Z') (tilRe Z' Tl) (clsRe Z' Km) := { Ta with }



def chartRe {T : ℕ} {bad : Set (HeightOneSpectrum (𝓞 B.host.F))} {i : ℕ} {hi : i ≤ B.R.m} {cl : Type}
    {stab : cl → Type} [∀ c, Group (stab c)] {lat : cl → Submodule (𝓞 B.host.E) (Fin (B.R.N i) → B.host.E)}
    (K : LevelChart (recOf Z) T bad i hi stab lat) : LevelChart (recOf Z') T bad i hi stab lat := { K with }



def lvGRe {u : B.Word} {T : ℕ} {res : ∀ v : (C.mem u).A.vT, 𝓞 B.host.E →+* (C.mem u).A.Fv v} {i : ℕ} {hi : i ≤ B.R.m}
    {lat : (C.mem u).C.cls i → Submodule (𝓞 B.host.E) (Fin (B.R.N i) → B.host.E)}
    (L : LevelCompatibleLattices (D := recOf Z) (u := u) (C.fm u) T res i hi lat) : LevelCompatibleLattices (D := recOf Z') (u := u) (C.fm u) T res i hi lat := { L with }



def formsRe {u : B.Word} {Ch : ℕ → Type} {chOf : ∀ i, (C.mem u).C.cls i → Ch i} (T : FormsTiedSym (recOf Z) u Ch chOf) :
    FormsTiedSym (recOf Z') u Ch chOf :=
  { T with
    atT := atTTRe Z' T.atT
    cls := fun i hi h => clsRe Z' (T.cls i hi h)
    val := fun i hi h => valRe Z' (T.val i hi h)
    lv := fun i hi => lvRe Z' (T.lv i hi)
    ch := fun i h1 h2 β => chartRe Z' (T.ch i h1 h2 β)
    valC := fun i h1 h2 => { T.valC i h1 h2 with }
    dilC := fun i h1 h2 => { T.dilC i h1 h2 with }
    lvC := fun i h1 h2 => lvGRe Z' (T.lvC i h1 h2)
    clsP := clsPRe Z' T.clsP
    valP := valPRe Z' T.valP
    til := tilRe Z' T.til
    tilAd := tilAdRe Z' T.tilAd }



def hermChRe (H : Formalism.L2.Herm.HermColsCh (recOf Z)) : Formalism.L2.Herm.HermColsCh (recOf Z') := { H with }



def atTRe {u : B.Word}
    {e : (C.mem u).A.vT ≃ {v : HeightOneSpectrum (𝓞 B.host.F) // (((C.mem u).A.T : ℕ) : 𝓞 B.host.F) ∈ v.asIdeal}}
    {eF : ∀ v : (C.mem u).A.vT, (C.mem u).A.Fv v ≃+* (𝓞 B.host.F ⧸ (e v).1.asIdeal)} (A : Formalism.L2.Herm.AtT (recOf Z) u e eF) :
    Formalism.L2.Herm.AtT (recOf Z') u e eF := { A with }



def hermRe (H : Formalism.L2.Herm.ColsHermS (recOf Z)) : Formalism.L2.Herm.ColsHermS (recOf Z') :=
  { H with
    base := hermChRe Z' H.base
    atT := fun u => atTRe Z' (H.atT u) }



def colsRe (T : ColsTiedSym (recOf Z)) : ColsTiedSym (recOf Z') :=
  { T with
    herm := hermRe Z' T.herm
    forms := fun u => formsRe Z' (T.forms u)
    gl_const := T.gl_const }

end GlobalTheory.Mem.Top.ColOwe

end
