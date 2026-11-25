module

public import Development.AbelianVarietyTheory.BlockTheory.UniformisationCharts.RigidPullbackIdentification
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsPullDegEquivApply
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsPullFOfGenRel
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsBaseChangeUniformization
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.NonemptyCubicalPull
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TwistedPrincipalPolarisationSectionsBaseChange
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AdmissibleBasePowerSeries
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsMonHomOfMul
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesAtRev, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegIdentitySymm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegId, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegIdStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesAtRev =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesAtRev", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.UniformisationCharts.RigidPullbackIdentification\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification (CarriesAt PullIdent)
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PullDegSymm

section Bundle

variable {X X' Y : Scheme.{0}} {L : LB X} {L' : LB X'} {F : X' ⟶ X}

theorem base_cancel {G : X ⟶ X'} (h : G ≫ F = 𝟙 X) (x : X) : F (G x) = x := by
  have := congrArg (fun f : X ⟶ X => f x) h
  exact this

theorem le_rev {G : X ⟶ X'} (h : G ≫ F = 𝟙 X) (p : (LB.div (L'.pull G) L).ι) :
    (LB.div (L'.pull G) L).U p ≤ G ⁻¹ᵁ ((L.pull F).U (fun _ => p.2) ⊓ L'.U (p.1 PUnit.unit)) :=
  fun x hx => ⟨mem_pull.2 (by rw [base_cancel h]; exact hx.2), mem_pull.1 hx.1⟩

def revIso (w : LB.Iso L' (L.pull F)) (G : X ⟶ X') (h : G ≫ F = 𝟙 X) : LB.Iso L (L'.pull G) :=
  ⟨fun p => (res (le_rev h p) (pullU G _ (w.s (fun _ => p.2, p.1 PUnit.unit))))⁻¹⟩

theorem gw_revIso (w : LB.Iso L' (L.pull F)) {G : X ⟶ X'} (h : G ≫ F = 𝟙 X) {Z : Scheme.{0}} (f : Z ⟶ X) (z : Z)
    (j' : L'.ι) (j : L.ι) (h₁ : G (f z) ∈ L'.U j') (h₂ : f z ∈ L.U j) :
    gw (revIso w G h) f z j' j = (gw w (f ≫ G) z j j')⁻¹ := by
  have hm : f z ∈ (LB.div (L'.pull G) L).U (fun _ => j', j) := ⟨mem_pull.2 h₁, h₂⟩
  exact (map_inv _ _).trans (congrArg (·⁻¹) ((gm_res f z _ hm _).trans (gm_pull f G z _ (le_rev h _ hm) _)))

theorem revIso_isGen (w : LB.Iso L' (L.pull F)) (hw : w.IsGen) {G : X ⟶ X'} (h : G ≫ F = 𝟙 X) :
    (revIso w G h).IsGen := by
  refine (isGen_iff _).2 fun Z f z j j' k k' hj hj' hk hk' => ?_
  have hp := (isGen_iff w).1 hw Z (f ≫ G) z k k' j j' (show F (G (f z)) ∈ _ by rw [base_cancel h]; exact hk)
    (show F (G (f z)) ∈ _ by rw [base_cancel h]; exact hk') hj hj'
  have e : (f ≫ G) ≫ F = f := by rw [Category.assoc, h, Category.comp_id]
  rw [e] at hp
  rw [gw_revIso w h f z j k hj hk, gw_revIso w h f z j' k' hj' hk', hp]
  simp only [mul_inv, inv_inv]
  ac_rfl

theorem carriesAt_iff (w : LB.Iso L' (L.pull F)) (p' : Y ⟶ X') (p : Y ⟶ X) (hp : p' ≫ F = p) (n : ℤ)
    (a : LB.Gen (LB.LinComb L' (K := PUnit) (fun _ => p') (fun _ => n)))
    (b : LB.Gen (LB.LinComb L (K := PUnit) (fun _ => p) (fun _ => n))) :
    CarriesAt L L' F w p' p hp n a b ↔ ∀ (y : Y) (j : L.ι) (j' : L'.ι), F (p' y) ∈ L.U j → p' y ∈ L'.U j' →
      gm (𝟙 Y) y _ (b.s (fun _ => j)) = gw w p' y j j' ^ n * gm (𝟙 Y) y _ (a.s (fun _ => j')) := by
  constructor
  · intro H y j j' h₁ h₂
    have hm : y ∈ p' ⁻¹ᵁ (LB.div (L.pull F) L').U (fun _ => j, j') := ⟨mem_pull.2 h₁, h₂⟩
    have e := congrArg (gm (𝟙 Y) y _) (H j j')
    refine (gm_res _ y _ hm _).symm.trans (e.trans ?_)
    refine (map_mul _ _ _).trans (congrArg₂ (· * ·) ((map_zpow _ _ _).trans (congrArg (· ^ n) ?_)) (gm_res _ y _ hm _))
    exact (gm_pull _ _ y _ hm _).trans (by rw [Category.id_comp]; rfl)
  · intro H j j'
    apply unit_ext
    intro y hm
    refine (gm_res _ y _ hm _).trans ((H y j j' (mem_pull.1 hm.1) hm.2).trans ?_)
    refine Eq.symm ((map_mul _ _ _).trans (congrArg₂ (· * ·) ((map_zpow _ _ _).trans (congrArg (· ^ n) ?_)) (gm_res _ y _ hm _)))
    exact (gm_pull _ _ y _ hm _).trans (by rw [Category.id_comp]; rfl)

theorem carriesAt_rev (w : LB.Iso L' (L.pull F)) {G : X ⟶ X'} (h : G ≫ F = 𝟙 X) {p' : Y ⟶ X'} {p : Y ⟶ X}
    (hp : p' ≫ F = p) (hq : p ≫ G = p') (n : ℤ)
    {a : LB.Gen (LB.LinComb L' (K := PUnit) (fun _ => p') (fun _ => n))}
    {b : LB.Gen (LB.LinComb L (K := PUnit) (fun _ => p) (fun _ => n))}
    (H : CarriesAt L L' F w p' p hp n a b) : CarriesAt L' L G (revIso w G h) p p' hq n b a := by
  rw [carriesAt_iff] at H ⊢
  intro y j' j h₁ h₂
  have e₁ : p' y = G (p y) := congrArg (fun f : Y ⟶ X' => f y) hq.symm
  have e₂ : F (p' y) = p y := congrArg (fun f : Y ⟶ X => f y) hp
  have := H y j j' (by rw [e₂]; exact h₂) (by rw [e₁]; exact h₁)
  rw [gw_revIso w h p y j' j h₁ h₂, hq, this, inv_zpow, inv_mul_cancel_left]

end Bundle

section Grp

variable {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R}

theorem specOf_id' : GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) = 𝟙 _ := Spec.map_id _

instance isIso_F (p : PullIdent (RingHom.id R) D D') : IsIso p.F := by
  have : IsIso (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R)) := by rw [specOf_id']; infer_instance
  exact MorphismProperty.of_isPullback (P := .isomorphisms _) p.cart.flip this

abbrev Finv (p : PullIdent (RingHom.id R) D D') : D.P.A.left ⟶ D'.P.A.left := inv p.F

theorem Finv_F (p : PullIdent (RingHom.id R) D D') : Finv p ≫ p.F = 𝟙 _ := IsIso.inv_hom_id _

theorem cart' (p : PullIdent (RingHom.id R) D D') :
    IsPullback (Finv p) D.P.A.hom D'.P.A.hom (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R)) := by
  have : IsIso (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R)) := by rw [specOf_id']; infer_instance
  refine IsPullback.of_horiz_isIso ⟨?_⟩
  have w := p.cart.w
  rw [specOf_id', Category.comp_id] at w
  rw [IsIso.inv_comp_eq, specOf_id', Category.comp_id, w]

theorem F_one' (p : PullIdent (RingHom.id R) D D') :
    eSec D.P.A ≫ Finv p = GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) ≫ eSec D'.P.A := by
  have e := p.F_one
  rw [specOf_id', Category.id_comp] at e
  rw [specOf_id', Category.id_comp, IsIso.comp_inv_eq, e]

theorem F_mul' (p : PullIdent (RingHom.id R) D D') : (μ[D.P.A]).left ≫ Finv p =
    pullback.map D.P.A.hom D.P.A.hom D'.P.A.hom D'.P.A.hom (Finv p) (Finv p) (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R))
      (cart' p).w.symm (cart' p).w.symm ≫ (μ[D'.P.A]).left := by
  rw [IsIso.comp_inv_eq, Category.assoc, p.F_mul, ← Category.assoc]
  have key : pullback.map D.P.A.hom D.P.A.hom D'.P.A.hom D'.P.A.hom (Finv p) (Finv p)
      (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R)) (cart' p).w.symm (cart' p).w.symm ≫
      pullback.map D'.P.A.hom D'.P.A.hom D.P.A.hom D.P.A.hom p.F p.F (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R))
        p.cart.w.symm p.cart.w.symm = 𝟙 _ := by
    apply pullback.hom_ext
    · erw [Category.assoc, pullback.lift_fst, ← Category.assoc, pullback.lift_fst, Category.assoc, Finv_F, Category.comp_id]
    · erw [Category.assoc, pullback.lift_snd, ← Category.assoc, pullback.lift_snd, Category.assoc, Finv_F, Category.comp_id]
  rw [key]
  exact (Category.id_comp _).symm

theorem c_eq' (p : PullIdent (RingHom.id R) D D') (χ : D.X) :
    (D.c χ).left ≫ Finv p = GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) ≫ (D'.c (p.xe.symm χ)).left := by
  have e := p.c_eq (p.xe.symm χ)
  rw [AddEquiv.apply_symm_apply, specOf_id', Category.id_comp] at e
  rw [specOf_id', Category.id_comp, IsIso.comp_inv_eq, e]

abbrev wInv (p : PullIdent (RingHom.id R) D D') : LB.Iso D.P.L (D'.P.L.pull (Finv p)) :=
  revIso p.w (Finv p) (Finv_F p)

theorem wInv_isGen (p : PullIdent (RingHom.id R) D D') : (wInv p).IsGen := revIso_isGen p.w p.w_gen _

theorem w_rig' (p : PullIdent (RingHom.id R) D D') :
    CarriesAt D'.P.L D.P.L (Finv p) (wInv p) (eSec D.P.A) (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) ≫ eSec D'.P.A)
      (F_one' p) 1 D.rig (LB.pullGen D'.P.L _ _ D'.rig (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R))) := by
  have es : GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) ≫ eSec D.P.A = eSec D.P.A := by
    rw [specOf_id', Category.id_comp]
  have es' : GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) ≫ eSec D'.P.A = eSec D.P.A ≫ Finv p := (F_one' p).symm
  have hq : (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) ≫ eSec D.P.A) ≫ Finv p = eSec D'.P.A := by
    rw [es, F_one' p, specOf_id', Category.id_comp]
  have H := carriesAt_rev p.w (Finv_F p) p.F_one hq 1 p.w_rig
  have h1 : 𝟙 (Spec (CommRingCat.of R)) ≫ GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) = 𝟙 (Spec (CommRingCat.of R)) := by
    rw [specOf_id', Category.id_comp]
  rw [carriesAt_iff] at H ⊢
  intro y j j' h₁ h₂
  have m₁ : Finv p ((GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) ≫ eSec D.P.A) y) ∈ D'.P.L.U j := by rw [es]; exact h₁
  have m₂ : (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R) ≫ eSec D.P.A) y ∈ D.P.L.U j' := by rw [es]; exact h₂
  have e := H y j j' m₁ m₂
  have a₁ := gm_pullGen D'.P.L _ _ D'.rig (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R)) (𝟙 (Spec (CommRingCat.of R))) y
    (fun _ => j) (Set.mem_iInter.2 fun _ => (congrArg (fun f => f y ∈ D'.P.L.U j) es').mpr h₁)
  have a₂ := gm_pullGen D.P.L _ _ D.rig (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R)) (𝟙 (Spec (CommRingCat.of R))) y
    (fun _ => j') (Set.mem_iInter.2 fun _ => m₂)
  rw [h1] at a₁ a₂
  exact a₁.trans (e.trans (congrArg₂ (· * ·) (by rw [es]) a₂))

end Grp

end GlobalTheory.PullDegSymm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesAtRev =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegIdentitySymm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegIdentitySymm", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesAtRev\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsPullDegEquivApply\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsPullFOfGenRel\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.NonemptyCubicalPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification (CarriesAt PullIdent)
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

open GlobalTheory.PullDegSymm

namespace GlobalTheory.PullDegSymm

theorem carriesAt_gm {X X' Y : Scheme.{0}} {L : LB X} {L' : LB X'} {F : X' ⟶ X} {w : LB.Iso L' (L.pull F)}
    {p' : Y ⟶ X'} {p : Y ⟶ X} {hp : p' ≫ F = p} {n : ℤ}
    {a : LB.Gen (LB.LinComb L' (K := PUnit) (fun _ => p') (fun _ => n))}
    {b : LB.Gen (LB.LinComb L (K := PUnit) (fun _ => p) (fun _ => n))}
    (H : CarriesAt L L' F w p' p hp n a b) {Z : Scheme.{0}} (r : Z ⟶ Y) (z : Z) (j : L.ι) (j' : L'.ι)
    (h₁ : F (p' (r z)) ∈ L.U j) (h₂ : p' (r z) ∈ L'.U j') :
    gm r z (LB.wchart L (fun _ : PUnit => p) (fun _ => j)) (b.s (fun _ => j)) =
      gw w (r ≫ p') z j j' ^ n * gm r z (LB.wchart L' (fun _ : PUnit => p') (fun _ => j')) (a.s (fun _ => j')) := by
  have hm : r z ∈ p' ⁻¹ᵁ (LB.div (L.pull F) L').U (fun _ => j, j') := ⟨mem_pull.2 h₁, h₂⟩
  have e := congrArg (gm r z _) (H j j')
  refine (gm_res _ z _ hm _).symm.trans (e.trans ?_)
  exact (map_mul _ _ _).trans (congrArg₂ (· * ·) ((map_zpow _ _ _).trans (congrArg (· ^ n)
    (gm_pull _ _ z _ hm _))) (gm_res _ z _ hm _))

theorem exists_psiOn_rev : ∀ (R : Type) [CommRing R] [IsDomain R] (D D' : DegPre R) (p : PullIdent (RingHom.id R) D D')
    (W : (Spec (CommRingCat.of R)).Opens) (ψW : PsiOn D W) (g : (TK R).left ⟶ (TW W).left)
    (hg : g ≫ W.ι = jK R ≫ GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R)),
    (∀ χ : D'.X, CarriesAt D.P.L D'.P.L p.F p.w (D'.xK χ) (g ≫ (toUnit (TW W) ≫ D.c (p.xe χ)).left)
      (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.ptK_comp (RingHom.id R) p.F (D.c (p.xe χ)) (D'.c χ) (p.c_eq χ) W g hg) (-1) (D'.psi χ)
      (LB.pullGen D.P.L _ _ (ψW.psi (p.xe χ)) g)) →
    ∃ ψW' : PsiOn D' W, ∀ χ : D'.X, PMaps p.w (K := PUnit) (fun _ => (toUnit (TW W) ≫ D'.c χ).left)
      (fun _ => (toUnit (TW W) ≫ D.c (p.xe χ)).left) (fun _ => -1) (ψW'.psi χ) (ψW.psi (p.xe χ)) (𝟙 _) := by
  intro R _ _ D D' p W ψW g hg H
  have hgj : g ≫ W.ι = jK R := by rw [hg, specOf_id', Category.comp_id]
  have hc : ∀ χ : D'.X, ∀ _ : PUnit, (toUnit (TW W) ≫ D'.c χ).left ≫ p.F =
      𝟙 _ ≫ (toUnit (TW W) ≫ D.c (p.xe χ)).left := by
    intro χ _
    show (W.ι ≫ (D'.c χ).left) ≫ p.F = 𝟙 _ ≫ W.ι ≫ (D.c (p.xe χ)).left
    rw [Category.assoc, p.c_eq, specOf_id', Category.id_comp, Category.id_comp]
  choose ψ hψg hψm using fun χ : D'.X => GlobalTheory.DegPull.exists_pmaps ((isGen_iff _).1 p.w_gen) D.P.isLB
    D'.P.isLB (𝟙 _) (hc χ) (ψW.psi (p.xe χ)) (ψW.psi_gen _)
  refine ⟨⟨ψ, hψg, fun χ => ?_⟩, hψm⟩
  apply corr_of_val D'.P.isLB
  intro y J hJ
  rw [val_pull hJ, val_pull hJ, Category.id_comp, Category.id_comp]
  have hr : (jK R ∣_ W) ≫ W.ι = (jK R ⁻¹ᵁ W).ι ≫ jK R := morphismRestrict_ι _ _
  have hιg : (jK R ⁻¹ᵁ W).ι ≫ g = jK R ∣_ W := by
    rw [← cancel_mono W.ι, Category.assoc, hgj, hr]
  have hpt : (jK R ∣_ W) ≫ (toUnit (TW W) ≫ D'.c χ).left = (jK R ⁻¹ᵁ W).ι ≫ D'.xK χ := by
    show (jK R ∣_ W) ≫ W.ι ≫ (D'.c χ).left = (jK R ⁻¹ᵁ W).ι ≫ jK R ≫ (D'.c χ).left
    rw [← Category.assoc, hr, Category.assoc]
  obtain ⟨jD, hjD⟩ := exists_chart D.P.isLB (p.F (((jK R ⁻¹ᵁ W).ι ≫ D'.xK χ) y))
  have mq : ((jK R ⁻¹ᵁ W).ι ≫ D'.xK χ) y ∈ D'.P.L.U (J ((jK R ⁻¹ᵁ W).ι ≫ D'.xK χ)) := hJ _
  have k1 := hψm χ _ (jK R ∣_ W) y (fun _ => jD) (fun _ => J ((jK R ⁻¹ᵁ W).ι ≫ D'.xK χ))
    (fun _ => (congrArg (fun f => p.F (f y) ∈ D.P.L.U jD) hpt).mpr hjD)
    (fun _ => (congrArg (fun f => f y ∈ D'.P.L.U (J ((jK R ⁻¹ᵁ W).ι ≫ D'.xK χ))) hpt).mpr mq)
  rw [Category.comp_id, Fintype.prod_unique, hpt] at k1
  have k2 := carriesAt_gm (H χ) (jK R ⁻¹ᵁ W).ι y jD (J ((jK R ⁻¹ᵁ W).ι ≫ D'.xK χ)) hjD mq
  have hq : (jK R ⁻¹ᵁ W).ι ≫ g ≫ (toUnit (TW W) ≫ D.c (p.xe χ)).left =
      ((jK R ⁻¹ᵁ W).ι ≫ D'.xK χ) ≫ p.F := by
    rw [← Category.assoc, hιg, ← hpt, Category.assoc, hc χ PUnit.unit, Category.id_comp]
  have a := gm_pullGen D.P.L _ _ (ψW.psi (p.xe χ)) g (jK R ⁻¹ᵁ W).ι y (fun _ => jD)
    (Set.mem_iInter.2 fun _ => (congrArg (fun f => f y ∈ D.P.L.U jD) hq).mpr hjD)
  rw [hιg] at a
  rw [val_of (ψ χ) (jK R ∣_ W) y J (fun _ => J ((jK R ⁻¹ᵁ W).ι ≫ D'.xK χ)) (fun _ => by rw [hpt]),
      val_of (D'.psi χ) (jK R ⁻¹ᵁ W).ι y J (fun _ => J ((jK R ⁻¹ᵁ W).ι ≫ D'.xK χ)) (fun _ => rfl)]
  exact mul_left_cancel (k1.symm.trans (a.symm.trans k2))

theorem psiOn_carries_pullbackIdent_reverse_of_pmaps {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R} (p : PullIdent (RingHom.id R) D D')
    {W : (Spec (CommRingCat.of R)).Opens} (ψW : PsiOn D W) {g : (TK R).left ⟶ (TW W).left}
    (hg : g ≫ W.ι = jK R ≫ GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R)) (ψW' : PsiOn D' W)
    (hψ : ∀ χ : D'.X, PMaps p.w (K := PUnit) (fun _ => (toUnit (TW W) ≫ D'.c χ).left)
      (fun _ => (toUnit (TW W) ≫ D.c (p.xe χ)).left) (fun _ => -1) (ψW'.psi χ) (ψW.psi (p.xe χ)) (𝟙 _))
    (χ : D.X) (χ' : D'.X) (hχ : p.xe χ' = χ) (hx : D.xK χ ≫ Finv p = g ≫ (toUnit (TW W) ≫ D'.c χ').left) :
    CarriesAt D'.P.L D.P.L (Finv p) (wInv p) (D.xK χ) (g ≫ (toUnit (TW W) ≫ D'.c χ').left) hx (-1) (D.psi χ)
      (LB.pullGen D'.P.L _ _ (ψW'.psi χ') g) := by
  subst hχ
  rw [carriesAt_iff]
  intro y j jD h₁ h₂
  have hgj : g ≫ W.ι = jK R := by rw [hg, specOf_id', Category.comp_id]
  have hP : g ≫ (toUnit (TW W) ≫ D.c (p.xe χ')).left = D.xK (p.xe χ') := by
    show g ≫ W.ι ≫ (D.c (p.xe χ')).left = jK R ≫ (D.c (p.xe χ')).left
    rw [← Category.assoc, hgj]
  have m₁ : (toUnit (TW W) ≫ D'.c χ').left (g y) ∈ D'.P.L.U j :=
    (congrArg (fun f => f y ∈ D'.P.L.U j) hx).mp h₁
  have m₂ : p.F ((toUnit (TW W) ≫ D'.c χ').left (g y)) ∈ D.P.L.U jD := by
    have : p.F ((toUnit (TW W) ≫ D'.c χ').left (g y)) = D.xK (p.xe χ') y := by
      have e := congrArg (fun f => f y) hx
      exact (congrArg p.F e.symm).trans (base_cancel (Finv_F p) _)
    rw [this]; exact h₂
  have k := hψ χ' (TK R).left g y (fun _ => jD) (fun _ => j) (fun _ => m₂) (fun _ => m₁)
  rw [Category.comp_id, Fintype.prod_unique] at k
  obtain ⟨J, hJ, eJ⟩ := exists_good D.P.L D.P.isLB y (fun _ : PUnit => D.xK (p.xe χ')) (fun _ => jD)
    (fun _ _ _ => rfl) (fun _ => h₂)
  have v := GlobalTheory.ArcSpecialise.psiOn_generic ψW (p.xe χ') g (𝟙 _) (by rw [hgj, Category.id_comp]) hJ
  rw [val_of _ g y J (fun _ => jD) (fun _ => by rw [hP]; exact eJ PUnit.unit),
    val_of _ (𝟙 _) y J (fun _ => jD) (fun _ => by rw [Category.id_comp]; exact eJ PUnit.unit)] at v
  have a₁ := gm_pullGen D'.P.L _ _ (ψW'.psi χ') g (𝟙 _) y (fun _ => j) (Set.mem_iInter.2 fun _ => m₁)
  rw [Category.id_comp] at a₁
  have key : ∀ {G : Type} [CommGroup G] (A B C E : G), C = A ^ (-1 : ℤ) * B → C = E → B = A⁻¹ ^ (-1 : ℤ) * E := by
    intro G _ A B C E h₁ h₂
    rw [← h₂, h₁]; group
  refine a₁.trans ?_
  rw [show gw (wInv p) (D.xK (p.xe χ')) y j jD = _ from gw_revIso p.w (Finv_F p) _ y j jD h₁ h₂, hx]
  exact key _ _ _ _ k v

theorem psi_carries_rev : ∀ (R : Type) [CommRing R] [IsDomain R] (D D' : DegPre R) (p : PullIdent (RingHom.id R) D D')
    (W : (Spec (CommRingCat.of R)).Opens) (ψW : PsiOn D W) (g : (TK R).left ⟶ (TW W).left)
    (hg : g ≫ W.ι = jK R ≫ GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.specOf (RingHom.id R)) (ψW' : PsiOn D' W),
    (∀ χ : D'.X, PMaps p.w (K := PUnit) (fun _ => (toUnit (TW W) ≫ D'.c χ).left)
      (fun _ => (toUnit (TW W) ≫ D.c (p.xe χ)).left) (fun _ => -1) (ψW'.psi χ) (ψW.psi (p.xe χ)) (𝟙 _)) →
    ∀ χ : D.X, CarriesAt D'.P.L D.P.L (GlobalTheory.PullDegSymm.Finv p) (GlobalTheory.PullDegSymm.wInv p) (D.xK χ)
      (g ≫ (toUnit (TW W) ≫ D'.c (p.xe.symm χ)).left)
      (GlobalTheory.IndefiniteRowSideFullHecke.RigidPullbackIdentification.ptK_comp (RingHom.id R) (GlobalTheory.PullDegSymm.Finv p) (D'.c (p.xe.symm χ)) (D.c χ)
        (GlobalTheory.PullDegSymm.c_eq' p χ) W g hg) (-1) (D.psi χ) (LB.pullGen D'.P.L _ _ (ψW'.psi (p.xe.symm χ)) g) := fun R _ _ D D' p W ψW g hg ψW' hψ χ =>
  psiOn_carries_pullbackIdent_reverse_of_pmaps p ψW hg ψW' hψ χ (p.xe.symm χ) (p.xe.apply_symm_apply χ) _

theorem isPullDeg_symm : ∀ (R : Type) [CommRing R] [IsDomain R] (D D' : DegPre R),
    IsPullDeg (RingHom.id R) D D' → Nonempty (IsPullDeg (RingHom.id R) D' D) := by
  intro R _ _ D D' hD
  obtain ⟨p⟩ := GlobalTheory.PullDegCompare.nonempty_iff.1 ⟨hD⟩
  obtain ⟨W, ψW, g, hg, H⟩ := p.w_psi
  obtain ⟨ψW', hψ⟩ := exists_psiOn_rev R D D' p W ψW g hg H
  exact GlobalTheory.PullDegCompare.nonempty_iff.2 ⟨⟨Finv p, cart' p, F_one' p, F_mul' p, wInv p, wInv_isGen p, w_rig' p,
    p.xe.symm, c_eq' p, ⟨W, ψW', g, hg, psi_carries_rev R D D' p W ψW g hg ψW' hψ⟩⟩⟩

end GlobalTheory.PullDegSymm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegIdentitySymm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegId =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegId", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegIdentitySymm\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsBaseChangeUniformization\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TwistedPrincipalPolarisationSectionsBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AdmissibleBasePowerSeries\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsMonHomOfMul\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Mum.UnifMove

theorem g_eq_of_isPullDeg_id {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R}
    (hD : IsPullDeg (RingHom.id R) D D') : D'.P.g = D.P.g :=
  H1.dim_unique _ D'.P.smoothDim
    ((smoothOfRelativeDimension_isStableUnderBaseChange _).of_isPullback (pull_grp hD).1 D.P.smoothDim)
    (eSec D'.P.A (⟨⊥, Ideal.isPrime_bot⟩ : PrimeSpectrum R))

theorem nonempty_isPullDeg_id_symm {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R}
    (hD : IsPullDeg (RingHom.id R) D D') : Nonempty (IsPullDeg (RingHom.id R) D' D) :=
  _root_.GlobalTheory.PullDegSymm.isPullDeg_symm R D D' hD

theorem exists_unif_of_isPullDeg_id {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} (hR : AdmBase R I)
    {D D' : DegData R I} (hD : IsPullDeg (RingHom.id R) D.toPre D'.toPre) {A : PolAV (Sp (FractionRing R))}
    {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G] (hsa : IsSemiAbelian G) (U : Unif I D A G) :
    ∃ U' : Unif I D' A G, U'.LG = U.LG ∧ U'.gen = U.gen := by
  have hs := specOf_id R
  let ε : G ≅ G := Iso.refl G
  haveI hε : IsMonHom ε.hom := show IsMonHom (𝟙 G) from inferInstance
  have gp₁ : IsGrpPullback G G (specOf (RingHom.id R)) ε.hom.left :=
    (isGrpPullback_of_iso ε).congr hs.symm rfl
  obtain ⟨bc, mbc, hbc⟩ := grpPullback_iso gp₁ (isGrpPullback_pullback G (specOf (RingHom.id R)))
  have := U.gen_hom
  let eA : (Over.pullback (jK R)).obj G ≅ A.A := (Over.pullback (jK R)).mapIso ε ≪≫ U.gen
  have mE : IsMonHom eA.hom := by
    show IsMonHom ((Over.pullback (jK R)).map (𝟙 G) ≫ U.gen.hom)
    rw [CategoryTheory.Functor.map_id, Category.id_comp]
    infer_instance
  have wA : LBIso (A.L.pull eA.hom.left) (U.LG.L.pull (pullback.fst G.hom (jK R) ≫ bc.hom.left ≫
      pullback.fst G.hom (specOf (RingHom.id R)))) :=
    LBIso.chartPull (h := ((Over.pullback (jK R)).map ε.hom).left)
      (chartPullSame A.L (fun _ => eA.hom.left) (fun _ => U.gen.hom.left) _ _ fun _ => rfl)
      (chartPullSame U.LG.L _ (fun _ => pullback.fst G.hom (jK R)) _ _ fun _ => by
        rw [hbc]; exact (pullback.lift_fst _ _ _).symm) U.ext
  obtain ⟨wL, he, gL, rL⟩ := (GlobalTheory.TorsionFormCompare.rigAlong_id U.LG).read (ε := 𝟙 G) hbc hs
  obtain ⟨U', hL, hgen, -⟩ := GlobalTheory.TorsionFormCompare.exists_unif_pull_of_deg
    GlobalTheory.abelianSchemeLaws_all.1.polBaseChange GlobalTheory.abelianSchemeLaws_all.1.globalFns
    GlobalTheory.abelianSchemeLaws_all.1.secBaseChange GlobalTheory.twistBaseChange
    R R I I hR hR (RingHom.id R) (by rw [Ideal.map_id]) D A G hsa U D' hD (g_eq_of_isPullDeg_id hD) G bc mbc A rfl
    eA mE wA U.LG wL he gL rL
  refine ⟨U', hL, ?_⟩
  rw [hgen]
  ext : 1
  simp [eA, ε]

theorem unif_move : ∀ (R : Type) [CommRing R] [IsDomain R] (I : Ideal R), AdmBase R I → ∀ (D D' : DegData R I),
    Nonempty (IsPullDeg (RingHom.id R) D.toPre D'.toPre) → ∀ (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R))
    [GrpObj G] [IsCommMonObj G], IsSemiAbelian G →
    (∀ U' : Unif I D' A G, ∃ U : Unif I D A G, U.LG = U'.LG ∧ U.gen = U'.gen) ∧
      ∀ U : Unif I D A G, ∃ U' : Unif I D' A G, U'.LG = U.LG ∧ U'.gen = U.gen := by
  intro R _ _ I hR D D' ⟨hD⟩ A G _ _ hsa
  obtain ⟨hD'⟩ := nonempty_isPullDeg_id_symm hD
  exact ⟨fun U' => exists_unif_of_isPullDeg_id hR hD' hsa U', fun U => exists_unif_of_isPullDeg_id hR hD hsa U⟩

end GlobalTheory.Mum.UnifMove
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegId =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegIdStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegIdStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationTransferIsPullDegIdStatement =====
