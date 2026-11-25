module

public import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermBPrim
public import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermBSer
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermBPf
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermDJet
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermFunPf
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull

@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.MainNotions.ModuliIntegralCharts.H1
attribute [local instance] Over.cartesianMonoidalCategory
open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ (PS Pt ev pt comp1 FGLaw)
open MvPolynomial (X)

namespace GlobalTheory.FrameAdjSeries

open Formalism.MainNotions.ModuliIntegralCharts.H1.GermB Formalism.MainNotions.ModuliIntegralCharts.H1.GermD Formalism.MainNotions.ModuliIntegralCharts.H1.GermFun


theorem jetSubstP_zero_eq {S κ κ' : Type} [CommRing S] (φ ψ : κ → MvPolynomial κ' S) :
    (jetSubstP 0 φ : Jet S κ 0 →ₐ[S] Jet S κ' 0) = jetSubstP 0 ψ := by
  apply jet_hom_ext
  intro i
  have h0 : (Ideal.Quotient.mk (orig S κ ^ (0 + 1)) (MvPolynomial.X i) : Jet S κ 0) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.2 (by simpa using X_mem_orig (R := S) i)
  rw [h0, map_zero, map_zero]

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {X0 : Scheme.{0}} {t : SAB H X0}
variable {S : Type} [CommRing S] {x0 : Sp S ⟶ X0} {d : ℕ} {x : ∀ m, jOG x0 d m 1 ⟶ t.G}
variable {F : Fin d → MvPowerSeries (Fin 2 × Fin d) S} {act : 𝓞 E → Fin d → MvPowerSeries (Fin 1 × Fin d) S}
  {κ : Type} [Fintype κ] {tg : κ → (Sp (DualNumber S) ⟶ t.G.left)} {uvec : κ → Fin d → S}

theorem jpt_trunc' (hch : IsChartG t x0 d F act tg uvec x) (m : ℕ) {n : ℕ} (i : Fin n) :
    homAt x0 (jetTrunc : Jet S (Fin n × Fin d) (m + 1) →ₐ[S] _) ≫ jptG t x0 d x (m + 1) i = jptG t x0 d x m i := by
  have hc : (jetTrunc : Jet S (Fin n × Fin d) (m + 1) →ₐ[S] _).comp (jetCopy d (m + 1) i) =
      (jetCopy d m i).comp (jetTrunc : Jet S (Fin 1 × Fin d) (m + 1) →ₐ[S] _) := by
    apply jet_hom_ext
    intro p
    rfl
  rw [jptG, jptG, ← Category.assoc, homAt_comp, hc, ← homAt_comp, Category.assoc, hch.trunc m]

theorem pair_trunc (hch : IsChartG t x0 d F act tg uvec x) (m : ℕ) :
    (ρn x0 d 2 m).left ≫ (lift (jptG t x0 d x (m + 1) (0 : Fin 2)) (jptG t x0 d x (m + 1) (1 : Fin 2))).left =
      𝟙 _ ≫ (lift (jptG t x0 d x m (0 : Fin 2)) (jptG t x0 d x m (1 : Fin 2))).left := by
  rw [← Over.comp_left, Category.id_comp, comp_lift, jpt_trunc' hch, jpt_trunc' hch]


theorem exists_ad_one (hch : IsChartG t x0 d F act tg uvec x) (e : ∀ m, FrTyG t x0 d x m)
    (heg : ∀ m, (e m).IsGen) (htr : FrTrunc t x0 d x e) (a : 𝓞 E)
    (wL : LB.Gen (LB.LinComb t.PP.L
      (Sum.elim (cφG t ![fst t.G t.G, snd t.G t.G ≫ t.act.act (H.bar a)]) (cφG t ![fst t.G t.G ≫ t.act.act a, snd t.G t.G]))
      (Sum.elim (cε 2) fun I => -cε 2 I))) (hwLg : wL.IsGen)
    (hwL0 : ∀ (Z : Scheme.{0}) (r : Z ⟶ (𝟙_ (Over X0)).left) (z : Z) (J : (Z ⟶ t.G.left) → t.PP.L.ι), Good t.PP.L z J →
      val wL (r ≫ (zz t).left) z J = 1) :
    ∃ ad : MvPowerSeries (Fin 2 × Fin d) S, MvPowerSeries.constantCoeff ad = 1 ∧ ∀ m, ∃ u : (Jet S (Fin 2 × Fin d) m)ˣ,
      (u : Jet S (Fin 2 × Fin d) m) = psJet m ad ∧ LB.Gen.Corr t.PP.L _ _ _ _
        (LB.mulGen t.PP.L _ _ _ _
          (LB.pullGen t.PP.L _ _ wL (lift (jptG t x0 d x m (0 : Fin 2)) (jptG t x0 d x m (1 : Fin 2))).left)
          (peG t x0 d x e m ![fun j => psIn d m ![0] (act a j), fun j => MvPolynomial.X ((1 : Fin 2), j)]))
        (scaleGenG t _ _ (unitΓ u) (peG t x0 d x e m ![fun j => MvPolynomial.X ((0 : Fin 2), j), fun j => psIn d m ![1] (act (H.bar a) j)])) := by
  have hL := t.PP.isLB
  have hpe : ∀ m {n : ℕ} (φ : Fin 2 → Fin d → MvPolynomial (Fin n × Fin d) S),
      (peG t x0 d x e m φ).IsGen :=
    fun m n φ => ReciprocityTheory.ChartRestriction.G.DVR.pullGen_isGen _ _ _ _ (heg m) _
  have hXX : ∀ (m : ℕ) {n : ℕ} (k : Fin n) (j : Fin d),
      (MvPolynomial.X (k, j) : MvPolynomial (Fin n × Fin d) S) - MvPolynomial.X (k, j) ∈
        orig S (Fin n × Fin d) ^ (m + 1) := fun m n k j => by simp
  obtain ⟨ad, had⟩ := exists_series t x0 d (n := 2) _ _ _ _
    (fun m => LB.mulGen t.PP.L _ _ _ _
      (LB.pullGen t.PP.L _ _ wL (lift (jptG t x0 d x m (0 : Fin 2)) (jptG t x0 d x m (1 : Fin 2))).left)
      (peG t x0 d x e m ![fun j => psIn d m ![0] (act a j), fun j => MvPolynomial.X ((1 : Fin 2), j)]))
    (fun m => ReciprocityTheory.ChartRestriction.G.DVR.mulGen_isGen _ _ _ _ _ _ _ (ReciprocityTheory.ChartRestriction.G.DVR.pullGen_isGen _ _ _ _ hwLg _)
      (hpe m _))
    (fun m => peG t x0 d x e m
      ![fun j => MvPolynomial.X ((0 : Fin 2), j), fun j => psIn d m ![1] (act (H.bar a) j)])
    (fun m => hpe m _)
    (fun m U _ h => by
      simp only [Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, wl_pt, wl_pt', pe_pt, pt_sub, Matrix.cons_val_zero,
        Matrix.cons_val_one, pt_X, pt_act hch, zpow_neg, Finset.prod_inv_distrib]
      simp only [inv_mul_cancel_right])
    (fun m y J hJ => (val_mul hJ _ _ _).trans (Eq.trans (congrArg₂ (· * ·)
      ((val_pull hJ _ _ _).trans ((congrArg (fun r => val wL r y J) (pair_trunc hch m)).trans (val_pull hJ _ _ _).symm))
      (pe_trunc t x0 d htr
        (fun m => ![fun j => psIn d m ![0] (act a j), fun j => MvPolynomial.X ((1 : Fin 2), j)])
        (fun m i j => by fin_cases i; exacts [psIn_succ_sub m _ _, hXX m _ j]) m y J hJ))
      (val_mul hJ _ _ _).symm))
    (fun m y J hJ => pe_trunc t x0 d htr
      (fun m => ![fun j => MvPolynomial.X ((0 : Fin 2), j), fun j => psIn d m ![1] (act (H.bar a) j)])
      (fun m i j => by fin_cases i; exacts [hXX m _ j, psIn_succ_sub m _ _]) m y J hJ)
  have hx0 : x 0 = 1 := frame_origin_jet_one hch
  have hj0 : ∀ {n : ℕ} (i : Fin n), jptG t x0 d x 0 i = 1 := fun i => by
    rw [jptG, hx0]
    exact map_one (preHom _)
  have hadc : MvPowerSeries.constantCoeff ad = 1 := by
    obtain ⟨u, hu, hc⟩ := had 0
    have hU : unitΓ u = 1 := by
      refine unit_ext (V := ⊤) fun y _ => ?_
      choose I hI using fun χ : (jOG x0 d 0 2).left ⟶ t.G.left => exists_chart hL (χ y)
      have e1 := (val_corr hI hc (𝟙 _)).trans (val_scale t _ _ _ _ _ y I hI)
      have hl : (𝟙 _ ≫ (lift (jptG t x0 d x 0 (0 : Fin 2)) (jptG t x0 d x 0 (1 : Fin 2))).left) =
          ((𝟙 _ ≫ (toUnit (jOG x0 d 0 2)).left) ≫ (zz t).left) := by
        rw [Category.id_comp, Category.id_comp, ← Over.comp_left, comp_lift, hj0, hj0]
        rfl
      have hA1 : val (LB.pullGen t.PP.L _ _ wL (lift (jptG t x0 d x 0 (0 : Fin 2)) (jptG t x0 d x 0 (1 : Fin 2))).left)
          (𝟙 _) y I = 1 := by
        refine (val_pull hI _ _ _).trans ?_
        rw [hl]
        exact hwL0 _ _ y I hI
      have hAB : val (peG t x0 d x e 0
          ![fun j => psIn d 0 ![0] (act a j), fun j => MvPolynomial.X ((1 : Fin 2), j)]) (𝟙 _) y I =
          val (peG t x0 d x e 0
          ![fun j => MvPolynomial.X ((0 : Fin 2), j), fun j => psIn d 0 ![1] (act (H.bar a) j)]) (𝟙 _) y I :=
        (val_pull hI _ _ _).trans ((congrArg (fun σ => val (e 0) (𝟙 _ ≫ (homAt x0 σ).left) y I)
          (jetSubstP_zero_eq _ _)).trans (val_pull hI _ _ _).symm)
      rw [val_mul hI, hA1, hAB, _root_.one_mul] at e1
      rw [map_one]
      exact (right_eq_mul.1 e1)
    have hu1 : (u : Jet S (Fin 2 × Fin d) 0) = 1 := by
      apply toΓ_injective
      rw [map_one]
      exact congrArg Units.val hU
    show MvPowerSeries.coeff 0 ad = 1
    rw [← coeff_psTrunc 0 ad 0 le_rfl]
    have h0 := hu.symm.trans hu1
    rw [psJet, ← map_one (Ideal.Quotient.mk _), Ideal.Quotient.eq] at h0
    have h1 := coeff_eq_zero_of_mem h0 (e := 0) (by simp)
    rw [MvPolynomial.coeff_sub, sub_eq_zero, MvPolynomial.coeff_one, if_pos rfl] at h1
    exact h1
  exact ⟨ad, hadc, had⟩

end GlobalTheory.FrameAdjSeries

theorem GlobalTheory.FrameAdjSeries.exists_ad :
    ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X0 : Scheme.{0}) (t : SAB H X0) (S : Type) [CommRing S] (x0 : Sp S ⟶ X0) (d : ℕ) (F : Fin d → MvPowerSeries (Fin 2 × Fin d) S) (act : 𝓞 E → Fin d → MvPowerSeries (Fin 1 × Fin d) S) (κ : Type) [Fintype κ] (tg : κ → (Sp (DualNumber S) ⟶ t.G.left)) (uvec : κ → Fin d → S) (x : ∀ m, jOG x0 d m 1 ⟶ t.G), (∀ j, MvPowerSeries.constantCoeff (F j) = 0) → (∀ a j, MvPowerSeries.constantCoeff (act a j) = 0) → IsChartG t x0 d F act tg uvec x → ∀ e : ∀ m, FrTyG t x0 d x m, (∀ m, (e m).IsGen) → FrTrunc t x0 d x e → FrAxes t x0 d x e → ∃ ad : 𝓞 E → PS S 2 d, (∀ a, MvPowerSeries.constantCoeff (ad a) = 1) ∧ ∀ a : 𝓞 E, ∃ wL : LB.Gen (LB.LinComb t.PP.L (Sum.elim (cφG t ![fst t.G t.G, snd t.G t.G ≫ t.act.act (H.bar a)]) (cφG t ![fst t.G t.G ≫ t.act.act a, snd t.G t.G])) (Sum.elim (cε 2) fun I => -cε 2 I)), wL.IsGen ∧ ∀ m, ∃ u : (Jet S (Fin 2 × Fin d) m)ˣ, (u : Jet S (Fin 2 × Fin d) m) = psJet m (ad a) ∧ LB.Gen.Corr t.PP.L _ _ _ _ (LB.mulGen t.PP.L _ _ _ _ (LB.pullGen t.PP.L _ _ wL (lift (jptG t x0 d x m (0 : Fin 2)) (jptG t x0 d x m (1 : Fin 2))).left) (peG t x0 d x e m ![fun j => psIn d m ![0] (act a j), fun j => X ((1 : Fin 2), j)])) (scaleGenG t _ _ (unitΓ u) (peG t x0 d x e m ![fun j => X ((0 : Fin 2), j), fun j => psIn d m ![1] (act (H.bar a) j)])) := by
  intro E _ _ _ H X0 t S _ x0 d F act κ _ tg uvec x _ _ hch e heg htr _
  choose wL hwLg hwL0 using fun a => Formalism.MainNotions.ModuliIntegralCharts.H1.GermB.exists_wL t a
  choose ad hadc had using fun a => GlobalTheory.FrameAdjSeries.exists_ad_one hch e heg htr a (wL a) (hwLg a) (hwL0 a)
  exact ⟨ad, hadc, fun a => ⟨wL a, hwLg a, had a⟩⟩
