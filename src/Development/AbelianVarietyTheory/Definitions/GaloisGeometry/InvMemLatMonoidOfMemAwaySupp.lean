module

public import Development.AbelianVarietyTheory.Definitions.Divisors.HxiTZeroComb
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.OmegaPullOmegaTraceOfSecTraceOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsGHeckeMapForget
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasDivPlace
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ConjMemOfMemHeckeLevel
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsMonHomIdPow
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelEqKN
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FibrePowerMapOfTotalSpacesIsPullback
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ForgetIsHeckeOne
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSiegelObjectLoweredLevel
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.OmegaPullId
import Formalism.SatakeDualWeyl.KpqSubgroupCompact
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorusAbelianQuotientPDivisibleSmoothGroup

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.EqOneOfHeckeEigNeBot, Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InvMemLatMonoidOfMemAwaySupp

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.EqOneOfHeckeEigNeBot =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.EqOneOfHeckeEigNeBot", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HxiTZeroComb\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.OmegaPullOmegaTraceOfSecTraceOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsGHeckeMapForget\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.W2

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.UPel.HT GlobalTheory.UPel.HT.Gen GlobalTheory.HodgeCoh

variable {G : GDatum} {gb : GBase G ℂ}

abbrev Z {N : ℕ} (X : GenModel gb N) (k : ℕ) : Scheme.{0} := (GlobalTheory.KS.pow X.univ.A k).left

def zs {N : ℕ} (X : GenModel gb N) (k : ℕ) : Z X k ⟶ Sp ℂ := (GlobalTheory.KS.pow X.univ.A k).hom ≫ X.s

