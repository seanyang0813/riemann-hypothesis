module

public import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypVin
public import Formalism.SharpRestriction.GrowthBounds.ChartComparison.LocCore
public import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLift
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.RowActWeylMemDescentLattice
public import Formalism.LocalToGlobal.GroupLattices.FockModels.SwRowGenMonomial
public import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypFormsCl
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.WeylLatticeDescentHolds
public import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.ExistsIsCGBases
public import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypInvLe
public import Formalism.LocalToGlobal.GlobalTheory.GL6.FrobeniusNoKernelOfFrobeniusSimilitude
public import Formalism.LocalToGlobal.GlobalTheory.GL6.ValuationClassTranslateMem
public import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypTwA
public import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.ValIntN
public import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypChi
public import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLat
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan
import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.SelfDualCongr
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
import Mathlib.Topology.Sheaves.Init
import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LBidetLemmas
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.WeylEqSpanInt
import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.WeylLatticeDescentOfIntegralModels
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.WittVector.IsPoly
import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FormSK
import Formalism.LocalToGlobal.GlobalTheory.GL6.Statement
import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocBases
import Formalism.LocalToGlobal.GlobalTheory.GL6.PSplitT
import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.ColSpanMulUnit
import Formalism.SharpRestriction.GrowthBounds.ChartComparison.LocMore
import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.CompInjLocJ

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypVinRec, Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftDesc, Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftTw, Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftInv, Formalism.SharpRestriction.GrowthBounds.ChartRank.NuOfAntiEv, Formalism.SharpRestriction.GrowthBounds.ChartRank.HypEvChain, Formalism.SharpRestriction.GrowthBounds.ChartRank.HypFin, Formalism.SharpRestriction.GrowthBounds.ChartRank.HypForms, Formalism.SharpRestriction.GrowthBounds.ChartRank.IntWOfPow, Formalism.SharpRestriction.GrowthBounds.ChartRank.SiteGoodPrimeTorsion

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypVinRec =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.HypVinRec", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypVin\npublic import Formalism.SharpRestriction.GrowthBounds.ChartComparison.LocCore\nimport Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.SelfDualCongr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.CmpJ.PValIntN

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.G.RelativeIndexFlags Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix Formalism.MainNotions.G.CmpJ
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {X : Formalism.L2.Herm.Herm0 D} {u : D.what₂.Word} {w : D.what₂.places.Pl}
  {hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)} {Fl : Fills (D.gat u w hg)} {Lv : Levels Fl} {j : ℕ}
  (hj : j + 1 ≤ D.R.m) {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P}

