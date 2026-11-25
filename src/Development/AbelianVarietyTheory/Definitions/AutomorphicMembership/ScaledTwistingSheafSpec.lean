module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LineModel
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullGenLBIsGen
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.MeetsOpensOfSeparatesSections
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
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
import Formalism.SharpRestriction.Divisibility.AbelianOpenPart.AbelianAt

@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.L2.Geo GlobalTheory.LocM GlobalTheory.Toroidal
open Formalism.MainNotions.DIV.Cons (intO)

namespace GlobalTheory.ShFam.Pad

structure CDiv (X : Scheme.{0}) : Type where

  pos : X.IdealSheafData

  neg : X.IdealSheafData
  pos_cart : FinalTheorems.EffCartier pos
  neg_cart : FinalTheorems.EffCartier neg

namespace CDiv

variable {X X' : Scheme.{0}}

end CDiv

def FinLB.pull {X X' : Scheme.{0}} (L : FinLB X) (f : X' ⟶ X) : FinLB X' where
  n := L.n
  U i := (L.lb.pull f).U fun _ => i
  g i k := (L.lb.pull f).g (fun _ => i) fun _ => k
  isLB := have h := LB.isLB_pull L.isLB f
    ⟨top_le_iff.1 (h.cover.ge.trans (iSup_le fun i => le_iSup_of_le (i PUnit.unit) le_rfl)),
      fun _ => h.g_self _, fun _ _ _ => h.cocycle _ _ _⟩

section Free

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}

variable {Dw : Datum H} {Xo : ∀ l : Level H, Moduli Dw l} {l : Level H}

abbrev GModel (Xo : ∀ l : Level H, Moduli Dw l) (c : Coeff l) : Type 1 :=
  ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model (Xo l) c (algebraMap (𝓞 c.F) c.F)

def DomLoc (Y : LocFam Xo) {c : Coeff l} (hg : ∀ p : ℕ, p.Prime → l.GoodAt p) (Z : GModel Xo c) : Prop :=
  ∀ (p : ℕ) (W : ValuationSubring ℂ) (hp : p.Prime) (hW : (p : ℂ) ∈ W.nonunits) (b : 𝓞 c.F →+* c.V W),
    (∀ x, ((b x : c.V W) : c.F) = (x : c.F)) → Dominates Z (Y p W hp hW ⟨l, c, hg p hp⟩) b

structure PreCode (Xo : ∀ l : Level H, Moduli Dw l) (c : Coeff l) : Type where

  n : ℕ

  I : (PSpace (𝓞 c.F) n).IdealSheafData

  j : (Xo l).XF c ⟶ I.subscheme

variable {Y : LocFam Xo} {c : Coeff l} {hg : ∀ p : ℕ, p.Prime → l.GoodAt p}

namespace PreCode

variable (Z : PreCode Xo c)

abbrev X : Scheme.{0} := Z.I.subscheme

def s : Z.X ⟶ Sp (𝓞 c.F) := Z.I.subschemeι ≫ PSpace.str _ Z.n

def Iso (Z' : GModel Xo c) (e : Z'.X ≅ Z.X) : Prop := e.hom ≫ Z.s = Z'.s ∧ Z'.j ≫ e.hom = Z.j

abbrev gen : Scheme.{0} := pullback Z.s (spMap (algebraMap (𝓞 c.F) c.F))

abbrev genι : Z.gen ⟶ Z.X := pullback.fst _ _

abbrev genStr : Z.gen ⟶ Sp c.F := pullback.snd _ _

theorem proj : IsProjOver Z.s := ⟨Z.n, Z.I.subschemeι, inferInstance, rfl⟩

end PreCode

theorem exists_preCode (Z' : GModel Xo c) : ∃ (Z : PreCode Xo c) (e : Z'.X ≅ Z.X), Z.Iso Z' e := by
  obtain ⟨n, i, hi, e⟩ := Z'.proj
  have : IsIso i.toImage := inferInstance
  refine ⟨⟨n, i.ker, Z'.j ≫ i.toImage⟩, asIso i.toImage, ?_, rfl⟩
  change i.toImage ≫ i.imageι ≫ _ = _
  rw [← Category.assoc, i.toImage_imageι, e]

structure Code (Y : LocFam Xo) (c : Coeff l) (hg : ∀ p : ℕ, p.Prime → l.GoodAt p) : Type extends PreCode Xo c where
  ex : ∃ (Z' : GModel Xo c) (e : Z'.X ≅ toPreCode.X), toPreCode.Iso Z' e ∧ DomLoc Y hg Z'

theorem exists_code (Z' : GModel Xo c) (h : DomLoc Y hg Z') :
    ∃ (Z : Code Y c hg) (e : Z'.X ≅ Z.X), Z.Iso Z' e := by
  obtain ⟨Z, e, he⟩ := exists_preCode Z'
  exact ⟨⟨Z, Z', e, he, h⟩, e, he⟩

namespace Code

variable (Z : Code Y c hg)

theorem flat : Flat Z.s := by
  obtain ⟨Z', e, he, -⟩ := Z.ex
  have := Z'.flat
  rw [← e.inv_hom_id_assoc Z.s, he.1]
  infer_instance

section BC

variable {p : ℕ} {W : ValuationSubring ℂ} {hp : p.Prime} {hW : (p : ℂ) ∈ W.nonunits}

end BC

end Code

structure QLB (Y : LocFam Xo) (c : Coeff l) (hg : ∀ p : ℕ, p.Prime → l.GoodAt p) : Type where

  Z : Code Y c hg

  L : FinLB Z.X

  m : ℕ
  m_pos : 0 < m

namespace QLB

variable (M : QLB Y c hg)

variable {M}


end QLB

end Free

variable {D : D7} {A : Amb D} {N j : ℕ}

abbrev CodeAt (S : Sig A N j) (κ : Lv A) : Type := Code S.sys.Y κ.c κ.good


instance nonempty_codeAt (S : Sig A N j) (κ : Lv A) : Nonempty (CodeAt S κ) :=
  (exists_code (Y := S.sys.Y) _ (S.tor.glob κ.l κ.c κ.good).2.1).elim fun Z _ => ⟨Z⟩

end GlobalTheory.ShFam.Pad
