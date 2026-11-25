module

public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.ActEqZeroOfQK
public import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.ResidualConstruction
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.OptInEqSome
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GoodIdempotentFixesOfOnlySeriesOfLabelActs
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWildInertiaCyclotomicElement
public import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.CommutingEndomorphismCondition
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
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.InCongruenceModuleJeReCutTOfRestrict, Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.Tie0CutOfTie0

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.InCongruenceModuleJeReCutTOfRestrict =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.InCongruenceModuleJeReCutTOfRestrict", "h": "module\n\npublic import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.ActEqZeroOfQK\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.ResidualConstruction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace UpperTheory.GalC

open GlobalTheory.IndefiniteRowSideFullHecke.CongruenceModuleMatrices Formalism Formalism.BasicNotions Formalism.MainNotions.N UpperTheory.GalC.Alg

variable {A X Γ : Type} [CommRing A] [IsDomain A] [IsDiscreteValuationRing A] [Group Γ] {n r : ℕ}
  {T : Subalgebra A (X → A)} (S : Set X) {rep : X → (Γ →* GL (Fin n) A)}

theorem mem_cutT {f : X → A} (hf : f ∈ T) : (fun y : S => f y.1) ∈ cutT T S := ⟨f, hf, rfl⟩

theorem inRing_cut {a : X → Matrix (Fin n) (Fin n) A} (h : InRing T rep a) :
    InRing (cutT T S) (fun y : S => rep y.1) (fun y => a y.1) := by
  obtain ⟨m, f, g, hf, rfl⟩ := h
  refine ⟨m, fun k y => f k y.1, g, fun k => mem_cutT S (hf k), ?_⟩
  funext y
  simp [Finset.sum_apply]

theorem inCongruenceModuleJeRe_cutT_of_restrict {π : S} {e s : X → Matrix (Fin n) (Fin n) A} (h : InMatrixCongruenceModule T rep π.1 e s) :
    InMatrixCongruenceModule (cutT T S) (fun y : S => rep y.1) π (fun y => e y.1) (fun y => s y.1) := by
  obtain ⟨m, j, a, hj, rfl⟩ := h
  refine ⟨m, fun k y => j k y.1, fun k y => a k y.1, fun k => ⟨mem_cutT S (hj k).1, (hj k).2.1, inRing_cut S (hj k).2.2⟩, ?_⟩
  funext y
  simp [Finset.sum_apply]

theorem setting_cut [Nonempty S] {t : ℕ} {Z : Finset X} {Z' : Finset S} (hZ : ∀ y ∈ Z', y.1 ∈ Z)
    {ρ : X → (Γ →* GL (Fin r) A)} {χ : ℕ → (Γ →* Aˣ)} (h : HidaSetting t T Z rep ρ χ) :
    HidaSetting t (cutT T S) Z' (fun y : S => rep y.1) (fun y => ρ y.1) χ := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  haveI := h1
  refine ⟨cutT_local T S, fun x y hxy => ?_, fun x => h3 x.1, fun g d => mem_cutT S (h4 g d), fun x => h5 x.1,
    fun x y g => h6 x.1 y.1 g, fun x hx => h7 x.1 (hZ x hx), fun x hx => h8 x.1 (hZ x hx)⟩
  obtain ⟨f, hf, hne⟩ := h2 x.1 y.1 fun e => hxy (Subtype.ext e)
  exact ⟨_, mem_cutT S hf, hne⟩

theorem isChoice_cut {t : ℕ} {ρ : X → (Γ →* GL (Fin r) A)} {χ : ℕ → (Γ →* Aˣ)} {π : S} {g0 : Γ} {L : ℕ}
    {eB e1 X0 : X → Matrix (Fin n) (Fin n) A} (h : IsChoice t T rep ρ χ π.1 g0 L eB e1 X0) :
    IsChoice t (cutT T S) (fun y : S => rep y.1) (fun y => ρ y.1) χ π g0 L (fun y => eB y.1) (fun y => e1 y.1)
      (fun y => X0 y.1) := by
  obtain ⟨⟨hB, h1, hBB, h11, hB1, h1B⟩, hdec, ⟨ϖ, s, hϖ, hs, rfl⟩, hroot⟩ := h
  refine ⟨⟨inRing_cut S hB, inRing_cut S h1, ?_, ?_, ?_, ?_⟩, hdec, ⟨ϖ, fun y => s y.1, hϖ, inCongruenceModuleJeRe_cutT_of_restrict S hs, rfl⟩,
    fun y => hroot y.1⟩
  · funext y; exact congrFun hBB y.1
  · funext y; exact congrFun h11 y.1
  · funext y; exact congrFun hB1 y.1
  · funext y; exact congrFun h1B y.1

