module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsRatDatum
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsCombAt
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.FrameTop
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.MiPinnedWithFinIff
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HasDerivAtZeroAndIsTheta
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisOFinsetSum
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
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PhiTopAgree
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ValuationDetOfMemKO
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.LatticeFrames.TiedAt, Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsIsComOfOf

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.LatticeFrames.TiedAt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.LatticeFrames.TiedAt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsRatDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsCombAt\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.PhiTopAgree\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ValuationDetOfMemKO\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.L2.Forms
open NumberField IsDedekindDomain Matrix MeasureTheory ValuativeRel GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.SeeSaw GlobalTheory.AdForm GlobalTheory.StepData GlobalTheory.SymBridge
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar
namespace GlobalTheory.LocMod

section Gen
variable {D : D7} {u : D.what₂.Word} {d : Dat D u} {τ : ∀ j h, Matrix (Fin (d.bes j 0 h).L.rank) (Fin d.Lz.rank) D.host.E}
  {PP : Formalism.L2.DIV.Pl D.host.E} (G : GAt d τ PP)

end Gen

variable {B : Base} {X : PreX B.toPre} {I : TC B X} {l : I.Laws} {Z : TC.Later B (I.cols l)} {u : B.Word} {Ch : ℕ → Type}
  (A : ColDat I l Z u Ch) {d : Dat (I.rec7 l Z) u}
  {τ : ∀ j h, Matrix (Fin (d.bes j 0 h).L.rank) (Fin d.Lz.rank) (I.rec7 l Z).host.E}

def baseFr (i : ℕ) (hi : i ≤ B.R.m) (P : Formalism.L2.Col.rowSG (B.primes X) I.sel (I.tup I.mu0)) :
    Matrix (Fin ((I.rec7 l Z).sp.X i).rank) (Fin (B.R.N i)) (I.rec7 l Z).host.E := fun r a =>
  Formalism.L2.Col.frsF I.sel (I.tup I.mu0) (A.p0 i).1.1 P (Pi.single a 1) (finCongr (rankN (I.rec7 l Z) i hi) r)

end GlobalTheory.LocMod
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.LatticeFrames.TiedAt =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsIsComOfOf =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsIsComOfOf", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.TiedAt\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.FrameTop\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.MiPinnedWithFinIff\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HasDerivAtZeroAndIsTheta\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisOFinsetSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

set_option genSizeOfSpec false
set_option genInjectivity false

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.RootEx GlobalTheory.StepData GlobalTheory.SymChain GlobalTheory.LatPair GlobalTheory.SeeSaw ValuativeRel IsLocalRing
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.SeeSaw

section Conv

variable {D : D7} (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D)

def conv (c c' : WO S T →₀ ℂ) : WO S T →₀ ℂ :=
  ∑ x ∈ c.support, ∑ y ∈ c'.support, Finsupp.single (x + y) (c x * c' y * ψ (symplOH S T x y))

def convList (l : List (WO S T →₀ ℂ)) : WO S T →₀ ℂ := l.foldr (conv ψ S T) (Finsupp.single 0 1)

