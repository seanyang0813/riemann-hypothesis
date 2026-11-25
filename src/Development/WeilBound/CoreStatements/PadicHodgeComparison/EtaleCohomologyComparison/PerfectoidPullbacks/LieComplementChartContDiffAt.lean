module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.DatPull
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Lin, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LieComplementChartContDiffAt

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Lin =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Lin", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.DatPull\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Pb

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

structure KapL (Amp : ∀ M : Model l K, E.LineData M.X → Prop) where
  κ : ∀ {M : Model l K} (a : (dat Amp).Ch M) (j : ℕ), ((dat Amp).H a).N j →+ (Module.Dual K (HdR M.q j) →+ (per l K).B)
  lin : ∀ {M : Model l K} (a : (dat Amp).Ch M), M.Sm → ∀ (j : ℕ) (c : (per l K).A) (x : ((dat Amp).H a).N j)
    (φ : Module.Dual K (HdR M.q j)), κ a j (c • x) φ = (per l K).i c * κ a j x φ
  lin' : ∀ {M : Model l K} (a : (dat Amp).Ch M), M.Sm → ∀ (j : ℕ) (k : K) (x : ((dat Amp).H a).N j)
    (φ : Module.Dual K (HdR M.q j)), κ a j x (k • φ) = (per l K).o k * κ a j x φ
  act : ∀ {M : Model l K} (a : (dat Amp).Ch M), M.Sm → ∀ (j : ℕ) (σ : K.fixingSubgroup) (x : ((dat Amp).H a).N j)
    (φ : Module.Dual K (HdR M.q j)), κ a j (((dat Amp).H a).act j σ x) φ = (per l K).σ σ (κ a j x φ)
  nat : ∀ {M N : Model l K} {u : M.X ⟶ N.X} {hu : u ≫ N.p = M.p} {a : (dat Amp).Ch M} {b : (dat Amp).Ch N}
    (m : (dat Amp).Mo u hu a b), M.Sm → N.Sm → ∀ (j : ℕ) (x : ((dat Amp).H b).N j) (φ : Module.Dual K (HdR M.q j)),
    κ a j ((dat Amp).pullH m j x) φ = κ b j x (φ ∘ₗ pullR j (Model.genMap u hu) (Model.genMap_q u hu))
  fil : ∀ {M : Model l K} (a : (dat Amp).Ch M), M.Sm → ∀ (j n r : ℕ) (x : ((dat Amp).H a).N j)
    (φ : Module.Dual K (HdR M.q j)), (dat Amp).fil a j n x → (∀ h ∈ FilR M.q j (r + 1), φ h = 0) →
    ∃ y ∈ (per l K).P, (per l K).tB ^ r * κ a j x φ = (per l K).tB ^ n * y
  cup : ∀ {M : Model l K} (a : (dat Amp).Ch M), M.Sm → ∀ {i j : ℕ} (x : ((dat Amp).H a).N i) (y : ((dat Amp).H a).N j)
    (z : ((dat Amp).H a).N (i + j)), ((dat Amp).H a).cup x y z →
    ∀ {m m' : ℕ} (b : Module.Basis (Fin m) K (HdR M.q i)) (b' : Module.Basis (Fin m') K (HdR M.q j))
      (φ : Module.Dual K (HdR M.q (i + j))),
      κ a (i + j) z φ = ∑ s, ∑ s', κ a i x (b.coord s) * κ a j y (b'.coord s') * (per l K).o (φ (cupK M.q rfl (b s) (b' s')))
  one : ∀ {M : Model l K} (a : (dat Amp).Ch M), M.Sm → ∀ x : ((dat Amp).H a).N 0, ((dat Amp).H a).one x →
    ∀ φ : Module.Dual K (HdR M.q 0), κ a 0 x φ = (per l K).o (φ (oneK M.q))

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Lin =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LieComplementChartContDiffAt =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LieComplementChartContDiffAt", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Lin\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct Limits GlobalTheory.LogCris GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.Pb

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

abbrev Amp (M : Model l K) (D : E.LineData M.X) : Prop := IsTautologicalLine M.p D

abbrev lineK {M : Model l K} (D : E.LineData M.X) : E.LineData M.gen := D.pb (pullback.fst _ _)

def LieComplementChartContDiffAt (L : KapL (l := l) (K := K) Amp) : Prop :=
  ∀ {M : Model l K} (a : (dat Amp).Ch M), M.Sm → ∀ (x : ((dat Amp).H a).N 2) (c : HdR M.q 2), (dat Amp).c1H a x →
    IsFirstChernDeRham M.q (lineK a.1) c → ∀ φ : Module.Dual K (HdR M.q 2), L.κ a 2 x φ = (per l K).o (φ c)

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LieComplementChartContDiffAt =====
