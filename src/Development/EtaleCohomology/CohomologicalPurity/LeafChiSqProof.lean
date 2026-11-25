module

public import Development.EtaleCohomology.CohomologicalPurity.LeafExcLevelPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafExcIdentPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafExcFormalPf
import Mathlib.CategoryTheory.Limits.Types.Pushouts
import Mathlib.CategoryTheory.Presentable.Type
import Mathlib.Tactic.Linter.Style
import Development.EtaleCohomology.CohomologicalPurity.LeafChPushPf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPf, Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPfSq, Development.EtaleCohomology.CohomologicalPurity.LeafChiSqProof

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcLevelPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Types.Pushouts\nimport Mathlib.CategoryTheory.Presentable.Type\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.TubeCut

@[reassoc] theorem dinl_map {A B : Arrow Spc} (ψ : A ⟶ B) : dbl.inl A ≫ dbl.map ψ = ψ.right ≫ dbl.inl B :=
  pushout.inl_desc (f := A.hom) (g := A.hom) _ _ _

variable {P' P : Arrow Spc} (φ : P' ⟶ P)

def ii : P'.right ⟶ MM φ := pushout.inl P'.hom (P'.hom ≫ φ.right)
def jj : P.right ⟶ MM φ := pushout.inr P'.hom (P'.hom ≫ φ.right)
theorem ij_cond : P'.hom ≫ ii φ = (P'.hom ≫ φ.right) ≫ jj φ :=
  pushout.condition (f := P'.hom) (g := P'.hom ≫ φ.right)

def rr : MM φ ⟶ P.right :=
  pushout.desc (f := P'.hom) (g := P'.hom ≫ φ.right) φ.right (𝟙 _) (by simp)

def QQ : Arrow Spc := Arrow.mk (jj φ)

def chi : P' ⟶ QQ φ := Arrow.homMk (P'.hom ≫ φ.right) (ii φ) (ij_cond φ).symm

def sig : dbl (QQ φ) ⟶ MM φ :=
  pushout.desc (f := jj φ) (g := jj φ) (𝟙 _) (rr φ ≫ jj φ) (by
    have h : jj φ ≫ rr φ = 𝟙 _ :=
      pushout.inr_desc (f := P'.hom) (g := P'.hom ≫ φ.right) _ _ _
    rw [← Category.assoc, h, Category.id_comp, Category.comp_id])

theorem inr_sig_gM : dbl.inr (QQ φ) ≫ sig φ ≫ gM φ = rr φ ≫ dbl.inr P := by
  have hs : dbl.inr (QQ φ) ≫ sig φ = rr φ ≫ jj φ :=
    pushout.inr_desc (f := jj φ) (g := jj φ) _ _ _
  have hg : jj φ ≫ gM φ = dbl.inr P :=
    pushout.inr_desc (f := P'.hom) (g := P'.hom ≫ φ.right) _ _ _
  rw [← Category.assoc, hs]
  change (rr φ ≫ jj φ) ≫ gM φ = rr φ ≫ dbl.inr P
  rw [Category.assoc, hg]

theorem hgM : dbl.map (chi φ) ≫ sig φ ≫ gM φ = dbl.map φ := by
  have hs : dbl.inl (QQ φ) ≫ sig φ = 𝟙 _ :=
    pushout.inl_desc (f := jj φ) (g := jj φ) _ _ _
  have hg : ii φ ≫ gM φ = φ.right ≫ dbl.inl P :=
    pushout.inl_desc (f := P'.hom) (g := P'.hom ≫ φ.right) _ _ _
  have hr : ii φ ≫ rr φ = φ.right :=
    pushout.inl_desc (f := P'.hom) (g := P'.hom ≫ φ.right) _ _ _
  apply pushout.hom_ext
  · show dbl.inl P' ≫ _ = dbl.inl P' ≫ _
    rw [dinl_map_assoc, dinl_map, ← Category.assoc (dbl.inl (QQ φ)), hs]
    change ii φ ≫ 𝟙 (MM φ) ≫ gM φ = _
    rw [Category.id_comp]
    exact hg
  · show dbl.inr P' ≫ _ = dbl.inr P' ≫ _
    rw [← Category.assoc, dbl.inr_map, Category.assoc, dbl.inr_map, inr_sig_gM]
    change ii φ ≫ rr φ ≫ dbl.inr P = _
    rw [← Category.assoc, hr]

end LateralTheory.CohomologicalPurity.TubeCut

namespace LateralTheory.CohomologicalPurity.TubeCut
variable {P' P : Arrow Spc} (φ : P' ⟶ P)
theorem jj_inl : jj φ ≫ dbl.inl (QQ φ) = jj φ ≫ dbl.inr (QQ φ) :=
  pushout.condition (f := jj φ) (g := jj φ)

