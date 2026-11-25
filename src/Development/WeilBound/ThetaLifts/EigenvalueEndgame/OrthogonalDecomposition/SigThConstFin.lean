module

public import Mathlib.Algebra.Module.LinearMap.End
public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.Span.Defs
public import Mathlib.Algebra.Algebra.Hom
public import Mathlib.Algebra.BigOperators.Pi
public import Mathlib.Algebra.FreeAlgebra
public import Mathlib.LinearAlgebra.Pi
public import Mathlib.LinearAlgebra.Projection
public import Mathlib.RingTheory.SimpleModule.Basic
public import Development.WeilBound.ThetaLifts.LatticeBasics.SchToPol
public import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
public import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.RightOnto
public import Development.WeilBound.ThetaLifts.CartanFactorisation.CartanConj
public import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.HodgeTateFromSandwich
public import Development.WeilBound.ThetaLifts.FrameEstimates.SquareIntegrableWeilRange
public import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.PfActs
public import Development.WeilBound.ThetaLifts.CartanFactorisation.IntegrableOnRight
public import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.ActsOfReads
public import Development.WeilBound.ThetaLifts.FrameEstimates.ThickFrames
public import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.IndicatorMem
public import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.QhtUnbdd
public import Development.WeilBound.ThetaLifts.LatticeBasics.ThConstLoc
public import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConst
public import Development.WeilBound.ThetaLifts.FrameEstimates.HodgeTateFromSandwich
public import Development.WeilBound.ThetaLifts.TowerModels.PlaneHerm
public import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.PfDict
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Formalism.LocalToGlobal.IndefiniteReal.PHeisFC
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.RapidBound
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.Imports, Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.LocDecompOf, Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.PairLocOf, Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConstOf, Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConstFin

-- ===== clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.Imports =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.Imports", "h": "module\n\npublic import Mathlib.Algebra.Module.LinearMap.End\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Span.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Algebra.Hom\npublic import Mathlib.Algebra.BigOperators.Pi\npublic import Mathlib.Algebra.FreeAlgebra\npublic import Mathlib.LinearAlgebra.Pi\npublic import Mathlib.LinearAlgebra.Projection\npublic import Mathlib.RingTheory.SimpleModule.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.ThKEnd.Orth

variable {H P Q : Type} [AddCommGroup P] [Module ℂ P] [AddCommGroup Q] [Module ℂ Q]

def vals (ρ : H → Module.End ℂ P) (c : H → Module.End ℂ Q) : Set Q :=
  {y | ∃ U : P →ₗ[ℂ] Q, (∀ h x, U (ρ h x) = c h (U x)) ∧ ∃ x, y = U x}