theorem comb_conv (c c' : WO S T →₀ ℂ) (f : WO S T → ℂ) :
    comb ψ S T (conv ψ S T c c') f = comb ψ S T c (comb ψ S T c' f) := by
  have h0 := fun u => zero_smul ℂ (heisO ψ S T u f)
  have h1 := fun u (a b : ℂ) => add_smul a b (heisO ψ S T u f)
  rw [GlobalTheory.HeisComb.comb_comb, GlobalTheory.HeisComb.comb_eq_sum, conv, ← Finsupp.sum_finsetSum_index h0 h1]
  refine Finset.sum_congr rfl fun x _ => ?_
  rw [← Finsupp.sum_finsetSum_index h0 h1]
  refine Finset.sum_congr rfl fun y _ => ?_
  rw [Finsupp.sum_single_index (h0 _), GlobalTheory.WeilVacMove.heisO_heisO, smul_smul]

theorem comb_convList {α : Type} (l : List α) (c : α → WO S T →₀ ℂ) (f : WO S T → ℂ) :
    comb ψ S T (convList ψ S T (l.map c)) f = l.foldr (fun i f' => comb ψ S T (c i) f') f := by
  induction l with
  | nil => exact _root_.GlobalTheory.FinPl.OffTest.comb_single_zero ψ S T f
  | cons i l ih => exact (comb_conv ψ S T _ _ f).trans (congrArg _ ih)

variable {ψ S T}

theorem mem_support_conv {c c' : WO S T →₀ ℂ} {w : WO S T} (hw : w ∈ (conv ψ S T c c').support) :
    ∃ x ∈ c.support, ∃ y ∈ c'.support, w = x + y := by
  classical
  rw [Finsupp.mem_support_iff, conv, Finsupp.finsetSum_apply] at hw
  obtain ⟨x, hx, h2⟩ := Finset.exists_ne_zero_of_sum_ne_zero hw
  rw [Finsupp.finsetSum_apply] at h2
  obtain ⟨y, hy, h3⟩ := Finset.exists_ne_zero_of_sum_ne_zero h2
  have h4 : w ∈ (Finsupp.single (x + y) (c x * c' y * ψ (symplOH S T x y))).support := Finsupp.mem_support_iff.mpr h3
  exact ⟨x, hx, y, hy, Finset.mem_singleton.1 (Finsupp.support_single_subset h4)⟩

theorem support_convList {p : WO S T → Prop} (h0 : p 0) (hadd : ∀ x y, p x → p y → p (x + y)) {l : List (WO S T →₀ ℂ)}
    (hl : ∀ c ∈ l, ∀ x ∈ c.support, p x) : ∀ w ∈ (convList ψ S T l).support, p w := by
  induction l with
  | nil => exact fun w hw => Finset.mem_singleton.1 (Finsupp.support_single_subset hw) ▸ h0
  | cons c l ih =>
    intro w hw
    obtain ⟨x, hx, y, hy, rfl⟩ := mem_support_conv hw
    exact hadd x y (hl c List.mem_cons_self x hx) (ih (fun c' hc' => hl c' (List.mem_cons_of_mem _ hc')) y hy)

end Conv

section Gen

open Formalism.L2.DIV (Pl kP LevelP)
open GlobalTheory.SymBridge GlobalTheory.LocMod

variable {D : D7} {u : D.what₂.Word}

def symLevel (Pg : Finset (Pl D.host.E)) (ψ₀ : ∀ PP : Pl D.host.E, AddChar (kP PP) ℂ) : LevelP Pg D.R.r ℂ :=
  LevelP.ofLocal (fun PP => Formalism.L2.Col.HPsymF (kP PP.1) D.R.r D.R.k D.R.rS)
    fun PP => Formalism.L2.Col.chiSymF (ψ₀ PP.1) D.R.r D.R.k D.R.rS

section At

variable {a : XPart D u} {ζ₀ : Fin a.Lz.rank → D.host.E} {PP : Pl D.host.E} (G : GX a ζ₀ PP)

def GX.emb : D.host.E →+* G.k := G.q.pr.comp (incA D)

structure GX.Frames (fr : ∀ i, i ≤ D.R.m → Matrix (Fin (D.sp.X i).rank) (Fin (D.R.N i)) D.host.E) : Prop where
  under : G.q.v = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP)
  frX : ∀ i (hi : i ≤ G.s + 1) (hm : i ≤ D.R.m), ∃ e : XIx (Fin D.R.k) (Fin D.R.t) i ≃ Fin (D.R.N i), IsOrd xPos e ∧
    ∀ r c, (G.FX i hi).β r c = G.emb (fr i hm r (e c))
  frM : ∀ hm : G.s + 1 + 1 ≤ D.R.m,
    ∃ e : Ix (Fin D.R.k ⊕ Fin (G.s + 1)) (Fin D.R.t) (G.s + 2) ⊕ Unit ≃ Fin (D.R.N (G.s + 1 + 1)),
      IsOrd (Sum.elim zPos fun _ => D.R.N D.R.m - 1) e ∧
        ∀ r c, valuation G.k (G.FM.β r c - G.emb (fr (G.s + 1 + 1) hm r (e c))) < 1

end At

structure StdSp (a : XPart D u) (ζ₀ : Fin a.Lz.rank → D.host.E) (π : D.host.E) : Prop where
  cart : ∀ j, j ≤ D.R.m → (a.x j).s = fun _ => 1
  onb : ∀ j, j ≤ D.R.m → (a.x j).B = fun _ => 1
  lat : ∀ j, j ≤ D.R.m → ∀ z, z ∈ (a.x j).L ↔ z ∈ GlobalTheory.AdForm.intVec D _
  lzRank : a.Lz.rank = 1
  lzGram : a.Lz.gram = 1
  lzSig : a.Lz.SigOK ∧ a.Lz.IsPosDef
  zeta : ζ₀ = fun _ => π
  iA : ∀ n h r c, (a.oT n h).iA r c = if r.val = c.val then 1 else 0
  iB : ∀ n h r c, (a.oT n h).iB r c = if r.val + 1 = (D.sp.X n).rank then 1 else 0
  topFr : a.top.β = 1
  topLat : ∀ z, z ∈ a.top.Λ ↔ z ∈ GlobalTheory.AdForm.intVec D _
  top : a.top.st.Is a.c D.R.m