theorem span_cut {O : Type} [CommRing O] [IsDomain O] [Algebra A O] {TO : Subalgebra O (X → O)}
    (h : Subalgebra.toSubmodule TO = Submodule.span O ((fun f : X → A => fun x => algebraMap A O (f x)) '' (T : Set _))) :
    Subalgebra.toSubmodule (cutT TO S) =
      Submodule.span O ((fun f : S → A => fun x => algebraMap A O (f x)) '' (cutT T S : Set _)) := by
  have e1 : Subalgebra.toSubmodule (cutT TO S) = (Subalgebra.toSubmodule TO).map (resA O S).toLinearMap :=
    Subalgebra.map_toSubmodule
  rw [e1, h, Submodule.map_span, cutT, Subalgebra.coe_map, ← Set.image_comp, ← Set.image_comp]
  rfl

end UpperTheory.GalC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.InCongruenceModuleJeReCutTOfRestrict =====

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.Tie0CutOfTie0 =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.Tie0CutOfTie0", "h": "module\n\npublic import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.OptInEqSome\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GoodIdempotentFixesOfOnlySeriesOfLabelActs\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWildInertiaCyclotomicElement\npublic import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.CommutingEndomorphismCondition\npublic import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.InCongruenceModuleJeReCutTOfRestrict\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace UpperTheory.GalC.Tr

open Formalism Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal NumberField IsDedekindDomain Polynomial GlobalTheory.NRows

variable {D : D7} {c : CutD D}

theorem ptV_iff (i : (cut D c).nd.Loc) (P : D.naut.AV i.1) (x : (cut D c).nd.X i) :
    (cut D c).naut.ptV i P = some x ↔ D.naut.ptV i.1 P = some x.1 := optIn_eq_some

theorem par_iff (i : (cut D c).nd.Loc) (x : (cut D c).nd.X i) (Sig : List (Part D.naut.CG)) :
    HasParamX (cut D c).nd (cut D c).naut i x Sig ↔ HasParamX D.nd D.naut i.1 x.1 Sig :=
  exists_congr fun _ => and_congr optIn_eq_some Iff.rfl

theorem zn_iff (i : (cut D c).nd.Loc) (x : (cut D c).nd.X i) :
    x ∈ ZN (cut D c).nd (cut D c).naut i ↔ x.1 ∈ ZN D.nd D.naut i.1 :=
  exists_congr fun _ => and_congr optIn_eq_some Iff.rfl

theorem zg_iff (i : (cut D c).nd.Loc) (x : (cut D c).nd.X i) :
    x ∈ ZgoodN (cut D c).nd (cut D c).naut i ↔ x.1 ∈ ZgoodN D.nd D.naut i.1 :=
  and_congr (zn_iff i x) (exists_congr fun Sig => and_congr (par_iff i x Sig) Iff.rfl)

theorem z_iff (i : (cut D c).nd.Loc) (x : (cut D c).nd.X i) : x ∈ (cut D c).nd.Z i ↔ x.1 ∈ D.nd.Z i.1 :=
  ((cut D c).Z_tie i x).trans ((zn_iff i x).trans (D.Z_tie i.1 x.1).symm)

theorem hg_of {i : (cut D c).nd.Loc} (h : HG (cut D c).nd (cut D c).naut i) : HG D.nd D.naut i.1 :=
  h.elim fun x hx => ⟨x.1, (zg_iff i x).1 hx⟩

