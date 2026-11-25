module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ZeroC
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepUnique
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupListRepresentativeOfForms
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLocalFrameOfCoords
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalGradedClassRepresentative
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCocycle
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocDefs
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalFrameDerivationCompat
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalFrameTaylorClassEq
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FormSumRepresentativeLift
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TaylorOfLocalFrame
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ConeSite
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChartRestrictPullBijective
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeCocycleClassIndependent
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCupListRepresentative
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepresentativeRestrict
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThickeningFiltrationIsFil
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepOpenCompat
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitLogRepresentativeCompat
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.CechDefs
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueTopGradedRep, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FilteredCochainExtendOfSurjective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepDerivationCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepRestrict, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopRepresentativeAdd, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProjectiveChartAffineCoords, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ConeTransfer

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueTopGradedRep =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueTopGradedRep", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ZeroC\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupListRepresentativeOfForms\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLocalFrameOfCoords\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalGradedClassRepresentative\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCocycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris CrystallineSemistableComparison CrystallineSemistableComparison.Pb GlobalTheory.CompanionTheory.ConeLocal
open GlobalTheory.CatH (face toLast)

noncomputable section
namespace GlobalTheory.CompanionTheory.ConeTopChart

open GlobalTheory.CompanionTheory.CupRep GlobalTheory.CompanionTheory.CocProd

section Gen
variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R}