namespace StdSp

end StdSp

end Gen

section World

open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Core.Rk GlobalTheory.AdForm GlobalTheory.LocMod GlobalTheory.SymBridge Formalism.L2.Forms Formalism.IndefR.Links

variable {B : Base} {X : PreX B.toPre} (I : TC B X) (l : I.Laws) (Z : TC.Later B (I.cols l))

def psiC (P : HeightOneSpectrum (𝓞 B.fields.E)) : AddChar (𝓞 B.fields.E ⧸ P.asIdeal) ℂ :=
  (B.embLL : B.LL →* ℂ).compAddChar (Formalism.L2.Col.psi0P I.Ch P)

def chiC (i : ℕ) (P : HeightOneSpectrum (𝓞 B.fields.E)) : (𝓞 B.fields.E ⧸ P.asIdeal)ˣ →* ℂˣ :=
  (Units.map (B.embLL : B.LL →* ℂ)).comp (Formalism.L2.Col.chiP I.Ch P i)

theorem chiC_apply (i P x) : ((chiC I i P x : ℂˣ) : ℂ) = B.embLL ((Formalism.L2.Col.chiP I.Ch P i x : B.LLˣ) : B.LL) := rfl

structure IsComOf (c : GlobalTheory.ChainOnto.Com (I.rec7 l Z)) : Prop where
  std : IsStdChar (I.rec7 l Z) c.ψ (-1)
  inf : IsInfFam c.θ
  places : c.Pg = (B.primes X).vGs
  mu : ∀ j : Fin B.R.m, ChrEq (c.μ ((j : ℕ) + 1)) (I.C.mu0 j)
  eta : ChrEq c.η I.C.eta
  chi : ∀ i PP, c.chi (i + 1) PP = chiC I i PP
  lev : c.P = symLevel c.Pg (psiC I)

variable {I l Z}

variable {v : B.Word} {Ch : ℕ → Type} (A : ColDat I l Z v Ch)

def BaseCoset : Prop :=
  ∀ j, j + 1 = B.R.m → ∀ P : Formalism.L2.Col.rowSG (B.primes X) I.sel (I.tup I.mu0), P.1 ∈ (B.primes X).vGs →
    ∃ c : Fin (B.R.N j), c.val = B.R.k ∧
      (Pi.single c ((Formalism.L2.Col.qOf P.1 : B.fields.E))⁻¹ : Fin (B.R.N j) → B.fields.E) ∈ cosetIn (A.p0 j) P

def BaseOne (i : ℕ) (hi : i ≤ B.R.m) : Prop :=
  ∀ P : Formalism.L2.Col.rowSG (B.primes X) I.sel (I.tup I.mu0), P.1 ∈ (B.primes X).vGs → ∀ r c,
    HeightOneSpectrum.valuation (I.rec7 l Z).host.E (show HeightOneSpectrum (𝓞 (I.rec7 l Z).host.E) from P.1)
      (baseFr A i hi P r c - if r.val = c.val then 1 else 0) < 1

def BaseEnds : Prop := BaseOne A 0 (Nat.zero_le _) ∧ BaseOne A B.R.m le_rfl


variable {a : XPart (I.rec7 l Z) v}

structure TiedX {ζ₀ : Fin a.Lz.rank → (I.rec7 l Z).host.E} {PP : Formalism.L2.DIV.Pl (I.rec7 l Z).host.E} (G : GX a ζ₀ PP)
    (P : Formalism.L2.Col.rowSG (B.primes X) I.sel (I.tup I.mu0)) : Prop where
  eq : P.1 = PP
  type : letI := G.fld; letI := G.val; letI := G.top; letI := G.loc
    AtType (k := G.k) I.Ch I.sel (I.tup I.mu0) (I.cst I.mu0) B.embLL P G.emb G.S
  fr : G.Frames fun i hi => baseFr A i hi P

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]


