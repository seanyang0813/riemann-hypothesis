module

public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.PushComparisonBijectiveOfIsClosedEmbedding
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechToDerived
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CechDifferentialPullback.PullCochMemCoboundaries
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechShortExactPullCompatStatement
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafPullConnectingCompat
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CechDifferentialPullback.PfOmega
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.HdimEqZeroOfSubsingleton
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.InstAddCommGroup
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC
import GroundTheory.ArithmeticGeometry.SchemeCohomology.ConsCompSuccAboveZero
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SurjectiveOfLocallySurjective

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveResolutionLiftPushforward, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.CechHStepPull, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.ZeroOne, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.LerayClean, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.PfPullC

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveResolutionLiftPushforward =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveResolutionLiftPushforward", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.PushComparisonBijectiveOfIsClosedEmbedding\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechToDerived\nimport Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.HdimEqZeroOfSubsingleton\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.InstAddCommGroup\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CechDifferentialPullback.PullCochMemCoboundaries\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\nimport GroundTheory.ArithmeticGeometry.SchemeCohomology.ConsCompSuccAboveZero\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TopologicalSpace Opposite Limits GroundTheory.Arith.SchemeCoh GlobalTheory.SheafPull CrystallineSemistableComparison CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Cech

namespace GlobalTheory.CompanionTheory.CechLift

