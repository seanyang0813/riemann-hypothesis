module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.GrSplit
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullUnitClass
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InclRedM
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResKOne, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.ReductionChangeLevel

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResKOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResKOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.GrSplit\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullUnitClass\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.SiteCup

variable {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))

theorem resK_cup (Q : ObjectProperty (Thick (smFun X q))) {i j k : ℕ} (h : i + j = k) (x : HdR q i) (y : HdR q j) :
    resK q Q k (cupK q h x y) = (CH.mulP (sP Q).A).cup h (resK q Q i x) (resK q Q j y) :=
  CrystallineSemistableComparison.P.cup_pull (CH.mulP (thA (smFun X q))) (CH.mulP (sP Q).A) Q.ι
    (CH.Mor.restrict (CH.modF (thA (smFun X q))) Q.ι).τ (CH.Mor.restrict (CH.modF (thA (smFun X q))) Q.ι).τ
    (CH.Mor.restrict (CH.modF (thA (smFun X q))) Q.ι).τ (CH.Mor.restrict (CH.modF (thA (smFun X q))) Q.ι).nat
    (CH.Mor.restrict (CH.modF (thA (smFun X q))) Q.ι).nat (CH.Mor.restrict (CH.modF (thA (smFun X q))) Q.ι).nat
    (fun _ _ _ => rfl) h x y

theorem resK_one (Q : ObjectProperty (Thick (smFun X q))) : resK q Q 0 (oneK q) = CH.oneH (sP Q).A :=
  pull_unit_class (thA (smFun X q)) (sP Q).A (CH.Mor.restrict (CH.modF (thA (smFun X q))) Q.ι) fun _ => rfl

theorem muB_cup : ∀ {K B' : Type} [CommRing K] [CommRing B'] [Algebra K B'] {I : Ideal B'} (γ : DividedPowers I) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of K)) (l s : ℕ) (𝒱 : Set X.Opens), (∀ {i j k : ℕ} (h : i + j = k) (x : HdR q i) (y : HdR q j),
      muB γ q l s 𝒱 k (cupK q h x y) = (CH.mulP (sP (TS γ q l s 𝒱)).A).cup h (muB γ q l s 𝒱 i x) (muB γ q l s 𝒱 j y)) ∧
    muB γ q l s 𝒱 0 (oneK q) = CH.oneH (sP (TS γ q l s 𝒱)).A := by
  intro K B' _ _ _ I γ X q l s 𝒱
  refine ⟨fun {i j k} h x y => ?_, ?_⟩
  · change (smO γ q l s 𝒱).o.pull k (resK q (TO q l s 𝒱) k (cupK q h x y)) =
      (CH.mulP (sP (TS γ q l s 𝒱)).A).cup h ((smO γ q l s 𝒱).o.pull i (resK q (TO q l s 𝒱) i x))
        ((smO γ q l s 𝒱).o.pull j (resK q (TO q l s 𝒱) j y))
    rw [resK_cup]
    exact (smor_cup (smO γ q l s 𝒱)).1 h _ _
  · change (smO γ q l s 𝒱).o.pull 0 (resK q (TO q l s 𝒱) 0 (oneK q)) = _
    rw [resK_one]
    exact (smor_cup (smO γ q l s 𝒱)).2

end GlobalTheory.CompanionTheory.SiteCup
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResKOne =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.ReductionChangeLevel =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.ReductionChangeLevel", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InclRedM\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResKOne\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem ts_le : ∀ {O A : Type} [CommRing O] [CommRing A] [Algebra O A] {I : Ideal A} (γ : DividedPowers I) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) (l : ℕ) {s s' : ℕ} (h : s ≤ s') (𝒱 : Set X.Opens), TS γ q l s 𝒱 ≤ TS γ q l s' 𝒱 := by
  intro O A _ _ _ I γ X q l s s' h 𝒱 T hT
  exact ⟨⟨le_bot_iff.1 ((T.pdPow_anti h).trans hT.1.1.le), hT.1.2⟩, hT.2⟩