theorem decomp (ρ : H → Module.End ℂ P) (c : H → Module.End ℂ Q) [Nontrivial P]
    (irr : ∀ N : Submodule ℂ P, (∀ h, ∀ x ∈ N, ρ h x ∈ N) → N = ⊥ ∨ N = ⊤) (R : Submodule ℂ Q) (hR : ∀ h, ∀ x ∈ R, c h x ∈ R)
    {f : Q} (hf : f ∈ R) (hs : f ∈ Submodule.span ℂ (vals ρ c)) :
    ∃ (m : ℕ) (U : Fin m → P →ₗ[ℂ] Q) (ξ : Fin m → P), (∀ i, (∀ h x, U i (ρ h x) = c h (U i x)) ∧ ∀ x, U i x ∈ R) ∧
      f = ∑ i, U i (ξ i) := by
  classical
  let A := FreeAlgebra ℂ H
  letI : Module A P := Module.compHom P (FreeAlgebra.lift ℂ ρ).toRingHom
  letI : Module A Q := Module.compHom Q (FreeAlgebra.lift ℂ c).toRingHom
  have eP : ∀ (a : A) (x : P), a • x = FreeAlgebra.lift ℂ ρ a x := fun _ _ => rfl
  have eQ : ∀ (a : A) (x : Q), a • x = FreeAlgebra.lift ℂ c a x := fun _ _ => rfl
  haveI : IsScalarTower ℂ A P := ⟨fun z a x => by rw [eP, eP, map_smul]; rfl⟩
  haveI : IsScalarTower ℂ A Q := ⟨fun z a x => by rw [eQ, eQ, map_smul]; rfl⟩
  haveI : IsSimpleModule A P := by
    refine { eq_bot_or_eq_top := fun N => ?_ }
    rcases irr (N.restrictScalars ℂ) (fun h x hx => by
      simpa [eP] using N.smul_mem (FreeAlgebra.ι ℂ h) hx) with h | h
    · exact Or.inl (Submodule.restrictScalars_injective ℂ A P h)
    · exact Or.inr (Submodule.restrictScalars_injective ℂ A P h)
  let R' : Submodule A Q :=
    { R.toAddSubmonoid with
      smul_mem' := fun a x hx => by
        induction a using FreeAlgebra.induction generalizing x with
        | grade0 z => simpa [eQ] using R.smul_mem z hx
        | grade1 h => simpa [eQ] using hR h x hx
        | mul a b ha hb => rw [mul_smul]; exact ha _ (hb _ hx)
        | add a b ha hb => rw [add_smul]; exact R.add_mem (ha _ hx) (hb _ hx) }
  obtain ⟨m, z, g, rfl⟩ := Submodule.mem_span_set'.1 hs
  choose U hU x hx using fun i => (g i).2
  let V : Fin m → P →ₗ[A] Q := fun i =>
    { (U i).toAddHom with
      map_smul' := fun a y => by
        change U i (a • y) = a • U i y
        induction a using FreeAlgebra.induction generalizing y with
        | grade0 z => simp [eP, eQ]
        | grade1 h => simpa [eP, eQ] using hU i h y
        | mul a b ha hb => rw [mul_smul, mul_smul, ha, hb]
        | add a b ha hb => rw [add_smul, add_smul, map_add (f := _), ha, hb] }
  let T : (Fin m → P) →ₗ[A] Q := ∑ i, V i ∘ₗ LinearMap.proj i
  have hT : T (fun i => z i • x i) = ∑ i, z i • (g i : Q) := by
    simp only [T, LinearMap.sum_apply, hx, ← map_smul]
    rfl
  obtain ⟨C, hC⟩ := exists_isCompl (R'.comap T)
  let π := (R'.comap T).subtype ∘ₗ Submodule.linearProjOfIsCompl _ C hC
  refine ⟨m, fun i => (T ∘ₗ π ∘ₗ LinearMap.single A (fun _ => P) i).restrictScalars ℂ, fun i => z i • x i,
    fun i => ⟨fun h y => ?_, fun y => Subtype.prop (p := (· ∈ R'.comap T)) _⟩, ?_⟩
  · simpa [eP, eQ] using (T ∘ₗ π ∘ₗ LinearMap.single A (fun _ => P) i).map_smul (FreeAlgebra.ι ℂ h) y
  · have e : π (fun i => z i • x i) = fun i => z i • x i :=
      congrArg Subtype.val (Submodule.linearProjOfIsCompl_apply_left hC ⟨_, show T _ ∈ R from hT ▸ hf⟩)

    simp only [LinearMap.restrictScalars_apply, LinearMap.comp_apply, ← map_sum, LinearMap.single_apply, Finset.univ_sum_single]
    exact hT.symm.trans (congrArg T e.symm)

end PositivityTheory.ThKEnd.Orth

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.Imports =====

-- ===== clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.LocDecompOf =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.LocDecompOf", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.Imports\npublic import Development.WeilBound.ThetaLifts.LatticeBasics.SchToPol\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\npublic import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.RightOnto\npublic import Development.WeilBound.ThetaLifts.CartanFactorisation.CartanConj\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.HodgeTateFromSandwich\npublic import Development.WeilBound.ThetaLifts.FrameEstimates.SquareIntegrableWeilRange\npublic import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.PfActs\npublic import Development.WeilBound.ThetaLifts.CartanFactorisation.IntegrableOnRight\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.ActsOfReads\npublic import Development.WeilBound.ThetaLifts.FrameEstimates.ThickFrames\nimport Formalism.LocalToGlobal.IndefiniteReal.PHeisFC\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

set_option linter.unusedSectionVars false

namespace PositivityTheory.ThKEnd.Orth

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.Dbl

open PositivityTheory.ThKEst GlobalTheory.SplitFlip PositivityTheory.KCo
open scoped Classical

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

variable {B : Base F E} {n d : ℕ} {X : Spc F E n} {W : Spc F E d} {M : Model σ X W} {χX χW : Chr F E} {om : Rep σ X W}
  {r s r' s' : ℕ}

theorem qht_le (x h : UA σ W.J) : qht x ≤ qht (x * h) * ht h⁻¹ := by
  rw [qht, qht, NNReal.iInf_mul]
  refine ciInf_mono (OrderBot.bddBelow _) fun γ => ?_
  have := heightGL_mul_le F (γ.1 * (x * h)).1 (h⁻¹).1
  rwa [← Subgroup.coe_mul, mul_assoc, mul_inv_cancel_right] at this


variable (σ W) in
def rapid : Submodule ℂ (UA σ W.J → ℂ) where
  carrier := {f | IsRapid (Y := W) f}
  zero_mem' := ⟨continuous_const, fun _ _ _ => rfl, fun _ => ⟨0, fun _ => by simp⟩⟩
  add_mem' := fun {f g} a b => ⟨a.1.add b.1, fun γ hγ x => by simp only [Pi.add_apply, a.2.1 γ hγ, b.2.1 γ hγ], fun N => by
    obtain ⟨C, hC⟩ := a.2.2 N
    obtain ⟨C', hC'⟩ := b.2.2 N
    exact ⟨C + C', fun x => (mul_le_mul_of_nonneg_right (norm_add_le _ _) (by positivity)).trans
      ((add_mul _ _ _).trans_le (add_le_add (hC x) (hC' x)))⟩⟩
  smul_mem' := fun c f a => ⟨a.1.const_smul c, fun γ hγ x => by simp only [Pi.smul_apply, a.2.1 γ hγ], fun N => by
    obtain ⟨C, hC⟩ := a.2.2 N
    exact ⟨‖c‖ * C, fun x => by
      rw [Pi.smul_apply, norm_smul, mul_assoc]; exact mul_le_mul_of_nonneg_left (hC x) (norm_nonneg _)⟩⟩

def rt (h : UA σ W.J) : Module.End ℂ (UA σ W.J → ℂ) := LinearMap.funLeft ℂ ℂ (· * h)

theorem rapid_rt (h : UA σ W.J) {f} (a : f ∈ rapid σ W) : rt h f ∈ rapid σ W :=
  ⟨a.1.comp (continuous_mul_const h), fun γ hγ x => by simpa only [rt, LinearMap.funLeft_apply, mul_assoc] using a.2.1 γ hγ (x * h),
    fun N => by
      obtain ⟨C, hC⟩ := a.2.2 N
      refine ⟨C * (ht h⁻¹ : ℝ) ^ N, fun x => le_trans ?_ (mul_le_mul_of_nonneg_right (hC (x * h)) (by positivity))⟩
      rw [mul_assoc, ← mul_pow]
      exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (NNReal.coe_nonneg _) (by exact_mod_cast qht_le x h) N) (norm_nonneg _)⟩

theorem exists_op (hD : DictSt) (hp : IsPair B M χX χW om r s r' s') {v : Pl F} (t : E →ₐ[F] Fv F v) :
    ∃ a : UAt σ W (evFin F v) → Module.End ℂ ((Fin n × Fin d → Fv F v) → ℂ), ∀ h, ∀ φ ∈ SB _, a h φ ∈ SB _ ∧
      Acts (evFin F v) (om (1, h.1)) φ (a h φ) := by
  obtain ⟨⟨ι, hι⟩, ν, α, -, -, -, hd⟩ := hD F E σ n d B X W M om χX χW hp.base ⟨_, _, hp.herm⟩ ⟨_, _, hp.skew⟩ hp.good hp.weil
    hp.hX hp.hW v t
  obtain ⟨j, -, j2⟩ := PositivityTheory.KCo.kd_exists_inv hι.bij
  choose g hg using fun h : UAt σ W (evFin F v) => (hd ι hι).right h.1 h.2
  exact ⟨fun h => j ∘ₗ (⟨⟨omB ν α 1 (g h), fun _ _ => funext fun _ => mul_add _ _ _⟩, fun _ _ => funext fun _ => mul_left_comm _ _ _⟩ :
    _ →ₗ[ℂ] _) ∘ₗ ι, fun h φ hφ => acts_of_reads (hg h) j2 hφ⟩

theorem I_left (hB : ThetaBasic) (hE : EpsOf) (hU : PositivityTheory.ThKF.Unimod) (hp : IsPair B M χX χW om r s r' s') {Φ : Fn F n d}
    (hΦ : Φ ∈ schA F _) (g₀ : UA σ X.J) : M.I om (om (g₀, 1) Φ) = M.I om Φ := by
  funext h
  obtain ⟨h1, -, h2⟩ := hU F E σ hp.base.cm n X.J 1 (fun i j => by simpa using hp.herm.herm i j)
    (hE F E σ B hp.base n X _ _ (Or.inl hp.herm)).1.2
  have := hp.good.haar
  have := h2 _ this
  have : BorelSpace (UA σ X.J) := ⟨rfl⟩
  have e : ∀ g, theta om (om (g₀, 1) Φ) g h = theta om Φ (g * g₀) h := fun g => by
    simp only [theta, ← Module.End.mul_apply, ← map_mul, Prod.mk_mul_mk, mul_one]
  simp only [Model.I, e]
  exact PositivityTheory.ThKF.L2.integral_right hp.good.dom (fun g => theta om Φ g h) (fun γ hγ g => by
    simpa using ((hB F E σ B n d X W M χX χW om r s r' s' hp).1 Φ hΦ).2.1 γ hγ 1 (one_mem _) g h) g₀

theorem I_add (hp : IsPair B M χX χW om r s r' s') {Φ Ψ : Fn F n d} (a : Φ ∈ schA F _ ∧ M.Conv om Φ) (b : Ψ ∈ schA F _ ∧ M.Conv om Ψ) :
    M.I om (Φ + Ψ) = M.I om Φ + M.I om Ψ := funext fun h => by
  simp only [Model.I, theta_add hp a.1 b.1, Pi.add_apply]
  exact integral_add (a.2 h) (b.2 h)

theorem I_smul' (c : ℂ) (Φ : Fn F n d) : M.I om (c • Φ) = c • M.I om Φ := funext fun h => by
  simp only [Model.I, theta, map_smul, thetaSum, Pi.smul_apply, smul_eq_mul, tsum_mul_left, integral_const_mul]

theorem mem_vals (hB : ThetaBasic) (hE : EpsOf) (hU : PositivityTheory.ThKF.Unimod) (hp : IsPair B M χX χW om r s r' s') {v : Pl F}
    {P : Type} [AddCommGroup P] [Module ℂ P] {p : ((Fin n × Fin d → Fv F v) → ℂ) →ₗ[ℂ] P} (onto : (SB _).map p = ⊤)
    (ker : ∀ φ ∈ SB _, p φ = 0 → φ ∈ augAt om v) {ρ : UAt σ W (evFin F v) → Module.End ℂ P}
    (hρ : ∀ h, ∀ φ ∈ SB _, ∃ φ₁ ∈ SB _, Acts (evFin F v) (om (1, h.1)) φ φ₁ ∧ ρ h (p φ) = p φ₁)
    (S : Set (Fn F n d)) (hc : ∀ Φ ∈ Submodule.span ℂ S, Φ ∈ schA F _ ∧ M.Conv om Φ)
    (hS : ∀ Φ ∈ S, ∃ f φ, (∀ u, φ u ∈ SB _) ∧ (∀ᶠ u in cofinite, φ u = M.vac u) ∧ Φ = pure f φ ∧
      ∀ ψ ∈ SB _, pure f (Function.update φ v ψ) ∈ S) :
    ∀ Φ ∈ Submodule.span ℂ S, M.I om Φ ∈ Submodule.span ℂ (vals ρ fun h => rt h.1) := by
  intro Φ hΦ
  induction hΦ using Submodule.span_induction with
  | zero => rw [← zero_smul ℂ (0 : Fn F n d), I_smul', zero_smul]; exact zero_mem _
  | add x y a b ha hb => rw [I_add hp (hc x a) (hc y b)]; exact add_mem ha hb
  | smul c x a ha => rw [I_smul']; exact Submodule.smul_mem _ c ha
  | mem Φ h =>
    obtain ⟨f, φ, p1, p2, rfl, p3⟩ := hS Φ h
    obtain ⟨T, t1, t2, t3⟩ := intersection_update_fsHerm_neg_one v f p1 ((p2.and hp.good.std).mono fun _ h => h.1.trans h.2)
    have c : ∀ ψ ∈ SB _, T ψ ∈ schA F _ ∧ M.Conv om (T ψ) := fun ψ hψ => hc _ (Submodule.subset_span (t1 ψ ▸ p3 ψ hψ))
    let J : SB (Fin n × Fin d → Fv F v) →ₗ[ℂ] (UA σ W.J → ℂ) :=
      { toFun := fun ψ => M.I om (T ψ)
        map_add' := fun a b => by rw [Submodule.coe_add, map_add (f := _), I_add hp (c _ a.2) (c _ b.2)]
        map_smul' := fun z a => by rw [Submodule.coe_smul, map_smul, I_smul']; rfl }
    have k : augAt om v ≤ (LinearMap.ker J).map (SB _).subtype := Submodule.span_le.2 (by
      rintro _ ⟨g, -, ψ, hψ, ψ₁, hψ₁, hA, rfl⟩
      refine ⟨⟨ψ₁, hψ₁⟩ - ⟨ψ, hψ⟩, ?_, rfl⟩
      rw [SetLike.mem_coe, LinearMap.mem_ker, map_sub, sub_eq_zero]
      change M.I om (T ψ₁) = M.I om (T ψ)
      rw [← t3 _ _ hψ _ hA, I_left hB hE hU hp (t2 _ hψ)])
    obtain ⟨q, hq⟩ := (p.domRestrict (SB _)).exists_rightInverse_of_surjective (by rw [LinearMap.range_domRestrict, onto])
    have e : ∀ ψ ∈ SB _, J (q (p ψ)) = M.I om (T ψ) := fun ψ hψ => by
      have e1 : p (q (p ψ) : _) = p ψ := LinearMap.congr_fun hq _
      obtain ⟨z, hz, e2⟩ := k (ker _ (sub_mem (q (p ψ)).2 hψ) (by rw [map_sub, e1, sub_self]))
      rw [show z = q (p ψ) - ⟨ψ, hψ⟩ from Subtype.ext e2, SetLike.mem_coe, LinearMap.mem_ker, map_sub, sub_eq_zero] at hz
      exact hz
    refine Submodule.subset_span ⟨J ∘ₗ q, fun h x => ?_, p (φ v), ?_⟩
    · obtain ⟨ψ, hψ, rfl⟩ : x ∈ (SB _).map p := onto ▸ Submodule.mem_top
      obtain ⟨ψ₁, h₁, hA, e₁⟩ := hρ h ψ hψ
      rw [e₁, LinearMap.comp_apply, LinearMap.comp_apply, e _ hψ, e _ h₁, ← t3 _ _ hψ _ hA]
      funext x
      simp only [rt, LinearMap.funLeft_apply, Model.I, theta, ← Module.End.mul_apply, ← map_mul, Prod.mk_mul_mk, mul_one]
    · rw [LinearMap.comp_apply, e _ (p1 v), t1, Function.update_eq_self]

theorem comes_of {v : Pl F} {P : Type} [AddCommGroup P] [Module ℂ P] {p : ((Fin n × Fin d → Fv F v) → ℂ) →ₗ[ℂ] P}
    (onto : (SB _).map p = ⊤) {ρ : UAt σ W (evFin F v) → Module.End ℂ P}
    (hρ : ∀ h, ∀ φ ∈ SB _, ∃ φ₁ ∈ SB _, Acts (evFin F v) (om (1, h.1)) φ φ₁ ∧ ρ h (p φ) = p φ₁) {f}
    (hf : ∃ (m : ℕ) (U : Fin m → P →ₗ[ℂ] (UA σ W.J → ℂ)) (ξ : Fin m → P),
      (∀ i, (∀ h x, U i (ρ h x) = rt h.1 (U i x)) ∧ ∀ x, U i x ∈ rapid σ W) ∧ f = ∑ i, U i (ξ i)) : Comes om v f := by
  obtain ⟨m, U, ξ, hU, rfl⟩ := hf
  choose φ h1 h2 using fun i => (onto ▸ Submodule.mem_top : ξ i ∈ (SB _).map p)
  refine ⟨m, fun i => U i ∘ₗ p, φ, fun i => ⟨⟨fun ψ _ => (hU i).2 _, fun h hh ψ hψ ψ₁ _ hA => ?_⟩, h1 i⟩, by simp [h2]⟩
  obtain ⟨ψ₂, -, hA', e⟩ := hρ ⟨h, hh⟩ ψ hψ
  rw [action_uniqueness F _ v _ ψ hψ _ _ hA hA', LinearMap.comp_apply, ← e, (hU i).1]
  rfl

theorem upd_sb {κ : Type} [Fintype κ] {φ : ∀ u : Pl F, (κ → Fv F u) → ℂ} (h : ∀ u, φ u ∈ SB _) {v : Pl F} {x} (hx : x ∈ SB _) (u) :
    Function.update φ v x u ∈ SB _ := by
  by_cases hu : u = v
  · subst hu; rwa [Function.update_self]
  · rw [Function.update_of_ne hu]; exact h u

theorem upd_cof {κ : Type} {φ ψ : ∀ u : Pl F, (κ → Fv F u) → ℂ} (h : ∀ᶠ u in cofinite, φ u = ψ u) (v : Pl F) (x) :
    ∀ᶠ u in cofinite, Function.update φ v x u = ψ u := by
  filter_upwards [h, eventually_cofinite_ne v] with w h hw using (Function.update_of_ne hw _ _).trans h

theorem locDecomp_of (hB : ThetaBasic) (hE : EpsOf) (hU : PositivityTheory.ThKF.Unimod) (hP : TriplePair) (hK : KDecay) (hF : SoFin) (hS : PolSch)
    (hD : DictSt) (hN : GoodNe) (h1 : KReal) (h2 : KFin) (h3 : KCoinv) : LocDecomp := by
  intro F E _ _ _ _ _ σ B a a' G X om om' hT f ⟨Φ, hΦ, Φ', hΦ', e⟩ hr v hv hv₁
  obtain ⟨p, p', -⟩ := hP F E σ B a a' G X om om' hT
  obtain ⟨R, hR⟩ := h1 F E σ B a a' G X om om' hT
  obtain ⟨Rf, hf⟩ := h2 F E σ B a a' G X om om' hT
  obtain ⟨k, k', -⟩ := (h3 F E σ B a a' G X om om' R Rf ⟨hT, hR, hf⟩).1 v hv
  obtain ⟨d1, d2⟩ := hK F E σ B a a' G X om om' hT
  obtain ⟨⟨t⟩, -⟩ := hN F E σ B a a' G X om om' hT v hv
  obtain ⟨A, hA⟩ := exists_op hD p t
  obtain ⟨A', hA'⟩ := exists_op hD p' t
  obtain ⟨q, hq⟩ := ((Rf.p v).domRestrict (SB _)).exists_rightInverse_of_surjective (by rw [LinearMap.range_domRestrict, hf.onto v])
  let ρ : UAt σ G.W (evFin F v) → Module.End ℂ (Rf.Pi v) := fun h => Rf.p v ∘ₗ A h ∘ₗ (SB _).subtype ∘ₗ q
  have r' : ∀ h, ∀ φ ∈ SB _, ρ h (Rf.p' v φ) = Rf.p' v (A' h φ) := fun h φ hφ =>
    hf.equiv v h.1 h.2 _ (q _).2 φ hφ _ (hA h _ (q _).2).1 _ (hA' h φ hφ).1 (hA h _ (q _).2).2 (hA' h φ hφ).2 (LinearMap.congr_fun hq _)
  have r₀ : ∀ h, ∀ φ ∈ SB _, ρ h (Rf.p v φ) = Rf.p v (A h φ) := fun h φ hφ => by
    obtain ⟨ψ, hψ, e⟩ : Rf.p v φ ∈ (SB _).map (Rf.p' v) := hf.onto' v ▸ Submodule.mem_top
    rw [← e, r' h ψ hψ]
    exact (hf.equiv v h.1 h.2 φ hφ ψ hψ _ (hA h φ hφ).1 _ (hA' h ψ hψ).1 (hA h φ hφ).2 (hA' h ψ hψ).2 e.symm).symm
  have ρ1 := fun h φ hφ => (⟨_, (hA h φ hφ).1, (hA h φ hφ).2, r₀ h φ hφ⟩ :
    ∃ φ₁ ∈ SB _, Acts (evFin F v) (om (1, h.1)) φ φ₁ ∧ ρ h (Rf.p v φ) = Rf.p v φ₁)
  have ρ2 := fun h φ hφ => (⟨_, (hA' h φ hφ).1, (hA' h φ hφ).2, r' h φ hφ⟩ :
    ∃ φ₁ ∈ SB _, Acts (evFin F v) (om' (1, h.1)) φ φ₁ ∧ ρ h (Rf.p' v φ) = Rf.p' v φ₁)
  have := hf.nontriv v
  have key := decomp ρ (fun h => rt h.1) (fun N hN => hf.irred v N fun h hh φ hφ φ₁ _ hA₁ hm => by
      rw [action_uniqueness F _ v _ φ hφ _ _ hA₁ (hA ⟨h, hh⟩ φ hφ).2, ← r₀ _ φ hφ]
      exact hN _ _ hm) (rapid σ G.W) (fun h x hx => rapid_rt h.1 hx) hr (e ▸ sub_mem
    (mem_vals hB hE hU p (hf.onto v) (fun φ hφ => (k φ hφ).1) ρ1 _
      (fun Ψ hΨ => ⟨hS F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p Ψ hΨ, d1 Ψ (hS F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p Ψ hΨ)⟩)
      (fun _ ⟨f, a, φ, b, c, e⟩ => ⟨f, φ, b, c, e, fun ψ hψ => ⟨f, a, _, upd_sb b hψ, upd_cof c v ψ, rfl⟩⟩) Φ hΦ)
    (mem_vals hB hE hU p' (hf.onto' v) (fun φ hφ => (k' φ hφ).1) ρ2 _
      (fun Ψ hΨ => ⟨(hF F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p').2.2.1 Ψ hΨ, (d2 Ψ hΨ).2.1⟩)
      (fun _ ⟨f, φ, b, c, o, e⟩ => ⟨f, φ, b, c, e, fun ψ hψ => ⟨f, _, upd_sb b hψ, upd_cof c v ψ, by
        rwa [Function.update_of_ne hv₁.symm], rfl⟩⟩) Φ' hΦ'.2))
  exact ⟨comes_of (hf.onto v) ρ1 key, comes_of (hf.onto' v) ρ2 key⟩

end PositivityTheory.ThKEnd.Orth

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.LocDecompOf =====

-- ===== clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.PairLocOf =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.PairLocOf", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.CartanFactorisation.CartanConj\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.ActsOfReads\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.HodgeTateFromSandwich\npublic import Development.WeilBound.ThetaLifts.FrameEstimates.SquareIntegrableWeilRange\npublic import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.IndicatorMem\npublic import Development.WeilBound.ThetaLifts.CartanFactorisation.IntegrableOnRight\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.QhtUnbdd\nimport Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.RapidBound\npublic import Development.WeilBound.ThetaLifts.LatticeBasics.ThConstLoc\nimport Formalism.LocalToGlobal.IndefiniteReal.PHeisFC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

set_option linter.unusedSectionVars false

namespace PositivityTheory.ThKEnd.Orth

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.Dbl

open PositivityTheory.ThKEst GlobalTheory.SplitFlip PositivityTheory.KCo
open scoped Classical

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

variable {B : Base F E} {n d : ℕ} {X : Spc F E n} {W : Spc F E d} {M : Model σ X W} {χX χW : Chr F E} {om : Rep σ X W}
  {r s r' s' : ℕ}

variable {n' : ℕ} {X' : Spc F E n'}

theorem inv_loc₂ (hL : LocDist) (e : Fin n ⊕ Fin n' ≃ Fin d) {v : Pl F} {om : Rep σ X W} {om' : Rep σ X' W}
    {ι : ((Fin n × Fin d → Fv F v) → ℂ) →ₗ[ℂ] (Matrix (Fin n) (Fin d) (Fv F v) → ℂ)}
    {ι' : ((Fin n' × Fin d → Fv F v) → ℂ) →ₗ[ℂ] (Matrix (Fin n') (Fin d) (Fv F v) → ℂ)}
    (b : Set.BijOn ι (SB (Fin n × Fin d → Fv F v) : Set _) (SB (Matrix (Fin n) (Fin d) (Fv F v)) : Set _))
    (b' : Set.BijOn ι' (SB (Fin n' × Fin d → Fv F v) : Set _) (SB (Matrix (Fin n') (Fin d) (Fv F v)) : Set _))
    {ν ν' α α' : (Fv F v)ˣ →* ℂˣ} (n1 : ∀ x, ‖(ν x : ℂ)‖ = 1) (n2 : ∀ x, ‖(α x : ℂ)‖ = 1) (hν : ∀ x, ν x = α x / α' x)
    (hne : ν (unifAt v) ≠ 1) (L : ((Fin n' × Fin d → Fv F v) → ℂ) →ₗ[ℂ] Fn F n d →ₛₗ[starRingEnd ℂ] ℂ)
    (hh : ∀ h₀, ∃ h, Reads v ι (om (1, h)) (omB ν α 1 h₀) ∧ Reads v ι' (om' (1, h)) (omB ν' α' 1 h₀) ∧
      ∀ φ ∈ SB _, ∀ φ₁ ∈ SB _, Acts (evFin F v) (om' (1, h)) φ φ₁ → ∀ Ψ ∈ schA F _, L φ₁ (om (1, h) Ψ) = L φ Ψ)
    {u g₀} (hu : Reads v ι (om (u, 1)) (omB ν α g₀ 1)) : ∀ φ' ∈ SB _, ∀ Ψ ∈ schA F _, L φ' (om (u, 1) Ψ) = L φ' Ψ := by
  obtain ⟨j, j1, j2⟩ := PositivityTheory.KCo.kd_exists_inv b
  obtain ⟨j', j1', j2'⟩ := PositivityTheory.KCo.kd_exists_inv b'
  intro φ' p1' Ψ hΨ
  refine schA_le (LinearMap.eqLocus (L φ' ∘ₛₗ om (u, 1)) (L φ')) (fun f φ p1 p2 => ?_) hΨ
  obtain ⟨T, t1, t2, t3⟩ := intersection_update_fsHerm_neg_one v f p1 p2
  let N : (Fv F v)ˣ →* ℂˣ := MonoidHom.toHomUnits ⟨⟨fun x => apow x ((d : ℂ) / 2), apow_one _⟩, fun x y => apow_mul x y _⟩
  have hN : ∀ x, ((ν * N⁻¹) x : ℂ) = ν x * (apow x ((d : ℂ) / 2))⁻¹ := fun x => by simp [N]
  have cj : ∀ {z : ℂ}, ‖z‖ = 1 → starRingEnd ℂ z = z⁻¹ := fun h => (Complex.inv_eq_conj h).symm
  have cj' : ∀ (x : (Fv F v)ˣ) (m : ℕ), starRingEnd ℂ (apow x ((m : ℂ) / 2)) = apow x ((m : ℂ) / 2) := fun x m => by
    obtain ⟨r, -, h⟩ := apow_real x m
    rw [h, Complex.conj_ofReal]
  let β : SB (Matrix (Fin n) (Fin d) (Fv F v)) →ₗ[ℂ] SB (Matrix (Fin n') (Fin d) (Fv F v)) →ₗ[ℂ] ℂ :=
    LinearMap.mk₂ ℂ (fun a b => L (j' b.1) (T (j (star a.1)))) (fun _ _ _ => by simp) (fun _ _ _ => by simp)
      (fun _ _ _ => by simp) fun _ _ _ => by simp
  let g₁ := Matrix.GeneralLinearGroup.mkOfDetNeZero g₀.1ᵀ (by rw [Matrix.det_transpose]; exact g₀.det_ne_zero)
  have key := TC.locBil hL v e (ν * N⁻¹) (fun t ht h => hne (Units.ext ?_)) β (fun a b h₀ => ?_)
    ⟨_, sb_star (b.1 (p1 v))⟩ ⟨_, b'.1 p1'⟩ g₁
  · have k2 := t3 _ _ (p1 v) _ (acts_of_reads hu j2 (p1 v)).2
    rw [omB_left, map_smul, map_smul, t1, Function.update_eq_self] at k2
    change L _ (T (j (star fun y => star (ι (φ v) (g₀.1ᵀ * y))))) = _ * L _ (T (j (star (star _)))) at key
    rw [star_star, j2 _ (p1 v), j2' _ p1', t1 (φ v), Function.update_eq_self, hN,
      show Matrix.GeneralLinearGroup.det g₁ = gdet g₀ from Units.ext (Matrix.det_transpose _), ← Pi.star_def, star_star] at key
    change L _ (om (u, 1) _) = _
    rw [k2, map_smulₛₗ, key, map_mul, cj (n1 _), cj', smul_eq_mul]
    have := apow_ne_zero (gdet g₀) ((d : ℂ) / 2)
    field_simp
  · obtain ⟨r, hr, e1⟩ := apow_real (unifAt v) d
    rw [hN, e1, mul_inv_eq_iff_eq_mul₀ (by exact_mod_cast hr.ne'), ← Complex.ofReal_mul] at h
    have := n1 (unifAt v)
    rw [h, Complex.norm_real, Real.norm_of_nonneg (mul_pos ht hr).le] at this
    rw [h, this]; rfl
  · obtain ⟨h, r1, r2, r3⟩ := hh h₀
    have a1 := j1 _ (sb_star a.2)
    have b1 := j1' _ b.2
    have k1 := t3 _ _ a1.1 _ (acts_of_reads r1 j2 a1.1).2
    have k3 := r3 _ b1.1 _ (acts_of_reads r2 j2' b1.1).1 (acts_of_reads r2 j2' b1.1).2 _ (t2 _ a1.1)
    rw [k1, a1.2, b1.2, omB_right, omB_right] at k3
    simp only [map_smul, map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, map_mul, cj (n2 _), cj'] at k3
    have hd : (d : ℂ) / 2 = (n : ℂ) / 2 + (n' : ℂ) / 2 := by
      have := Fintype.card_congr e
      simp only [Fintype.card_sum, Fintype.card_fin] at this
      rw [← this]; push_cast; ring
    change L (j' fun y => b.1 (y * h₀.1)) (T (j fun y => star a.1 (y * h₀.1))) = _ * L (j' b.1) (T (j (star a.1)))
    rw [← k3, hN, hν, hd, apow_add]
    have := apow_ne_zero (gdet h₀) ((n : ℂ) / 2)
    have := apow_ne_zero (gdet h₀) ((n' : ℂ) / 2)
    simp only [Units.val_div_eq_div_val]
    field_simp

theorem exists_ext {A A' : Type} [AddCommGroup A] [Module ℂ A] [AddCommGroup A'] [Module ℂ A'] (S : Submodule ℂ A)
    (S' : Submodule ℂ A') (P : A → A' → ℂ) (h1 : ∀ a ∈ S, ∀ b ∈ S, ∀ x ∈ S', P (a + b) x = P a x + P b x)
    (h2 : ∀ (c : ℂ) a x, P (c • a) x = c * P a x) (h3 : ∀ a ∈ S, ∀ x ∈ S', ∀ y ∈ S', P a (x + y) = P a x + P a y)
    (h4 : ∀ (c : ℂ) a, ∀ x ∈ S', P a (c • x) = star c * P a x) :
    ∃ L : A →ₗ[ℂ] A' →ₛₗ[starRingEnd ℂ] ℂ, ∀ a ∈ S, ∀ x ∈ S', L a x = P a x := by
  obtain ⟨q, hq⟩ := S.subtype.exists_leftInverse_of_injective S.ker_subtype
  obtain ⟨q', hq'⟩ := S'.subtype.exists_leftInverse_of_injective S'.ker_subtype
  refine ⟨LinearMap.mk₂'ₛₗ (RingHom.id ℂ) (starRingEnd ℂ) (fun a x => P (q a) (q' x))
    (fun a b x => by simpa using h1 _ (q a).2 _ (q b).2 _ (q' x).2) (fun c a x => by simpa using h2 c (q a) (q' x))
    (fun a x y => by simpa using h3 _ (q a).2 _ (q' x).2 _ (q' y).2) (fun c a x => by simpa using h4 c (q a) _ (q' x).2),
    fun a ha x hx => ?_⟩
  exact congrArg₂ P (congrArg Subtype.val (LinearMap.congr_fun hq ⟨a, ha⟩)) (congrArg Subtype.val (LinearMap.congr_fun hq' ⟨x, hx⟩))

theorem uniW (hE : EpsOf) (hU : PositivityTheory.ThKF.Unimod) (hp : IsPair B M χX χW om r s r' s') :
    Countable (ratU σ W.J) ∧ ∀ μ : Measure (UA σ W.J), μ.IsHaarMeasure → μ.IsMulRightInvariant :=
  let h := hU F E σ hp.base.cm d W.J (-1) (fun i j => by simpa using hp.skew.skew i j)
    (hE F E σ B hp.base d W _ _ (Or.inr hp.skew)).1.2
  ⟨h.1, h.2.2⟩

theorem th_right (hB : ThetaBasic) (hE : EpsOf) (hU : PositivityTheory.ThKF.Unimod) (hp : IsPair B M χX χW om r s r' s')
    {μ : Measure (UA σ W.J)} {D : Set (UA σ W.J)} (hμ : μ.IsHaarMeasure) (hD : IsFundamentalDomain (ratU σ W.J) D μ) {f}
    (hf : IsRapid (Y := W) f) {Ψ} (hΨ : Ψ ∈ schA F _) (g h) : th om μ D (fun x => f (x * h)) (om (1, h) Ψ) g = th om μ D f Ψ g := by
  obtain ⟨h1, h2⟩ := uniW hE hU hp
  have := h2 μ hμ
  have : BorelSpace (UA σ W.J) := ⟨rfl⟩
  have e : ∀ x, theta om (om (1, h) Ψ) g x = theta om Ψ g (x * h) := fun x => by
    simp only [theta, ← Module.End.mul_apply, ← map_mul, Prod.mk_mul_mk, mul_one]
  simp only [th, pet, e]
  exact PositivityTheory.ThKF.L2.integral_right hD (fun x => f x * star (theta om Ψ g x))
    (fun γ hγ x => by simp only [hf.2.1 γ hγ, theta_rat hB hp hΨ g γ hγ]) h

theorem th_addf (hB : ThetaBasic) (hE : EpsOf) (hV : FinVolU) (hp : IsPair B M χX χW om r s r' s') {μ : Measure (UA σ W.J)}
    {D : Set (UA σ W.J)} (hμ : μ.IsHaarMeasure) (hD : IsFundamentalDomain (ratU σ W.J) D μ) {ι : Type} (S : Finset ι)
    {f : ι → UA σ W.J → ℂ} (hf : ∀ i, IsRapid (Y := W) (f i)) {Ψ} (hΨ : Ψ ∈ schA F _) (g) :
    th om μ D (∑ i ∈ S, f i) Ψ g = ∑ i ∈ S, th om μ D (f i) Ψ g := by
  simp only [th, pet, Finset.sum_apply, Finset.sum_mul]
  exact integral_finsetSum _ fun i _ => th_int hB hE hV hp hμ hD (hf i) hΨ g

theorem pairLoc_of (hB : ThetaBasic) (hE : EpsOf) (hV : FinVolU) (hU : PositivityTheory.ThKF.Unimod) (hL : LocDist) (hS : SplitB) :
    PairLoc := by
  intro F E _ _ _ _ _ σ B n d X W M χX χW om r s r' s' hp n' X' M' χX' χW' om' r₁ s₁ hp' hn hχ v t hne μ D hμ hD f
    ⟨m, T, φ, hT, e⟩ Ψ hΨ u hu g
  rw [e, th_addf hB hE hV hp hμ hD _ (fun i => (hT i).1.1 _ (hT i).2) hΨ, th_addf hB hE hV hp hμ hD _ (fun i => (hT i).1.1 _ (hT i).2) hΨ]
  refine Finset.sum_congr rfl fun i _ => ?_
  obtain ⟨⟨t1, t2⟩, t3⟩ := hT i
  obtain ⟨L, hLP⟩ := exists_ext (SB _) (schA F (Fin n × Fin d)) (fun a x => th om μ D (T i a) x g)
    (fun a ha b hb x hx => by
      simp only [th, pet, map_add (f := _), Pi.add_apply, add_mul]
      exact integral_add (th_int hB hE hV hp hμ hD (t1 a ha) hx g) (th_int hB hE hV hp hμ hD (t1 b hb) hx g))
    (fun c a x => by simp only [th, pet, map_smul, Pi.smul_apply, smul_eq_mul, mul_assoc, integral_const_mul])
    (fun a ha x hx y hy => th_add hB hE hV hp hμ hD (t1 a ha) hx hy g) fun c a x hx => th_smul hp μ D _ c hx g
  obtain ⟨o1, ι, b, l1, r1⟩ := hS F E σ B n d X W M χX χW om r s r' s' hp v t
  obtain ⟨-, ι', b', -, r2⟩ := hS F E σ B n' d X' W M' χX' χW' om' r₁ s₁ r' s' hp' v t
  obtain ⟨g₀, hg₀⟩ := l1 u hu
  have pr := (IsUWeilPair.isUSplitting hp.weil).pres
  rw [← th_left, ← hLP _ t3 _ (pr _ _ hΨ), ← hLP _ t3 _ hΨ]
  refine inv_loc₂ hL (finSumFinEquiv.trans (finCongr hn)) b b' (ν' := chrW χW' t) (α' := chrW χX' t) (om' := om')
    (fun x => Circle.norm_coe _) (fun x => Circle.norm_coe _) (fun x => ?_) hne L (fun h₀ => ?_) hg₀ _ t3 Ψ hΨ
  · simp only [hχ, chrW, locChar, MonoidHom.comp_apply, MonoidHom.div_apply, map_div]
  · obtain ⟨h, hh, e₀⟩ := o1 h₀
    refine ⟨h, r1 h hh h₀ e₀, r2 h hh h₀ e₀, fun a ha a₁ ha₁ hA x hx => ?_⟩
    rw [hLP _ ha₁ _ (pr _ _ hx), hLP _ ha _ hx, t2 h hh a ha a₁ ha₁ hA, th_right hB hE hU hp hμ hD (t1 a ha) hx]

end PositivityTheory.ThKEnd.Orth

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.PairLocOf =====

-- ===== clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConstOf =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConstOf", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.HodgeTateFromSandwich\npublic import Development.WeilBound.ThetaLifts.LatticeBasics.SchToPol\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConst\npublic import Development.WeilBound.ThetaLifts.FrameEstimates.HodgeTateFromSandwich\npublic import Development.WeilBound.ThetaLifts.FrameEstimates.ThickFrames\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.ThKEnd.Orth

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.Dbl

open PositivityTheory.ThKEst

theorem chrW_inv_ne {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {v : Pl F} {χ χ' : Chr F E}
    {t : E →ₐ[F] Fv F v} {x} (h : chrW (χ / χ') t x ≠ 1) : chrW (χ' / χ) t x ≠ 1 := fun e => h (by
  simp only [chrW, locChar, MonoidHom.comp_apply, MonoidHom.div_apply] at e ⊢
  rw [map_div, div_eq_one] at e ⊢
  exact e.symm)

theorem sigThConst_of (hP : TriplePair) (hN : GoodNe) (hC : ConstOfGood) (h1 : LocDecomp) (h2 : PairLoc) (h3 : ThAut) :
    SigThConst := by
  classical
  intro F E _ _ _ _ _ σ B a a' G X om om' hT f hf hr μ D hμ hD
  obtain ⟨p, p', -⟩ := hP F E σ B a a' G X om om' hT
  have ha' : 2 ≤ a' := by have := hT.geo.aBig; omega
  have ha : 2 ≤ a := by have := hT.geo.lt; omega
  have g : ∀ v ∉ insert B.v₁ X.T, SplitsFully E v → X.Good v ∧ v ≠ B.v₁ := fun v hv hs =>
    ⟨⟨fun h => hv (Finset.mem_insert_of_mem h), hs⟩, fun h => hv (h ▸ Finset.mem_insert_self _ _)⟩
  refine ⟨fun Ψ hΨ => ?_, fun Ψ hΨ => ?_⟩
  · obtain ⟨c, i⟩ := h3 F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p μ D hμ hD f hr Ψ hΨ
    refine hC F E σ B a G.V _ _ hT.base hT.geo.hV ha (insert B.v₁ X.T) _ c i fun v hv hs u hu x => ?_
    obtain ⟨⟨t⟩, ht⟩ := hN F E σ B a a' G X om om' hT v (g v hv hs).1
    exact h2 F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p _ _ _ _ _ _ _ _ p' rfl rfl v t (chrW_inv_ne (ht t)) μ D hμ hD f
      (h1 F E σ B a a' G X om om' hT f hf hr v (g v hv hs).1 (g v hv hs).2).2 Ψ hΨ u hu x
  · obtain ⟨c, i⟩ := h3 F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p' μ D hμ hD f hr Ψ hΨ
    refine hC F E σ B a' G.V' _ _ hT.base hT.geo.hV' ha' (insert B.v₁ X.T) _ c i fun v hv hs u hu x => ?_
    obtain ⟨⟨t⟩, ht⟩ := hN F E σ B a a' G X om om' hT v (g v hv hs).1
    exact h2 F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p' _ _ _ _ _ _ _ _ p (add_comm _ _) rfl v t (ht t) μ D hμ hD f
      (h1 F E σ B a a' G X om om' hT f hf hr v (g v hv hs).1 (g v hv hs).2).1 Ψ hΨ u hu x

theorem orthIso_of (hB : ThetaBasic) (hP : TriplePair) (hW : WeilConv) (hD : DomSoU) (hF : SoFin) (hS : PolSch) (hN : GoodNe)
    (h1 : SigRapid) (h2 : SigThConst) (h3 : ThZero) (h4 : ThPerp) : OrthIso := by
  intro F E _ _ _ _ _ σ B a a' G X om om' hT f hf hc
  obtain ⟨p, p', w⟩ := hP F E σ B a a' G X om om' hT
  have hr := h1 F E σ B a a' G X om om' hT f hf hc
  have hk := h2 F E σ B a a' G X om om' hT f hf hr
  have hn := (hN F E σ B a a' G X om om' hT _ hT.chars.good).2
  have e1 := hT.geo.aBig
  have e2 := hT.geo.lt
  have e3 := hT.geo.eBig
  refine ⟨fun hp Φ hΦ => ?_, fun hq Φ hΦ => ?_⟩
  · have s := hS F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p Φ hΦ
    obtain ⟨c1, c2⟩ := (hW F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p (Or.inl w)).1 Φ s
    exact h4 F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p f hr Φ s c1 c2 fun μ D hμ hD =>
      h3 F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p (by omega) hp (by omega) (by omega)
        (fun t e => chrW_inv_ne (hn t) (by rw [e]; rfl)) μ D hμ hD f hr (hk μ D hμ hD).1 Φ s
  · have s := hS F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p' Φ hΦ.1
    obtain ⟨m, f₀, φ, hφ, rfl⟩ := (hF F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p').1 Φ hΦ.2
    obtain ⟨c1, c2, -⟩ := dom_sum hB p' (dom_of_domSoU hD p') f₀ φ hφ fun i => (hφ i).1
    exact h4 F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p' f hr _ s c1 c2 fun μ D hμ hD =>
      h3 F E σ B _ _ _ _ _ _ _ _ _ _ _ _ p' hq (by omega) (by omega) (by omega)
        (fun t e => hn t (by rw [Chars.ν, e]; rfl)) μ D hμ hD f hr (hk μ D hμ hD).2 _ s

end PositivityTheory.ThKEnd.Orth

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConstOf =====

-- ===== clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConstFin =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConstFin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\npublic import Development.WeilBound.ThetaLifts.CartanFactorisation.CartanConj\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.ActsOfReads\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConst\npublic import Development.WeilBound.ThetaLifts.FrameEstimates.HodgeTateFromSandwich\npublic import Development.WeilBound.ThetaLifts.LatticeBasics.SchToPol\npublic import Development.WeilBound.ThetaLifts.TowerModels.PlaneHerm\npublic import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.PfDict\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.LocDecompOf\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.PairLocOf\nimport Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.QhtUnbdd\nimport Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.RapidBound\npublic import Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConstOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.ThKEnd.Orth

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.Dbl

open PositivityTheory.ThKEst PositivityTheory.KCo

theorem splitB : SplitB := by
  intro F E _ _ _ _ _ σ B n d X W M χX χW om r s r' s' hp v t
  obtain ⟨⟨ι, hι⟩, -, h2, h3⟩ := dictionary_extended F E σ n d B X W M om χX χW hp.base ⟨_, _, hp.herm⟩ ⟨_, _, hp.skew⟩ hp.weil v t
  exact ⟨h2, ι, hι.bij, fun g hg => ⟨Matrix.GeneralLinearGroup.map (piW t) g.1, (h3 ι hι).1 g hg _ rfl⟩, (h3 ι hι).2⟩

theorem sigThConst_fin (hB : ThetaBasic) (hG : GrpTop) (hE : EpsOf) (hV : FinVolU) (hP : TriplePair) (hK : KDecay) (hF : SoFin)
    (hU : PositivityTheory.ThKF.Unimod) (hS : PolSch) (hN : GoodNe) (hC : ConstOfGood) (hL : LocDist)
    (h1 : KReal) (h2 : KFin) (h3 : KCoinv) : SigThConst :=
  sigThConst_of hP hN hC (locDecomp_of hB hE hU hP hK hF hS dictionary_statement hN h1 h2 h3) (pairLoc_of hB hE hV hU hL splitB) (thAut_of hB hG hE hV)

theorem orthIso_fin (hB : ThetaBasic) (hH : PositivityTheory.ThKG.Tow.PlaneHerm) (hG : GrpTop) (hE : EpsOf) (hV : FinVolU) (hA : SiegelAll)
    (hP : TriplePair) (hW : WeilConv) (hO : SoDecay) (hU : DomSoU) (hF : SoFin) (hS : PolSch) (hN : GoodNe)
    (h1 : SigRapid) (h2 : SigThConst) : OrthIso :=
  orthIso_of hB hP hW hU hF hS hN h1 h2 (thZero_of hB hE hV hA hO hF hH dictionary_statement) (thPerp_of hB hG hE hV)

end PositivityTheory.ThKEnd.Orth

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.EigenvalueEndgame.OrthogonalDecomposition.SigThConstFin =====