theorem rep_shift {a b : IdF A} {j : ℕ} {z z' : ∀ s : ComposableArrows C (j + 1), A.obj (s.obj (Fin.last (j + 1)))}
    {c : CH.H (sq a b) (j + 1)} (h : CrystallineSemistableComparison.Pb.Rep a b z c) (G : CH.Cn (CH.modF A) j)
    (hG : ∀ s : ComposableArrows C j, (show A.obj (s.obj (Fin.last j)) from G s) ∈ a.S _)
    (e : ∀ s : ComposableArrows C (j + 1), z' s - (z s + (show A.obj (s.obj (Fin.last (j + 1))) from CH.d _ j G s)) ∈ b.S _) :
    CrystallineSemistableComparison.Pb.Rep a b z' c := by
  have h1 := rep_add h (rep_d (b := b) G hG)
  rw [add_zero] at h1
  refine rep_congr h1 fun s => ?_
  have h2 := (b.S _).neg_mem (e s)
  rw [neg_sub] at h2
  exact h2

theorem term_id {k : ℕ} (u : ComposableArrows C k) (f : CH.Cn (CH.modF A) k) (g : Fin (k + 1) → Fin (k + 1))
    (hg : Monotone g) (e : g = id) :
    (show A.obj (u.obj (Fin.last k)) from CH.term (CH.modF A) u f g hg) = (show A.obj (u.obj (Fin.last k)) from f u) := by
  subst e
  change (A.map (u.map (homOfLE (Fin.le_last (Fin.last k))))).hom (f u) = _
  rw [show (homOfLE (Fin.le_last (Fin.last k)) : Fin.last k ⟶ Fin.last k) = 𝟙 _ from Subsingleton.elim _ _,
    u.map_id, A.map_id]
  rfl

theorem back_zero (k : ℕ) : CH.back (Nat.zero_add k) = id := by
  funext i
  apply Fin.ext
  simp [CH.back]

end Gen

def J0 (m : ℕ) : Idx m m := ⟨id, strictMono_id⟩

theorem top_index_eq {m : ℕ} (I : Idx m m) : I = J0 m := by
  refine Subtype.ext ((StrictMono.range_inj I.2 strictMono_id).1 ?_)
  have h : Function.Surjective I.1 := (Finite.injective_iff_surjective).1 I.2.injective
  rw [h.range_eq, Function.surjective_id.range_eq]

section Lift
variable {K : Type} [Field K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

theorem mk_liftV {V : X.Opens} (T : Thick (smFun X q)) (h : InU V T) (g : Γ(X, V)) :
    Ideal.Quotient.mk T.J (liftV T h g) = ev T h g :=
  Classical.choose_spec (Ideal.Quotient.mk_surjective (ev T h g))

theorem map_liftV {s : ℕ} {V : X.Opens} {T T' : (KS q s {V}).FullSubcategory} (φ : T ⟶ T') (g : Γ(X, V)) :
    Ideal.Quotient.mk T'.obj.J (((sP (KS q s {V})).A.map φ).hom (liftV T.obj (ks_in q s V _ T.property) g)) =
      ev T'.obj (ks_in q s V _ T'.property) g := by
  rw [GlobalTheory.CompanionTheory.GrForm.ev_nat (q := q) φ.hom (ks_in q s V _ T.property) (ks_in q s V _ T'.property) g, ← mk_liftV]
  rfl

end Lift

end GlobalTheory.CompanionTheory.ConeTopChart

namespace GlobalTheory.CompanionTheory.ConeTopChart
open GlobalTheory.CompanionTheory.CupRep GlobalTheory.CompanionTheory.CocProd
section Key
variable {K : Type} [Field K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

theorem lift_sub {s : ℕ} {V : X.Opens} {d : ℕ} {t : Fin d → Γ(X, V)} {E : Frame (sP (KS q s {V})) d}
    {ε : Γ(X, V) ≃+* (sP (KS q s {V})).A.obj E.D} (hL : IsLoc q s t E ε) {T T' : (KS q s {V}).FullSubcategory}
    (φ : T ⟶ T') (u : E.D ⟶ T') (g : Γ(X, V)) :
    ((sP (KS q s {V})).A.map φ).hom (liftV T.obj (ks_in q s V _ T.property) g) - ((sP (KS q s {V})).A.map u).hom (ε g) ∈
      (sFil (KS q s {V}) 1).S T' := by
  rw [(GlobalTheory.CompanionTheory.DPFil.isFil_sFil (KS q s {V})).one T']
  exact Ideal.Quotient.eq.1 ((map_liftV φ g).trans (hL.2.2.2.1 T' u g))

theorem lift_sub_mem_ideal {s : ℕ} {V : X.Opens} {d : ℕ} {t : Fin d → Γ(X, V)} {E : Frame (sP (KS q s {V})) d}
    {ε : Γ(X, V) ≃+* (sP (KS q s {V})).A.obj E.D} (hL : IsLoc q s t E ε) (T : (KS q s {V}).FullSubcategory)
    (u : E.D ⟶ T) (g : Γ(X, V)) :
    (show (sP (KS q s {V})).A.obj T from liftV T.obj (ks_in q s V _ T.property) g) - ((sP (KS q s {V})).A.map u).hom (ε g) ∈
      (sP (KS q s {V})).J.S T :=
  Ideal.Quotient.eq.1 ((mk_liftV _ _ g).trans (hL.2.2.2.1 T u g))

theorem addC_near {s : ℕ} {V : X.Opens} {d : ℕ} {t : Fin d → Γ(X, V)} {E : Frame (sP (KS q s {V})) d}
    {ε : Γ(X, V) ≃+* (sP (KS q s {V})).A.obj E.D} (hL : IsLoc q s t E ε) (σ : ∀ T, E.D ⟶ T) (k : Fin d)
    (u : ComposableArrows (KS q s {V}).FullSubcategory 1) :
    (show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from
      addC (KS q s {V}) (fun T => liftV T.obj (ks_in q s V _ T.property) (t k)) u) -
    (∑ i, E.form σ ![i] (if k = i then 1 else 0) u +
      ((show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from liftV (u.obj (Fin.last 1)).obj (ks_in q s V _ (u.obj (Fin.last 1)).property) (t k)) -
        ((sP (KS q s {V})).A.map (σ _)).hom (ε (t k)) -
       ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom
        ((show (sP (KS q s {V})).A.obj (u.obj 0) from liftV (u.obj 0).obj (ks_in q s V _ (u.obj 0).property) (t k)) -
          ((sP (KS q s {V})).A.map (σ _)).hom (ε (t k))))) = 0 := by
  rw [Finset.sum_eq_single k (fun i _ hi => by
    rw [if_neg (Ne.symm hi)]; unfold Frame.form; rw [map_zero, mul_zero]) (by simp), if_pos rfl]
  unfold Frame.form Frame.a
  rw [Fin.prod_univ_one]
  simp only [Matrix.cons_val_zero, map_one, mul_one]
  have hφ : u.map (homOfLE (Fin.le_last (0 : Fin 1).succ)) = 𝟙 _ := by rw [← u.map_id]; rfl
  rw [hφ, (sP (KS q s {V})).A.map_id, hL.2.2.2.2 k, Functor.map_comp, CommAlgCat.hom_comp, AlgHom.comp_apply]
  change (show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from liftV (u.obj (Fin.last 1)).obj (ks_in q s V _ (u.obj (Fin.last 1)).property) (t k)) -
      ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom
        (show (sP (KS q s {V})).A.obj (u.obj 0) from liftV (u.obj 0).obj (ks_in q s V _ (u.obj 0).property) (t k)) -
    (((sP (KS q s {V})).A.map (σ (u.obj (Fin.last 1)))).hom (ε (t k)) -
      ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (((sP (KS q s {V})).A.map (σ (u.obj 0))).hom (ε (t k))) +
      ((show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from liftV (u.obj (Fin.last 1)).obj (ks_in q s V _ (u.obj (Fin.last 1)).property) (t k)) -
        ((sP (KS q s {V})).A.map (σ _)).hom (ε (t k)) -
       ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom
        ((show (sP (KS q s {V})).A.obj (u.obj 0) from liftV (u.obj 0).obj (ks_in q s V _ (u.obj 0).property) (t k)) -
          ((sP (KS q s {V})).A.map (σ _)).hom (ε (t k))))) = 0
  rw [map_sub]
  ring

end Key
end GlobalTheory.CompanionTheory.ConeTopChart

namespace GlobalTheory.CompanionTheory.ConeTopChart
open GlobalTheory.CompanionTheory.CupRep GlobalTheory.CompanionTheory.CocProd
section Key2
variable {K : Type} [Field K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

theorem key {s : ℕ} {V : X.Opens} {n : ℕ} {t : Fin (n + 1) → Γ(X, V)} {E : Frame (sP (KS q s {V})) (n + 1)}
    {ε : Γ(X, V) ≃+* (sP (KS q s {V})).A.obj E.D} (hL : IsLoc q s t E ε) (σ : ∀ T, E.D ⟶ T) (x : Γ(X, V)) :
    ∃ G : CH.Cn (CH.modF (sP (KS q s {V})).A) n,
      (∀ u : ComposableArrows (KS q s {V}).FullSubcategory n,
        (show (sP (KS q s {V})).A.obj (u.obj (Fin.last n)) from G u) ∈ (sFil (KS q s {V}) ((n : ℤ) + 1)).S _) ∧
      ∀ u : ComposableArrows (KS q s {V}).FullSubcategory (n + 1),
        (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from xdtC (q := q) s V t x u) -
          (E.form σ id (ε x) u + (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from CH.d _ n G u)) ∈
          (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)).S _ := by
  have hF := GlobalTheory.CompanionTheory.DPFil.isFil_sFil (KS q s {V})
  have hc : E.GrConst (sFil (KS q s {V})) := hL.1
  let ℓ : Fin (n + 1) → CH.Cn (CH.modF (sP (KS q s {V})).A) 1 := fun k =>
    addC (KS q s {V}) (fun T => liftV T.obj (ks_in q s V _ T.property) (t k))
  let cc : Fin (n + 1) → Fin (n + 1) → (sP (KS q s {V})).A.obj E.D := fun k i => if k = i then 1 else 0
  let hk : Fin (n + 1) → ∀ T : (KS q s {V}).FullSubcategory, (sP (KS q s {V})).A.obj T := fun k T =>
    (show (sP (KS q s {V})).A.obj T from liftV T.obj (ks_in q s V _ T.property) (t k)) -
      ((sP (KS q s {V})).A.map (σ T)).hom (ε (t k))
  have hh : ∀ k, h0 (hk k) ∈ FC (sFil (KS q s {V}) ((1 : ℕ) : ℤ)) 0 := fun k => mem_FC.2 fun u => by
    rw [Nat.cast_one, hF.one]
    exact lift_sub_mem_ideal hL _ (σ _) (t k)
  have he : ∀ k, ℓ k - (∑ i, fc E σ ![i] (cc k i) + CH.d (CH.modF (sP (KS q s {V})).A) 0 (h0 (hk k))) ∈
      FC (sFil (KS q s {V}) ((1 + 1 : ℕ) : ℤ)) 1 := fun k => mem_FC.2 fun u => by
    have e : vl (ℓ k - (∑ i, fc E σ ![i] (cc k i) + CH.d (CH.modF (sP (KS q s {V})).A) 0 (h0 (hk k)))) u = 0 := by
      have e1 : vl (ℓ k - (∑ i, fc E σ ![i] (cc k i) + CH.d (CH.modF (sP (KS q s {V})).A) 0 (h0 (hk k)))) u =
          vl (ℓ k) u - (∑ i, E.form σ ![i] (cc k i) u + vl (CH.d (CH.modF (sP (KS q s {V})).A) 0 (h0 (hk k))) u) := by
        change vl (ℓ k) u - (vl (∑ i, fc E σ ![i] (cc k i)) u + _) = _
        congr 2
        rw [vl, Finset.sum_apply]
        rfl
      rw [e1, cech_d_h0_eval]
      exact addC_near hL σ k u
    rw [e]
    exact zero_mem _
  obtain ⟨g, hg, hn⟩ := near E σ hF hc (n + 1) ℓ cc (fun k => h0 (hk k)) hh he
  obtain ⟨H, hH, rfl⟩ := hg
  have hsum : ∑ I : Fin (n + 1) → Fin (n + 1), fc E σ I (∏ k, cc k (I k)) = fc E σ id 1 := by
    rw [Finset.sum_eq_single id]
    · congr 1
      simp [cc]
    · intro I _ hI
      obtain ⟨k, hk'⟩ : ∃ k, I k ≠ k := by
        by_contra h
        push_neg at h
        exact hI (funext h)
      have h0' : ∏ k, cc k (I k) = 0 := Finset.prod_eq_zero (Finset.mem_univ k) (by simp [cc, Ne.symm hk'])
      rw [h0']
      funext u'
      change E.form σ I 0 u' = 0
      unfold Frame.form
      rw [map_zero, mul_zero]
    · simp
  rw [hsum] at hn
  refine ⟨fun u => (show (sP (KS q s {V})).A.obj (u.obj (Fin.last n)) from H u) * ((sP (KS q s {V})).A.map (σ _)).hom (ε x),
    fun u => ?_, fun u => ?_⟩
  · have h1 := mem_FC.1 hH u
    have e : ((n + 1 : ℕ) : ℤ) = (n : ℤ) + 1 := by push_cast; ring
    rw [e] at h1
    exact Ideal.mul_mem_right _ _ h1
  · set Y := ((sP (KS q s {V})).A.map (σ (u.obj (Fin.last (n + 1))))).hom (ε x) with hY
    set P := vl (cupListC (sP (KS q s {V})).A ℓ) u with hP
    set Fc := vl (fc E σ id 1) u with hFc
    set D := vl (CH.d (CH.modF (sP (KS q s {V})).A) n H) u with hD
    have hv : (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from xdtC (q := q) s V t x u) =
        (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from CH.term (CH.modF (sP (KS q s {V})).A) u
          (zeroC (KS q s {V}) fun T => liftV T.obj (ks_in q s V _ T.property) x) (CH.front (Nat.zero_add (n + 1))) (CH.front_mono _)) * P := by
      change _ * (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from CH.term (CH.modF (sP (KS q s {V})).A) u
        (cupListC (sP (KS q s {V})).A ℓ) (CH.back (Nat.zero_add (n + 1))) (CH.back_mono _)) = _
      rw [term_id u _ _ _ (back_zero _)]
    have hFY : (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from CH.term (CH.modF (sP (KS q s {V})).A) u
          (zeroC (KS q s {V}) fun T => liftV T.obj (ks_in q s V _ T.property) x) (CH.front (Nat.zero_add (n + 1))) (CH.front_mono _)) - Y ∈
        (sFil (KS q s {V}) ((1 : ℕ) : ℤ)).S _ := by
      rw [Nat.cast_one]
      exact lift_sub hL (u.map (homOfLE (Fin.le_last _))) (σ _) x
    have hform : E.form σ id (ε x) u = Fc * Y := by
      have := form_mul E σ id (ε x) 1 u
      rwa [mul_one] at this
    have hR : P - Fc - D ∈ (sFil (KS q s {V}) ((n + 1 + 1 : ℕ) : ℤ)).S _ := mem_FC.1 hn u
    have hdm := d_mul E σ hF hc (ε x) hH u
    have hFcm : Fc ∈ (sFil (KS q s {V}) ((n + 1 : ℕ) : ℤ)).S _ := mem_FC.1 (fc_mem E σ hF id 1) u
    have hDm : D ∈ (sFil (KS q s {V}) ((n + 1 : ℕ) : ℤ)).S _ := mem_FC.1 (d_mem hH) u
    have hPm : P ∈ (sFil (KS q s {V}) ((n + 1 : ℕ) : ℤ)).S _ := by
      have h1 := hF.anti (r := ((n + 1 : ℕ) : ℤ)) (by push_cast; omega) _ hR
      have h2 := add_mem (add_mem h1 hDm) hFcm
      rwa [sub_add_cancel, sub_add_cancel] at h2
    have hm1 := hF.mul 1 (n + 1) _ hFY hPm
    rw [show 1 + (n + 1) = n + 1 + 1 by omega] at hm1
    have hall := add_mem (add_mem hm1 (Ideal.mul_mem_left _ Y hR)) hdm
    have e2 : ((n + 1 + 1 : ℕ) : ℤ) = (n : ℤ) + 1 + 1 := by push_cast; ring
    rw [e2] at hall
    rw [hv, hform]
    convert hall using 1
    ring

end Key2
end GlobalTheory.CompanionTheory.ConeTopChart

namespace GlobalTheory.CompanionTheory.ConeTopChart

theorem top_chart : CrystallineSemistableComparison.Pb.KH.LocGr → CrystallineSemistableComparison.Pb.KH.PolyTf → CrystallineSemistableComparison.Pb.KH.GrAff →
    ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (n : ℕ)
    [SmoothOfRelativeDimension (n + 1) q] (s : ℕ), n + 1 < s → ∀ (V : X.Opens) (c : Coord q V (n + 1)) (y : HQ (KS q s {V}) ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1)),
    ∃! x : Γ(X, V), Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V c.t x) (y) := by
  intro _ _ _ K _ _ X q n _ s hs V c y
  obtain ⟨E, ε, hL⟩ := GlobalTheory.CompanionTheory.ConeLocal.exists_loc q c s (by omega)
  let σ : ∀ T, E.D ⟶ T := fun T => (E.ne T).some
  have hr : (n : ℤ) + 1 = ((n + 1 : ℕ) : ℤ) := by push_cast; ring
  obtain ⟨hex, huniq⟩ := GlobalTheory.CompanionTheory.ConeLocal.loc_coef q c.t s E ε hL σ (n + 1) ((n : ℤ) + 1) hr (by omega)
  have toForm : ∀ (x : Γ(X, V)) (z : HQ (KS q s {V}) ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1)),
      CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (E.form σ id (ε x)) z ↔
      CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V c.t x) z := by
    intro x z
    obtain ⟨G, hG, hGe⟩ := key hL σ x
    constructor
    · intro h
      exact rep_shift h G hG hGe
    · intro h
      refine rep_shift h (-G) (fun u => (Ideal.neg_mem_iff _).2 (hG u)) (fun u => ?_)
      have e : (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from CH.d _ n (-G) u) =
          -(show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from CH.d _ n G u) := by
        rw [map_neg]
        rfl
      rw [e]
      convert (Ideal.neg_mem_iff _).2 (hGe u) using 1
      ring
  have uniqForm : ∀ (x x' : Γ(X, V)) (z : HQ (KS q s {V}) ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1)),
      CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (E.form σ id (ε x)) z →
      CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (E.form σ id (ε x')) z →
      x = x' := by
    intro x x' z h h'
    have h2 := rep_add h (rep_smul (-1 : K) h')
    have e0 : z + (-1 : K) • z = 0 := by rw [neg_one_smul, add_neg_cancel]
    rw [e0] at h2
    have h3 : CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1))
        (fun u => ∑ I : Idx (n + 1) (n + 1), E.form σ I.1 (ε ((fun _ => x - x') I)) u) 0 := by
      refine rep_congr h2 fun u => ?_
      rw [Finset.sum_eq_single (J0 _) (fun I _ hI => absurd (top_index_eq I) hI) (fun h => absurd (Finset.mem_univ _) h)]
      have e1 : E.form σ id (ε x) u + (-1 : K) • E.form σ id (ε x') u - E.form σ (J0 (n + 1)).1 (ε (x - x')) u = 0 := by
        change _ - E.form σ id (ε (x - x')) u = 0
        unfold Frame.form
        rw [map_sub, map_sub, neg_one_smul]
        ring
      rw [e1]
      exact zero_mem _
    have h4 := congrFun (huniq (fun _ => x - x') h3) (J0 _)
    exact sub_eq_zero.1 h4
  obtain ⟨y', hy'⟩ := hex y
  have h1 : CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1))
      (E.form σ id (ε (y' (J0 _)))) y := by
    refine rep_congr hy' fun u => ?_
    rw [Finset.sum_eq_single (J0 _) (fun I _ hI => absurd (top_index_eq I) hI) (fun h => absurd (Finset.mem_univ _) h)]
    change E.form σ id (ε (y' (J0 _))) u - E.form σ id (ε (y' (J0 _))) u ∈ _
    rw [sub_self]
    exact zero_mem _
  exact ⟨y' (J0 _), (toForm _ _).1 h1, fun x' hx' => uniqForm _ _ _ ((toForm _ _).2 hx') h1⟩

end GlobalTheory.CompanionTheory.ConeTopChart
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueTopGradedRep =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FilteredCochainExtendOfSurjective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FilteredCochainExtendOfSurjective", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory CrystallineSemistableComparison CrystallineSemistableComparison.Pb
open GlobalTheory.CatH (face toLast)

namespace GlobalTheory.CompanionTheory.ConeRepExact

universe v u

section Gen

variable {R : Type} [CommRing R] {D : Type u} [Category.{v} D] {A : D ⥤ CommAlgCat.{0} R} (a b : IdF A)

def Rp {j : ℕ} (y : CH.Cn (sq a b) j) (z : CH.Cn (CH.modF A) j) : Prop :=
  ∀ s, (show sqM a b _ from y s).1 = Ideal.Quotient.mk (b.S _) (show A.obj _ from z s)

variable {a b}

theorem sqMap_val {T T' : D} (φ : T ⟶ T') (w : sqM a b T) (x : A.obj T) (h : w.1 = Ideal.Quotient.mk (b.S T) x) :
    (sqMap a b φ w).1 = Ideal.Quotient.mk (b.S T') ((A.map φ).hom x) := by
  obtain ⟨w, hw⟩ := w
  obtain rfl : w = _ := h
  rfl

theorem Rp.d {j : ℕ} {y : CH.Cn (sq a b) j} {z : CH.Cn (CH.modF A) j} (h : Rp a b y z) :
    Rp a b (CH.d _ j y) (CH.d _ j z) := by
  intro s
  change (∑ i : Fin (j + 2), (-1 : ℤ) ^ (i : ℕ) • sqMap a b (toLast i s) (y (face i s)) : sqM a b _).1 =
    Ideal.Quotient.mk _ (∑ i : Fin (j + 2), (-1 : ℤ) ^ (i : ℕ) • (A.map (toLast i s)).hom (z (face i s)))

  rw [map_sum, AddSubmonoidClass.coe_finsetSum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [map_zsmul]
  change (-1 : ℤ) ^ (i : ℕ) • (sqMap a b (toLast i s) (y (face i s))).1 = _
  rw [sqMap_val _ _ _ (h (face i s))]

theorem Rp.sub {j : ℕ} {y y' : CH.Cn (sq a b) j} {z z' : CH.Cn (CH.modF A) j} (h : Rp a b y z) (h' : Rp a b y' z') :
    Rp a b (y - y') (z - z') := by
  intro s
  change (show sqM a b _ from y s).1 - (show sqM a b _ from y' s).1 =
    Ideal.Quotient.mk _ ((show A.obj _ from z s) - (show A.obj _ from z' s))
  rw [map_sub, h s, h' s]

theorem Rp.unique {j : ℕ} {y y' : CH.Cn (sq a b) j} {z : CH.Cn (CH.modF A) j} (h : Rp a b y z) (h' : Rp a b y' z) :
    y = y' :=
  funext fun s => Subtype.ext ((h s).trans (h' s).symm)

theorem Rp.mem {j : ℕ} {z : CH.Cn (CH.modF A) j} (h : Rp a b 0 z) (s) : z s ∈ b.S _ :=
  (Ideal.Quotient.eq_zero_iff_mem (a := (show A.obj _ from z s)) (I := b.S _)).1 (h s).symm

theorem Rp.zero {j : ℕ} {z : CH.Cn (CH.modF A) j} (h : ∀ s, z s ∈ b.S _) : Rp a b 0 z := fun s =>
  ((Ideal.Quotient.eq_zero_iff_mem (a := (show A.obj _ from z s)) (I := b.S _)).2 (h s)).symm

theorem exists_rp {j : ℕ} (z : CH.Cn (CH.modF A) j) (hz : ∀ s, z s ∈ a.S _) : ∃ y, Rp a b y z :=
  ⟨fun s => sqMk a b (show A.obj _ from z s) (hz s), fun _ => rfl⟩

theorem exists_lift {j : ℕ} (y : CH.Cn (sq a b) j) : ∃ z : CH.Cn (CH.modF A) j, (∀ s, z s ∈ a.S _) ∧ Rp a b y z := by
  have key : ∀ s : ComposableArrows D j, ∃ x : A.obj (s.obj (Fin.last j)), x ∈ a.S _ ∧
      (show sqM a b _ from y s).1 = Ideal.Quotient.mk (b.S _) x := fun s => by
    obtain ⟨x, hx, e⟩ := (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).1 (show sqM a b _ from y s).2
    exact ⟨x, hx, e.symm⟩
  choose z hz hr using key
  exact ⟨z, hz, hr⟩

theorem exists_of_mem_B {n : ℕ} {w : CH.Cn (sq a b) n} {z : CH.Cn (CH.modF A) n} (hr : Rp a b w z)
    (hw : w ∈ (CH.cx (sq a b)).B n) : ∃ e : CH.Cn (CH.modF A) n, (∀ s, e s ∈ b.S _) ∧ CH.d _ n z = CH.d _ n e := by
  cases n with
  | zero =>
    have h0 : w = 0 := hw
    subst h0
    exact ⟨z, hr.mem, rfl⟩
  | succ n =>
    obtain ⟨t, rfl⟩ := hw
    obtain ⟨g, -, hg⟩ := exists_lift t
    have h0 : Rp a b 0 (z - CH.d _ n g) := by
      have := hr.sub hg.d
      rwa [sub_self] at this
    refine ⟨_, h0.mem, ?_⟩
    rw [map_sub, CH.d_d, sub_zero]

end Gen

section Cls

variable {R : Type} [CommRing R]

theorem sub_mem_B (K : Cx.{u} R) {n : ℕ} {x y : K.X n} (hx : K.d n x = 0) (hy : K.d n y = 0) (e : K.cls x hx = K.cls y hy) :
    x - y ∈ K.B n :=
  (Submodule.Quotient.eq ((K.B n).submoduleOf (K.Z n))).1 e

theorem cls_eq_of_sub_mem (K : Cx.{u} R) {n : ℕ} {x y : K.X n} (hx : K.d n x = 0) (hy : K.d n y = 0) (h : x - y ∈ K.B n) :
    K.cls x hx = K.cls y hy :=
  (Submodule.Quotient.eq ((K.B n).submoduleOf (K.Z n))).2 h

end Cls

section Res

variable {R : Type} [CommRing R] {C : Type u} [Category.{v} C] {A : C ⥤ CommAlgCat.{0} R}

theorem Rp.res (a b : IdF A) {U V : ObjectProperty C} (h : V ≤ U) {j : ℕ} {y : CH.Cn (sq (a.res U.ι) (b.res U.ι)) j}
    {z : CH.Cn (CH.modF (U.ι ⋙ A)) j} (hr : Rp _ _ y z) :
    Rp (a.res V.ι) (b.res V.ι) ((resU (sq a b) h).pullC j y) ((resU (CH.modF A) h).pullC j z) := fun s =>
  hr (s ⋙ ObjectProperty.ιOfLE h)

end Res

theorem exact_lift : ∀ {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] (Φ : PDF R C) (Fil : ℤ → IdF Φ.A),
    IsFil Φ Fil → ∀ {U V : ObjectProperty C} (h : V ≤ U) (n : ℕ),
    Function.Surjective ((resU (gr Fil n) h).pull n) →
    ∀ (f : CH.Cn (CH.modF (V.ι ⋙ Φ.A)) n), (∀ σ, f σ ∈ (Fil n).S _) → (∀ σ, CH.d _ n f σ ∈ (Fil ((n : ℤ) + 1)).S _) →
    ∃ f' : CH.Cn (CH.modF (U.ι ⋙ Φ.A)) n, (∀ σ, f' σ ∈ (Fil n).S _) ∧ (∀ σ, CH.d _ n f' σ ∈ (Fil ((n : ℤ) + 1)).S _) ∧
      ∀ (x : HU (gr Fil ((n : ℤ) + 1)) V (n + 1)) (x' : HU (gr Fil ((n : ℤ) + 1)) U (n + 1)),
        Rep ((Fil ((n : ℤ) + 1)).res V.ι) ((Fil ((n : ℤ) + 1 + 1)).res V.ι) (CH.d _ n f) x →
        Rep ((Fil ((n : ℤ) + 1)).res U.ι) ((Fil ((n : ℤ) + 1 + 1)).res U.ι) (CH.d _ n f') x' →
        x = (resU (gr Fil ((n : ℤ) + 1)) h).pull (n + 1) x' := by
  intro R _ C _ Φ Fil hF U V h n hs f hf hdf
  obtain ⟨y, hy⟩ := exists_rp (a := (Fil n).res V.ι) (b := (Fil ((n : ℤ) + 1)).res V.ι) f hf
  have hdy : CH.d _ n y = 0 := hy.d.unique (Rp.zero hdf)
  obtain ⟨c', hc'⟩ := hs ((CH.cx (sq ((Fil n).res V.ι) ((Fil ((n : ℤ) + 1)).res V.ι))).cls y hdy)
  obtain ⟨⟨y', hy'⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ c'
  obtain ⟨f', hf'a, hf'⟩ := exists_lift (a := (Fil n).res U.ι) (b := (Fil ((n : ℤ) + 1)).res U.ι)
    (show CH.Cn (sq ((Fil n).res U.ι) ((Fil ((n : ℤ) + 1)).res U.ι)) n from y')
  have hdy' : CH.d (sq ((Fil n).res U.ι) ((Fil ((n : ℤ) + 1)).res U.ι)) n y' = 0 := hy'
  have hz : CH.d (sq ((Fil n).res V.ι) ((Fil ((n : ℤ) + 1)).res V.ι)) n ((resU (gr Fil n) h).pullC n y') = 0 :=
    ((resU (gr Fil n) h).hom.mapZ n ⟨y', hy'⟩).2
  have hB := sub_mem_B (CH.cx (sq ((Fil n).res V.ι) ((Fil ((n : ℤ) + 1)).res V.ι)))
    (x := (resU (gr Fil n) h).pullC n y') (y := y) hz hdy hc'
  refine ⟨f', hf'a, ?_, ?_⟩
  · have := hf'.d
    rw [hdy'] at this
    exact this.mem
  · rintro x x' ⟨u, hu, rfl, hur⟩ ⟨u', hu', rfl, hur'⟩
    have hur1 : Rp _ _ u (CH.d _ n f) := hur
    have hur2 : Rp _ _ u' (CH.d _ n f') := hur'
    have hw := (Rp.res (Fil n) (Fil ((n : ℤ) + 1)) h hf').sub hy
    obtain ⟨e, he, hde⟩ := exists_of_mem_B hw hB
    obtain ⟨t, ht⟩ := exists_rp (a := (Fil ((n : ℤ) + 1)).res V.ι) (b := (Fil ((n : ℤ) + 1 + 1)).res V.ι) e he
    have h1 := (Rp.res (Fil ((n : ℤ) + 1)) (Fil ((n : ℤ) + 1 + 1)) h hur2).sub hur1
    have e1 : (resU (CH.modF Φ.A) h).pullC (n + 1) (CH.d (CH.modF (U.ι ⋙ Φ.A)) n f') =
        CH.d (CH.modF (V.ι ⋙ Φ.A)) n ((resU (CH.modF Φ.A) h).pullC n f') :=
      ((resU (CH.modF Φ.A) h).d_pullC n f').symm
    rw [e1, ← map_sub, hde] at h1
    have h2 := h1.unique ht.d
    have hz' : CH.d (sq ((Fil ((n : ℤ) + 1)).res V.ι) ((Fil ((n : ℤ) + 1 + 1)).res V.ι)) (n + 1)
        ((resU (gr Fil ((n : ℤ) + 1)) h).pullC (n + 1) u') = 0 :=
      ((resU (gr Fil ((n : ℤ) + 1)) h).hom.mapZ (n + 1) ⟨u', hu'⟩).2
    exact (cls_eq_of_sub_mem (CH.cx (sq ((Fil ((n : ℤ) + 1)).res V.ι) ((Fil ((n : ℤ) + 1 + 1)).res V.ι)))
      (x := (resU (gr Fil ((n : ℤ) + 1)) h).pullC (n + 1) u') (y := u) hz' hu ⟨t, h2.symm⟩).symm

end GlobalTheory.CompanionTheory.ConeRepExact
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FilteredCochainExtendOfSurjective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepDerivationCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepDerivationCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ZeroC\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupListRepresentativeOfForms\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLocalFrameOfCoords\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalFrameDerivationCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalFrameTaylorClassEq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalGradedClassRepresentative\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris CrystallineSemistableComparison CrystallineSemistableComparison.Pb GlobalTheory.CompanionTheory.ConeLocal
open GlobalTheory.CatH (face toLast)
open GlobalTheory.CompanionTheory.CupRep GlobalTheory.CompanionTheory.CocProd

noncomputable section
namespace GlobalTheory.CompanionTheory.ConeLRestr

section Gen
variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {Φ : PDF R C} {Fil : ℤ → IdF Φ.A} {d : ℕ}

theorem cupList_mem (hF : IsFil Φ Fil) : ∀ (m : ℕ) (ℓ : Fin m → CH.Cn (CH.modF Φ.A) 1),
    (∀ k, ℓ k ∈ FC (Fil ((1 : ℕ) : ℤ)) 1) → cupListC Φ.A ℓ ∈ FC (Fil (m : ℤ)) m := by
  intro m
  induction m with
  | zero =>
    intro ℓ _
    refine mem_FC.2 fun s => ?_
    rw [hF.top _ (by simp)]
    trivial
  | succ m ih =>
    intro ℓ h
    exact cup_mem hF _ (ih _ fun k => h _) (h _)

theorem rep_cup (hF : IsFil Φ Fil) (E : Frame Φ d) (σ : ∀ T : C, E.D ⟶ T) (hc : E.GrConst Fil)
    (n : ℕ) (ℓ : Fin (n + 1) → CH.Cn (CH.modF Φ.A) 1) (c : Fin (n + 1) → Fin d → Φ.A.obj E.D)
    (h : Fin (n + 1) → ∀ T : C, Φ.A.obj T) (hJ : ∀ k T, h k T ∈ Φ.J.S T)
    (hl : ∀ (k : Fin (n + 1)) (u : ComposableArrows C 1), (show Φ.A.obj (u.obj (Fin.last 1)) from ℓ k u) -
      (∑ i, E.form σ ![i] (c k i) u + (h k (u.obj (Fin.last 1)) - (Φ.A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (h k (u.obj 0)))) ∈ (Fil 2).S _)
    (w : Φ.A.obj E.D) (r : ℤ) (hr : r = ((n + 1 : ℕ) : ℤ)) (x : CH.H (gr Fil r) (n + 1))
    (hx : CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) (fun u => ∑ I : Fin (n + 1) → Fin d, E.form σ I (w * ∏ k, c k (I k)) u) x) :
    CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) (fun u => (show Φ.A.obj (u.obj (Fin.last (n + 1))) from cupListC Φ.A ℓ u) * (Φ.A.map (σ _)).hom w) x := by
  subst hr
  have hh : ∀ k, h0 (h k) ∈ FC (Fil ((1 : ℕ) : ℤ)) 0 := fun k => mem_FC.2 fun s => by
    have := hJ k (s.obj (Fin.last 0))
    rw [← hF.one] at this
    rw [Nat.cast_one]
    exact this
  have he : ∀ k, ℓ k - (∑ i, fc E σ ![i] (c k i) + CH.d (CH.modF Φ.A) 0 (h0 (h k))) ∈
      FC (Fil ((1 + 1 : ℕ) : ℤ)) 1 := fun k => mem_FC.2 fun u => by
    have e : vl (ℓ k - (∑ i, fc E σ ![i] (c k i) + CH.d (CH.modF Φ.A) 0 (h0 (h k)))) u =
        (show Φ.A.obj (u.obj (Fin.last 1)) from ℓ k u) - (∑ i, E.form σ ![i] (c k i) u +
          (h k (u.obj (Fin.last 1)) - (Φ.A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (h k (u.obj 0)))) := by
      rw [← cech_d_h0_eval]
      change _ - (vl (∑ i, fc E σ ![i] (c k i)) u + _) = _
      congr 2
      rw [vl, Finset.sum_apply]
      rfl
    rw [e]
    exact hl k u
  obtain ⟨g, hg, hn⟩ := near E σ hF hc (n + 1) ℓ c (fun k => h0 (h k)) hh he
  have hz : ∀ u, (∑ I : Fin (n + 1) → Fin d, E.form σ I (w * ∏ k, c k (I k)) u) =
      vl (∑ I : Fin (n + 1) → Fin d, fc E σ I (∏ k, c k (I k))) u * (Φ.A.map (σ _)).hom w := by
    intro u
    rw [vl, Finset.sum_apply]
    change _ = (∑ I : Fin (n + 1) → Fin d, vl (fc E σ I (∏ k, c k (I k))) u) * _
    rw [Finset.sum_mul]
    exact Finset.sum_congr rfl fun I _ => form_mul E σ I w _ u
  obtain ⟨H, hH, rfl⟩ := hg
  let H' : CH.Cn (CH.modF Φ.A) n := fun u => (show Φ.A.obj (u.obj (Fin.last n)) from H u) * (Φ.A.map (σ _)).hom w
  have hH' : H' ∈ FC (Fil ((n + 1 : ℕ) : ℤ)) n :=
    mem_FC.2 fun u => Ideal.mul_mem_right _ _ (mem_FC.1 hH u)
  have h1 := rep_add hx (rep_d (b := Fil (((n + 1 : ℕ) : ℤ) + 1)) H' (mem_FC.1 hH'))
  rw [add_zero] at h1
  refine rep_congr h1 fun u => ?_
  rw [hz]
  have e1 := mem_FC.1 hn u
  have e2 := d_mul E σ hF hc w hH u
  have e3 := (Fil _).S _ |>.add_mem (Ideal.mul_mem_right ((Φ.A.map (σ _)).hom w) _ e1) e2
  have e4 : ((n + 1 + 1 : ℕ) : ℤ) = ((n + 1 : ℕ) : ℤ) + 1 := by push_cast; ring
  rw [e4] at e3
  have e5 := ((Fil _).S _).neg_mem e3
  convert e5 using 1
  change _ + vl (CH.d (CH.modF Φ.A) n H') u - _ = -((vl (cupListC Φ.A ℓ) u - vl (∑ I : Fin (n + 1) → Fin d, fc E σ I (∏ k, c k (I k))) u -
      vl (CH.d (CH.modF Φ.A) n H) u) * _ + (vl (CH.d (CH.modF Φ.A) n H) u * _ - vl (CH.d (CH.modF Φ.A) n H') u))
  ring

theorem rep_zero_cup (hF : IsFil Φ Fil) (E : Frame Φ d) (σ : ∀ T : C, E.D ⟶ T) (hc : E.GrConst Fil)
    (m : ℕ) (L : CH.Cn (CH.modF Φ.A) m) (hL : L ∈ FC (Fil (m : ℤ)) m) (zc : CH.Cn (CH.modF Φ.A) 0)
    (w : Φ.A.obj E.D) (hz : ∀ s : ComposableArrows C 0, vl zc s - (Φ.A.map (σ _)).hom w ∈ Φ.J.S _)
    (r : ℤ) (hr : r = m) (x : CH.H (gr Fil r) m)
    (hx : CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) (fun u => (show Φ.A.obj (u.obj (Fin.last m)) from L u) * (Φ.A.map (σ _)).hom w) x) :
    CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) ((CH.mulP Φ.A).cupC (Nat.zero_add m) zc L) x := by
  subst hr
  refine rep_congr hx fun u => ?_
  rw [CrystallineSemistableComparison.Auxff.cupC_apply]
  have e1 : CH.term (CH.modF Φ.A) u L (CH.back (Nat.zero_add m)) (CH.back_mono _) = L u :=
    CrystallineSemistableComparison.Auxff.term_id _ u L _ _ (fun t => by simp [CH.back])
  let s0 : ComposableArrows C 0 := (CH.front_mono (Nat.zero_add m)).functor ⋙ u
  let φ : s0.obj (Fin.last 0) ⟶ u.obj (Fin.last m) :=
    u.map (homOfLE (Fin.le_last (CH.front (Nat.zero_add m) (Fin.last 0))))
  have e0 : (show Φ.A.obj (u.obj (Fin.last m)) from CH.term (CH.modF Φ.A) u zc (CH.front (Nat.zero_add m)) (CH.front_mono _)) =
      (Φ.A.map φ).hom (vl zc s0) := rfl
  have a1 : (Φ.A.map φ).hom (vl zc s0) - (Φ.A.map (σ _ ≫ φ)).hom w ∈ Φ.J.S (u.obj (Fin.last m)) := by
    have h := Φ.J.map_mem φ (hz s0)
    rw [map_sub, map_map] at h
    exact h
  have a2 : (Φ.A.map (σ _ ≫ φ)).hom w - (Φ.A.map (σ _)).hom w ∈ Φ.J.S (u.obj (Fin.last m)) :=
    GlobalTheory.CompanionTheory.ConeLocal.DlogApprox.const1 hF hc _ _ w
  have a3 := (Φ.J.S (u.obj (Fin.last m))).neg_mem ((Φ.J.S (u.obj (Fin.last m))).add_mem a1 a2)
  rw [sub_add_sub_cancel, neg_sub] at a3
  have a4 : (Φ.A.map (σ _)).hom w - (Φ.A.map φ).hom (vl zc s0) ∈ (Fil ((1 : ℕ) : ℤ)).S (u.obj (Fin.last m)) := by
    rw [Nat.cast_one, hF.one]
    exact a3
  have a5 := hF.mul m 1 _ (mem_FC.1 hL u) a4
  have e6 : ((m + 1 : ℕ) : ℤ) = (m : ℤ) + 1 := by push_cast; ring
  rw [e6, mul_sub] at a5
  rw [e1]
  change vl L u * (Φ.A.map (σ _)).hom w - (Φ.A.map φ).hom (vl zc s0) * vl L u ∈ _
  rw [mul_comm ((Φ.A.map φ).hom (vl zc s0))]
  exact a5

end Gen

section Conc

theorem rep_xdt {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (s : ℕ) {V : X.Opens}
    (n : ℕ) (t : Fin (n + 1) → Γ(X, V)) (E : Frame (sP (KS q s {V})) (n + 1))
    (ε : Γ(X, V) ≃+* (sP (KS q s {V})).A.obj E.D) (hL : IsLoc q s t E ε) (σ : ∀ T, E.D ⟶ T) (x : Γ(X, V))
    (r : ℤ) (hr : r = ((n + 1 : ℕ) : ℤ)) (cl : HQ (KS q s {V}) r (r + 1) (n + 1))
    (h : CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) r) (sFil (KS q s {V}) (r + 1)) (E.form σ id (ε x)) cl) :
    CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) r) (sFil (KS q s {V}) (r + 1)) (xdtC s V t x) cl := by
  have hF := GlobalTheory.CompanionTheory.DPFil.isFil_sFil (KS q s {V})
  obtain ⟨hc, -, -, h4, h5⟩ := hL
  have hlift : ∀ (g : Γ(X, V)) (T : (KS q s {V}).FullSubcategory),
      Ideal.Quotient.mk T.obj.J (liftV T.obj (ks_in q s V T.obj T.property) g) = ev T.obj (ks_in q s V T.obj T.property) g :=
    fun g T => Classical.choose_spec (Ideal.Quotient.mk_surjective (ev T.obj (ks_in q s V T.obj T.property) g))
  have hlJ : ∀ (g : Γ(X, V)) (T : (KS q s {V}).FullSubcategory),
      (show (sP (KS q s {V})).A.obj T from liftV T.obj (ks_in q s V T.obj T.property) g) -
        ((sP (KS q s {V})).A.map (σ T)).hom (ε g) ∈ (sP (KS q s {V})).J.S T :=
    fun g T => Ideal.Quotient.eq.1 ((hlift g T).trans (h4 T (σ T) g))
  let l : Fin (n + 1) → ∀ T : (KS q s {V}).FullSubcategory, T.obj.B :=
    fun k T => liftV T.obj (ks_in q s V T.obj T.property) (t k)
  let hh : Fin (n + 1) → ∀ T, (sP (KS q s {V})).A.obj T :=
    fun k T => (show (sP (KS q s {V})).A.obj T from l k T) - ((sP (KS q s {V})).A.map (σ T)).hom (ε (t k))
  let cc : Fin (n + 1) → Fin (n + 1) → (sP (KS q s {V})).A.obj E.D := fun k i => if k = i then 1 else 0
  have cc_self : ∀ k, cc k k = 1 := fun k => if_pos rfl
  have cc_ne : ∀ {k i : Fin (n + 1)}, k ≠ i → cc k i = 0 := fun h => if_neg h
  let ℓ : Fin (n + 1) → CH.Cn (CH.modF (sP (KS q s {V})).A) 1 := fun k => addC (KS q s {V}) (l k)
  have heq : ∀ (k : Fin (n + 1)) (u : ComposableArrows (KS q s {V}).FullSubcategory 1),
      (show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from ℓ k u) =
        E.a σ k (u.map (homOfLE (Fin.zero_le (Fin.last 1)))) + (hh k (u.obj (Fin.last 1)) -
          ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (hh k (u.obj 0))) := by
    intro k u
    have e1 : E.a σ k (u.map (homOfLE (Fin.zero_le (Fin.last 1)))) = _ := h5 k (σ _ ≫ u.map (homOfLE (Fin.zero_le (Fin.last 1)))) (σ _)
    rw [e1]
    simp only [hh, map_sub, map_map]
    change (show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from l k _) -
      ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (l k _) = _
    ring
  have hJ : ∀ k T, hh k T ∈ (sP (KS q s {V})).J.S T := fun k T => hlJ (t k) T
  have hl : ∀ (k : Fin (n + 1)) (u : ComposableArrows (KS q s {V}).FullSubcategory 1),
      (show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from ℓ k u) -
      (∑ i, E.form σ ![i] (cc k i) u + (hh k (u.obj (Fin.last 1)) -
        ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (hh k (u.obj 0)))) ∈ (sFil (KS q s {V}) 2).S _ := by
    intro k u
    rw [heq]
    simp only [GlobalTheory.CompanionTheory.ConeLocal.DlogApprox.form_one]
    rw [Finset.sum_eq_single k]
    · rw [cc_self, map_one, mul_one, sub_self]
      exact Ideal.zero_mem _
    · intro i _ hi
      rw [cc_ne (Ne.symm hi), map_zero, mul_zero]
    · intro h0
      exact absurd (Finset.mem_univ _) h0
  have hmem : ∀ k, ℓ k ∈ FC (sFil (KS q s {V}) ((1 : ℕ) : ℤ)) 1 := by
    intro k
    refine mem_FC.2 fun u => ?_
    rw [Nat.cast_one, hF.one]
    have e := heq k u
    change (show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from ℓ k u) ∈ _
    rw [e]
    exact Ideal.add_mem _ (E.mem k _ _) (Ideal.sub_mem _ (hJ k _) ((sP (KS q s {V})).J.map_mem _ (hJ k _)))
  have h1 : CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) r) (sFil (KS q s {V}) (r + 1))
      (fun u => ∑ I : Fin (n + 1) → Fin (n + 1), E.form σ I (ε x * ∏ k, cc k (I k)) u) cl := by
    refine rep_congr h fun u => ?_
    have e : ∑ I : Fin (n + 1) → Fin (n + 1), E.form σ I (ε x * ∏ k, cc k (I k)) u = E.form σ id (ε x) u := by
      rw [Finset.sum_eq_single id]
      · have e0 : ∏ k, cc k (id k) = 1 := Finset.prod_eq_one fun k _ => cc_self k
        rw [e0, mul_one]
      · intro I _ hI
        obtain ⟨k, hk⟩ := Function.ne_iff.1 hI
        have e0 : ∏ k, cc k (I k) = 0 := Finset.prod_eq_zero (Finset.mem_univ k) (cc_ne (Ne.symm hk))
        rw [e0, mul_zero]
        unfold Frame.form
        simp
      · intro h0
        exact absurd (Finset.mem_univ _) h0
    rw [e, sub_self]
    exact Ideal.zero_mem _
  have h2 := rep_cup hF E σ hc n ℓ cc hh hJ hl (ε x) r hr cl h1
  exact rep_zero_cup hF E σ hc (n + 1) _ (cupList_mem hF _ ℓ hmem) _ (ε x) (fun s0 => hlJ x _) r hr cl h2

end Conc

def i0 (m : ℕ) : Idx m m := ⟨id, strictMono_id⟩

theorem idx_eq {m : ℕ} (I : Idx m m) : I = i0 m := by
  refine Subtype.ext ((StrictMono.range_inj I.2 strictMono_id).1 ?_)
  have h : Function.Surjective I.1 := (Finite.injective_iff_surjective).1 I.2.injective
  rw [h.range_eq, Function.surjective_id.range_eq]

local instance {m : ℕ} : Unique (Idx m m) := ⟨⟨i0 m⟩, idx_eq⟩

theorem rep_top {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {Φ : PDF R C} {Fil : ℤ → IdF Φ.A} {m : ℕ} (E : Frame Φ m)
    (σ : ∀ T : C, E.D ⟶ T) (r : ℤ) (w : Idx m m → Φ.A.obj E.D) (cl : CH.H (gr Fil r) m)
    (h : CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) (fun u => ∑ I : Idx m m, E.form σ I.1 (w I) u) cl) :
    CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) (E.form σ id (w (i0 m))) cl := by
  refine rep_congr h fun u => ?_
  rw [Fintype.sum_unique]
  change E.form σ (i0 m).1 (w (i0 m)) u - _ ∈ _
  rw [show (i0 m).1 = id from rfl, sub_self]
  exact Ideal.zero_mem _

theorem main : CrystallineSemistableComparison.Pb.KH.LocGr → CrystallineSemistableComparison.Pb.KH.PolyTf → CrystallineSemistableComparison.Pb.KH.GrAff →
    ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (n : ℕ)
    [SmoothOfRelativeDimension (n + 1) q] (s : ℕ), n + 1 < s → ∀ (V V' : X.Opens) (hVV : V ≤ V'), IsAffineOpen V' →
    ∀ (c : Coord q V (n + 1)),
    letI := (strV q V).toAlgebra
    ∀ (D : Fin (n + 1) → Derivation K Γ(X, V) Γ(X, V)), (∀ k j, D k (c.t j) = if k = j then 1 else 0) →
    ∀ ω : HQ (KS q s {V'}) ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1), ∃ x ∈ jacSpan hVV (RingHom.id _) (fun k => D k) id, Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V c.t x) (resKS q s hVV _ _ _ ω) := by
  intro _ _ _ K _ _ X q n _ s hs V V' hVV hV' c D hD ω
  have : Smooth q := SmoothOfRelativeDimension.smooth (n + 1) q
  obtain ⟨E, ε, hL⟩ := GlobalTheory.CompanionTheory.ConeLocal.exists_loc q c s (by omega)
  let σ : ∀ T, E.D ⟶ T := fun T => (E.ne T).some
  have hr : (n : ℤ) + 1 = ((n + 1 : ℕ) : ℤ) := by push_cast; ring
  obtain ⟨y, hy⟩ := (_root_.GlobalTheory.CompanionTheory.ConeLocal.loc_coef q c.t s E ε hL σ (n + 1) ((n : ℤ) + 1) hr (by omega)).1 (resKS q s hVV _ _ _ ω)
  have h1 := _root_.GlobalTheory.CompanionTheory.ConeLocal.coef_mem_jacSpan q s hVV hV' c D hD E ε hL σ (n + 1) ((n : ℤ) + 1) hr (by omega) ω y hy (i0 _)
  exact ⟨y (i0 _), h1, rep_xdt q s n c.t E ε hL σ _ _ hr _ (rep_top E σ _ (fun I => ε (y I)) _ hy)⟩

end GlobalTheory.CompanionTheory.ConeLRestr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepDerivationCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepRestrict =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepRestrict", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ZeroC\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupListRepresentativeOfForms\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLocalFrameOfCoords\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FormSumRepresentativeLift\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalFrameTaylorClassEq\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TaylorOfLocalFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris CrystallineSemistableComparison CrystallineSemistableComparison.Pb GlobalTheory.CompanionTheory.ConeLocal
open GlobalTheory.CatH (face toLast)

noncomputable section
namespace GlobalTheory.CompanionTheory.ConeLdlog

open GlobalTheory.CompanionTheory.CupRep GlobalTheory.CompanionTheory.ConeLocal.DlogApprox

section Fr
variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {Φ : PDF R C} {Fil : ℤ → IdF Φ.A}

def ee {d : ℕ} (E : Frame Φ d) (k i : Fin d) : Φ.A.obj E.D := if i = k then 1 else 0

theorem cupList_mem (hF : IsFil Φ Fil) : ∀ (m : ℕ) (ℓ : Fin m → CH.Cn (CH.modF Φ.A) 1),
    (∀ k, ℓ k ∈ FC (Fil ((1 : ℕ) : ℤ)) 1) → cupListC Φ.A ℓ ∈ FC (Fil (m : ℤ)) m := by
  intro m
  induction m with
  | zero =>
    intro ℓ _
    refine mem_FC.2 fun s => ?_
    rw [Nat.cast_zero, hF.top 0 le_rfl]
    trivial
  | succ m ih =>
    intro ℓ hl
    exact cup_mem hF rfl (ih _ fun k => hl _) (hl (Fin.last m))

theorem form_id_eq {n : ℕ} (E : Frame Φ n) (σ : ∀ T : C, E.D ⟶ T) (w : Φ.A.obj E.D)
    (u : ComposableArrows C n) :
    E.form σ id w u = vl (∑ I : Fin n → Fin n, fc E σ I (∏ k, ee E k (I k))) u * (Φ.A.map (σ _)).hom w := by
  rw [vl, Finset.sum_apply]
  change _ = (∑ I : Fin n → Fin n, vl (fc E σ I (∏ k, ee E k (I k))) u) * _
  rw [Finset.sum_mul]
  simp only [← form_mul]
  rw [Finset.sum_eq_single id]
  · have e : ∏ k, ee E k (id k) = 1 := Finset.prod_eq_one fun k _ => by simp [ee]
    rw [e, mul_one]
  · intro I _ hI
    obtain ⟨k, hk⟩ : ∃ k, I k ≠ k := by
      by_contra hc
      push_neg at hc
      exact hI (funext hc)
    have e : ∏ k, ee E k (I k) = 0 := Finset.prod_eq_zero (Finset.mem_univ k) (by simp [ee, hk])
    rw [e, mul_zero]
    simp [Frame.form]
  · intro h
    exact absurd (Finset.mem_univ _) h

theorem rep_back (hF : IsFil Φ Fil) {n : ℕ} (E : Frame Φ (n + 1)) (σ : ∀ T : C, E.D ⟶ T) (hc : E.GrConst Fil)
    (ℓ : Fin (n + 1) → CH.Cn (CH.modF Φ.A) 1) (h : Fin (n + 1) → ∀ T : C, Φ.A.obj T)
    (hJ : ∀ k T, h k T ∈ Φ.J.S T)
    (hl : ∀ (k : Fin (n + 1)) (u : ComposableArrows C 1), (show Φ.A.obj (u.obj (Fin.last 1)) from ℓ k u) -
      (∑ i, E.form σ ![i] (ee E k i) u + (h k (u.obj (Fin.last 1)) -
        (Φ.A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (h k (u.obj 0)))) ∈ (Fil 2).S _)
    (w : Φ.A.obj E.D) (r : ℤ) (hr : r = ((n + 1 : ℕ) : ℤ)) (x : CH.H (gr Fil r) (n + 1))
    (z : ∀ u : ComposableArrows C (n + 1), Φ.A.obj (u.obj (Fin.last (n + 1))))
    (hz : ∀ u, z u - vl (cupListC Φ.A ℓ) u * (Φ.A.map (σ _)).hom w ∈ (Fil (r + 1)).S _)
    (hx : CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) (E.form σ id w) x) :
    CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) z x := by
  subst hr
  have hh : ∀ k, h0 (h k) ∈ FC (Fil ((1 : ℕ) : ℤ)) 0 := fun k => mem_FC.2 fun s => by
    have := hJ k (s.obj (Fin.last 0))
    rw [← hF.one] at this
    rw [Nat.cast_one]
    exact this
  have he : ∀ k, ℓ k - (∑ i, fc E σ ![i] (ee E k i) + CH.d (CH.modF Φ.A) 0 (h0 (h k))) ∈
      FC (Fil ((1 + 1 : ℕ) : ℤ)) 1 := fun k => mem_FC.2 fun u => by
    have e : vl (ℓ k - (∑ i, fc E σ ![i] (ee E k i) + CH.d (CH.modF Φ.A) 0 (h0 (h k)))) u =
        (show Φ.A.obj (u.obj (Fin.last 1)) from ℓ k u) - (∑ i, E.form σ ![i] (ee E k i) u +
          (h k (u.obj (Fin.last 1)) - (Φ.A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (h k (u.obj 0)))) := by
      rw [← cech_d_h0_eval]
      change _ - (vl (∑ i, fc E σ ![i] (ee E k i)) u + _) = _
      congr 2
      rw [vl, Finset.sum_apply]
      rfl
    rw [e]
    exact hl k u
  obtain ⟨g, hg, hn⟩ := near E σ hF hc (n + 1) ℓ (ee E) (fun k => h0 (h k)) hh he
  obtain ⟨H, hH, rfl⟩ := hg
  let H' : CH.Cn (CH.modF Φ.A) n := fun u => (show Φ.A.obj (u.obj (Fin.last n)) from H u) * (Φ.A.map (σ _)).hom w
  have hH' : H' ∈ FC (Fil ((n + 1 : ℕ) : ℤ)) n :=
    mem_FC.2 fun u => Ideal.mul_mem_right _ _ (mem_FC.1 hH u)
  have h1 := rep_add hx (rep_d (b := Fil (((n + 1 : ℕ) : ℤ) + 1)) H' (mem_FC.1 hH'))
  rw [add_zero] at h1
  refine rep_congr h1 fun u => ?_
  have e1 := mem_FC.1 hn u
  have e2 := d_mul E σ hF hc w hH u
  have e3 := hz u
  have e4 : ((n + 1 + 1 : ℕ) : ℤ) = ((n + 1 : ℕ) : ℤ) + 1 := by push_cast; ring
  rw [e4] at e1 e2
  have e5 := ((Fil _).S _).neg_mem (((Fil _).S _).add_mem (((Fil _).S _).add_mem
    (Ideal.mul_mem_right ((Φ.A.map (σ _)).hom w) _ e1) e2) e3)
  convert e5 using 1
  rw [form_id_eq]
  change _ + vl (CH.d (CH.modF Φ.A) n H') u - z u = -((vl (cupListC Φ.A ℓ) u -
    vl (∑ I : Fin (n + 1) → Fin (n + 1), fc E σ I (∏ k, ee E k (I k))) u - vl (CH.d (CH.modF Φ.A) n H) u) * _ +
    (vl (CH.d (CH.modF Φ.A) n H) u * _ - vl (CH.d (CH.modF Φ.A) n H') u) + (z u - _))
  ring

end Fr

section Term
variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R}

theorem term_id {n : ℕ} (f : CH.Cn (CH.modF A) n) (s : ComposableArrows C n) (g : Fin (n + 1) → Fin (n + 1))
    (hg : Monotone g) (e : g = id) : CH.term (CH.modF A) s f g hg = f s := by
  subst e
  have e : ∀ (h : Fin.last n ⟶ Fin.last n) (z : A.obj (s.obj (Fin.last n))), (A.map (s.map h)).hom z = z := by
    intro h z
    have e1 : h = 𝟙 _ := Subsingleton.elim _ _
    have e2 : s.map h = 𝟙 _ := (congrArg s.map e1).trans (s.map_id _)
    have e3 : A.map (s.map h) = 𝟙 _ := (congrArg A.map e2).trans (A.map_id _)
    rw [e3]
    rfl
  exact e _ _

end Term

section Loc
variable {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))

theorem lift_sub_mem (s : ℕ) {V : X.Opens} {d : ℕ} (t : Fin d → Γ(X, V)) (E : Frame (sP (KS q s {V})) d)
    (ε : Γ(X, V) ≃+* (sP (KS q s {V})).A.obj E.D) (hL : IsLoc q s t E ε) (σ : ∀ T, E.D ⟶ T) (y : Γ(X, V))
    (T : (KS q s {V}).FullSubcategory) :
    (show (sP (KS q s {V})).A.obj T from liftV T.obj (ks_in q s V T.obj T.property) y) -
      ((sP (KS q s {V})).A.map (σ T)).hom (ε y) ∈ (sP (KS q s {V})).J.S T := by
  obtain ⟨-, -, -, h4, -⟩ := hL
  exact Ideal.Quotient.eq.1 ((Classical.choose_spec (Ideal.Quotient.mk_surjective
    (ev T.obj (ks_in q s V T.obj T.property) y))).trans (h4 T (σ T) y))

theorem xdt_rep (s : ℕ) {V : X.Opens} {n : ℕ} (t : Fin (n + 1) → Γ(X, V)) (E : Frame (sP (KS q s {V})) (n + 1))
    (ε : Γ(X, V) ≃+* (sP (KS q s {V})).A.obj E.D) (hL : IsLoc q s t E ε) (σ : ∀ T, E.D ⟶ T) (y : Γ(X, V))
    (r : ℤ) (hr : r = ((n + 1 : ℕ) : ℤ)) (x : CH.H (gr (sFil (KS q s {V})) r) (n + 1))
    (hx : CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) r) (sFil (KS q s {V}) (r + 1)) (E.form σ id (ε y)) x) :
    CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) r) (sFil (KS q s {V}) (r + 1)) (xdtC s V t y) x := by
  have hF := GlobalTheory.CompanionTheory.DPFil.isFil_sFil (KS q s {V})
  have hc : E.GrConst (sFil (KS q s {V})) := hL.1
  have h5 := hL.2.2.2.2
  let ℓ : Fin (n + 1) → CH.Cn (CH.modF (sP (KS q s {V})).A) 1 := fun k =>
    addC _ fun T => liftV T.obj (ks_in q s V T.obj T.property) (t k)
  let h : Fin (n + 1) → ∀ T : (KS q s {V}).FullSubcategory, (sP (KS q s {V})).A.obj T := fun k T =>
    (show (sP (KS q s {V})).A.obj T from liftV T.obj (ks_in q s V T.obj T.property) (t k)) -
      ((sP (KS q s {V})).A.map (σ T)).hom (ε (t k))
  have hJ : ∀ k T, h k T ∈ (sP (KS q s {V})).J.S T := fun k T => lift_sub_mem q s t E ε hL σ (t k) T
  have hl : ∀ (k : Fin (n + 1)) (u : ComposableArrows (KS q s {V}).FullSubcategory 1),
      (show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from ℓ k u) -
      (∑ i, E.form σ ![i] (ee E k i) u + (h k (u.obj (Fin.last 1)) -
        ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (h k (u.obj 0)))) = 0 := by
    intro k u
    simp only [form_one]
    have e1 : ∑ i, E.a σ i (u.map (homOfLE (Fin.zero_le (Fin.last 1)))) *
        ((sP (KS q s {V})).A.map (σ _)).hom (ee E k i) = E.a σ k (u.map (homOfLE (Fin.zero_le (Fin.last 1)))) := by
      rw [Finset.sum_eq_single k]
      · rw [show ee E k k = 1 from if_pos rfl, map_one, mul_one]
      · intro i _ hi
        rw [show ee E k i = 0 from if_neg hi, map_zero, mul_zero]
      · intro hk
        exact absurd (Finset.mem_univ _) hk
    rw [e1]
    have e2 : E.a σ k (u.map (homOfLE (Fin.zero_le (Fin.last 1)))) =
        ((sP (KS q s {V})).A.map (σ _)).hom (ε (t k)) -
        ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom
          (((sP (KS q s {V})).A.map (σ _)).hom (ε (t k))) := by
      unfold Frame.a
      rw [h5, GlobalTheory.CompanionTheory.CocProd.map_map]
    rw [e2]
    change ((show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from _) -
      ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (show (sP (KS q s {V})).A.obj (u.obj 0) from _)) -
      (_ + (((show (sP (KS q s {V})).A.obj (u.obj (Fin.last 1)) from _) - _) -
      ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom ((show (sP (KS q s {V})).A.obj (u.obj 0) from _) - _))) = 0
    rw [map_sub]
    ring
  have hl' := fun k u => (hl k u).symm ▸ ((sFil (KS q s {V}) 2).S _).zero_mem
  have hlm : ∀ k, ℓ k ∈ FC (sFil (KS q s {V}) ((1 : ℕ) : ℤ)) 1 := by
    intro k
    refine mem_FC.2 fun u => ?_
    have e : vl (ℓ k) u = ((∑ i, E.form σ ![i] (ee E k i) u) + (h k (u.obj (Fin.last 1)) -
        ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.zero_le (Fin.last 1))))).hom (h k (u.obj 0)))) :=
      sub_eq_zero.1 (hl k u)
    rw [e]
    refine ((sFil _ _).S _).add_mem (((sFil _ _).S _).sum_mem fun i _ => mem_FC.1 (fc_mem E σ hF ![i] _) u) ?_
    rw [Nat.cast_one, hF.one]
    exact ((sP (KS q s {V})).J.S _).sub_mem (hJ _ _) ((sP (KS q s {V})).J.map_mem _ (hJ _ _))
  refine rep_back hF E σ hc ℓ h hJ hl' (ε y) r hr x _ (fun u => ?_) hx
  subst hr
  have hb := mem_FC.1 (cupList_mem hF (n + 1) ℓ hlm) u
  have e0 : (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from xdtC s V t y u) =
      (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from CH.term (CH.modF (sP (KS q s {V})).A) u
        (zeroC _ fun T => liftV T.obj (ks_in q s V T.obj T.property) y) (CH.front (Nat.zero_add (n + 1))) (CH.front_mono _)) *
      vl (cupListC (sP (KS q s {V})).A ℓ) u := by
    have e : CH.back (Nat.zero_add (n + 1)) = id := by
      funext i
      apply Fin.ext
      simp [CH.back]
    have := term_id (cupListC (sP (KS q s {V})).A ℓ) u _ (CH.back_mono (Nat.zero_add (n + 1))) e
    change _ * (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from CH.term (CH.modF (sP (KS q s {V})).A) u _ _ _) = _
    rw [this]
  have ha : ∀ p : Fin (n + 2), ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.le_last p)))).hom
      (show (sP (KS q s {V})).A.obj (u.obj p) from liftV (u.obj p).obj (ks_in q s V (u.obj p).obj (u.obj p).property) y) -
      ((sP (KS q s {V})).A.map (σ _)).hom (ε y) ∈ (sFil (KS q s {V}) ((1 : ℕ) : ℤ)).S _ := by
    intro p
    rw [Nat.cast_one, hF.one]
    have e1 := (sP (KS q s {V})).J.map_mem (u.map (homOfLE (Fin.le_last p))) (lift_sub_mem q s t E ε hL σ y (u.obj p))
    have e2 := const1 hF hc (σ (u.obj p) ≫ u.map (homOfLE (Fin.le_last p))) (σ _) (ε y)
    have e3 := ((sP (KS q s {V})).J.S _).add_mem e1 e2
    rw [map_sub, GlobalTheory.CompanionTheory.CocProd.map_map, sub_add_sub_cancel] at e3
    exact e3
  have e4 := hF.mul _ _ _ hb (ha (CH.front (Nat.zero_add (n + 1)) (Fin.last 0)))
  have e5 : ((n + 1 + 1 : ℕ) : ℤ) = ((n + 1 : ℕ) : ℤ) + 1 := by push_cast; ring
  rw [e5] at e4
  convert e4 using 1
  change (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from xdtC s V t y u) - _ = _
  have ea : (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from CH.term (CH.modF (sP (KS q s {V})).A) u
        (zeroC _ fun T => liftV T.obj (ks_in q s V T.obj T.property) y) (CH.front (Nat.zero_add (n + 1))) (CH.front_mono _)) =
      ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.le_last (CH.front (Nat.zero_add (n + 1)) (Fin.last 0)))))).hom
        (show (sP (KS q s {V})).A.obj (u.obj (CH.front (Nat.zero_add (n + 1)) (Fin.last 0))) from
          liftV (u.obj (CH.front (Nat.zero_add (n + 1)) (Fin.last 0))).obj
            (ks_in q s V _ (u.obj (CH.front (Nat.zero_add (n + 1)) (Fin.last 0))).property) y) := rfl
  rw [e0, ea]
  ring

end Loc

def i0 (m : ℕ) : Idx m m := ⟨id, strictMono_id⟩

theorem idx_eq {m : ℕ} (I : Idx m m) : I = i0 m := by
  refine Subtype.ext ((StrictMono.range_inj I.2 strictMono_id).1 ?_)
  have h : Function.Surjective I.1 := (Finite.injective_iff_surjective).1 I.2.injective
  rw [h.range_eq, Function.surjective_id.range_eq]

instance {m : ℕ} : Unique (Idx m m) := ⟨⟨i0 m⟩, idx_eq⟩

theorem sgn_det {B : Type} [CommRing B] {m : ℕ} (c : Fin m → Fin m → B) :
    ∑ J : Fin m → Fin m, sgn (i0 m) J • ∏ k, c k (J k) = (Matrix.of fun i k => c k i).det := by
  rw [Matrix.det_apply]
  simp only [sgn, Finset.sum_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun π _ => ?_
  rw [Finset.sum_eq_single (⇑π)]
  · simp only [i0, Function.id_comp, if_true]
    rw [Units.smul_def]
    simp
  · intro J _ hJ
    simp [i0, hJ]
  · simp

theorem inv_map {A B : Type*} [CommRing A] [CommRing B] (e : A ≃+* B) (a : A) : Ring.inverse (e a) = e (Ring.inverse a) := by
  by_cases h : IsUnit a
  · obtain ⟨v, rfl⟩ := h
    have e1 : e (v : A) = ((Units.map e.toMonoidHom v : Bˣ) : B) := rfl
    rw [e1, Ring.inverse_unit, Ring.inverse_unit]
    rfl
  · have h' : ¬ IsUnit (e a) := fun hu => h ((MulEquiv.isUnit_map e).1 hu)
    rw [Ring.inverse_non_unit _ h, Ring.inverse_non_unit _ h', map_zero]

theorem inv_prod {A : Type*} [CommRing A] {ι : Type*} [Fintype ι] (u : ι → A) (h : ∀ k, IsUnit (u k)) :
    Ring.inverse (∏ k, u k) = ∏ k, Ring.inverse (u k) := by
  choose v hv using h
  simp only [← hv]
  rw [← Units.coe_prod, Ring.inverse_unit, ← Finset.prod_inv_distrib, Units.coe_prod]
  simp only [Ring.inverse_unit]

theorem rep_one {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {Φ : PDF R C} {Fil : ℤ → IdF Φ.A} {m : ℕ} (E : Frame Φ m)
    (σ : ∀ T : C, E.D ⟶ T) (r : ℤ) (w : Idx m m → Φ.A.obj E.D) (cl : CH.H (gr Fil r) m)
    (h : CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) (fun u => ∑ I : Idx m m, E.form σ I.1 (w I) u) cl) :
    CrystallineSemistableComparison.Pb.Rep (Fil r) (Fil (r + 1)) (E.form σ id (w (i0 m))) cl := by
  refine rep_congr h fun u => ?_
  rw [Fintype.sum_unique]
  change E.form σ (i0 m).1 (w (i0 m)) u - _ ∈ _
  rw [show (i0 m).1 = id from rfl, sub_self]
  exact Ideal.zero_mem _

theorem main : CrystallineSemistableComparison.Pb.KH.LocGr → CrystallineSemistableComparison.Pb.KH.PolyTf → CrystallineSemistableComparison.Pb.KH.GrAff →
    ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (n : ℕ)
    [SmoothOfRelativeDimension (n + 1) q] (s : ℕ), n + 1 < s → ∀ (V V' : X.Opens) (hVV : V ≤ V'), IsAffineOpen V' →
    ∀ (c : Coord q V (n + 1)),
    letI := (strV q V).toAlgebra
    ∀ (D : Fin (n + 1) → Derivation K Γ(X, V) Γ(X, V)), (∀ k j, D k (c.t j) = if k = j then 1 else 0) →
    ∀ (g : Fin (n + 1) → Γ(X, V')), (∀ k, IsUnit (g k)) →
    ∀ (ĝ : Fin (n + 1) → ∀ T : (KS q s {V'}).FullSubcategory, T.obj.B),
    (∀ k T, Ideal.Quotient.mk _ (ĝ k T) = ev T.obj (ks_in q s V' T.obj T.property) (g k)) →
    ∀ x : HQ (KS q s {V'}) ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1), Rep (sFil (KS q s {V'}) ((n : ℤ) + 1)) (sFil (KS q s {V'}) ((n : ℤ) + 1 + 1)) (cupListC (sP (KS q s {V'})).A fun k => dlogC (KS q s {V'}) s (ĝ k)) (x) →
    Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V c.t (Ring.inverse (∏ k, rs hVV (g k)) * (Matrix.of fun k l => D k (rs hVV (g l))).det)) (resKS q s hVV _ _ _ x) ∨
    Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V c.t (-(Ring.inverse (∏ k, rs hVV (g k)) * (Matrix.of fun k l => D k (rs hVV (g l))).det))) (resKS q s hVV _ _ _ x) := by
  intro _ _ _ K _ _ X q n _ s hs V V' hVV hV' c D hD g hg ĝ hĝ x hx
  left
  obtain ⟨E, ε, hL⟩ := GlobalTheory.CompanionTheory.ConeLocal.exists_loc q c s (by omega)
  let σ : ∀ T, E.D ⟶ T := fun T => (E.ne T).some
  have hF := GlobalTheory.CompanionTheory.DPFil.isFil_sFil (KS q s {V})
  have hc : E.GrConst (sFil (KS q s {V})) := hL.1
  have hT := GlobalTheory.CompanionTheory.ConeLocal.taylor_loc q c s E ε hL D hD
  have hr : (n : ℤ) + 1 = ((n + 1 : ℕ) : ℤ) := by push_cast; ring
  have h1 := rep_res (ks_le q s hVV) _ _ hx
  choose h hh happ using fun k => GlobalTheory.CompanionTheory.ConeLocal.DlogApprox.main q s (by omega) hVV c.t E ε hL _ hT σ (g k) (hg k) (ĝ k) (hĝ k)
  let ℓ : Fin (n + 1) → CH.Cn (CH.modF (sP (KS q s {V})).A) 1 := fun k => resQ (ks_le q s hVV) (dlogC (KS q s {V'}) s (ĝ k))
  let cc : Fin (n + 1) → Fin (n + 1) → (sP (KS q s {V})).A.obj E.D := fun k i =>
    Ring.inverse (ε (rs hVV (g k))) * ε (D i (ε.symm (ε (rs hVV (g k)))))
  have h2 : CrystallineSemistableComparison.Pb.Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1))
      (fun u => (show (sP (KS q s {V})).A.obj (u.obj (Fin.last (n + 1))) from cupListC (sP (KS q s {V})).A ℓ u) *
        ((sP (KS q s {V})).A.map (σ _)).hom 1) (resKS q s hVV _ _ _ x) := by
    refine rep_congr h1 fun u => ?_
    have e := congrFun (cup_resQ (ks_le q s hVV) (fun k => dlogC (KS q s {V'}) s (ĝ k))) u
    rw [map_one, mul_one]
    exact (sub_eq_zero.2 e) ▸ Ideal.zero_mem _
  have h3 := GlobalTheory.CompanionTheory.CupRep.cup_rep hF E σ hc (n + 1) ℓ cc h hh happ 1 _ hr _ h2
  have h4 := GlobalTheory.CompanionTheory.ConeLocal.rep_collapse hF E σ hc (n + 1) _ hr (fun I => I) (fun I => 1 * ∏ k, cc k (I k)) _ h3
  have h5 := rep_one E σ _ (fun I => ∑ J, sgn I J • (1 * ∏ k, cc k (J k))) _ h4
  have hu : ∀ k, IsUnit (rs hVV (g k)) := fun k => (hg k).map (rs hVV)
  have e : ∑ J : Fin (n + 1) → Fin (n + 1), sgn (i0 (n + 1)) J • (1 * ∏ k, cc k (J k)) =
      ε (Ring.inverse (∏ k, rs hVV (g k)) * (Matrix.of fun k l => D k (rs hVV (g l))).det) := by
    simp only [one_mul]
    rw [sgn_det, inv_prod _ hu, ← Matrix.det_mul_row]
    have e1 := (ε : Γ(X, V) →+* (sP (KS q s {V})).A.obj E.D).map_det
      (Matrix.of fun k l => Ring.inverse (rs hVV (g l)) * D k (rs hVV (g l)))
    refine Eq.trans ?_ e1.symm
    congr 1
    ext i k
    simp [cc, inv_map]
  rw [e] at h5
  exact xdt_rep q s c.t E ε hL σ _ _ hr _ h5

end GlobalTheory.CompanionTheory.ConeLdlog
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepRestrict =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopRepresentativeAdd =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopRepresentativeAdd", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ZeroC\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupListRepresentativeOfForms\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCocycle\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section
namespace GlobalTheory.CompanionTheory.ConeLocal.XdtAdd

open GlobalTheory.CompanionTheory.CupRep

variable {K : Type} [CommRing K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

theorem mk_liftV {V : X.Opens} (T : Thick (smFun X q)) (h : InU V T) (g : Γ(X, V)) :
    Ideal.Quotient.mk T.J (liftV T h g) = ev T h g :=
  Classical.choose_spec (Ideal.Quotient.mk_surjective (ev T h g))

theorem liftV_sub_map_mem {V : X.Opens} {T T' : Thick (smFun X q)} (φ : T ⟶ T') (h : InU V T) (h' : InU V T')
    (g : Γ(X, V)) : liftV T' h' g - φ.φ (liftV T h g) ∈ T'.J := by
  refine Ideal.Quotient.eq.1 ?_
  rw [mk_liftV]
  have e : Ideal.Quotient.mk T'.J (φ.φ (liftV T h g)) =
      Ideal.quotientMap T'.J φ.φ φ.hle (Ideal.Quotient.mk T.J (liftV T h g)) := (Ideal.quotientMap_mk).symm
  rw [e, mk_liftV]
  exact GlobalTheory.CompanionTheory.GrForm.ev_nat φ h h' g

theorem liftV_add_mem {V : X.Opens} (T : Thick (smFun X q)) (h : InU V T) (x y : Γ(X, V)) :
    liftV T h x + liftV T h y - liftV T h (x + y) ∈ T.J := by
  refine Ideal.Quotient.eq_zero_iff_mem.1 ?_
  rw [map_sub, map_add (f := _), mk_liftV, mk_liftV, mk_liftV, map_add (f := _), sub_self]

variable (s : ℕ) (V : X.Opens)

theorem addC_mem (g : Γ(X, V)) :
    addC (KS q s {V}) (fun T => liftV T.obj (ks_in q s V T.obj T.property) g) ∈
      FC (sFil (KS q s {V}) ((1 : ℕ) : ℤ)) 1 := by
  refine mem_FC.2 fun u => ?_
  have hF := GlobalTheory.CompanionTheory.DPFil.isFil_sFil (KS q s {V})
  rw [Nat.cast_one, hF.one]
  exact liftV_sub_map_mem (u.map (homOfLE (Fin.zero_le (Fin.last 1)))).hom _ _ g

theorem cupList_mem {d : ℕ} (l : Fin d → CH.Cn (CH.modF (sP (KS q s {V})).A) 1)
    (hl : ∀ k, l k ∈ FC (sFil (KS q s {V}) ((1 : ℕ) : ℤ)) 1) :
    cupListC (sP (KS q s {V})).A l ∈ FC (sFil (KS q s {V}) ((d : ℕ) : ℤ)) d := by
  have hF := GlobalTheory.CompanionTheory.DPFil.isFil_sFil (KS q s {V})
  induction d with
  | zero =>
    refine mem_FC.2 fun u => ?_
    rw [hF.top _ (by simp)]
    trivial
  | succ n ih =>
    exact cup_mem hF (by omega) (ih _ fun i => hl _) (hl (Fin.last n))

theorem xdtC_val {d : ℕ} (t : Fin d → Γ(X, V)) (x : Γ(X, V)) (u : ComposableArrows (KS q s {V}).FullSubcategory d) :
    vl (xdtC (q := q) s V t x) u =
      ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.le_last (CH.front (Nat.zero_add d) (Fin.last 0)))))).hom
        (liftV (u.obj (CH.front (Nat.zero_add d) (Fin.last 0))).obj
          (ks_in q s V _ (u.obj (CH.front (Nat.zero_add d) (Fin.last 0))).property) x) *
      vl (cupListC (sP (KS q s {V})).A fun k =>
        addC _ fun T => liftV T.obj (ks_in q s V T.obj T.property) (t k)) u :=
  congrArg (fun b : (sP (KS q s {V})).A.obj (u.obj (Fin.last d)) =>
      ((sP (KS q s {V})).A.map (u.map (homOfLE (Fin.le_last (CH.front (Nat.zero_add d) (Fin.last 0)))))).hom
        (liftV (u.obj (CH.front (Nat.zero_add d) (Fin.last 0))).obj
          (ks_in q s V _ (u.obj (CH.front (Nat.zero_add d) (Fin.last 0))).property) x) * b)
    (CrystallineSemistableComparison.Auxff.term_id _ u _ _ _ (fun t => by simp [CH.back]))

end GlobalTheory.CompanionTheory.ConeLocal.XdtAdd

namespace GlobalTheory.CompanionTheory.ConeLocal

open GlobalTheory.CompanionTheory.CupRep XdtAdd

theorem rep_xdtC_add {K : Type} [Field K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)} (s : ℕ) (V : X.Opens)
    {d : ℕ} (t : Fin d → Γ(X, V)) (x y : Γ(X, V)) (a b : HQ (KS q s {V}) d ((d : ℤ) + 1) d)
    (ha : Rep (sFil (KS q s {V}) d) (sFil (KS q s {V}) ((d : ℤ) + 1)) (xdtC s V t x) a)
    (hb : Rep (sFil (KS q s {V}) d) (sFil (KS q s {V}) ((d : ℤ) + 1)) (xdtC s V t y) b) :
    Rep (sFil (KS q s {V}) d) (sFil (KS q s {V}) ((d : ℤ) + 1)) (xdtC s V t (x + y)) (a + b) := by
  have hF := GlobalTheory.CompanionTheory.DPFil.isFil_sFil (KS q s {V})
  refine rep_congr (rep_add ha hb) fun u => ?_
  have hc := mem_FC.1 (cupList_mem s V (fun k => addC (KS q s {V}) fun T =>
    liftV T.obj (ks_in q s V T.obj T.property) (t k)) fun k => addC_mem s V (t k)) u
  let T0 := u.obj (CH.front (Nat.zero_add d) (Fin.last 0))
  let ψ := u.map (homOfLE (Fin.le_last (CH.front (Nat.zero_add d) (Fin.last 0))))
  have h1 : ((sP (KS q s {V})).A.map ψ).hom
      (liftV T0.obj (ks_in q s V _ T0.property) x + liftV T0.obj (ks_in q s V _ T0.property) y -
        liftV T0.obj (ks_in q s V _ T0.property) (x + y)) ∈ (sFil (KS q s {V}) ((1 : ℕ) : ℤ)).S _ := by
    rw [Nat.cast_one, hF.one]
    exact (sP (KS q s {V})).J.map_mem ψ (liftV_add_mem T0.obj _ x y)
  have h2 := hF.mul 1 d _ h1 hc
  have e : ((1 + d : ℕ) : ℤ) = (d : ℤ) + 1 := by push_cast; ring
  rw [e] at h2
  change vl (xdtC (q := q) s V t x) u + vl (xdtC (q := q) s V t y) u - vl (xdtC (q := q) s V t (x + y)) u ∈ _
  rw [xdtC_val, xdtC_val, xdtC_val]
  convert h2 using 1
  rw [map_sub, map_add (f := _)]
  ring

end GlobalTheory.CompanionTheory.ConeLocal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopRepresentativeAdd =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProjectiveChartAffineCoords =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProjectiveChartAffineCoords", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ConeSite\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ZeroC\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChartRestrictPullBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeCocycleClassIndependent\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCupListRepresentative\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueTopGradedRep\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FilteredCochainExtendOfSurjective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepresentativeRestrict\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThickeningFiltrationIsFil\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepDerivationCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepOpenCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopGradedRepRestrict\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TopRepresentativeAdd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitLogRepresentativeCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section
namespace GlobalTheory.CompanionTheory.ConeTransfer

theorem pull_resU_comp {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] (F : C ⥤ ModuleCat.{0} R)
    {U V W : ObjectProperty C} (h : V ≤ U) (h' : W ≤ V) (j : ℕ) (x : HU F U j) :
    (resU F h').pull j ((resU F h).pull j x) = (resU F (h'.trans h)).pull j x := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rfl

section
variable {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))

theorem resKS_eq (s : ℕ) {V V' : X.Opens} (h : V ≤ V') (r r' : ℤ) (j : ℕ) (x : HQ (KS q s {V'}) r r' j) :
    resKS q s h r r' j x =
      (resU (sq (thFil (smFun X q) r) (thFil (smFun X q) r')) (ks_le q s h)).pull j x := by
  unfold resKS
  rw [GlobalTheory.CompanionTheory.ConeZarCap.resU_eq]
  rfl

end

section
variable {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}
  {Q : ObjectProperty (Thick (smFun X q))}

theorem isUnit_of_mk (T : Thick (smFun X q)) (x : T.B) (h : IsUnit (Ideal.Quotient.mk T.J x)) : IsUnit x :=
  (IsNilpotent.isUnit_quotient_mk_iff (GlobalTheory.CompanionTheory.ConeZcls.J_nil T)).1 h

theorem dlog_cocycle (s : ℕ) (hs : ∀ T : Q.FullSubcategory, T.obj.pdPow s = ⊥)
    (ĝ : ∀ T : Q.FullSubcategory, T.obj.B) (hu : ∀ T, IsUnit (ĝ T))
    (hc : ∀ (T T' : Q.FullSubcategory) (f : T ⟶ T'), ĝ T' - f.hom.φ (ĝ T) ∈ T'.obj.J) :
    CH.d _ 1 (dlogC Q s ĝ) = 0 := by
  choose v hv using hu
  obtain rfl : ĝ = fun T => (v T : T.obj.B) := funext fun T => (hv T).symm
  exact GlobalTheory.CompanionTheory.RepLifts.d_dlogC s hs v hc

theorem dlog_mem (s : ℕ) (ĝ : ∀ T : Q.FullSubcategory, T.obj.B) (hu : ∀ T, IsUnit (ĝ T))
    (hc : ∀ (T T' : Q.FullSubcategory) (f : T ⟶ T'), ĝ T' - f.hom.φ (ĝ T) ∈ T'.obj.J)
    (σ : ComposableArrows Q.FullSubcategory 1) : dlogC Q s ĝ σ ∈ (sFil Q 1).S _ := by
  have hF := GlobalTheory.CompanionTheory.DPFil.isFil_sFil Q
  choose v hv using hu
  obtain rfl : ĝ = fun T => (v T : T.obj.B) := funext fun T => (hv T).symm
  rw [hF.one]
  change (show (σ.obj (Fin.last 1)).obj.B from dlogC Q s (fun T => (v T : T.obj.B)) σ) ∈ (σ.obj (Fin.last 1)).obj.J
  rw [GlobalTheory.CompanionTheory.RepLifts.dlogC_eq s v σ]
  exact GlobalTheory.CompanionTheory.RepLifts.plogK_mem _ _ (GlobalTheory.CompanionTheory.RepLifts.rU_sub_mem v hc _)

end

theorem rep_uniqueU {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] (A : C ⥤ CommAlgCat.{0} R) (a b : IdF A)
    (U : ObjectProperty C) {j : ℕ} (z : CH.Cn (CH.modF (U.ι ⋙ A)) j) (c c' : HU (sq a b) U j)
    (h : Rep (a.res U.ι) (b.res U.ι) z c) (h' : Rep (a.res U.ι) (b.res U.ι) z c') : c = c' := by
  obtain ⟨f, hf, hc, hz⟩ := h
  obtain ⟨f', hf', hc', hz'⟩ := h'
  have e : f = f' := funext fun s => Subtype.ext ((hz s).trans (hz' s).symm)
  subst e
  have a1 : c = (CH.cx (U.ι ⋙ sq a b)).cls f hf := hc
  have a2 : c' = (CH.cx (U.ι ⋙ sq a b)).cls f hf := hc'
  exact a1.trans a2.symm

theorem glue {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] (F : C ⥤ ModuleCat.{0} R) {ι : Type} [Fintype ι]
    {Q P : ObjectProperty C} (A B : ι → ObjectProperty C) (h : P ≤ Q) (hA : ∀ j, Q ≤ A j) (hB : ∀ j, B j ≤ A j)
    (hP : ∀ j, P ≤ B j) (m : ℕ) (hi : Function.Injective ((resU F h).pull m))
    (c0 : HU F P m) (c x : HU F Q m) (ω' : ∀ j, HU F (A j) m) (ω : ∀ j, HU F (B j) m)
    (hω : ∀ j, (resU F (hB j)).pull m (ω' j) = ω j) (e0 : c0 = (resU F h).pull m c)
    (e2 : c0 - ∑ j, (resU F (hP j)).pull m (ω j) = (resU F h).pull m x) :
    c = ∑ j, (resU F (hA j)).pull m (ω' j) + x := by
  apply hi

  rw [map_add (f := _), map_sum, ← e0, ← e2]
  have e5 : ∀ j, (resU F h).pull m ((resU F (hA j)).pull m (ω' j)) = (resU F (hP j)).pull m (ω j) := fun j => by
    rw [← hω j, pull_resU_comp, pull_resU_comp]
  rw [Finset.sum_congr rfl fun j _ => e5 j]
  abel

theorem glue_res {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] (F : C ⥤ ModuleCat.{0} R) {ι : Type} [Fintype ι]
    {Q W : ObjectProperty C} (A : ι → ObjectProperty C) (h : W ≤ Q) (hA : ∀ j, Q ≤ A j) (hW : ∀ j, W ≤ A j) (m : ℕ)
    (c x : HU F Q m) (ω' : ∀ j, HU F (A j) m) (e : c = ∑ j, (resU F (hA j)).pull m (ω' j) + x) :
    (resU F h).pull m c = ∑ j, (resU F (hW j)).pull m (ω' j) + (resU F h).pull m x := by

  rw [e, map_add (f := _), map_sum]
  refine congrArg (· + _) (Finset.sum_congr rfl fun j _ => ?_)
  rw [pull_resU_comp]

section
variable {K : Type} [Field K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

theorem rep_add' (s n : ℕ) (V : X.Opens) (t : Fin (n + 1) → Γ(X, V)) (x y : Γ(X, V))
    (a b : HQ (KS q s {V}) ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1))
    (ha : Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V t x) a)
    (hb : Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V t y) b) :
    Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V t (x + y)) (a + b) :=
  GlobalTheory.CompanionTheory.ConeLocal.rep_xdtC_add (d := n + 1) s V t x y a b ha hb

theorem rep_sum (s n : ℕ) (V : X.Opens) (t : Fin (n + 1) → Γ(X, V))
    (h0 : Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V t 0) 0)
    {ι : Type} [DecidableEq ι] (S : Finset ι) (x : ι → Γ(X, V))
    (a : ι → HQ (KS q s {V}) ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1))
    (h : ∀ j, Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V t (x j)) (a j)) :
    Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V t (∑ j ∈ S, x j)) (∑ j ∈ S, a j) := by
  induction S using Finset.induction_on with
  | empty => simpa using h0
  | insert j S hj ih =>
    rw [Finset.sum_insert hj, Finset.sum_insert hj]
    exact rep_add' s n V t _ _ _ _ (h j) ih

end

theorem rep_zero_xdt (h1 : CrystallineSemistableComparison.Pb.KH.LocGr) (h2 : CrystallineSemistableComparison.Pb.KH.PolyTf) (h3 : CrystallineSemistableComparison.Pb.KH.GrAff)
    {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (n : ℕ)
    [SmoothOfRelativeDimension (n + 1) q] (s : ℕ) (hs : n + 1 < s) (V : X.Opens) (c : Coord q V (n + 1)) :
    Rep (sFil (KS q s {V}) ((n : ℤ) + 1)) (sFil (KS q s {V}) ((n : ℤ) + 1 + 1)) (xdtC s V c.t 0) 0 := by
  obtain ⟨x, hx, hu⟩ := GlobalTheory.CompanionTheory.ConeTopChart.top_chart h1 h2 h3 q n s hs V c 0
  have h := rep_add' s n V c.t x x 0 0 hx hx
  rw [add_zero] at h
  have e : x + x = x := hu _ h
  have e0 : x = 0 := by simpa using e
  rwa [e0] at hx



theorem main : KH.LocGr → KH.PolyTf → KH.GrAff →
    ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (n : ℕ)
    [SmoothOfRelativeDimension (n + 1) q] {N : ℕ} (i : X ⟶ PSpace K N) (y : Fin (n + 2) → MvPolynomial (Fin (N + 1)) K),
    (∀ S : Finset (Fin (n + 2)), S.Nonempty → IsAffineOpen (⨅ k ∈ S, uy i y k)) →
    ∀ (V : X.Opens) (hV : ∀ S : Finset (Fin (n + 2)), V ≤ ⨅ k ∈ S, uy i y k) (c : Coord q V (n + 1)),
    letI := (strV q V).toAlgebra
    ∀ (D : Fin (n + 1) → Derivation K Γ(X, V) Γ(X, V)), (∀ k j, D k (c.t j) = if k = j then 1 else 0) →
    ∀ (g : Fin (n + 1) → Γ(X, ⨅ k ∈ Finset.univ, uy i y k)), (∀ k, IsUnit (g k)) →
    ∀ (ĝ : Fin (n + 1) → ∀ T : (capS (wK q i y (n + 2)) Finset.univ).FullSubcategory, T.obj.B),
    (∀ k T (h : InU (⨅ k ∈ Finset.univ, uy i y k) T.obj), Ideal.Quotient.mk _ (ĝ k T) = ev T.obj h (g k)) →
    ∀ (c0 : HU (gr (Φ := thP (smFun X q)) (thFil (smFun X q)) ((n : ℤ) + 1)) (capS (wK q i y (n + 2)) Finset.univ) (n + 1)),
    Rep ((thFil (smFun X q) ((n : ℤ) + 1)).res (capS (wK q i y (n + 2)) Finset.univ).ι)
      ((thFil (smFun X q) ((n : ℤ) + 1 + 1)).res (capS (wK q i y (n + 2)) Finset.univ).ι)
      (cupListC ((capS (wK q i y (n + 2)) Finset.univ).ι ⋙ thA (smFun X q)) fun k =>
        dlogC (capS (wK q i y (n + 2)) Finset.univ) (n + 2) (ĝ k)) c0 →
    ∀ (ω : ∀ j, HU (gr (Φ := thP (smFun X q)) (thFil (smFun X q)) ((n : ℤ) + 1))
        (capS (wK q i y (n + 2)) (Finset.univ.erase j)) (n + 1))
      (f : CH.Cn (CH.modF ((capS (wK q i y (n + 2)) Finset.univ).ι ⋙ thA (smFun X q))) n),
    (∀ σ, f σ ∈ (thFil (smFun X q) n).S _) → (∀ σ, CH.d _ n f σ ∈ (thFil (smFun X q) ((n : ℤ) + 1)).S _) →
    Rep ((thFil (smFun X q) ((n : ℤ) + 1)).res (capS (wK q i y (n + 2)) Finset.univ).ι)
      ((thFil (smFun X q) ((n : ℤ) + 1 + 1)).res (capS (wK q i y (n + 2)) Finset.univ).ι) (CH.d _ n f)
      (c0 - ∑ j, ((resU (gr (Φ := thP (smFun X q)) (thFil (smFun X q)) ((n : ℤ) + 1))
        (capS_univ_le (wK q i y (n + 2)) (Finset.univ.erase j))).pull (n + 1)) (ω j)) →
    ∃ (x : Fin (n + 2) → Γ(X, V)) (η : Fin (n + 1) → Γ(X, V)),
      (∀ j, x j ∈ jacSpan (hV (Finset.univ.erase j)) (RingHom.id _) (fun k => D k) id) ∧
      (∀ k, η k ∈ jacSpan (hV Finset.univ) (RingHom.id _) (fun k => D k) (Fin.succAbove k)) ∧
      (Ring.inverse (∏ k, rs (hV Finset.univ) (g k)) * (Matrix.of fun k l => D k (rs (hV Finset.univ) (g l))).det =
          ∑ j, x j + ∑ k : Fin (n + 1), (-1 : Γ(X, V)) ^ (k : ℕ) * D k (η k) ∨
        -(Ring.inverse (∏ k, rs (hV Finset.univ) (g k)) * (Matrix.of fun k l => D k (rs (hV Finset.univ) (g l))).det) =
          ∑ j, x j + ∑ k : Fin (n + 1), (-1 : Γ(X, V)) ^ (k : ℕ) * D k (η k)) := by
  intro hLG hPT hGA K _ _ X q n _ N i y haff V hV c D hD g hg ĝ hĝ c0 hc0 ω f hf hdf hrep
  have hun : (Finset.univ : Finset (Fin (n + 2))).Nonempty := Finset.univ_nonempty
  have her : ∀ j : Fin (n + 2), (Finset.univ.erase j).Nonempty := fun j => by
    refine ⟨if j = 0 then 1 else 0, ?_⟩
    simp only [Finset.mem_erase, Finset.mem_univ, and_true]
    split_ifs with h
    · subst h; exact (Fin.zero_ne_one).symm
    · exact fun e => h e.symm
  obtain ⟨h1, hb1⟩ := GlobalTheory.CompanionTheory.ConeZarCap.main q i y (n + 2) Finset.univ hun ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1)
  obtain ⟨h1', hb0⟩ := GlobalTheory.CompanionTheory.ConeZarCap.main q i y (n + 2) Finset.univ hun (n : ℤ) ((n : ℤ) + 1) n
  have hj := fun j : Fin (n + 2) => GlobalTheory.CompanionTheory.ConeZarCap.main q i y (n + 2) (Finset.univ.erase j) (her j) ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1)
  choose hjl hjb using hj
  have hle : ∀ j : Fin (n + 2), (⨅ k ∈ Finset.univ, uy i y k) ≤ (⨅ k ∈ Finset.univ.erase j, uy i y k) :=
    fun j => le_iInf₂ fun k _ => iInf₂_le k (Finset.mem_univ k)

  have hlift : ∀ k (T : (KS q (n + 2) {⨅ k ∈ Finset.univ, uy i y k}).FullSubcategory),
      Ideal.Quotient.mk T.obj.J (liftV T.obj (ks_in q (n + 2) _ T.obj T.property) (g k)) = ev T.obj (ks_in q (n + 2) _ T.obj T.property) (g k) :=
    fun k T => GlobalTheory.CompanionTheory.ConeLocal.XdtAdd.mk_liftV T.obj _ (g k)
  have hunit : ∀ k (T : (KS q (n + 2) {⨅ k ∈ Finset.univ, uy i y k}).FullSubcategory),
      IsUnit (liftV T.obj (ks_in q (n + 2) _ T.obj T.property) (g k)) := fun k T =>
    isUnit_of_mk T.obj _ ((hlift k T).symm ▸ (hg k).map (ev T.obj (ks_in q (n + 2) _ T.obj T.property)))
  have hcomp := fun k => GlobalTheory.CompanionTheory.RepLifts.lift_compat (Q := KS q (n + 2) {⨅ k ∈ Finset.univ, uy i y k})
    (ks_in q (n + 2) _) (g k) (fun T => liftV T.obj (ks_in q (n + 2) _ T.obj T.property) (g k)) (hlift k)
  obtain ⟨c', hc'⟩ : ∃ c' : HQ (KS q (n + 2) {(⨅ k ∈ Finset.univ, uy i y k)}) ((n : ℤ) + 1) ((n : ℤ) + 1 + 1) (n + 1), Rep (sFil (KS q (n + 2) {(⨅ k ∈ Finset.univ, uy i y k)}) ((n : ℤ) + 1)) (sFil (KS q (n + 2) {(⨅ k ∈ Finset.univ, uy i y k)}) ((n : ℤ) + 1 + 1))
      (cupListC (sP (KS q (n + 2) {(⨅ k ∈ Finset.univ, uy i y k)})).A fun k => dlogC _ (n + 2) fun T => liftV T.obj (ks_in q (n + 2) _ T.obj T.property) (g k)) c' := GlobalTheory.CompanionTheory.ConeRepCup.exists_rep (sP (KS q (n + 2) {⨅ k ∈ Finset.univ, uy i y k}))
    (sFil (KS q (n + 2) {⨅ k ∈ Finset.univ, uy i y k})) (GlobalTheory.CompanionTheory.DPFil.isFil_sFil _) (m := n + 1)
    (fun k => dlogC _ (n + 2) fun T => liftV T.obj (ks_in q (n + 2) _ T.obj T.property) (g k))
    (fun k => dlog_cocycle (n + 2) (fun T => T.property.1.1) _ (hunit k) (hcomp k))
    (fun k σ => dlog_mem (n + 2) _ (hunit k) (hcomp k) σ)
  have r1 := GlobalTheory.CompanionTheory.ConeRep.rep_resB (thA (smFun X q)) (thFil (smFun X q) ((n : ℤ) + 1)) (thFil (smFun X q) ((n : ℤ) + 1 + 1)) h1 _ c' hc'
  let ĝ2 : Fin (n + 1) → ∀ T : (capS (wK q i y (n + 2)) Finset.univ).FullSubcategory, T.obj.B :=
    fun k T => liftV T.obj (ks_in q (n + 2) _ T.obj (h1 _ T.property)) (g k)
  have e1 : resB (thA (smFun X q)) h1 (cupListC (sP (KS q (n + 2) {(⨅ k ∈ Finset.univ, uy i y k)})).A fun k => dlogC _ (n + 2) fun T => liftV T.obj (ks_in q (n + 2) _ T.obj T.property) (g k)) =
      cupListC (sP (capS (wK q i y (n + 2)) Finset.univ)).A fun k => dlogC (capS (wK q i y (n + 2)) Finset.univ) (n + 2) (ĝ2 k) :=
    GlobalTheory.CompanionTheory.ConeLocal.cup_resQ h1 _
  rw [e1] at r1
  have hρ : Rep (sFil (capS (wK q i y (n + 2)) Finset.univ) ((n : ℤ) + 1)) (sFil (capS (wK q i y (n + 2)) Finset.univ) ((n : ℤ) + 1 + 1)) (cupListC (sP (capS (wK q i y (n + 2)) Finset.univ)).A fun k => dlogC (capS (wK q i y (n + 2)) Finset.univ) (n + 2) (ĝ2 k)) c0 := GlobalTheory.CompanionTheory.RepLifts.main (capS (wK q i y (n + 2)) Finset.univ) (n + 2) (fun T hT => (h1 T hT).1.1) ĝ ĝ2
    (fun k T => isUnit_of_mk T.obj _ ((hĝ k T (ks_in q (n + 2) _ T.obj (h1 _ T.property))).symm ▸
      (hg k).map (ev T.obj (ks_in q (n + 2) _ T.obj (h1 _ T.property)))))
    (fun k => GlobalTheory.CompanionTheory.RepLifts.lift_compat (Q := (capS (wK q i y (n + 2)) Finset.univ)) (fun T hT => ks_in q (n + 2) _ T (h1 _ hT)) (g k) (ĝ k)
      (fun T => hĝ k T _))
    (fun k T => Ideal.Quotient.eq.1 ((hĝ k T (ks_in q (n + 2) _ T.obj (h1 _ T.property))).trans
      (GlobalTheory.CompanionTheory.ConeLocal.XdtAdd.mk_liftV T.obj _ (g k)).symm))
    c0 hc0
  have e0 : c0 = (resU (sq (thFil (smFun X q) ((n : ℤ) + 1)) (thFil (smFun X q) ((n : ℤ) + 1 + 1))) h1).pull (n + 1) c' := rep_uniqueU (thA (smFun X q)) (thFil (smFun X q) ((n : ℤ) + 1)) (thFil (smFun X q) ((n : ℤ) + 1 + 1)) (capS (wK q i y (n + 2)) Finset.univ) _ _ _ hρ r1

  have hω : ∀ j, ∃ w, (resU (sq (thFil (smFun X q) ((n : ℤ) + 1)) (thFil (smFun X q) ((n : ℤ) + 1 + 1))) (hjl j)).pull (n + 1) w = ω j := fun j => (hjb j).2 (ω j)
  choose ω' hω' using hω
  obtain ⟨f', hf'1, hf'2, hf'3⟩ := GlobalTheory.CompanionTheory.ConeRepExact.exact_lift (thP (smFun X q)) (thFil (smFun X q)) (GlobalTheory.CompanionTheory.DPFil.isFil_thFil _) h1 n hb0.2 f hf hdf
  obtain ⟨xf, hxf⟩ := GlobalTheory.CompanionTheory.ConeLocal.rep_exists (a := sFil (KS q (n + 2) {(⨅ k ∈ Finset.univ, uy i y k)}) ((n : ℤ) + 1)) (b := sFil (KS q (n + 2) {(⨅ k ∈ Finset.univ, uy i y k)}) ((n : ℤ) + 1 + 1))
    (CH.d _ n f') hf'2 (fun σ => by rw [CH.d_d]; exact zero_mem _)
  have e2 := hf'3 _ xf hrep hxf

  have t1 : Function.Injective ((resU (gr (Φ := thP (smFun X q)) (thFil (smFun X q)) ((n : ℤ) + 1)) h1).pull (n + 1)) := hb1.1
  have t2 : ∀ j, (resU (gr (Φ := thP (smFun X q)) (thFil (smFun X q)) ((n : ℤ) + 1)) (hjl j)).pull (n + 1) (ω' j) = ω j := hω'
  have t3 : c0 = (resU (gr (Φ := thP (smFun X q)) (thFil (smFun X q)) ((n : ℤ) + 1)) h1).pull (n + 1) c' := e0
  have t4 : c0 - ∑ j, (resU (gr (Φ := thP (smFun X q)) (thFil (smFun X q)) ((n : ℤ) + 1)) (capS_univ_le (wK q i y (n + 2)) (Finset.univ.erase j))).pull (n + 1) (ω j) = (resU (gr (Φ := thP (smFun X q)) (thFil (smFun X q)) ((n : ℤ) + 1)) h1).pull (n + 1) xf := e2
  have e3 := glue (gr (Φ := thP (smFun X q)) (thFil (smFun X q)) ((n : ℤ) + 1)) (fun j : Fin (n + 2) => KS q (n + 2) {⨅ k ∈ Finset.univ.erase j, uy i y k})
    (fun j : Fin (n + 2) => capS (wK q i y (n + 2)) (Finset.univ.erase j)) h1 (fun j => ks_le q (n + 2) (hle j)) hjl
    (fun j => capS_univ_le (wK q i y (n + 2)) (Finset.univ.erase j)) (n + 1) t1 c0 c' xf ω' ω t2 t3 t4

  have hUaff := haff _ hun
  have hd := GlobalTheory.CompanionTheory.ConeLdlog.main hLG hPT hGA q n (n + 2) (by omega) V _ (hV Finset.univ) hUaff c D hD g hg
    (fun k T => liftV T.obj (ks_in q (n + 2) _ T.obj T.property) (g k)) hlift c' hc'
  have hr := fun j : Fin (n + 2) => GlobalTheory.CompanionTheory.ConeLRestr.main hLG hPT hGA q n (n + 2) (by omega) V _ (hV (Finset.univ.erase j)) (haff _ (her j)) c D hD (ω' j)
  choose x hx hxr using hr
  obtain ⟨η, hη, hηr⟩ := GlobalTheory.CompanionTheory.ConeLocal.LExact.main hLG hPT hGA q n (n + 2) (by omega) V _ (hV Finset.univ) hUaff c D hD f' hf'1 hf'2 xf hxf
  have e4 : resKS q (n + 2) (hV Finset.univ) _ _ _ c' =
      ∑ j, resKS q (n + 2) (hV (Finset.univ.erase j)) _ _ _ (ω' j) + resKS q (n + 2) (hV Finset.univ) _ _ _ xf := by
    rw [resKS_eq, resKS_eq, Finset.sum_congr rfl fun j _ => resKS_eq q (n + 2) (hV (Finset.univ.erase j)) _ _ _ (ω' j)]
    exact glue_res (sq (thFil (smFun X q) ((n : ℤ) + 1)) (thFil (smFun X q) ((n : ℤ) + 1 + 1))) (fun j : Fin (n + 2) => KS q (n + 2) {⨅ k ∈ Finset.univ.erase j, uy i y k}) (ks_le q (n + 2) (hV Finset.univ))
      (fun j => ks_le q (n + 2) (hle j)) (fun j => ks_le q (n + 2) (hV (Finset.univ.erase j))) (n + 1) c' xf ω' e3
  have hsum := rep_add' (n + 2) n V c.t _ _ _ _
    (rep_sum (n + 2) n V c.t (rep_zero_xdt hLG hPT hGA q n (n + 2) (by omega) V c) Finset.univ x _ hxr) hηr
  rw [← e4] at hsum
  refine ⟨x, η, hx, hη, ?_⟩
  rcases hd with hd | hd
  · exact Or.inl ((GlobalTheory.CompanionTheory.ConeTopChart.top_chart hLG hPT hGA q n (n + 2) (by omega) V c _).unique hd hsum)
  · exact Or.inr ((GlobalTheory.CompanionTheory.ConeTopChart.top_chart hLG hPT hGA q n (n + 2) (by omega) V c _).unique hd hsum)

end GlobalTheory.CompanionTheory.ConeTransfer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProjectiveChartAffineCoords =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ConeTransfer =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ConeTransfer", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ConeSite\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.CechDefs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProjectiveChartAffineCoords\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ConeTransfer =====