def LeafFix : Prop := ∀ (q : ℕ) (n i : ℤ) {P' P : Arrow Spc} (φ : P' ⟶ P) (z : Ht q (dbl (QQ φ)) n i),
  z ∈ Hs q (QQ φ) n i → pull _ (sig φ ≫ dbl.inl (QQ φ)) (tw q i) n z = z

def LeafChiExc : Prop := ∀ (q : ℕ) {P' P : Arrow Spc} (φ : P' ⟶ P), Exc q (chi φ)

theorem pull_sig_inl (q : ℕ) (n i : ℤ) (z : Ht q (dbl (QQ φ)) n i) :
    pull _ (sig φ) (tw q i) n (pull _ (dbl.inl (QQ φ)) (tw q i) n z) = pull _ (sig φ ≫ dbl.inl (QQ φ)) (tw q i) n z :=
  (pull_comp _ (sig φ) (dbl.inl (QQ φ)) _ n z).symm

theorem pull_jj_inl (q : ℕ) (n i : ℤ) (z : Ht q (dbl (QQ φ)) n i) (hz : z ∈ Hs q (QQ φ) n i) :
    pull _ (jj φ) (tw q i) n (pull _ (dbl.inl (QQ φ)) (tw q i) n z) = 0 := by
  have hzz : pull _ (dbl.inr (QQ φ)) (tw q i) n z = 0 := hz
  exact (pull_comp _ (jj φ) (dbl.inl (QQ φ)) _ n z).symm.trans
    ((congrArg (fun f => pull _ f (tw q i) n z) (jj_inl φ)).trans
      ((pull_comp _ (jj φ) (dbl.inr (QQ φ)) _ n z).trans ((congrArg (pull _ (jj φ) (tw q i) n) hzz).trans (map_zero _))))

