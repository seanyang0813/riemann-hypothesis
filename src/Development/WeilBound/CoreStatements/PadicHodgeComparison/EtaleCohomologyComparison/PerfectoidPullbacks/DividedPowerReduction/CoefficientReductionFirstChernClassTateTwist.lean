module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.JEqPdPow
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechRefinementCohomologyBijective
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassReductionCompatible
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.IsFirstChernClassOfLineBundle
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCrystallineLift
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.GrSplit
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ClsEqOfEq
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueIsFirstChernTorsionFree
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FirstChernPullback
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullUnitClass
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedTrans
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallineCocycleClosed
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueChernClassNilpotentBase
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoefficientReductionFirstChernClassTateTwist, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsFirstChernThickeningMuBOfIsFirstChernDeRham, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullRetype, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullSqLePullToSq, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedObjPdPow, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedKillsToSome, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMCup, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMorCupOne, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.CoefficientReductionFirstChernClassTateTwist

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoefficientReductionFirstChernClassTateTwist =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoefficientReductionFirstChernClassTateTwist", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.JEqPdPow\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechRefinementCohomologyBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassReductionCompatible\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.IsFirstChernClassOfLineBundle\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCrystallineLift\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallineCocycleClosed\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueChernClassNilpotentBase\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section

namespace GlobalTheory.CompanionTheory.ReductionFirstChern

open GlobalTheory.CompanionTheory.CocCls

section Ring

variable {S S' : Type} [CommRing S] [CommRing S'] {J : Ideal S} {J' : Ideal S'}

theorem dpow_mem_pdP (δ : DividedPowers J) {x : S} (hx : x ∈ J) {k r : ℕ} (h : r ≤ k) : δ.dpow k x ∈ pdP δ r :=
  Ideal.subset_span ⟨[(k, x)], by simpa using hx, by simpa using h, by simp⟩

theorem dlog_trunc (δ : DividedPowers J) {s N : ℕ} (hs : pdP δ s = ⊥) (h : s ≤ N) {v : S} (hv : v - 1 ∈ J) :
    B.dlog δ N v = B.dlog δ s v := by
  unfold B.dlog
  refine (Finset.sum_subset (Finset.range_mono h) fun k _ hk => ?_).symm
  have h1 : δ.dpow (k + 1) (v - 1) ∈ pdP δ s := dpow_mem_pdP δ hv (by
    have : s ≤ k := by simpa using hk
    omega)
  rw [hs, Ideal.mem_bot] at h1
  rw [h1, mul_zero]

theorem dlog_red {δ : DividedPowers J} {δ' : DividedPowers J'} {f : S →+* S'} (hf : IsDPMorphism δ δ' f) {s N : ℕ}
    (hs : pdP δ s = ⊥) (hN : ∀ k, N ≤ k → (k.factorial : S') = 0) {v : S} (hv : v - 1 ∈ J) :
    f (B.dlog δ s v) = B.dlog δ' N (f v) := by
  rw [← dlog_trunc δ hs (le_max_left s N) hv, dlog_map hf _ hv]
  exact GlobalTheory.CompanionTheory.FirstChernClassFactorial.dlog_eq_of_factorial δ' (le_max_right s N) hN _

theorem factorial_quot {l : ℕ} (hl : l ≠ 0) (n k : ℕ) (hk : l * n ≤ k) :
    (k.factorial : S ⧸ Ideal.span {(l : S) ^ n}) = 0 := by
  obtain ⟨a, ha⟩ := (GlobalTheory.CompanionTheory.FirstChernClassFactorial.pow_dvd_factorial_mul l (Nat.pos_of_ne_zero hl) n).trans (Nat.factorial_dvd_factorial hk)
  rw [ha, ← map_natCast (Ideal.Quotient.mk (Ideal.span {(l : S) ^ n})), Ideal.Quotient.eq_zero_iff_mem, Nat.cast_mul, Nat.cast_pow]
  exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)

end Ring

section Lift

variable {O A R : Type} [CommRing O] [CommRing A] [Algebra O A] [CommRing R]
  {I : Ideal A} {γ : DividedPowers I} {J : Ideal R} {δ : DividedPowers J} {κ : O →+* R ⧸ J} {l n : ℕ}
  (d : RedIn δ κ γ l n) {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {s : ℕ} {𝒱 : Set X.Opens}
  {C : Type 1} [Category.{0} C] (g : C ⥤ (TS γ q l s 𝒱).FullSubcategory) {D : E.LineData X}

def redLift (Lf : B.CLift (q := q) (b := nlBase A I γ 0) (ht := rfl) (κ := κA O I) (g ⋙ (TS γ q l s 𝒱).ι) D) :
    B.CLift (q := q) (b := nlBase R J δ l) (ht := rfl) (κ := κ) (g ⋙ redG q s d 𝒱) D where
  p T := Spec.map (CommRingCat.ofHom (qBar (g.obj T).obj l n)) ≫ Lf.p T
  hp T := by
    rw [Category.assoc, Lf.hp]
    rfl
  w {T T'} φ := Units.map (Ideal.Quotient.mk (lnT (g.obj T').obj l n)).toMonoidHom (Lf.w φ)
  hw {T T'} φ h := by
    have e : B.thSp (q := q) (b := nlBase R J δ l) (ht := rfl) (κ := κ) ((g ⋙ redG q s d 𝒱).map φ) ≫ Spec.map (CommRingCat.ofHom (qBar (g.obj T).obj l n)) ≫ Lf.p T =
        Spec.map (CommRingCat.ofHom (qBar (g.obj T').obj l n)) ≫ (B.thSp (q := q) (b := nlBase A I γ 0) (ht := rfl) (κ := κA O I) ((g ⋙ (TS γ q l s 𝒱).ι).map φ) ≫ Lf.p T) := by
      rw [← Category.assoc, ← Category.assoc]
      congr 1
      unfold B.thSp
      rw [← Spec.map_comp, ← Spec.map_comp]
      congr 1
      exact CommRingCat.hom_ext (Ideal.Quotient.ringHom_ext (RingHom.ext fun _ => rfl))
    have h0 := hh Lf φ
    have h2 : (Spec.map (CommRingCat.ofHom (qBar (g.obj T').obj l n)) ≫ (B.thSp (q := q) (b := nlBase A I γ 0) (ht := rfl) (κ := κA O I) ((g ⋙ (TS γ q l s 𝒱).ι).map φ) ≫ Lf.p T)) ≫ D.f =
        (Spec.map (CommRingCat.ofHom (qBar (g.obj T').obj l n)) ≫ Lf.p T') ≫ D.f := by
      rw [Category.assoc, h0, Category.assoc]
    have h3 := uq_map D (qBar (g.obj T').obj l n) _ _ h0 h2
    have h4 := uq_congr D e rfl h h2
    have h5 := Lf.hw φ h0
    change _ = (uq D _ _ h).val
    rw [h4, h3]
    change _ = qBar (g.obj T').obj l n (uq D _ _ h0).val
    refine Eq.trans ?_ (congrArg (qBar (g.obj T').obj l n) h5)
    rfl

theorem r_red (Lf : B.CLift (q := q) (b := nlBase A I γ 0) (ht := rfl) (κ := κA O I) (g ⋙ (TS γ q l s 𝒱).ι) D)
    (σ : ComposableArrows C 2) :
    (B.CLift.r (redLift d g Lf) σ).val = Ideal.Quotient.mk (lnT (g.obj (σ.obj (Fin.last 2))).obj l n) (B.CLift.r Lf σ).val := by
  have h2 : B.CLift.r (redLift d g Lf) σ =
      Units.map (Ideal.Quotient.mk (lnT (g.obj (σ.obj (Fin.last 2))).obj l n)).toMonoidHom (B.CLift.r Lf σ) := by
    unfold B.CLift.r
    rw [map_mul, map_mul, map_inv]
    rfl
  rw [h2]
  rfl

theorem r_sub (Lf : B.CLift (q := q) (b := nlBase A I γ 0) (ht := rfl) (κ := κA O I) (g ⋙ (TS γ q l s 𝒱).ι) D)
    (σ : ComposableArrows C 2) : (B.CLift.r Lf σ).val - 1 ∈ (g.obj (σ.obj (Fin.last 2))).obj.J := by
  have hfg : σ.map' 0 2 = σ.map' 0 1 ≫ σ.map' 1 2 := σ.map'_comp 0 1 2
  have h0 : B.CLift.r Lf σ = Rf Lf (σ.map' 0 1) (σ.map' 1 2) (σ.map' 0 1 ≫ σ.map' 1 2) := by
    rw [← hfg]
    rfl
  have h1 : red (σ.obj (Fin.last 2)) (g ⋙ (TS γ q l s 𝒱).ι) (B.CLift.r Lf σ) = 1 := by
    rw [h0]
    exact red_Rf Lf _ _
  exact sub_one_mem h1

theorem coc_red {Λ : Type} [CommRing Λ] (c : Λ →+* R)
    (Lf : B.CLift (q := q) (b := nlBase A I γ 0) (ht := rfl) (κ := κA O I) (g ⋙ (TS γ q l s 𝒱).ι) D)
    (σ : ComposableArrows C 2) :
    B.CLift.coc (redLift d g Lf) c (l * n) σ =
      Ideal.Quotient.mk (lnT (g.obj (σ.obj (Fin.last 2))).obj l n) (B.CLift.coc Lf (RingHom.id A) s σ) := by
  have e1 := dlog_red (redδ_dp (g.obj (σ.obj (Fin.last 2))).obj (g.obj (σ.obj (Fin.last 2))).property.1 n) (s := s) (N := l * n)
    (g.obj (σ.obj (Fin.last 2))).property.1.1 (fun k hk => factorial_quot d.hl n k hk) (r_sub g Lf σ)
  exact (congrArg _ (r_red d g Lf σ)).trans e1.symm

end Lift

section Top

variable {b : Base} {L : b.Fun}

theorem idF_ext {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R} {a a' : IdF A}
    (h : a.S = a'.S) : a = a' := by
  cases a
  cases a'
  cases h
  rfl

theorem stdI_top (Q : ObjectProperty (Thick L)) : stdI Q (some 0) 0 = IdF.top _ :=
  idF_ext (funext fun T => top_unique (le_trans (le_of_eq T.obj.pdPow_zero.symm) le_sup_left))

theorem bij_top {Q Q' : ObjectProperty (Thick L)} (h : Q' ≤ Q) {a e : IdF (sP Q).A} {a' e' : IdF (sP Q').A}
    (ha : a = IdF.top _) (ha' : a' = IdF.top _) (h1 : (incl h).Le a a') (h2 : (incl h).Le e e') (j : ℕ)
    (H : Function.Bijective (((incl h).sq h1 h2).pull j)) :
    Function.Bijective (((incl h).sq (a := IdF.top _) (a' := IdF.top _) (fun _ _ _ => trivial) h2).pull j) := by
  subst ha ha'
  exact H

end Top

theorem coefficientReduction_firstChernClass_tateTwist : ∀ {O A R Λ : Type} [CommRing O] [CommRing A] [Algebra O A] [CommRing R] [CommRing Λ] {I : Ideal A} {γ : DividedPowers I}
    {J : Ideal R} {δ : DividedPowers J} {κ : O →+* R ⧸ J} {l n : ℕ} (d : RedIn δ κ γ l n) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) (s : ℕ) (c : Λ →+* R) (lam : Λ →+* A) (hc : ∀ a, d.ρ (c a) = Ideal.Quotient.mk _ (lam a))
    (D : E.LineData X), sSup (𝒱D D) = ⊤ → ∀ (x : CH.H (B.OM (nlFun δ l X q κ) c) 2) (z : HO (TS γ q l s {⊤}) 2),
    B.IsFirstChernClassOfLineBundle (q := q) (b := nlBase R J δ l) (ht := rfl) (κ := κ) D c (l * n) x → IsFirstChernThickening (TS γ q l s {⊤}) D s z →
    redM (TS γ q l s {⊤}) none ((l : A) ^ n) 2 z = (redMor q s d {⊤} c lam hc none).pull 2 x := by
  intro O A R Λ _ _ _ _ _ I γ J δ κ l n d X q s c lam hc D hD x z hx hz
  let Q := TS γ q l s {⊤}
  let Q' := TS γ q l s (𝒱D D)
  have h : Q' ≤ Q := fun T hT => ⟨hT.1, ⊤, rfl, GlobalTheory.CompanionTheory.CrystallineChernClass.inU_top T⟩
  let g : Q'.FullSubcategory ⥤ Q.FullSubcategory := ObjectProperty.ιOfLE h
  have hU : Used (TF l s : ObjectProperty (Thick (nlFun γ 0 X q (κA O I)))) := Or.inl ⟨rfl, l, s, rfl⟩
  have hinj := bij_top h (stdI_top Q) (stdI_top Q') _ (incl_std h none ((l : A) ^ n)) 2
    ((_root_.GlobalTheory.CompanionTheory.NlZar.zariski_descent (TF l s) hU (𝒱D D) {⊤} h (by rintro W rfl; rw [hD]) 2).2.1 (some 0) none 0 ((l : A) ^ n))
  obtain ⟨Lf⟩ := _root_.GlobalTheory.CompanionTheory.CLiftEx.nonempty_cLift (q := q) (b := nlBase A I γ 0) (ht := rfl) (κ := κA O I) (g ⋙ Q.ι) D (fun T =>
    GlobalTheory.CompanionTheory.CrystallineChernClass.st_le_lifts (γ := γ) (p := 0) (q := q) (κ := κA O I) D T.obj ⟨trivial, T.property.2⟩)
  obtain ⟨hz1, hcl1⟩ := hz Q'.FullSubcategory g (fun T => T.property.2) Lf
  let Lr := redLift d g Lf
  obtain ⟨hz2, hcl2⟩ := hx Q'.FullSubcategory (g ⋙ redG q s d {⊤}) Lr
  apply hinj.1
  let P := (incl h).sq (a := IdF.top _) (a' := IdF.top _) (fun _ _ _ => trivial) (incl_std h none ((l : A) ^ n))
  let M₁ := (toSq (IdF.top _) (stdI Q none ((l : A) ^ n)) fun _ => rfl).comp P
  let M₂ := (redMor q s d {⊤} c lam hc none).comp (σ'' := lam) P
  let m₁ : CH.Mor (g ⋙ CH.modF (sP Q).A) (sq (IdF.top (sP Q').A) (stdI Q' none ((l : A) ^ n))) (RingHom.id A) :=
    { G := 𝟭 _, τ := fun T => M₁.τ T, nat := fun φ x => M₁.nat φ x }
  let m₂ : CH.Mor ((g ⋙ redG q s d {⊤}) ⋙ B.OM (nlFun δ l X q κ) c) (sq (IdF.top (sP Q').A) (stdI Q' none ((l : A) ^ n))) lam :=
    { G := 𝟭 _, τ := fun T => M₂.τ T, nat := fun φ x => M₂.nat φ x }
  have hL : P.pull 2 (redM Q none ((l : A) ^ n) 2 z) = m₁.pull 2 ((CH.Mor.restrict (CH.modF (sP Q).A) g).pull 2 z) := by
    obtain ⟨f, rfl⟩ := Submodule.Quotient.mk_surjective _ z
    rfl
  have hR : P.pull 2 ((redMor q s d {⊤} c lam hc none).pull 2 x) =
      m₂.pull 2 ((CH.Mor.restrict (B.OM (nlFun δ l X q κ) c) (g ⋙ redG q s d {⊤})).pull 2 x) := by
    obtain ⟨f, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    rfl
  have hE : m₁.pullC 2 (Lf.coc (RingHom.id A) s) = m₂.pullC 2 (Lr.coc c (l * n)) := by
    funext σ
    have e := coc_red d g c Lf σ
    have t : ∀ (T : Q'.FullSubcategory) (b : (g.obj T).obj.B), m₁.τ T b = m₂.τ T (Ideal.Quotient.mk (lnT (g.obj T).obj l n) b) :=
      fun _ _ => rfl
    exact (t _ _).trans (congrArg (m₂.τ _) e.symm)
  have hb1 : CH.d _ 2 (m₁.pullC 2 (Lf.coc (RingHom.id A) s)) = 0 :=
    (m₁.d_pullC 2 _).trans ((congrArg _ hz1).trans (map_zero _))
  have hb2 : CH.d _ 2 (m₂.pullC 2 (Lr.coc c (l * n))) = 0 :=
    (m₂.d_pullC 2 _).trans ((congrArg _ hz2).trans (map_zero _))
  have a1 := CrystallineSemistableComparison.P.mapH_cls m₁.hom 2 _ hz1 hb1
  have a2 := CrystallineSemistableComparison.P.mapH_cls m₂.hom 2 _ hz2 hb2
  have key : ∀ (w w' : CH.Cn (sq (IdF.top (sP Q').A) (stdI Q' none ((l : A) ^ n))) 2) (k : CH.d _ 2 w = 0) (k' : CH.d _ 2 w' = 0),
      w = w' → (CH.cx _).cls w k = (CH.cx _).cls w' k' := by
    rintro _ _ _ _ rfl
    rfl
  exact hL.trans ((congrArg (m₁.pull 2) hcl1.symm).trans (a1.trans ((key _ _ hb1 hb2 hE).trans
    (a2.symm.trans ((congrArg (m₂.pull 2) hcl2).trans hR.symm)))))

end GlobalTheory.CompanionTheory.ReductionFirstChern
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoefficientReductionFirstChernClassTateTwist =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsFirstChernThickeningMuBOfIsFirstChernDeRham =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsFirstChernThickeningMuBOfIsFirstChernDeRham", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section

namespace GlobalTheory.CompanionTheory.FirstChernRationalLift

variable {K B' : Type} [Field K] [CharZero K] [CommRing B'] [Algebra K B'] {I : Ideal B'} (γ : DividedPowers I) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of K)) (s : ℕ)

abbrev famK {C : Type 1} [Category.{0} C] (G : C ⥤ (TS γ q 1 s {⊤}).FullSubcategory) : C ⥤ Thick (smFun X q) :=
  G ⋙ (smO γ q 1 s {⊤}).G ⋙ (TO q 1 s {⊤}).ι

theorem pt_famK {C : Type 1} [Category.{0} C] (G : C ⥤ (TS γ q 1 s {⊤}).FullSubcategory) (c : C) :
    pt ((famK γ q s G).obj c) = pt (G.obj c).obj := Category.comp_id _

def liftK {C : Type 1} [Category.{0} C] {G : C ⥤ (TS γ q 1 s {⊤}).FullSubcategory} {D : E.LineData X}
    (Λ : B.CLift (q := q) (b := nlBase B' I γ 0) (ht := rfl) (κ := κA K I) (G ⋙ (TS γ q 1 s {⊤}).ι) D) :
    CLiftK (famK γ q s G) D where
  p c := Λ.p c
  hp c := (Λ.hp c).trans (Category.comp_id _).symm
  w φ := Λ.w φ
  hw φ h := Λ.hw φ h

theorem isFirstChernThickening_muB_of_isFirstChernDeRham (D : E.LineData X) (c : HdR q 2)
    (h : IsFirstChernDeRham (q := q) D c) :
    IsFirstChernThickening (TS γ q 1 s {⊤}) D s (muB γ q 1 s {⊤} 2 c) := by
  intro C _ G hG Λ
  have hpd : ∀ c', ((famK γ q s G).obj c').pdPow s = ⊥ := fun c' => ((smO γ q 1 s {⊤}).G.obj (G.obj c')).property.1.1
  have hV : ∀ c', ∃ (V : X.Opens) (σ : (V : Scheme.{0}) ⟶ D.Y), σ ≫ D.f = V.ι ∧ InU V ((famK γ q s G).obj c') := by
    intro c'
    obtain ⟨V, ⟨σ, hσ⟩, hU⟩ := hG c'
    refine ⟨V, σ, hσ, ?_⟩
    unfold InU
    rw [pt_famK]
    exact hU
  obtain ⟨z, hz, hzv, hcls⟩ := h s C (famK γ q s G) hpd hV (liftK γ q s Λ)
  let m' : CH.Mor (famK γ q s G ⋙ O (smFun X q)) (G ⋙ CH.modF (sP (TS γ q 1 s {⊤})).A) (algebraMap K B') :=
    ⟨𝟭 _, fun T => (smO γ q 1 s {⊤}).o.τ (G.obj T), fun φ x => (smO γ q 1 s {⊤}).o.nat (G.map φ) x⟩
  have e : (show CH.Cn (G ⋙ CH.modF (sP (TS γ q 1 s {⊤})).A) 2 from Λ.coc (RingHom.id _) s) = m'.pullC 2 z := by
    funext σ
    exact (hzv σ).symm
  have hb : CH.d (G ⋙ CH.modF (sP (TS γ q 1 s {⊤})).A) 2 (m'.pullC 2 z) = 0 := by
    rw [m'.d_pullC, hz, map_zero]
  have hz' : CH.d (G ⋙ CH.modF (sP (TS γ q 1 s {⊤})).A) 2 (Λ.coc (RingHom.id _) s) = 0 := (congrArg (CH.d (G ⋙ CH.modF (sP (TS γ q 1 s {⊤})).A) 2) e).trans hb
  refine ⟨hz', ?_⟩
  have e1 := CrystallineSemistableComparison.P.mapH_cls m'.hom 2 z hz hb
  have e2 : (CH.Mor.restrict (CH.modF (sP (TS γ q 1 s {⊤})).A) G).pull 2 (muB γ q 1 s {⊤} 2 c) =
      m'.pull 2 ((CH.Mor.restrict (O (smFun X q)) (famK γ q s G)).pull 2 c) := by
    have a1 := (CrystallineSemistableComparison.P.pull_comp (CH.Mor.restrict (O (smFun X q)) (TO q 1 s {⊤}).ι) (smO γ q 1 s {⊤}).o 2 c).1
    have a2 := (CrystallineSemistableComparison.P.pull_comp ((CH.Mor.restrict (O (smFun X q)) (TO q 1 s {⊤}).ι).comp (smO γ q 1 s {⊤}).o)
      (CH.Mor.restrict (CH.modF (sP (TS γ q 1 s {⊤})).A) G) 2 c).1
    have b := (CrystallineSemistableComparison.P.pull_comp (CH.Mor.restrict (O (smFun X q)) (famK γ q s G)) m' 2 c).1
    exact (congrArg ((CH.Mor.restrict (CH.modF (sP (TS γ q 1 s {⊤})).A) G).pull 2) a1.symm).trans (a2.symm.trans b)
  rw [e2, ← hcls]
  refine Eq.trans ?_ e1.symm
  have key : ∀ (a : CH.Cn (G ⋙ CH.modF (sP (TS γ q 1 s {⊤})).A) 2) (ha : CH.d (G ⋙ CH.modF (sP (TS γ q 1 s {⊤})).A) 2 a = 0),
      a = m'.pullC 2 z → (CH.cx (G ⋙ CH.modF (sP (TS γ q 1 s {⊤})).A)).cls a ha =
        (CH.cx (G ⋙ CH.modF (sP (TS γ q 1 s {⊤})).A)).cls (m'.pullC 2 z) hb := by
    rintro _ _ rfl
    rfl
  exact key _ hz' e

end GlobalTheory.CompanionTheory.FirstChernRationalLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsFirstChernThickeningMuBOfIsFirstChernDeRham =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullRetype =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullRetype", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.JEqPdPow\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section

namespace GlobalTheory.CompanionTheory.RedNat

universe w w' v u v' u'

section Retype
variable {R R' : Type} [CommRing R] [CommRing R'] {C : Type u} [Category.{v} C] {C' : Type u'} [Category.{v'} C']
  {F : C ⥤ ModuleCat.{w} R} {F' : C' ⥤ ModuleCat.{w'} R'} {σ σ₂ : R →+* R'}

def retype (m : CH.Mor F F' σ) (σ₂ : R →+* R') (h : ∀ T (a : R) (y : F'.obj T), σ a • y = σ₂ a • y) : CH.Mor F F' σ₂ where
  G := m.G
  τ T :=
    { toFun := m.τ T
      map_add' := map_add _
      map_smul' := fun a x => (LinearMap.map_smulₛₗ (m.τ T) a x).trans (h T a _) }
  nat := m.nat

theorem pull_retype (m : CH.Mor F F' σ) (h : ∀ T (a : R) (y : F'.obj T), σ a • y = σ₂ a • y) (n : ℕ) (x : CH.H F n) :
    (retype m σ₂ h).pull n x = m.pull n x := by
  obtain ⟨a, ha, rfl⟩ := (CrystallineSemistableComparison.P.cls_surj _ n).1 x
  have hb : CH.d F' n (m.pullC n a) = 0 := by rw [CH.Mor.d_pullC]; exact (congrArg _ ha).trans (map_zero _)
  exact (CrystallineSemistableComparison.P.mapH_cls (retype m σ₂ h).hom n a ha hb).trans (CrystallineSemistableComparison.P.mapH_cls m.hom n a ha hb).symm

end Retype

section Eta
variable {O A₁ A₂ R₁ R₂ : Type} [CommRing O] [CommRing A₁] [CommRing A₂] [Algebra O A₁] [Algebra O A₂] [CommRing R₁]
    [CommRing R₂] {I₁ : Ideal A₁} {I₂ : Ideal A₂} {γ₁ : DividedPowers I₁} {γ₂ : DividedPowers I₂}
    {J₁ : Ideal R₁} {J₂ : Ideal R₂} {δ₁ : DividedPowers J₁} {δ₂ : DividedPowers J₂} {κ₁ : O →+* R₁ ⧸ J₁} {κ₂ : O →+* R₂ ⧸ J₂}
    {l n s : ℕ} (d₁ : RedIn δ₁ κ₁ γ₁ l n) (d₂ : RedIn δ₂ κ₂ γ₂ l n) {X₁ X₂ : Scheme.{0}} {q₁ : X₁ ⟶ Spec (CommRingCat.of O)}
    {q₂ : X₂ ⟶ Spec (CommRingCat.of O)} {σ : A₁ →+* A₂} (nm : NMor γ₁ q₁ (κA O I₁) γ₂ q₂ (κA O I₂) σ) {σ' : R₁ →+* R₂}
    (m : Mor (nlFun δ₁ l X₁ q₁ κ₁) (nlFun δ₂ l X₂ q₂ κ₂) σ')

theorem eta_comm (hρ : ∀ x, d₂.ρ (σ' x) = lnMap σ l le_rfl (d₁.ρ x))
    (T : Thick (nlFun γ₂ 0 X₂ q₂ (κA O I₂))) (r : R₁) :
    iBar ((nm.mor 0).obj T) l n (d₁.ρ r) = iBar T l n (d₂.ρ (σ' r)) := by
  obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective (d₁.ρ r)
  rw [hρ, ← ha]
  rfl

def etaR (hpt : ∀ (B : CommRingCat.{0}) (y : PtOver X₂ q₂ κ₂ B), (show PtOver X₁ q₁ κ₁ B from m.pt.app B y).1.2 = y.1.2 ≫ nm.u)
    (hρ : ∀ x, d₂.ρ (σ' x) = lnMap σ l le_rfl (d₁.ρ x))
    (T : Thick (nlFun γ₂ 0 X₂ q₂ (κA O I₂))) (h₁ : TF l s ((nm.mor 0).obj T)) (h₂ : TF l s T) :
    redObj ((nm.mor 0).obj T) d₁ h₁ ⟶ m.obj (redObj T d₂ h₂) :=
  mkH (show T.B ⧸ lnT T l n →+* T.B ⧸ lnT T l n from RingHom.id _) (fun r => eta_comm d₁ d₂ nm hρ T r)
    ⟨le_of_eq (Ideal.map_id _), fun x hx => rfl⟩ (fun x hx => hx) (by
      refine Subtype.ext (Prod.ext ?_ ?_)
      · refine Ideal.Quotient.ringHom_ext (RingHom.ext fun r => ?_)
        have hw1 := (redObj ((nm.mor 0).obj T) d₁ h₁).w r
        have hw2 := (m.obj (redObj T d₂ h₂)).w r
        have h3 : Ideal.Quotient.mk (m.obj (redObj T d₂ h₂)).J ((redObj ((nm.mor 0).obj T) d₁ h₁).i r) =
            Ideal.Quotient.mk (m.obj (redObj T d₂ h₂)).J ((m.obj (redObj T d₂ h₂)).i r) :=
          congrArg (Ideal.Quotient.mk (m.obj (redObj T d₂ h₂)).J) (eta_comm d₁ d₂ nm hρ T r)
        exact (congrArg (Ideal.quotientMap (m.obj (redObj T d₂ h₂)).J
          (show T.B ⧸ lnT T l n →+* T.B ⧸ lnT T l n from RingHom.id _) (fun x hx => hx)) hw1).trans (h3.trans hw2.symm)
      · have e := hpt _ (redObj T d₂ h₂).y
        refine Eq.trans ?_ e.symm
        change Spec.map _ ≫ Spec.map (CommRingCat.ofHom (qBar ((nm.mor 0).obj T) l n)) ≫ (pt T ≫ nm.u) =
          (Spec.map (CommRingCat.ofHom (qBar T l n)) ≫ pt T) ≫ nm.u
        rw [Category.assoc, ← Category.assoc, ← Spec.map_comp]
        congr 2
        exact CommRingCat.hom_ext (Ideal.Quotient.ringHom_ext (RingHom.ext fun _ => rfl)))

end Eta

section Main
variable {O A₁ A₂ R₁ R₂ Λ₁ Λ₂ : Type} [CommRing O] [CommRing A₁] [CommRing A₂] [Algebra O A₁] [Algebra O A₂] [CommRing R₁]
    [CommRing R₂] [CommRing Λ₁] [CommRing Λ₂] {I₁ : Ideal A₁} {I₂ : Ideal A₂} {γ₁ : DividedPowers I₁} {γ₂ : DividedPowers I₂}
    {J₁ : Ideal R₁} {J₂ : Ideal R₂} {δ₁ : DividedPowers J₁} {δ₂ : DividedPowers J₂} {κ₁ : O →+* R₁ ⧸ J₁} {κ₂ : O →+* R₂ ⧸ J₂}
    {l n : ℕ} (d₁ : RedIn δ₁ κ₁ γ₁ l n) (d₂ : RedIn δ₂ κ₂ γ₂ l n) {X₁ X₂ : Scheme.{0}} {q₁ : X₁ ⟶ Spec (CommRingCat.of O)}
    {q₂ : X₂ ⟶ Spec (CommRingCat.of O)} (s : ℕ) {σ : A₁ →+* A₂} (nm : NMor γ₁ q₁ (κA O I₁) γ₂ q₂ (κA O I₂) σ) {σ' : R₁ →+* R₂}
    (m : Mor (nlFun δ₁ l X₁ q₁ κ₁) (nlFun δ₂ l X₂ q₂ κ₂) σ') (c₁ : Λ₁ →+* R₁) (c₂ : Λ₂ →+* R₂) (lam₁ : Λ₁ →+* A₁) (lam₂ : Λ₂ →+* A₂)
    (hc₁ : ∀ a, d₁.ρ (c₁ a) = Ideal.Quotient.mk _ (lam₁ a)) (hc₂ : ∀ a, d₂.ρ (c₂ a) = Ideal.Quotient.mk _ (lam₂ a))
    (σ₀ : Λ₁ →+* Λ₂) (h₀ : ∀ a, σ' (c₁ a) = c₂ (σ₀ a))


include hc₁ hc₂ h₀ in
theorem lam_mem (hρ : ∀ x, d₂.ρ (σ' x) = lnMap σ l le_rfl (d₁.ρ x)) (a : Λ₁) :
    σ (lam₁ a) - lam₂ (σ₀ a) ∈ Ideal.span {(l : A₂) ^ n} := by
  refine Ideal.Quotient.eq.1 ?_
  have e := hρ (c₁ a)
  rw [h₀, hc₂, hc₁] at e
  exact e.symm


include hc₁ hc₂ h₀ in
theorem lam_smul (hρ : ∀ x, d₂.ρ (σ' x) = lnMap σ l le_rfl (d₁.ρ x)) (r : Option ℤ)
    (T : (TS γ₂ q₂ l s {⊤}).FullSubcategory) (a : Λ₁)
    (y : (sq (IdF.top (sP (TS γ₂ q₂ l s {⊤})).A) (stdI (TS γ₂ q₂ l s {⊤}) r ((l : A₂) ^ n))).obj T) :
    (σ.comp lam₁) a • y = (lam₂.comp σ₀) a • y := by
  obtain ⟨y, hy⟩ := y
  obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective y
  refine Subtype.ext (Ideal.Quotient.eq.2 ?_)
  obtain ⟨z, hz⟩ := Ideal.mem_span_singleton'.1 (lam_mem d₁ d₂ c₁ c₂ lam₁ lam₂ hc₁ hc₂ σ₀ h₀ hρ a)
  refine ln_le q₂ s {⊤} r T ?_
  change T.obj.i (σ (lam₁ a)) * (show T.obj.B from b) - T.obj.i (lam₂ (σ₀ a)) * (show T.obj.B from b) ∈ lnT T.obj l n
  rw [← sub_mul, ← map_sub, ← hz, map_mul, map_pow, map_natCast]
  exact Ideal.mul_mem_right _ _ (Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _))

end Main

theorem red_nm : ∀ {O A₁ A₂ R₁ R₂ Λ₁ Λ₂ : Type} [CommRing O] [CommRing A₁] [CommRing A₂] [Algebra O A₁] [Algebra O A₂] [CommRing R₁]
    [CommRing R₂] [CommRing Λ₁] [CommRing Λ₂] {I₁ : Ideal A₁} {I₂ : Ideal A₂} {γ₁ : DividedPowers I₁} {γ₂ : DividedPowers I₂}
    {J₁ : Ideal R₁} {J₂ : Ideal R₂} {δ₁ : DividedPowers J₁} {δ₂ : DividedPowers J₂} {κ₁ : O →+* R₁ ⧸ J₁} {κ₂ : O →+* R₂ ⧸ J₂}
    {l n : ℕ} (d₁ : RedIn δ₁ κ₁ γ₁ l n) (d₂ : RedIn δ₂ κ₂ γ₂ l n) {X₁ X₂ : Scheme.{0}} {q₁ : X₁ ⟶ Spec (CommRingCat.of O)}
    {q₂ : X₂ ⟶ Spec (CommRingCat.of O)} (s : ℕ) {σ : A₁ →+* A₂} (nm : NMor γ₁ q₁ (κA O I₁) γ₂ q₂ (κA O I₂) σ) {σ' : R₁ →+* R₂}
    (m : Mor (nlFun δ₁ l X₁ q₁ κ₁) (nlFun δ₂ l X₂ q₂ κ₂) σ') (c₁ : Λ₁ →+* R₁) (c₂ : Λ₂ →+* R₂) (lam₁ : Λ₁ →+* A₁) (lam₂ : Λ₂ →+* A₂)
    (hc₁ : ∀ a, d₁.ρ (c₁ a) = Ideal.Quotient.mk _ (lam₁ a)) (hc₂ : ∀ a, d₂.ρ (c₂ a) = Ideal.Quotient.mk _ (lam₂ a))
    (σ₀ : Λ₁ →+* Λ₂) (h₀ : ∀ a, σ' (c₁ a) = c₂ (σ₀ a)),
    (∀ (B : CommRingCat.{0}) (y : PtOver X₂ q₂ κ₂ B), (show PtOver X₁ q₁ κ₁ B from m.pt.app B y).1.2 = y.1.2 ≫ nm.u) →
    (∀ x, d₂.ρ (σ' x) = lnMap σ l le_rfl (d₁.ρ x)) → ∀ (r : Option ℤ) (j : ℕ) (x : CH.H (B.OM (nlFun δ₁ l X₁ q₁ κ₁) c₁) j),
    (redMor q₂ s d₂ {⊤} c₂ lam₂ hc₂ r).pull j ((B.omMor m σ₀ h₀).pull j x) =
      nmHM nm l s r n j ((redMor q₁ s d₁ {⊤} c₁ lam₁ hc₁ r).pull j x) := by
  intro O A₁ A₂ R₁ R₂ Λ₁ Λ₂ _ _ _ _ _ _ _ _ _ I₁ I₂ γ₁ γ₂ J₁ J₂ δ₁ δ₂ κ₁ κ₂ l n d₁ d₂ X₁ X₂ q₁ q₂ s σ nm σ' m c₁ c₂ lam₁ lam₂
    hc₁ hc₂ σ₀ h₀ hpt hρ r j x
  let S2 := (nmS nm l s).sq (a := IdF.top _) (a' := IdF.top _) (fun _ _ _ => trivial) (nm_std nm l s r n)
  letI t1 : RingHomCompTriple σ₀ lam₂ (lam₂.comp σ₀) := ⟨rfl⟩
  letI t2 : RingHomCompTriple lam₁ σ (σ.comp lam₁) := ⟨rfl⟩
  let M1 : CH.Mor _ _ (lam₂.comp σ₀) := (B.omMor m σ₀ h₀).comp (redMor q₂ s d₂ {⊤} c₂ lam₂ hc₂ r)
  let M2 : CH.Mor _ _ (σ.comp lam₁) := (redMor q₁ s d₁ {⊤} c₁ lam₁ hc₁ r).comp S2
  have hsc := lam_smul (q₂ := q₂) d₁ d₂ s c₁ c₂ lam₁ lam₂ hc₁ hc₂ σ₀ h₀ hρ r
  have h1 := (CrystallineSemistableComparison.P.pull_comp (σ'' := lam₂.comp σ₀) (B.omMor m σ₀ h₀) (redMor q₂ s d₂ {⊤} c₂ lam₂ hc₂ r) j x).1
  have h2 := (CrystallineSemistableComparison.P.pull_comp (σ'' := σ.comp lam₁) (redMor q₁ s d₁ {⊤} c₁ lam₁ hc₁ r) S2 j x).1
  have h3 := pull_retype M2 (σ₂ := lam₂.comp σ₀) hsc j x
  let η : (retype M2 (lam₂.comp σ₀) hsc).G ⟶ M1.G :=
    { app := fun T => etaR d₁ d₂ nm m hpt hρ T.obj T.property.1 T.property.1
      naturality := fun T T' f => hom_ext (Ideal.Quotient.ringHom_ext (RingHom.ext fun _ => rfl)) }
  have h4 := CrystallineSemistableComparison.P.prism (retype M2 (lam₂.comp σ₀) hsc) M1 η (fun T y => by
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective (I := lnT T.obj l n) y
    rfl) j x
  exact h1.symm.trans (h4.symm.trans (h3.trans h2))

end GlobalTheory.CompanionTheory.RedNat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullRetype =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullSqLePullToSq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullSqLePullToSq", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.GrSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.RedTower

section Sq
variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R}

theorem pull_sqLe_pull_toSq {a b a' b' : IdF A} (ha : ∀ T, a.S T = ⊤) (ha' : ∀ T, a'.S T = ⊤)
    (hle : ∀ T, a.S T ≤ a'.S T) (hb : ∀ T, b.S T ≤ b'.S T) (j : ℕ) (z : CH.H (CH.modF A) j) :
    (sqLe hle hb).pull j ((toSq a b ha).pull j z) = (toSq a' b' ha').pull j z := by
  obtain ⟨f, rfl⟩ := Submodule.Quotient.mk_surjective _ z
  rfl

end Sq

theorem trM_redM {b : Base} {L : b.Fun} (Q : ObjectProperty (Thick L)) (r : Option ℤ) (c : b.R) (n j : ℕ) (z : HO Q j) :
    trM Q r c n j (redM Q r (c ^ (n + 1)) j z) = redM Q r (c ^ n) j z :=
  pull_sqLe_pull_toSq (fun _ => rfl) (fun _ => rfl) (fun _ => le_rfl) (stdI_le Q r c n) j z

end GlobalTheory.CompanionTheory.RedTower
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullSqLePullToSq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedObjPdPow =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedObjPdPow", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.JEqPdPow\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.Interval.Finset.Box\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.RedFil

theorem exists_lift {B B' : Type} [CommRing B] [CommRing B'] {J : Ideal B} {J' : Ideal B'}
    {δ : DividedPowers J} {δ' : DividedPowers J'} {f : B →+* B'} (hf : IsDPMorphism δ δ' f)
    (hJ : J' = J.map f) (hs : Function.Surjective f) (l : List (ℕ × B')) (hl : ∀ q ∈ l, q.2 ∈ J') :
    ∃ l' : List (ℕ × B), (∀ q ∈ l', q.2 ∈ J) ∧ l'.map Prod.fst = l.map Prod.fst ∧
      (l.map fun q => δ'.dpow q.1 q.2).prod = f (l'.map fun q => δ.dpow q.1 q.2).prod := by
  induction l with
  | nil => exact ⟨[], by simp, rfl, by simp⟩
  | cons q l ih =>
    obtain ⟨l', h1, h2, h3⟩ := ih fun p hp => hl p (List.mem_cons_of_mem _ hp)
    have hq := hl q List.mem_cons_self
    rw [hJ] at hq
    obtain ⟨y, hy, e⟩ := (Ideal.mem_map_iff_of_surjective f hs).1 hq
    refine ⟨(q.1, y) :: l', ?_, ?_, ?_⟩
    · intro p hp
      rcases List.mem_cons.1 hp with rfl | hp
      exacts [hy, h1 p hp]
    · simp [h2]
    · simp only [List.map_cons, List.prod_cons, map_mul, h3, ← e]
      rw [hf.2 y hy]

theorem dividedPowerFiltration_le_map {B B' : Type} [CommRing B] [CommRing B'] {J : Ideal B} {J' : Ideal B'}
    {δ : DividedPowers J} {δ' : DividedPowers J'} {f : B →+* B'} (hf : IsDPMorphism δ δ' f)
    (hJ : J' = J.map f) (hs : Function.Surjective f) (r : ℕ) : pdP δ' r ≤ (pdP δ r).map f := by
  refine Ideal.span_le.2 ?_
  rintro _ ⟨l, hl, hr, rfl⟩
  obtain ⟨l', h1, h2, h3⟩ := exists_lift hf hJ hs l hl
  rw [h3]
  exact Ideal.mem_map_of_mem f (Ideal.subset_span ⟨l', h1, by rwa [h2], rfl⟩)

section
variable {O A R Λ : Type} [CommRing O] [CommRing A] [Algebra O A] [CommRing R] [CommRing Λ]
  {I : Ideal A} {γ : DividedPowers I} {J : Ideal R} {δ : DividedPowers J} {κ : O →+* R ⧸ J} {l n : ℕ}
  (d : RedIn δ κ γ l n) {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {s : ℕ}

theorem redObj_pdPow (T : Thick (nlFun γ 0 X q (κA O I))) (h : TF l s T) (r : ℕ) :
    (redObj T d h).pdPow r ≤ (T.pdPow r).map (Ideal.Quotient.mk (lnT T l n)) :=
  dividedPowerFiltration_le_map (redδ_dp T h n) rfl Ideal.Quotient.mk_surjective r
end

def toSomeP {b : Base} {L : b.Fun} (Q : ObjectProperty (Thick L)) (r : ℤ) (c : b.R) (j : ℕ) :
    HM Q none c j →ₗ[b.R] HM Q (some r) c j :=
  (sqLe (a := IdF.top _) (a' := IdF.top _) (b := stdI Q none c) (b' := stdI Q (some r) c)
    (fun _ => le_rfl) (fun T => sup_le_sup_right (bot_le : (⊥ : Ideal _) ≤ _) _)).pull j

end GlobalTheory.CompanionTheory.RedFil

namespace GlobalTheory.CompanionTheory.RedFil

section
variable {O A R Λ : Type} [CommRing O] [CommRing A] [Algebra O A] [CommRing R] [CommRing Λ]
  {I : Ideal A} {γ : DividedPowers I} {J : Ideal R} {δ : DividedPowers J} {κ : O →+* R ⧸ J} {l n : ℕ}
  (d : RedIn δ κ γ l n) {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of O)) (s : ℕ)
  (𝒱 : Set X.Opens) (c : Λ →+* R) (lam : Λ →+* A)
  (hc : ∀ a, d.ρ (c a) = Ideal.Quotient.mk _ (lam a))

theorem val_zero (r : ℕ) (T : (TS γ q l s 𝒱).FullSubcategory) (v : ((redG q s d 𝒱).obj T).B)
    (hv : v ∈ ((redG q s d 𝒱).obj T).pdPow r) :
    (sqLe (a := IdF.top _) (a' := IdF.top _) (b := stdI (TS γ q l s 𝒱) none ((l : A) ^ n))
      (b' := stdI (TS γ q l s 𝒱) (some (r : ℤ)) ((l : A) ^ n)) (fun _ => le_rfl)
      (fun T => sup_le_sup_right (bot_le : (⊥ : Ideal _) ≤ _) _)).τ T
      ((redMor q s d 𝒱 c lam hc none).τ T v) = 0 := by
  obtain ⟨y, hy, rfl⟩ := (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).1
    (redObj_pdPow d T.obj T.property.1 r hv)
  refine Subtype.ext (Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_sup_left ?_))
  change y ∈ T.obj.pdPow (r : ℤ).toNat
  simpa using hy

theorem red_kills (r j : ℕ) : ∀ x ∈ (B.pdS (nlFun δ l X q κ) c r).img j,
    toSomeP (TS γ q l s 𝒱) (r : ℤ) ((l : A) ^ n) j ((redMor q s d 𝒱 c lam hc none).pull j x) = 0 := by
  rintro _ ⟨y, rfl⟩
  obtain ⟨a, ha, rfl⟩ := (CrystallineSemistableComparison.P.cls_surj _ j).1 y
  let S := B.pdS (nlFun δ l X q κ) c r
  let m := redMor q s d 𝒱 c lam hc none
  let t := sqLe (a := IdF.top _) (a' := IdF.top _) (b := stdI (TS γ q l s 𝒱) none ((l : A) ^ n))
      (b' := stdI (TS γ q l s 𝒱) (some (r : ℤ)) ((l : A) ^ n)) (fun _ => le_rfl)
      (fun T => sup_le_sup_right (bot_le : (⊥ : Ideal _) ≤ _) _)
  have h1 : CH.d _ j (S.inc.pullC j a) = 0 := by
    rw [S.inc.d_pullC]
    exact (congrArg _ ha).trans (map_zero _)
  have h2 : CH.d _ j (m.pullC j (S.inc.pullC j a)) = 0 := by
    rw [m.d_pullC, h1, map_zero]
  have h3 : CH.d _ j (t.pullC j (m.pullC j (S.inc.pullC j a))) = 0 := by
    rw [t.d_pullC, h2, map_zero]
  have e1 : S.inc.pull j ((CH.cx _).cls a ha) = (CH.cx _).cls (S.inc.pullC j a) h1 :=
    CrystallineSemistableComparison.P.mapH_cls S.inc.hom j a ha h1
  have e2 : m.pull j ((CH.cx _).cls (S.inc.pullC j a) h1) = (CH.cx _).cls (m.pullC j (S.inc.pullC j a)) h2 :=
    CrystallineSemistableComparison.P.mapH_cls m.hom j _ h1 h2
  have e3 : t.pull j ((CH.cx _).cls (m.pullC j (S.inc.pullC j a)) h2) =
      (CH.cx _).cls (t.pullC j (m.pullC j (S.inc.pullC j a))) h3 :=
    CrystallineSemistableComparison.P.mapH_cls t.hom j _ h2 h3
  have e4 : t.pullC j (m.pullC j (S.inc.pullC j a)) = 0 := by
    funext σ
    exact val_zero d q s 𝒱 c lam hc r _ _ (a (((σ ⋙ t.G) ⋙ m.G) ⋙ S.inc.G)).2
  change t.pull j (m.pull j (S.inc.pull j _)) = 0
  rw [e1, e2, e3]
  exact ((CrystallineSemistableComparison.P.cls_surj _ j).2.1 _ h3).2 (by rw [e4]; exact Submodule.zero_mem _)
end

end GlobalTheory.CompanionTheory.RedFil
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedObjPdPow =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedKillsToSome =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedKillsToSome", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.JEqPdPow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedObjPdPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.RedFil

theorem red_kills_toSome : ∀ {O A R Λ : Type} [CommRing O] [CommRing A] [Algebra O A] [CommRing R] [CommRing Λ] {I : Ideal A} {γ : DividedPowers I}
    {J : Ideal R} {δ : DividedPowers J} {κ : O →+* R ⧸ J} {l n : ℕ} (d : RedIn δ κ γ l n) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) (s : ℕ) (𝒱 : Set X.Opens) (c : Λ →+* R) (lam : Λ →+* A)
    (hc : ∀ a, d.ρ (c a) = Ideal.Quotient.mk _ (lam a)) (r j : ℕ), ∀ x ∈ (B.pdS (nlFun δ l X q κ) c r).img j,
    toSome (TS γ q l s 𝒱) r ((l : A) ^ n) j ((redMor q s d 𝒱 c lam hc none).pull j x) = 0 := by
  intro O A R Λ _ _ _ _ _ I γ J δ κ l n d X q s 𝒱 c lam hc r j x hx
  exact GlobalTheory.CompanionTheory.RedFil.red_kills d q s 𝒱 c lam hc r j x hx

end GlobalTheory.CompanionTheory.RedFil
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedKillsToSome =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMCup =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMCup", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.RedCup

theorem redM_cup {b : Base} {L : b.Fun} (Q : ObjectProperty (Thick L)) (r : Option ℤ) (c : b.R) {i j k : ℕ} (h : i + j = k)
    (x : HO Q i) (y : HO Q j) :
    redM Q r c k ((CH.mulP (sP Q).A).cup h x y) = (sqP (stdI Q r c)).cup h (redM Q r c i x) (redM Q r c j y) := by
  have hm : ∀ T (u v : (CH.modF (sP Q).A).obj ((𝟭 _).obj T)),
      (toSq (IdF.top _) (stdI Q r c) fun _ => rfl).τ T ((CH.mulP (sP Q).A).μ _ u v) =
        (sqP (stdI Q r c)).μ T ((toSq (IdF.top _) (stdI Q r c) fun _ => rfl).τ T u)
          ((toSq (IdF.top _) (stdI Q r c) fun _ => rfl).τ T v) := fun _ _ _ => rfl
  exact CrystallineSemistableComparison.P.cup_pull (CH.mulP (sP Q).A) (sqP (stdI Q r c)) (𝟭 _)
    (toSq (IdF.top _) (stdI Q r c) fun _ => rfl).τ (toSq (IdF.top _) (stdI Q r c) fun _ => rfl).τ
    (toSq (IdF.top _) (stdI Q r c) fun _ => rfl).τ (toSq (IdF.top _) (stdI Q r c) fun _ => rfl).nat
    (toSq (IdF.top _) (stdI Q r c) fun _ => rfl).nat (toSq (IdF.top _) (stdI Q r c) fun _ => rfl).nat hm h x y

end GlobalTheory.CompanionTheory.RedCup
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMCup =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMorCupOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMorCupOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.JEqPdPow\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.RedCup

universe w w' w'' u v u' v' u'' v''

theorem one_cyc {R : Type} [CommRing R] {C : Type u} [Category.{v} C] (A : C ⥤ CommAlgCat.{w} R) :
    (CH.cx (CH.modF A)).d 0 (fun s => (1 : A.obj (s.obj (Fin.last 0)))) = 0 := by
  funext s
  change ∑ i : Fin 2, (-1 : ℤ) ^ (i : ℕ) • (A.map (GlobalTheory.CatH.toLast i s)).hom 1 = (0 : A.obj _)
  rw [Fin.sum_univ_two, map_one, map_one]
  simp

theorem pull_oneH_eq {R R' R'' : Type} [CommRing R] [CommRing R'] [CommRing R''] {C : Type u} [Category.{v} C]
    {C' : Type u'} [Category.{v'} C'] {C'' : Type u''} [Category.{v''} C'']
    {σ : R →+* R''} {σ' : R' →+* R''} (A : C ⥤ CommAlgCat.{w} R) (A' : C' ⥤ CommAlgCat.{w'} R')
    {E : C'' ⥤ ModuleCat.{w''} R''} (m : CH.Mor (CH.modF A) E σ) (m' : CH.Mor (CH.modF A') E σ')
    (h : ∀ T : C'', m.τ T (1 : A.obj (m.G.obj T)) = m'.τ T (1 : A'.obj (m'.G.obj T))) :
    m.pull 0 (CH.oneH A) = m'.pull 0 (CH.oneH A') := by
  have e : m.hom.f 0 (fun s : ComposableArrows C 0 => (1 : A.obj (s.obj (Fin.last 0)))) =
      m'.hom.f 0 (fun s : ComposableArrows C' 0 => (1 : A'.obj (s.obj (Fin.last 0)))) :=
    funext fun s => h (s.obj (Fin.last 0))
  have c : (CH.cx E).d 0 (m.hom.f 0 (fun s : ComposableArrows C 0 => (1 : A.obj (s.obj (Fin.last 0))))) = 0 := by
    rw [m.hom.comm, one_cyc, map_zero]
  have c' : (CH.cx E).d 0 (m'.hom.f 0 (fun s : ComposableArrows C' 0 => (1 : A'.obj (s.obj (Fin.last 0))))) = 0 := by
    rw [m'.hom.comm, one_cyc, map_zero]
  unfold CH.Mor.pull CH.oneH
  refine (CrystallineSemistableComparison.P.mapH_cls m.hom 0 _ _ c).trans (Eq.trans ?_ (CrystallineSemistableComparison.P.mapH_cls m'.hom 0 _ _ c').symm)
  exact congrArg Submodule.Quotient.mk (Subtype.ext e)

theorem redMor_mul {O A R Λ : Type} [CommRing O] [CommRing A] [CommRing R] [CommRing Λ] [Algebra O A] {I : Ideal A} {γ : DividedPowers I}
    {J : Ideal R} {δ : DividedPowers J} {κ : O →+* R ⧸ J} {l n : ℕ} (d : RedIn δ κ γ l n) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) (s : ℕ) (𝒱 : Set X.Opens) (c : Λ →+* R) (lam : Λ →+* A)
    (hc : ∀ a, d.ρ (c a) = Ideal.Quotient.mk _ (lam a)) (r : Option ℤ) (T)
    (x y : (B.OM (nlFun δ l X q κ) c).obj ((redMor q s d 𝒱 c lam hc r).G.obj T)) :
    (redMor q s d 𝒱 c lam hc r).τ T ((CH.mulP (B.OA (nlFun δ l X q κ) c)).μ _ x y) =
      (sqP (stdI (TS γ q l s 𝒱) r ((l : A) ^ n))).μ T ((redMor q s d 𝒱 c lam hc r).τ T x) ((redMor q s d 𝒱 c lam hc r).τ T y) := by
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective (I := lnT T.obj l n) x
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective (I := lnT T.obj l n) y
  refine Subtype.ext ?_
  rfl

theorem redMor_cup_one {O A R Λ : Type} [CommRing O] [CommRing A] [Algebra O A] [CommRing R] [CommRing Λ] {I : Ideal A} {γ : DividedPowers I}
    {J : Ideal R} {δ : DividedPowers J} {κ : O →+* R ⧸ J} {l n : ℕ} (d : RedIn δ κ γ l n) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) (s : ℕ) (𝒱 : Set X.Opens) (c : Λ →+* R) (lam : Λ →+* A)
    (hc : ∀ a, d.ρ (c a) = Ideal.Quotient.mk _ (lam a)) (r : Option ℤ) :
    (∀ {i j k : ℕ} (h : i + j = k) x y, (redMor q s d 𝒱 c lam hc r).pull k ((CH.mulP (B.OA (nlFun δ l X q κ) c)).cup h x y) =
      (sqP (stdI (TS γ q l s 𝒱) r ((l : A) ^ n))).cup h ((redMor q s d 𝒱 c lam hc r).pull i x) ((redMor q s d 𝒱 c lam hc r).pull j y)) ∧
    (redMor q s d 𝒱 c lam hc r).pull 0 (CH.oneH (B.OA (nlFun δ l X q κ) c)) =
      redM (TS γ q l s 𝒱) r ((l : A) ^ n) 0 (CH.oneH (sP (TS γ q l s 𝒱)).A) := by
  refine ⟨fun {i j k} h x y => ?_, ?_⟩
  · exact CrystallineSemistableComparison.P.cup_pull (CH.mulP (B.OA (nlFun δ l X q κ) c)) (sqP (stdI (TS γ q l s 𝒱) r ((l : A) ^ n)))
      (redMor q s d 𝒱 c lam hc r).G (redMor q s d 𝒱 c lam hc r).τ (redMor q s d 𝒱 c lam hc r).τ
      (redMor q s d 𝒱 c lam hc r).τ (redMor q s d 𝒱 c lam hc r).nat (redMor q s d 𝒱 c lam hc r).nat
      (redMor q s d 𝒱 c lam hc r).nat (redMor_mul d q s 𝒱 c lam hc r) h x y
  · exact pull_oneH_eq _ _ (redMor q s d 𝒱 c lam hc r) (toSq (IdF.top _) (stdI (TS γ q l s 𝒱) r ((l : A) ^ n)) fun _ => rfl)
      fun T => Subtype.ext (by
        change Ideal.Quotient.factor (ln_le q s 𝒱 r T) 1 = 1
        exact map_one _)

end GlobalTheory.CompanionTheory.RedCup
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMorCupOne =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.CoefficientReductionFirstChernClassTateTwist =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.CoefficientReductionFirstChernClassTateTwist", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.JEqPdPow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ClsEqOfEq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoefficientReductionFirstChernClassTateTwist\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueIsFirstChernTorsionFree\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FirstChernPullback\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsFirstChernThickeningMuBOfIsFirstChernDeRham\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullRetype\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullSqLePullToSq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullUnitClass\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedKillsToSome\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMCup\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMorCupOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedTrans\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

alias red_nm := _root_.GlobalTheory.CompanionTheory.RedNat.red_nm

alias red_tr := _root_.GlobalTheory.CompanionTheory.RedTrans.red_trans

theorem nmHM_redM : ∀ {O A A' : Type} [CommRing O] [CommRing A] [CommRing A'] [Algebra O A] [Algebra O A'] {I : Ideal A} {I' : Ideal A'}
    {γ : DividedPowers I} {γ' : DividedPowers I'} {X X' : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {q' : X' ⟶ Spec (CommRingCat.of O)}
    {σ : A →+* A'} (m : NMor γ q (κA O I) γ' q' (κA O I') σ) (l s : ℕ) (r : Option ℤ) (n j : ℕ) (z : HO (TS γ q l s {⊤}) j),
    nmHM m l s r n j (redM (TS γ q l s {⊤}) r ((l : A) ^ n) j z) = redM (TS γ' q' l s {⊤}) r ((l : A') ^ n) j (nmHO m l s j z) := @GlobalTheory.CompanionTheory.RedPull.nmHM_redM

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.CoefficientReductionFirstChernClassTateTwist =====
