module

public import Mathlib.LinearAlgebra.DFinsupp
public import Mathlib.LinearAlgebra.TensorProduct.Defs
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PairingExtends
public import Development.WeilBound.CoreStatements.HodgeTatePoints.Twpdiv
public import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots
public import Development.WeilBound.CoreStatements.HodgeTatePoints.ExistsBialgHom
public import Development.WeilBound.CoreStatements.HodgeTatePoints.Twomega
public import Development.AutomorphicSpectrum.Statements.GeometryStatements.IsPolLatticePlane
public import Mathlib.LinearAlgebra.BilinearForm.TensorProduct
public import Mathlib.LinearAlgebra.Dimension.OrzechProperty
public import Mathlib.RingTheory.Henselian
public import Development.AbelianVarietyTheory.Definitions.Divisors.ToSpanSingletonConstGenInjective
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConvEqOneOfForallPairing
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DUnitMemRangeOfMemKerIdeal
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DerivationDivisibleOfCocomm
public import ReciprocityTheory.DualLattices.BlockOneMulMulBlockOne
public import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.FarguesHodgeTate
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CompleteIntegersProperties
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.SplitTori.SplitTorusAff
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsIntegralOfDivisibleCharacters
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormSmulLeOneOfPrimitiveBoundedPowers
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisRest, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupFromTower, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerCompatibilityStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerDualStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerFreeStatement, Development.WeilBound.CoreStatements.HodgeTatePoints.GiFree, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedLatticeTowerExists, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvdMulOfGroupLikeVal, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TateMapDualHomBidual, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedDivisibleGroupExists

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisRest =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisRest", "h": "module\n\npublic import Mathlib.LinearAlgebra.DFinsupp\npublic import Mathlib.LinearAlgebra.TensorProduct.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem UpperTheory.Reformulated.B.DYlb6.main :
    ∀ {R W T : Type} [inst : CommRing R] [inst_1 : AddCommGroup W] [inst_2 : AddCommGroup T] [inst_3 : _root_.Module R T]
      (j : TensorProduct ℤ R W ≃ₗ[R] T),
      Submodule.span R (Set.range fun (a : W) ↦ (j : TensorProduct ℤ R W → T) ((1 : R) ⊗ₜ[ℤ] a)) = ⊤ := by
  intro R W T _ _ _ _ j
  rw [Submodule.eq_top_iff']
  intro t
  obtain ⟨x, rfl⟩ := j.surjective t
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul r w =>
    have h : r ⊗ₜ[ℤ] w = r • ((1 : R) ⊗ₜ[ℤ] w) := by
      rw [TensorProduct.smul_tmul', smul_eq_mul, mul_one]
    rw [h, map_smul]
    exact Submodule.smul_mem _ r (Submodule.subset_span ⟨w, rfl⟩)
  | add x y hx hy =>
    rw [map_add (f := _)]
    exact Submodule.add_mem _ hx hy
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisRest =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupFromTower =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupFromTower", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PairingExtends\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.Twpdiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.SplitTori.SplitTorusAff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct NumberField GlobalTheory GlobalTheory.PDivGroup GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.BT GlobalTheory.CompanionTheory.Ar.HT ReciprocityTheory.ChartRestriction.G.Semi

namespace GlobalTheory.CompanionTheory.Ar.HT

theorem tower_pdiv_exists : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (O : Type) [CommRing O] [IsDomain O] [Algebra O C] (hv : v.Integers O) (hp : v (p : C) < 1) (hO : IsAdicComplete (Ideal.span {(p : O)}) O) (La : Type) [AddCommGroup La] [Module.Free ℤ La] [Module.Finite ℤ La] (L : Type) [AddCommGroup L] [Module O L] (X : OrdTower p O La L), ∃ (G : PDivGroup p O) (e : ∀ n, G.A n ≃ₐ[O] X.A n) (τ : La →+ G.Tate), X.Realises G e τ ∧ G.height = Module.finrank ℤ La ∧ ∃ j : ℤ_[p] ⊗[ℤ] La ≃ₗ[ℤ_[p]] G.Tate, ∀ a, j (1 ⊗ₜ a) = τ a :=
  @PositivityTheory.HtPt.Twpdiv.tower_pdiv

end GlobalTheory.CompanionTheory.Ar.HT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupFromTower =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerCompatibilityStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerCompatibilityStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PairingExtends\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.Twpdiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.SplitTori.SplitTorusAff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct NumberField GlobalTheory GlobalTheory.PDivGroup GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.BT GlobalTheory.CompanionTheory.Ar.HT ReciprocityTheory.ChartRestriction.G.Semi
open Coalgebra Bialgebra PositivityTheory.HtPt.Twpdiv in

theorem _root_.GlobalTheory.T.divisible_group_tower_compatibility :
    ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C]
      (v : Valuation C NNReal) (O : Type) [CommRing O] [IsDomain O] [Algebra O C]
      (hv : v.Integers O) (hp : v (p : C) < 1) (hO : IsAdicComplete (Ideal.span {(p : O)}) O)
      (La : Type) [AddCommGroup La] [Module.Free ℤ La] [Module.Finite ℤ La]
      (L : Type) [AddCommGroup L] [Module O L] (X : OrdTower p O La L)
      (G : PDivGroup p O) (e : ∀ n, G.A n ≃ₐ[O] X.A n) (τ : La →+ G.Tate)
      (hre : X.Realises G e τ),
      (∀ (φ : La →+ La) (dφ : L →ₗ[O] L), X.Acts φ dφ → ∃ f : G ⟶ G,
        (∀ a, tateMap G G O f (τ a) = τ (φ a)) ∧ ∀ n (g : G.A n) (a : La),
          (e n (f.app n g)).1 (lev p n a) = (e n g).1 (lev p n (φ a))) ∧
      ∀ (H : PDivGroup p O) (f f' : G ⟶ H),
        (∀ a, tateMap G H O f (τ a) = tateMap G H O f' (τ a)) → f = f' := by
  intro p _ C _ _ _ v O _ _ _ hv hp hO La _ _ _ L _ _ X G e τ hre
  let ev (n : ℕ) (t : LevGrp La p n) : G.A n →ₐ[O] O := (evalAt (X.A n) t).comp (e n).toAlgHom
  have ev_apply (n : ℕ) (t : LevGrp La p n) (g : G.A n) : ev n t g = (e n g).1 t := rfl
  have ev_sep (n : ℕ) : PositivityTheory.HtPt.Twpdiv.Sep (ev n) :=
    fun _ _ h => (e n).injective (Subtype.ext (funext h))
  have ev_lev (n : ℕ) (a : La) : ev n (lev p n a) = (τ a).pt n :=
    AlgHom.ext fun g => (hre.pt a n g).symm
  have tate_pt {H : PDivGroup p O} (f : G ⟶ H) (a : La) (n : ℕ) (g : H.A n) :
      (tateMap G H O f (τ a)).pt n g = (τ a).pt n (f.app n g) := rfl
  constructor
  · intro φ dφ h
    let levMap (n : ℕ) : LevGrp La p n →* LevGrp La p n :=
      AddMonoidHom.toMultiplicative (Submodule.mapQ _ _ φ.toIntLinearMap (by
        rintro _ ⟨b, rfl⟩
        exact ⟨φ b, (map_nsmul φ _ b).symm⟩)).toAddMonoidHom
    have levMap_lev (n : ℕ) (a : La) : levMap n (lev p n a) = lev p n (φ a) := rfl
    have liftable (n : ℕ) (g : G.A n) : ∃ u : G.A n, ∀ t, ev n t u = ev n (levMap n t) g := by
      let pulled (t : LevGrp La p n) : O := (e n g).1 (levMap n t)
      have hpulled : pulled ∈ X.A n :=
        (h n (e n g).1 pulled fun a => congrArg (e n g).1 (levMap_lev n a)).1 (e n g).2
      let u : X.A n := ⟨pulled, hpulled⟩
      refine ⟨(e n).symm u, fun t => ?_⟩
      rw [ev_apply, AlgEquiv.apply_symm_apply, ev_apply]
    let pull (n : ℕ) : G.A n →ₐ[O] G.A n :=
      Ord.liftTo (ev n) (ev_sep n) (fun t => ev n (levMap n t)) (liftable n)
    have ev_pull (n : ℕ) (t : LevGrp La p n) : (ev n t).comp (pull n) = ev n (levMap n t) :=
      Ord.ev_liftTo _ _ _ _ t
    have pull_apply (n : ℕ) (t : LevGrp La p n) (g : G.A n) :
        ev n t (pull n g) = ev n (levMap n t) g := DFunLike.congr_fun (ev_pull n t) g
    have pull_lev (n : ℕ) (a : La) (g : G.A n) :
        ev n (lev p n a) (pull n g) = ev n (lev p n (φ a)) g := by
      rw [pull_apply, levMap_lev]
    have ev_one (n : ℕ) (g : G.A n) : ev n 1 g = counit (R := O) g := by
      rw [← lev_zero p n, ev_lev, map_zero]
      rfl
    have ev_mul (n : ℕ) (s t : LevGrp La p n) (g : G.A n) :
        pair (ev n s) (ev n t) (comul (R := O) g) = ev n (s * t) g := by
      obtain ⟨a, rfl⟩ := lev_surjective p n s
      obtain ⟨b, rfl⟩ := lev_surjective p n t
      rw [← lev_add, ev_lev, ev_lev, ev_lev, map_add]
      exact (AlgHom.convMul_apply ((τ a).conv n) ((τ b).conv n) g).symm
    let app (n : ℕ) : G.A n →ₐc[O] G.A n :=
      BialgHom.ofAlgHom (pull n)
        (AlgHom.ext fun g => by
          change counit (R := O) (pull n g) = counit (R := O) g
          rw [← ev_one, ← ev_one, pull_apply, map_one])
        (AlgHom.ext fun g => (ev_sep n).pair (ev_sep n) _ _ fun z => by
          change pair (ev n z.1) (ev n z.2) (Algebra.TensorProduct.map _ _ (comul (R := O) g)) =
            pair (ev n z.1) (ev n z.2) (comul (R := O) (pull n g))
          rw [pair_map, ev_pull, ev_pull, ev_mul, ev_mul, pull_apply, map_mul])
    let f : G ⟶ G :=
      { app := app
        comm n := BialgHom.ext fun g => ev_sep n _ _ fun t => by
          obtain ⟨a, rfl⟩ := lev_surjective p n t
          calc
            ev n (lev p n a) (G.res n (pull (n + 1) g)) =
                ev (n + 1) (lev p (n + 1) (p • a)) (pull (n + 1) g) := hre.res n _ a
            _ = ev (n + 1) (lev p (n + 1) (φ (p • a))) g := pull_lev (n + 1) (p • a) g
            _ = ev (n + 1) (lev p (n + 1) (p • φ a)) g := by rw [map_nsmul]
            _ = ev n (lev p n (φ a)) (G.res n g) := (hre.res n g (φ a)).symm
            _ = ev n (lev p n a) (pull n (G.res n g)) := (pull_lev n a (G.res n g)).symm }
    refine ⟨f, fun a => TateOver.ext (funext fun n => AlgHom.ext fun g => ?_), fun n g a => pull_lev n a g⟩
    rw [tate_pt, ← ev_lev, ← ev_lev]
    exact pull_lev n a g
  · intro H f f' hf
    refine GlobalTheory.PDivGroup.Hom.ext (funext fun n => BialgHom.ext fun g => ev_sep n _ _ fun t => ?_)
    obtain ⟨a, rfl⟩ := lev_surjective p n t
    rw [ev_lev, ← tate_pt, ← tate_pt, hf]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerCompatibilityStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerDualStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerDualStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PairingExtends\npublic import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.ExistsBialgHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.SplitTori.SplitTorusAff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct NumberField GlobalTheory GlobalTheory.PDivGroup GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.BT GlobalTheory.CompanionTheory.Ar.HT ReciprocityTheory.ChartRestriction.G.Semi
open Coalgebra WithConv


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerDualStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerFreeStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerFreeStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PairingExtends\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.Twomega\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.SplitTori.SplitTorusAff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct NumberField GlobalTheory GlobalTheory.PDivGroup GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.BT GlobalTheory.CompanionTheory.Ar.HT ReciprocityTheory.ChartRestriction.G.Semi

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerFreeStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.GiFree =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.GiFree", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.IsPolLatticePlane\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.BilinearForm.TensorProduct\npublic import Mathlib.LinearAlgebra.Dimension.OrzechProperty\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct NumberField GlobalTheory GlobalTheory.PDivGroup GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.BT GlobalTheory.CompanionTheory.Ar.HT ReciprocityTheory.ChartRestriction.G.Semi

namespace PositivityTheory.HtPt.Gi

theorem free_on_lift : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (O : Type) [CommRing O] [IsDomain O] [Algebra O C] (hv : v.Integers O) (hp : v (p : C) < 1) (hO : IsAdicComplete (Ideal.span {(p : O)}) O) (E : Type) [Field E] [NumberField E] (c : E ≃+* E) (La : Type) [AddCommGroup La] [Module (𝓞 E) La] (EF : La →ₗ[ℤ] La →ₗ[ℤ] ℤ) (N : ℕ) (u : Fin N → La), IsPolLattice c p EF u → ∃ (ρ : 𝓞 E →+* Module.End C (C ⊗[ℤ] La)) (T : Submodule O (C ⊗[ℤ] La)) (e : C ⊗[ℤ] La →ₗ[C] C ⊗[ℤ] La →ₗ[C] C), (∀ (a : 𝓞 E) (x : La), ρ a (1 ⊗ₜ x) = 1 ⊗ₜ (a • x)) ∧ T = Submodule.span O (Set.range fun x : La => (1 : C) ⊗ₜ[ℤ] x) ∧ IsFreeOn ρ T (fun i => 1 ⊗ₜ u i) ∧ (∀ x y : La, e (1 ⊗ₜ x) (1 ⊗ₜ y) = (EF x y : C)) ∧ (∀ x, e x x = 0) ∧ (∀ y, (∀ x, e x y = 0) → y = 0) ∧ dualLat e T = T ∧ ∀ (a : 𝓞 E) x y, e (ρ a x) y = e x (ρ (RingOfIntegers.mapRingEquiv c a) y) := by
  intro p _ C _ _ _ v O _ _ _ hv hp hO E _ _ c La _ _ EF N u h
  classical
  have := h.free
  have := h.finite
  let ρ : 𝓞 E →+* Module.End C (C ⊗[ℤ] La) :=
    (Module.End.baseChangeHom ℤ C La).toRingHom.comp (Module.toModuleEnd ℤ La)
  have hρ : ∀ (a : 𝓞 E) (s : C) (x : La), ρ a (s ⊗ₜ x) = s ⊗ₜ (a • x) := fun a s x => rfl
  let e : C ⊗[ℤ] La →ₗ[C] C ⊗[ℤ] La →ₗ[C] C := LinearMap.BilinForm.baseChange C EF
  have he : ∀ (s t : C) (x y : La), e (s ⊗ₜ x) (t ⊗ₜ y) = (EF x y : C) * (s * t) := fun s t x y => by
    simp only [e, LinearMap.BilinForm.baseChange_tmul, zsmul_eq_mul]
  have he1 : ∀ x y : La, e (1 ⊗ₜ x) (1 ⊗ₜ y) = (EF x y : C) := fun x y => by rw [he]; simp
  let T : Submodule O (C ⊗[ℤ] La) := Submodule.span O (Set.range fun x : La => (1 : C) ⊗ₜ[ℤ] x)
  have hT : ∀ x : La, (1 : C) ⊗ₜ[ℤ] x ∈ T := fun x => Submodule.subset_span ⟨x, rfl⟩
  let b := Module.Free.chooseBasis ℤ La
  let B := Algebra.TensorProduct.basis C b
  have hB : ∀ i, B i = 1 ⊗ₜ b i := fun i => Algebra.TensorProduct.basis_apply b i
  choose b' hb' using fun i => h.unimod.2 (b.coord i)
  have hrep : ∀ i y, e (1 ⊗ₜ b' i) y = B.repr y i := by
    intro i y
    have : e (1 ⊗ₜ b' i) = B.coord i := B.ext fun j => by
      rw [Module.Basis.coord_apply, B.repr_self, hB, he1, hb', Module.Basis.coord_apply, b.repr_self]
      simp only [Finsupp.single_apply]
      split_ifs <;> simp
    rw [this]; rfl
  have hskew : ∀ x y, EF x y = -EF y x := fun x y => by
    have := h.alt (x + y)
    simp only [map_add (f := _), LinearMap.add_apply, h.alt] at this
    linarith
  have eskew : ∀ x y, e x y = -e y x := by
    intro x y
    induction x with
    | add a b ha hb => simp only [map_add (f := _), LinearMap.add_apply, ha, hb]; ring
    | tmul s x =>
      induction y with
      | add a b ha hb => simp only [map_add (f := _), LinearMap.add_apply, ha, hb]; ring
      | tmul t y => rw [he, he, hskew]; push_cast; ring
  have hTb : T = Submodule.span O (Set.range B) := by
    apply le_antisymm
    · rw [Submodule.span_le]
      rintro _ ⟨x, rfl⟩
      change (1 : C) ⊗ₜ[ℤ] x ∈ Submodule.span O (Set.range B)
      rw [← b.sum_repr x, tmul_sum]
      refine Submodule.sum_mem _ fun i _ => ?_
      rw [tmul_smul, ← hB]
      exact zsmul_mem (Submodule.subset_span (R := O) (Set.mem_range_self (f := B) i)) _
    · rw [Submodule.span_le]
      rintro _ ⟨i, rfl⟩
      rw [hB]; exact hT _
  have hsp : Submodule.span C (T : Set (C ⊗[ℤ] La)) = ⊤ := by
    rw [hTb, Submodule.span_span_of_tower, B.span_eq]
  let w : Fin N × Module.Free.ChooseBasisIndex ℤ (𝓞 E) → C ⊗[ℤ] La := fun q =>
    ρ (RingOfIntegers.basis E q.2) (1 ⊗ₜ u q.1)
  have hTw : T = Submodule.span O (Set.range w) := by
    apply le_antisymm
    · refine Submodule.le_of_le_smul_of_le_jacobson_bot (I := Ideal.span {(p : O)}) ?_
        (IsAdicComplete.le_jacobson_bot _) ?_
      · rw [hTb]; exact Submodule.fg_span (Set.finite_range B)
      · refine Submodule.span_le.2 ?_
        rintro _ ⟨x, rfl⟩
        obtain ⟨a, x', rfl⟩ := h.span x
        change (1 : C) ⊗ₜ[ℤ] _ ∈ Submodule.span O (Set.range w) ⊔ Ideal.span {(p : O)} • T
        rw [tmul_add]
        refine Submodule.add_mem_sup ?_ ?_
        · rw [tmul_sum]
          refine Submodule.sum_mem _ fun i _ => ?_
          rw [← (RingOfIntegers.basis E).sum_repr (a i), Finset.sum_smul, tmul_sum]
          refine Submodule.sum_mem _ fun k _ => ?_
          rw [smul_assoc, tmul_smul]
          exact zsmul_mem (Submodule.subset_span (R := O) (Set.mem_range_self (f := w) (i, k))) _
        · rw [tmul_smul, ← Nat.cast_smul_eq_nsmul O]
          exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) (hT _)
    · rw [Submodule.span_le]
      rintro _ ⟨q, rfl⟩
      exact hT _
  refine ⟨ρ, T, e, fun a x => hρ a 1 x, rfl, ⟨?_, hsp, hTw⟩, he1, fun x => ?_, fun y hy => ?_, ?_, fun a x y => ?_⟩
  · refine linearIndependent_of_top_le_span_of_card_eq_finrank (b := w) ?_ ?_
    · rw [← hsp, hTw, Submodule.span_span_of_tower]
    · rw [Module.finrank_baseChange, h.rank, Fintype.card_prod, Fintype.card_fin,
        ← Module.finrank_eq_card_chooseBasisIndex, RingOfIntegers.rank]
  · have := eskew x x
    have h2 : (2 : C) * e x x = 0 := by linear_combination this
    simpa using h2
  · exact B.ext_elem fun i => by rw [← hrep, hy]; simp
  · apply le_antisymm
    · intro y hy
      rw [hTb, ← B.sum_repr y]
      refine Submodule.sum_mem _ fun i _ => ?_
      obtain ⟨o, ho⟩ := hy _ (hT (b' i))
      rw [← hrep, ← ho, algebraMap_smul]
      exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
    · rw [Submodule.span_le]
      rintro _ ⟨y, rfl⟩ x hx
      induction hx using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨x, rfl⟩ := hx
        exact ⟨(EF x y : O), by rw [he1, map_intCast]⟩
      | zero => simp
      | add x x' _ _ hx hx' =>
        rw [map_add (f := _), LinearMap.add_apply]; exact Subring.add_mem _ hx hx'
      | smul o x _ hx =>
        rw [← algebraMap_smul C o x, map_smul, LinearMap.smul_apply, smul_eq_mul]
        exact Subring.mul_mem _ ⟨o, rfl⟩ hx
  · induction x with
    | add a b ha hb => simp only [map_add (f := _), LinearMap.add_apply, ha, hb]
    | tmul s x =>
      induction y with
      | add a b ha hb => simp only [map_add (f := _), ha, hb]
      | tmul t y => rw [hρ, hρ, he, he, h.adj]

end PositivityTheory.HtPt.Gi
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.GiFree =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedLatticeTowerExists =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedLatticeTowerExists", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.IsPolLatticePlane\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.GiFree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct NumberField GlobalTheory GlobalTheory.PDivGroup GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.BT GlobalTheory.CompanionTheory.Ar.HT ReciprocityTheory.ChartRestriction.G.Semi

namespace GlobalTheory.CompanionTheory.Ar.HT

theorem free_on_lift : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (O : Type) [CommRing O] [IsDomain O] [Algebra O C] (hv : v.Integers O) (hp : v (p : C) < 1) (hO : IsAdicComplete (Ideal.span {(p : O)}) O) (E : Type) [Field E] [NumberField E] (c : E ≃+* E) (La : Type) [AddCommGroup La] [Module (𝓞 E) La] (EF : La →ₗ[ℤ] La →ₗ[ℤ] ℤ) (N : ℕ) (u : Fin N → La), IsPolLattice c p EF u → ∃ (ρ : 𝓞 E →+* Module.End C (C ⊗[ℤ] La)) (T : Submodule O (C ⊗[ℤ] La)) (e : C ⊗[ℤ] La →ₗ[C] C ⊗[ℤ] La →ₗ[C] C), (∀ (a : 𝓞 E) (x : La), ρ a (1 ⊗ₜ x) = 1 ⊗ₜ (a • x)) ∧ T = Submodule.span O (Set.range fun x : La => (1 : C) ⊗ₜ[ℤ] x) ∧ IsFreeOn ρ T (fun i => 1 ⊗ₜ u i) ∧ (∀ x y : La, e (1 ⊗ₜ x) (1 ⊗ₜ y) = (EF x y : C)) ∧ (∀ x, e x x = 0) ∧ (∀ y, (∀ x, e x y = 0) → y = 0) ∧ dualLat e T = T ∧ ∀ (a : 𝓞 E) x y, e (ρ a x) y = e x (ρ (RingOfIntegers.mapRingEquiv c a) y) :=
  @PositivityTheory.HtPt.Gi.free_on_lift

end GlobalTheory.CompanionTheory.Ar.HT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedLatticeTowerExists =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvdMulOfGroupLikeVal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvdMulOfGroupLikeVal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ToSpanSingletonConstGenInjective\npublic import Mathlib.Analysis.SpecialFunctions.Pow.Real\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConvEqOneOfForallPairing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DUnitMemRangeOfMemKerIdeal\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DerivationDivisibleOfCocomm\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsIntegralOfDivisibleCharacters\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormSmulLeOneOfPrimitiveBoundedPowers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.DualLattices.BlockOneMulMulBlockOne\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open TensorProduct Coalgebra Bialgebra WithConv GlobalTheory GlobalTheory.PDivGroup GlobalTheory.PDiv
open GlobalTheory.GroupLikeDerivation (extProd extProd_tmul inlHom inrHom mulHom extendHom inlHom_mul_inrHom
  exists_isGroupLikeElem)

namespace GlobalTheory.CompanionTheory.Ar.HT.CokerSharp

section Norm

variable {C : Type} [NontriviallyNormedField C] [IsUltrametricDist C]
  {O : Type} [CommRing O] [Algebra O C] {M : Type} [AddCommGroup M] [Module O M]

theorem norm_smul_le (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1) (o : O) (x : C) : ‖o • x‖ ≤ ‖x‖ := by
  rw [Algebra.smul_def, norm_mul]
  exact mul_le_of_le_one_left (norm_nonneg _) (h1 o)

theorem norm_le_of_mem_span (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1) (f : M →ₗ[O] C) {s : Set M}
    {r : ℝ} (hr : 0 ≤ r) (h : ∀ m ∈ s, ‖f m‖ ≤ r) {m : M} (hm : m ∈ Submodule.span O s) :
    ‖f m‖ ≤ r := by
  induction hm using Submodule.span_induction with
  | mem x hx => exact h x hx
  | zero => simpa using hr
  | add x y _ _ hx hy =>
    rw [map_add (f := _)]; exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le hx hy)
  | smul o x _ hx => rw [map_smul]; exact (norm_smul_le h1 _ _).trans hx

theorem bddAbove_norm (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1) [Module.Finite O M] (f : M →ₗ[O] C) :
    BddAbove (Set.range fun m => ‖f m‖) := by
  obtain ⟨s, hs⟩ := Module.Finite.fg_top (R := O) (M := M)
  refine ⟨∑ m ∈ s, ‖f m‖, ?_⟩
  rintro _ ⟨m, rfl⟩
  refine norm_le_of_mem_span h1 f (s := s) (Finset.sum_nonneg fun _ _ => norm_nonneg _)
    (fun m hm => Finset.single_le_sum (f := fun m => ‖f m‖) (fun _ _ => norm_nonneg _) hm) ?_
  rw [hs]; trivial

def supN (f : WithConv (M →ₗ[O] C)) : ℝ := ⨆ m, ‖f.ofConv m‖

theorem le_supN (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1) [Module.Finite O M]
    (f : WithConv (M →ₗ[O] C)) (m : M) : ‖f.ofConv m‖ ≤ supN f :=
  le_ciSup (bddAbove_norm h1 f.ofConv) m

theorem supN_le {f : WithConv (M →ₗ[O] C)} {r : ℝ} (h : ∀ m, ‖f.ofConv m‖ ≤ r) :
    supN f ≤ r := ciSup_le h

theorem supN_nonneg (f : WithConv (M →ₗ[O] C)) : 0 ≤ supN f :=
  Real.iSup_nonneg fun _ => norm_nonneg _

theorem supN_smul (c : C) (f : WithConv (M →ₗ[O] C)) : supN (c • f) = ‖c‖ * supN f := by
  rw [supN, supN, Real.mul_iSup_of_nonneg (norm_nonneg c)]
  congr 1
  ext m
  rw [← norm_mul]
  rfl

theorem supN_add_le (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1) [Module.Finite O M]
    (f g : WithConv (M →ₗ[O] C)) : supN (f + g) ≤ max (supN f) (supN g) :=
  supN_le fun m => (IsUltrametricDist.norm_add_le_max (f.ofConv m) (g.ofConv m)).trans
    (max_le_max (le_supN h1 f m) (le_supN h1 g m))

theorem supN_mul_le (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1) [Module.Finite O M] [Coalgebra O M]
    (f g : WithConv (M →ₗ[O] C)) : supN (f * g) ≤ supN f * supN g := by
  refine supN_le fun m => ?_
  have h := (Coalgebra.Repr.arbitrary O m).convMul_apply f g
  rw [h]
  refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg
    (mul_nonneg (supN_nonneg _) (supN_nonneg _)) fun i _ => ?_
  rw [norm_mul]
  exact mul_le_mul (le_supN h1 f _) (le_supN h1 g _) (norm_nonneg _) (supN_nonneg _)

theorem supN_le_of_tmul {f : WithConv (M ⊗[O] M →ₗ[O] C)} {r : ℝ}
    (hr : 0 ≤ r) (h : ∀ a b, ‖f.ofConv (a ⊗ₜ b)‖ ≤ r) : supN f ≤ r := by
  refine supN_le fun t => ?_
  induction t with
  | tmul a b => exact h a b
  | add x y hx hy =>
    rw [map_add (f := _)]; exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le hx hy)

theorem supN_eq_mul (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1) [Module.Finite O M]
    [Module.Finite O (M ⊗[O] M)] (f g : WithConv (M →ₗ[O] C))
    (h : WithConv (M ⊗[O] M →ₗ[O] C))
    (hh : ∀ a b, h.ofConv (a ⊗ₜ b) = f.ofConv a * g.ofConv b) :
    supN h = supN f * supN g := by
  apply le_antisymm
  · refine supN_le_of_tmul (mul_nonneg (supN_nonneg _) (supN_nonneg _)) fun a b => ?_
    rw [hh, norm_mul]
    exact mul_le_mul (le_supN h1 f _) (le_supN h1 g _) (norm_nonneg _) (supN_nonneg _)
  · rw [supN.eq_1 f, Real.iSup_mul_of_nonneg (supN_nonneg g)]
    refine ciSup_le fun a => ?_
    rw [supN.eq_1 g, Real.mul_iSup_of_nonneg (norm_nonneg _)]
    refine ciSup_le fun b => ?_
    rw [← norm_mul, ← hh]
    exact le_supN h1 h _

theorem exists_supN_pow_le (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1) [Module.Finite O M]
    [Coalgebra O M] [IsCocomm O M] {y : WithConv (M →ₗ[O] C)} (hy : IsIntegral O y) :
    ∃ K : ℝ, ∀ k : ℕ, supN (y ^ k) ≤ K := by
  obtain ⟨s, hs⟩ := hy.fg_adjoin_singleton
  refine ⟨∑ f ∈ s, supN f, fun k => supN_le fun m => ?_⟩
  have hk : y ^ k ∈ Submodule.span O (s : Set (WithConv (M →ₗ[O] C))) := by
    rw [hs]
    exact pow_mem (Algebra.self_mem_adjoin_singleton _ y) k
  let ev : WithConv (M →ₗ[O] C) →ₗ[O] C :=
    { toFun := fun f => f.ofConv m
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }
  exact norm_le_of_mem_span h1 ev (Finset.sum_nonneg fun _ _ => supN_nonneg _)
    (fun f hf => (le_supN h1 f m).trans
      (Finset.single_le_sum (f := fun f => supN f) (fun _ _ => supN_nonneg _) hf)) hk

end Norm

section Main

theorem dvd_iff_norm {C : Type} [NontriviallyNormedField C] {O : Type} [CommRing O] [Algebra O C]
    (hinj : Function.Injective (algebraMap O C)) (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1)
    (h2 : ∀ z : C, ‖z‖ ≤ 1 → z ∈ (algebraMap O C).range) {q : O} (hq : q ≠ 0) (x : O) :
    q ∣ x ↔ ‖(algebraMap O C q)⁻¹ * algebraMap O C x‖ ≤ 1 := by
  have hq' : algebraMap O C q ≠ 0 := fun h => hq (hinj (by rw [h, map_zero]))
  constructor
  · rintro ⟨z, rfl⟩
    rw [map_mul, inv_mul_cancel_left₀ hq']
    exact h1 z
  · intro h
    obtain ⟨z, hz⟩ := h2 _ h
    refine ⟨z, hinj ?_⟩
    rw [map_mul, hz, mul_inv_cancel_left₀ hq']

theorem dvd_mul_of_groupLike (C : Type) [NontriviallyNormedField C] [IsUltrametricDist C]
    [IsAlgClosed C] [CharZero C] (p : ℕ) [Fact p.Prime] (hp : ‖(p : C)‖ = (p : ℝ)⁻¹)
    (O : Type) [CommRing O] [Algebra O C] (hinj : Function.Injective (algebraMap O C))
    (h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1)
    (h2 : ∀ z : C, ‖z‖ ≤ 1 → z ∈ (algebraMap O C).range)
    (hcl : ∀ z : C, IsIntegral O z → z ∈ (algebraMap O C).range)
    (A : Type) [CommRing A] [Bialgebra O A] [Coalgebra.IsCocomm O A]
    [Module.Finite O A] [Module.Projective O A] (q : O) (hq : q ≠ 0)
    (D : A →ₗ[O] O)
    (hD : ∀ a b : A, q ∣ D (a * b) - Coalgebra.counit (R := O) a * D b -
      Coalgebra.counit (R := O) b * D a)
    (hu : ∀ u : A, IsGroupLikeElem O u → q ∣ D u)
    (c : O) (hc : ‖algebraMap O C c‖ ≤ (p : ℝ) ^ (-(1 / ((p : ℝ) - 1)))) (a : A) :
    q ∣ c * D a := by
  set y : WithConv (A →ₗ[O] C) := (algebraMap O C q)⁻¹ • extendHom O C A (toConv D) with hy
  have hya : ∀ a, y.ofConv a = (algebraMap O C q)⁻¹ * algebraMap O C (D a) := fun _ => rfl
  have : IsScalarTower O C (WithConv (A →ₗ[O] C)) := ⟨fun o c f => WithConv.ext (LinearMap.ext fun a => by
    change (o • c) * f.ofConv a = o • (c * f.ofConv a)
    rw [smul_mul_assoc])⟩
  have hint : IsIntegral O y :=
    GlobalTheory.IntegralOfPointValues.isIntegral_inv_smul_of_closed (B₀ := CartierDual O A) hinj hcl
      (extendHom O C A) (toConv D) q hq fun χ => by
        obtain ⟨u, h3, h4⟩ := exists_isGroupLikeElem χ
        rw [← h4]
        exact hu u h3
  have key := GlobalTheory.NearlyPrimitive.norm_smul_le_one C p hp _ _ supN supN (mulHom O C A)
    (inlHom O C A) (inrHom O C A) supN_smul supN_smul supN_nonneg
    supN_nonneg (supN_add_le h1) (supN_mul_le h1)
    (fun f => supN_le fun t => le_supN h1 f _)
    (fun f g => supN_eq_mul h1 f g _ fun a b => by rw [inlHom_mul_inrHom, extProd_tmul])
    y (exists_supN_pow_le h1 hint)
    (supN_le_of_tmul zero_le_one fun a b => by
      have h := (dvd_iff_norm hinj h1 h2 hq _).1 (hD a b)
      convert h using 2
      change y.ofConv (a * b) - (extProd y 1).ofConv (a ⊗ₜ b) - (extProd 1 y).ofConv (a ⊗ₜ b) = _
      rw [extProd_tmul, extProd_tmul, hya, hya, hya, LinearMap.convOne_apply,
        LinearMap.convOne_apply]
      simp only [map_sub, map_mul]
      change _ - _ * algebraMap O C (counit (R := O) b) -
        algebraMap O C (counit (R := O) a) * _ = _
      ring)
    (algebraMap O C c) hc
  rw [dvd_iff_norm hinj h1 h2 hq]
  have h : (algebraMap O C q)⁻¹ * algebraMap O C (c * D a) = (algebraMap O C c • y).ofConv a := by
    change _ = algebraMap O C c * y.ofConv a
    rw [hya, map_mul]
    ring
  rw [h]
  exact (le_supN h1 _ a).trans key

end Main

section Diag

theorem exists_diag {C : Type} [Field C] {v : Valuation C NNReal} {O : Type} [CommRing O]
    [Algebra O C] (hv : v.Integers O) {F : Type} [AddCommGroup F] [Module O F] {r m : ℕ}
    (b : Module.Basis (Fin r) O F) (g : Fin m → F) :
    ∃ (φ : Fin r → F →ₗ[O] O) (e : Fin r → F) (d : Fin r → O),
      (∀ j, φ j (e j) = 1) ∧ (∀ w, w = ∑ j, φ j w • e j) ∧ (∀ j k, d j ∣ φ j (g k)) ∧
      ∀ j, d j • e j ∈ Submodule.span O (Set.range g) := by
  classical
  let A : Matrix (Fin r) (Fin m) O := fun j k => b.equivFun (g k) j
  obtain ⟨P, Q, a, hP, hQ, hD⟩ := ReciprocityTheory.PGsh.Up.Smith.smith_mat (v := v) hv r m A
  have hPP : P * P⁻¹ = 1 := Matrix.mul_nonsing_inv P hP
  have hPP' : P⁻¹ * P = 1 := Matrix.nonsing_inv_mul P hP
  have hQQ : Q * Q⁻¹ = 1 := Matrix.mul_nonsing_inv Q hQ
  let φ : Fin r → F →ₗ[O] O := fun j =>
    LinearMap.proj j ∘ₗ P.mulVecLin ∘ₗ b.equivFun.toLinearMap
  let e : Fin r → F := fun j => b.equivFun.symm fun i => P⁻¹ i j
  have hφ : ∀ j w, φ j w = ∑ i, P j i * b.equivFun w i := fun j w => rfl
  have he : ∀ j i, b.equivFun (e j) i = P⁻¹ i j := fun j i => by
    change b.equivFun (b.equivFun.symm _) i = _
    rw [b.equivFun.apply_symm_apply]
  have hφe : ∀ l j, φ l (e j) = (1 : Matrix (Fin r) (Fin r) O) l j := fun l j => by
    rw [hφ, ← hPP, Matrix.mul_apply]
    exact Finset.sum_congr rfl fun i _ => by rw [he]
  have hsum : ∀ w, w = ∑ j, φ j w • e j := fun w => by
    apply b.equivFun.injective
    funext i

    rw [map_sum, Finset.sum_apply]
    have h := congrFun (Matrix.mulVec_mulVec (b.equivFun w) P⁻¹ P) i
    rw [hPP', Matrix.one_mulVec] at h
    rw [← h]
    change ∑ j, P⁻¹ i j * (P.mulVec (b.equivFun w)) j = _
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [map_smul, Pi.smul_apply, he, smul_eq_mul, mul_comm]
    rfl
  have hφg : ∀ j k, φ j (g k) = (P * A) j k := fun j k => by
    rw [hφ, Matrix.mul_apply]
  have hPA : ∀ j k, (P * A) j k =
      ∑ l : Fin m, (if (l : ℕ) = (j : ℕ) then a j else 0) * Q⁻¹ l k := fun j k => by
    have h : P * A = P * A * Q * Q⁻¹ := by rw [Matrix.mul_assoc (P * A), hQQ, Matrix.mul_one]
    rw [h, Matrix.mul_apply]
    exact Finset.sum_congr rfl fun l _ => by rw [hD]
  refine ⟨φ, e, fun j => if (j : ℕ) < m then a j else 0, fun j => ?_, hsum, fun j k => ?_,
    fun j => ?_⟩
  · rw [hφe, Matrix.one_apply_eq]
  · rw [hφg, hPA]
    change (if (j : ℕ) < m then a j else 0) ∣ _
    by_cases h : (j : ℕ) < m
    · rw [if_pos h]
      refine Finset.dvd_sum fun l _ => ?_
      split_ifs
      · exact dvd_mul_right _ _
      · simp
    · have h0 : ∑ l : Fin m, (if (l : ℕ) = (j : ℕ) then a j else 0) * Q⁻¹ l k = 0 :=
        Finset.sum_eq_zero fun l _ => by rw [if_neg (fun hl : (l : ℕ) = j => h (hl ▸ l.2)), zero_mul]
      rw [h0]
      exact dvd_zero _
  · by_cases h : (j : ℕ) < m
    · simp only [if_pos h]
      let x : F := ∑ k, Q k ⟨j, h⟩ • g k
      have hx : x ∈ Submodule.span O (Set.range g) :=
        Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨k, rfl⟩)
      have hφx : ∀ i, φ i x = if (j : ℕ) = (i : ℕ) then a i else 0 := fun i => by
        have h1 : φ i x = (P * A * Q) i ⟨j, h⟩ := by

          rw [Matrix.mul_apply, map_sum]
          refine Finset.sum_congr rfl fun k _ => ?_
          rw [map_smul, hφg, smul_eq_mul, mul_comm]
        rw [h1, hD]
      have hxe : a j • e j = x := by
        rw [hsum x, Finset.sum_eq_single j]
        · rw [hφx, if_pos rfl]
        · intro i _ hij
          rw [hφx, if_neg fun hh => hij (Fin.ext hh.symm), zero_smul]
        · simp
      rwa [hxe]
    · simp only [if_neg h, zero_smul]
      exact zero_mem _

end Diag

section Renorm

variable {C : Type} [Field C] (v : Valuation C NNReal)

theorem rpow_add_le (s : ℝ) (hs : 0 < s) (x y : C) :
    ((v (x + y) : NNReal) : ℝ) ^ s ≤ max (((v x : NNReal) : ℝ) ^ s) (((v y : NNReal) : ℝ) ^ s) := by
  rcases le_max_iff.1 (v.map_add x y) with h | h
  · exact le_max_of_le_left (Real.rpow_le_rpow (NNReal.coe_nonneg _) (by exact_mod_cast h) hs.le)
  · exact le_max_of_le_right (Real.rpow_le_rpow (NNReal.coe_nonneg _) (by exact_mod_cast h) hs.le)

def absOf (s : ℝ) (hs : 0 < s) : AbsoluteValue C ℝ where
  toFun x := ((v x : NNReal) : ℝ) ^ s
  map_mul' x y := by
    rw [map_mul, NNReal.coe_mul, Real.mul_rpow (NNReal.coe_nonneg _) (NNReal.coe_nonneg _)]
  nonneg' x := Real.rpow_nonneg (NNReal.coe_nonneg _) _
  eq_zero' x := by
    rw [Real.rpow_eq_zero (NNReal.coe_nonneg _) hs.ne', NNReal.coe_eq_zero, map_eq_zero]
  add_le' x y := (rpow_add_le v s hs x y).trans (max_le_add_of_nonneg
    (Real.rpow_nonneg (NNReal.coe_nonneg _) _) (Real.rpow_nonneg (NNReal.coe_nonneg _) _))

theorem dvd_mul_of_groupLike_val (p : ℕ) [Fact p.Prime] [hac : IsAlgClosed C] [h0 : CharZero C]
    (O : Type) [CommRing O] [hA : Algebra O C] (hv : v.Integers O) (hp : v (p : C) < 1)
    (B : Type) [CommRing B] [Bialgebra O B] [Coalgebra.IsCocomm O B]
    [Module.Finite O B] [Module.Projective O B] (q : O) (hq : q ≠ 0)
    (D : B →ₗ[O] O)
    (hD : ∀ a b : B, q ∣ D (a * b) - Coalgebra.counit (R := O) a * D b -
      Coalgebra.counit (R := O) b * D a)
    (hu : ∀ u : B, IsGroupLikeElem O u → q ∣ D u)
    (κ : O) (hκ : v (algebraMap O C κ) ^ (p - 1) ≤ v (p : C)) (a : B) :
    q ∣ κ * D a := by
  have hpp : p.Prime := Fact.out
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hpp.one_lt
  have hpc : (p : C) ≠ 0 := Nat.cast_ne_zero.2 hpp.ne_zero
  have hv0 : 0 < ((v (p : C) : NNReal) : ℝ) := by
    have : v (p : C) ≠ 0 := (Valuation.ne_zero_iff v).2 hpc
    exact_mod_cast pos_iff_ne_zero.2 this
  have hv1 : ((v (p : C) : NNReal) : ℝ) < 1 := by exact_mod_cast hp
  have hL : Real.log (v (p : C) : NNReal) < 0 := Real.log_neg hv0 hv1
  obtain ⟨s, hs, hps⟩ : ∃ s : ℝ, 0 < s ∧ ((v (p : C) : NNReal) : ℝ) ^ s = (p : ℝ)⁻¹ := by
    refine ⟨Real.log p / (-Real.log (v (p : C) : NNReal)),
      div_pos (Real.log_pos hp1) (neg_pos.2 hL), ?_⟩
    rw [Real.rpow_def_of_pos hv0, show Real.log (v (p : C) : NNReal) *
      (Real.log p / (-Real.log (v (p : C) : NNReal))) = -Real.log p by
        field_simp [hL.ne], Real.exp_neg, Real.exp_log (by linarith)]
  letI nf : NormedField C := (absOf v s hs).toNormedField
  have hnorm : ∀ x : C, ‖x‖ = ((v x : NNReal) : ℝ) ^ s := fun x => rfl
  have hpn : ‖(p : C)‖ = (p : ℝ)⁻¹ := by rw [hnorm, hps]
  letI nnf : NontriviallyNormedField C := NontriviallyNormedField.ofNormNeOne
    ⟨(p : C), hpc, by rw [hpn]; exact (inv_lt_one_of_one_lt₀ hp1).ne⟩
  have ult : IsUltrametricDist C :=
    IsUltrametricDist.isUltrametricDist_of_forall_norm_add_le_max_norm
      fun x y => rpow_add_le v s hs x y
  have hinj : Function.Injective (algebraMap O C) := hv.hom_inj
  have h1 : ∀ o : O, ‖algebraMap O C o‖ ≤ 1 := fun o => by
    rw [hnorm]
    exact Real.rpow_le_one (NNReal.coe_nonneg _) (by exact_mod_cast hv.map_le_one o) hs.le
  have h2 : ∀ z : C, ‖z‖ ≤ 1 → z ∈ (algebraMap O C).range := fun z hz => by
    refine hv.exists_of_le_one ?_
    by_contra hlt
    have h3 : (1 : ℝ) < ((v z : NNReal) : ℝ) := by exact_mod_cast not_le.1 hlt
    rw [hnorm] at hz
    exact absurd (Real.one_lt_rpow h3 hs) (not_lt.2 hz)
  have hcl : ∀ z : C, IsIntegral O z → z ∈ (algebraMap O C).range := fun z hz =>
    hv.exists_of_le_one (hv.mem_of_integral hz)
  have hc : ‖algebraMap O C κ‖ ≤ (p : ℝ) ^ (-(1 / ((p : ℝ) - 1))) := by
    have hk : ‖algebraMap O C κ‖ ^ (p - 1) ≤ (p : ℝ)⁻¹ := by
      rw [← hps, hnorm, ← Real.rpow_natCast, ← Real.rpow_mul (NNReal.coe_nonneg _), mul_comm,
        Real.rpow_mul (NNReal.coe_nonneg _), Real.rpow_natCast]
      exact Real.rpow_le_rpow (by positivity) (by exact_mod_cast hκ) hs.le
    have hx : ‖algebraMap O C κ‖ ^ ((p : ℝ) - 1) ≤ (p : ℝ)⁻¹ := by
      rw [show (p : ℝ) - 1 = ((p - 1 : ℕ) : ℝ) by rw [Nat.cast_sub hpp.one_le, Nat.cast_one],
        Real.rpow_natCast]
      exact hk
    rw [one_div, Real.rpow_neg (by linarith), ← Real.inv_rpow (by linarith)]
    exact (Real.le_rpow_inv_iff_of_pos (norm_nonneg _) (by positivity) (by linarith)).2 hx
  exact @dvd_mul_of_groupLike C nnf ult hac h0 p _ hpn O _ hA hinj h1 h2 hcl B _ _ _ _ _ q hq D hD
    hu κ hc a

end Renorm

section Level

variable {p : ℕ} [Fact p.Prime] {C : Type} [Field C] [IsAlgClosed C] [CharZero C]
  {v : Valuation C NNReal} {O : Type} [CommRing O] [Algebra O C] [IsIntegrallyClosedIn O C]

theorem dvd_mul_of_dvd_dlog (hv : v.Integers O) (hp : v (p : C) < 1) (G : PDivGroup p O) (n : ℕ)
    (q : O) (hq : q ≠ 0) (hqn : q ∣ (p : O) ^ n) (φ : G.omega →ₗ[O] O)
    (hφ : ∀ χ : G.dual.Tate, q ∣ φ (dlog G χ)) (κ : O)
    (hκ : v (algebraMap O C κ) ^ (p - 1) ≤ v (p : C)) (w : G.omega) : q ∣ κ * φ w := by
  let I : Ideal O := Ideal.span {q}
  have hz : ∀ x : O, I.mkQ x = 0 → q ∣ x := fun x h =>
    Ideal.mem_span_singleton.1 ((Submodule.Quotient.mk_eq_zero I).1 h)
  have hz' : ∀ x : O, q ∣ x → I.mkQ x = 0 := fun x h =>
    (Submodule.Quotient.mk_eq_zero I).2 (Ideal.mem_span_singleton.2 h)
  let ψ0 : G.omega →ₗ[O] O ⧸ I := I.mkQ ∘ₗ φ
  have hker : LinearMap.ker (G.omegaLevel n) ≤ LinearMap.ker ψ0 := fun x hx => by
    obtain ⟨u, rfl⟩ := (G.omega_val_eq_zero_iff n x).1 hx
    rw [LinearMap.mem_ker]
    refine hz' _ ?_
    rw [map_smul, smul_eq_mul]
    exact hqn.mul_right _
  let e := (G.omegaLevel n).quotKerEquivOfSurjective (G.omegaLevel_surjective n)
  let ψ : Cot O (G.A n) →ₗ[O] O ⧸ I :=
    ((LinearMap.ker (G.omegaLevel n)).liftQ ψ0 hker) ∘ₗ e.symm.toLinearMap
  have hψ : ∀ x : G.omega, ψ (x.1 n) = I.mkQ (φ x) := fun x => by
    have h : e.symm (x.1 n) = Submodule.Quotient.mk x := by
      rw [LinearEquiv.symm_apply_eq]
      rfl
    change (LinearMap.ker (G.omegaLevel n)).liftQ ψ0 hker (e.symm (x.1 n)) = _
    rw [h]
    rfl
  obtain ⟨D, hD⟩ := Module.projective_lifting_property I.mkQ
    (ψ ∘ₗ AugCot.d (counitAlgHom O (G.A n))) (Submodule.mkQ_surjective I)
  have hDa : ∀ a, I.mkQ (D a) = ψ (dUnit (R := O) a) := fun a => LinearMap.congr_fun hD a
  have hdm : ∀ a b, ψ (dUnit (R := O) (a * b)) =
      counit (R := O) a • ψ (dUnit (R := O) b) + counit (R := O) b • ψ (dUnit (R := O) a) := fun a b => by
    rw [dUnit, AugCot.d_mul, map_add (f := _), map_smul, map_smul]
    rfl
  have key := dvd_mul_of_groupLike_val v p O hv hp (G.A n) q hq D
    (fun a b => hz _ (by
      change I.mkQ (D (a * b) - counit (R := O) a • D b - counit (R := O) b • D a) = 0
      rw [map_sub, map_sub, map_smul, map_smul, hDa, hDa, hDa, hdm]
      abel))
    (fun u hu => hz _ (by
      obtain ⟨χ, hχ⟩ := G.dual.pt_surjective C n (evalPoint u hu)
      have h1 : charElem χ n = u := CartierDual.eq_of_forall_apply (R := O) fun f => by
        have hχ' : χ.pt n = evalPoint u hu := hχ
        rw [apply_charElem, hχ']
        rfl
      rw [hDa, ← h1, ← dlog_val, hψ]
      exact hz' _ (hφ χ)))
    κ hκ
  obtain ⟨a, ha⟩ := AugCot.d_surjective (counitAlgHom O (G.A n)) (w.1 n)
  have h3 : q ∣ D a - φ w := hz _ (by
    rw [map_sub, hDa, sub_eq_zero, ← hψ]
    exact congrArg ψ ha)
  have h4 := dvd_sub (key a) (h3.mul_left κ)
  simpa [mul_sub] using h4

end Level

end GlobalTheory.CompanionTheory.Ar.HT.CokerSharp

namespace GlobalTheory.CompanionTheory.Ar.HT

open CokerSharp

theorem coker_dlog_killed : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C]
    (v : Valuation C NNReal) (O : Type) [CommRing O] [IsDomain O] [Algebra O C]
    (hv : v.Integers O) (hp : v (p : C) < 1) (hO : IsAdicComplete (Ideal.span {(p : O)}) O)
    [Algebra ℤ_[p] O] (G : PDivGroup p O) [Module.Free O G.omega] [Module.Finite O G.omega] (κ : O),
    v (algebraMap O C κ) ^ (p - 1) ≤ v (p : C) → ∀ w : G.omega,
      κ • w ∈ LinearMap.range (dlogLinear G) := by
  intro p _ C _ _ _ v O _ _ _ hv hp hO _ G _ _ κ hκ w
  have hpp : p.Prime := Fact.out
  have : IsIntegrallyClosedIn O C := isIntegrallyClosedIn_iff.2
    ⟨hv.hom_inj, fun hx => hv.exists_of_le_one (hv.mem_of_integral hx)⟩
  have := G.dual.finite_tate C
  obtain ⟨m, t, ht⟩ := Module.Finite.exists_fin (R := ℤ_[p]) (M := G.dual.Tate)
  let g : Fin m → G.omega := fun k => dlog G (t k)
  obtain ⟨φ, e, d, h1, h2, h3, h4⟩ := exists_diag hv (Module.finBasis O G.omega) g
  have hspan : Submodule.span O (Set.range g) ≤ LinearMap.range (dlogLinear G) :=
    Submodule.span_le.2 (by
      rintro _ ⟨k, rfl⟩
      exact ⟨1 ⊗ₜ t k, by simp [g]⟩)
  by_cases hκ0 : κ = 0
  · rw [hκ0, zero_smul]
    exact zero_mem _
  have hpO : (p : O) ≠ 0 := fun h => by
    have h5 : algebraMap O C (p : O) = 0 := by rw [h, map_zero]
    rw [map_natCast] at h5
    exact Nat.cast_ne_zero.2 hpp.ne_zero h5
  obtain ⟨n, hn⟩ : ∃ n : ℕ, ¬ (p : O) ^ n ∣ κ := by
    by_contra hall
    push Not at hall
    refine hκ0 (hO.toIsHausdorff.haus' κ fun n => ?_)
    rw [SModEq.zero, smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow,
      Ideal.mem_span_singleton]
    exact hall n
  have hdlog : ∀ (j : Fin _) (q : O), (∀ k, q ∣ φ j (g k)) →
      ∀ χ : G.dual.Tate, q ∣ φ j (dlog G χ) := fun j q hk χ => by
    have hχ : χ ∈ Submodule.span ℤ_[p] (Set.range t) := ht ▸ Submodule.mem_top
    induction hχ using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨k, rfl⟩ := hx
      exact hk k
    | zero => simp
    | add x y _ _ hx hy =>
      rw [map_add (f := _), map_add (f := _)]
      exact dvd_add hx hy
    | smul a x _ hx =>
      rw [dlog_smul (algebraMap ℤ_[p] O), map_smul, smul_eq_mul]
      exact hx.mul_left _
  have key : ∀ j, κ • e j ∈ LinearMap.range (dlogLinear G) := fun j => by
    rcases le_total (v (algebraMap O C ((p : O) ^ n))) (v (algebraMap O C (d j))) with h | h
    · have hd : d j ∣ (p : O) ^ n := hv.dvd_of_le h
      have hd0 : d j ≠ 0 := fun h0 => pow_ne_zero n hpO (zero_dvd_iff.1 (h0 ▸ hd))
      have h5 := dvd_mul_of_dvd_dlog hv hp G n (d j) hd0 hd (φ j) (hdlog j _ (h3 j)) κ hκ (e j)
      rw [h1, mul_one] at h5
      obtain ⟨c, hc⟩ := h5
      rw [hc, mul_comm, mul_smul]
      exact Submodule.smul_mem _ _ (hspan (h4 j))
    · have hd : (p : O) ^ n ∣ d j := hv.dvd_of_le h
      have h5 := dvd_mul_of_dvd_dlog hv hp G n ((p : O) ^ n) (pow_ne_zero n hpO) dvd_rfl (φ j)
        (hdlog j _ fun k => hd.trans (h3 j k)) κ hκ (e j)
      rw [h1, mul_one] at h5
      exact absurd h5 hn
  rw [h2 w, Finset.smul_sum]
  refine Submodule.sum_mem _ fun j _ => ?_
  rw [smul_comm]
  exact Submodule.smul_mem _ _ (key j)

end GlobalTheory.CompanionTheory.Ar.HT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvdMulOfGroupLikeVal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TateMapDualHomBidual =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TateMapDualHomBidual", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.IsPolLatticePlane\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.FarguesHodgeTate\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConvEqOneOfForallPairing\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvdMulOfGroupLikeVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory TensorProduct GlobalTheory GlobalTheory.PDivGroup WithConv

namespace GlobalTheory.CompanionTheory.Ar.HT.Lagr

section Rank

variable {O : Type} [CommRing O] [IsDomain O]

theorem exists_smul_mem {Q : Type} [AddCommGroup Q] [Module O Q]
    (hQ : Module.rank O Q < Cardinal.aleph0) (P : Submodule O Q)
    (h : Module.finrank O Q ≤ Module.finrank O P) (y : Q) : ∃ a : O, a ≠ 0 ∧ a • y ∈ P := by
  have hP : Module.rank O P < Cardinal.aleph0 := (Submodule.rank_le P).trans_lt hQ
  have h1 := HasRankNullity.rank_quotient_add_rank P
  have h2 : Module.rank O P = Module.rank O Q := by
    refine le_antisymm (Submodule.rank_le P) ?_
    rw [← Cardinal.cast_toNat_of_lt_aleph0 hQ, ← Cardinal.cast_toNat_of_lt_aleph0 hP]
    exact Nat.cast_le.2 h
  have h3 : Module.rank O (Q ⧸ P) = 0 := by
    refine Cardinal.eq_of_add_eq_add_right (b := Module.rank O P) ?_ hP
    rw [h1, h2, zero_add]
  obtain ⟨a, ha, hy⟩ := rank_eq_zero_iff.1 h3 (Submodule.Quotient.mk y)
  exact ⟨a, ha, (Submodule.Quotient.mk_eq_zero P).1 (by rw [Submodule.Quotient.mk_smul]; exact hy)⟩

variable {M : Type} [AddCommGroup M] [Module O M] [Module.Finite O M]

theorem finrank_range_add_ker {M' : Type} [AddCommGroup M'] [Module O M'] (f : M →ₗ[O] M') :
    Module.finrank O (LinearMap.range f) + Module.finrank O (LinearMap.ker f) =
      Module.finrank O M := by
  have h1 : Module.rank O (LinearMap.range f) < Cardinal.aleph0 := Module.rank_lt_aleph0 O _
  have h2 : Module.rank O (LinearMap.ker f) < Cardinal.aleph0 :=
    (Submodule.rank_le _).trans_lt (Module.rank_lt_aleph0 O M)
  have h3 := congrArg Cardinal.toNat (LinearMap.rank_range_add_rank_ker f)
  rwa [Cardinal.toNat_add h1 h2] at h3

theorem finrank_le_add (B : M →ₗ[O] M →ₗ[O] O) (W N : Submodule O M)
    (hN : ∀ x, x ∈ N ↔ ∀ y ∈ W, B x y = 0) :
    Module.finrank O M ≤ Module.finrank O W + Module.finrank O N := by
  have hWr : Module.rank O W < Cardinal.aleph0 :=
    (Submodule.rank_le W).trans_lt (Module.rank_lt_aleph0 O M)
  obtain ⟨w, hw⟩ := exists_linearIndependent_of_le_finrank (R := O) (M := W) le_rfl
  let S : Submodule O W := Submodule.span O (Set.range w)
  have hS : Module.finrank O W ≤ Module.finrank O S := by
    rw [finrank_span_eq_card hw, Fintype.card_fin]
  let Φ : M →ₗ[O] (Fin (Module.finrank O W) → O) := LinearMap.pi fun j => B.flip (w j : M)
  have hker : LinearMap.ker Φ = N := by
    ext x
    rw [hN, LinearMap.mem_ker]
    constructor
    · intro hx y hy
      obtain ⟨a, ha, hay⟩ := exists_smul_mem hWr S hS ⟨y, hy⟩
      have h0 : ∀ s ∈ S, B x (s : M) = 0 := fun s hs => by
        induction hs using Submodule.span_induction with
        | mem s hs =>
          obtain ⟨j, rfl⟩ := hs
          exact congrFun hx j
        | zero => simp
        | add s t _ _ hs ht => simp [hs, ht]
        | smul c s _ hs => simp [hs]
      have h1 := h0 _ hay
      simp only [Submodule.coe_smul, map_smul, smul_eq_mul] at h1
      exact (mul_eq_zero.1 h1).resolve_left ha
    · intro hx
      exact funext fun j => hx _ (w j).2
  have h1 := finrank_range_add_ker Φ
  have h2 : Module.finrank O (LinearMap.range Φ) ≤ Module.finrank O W := by
    have := Submodule.finrank_le (LinearMap.range Φ)
    simpa using this
  rw [hker] at h1
  omega

theorem le_of_finrank (B : M →ₗ[O] M →ₗ[O] O) (W N : Submodule O M)
    (hN : ∀ x, x ∈ N ↔ ∀ y ∈ W, B x y = 0) (hNW : N ≤ W)
    (hr : 2 * Module.finrank O W ≤ Module.finrank O M) : W ≤ N := by
  have hWr : Module.rank O W < Cardinal.aleph0 :=
    (Submodule.rank_le W).trans_lt (Module.rank_lt_aleph0 O M)
  have h1 := finrank_le_add B W N hN
  let P : Submodule O W := N.comap W.subtype
  have hP : Module.finrank O W ≤ Module.finrank O P := by
    have : Module.finrank O P = Module.finrank O N :=
      (Submodule.comapSubtypeEquivOfLe hNW).finrank_eq
    omega
  intro x hx
  obtain ⟨a, ha, hax⟩ := exists_smul_mem hWr P hP ⟨x, hx⟩
  rw [hN]
  intro y hy
  have h2 : a • x ∈ N := hax
  have h3 := (hN _).1 h2 y hy
  simp only [map_smul, LinearMap.smul_apply, smul_eq_mul] at h3
  exact (mul_eq_zero.1 h3).resolve_left ha

end Rank

section Tate

variable {p : ℕ} [Fact p.Prime] {O : Type} [CommRing O]

theorem charElem_bidual (G : PDivGroup p O) (t : G.Tate) (n : ℕ) :
    charElem (G := G.dual) (tateMap G G.dual.dual O G.bidual.hom t) n =
      toConv (t.pt n).toLinearMap :=
  (charHom_app_muT _ n).symm.trans (dualChar_app_muT t n)

theorem pairing_dual_bidual (G : PDivGroup p O) (t : G.Tate) (χ : G.dual.Tate) :
    pairing G.dual O χ (tateMap G G.dual.dual O G.bidual.hom t) = pairing G O t χ :=
  muRoot_ext fun n => by
    rw [muRoot_pairing, muRoot_pairing, charElem_bidual]
    exact (apply_charElem χ n _).symm

theorem algebraMap_injective [IsDomain O] [Algebra ℤ_[p] O] (hp : (p : O) ≠ 0) :
    Function.Injective (algebraMap ℤ_[p] O) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro a ha
  by_contra h
  have h2 := congrArg (algebraMap ℤ_[p] O) (PadicInt.unitCoeff_spec h)
  rw [ha, map_mul, map_pow, map_natCast] at h2
  rcases mul_eq_zero.1 h2.symm with h3 | h3
  · exact ((PadicInt.unitCoeff h).isUnit.map (algebraMap ℤ_[p] O)).ne_zero h3
  · exact pow_ne_zero _ hp h3

theorem tateMap_dualHom_bidual (C : Type) [Field C] [Algebra O C] [IsIntegrallyClosedIn O C]
    [IsAlgClosed C] [CharZero C] [IsDomain O] [Algebra ℤ_[p] O] (hp : (p : O) ≠ 0)
    (G : PDivGroup p O) (lam : G ⟶ G.dual) (μ : (mu p O).Tate)
    (B : O ⊗[ℤ_[p]] G.Tate →ₗ[O] O ⊗[ℤ_[p]] G.Tate →ₗ[O] O)
    (hB : ∀ x y : G.Tate, ∃ a : ℤ_[p], pairing G O y (tateMap G G.dual O lam x) = a • μ ∧
      B (1 ⊗ₜ x) (1 ⊗ₜ y) = algebraMap ℤ_[p] O a)
    (hskew : ∀ x y, B x y = - B y x) (t : G.Tate) :
    tateMap _ _ O (dualHom G G.dual lam) (tateMap G G.dual.dual O G.bidual.hom t) =
      - tateMap G G.dual O lam t := by
  refine (G.pairing_flip_bijective C).1 (LinearMap.ext fun y => ?_)
  change pairing G O y _ = pairing G O y _
  rw [← pairing_tateMap, pairing_dual_bidual, map_neg]
  obtain ⟨a, ha, hb⟩ := hB y t
  obtain ⟨a', ha', hb'⟩ := hB t y
  have h : a = - a' := algebraMap_injective hp (by rw [map_neg, ← hb, ← hb', hskew])
  rw [ha, ha', h, neg_smul]

end Tate

end GlobalTheory.CompanionTheory.Ar.HT.Lagr

namespace GlobalTheory.CompanionTheory.Ar.HT

open AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj NumberField GlobalTheory.CompanionTheory.Ar
  GlobalTheory.CompanionTheory.Ar.BT ReciprocityTheory.ChartRestriction.G.Semi Lagr

theorem dlog_lagrangian : FarguesHodgeTate → ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (O : Type) [CommRing O] [IsDomain O] [Algebra O C] (hv : v.Integers O) (hp : v (p : C) < 1) (hO : IsAdicComplete (Ideal.span {(p : O)}) O) [Algebra ℤ_[p] O] (G : PDivGroup p O) [Module.Free O G.omega] [Module.Finite O G.omega] (lam : G ⟶ G.dual) (ζ : ℕ → O) (h0 : ζ 0 = 1) (h : ∀ n, ζ (n + 1) ^ p = ζ n) (B : O ⊗[ℤ_[p]] G.Tate →ₗ[O] O ⊗[ℤ_[p]] G.Tate →ₗ[O] O) (κ : O), ζ 1 ≠ 1 → IsHTConst v p κ → Function.Bijective (tateMap G G.dual O lam) → 2 * Module.finrank O G.omega = G.height → (∀ x y : G.Tate, ∃ a : ℤ_[p], pairing G O y (tateMap G G.dual O lam x) = a • muTate O ζ h0 h ∧ B (1 ⊗ₜ x) (1 ⊗ₜ y) = algebraMap ℤ_[p] O a) → (∀ x, B x x = 0) → (∀ w : G.omega, κ • w ∈ LinearMap.range (dlogLinear G ∘ₗ (tateMap G G.dual O lam).baseChange O)) ∧ ∀ x, (dlogLinear G ∘ₗ (tateMap G G.dual O lam).baseChange O) x = 0 ↔ ∀ y, (dlogLinear G ∘ₗ (tateMap G G.dual O lam).baseChange O) y = 0 → B x y = 0 := by
  intro hF p _ C _ _ _ v O _ _ _ hv hp hO _ G _ _ lam ζ h0 h B κ hζ hκ hbij hdim hB halt
  have hpp : p.Prime := Fact.out
  have : IsIntegrallyClosedIn O C := isIntegrallyClosedIn_iff.2
    ⟨hv.hom_inj, fun hx => hv.exists_of_le_one (hv.mem_of_integral hx)⟩
  have := G.finite_tate C
  have := G.free_tate C
  have hp0 : (p : O) ≠ 0 := fun h => by
    have h5 : algebraMap O C (p : O) = 0 := by rw [h, map_zero]
    rw [map_natCast] at h5
    exact Nat.cast_ne_zero.2 hpp.ne_zero h5
  have hκ0 : κ ≠ 0 := fun h => hκ.1 (by rw [h, map_zero])
  have hskew : ∀ x y, B x y = - B y x := fun x y => by
    have h1 := halt (x + y)
    simp only [map_add (f := _), LinearMap.add_apply, halt, zero_add, add_zero] at h1
    exact eq_neg_of_add_eq_zero_right h1
  let e : G.Tate ≃ₗ[ℤ_[p]] G.dual.Tate := LinearEquiv.ofBijective _ hbij
  let L : O ⊗[ℤ_[p]] G.Tate ≃ₗ[O] O ⊗[ℤ_[p]] G.dual.Tate := e.baseChange ℤ_[p] O _ _
  have hL : ∀ x, (tateMap G G.dual O lam).baseChange O x = L x := fun _ => rfl
  set f := dlogLinear G ∘ₗ (tateMap G G.dual O lam).baseChange O with hf
  have hfL : ∀ x, f x = dlogLinear G (L x) := fun _ => rfl
  have hcoker : ∀ w : G.omega, κ • w ∈ LinearMap.range f := fun w => by
    obtain ⟨u, hu⟩ := coker_dlog_killed p C v O hv hp hO G κ hκ.2 w
    exact ⟨L.symm u, by rw [hfL, L.apply_symm_apply, hu]⟩
  refine ⟨hcoker, ?_⟩

  let B' : O ⊗[ℤ_[p]] G.Tate →ₗ[O] O ⊗[ℤ_[p]] G.dual.Tate →ₗ[O] O :=
    (B ∘ₗ L.symm.toLinearMap).flip
  have hB' : ∀ (x : G.Tate) (χ : G.dual.Tate), ∃ a : ℤ_[p],
      pairing G O x χ = a • muTate O ζ h0 h ∧ B' (1 ⊗ₜ x) (1 ⊗ₜ χ) = algebraMap ℤ_[p] O a := by
    intro x χ
    obtain ⟨z, rfl⟩ := hbij.2 χ
    obtain ⟨a, ha, hb⟩ := hB z x
    refine ⟨a, ha, ?_⟩
    have h1 : L.symm (1 ⊗ₜ tateMap G G.dual O lam z) = 1 ⊗ₜ z := by
      rw [LinearEquiv.symm_apply_eq]
      rfl
    change B (L.symm _) _ = _
    rw [h1, hb]
  have hN : ∀ x, x ∈ LinearMap.ker (hodgeTateLinear G) ↔
      ∀ y ∈ LinearMap.ker f, B x y = 0 := by
    intro x
    rw [LinearMap.mem_ker, (hF p C v O hv hp hO G).2 ζ h0 h hζ B' hB' x]
    constructor
    · intro hx y hy
      have h1 := hx (L y) hy
      have h2 : B y x = 0 := by
        have : B' x (L y) = B y x := by
          change B (L.symm (L y)) x = _
          rw [L.symm_apply_apply]
        rwa [this] at h1
      rw [hskew, h2, neg_zero]
    · intro hx y hy
      have h1 := hx (L.symm y) (by
        rw [LinearMap.mem_ker, hfL, L.apply_symm_apply]
        exact hy)
      change B (L.symm y) x = 0
      rw [hskew, h1, neg_zero]

  have hkey : ∀ x, omegaMap G G.dual lam (hodgeTateLinear G x) = - f x := by
    intro x
    induction x using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy, map_add (f := _), neg_add]
    | tmul c t =>
      have h1 : omegaMap G G.dual lam (hodgeTate G t) = - dlog G (tateMap G G.dual O lam t) := by
        rw [hodgeTate_apply, ← dlog_tateMap,
          tateMap_dualHom_bidual C hp0 G lam (muTate O ζ h0 h) B hB hskew, map_neg]
      have h2 : f (c ⊗ₜ t) = c • dlog G (tateMap G G.dual O lam t) := rfl
      rw [hodgeTateLinear_tmul, map_smul, h1, h2, smul_neg]
  have hNW : LinearMap.ker (hodgeTateLinear G) ≤ LinearMap.ker f := fun x hx => by
    have h1 := hkey x
    rw [LinearMap.mem_ker.1 hx, map_zero] at h1
    exact LinearMap.mem_ker.2 (neg_eq_zero.1 h1.symm)

  have hM : Module.finrank O (O ⊗[ℤ_[p]] G.Tate) = G.height := by
    rw [Module.finrank_baseChange, G.finrank_tate C]
  let g : G.omega →ₗ[O] LinearMap.range f :=
    LinearMap.codRestrict _ (κ • LinearMap.id) hcoker
  have hg : Function.Injective g := fun a b hab => by
    have h1 : κ • a = κ • b := congrArg Subtype.val hab
    exact smul_right_injective _ hκ0 h1
  have h1 := LinearMap.finrank_le_finrank_of_injective hg
  have h2 := (finrank_range_add_ker f).trans hM
  have h3 : 2 * Module.finrank O (LinearMap.ker f) ≤ G.height := by
    omega
  have hWN := le_of_finrank B (LinearMap.ker f) _ hN hNW (h3.trans_eq hM.symm)
  intro x
  constructor
  · intro hx y hy
    exact (hN x).1 (hWN hx) y hy
  · intro hx
    exact hNW ((hN x).2 hx)

end GlobalTheory.CompanionTheory.Ar.HT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TateMapDualHomBidual =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedDivisibleGroupExists =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedDivisibleGroupExists", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.IsPolLatticePlane\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.FarguesHodgeTate\npublic import Mathlib.LinearAlgebra.BilinearForm.TensorProduct\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConvEqOneOfForallPairing\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisRest\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CompleteIntegersProperties\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.PairingExtends\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupFromTower\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerCompatibilityStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerDualStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DivisibleGroupTowerFreeStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedLatticeTowerExists\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TateMapDualHomBidual\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.ExistsBialgHom\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.Twomega\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct NumberField GlobalTheory GlobalTheory.PDivGroup GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.BT GlobalTheory.CompanionTheory.Ar.HT ReciprocityTheory.ChartRestriction.G.Semi

noncomputable section
namespace GlobalTheory.CompanionTheory.Ar.HT.TowerPoint

section Lin

open Module

variable {C O : Type} [Field C] [CommRing O] [IsDomain O] [Algebra O C] [IsFractionRing O C]

theorem exists_smul_eq {La M : Type} [AddCommGroup La] [AddCommGroup M] [Module O M]
    (inc : M →ₗ[O] C ⊗[ℤ] La) (h : ∀ a : La, ∃ m, inc m = 1 ⊗ₜ a) (x : C ⊗[ℤ] La) :
    ∃ d : O, d ≠ 0 ∧ ∃ m, inc m = d • x := by
  induction x using TensorProduct.induction_on with
  | zero => exact ⟨1, one_ne_zero, 0, by simp⟩
  | tmul c a =>
    obtain ⟨n, d, hd, rfl⟩ := IsFractionRing.div_surjective (A := O) c
    obtain ⟨m, hm⟩ := h a
    have hd0 : algebraMap O C d ≠ 0 := by
      simpa using nonZeroDivisors.ne_zero (map_mem_nonZeroDivisors _ (IsFractionRing.injective O C) hd)
    refine ⟨d, nonZeroDivisors.ne_zero hd, n • m, ?_⟩
    rw [map_smul, hm, TensorProduct.smul_tmul', TensorProduct.smul_tmul']
    congr 1
    rw [Algebra.smul_def, Algebra.smul_def]
    field_simp
  | add x y hx hy =>
    obtain ⟨d, hd, m, hm⟩ := hx
    obtain ⟨d', hd', m', hm'⟩ := hy
    refine ⟨d * d', mul_ne_zero hd hd', d' • m + d • m', ?_⟩
    rw [map_add (f := _), map_smul, map_smul, hm, hm', smul_add, smul_smul, smul_smul, mul_comm d' d]

theorem tmul_one_injective {W : Type} [AddCommGroup W] [Module O W] [Module.Free O W] {w : W}
    (h : (1 : C) ⊗ₜ[O] w = 0) : w = 0 := by
  have hi : Function.Injective ((Algebra.linearMap O C).rTensor W) :=
    Module.Flat.rTensor_preserves_injective_linearMap _ (IsFractionRing.injective O C)
  have h1 : (Algebra.linearMap O C).rTensor W ((1 : O) ⊗ₜ[O] w) = 0 := by
    simpa using h
  have h2 := hi (h1.trans (map_zero _).symm)
  simpa using congrArg (TensorProduct.lid O W) h2

variable {E : Type} [Field E] [NumberField E]

def omAct (C : Type) [Field C] [Algebra O C] (c : E ≃+* E) {L : Type} [AddCommGroup L] [Module O L]
    (ρL : 𝓞 E →+* Module.End O L) : 𝓞 E →+* Module.End C (C ⊗[O] Module.Dual O L) where
  toFun a := LinearMap.baseChange C (ρL (RingOfIntegers.mapRingEquiv c a)).dualMap
  map_one' := by
    ext w
    simp [LinearMap.baseChange_tmul]
    rfl
  map_mul' a b := by
    ext w
    simp [LinearMap.baseChange_tmul, mul_comm a b]
    rfl
  map_zero' := by
    ext w
    simp [LinearMap.baseChange_tmul]
    exact (congrArg _ (by ext x; simp [LinearMap.dualMap_apply])).trans (TensorProduct.tmul_zero _ _)
  map_add' a b := by
    ext w
    simp [LinearMap.baseChange_tmul]
    exact (congrArg _ (by ext x; simp [LinearMap.dualMap_apply])).trans (TensorProduct.tmul_add _ _ _)

theorem omAct_tmul (c : E ≃+* E) {L : Type} [AddCommGroup L] [Module O L]
    (ρL : 𝓞 E →+* Module.End O L) (a : 𝓞 E) (t : C) (w : Module.Dual O L) :
    omAct C c ρL a (t ⊗ₜ w) = t ⊗ₜ (w ∘ₗ ρL (RingOfIntegers.mapRingEquiv c a)) := rfl

theorem exists_point {c : E ≃+* E} {κ : O} {N : ℕ} {La : Type} [AddCommGroup La] [Module (𝓞 E) La]
    {EF : La →ₗ[ℤ] La →ₗ[ℤ] ℤ} {u : Fin N → La} {L : Type} [AddCommGroup L] [Module O L]
    [Module.Free O L] [Module.Finite O L] (ρL : 𝓞 E →+* Module.End O L)
    (ρ : 𝓞 E →+* Module.End C (C ⊗[ℤ] La)) (T : Submodule O (C ⊗[ℤ] La))
    (e : C ⊗[ℤ] La →ₗ[C] C ⊗[ℤ] La →ₗ[C] C)
    (hρ : ∀ (a : 𝓞 E) (x : La), ρ a (1 ⊗ₜ x) = 1 ⊗ₜ (a • x))
    (hT : T = Submodule.span O (Set.range fun x : La => (1 : C) ⊗ₜ[ℤ] x))
    (hfree : IsFreeOn ρ T (fun i => 1 ⊗ₜ u i))
    (he : ∀ x y : La, e (1 ⊗ₜ x) (1 ⊗ₜ y) = (EF x y : C))
    (halt : ∀ x, e x x = 0) (hnd : ∀ y, (∀ x, e x y = 0) → y = 0) (hperf : dualLat e T = T)
    (hadj : ∀ (a : 𝓞 E) x y, e (ρ a x) y = e x (ρ (RingOfIntegers.mapRingEquiv c a) y))
    {M : Type} [AddCommGroup M] [Module O M] (inc : M →ₗ[O] C ⊗[ℤ] La) (gen : La →+ M)
    (hinc : ∀ a, inc (gen a) = 1 ⊗ₜ a) (hgen : Submodule.span O (Set.range gen) = ⊤)
    (D : M →ₗ[O] Module.Dual O L) (B : M →ₗ[O] M →ₗ[O] O)
    (hB : ∀ a b, B (gen a) (gen b) = (EF a b : O))
    (hlin : ∀ (a : 𝓞 E) x, D (gen (a • x)) = D (gen x) ∘ₗ ρL (RingOfIntegers.mapRingEquiv c a))
    (hκ : ∀ w, ∃ m, D m = κ • w) (hκ0 : algebraMap O C κ ≠ 0)
    (hlag : ∀ x, D x = 0 ↔ ∀ y, D y = 0 → B x y = 0) :
    ∃ P : HTPoint C O c κ N (C ⊗[ℤ] La) (C ⊗[O] Module.Dual O L),
      P.ρ = ρ ∧ P.e = e ∧ (∀ i, P.t i = 1 ⊗ₜ u i) ∧
      P.om = LinearMap.range (TensorProduct.mk O C (Module.Dual O L) 1) ∧
      P.ρΩ = omAct C c ρL ∧ ∀ x, P.ht (1 ⊗ₜ x) = 1 ⊗ₜ D (gen x) := by
  let mk1 : Module.Dual O L →ₗ[O] C ⊗[O] Module.Dual O L := TensorProduct.mk O C (Module.Dual O L) 1
  let h0 : La →ₗ[ℤ] C ⊗[O] Module.Dual O L :=
    (mk1.restrictScalars ℤ) ∘ₗ (D.restrictScalars ℤ) ∘ₗ gen.toIntLinearMap
  let ht : C ⊗[ℤ] La →ₗ[C] C ⊗[O] Module.Dual O L := LinearMap.liftBaseChange C h0
  have ht1 : ∀ x, ht (1 ⊗ₜ x) = 1 ⊗ₜ D (gen x) := fun x => by
    simp [ht, h0, mk1, LinearMap.liftBaseChange_tmul]
  have htinc : ∀ m, ht (inc m) = 1 ⊗ₜ D m := fun m => by
    have : (ht.restrictScalars O) ∘ₗ inc = mk1 ∘ₗ D := by
      refine LinearMap.ext_on hgen ?_
      rintro _ ⟨a, rfl⟩
      simp [hinc, ht1, mk1]
    exact LinearMap.congr_fun this m
  have hincT : ∀ m, inc m ∈ T := fun m => by
    have : (⊤ : Submodule O M) ≤ T.comap inc := by
      rw [← hgen, Submodule.span_le]
      rintro _ ⟨a, rfl⟩
      change inc (gen a) ∈ T
      rw [hinc, hT]
      exact Submodule.subset_span ⟨a, rfl⟩
    exact this (Submodule.mem_top (x := m))
  have hBe : ∀ m m', e (inc m) (inc m') = algebraMap O C (B m m') := by
    have h1 : ∀ a m', e (inc (gen a)) (inc m') = algebraMap O C (B (gen a) m') := fun a m' => by
      have : ((e (inc (gen a))).restrictScalars O) ∘ₗ inc = Algebra.linearMap O C ∘ₗ B (gen a) := by
        refine LinearMap.ext_on hgen ?_
        rintro _ ⟨b, rfl⟩
        simp [hinc, he, hB]
      exact LinearMap.congr_fun this m'
    intro m m'
    have : ((e.flip (inc m')).restrictScalars O) ∘ₗ inc = Algebra.linearMap O C ∘ₗ B.flip m' := by
      refine LinearMap.ext_on hgen ?_
      rintro _ ⟨a, rfl⟩
      simpa using h1 a m'
    exact LinearMap.congr_fun this m
  have hd0 : ∀ {d : O}, d ≠ 0 → algebraMap O C d ≠ 0 := fun hd h =>
    hd (IsFractionRing.injective O C (h.trans (map_zero _).symm))
  have hsurj : ∀ a : La, ∃ m, inc m = 1 ⊗ₜ a := fun a => ⟨gen a, hinc a⟩
  have hzero : ∀ (x : C ⊗[ℤ] La) (d : O) (m : M), d ≠ 0 → inc m = d • x → (ht x = 0 ↔ D m = 0) := by
    intro x d m hd hm
    have h1 : algebraMap O C d • ht x = 1 ⊗ₜ D m := by
      rw [← map_smul, algebraMap_smul, ← hm, htinc]
    constructor
    · intro h
      rw [h, smul_zero] at h1
      exact tmul_one_injective (C := C) h1.symm
    · intro h
      rw [h, TensorProduct.tmul_zero] at h1
      exact (smul_eq_zero.1 h1).resolve_left (hd0 hd)
  refine ⟨{ T := T, ρ := ρ, t := fun i => 1 ⊗ₜ u i, free := hfree, e := e, alt := halt, nondeg := hnd,
            perfect := hperf, adj := hadj, om := LinearMap.range mk1, om_lat := ?_,
            ρΩ := omAct C c ρL, om_stable := ?_, ht := ht, ht_lin := ?_, ht_mem := ?_, κ_ne := hκ0,
            κ_mem := ?_, lagr := ?_ }, rfl, rfl, fun _ => rfl, rfl, rfl, ht1⟩
  · refine { fg := ?_, linearIndepOn := ?_, span_eq_top := ?_ }
    · rw [LinearMap.range_eq_map]
      exact (Module.Finite.fg_top).map _
    · intro s _ h
      exact (LinearIndependent.iff_fractionRing O C).mp h
    · rw [eq_top_iff]
      intro x hx
      clear hx
      induction x using TensorProduct.induction_on with
      | zero => exact Submodule.zero_mem _
      | tmul c w =>
        have : c ⊗ₜ[O] w = c • ((1 : C) ⊗ₜ[O] w) := by simp [TensorProduct.smul_tmul']
        rw [this]
        exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨w, rfl⟩)
      | add x y hx hy => exact Submodule.add_mem _ hx hy
  · rintro a _ ⟨w, rfl⟩
    exact ⟨w ∘ₗ ρL (RingOfIntegers.mapRingEquiv c a), rfl⟩
  · intro a x
    induction x using TensorProduct.induction_on with
    | zero => simp
    | tmul s y =>
      have hs : ∀ z : La, s ⊗ₜ[ℤ] z = s • ((1 : C) ⊗ₜ[ℤ] z) := fun z => by simp [TensorProduct.smul_tmul']
      rw [hs, map_smul, map_smul, map_smul, map_smul, hρ, ht1, ht1, omAct_tmul, hlin]
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
  · intro x hx
    rw [hT] at hx
    induction hx using Submodule.span_induction with
    | mem x h =>
      obtain ⟨a, rfl⟩ := h
      exact ⟨D (gen a), (ht1 a).symm⟩
    | zero => simp
    | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
    | smul r x _ hx =>
      rw [← algebraMap_smul C r x, map_smul, algebraMap_smul]
      exact Submodule.smul_mem _ _ hx
  · rintro _ ⟨w, rfl⟩
    obtain ⟨m, hm⟩ := hκ w
    refine ⟨inc m, hincT m, ?_⟩
    rw [htinc, hm]
    exact TensorProduct.tmul_smul _ _ _
  · intro x
    obtain ⟨d, hd, m, hm⟩ := exists_smul_eq inc hsurj x
    rw [hzero x d m hd hm]
    constructor
    · intro hDm y hy
      obtain ⟨d', hd', m', hm'⟩ := exists_smul_eq inc hsurj y
      have h1 := (hlag m).1 hDm m' ((hzero y d' m' hd' hm').1 hy)
      have h2 := hBe m m'
      rw [h1, map_zero, hm, hm', ← algebraMap_smul C d x, ← algebraMap_smul C d' y, map_smul,
        map_smul, LinearMap.smul_apply, smul_eq_mul, smul_eq_mul] at h2
      exact (mul_eq_zero.1 ((mul_eq_zero.1 h2).resolve_left (hd0 hd'))).resolve_left (hd0 hd)
    · intro h
      refine (hlag m).2 fun y hy => ?_
      have h1 := h (inc y) (by rw [htinc, hy, TensorProduct.tmul_zero])
      have h2 := hBe m y
      rw [hm, ← algebraMap_smul C d x, map_smul, LinearMap.smul_apply, h1, smul_zero] at h2
      exact IsFractionRing.injective O C (h2.symm.trans (map_zero _).symm)

end Lin

section Forms

theorem baseChange_alt {R A W : Type} [CommRing R] [CommRing A] [Algebra R A] [AddCommGroup W] [Module R W]
    (B : LinearMap.BilinForm R W) (h : ∀ x, B x x = 0) (z : A ⊗[R] W) :
    LinearMap.BilinForm.baseChange A B z z = 0 := by
  have hs : ∀ x y, B x y = - B y x := fun x y => by
    have := h (x + y)
    simp only [map_add (f := _), LinearMap.add_apply, h, zero_add, add_zero] at this
    exact eq_neg_of_add_eq_zero_right this
  have skew : ∀ z z' : A ⊗[R] W, LinearMap.BilinForm.baseChange A B z z' +
      LinearMap.BilinForm.baseChange A B z' z = 0 := by
    intro z z'
    induction z using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy =>
      simp only [map_add (f := _), LinearMap.add_apply]
      linear_combination hx + hy
    | tmul a m =>
      induction z' using TensorProduct.induction_on with
      | zero => simp
      | add x y hx hy =>
        simp only [map_add (f := _), LinearMap.add_apply]
        linear_combination hx + hy
      | tmul a' m' =>
        rw [LinearMap.BilinForm.baseChange_tmul, LinearMap.BilinForm.baseChange_tmul, hs m m', neg_smul,
          _root_.mul_comm a a', neg_add_cancel]
  induction z using TensorProduct.induction_on with
  | zero => simp
  | add x y hx hy =>
    simp only [map_add (f := _), LinearMap.add_apply]
    linear_combination hx + hy + skew x y
  | tmul a m => rw [LinearMap.BilinForm.baseChange_tmul, h, zero_smul]

theorem baseChange_perfect {R W : Type} [CommRing R] [AddCommGroup W] [Module.Free ℤ W]
    [Module.Finite ℤ W] (B : LinearMap.BilinForm ℤ W) (h : ∀ x, B x x = 0) (hb : Function.Bijective B) :
    Function.Bijective (LinearMap.BilinForm.baseChange R B) := by
  classical
  have hs : ∀ x y, B x y = - B y x := fun x y => by
    have := h (x + y)
    simp only [map_add (f := _), LinearMap.add_apply, h, zero_add, add_zero] at this
    exact eq_neg_of_add_eq_zero_right this
  let b := Module.finBasis ℤ W
  let bR := Algebra.TensorProduct.basis R b
  have hbR : ∀ i, bR i = 1 ⊗ₜ b i := fun i => by simp [bR]
  choose d hd using fun i => hb.2 (b.coord i)
  have hdb : ∀ i k, B (d i) (b k) = if k = i then 1 else 0 := fun i k => by
    rw [hd]; simp [Module.Basis.coord_apply, Finsupp.single_apply]
  constructor
  · rw [injective_iff_map_eq_zero]
    intro x hx
    refine bR.ext_elem fun k => ?_
    have h1 := LinearMap.congr_fun hx (1 ⊗ₜ d k)
    rw [← bR.sum_repr x] at h1

    simp only [map_sum, map_smul, LinearMap.sum_apply, LinearMap.smul_apply, hbR,
    LinearMap.BilinForm.baseChange_tmul, hs (b _), hdb] at h1
    simpa [Finset.sum_ite_eq] using h1
  · intro f
    refine ⟨∑ i, f (1 ⊗ₜ b i) • ((1 : R) ⊗ₜ[ℤ] d i), bR.ext fun k => ?_⟩

    simp only [map_sum, map_smul, LinearMap.sum_apply, LinearMap.smul_apply, hbR,
    LinearMap.BilinForm.baseChange_tmul, hdb]
    simp [Finset.sum_ite_eq]

theorem span_gen_baseChange {R O W T : Type} [CommRing R] [CommRing O] [Algebra R O] [AddCommGroup W]
    [AddCommGroup T] [Module R T] (j : R ⊗[ℤ] W ≃ₗ[R] T) :
    Submodule.span O (Set.range fun a : W => (1 : O) ⊗ₜ[R] j (1 ⊗ₜ a)) = ⊤ := by
  rw [eq_top_iff]
  rintro z -
  induction z using TensorProduct.induction_on with
  | zero => simp
  | add x y hx hy => exact Submodule.add_mem _ hx hy
  | tmul o t =>
    have ht : t ∈ Submodule.span R (Set.range fun a : W => j (1 ⊗ₜ a)) := by
      rw [_root_.UpperTheory.Reformulated.B.DYlb6.main]; trivial
    induction ht using Submodule.span_induction generalizing o with
    | mem t h =>
      obtain ⟨a, rfl⟩ := h
      have : o ⊗ₜ[R] j (1 ⊗ₜ a) = o • ((1 : O) ⊗ₜ[R] j (1 ⊗ₜ a)) := by simp [TensorProduct.smul_tmul']
      rw [this]
      exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
    | zero => simp
    | add x y _ _ hx hy => rw [TensorProduct.tmul_add]; exact Submodule.add_mem _ (hx o) (hy o)
    | smul s t _ ht =>
      rw [← TensorProduct.smul_tmul]
      exact ht _

theorem exists_inc {R O C W T : Type} [CommRing R] [CommRing O] [Field C] [Algebra R O] [Algebra O C]
    [AddCommGroup W] [AddCommGroup T] [Module R T] (j : R ⊗[ℤ] W ≃ₗ[R] T) :
    ∃ inc : O ⊗[R] T →ₗ[O] C ⊗[ℤ] W, ∀ a, inc (1 ⊗ₜ j (1 ⊗ₜ a)) = 1 ⊗ₜ a := by
  refine ⟨(AlgebraTensorModule.map (Algebra.linearMap O C) (LinearMap.id : W →ₗ[ℤ] W)) ∘ₗ
    (AlgebraTensorModule.cancelBaseChange ℤ R O O W).toLinearMap ∘ₗ
    (LinearEquiv.baseChange R O _ _ j.symm).toLinearMap, fun a => ?_⟩
  simp [LinearEquiv.baseChange]

end Forms

section Tower

variable {p : ℕ} [Fact p.Prime] {O : Type} [CommRing O]

theorem tate_dual_ext {G : PDivGroup p O} {χ ψ : G.dual.Tate} (h : ∀ n, charElem χ n = charElem ψ n) : χ = ψ :=
  TateOver.ext (funext fun n => AlgHom.ext fun φ => by
    rw [← apply_charElem, ← apply_charElem, h])


omit [Fact p.Prime] in
theorem lev_surjective {La : Type} [AddCommGroup La] (n : ℕ) : Function.Surjective (lev (La := La) p n) :=
  fun t => by
    obtain ⟨a, ha⟩ := Submodule.Quotient.mk_surjective _ (Multiplicative.toAdd t)
    exact ⟨a, ha⟩

theorem muRoot_intCast_smul (ζ : ℕ → Oˣ) (h0 : (fun n => ((ζ n : Oˣ) : O)) 0 = 1)
    (h : ∀ n, (fun n => ((ζ n : Oˣ) : O)) (n + 1) ^ p = (fun n => ((ζ n : Oˣ) : O)) n) (z : ℤ) (n : ℕ) :
    muRoot ((z : ℤ_[p]) • muTate O (fun n => ((ζ n : Oˣ) : O)) h0 h) n = ((ζ n ^ z : Oˣ) : O) := by
  set t := muTate O (fun n => ((ζ n : Oˣ) : O)) h0 h
  rw [Int.cast_smul_eq_zsmul]
  have key : ∀ z : ℤ, muRoot ((z + 1) • t) n = muRoot (z • t) n * (ζ n : O) := fun z => by
    rw [add_smul, one_smul, muRoot_add, muRoot_muTate]
  induction z using Int.induction_on with
  | zero => simp
  | succ i ih => rw [key, ih, zpow_add_one, Units.val_mul]
  | pred i ih =>
    have h1 := key (-(i : ℤ) - 1)
    rw [sub_add_cancel, ih] at h1
    rw [zpow_sub_one]
    have h2 := congrArg (· * ((ζ n)⁻¹ : Oˣ).1) h1
    simp only [_root_.mul_assoc, Units.mul_inv, _root_.mul_one] at h2
    rw [Units.val_mul, h2]

variable {La L : Type} [AddCommGroup La] [AddCommGroup L] [Module O L] {X : OrdTower p O La L}
  {G : PDivGroup p O} {e : ∀ n, G.A n ≃ₐ[O] X.A n} {τ : La →+ G.Tate}

theorem lam_tau_act {B : La →ₗ[ℤ] La →ₗ[ℤ] ℤ} {ζ : ℕ → Oˣ} {lam : G ⟶ G.dual}
    (hlam : ∀ (a b : La) n, (e n (charElem (tateMap G G.dual O lam (τ a)) n)).1 (lev p n b) =
      ((ζ n ^ B a b : Oˣ) : O))
    {φ ψ : La → La} {f : G ⟶ G}
    (hf : ∀ n (g : G.A n) (a : La), (e n (f.app n g)).1 (lev p n a) = (e n g).1 (lev p n (φ a)))
    (hadj : ∀ x y, B (ψ x) y = B x (φ y)) (x : La) :
    tateMap G G.dual O lam (τ (ψ x)) =
      tateMap _ _ O (dualHom G G f) (tateMap G G.dual O lam (τ x)) := by
  refine tate_dual_ext fun n => ?_
  rw [charElem_tateMap]
  refine (e n).injective (Subtype.ext (funext fun t => ?_))
  obtain ⟨b, rfl⟩ := lev_surjective n t
  rw [hlam, hf, hlam, hadj]

theorem pairing_tau (hre : X.Realises G e τ) {B : La →ₗ[ℤ] La →ₗ[ℤ] ℤ} {ζ : ℕ → Oˣ} {lam : G ⟶ G.dual}
    (hlam : ∀ (a b : La) n, (e n (charElem (tateMap G G.dual O lam (τ a)) n)).1 (lev p n b) =
      ((ζ n ^ B a b : Oˣ) : O))
    (h0 : (fun n => ((ζ n : Oˣ) : O)) 0 = 1)
    (h : ∀ n, (fun n => ((ζ n : Oˣ) : O)) (n + 1) ^ p = (fun n => ((ζ n : Oˣ) : O)) n) (a b : La) :
    pairing G O (τ b) (tateMap G G.dual O lam (τ a)) =
      ((B a b : ℤ) : ℤ_[p]) • muTate O (fun n => ((ζ n : Oˣ) : O)) h0 h :=
  muRoot_ext fun n => by
    rw [muRoot_intCast_smul, muRoot_pairing, hre.pt, hlam]

end Tower

section Bij

variable {p : ℕ} [Fact p.Prime] {O : Type} [CommRing O]

theorem tateMap_bijective {G : PDivGroup p O} (lam : G ⟶ G.dual) (ε : (mu p O).Tate)
    (hε : Function.Bijective fun a : ℤ_[p] => (a • ε : (mu p O).Tate))
    (hp2 : Function.Bijective (pairing G O).flip)
    (Bp : G.Tate →ₗ[ℤ_[p]] G.Tate →ₗ[ℤ_[p]] ℤ_[p]) (hB : Function.Bijective Bp)
    (h : ∀ x y, pairing G O y (tateMap G G.dual O lam x) = Bp x y • ε) :
    Function.Bijective (tateMap G G.dual O lam) := by
  constructor
  · rw [injective_iff_map_eq_zero]
    intro x hx
    refine hB.1 ((LinearMap.ext fun y => ?_).trans (map_zero Bp).symm)
    refine hε.1 ?_
    change Bp x y • ε = (0 : ℤ_[p]) • ε
    rw [← h, hx, map_zero, zero_smul]
  · intro χ
    let u : ℤ_[p] ≃ₗ[ℤ_[p]] (mu p O).Tate :=
      LinearEquiv.ofBijective (LinearMap.toSpanSingleton ℤ_[p] _ ε) hε
    obtain ⟨x, hx⟩ := hB.2 (u.symm.toLinearMap ∘ₗ (pairing G O).flip χ)
    refine ⟨x, hp2.1 (LinearMap.ext fun y => ?_)⟩
    change pairing G O y (tateMap G G.dual O lam x) = pairing G O y χ
    rw [h, hx]
    exact u.apply_symm_apply (pairing G O y χ)

end Bij

theorem exists_HTPoint : FarguesHodgeTate → ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (O : Type) [CommRing O] [IsDomain O] [Algebra O C] (hv : v.Integers O) (hp : v (p : C) < 1) (hO : IsAdicComplete (Ideal.span {(p : O)}) O) (E : Type) [Field E] [NumberField E] (c : E ≃+* E) (hc : ∀ x, c (c x) = x) (La : Type) [AddCommGroup La] [Module (𝓞 E) La] (EF : La →ₗ[ℤ] La →ₗ[ℤ] ℤ) (N : ℕ) (u : Fin N → La) (hu : IsPolLattice c p EF u) (L : Type) [AddCommGroup L] [Module O L] [Module.Free O L] [Module.Finite O L] (X : OrdTower p O La L) (ρL : 𝓞 E →+* Module.End O L) (ζ : ℕ → Oˣ) (κ : O), (∀ a : 𝓞 E, X.Acts (DistribSMul.toAddMonoidHom La a) (ρL a)) → 2 * Module.finrank O L = Module.finrank ℤ La → (∀ n, IsPrimitiveRoot (ζ n) (p ^ n)) → (∀ n, ζ (n + 1) ^ p = ζ n) → X.PairingExtends EF ζ → IsHTConst v p κ → ∃ P : HTPoint C O c κ N (C ⊗[ℤ] La) (C ⊗[O] Module.Dual O L), IsPointOf p X.der EF ζ ρL u P := by
  intro hF p _ C _ _ _ v O _ _ _ hv hp hO E _ _ c hc La _ _ EF N u hu L _ _ _ _ X ρL ζ κ hact hrank hprim hcomp
    hpair hκ
  classical
  haveI := hu.free
  haveI := hu.finite
  haveI : IsFractionRing O C := hv.isFractionRing
  haveI : IsIntegrallyClosed O := hv.isIntegrallyClosed
  obtain ⟨alg⟩ := (_root_.GlobalTheory.CompanionTheory.Ar.HT.padicComplete_integers_structure p C v O hv hp hO).1
  letI := alg
  obtain ⟨ρ, T, e, h1, h2, h3, h4, h5, h6, h7, h8⟩ := _root_.GlobalTheory.CompanionTheory.Ar.HT.free_on_lift p C v O hv hp hO E c La EF N u hu
  obtain ⟨G, ee, τ, hre, hheight, j, hj⟩ := _root_.GlobalTheory.CompanionTheory.Ar.HT.tower_pdiv_exists p C v O hv hp hO La L X
  obtain ⟨lam, hlam⟩ := PositivityTheory.HtPt.Twpol.tower_pol p C v O hv hp hO La L X G ee τ hre EF ζ hprim hcomp hpair
  obtain ⟨jj, hder, hjj⟩ := PositivityTheory.HtPt.Twomega.tower_omega p C v O hv hp hO La L X G ee τ hre
  have hend := (GlobalTheory.T.divisible_group_tower_compatibility p C v O hv hp hO La L X G ee τ hre).1
  haveI : Module.Free O G.omega := Module.Free.of_equiv jj.symm
  haveI : Module.Finite O G.omega := Module.Finite.equiv jj.symm

  let ζ' : ℕ → O := fun n => ((ζ n : Oˣ) : O)
  have hprim' : ∀ n, IsPrimitiveRoot (ζ' n) (p ^ n) := fun n => (IsPrimitiveRoot.coe_units_iff).2 (hprim n)
  have h0 : ζ' 0 = 1 := by simpa using (hprim' 0).pow_eq_one
  have hs : ∀ n, ζ' (n + 1) ^ p = ζ' n := fun n => by
    change ((ζ (n + 1) : Oˣ) : O) ^ p = (ζ n : O)
    rw [← Units.val_pow_eq_pow_val, hcomp]
  have hζ1 : ζ' 1 ≠ 1 := by
    have := (hprim' 1).ne_one (by simpa using (Fact.out : p.Prime).one_lt)
    exact this

  let b0 : LinearMap.BilinForm ℤ_[p] (ℤ_[p] ⊗[ℤ] La) := LinearMap.BilinForm.baseChange ℤ_[p] EF
  let Bp : LinearMap.BilinForm ℤ_[p] G.Tate :=
    b0.compl₁₂ j.symm.toLinearMap j.symm.toLinearMap
  have hjs : ∀ a, j.symm (τ a) = 1 ⊗ₜ a := fun a => by rw [← hj, LinearEquiv.symm_apply_apply]
  have hBp : ∀ a b, Bp (τ a) (τ b) = ((EF a b : ℤ) : ℤ_[p]) := fun a b => by
    simp [Bp, b0, hjs, LinearMap.BilinForm.baseChange_tmul]
  have hBpalt : ∀ x, Bp x x = 0 := fun x => baseChange_alt EF hu.alt _
  have hBpbij : Function.Bijective Bp := by
    have hb := baseChange_perfect (R := ℤ_[p]) EF hu.alt hu.unimod
    constructor
    · intro x y hxy
      refine j.symm.injective (hb.1 (LinearMap.ext fun w => ?_))
      have := LinearMap.congr_fun hxy (j w)
      simpa [Bp] using this
    · intro f
      obtain ⟨w, hw⟩ := hb.2 (f ∘ₗ j.toLinearMap)
      refine ⟨j w, LinearMap.ext fun y => ?_⟩
      have := LinearMap.congr_fun hw (j.symm y)
      simpa [Bp, b0] using this
  have hpairing : ∀ x y, pairing G O y (tateMap G G.dual O lam x) = Bp x y • muTate O ζ' h0 hs := by
    have hst : Submodule.span ℤ_[p] (Set.range τ) = ⊤ := by
      have := _root_.UpperTheory.Reformulated.B.DYlb6.main j
      simpa only [hj] using this
    have hbil : (pairing G O).flip ∘ₗ tateMap G G.dual O lam =
        Bp.compr₂ (LinearMap.toSpanSingleton ℤ_[p] _ (muTate O ζ' h0 hs)) := by
      refine LinearMap.ext_on hst ?_
      rintro _ ⟨a, rfl⟩
      refine LinearMap.ext_on hst ?_
      rintro _ ⟨b, rfl⟩
      change pairing G O (τ b) (tateMap G G.dual O lam (τ a)) = Bp (τ a) (τ b) • muTate O ζ' h0 hs
      rw [hBp]
      exact pairing_tau hre hlam h0 hs a b
    intro x y
    exact LinearMap.congr_fun (LinearMap.congr_fun hbil x) y
  have hperf := PDivGroup.tate_free_perfect p O C G
  have hbij : Function.Bijective (tateMap G G.dual O lam) :=
    tateMap_bijective lam (muTate O ζ' h0 hs) (hperf.2.2.2.2.2.1 ζ' h0 hs hprim') hperf.2.2.2.2.2.2.2 Bp hBpbij
      hpairing
  have hrk : 2 * Module.finrank O G.omega = G.height := by
    rw [jj.finrank_eq, ← (Module.Free.chooseBasis O L).toDualEquiv.finrank_eq, hrank, hheight]

  let B : LinearMap.BilinForm O (O ⊗[ℤ_[p]] G.Tate) := LinearMap.BilinForm.baseChange O Bp
  have hBB : ∀ x y, B (1 ⊗ₜ x) (1 ⊗ₜ y) = algebraMap ℤ_[p] O (Bp x y) := fun x y => by
    simp [B, LinearMap.BilinForm.baseChange_tmul, Algebra.algebraMap_eq_smul_one]
  obtain ⟨hcok, hlag⟩ := GlobalTheory.CompanionTheory.Ar.HT.dlog_lagrangian hF p C v O hv hp hO G lam ζ' h0 hs B κ hζ1 hκ hbij hrk
    (fun x y => ⟨Bp x y, hpairing x y, hBB x y⟩) (baseChange_alt Bp hBpalt)
  let D : O ⊗[ℤ_[p]] G.Tate →ₗ[O] Module.Dual O L :=
    jj.toLinearMap ∘ₗ dlogLinear G ∘ₗ (tateMap G G.dual O lam).baseChange O
  let gen : La →+ O ⊗[ℤ_[p]] G.Tate := ((TensorProduct.mk ℤ_[p] O G.Tate 1).toAddMonoidHom).comp τ
  have hDgen : ∀ x, D (gen x) = jj (dlog G (tateMap G G.dual O lam (τ x))) := fun x => by
    simp [D, gen]
  obtain ⟨inc, hinc⟩ := exists_inc (C := C) (O := O) j
  have hinc' : ∀ a, inc (gen a) = 1 ⊗ₜ a := fun a => by
    have := hinc a
    rwa [hj] at this
  have hgen : Submodule.span O (Set.range gen) = ⊤ := by
    have h' := span_gen_baseChange (O := O) j
    simp only [hj] at h'
    exact h'
  have hlin : ∀ (a : 𝓞 E) x, D (gen (a • x)) = D (gen x) ∘ₗ ρL (RingOfIntegers.mapRingEquiv c a) := by
    intro a x
    obtain ⟨f, -, hf⟩ := hend _ _ (hact (RingOfIntegers.mapRingEquiv c a))
    have h := lam_tau_act (ψ := fun y => a • y) hlam hf (fun y z => hu.adj a y z) x
    rw [hDgen, hDgen, h, dlog_tateMap, hjj _ _ f (hact _) hf]
  obtain ⟨P, hPρ, hPe, hPt, hPom, hPΩ, hPht⟩ := exists_point (κ := κ) (u := u) ρL ρ T e h1 h2 h3 h4 h5 h6 h7 h8 inc gen
    hinc' hgen D B (fun a b => by
      change B (1 ⊗ₜ τ a) (1 ⊗ₜ τ b) = _
      rw [hBB, hBp, map_intCast]) hlin
    (fun w => by
      obtain ⟨m, hm⟩ := hcok (jj.symm w)
      refine ⟨m, ?_⟩
      change jj (_) = _
      rw [hm, map_smul, LinearEquiv.apply_symm_apply]) hκ.1
    (fun x => by
      have hz : ∀ y, D y = 0 ↔ (dlogLinear G ∘ₗ (tateMap G G.dual O lam).baseChange O) y = 0 := fun y =>
        jj.map_eq_zero_iff
      simp only [hz]
      exact hlag x)
  refine ⟨P, hPt, fun a x => by rw [hPρ]; exact h1 a x, fun x y => by rw [hPe]; exact h4 x y, hPom,
    fun a w => by rw [hPΩ]; rfl, ?_⟩
  intro n x f w hf hd
  have hfe : f = (ee n (charElem (tateMap G G.dual O lam (τ x)) n)).1 := funext fun t => by
    obtain ⟨b, rfl⟩ := lev_surjective n t
    rw [hf, hlam]
  have h9 := hder (tateMap G G.dual O lam (τ x)) n
  rw [← hfe] at h9
  obtain ⟨y, hy⟩ := (X.der_unique n f w _ hd).1 h9
  refine ⟨1 ⊗ₜ y, by rw [hPom]; exact ⟨y, rfl⟩, ?_⟩
  rw [hPht, hDgen, hy, TensorProduct.tmul_add, TensorProduct.tmul_smul]

end GlobalTheory.CompanionTheory.Ar.HT.TowerPoint
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PolarisedDivisibleGroupExists =====