theorem eigC_eq (i : (cut D c).nd.Loc) (x : (cut D c).nd.X i) :
    eigC (cut D c).nd (cut D c).naut i x = eigC D.nd D.naut i.1 x.1 := by
  have e : {P | (cut D c).naut.ptV i P = some x} = {P | D.naut.ptV i.1 P = some x.1} := Set.ext fun P => ptV_iff i P x
  unfold eigC
  rw [e]; rfl

theorem res_eq {O X : Type} [CommRing O] [IsLocalRing O] (T : Subalgebra O (X → O)) [IsLocalRing T] (f : T) (x y : X) :
    IsLocalRing.residue O ((f : X → O) x) = IsLocalRing.residue O ((f : X → O) y) := by
  let g : T := f - algebraMap O T ((f : X → O) x)
  have hx : (g : X → O) x = 0 := by simp [g]
  have hg : ¬ IsUnit g := fun h => by
    have := h.map ((Pi.evalRingHom (fun _ : X => O) x).comp T.val.toRingHom)
    have e : ((Pi.evalRingHom (fun _ : X => O) x).comp T.val.toRingHom) g = 0 := hx
    rw [e] at this
    exact not_isUnit_zero this
  have hy : ¬ IsUnit ((g : X → O) y) := fun h => by
    obtain ⟨u, hu⟩ := h
    let k : T := 1 - algebraMap O T (↑u⁻¹ : O) * g
    have hk : IsUnit k := by
      rcases IsLocalRing.isUnit_or_isUnit_one_sub_self (algebraMap O T (↑u⁻¹ : O) * g) with h | h
      · exact absurd (isUnit_of_mul_isUnit_right h) hg
      · exact h
    have := hk.map ((Pi.evalRingHom (fun _ : X => O) y).comp T.val.toRingHom)
    have e : ((Pi.evalRingHom (fun _ : X => O) y).comp T.val.toRingHom) k = 0 := by
      show (1 : O) - (↑u⁻¹ : O) * (g : X → O) y = 0
      rw [← hu, Units.inv_mul, sub_self]
    rw [e] at this
    exact not_isUnit_zero this
  have e : (g : X → O) y = (f : X → O) y - (f : X → O) x := by simp [g]
  rw [e] at hy
  rw [eq_comm, ← sub_eq_zero, ← map_sub, IsLocalRing.residue_eq_zero_iff]
  exact hy

theorem atM_iff (i : (cut D c).nd.Loc) (σ : D.what₂.FT) : AtM (cut D c).nd (cut D c).naut i σ ↔ AtM D.nd D.naut i.1 σ := by
  refine exists_congr fun Sig => and_congr Iff.rfl ⟨fun ⟨x, h⟩ => ⟨x.1, h⟩, fun ⟨x, h⟩ => ?_⟩
  obtain ⟨y⟩ := (cut D c).nd.neX i
  refine ⟨y, fun w hw => ?_⟩
  obtain ⟨p, h1, h2⟩ := h w hw
  exact ⟨p, h1, h2.trans (_root_.Formalism.MainNotions.N.heckePol_res D i.1 x y.1 w)⟩

theorem rhoBar_iff (i : (cut D c).nd.Loc) (rb : G D.host.E D.nd.Om →* GL (Fin D.R.r) (IsLocalRing.ResidueField (D.nd.O i.1))) :
    IsRhoBar (cut D c).nd i rb ↔ IsRhoBar D.nd i.1 rb := by
  refine and_congr Iff.rfl ⟨fun h x w hw B σ hB hσ => ?_, fun h x => h x.1⟩
  obtain ⟨y⟩ := (cut D c).nd.neX i
  exact (h y w hw B σ hB hσ).trans (_root_.Formalism.MainNotions.N.heckePol_res D i.1 y.1 x w)

theorem goodPart_eq (i : (cut D c).nd.Loc) : goodPartM (cut D c).nd (cut D c).naut i = goodPartM D.nd D.naut i.1 := by
  have e : {σ | (cut D c).nd.goodRow σ ∧ AtM (cut D c).nd (cut D c).naut i σ} = {σ | D.nd.goodRow σ ∧ AtM D.nd D.naut i.1 σ} :=
    Set.ext fun σ => and_congr Iff.rfl (atM_iff i σ)
  unfold goodPartM
  rw [e]; rfl