theorem incl_redM : ∀ {b : Base} {L : b.Fun} {Q Q' : ObjectProperty (Thick L)} (h : Q' ≤ Q) (r : Option ℤ) (c : b.R) (j : ℕ) (z : HO Q j),
    ((incl h).sq (a := IdF.top _) (a' := IdF.top _) (fun _ _ _ => trivial) (incl_std h r c)).pull j (redM Q r c j z) =
      redM Q' r c j ((incl h).o.pull j z) := @GlobalTheory.CompanionTheory.RedPull.incl_redM

theorem nm_muB : ∀ {K B₁ B₂ : Type} [CommRing K] [CommRing B₁] [CommRing B₂] [Algebra K B₁] [Algebra K B₂] {I₁ : Ideal B₁} {I₂ : Ideal B₂}
    {γ₁ : DividedPowers I₁} {γ₂ : DividedPowers I₂} {X₁ X₂ : Scheme.{0}} {q₁ : X₁ ⟶ Spec (CommRingCat.of K)}
    {q₂ : X₂ ⟶ Spec (CommRingCat.of K)} {σ : B₁ →+* B₂} (nm : NMor γ₁ q₁ (κA K I₁) γ₂ q₂ (κA K I₂) σ) (hu : nm.u ≫ q₁ = q₂) (l s : ℕ),
    (∀ k, σ (algebraMap K B₁ k) = algebraMap K B₂ k) → ∀ (j : ℕ) (x : HdR q₁ j),
    nmHO nm l s j (muB γ₁ q₁ l s {⊤} j x) = muB γ₂ q₂ l s {⊤} j (pullR (n := j) nm.u hu x) := by
  intro K B₁ B₂ _ _ _ _ _ I₁ I₂ γ₁ γ₂ X₁ X₂ q₁ q₂ σ nm hu l s hσ j x
  have hNat :
      nmHO nm l s j (muB γ₁ q₁ l s {⊤} j x) = muB γ₂ q₂ l s {⊤} j (pullR (n := j) nm.u hu x) := by
    let t1 : RingHomCompTriple (algebraMap K B₁) σ (algebraMap K B₂) := ⟨RingHom.ext hσ⟩
    let r₁ := CH.Mor.restrict (O (smFun X₁ q₁)) (TO q₁ l s {⊤}).ι
    let r₂ := CH.Mor.restrict (O (smFun X₂ q₂)) (TO q₂ l s {⊤}).ι
    let a₁ := (smO γ₁ q₁ l s {⊤}).o
    let a₂ := (smO γ₂ q₂ l s {⊤}).o
    let n := (nmS nm l s).o
    let MS : CH.Mor (O (smFun X₁ q₁)) (O (smFun X₂ q₂)) (RingHom.id K) := CH.Mor.ofBlk
      { G := (smMor nm.u hu).functor
        τ := fun _ => { toFun := fun z => z, map_add' := fun _ _ => rfl, map_smul' := fun _ _ => rfl }
        nat := fun _ _ => rfl }
    let L1 : CH.Mor _ _ (algebraMap K B₁) := r₁.comp a₁
    let ML : CH.Mor _ _ (algebraMap K B₂) := L1.comp n
    let R1 : CH.Mor _ _ (RingHom.id K) := MS.comp r₂
    let MR : CH.Mor _ _ (algebraMap K B₂) := R1.comp a₂
    have hL1 := (CrystallineSemistableComparison.P.pull_comp (σ'' := algebraMap K B₁) r₁ a₁ j x).1
    have hL2 := (CrystallineSemistableComparison.P.pull_comp (σ'' := algebraMap K B₂) L1 n j x).1
    have hR1 := (CrystallineSemistableComparison.P.pull_comp (σ'' := RingHom.id K) MS r₂ j x).1
    have hR2 := (CrystallineSemistableComparison.P.pull_comp (σ'' := algebraMap K B₂) R1 a₂ j x).1
    let η : ML.G ⟶ MR.G :=
      { app := fun T => mkH (γ := dividedPowersBot K) (p := 0) (q := q₁) (κ := Ideal.Quotient.mk ⊥)
          (T := ML.G.obj T) (T' := MR.G.obj T) (RingHom.id T.obj.B)
          (fun r => congrArg T.obj.i (hσ r)) ⟨le_of_eq (Ideal.map_id _), fun x hx => rfl⟩ (fun x hx => hx) (by
            refine Subtype.ext (Prod.ext ?_ ?_)
            · refine Ideal.Quotient.ringHom_ext (RingHom.ext fun r => ?_)
              have hw1 := (ML.G.obj T).w r
              have hw2 := (MR.G.obj T).w r
              have h3 : Ideal.Quotient.mk T.obj.J ((ML.G.obj T).i r) = Ideal.Quotient.mk T.obj.J ((MR.G.obj T).i r) :=
                congrArg (Ideal.Quotient.mk T.obj.J) (congrArg T.obj.i (hσ r))
              exact (congrArg (Ideal.quotientMap T.obj.J (RingHom.id T.obj.B) (fun x hx => hx)) hw1).trans (h3.trans hw2.symm)
            · have e : CommRingCat.ofHom (Ideal.quotientMap T.obj.J (RingHom.id T.obj.B) (fun x hx => hx)) =
                  𝟙 (CommRingCat.of (T.obj.B ⧸ T.obj.J)) :=
                CommRingCat.hom_ext (Ideal.Quotient.ringHom_ext (RingHom.ext fun _ => rfl))
              have e2 : Spec.map (CommRingCat.ofHom (Ideal.quotientMap T.obj.J (RingHom.id T.obj.B) (fun x hx => hx))) =
                  𝟙 (Spec (CommRingCat.of (T.obj.B ⧸ T.obj.J))) := (congrArg Spec.map e).trans (Spec.map_id _)
              change Spec.map (CommRingCat.ofHom (Ideal.quotientMap T.obj.J (RingHom.id T.obj.B) (fun x hx => hx))) ≫
                  ((T.obj.y.1.2 ≫ nm.u) ≫ 𝟙 X₁) = (T.obj.y.1.2 ≫ 𝟙 X₂) ≫ nm.u
              rw [e2, Category.id_comp, Category.comp_id, Category.comp_id])
        naturality := fun T T' f => hom_ext (γ := dividedPowersBot K) (p := 0) (q := q₁) (κ := Ideal.Quotient.mk ⊥)
          (RingHom.ext fun _ => rfl) }
    have h4 := CrystallineSemistableComparison.P.prism ML MR η (fun T y => rfl) j x
    exact (congrArg (n.pull j) hL1.symm).trans (hL2.symm.trans (h4.trans (hR2.trans (congrArg (a₂.pull j) hR1))))
  exact hNat

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.ReductionChangeLevel =====
