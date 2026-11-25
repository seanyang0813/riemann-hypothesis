module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.LimAlg
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinBaseChangeP
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.ActSmul, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.FirstChernClassUnique

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.ActSmul =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.ActSmul", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.LimAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison

namespace GlueLim

variable {R : Type} [CommRing R] {Γ : Type} (S : ℕ → Sys.{1} R) {σ : Γ → R →+* R} (act : ∀ j g, Sys.Hom (S j) (S j) (σ g))

theorem hom_smul {R' : Type} [CommRing R'] {S₁ : Sys.{1} R} {S₂ : Sys.{1} R'} {τ : R →+* R'} (φ : Sys.Hom S₁ S₂ τ) (c : R)
    (x : S₁.lim) : φ.lim.toAddMonoidHom (c • x) = τ c • φ.lim.toAddMonoidHom x :=
  φ.lim.map_smulₛₗ c x

theorem act_smul (j : ℕ) (g : Γ) (c : R) (y : (limMod S act).N j) :
    (limMod S act).act j g (c • y) = σ g c • (limMod S act).act j g y :=
  (act j g).lim.map_smulₛₗ c (show (S j).lim from y)

variable (one : ∀ n, (S 0).M n) (cup : ∀ n i j, (S i).M n → (S j).M n → (S (i + j)).M n)

theorem one_uniq (x y : (limAlg S act one cup).N 0) (hx : (limAlg S act one cup).one x) (hy : (limAlg S act one cup).one y) :
    x = y :=
  Subtype.ext (funext fun n => (hx n).trans (hy n).symm)