theorem iSup_good (hc : c.Good) (i : (cut D c).nd.Loc) {α : Type} [CompleteLattice α] (F : D.nd.X i.1 → α) :
    ⨆ x ∈ ZgoodN (cut D c).nd (cut D c).naut i, F x.1 = ⨆ x ∈ ZgoodN D.nd D.naut i.1, F x :=
  le_antisymm (iSup₂_le fun x hx => le_iSup₂_of_le (f := fun x _ => F x) x.1 ((zg_iff i x).1 hx) le_rfl)
    (iSup₂_le fun x hx => le_iSup₂_of_le (f := fun (x : (cut D c).nd.X i) _ => F x.1)
      ⟨x, hc.good i.1 x ((D.Zgood_tie i.1 x).2 hx)⟩ ((zg_iff i _).2 hx) le_rfl)

theorem tie0_cut_of_tie0 (h : SumRepresentations.tie0 D) : SumRepresentations.tie0 (cut D c) :=
  ⟨h.1, ⟨h.2.1.1, h.2.1.2.1, h.2.1.2.2.1, fun i => h.2.1.2.2.2 i.1⟩,
    fun i => h.2.2.1 i.1, fun i => h.2.2.2.1 i.1, fun i => h.2.2.2.2.1 i.1, fun i => h.2.2.2.2.2 i.1⟩

theorem fourthAdmissible_restrictToPoints (h : SumRepresentations.ArchimedeanSignatureMatching D) : SumRepresentations.ArchimedeanSignatureMatching (cut D c) := ⟨fun i => h.1 i.1, fun i => h.2.1 i.1, h.2.2⟩
theorem hypO_cut (h : SumRepresentations.hypO D) : SumRepresentations.hypO (cut D c) := fun i x => h i.1 x.1
theorem rhoBar_cut (h : ResidualIrreducibleRankR D) : ResidualIrreducibleRankR (cut D c) := fun i hg rb hrb => h i.1 (hg_of hg) rb ((rhoBar_iff i rb).1 hrb)

theorem rowsB_cut (h : RowsB D) : RowsB (cut D c) :=
  { rowSize := fun i => h.rowSize i.1, a3 := fun i => h.a3 i.1, a4 := fourthAdmissible_restrictToPoints h.a4, thetaOne := fun i => h.thetaOne i.1 }

theorem rowsC_cut (hc : c.Good) (h : RowsC D) : RowsC (cut D c) :=
  { rho := fun i x hx Sig hS => h.rho i.1 x.1 ((zg_iff i x).1 hx) Sig ((par_iff i x Sig).1 hS)
    dz := fun i x hx Sig hS => h.dz i.1 x.1 ((zg_iff i x).1 hx) Sig ((par_iff i x Sig).1 hS)
    parUp := fun i x hx Sig hS => by
      rw [eigC_eq]; exact h.parUp i.1 x.1 ((zg_iff i x).1 hx) Sig ((par_iff i x Sig).1 hS)
    downMem := fun i x hx Sig hS => by
      rw [eigC_eq]; exact h.downMem i.1 x.1 ((zg_iff i x).1 hx) Sig ((par_iff i x Sig).1 hS)
    goodPart := fun i => by
      refine (goodPart_eq i).trans ((h.goodPart i.1).trans ((iSup_good hc i _).symm.trans ?_))
      refine iSup_congr fun x => iSup_congr fun _ => ?_
      have e : {Sig | HasParamX (cut D c).nd (cut D c).naut i x Sig} = {Sig | HasParamX D.nd D.naut i.1 x.1 Sig} :=
        Set.ext fun Sig => par_iff i x Sig
      rw [e]; rfl }



def ledBack (L : SizeData₂ (cut D c)) : SizeData₂ D := { L with }