theorem LeafExcOfEqv_of (hF : LeafFix) (hX : LeafChiExc) : LeafExcOfEqv := by
  intro q P' P φ hE n i
  have jj_gM : jj φ ≫ gM φ = dbl.inr P :=
    pushout.inr_desc (f := P'.hom) (g := P'.hom ≫ φ.right) _ _ _
  have inr_sig : dbl.inr (QQ φ) ≫ sig φ = rr φ ≫ jj φ :=
    pushout.inr_desc (f := jj φ) (g := jj φ) _ _ _
  have inl_sig : dbl.inl (QQ φ) ≫ sig φ = 𝟙 _ :=
    pushout.inl_desc (f := jj φ) (g := jj φ) _ _ _
  have hB : Function.Bijective (pull _ (gM φ) (tw q i) n) := hE i n
  have hC := hX q φ n i
  constructor
  · rw [injective_iff_map_eq_zero]
    intro w hw
    have hw' : pull _ (dbl.map φ) (tw q i) n w.1 = 0 := congrArg Subtype.val hw
    have hj : pull _ (jj φ) (tw q i) n (pull _ (gM φ) (tw q i) n w.1) = 0 := by
      rw [← pull_comp, jj_gM]; exact w.2
    have hz : pull _ (sig φ) (tw q i) n (pull _ (gM φ) (tw q i) n w.1) ∈ Hs q (QQ φ) n i := by
      change pull _ (dbl.inr (QQ φ)) _ n (pull _ (sig φ) _ n _) = 0
      exact (pull_comp _ (dbl.inr (QQ φ)) (sig φ) _ n _).symm.trans
        ((congrArg (fun f => pull _ f (tw q i) n (pull _ (gM φ) (tw q i) n w.1)) inr_sig).trans
          ((pull_comp _ (rr φ) (jj φ) _ n _).trans ((congrArg (pull _ (rr φ) (tw q i) n) hj).trans (map_zero _))))
    have h0 : Hs.pull q (chi φ) n i ⟨_, hz⟩ = Hs.pull q (chi φ) n i 0 := by
      rw [map_zero]
      apply Subtype.ext
      change pull _ (dbl.map (chi φ)) _ n (pull _ (sig φ) _ n (pull _ (gM φ) _ n w.1)) = 0
      rw [← pull_comp, ← pull_comp, Category.assoc, hgM]; exact hw'
    have h1 := congrArg Subtype.val (hC.1 h0)
    change pull _ (sig φ) _ n (pull _ (gM φ) _ n w.1) = 0 at h1
    have h2 : pull _ (gM φ) (tw q i) n w.1 = 0 := by
      have e := congrArg (pull _ (dbl.inl (QQ φ)) (tw q i) n) h1
      have e2 : pull _ (dbl.inl (QQ φ)) (tw q i) n (pull _ (sig φ) (tw q i) n (pull _ (gM φ) (tw q i) n w.1)) =
          pull _ (gM φ) (tw q i) n w.1 :=
        (pull_comp _ (dbl.inl (QQ φ)) (sig φ) _ n _).symm.trans
          ((congrArg (fun f => pull _ f (tw q i) n (pull _ (gM φ) (tw q i) n w.1)) inl_sig).trans (pull_id _ _ _ n _))
      rw [e2, map_zero] at e
      exact e
    apply Subtype.ext
    exact hB.1 (h2.trans (map_zero _).symm)
  · intro z'
    obtain ⟨z, hz⟩ := hC.2 z'
    obtain ⟨y', hy'⟩ := hB.2 (pull _ (dbl.inl (QQ φ)) (tw q i) n z.1)
    have hm : y' ∈ Hs q P n i := by
      change pull _ (dbl.inr P) _ n y' = 0
      rw [← jj_gM, pull_comp, hy']
      exact pull_jj_inl φ q n i z.1 z.2
    refine ⟨⟨y', hm⟩, ?_⟩
    rw [← hz]
    apply Subtype.ext
    change pull _ (dbl.map φ) _ n y' = pull _ (dbl.map (chi φ)) _ n z.1
    rw [← hgM, pull_comp, pull_comp, hy', pull_sig_inl, hF q n i φ z.1 z.2]

end LateralTheory.CohomologicalPurity.TubeCut
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPfSq =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPfSq", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafChPushPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcIdentPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcFormalPf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.TubeCut
variable {P' P : Arrow Spc} (φ : P' ⟶ P)

private theorem inl_sig : dbl.inl (QQ φ) ≫ sig φ = 𝟙 _ :=
  pushout.inl_desc (f := jj φ) (g := jj φ) _ _ _

private theorem inr_sig : dbl.inr (QQ φ) ≫ sig φ = rr φ ≫ jj φ :=
  pushout.inr_desc (f := jj φ) (g := jj φ) _ _ _

theorem etale_double_inl_sigma_inl_eq_inl : dbl.inl (QQ φ) ≫ sig φ ≫ dbl.inl (QQ φ) = dbl.inl (QQ φ) :=
  (Category.assoc _ _ _).symm.trans ((congrArg (· ≫ dbl.inl (QQ φ)) (inl_sig φ)).trans (Category.id_comp _))

theorem etale_double_inr_sigma_inl_eq_retraction_jj_inr : dbl.inr (QQ φ) ≫ sig φ ≫ dbl.inl (QQ φ) = (rr φ ≫ jj φ) ≫ dbl.inr (QQ φ) :=
  (Category.assoc _ _ _).symm.trans ((congrArg (· ≫ dbl.inl (QQ φ)) (inr_sig φ)).trans
    ((Category.assoc (rr φ) (jj φ) (dbl.inl (QQ φ))).trans ((congrArg (rr φ ≫ ·) (jj_inl φ)).trans
      (Category.assoc (rr φ) (jj φ) (dbl.inr (QQ φ))).symm)))

theorem fix_key (q : ℕ) :
    (chains (ZMod q)).map (sig φ ≫ dbl.inl (QQ φ)) ≫ cokernel.π ((chains (ZMod q)).map (dbl.inr (QQ φ))) =
      cokernel.π ((chains (ZMod q)).map (dbl.inr (QQ φ))) := by
  have h := (chains (ZMod q)).map_isPushout (IsPushout.of_hasPushout (QQ φ).hom (QQ φ).hom)
  apply h.hom_ext
  · exact (Category.assoc _ _ _).symm.trans ((congrArg (· ≫ cokernel.π ((chains (ZMod q)).map (dbl.inr (QQ φ))))
      ((chains (ZMod q)).map_comp (dbl.inl (QQ φ)) (sig φ ≫ dbl.inl (QQ φ))).symm).trans
      (congrArg (fun f => (chains (ZMod q)).map f ≫ cokernel.π ((chains (ZMod q)).map (dbl.inr (QQ φ)))) (etale_double_inl_sigma_inl_eq_inl φ)))
  · have c0 : (chains (ZMod q)).map (dbl.inr (QQ φ)) ≫ cokernel.π ((chains (ZMod q)).map (dbl.inr (QQ φ))) = 0 :=
      cokernel.condition _
    exact (Category.assoc _ _ _).symm.trans ((congrArg (· ≫ cokernel.π ((chains (ZMod q)).map (dbl.inr (QQ φ))))
      ((chains (ZMod q)).map_comp (dbl.inr (QQ φ)) (sig φ ≫ dbl.inl (QQ φ))).symm).trans
      ((congrArg (fun f => (chains (ZMod q)).map f ≫ cokernel.π ((chains (ZMod q)).map (dbl.inr (QQ φ)))) (etale_double_inr_sigma_inl_eq_retraction_jj_inr φ)).trans
      ((congrArg (· ≫ cokernel.π ((chains (ZMod q)).map (dbl.inr (QQ φ)))) ((chains (ZMod q)).map_comp (rr φ ≫ jj φ) (dbl.inr (QQ φ)))).trans
      ((Category.assoc _ _ _).trans ((congrArg ((chains (ZMod q)).map (rr φ ≫ jj φ) ≫ ·) c0).trans
      (Limits.comp_zero.trans c0.symm))))))

theorem LeafFix_of : LeafFix := by
  intro q n i P' P φ z hz
  have hr := (LateralTheory.CohomologicalPurity.eEquiv q n i (QQ φ)).right_inv ⟨z, hz⟩
  have hz1 : HK.pull (ZMod q) (cokernel.π ((chains (ZMod q)).map (dbl.inr (QQ φ)))) (tw q i) n
      (HK.pull (ZMod q) (LateralTheory.CohomologicalPurity.secC q (QQ φ)) (tw q i) n z) = z := congrArg Subtype.val hr
  change HK.pull (ZMod q) ((chains (ZMod q)).map (sig φ ≫ dbl.inl (QQ φ))) (tw q i) n z = z
  conv_lhs => rw [← hz1]
  rw [← LateralTheory.CohomologicalPurity.HK.pull_comp', fix_key, hz1]

end LateralTheory.CohomologicalPurity.TubeCut

namespace LateralTheory.CohomologicalPurity.TubeCut

def LeafChiSq : Prop := ∀ {P' P : Arrow Spc} (φ : P' ⟶ P),
  IsPushout (dbl.inr P') (chi φ).right (dbl.map (chi φ)) (dbl.inr (QQ φ))

def LeafCokPush : Prop := ∀ (q : ℕ) {A B C D : Cx (ZMod q)} (f : A ⟶ B) (g : A ⟶ C) (a : B ⟶ D) (b : C ⟶ D)
  (h : IsPushout f g a b), IsIso (cokernel.map f b g a h.w.symm)

theorem LeafCokPush_of : LeafCokPush := by
  intro q A B C D f g a b h
  refine ⟨⟨cokernel.desc b (h.desc (cokernel.π f) 0 (by simp)) (by simp), ?_, ?_⟩⟩
  · refine coequalizer.hom_ext ?_
    simp
  · refine coequalizer.hom_ext ?_
    simp only [cokernel.π_desc_assoc, Category.comp_id]
    apply h.hom_ext <;> simp

theorem LeafChiExc_of (hS : LeafChiSq) : LeafChiExc := by
  intro q P' P φ
  exact LateralTheory.CohomologicalPurity.LeafExcCx_of LateralTheory.CohomologicalPurity.EtaleExcIdent q (chi φ)
    (LeafCokPush_of q _ _ _ _ ((chains (ZMod q)).map_isPushout (hS φ)))

theorem LeafExcOfEqv_of_sq (hS : LeafChiSq) : LeafExcOfEqv := LeafExcOfEqv_of LeafFix_of (LeafChiExc_of hS)

end LateralTheory.CohomologicalPurity.TubeCut
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPfSq =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafChiSqProof =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafChiSqProof", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcOfEqvPfSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Limits.Types.Pushouts\nimport Mathlib.CategoryTheory.Presentable.Type\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.TubeCut

theorem dblPO (A : Arrow Spc) : IsPushout A.hom A.hom (dbl.inl A) (dbl.inr A) :=
  IsPushout.of_hasPushout A.hom A.hom

theorem mmPO {P' P : Arrow Spc} (φ : P' ⟶ P) : IsPushout P'.hom (P'.hom ≫ φ.right) (ii φ) (jj φ) :=
  IsPushout.of_hasPushout P'.hom (P'.hom ≫ φ.right)

theorem LeafChiSq_of : LeafChiSq := by
  intro P' P φ
  have s2 : IsPushout ((P'.hom ≫ φ.right) ≫ jj φ) P'.hom (dbl.inr (QQ φ)) (ii φ ≫ dbl.inl (QQ φ)) :=
    IsPushout.paste_horiz (mmPO φ).flip (dblPO (QQ φ)).flip
  have c : IsPushout P'.hom (P'.hom ≫ (chi φ).right) (dbl.inl P' ≫ dbl.map (chi φ)) (dbl.inr (QQ φ)) := by
    have e1 : P'.hom ≫ (chi φ).right = (P'.hom ≫ φ.right) ≫ jj φ := ij_cond φ
    have e2 : dbl.inl P' ≫ dbl.map (chi φ) = ii φ ≫ dbl.inl (QQ φ) := dinl_map (chi φ)
    rw [e1, e2]; exact s2.flip
  exact IsPushout.of_top c (dbl.inr_map (chi φ)) (dblPO P')
end LateralTheory.CohomologicalPurity.TubeCut
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafChiSqProof =====