open GlobalTheory.FinPl in
structure OffsetCompatibility (o : OffX a k ((B.primes X).vT v)) : Prop where
  idem : ∀ i, Formalism.L2.NTheta.IsIdemAt (o.p i).e i.1
  under : ∀ i, (o.p i).v = HeightOneSpectrum.under (𝓞 (I.rec7 l Z).host.F) (show Formalism.L2.DIV.Pl (I.rec7 l Z).host.E from i.1)
  nodup : o.I.Nodup
  all : ∀ i, i ∈ o.I
  unif : ((o.q.1 : 𝒪[k]) : k) = (B.T v : ℕ)
  char : ∀ i, (o.p i).IsChar a.c.ψ (o.χ i)
  frame : ∀ j, j ≤ B.R.m → ∀ i, (o.β j i).b = 1
  lat : ∀ j, j ≤ B.R.m → ∀ i, (o.Q j i).lat = GlobalTheory.LatPair.stdLat k _

  fn : ∀ j (hj : j ≤ B.R.m) i (x : Fin (B.R.N j) → 𝓞 B.fields.E) (z : 𝓞 B.fields.E),
    Ideal.Quotient.mk i.1.asIdeal z =
      (letI := GlobalTheory.Mem.Col2.starE B; (A.p0 j).1.1.deco.1.f i fun r => (x r : B.fields.E)) →
    ∃ s : 𝒪[k], (s : k) = (o.p i).pr (incA (I.rec7 l Z) (z : B.fields.E)) ∧
      (o.Q j i).HasVal (fun r => (o.p i).pr (incA (I.rec7 l Z) (x (finCongr (rankN (I.rec7 l Z) j hj) r) : B.fields.E)))
        (residue 𝒪[k] s)
  supp : ∀ j, j < B.R.m → CombAt o.atT (o.cT j)
  rep : ∀ j, j < B.R.m → ∀ f, Vac a.c.ψ _ _ (a.x j).L (a.x (j + 1)).L o.atT f →
    OverAll a.c.ψ (o.β j) (o.β (j + 1)) (a.x j).L (a.x (j + 1)).L (fun i => phiOne (o.Q j i) (o.Q (j + 1) i)) o.I f
      (comb a.c.ψ _ _ (o.cT j) f)
  frameTop : ∀ i, (o.γ i).b = 1
  sum : ∀ n h i, IsSumFrame (a.oT n h) o.ζ₀ (o.γ i) (o.γ₀ n h i)


variable (a) in
structure StdCol {chOf : ∀ i, ((I.rec7 l Z).mem v).C.cls i → Ch i} (F : FormsTiedSym (I.rec7 l Z) v Ch chOf) : Prop where
  is : A.Is F a.c.ψ a.c.θ
  keeps : A.Keeps F
  coset : BaseCoset A
  ends : BaseEnds A
  chr : ∀ j, j < B.R.m → A.chr (j + 1) = a.c.μ (j + 1)
  rd : ∀ j (hj : j ≤ B.R.m), a.rd j = A.rd F a.c.θ j hj
  ram : ∀ j (hj : j ≤ B.R.m) φ, φ ∈ a.Ram j ↔ A.IsForm F j hj φ ∧ GlobalTheory.AdForm.RamAt (D := I.rec7 l Z) v j φ
  om : ∀ j, j < B.R.m → (a.k j).om = A.om j
  vac : ∀ j, j < B.R.m → (a.k j).vac = A.vac j
  vol : ∀ j, j ≤ B.R.m → (a.x j).vol.μ = A.μ j ∧ (a.x j).vol.𝓕 = A.fd j
  top : TopForm F a.top.M fun G y => (a.eT G).1 y
  onto : Function.Surjective a.eT

variable (w : World I l Z) (a : XPart (I.rec7 l Z) v) (o : OffX a k ((B.primes X).vT v)) (G : ∀ PP : a.c.Pg, GX a o.ζ₀ PP.1)

structure XStdBy (A : ColDat I l Z v (w.C.herm.base.Ch v)) : Prop where
  com : IsComOf I l Z a.c
  sp : StdSp a o.ζ₀ ((X.piT v : 𝓞 B.host.E) : B.host.E)
  col : StdCol A a (w.C.forms v)
  atT : OffsetCompatibility A o
  atG : ∀ PP, ∃ P, TiedX A (G PP) P
  cG : ∀ j, j < B.R.m → o.cG j = convList a.c.ψ _ _ (a.c.Pg.attach.toList.map fun PP => (G PP).cg j)
  cG_zero : ∀ j, B.R.m ≤ j → o.cG j = 0
  ker : ∀ j, j < B.R.m → (a.k j).c = conv a.c.ψ _ _ (o.cG j) (o.cT j)

namespace XStdBy

end XStdBy

end World

end GlobalTheory.SeeSaw

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsIsComOfOf =====
