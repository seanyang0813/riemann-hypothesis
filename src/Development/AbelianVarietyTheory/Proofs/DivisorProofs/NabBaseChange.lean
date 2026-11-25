module

public import Development.AbelianVarietyTheory.Definitions.Divisors.KerDatTuple
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LevelLiftIsLiftPrincipalLevelDatumRealisation
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

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR
open Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.ConjTwist GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.OnTies GlobalTheory.OnCmp
open scoped TensorProduct




namespace GlobalTheory.BaseCmp

section Data

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (i : Fin D.R.m)

abbrev lattice₂ : AddSubgroup (WO (Vc D i) (Wc D i)) := latO (Vc D i) (Wc D i) (R.ΛV i) (R.ΛW i) fun _ => True


open Classical in
def IsTypeVec (eg : AE D) (fg : WO (Vc D i) (Wc D i) → ℂ) : Prop :=
  IsThetaAt R.ψ (symplO (Vc D i) (Wc D i)) (heisO R.ψ (Vc D i) (Wc D i)) (cA D eg) (lattice₂ R i) 1 (R.vacP i)
    (fun x => if IsHalf (cA D eg) x ∧ IsIntM (frMapAdj (Vc D i) (Wc D i) (R.βV i) (R.βW i) x) then
      omegaK R.Pg (fun PP => redM PP (frMapAdj (Vc D i) (Wc D i) (R.βV i) (R.βW i) x)) else 0) fg


open Classical in
def flatDat (Q : Finset (Pl D.host.E)) (ξR : ∀ PP : Pl D.host.E, (kP PP)ˣ →* ℂˣ) (eQ : AE D) (x : WO (Vc D i) (Wc D i)) : ℂ :=
  if IsHalf eQ x ∧ IsIntM (frMapO (Vc D i) (Wc D i) (R.βV i) (R.βW i) x) then
    omegaFlat Q (Wc D i).rank ξR (fun PP => redM PP (frMapO (Vc D i) (Wc D i) (R.βV i) (R.βW i) x)) else 0

abbrev IsModel (eQ : AE D) (fg : WO (Vc D i) (Wc D i) → ℂ)
    (Tm : (WO (Vc D i) (Wc D i) → ℂ) →ₗ[ℂ] (WO (Vc D i) (Wc D i) → ℂ)) : Prop :=
  IsPlaceModel R.ψ (symplO (Vc D i) (Wc D i)) (heisO R.ψ (Vc D i) (Wc D i)) eQ (lattice₂ R i) 1 fg Tm

abbrev dil (a : D.host.E) (x : WO (Vc D i) (Wc D i)) : WO (Vc D i) (Wc D i) := Matrix.map x fun w => incA D a * w

abbrev IsCoefMap (c0L : ∀ j : Fin D.R.m, VsV D j D.what₂.LL →ₛₗ[D.what₂.embLL] (R.cV j).W) : Prop :=
  ∃ gramR c0R, Bridge.FamTie R.B R.pl (R.Sb : Set (Pl D.host.E)) R.Q (labLL D) (fun τ => Bridge.lamRdef (Ptw D) τ)
    (fun j τ => Bridge.lamLdef (Vc D j).rank ((j : ℕ) + 1) τ) gramR c0R c0L

end Data

def FlatTwoStep : Prop := ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (Ks : Type) [Field Ks]
    [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), GlobalTheory.Hk3.Core R F →
    ∀ (i : Fin D.R.m) (ξ : Formalism.L2.Host.HChar D.host.E) (χ : (AE D)ˣ →* Circle)
    (ξR : ∀ PP : Pl D.host.E, (kP PP)ˣ →* ℂˣ) (ω : WeilRep D i) (φ : WO (Vc D i) (Wc D i) → ℂ) (B : Base (Vc D i) (Wc D i)),
    B.Good → BaseOf R i B → KerDat R i ξ χ ξR B.de.Q ω φ → ChrEq B.de.chi ξ →
    ∃ (eg eQ : AE D) (fg : WO (Vc D i) (Wc D i) → ℂ), IsIdemSum eg R.Pg ∧ IsIdemSum eQ B.de.Q ∧ IsTypeVec R i eg fg ∧
      IsThetaAt R.ψ (symplO (Vc D i) (Wc D i)) (heisO R.ψ (Vc D i) (Wc D i)) eQ (lattice₂ R i) 1 fg (flatDat R i B.de.Q ξR eQ)
        (GlobalTheory.FlatVecSum.princ B).vecBase

def TraceLevel : Prop := ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (Ks : Type) [Field Ks]
    [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), GlobalTheory.Hk3.Core R F →
    ∀ (i : Fin D.R.m) (B : Base (Vc D i) (Wc D i)), B.Good → BaseOf R i B → ∀ (U : Subgroup G) (ψ : U →* D.what₂.LLˣ)
    (e : G ≃* G0 B.G.Pg (Wc D i).rank),
    (∀ (g : G) (P : Pl D.host.E) (h : P ∈ B.G.Pg) (h' : P ∈ R.Pg) (a c : Fin (Wc D i).rank),
      (e g ⟨P, h⟩).val a c = (R.eG g ⟨P, h'⟩).val (Fin.cast (rank_Wc i) a) (Fin.cast (rank_Wc i) c)) →
    (∀ g, e g ∈ B.G.P.H ↔ g ∈ U) →
    (∀ (u : U) (hu : e u ∈ B.G.P.H), ((B.G.P.chi ⟨e u, hu⟩ : ℂˣ) : ℂ) = D.what₂.embLL ((ψ u : D.what₂.LLˣ) : D.what₂.LL)) →
    ∀ ω : WeilRep D i, B.IsWeil 1 ω → ∀ (h : GA D (Vc D i)) (P : PolF D (Wc D i).rank (Vc D i).rank),
      levelTrace R i U ψ ((GlobalTheory.FlatVecSum.princ B).theta ω h P) = B.theta ω h P

def CoefIndep : Prop := ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (Ks : Type) [Field Ks]
    [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), GlobalTheory.Hk3.Core R F →
    ∀ (i : Fin D.R.m) c0L, IsCoefMap R c0L → ∀ (h : GA D (Vc D i)) w, InCoefLat R i h w →
      ∃ P ∈ nabAtr (labLL D) (lamV D i) (Bridge.hLat (Vc D i) (fin (Vc D i) h)), w = c0L i P

def NabBaseChange : Prop := ∀ (E K₀ K ι : Type) [Field E] [NumberField E] [Field K₀] [NumberField K₀] [Field K] [NumberField K]
    [Fintype ι] (n : ℕ) (f : K₀ →+* K) (emb : ι → E →+* K₀) (lam : ι → DomWeight n) (M : Submodule (𝓞 E) (Fin n → E)),
    Submodule.IsFullLattice E M →
    nabAtr (fun τ => f.comp (emb τ)) lam M ≤
      Submodule.span (𝓞 K) {y : VV K lam | ∃ x ∈ nabAtr emb lam M, (y : Pol K ι n) = MvPolynomial.map f (x : Pol K₀ ι n)}

def LevLamRoot : Prop := ∀ (D : D7) (S T : HSp D) (B : Base S T) (t : Twist D Circle) (k : B.levJ t),
    ∃ n : ℕ, n ≠ 0 ∧ ((B.levLam t k : ℂˣ) : ℂ) ^ n = 1

end GlobalTheory.BaseCmp

end