theorem pointsAdmissible_restrictToPoints (hc : c.Good) (h : SumRepresentations.ConclusionZ D) : SumRepresentations.ConclusionZ (cut D c) := by
  classical
  intro i hg
  obtain ⟨a, b, d⟩ := h i.1 (hg_of hg)
  refine ⟨fun x hx Sig hS => ?_, ?_, ?_⟩
  · rw [eigC_eq]; exact a x.1 ((zg_iff i x).1 hx) Sig ((par_iff i x Sig).1 hS)
  · rw [goodPart_eq]
    refine b.trans ((iSup_good hc i _).symm.trans (iSup_congr fun x => iSup_congr fun _ => (eigC_eq i x).symm))
  · have e : dM (cut D c).nd (cut D c).naut i = dM D.nd D.naut i.1 := by unfold dM; rw [goodPart_eq]; rfl
    rw [e, ← d]
    refine Finset.sum_of_injOn (fun x => x.1) (fun x _ y _ k => Subtype.ext k) (fun _ _ => Finset.mem_univ _)
      (fun x _ hx => if_neg fun hz => hx ⟨⟨x, hc.good i.1 x ((D.Zgood_tie i.1 x).2 hz)⟩, Finset.mem_coe.2 (Finset.mem_univ _), rfl⟩)
      fun x _ => ?_
    have m : (cut D c).nd.mult i x = D.nd.mult i.1 x.1 := Alg.mult_eq _ _ _ (D.nd.T_sep i.1) x
    by_cases hz : x.1 ∈ ZgoodN D.nd D.naut i.1
    · rw [if_pos hz, if_pos ((zg_iff i x).2 hz), m]
    · rw [if_neg hz, if_neg fun k => hz ((zg_iff i x).1 k)]

theorem jointCondition_restrictToPoints (h : KillingConditions.LocalisationUniqueness D) : KillingConditions.LocalisationUniqueness (cut D c) :=
  fun i i' h1 h2 h3 σ hσ a b => Subtype.ext (h i.1 i'.1 h1 h2 h3 σ hσ ((atM_iff i σ).1 a) ((atM_iff i' σ).1 b))

theorem live_of {i : (cut D c).nd.Loc} (h : GlobalTheory.CoefDuty.Live (cut D c).nd i) : GlobalTheory.CoefDuty.Live D.nd i.1 := by
  obtain ⟨π, hπ, k⟩ := h
  exact ⟨π.1, (z_iff i π).1 hπ, k⟩

theorem large_cut (h : GlobalTheory.CoefDuty.Large D) : GlobalTheory.CoefDuty.Large (cut D c) := by
  refine ⟨hypO_cut h.1, fun i x => h.2.1 i.1 x.1, fun i hl => ?_⟩
  obtain ⟨r, ρ, hr, A, i1, i2, i3, i4, i5, i6, i7, TA, repA, ρA, χA, hE, hS, hC⟩ := h.2.2 i.1 (live_of hl)
  haveI : Nonempty (c.Xs i.1) := (c.ne i.1 i.2).to_subtype
  refine ⟨fun x => r x.1, fun x => ρ x.1, fun x => hr x.1, A, i1, i2, i3, i4, i5, i6, i7, Alg.cutT TA (c.Xs i.1),
    fun x => repA x.1, fun x => ρA x.1, χA,
    ⟨hE.1, span_cut (O := D.nd.O i.1) (TO := D.nd.T i.1) (c.Xs i.1) hE.2.1, fun x => hE.2.2.1 x.1, fun x hx => hE.2.2.2.1 x.1 ((z_iff i x).1 hx), hE.2.2.2.2⟩,
    setting_cut _ (fun y hy => (z_iff i y).1 hy) hS, fun π hπ => ?_⟩
  obtain ⟨g0, L, eB, e1, X0, a, b, d⟩ := hC π.1 ((z_iff i π).1 hπ)
  exact ⟨g0, L, fun y => eB y.1, fun y => e1 y.1, fun y => X0 y.1, a, isChoice_cut _ b, fun x => d x.1⟩

theorem cutRec_cut (hc : c.Good) : CutRec (cut D c) := by
  intro i P hP k w hw
  obtain ⟨x, hx⟩ := Option.ne_none_iff_exists'.mp hP
  exact hc.nice i.1 i.2 P x.1 x.2 ((ptV_iff i P x).1 hx) k w hw

end UpperTheory.GalC.Tr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.HeckeGaloisCriteria.Tie0CutOfTie0 =====