structure LatTies (w : D.what₂.places.Pl) (Fo : FormsIn M (j + 1) hj) (β : Fo.Ch)
    (Lb : Submodule (𝓞 D.host.E) (Fin (D.sp.X (j + 1)).rank → D.host.E)) : Prop where
  siteGood_prime_torsion : ¬ D.what₂.places.resChar w ∣ Fo.T
  Lb_eq : (Fo.K β).lev.Lb = reL (rankN D (j + 1) hj) Lb
  lat : ∀ cl : {c // Fo.chOf c = β}, Submodule.IsFullLattice D.host.E (Fo.lat cl.1)
  chi : ∀ κ : (Fo.K β).lev.U, ∃ r ∈ intW D.what₂.places w, r⁻¹ ∈ intW D.what₂.places w ∧
    D.what₂.embLL r = ((Fo.K β).lev.chi κ : ℂ)



theorem latIn_of {Fo : FormsIn M (j + 1) hj} {Lc : LocIn X u w hg Lv j Fo.Ch}
    {pos : (Σ v : Fin (Fl.Pj (j + 1)).nV, Fin ((Fl.Pj (j + 1)).n' v)) ≃ D.what₂.Tau} {β : Fo.Ch}
    (hfr : FrRatJ (Lc.t β) Lc.B) (H : LatTies hj w Fo β (Lc.Lb β)) : LatIn (stepInOf hj Fo Lc pos) w β :=
  { prime := hg.1
    resChar := rfl
    siteGood_prime_torsion := H.siteGood_prime_torsion
    alg := fun v a => (X.g u w hg).spl_alg _ ((X.g u w hg).pl v).2 a
    base := fun v t => frlat_re (rankN D (j + 1) hj) ((X.g u w hg).pl v).1 ((X.g u w hg).spl _ ((X.g u w hg).pl v).2) (Lc.Lb β)
      Lc.B ((Lc.t β).fr _ ((X.g u w hg).pl v).2) (hfr _ _) ((Lc.t β).fr_lat _ ((X.g u w hg).pl v).2) (Fo.K β).lev.Lb H.Lb_eq t
    lat := H.lat
    chi := H.chi }



theorem valIntN_rec {Fo : FormsIn M (j + 1) hj} {Lc : LocIn X u w hg Lv j Fo.Ch}
    {pos : (Σ v : Fin (Fl.Pj (j + 1)).nV, Fin ((Fl.Pj (j + 1)).n' v)) ≃ D.what₂.Tau} (e : D.what₂.LL →+* (D.gat u w hg).Kf)
    (HT : ∀ β, LocTies hj Fo Lc pos e β) (hS : BlockRationalityField) (hfrac : IsFractionRing (D.gat u w hg).O (D.gat u w hg).Kf)
    (hR0 : ∀ x, x ∈ intW D.what₂.places w ↔ e x ∈ Set.range (algebraMap (D.gat u w hg).O (D.gat u w hg).Kf))
    (HL : ∀ β, LatTies hj w Fo β (Lc.Lb β)) : (stepInOf hj Fo Lc pos).ValIntN e w :=
  valIntN_of (stepInOf hj Fo Lc pos) e w (fun β => core_of hj (HT β)) hS hfrac hR0
    (fun β => latIn_of hj (HT β).frRat (HL β))

end Formalism.MainNotions.G.CmpJ.PValIntN

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypVinRec =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftDesc =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftDesc", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLift\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Formalism.GradedWeylDivisibility.FockSpaceTableaux.LBidetLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.CmpJ.PCmpLiftDesc

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Module Formalism.MainNotions.G.CmpJ
  Formalism.MainNotions.G.CmpJ.PCard Formalism.MainNotions.G.CmpJ.PRankGe Formalism.MainNotions.G.CmpJ.PInvLe Formalism.MainNotions.G.CmpJ.PFormsCl Formalism.MainNotions.G.CmpJ.PCmpLift

section Desc

variable {LL K : Type} [Field LL] [Field K] (e : LL →+* K)

theorem lin_ext_map {σ : Type} (φ : MvPolynomial σ LL →ₗ[LL] LL) (P : MvPolynomial σ LL) :
    (MvPolynomial.basisMonomials σ K).constr K (fun m : σ →₀ ℕ => e (φ (MvPolynomial.monomial m 1)))
      (MvPolynomial.map e P) = e (φ P) := by
  induction P using MvPolynomial.induction_on'
  next u a =>
    have h1 : MvPolynomial.map e (MvPolynomial.monomial u a) = e a • MvPolynomial.basisMonomials σ K u := by
      simp only [MvPolynomial.map_monomial, MvPolynomial.coe_basisMonomials, MvPolynomial.smul_monomial, smul_eq_mul, mul_one]
    have h2 : MvPolynomial.monomial u a = a • MvPolynomial.monomial u (1 : LL) := by
      rw [MvPolynomial.smul_monomial, smul_eq_mul, mul_one]
    rw [h1, map_smul, Basis.constr_basis, h2, map_smul, smul_eq_mul, smul_eq_mul, map_mul]
  next p q hp hq =>
    simp only [map_add (f := _), hp, hq]

theorem desc_span {σ : Type} (V : Submodule LL (MvPolynomial σ LL)) {Q : MvPolynomial σ LL}
    (hQ : MvPolynomial.map e Q ∈ Submodule.span K (MvPolynomial.map e '' (V : Set (MvPolynomial σ LL)))) : Q ∈ V := by
  rw [← Subspace.forall_mem_dualAnnihilator_apply_eq_zero_iff]
  intro φ hφ
  let φK : MvPolynomial σ K →ₗ[K] K :=
    (MvPolynomial.basisMonomials σ K).constr K (fun m : σ →₀ ℕ => e (φ (MvPolynomial.monomial m 1)))
  have h1 : Submodule.span K (MvPolynomial.map e '' (V : Set (MvPolynomial σ LL))) ≤ LinearMap.ker φK := by
    rw [Submodule.span_le]
    rintro _ ⟨v, hv, rfl⟩
    change φK (MvPolynomial.map e v) = 0
    rw [lin_ext_map e φ v, (Submodule.mem_dualAnnihilator φ).1 hφ v hv, map_zero]
  have h2 : φK (MvPolynomial.map e Q) = 0 := h1 hQ
  rw [lin_ext_map e φ Q] at h2
  exact (map_eq_zero_iff e e.injective).1 h2

theorem dw_desc {r n : ℕ} (ν : Fin n → ℕ) {f : MvPolynomial (Fin r × Fin n) LL}
    (h : MvPolynomial.map e f ∈ Formalism.GradedWeylDivisibility.dualWeyl K r n ν) : f ∈ Formalism.GradedWeylDivisibility.dualWeyl LL r n ν := by
  rw [Formalism.GradedWeylDivisibility.mem_dualWeyl_iff, isWH_iff] at h ⊢
  refine ⟨MvPolynomial.map_injective e e.injective ?_, fun l j hlj => MvPolynomial.map_injective e e.injective ?_⟩
  · rw [whc_map, h.1]
  · rw [colAddGen_map, MvPolynomial.map_rename, h.2 l j hlj]

theorem dw_span {r n : ℕ} (ν : Fin n → ℕ) :
    Formalism.GradedWeylDivisibility.dualWeyl K r n ν ≤
      Submodule.span K (MvPolynomial.map e '' (Formalism.GradedWeylDivisibility.dualWeyl LL r n ν : Set (MvPolynomial (Fin r × Fin n) LL))) := by
  refine (dualWeyl_desc e ν).trans (Submodule.span_mono ?_)
  rintro _ ⟨Q, hQ, rfl⟩
  exact ⟨Q, dw_desc e ν hQ, rfl⟩

theorem span_prod_le {S : Type} [Fintype S] {σ : S → Type} {τ : Type} (f : ∀ s, σ s → τ)
    (Ms : ∀ s, Submodule K (MvPolynomial (σ s) K)) (Ns : ∀ s, Submodule LL (MvPolynomial (σ s) LL))
    (hM : ∀ s, Ms s ≤ Submodule.span K (MvPolynomial.map e '' (Ns s : Set (MvPolynomial (σ s) LL)))) :
    Submodule.span K {Z | ∃ F : ∀ s, MvPolynomial (σ s) K, (∀ s, F s ∈ Ms s) ∧ Z = ∏ s, MvPolynomial.rename (f s) (F s)} ≤
      Submodule.span K (MvPolynomial.map e '' (Submodule.span LL
        {Z | ∃ F : ∀ s, MvPolynomial (σ s) LL, (∀ s, F s ∈ Ns s) ∧ Z = ∏ s, MvPolynomial.rename (f s) (F s)} :
          Set (MvPolynomial τ LL))) := by
  rw [Submodule.span_le]
  rintro _ ⟨F, hF, rfl⟩
  let A : S → Set (MvPolynomial τ K) := fun s =>
    {y | ∃ Q : MvPolynomial (σ s) LL, Q ∈ Ns s ∧ y = MvPolynomial.rename (f s) (MvPolynomial.map e Q)}
  have hx : ∀ s ∈ Finset.univ, MvPolynomial.rename (f s) (F s) ∈ Submodule.span K (A s) := by
    intro s _
    have h1 := Submodule.mem_map_of_mem (f := (MvPolynomial.rename (R := K) (f s)).toLinearMap) (hM s (hF s))
    rw [Submodule.map_span] at h1
    refine Submodule.span_mono ?_ h1
    rintro _ ⟨_, ⟨Q, hQ, rfl⟩, rfl⟩
    exact ⟨Q, hQ, rfl⟩
  have h := prod_mem_span Finset.univ A _ hx
  refine Submodule.span_mono ?_ h
  rintro _ ⟨a, ha, rfl⟩
  choose Q hQ hQe using fun s => ha s (Finset.mem_univ s)
  refine ⟨∏ s, MvPolynomial.rename (f s) (Q s), Submodule.subset_span ⟨Q, hQ, rfl⟩, ?_⟩
  rw [map_prod]
  refine Finset.prod_congr rfl fun s _ => ?_
  rw [hQe s, MvPolynomial.map_rename]

theorem vsp_span {n' m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) :
    Vsp K lam0 ≤ Submodule.span K (MvPolynomial.map e '' (Vsp LL lam0 : Set (MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) LL))) := by
  have hM : ∀ s : Fin n', (if Antitone (lamAt lam0 s) then Formalism.GradedWeylDivisibility.dualWeyl K (m + 1) (m + 1) (nuOf (lamAt lam0 s)) else ⊥) ≤
      Submodule.span K (MvPolynomial.map e '' (((if Antitone (lamAt lam0 s) then
        Formalism.GradedWeylDivisibility.dualWeyl LL (m + 1) (m + 1) (nuOf (lamAt lam0 s)) else ⊥ : Submodule LL _)) : Set (MvPolynomial (Fin (m + 1) × Fin (m + 1)) LL))) := by
    intro s
    split_ifs
    · exact dw_span e _
    · exact bot_le
  exact span_prod_le e (σ := fun _ => Fin (m + 1) × Fin (m + 1)) (fun s v => (s, v)) _ _ hM

theorem vtup_span {p : ℕ} {O Kf : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
    (P : Places p O Kf) : VtupR P K ≤ Submodule.span K (MvPolynomial.map e '' (VtupR P LL : Set (XR P LL))) :=
  span_prod_le e (σ := fun v => Fin (P.n' v) × (Fin (P.m + 1) × Fin (P.m + 1))) (fun v x => (⟨v, x⟩ : Var P)) _ _
    fun v => vsp_span e (P.lam0 v)

theorem span_prod_map {S : Type} [Fintype S] {σ : S → Type} {τ : Type} (f : ∀ s, σ s → τ)
    (Ns : ∀ s, Submodule LL (MvPolynomial (σ s) LL)) (Ms : ∀ s, Submodule K (MvPolynomial (σ s) K))
    (h : ∀ s, ∀ x ∈ Ns s, MvPolynomial.map e x ∈ Ms s) {Z : MvPolynomial τ LL}
    (hZ : Z ∈ Submodule.span LL {Z | ∃ F : ∀ s, MvPolynomial (σ s) LL, (∀ s, F s ∈ Ns s) ∧ Z = ∏ s, MvPolynomial.rename (f s) (F s)}) :
    MvPolynomial.map e Z ∈
      Submodule.span K {Z | ∃ F : ∀ s, MvPolynomial (σ s) K, (∀ s, F s ∈ Ms s) ∧ Z = ∏ s, MvPolynomial.rename (f s) (F s)} := by
  induction hZ using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨F, hF, rfl⟩ := hx
    refine Submodule.subset_span ⟨fun s => MvPolynomial.map e (F s), fun s => h s _ (hF s), ?_⟩
    simp only [map_prod, MvPolynomial.map_rename]
  | zero => rw [map_zero]; exact Submodule.zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul a x _ hx => rw [mapE_smul]; exact Submodule.smul_mem _ _ hx

theorem vsp_map {n' m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) {x : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) LL}
    (hx : x ∈ Vsp LL lam0) : MvPolynomial.map e x ∈ Vsp K lam0 := by
  refine span_prod_map e (σ := fun _ => Fin (m + 1) × Fin (m + 1)) (fun s v => (s, v)) _ _ (fun s y hy => ?_) hx
  split_ifs at hy ⊢
  · exact Formalism.GradedWeylDivisibility.dualWeylMap LL K e _ _ _ y hy
  · rw [(Submodule.mem_bot _).1 hy, map_zero]
    exact Submodule.zero_mem _

theorem vtup_map {p : ℕ} {O Kf : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
    (P : Places p O Kf) {Q : XR P LL} (hQ : Q ∈ VtupR P LL) : MvPolynomial.map e Q ∈ VtupR P K :=
  span_prod_map e (σ := fun v => Fin (P.n' v) × (Fin (P.m + 1) × Fin (P.m + 1))) (fun v x => (⟨v, x⟩ : Var P)) _ _
    (fun v _ hy => vsp_map e (P.lam0 v) hy) hQ

end Desc

section Rec

variable {D : D7} {u : D.what₂.Word} {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P} {p : ℕ} {i : ℕ} {hi : i ≤ D.R.m} {G : GAtP p}

theorem vtupDesc_holds (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) : VtupDesc S e := by
  intro β Q hQ
  exact vtup_map D.what₂.embLL _ (desc_span e (VtupR (Hc S β).P D.what₂.LL) (vtup_span e (Hc S β).P hQ))

theorem cmpLiftOf_of_two (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) (hV : ∀ β, EvValLe S β) (hI : CmpInvOf S e) :
    CmpLiftOf S e :=
  cmpLiftOf_of S e (vtupDesc_holds S e) hV hI

end Rec

end Formalism.MainNotions.G.CmpJ.PCmpLiftDesc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftDesc =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftTw =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftTw", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLift\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftDesc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.CmpJ.PCmpLiftTw

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Module Formalism.MainNotions.G.CmpJ
  Formalism.MainNotions.G.CmpJ.PCard Formalism.MainNotions.G.CmpJ.PRankGe Formalism.MainNotions.G.CmpJ.PInvLe Formalism.MainNotions.G.CmpJ.PFormsCl Formalism.MainNotions.G.CmpJ.PCmpLift
  Formalism.MainNotions.G.CmpJ.PCmpLiftDesc

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {T fT : ℕ} {bad : Set (HeightOneSpectrum (𝓞 F))}
  {Tau : Type} [Fintype Tau] {S : StepLevel F E σ J T fT bad} {emb : Tau → E →+* ℂ} {c : ℤ}

theorem tw_triv (X : DetTw S emb c) {y0 : UPts σ J (FiniteAdeleRing (𝓞 F) F)} {γ : GL (Fin n) E}
    (hγ : γ ∈ UJ (σ : E →+* E) J) {κ : S.U}
    (h : y0.1 = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ * y0.1 * κ.1) :
    ∏ τ, (emb τ (γ : Matrix (Fin n) (Fin n) E).det) ^ c = 1 := by
  let xg : UPts σ J (FiniteAdeleRing (𝓞 F) F) := ⟨bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ, ratInU γ hγ⟩
  let xk : UPts σ J (FiniteAdeleRing (𝓞 F) F) := ⟨κ.1, ((S.U_eq κ.1).1 κ.2).1⟩
  have e1 : xg * y0 * xk = y0 := Subtype.ext h.symm
  have e2 : X.ch xg = 1 := by
    have h3 := congrArg X.ch e1
    rw [map_mul, map_mul, X.ch_U xk κ.2, mul_one] at h3
    exact mul_right_cancel (h3.trans (one_mul _).symm)
  have h4 := X.ch_rat γ hγ xg rfl
  rwa [e2, Units.val_one, one_mul] at h4

theorem detF_tr (γ : GL (Fin n) E) {y y' : Formalism.L2.Forms.Frames (gramC J emb)} (hy : IsTr (atInf emb γ) y' y) :
    detF c y = (∏ τ, (emb τ (γ : Matrix (Fin n) (Fin n) E).det) ^ c) * detF c y' := by
  unfold detF
  rw [← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun τ _ => ?_
  rw [hy τ, Matrix.det_mul, mul_zpow]
  congr 2
  simp [atInf, RingHom.map_det]

theorem foInv_twist (X : DetTw S emb c) {y0 : UPts σ J (FiniteAdeleRing (𝓞 F) F)} {h : Formalism.L2.Forms.Frames (gramC J emb) → ℂ}
    (hh : FoInv S emb y0 h) : FoInv S emb y0 (fun z => (detF c z)⁻¹ * h z) := by
  intro γ hγ κ hy0 y y' hy
  simp only
  rw [hh γ hγ κ hy0 y y' hy, detF_tr γ hy, tw_triv X hγ hy0, one_mul]
  ring

end Gen

section Rec

variable {D : D7} {u : D.what₂.Word} {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P} {p : ℕ} {i : ℕ} {hi : i ≤ D.R.m} {G : GAtP p}

def CmpInvRawOf (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) : Prop :=
  BlockRationalityField → (∀ β, S.Core e β) → KAat.ChX S → ∀ β rep, RepOk S β rep → ∀ c
    (g : ∀ v, GL (Fin ((Hc S β).P.m + 1)) ((Hc S β).P.Qq v)) (γ0 : GL (Fin (D.R.N i)) D.host.E) (κ0 : (S.K β).lev.U),
    γ0 ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D i hi) →
    (∀ v, (rep c).2 v = colSpan ((Hc S β).P.W v) (g v : Matrix (Fin ((Hc S β).P.m + 1)) (Fin ((Hc S β).P.m + 1)) ((Hc S β).P.Qq v))) →
    (S.loc β).IsPt (rep c).1 g (bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ0 * ((S.K β).y c).1 * κ0.1) →
    ∀ Q ∈ YInv (Hc S β) e (rep c).1 (rep c).2,
      FoInv (S.K β).lev (embT D) ((S.K β).y c) (fun z =>
        evC (Hc S β).P (S.loc β).rk S.pos (gramC (gramN D i hi) (embT D)) (crdB (embT D) (S.loc β).B)
          (MvPolynomial.map D.what₂.embLL Q) (foTrR (embT D) γ0 z))

theorem cmpInvOf_of_raw (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) (hR : CmpInvRawOf S e) : CmpInvOf S e := by
  intro hS H X β rep hok c g γ0 κ0 hγ0 hL hpt Q hQ
  exact foInv_twist (S.tw β) (hR hS H X β rep hok c g γ0 κ0 hγ0 hL hpt Q hQ)

theorem cmpLiftOf_of_raw (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) (hV : ∀ β, EvValLe S β) (hR : CmpInvRawOf S e) :
    CmpLiftOf S e :=
  cmpLiftOf_of_two S e hV (cmpInvOf_of_raw S e hR)

end Rec

section Card

variable {D : D7} {Tw : TwForms D} {u : D.what₂.Word} {μ : D.what₂.Tup} {w : D.what₂.places.Pl}
  {h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)} {Fl : Fills (D.gat u w h)} {Lv : Levels Fl}

end Card

end Formalism.MainNotions.G.CmpJ.PCmpLiftTw
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftTw =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftInv =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftInv", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftTw\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.CmpJ.PCmpLiftInv

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Module Formalism.MainNotions.G.CmpJ
  Formalism.MainNotions.G.CmpJ.PCard Formalism.MainNotions.G.CmpJ.PRankGe Formalism.MainNotions.G.CmpJ.PInvLe Formalism.MainNotions.G.CmpJ.PFormsCl Formalism.MainNotions.G.CmpJ.PCmpLift
  Formalism.MainNotions.G.CmpJ.PCmpLiftDesc Formalism.MainNotions.G.CmpJ.PCmpLiftTw

theorem grp2 {Γ : Type} [Group Γ] (b y k : Γ) (h : y = b * y * k) : b = y * k⁻¹ * y⁻¹ := by
  rw [show y * k⁻¹ * y⁻¹ = (b * y * k) * k⁻¹ * y⁻¹ by rw [← h]]
  group

section Rec

variable {D : D7} {u : D.what₂.Word} {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P} {p : ℕ} {i : ℕ} {hi : i ≤ D.R.m} {G : GAtP p}



theorem cmpInvRaw_holds (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) : CmpInvRawOf S e := by
  intro hS H X β rep hok c g γ0 κ0 hγ0 hL hpt Q hQ γ hγ κ hyc y y' hy
  have Hb := H β
  obtain ⟨x, hx⟩ : ∃ x, x = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ0 * ((S.K β).y c).1 * κ0.1 :=
    ⟨_, rfl⟩
  rw [← hx] at hpt
  have hxU : x ∈ UPts (sigD D) (gramN D i hi) (FiniteAdeleRing (𝓞 D.host.F) D.host.F) := by
    rw [hx]
    exact Subgroup.mul_mem _ (Subgroup.mul_mem _ (PStabEq.bc_mem hγ0) ((S.K β).y c).2) (PStabEq.U_le κ0.2)
  have hb : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ =
      ((S.K β).y c).1 * κ.1⁻¹ * ((S.K β).y c).1⁻¹ := grp2 _ _ _ hyc
  have hyU : ((S.K β).y c).1⁻¹ * bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ * ((S.K β).y c).1 ∈
      (S.K β).lev.U := by
    rw [hb, show ((S.K β).y c).1⁻¹ * (((S.K β).y c).1 * κ.1⁻¹ * ((S.K β).y c).1⁻¹) * ((S.K β).y c).1 = κ.1⁻¹ by group]
    exact (S.K β).lev.U.inv_mem κ.2
  have hδU : γ0 * γ * γ0⁻¹ ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D i hi) :=
    Subgroup.mul_mem _ (Subgroup.mul_mem _ hγ0 hγ) (Subgroup.inv_mem _ hγ0)
  have hδx : x⁻¹ * bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (γ0 * γ * γ0⁻¹) * x ∈ (S.K β).lev.U :=
    PStabEq.conj_mem' x ((S.K β).y c).1 γ0 γ κ0 hx hyU
  obtain ⟨⟨γ', hfix⟩, hγ'⟩ := (PStabEq.stab_bij Hb.good Hb.int Hb.hypP (X.hypC β) Hb.bad_p Hb.actB Hb.gam Hb.gamU (rep c).1
    (X.inj β _) (X.onto β _) (rep c).2 g hL ⟨x, hxU⟩ hpt).2 ⟨γ0 * γ * γ0⁻¹, hδU, hδx⟩
  have hgam : (S.loc β).gamI (rep c).1 γ' = γ0 * γ * γ0⁻¹ := congrArg Subtype.val hγ'
  obtain ⟨κa, hκa⟩ := awayEx_of Hb.good (S.K β).lev Hb.gam (rep c).1 γ'
  obtain ⟨r, hr, hr1⟩ := Hb.chi (rep c).1 γ' κa hκa

  have hN : natActR (Hc S β).P D.what₂.LL (blkLL (S.loc β) (sigD D) (tEL D) S.pos ((S.loc β).gamI (rep c).1 γ')) Q = r • Q := by
    apply MvPolynomial.map_injective e e.injective
    have h1 := hQ.2 γ' hfix
    rw [actX_map (S.loc β) (tEL D) S.pos e Hb.actB Hb.pos_emb (rep c).1 γ' Q] at h1
    have hr1' : algebraMap G.O G.Kf (((Hc S β).lev (rep c).1).χ γ' : G.O) * e r = 1 := hr1
    rw [mapE_smul e r Q, ← h1, ← algebraMap_smul G.Kf (((Hc S β).lev (rep c).1).χ γ' : G.O), smul_smul, mul_comm (e r), hr1',
      one_smul]

  have e1 : x⁻¹ * bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (γ0 * γ * γ0⁻¹) * x =
      κ0.1⁻¹ * κ.1⁻¹ * κ0.1 := by
    rw [hx, map_mul, map_mul, map_inv, hb]
    group
  have ht : ∀ v ∈ S.bad, bc (prV (E := D.host.E) v) (κa * (κ0⁻¹ * κ * κ0)).1 = 1 := by
    intro v hv
    have hvp := Hb.bad_p v hv
    have a1 := hκa.2 v hvp
    have a2 : bc (prV (E := D.host.E) v) ((S.loc β).yG (rep c).1) = bc (prV (E := D.host.E) v) x := (hpt.1 v hvp).symm
    have key : bc (prV (E := D.host.E) v) κa.1 =
        bc (prV (E := D.host.E) v) (x⁻¹ * bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (γ0 * γ * γ0⁻¹) * x) := by
      rw [a1, hgam]
      simp only [map_mul, map_inv, a2]
    have e2 : (κa * (κ0⁻¹ * κ * κ0)).1 = κa.1 * (κ0.1⁻¹ * κ.1 * κ0.1) := by
      simp only [Subgroup.coe_mul, Subgroup.coe_inv]
    rw [e2, map_mul, key, ← map_mul, e1,
      show κ0.1⁻¹ * κ.1⁻¹ * κ0.1 * (κ0.1⁻¹ * κ.1 * κ0.1) = 1 by group, map_one]
  have hc : ((S.K β).lev.chi κa : ℂ) * ((S.K β).lev.chi κ : ℂ) = 1 := by
    have h0 := congrArg (fun w : ℂˣ => (w : ℂ)) ((S.K β).lev.chi_triv _ ht)
    simp only [map_mul, map_inv, Units.val_mul, Units.val_one, Units.val_inv_eq_inv_val] at h0
    have hne : ((S.K β).lev.chi κ0 : ℂ) ≠ 0 := Units.ne_zero _
    field_simp at h0
    linear_combination h0

  have hz : IsTr (atInf (embT D) ((S.loc β).gamI (rep c).1 γ').1) (foTrR (embT D) γ0 y') (foTrR (embT D) γ0 y) := by
    rw [foIsTr_iff, hgam, (foIsTr_iff (embT D) γ y' y).1 hy, ← foTrR_mul, ← foTrR_mul]
    congr 1
    group
  have hE := evC_blk (S.loc β) (tEL D) S.pos (embT D) D.what₂.embLL (tEL_emb D) ((S.loc β).gamI (rep c).1 γ')
    (unit_of_std (S.loc β).B _ Hb.std (Hb.gamU _ γ')) (gramC (gramN D i hi) (embT D)) _ _ hz Q
  rw [hN, Formalism.L2.G.Cmp.map_smul', map_smul, Pi.smul_apply, smul_eq_mul, hr] at hE
  show _ = ((S.K β).lev.chi κ : ℂ) * _
  linear_combination (((S.K β).lev.chi κ : ℂ)) * hE - (evC (Hc S β).P (S.loc β).rk S.pos (gramC (gramN D i hi) (embT D))
    (crdB (embT D) (S.loc β).B) (MvPolynomial.map D.what₂.embLL Q) (foTrR (embT D) γ0 y)) * hc

theorem cmpLiftOf_of_evVal (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) (hV : ∀ β, EvValLe S β) : CmpLiftOf S e :=
  cmpLiftOf_of_raw S e hV (cmpInvRaw_holds S e)

end Rec

section Card

variable {D : D7} {Tw : TwForms D} {u : D.what₂.Word} {μ : D.what₂.Tup} {w : D.what₂.places.Pl}
  {h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)} {Fl : Fills (D.gat u w h)} {Lv : Levels Fl}

end Card

end Formalism.MainNotions.G.CmpJ.PCmpLiftInv
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftInv =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.NuOfAntiEv =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.NuOfAntiEv", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.RowActWeylMemDescentLattice\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.SwRowGenMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypFormsCl\nimport Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.WeylEqSpanInt\npublic import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.WeylLatticeDescentHolds\nimport Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.WeylLatticeDescentOfIntegralModels\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FormSK\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Matrix Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.BasicNotions Formalism.L2.Forms

noncomputable section

namespace Formalism.L2.G.EvLe

open Formalism.L2.G.Cmp Formalism.L2.G.RelativeIndexFlags Formalism.L2.G.RelativeIndexFlags.Core

section Gen

variable {p : ℕ} {O Kf : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  (P : Places p O Kf)

theorem vsp_le (v : Fin P.nV) :
    Vsp ℂ (P.lam0 v) ≤ Submodule.span ℂ {Y | ∃ f : Fin (P.n' v) → MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) ℤ,
      (∀ s, f s ∈ weyl ℤ (P.m + 1) (P.m + 1) le_rfl (nuOf (lamAt (P.lam0 v) s))) ∧
        Y = ∏ s, blockEmb ℂ s (map (Int.castRingHom ℂ) (f s))} := by
  let T : Fin (P.n' v) → Set (MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) ℂ) := fun s =>
    (fun f => map (Int.castRingHom ℂ) f) '' (weyl ℤ (P.m + 1) (P.m + 1) le_rfl (nuOf (lamAt (P.lam0 v) s)) :
      Set (MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) ℤ))
  have hM : ∀ s F, F ∈ (if Antitone (lamAt (P.lam0 v) s) then
      dualWeyl ℂ (P.m + 1) (P.m + 1) (nuOf (lamAt (P.lam0 v) s)) else ⊥) → F ∈ Submodule.span ℂ (T s) := by
    intro s F hF
    have ha := lamAt_anti (P.lam0 v) (P.dom v) s
    rw [if_pos ha, ← Formalism.L2.G.Model.sw_weyl_eq ℂ (P.m + 1) (P.m + 1) le_rfl _ (_root_.Formalism.L2.G.Model.TS.nuOf_antitone ha),
      weyl_eq_span_int] at hF
    exact hF
  have hP := prodSpan (O := ℂ) (I := Fin (P.n' v)) (B := fun _ => MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) ℂ)
    (fun s => (blockEmb ℂ (S := Fin (P.n' v)) (k := P.m + 1) (n := P.m + 1) s).toLinearMap) T
  unfold Vsp tensorLat
  refine (Submodule.span_mono ?_).trans (hP.le.trans (Submodule.span_mono ?_))
  · rintro _ ⟨F, hF, rfl⟩
    exact ⟨F, fun s => hM s _ (hF s), rfl⟩
  · rintro _ ⟨F, hF, rfl⟩
    choose f hf hfe using fun s => (Set.mem_image _ _ _).1 (hF s)
    exact ⟨f, hf, Finset.prod_congr rfl fun s _ => by rw [← hfe s]; rfl⟩

theorem vtup_le : VtupR P ℂ ≤ Submodule.span ℂ {X | ∃ f : ∀ v, Fin (P.n' v) → MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) ℤ,
    (∀ v s, f v s ∈ weyl ℤ (P.m + 1) (P.m + 1) le_rfl (nuOf (lamAt (P.lam0 v) s))) ∧
      X = ∏ v, rename (fun x => (⟨v, x⟩ : Var P)) (∏ s, blockEmb ℂ s (map (Int.castRingHom ℂ) (f v s)))} := by
  let T : ∀ v : Fin P.nV, Set (MvPolynomial (Fin (P.n' v) × (Fin (P.m + 1) × Fin (P.m + 1))) ℂ) := fun v =>
    {Y | ∃ f : Fin (P.n' v) → MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) ℤ,
      (∀ s, f s ∈ weyl ℤ (P.m + 1) (P.m + 1) le_rfl (nuOf (lamAt (P.lam0 v) s))) ∧
        Y = ∏ s, blockEmb ℂ s (map (Int.castRingHom ℂ) (f s))}
  have hP := prodSpan (O := ℂ) (I := Fin P.nV)
    (B := fun v => MvPolynomial (Fin (P.n' v) × (Fin (P.m + 1) × Fin (P.m + 1))) ℂ)
    (fun v => (rename (R := ℂ) (fun x : Fin (P.n' v) × (Fin (P.m + 1) × Fin (P.m + 1)) => (⟨v, x⟩ : Var P))).toLinearMap) T
  unfold VtupR
  refine (Submodule.span_mono ?_).trans (hP.le.trans (Submodule.span_mono ?_))
  · rintro _ ⟨F, hF, rfl⟩
    exact ⟨F, fun v => vsp_le P v (hF v), rfl⟩
  · rintro _ ⟨F, hF, rfl⟩
    have hF' : ∀ v, ∃ f : Fin (P.n' v) → MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) ℤ,
        (∀ s, f s ∈ weyl ℤ (P.m + 1) (P.m + 1) le_rfl (nuOf (lamAt (P.lam0 v) s))) ∧
          F v = ∏ s, blockEmb ℂ s (map (Int.castRingHom ℂ) (f s)) := hF
    choose f hf hfe using hF'
    exact ⟨f, hf, Finset.prod_congr rfl fun v _ => by rw [hfe v]; rfl⟩

variable {Tau : Type} [Fintype Tau] (pos : (Σ v : Fin P.nV, Fin (P.n' v)) ≃ Tau)

theorem blockRowSubstitution_one (v : Fin P.nV) (s : Fin (P.n' v)) (f : MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) ℤ) :
    map (RingHom.id ℂ) (bl P rfl pos (fun _ => (1 : GL (Fin (P.m + 1)) ℂ)) v s f) = map (Int.castRingHom ℂ) f := by
  have hn : nAt P rfl pos (fun _ => (1 : GL (Fin (P.m + 1)) ℂ)) v s = 1 := by
    unfold nAt; split_ifs <;> simp
  have hi : niAt P rfl pos (fun _ => (1 : GL (Fin (P.m + 1)) ℂ)) v s = 1 := by
    unfold niAt; split_ifs <;> simp
  unfold bl
  rw [hn, hi, Matrix.det_one, _root_.one_zpow, one_smul, rowAct_one, MvPolynomial.map_id]

theorem gen_mem (G : Tau → Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) ℂ) (M : Tau → GL (Fin (P.m + 1)) ℂ)
    (lam : Tau → DomWeight (P.m + 1)) (hw : WtTie P rfl pos lam)
    (f : ∀ v, Fin (P.n' v) → MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) ℤ)
    (hf : ∀ v s, f v s ∈ weyl ℤ (P.m + 1) (P.m + 1) le_rfl (nuOf (lamAt (P.lam0 v) s))) :
    evC P rfl pos G (fun τ => (M τ : Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) ℂ))
      (∏ v, rename (fun x => (⟨v, x⟩ : Var P)) (∏ s, blockEmb ℂ s (map (Int.castRingHom ℂ) (f v s)))) ∈ ValC G lam := by
  choose ft hft hev using fun x : Σ v : Fin P.nV, Fin (P.n' v) =>
    (blk_ev P pos lam M (fun _ => 1) (RingHom.id ℂ) (fun m l _ => oddFact_pf ℤ m l) hw x).1 (f x.1 x.2) (hf x.1 x.2)
  have hX : (∏ v, rename (fun x => (⟨v, x⟩ : Var P)) (∏ s, blockEmb ℂ s (map (Int.castRingHom ℂ) (f v s)))) =
      map (RingHom.id ℂ) (gen P rfl pos (fun _ => (1 : GL (Fin (P.m + 1)) ℂ)) f) := by
    rw [map_gen]
    simp only [blockRowSubstitution_one]
  have hM : (fun τ => (M τ : Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) ℂ)) = mcOf M (RingHom.id ℂ) := by
    funext τ; ext a b; rfl
  have key : evC P rfl pos G (mcOf M (RingHom.id ℂ)) (map (RingHom.id ℂ) (gen P rfl pos (fun _ => 1) f)) =
      fnOf G (shiftOf lam) (kcOf M (fun _ => 1) (RingHom.id ℂ))
        (ten fun τ => map (Int.castRingHom ℂ) (ft (pos.symm τ))) := by
    funext z
    refine evC_gen P pos lam M (fun _ => 1) (RingHom.id ℂ) G f (fun τ => ft (pos.symm τ)) (fun x => ?_) z
    show BlockRealisation P pos lam M (fun _ => 1) (RingHom.id ℂ) x (f x.1 x.2) (ft (pos.symm (pos x)))
    rw [pos.symm_apply_apply]
    exact hev x
  have hK : kcOf M (fun _ => 1) (RingHom.id ℂ) = fun τ => (M τ : Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) ℂ) := by
    funext τ; ext a b; simp [kcOf]
  have hP : ten (fun τ => map (Int.castRingHom ℂ) (ft (pos.symm τ))) ∈ CSpan lam := by
    refine Submodule.subset_span ⟨_, fun τ => ?_, rfl⟩
    have h1 := hft (pos.symm τ)
    rw [pos.apply_symm_apply] at h1
    unfold delSq at h1 ⊢
    exact map_mem_weyl le_rfl _ _ h1
  have h0 : fnOf G (shiftOf lam) 1 (ten fun τ => map (Int.castRingHom ℂ) (ft (pos.symm τ))) ∈ ValC G lam :=
    Submodule.mem_map_of_mem hP
  have hu : ∀ τ, IsUnit ((M τ : Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) ℂ)).det := fun τ =>
    (Matrix.isUnit_iff_isUnit_det _).1 (M τ).isUnit
  have h1 := Formalism.MainNotions.G.CmpJ.PFormsCl.foValC_tr lam (fun τ => (M τ : Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) ℂ)) hu h0
  rw [hX, hM, key, hK]
  convert h1 using 1
  funext y
  simp [fnOf, Formalism.MainNotions.G.CmpJ.PFormsCl.foTr]

end Gen

section Main

variable {p : ℕ} {O Kf : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  (P : Places p O Kf) {Tau : Type} [Fintype Tau] {n : ℕ}

theorem evC_le (h : P.m + 1 = n) (pos : (Σ v : Fin P.nV, Fin (P.n' v)) ≃ Tau) (G : Tau → Matrix (Fin n) (Fin n) ℂ)
    (M : Tau → GL (Fin n) ℂ) (lam : Tau → DomWeight n) (hw : WtTie P h pos lam) :
    ∀ Q ∈ VtupR P ℂ, evC P h pos G (fun τ => (M τ : Matrix (Fin n) (Fin n) ℂ)) Q ∈ ValC G lam := by
  subst h
  intro Q hQ
  have hS := vtup_le P hQ
  clear hQ
  induction hS using Submodule.span_induction with
  | mem X hX =>
    obtain ⟨f, hf, rfl⟩ := hX
    exact gen_mem P pos G M lam hw f hf
  | zero => rw [map_zero]; exact zero_mem _
  | add a b _ _ ha hb => rw [map_add]; exact add_mem ha hb
  | smul c a _ ha => rw [map_smul]; exact Submodule.smul_mem _ c ha

end Main

end Formalism.L2.G.EvLe
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.NuOfAntiEv =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypEvChain =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.HypEvChain", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLift\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLiftInv\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.NuOfAntiEv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.CmpJ.PEvValChain

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Module Formalism.MainNotions.G.CmpJ
  Formalism.MainNotions.G.CmpJ.PCard Formalism.MainNotions.G.CmpJ.PRankGe Formalism.MainNotions.G.CmpJ.PInvLe Formalism.MainNotions.G.CmpJ.PFormsCl Formalism.MainNotions.G.CmpJ.PCmpLift
  Formalism.MainNotions.G.CmpJ.PCmpLiftDesc Formalism.MainNotions.G.CmpJ.PCmpLiftTw Formalism.MainNotions.G.CmpJ.PCmpLiftInv

section Rec

variable {D : D7} {u : D.what₂.Word} {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P} {p : ℕ} {i : ℕ} {hi : i ≤ D.R.m} {G : GAtP p}

theorem evValLe_of_wt (S : StepIn M i hi G) (β : S.Ch) (hw : WtTie (Hc S β).P (S.loc β).rk S.pos (M.lam i)) :
    EvValLe S β := by
  intro Q hQ
  exact Formalism.L2.G.EvLe.evC_le (Hc S β).P (S.loc β).rk S.pos (gramC (gramN D i hi) (embT D))
    (atInfGL (embT D) (S.loc β).B⁻¹) (M.lam i) hw Q hQ

theorem cmpLiftOf_holds (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) : CmpLiftOf S e := by
  intro hS H X
  exact cmpLiftOf_of_evVal S e (fun β => evValLe_of_wt S β (H β).wt) hS H X

end Rec

section Card

variable {D : D7} {Tw : TwForms D} {u : D.what₂.Word} {μ : D.what₂.Tup} {w : D.what₂.places.Pl}
  {h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)} {Fl : Fills (D.gat u w h)} {Lv : Levels Fl}

end Card

end Formalism.MainNotions.G.CmpJ.PEvValChain
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypEvChain =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypFin =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.HypFin", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.ExistsIsCGBases\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.ChF

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.MainNotions.G.CmpJ Formalism.MainNotions.G.KAat

variable {D : D7} {u : D.what₂.Word} {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P} {p : ℕ}
  {i : ℕ} {hi : i ≤ D.R.m} {G : GAtP p} {S : StepIn M i hi G} {e : D.what₂.LL →+* G.Kf}


open Classical in
theorem finClasses_of (H : ∀ β, S.Core e β) (X : ChX S) : G.FinClasses := by
  intro a
  refine ⟨((Finset.univ : Finset (C.cls i)).filter fun c => ∃ L, G.P.IsLatTup L ∧ clsOf H a L = c).attach.image
    (fun c => ((Finset.mem_filter.1 c.2).2).choose), ?_, ?_⟩
  · intro L hL
    obtain ⟨c, _, rfl⟩ := Finset.mem_image.1 hL
    exact ((Finset.mem_filter.1 c.2).2).choose_spec.1
  · intro L hL
    have hc : clsOf H a L ∈ (Finset.univ : Finset (C.cls i)).filter fun c => ∃ L, G.P.IsLatTup L ∧ clsOf H a L = c :=
      Finset.mem_filter.2 ⟨Finset.mem_univ _, L, hL, rfl⟩
    refine ⟨_, Finset.mem_image.2 ⟨⟨clsOf H a L, hc⟩, Finset.mem_attach _ _, rfl⟩, ?_⟩
    have spec := ((Finset.mem_filter.1 hc).2).choose_spec
    obtain ⟨_, γ, hγ⟩ := (clsOf_iff H X a a _ L spec.1 hL).1 spec.2
    exact ⟨γ, hγ⟩

end Formalism.MainNotions.G.ChF

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypFin =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypForms =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.HypForms", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypInvLe\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.FrobeniusNoKernelOfFrobeniusSimilitude\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.ValuationClassTranslateMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.Statement\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.ChF

open Formalism.BasicNotions Formalism.L2.Forms NumberField IsDedekindDomain Matrix Formalism.UG Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {T f : ℕ} {bad : Set (HeightOneSpectrum (𝓞 F))}
  {ι : Type} [Fintype ι]

theorem isTr_inv_mul (emb : ι → E →+* ℂ) (hc : ∀ τ x, emb τ (σ x) = starRingEnd ℂ (emb τ x)) (γ1 γ2 : GL (Fin n) E)
    (h1 : γ1 ∈ UJ (σ : E →+* E) J) (h2 : γ2 ∈ UJ (σ : E →+* E) J) (z : Formalism.L2.Forms.Frames (gramC J emb)) :
    IsTr (atInf emb ((γ1⁻¹ * γ2 : GL (Fin n) E) : Matrix (Fin n) (Fin n) E))
      (frameTranslate emb hc γ2⁻¹ ((UJ _ _).inv_mem h2) z) (frameTranslate emb hc γ1⁻¹ ((UJ _ _).inv_mem h1) z) := by
  intro τ
  show atInf emb ((γ1⁻¹ : GL (Fin n) E) : Matrix (Fin n) (Fin n) E) τ * z.1 τ =
    atInf emb ((γ1⁻¹ * γ2 : GL (Fin n) E) : Matrix (Fin n) (Fin n) E) τ *
      (atInf emb ((γ2⁻¹ : GL (Fin n) E) : Matrix (Fin n) (Fin n) E) τ * z.1 τ)
  rw [← Matrix.mul_assoc]
  congr 1
  simp only [atInf]
  rw [← Matrix.map_mul, ← Units.val_mul, mul_assoc, mul_inv_cancel, mul_one]

def LawAt (S : StepLevel F E σ J T f bad) (emb : ι → E →+* ℂ) (y0 : UPts σ J (FiniteAdeleRing (𝓞 F) F))
    (v : Formalism.L2.Forms.Frames (gramC J emb) → ℂ) : Prop :=
  ∀ γ : GL (Fin n) E, γ ∈ UJ (σ : E →+* E) J → ∀ κ : S.U,
    y0.1 = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ * y0.1 * κ.1 →
    ∀ y y' : Formalism.L2.Forms.Frames (gramC J emb), IsTr (atInf emb γ) y' y → v y = (S.chi κ : ℂ) * v y'

theorem law_wd (S : StepLevel F E σ J T f bad) (emb : ι → E →+* ℂ) (hc : ∀ τ x, emb τ (σ x) = starRingEnd ℂ (emb τ x))
    (y0 : UPts σ J (FiniteAdeleRing (𝓞 F) F)) (v : Formalism.L2.Forms.Frames (gramC J emb) → ℂ) (hv : LawAt S emb y0 v)
    (γ1 γ2 : GL (Fin n) E) (h1 : γ1 ∈ UJ (σ : E →+* E) J) (h2 : γ2 ∈ UJ (σ : E →+* E) J) (κ1 κ2 : S.U)
    (e : bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ1 * y0.1 * κ1.1 =
      bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ2 * y0.1 * κ2.1) (z : Formalism.L2.Forms.Frames (gramC J emb)) :
    (S.chi κ1 : ℂ) * v (frameTranslate emb hc γ1⁻¹ ((UJ _ _).inv_mem h1) z) =
      (S.chi κ2 : ℂ) * v (frameTranslate emb hc γ2⁻¹ ((UJ _ _).inv_mem h2) z) := by
  have e0 : y0.1 = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) (γ1⁻¹ * γ2) * y0.1 * (κ2 * κ1⁻¹ : S.U).1 := by
    have e' : y0.1 = (bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ1)⁻¹ *
        (bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ1 * y0.1 * κ1.1) * κ1.1⁻¹ := by group
    rw [e] at e'
    rw [map_mul, map_inv, Subgroup.coe_mul, Subgroup.coe_inv]
    calc y0.1 = _ := e'
      _ = _ := by group
  rw [hv (γ1⁻¹ * γ2) ((UJ _ _).mul_mem ((UJ _ _).inv_mem h1) h2) (κ2 * κ1⁻¹) e0 _ _ (isTr_inv_mul emb hc γ1 γ2 h1 h2 z),
    map_mul, map_inv, Units.val_mul, ← mul_assoc, ← mul_assoc, mul_comm (S.chi κ1 : ℂ), mul_assoc (S.chi κ2 : ℂ), mul_comm ((S.chi κ1 : ℂˣ) : ℂ),
    Units.inv_mul, mul_one]


open Classical in
theorem exists_form_of_law (S : StepLevel F E σ J T f bad) (emb : ι → E →+* ℂ) (hc : ∀ τ x, emb τ (σ x) = starRingEnd ℂ (emb τ x))
    (lam : ι → DomWeight n) (y0 : UPts σ J (FiniteAdeleRing (𝓞 F) F)) (v : Formalism.L2.Forms.Frames (gramC J emb) → ℂ)
    (hV : v ∈ ValC (gramC J emb) lam) (hv : LawAt S emb y0 v) : ∃ g ∈ AdForms S emb lam, g y0 = v := by
  let Pd : UPts σ J (FiniteAdeleRing (𝓞 F) F) → Prop := fun x =>
    ∃ q : {γ : GL (Fin n) E // γ ∈ UJ (σ : E →+* E) J} × S.U, x.1 = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) q.1.1 * y0.1 * q.2.1
  let g : UPts σ J (FiniteAdeleRing (𝓞 F) F) → Formalism.L2.Forms.Frames (gramC J emb) → ℂ := fun x y =>
    if h : Pd x then (S.chi h.choose.2 : ℂ) * v (frameTranslate emb hc h.choose.1.1⁻¹ ((UJ _ _).inv_mem h.choose.1.2) y) else 0
  have gval : ∀ x (γ : GL (Fin n) E) (hγ : γ ∈ UJ (σ : E →+* E) J) (κ : S.U),
      x.1 = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ * y0.1 * κ.1 → ∀ y,
      g x y = (S.chi κ : ℂ) * v (frameTranslate emb hc γ⁻¹ ((UJ _ _).inv_mem hγ) y) := by
    intro x γ hγ κ e y
    have h : Pd x := ⟨(⟨γ, hγ⟩, κ), e⟩
    show (if h : Pd x then (S.chi h.choose.2 : ℂ) * v (frameTranslate emb hc h.choose.1.1⁻¹ ((UJ _ _).inv_mem h.choose.1.2) y) else 0) = _
    rw [dite_eq_left h]
    exact law_wd S emb hc y0 v hv _ _ h.choose.1.2 hγ _ _ (h.choose_spec.symm.trans e) y
  have gzero : ∀ x, ¬ Pd x → ∀ y, g x y = 0 := by
    intro x h y
    show (if h : Pd x then (S.chi h.choose.2 : ℂ) * v (frameTranslate emb hc h.choose.1.1⁻¹ ((UJ _ _).inv_mem h.choose.1.2) y) else 0) = _
    rw [dite_eq_right h]
  refine ⟨g, Submodule.mem_inf.2 ⟨?_, ?_⟩, ?_⟩
  · intro γ' hγ' x x' κ' hx' y y' hy
    by_cases hP : Pd x
    · obtain ⟨⟨⟨γ, hγ⟩, κ⟩, e⟩ := hP
      have e' : x'.1 = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) (γ' * γ) * y0.1 * (κ * κ' : S.U).1 := by
        rw [hx', e, map_mul, Subgroup.coe_mul]; group
      rw [gval x γ hγ κ e, gval x' (γ' * γ) ((UJ _ _).mul_mem hγ' hγ) (κ * κ') e']
      have hfr : frameTranslate emb hc (γ' * γ)⁻¹ ((UJ _ _).inv_mem ((UJ _ _).mul_mem hγ' hγ)) y =
          frameTranslate emb hc γ⁻¹ ((UJ _ _).inv_mem hγ) y' := by
        apply Subtype.ext
        funext τ
        show atInf emb (((γ' * γ)⁻¹ : GL (Fin n) E) : Matrix (Fin n) (Fin n) E) τ * y.1 τ =
          atInf emb ((γ⁻¹ : GL (Fin n) E) : Matrix (Fin n) (Fin n) E) τ * y'.1 τ
        rw [hy τ, _root_.mul_inv_rev]
        simp only [atInf, Units.val_mul, Matrix.map_mul, Matrix.mul_assoc]
        congr 1
        rw [← Matrix.mul_assoc, ← Matrix.map_mul, ← Units.val_mul, inv_mul_cancel, Units.val_one,
          Matrix.map_one _ (map_zero _) (map_one _), Matrix.one_mul]
      rw [hfr, map_mul, Units.val_mul]
      ring
    · have hP' : ¬ Pd x' := by
        rintro ⟨⟨⟨γ, hγ⟩, κ⟩, e⟩
        refine hP ⟨(⟨γ'⁻¹ * γ, (UJ _ _).mul_mem ((UJ _ _).inv_mem hγ') hγ⟩, κ * κ'⁻¹), ?_⟩
        show x.1 = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) (γ'⁻¹ * γ) * y0.1 * (κ * κ'⁻¹ : S.U).1
        have e1 : x.1 = (bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ')⁻¹ * x'.1 * κ'.1⁻¹ := by
          rw [hx']; group
        rw [e1, e, map_mul, map_inv, Subgroup.coe_mul, Subgroup.coe_inv]; group
      rw [gzero x hP, gzero x' hP', mul_zero]
  · refine Submodule.mem_pi.2 fun x _ => ?_
    by_cases hP : Pd x
    · obtain ⟨⟨⟨γ, hγ⟩, κ⟩, e⟩ := hP
      have : g x = (S.chi κ : ℂ) • fun y => v (frameTranslate emb hc γ⁻¹ ((UJ _ _).inv_mem hγ) y) := by
        funext y
        exact gval x γ hγ κ e y
      rw [this]
      exact Submodule.smul_mem _ _ (valuation_class_translate_mem emb hc lam _ _ hV)
    · have : g x = 0 := by
        funext y
        exact gzero x hP y
      rw [this]
      exact Submodule.zero_mem _
  · funext y
    rw [gval y0 1 (UJ _ _).one_mem 1 (by rw [map_one]; simp)]
    have hfr : frameTranslate emb hc (1 : GL (Fin n) E)⁻¹ ((UJ _ _).inv_mem (UJ (σ : E →+* E) J).one_mem) y = y := by
      apply Subtype.ext
      funext τ
      show atInf emb (((1 : GL (Fin n) E)⁻¹ : GL (Fin n) E) : Matrix (Fin n) (Fin n) E) τ * y.1 τ = y.1 τ
      rw [inv_one]
      simp [atInf]
    rw [hfr, map_one, Units.val_one, one_mul]

end Gen

open Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.MainNotions.G.CmpJ Formalism.MainNotions.G.CmpJ.PCard Formalism.MainNotions.G.CmpJ.PRankGe Formalism.MainNotions.G.CmpJ.PInvLe

variable {D : D7} {u : D.what₂.Word} {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P} {p : ℕ} {i : ℕ} {hi : i ≤ D.R.m} {G : GAtP p}

theorem formsOnClassOf (S : StepIn M i hi G) : FormsOnClassOf S := by
  intro β c v hv
  obtain ⟨g, hg, e⟩ := exists_form_of_law (S.K β).lev (embT D) (embedding_conj_compat D) (lamTG M i) ((S.K β).y c) v hv.1 hv.2
  exact Submodule.mem_map.2 ⟨res (embT D) (S.K β).y g, Submodule.mem_map.2 ⟨g, hg, rfl⟩, e⟩

end Formalism.MainNotions.G.ChF

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.HypForms =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.IntWOfPow =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.IntWOfPow", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypTwA\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypVin\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocBases\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PSplitT\nimport Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.ColSpanMulUnit\nimport Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.SelfDualCongr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.ChF

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.G.RelativeIndexFlags Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix Formalism.MainNotions.G.CmpJ
  Formalism.MainNotions.G.CmpJ.PValIntN
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}
  {σ : E →ₐ[F] E} {J : Matrix (Fin n) (Fin n) E} {T f : ℕ} {bad : Set (HeightOneSpectrum (𝓞 F))} {p : ℕ} {G : GAtP p}

theorem epsU_val (B B' γ : GL (Fin n) E) (k : ℕ) :
    ((epsU B B' γ k : Eˣ) : E) = (B'.1.det * (B.1.det)⁻¹) ^ k * (γ.1.det)⁻¹ := by
  simp [epsU]

theorem det_cT (τ : E →+* E) (M : Matrix (Fin n) (Fin n) E) : (cT τ M).det = τ M.det := by
  unfold cT
  rw [Matrix.det_transpose]
  exact (RingHom.map_det τ M).symm

theorem epsU_conj (hJ : IsUnit J.det) (B B' γ : GL (Fin n) E) (k : ℕ) (hγ : γ ∈ UJ (σ : E →+* E) J)
    (hB : cT (σ : E →+* E) B.1 * J * B.1 = 1) :
    σ (epsU B B' γ k : Eˣ) * (epsU B B' γ k : Eˣ) = ((cT (σ : E →+* E) B'.1 * J * B'.1).det) ^ k := by
  have hJ0 : J.det ≠ 0 := hJ.ne_zero
  have h1 : σ γ.1.det * γ.1.det = 1 := by
    have h := congrArg Matrix.det (show cT (σ : E →+* E) γ.1 * J * γ.1 = J from hγ)
    rw [Matrix.det_mul, Matrix.det_mul, det_cT] at h
    have h' : (σ γ.1.det * γ.1.det) * J.det = 1 * J.det := by
      rw [one_mul]
      calc (σ γ.1.det * γ.1.det) * J.det = (σ : E →+* E) γ.1.det * J.det * γ.1.det := by
            show (σ γ.1.det * γ.1.det) * J.det = σ γ.1.det * J.det * γ.1.det
            ring
        _ = J.det := h
    exact mul_right_cancel₀ hJ0 h'
  have h2 : σ B.1.det * B.1.det = (J.det)⁻¹ := by
    have h := congrArg Matrix.det hB
    rw [Matrix.det_mul, Matrix.det_mul, det_cT, Matrix.det_one] at h
    refine eq_inv_of_mul_eq_one_left ?_
    calc σ B.1.det * B.1.det * J.det = (σ : E →+* E) B.1.det * J.det * B.1.det := by
          show σ B.1.det * B.1.det * J.det = σ B.1.det * J.det * B.1.det
          ring
      _ = 1 := h
  have h3 : (cT (σ : E →+* E) B'.1 * J * B'.1).det = σ B'.1.det * B'.1.det * J.det := by
    rw [Matrix.det_mul, Matrix.det_mul, det_cT]
    show σ B'.1.det * J.det * B'.1.det = _
    ring
  rw [epsU_val, h3]
  calc σ ((B'.1.det * (B.1.det)⁻¹) ^ k * (γ.1.det)⁻¹) * ((B'.1.det * (B.1.det)⁻¹) ^ k * (γ.1.det)⁻¹)
      = ((σ B'.1.det * B'.1.det) * (σ B.1.det * B.1.det)⁻¹) ^ k * (σ γ.1.det * γ.1.det)⁻¹ := by
        simp only [map_mul, map_pow, map_inv₀, mul_pow, mul_inv]
        ring
    _ = _ := by rw [h1, h2, inv_inv, inv_one, mul_one]



theorem epsU_iw (S : StepLevel F E σ J T f bad) (A : LocAt F E n G) (hW : LocInt A) (hp : p.Prime) (hT : ¬ p ∣ T)
    (halg : ∀ v (a : (A.pl v).1.adicCompletion F), A.spl v ((1 : E) ⊗ₜ[F] a) = (a, a))
    (hb : ∀ v (t : Fin n → (A.pl v).1.adicCompletion F),
      (∃ x ∈ Formalism.L2.Herm.locL (A.pl v).1 S.Lb, ∀ a, (A.spl v (x a)).1 = t a) ↔
      ∀ a, (((bc (A.phE v) A.B)⁻¹ : GL (Fin n) ((A.pl v).1.adicCompletion F)) :
        Matrix (Fin n) (Fin n) ((A.pl v).1.adicCompletion F)).mulVec t a ∈ (A.pl v).1.adicCompletionIntegers F)
    (hJ : IsUnit J.det) (hB : cT (σ : E →+* E) A.B.1 * J * A.B.1 = 1)
    (Lc : Submodule (𝓞 E) (Fin n → E)) (y : UPts σ J (FiniteAdeleRing (𝓞 F) F))
    (hy : ∀ x, x ∈ Formalism.L2.GlobalTheoryTheory.Comp.hat F Lc ↔
      ((y.1⁻¹ : GL (Fin n) _) : Matrix (Fin n) (Fin n) _) *ᵥ x ∈ Formalism.L2.GlobalTheoryTheory.Comp.hat F S.Lb)
    (hle : ∀ x ∈ Lc, x ∈ dualSet (σ : E →+* E) J Lc)
    (B' : GL (Fin n) E) (hB' : IsLocBasis p (dualSet (σ : E →+* E) J Lc) B')
    (γ : GL (Fin n) E) (hγ : γ ∈ UJ (σ : E →+* E) J) (κ : S.U) (b k : ℕ)
    (h : y.1 ^ (b + k) = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ * y.1 ^ b * κ.1) (v : Fin G.P.nV) :
    (A.iw v (epsU A.B B' γ k : Eˣ) ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range ∧
      A.iw v (σ (epsU A.B B' γ k : Eˣ)) ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range) ∧
    (A.iw v ((epsU A.B B' γ k : Eˣ) : E)⁻¹ ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range ∧
      A.iw v (σ ((epsU A.B B' γ k : Eˣ) : E)⁻¹) ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range) := by
  have key : ∀ x : E, A.phE v x ∈ (A.pl v).1.adicCompletionIntegers F → A.iw v x ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range := by
    intro x hx
    refine (hW v _).2 ?_
    have e : A.eQ v (A.iw v x) = A.phE v x := (A.eQ v).apply_symm_apply _
    rw [e]
    exact hx
  obtain ⟨h1, h2⟩ := epsU_ph S A hp hT halg hb Lc y hy hle B' hB' γ κ b k h v
  have e1 : A.iw v (epsU A.B B' γ k : Eˣ) ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range := key _ h1
  have e2 : A.iw v ((epsU A.B B' γ k : Eˣ) : E)⁻¹ ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range := by
    refine key _ ?_
    rw [← map_inv, Units.coe_map] at h2
    rw [← Units.val_inv_eq_inv_val]
    exact h2
  have hg := gramW_gen S A hW hp hT halg hJ Lc y hy hle B' hB' v
  have g1 : A.iw v (cT (σ : E →+* E) B'.1 * J * B'.1).det ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range := by
    rw [RingHom.map_det]
    exact det_mem_sub _ _ fun a b => (hg a b).1
  have g2 : A.iw v ((cT (σ : E →+* E) B'.1 * J * B'.1).det)⁻¹ ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range := by
    have e : ((cT (σ : E →+* E) B'.1 * J * B'.1).det)⁻¹ = ((cT (σ : E →+* E) B'.1 * J * B'.1)⁻¹).det := by
      rw [Matrix.det_nonsing_inv, Ring.inverse_eq_inv']
    rw [e, RingHom.map_det]
    exact det_mem_sub _ _ fun a b => (hg a b).2
  have hc := epsU_conj hJ A.B B' γ k hγ hB
  have h0 : ((epsU A.B B' γ k : Eˣ) : E) ≠ 0 := Units.ne_zero _
  have c1 : σ (epsU A.B B' γ k : Eˣ) = ((cT (σ : E →+* E) B'.1 * J * B'.1).det) ^ k * ((epsU A.B B' γ k : Eˣ) : E)⁻¹ :=
    (eq_mul_inv_iff_mul_eq₀ h0).2 hc
  refine ⟨⟨e1, ?_⟩, e2, ?_⟩
  · rw [c1, map_mul, map_pow]
    exact Subring.mul_mem _ (Subring.pow_mem _ g1 k) e2
  · rw [map_inv₀, c1, mul_inv, inv_inv, ← inv_pow, map_mul, map_pow]
    exact Subring.mul_mem _ (Subring.pow_mem _ g2 k) e1

end Gen

theorem zpow_calc {K : Type} [Field K] (a b : K) (c : ℤ) (k : ℕ) :
    (a ^ (-c)) ^ k * ((b⁻¹) ^ (-c)) ^ k = ((b * a⁻¹) ^ k) ^ c := by
  rw [_root_.inv_zpow', neg_neg, _root_.zpow_neg, ← _root_.inv_zpow, ← mul_pow, ← mul_zpow, mul_comm a⁻¹ b, ← zpow_natCast, ← _root_.zpow_mul,
    mul_comm c, _root_.zpow_mul, zpow_natCast]

variable {D : D7}

theorem intW_of_pow (w : D.what₂.places.Pl) (r : D.what₂.LL) (k : ℕ) (hk : 0 < k) (h1 : r ^ k ∈ intW D.what₂.places w)
    (h2 : (r ^ k)⁻¹ ∈ intW D.what₂.places w) : r ∈ intW D.what₂.places w ∧ r⁻¹ ∈ intW D.what₂.places w := by
  by_cases hr0 : r = 0
  · subst hr0
    exact ⟨Subring.zero_mem _, by rw [_root_.inv_zero]; exact Subring.zero_mem _⟩
  have hd : r ∈ intW D.what₂.places w ∨ r⁻¹ ∈ intW D.what₂.places w := by
    by_contra hcon
    rw [not_or] at hcon
    have a1 : D.what₂.places.val w r < 0 := not_le.1 hcon.1
    have a2 : D.what₂.places.val w r⁻¹ < 0 := not_le.1 hcon.2
    have a3 : D.what₂.places.val w r + D.what₂.places.val w r⁻¹ < 0 := Left.add_neg_of_neg_of_nonpos a1 a2.le
    rw [← AddValuation.map_mul, mul_inv_cancel₀ hr0, AddValuation.map_one] at a3
    exact lt_irrefl _ a3
  have e1 : r⁻¹ = r ^ (k - 1) * (r ^ k)⁻¹ := by
    have : r ^ k = r ^ (k - 1) * r := pow_sub_one_mul hk.ne' r |>.symm
    rw [this, mul_inv, ← mul_assoc, mul_inv_cancel₀ (pow_ne_zero _ hr0), one_mul]
  have e2 : r = (r⁻¹) ^ (k - 1) * r ^ k := by
    have : r ^ k = r ^ (k - 1) * r := pow_sub_one_mul hk.ne' r |>.symm
    rw [this, ← mul_assoc, inv_pow, inv_mul_cancel₀ (pow_ne_zero _ hr0), one_mul]
  rcases hd with h | h
  · exact ⟨h, by rw [e1]; exact Subring.mul_mem _ (Subring.pow_mem _ h _) h2⟩
  · exact ⟨by rw [e2]; exact Subring.mul_mem _ (Subring.pow_mem _ h _) h1, h⟩

variable {u : D.what₂.Word} {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P} {p : ℕ}
  {i : ℕ} {hi : i ≤ D.R.m} {G : GAtP p}



theorem exists_pow (S : StepIn M i hi G) (β : S.Ch) (cl : {c // S.chOf c = β}) :
    ∃ (b k : ℕ), 0 < k ∧ ∃ (g κ : UPts (sigD D) (gramN D i hi) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))
      (γ : GL (Fin (D.R.N i)) D.host.E), γ ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D i hi) ∧
      g.1 = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ ∧ κ.1 ∈ (S.K β).lev.U ∧
      (S.K β).y cl ^ (b + k) = g * (S.K β).y cl ^ b * κ := by
  have hfin : Finite (Cls (S.K β).lev) := Finite.of_surjective _ (S.K β).y_bij.2
  obtain ⟨a, b, hab, he⟩ := @Finite.exists_ne_map_eq_of_infinite ℕ (Cls (S.K β).lev) _ hfin
    (fun n : ℕ => (Quotient.mk'' ((S.K β).y cl ^ n) : Cls (S.K β).lev))
  wlog hlt : a < b generalizing a b
  · exact this b a hab.symm he.symm (by omega)
  obtain ⟨g, hg, κ, hκ, e⟩ := (@DoubleCoset.eq _ _ _ _ ((S.K β).y cl ^ a) ((S.K β).y cl ^ b)).1 he
  obtain ⟨γ, hγ, hγe⟩ := Subgroup.mem_subgroupOf.1 hg
  refine ⟨a, b - a, by omega, g, κ, γ, hγ, hγe.symm, Subgroup.mem_subgroupOf.1 hκ, ?_⟩
  rw [show a + (b - a) = b by omega]
  exact e



theorem twUnit_of (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) (w : D.what₂.places.Pl) (β : S.Ch) (H : S.Core e β)
    (hR0 : ∀ x, x ∈ intW D.what₂.places w ↔ e x ∈ Set.range (algebraMap G.O G.Kf)) (L : LatIn S w β) : S.TwUnit w β := by
  intro cl B' hB'
  have hpw := L.resChar
  subst hpw
  obtain ⟨b, k, hk, g, κ, γ, hγ, hg, hκ, hpow⟩ := exists_pow S β cl
  have hσσ : ∀ x : D.host.E, sigD D (sigD D x) = x := fun x => by
    rw [Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.forms_involution_eq_host_conj, Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.forms_involution_eq_host_conj, Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.host_conj_involutive]
  have hpow' : ((S.K β).y cl).1 ^ (b + k) =
      bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ * ((S.K β).y cl).1 ^ b * (⟨κ.1, hκ⟩ : (S.K β).lev.U).1 := by
    have := congrArg Subtype.val hpow
    rw [← hg]
    exact this
  have hiw := epsU_iw (S.K β).lev (S.loc β) H.int L.prime L.siteGood_prime_torsion L.alg L.base (Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.bwB_gramN_det D i hi) H.std
    (S.lat cl.1) ((S.K β).y cl) ((S.K β).y_lat cl) (le_dual_chart (S.K β) cl) B' hB' γ hγ ⟨κ.1, hκ⟩ b k hpow'
  set ε : D.host.E := ((epsU (S.loc β).B B' γ k : D.host.Eˣ) : D.host.E) with hε

  have hint : ∀ x : D.host.E, (∀ v, (S.loc β).iw v x ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range ∧
      (S.loc β).iw v (sigD D x) ∈ (algebraMap (G.P.W v) (G.P.Qq v)).range) → ∀ τ, tEL D τ x ∈ intW D.what₂.places w := by
    intro x hx τ
    obtain ⟨⟨v, s⟩, rfl⟩ := S.pos.surjective τ
    rw [hR0]
    by_cases hs : Even s.val
    · have h1 := H.pos_emb v s x
      rw [if_pos hs] at h1
      rw [h1]
      exact rho_int v s.val _ (hx v).1
    · have h1 := H.pos_emb v s (sigD D x)
      rw [if_neg hs, hσσ] at h1
      rw [h1]
      exact rho_int v s.val _ (hx v).2
  have i1 : ∀ τ, tEL D τ ε ∈ intW D.what₂.places w := hint ε fun v => (hiw v).1
  have i2 : ∀ τ, (tEL D τ ε)⁻¹ ∈ intW D.what₂.places w := fun τ => by
    rw [← map_inv₀]
    exact hint ε⁻¹ (fun v => (hiw v).2) τ
  have i3 : ∀ τ, D.what₂.embLL (tEL D τ ε) ∈ unitsW D w := fun τ => ⟨_, i1 τ, i2 τ, rfl⟩

  obtain ⟨rc, hrc⟩ := H.chRat cl
  set r : D.what₂.LL := (∏ τ, (tEL D τ (S.loc β).B.1.det) ^ (-(cTw D i))) * rc *
    ∏ τ, (tEL D τ ((B'⁻¹ : GL (Fin (D.R.N i)) D.host.E).1.det)) ^ (-(cTw D i)) with hr
  have hrs : D.what₂.embLL r = S.sTw β cl B' := by
    rw [hr, map_mul, map_mul, map_prod, map_prod, hrc]
    unfold StepIn.sTw StepIn.kTw
    congr 1
    · congr 1
      refine Finset.prod_congr rfl fun τ _ => ?_
      rw [map_zpow₀, tEL_emb]
    · refine Finset.prod_congr rfl fun τ _ => ?_
      rw [map_zpow₀, tEL_emb]
      congr 1
      exact RingHom.map_det (embT D τ) _

  have hch : (((S.tw β).ch ((S.K β).y cl) : ℂˣ) : ℂ) ^ k * ∏ τ, (embT D τ γ.1.det) ^ (cTw D i) = 1 := by
    have h1 := congrArg (S.tw β).ch hpow
    rw [map_mul, map_mul, map_pow, map_pow, (S.tw β).ch_U κ hκ, mul_one, pow_add, mul_comm] at h1
    have h2 : (S.tw β).ch ((S.K β).y cl) ^ k = (S.tw β).ch g := mul_right_cancel h1
    have h3 := (S.tw β).ch_rat γ hγ g hg
    rw [← h2, Units.val_pow_eq_pow_val] at h3
    exact h3
  have hdet : ((B'⁻¹ : GL (Fin (D.R.N i)) D.host.E).1.det) = (B'.1.det)⁻¹ := by
    have := congrArg Units.val (map_inv Matrix.GeneralLinearGroup.det B')
    rw [Units.val_inv_eq_inv_val] at this
    exact this
  have hpw : D.what₂.embLL (r ^ k) = ∏ τ, (D.what₂.embLL (tEL D τ ε)) ^ (cTw D i) := by
    have hP0 : (∏ τ, (embT D τ γ.1.det) ^ (cTw D i)) ≠ 0 := right_ne_zero_of_mul_eq_one hch
    have hchk : (((S.tw β).ch ((S.K β).y cl) : ℂˣ) : ℂ) ^ k = (∏ τ, (embT D τ γ.1.det) ^ (cTw D i))⁻¹ :=
      eq_inv_of_mul_eq_one_left hch
    rw [map_pow, hr, map_mul, map_mul, map_prod, map_prod, hrc, mul_pow, mul_pow, hchk, ← Finset.prod_pow, ← Finset.prod_pow,
      mul_right_comm, ← Finset.prod_mul_distrib, ← Finset.prod_inv_distrib, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun τ _ => ?_
    rw [map_zpow₀, map_zpow₀, tEL_emb, tEL_emb, tEL_emb, hdet, map_inv₀, zpow_calc, hε, epsU_val, map_mul, map_pow, map_mul, map_inv₀,
      map_inv₀, mul_zpow, _root_.inv_zpow]
  have hU : D.what₂.embLL (r ^ k) ∈ unitsW D w := by
    rw [hpw]
    refine Submonoid.prod_mem _ fun τ _ => ?_
    rcases Int.eq_nat_or_neg (cTw D i) with ⟨m, hm | hm⟩
    · rw [hm, zpow_natCast]
      exact Submonoid.pow_mem _ (i3 τ) m
    · rw [hm, _root_.zpow_neg, zpow_natCast]
      exact unitsW_inv (Submonoid.pow_mem _ (i3 τ) m)
  obtain ⟨r', hr1, hr2, hr3⟩ := hU
  have hrr : r' = r ^ k := D.what₂.embLL.injective hr3
  rw [hrr] at hr1 hr2
  obtain ⟨a1, a2⟩ := intW_of_pow w r k hk hr1 hr2
  exact ⟨r, a1, a2, hrs⟩

end Formalism.MainNotions.G.ChF

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.IntWOfPow =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.SiteGoodPrimeTorsion =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ChartRank.SiteGoodPrimeTorsion", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypVinRec\npublic import Formalism.SharpRestriction.GrowthBounds.ChartedClasses.ValIntN\nimport Formalism.SharpRestriction.GrowthBounds.ChartComparison.LocMore\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypChi\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypEvChain\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypFin\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypForms\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypLat\npublic import Formalism.SharpRestriction.GrowthBounds.ChartRank.IntWOfPow\nimport Formalism.SharpRestriction.GrowthBounds.ChartedClasses.CompInjLocJ\npublic import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.ChF

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix Formalism.MainNotions.G.CmpJ
  Formalism.MainNotions.G.CmpJ.PStabEq Formalism.MainNotions.G.KAat Formalism.MainNotions.G.CmpJ.PValIntN Formalism.MainNotions.G.CmpJ.PInvLe
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {X0 : Formalism.L2.Herm.Herm0 D} {Tw : TwForms D} {u : D.what₂.Word} {μ : D.what₂.Tup} {w : D.what₂.places.Pl}
  {h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)} {Fl : Fills (D.gat u w h)} {Lv : Levels Fl}

section Step

variable {j : ℕ} (hj : j + 1 ≤ D.R.m) {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P}



structure StepTies (Fo : FormsIn M (j + 1) hj) (Lc : LocIn X0 u w h Lv j Fo.Ch) (Gt : GatTies D) (c : LatCmp D) : Prop where

  frRat : ∀ β, FrRatJ (Lc.t β) Lc.B

  sameU : ∀ β, SameUlocJ hj (Fo.K β).lev (Lc.Uloc β)

  hypT : ∀ β, HypTJ (Lc.t β)

  bad_p : ∀ w' ∈ Fo.bad, ((D.what₂.places.resChar w : ℕ) : 𝓞 D.host.F) ∉ w'.asIdeal

  std : cT (sigD D : D.host.E →+* D.host.E) (reGL (rankN D (j + 1) hj) D.host.E Lc.B).1 * gramN D (j + 1) hj *
    (reGL (rankN D (j + 1) hj) D.host.E Lc.B).1 = 1

  psi : ∀ β, UnitCharacterChartCompatibility hj (Fo.K β).lev (c.embW u w h) (Lc.ψ β)

  chRat : ∀ β cl, ∃ r : D.what₂.LL, D.what₂.embLL r = ((Fo.tw β).ch ((Fo.K β).y cl) : ℂ)

  hypC : ∀ β, HypTJC (Lc.t β)

  ok : Fo.okW w

  siteGood_prime_torsion : ¬ D.what₂.places.resChar w ∣ Fo.T

  Lb_eq : ∀ β, (Fo.K β).lev.Lb = reL (rankN D (j + 1) hj) (Lc.Lb β)

variable {hj} {Gt : GatTies D} {c : LatCmp D} {T : ∀ u : D.what₂.Word, Forms0 D u}
  {Fo : FormsIn M (j + 1) hj} {Lc : LocIn X0 u w h Lv j Fo.Ch}

theorem StepTies.chi (S : StepTies hj Fo Lc Gt c) (β : Fo.Ch) (κ : (Fo.K β).lev.U) :
    ∃ r ∈ intW D.what₂.places w, r⁻¹ ∈ intW D.what₂.places w ∧ D.what₂.embLL r = ((Fo.K β).lev.chi κ : ℂ) :=
  chiUnit_of hj (Fo.K β).lev (S.sameU β) (c.embW u w h) (S.psi β) S.bad_p (fun x => c.embW_int u w h x) κ



theorem StepTies.ties (S : StepTies hj Fo Lc Gt c) (β : Fo.Ch) : LocTiesR hj Fo Lc (c.embW u w h) β :=
  { frRat := S.frRat β
    sameU := S.sameU β
    hypT := S.hypT β
    bad_p := S.bad_p
    std := S.std
    psi := S.psi β
    chiRat := fun κ => let ⟨r, _, _, hr⟩ := S.chi β κ; ⟨r, hr⟩
    chRat := S.chRat β }

theorem StepTies.lat (S : StepTies hj Fo Lc Gt c) (β : Fo.Ch) : LatTies hj w Fo β (Lc.Lb β) :=
  { siteGood_prime_torsion := S.siteGood_prime_torsion
    Lb_eq := S.Lb_eq β
    lat := fun cl => isLattice_chart (Fo.K β) cl
    chi := S.chi β }

theorem StepTies.core (S : StepTies hj Fo Lc Gt c) (K : CmpTied D X0 T Gt c) (ht : Fl.t = D.R.t) (hF : FillTie Gt u w h Fl) (β : Fo.Ch) :
    (stepInOf hj Fo Lc (Gt.gat_pos u w h)).Core (c.embW u w h) β :=
  core_of_R hj K ht hF (S.ties β)

theorem StepTies.valIntN (S : StepTies hj Fo Lc Gt c) (K : CmpTied D X0 T Gt c) (ht : Fl.t = D.R.t) (hF : FillTie Gt u w h Fl) :
    (stepInOf hj Fo Lc (Gt.gat_pos u w h)).ValIntN (c.embW u w h) w := by
  have ties (β : Fo.Ch) : LocTies hj Fo Lc (Gt.gat_pos u w h) (c.embW u w h) β :=
    { frRat := S.frRat β
      sameU := S.sameU β
      hypT := S.hypT β
      bad_p := S.bad_p
      std := S.std
      pos_emb := fun v s x => locJ_pos_emb hj (Lc.t β) Lc.B K v s x
      wt := StepIn.wt_of (M := M) Gt w h Lv ht hF j hj (stepInOf hj Fo Lc (Gt.gat_pos u w h)) rfl β
      psi := S.psi β
      chiRat := (S.ties β).chiRat
      chRat := S.chRat β }
  exact valIntN_rec hj (c.embW u w h) ties Formalism.L2.G.RelativeIndexFlags.blockRationality_holds
    ((D.gat u w h).P.setting (plc Gt u w h)).frac_O (fun x => c.embW_int u w h x) S.lat

theorem StepTies.twUnit (S : StepTies hj Fo Lc Gt c) (K : CmpTied D X0 T Gt c) (ht : Fl.t = D.R.t) (hF : FillTie Gt u w h Fl) (β : Fo.Ch) :
    (stepInOf hj Fo Lc (Gt.gat_pos u w h)).TwUnit w β := by
  have lat : LatIn (stepInOf hj Fo Lc (Gt.gat_pos u w h)) w β :=
    { prime := h.1
      resChar := rfl
      siteGood_prime_torsion := S.siteGood_prime_torsion
      alg := fun v a => (X0.g u w h).spl_alg _ ((X0.g u w h).pl v).2 a
      base := fun v t =>
        Formalism.L2.G.RelativeIndexFlags.frlat_re (rankN D (j + 1) hj) ((X0.g u w h).pl v).1
          ((X0.g u w h).spl _ ((X0.g u w h).pl v).2) (Lc.Lb β) Lc.B
          ((Lc.t β).fr _ ((X0.g u w h).pl v).2) (S.frRat β _ _) ((Lc.t β).fr_lat _ ((X0.g u w h).pl v).2)
          (Fo.K β).lev.Lb (S.Lb_eq β) t
      lat := (S.lat β).lat
      chi := S.chi β }
  exact twUnit_of (stepInOf hj Fo Lc (Gt.gat_pos u w h)) (c.embW u w h) w β (S.core K ht hF β)
    (fun x => c.embW_int u w h x) lat

theorem StepTies.chX (S : StepTies hj Fo Lc Gt c) : ChX (stepInOf hj Fo Lc (Gt.gat_pos u w h)) := by
  have charts : ChX (stepInOf hj Fo Lc (Gt.gat_pos u w h)) := by
    refine { hypC := ?_, inj := ?_, onto := ?_, cinj := ?_ }
    all_goals
      intro β
      let : Fintype (Lc.cmpt β) := Lc.fin β
    · exact locHypC_locJ hj (Lc.t β) Lc.B (Fo.K β).lev (S.sameU β) (S.frRat β) (S.hypC β)
    · exact fun a => gamI_inj_locJ hj (Lc.t β) Lc.B a
    · exact fun a => gamOnto_locJ hj (Lc.t β) Lc.B (Fo.K β).lev (S.sameU β) a
    · exact compInj_locJ hj (Lc.t β) Lc.B (Fo.K β).lev (S.sameU β)
  exact charts

end Step

structure HypTiesI (X0 : Formalism.L2.Herm.Herm0 D) (I : CmpJIn Tw u μ w h Lv) (Gt : GatTies D) (c : LatCmp D) : Prop where

  fl_t : Fl.t = D.R.t

  fill : FillTie Gt u w h Fl

  step : ∀ j hj, ∃ (Fo : FormsIn (I.at' j hj).M (j + 1) hj) (Lc : LocIn X0 u w h Lv j Fo.Ch),
    (I.at' j hj).st = stepInOf hj Fo Lc (Gt.gat_pos u w h) ∧ StepTies hj Fo Lc Gt c

variable {Gt : GatTies D} {c : LatCmp D} {T : ∀ u : D.what₂.Word, Forms0 D u}

theorem HypTiesI.chX {I : CmpJIn Tw u μ w h Lv} (A : HypTiesI X0 I Gt c) (j : ℕ) (hj : j + 1 ≤ D.R.m) : ChX (I.at' j hj).st := by
  obtain ⟨Fo, Lc, e, S⟩ := A.step j hj
  rw [e]
  exact S.chX

theorem HypTiesI.core {I : CmpJIn Tw u μ w h Lv} (A : HypTiesI X0 I Gt c) (K : CmpTied D X0 T Gt c) (j : ℕ) (hj : j + 1 ≤ D.R.m) :
    ∀ β, (I.at' j hj).st.Core (c.embW u w h) β := by
  obtain ⟨Fo, Lc, e, S⟩ := A.step j hj
  rw [e]
  exact S.core K A.fl_t A.fill

theorem HypTiesI.fin {I : CmpJIn Tw u μ w h Lv} (A : HypTiesI X0 I Gt c) (K : CmpTied D X0 T Gt c) (j : ℕ) (hj : j + 1 ≤ D.R.m) :
    (gatJ Lv (j + 1)).FinClasses :=
  finClasses_of (S := (I.at' j hj).st) (A.core K j hj) (A.chX j hj)

theorem HypTiesI.hyp {I : CmpJIn Tw u μ w h Lv} (A : HypTiesI X0 I Gt c) (K : CmpTied D X0 T Gt c) : CmpJHyp c I :=
  cmpJHyp_of_two c Gt Formalism.L2.G.RelativeIndexFlags.blockRationality_holds
    (A.core K)
    (fun j hj => by
      obtain ⟨Fo, Lc, e, S⟩ := A.step j hj
      rw [e]
      exact S.ok)
    (fun j hj => by
      obtain ⟨Fo, Lc, e, S⟩ := A.step j hj
      rw [e]
      exact S.twUnit K A.fl_t A.fill)
    (fun j hj => by
      obtain ⟨Fo, Lc, e, S⟩ := A.step j hj
      rw [e]
      exact S.valIntN K A.fl_t A.fill)
    (fun j hj => by
      obtain ⟨Fo, Lc, e, S⟩ := A.step j hj
      rw [e]
      exact iwF_of hj Fo Lc (Gt.gat_pos u w h))
    (A.fin K) A.chX
    (fun j hj => formsOnClassOf _)
    (fun j hj => Formalism.MainNotions.G.CmpJ.PEvValChain.cmpLiftOf_holds _ _)

structure HypTies (Z : AtIn X0 Tw u μ w h Lv) (Gt : GatTies D) (c : LatCmp D) : Prop where
  fl_t : Fl.t = D.R.t
  fill : FillTie Gt u w h Fl
  step : ∀ j hj, StepTies hj (Z.Fo j hj) (Z.Lc j hj) Gt c

theorem HypTies.toI {Z : AtIn X0 Tw u μ w h Lv} (A : HypTies Z Gt c) : HypTiesI X0 (Z.I Gt) Gt c :=
  { fl_t := A.fl_t
    fill := A.fill
    step := fun j hj => ⟨Z.Fo j hj, Z.Lc j hj, rfl, A.step j hj⟩ }

theorem HypTies.hyp {Z : AtIn X0 Tw u μ w h Lv} (A : HypTies Z Gt c) (K : CmpTied D X0 T Gt c) : CmpJHyp c (Z.I Gt) := A.toI.hyp K

theorem HypTies.atHyp {Z : AtIn X0 Tw u μ w h Lv} (A : HypTies Z Gt c) (_K : CmpTied D X0 T Gt c) : AtHyp Z Gt c :=
  { ties := fun j hj => (A.step j hj).ties
    hypC := fun j hj => (A.step j hj).hypC }

section Fam

variable {L : SizeData₂ D} {hT : GatTies D} {Gi : G.Inst D L} {Gl : G.LatInst D} {Kc : G.Consts} {Dx : DivX D} {cX : ExtraC}

end Fam

end Formalism.MainNotions.G.ChF

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ChartRank.SiteGoodPrimeTorsion =====