theorem cup_uniq {i j : ℕ} (x : (limAlg S act one cup).N i) (y : (limAlg S act one cup).N j)
    (z z' : (limAlg S act one cup).N (i + j)) (hz : (limAlg S act one cup).cup x y z) (hz' : (limAlg S act one cup).cup x y z') :
    z = z' :=
  Subtype.ext (funext fun n => (hz n).trans (hz' n).symm)

theorem cup_smul (hb : ∀ n i j, ∃ b : (S i).M n →ₗ[R] (S j).M n →ₗ[R] (S (i + j)).M n, ∀ x y, b x y = cup n i j x y)
    {i j : ℕ} (c c' : R) (x : (limAlg S act one cup).N i) (y : (limAlg S act one cup).N j)
    (z : (limAlg S act one cup).N (i + j)) (hz : (limAlg S act one cup).cup x y z) :
    (limAlg S act one cup).cup (c • x) (c' • y) ((c * c') • z) := fun n =>
  Exists.elim (hb n i j) fun b hb => by
    have h : (show (S (i + j)).lim from z).1 n = cup n i j ((show (S i).lim from x).1 n) ((show (S j).lim from y).1 n) := hz n
    change (c * c') • (show (S (i + j)).lim from z).1 n =
      cup n i j (c • (show (S i).lim from x).1 n) (c' • (show (S j).lim from y).1 n)
    rw [h, ← hb, ← hb, LinearMap.map_smul₂, map_smul, smul_smul]

theorem cup_ex (hr : ∀ n i j x y, (S (i + j)).r n (cup (n + 1) i j x y) = cup n i j ((S i).r n x) ((S j).r n y))
    {i j : ℕ} (x : (limAlg S act one cup).N i) (y : (limAlg S act one cup).N j) : ∃ z, (limAlg S act one cup).cup x y z :=
  ⟨(⟨fun n => cup n i j ((show (S i).lim from x).1 n) ((show (S j).lim from y).1 n), fun n =>
    (hr n i j _ _).trans (by rw [(show (S i).lim from x).2 n, (show (S j).lim from y).2 n])⟩ : (S (i + j)).lim), fun _ => rfl⟩

end GlueLim

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.ActSmul =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.FirstChernClassUnique =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.FirstChernClassUnique", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinBaseChangeP\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.ActSmul\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct
open GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison

namespace GlueL'

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (Amp : ∀ M : Model l K, E.LineData M.X → Prop)

theorem ch (hS : ∀ M : Model l K, M.Sm → ∃ D, Amp M D) (M : Model l K) (hM : M.Sm) : Nonempty ((dat Amp).Ch M) :=
  Exists.elim (hS M hM) fun D hD => ⟨(⟨D, hD⟩ : {D : E.LineData M.X // Amp M D})⟩

theorem refine (M N : Model l K) (u : M.X ⟶ N.X) (hu : u ≫ N.p = M.p) (a : (dat Amp).Ch M) (b : (dat Amp).Ch N) :
    ∃ a' : (dat Amp).Ch M, Nonempty ((dat Amp).Mo (𝟙 M.X) (Category.id_comp _) a' a) ∧ Nonempty ((dat Amp).Mo u hu a' b) :=
  ⟨a, Nonempty.intro (PUnit.unit : PUnit.{2}), Nonempty.intro (PUnit.unit : PUnit.{2})⟩

theorem act_smul {M : Model l K} (a : (dat Amp).Ch M) (j : ℕ) (σ : K.fixingSubgroup) (c : (per l K).A)
    (y : ((dat Amp).A a).N j) : ((dat Amp).A a).act j σ (c • y) = (per l K).σA σ c • ((dat Amp).A a).act j σ y :=
  GlueLim.act_smul M.MS (fun j g => M.galS j (IntermediateField.fixingSubgroupEquiv K g)) j σ c y

theorem phi_smul {M : Model l K} (a : (dat Amp).Ch M) (j : ℕ) (c : (per l K).A) (y : ((dat Amp).A a).N j) :
    (dat Amp).phiA a j (c • y) = (per l K).φ c • (dat Amp).phiA a j y :=
  GlueLim.hom_smul (M.phiS j) c y

theorem one_uniq {M : Model l K} (a : (dat Amp).Ch M) (x y : ((dat Amp).A a).N 0) :
    ((dat Amp).A a).one x → ((dat Amp).A a).one y → x = y :=
  GlueLim.one_uniq M.MS _ _ _ x y

theorem cup_uniq {M : Model l K} (a : (dat Amp).Ch M) {i j : ℕ} (x : ((dat Amp).A a).N i) (y : ((dat Amp).A a).N j)
    (z z' : ((dat Amp).A a).N (i + j)) : ((dat Amp).A a).cup x y z → ((dat Amp).A a).cup x y z' → z = z' :=
  GlueLim.cup_uniq M.MS _ _ _ x y z z'

theorem bil (M : Model l K) (n i j : ℕ) : ∃ b : (M.MS i).M n →ₗ[Acris l] (M.MS j).M n →ₗ[Acris l] (M.MS (i + j)).M n,
    ∀ x y, b x y = (CH.mulP (AcrEl M.P n)).cup rfl x y :=
  P.cup_bilin (CH.mulP (AcrEl M.P n)) rfl

theorem cup_smul {M : Model l K} (a : (dat Amp).Ch M) {i j : ℕ} (c c' : (per l K).A) (x : ((dat Amp).A a).N i)
    (y : ((dat Amp).A a).N j) (z : ((dat Amp).A a).N (i + j)) :
    ((dat Amp).A a).cup x y z → ((dat Amp).A a).cup (c • x) (c' • y) ((c * c') • z) :=
  GlueLim.cup_smul M.MS _ _ (fun n _ _ x y => (CH.mulP (AcrEl M.P n)).cup rfl x y) (bil M) c c' x y z

theorem first_chern_class_unique (hR : E.RIn l) (hU : E.FirstChernUniqueEtale) (hEt : ∀ M D, Amp M D → Etale D.f) {M : Model l K} (a : (dat Amp).Ch M)
    (x y : ((dat Amp).A a).N 2) : (dat Amp).c1A a x → (dat Amp).c1A a y → x = y := fun hx hy =>
  Subtype.ext (hU l hR (OK l K) M.X M.p (okToOC l K) a.1 (hEt M a.1 a.2) _ _ hx hy)

theorem red_cup (hC : B.CompatH l) (M : Model l K) (k : Bool) (n i j : ℕ) (x : (M.HS k i).M (n + 1)) (y : (M.HS k j).M (n + 1)) :
    (M.HS k (i + j)).r n ((CH.mulP (B.OcA (B.schFn M.p) (okToOC l K) k (n + 1))).cup rfl x y) =
      (CH.mulP (B.OcA (B.schFn M.p) (okToOC l K) k n)).cup rfl ((M.HS k i).r n x) ((M.HS k j).r n y) :=
  hC.cup (B.schFn M.p) (okToOC l K) k n.le_succ rfl x y

theorem cup_ex (hC : B.CompatH l) {M : Model l K} (a : (dat Amp).Ch M) {i j : ℕ} (x : ((dat Amp).H a).N i)
    (y : ((dat Amp).H a).N j) : ∃ z, ((dat Amp).H a).cup x y z :=
  GlueLim.cup_ex (M.HS false) _ _ (fun n _ _ x y => (CH.mulP (B.OcA (B.schFn M.p) (okToOC l K) false n)).cup rfl x y)
    (red_cup hC M false) x y

end GlueL'

theorem glueL : GlueL := fun _ _ _ Amp hC hR hU hEt hS =>
  { ch := GlueL'.ch Amp hS
    refine := fun M N u hu _ _ a b => GlueL'.refine Amp M N u hu a b
    act_smul := GlueL'.act_smul Amp
    phi_smul := GlueL'.phi_smul Amp
    one_uniq := GlueL'.one_uniq Amp
    cup_uniq := GlueL'.cup_uniq Amp
    cup_smul := GlueL'.cup_smul Amp
    first_chern_class_unique := GlueL'.first_chern_class_unique Amp hR hU hEt
    cup_ex := GlueL'.cup_ex Amp hC }

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.FirstChernClassUnique =====