theorem exists_injectiveSequence_lift {X Y : TopCat.{0}} (f : X ⟶ Y) {G : AbSheaf Y} {G' : AbSheaf X}
    (φ : G ⟶ (push f).obj G') :
    ∃ α : injectiveSequence G ⟶ (injectiveSequence G').map (push f), α.τ₁ = φ := by
  have hS := injectiveSequence_shortExact G
  have : Mono (injectiveSequence G).f := hS.mono_f
  have : Injective ((push f).obj (injectiveSequence G').X₂) := injective_push f _
  let τ₂ : (injectiveSequence G).X₂ ⟶ (push f).obj (injectiveSequence G').X₂ :=
    Injective.factorThru (φ ≫ (push f).map (injectiveSequence G').f) (injectiveSequence G).f
  have h₁ : (injectiveSequence G).f ≫ τ₂ = φ ≫ (push f).map (injectiveSequence G').f :=
    Injective.comp_factorThru _ _
  have h₀ : (injectiveSequence G).f ≫ τ₂ ≫ (push f).map (injectiveSequence G').g = 0 := by
    rw [← Category.assoc, h₁, Category.assoc, ← Functor.map_comp, (injectiveSequence G').zero,
      Functor.map_zero, comp_zero]
  let τ₃ := hS.gIsCokernel.desc (CokernelCofork.ofπ _ h₀)
  have h₃ : (injectiveSequence G).g ≫ τ₃ = τ₂ ≫ (push f).map (injectiveSequence G').g :=
    Cofork.IsColimit.π_desc hS.gIsCokernel
  exact ⟨{ τ₁ := φ, τ₂ := τ₂, τ₃ := τ₃, comm₁₂ := h₁.symm, comm₂₃ := h₃.symm }, rfl⟩

end GlobalTheory.CompanionTheory.CechLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveResolutionLiftPushforward =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.CechHStepPull =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.CechHStepPull", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CechDifferentialPullback.PullCochMemCoboundaries\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechShortExactPullCompatStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafPullConnectingCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Opposite Limits

namespace CrystallineSemistableComparison.Om.Nt2

open GroundTheory.Arith.SchemeCoh GlobalTheory.SheafPull CrystallineSemistableComparison.Om.Cech

private theorem step_naturality {A B A' B' C D C' D' : Type}
    (δ : A ≃ B) (δ' : A' ≃ B') (e : A → C) (e' : A' → C')
    (d : C → D) (d' : C' → D') (p : A → A') (q : B → B')
    (r : C → C') (s : D → D')
    (hδ : ∀ y, q (δ y) = δ' (p y)) (he : ∀ y, e' (p y) = r (e y))
    (hd : ∀ z, s (d z) = d' (r z)) (x : B) :
    d' (e' (δ'.symm (q x))) = s (d (e (δ.symm x))) := by
  obtain ⟨y, rfl⟩ := δ.surjective x
  rw [δ.symm_apply_apply, hδ, δ'.symm_apply_apply, he, hd]

theorem cechHStep_pull' : ∀ {X Y : TopCat.{0}} (f : X ⟶ Y) {κ ι : Type} (V : κ → Opens Y) (U : ι → Opens X) (τ : ι → κ)
    (hτ : ∀ i, U i ≤ (Opens.map f).obj (V (τ i))) {S : ShortComplex (AbSheaf Y)} {S' : ShortComplex (AbSheaf X)}
    (hS : S.ShortExact) [Injective S.X₂] (hC : IsCechShortExact V S.f.hom S.g.hom) (hI : CechAcyclic S.X₂.obj V)
    (hS' : S'.ShortExact) [Injective S'.X₂] (hC' : IsCechShortExact U S'.f.hom S'.g.hom) (hI' : CechAcyclic S'.X₂.obj U)
    (α : S ⟶ S'.map (push f)) (m : ℕ) (e : cechH S.X₃.obj V (m + 1) ≃+ Sheaf.H.{0} S.X₃ (m + 1))
    (e' : cechH S'.X₃.obj U (m + 1) ≃+ Sheaf.H.{0} S'.X₃ (m + 1))
    (he : ∀ y, e' (cechPullH f α.τ₃.hom V U τ hτ (m + 1) y) = hPull f α.τ₃ (m + 1) (e y))
    (x : cechH S.X₁.obj V (m + 2)),
    cechHEquivStep U hS' hC' hI' m e' (cechPullH f α.τ₁.hom V U τ hτ (m + 2) x) =
      hPull f α.τ₁ (m + 2) (cechHEquivStep V hS hC hI m e x) := by
  intro X Y f κ ι V U τ hτ S S' hS _ hC hI hS' _ hC' hI' α m e e' he x
  have h₁₂ : ∀ (W : (Opens Y)ᵒᵖ) (z : S.X₁.obj.obj W),
      α.τ₂.hom.app W (S.f.hom.app W z) =
        S'.f.hom.app ((Opens.map f).op.obj W) (α.τ₁.hom.app W z) :=
    fun W z => congrArg (fun g : S.X₁ ⟶ (S'.map (push f)).X₂ => g.hom.app W z) α.comm₁₂.symm
  have h₂₃ : ∀ (W : (Opens Y)ᵒᵖ) (z : S.X₂.obj.obj W),
      α.τ₃.hom.app W (S.g.hom.app W z) =
        S'.g.hom.app ((Opens.map f).op.obj W) (α.τ₂.hom.app W z) :=
    fun W z => congrArg (fun g : S.X₂ ⟶ (S'.map (push f)).X₃ => g.hom.app W z) α.comm₂₃.symm
  let δ := hC.deltaEquiv hI m
  let δ' := hC'.deltaEquiv hI' m
  let p := cechPullH f α.τ₃.hom V U τ hτ (m + 1)
  let q := cechPullH f α.τ₁.hom V U τ hτ (m + 2)
  have hδ (y : cechH S.X₃.obj V (m + 1)) : q (δ y) = δ' (p y) := by
    refine QuotientAddGroup.induction_on y fun σ => ?_
    exact GlobalTheory.CompanionTheory.OmCechDelta.cechPullH_delta f V U τ hτ
      (F := S.X₁.obj) (I := S.X₂.obj) (Q := S.X₃.obj)
      (F' := S'.X₁.obj) (I' := S'.X₂.obj) (Q' := S'.X₃.obj)
      hC hC' α.τ₁.hom α.τ₂.hom α.τ₃.hom h₁₂ h₂₃ (m + 1) σ
  exact step_naturality δ.toEquiv δ'.toEquiv e e'
    (H.δ hS (m + 1) (m + 2) rfl) (H.δ hS' (m + 1) (m + 2) rfl)
    p q (hPull f α.τ₃ (m + 1)) (hPull f α.τ₁ (m + 2))
    hδ he (_root_.GlobalTheory.CompanionTheory.CechDelta.hPull_δ f hS hS' α (m + 1)) x

end CrystallineSemistableComparison.Om.Nt2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.CechHStepPull =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.ZeroOne =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.ZeroOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CechDifferentialPullback.PullCochMemCoboundaries\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechShortExactPullCompatStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafPullConnectingCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Opposite Limits

namespace CrystallineSemistableComparison.Om.Nt2

open GroundTheory.Arith.SchemeCoh GlobalTheory.SheafPull CrystallineSemistableComparison.Om.Cech

theorem top_le_map {X Y : TopCat.{0}} (f : X ⟶ Y) : (⊤ : Opens X) ≤ (Opens.map f).obj ⊤ := le_top

theorem zeroEquiv_eq_equivZero {X : TopCat.{0}} (F : AbSheaf X) (W : Opens X) (x : Sheaf.H'.{0} F 0 W) :
    GlobalTheory.SiteCoh.zeroEquiv F W x = GlobalTheory.SheafLES.equivZero.{0} F W x :=
  rfl

-- Keep the sheafification instances abstract until the final specialization to opens.
private theorem sitePull_zero_terminal {C D : Type} [Category C] [Category D]
    {J : GrothendieckTopology C} {K : GrothendieckTopology D}
    [HasSheafify J AddCommGrpCat.{0}] [HasSheafify K AddCommGrpCat.{0}]
    [HasExt.{0} (Sheaf J AddCommGrpCat.{0})] [HasExt.{0} (Sheaf K AddCommGrpCat.{0})]
    (p : C ⥤ D) [p.IsContinuous J K]
    [PreservesFiniteLimits (p.sheafPullback AddCommGrpCat.{0} J K)]
    {F : Sheaf J AddCommGrpCat.{0}} {G : Sheaf K AddCommGrpCat.{0}}
    (φ : F ⟶ (p.sheafPushforwardContinuous AddCommGrpCat.{0} J K).obj G)
    {V : C} {W : D} (hV : IsTerminal V) (hW : IsTerminal W) (i : W ⟶ p.obj V)
    (s : F.obj.obj (op V)) :
    GlobalTheory.SiteCoh.terminalEquiv G 0 hW
        (sitePull p φ 0 i ((GlobalTheory.SiteCoh.terminalEquiv F 0 hV).symm
          ((Sheaf.H.equiv₀ F hV).symm s))) =
      (Sheaf.H.equiv₀ G hW).symm (G.obj.map i.op (φ.hom.app (op V) s)) := by
  let e := Sheaf.H.equiv₀ F hV
  let e' := Sheaf.H.equiv₀ G hW
  let t := GlobalTheory.SiteCoh.terminalEquiv F 0 hV
  let x := t.symm (e.symm s)
  let y := sitePull p φ 0 i x
  have hx : GlobalTheory.SheafLES.equivZero F V x = s :=
    (GlobalTheory.SiteCoh.equiv₀_terminalEquiv F hV x).symm.trans
      ((congrArg (fun z => e z) (t.apply_symm_apply (e.symm s))).trans (e.apply_symm_apply s))
  apply e'.eq_symm_apply.mpr
  exact (GlobalTheory.SiteCoh.equiv₀_terminalEquiv G hW y).trans
    ((equivZero_sitePull p φ i x).trans (congrArg (fun z => G.obj.map i.op (φ.hom.app (op V) z)) hx))

theorem hPull_zero {X Y : TopCat.{0}} (f : X ⟶ Y) {G : AbSheaf Y} {G' : AbSheaf X} (φ : G ⟶ (push f).obj G')
    (s : G.obj.obj (op ⊤)) :
    hPull f φ 0 ((Sheaf.H.equiv₀ G isTerminalTop).symm s) =
      (Sheaf.H.equiv₀ G' isTerminalTop).symm (GroundTheory.Arith.SchemeCoh.res G'.obj (top_le_map f) (φ.hom.app (op ⊤) s)) := by
  exact sitePull_zero_terminal (Opens.map f) (F := G) (G := G') φ
    isTerminalTop isTerminalTop (homOfLE (top_le_map f)) s

theorem pullCoch_globalCocycle {X Y : TopCat.{0}} (f : X ⟶ Y) {P : (Opens Y)ᵒᵖ ⥤ AddCommGrpCat.{0}}
    {Q : (Opens X)ᵒᵖ ⥤ AddCommGrpCat.{0}} (φ : P ⟶ (Opens.map f).op ⋙ Q) {κ ι : Type} (V : κ → Opens Y)
    (U : ι → Opens X) (τ : ι → κ) (hτ : ∀ i, U i ≤ (Opens.map f).obj (V (τ i))) (s : P.obj (op ⊤)) :
    pullCoch f φ V U τ hτ 0 (globalCocycle P V s).1 =
      (globalCocycle Q U (GroundTheory.Arith.SchemeCoh.res Q (top_le_map f) (φ.app (op ⊤) s))).1 := by
  funext j
  change GroundTheory.Arith.SchemeCoh.res Q _ (φ.app _ (GroundTheory.Arith.SchemeCoh.res P _ s)) =
    GroundTheory.Arith.SchemeCoh.res Q _ (GroundTheory.Arith.SchemeCoh.res Q _ (φ.app (op ⊤) s))
  rw [app_res_map, GroundTheory.Arith.SchemeCoh.res_res, GroundTheory.Arith.SchemeCoh.res_res]

theorem cechHZeroEquiv_mk {X : TopCat.{0}} (P : (Opens X)ᵒᵖ ⥤ AddCommGrpCat.{0}) {ι : Type} (U : ι → Opens X)
    (hP : Presheaf.IsSheaf (Opens.grothendieckTopology X) P) (hU : iSup U = ⊤) (s : P.obj (op ⊤)) :
    cechHZeroEquiv P U hP hU (QuotientAddGroup.mk (globalCocycle P U s)) = s := by
  change (globalCocycleEquiv P U hP hU).symm (globalCocycle P U s) = s
  exact (globalCocycleEquiv P U hP hU).symm_apply_apply s

private theorem pull_eq_of_sections {A A' B B' C C' : Type}
    (q : A → B) (q' : A' → B') (r : A → A') (p : B → B') (p' : C → C')
    (e : B → C) (e' : B' → C') (d : A → C) (d' : A' → C')
    (hq : Function.Surjective q) (hp : ∀ s, p (q s) = q' (r s))
    (he : ∀ s, e (q s) = d s) (he' : ∀ s, e' (q' s) = d' s)
    (hd : ∀ s, p' (d s) = d' (r s)) (x : B) : e' (p x) = p' (e x) := by
  obtain ⟨s, rfl⟩ := hq x
  calc
    e' (p (q s)) = e' (q' (r s)) := congrArg e' (hp s)
    _ = d' (r s) := he' (r s)
    _ = p' (d s) := (hd s).symm
    _ = p' (e (q s)) := congrArg p' (he s).symm

private theorem cechPullH_globalCocycle_mk {X Y : TopCat.{0}} (f : X ⟶ Y)
    {P : (Opens Y)ᵒᵖ ⥤ AddCommGrpCat.{0}} {Q : (Opens X)ᵒᵖ ⥤ AddCommGrpCat.{0}}
    (φ : P ⟶ (Opens.map f).op ⋙ Q) {κ ι : Type} (V : κ → Opens Y) (U : ι → Opens X)
    (τ : ι → κ) (hτ : ∀ i, U i ≤ (Opens.map f).obj (V (τ i))) (s : P.obj (op ⊤)) :
    cechPullH f φ V U τ hτ 0 (QuotientAddGroup.mk (globalCocycle P V s)) =
      QuotientAddGroup.mk (globalCocycle Q U (res Q (top_le_map f) (φ.app (op ⊤) s))) :=
  congrArg (QuotientAddGroup.mk : cocycles Q U 0 → cechH Q U 0)
    (Subtype.ext (pullCoch_globalCocycle f φ V U τ hτ s))

private theorem pull_eq_of_equiv {A A' B B' C C' : Type}
    [Add A] [Add A'] [Add B] [Add B'] [Add C] [Add C']
    (e : B ≃+ A) (e' : B' ≃+ A') (d : A ≃+ C) (d' : A' ≃+ C')
    (r : A → A') (p : B → B') (p' : C → C')
    (hp : ∀ s, p (e.symm s) = e'.symm (r s)) (hd : ∀ s, p' (d s) = d' (r s)) (x : B) :
    (e'.trans d') (p x) = p' ((e.trans d) x) :=
  pull_eq_of_sections e.symm e'.symm r p p' (e.trans d) (e'.trans d') d d'
    e.symm.surjective hp (fun s => congrArg d (e.apply_symm_apply s))
    (fun s => congrArg d' (e'.apply_symm_apply s)) hd x

theorem cechHZero_pull' : ∀ {X Y : TopCat.{0}} (f : X ⟶ Y) {κ ι : Type} (V : κ → Opens Y) (hV : iSup V = ⊤)
    (U : ι → Opens X) (hU : iSup U = ⊤) (τ : ι → κ) (hτ : ∀ i, U i ≤ (Opens.map f).obj (V (τ i)))
    {G : AbSheaf Y} {G' : AbSheaf X} (φ : G ⟶ (push f).obj G') (x : cechH G.obj V 0),
    (cechHZeroEquivH G' U hU : cechH G'.obj U 0 ≃+ Sheaf.H.{0} G' 0) (cechPullH f φ.hom V U τ hτ 0 x) =
      hPull f φ 0 ((cechHZeroEquivH G V hV : cechH G.obj V 0 ≃+ Sheaf.H.{0} G 0) x) := by
  intro X Y f κ ι V hV U hU τ hτ G G' φ x
  let ψ : G.obj ⟶ (Opens.map f).op ⋙ G'.obj := φ.hom
  let e := cechHZeroEquiv G.obj V G.property hV
  let e' := cechHZeroEquiv G'.obj U G'.property hU
  let p := cechPullH f ψ V U τ hτ 0
  let r (s : G.obj.obj (op ⊤)) := res G'.obj (top_le_map f) (ψ.app (op ⊤) s)
  have hp (s : G.obj.obj (op ⊤)) : p (e.symm s) = e'.symm (r s) := by
    have hs := e.symm_apply_eq.mpr (cechHZeroEquiv_mk G.obj V G.property hV s).symm
    have hs' := e'.symm_apply_eq.mpr (cechHZeroEquiv_mk G'.obj U G'.property hU (r s)).symm
    exact (congrArg (fun z => p z) hs).trans ((cechPullH_globalCocycle_mk f ψ V U τ hτ s).trans hs'.symm)
  exact pull_eq_of_equiv e e' (Sheaf.H.equiv₀ G isTerminalTop).symm
    (Sheaf.H.equiv₀ G' isTerminalTop).symm r p (hPull f φ 0) hp (hPull_zero f (G' := G') φ) x

theorem cechHOne_pull' : ∀ {X Y : TopCat.{0}} (f : X ⟶ Y) {κ ι : Type} (V : κ → Opens Y) (hV : iSup V = ⊤)
    (U : ι → Opens X) (hU : iSup U = ⊤) (τ : ι → κ) (hτ : ∀ i, U i ≤ (Opens.map f).obj (V (τ i)))
    {S : ShortComplex (AbSheaf Y)} {S' : ShortComplex (AbSheaf X)} (hS : S.ShortExact) [Injective S.X₂]
    (hC : IsCechShortExact V S.f.hom S.g.hom) (hI : CechAcyclic S.X₂.obj V) (hS' : S'.ShortExact) [Injective S'.X₂]
    (hC' : IsCechShortExact U S'.f.hom S'.g.hom) (hI' : CechAcyclic S'.X₂.obj U) (α : S ⟶ S'.map (push f))
    (x : cechH S.X₁.obj V 1),
    (cechHOneEquiv U hU hS' hC' hI' : cechH S'.X₁.obj U 1 ≃+ Sheaf.H.{0} S'.X₁ 1) (cechPullH f α.τ₁.hom V U τ hτ 1 x) =
      hPull f α.τ₁ 1 ((cechHOneEquiv V hV hS hC hI : cechH S.X₁.obj V 1 ≃+ Sheaf.H.{0} S.X₁ 1) x) := by
  intro X Y f κ ι V hV U hU τ hτ S S' hS _ hC hI hS' _ hC' hI' α x
  let φ₁ : S.X₁.obj ⟶ (Opens.map f).op ⋙ S'.X₁.obj := α.τ₁.hom
  let φ₂ : S.X₂.obj ⟶ (Opens.map f).op ⋙ S'.X₂.obj := α.τ₂.hom
  let φ₃ : S.X₃.obj ⟶ (Opens.map f).op ⋙ S'.X₃.obj := α.τ₃.hom
  have h₁₂ : ∀ (W : (Opens Y)ᵒᵖ) (z : S.X₁.obj.obj W),
      φ₂.app W (S.f.hom.app W z) = S'.f.hom.app _ (φ₁.app W z) :=
    fun W z => congrArg (fun g : S.X₁ ⟶ (S'.map (push f)).X₂ => g.hom.app W z) α.comm₁₂.symm
  have h₂₃ : ∀ (W : (Opens Y)ᵒᵖ) (z : S.X₂.obj.obj W),
      φ₃.app W (S.g.hom.app W z) = S'.g.hom.app _ (φ₂.app W z) :=
    fun W z => congrArg (fun g : S.X₂ ⟶ (S'.map (push f)).X₃ => g.hom.app W z) α.comm₂₃.symm
  let r (s : S.X₃.obj.obj (op ⊤)) := res S'.X₃.obj (top_le_map f) (φ₃.app (op ⊤) s)
  have hL (s : S.X₃.obj.obj (op ⊤)) :
      cechPullH f φ₁ V U τ hτ 1 (cechOneProj V hC s) = cechOneProj U hC' (r s) :=
    (GlobalTheory.CompanionTheory.OmCechDelta.cechPullH_delta f V U τ hτ hC hC' φ₁ φ₂ φ₃ h₁₂ h₂₃ 0
      (globalCocycle S.X₃.obj V s)).trans
      (congrArg (fun z => hC'.delta 0 z) (Subtype.ext (pullCoch_globalCocycle f φ₃ V U τ hτ s)))
  have hδ (s : S.X₃.obj.obj (op ⊤)) :
      hPull f α.τ₁ 1 (hOneProj hS s) = hOneProj hS' (r s) :=
    (_root_.GlobalTheory.CompanionTheory.CechDelta.hPull_δ f hS hS' α 0 ((Sheaf.H.equiv₀ S.X₃ isTerminalTop).symm s)).trans
      (congrArg (fun z => H.δ hS' 0 (0 + 1) rfl z) (hPull_zero f (G' := S'.X₃) α.τ₃ s))
  exact pull_eq_of_sections (cechOneProj V hC) (cechOneProj U hC') r
    (cechPullH f φ₁ V U τ hτ 1) (hPull f α.τ₁ 1)
    (cechHOneEquiv V hV hS hC hI) (cechHOneEquiv U hU hS' hC' hI')
    (hOneProj hS) (hOneProj hS') (cechOneProj_surjective V hV hC hI) hL
    (cechHOneEquiv_cechOneProj V hV hS hC hI) (cechHOneEquiv_cechOneProj U hU hS' hC' hI') hδ x

end CrystallineSemistableComparison.Om.Nt2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.ZeroOne =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.LerayClean =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.LerayClean", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CechDifferentialPullback.PullCochMemCoboundaries\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.PushComparisonBijectiveOfIsClosedEmbedding\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechToDerived\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InjectiveResolutionLiftPushforward\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.CechHStepPull\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.ZeroOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Opposite Limits

namespace CrystallineSemistableComparison.Om.Nt2

open GroundTheory.Arith.SchemeCoh GlobalTheory.SheafPull CrystallineSemistableComparison.Om.Cech

theorem cechHEquiv_pull_compat {X Y : TopCat.{0}} (f : X ⟶ Y) {BY : Opens Y → Prop}
    {GoodY : ∀ {κ : Type}, Opens Y → (κ → Opens Y) → Prop} {BX : Opens X → Prop}
    {GoodX : ∀ {κ : Type}, Opens X → (κ → Opens X) → Prop} (hCY : IsCoverSystem BY GoodY) (hCX : IsCoverSystem BX GoodX)
    {κ ι : Type} (V : κ → Opens Y) (hV : iSup V = ⊤) (hVB : ∀ {n : ℕ} (i : Fin (n + 1) → κ), BY (inter V i))
    (U : ι → Opens X) (hU : iSup U = ⊤) (hUB : ∀ {n : ℕ} (i : Fin (n + 1) → ι), BX (inter U i)) (τ : ι → κ)
    (hτ : ∀ i, U i ≤ (Opens.map f).obj (V (τ i))) :
    ∀ (n : ℕ) {G : AbSheaf Y} {G' : AbSheaf X}
    (hG : GoodAcyclic BY GoodY G) (hG' : GoodAcyclic BX GoodX G') (φ : G ⟶ (push f).obj G') (x : cechH G.obj V n),
    (cechHEquiv hCX U hU hUB n G' hG' : cechH G'.obj U n ≃+ Sheaf.H.{0} G' n) (cechPullH f φ.hom V U τ hτ n x) =
      hPull f φ n ((cechHEquiv hCY V hV hVB n G hG : cechH G.obj V n ≃+ Sheaf.H.{0} G n) x) := by
  intro n
  induction n using Nat.twoStepInduction with
  | zero =>
    intro G G' hG hG' φ x
    exact CrystallineSemistableComparison.Om.Nt2.cechHZero_pull' f V hV U hU τ hτ φ x
  | one =>
    intro G G' hG hG' φ x
    obtain ⟨α, rfl⟩ := _root_.GlobalTheory.CompanionTheory.CechLift.exists_injectiveSequence_lift f φ
    exact CrystallineSemistableComparison.Om.Nt2.cechHOne_pull' f V hV U hU τ hτ (injectiveSequence_shortExact G)
      (injectiveSequence_isCechShortExact hCY V hVB G hG) (injectiveSequence_cechAcyclic G V)
      (injectiveSequence_shortExact G') (injectiveSequence_isCechShortExact hCX U hUB G' hG')
      (injectiveSequence_cechAcyclic G' U) α x
  | more m _ ih =>
    intro G G' hG hG' φ x
    obtain ⟨α, rfl⟩ := _root_.GlobalTheory.CompanionTheory.CechLift.exists_injectiveSequence_lift f φ
    exact CrystallineSemistableComparison.Om.Nt2.cechHStep_pull' f V U τ hτ (injectiveSequence_shortExact G)
      (injectiveSequence_isCechShortExact hCY V hVB G hG) (injectiveSequence_cechAcyclic G V)
      (injectiveSequence_shortExact G') (injectiveSequence_isCechShortExact hCX U hUB G' hG')
      (injectiveSequence_cechAcyclic G' U) α m _ _
      (fun y => ih
        (injectiveSequence_goodAcyclic hCY G hG) (injectiveSequence_goodAcyclic hCX G' hG') α.τ₃ y) x

end CrystallineSemistableComparison.Om.Nt2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.LerayClean =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.PfPullC =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.PfPullC", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CechDifferentialPullback.PullCochMemCoboundaries\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SurjectiveOfLocallySurjective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CechDifferentialPullback.PfOmega\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.LerayClean\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Opposite Limits

namespace CrystallineSemistableComparison.Om.Cech.CechFormPull

open CrystallineSemistableComparison.Om.Cech

open GroundTheory.Arith.SchemeCoh GlobalTheory.SheafPull

theorem cechOm_pull_pf : ∀ {K : Type} [Field K] {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    (p : Y ⟶ Spec (CommRingCat.of K)) (u : X ⟶ Y) (hu : u ≫ p = q) {κ ι : Type} (V : κ → Y.Opens) (hV : iSup V = ⊤)
    (hVaff : ∀ (n : ℕ) (i : Fin (n + 1) → κ), IsAffineOpen (⨅ a, V (i a))) (U : ι → X.Opens) (hU : iSup U = ⊤)
    (hUaff : ∀ (n : ℕ) (i : Fin (n + 1) → ι), IsAffineOpen (⨅ a, U (i a))) (τ : ι → κ) (hτ : ∀ i, U i ≤ u ⁻¹ᵁ V (τ i))
    (a j : ℕ) (x : CO p V a j),
    cechOmAdd q U hU hUaff a j (cechPull hu V U τ hτ a j x) = pullC u hu a j (cechOmAdd p V hV hVaff a j x) := by
  intro K _ X Y q p u hu κ ι V hV hVaff U hU hUaff τ hτ a j x
  have h1 := _root_.CrystallineSemistableComparison.Om.Nt2.cechHEquiv_pull_compat u.base isCoverSystem_isBasicCover isCoverSystem_isBasicCover V hV
    (fun i => by rw [inter_eq_iInf]; exact hVaff _ i) U hU (fun i => by rw [inter_eq_iInf]; exact hUaff _ i) τ hτ j
    (goodAcyclic_modulesAb (GlobalTheory.HodgeCoh.Omega p a)) (goodAcyclic_modulesAb (GlobalTheory.HodgeCoh.Omega q a))
    (GlobalTheory.toAbSheafPush (GlobalTheory.HodgeCoh.omegaPull hu a)) x
  have h2 := hPull_omega_pf q p u hu a j (cechHAddEquivH V hV hVaff (GlobalTheory.HodgeCoh.Omega p a) j x)
  exact (congrArg (GlobalTheory.coh.toH (GlobalTheory.HodgeCoh.Omega q a) j).symm h1).trans h2

end CrystallineSemistableComparison.Om.Cech.CechFormPull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.PfPullC =====
