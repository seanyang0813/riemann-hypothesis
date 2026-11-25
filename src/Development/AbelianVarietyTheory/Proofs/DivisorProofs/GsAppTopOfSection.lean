module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SharpBundleFibre
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueScalar
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.FlatBCSec
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic
public import Development.AbelianVarietyTheory.Definitions.Divisors.FromBase
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DefOverOfFiniteOrbit
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFromBase
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LbIsoSecOnto
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SharpTorsionDefOver
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValMemOfCorrPull
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsNormalizedBoth
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocal
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Poinc.Sep

def chartPullComp {X Y Y' : Scheme.{0}} (L : LB X) {Ix : Type} [Fintype Ix] (φ : Ix → (Y ⟶ X)) (ε : Ix → ℤ)
    (h : Y' ⟶ Y) : ChartPull (LB.LinComb L (fun k => h ≫ φ k) ε) (LB.LinComb L φ ε) h where
  idx j := j
  le j _ hy := Set.mem_iInter.2 fun k => Set.mem_iInter.1 hy k
  g y j j' hj hj' := by
    refine (gm_linComb L (fun k => h ≫ φ k) ε (𝟙 Y') y j j' hj hj').trans ?_
    refine Eq.trans ?_ (gm_linComb L φ ε h y j j' (Set.mem_iInter.2 fun k => Set.mem_iInter.1 hj k)
      (Set.mem_iInter.2 fun k => Set.mem_iInter.1 hj' k)).symm
    simp only [Category.id_comp]

theorem sval_spMap {K : Type} [Field K] {X Y : Scheme.{0}} {L : LB X} {Ix : Type} [Fintype Ix] {φ : Ix → (Y ⟶ X)}
    {ε : Ix → ℤ} (s : LB.Sec (LB.LinComb L φ ε)) (σ : K →+* K) (x : Sp K ⟶ Y) (z : Sp K) {J : (Sp K ⟶ X) → L.ι}
    (hJ : Good L z J) (hφ : ∀ k, spMap σ ≫ x ≫ φ k = x ≫ φ k) :
    sval s (spMap σ ≫ x) z J = toStk z (σ (valF x (LB.wchart L φ (fun k => J (x ≫ φ k))) (s.f (fun k => J (x ≫ φ k))))) := by
  have hj : ∀ k, J ((spMap σ ≫ x) ≫ φ k) = (fun k => J (x ≫ φ k)) k := fun k => by
    simp only [Category.assoc, hφ k]
  rw [sval_of s (spMap σ ≫ x) z J _ hj]
  have hm : x z ∈ LB.wchart L φ (fun k => J (x ≫ φ k)) := hJ.mem φ x
  have hm' : (spMap σ ≫ x) z ∈ LB.wchart L φ (fun k => J (x ≫ φ k)) := by
    have := hJ.mem φ (spMap σ ≫ x)
    have e : (fun k => J ((spMap σ ≫ x) ≫ φ k)) = fun k => J (x ≫ φ k) := funext hj
    rw [e] at this
    exact this
  refine (toStk_valF_gs (spMap σ ≫ x) _ z hm' _).symm.trans ?_
  exact congrArg (toStk z) (_root_.GlobalTheory.ArcExt.valF_ext σ x _ ((top_le_iff_mem x _ z).2 hm) _)

theorem sval_cast {X Y Z : Scheme.{0}} {L : LB X} {Ix : Type} [Fintype Ix] {φ φ' : Ix → (Y ⟶ X)} {ε : Ix → ℤ}
    (e : φ' = φ) (p : LB.Sec (LB.LinComb L φ' ε)) (x : Z ⟶ Y) (z : Z) (J : (Z ⟶ X) → L.ι) :
    sval (e ▸ p : LB.Sec (LB.LinComb L φ ε)) x z J = sval p x z J := by
  subst e; rfl

theorem galois_values {K : Type} [Field K] [IsAlgClosed K] (k₀ : Subfield K) (hk₀ : IsAlgClosed k₀)
    {X Y : Scheme.{0}} {L : LB X} {Ix : Type} [Fintype Ix] (φ : Ix → (Y ⟶ X)) (ε : Ix → ℤ)
    (s : LB.Sec (LB.LinComb L φ ε)) (R : (Sp K ⟶ Y) → Prop)
    (h1 : ∀ t : LB.Sec (LB.LinComb L φ ε), ∃ c : K, ∀ x, R x → ∀ z J, Good L z J →
      sval t x z J = toStk z c * sval s x z J)
    (h2 : ∀ σ : K ≃+* K, (∀ a ∈ k₀, σ a = a) → ∃ σt : Y ⟶ Y, (∀ k, σt ≫ φ k = φ k) ∧
      ∀ x, R x → x ≫ σt = spMap σ.toRingHom ≫ x) :
    ∃ κ : K, κ ≠ 0 ∧ ∀ x, R x → ∀ z J, Good L z J → ∃ c ∈ k₀, sval s x z J = toStk z (κ * c) := by
  classical
  let v : (Sp K ⟶ Y) → ((Sp K ⟶ X) → L.ι) → K := fun x J =>
    valF x (LB.wchart L φ (fun k => J (x ≫ φ k))) (s.f (fun k => J (x ≫ φ k)))
  have hv : ∀ x z J, Good L z J → sval s x z J = toStk z (v x J) := fun x z J hJ =>
    (toStk_valF_gs x _ z (hJ.mem φ x) _).symm
  have key : ∀ σ : K ≃+* K, (∀ a ∈ k₀, σ a = a) → ∃ c : K, ∀ x, R x → ∀ z J, Good L z J →
      σ (v x J) = c * v x J := by
    intro σ hσ
    obtain ⟨σt, hφ, hx⟩ := h2 σ hσ
    have e : (fun k => σt ≫ φ k) = φ := funext hφ
    obtain ⟨c, hc⟩ := h1 (e ▸ ReciprocityTheory.ChartRestriction.G.H1.SectionArithmetic.pullSec s σt)
    refine ⟨c, fun x hR z J hJ => ?_⟩
    have a1 := hc x hR z J hJ
    rw [sval_cast, ReciprocityTheory.ChartRestriction.G.H1.SectionArithmetic.sval_pullSec s σt x z hJ, hx x hR,
      sval_spMap s σ.toRingHom x z hJ (fun k => by rw [← Category.assoc, ← hx x hR, Category.assoc, hφ]),
      hv x z J hJ, ← map_mul] at a1
    exact (toStk z).injective a1
  by_cases hex : ∃ x J z, R x ∧ Good L z J ∧ v x J ≠ 0
  · obtain ⟨x₀, J₀, z₀, hR₀, hJ₀, hne⟩ := hex
    refine ⟨v x₀ J₀, hne, fun x hR z J hJ => ⟨v x J / v x₀ J₀, ?_, ?_⟩⟩
    · apply mem_of_finite_conj k₀ hk₀
      apply (Set.finite_singleton (v x J / v x₀ J₀)).subset
      rintro b ⟨σ, hσ, rfl⟩
      obtain ⟨c, hc⟩ := key σ hσ
      have h0 := hc x₀ hR₀ z₀ J₀ hJ₀
      have h1' := hc x hR z J hJ
      have hc0 : c ≠ 0 := by
        rintro rfl
        rw [zero_mul] at h0
        exact hne (σ.injective (h0.trans (map_zero σ).symm))
      show σ (v x J / v x₀ J₀) = v x J / v x₀ J₀
      rw [map_div₀, h0, h1', mul_div_mul_left _ _ hc0]
    · rw [hv x z J hJ, mul_div_cancel₀ _ hne]
  · push Not at hex
    refine ⟨1, one_ne_zero, fun x hR z J hJ => ⟨0, k₀.zero_mem, ?_⟩⟩
    rw [hv x z J hJ, hex x J z hR hJ, mul_zero]

variable {V V₁ : Type} [CommRing V] [IsDomain V] [CommRing V₁] [IsDomain V₁]

theorem spMap_conj {K : Type} [Field K] (k₀ : Subfield K) {R : Type} [CommRing R] (f : R →+* K) (hf : ∀ a, f a ∈ k₀)
    (σ : K ≃+* K) (hσ : ∀ a ∈ k₀, σ a = a) : spMap σ.toRingHom ≫ spMap f = spMap f := by
  simp only [spMap, ← Spec.map_comp]
  congr 1
  ext a
  exact hσ _ (hf a)

theorem gs_appTop_of_section {K : Type} [Field K] {Y : Scheme.{0}} (x : Sp K ⟶ Y) (f : Y ⟶ Sp K) (hx : x ≫ f = 𝟙 _)
    (z : Sp K) (r : Γ(Sp K, ⊤)) :
    gs x z ⊤ (f.appTop.hom r) = toStk z ((Scheme.ΓSpecIso (CommRingCat.of K)).hom.hom r) := by
  have e1 := gs_pull x f z ⊤ trivial r
  erw [e1, hx, gs_eq _ z ⊤ trivial]
  show _ = ((Sp K).presheaf.germ ⊤ z trivial).hom ((Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom
    ((Scheme.ΓSpecIso (CommRingCat.of K)).hom.hom r))
  rw [Iso.hom_inv_id_apply]
  simp
  rfl

theorem gs_isoRel_at {Y Z : Scheme.{0}} {L M : LB Y} {w : LB.Iso L M} {s : LB.Sec L} {s' : LB.Sec M}
    (h : ReciprocityTheory.ChartRestriction.G.DVR.FlatBC.IsoRel w s s') (i : M.ι) (k : L.ι) (r : Z ⟶ Y) (z : Z) (hi : r z ∈ M.U i)
    (hk : r z ∈ L.U k) :
    gs r z (M.U i) (s'.f i) = (gm r z ((LB.div M L).U (i, k)) (w.s (i, k))).val * gs r z (L.U k) (s.f k) := by
  have hy : r z ∈ M.U i ⊓ L.U k := ⟨hi, hk⟩
  have e := congrArg (gs r z (M.U i ⊓ L.U k)) (h i k)
  rw [gs_res _ z _ hy, gs_mul _ z _ hy, gs_res _ z _ hy] at e
  rw [e]
  congr 1
  exact gs_unit _ z _ hy _

theorem fibre_one_dim (D : DegPre V₁) {K : Type} [Field K] (ev : V₁ →+* K)
    (θ : LB.Sec (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1)))
    (hθ : ∀ θ', IsPullSecLC D.P.L (D.famφB 0) (DegPre.famε 1) (snd (Over.mk (spMap ev)) D.P.A).left θ θ' →
      GlobalTheory.Poinc.ThetaOne.OneBasisAt D ev θ')
    {X : Scheme.{0}} {L₂ : LB X} {Ix : Type} [Fintype Ix] (φ : Ix → (D.P.A.left ⟶ X)) (ε : Ix → ℤ) (hL₂ : L₂.IsLB)
    (u : LB.Iso (LB.LinComb D.P.L (D.famφB 0) (DegPre.famε 1)) (LB.LinComb L₂ φ ε)) (hu : u.IsGen)
    (s : LB.Sec (LB.LinComb L₂ φ ε)) (hs : ReciprocityTheory.ChartRestriction.G.DVR.FlatBC.IsoRel u θ s)
    (s₂ : LB.Sec (LB.LinComb L₂ (fun k => (snd (Over.mk (spMap ev)) D.P.A).left ≫ φ k) ε)) :
    ∃ c : K, ∀ x : Sp K ⟶ (Over.mk (spMap ev) ⊗ D.P.A).left, x ≫ (fst (Over.mk (spMap ev)) D.P.A).left = 𝟙 _ →
      ∀ z J, Good L₂ z J →
        sval s₂ x z J = toStk z c * sval (ReciprocityTheory.ChartRestriction.G.H1.SectionArithmetic.pullSec s (snd (Over.mk (spMap ev)) D.P.A).left) x z J := by
  let E := Over.mk (spMap ev)
  let q := (snd E D.P.A).left
  have hL : D.P.L.IsLB := D.P.isLB
  have hA : (LB.LinComb D.P.L (fun i => q ≫ D.famφB 0 i) (DegPre.famε 1)).IsLB := DVR.linComb_isLB _ hL _ _
  have hB : (LB.LinComb L₂ (fun k => q ≫ φ k) ε).IsLB := DVR.linComb_isLB _ hL₂ _ _
  let u' := GlobalTheory.PolDeg.TautFrom.isoPull (chartPullComp D.P.L (D.famφB 0) (DegPre.famε 1) q) (chartPullComp L₂ φ ε q) u
  have hu' : u'.IsGen := GlobalTheory.PolDeg.TautFrom.isoPull_isGen _ _ u hu
  obtain ⟨a, ha⟩ := GlobalTheory.MBLow.lbIso_sec_onto _ _ _ u' hA hB hu' s₂
  have ha' : ReciprocityTheory.ChartRestriction.G.DVR.FlatBC.IsoRel u' a s₂ := fun i k => ha (i, k)
  obtain ⟨r, hr, -⟩ := hθ (GlobalTheory.Poinc.ThetaOne.pullTo D ev θ) (GlobalTheory.Poinc.ThetaOne.isPullSecLC_pullTo D ev θ) a
  refine ⟨(Scheme.ΓSpecIso (CommRingCat.of K)).hom (r 0), fun x hx z J hJ => ?_⟩
  choose I hI using fun χ : Sp K ⟶ D.P.A.left => exists_chart hL (χ z)
  have hIg : Good D.P.L z I := hI
  let jA : Fin 4 → D.P.L.ι := fun i => I (x ≫ q ≫ D.famφB 0 i)
  let jB : Ix → L₂.ι := fun k => J (x ≫ q ≫ φ k)
  have hmA : x z ∈ LB.wchart D.P.L (fun i => q ≫ D.famφB 0 i) jA := hIg.mem _ x
  have hmB : x z ∈ LB.wchart L₂ (fun k => q ≫ φ k) jB := hJ.mem _ x
  have hmA₀ : (x ≫ q) z ∈ LB.wchart D.P.L (D.famφB 0) jA :=
    (chartPullComp D.P.L (D.famφB 0) (DegPre.famε 1) q).le jA hmA
  have hmB₀ : (x ≫ q) z ∈ LB.wchart L₂ φ jB := (chartPullComp L₂ φ ε q).le jB hmB
  have lhs1 := gs_isoRel_at ha' jB jA x z hmB hmA
  have lhs2 := GlobalTheory.PolDeg.TautFrom.gm_isoPull (chartPullComp D.P.L (D.famφB 0) (DegPre.famε 1) q)
    (chartPullComp L₂ φ ε q) u x z (jB, jA) ⟨hmB, hmA⟩
  have rhs1 := gs_isoRel_at hs jB jA (x ≫ q) z hmB₀ hmA₀
  have hrA := hr jA
  rw [Fin.sum_univ_one] at hrA
  have mid : gs x z (LB.wchart D.P.L (fun i => q ≫ D.famφB 0 i) jA) (a.f jA) =
      toStk z ((Scheme.ΓSpecIso (CommRingCat.of K)).hom (r 0)) *
        gs (x ≫ q) z (LB.wchart D.P.L (D.famφB 0) jA) (θ.f jA) := by
    refine (congrArg (gs x z _) hrA).trans ((gs_mul x z _ hmA _ _).trans ?_)
    congr 1
    · refine (gs_res x z _ hmA _).trans ?_
      exact gs_appTop_of_section x _ hx z (r 0)
    · exact (gs_res _ z _ hmA _).trans (gs_pull x q z _ hmA₀ _)
  show gs x z _ (s₂.f jB) = _
  rw [ReciprocityTheory.ChartRestriction.G.H1.SectionArithmetic.sval_pullSec s q x z hJ, sval_of s (x ≫ q) z J jB (fun k => by simp only [jB, Category.assoc])]
  rw [lhs1]
  erw [lhs2]
  erw [mid, rhs1]
  exact mul_left_comm _ _ _

theorem sharpPair_fst {W₀ : Type} [CommRing W₀] (ρ : V →+* V₁) (Q : Data V) (D : DegPre V₁)
    (pr : Fin 8 → (D.P.A ⟶ (Over.pullback (spMap ρ)).obj Q.B)) (B₀ : Over (Sp W₀)) [GrpObj B₀] [IsCommMonObj B₀]
    (β : Q.B.left ⟶ B₀.left) (β₂ : (G2 Q.B).left ⟶ (G2 B₀).left) (hsq : IsSquare β β₂) (a b : Fin 8) :
    sharpPair ρ Q D pr a b ≫ β₂ ≫ (fst B₀ B₀).left = (pr a).left ≫ pullback.fst Q.B.hom (spMap ρ) ≫ β := by
  rw [hsq.1]
  show (lift (pushPt (isGrpPullback_pullback Q.B (spMap ρ)).1.w (pr a))
    (pushPt (isGrpPullback_pullback Q.B (spMap ρ)).1.w (pr b)) ≫ fst Q.B Q.B).left ≫ β = _
  rw [lift_fst]
  rfl

theorem sharpPair_snd {W₀ : Type} [CommRing W₀] (ρ : V →+* V₁) (Q : Data V) (D : DegPre V₁)
    (pr : Fin 8 → (D.P.A ⟶ (Over.pullback (spMap ρ)).obj Q.B)) (B₀ : Over (Sp W₀)) [GrpObj B₀] [IsCommMonObj B₀]
    (β : Q.B.left ⟶ B₀.left) (β₂ : (G2 Q.B).left ⟶ (G2 B₀).left) (hsq : IsSquare β β₂) (a b : Fin 8) :
    sharpPair ρ Q D pr a b ≫ β₂ ≫ (snd B₀ B₀).left = (pr b).left ≫ pullback.fst Q.B.hom (spMap ρ) ≫ β := by
  rw [hsq.2]
  show (lift (pushPt (isGrpPullback_pullback Q.B (spMap ρ)).1.w (pr a))
    (pushPt (isGrpPullback_pullback Q.B (spMap ρ)).1.w (pr b)) ≫ snd Q.B Q.B).left ≫ β = _
  rw [lift_snd]
  rfl

end GlobalTheory.Poinc.Sep
