module

public import Formalism.LocalToGlobal.ProjectiveLattices.ThClassPins
public import Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector
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

namespace GlobalTheory.IndefiniteRowSideFullHecke.ColumnDataLaws

open AlgebraicGeometry CategoryTheory NumberField ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR.Links Formalism.IndefR.Datum
open Formalism.L2.Pj Formalism.IndefR.FWT
open scoped TensorProduct

section Theta

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {σ : c.F →+* ℂ}

def IsCanTheta {g : ℕ} {ty : Fin g → (E →+* ℂ)}
    (F : FamilyUnif Xo (σ.comp (IntermediateField.inclusion c.le).toRingHom) ty) (k : Fin F.n)
    (Pm : (F.Di k).La →+ (Fin g → ℂ)) (y : FrPt Xo c (CAt σ)) (Hm : Matrix (Fin g) (Fin g) ℂ)
    (θ : (Fin g → ℂ) → ℂ) : Prop :=
  Hm.IsHermitian ∧ (∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) ∧
    (∀ a b, (hermForm Hm (Pm a) (Pm b)).im = (F.Di k).EF a b) ∧
    ∃ (χl : (Fin g → ℂ) → ℂ) (fr : Xo.univ.t.PP.L.ι → (Fin g → ℂ) → ℂ),
      (∀ j, DifferentiableOn ℂ (fr j) {z | ⊤ ≤ (F.ex k Pm z).left ⁻¹ᵁ Xo.univ.t.PP.L.U j}) ∧
      (∀ j z, ⊤ ≤ (F.ex k Pm z).left ⁻¹ᵁ Xo.univ.t.PP.L.U j → fr j z ≠ 0) ∧
      (∀ j j' z, ⊤ ≤ (F.ex k Pm z).left ⁻¹ᵁ (Xo.univ.t.PP.L.U j ⊓ Xo.univ.t.PP.L.U j') →
        fr j z = valAt' (F.ex k Pm z).left (Xo.univ.t.PP.L.U j ⊓ Xo.univ.t.PP.L.U j')
          (Xo.univ.t.PP.L.g j j').val * fr j' z) ∧
      (∀ j, ⊤ ≤ (F.ex k Pm 0).left ⁻¹ᵁ Xo.univ.t.PP.L.U j →
        fr j 0 = valAt' y.x ((Xo.univ.t.PP.L.pull (eSec Xo.univ.t.G)).U (fun _ => j))
          (Xo.univ.t.PP.rig.s (fun _ => j)).val) ∧
      (∀ a j z, ‖χl (Pm a)‖ = 1 ∧ (⊤ ≤ (F.ex k Pm z).left ⁻¹ᵁ Xo.univ.t.PP.L.U j →
        fr j z = χl (Pm a) * Complex.exp (Real.pi * hermForm Hm z (Pm a) +
          Real.pi / 2 * hermForm Hm (Pm a) (Pm a)) * fr j (z + Pm a))) ∧
      ∀ j z (pt : Sp ℂ ⟶ Gx y.x), pt ≫ gxFst y.x = (F.ex k Pm z).left → pt ≫ gxSnd y.x = 𝟙 (Sp ℂ) →
        ⊤ ≤ (F.ex k Pm z).left ⁻¹ᵁ Xo.univ.t.PP.L.U j →
        valAt' pt ((PPx y.x).U (fun _ => j)) (y.s.f (fun _ => j)) = θ z * fr j z

end Theta

section Frame

variable {D : D7}

variable {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host D.host.E} {Dw : Datum H} {l : Level H} {Xo : Moduli Dw l} {c : Coeff l}
  {σ : c.F →+* ℂ} {r : ℕ}

structure DictDat (U : Unf Xo c σ r) where
  g : ℕ
  e : Fin g ≃ Σ τ : D.host.E →+* ℂ, Fin (Dw.mult τ)
  F : FamilyUnif Xo (σ.comp (IntermediateField.inclusion c.le).toRingHom) (fun j => relab c σ (e j).1)
  ik : U.Comp → Fin F.n
  φ : ∀ k, (F.Di (ik k)).La ≃ₗ[𝓞 D.host.E] (U.X k).Λ
  th : ∀ k, (U.X k).Ψ → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)

variable {U : Unf Xo c σ r} (W : HSp D) (hr : W.rank = r) (dict : GA D W → Σ k, Frame (U.X k).Ψ r)
  (ι : Dw.La →ₗ[𝓞 D.host.E] (Fin W.rank → D.host.E)) (x₀ : (D.host.E →+* ℂ) → Matrix (Fin r) (Fin r) ℂ)

def DictDat.Is (d : DictDat U) : Prop :=
  (∀ k τ, IsInfEmb τ.1 (d.th k τ)) ∧ DictLat U W hr dict ι d.e d.F d.ik d.φ d.th x₀

end Frame

section Row

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

structure RowDat (T : CoreJ D) (G : Type) (i : Fin D.R.m) where

  c' : Coeff T.Q.l
  hle : T.Q.c.F ≤ c'.F

  lev : G → ((T.Q.Dw ((i : ℕ) + 1)).La →ₗ[𝓞 D.host.E] (T.Q.Dw ((i : ℕ) + 1)).La) ×
    ((T.Q.Dw ((i : ℕ) + 1)).La →ₗ[𝓞 D.host.E] (T.Q.Dw ((i : ℕ) + 1)).La)
  hV : T.V ((i : ℕ) + 1) (c'.F.val.toRingHom.comp (incF T.Q.c c' hle)) = Wc D i

namespace RowDat

variable {T : CoreJ D} {i : Fin D.R.m} (Y : RowDat T G i)

abbrev σ' : Y.c'.F →+* ℂ := Y.c'.F.val.toRingHom

abbrev σ : T.Q.c.F →+* ℂ := Y.σ'.comp (incF T.Q.c Y.c' Y.hle)


abbrev U : Unf (T.Q.Xo ((i : ℕ) + 1)) T.Q.c Y.σ D.R.r := T.U ((i : ℕ) + 1) Y.σ

def dict : GA D (Wc D i) → Σ k, Frame (Y.U.X k).Ψ D.R.r := castDict Y.hV (T.dict ((i : ℕ) + 1) Y.σ)

def ι (_Y : RowDat T G i) : (T.Q.Dw ((i : ℕ) + 1)).La →ₗ[𝓞 D.host.E] (Fin (Wc D i).rank → D.host.E) :=
  have hr : (Wc D i).rank = D.R.r := D.sp.W_rank _ (Nat.succ_pos _) i.2
  LinearMap.funLeft (𝓞 D.host.E) D.host.E (Fin.cast hr) ∘ₗ T.iota ((i : ℕ) + 1)


variable (R : RealDat D A Ks)


end RowDat

end Row

end GlobalTheory.IndefiniteRowSideFullHecke.ColumnDataLaws