def corrOp {Z Y : Scheme.{0}} {s : Z ⟶ Sp ℂ} {s' : Y ⟶ Sp ℂ} (c1 c2 : Y ⟶ Z) [IsFinite c1] [Etale c1]
    (h1 : c1 ≫ s = s') (h2 : c2 ≫ s = s') (a b : ℕ) : hodgeH s a b →ₗ[ℂ] hodgeH s a b :=
  hodgeTrace h1 a b ∘ₗ hodgePull h2 a b

section Eig

variable {N : ℕ} {X : GenModel gb N} {k : ℕ} {S : Finset ℕ} {θ : (G.La →ₗ[G.O] G.La) → ℕ → ℂ} {a b : ℕ}

end Eig

end GlobalTheory.W2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.EqOneOfHeckeEigNeBot =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InvMemLatMonoidOfMemAwaySupp =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InvMemLatMonoidOfMemAwaySupp", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.EqOneOfHeckeEigNeBot\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDivPlace\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ConjMemOfMemHeckeLevel\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsMonHomIdPow\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelEqKN\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSiegelObjectLoweredLevel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FibrePowerMapOfTotalSpacesIsPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ForgetIsHeckeOne\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.OmegaPullId\nimport Formalism.SatakeDualWeyl.KpqSubgroupCompact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorusAbelianQuotientPDivisibleSmoothGroup\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.W2

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.UPel.HT GlobalTheory.UPel.HT.Gen GlobalTheory.HodgeCoh
open GlobalTheory.LKTrip GlobalTheory.LKGeo GlobalTheory.HeckeCorr
open scoped TensorProduct

section Side

variable {Γ : Type} [Group Γ]

theorem mem_heckeLevel_inv {K : Subgroup Γ} {h u : Γ} : u ∈ heckeLevel K h⁻¹ ↔ u ∈ K ∧ h * u * h⁻¹ ∈ K := by
  refine ⟨fun hu => ⟨heckeLevel_le K h⁻¹ hu, by simpa using conj_mem_of_mem_heckeLevel hu⟩, fun hu => ⟨hu.1, ?_⟩⟩
  exact ⟨h * u * h⁻¹, hu.2, by simp [_root_.mul_assoc]⟩


end Side

section Corr

variable {G₀ : GDatum} {gb : GBase G₀ ℂ}

structure Corr {N N' : ℕ} (X : GenModel gb N) (X' : GenModel gb N') where

  q1 : X'.X ⟶ X.X

  q2 : X'.X ⟶ X.X
  firstProjection_structure : q1 ≫ X.s = X'.s
  secondProjection_structure : q2 ≫ X.s = X'.s

  φ1 : X'.univ.A.left ⟶ X.univ.A.left

  φ2 : X'.univ.A.left ⟶ X.univ.A.left
  φ1_w : φ1 ≫ X.univ.A.hom = X'.univ.A.hom ≫ q1
  φ2_w : φ2 ≫ X.univ.A.hom = X'.univ.A.hom ≫ q2

namespace Corr

variable {N N' : ℕ} {X : GenModel gb N} {X' : GenModel gb N'} (C : Corr X X') (k : ℕ)

def c1 : Z X' k ⟶ Z X k := GlobalTheory.KS.powMap C.q1 C.φ1 C.φ1_w k

def c2 : Z X' k ⟶ Z X k := GlobalTheory.KS.powMap C.q2 C.φ2 C.φ2_w k


theorem firstLeg_overComplex : C.c1 k ≫ zs X k = zs X' k := by
  rw [zs, zs, c1, ← Category.assoc, GlobalTheory.KS.PowPB.powMap_w, Category.assoc, C.firstProjection_structure]

theorem secondLeg_overComplex : C.c2 k ≫ zs X k = zs X' k := by
  rw [zs, zs, c2, ← Category.assoc, GlobalTheory.KS.PowPB.powMap_w, Category.assoc, C.secondProjection_structure]


def op [IsFinite (C.c1 k)] [Etale (C.c1 k)] (a b : ℕ) : hodgeH (zs X k) a b →ₗ[ℂ] hodgeH (zs X k) a b :=
  corrOp (C.c1 k) (C.c2 k) (C.firstLeg_overComplex k) (C.secondLeg_overComplex k) a b



end Corr

end Corr

section Relevel

variable {G₀ : GDatum} {R : Type} [CommRing R] [Algebra ℚ R] {gb : GBase G₀ R} {N M : ℕ}

end Relevel

section Wit

variable {G₀ : GDatum} {R : Type} [CommRing R] [Algebra ℚ R]

abbrev GTIsoAt {gb : GBase G₀ R} {S : Scheme.{0}} {s : S ⟶ Sp R} {N : ℕ} (o : GObj gb N s) {k : Type} [Field k]
    (t : Sp k ⟶ S) : Type :=
  GTateIso G₀ k (Over.mk t ⟶ o.A) (fun c g => g ≫ o.act.act c)
    (fun n g g' z => Out.WeilIs o.A (o.P.pull (lift (𝟙 o.A) (𝟙 o.A)).left) n g g' (unitOn z))

def GInducesAt {gb : GBase G₀ R} {S : Scheme.{0}} {s : S ⟶ Sp R} {N : ℕ} (o : GObj gb N s) {k : Type} [Field k]
    (t : Sp k ⟶ S) (I : GTIsoAt o t) : Prop :=
  ∀ y, toUnit _ ≫ o.eta y = I.ev N y

theorem gTateIso_ev_nsmul {k : Type} [Field k] {Q : Type} [Group Q] {act : G₀.O → Q → Q} {e : ℕ → Q → Q → kˣ → Prop}
    (I : GTateIso G₀ k Q act e) (n c : ℕ) (x : G₀.La) : I.ev n (c • x) = I.ev n x ^ c := by
  induction c with
  | zero =>
    have h := I.add n 0 0
    rw [add_zero] at h
    rw [zero_nsmul, pow_zero]
    exact mul_left_cancel (a := I.ev n 0) (by rw [_root_.mul_one]; exact h.symm)
  | succ c ih => rw [succ_nsmul, I.add, ih, pow_succ]

variable {p : ℕ} [Fact p.Prime] {D : Datum p} {G : HTGroup p} (L : _root_.GlobalTheory.LKGeo.Link D G) {gb : GBase D.toG R}

def GActsAt {S : Scheme.{0}} {s : S ⟶ Sp R} {N N' : ℕ} {o' : GObj gb N' s} {o'' : GObj gb N s} {k : Type} [Field k]
    {t : Sp k ⟶ S} (I' : GTIsoAt o' t) (I'' : GTIsoAt o'' t) (ψ : o'.A ⟶ o''.A) (m : ℤ) (h : G.GAf) : Prop :=
  ∀ n : ℕ, 0 < n → n.Coprime p → ∀ x y : D.La,
    I'.ev n x ≫ ψ = I''.ev n y ↔ ∃ v ∈ LaHat D, m • L.actG h (inAf D x) = inAf D y + n • v

theorem smul_mem_laHat {a : AfP p} (ha : IsIntAf a) {v : AfP p ⊗[ℚ] VQ D} (hv : v ∈ LaHat D) : a • v ∈ LaHat D := by
  induction hv using AddSubgroup.closure_induction with
  | mem u hu =>
    obtain ⟨a', x, ha', rfl⟩ := hu
    refine AddSubgroup.subset_closure ⟨a * a', x, fun w => ?_, by rw [TensorProduct.smul_tmul', smul_eq_mul]⟩
    rw [map_mul]
    exact mul_mem (ha w) (ha' w)
  | zero => rw [smul_zero]; exact zero_mem _
  | add u u' _ _ hu hu' => rw [smul_add]; exact add_mem hu hu'
  | neg u _ hu => rw [smul_neg]; exact neg_mem hu

def scalarAf (G : HTGroup p) (a : (AfP p)ˣ) : G.GAf :=
  ⟨(Units.map (algebraMap (AfP p) (AfP p ⊗[ℚ] G.C)).toMonoidHom a, a * a), by
    show algebraMap (AfP p) (AfP p ⊗[ℚ] G.C) a * (starT G.star (AfP p) (algebraMap (AfP p) (AfP p ⊗[ℚ] G.C) a)).unop =
      algebraMap (AfP p) (AfP p ⊗[ℚ] G.C) ((a : AfP p) * a)
    have e : algebraMap (AfP p) (AfP p ⊗[ℚ] G.C) a = (a : AfP p) ⊗ₜ[ℚ] (1 : G.C) := rfl
    rw [map_mul, e, starT_tmul, map_one, MulOpposite.unop_one]⟩

theorem actG_scalarAf (a : (AfP p)ˣ) (v : AfP p ⊗[ℚ] VQ D) : L.actG (scalarAf G a) v = (a : AfP p) • v := by
  show actOn L.rep (AfP p) (algebraMap (AfP p) (AfP p ⊗[ℚ] G.C) a) v = _
  rw [AlgHom.commutes, Module.algebraMap_end_apply]

theorem scalarAf_comm (a : (AfP p)ˣ) (u : G.GAf) : scalarAf G a * u = u * scalarAf G a :=
  Subtype.ext (Prod.ext (Units.ext (Algebra.commutes (a : AfP p) _)) (mul_comm _ _))

def natUnit (p : ℕ) (c : ℕ) (hc : c ≠ 0) : (AfP p)ˣ :=
  Units.map (algebraMap ℚ (AfP p)).toMonoidHom (Units.mk0 (c : ℚ) (Nat.cast_ne_zero.2 hc))

theorem actG_natScalar (c : ℕ) (hc : c ≠ 0) (v : AfP p ⊗[ℚ] VQ D) :
    L.actG (scalarAf G (natUnit p c hc)) v = c • v := by
  rw [actG_scalarAf]
  show algebraMap ℚ (AfP p) (c : ℚ) • v = _
  rw [map_natCast, Nat.cast_smul_eq_nsmul]

end Wit

section Op

variable {p : ℕ} [Fact p.Prime] {D : Datum p} {G : HTGroup p} (L : _root_.GlobalTheory.LKGeo.Link D G) {gb : GBase D.toG ℂ} {N : ℕ}

theorem relIndex_KN_ne_zero {N N' : ℕ} (hN : 0 < N) (hN' : 0 < N') : (L.KN N').relIndex (L.KN N) ≠ 0 := by
  obtain ⟨K, hK⟩ := GlobalTheory.LKGeo.KNLevel.exists_level_eq_KN p D G L N hN
  obtain ⟨K', hK'⟩ := GlobalTheory.LKGeo.KNLevel.exists_level_eq_KN p D G L N' hN'
  haveI : CompactSpace (L.KN N) := isCompact_iff_compactSpace.1 (hK ▸ K.compact)
  have ho : IsOpen ((L.KN N').subgroupOf (L.KN N) : Set (L.KN N)) :=
    (show IsOpen (L.KN N' : Set G.GAf) from hK' ▸ K'.K.isOpen).preimage continuous_subtype_val
  haveI := Subgroup.quotient_finite_of_isOpen _ ho
  exact Nat.card_pos.ne'

theorem KN_mul_le (N k' : ℕ) : L.KN (N * k') ≤ L.KN N := by
  have key : ∀ g, L.CongOne (N * k') g → L.CongOne N g := fun g hg v hv => by
    obtain ⟨w, hw, e⟩ := hg v hv
    exact ⟨k' • w, nsmul_mem hw k', by rw [e, mul_smul]⟩
  exact fun g hg => ⟨key _ hg.1, key _ hg.2⟩

variable {L}

end Op

section Away

variable {p : ℕ} [Fact p.Prime] {D : Datum p} {G : HTGroup p}

variable (L : _root_.GlobalTheory.LKGeo.Link D G)

end Away

section Basic₂

variable {p : ℕ} [Fact p.Prime] {D : Datum p} {G : HTGroup p} (L : _root_.GlobalTheory.LKGeo.Link D G) {gb : GBase D.toG ℂ} {N : ℕ}

end Basic₂

end GlobalTheory.W2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InvMemLatMonoidOfMemAwaySupp =====
