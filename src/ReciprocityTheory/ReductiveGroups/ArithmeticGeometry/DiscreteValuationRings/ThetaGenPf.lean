module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBTransport
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFlat
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocalC
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenGeneric
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.AppCompatGeneric
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGen
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenDiv
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.FamMod
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenTerms
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenLevel
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenThick
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.WeightedChartPullback.WeightIndep

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenRank, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFibre, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenPf

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenRank =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenRank", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBTransport\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFlat\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocalC\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenGeneric\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenLevel\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenThick\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.AppCompatGeneric\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped CategoryTheory.Obj

attribute [local instance] Over.cartesianMonoidalCategory

namespace ReciprocityTheory.ChartRestriction.G.DVR.TG

open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out

section Rel

variable {X Y : Scheme.{0}} {L : LB X} {K K' : Type} [Fintype K] [Fintype K']

def SecCorr (φ : K → (Y ⟶ X)) (ε : K → ℤ) (φ' : K' → (Y ⟶ X)) (ε' : K' → ℤ)
    (s : LB.Sec (LB.LinComb L φ ε)) (x : LB.Sec (LB.LinComb L φ' ε')) : Prop :=
  ∀ (j : K → L.ι) (j' : K' → L.ι), LB.Coh L φ j → LB.Coh L φ' j' → (∀ k k', φ k = φ' k' → j k = j' k') →
    rs (inf_le_left : LB.wchart L φ j ⊓ LB.wchart L φ' j' ≤ _) (s.f j) =
      rs (inf_le_right : LB.wchart L φ j ⊓ LB.wchart L φ' j' ≤ _) (x.f j')

private lemma exists_coh_extending_of_mem_wchart (hL : L.IsLB) (φ : K → (Y ⟶ X)) (φ' : K' → (Y ⟶ X)) (j' : K' → L.ι)
    (hj' : LB.Coh L φ' j') (y : Y) (hy : y ∈ LB.wchart L φ' j') :
    ∃ j : K → L.ι, LB.Coh L φ j ∧ (∀ k k', φ k = φ' k' → j k = j' k') ∧ y ∈ LB.wchart L φ j := by
  classical
  have memw : ∀ {T : Type} [Fintype T] (ψ : T → (Y ⟶ X)) (i : T → L.ι),
      y ∈ LB.wchart L ψ i ↔ ∀ t, (ψ t).base y ∈ L.U (i t) := by
    intro T _ ψ i
    first
    | exact Set.mem_iInter
  have hcov : ∀ x : X, ∃ i, x ∈ L.U i := by
    intro x
    have hx : x ∈ (⨆ i, L.U i) := by rw [hL.cover]; trivial
    exact TopologicalSpace.Opens.mem_iSup.mp hx
  let g : (Y ⟶ X) → L.ι := fun ψ =>
    if h : ∃ k', φ' k' = ψ then j' h.choose else (hcov (ψ.base y)).choose
  refine ⟨fun k => g (φ k), ?_, ?_, ?_⟩
  · intro k₁ k₂ h
    show g (φ k₁) = g (φ k₂)
    rw [h]
  · intro k k' h
    have hex : ∃ k'', φ' k'' = φ k := ⟨k', h.symm⟩
    show g (φ k) = j' k'
    simp only [g, dif_pos hex]
    exact hj' _ _ (hex.choose_spec.trans h)
  · rw [memw]
    intro k
    have hy' := (memw φ' j').mp hy
    show (φ k).base y ∈ L.U (g (φ k))
    by_cases hex : ∃ k'', φ' k'' = φ k
    · simp only [g, dif_pos hex]
      have := hy' hex.choose
      rw [hex.choose_spec] at this
      exact this
    · simp only [g, dif_neg hex]
      exact (hcov _).choose_spec

private lemma sections_eq_of_locally_rs_eq {Z : Scheme.{0}} {W : Z.Opens} (a b : Γ(Z, W))
    (h : ∀ z ∈ W, ∃ (V : Z.Opens) (hV : V ≤ W), z ∈ V ∧ rs hV a = rs hV b) : a = b := by
  first
  | (apply TopCat.Presheaf.section_ext Z.sheaf W a b
     intro z hz
     obtain ⟨V, hV, hzV, he⟩ := h z hz
     have ha := congrArg (fun f => f.hom a) (Z.presheaf.germ_res (homOfLE hV) z hzV)
     have hb := congrArg (fun f => f.hom b) (Z.presheaf.germ_res (homOfLE hV) z hzV)
     have hc := congrArg (Z.presheaf.germ V z hzV).hom he
     exact ha.symm.trans (hc.trans hb))

lemma rs_resTop {Z : Scheme.{0}} {U V : Z.Opens} (h : V ≤ U) (c : Γ(Z, ⊤)) :
    rs h (resTop U c) = resTop V c := by
  first
  | (simp only [rs, resTop]; rw [← RingHom.comp_apply, ← CommRingCat.hom_comp, ← Functor.map_comp]; rfl)

theorem secCorr_scal (hL : L.IsLB) (φ : K → (Y ⟶ X)) (ε : K → ℤ) (φ' : K' → (Y ⟶ X)) (ε' : K' → ℤ)
    {s₁ s₂ : LB.Sec (LB.LinComb L φ ε)} {x₁ x₂ : LB.Sec (LB.LinComb L φ' ε')}
    (h1 : SecCorr φ ε φ' ε' s₁ x₁) (h2 : SecCorr φ ε φ' ε' s₂ x₂) (c d : Γ(Y, ⊤))
    (hx : ∀ j' : K' → L.ι, resTop _ c * x₁.f j' = resTop _ d * x₂.f j') :
    ∀ j : K → L.ι, resTop _ c * s₁.f j = resTop _ d * s₂.f j := by
  have memE : ∀ z : Y, z ∈ LB.wchart L (K := Empty) (fun e => e.elim : Empty → (Y ⟶ X)) (fun e => e.elim) := by
    intro z
    first
    | exact Set.mem_iInter.mpr (fun e => e.elim)
  have stepA : ∀ j : K → L.ι, LB.Coh L φ j → resTop _ c * s₁.f j = resTop _ d * s₂.f j := by
    intro j hj
    apply sections_eq_of_locally_rs_eq
    intro z hz
    obtain ⟨j', hj', hjj, hzj'⟩ := exists_coh_extending_of_mem_wchart (K := K') (K' := K) hL φ' φ j hj z hz
    have hcomp : ∀ k k', φ k = φ' k' → j k = j' k' := fun k k' h => (hjj k' k h.symm).symm
    refine ⟨LB.wchart L φ j ⊓ LB.wchart L φ' j', inf_le_left, ?_, ?_⟩
    · first
      | exact ⟨hz, hzj'⟩
    · have e1 := h1 j j' hj hj' hcomp
      have e2 := h2 j j' hj hj' hcomp
      have e3 := congrArg (rs (inf_le_right : LB.wchart L φ j ⊓ LB.wchart L φ' j' ≤ _)) (hx j')
      have m1 := _root_.ReciprocityTheory.ChartRestriction.G.DVR.rs_mul (inf_le_left : LB.wchart L φ j ⊓ LB.wchart L φ' j' ≤ _) (resTop _ c) (s₁.f j)
      have m2 := _root_.ReciprocityTheory.ChartRestriction.G.DVR.rs_mul (inf_le_left : LB.wchart L φ j ⊓ LB.wchart L φ' j' ≤ _) (resTop _ d) (s₂.f j)
      have m3 := _root_.ReciprocityTheory.ChartRestriction.G.DVR.rs_mul (inf_le_right : LB.wchart L φ j ⊓ LB.wchart L φ' j' ≤ _) (resTop _ c) (x₁.f j')
      have m4 := _root_.ReciprocityTheory.ChartRestriction.G.DVR.rs_mul (inf_le_right : LB.wchart L φ j ⊓ LB.wchart L φ' j' ≤ _) (resTop _ d) (x₂.f j')
      rw [rs_resTop] at m1 m2 m3 m4
      exact m1.trans ((congrArg (fun t => resTop _ c * t) e1).trans (m3.symm.trans (e3.trans
        (m4.trans ((congrArg (fun t => resTop _ d * t) e2.symm).trans m2.symm)))))
  intro j
  apply sections_eq_of_locally_rs_eq
  intro z hz
  obtain ⟨j'', hj'', -, hz''⟩ := exists_coh_extending_of_mem_wchart (K' := Empty) hL φ
    (fun e => e.elim) (fun e => e.elim) (fun e => e.elim) z (memE z)
  refine ⟨(LB.LinComb L φ ε).U j ⊓ (LB.LinComb L φ ε).U j'', inf_le_left, ?_, ?_⟩
  · first
    | exact ⟨hz, hz''⟩
  · have e1 := s₁.compat j j''
    have e2 := s₂.compat j j''
    have e3 := congrArg (rs (inf_le_right : (LB.LinComb L φ ε).U j ⊓ (LB.LinComb L φ ε).U j'' ≤ _))
      (stepA j'' hj'')
    have m1 := _root_.ReciprocityTheory.ChartRestriction.G.DVR.rs_mul (inf_le_left : (LB.LinComb L φ ε).U j ⊓ (LB.LinComb L φ ε).U j'' ≤ _)
      (resTop _ c) (s₁.f j)
    have m2 := _root_.ReciprocityTheory.ChartRestriction.G.DVR.rs_mul (inf_le_left : (LB.LinComb L φ ε).U j ⊓ (LB.LinComb L φ ε).U j'' ≤ _)
      (resTop _ d) (s₂.f j)
    have m3 := _root_.ReciprocityTheory.ChartRestriction.G.DVR.rs_mul (inf_le_right : (LB.LinComb L φ ε).U j ⊓ (LB.LinComb L φ ε).U j'' ≤ _)
      (resTop _ c) (s₁.f j'')
    have m4 := _root_.ReciprocityTheory.ChartRestriction.G.DVR.rs_mul (inf_le_right : (LB.LinComb L φ ε).U j ⊓ (LB.LinComb L φ ε).U j'' ≤ _)
      (resTop _ d) (s₂.f j'')
    rw [rs_resTop] at m1 m2 m3 m4
    have key := m3.symm.trans (e3.trans m4)
    rw [m1, m2]
    dsimp only [rs]
    rw [e1, e2, _root_.mul_left_comm, _root_.mul_left_comm (resTop _ d)]
    congr 1

end Rel

section SameSum

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} (D : DegData R I)

lemma c_zero : D.toPre.c 0 = 1 := by
  have h := D.toPre.c_add 0 0
  rw [add_zero] at h
  have h' : D.toPre.c 0 * D.toPre.c 0 = D.toPre.c 0 * 1 := by
    rw [_root_.mul_one]
    exact h.symm
  exact _root_.mul_left_cancel h'

lemma famφB0_one : D.toPre.famφB 0 1 = 𝟙 _ := by
  have h1 : (toUnit D.toPre.P.A ≫ D.toPre.c 0) = 1 := by
    rw [c_zero D]
    first
    | simp [Hom.one_def]
  show (padd D.toPre.P.A (𝟙 D.toPre.P.A) (toUnit _ ≫ D.toPre.c 0)).left = 𝟙 _
  rw [h1]
  show ((𝟙 D.toPre.P.A) * 1 : D.toPre.P.A ⟶ D.toPre.P.A).left = _
  rw [_root_.mul_one]
  first
  | rfl

lemma famφB0_two : D.toPre.famφB 0 2 = D.toPre.famφB 0 3 := by
  show (toUnit D.toPre.P.A ≫ D.toPre.c 0).left = (toUnit D.toPre.P.A ≫ η[D.toPre.P.A]).left
  rw [c_zero D, Hom.one_def]
  first
  | simp

lemma sameSum_famφB0 : LB.SameSum (D.toPre.famφB 0) (DegPre.famε 1)
    (fun _ : Fin 1 => 𝟙 D.toPre.P.A.left) (fun _ => ((1 : ℕ) : ℤ)) := by
  intro ψ
  have h0 : D.toPre.famφB 0 0 = 𝟙 _ := rfl
  have e1 := famφB0_one D
  have e2 := famφB0_two D
  rw [Fin.sum_univ_four, Fin.sum_univ_one]
  split_ifs
  all_goals first
    | (exfalso; exact ‹¬ 𝟙 D.toPre.P.A.left = ψ› (h0.symm.trans ‹D.toPre.famφB 0 0 = ψ›))
    | (exfalso; exact ‹¬ D.toPre.famφB 0 0 = ψ› (h0.trans ‹𝟙 D.toPre.P.A.left = ψ›))
    | (exfalso; exact ‹¬ 𝟙 D.toPre.P.A.left = ψ› (e1.symm.trans ‹D.toPre.famφB 0 1 = ψ›))
    | (exfalso; exact ‹¬ D.toPre.famφB 0 1 = ψ› (e1.trans ‹𝟙 D.toPre.P.A.left = ψ›))
    | (exfalso; exact ‹¬ D.toPre.famφB 0 3 = ψ› (e2.symm.trans ‹D.toPre.famφB 0 2 = ψ›))
    | (exfalso; exact ‹¬ D.toPre.famφB 0 2 = ψ› (e2.trans ‹D.toPre.famφB 0 3 = ψ›))
    | (simp [DegPre.famε]; done)

end SameSum

section Rank

variable {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] {I : Ideal R} (D : DegData R I)



theorem secB_rank_one (hLaws : Laws) (t s' : D.toPre.SecB 1 0) :
    ∃ c₀ c' : R, (∀ j, toW D.toPre.P.A.hom _ c₀ * s'.f j = toW D.toPre.P.A.hom _ c' * t.f j) ∧
      (c₀ = 0 → ∀ j, t.f j = 0) := by
  classical
  let pullSection {X Y Z : Scheme.{0}} (L : LB X) {K : Type} [Fintype K]
      (φ : K → (Y ⟶ X)) (ε : K → ℤ) (s : LB.Sec (LB.LinComb L φ ε))
      (f : Z ⟶ Y) (φ' : K → (Z ⟶ X)) (hφ : ∀ k, φ' k = f ≫ φ k) :
      LB.Sec (LB.LinComb L φ' ε) := by
    obtain rfl : φ' = fun k => f ≫ φ k := funext hφ
    exact pullSec L φ ε s f
  have pullSection_f {X Y Z : Scheme.{0}} (L : LB X) {K : Type} [Fintype K]
      (φ : K → (Y ⟶ X)) (ε : K → ℤ) (s : LB.Sec (LB.LinComb L φ ε))
      (f : Z ⟶ Y) (φ' : K → (Z ⟶ X)) (hφ : ∀ k, φ' k = f ≫ φ k) (j : K → L.ι) :
      (pullSection L φ ε s f φ' hφ).f j =
        (Z.presheaf.map (homOfLE (wchart_le_preimage L f φ φ' hφ j)).op).hom ((f.app _).hom (s.f j)) := by
    obtain rfl : φ' = fun k => f ≫ φ k := funext hφ
    rfl
  have hL := D.toPre.P.isLB
  obtain ⟨V, hpV, b, hb⟩ := hLaws.secBaseChange (Spec (CommRingCat.of R)) D.toPre.P 1 le_rfl
    (IsLocalRing.closedPoint R)
  have hV : V = ⊤ := eq_top_of_closedPoint_mem V hpV
  let t0 : Spec (CommRingCat.of R) ⟶ (overRes (T := baseOver (Spec (CommRingCat.of R))) V).left :=
    IsOpenImmersion.lift V.ι (𝟙 _) (by
      rintro _ ⟨x, rfl⟩
      refine ⟨⟨x, ?_⟩, rfl⟩
      rw [hV]; trivial)
  have ht0 : t0 ≫ V.ι = 𝟙 _ := IsOpenImmersion.lift_fac _ _ _
  set T := baseAt t0 with hTdef
  have hT : T.hom = 𝟙 _ := by
    show t0 ≫ V.ι ≫ 𝟙 _ = 𝟙 _
    rw [Category.comp_id, ht0]
  let b' : Fin (1 ^ D.toPre.P.g) → LB.Sec (LPow D.toPre.P.A D.toPre.P.L ((1 : ℕ) : ℤ) T) := fun i =>
    pullSection D.toPre.P.L _ _ (b i) (homAt t0 ▷ D.toPre.P.A).left (fun _ => (snd T D.toPre.P.A).left)
      (fun _ => by rw [← Over.comp_left, whiskerRight_snd])
  have hpull : ∀ i, IsPullSec D.toPre.P.A D.toPre.P.L ((1 : ℕ) : ℤ) (homAt t0 ▷ D.toPre.P.A)
      (whiskerRight_snd (homAt t0) D.toPre.P.A) (b i) (b' i) := fun i j => pullSection_f _ _ _ _ _ _ _ j
  obtain ⟨-, hspan⟩ := hb R t0 b' hpull
  have hsub : Subsingleton (Fin (1 ^ D.toPre.P.g)) := by rw [one_pow]; infer_instance
  have i0 : Fin (1 ^ D.toPre.P.g) := ⟨0, by rw [one_pow]; exact Nat.one_pos⟩
  have mem : ∀ x : LB.Sec (LPow D.toPre.P.A D.toPre.P.L ((1 : ℕ) : ℤ) T), ∃ c : Γ(T.left, ⊤),
      (SecM.ofSec D.toPre.P.A x : SecM D.toPre.P.A D.toPre.P.L ((1 : ℕ) : ℤ) T) =
        c • SecM.ofSec D.toPre.P.A (b' i0) := by
    intro x
    have hx : (SecM.ofSec D.toPre.P.A x : SecM D.toPre.P.A D.toPre.P.L ((1 : ℕ) : ℤ) T) ∈
        Submodule.span Γ(T.left, ⊤) (Set.range fun i => (SecM.ofSec D.toPre.P.A (b' i) :
          SecM D.toPre.P.A D.toPre.P.L ((1 : ℕ) : ℤ) T)) := by rw [hspan]; trivial
    obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun _).1 hx
    refine ⟨c i0, ?_⟩
    rw [← hc, Finset.sum_eq_single i0 (fun i _ hi => absurd (Subsingleton.elim i i0) hi)
      (fun h => absurd (Finset.mem_univ i0) h)]
  obtain ⟨ut, hut⟩ := sec_transport hL (sameSum_famφB0 D) t
  obtain ⟨us, hus⟩ := sec_transport hL (sameSum_famφB0 D) s'
  set π₂ := (snd T D.toPre.P.A).left with hπ₂
  have : IsIso T.hom := by rw [hT]; infer_instance
  have hiso : IsIso π₂ := by
    show IsIso (pullback.snd T.hom D.toPre.P.A.hom)
    infer_instance
  let pl : LB.Sec (LB.LinComb D.toPre.P.L (fun _ : Fin 1 => 𝟙 D.toPre.P.A.left) (fun _ => ((1 : ℕ) : ℤ))) →
      LB.Sec (LPow D.toPre.P.A D.toPre.P.L ((1 : ℕ) : ℤ) T) := fun u =>
    pullSection D.toPre.P.L _ _ u π₂ (fun _ => π₂) (fun _ => (Category.comp_id _).symm)
  obtain ⟨c0, hc0⟩ := mem (pl ut)
  obtain ⟨c1, hc1⟩ := mem (pl us)
  have hrel : c0 • (SecM.ofSec D.toPre.P.A (pl us) : SecM D.toPre.P.A D.toPre.P.L ((1 : ℕ) : ℤ) T) =
      c1 • SecM.ofSec D.toPre.P.A (pl ut) := by
    simp only [hc0, hc1, smul_smul, mul_comm c0 c1]
  have hfstp : (fst T D.toPre.P.A).left = π₂ ≫ D.toPre.P.A.hom := by
    have h1 : (fst T D.toPre.P.A).left ≫ T.hom = (T ⊗ D.toPre.P.A).hom := Over.w _
    have h2 : π₂ ≫ D.toPre.P.A.hom = (T ⊗ D.toPre.P.A).hom := Over.w _
    rw [hT, Category.comp_id] at h1
    rw [h1, h2]
  have eR' : ∀ c : Γ(T.left, ⊤), (Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom
      ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom c) = c :=
    fun c => by rw [← CommRingCat.comp_apply, Iso.hom_inv_id]; rfl
  have hlift : ∀ (W : (T ⊗ D.toPre.P.A).left.Opens) (c : Γ(T.left, ⊤)), liftHom D.toPre.P.A W c =
      toW (π₂ ≫ D.toPre.P.A.hom) W ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom c) := by
    intro W c
    rw [← toW_congr hfstp W]
    simp only [liftHom, toW, RingHom.comp_apply]
    rw [eR']
    rfl
  have key : ∀ (u₁ u₂ : LB.Sec (LB.LinComb D.toPre.P.L (fun _ : Fin 1 => 𝟙 D.toPre.P.A.left)
      (fun _ => ((1 : ℕ) : ℤ)))) (c c' : Γ(T.left, ⊤)),
      c • (SecM.ofSec D.toPre.P.A (pl u₁) : SecM D.toPre.P.A D.toPre.P.L ((1 : ℕ) : ℤ) T) =
        c' • SecM.ofSec D.toPre.P.A (pl u₂) →
      ∀ j : Fin 1 → D.toPre.P.L.ι, toW D.toPre.P.A.hom _ ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom c) * u₁.f j =
        toW D.toPre.P.A.hom _ ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom c') * u₂.f j := by
    intro u₁ u₂ c c' h j
    have hj := congrArg (fun z => z.1 j) h
    change liftHom _ _ c * (pl u₁).f j = liftHom _ _ c' * (pl u₂).f j at hj
    rw [hlift, hlift] at hj
    have h₁ := pullSection_f D.toPre.P.L _ _ u₁ π₂ (fun _ => π₂) (fun _ => (Category.comp_id _).symm) j
    have h₂ := pullSection_f D.toPre.P.L _ _ u₂ π₂ (fun _ => π₂) (fun _ => (Category.comp_id _).symm) j
    simp only [LPow, pl, h₁, h₂] at hj
    apply Scheme.Hom.app_injective π₂
    apply map_inj_of_le_ge (wchart_le_preimage D.toPre.P.L π₂ (fun _ => 𝟙 _) (fun _ => π₂)
      (fun _ => (Category.comp_id _).symm) j) (fun x hx => Set.mem_iInter.2 fun k => Set.mem_iInter.1 hx k)
    erw [map_mul, map_mul, app_toW, map_mul, map_mul, app_toW, toW_res, toW_res]
    exact hj
  have e1 := key us ut c0 c1 hrel
  have hsc := secCorr_scal hL _ _ _ _ hus hut (scal D.toPre.P.A.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom c0))
    (scal D.toPre.P.A.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom c1)) (fun j' => by
      rw [resTop_scal, resTop_scal]; exact e1 j')
  refine ⟨(Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom c0, (Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom c1,
    fun j => by rw [← resTop_scal, ← resTop_scal]; exact hsc j, fun h0 => ?_⟩
  have hc00 : c0 = 0 := by rw [← eR' c0, h0, map_zero]
  have hut0 : ∀ j : Fin 1 → D.toPre.P.L.ι, ut.f j = 0 := by
    have h := key ut ut 1 0 (by rw [one_smul, zero_smul, hc0, hc00, zero_smul])
    intro j
    have hj := h j
    rw [map_one, map_zero, map_one, map_zero, _root_.one_mul, zero_mul] at hj
    exact hj
  have ht := secCorr_scal hL _ _ _ _ hut hut 1 0 (fun j' => by rw [hut0 j', mul_zero, mul_zero])
  intro j
  have hj := ht j
  simp only [resTop, map_one, map_zero, _root_.one_mul, zero_mul] at hj
  exact hj

end Rank

end ReciprocityTheory.ChartRestriction.G.DVR.TG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenRank =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFibre =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFibre", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGen\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenDiv\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenLevel\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenRank\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenThick\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.WeightedChartPullback.WeightIndep\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.overlappingInstances false

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped CategoryTheory.Obj

attribute [local instance] Over.cartesianMonoidalCategory

namespace ReciprocityTheory.ChartRestriction.G.DVR.TG

open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out IsLocalRing

variable {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R] {I : Ideal R} {D : DegData R I}
  {A : PolAV (Spec (CommRingCat.of (FractionRing R)))}
  {G : Over (Spec (CommRingCat.of R))} [GrpObj G] [IsCommMonObj G]



theorem leading_expansion_term_ne_zero [IsDiscreteValuationRing R] (hI : I = maximalIdeal R) (U : Unif I D A G) (s : H0 U.LG.L 1)
    (hs : NonzeroOnSpecial U s) (g : ∀ α, D.toPre.SecB 1 α) (hexp : U.ExpandsAt 0 1 s g)
    (hv : ∀ mu, mu ≠ 0 → ∀ j, (pullback.fst D.toPre.P.A.hom (thick R I 0)).app _ ((g mu).f j) = 0) :
    ¬ ∀ j, (pullback.fst D.toPre.P.A.hom (thick R I 0)).app _ ((g 0).f j) = 0 := by
  intro h0
  subst hI

  have hloc : ∀ {X : Scheme.{0}} {W : X.Opens} (y : Γ(X, W)),
      (∀ x ∈ W, ∃ V : X.Opens, ∃ hV : V ≤ W, x ∈ V ∧ (X.presheaf.map (homOfLE hV).op).hom y = 0) →
        y = 0 := by
    intro X W y h
    choose V hV hxV hy using h
    refine TopCat.Sheaf.eq_of_locally_eq' X.sheaf (fun p : W => V p.1 p.2) W
      (fun p => homOfLE (hV p.1 p.2)) ?_ y 0 ?_
    · intro x hx
      exact TopologicalSpace.Opens.mem_iSup.mpr ⟨⟨x, hx⟩, hxV x hx⟩
    · intro p
      exact (hy p.1 p.2).trans (map_zero _).symm

  have hvan : ∀ (α : D.toPre.X) (j : Fin 4 → D.toPre.P.L.ι),
      ((U.gt 0).pG.left.app (D.toPre.P.L.wchart (D.toPre.famφB α) j)).hom ((g α).f j) = 0 := by
    intro α j
    have hz : ((pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) 0)).app
        ((D.toPre.P.L.LinComb (D.toPre.famφB α) (DegPre.famε 1)).U j)).hom ((g α).f j) = 0 := by
      by_cases hα : α = 0
      · subst hα
        exact h0 j
      · exact hv α hα j
    show (((U.gt 0).q.left ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) 0)).app
        ((D.toPre.P.L.LinComb (D.toPre.famφB α) (DegPre.famε 1)).U j)).hom ((g α).f j) = 0
    try rw [Scheme.comp_app]
    exact (congrArg (fun z => ((U.gt 0).q.left.app _).hom z) hz).trans (map_zero _)
  unfold NonzeroOnSpecial at hs
  obtain ⟨j, hj⟩ := hs
  obtain ⟨S, -, hS⟩ := hexp
  choose ch hch using fun y : D.toPre.P.A.left => WeightPf.exists_chart D.toPre.P.L D.toPre.P.isLB y
  apply hj
  refine hloc _ fun x hx => ?_
  refine ⟨U.expW 0 (fun _ => ch ((U.gt 0).pG.left.base x), fun _ => j 0) j S
      (fun α i => ch (((U.gt 0).pG.left ≫ D.toPre.famφB α i).base x))
      (fun α i => ch ((D.toPre.Oφ (U.gt 0).pG α i).base x)),
    inf_le_left.trans inf_le_right, ?_, ?_⟩
  · refine TopologicalSpace.Opens.mem_inf.mpr ⟨TopologicalSpace.Opens.mem_inf.mpr
      ⟨TopologicalSpace.Opens.mem_inf.mpr ⟨?_, ?_⟩, hx⟩, ?_⟩
    · exact Set.mem_iInter.mpr fun _ => hch _
    · exact Set.mem_iInter.mpr fun _ => Set.mem_iInter.mp hx 0
    · exact WeightPf.mem_finset_inf S _ x fun α _ => TopologicalSpace.Opens.mem_inf.mpr
        ⟨Set.mem_iInter.mpr fun i => hch _, Set.mem_iInter.mpr fun i => hch _⟩
  · have e := hS (fun _ => ch ((U.gt 0).pG.left.base x), fun _ => j 0) j
      (fun α i => ch (((U.gt 0).pG.left ≫ D.toPre.famφB α i).base x))
      (fun α i => ch ((D.toPre.Oφ (U.gt 0).pG α i).base x)) rfl (by
        intro a b hab
        rcases a with _ | a | a <;> rcases b with _ | b | b <;>
          exact congrArg (fun f => ch (f.base x)) hab)
    rw [Finset.sum_eq_zero (fun α _ => by rw [hvan, map_zero, zero_mul]), ← Units.val_pow_eq_pow_val] at e
    exact (Units.mul_right_eq_zero _).mp e

theorem generates_of_ne (hLaws : Laws) [IsDiscreteValuationRing R] (hI : I = maximalIdeal R)
    (t : D.toPre.SecB 1 0) (ht : ¬ ∀ j, (pullback.fst D.toPre.P.A.hom (thick R I 0)).app _ (t.f j) = 0) :
    SecBGenerates 1 0 t := by
  unfold SecBGenerates
  intro s'
  obtain ⟨c₀, c', h, h0⟩ := secB_rank_one (hLaws := hLaws) (t := t) (s' := s')
  haveI : Flat D.toPre.P.A.hom := flat_B

  have hc₀ : c₀ ≠ 0 := by
    intro hz
    apply ht
    intro j
    rw [h0 hz j, map_zero]

  have hdiv : ∃ a : R, c' = c₀ * a := by
    obtain ⟨m, hm | hm⟩ := ValuationRing.cond c₀ c'
    · exact ⟨m, hm.symm⟩
    · by_cases hmu : IsUnit m
      · obtain ⟨u, rfl⟩ := hmu
        refine ⟨↑u⁻¹, ?_⟩
        rw [← hm, _root_.mul_assoc, Units.mul_inv, _root_.mul_one]
      · exfalso
        have hmI : m ∈ I ^ (0 + 1) := by
          rw [zero_add, pow_one, hI]
          exact (IsLocalRing.mem_maximalIdeal m).mpr hmu
        have hc' : c' ≠ 0 := by
          rintro rfl
          exact hc₀ (by rw [← hm, zero_mul])
        apply ht
        intro j
        have hj : t.f j = toW D.toPre.P.A.hom _ m * s'.f j := by
          refine (sub_eq_zero.mp (toW_mul_eq_zero D.toPre.P.A.hom _ hc' ?_)).symm
          rw [mul_sub, ← _root_.mul_assoc, ← map_mul, hm, h j, sub_self]
        rw [hj, map_mul, app_toW_of_mem D.toPre.P.A.hom (I ^ (0 + 1)) _ hmI, zero_mul]
  obtain ⟨a, rfl⟩ := hdiv
  have hSa : SecIsMul D.toPre.P.A.hom a s' t := by
    intro j
    rw [resTop_scal]
    refine sub_eq_zero.mp (toW_mul_eq_zero D.toPre.P.A.hom _ hc₀ ?_)
    rw [mul_sub, h j, map_mul, _root_.mul_assoc, sub_self]
  refine ⟨a, hSa, fun b hb => ?_⟩
  by_contra hne
  apply ht
  intro j
  have e1 := hb j
  have e2 := hSa j
  rw [resTop_scal] at e1 e2
  have hz : t.f j = 0 := by
    refine toW_mul_eq_zero D.toPre.P.A.hom _ (sub_ne_zero.mpr hne) ?_
    rw [map_sub, sub_mul, ← e1, ← e2, sub_self]
  rw [hz, map_zero]

end ReciprocityTheory.ChartRestriction.G.DVR.TG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFibre =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenPf =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenPf", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGen\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.FamMod\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenDiv\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFibre\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenGeneric\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenLevel\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenTerms\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenThick\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.overlappingInstances false

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped CategoryTheory.Obj

attribute [local instance] Over.cartesianMonoidalCategory

namespace ReciprocityTheory.ChartRestriction.G.DVR

open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out IsLocalRing TG

variable {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R] {I : Ideal R}
  {D : DegData R I} {A : PolAV (Spec (CommRingCat.of (FractionRing R)))}
  {G : Over (Spec (CommRingCat.of R))} [GrpObj G] [IsCommMonObj G]

theorem isTheta_of_nonzeroOnSpecial' (hLaws : Laws) (hL4 : Laws4) (hR : CLND R)
    [IsDiscreteValuationRing R] (hI : I = maximalIdeal R) (U : Unif I D A G) (s : H0 U.LG.L 1)
    (hs : NonzeroOnSpecial U s) : IsTheta U s := by
  have := flat_G U.toUnifPre
  have := flat_B (D := D)
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible R
  have hIϖ : I = Ideal.span {ϖ} := by
    rw [hI, (IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).1 hϖ]
  obtain ⟨F, hF, -⟩ := (U.expand 1 le_rfl).1 (secK U.toUnifPre s)
  obtain ⟨r, hr0, σ, f, hσ, hfK, hexp⟩ := hF
  have hσr := sec_eq_of_secScal U.toUnifPre s σ (secK U.toUnifPre s) r (secK_rel U.toUnifPre s) hσ
  obtain ⟨n, u, hru⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hr0 hϖ
  let τ : H0 U.LG.L 1 := SecOps.secScale (scal G.hom (u : R)) s
  have hστ : ∀ j, σ.f j = toW G.hom _ (ϖ ^ n) * τ.f j := fun j => by
    rw [hσr, hru]
    show _ = _ * (toW G.hom _ (u : R) * s.f j)
    rw [map_mul, mul_comm (toW G.hom _ (u : R)), _root_.mul_assoc]
  obtain ⟨g, hfg, hexpg⟩ := expand_div_pow U.toUnifPre hL4.weightIndep hϖ.ne_zero hIϖ n σ τ hστ f hexp
  let g' : ∀ α, D.toPre.SecB 1 α := fun α => SecOps.secScale (scal D.toPre.P.A.hom ((u⁻¹ : Rˣ) : R)) (g α)
  have hexp' : ∀ e, U.ExpandsAt e 1 s g' := fun e =>
    expandsAt_scale U.toUnifPre ((u⁻¹ : Rˣ) : R) τ s (fun j => by
      show _ = _ * (toW G.hom _ (u : R) * s.f j)
      rw [← _root_.mul_assoc, ← map_mul, Units.inv_mul, map_one, _root_.one_mul]) g g' (fun α j => rfl) e (hexpg e)
  have hgF : ∀ α, GeneratorPullback.SecScal D.toPre.P.L (DegPre.famφ D.toPre (FractionRing R) α) (DegPre.famε 1) (F.s α)
      (D.toPre.famφB α) (DegPre.famε 1) (g' α) (DegPre.prB D.toPre (FractionRing R)).left 1 := by
    intro α j₁ j₂ hc
    have e := hfK α j₁ j₂ hc
    have hf' : (f α).f j₂ = toW D.toPre.P.A.hom _ r * (g' α).f j₂ := by
      rw [hfg α j₂]
      show _ = _ * (toW _ _ ((u⁻¹ : Rˣ) : R) * (g α).f j₂)
      rw [← _root_.mul_assoc, ← map_mul, hru, mul_comm (u : R), _root_.mul_assoc, Units.mul_inv, _root_.mul_one]
    have hBF : (DegPre.BF D.toPre (FractionRing R)).hom =
        (pullback.fst _ _ ≫ jFK (R := R) (FractionRing R)) ≫ jK R := by
      simp [DegPre.BF, TF]
    have hw : (DegPre.prB D.toPre (FractionRing R)).left ≫ D.toPre.P.A.hom = (DegPre.BF D.toPre (FractionRing R)).hom :=
      Over.w _
    erw [hf', map_mul, app_toW, map_mul, toW_res, resTop_scal, toW_congr hw] at e
    have hu := isUnit_toW_of_K (pullback.fst _ _ ≫ jFK (R := R) (FractionRing R))
      (LB.wchart D.toPre.P.L (DegPre.famφ D.toPre (FractionRing R) α) j₁ ⊓
        LB.wchart D.toPre.P.L (fun k => (DegPre.prB D.toPre (FractionRing R)).left ≫ D.toPre.famφB α k) j₂) hr0
    rw [← toW_congr hBF] at hu
    have e2 := hu.mul_left_cancel e
    have h1 : resTop (LB.wchart D.toPre.P.L (DegPre.famφ D.toPre (FractionRing R) α) j₁ ⊓
        LB.wchart D.toPre.P.L (fun k => (DegPre.prB D.toPre (FractionRing R)).left ≫ D.toPre.famφB α k) j₂)
        (1 : Γ((DegPre.BF D.toPre (FractionRing R)).left, ⊤)) = 1 := map_one _
    rw [h1, _root_.one_mul]
    exact e2
  have hv := terms_vanish hϖ hI F g' hgF
  have h0 := leading_expansion_term_ne_zero hI U s hs g' (hexp' 0) hv
  exact fun e => ⟨g', hexp' e, generates_of_ne hLaws hI (g' 0) h0⟩

end ReciprocityTheory.ChartRestriction.G.DVR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenPf =====
