module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.ModFSW
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.FlatL
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.QuoZeroSub
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapHCompEqSmul
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens
public import Mathlib.Tactic.Bound
public import Mathlib.Tactic.Monotonicity.Lemmas
public import Mathlib.Topology.Sheaves.Presheaf
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.IsUnitWitt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothModelRestrictionBijective
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
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DpZeroRight

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatWittTowerLevel, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MkOfMemB, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfFlatTower, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfLevelIsos, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientReductionBijectiveOfFlat, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.LsSeqEq

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatWittTowerLevel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatWittTowerLevel", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.ModFSW\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.FlatL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris CrystallineSemistableComparison CrystallineSemistableComparison.Ls CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.LsG

noncomputable section

namespace GlobalTheory.CompanionTheory.FlatLevel

theorem exists_trivial_of_smul_eq_zero {A M : Type} [CommRing A] [AddCommGroup M] [Module A M] [Module.Flat A M]
    (f : A) (y : M) (h : f • y = 0) :
    ∃ (n : ℕ) (u : Fin n → A) (v : Fin n → M), y = ∑ j, u j • v j ∧ ∀ j, f * u j = 0 := by
  classical
  have h' : ∑ i : Unit, (fun _ : Unit => f) i • (fun _ : Unit => y) i = 0 := by simpa using h
  obtain ⟨n, a, z, hx, ha⟩ := Module.Flat.isTrivialRelation_of_sum_smul_eq_zero h'
  refine ⟨n, fun j => a () j, z, ?_, fun j => ?_⟩
  · simpa using hx ()
  · simpa using ha j

theorem exists_mul_of_flat {W B : Type} [CommRing W] [CommRing B] {t : W} (ht : t ∈ nonZeroDivisors W)
    {a b m : ℕ} (h : a + b = m) (c : W ⧸ Ideal.span {t ^ m} →+* B) (hc : c.Flat) (y : B)
    (hy : c (Ideal.Quotient.mk _ (t ^ b)) * y = 0) : ∃ z, c (Ideal.Quotient.mk _ (t ^ a)) * z = y := by
  let _ := c.toAlgebra
  have : Module.Flat (W ⧸ Ideal.span {t ^ m}) B := hc
  have hb : Ideal.Quotient.mk (Ideal.span {t ^ m}) (t ^ b) • y = 0 := by
    rw [Algebra.smul_def]
    exact hy
  obtain ⟨n, u, v, hyv, hu⟩ := exists_trivial_of_smul_eq_zero (A := W ⧸ Ideal.span {t ^ m}) (M := B) _ y hb
  have key : ∀ j, ∃ s : W, u j = Ideal.Quotient.mk (Ideal.span {t ^ m}) (t ^ a * s) := by
    intro j
    obtain ⟨w, hw⟩ := Ideal.Quotient.mk_surjective (u j)
    have h1 := hu j
    rw [← hw, ← map_mul, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton'] at h1
    obtain ⟨s, hs⟩ := h1
    refine ⟨s, ?_⟩
    rw [← hw]
    congr 1
    have hb' : t ^ b ∈ nonZeroDivisors W := pow_mem ht b
    have h2 : (w - t ^ a * s) * t ^ b = 0 := by
      rw [← h, pow_add] at hs
      linear_combination (-1 : W) * hs
    exact sub_eq_zero.mp ((mul_right_mem_nonZeroDivisors_eq_zero_iff hb').mp h2)
  choose s hs using key
  refine ⟨∑ j, c (Ideal.Quotient.mk _ (s j)) * v j, ?_⟩
  rw [hyv, Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Algebra.smul_def, hs j, ← mul_assoc, ← map_mul, ← map_mul]
  rfl

theorem natCast_mem_nonZeroDivisors (l : ℕ) [Fact l.Prime] (k : Type) [Field k] [CharP k l] :
    (l : WittVector l k) ∈ nonZeroDivisors (WittVector l k) := by
  exact mem_nonZeroDivisors_of_ne_zero (WittVector.p_nonzero l k)

set_option backward.isDefEq.respectTransparency false in
theorem flatL_Kt : ∀ (l : ℕ) [Fact l.Prime] (k : Type) [Field k] [CharP k l] [PerfectRing k l] (O : Type) [CommRing O] (F : B.Fn O) (ρ : O →+* k) (m : ℕ), FlatL l m (Kt l F ρ m) := by
  intro l _ k _ _ _ O _ F ρ m
  show FlatL l m (CrystallineSemistableComparison.CH.cx (CrystallineSemistableComparison.CH.modF (CrystallineSemistableComparison.Pb.LsG.sW l F ρ m).A))
  rw [CrystallineSemistableComparison.Pb.LsG.modF_sW]
  intro i
  refine ⟨fun x => ?_, fun a b hab x hx => ?_⟩
  · funext s
    have h0 : Ideal.Quotient.mk (Ideal.span {(l : WittVector l k) ^ m}) ((l : WittVector l k) ^ m) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
    change ((s.obj (Fin.last i)).obj.i (Ideal.Quotient.mk (Ideal.span {(l : WittVector l k) ^ m})
      ((l : WittVector l k) ^ m))) * (show (s.obj (Fin.last i)).obj.B from x s) = 0
    rw [h0, map_zero, zero_mul]
  · have key : ∀ s : ComposableArrows (fl l F ρ m).FullSubcategory i,
        ∃ z : ((fl l F ρ m).ι ⋙ Wc.OM l F ρ m).obj (s.obj (Fin.last i)),
          (l : WittVector l k) ^ a • z = x s := by
      intro s
      have hs : (s.obj (Fin.last i)).obj.i.Flat := (s.obj (Fin.last i)).property
      have h0 : (l : WittVector l k) ^ b • x s = 0 := congrFun hx s
      obtain ⟨z, hz⟩ := exists_mul_of_flat (natCast_mem_nonZeroDivisors l k) hab
        (s.obj (Fin.last i)).obj.i hs (x s) h0
      exact ⟨z, hz⟩
    choose z hz using key
    rw [CrystallineSemistableComparison.Ls.lpow, LinearMap.mem_range]
    exact ⟨z, funext fun s => hz s⟩

end GlobalTheory.CompanionTheory.FlatLevel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatWittTowerLevel =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MkOfMemB =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MkOfMemB", "h": "module\n\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.QuoZeroSub\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.FlatL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapHCompEqSmul\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CrystallineSemistableComparison CrystallineSemistableComparison.Tw CrystallineSemistableComparison.Ls GlobalTheory.CompanionTheory.LsRho

namespace GlobalTheory.CompanionTheory.TowFlat

variable {W : Type} [CommRing W]

theorem mem_B_of_mk {L : Cx.{1} W} {n : ℕ} (z : L.Z n) (hz : (Submodule.Quotient.mk z : L.H n) = 0) :
    z.1 ∈ L.B n :=
  (Submodule.Quotient.mk_eq_zero ((L.B n).submoduleOf (L.Z n))).1 hz

theorem mk_of_mem_B {L : Cx.{1} W} {n : ℕ} (z : L.Z n) (h : z.1 ∈ L.B n) :
    (Submodule.Quotient.mk z : L.H n) = 0 :=
  (Submodule.Quotient.mk_eq_zero ((L.B n).submoduleOf (L.Z n))).2 h

theorem d_of_B {L : Cx.{1} W} {n : ℕ} {x : L.X n} (h : x ∈ L.B n) : L.d n x = 0 := by
  cases n with
  | zero =>
    have e : x = 0 := h
    rw [e, map_zero]
  | succ n =>
    obtain ⟨y, rfl⟩ := h
    exact L.dd n y

def Ses {A B C : Cx.{1} W} (f : Cx.Hom A B (RingHom.id W)) (g : Cx.Hom B C (RingHom.id W)) : Prop :=
  (∀ i, Function.Injective (f.f i)) ∧ (∀ i, Function.Surjective (g.f i)) ∧
    ∀ i x, g.f i x = 0 ↔ ∃ y, f.f i y = x

section Conn

variable {A B C : Cx.{1} W} {f : Cx.Hom A B (RingHom.id W)} {g : Cx.Hom B C (RingHom.id W)}

theorem lift_B (hS : Ses f g) {n : ℕ} {z : C.X n} (h : z ∈ C.B n) : ∃ b ∈ B.B n, g.f n b = z := by
  cases n with
  | zero =>
    have e : z = 0 := h
    exact ⟨0, Submodule.zero_mem _, by rw [e, map_zero]⟩
  | succ n =>
    obtain ⟨c, rfl⟩ := h
    obtain ⟨b, rfl⟩ := hS.2.1 n c
    exact ⟨B.d n b, ⟨b, rfl⟩, (g.comm n b).symm⟩

def Rel (f : Cx.Hom A B (RingHom.id W)) (g : Cx.Hom B C (RingHom.id W)) (j : ℕ) (x : C.H j) (v : A.H (j + 1)) : Prop :=
  ∃ (z : C.Z j) (β : B.X j) (w : A.Z (j + 1)), Submodule.Quotient.mk z = x ∧ Submodule.Quotient.mk w = v ∧
    g.f j β = z.1 ∧ f.f (j + 1) w.1 = B.d j β

theorem rel_total (hS : Ses f g) (j : ℕ) (x : C.H j) : ∃ v, Rel f g j x v := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  obtain ⟨β, hβ⟩ := hS.2.1 j z.1
  have h0 : g.f (j + 1) (B.d j β) = 0 := by
    rw [← g.comm, hβ]
    exact z.2
  obtain ⟨w, hw⟩ := (hS.2.2 (j + 1) _).1 h0
  have hd : A.d (j + 1) w = 0 := by
    apply hS.1 (j + 2)
    rw [← f.comm, hw, B.dd, map_zero]
  exact ⟨_, z, β, ⟨w, hd⟩, rfl, rfl, hβ, hw⟩

theorem rel_add {j : ℕ} {x x' : C.H j} {v v' : A.H (j + 1)} (h : Rel f g j x v) (h' : Rel f g j x' v') :
    Rel f g j (x + x') (v + v') := by
  obtain ⟨z, β, w, rfl, rfl, h1, h2⟩ := h
  obtain ⟨z', β', w', rfl, rfl, h1', h2'⟩ := h'
  refine ⟨z + z', β + β', w + w', rfl, rfl, ?_, ?_⟩
  · rw [map_add (f := _), h1, h1']; rfl
  · change f.f (j + 1) (w.1 + w'.1) = _
    rw [map_add (f := _), map_add (f := _), h2, h2']

theorem rel_smul {j : ℕ} (s : W) {x : C.H j} {v : A.H (j + 1)} (h : Rel f g j x v) :
    Rel f g j (s • x) (s • v) := by
  obtain ⟨z, β, w, rfl, rfl, h1, h2⟩ := h
  refine ⟨s • z, s • β, s • w, rfl, rfl, ?_, ?_⟩
  · rw [map_smul, h1]; rfl
  · change f.f (j + 1) (s • w.1) = _
    simp only [map_smul, h2]

theorem rel_zero (hS : Ses f g) {j : ℕ} {v : A.H (j + 1)} (h : Rel f g j 0 v) : v = 0 := by
  obtain ⟨z, β, w, hz, rfl, h1, h2⟩ := h
  obtain ⟨b, hbB, hb⟩ := lift_B hS (mem_B_of_mk z hz)
  have h0 : g.f j (β - b) = 0 := by rw [map_sub, h1, hb, sub_self]
  obtain ⟨a, ha⟩ := (hS.2.2 j _).1 h0
  have e : w.1 = A.d j a := by
    apply hS.1 (j + 1)
    rw [h2, ← f.comm, ha, map_sub, d_of_B hbB, sub_zero]
  exact mk_of_mem_B w ⟨a, e.symm⟩

theorem rel_unique (hS : Ses f g) {j : ℕ} {x : C.H j} {v v' : A.H (j + 1)} (h : Rel f g j x v)
    (h' : Rel f g j x v') : v = v' := by
  have h2 := rel_add h (rel_smul (-1) h')
  rw [neg_one_smul, neg_one_smul, add_neg_cancel] at h2
  exact add_neg_eq_zero.1 (rel_zero hS h2)

def cn (hS : Ses f g) (j : ℕ) : C.H j →ₗ[W] A.H (j + 1) where
  toFun x := Classical.choose (rel_total hS j x)
  map_add' x y := rel_unique hS (Classical.choose_spec (rel_total hS j (x + y)))
    (rel_add (Classical.choose_spec (rel_total hS j x)) (Classical.choose_spec (rel_total hS j y)))
  map_smul' s x := rel_unique hS (Classical.choose_spec (rel_total hS j (s • x)))
    (rel_smul s (Classical.choose_spec (rel_total hS j x)))

theorem cn_rel (hS : Ses f g) (j : ℕ) (x : C.H j) : Rel f g j x (cn hS j x) :=
  Classical.choose_spec (rel_total hS j x)

theorem cn_eq (hS : Ses f g) {j : ℕ} {x : C.H j} {v : A.H (j + 1)} (h : Rel f g j x v) : cn hS j x = v :=
  rel_unique hS (cn_rel hS j x) h

theorem ex_mid (hS : Ses f g) (j : ℕ) (x : B.H j) (h : g.mapH j x = 0) : ∃ y, f.mapH j y = x := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  have hb : g.f j z.1 ∈ C.B j := mem_B_of_mk (g.mapZ j z) h
  obtain ⟨b, hbB, hbg⟩ := lift_B hS hb
  have h0 : g.f j (z.1 - b) = 0 := by rw [map_sub, hbg, sub_self]
  obtain ⟨a, ha⟩ := (hS.2.2 j _).1 h0
  have da : A.d j a = 0 := by
    apply hS.1 (j + 1)
    have hz : B.d j z.1 = 0 := z.2
    rw [map_zero, ← f.comm, ha, map_sub, d_of_B hbB, hz, sub_zero]
  refine ⟨Submodule.Quotient.mk ⟨a, da⟩, ?_⟩
  change Submodule.Quotient.mk (f.mapZ j ⟨a, da⟩) = Submodule.Quotient.mk z
  rw [Submodule.Quotient.eq]
  change f.f j a - z.1 ∈ B.B j
  rw [ha, sub_sub_cancel_left]
  exact Submodule.neg_mem _ hbB

theorem ex_cn (hS : Ses f g) (j : ℕ) (x : C.H j) (h : cn hS j x = 0) : ∃ y, g.mapH j y = x := by
  obtain ⟨z, β, w, rfl, hw, h1, h2⟩ := cn_rel hS j x
  rw [h] at hw
  obtain ⟨a, ha⟩ := mem_B_of_mk w hw
  have hd : B.d j (β - f.f j a) = 0 := by
    rw [map_sub, f.comm, ha, h2, sub_self]
  refine ⟨Submodule.Quotient.mk ⟨_, hd⟩, ?_⟩
  change Submodule.Quotient.mk (g.mapZ j ⟨_, hd⟩) = Submodule.Quotient.mk z
  congr 1
  refine Subtype.ext ?_
  change g.f j (β - f.f j a) = z.1
  rw [map_sub, h1, (hS.2.2 j _).2 ⟨a, rfl⟩, sub_zero]

theorem cn_nat {A' B' C' : Cx.{1} W} {f' : Cx.Hom A' B' (RingHom.id W)} {g' : Cx.Hom B' C' (RingHom.id W)}
    (hS : Ses f g) (hS' : Ses f' g') (α : Cx.Hom A A' (RingHom.id W)) (μ : Cx.Hom B B' (RingHom.id W))
    (γ : Cx.Hom C C' (RingHom.id W)) (j : ℕ)
    (hf : ∀ x, f'.f (j + 1) (α.f (j + 1) x) = μ.f (j + 1) (f.f (j + 1) x))
    (hg : ∀ x, g'.f j (μ.f j x) = γ.f j (g.f j x)) (x : C.H j) :
    cn hS' j (γ.mapH j x) = α.mapH (j + 1) (cn hS j x) := by
  obtain ⟨z, β, w, rfl, hw, h1, h2⟩ := cn_rel hS j x
  rw [← hw]
  refine cn_eq hS' ⟨γ.mapZ j z, μ.f j β, α.mapZ (j + 1) w, rfl, rfl, ?_, ?_⟩
  · change g'.f j (μ.f j β) = γ.f j z.1
    rw [hg, h1]
  · change f'.f (j + 1) (α.f (j + 1) w.1) = _
    rw [hf, h2, μ.comm]

end Conn

theorem mapH_bij {K L : Cx.{1} W} (φ : Cx.Hom K L (RingHom.id W)) (h : ∀ i, Function.Bijective (φ.f i))
    (j : ℕ) : Function.Bijective (φ.mapH j) := by
  apply CrystallineSemistableComparison.Pb.LsQ.mapH_bij <;> assumption

theorem mem_lpow {l : ℕ} {M : Type 1} [AddCommGroup M] [Module W M] {n : ℕ} {x : M} :
    x ∈ lpow (W := W) l M n ↔ ∃ y : M, ((l : W) ^ n) • y = x := by
  simp [lpow, LinearMap.mem_range]

def mulc (l : ℕ) (K : Cx.{1} W) {a c : ℕ} (h : a ≤ c) (hk : ∀ i (x : K.X i), ((l : W) ^ c) • x = 0) :
    Cx.Hom (quo l K a) K (RingHom.id W) where
  f i := Submodule.liftQ _ (((l : W) ^ (c - a)) • LinearMap.id) (by
    rintro _ ⟨y, rfl⟩
    simp only [LinearMap.mem_ker, LinearMap.smul_apply, LinearMap.id_apply, smul_smul, ← pow_add,
      Nat.sub_add_cancel h, hk])
  comm i x := by
    obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    exact (K.d i).map_smul _ x

theorem mulc_mk (l : ℕ) (K : Cx.{1} W) {a c : ℕ} (h : a ≤ c) (hk : ∀ i (x : K.X i), ((l : W) ^ c) • x = 0)
    (i : ℕ) (x : K.X i) : (mulc l K h hk).f i (Submodule.Quotient.mk x) = ((l : W) ^ (c - a)) • x := rfl

theorem ses_flat {l c : ℕ} {K : Cx.{1} W} (hK : FlatL l c K) {a b : ℕ} (hc : a + b = c) (h : a ≤ c)
    (hk : ∀ i (x : K.X i), ((l : W) ^ c) • x = 0) : Ses (mulc l K h hk) (prj l K b) := by
  have hb : c - a = b := by omega
  refine ⟨fun i => (injective_iff_map_eq_zero _).2 fun x hx => ?_, fun i => Submodule.mkQ_surjective _,
    fun i x => ?_⟩
  · obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    rw [mulc_mk, hb] at hx
    exact (Submodule.Quotient.mk_eq_zero _).2 ((hK i).2 a b hc x hx)
  · constructor
    · intro hx
      obtain ⟨y, rfl⟩ := mem_lpow.1 ((Submodule.Quotient.mk_eq_zero _).1 hx)
      exact ⟨Submodule.Quotient.mk y, by rw [mulc_mk, hb]⟩
    · rintro ⟨y, rfl⟩
      obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ y
      rw [mulc_mk, hb]
      exact (Submodule.Quotient.mk_eq_zero _).2 (mem_lpow.2 ⟨y, rfl⟩)

theorem ses_red {l e : ℕ} {L : Cx.{1} W} (hL : FlatL l e L) {a b c : ℕ} (hc : a + b = c) (he : c ≤ e)
    (ha : a ≤ c) (hb : b ≤ c) : Ses (nug l L ha) (redg l L hb) := by
  have hb' : c - a = b := by omega
  refine ⟨fun i => (injective_iff_map_eq_zero _).2 fun x hx => ?_, fun i x => ?_, fun i x => ?_⟩
  · obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    have h1 : Submodule.Quotient.mk (((l : W) ^ (c - a)) • y) = (0 : (quo l L c).X i) := hx
    rw [hb'] at h1
    obtain ⟨t, ht⟩ := mem_lpow.1 ((Submodule.Quotient.mk_eq_zero _).1 h1)
    have h2 : ((l : W) ^ b) • (y - ((l : W) ^ a) • t) = 0 := by
      rw [smul_sub, smul_smul, ← pow_add, Nat.add_comm b a, hc, ht, sub_self]
    obtain ⟨s, hs⟩ := mem_lpow.1 ((hL i).2 (e - b) b (by omega) _ h2)
    refine (Submodule.Quotient.mk_eq_zero _).2 (mem_lpow.2 ⟨((l : W) ^ (e - b - a)) • s + t, ?_⟩)
    rw [smul_add, smul_smul, ← pow_add, show a + (e - b - a) = e - b by omega, hs, sub_add_cancel]
  · obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    exact ⟨Submodule.Quotient.mk y, rfl⟩
  · obtain ⟨t, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    constructor
    · intro hx
      have h1 : Submodule.Quotient.mk t = (0 : (quo l L b).X i) := hx
      obtain ⟨s, rfl⟩ := mem_lpow.1 ((Submodule.Quotient.mk_eq_zero _).1 h1)
      refine ⟨Submodule.Quotient.mk s, ?_⟩
      change Submodule.Quotient.mk (((l : W) ^ (c - a)) • s) = _
      rw [hb']
    · rintro ⟨y, hy⟩
      obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ y
      have h1 : Submodule.Quotient.mk (((l : W) ^ (c - a)) • y) = (Submodule.Quotient.mk t : (quo l L c).X i) := hy
      rw [hb'] at h1
      rw [← h1]
      change Submodule.Quotient.mk (((l : W) ^ b) • y) = (0 : (quo l L b).X i)
      exact (Submodule.Quotient.mk_eq_zero _).2 (mem_lpow.2 ⟨y, rfl⟩)

end GlobalTheory.CompanionTheory.TowFlat

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MkOfMemB =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfFlatTower =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfFlatTower", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MkOfMemB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens\npublic import Mathlib.Tactic.Bound\npublic import Mathlib.Tactic.Monotonicity.Lemmas\npublic import Mathlib.Topology.Sheaves.Presheaf\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapHCompEqSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CrystallineSemistableComparison CrystallineSemistableComparison.Tw CrystallineSemistableComparison.Ls GlobalTheory.CompanionTheory.LsRho

namespace GlobalTheory.CompanionTheory.TowFlat

variable {W : Type} [CommRing W]

section General

variable {l : ℕ}

theorem redg_qred {K L : Cx.{1} W} {c : ℕ} (f : Cx.Hom K (quo l L c) (RingHom.id W)) {b b' : ℕ} (hbb : b ≤ b')
    (hb : b' ≤ c) (i : ℕ) (x : (quo l K b').X i) :
    (redg l L hbb).f i ((qred l f hb).f i x) = (qred l f (hbb.trans hb)).f i ((redg l K hbb).f i x) := by
  obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  obtain ⟨t, ht⟩ := Submodule.Quotient.mk_surjective _ (f.f i y)
  change (redg l L hbb).f i ((redg l L hb).f i (f.f i y)) = (redg l L (hbb.trans hb)).f i (f.f i y)
  rw [← ht]
  rfl

theorem redg_prj_H (K : Cx.{1} W) {b c : ℕ} (hb : b ≤ c) (j : ℕ) (x : K.H j) :
    (redg l K hb).mapH j ((prj l K c).mapH j x) = (prj l K b).mapH j x := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  exact congrArg Submodule.Quotient.mk (Subtype.ext rfl)

theorem qred_prj_H {K L : Cx.{1} W} {c : ℕ} (f : Cx.Hom K (quo l L c) (RingHom.id W)) {b : ℕ} (h : b ≤ c)
    (j : ℕ) (u : K.H j) :
    (qred l f h).mapH j ((prj l K b).mapH j u) = (redg l L h).mapH j (f.mapH j u) := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ u
  exact congrArg Submodule.Quotient.mk (Subtype.ext rfl)

theorem redg_self_H (K : Cx.{1} W) (c j : ℕ) (u : (quo l K c).H j) : (redg l K (le_refl c)).mapH j u = u := by
  refine mapH_eq_self _ j (fun x => ?_) u
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rfl

theorem nug_qred {K L : Cx.{1} W} {c a : ℕ} (f : Cx.Hom K (quo l L c) (RingHom.id W)) (h : a ≤ c)
    (hk : ∀ i (x : K.X i), ((l : W) ^ c) • x = 0) (i : ℕ) (x : (quo l K a).X i) :
    (nug l L h).f i ((qred l f h).f i x) = f.f i ((mulc l K h hk).f i x) := by
  obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rw [mulc_mk, map_smul]
  change (nug l L h).f i ((redg l L h).f i (f.f i y)) = _
  obtain ⟨t, ht⟩ := Submodule.Quotient.mk_surjective _ (f.f i y)
  rw [← ht]
  rfl

theorem nug_redg (L : Cx.{1} W) {a c : ℕ} (h : a ≤ c) (h1 : a + 1 ≤ c + 1)
    (hk : ∀ i (x : L.X i), ((l : W) ^ (c + 1)) • x = 0) (i : ℕ) (x : (quo l L (a + 1)).X i) :
    (nug l L h).f i ((redg l L (Nat.le_succ a)).f i x) = (prj l L c).f i ((mulc l L h1 hk).f i x) := by
  obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rw [mulc_mk]
  change Submodule.Quotient.mk (((l : W) ^ (c - a)) • y) = Submodule.Quotient.mk (((l : W) ^ (c + 1 - (a + 1))) • y)
  rw [Nat.add_sub_add_right]

end General

section Tower

variable (l : ℕ) (Kt : ℕ → Cx.{1} W) (ψ : ∀ n, Cx.Hom (Kt n) (quo l (Kt (n + 1)) n) (RingHom.id W))

def tr {b m : ℕ} (hb : b ≤ m) {c : ℕ} (h : m ≤ c) : Cx.Hom (quo l (Kt m) b) (quo l (Kt c) b) (RingHom.id W) :=
  Nat.leRec (motive := fun c _ => Cx.Hom (quo l (Kt m) b) (quo l (Kt c) b) (RingHom.id W))
    (Cx.Hom.id _) (fun c hc t => t.comp (qred l (ψ c) (hb.trans hc))) h

theorem tr_self_f {b m : ℕ} (hb : b ≤ m) (i : ℕ) (x : (quo l (Kt m) b).X i) :
    (tr l Kt ψ hb (le_refl m)).f i x = x := by
  unfold tr
  rw [Nat.leRec_self]
  rfl

theorem tr_succ_f {b m : ℕ} (hb : b ≤ m) {c : ℕ} (h : m ≤ c) (h' : m ≤ c + 1) (i : ℕ) (x : (quo l (Kt m) b).X i) :
    (tr l Kt ψ hb h').f i x = (qred l (ψ c) (hb.trans h)).f i ((tr l Kt ψ hb h).f i x) := by
  unfold tr
  rw [Nat.leRec_succ]
  rfl

theorem tr_succ_H {b m : ℕ} (hb : b ≤ m) {c : ℕ} (h : m ≤ c) (h' : m ≤ c + 1) (j : ℕ) (u : (quo l (Kt m) b).H j) :
    (tr l Kt ψ hb h').mapH j u = (qred l (ψ c) (hb.trans h)).mapH j ((tr l Kt ψ hb h).mapH j u) :=
  mapH_of_comp _ _ _ j (tr_succ_f l Kt ψ hb h h' j) u

theorem tr_bij (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    {b m : ℕ} (hb : b ≤ m) {c : ℕ} (h : m ≤ c) (j : ℕ) : Function.Bijective ((tr l Kt ψ hb h).mapH j) := by
  induction c, h using Nat.le_induction with
  | base =>
    have e : ⇑((tr l Kt ψ hb (le_refl m)).mapH j) = id :=
      funext fun u => mapH_eq_self _ j (tr_self_f l Kt ψ hb j) u
    rw [e]
    exact Function.bijective_id
  | succ c hc ih =>
    have e : ⇑((tr l Kt ψ hb (Nat.le_succ_of_le hc)).mapH j) =
        ⇑((qred l (ψ c) (hb.trans hc)).mapH j) ∘ ⇑((tr l Kt ψ hb hc).mapH j) :=
      funext fun u => tr_succ_H l Kt ψ hb hc _ j u
    rw [e]
    exact (hq _ _ _ j).comp ih

theorem redg_tr {b b' m : ℕ} (hbb : b ≤ b') (hb : b' ≤ m) {c : ℕ} (h : m ≤ c) (i : ℕ) (x : (quo l (Kt m) b').X i) :
    (redg l (Kt c) hbb).f i ((tr l Kt ψ hb h).f i x) =
      (tr l Kt ψ (hbb.trans hb) h).f i ((redg l (Kt m) hbb).f i x) := by
  induction c, h using Nat.le_induction with
  | base => rw [tr_self_f, tr_self_f]
  | succ c hc ih =>
    rw [tr_succ_f l Kt ψ hb hc, tr_succ_f l Kt ψ (hbb.trans hb) hc, redg_qred, ih]

theorem redg_tr_H {b b' m : ℕ} (hbb : b ≤ b') (hb : b' ≤ m) {c : ℕ} (h : m ≤ c) (j : ℕ) (u : (quo l (Kt m) b').H j) :
    (redg l (Kt c) hbb).mapH j ((tr l Kt ψ hb h).mapH j u) =
      (tr l Kt ψ (hbb.trans hb) h).mapH j ((redg l (Kt m) hbb).mapH j u) := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ u
  exact congrArg Submodule.Quotient.mk (Subtype.ext (redg_tr l Kt ψ hbb hb h j z.1))

theorem tr_first {a c : ℕ} (hb : a ≤ a + 1) (h : a + 1 ≤ c) (h' : a ≤ c) (i : ℕ) (x : (quo l (Kt a) a).X i) :
    (tr l Kt ψ hb h).f i ((qred l (ψ a) (le_refl a)).f i x) = (tr l Kt ψ (le_refl a) h').f i x := by
  induction c, h using Nat.le_induction with
  | base =>
    rw [tr_self_f, tr_succ_f l Kt ψ (le_refl a) (le_refl a), tr_self_f]
  | succ c hc ih =>
    rw [tr_succ_f l Kt ψ hb hc, tr_succ_f l Kt ψ (le_refl a) (hb.trans hc), ih (hb.trans hc)]

theorem tr_first_H {a c : ℕ} (hb : a ≤ a + 1) (h : a + 1 ≤ c) (h' : a ≤ c) (j : ℕ) (v : (quo l (Kt a) a).H j) :
    (tr l Kt ψ hb h).mapH j ((qred l (ψ a) (le_refl a)).mapH j v) = (tr l Kt ψ (le_refl a) h').mapH j v := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ v
  exact congrArg Submodule.Quotient.mk (Subtype.ext (tr_first l Kt ψ hb h h' j z.1))

def theta (j : ℕ) {b c : ℕ} (h : b ≤ c) : (Kt b).H j →ₗ[W] (quo l (Kt c) b).H j :=
  ((tr l Kt ψ (le_refl b) h).mapH j).comp ((prj l (Kt b) b).mapH j)

theorem theta_apply (j : ℕ) {b c : ℕ} (h : b ≤ c) (x : (Kt b).H j) :
    theta l Kt ψ j h x = (tr l Kt ψ (le_refl b) h).mapH j ((prj l (Kt b) b).mapH j x) := rfl

theorem theta_self (j c : ℕ) (x : (Kt c).H j) :
    theta l Kt ψ j (le_refl c) x = (prj l (Kt c) c).mapH j x :=
  mapH_eq_self _ j (tr_self_f l Kt ψ (le_refl c) j) _

theorem theta_succ (j : ℕ) {b c : ℕ} (h : b ≤ c) (h' : b ≤ c + 1) (x : (Kt b).H j) :
    theta l Kt ψ j h' x = (qred l (ψ c) h).mapH j (theta l Kt ψ j h x) :=
  tr_succ_H l Kt ψ (le_refl b) h h' j _

theorem prj_bij (hF : ∀ c, FlatL l c (Kt c)) (b j : ℕ) : Function.Bijective ((prj l (Kt b) b).mapH j) := by
  refine mapH_bij _ (fun i => ⟨(injective_iff_map_eq_zero _).2 fun x hx => ?_, Submodule.mkQ_surjective _⟩) j
  obtain ⟨y, rfl⟩ := mem_lpow.1 ((Submodule.Quotient.mk_eq_zero _).1 hx)
  exact (hF b i).1 y

variable {l Kt ψ}

theorem theta_bij (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j : ℕ) {b c : ℕ} (h : b ≤ c) : Function.Bijective (theta l Kt ψ j h) :=
  (tr_bij l Kt ψ hq (le_refl b) h j).comp (prj_bij l Kt hF b j)

def thetaE (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j : ℕ) {b c : ℕ} (h : b ≤ c) : (Kt b).H j ≃ₗ[W] (quo l (Kt c) b).H j :=
  LinearEquiv.ofBijective (theta l Kt ψ j h) (theta_bij hF hq j h)

theorem theta_thetaE (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j : ℕ) {b c : ℕ} (h : b ≤ c) (y : (quo l (Kt c) b).H j) :
    theta l Kt ψ j h ((thetaE hF hq j h).symm y) = y :=
  (thetaE hF hq j h).apply_symm_apply y

def rhoT (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j c b : ℕ) : (Kt c).H j →ₗ[W] (Kt b).H j :=
  if h : b ≤ c then (thetaE hF hq j h).symm.toLinearMap ∘ₗ (prj l (Kt c) b).mapH j else 0

theorem theta_rho (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j : ℕ) {b c : ℕ} (h : b ≤ c) (x : (Kt c).H j) :
    theta l Kt ψ j h (rhoT hF hq j c b x) = (prj l (Kt c) b).mapH j x := by
  rw [rhoT, dite_eq_left h]
  exact theta_thetaE hF hq j h _

def nuT (hF : ∀ c, FlatL l c (Kt c)) (j a c : ℕ) : (Kt a).H j →ₗ[W] (Kt c).H j :=
  if h : a ≤ c then ((mulc l (Kt c) h (fun i => (hF c i).1)).mapH j) ∘ₗ theta l Kt ψ j h else 0

theorem nu_eq (hF : ∀ c, FlatL l c (Kt c)) (j : ℕ) {a c : ℕ} (h : a ≤ c) (y : (Kt a).H j) :
    nuT (ψ := ψ) hF j a c y = (mulc l (Kt c) h (fun i => (hF c i).1)).mapH j (theta l Kt ψ j h y) := by
  rw [nuT, dite_eq_left h]
  rfl

theorem le_left {a b c : ℕ} (hc : a + b = c) : a ≤ c := by omega

theorem le_right {a b c : ℕ} (hc : a + b = c) : b ≤ c := by omega

def deltaG (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j a b c : ℕ) (hc : a + b = c) : (Kt b).H j →ₗ[W] (Kt a).H (j + 1) :=
  (thetaE hF hq (j + 1) (le_left hc)).symm.toLinearMap ∘ₗ
    cn (ses_flat (hF c) hc (le_left hc) (fun i => (hF c i).1)) j ∘ₗ theta l Kt ψ j (le_right hc)

theorem theta_delta (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j a b c : ℕ) (hc : a + b = c) (x : (Kt b).H j) :
    theta l Kt ψ (j + 1) (le_left hc) (deltaG hF hq j a b c hc x) =
      cn (ses_flat (hF c) hc (le_left hc) (fun i => (hF c i).1)) j (theta l Kt ψ j (le_right hc) x) :=
  theta_thetaE hF hq (j + 1) (le_left hc) _

theorem deltaG_congr (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j a b c c' : ℕ) (hc : a + b = c) (hc' : a + b = c') (x : (Kt b).H j) :
    deltaG hF hq j a b c hc x = deltaG hF hq j a b c' hc' x := by
  subst hc
  subst hc'
  rfl

variable (hψ : ∀ n j, Function.Bijective ((ψ n).mapH j))

theorem psi_r (j n : ℕ) (x : (Kt (n + 1)).H j) :
    (ψ n).mapH j ((tsys l Kt ψ hψ j).r n x) = (prj l (Kt (n + 1)) n).mapH j x :=
  (LinearEquiv.ofBijective ((ψ n).mapH j) (hψ n j)).apply_symm_apply _

theorem redg_theta (j a c : ℕ) (h : a + 1 ≤ c) (h' : a ≤ c) (y : (Kt (a + 1)).H j) :
    (redg l (Kt c) (Nat.le_succ a)).mapH j (theta l Kt ψ j h y) =
      theta l Kt ψ j h' ((tsys l Kt ψ hψ j).r a y) := by
  rw [theta_apply, theta_apply, redg_tr_H l Kt ψ (Nat.le_succ a) (le_refl (a + 1)) h j, redg_prj_H,
    ← tr_first_H l Kt ψ (Nat.le_succ a) h h' j, qred_prj_H, redg_self_H, psi_r]

theorem rho_succT (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j c b : ℕ) (h : b ≤ c) (x : (Kt (c + 1)).H j) :
    rhoT hF hq j (c + 1) b x = rhoT hF hq j c b ((tsys l Kt ψ hψ j).r c x) := by
  have h' : b ≤ c + 1 := h.trans (Nat.le_succ c)
  apply (theta_bij hF hq j h').1
  rw [theta_rho hF hq j h', theta_succ l Kt ψ j h h', theta_rho hF hq j h, qred_prj_H, psi_r, redg_prj_H]

theorem nu_rT (hF : ∀ c, FlatL l c (Kt c)) (j a c : ℕ) (h : a ≤ c) (y : (Kt (a + 1)).H j) :
    (tsys l Kt ψ hψ j).r c (nuT (ψ := ψ) hF j (a + 1) (c + 1) y) =
      nuT (ψ := ψ) hF j a c ((tsys l Kt ψ hψ j).r a y) := by
  have h1 : a + 1 ≤ c + 1 := Nat.succ_le_succ h
  have h2 : a ≤ c + 1 := h.trans (Nat.le_succ c)
  apply (hψ c j).1
  rw [psi_r, nu_eq hF j h1, nu_eq hF j h]
  have e1 : ∀ v : (quo l (Kt c) a).H j, (ψ c).mapH j ((mulc l (Kt c) h (fun i => (hF c i).1)).mapH j v) =
      (nug l (Kt (c + 1)) h).mapH j ((qred l (ψ c) h).mapH j v) := by
    intro v
    obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ v
    exact congrArg Submodule.Quotient.mk (Subtype.ext (nug_qred (ψ c) h (fun i => (hF c i).1) j z.1).symm)
  have e2 : ∀ v : (quo l (Kt (c + 1)) (a + 1)).H j,
      (prj l (Kt (c + 1)) c).mapH j ((mulc l (Kt (c + 1)) h1 (fun i => (hF (c + 1) i).1)).mapH j v) =
      (nug l (Kt (c + 1)) h).mapH j ((redg l (Kt (c + 1)) (Nat.le_succ a)).mapH j v) := by
    intro v
    obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ v
    exact congrArg Submodule.Quotient.mk (Subtype.ext (nug_redg _ h h1 (fun i => (hF (c + 1) i).1) j z.1).symm)
  rw [e1, e2, ← theta_succ l Kt ψ j h h2, redg_theta hψ j a (c + 1) h1 h2]

theorem delta_rT (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j a b c : ℕ) (hc : a + b = c) (hc' : a + 1 + b = c + 1) (x : (Kt b).H j) :
    (tsys l Kt ψ hψ (j + 1)).r a (deltaG hF hq j (a + 1) b (c + 1) hc' x) = deltaG hF hq j a b c hc x := by
  have ha : a ≤ c := le_left hc
  have hb : b ≤ c := le_right hc
  have ha' : a ≤ c + 1 := ha.trans (Nat.le_succ c)
  have hb' : b ≤ c + 1 := hb.trans (Nat.le_succ c)
  apply (theta_bij hF hq (j + 1) ha').1
  rw [← redg_theta hψ (j + 1) a (c + 1) (le_left hc') ha', theta_delta hF hq j (a + 1) b (c + 1) hc',
    theta_succ l Kt ψ (j + 1) ha ha', theta_delta hF hq j a b c hc]
  have S2 := ses_red (hF (c + 1)) hc (Nat.le_succ c) ha hb
  have n1 := cn_nat (ses_flat (hF c) hc (le_left hc) (fun i => (hF c i).1)) S2
    (qred l (ψ c) ha) (ψ c) (qred l (ψ c) hb) j
    (fun y => nug_qred (ψ c) ha (fun i => (hF c i).1) (j + 1) y) (fun y => rfl) (theta l Kt ψ j hb x)
  have n2 := cn_nat (ses_flat (hF (c + 1)) hc' (le_left hc') (fun i => (hF (c + 1) i).1)) S2
    (redg l (Kt (c + 1)) (Nat.le_succ a)) (prj l (Kt (c + 1)) c) (Cx.Hom.id _) j
    (fun y => nug_redg _ ha (le_left hc') (fun i => (hF (c + 1) i).1) (j + 1) y) (fun y => rfl)
    (theta l Kt ψ j hb' x)
  rw [← n1, ← n2, ← theta_succ l Kt ψ j hb hb', mapH_eq_self (Cx.Hom.id _) j (fun _ => rfl)]

theorem rho_selfT (hF : ∀ c, FlatL l c (Kt c)) (hq : ∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j))
    (j c : ℕ) (x : (Kt c).H j) : rhoT hF hq j c c x = x := by
  apply (theta_bij hF hq j (le_refl c)).1
  rw [theta_rho hF hq j (le_refl c), theta_self]

theorem kill_H (hF : ∀ c, FlatL l c (Kt c)) (j n : ℕ) (x : (Kt n).H j) : ((l : W) ^ n) • x = 0 := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  have hz : ((l : W) ^ n) • z = 0 := Subtype.ext ((hF n j).1 z.1)
  rw [← Submodule.Quotient.mk_smul, hz]
  rfl

end Tower

theorem nonempty_lSeq_tsys : ∀ (W : Type) [CommRing W] (l : ℕ) (Kt : ℕ → Cx.{1} W)
    (ψ : ∀ n, Cx.Hom (Kt n) (quo l (Kt (n + 1)) n) (RingHom.id W))
    (hψ : ∀ n j, Function.Bijective ((ψ n).mapH j)), (∀ c, FlatL l c (Kt c)) →
    (∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j)) →
    ∀ j, Nonempty (LSeq l (tsys l Kt ψ hψ j) (tsys l Kt ψ hψ (j + 1))) := by
  intro W _ l Kt ψ hψ hF hq j
  refine ⟨{
    ρ := fun c b => rhoT hF hq j c b
    ν := fun a c => nuT (ψ := ψ) hF j a c
    δ := fun b a => deltaG hF hq j a b (a + b) rfl
    kill := kill_H hF j
    ρ_self := fun c x => rho_selfT hF hq j c x
    ρ_succ := fun c b h x => rho_succT hψ hF hq j c b h x
    ν_ρ := fun a c h x => ?_
    ν_r := fun a c h y => nu_rT hψ hF j a c h y
    ex₁ := fun a b c hc x hx => ?_
    δ_r := fun b a x => ?_
    ex₂ := fun a b c hc x hx => ?_ }⟩
  · change nuT (ψ := ψ) hF j a c (rhoT hF hq j c a x) = _
    rw [nu_eq hF j h, theta_rho hF hq j h]
    exact mapH_comp_eq_smul _ _ _ j (fun _ => rfl) x
  · subst hc
    have hx' : rhoT hF hq j (a + b) b x = 0 := hx
    have h0 := theta_rho hF hq j (le_right (rfl : a + b = a + b)) x
    rw [hx', map_zero] at h0
    obtain ⟨y, hy⟩ := ex_mid (ses_flat (hF (a + b)) rfl (le_left rfl) (fun i => (hF (a + b) i).1)) j x h0.symm
    refine ⟨(thetaE hF hq j (le_left (rfl : a + b = a + b))).symm y, ?_⟩
    change nuT (ψ := ψ) hF j a (a + b) _ = x
    rw [nu_eq hF j (le_left rfl), theta_thetaE, hy]
  · change (tsys l Kt ψ hψ (j + 1)).r a (deltaG hF hq j (a + 1) b (a + 1 + b) rfl x) = deltaG hF hq j a b (a + b) rfl x
    rw [deltaG_congr hF hq j (a + 1) b (a + 1 + b) (a + b + 1) rfl (by omega) x]
    exact delta_rT hψ hF hq j a b (a + b) rfl (by omega) x
  · subst hc
    have hx' : deltaG hF hq j a b (a + b) rfl x = 0 := hx
    have h0 := theta_delta hF hq j a b (a + b) rfl x
    rw [hx', map_zero] at h0
    obtain ⟨y, hy⟩ := ex_cn _ j _ h0.symm
    refine ⟨y, ?_⟩
    change rhoT hF hq j (a + b) b y = x
    apply (theta_bij hF hq j (le_right (rfl : a + b = a + b))).1
    rw [theta_rho hF hq j (le_right rfl), hy]

end GlobalTheory.CompanionTheory.TowFlat

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfFlatTower =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfLevelIsos =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfLevelIsos", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CrystallineSemistableComparison CrystallineSemistableComparison.Tw

namespace GlobalTheory.CompanionTheory.TowerSeq

theorem lseq_transport : ∀ (W : Type) [CommRing W] (l : ℕ) (S S' T T' : Sys.{1} W)
    (e : Sys.Hom S T (RingHom.id W)) (e' : Sys.Hom S' T' (RingHom.id W)),
    (∀ n, Function.Bijective (e.f n)) → (∀ n, Function.Bijective (e'.f n)) →
    LSeq l S S' → Nonempty (LSeq l T T') := by
  intro W _ l S S' T T' e e' h h' L
  let E : ∀ n, S.M n ≃ₗ[W] T.M n := fun n => LinearEquiv.ofBijective (e.f n) (h n)
  let E' : ∀ n, S'.M n ≃ₗ[W] T'.M n := fun n => LinearEquiv.ofBijective (e'.f n) (h' n)
  have hc : ∀ n y, T.r n (E (n + 1) y) = E n (S.r n y) := fun n y => e.comm n y
  have hc' : ∀ n y, T'.r n (E' (n + 1) y) = E' n (S'.r n y) := fun n y => e'.comm n y
  have hr : ∀ n x, (E n).symm (T.r n x) = S.r n ((E (n + 1)).symm x) := by
    intro n x
    apply (E n).injective
    rw [LinearEquiv.apply_symm_apply, ← hc, LinearEquiv.apply_symm_apply]
  refine ⟨{
    ρ := fun c b => (E b).toLinearMap ∘ₗ L.ρ c b ∘ₗ (E c).symm.toLinearMap
    ν := fun a c => (E c).toLinearMap ∘ₗ L.ν a c ∘ₗ (E a).symm.toLinearMap
    δ := fun b a => (E' a).toLinearMap ∘ₗ L.δ b a ∘ₗ (E b).symm.toLinearMap
    kill := ?_, ρ_self := ?_, ρ_succ := ?_, ν_ρ := ?_, ν_r := ?_, ex₁ := ?_, δ_r := ?_, ex₂ := ?_ }⟩
  · intro n x
    apply (E n).symm.injective
    rw [map_smul, L.kill, map_zero]
  · intro c x
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe]
    rw [L.ρ_self, LinearEquiv.apply_symm_apply]
  · intro c b hb x
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe]
    rw [L.ρ_succ c b hb, hr]
  · intro a c ha x
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe, LinearEquiv.symm_apply_apply]
    rw [L.ν_ρ a c ha, map_smul, LinearEquiv.apply_symm_apply]
  · intro a c ha y
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe]
    rw [hc, L.ν_r a c ha, hr]
  · intro a b c hcab x hx
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe] at hx
    have h0 : L.ρ c b ((E c).symm x) = 0 := by
      apply (E b).injective
      rw [hx, map_zero]
    obtain ⟨y, hy⟩ := L.ex₁ a b c hcab _ h0
    refine ⟨E a y, ?_⟩
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe, LinearEquiv.symm_apply_apply]
    rw [hy, LinearEquiv.apply_symm_apply]
  · intro b a x
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe]
    rw [hc', L.δ_r]
  · intro a b c hcab x hx
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe] at hx
    have h0 : L.δ b a ((E b).symm x) = 0 := by
      apply (E' a).injective
      rw [hx, map_zero]
    obtain ⟨y, hy⟩ := L.ex₂ a b c hcab _ h0
    refine ⟨E c y, ?_⟩
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe, LinearEquiv.symm_apply_apply]
    rw [hy, LinearEquiv.apply_symm_apply]

end GlobalTheory.CompanionTheory.TowerSeq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfLevelIsos =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientReductionBijectiveOfFlat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientReductionBijectiveOfFlat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.FlatL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DpZeroRight\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.ModFSW\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris CrystallineSemistableComparison CrystallineSemistableComparison.Ls CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.LsG

namespace GlobalTheory.CompanionTheory.QredFlat

variable {W : Type} [CommRing W]

theorem B_ker (D : Cx.{1} W) (n : ℕ) (v : D.X n) (hv : v ∈ D.B n) : D.d n v = 0 := by
  cases n with
  | zero =>
    have h : v = 0 := hv
    rw [h, map_zero]
  | succ n =>
    obtain ⟨g, rfl⟩ := hv
    exact D.dd n g

theorem exact_quo (D : Cx.{1} W) (l m : ℕ) (hF : FlatL l m D)
    (hE : ∀ n (x : D.X n), D.d n x = 0 → x ∈ D.B n) :
    ∀ n c, c ≤ m → ∀ x : D.X n, D.d n x ∈ lpow (W := W) l (D.X (n + 1)) c →
      ∃ u : D.X n, ∃ v ∈ D.B n, x = ((l : W) ^ c) • u + v := by
  have key : ∀ n c, c ≤ m → ∀ x : D.X n, D.d n x ∈ lpow (W := W) l (D.X (n + 1)) c →
      D.d n (((l : W) ^ (m - c)) • x) = 0 := by
    intro n c hc x hx
    obtain ⟨y, hy⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 hx
    rw [map_smul, ← hy, smul_smul, ← pow_add, Nat.sub_add_cancel hc]
    exact (hF (n + 1)).1 y
  intro n
  induction n with
  | zero =>
    intro c hc x hx
    have h0 : ((l : W) ^ (m - c)) • x = 0 := hE 0 _ (key 0 c hc x hx)
    obtain ⟨u, hu⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 ((hF 0).2 c (m - c) (by omega) x h0)
    exact ⟨u, 0, Submodule.zero_mem _, by rw [add_zero, hu]⟩
  | succ n ih =>
    intro c hc x hx
    obtain ⟨w, hw⟩ := hE (n + 1) _ (key (n + 1) c hc x hx)
    have hw' : D.d n w = ((l : W) ^ (m - c)) • x := hw
    obtain ⟨u, v, hv, e⟩ := ih (m - c) (Nat.sub_le _ _) w (by rw [hw']; exact GlobalTheory.CompanionTheory.TowFlat.mem_lpow.2 ⟨x, rfl⟩)
    have hd : D.d n w = ((l : W) ^ (m - c)) • D.d n u := by
      rw [e, map_add (f := _), B_ker D n v hv, add_zero, map_smul]
    have h1 : ((l : W) ^ (m - c)) • (x - D.d n u) = 0 := by
      rw [smul_sub, ← hw', hd, sub_self]
    obtain ⟨t, ht⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 ((hF (n + 1)).2 c (m - c) (by omega) _ h1)
    exact ⟨t, D.d n u, ⟨u, rfl⟩, by rw [ht]; abel⟩

def Sh (L : Cx.{1} W) : ℕ → Type 1
  | 0 => PUnit
  | n + 1 => L.X n

instance instAC (L : Cx.{1} W) : ∀ n, AddCommGroup (Sh L n)
  | 0 => (inferInstance : AddCommGroup PUnit)
  | n + 1 => (inferInstance : AddCommGroup (L.X n))

instance instMod (L : Cx.{1} W) : ∀ n, Module W (Sh L n)
  | 0 => (PUnit.module : Module W PUnit.{2})
  | n + 1 => (inferInstance : Module W (L.X n))

def shD (L : Cx.{1} W) : ∀ n, Sh L n →ₗ[W] Sh L (n + 1)
  | 0 => 0
  | n + 1 => L.d n

def sdL (L : Cx.{1} W) (n : ℕ) : Sh L n →ₗ[W] L.X n := shD L n

theorem d_shD (L : Cx.{1} W) (n : ℕ) (y : Sh L n) : L.d n (shD L n y) = 0 := by
  cases n with
  | zero => exact map_zero _
  | succ n => exact L.dd n y

theorem B_shD (L : Cx.{1} W) (n : ℕ) (y : L.X n) (hy : y ∈ L.B n) : ∃ t : Sh L n, sdL L n t = y := by
  cases n with
  | zero => exact ⟨PUnit.unit, (show y = 0 from hy).symm⟩
  | succ n =>
    obtain ⟨g, rfl⟩ := hy
    exact ⟨g, rfl⟩

def gf {K L : Cx.{1} W} (f : Cx.Hom K L (RingHom.id W)) (n : ℕ) : K.X n →ₗ[W] Sh L (n + 1) := f.f n

def cone {K L : Cx.{1} W} (f : Cx.Hom K L (RingHom.id W)) : Cx.{1} W where
  X n := K.X n × Sh L n
  d n := LinearMap.prod ((K.d n) ∘ₗ LinearMap.fst W _ _)
    (((gf f n) ∘ₗ LinearMap.fst W _ _) - (shD L n) ∘ₗ LinearMap.snd W _ _)
  dd n x := by
    refine Prod.ext (K.dd n x.1) ?_
    change gf f (n + 1) (K.d n x.1) - shD L (n + 1) (gf f n x.1 - shD L n x.2) = 0
    have e : shD L (n + 1) (gf f n x.1 - shD L n x.2) = gf f (n + 1) (K.d n x.1) := by
      have h1 : shD L (n + 1) (shD L n x.2) = 0 := d_shD L n x.2
      have h2 : shD L (n + 1) (gf f n x.1) = gf f (n + 1) (K.d n x.1) := f.comm n x.1
      rw [map_sub, h1, h2, sub_zero]
    rw [e, sub_self]

theorem shD_B (L : Cx.{1} W) (n : ℕ) (y : Sh L n) : sdL L n y ∈ L.B n := by
  cases n with
  | zero => exact Submodule.zero_mem _
  | succ n => exact ⟨y, rfl⟩

theorem cone_B_fst {K L : Cx.{1} W} (f : Cx.Hom K L (RingHom.id W)) (n : ℕ) (v : (cone f).X n)
    (hv : v ∈ (cone f).B n) : v.1 ∈ K.B n := by
  cases n with
  | zero =>
    have h : v = 0 := hv
    rw [h]
    exact Submodule.zero_mem _
  | succ n =>
    obtain ⟨g, rfl⟩ := hv
    exact ⟨g.1, rfl⟩

theorem flat_sh {L : Cx.{1} W} {l m : ℕ} (hL : FlatL l m L) (n : ℕ) :
    (∀ y : Sh L n, ((l : W) ^ m) • y = 0) ∧
      ∀ a b, a + b = m → ∀ y : Sh L n, ((l : W) ^ b) • y = 0 → ∃ t : Sh L n, ((l : W) ^ a) • t = y := by
  cases n with
  | zero => exact ⟨fun _ => rfl, fun _ _ _ y _ => ⟨0, rfl⟩⟩
  | succ n => exact ⟨(hL n).1, fun a b h y hy => GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 ((hL n).2 a b h y hy)⟩

theorem flat_cone {K L : Cx.{1} W} (f : Cx.Hom K L (RingHom.id W)) {l m : ℕ} (hK : FlatL l m K)
    (hL : FlatL l m L) : FlatL l m (cone f) := by
  intro i
  refine ⟨fun x => Prod.ext ((hK i).1 x.1) ((flat_sh hL i).1 x.2), fun a b h x hx => ?_⟩
  have h1 : ((l : W) ^ b) • x.1 = 0 := congrArg Prod.fst hx
  have h2 : ((l : W) ^ b) • x.2 = 0 := congrArg Prod.snd hx
  obtain ⟨s, hs⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 ((hK i).2 a b h _ h1)
  obtain ⟨t, ht⟩ := (flat_sh hL i).2 a b h _ h2
  exact GlobalTheory.CompanionTheory.TowFlat.mem_lpow.2 ⟨(s, t), Prod.ext hs ht⟩

theorem cone_exact {K L : Cx.{1} W} (f : Cx.Hom K L (RingHom.id W))
    (hb : ∀ j, Function.Bijective (f.mapH j)) (n : ℕ) (x : (cone f).X n) (hx : (cone f).d n x = 0) :
    x ∈ (cone f).B n := by
  obtain ⟨x1, x2⟩ := x
  have h1 : K.d n x1 = 0 := congrArg Prod.fst hx
  have h2 : gf f n x1 - shD L n x2 = 0 := congrArg Prod.snd hx
  have h2' : f.f n x1 = sdL L n x2 := sub_eq_zero.1 h2
  have h3 : f.mapH n (K.cls x1 h1) = 0 := (Submodule.Quotient.mk_eq_zero ((L.B n).submoduleOf (L.Z n))).2 (by
    change f.f n x1 ∈ L.B n
    rw [h2']
    exact shD_B L n x2)
  have h4 : x1 ∈ K.B n :=
    (Submodule.Quotient.mk_eq_zero ((K.B n).submoduleOf (K.Z n))).1
      ((injective_iff_map_eq_zero _).1 (hb n).1 _ h3)
  cases n with
  | zero =>
    have h5 : x1 = 0 := h4
    exact Prod.ext h5 rfl
  | succ n =>
    change L.X n at x2
    obtain ⟨w, hw⟩ := h4
    have hw' : K.d n w = x1 := hw
    have h2'' : f.f (n + 1) x1 = L.d n x2 := h2'
    have h5 : L.d n (x2 - f.f n w) = 0 := by
      rw [map_sub, f.comm, hw', h2'', sub_self]
    obtain ⟨c, hc⟩ := (hb n).2 (L.cls _ h5)
    obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ c
    have h6 : f.f n z.1 - (x2 - f.f n w) ∈ L.B n :=
      (Submodule.Quotient.eq ((L.B n).submoduleOf (L.Z n))).1 hc
    obtain ⟨t, ht⟩ := B_shD L n _ h6
    refine ⟨(w + z.1, t), Prod.ext ?_ ?_⟩
    · change K.d n (w + z.1) = x1
      rw [map_add (f := _), hw', LinearMap.mem_ker.1 z.2, add_zero]
    · change f.f n (w + z.1) - sdL L n t = x2
      rw [ht, map_add (f := _)]
      abel

section Main

variable {l : ℕ}

theorem prj_surj (L : Cx.{1} W) (n i : ℕ) : Function.Surjective ((prj l L n).f i) :=
  Submodule.mkQ_surjective _

theorem prj_zero (L : Cx.{1} W) (n i : ℕ) (x : L.X i) :
    (prj l L n).f i x = 0 ↔ x ∈ lpow (W := W) l (L.X i) n :=
  Submodule.Quotient.mk_eq_zero _

theorem redg_prj (L : Cx.{1} W) {b m : ℕ} (h : b ≤ m) (i : ℕ) (y : L.X i) :
    (redg l L h).f i ((prj l L m).f i y) = (prj l L b).f i y := rfl

theorem redg_surj (L : Cx.{1} W) {b m : ℕ} (h : b ≤ m) (i : ℕ) : Function.Surjective ((redg l L h).f i) := by
  intro z
  obtain ⟨y, rfl⟩ := prj_surj (l := l) L b i z
  exact ⟨(prj l L m).f i y, rfl⟩

theorem redg_zero (L : Cx.{1} W) {b m : ℕ} (h : b ≤ m) (i : ℕ) (w : (quo l L m).X i) :
    (redg l L h).f i w = 0 ↔ w ∈ lpow (W := W) l ((quo l L m).X i) b := by
  obtain ⟨y, rfl⟩ := prj_surj (l := l) L m i w
  constructor
  · intro hw
    obtain ⟨t, rfl⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 ((prj_zero L b i y).1 hw)
    exact GlobalTheory.CompanionTheory.TowFlat.mem_lpow.2 ⟨(prj l L m).f i t, (map_smul _ _ _).symm⟩
  · intro hw
    obtain ⟨s, hs⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 hw
    obtain ⟨t, rfl⟩ := prj_surj (l := l) L m i s
    rw [← hs, map_smul, redg_prj, ← map_smul]
    exact (prj_zero L b i _).2 ⟨t, rfl⟩

theorem flat_quo {L : Cx.{1} W} {m : ℕ} (hL : FlatL l (m + 1) L) : FlatL l m (quo l L m) := by
  intro i
  refine ⟨fun x => ?_, fun a b h x hx => ?_⟩
  · obtain ⟨y, rfl⟩ := prj_surj (l := l) L m i x
    rw [← map_smul]
    exact (prj_zero L m i _).2 ⟨y, rfl⟩
  · obtain ⟨y, rfl⟩ := prj_surj (l := l) L m i x
    rw [← map_smul] at hx
    obtain ⟨t, ht⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 ((prj_zero L m i _).1 hx)
    have h1 : ((l : W) ^ b) • (y - ((l : W) ^ a) • t) = 0 := by
      rw [smul_sub, ← ht, smul_smul, ← pow_add, add_comm b a, h, sub_self]
    obtain ⟨s, hs⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 ((hL i).2 (a + 1) b (by omega) _ h1)
    refine GlobalTheory.CompanionTheory.TowFlat.mem_lpow.2 ⟨(prj l L m).f i (t + (l : W) • s), ?_⟩
    rw [← map_smul]
    congr 1
    rw [smul_add, smul_smul, ← pow_succ, hs]
    abel

theorem prj_B (K : Cx.{1} W) (b j : ℕ) (v : K.X j) (hv : v ∈ K.B j) : (prj l K b).f j v ∈ (quo l K b).B j := by
  cases j with
  | zero =>
    have h : v = 0 := hv
    rw [h, map_zero]
    exact Submodule.zero_mem _
  | succ j =>
    obtain ⟨g, rfl⟩ := hv
    exact ⟨(prj l K b).f j g, (prj l K b).comm j g⟩

theorem redg_B (L : Cx.{1} W) {b m : ℕ} (h : b ≤ m) (j : ℕ) (w : (quo l L m).X j)
    (hw : (redg l L h).f j w ∈ (quo l L b).B j) :
    ∃ t : Sh (quo l L m) j, ∃ s : (quo l L m).X j, ((l : W) ^ b) • s = w - sdL (quo l L m) j t := by
  cases j with
  | zero =>
    obtain ⟨s, hs⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 ((redg_zero L h 0 w).1 hw)
    exact ⟨PUnit.unit, s, by rw [hs]; exact (sub_zero w).symm⟩
  | succ j =>
    obtain ⟨g, hg⟩ := hw
    obtain ⟨g', rfl⟩ := redg_surj (l := l) L h j g
    have hg' : (quo l L b).d j ((redg l L h).f j g') = (redg l L h).f (j + 1) w := hg
    have h0 : (redg l L h).f (j + 1) (w - (quo l L m).d j g') = 0 := by
      rw [map_sub, ← (redg l L h).comm, hg', sub_self]
    obtain ⟨s, hs⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 ((redg_zero L h (j + 1) _).1 h0)
    exact ⟨g', s, hs⟩

theorem redg_shD (L : Cx.{1} W) {b m : ℕ} (h : b ≤ m) (j : ℕ) (t : Sh (quo l L m) j) :
    (redg l L h).f j (sdL (quo l L m) j t) ∈ (quo l L b).B j := by
  cases j with
  | zero =>
    have e : sdL (quo l L m) 0 t = 0 := rfl
    rw [e, map_zero]
    exact Submodule.zero_mem _
  | succ j =>
    exact ⟨(redg l L h).f j t, (redg l L h).comm j t⟩

end Main

theorem qred_bij : ∀ (W : Type) [CommRing W] (l : ℕ) (K L : Cx.{1} W) (m : ℕ)
    (f : Cx.Hom K (quo l L m) (RingHom.id W)), FlatL l m K → FlatL l (m + 1) L →
    (∀ j, Function.Bijective (f.mapH j)) →
    ∀ b (h : b ≤ m) j, Function.Bijective ((qred l f h).mapH j) := by
  intro W _ l K L m f hK hL hf b h j
  have E := exact_quo (cone f) l m (flat_cone f hK (flat_quo hL)) (cone_exact f hf)
  refine ⟨(injective_iff_map_eq_zero _).2 fun u hu => ?_, fun u => ?_⟩
  · obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ u
    obtain ⟨x, hx⟩ := prj_surj (l := l) K b j z.1
    have hz : (quo l K b).d j z.1 = 0 := z.2
    have hdx : K.d j x ∈ lpow (W := W) l (K.X (j + 1)) b :=
      (prj_zero K b _ _).1 (by rw [← (prj l K b).comm, hx]; exact hz)
    have hB : (qred l f h).f j z.1 ∈ (quo l L b).B j :=
      (Submodule.Quotient.mk_eq_zero (((quo l L b).B j).submoduleOf ((quo l L b).Z j))).1 hu
    rw [← hx] at hB
    obtain ⟨t, s, hts⟩ := redg_B L h j (f.f j x) hB
    obtain ⟨p, hp⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 hdx
    have hdc : (cone f).d j (x, t) ∈ lpow (W := W) l ((cone f).X (j + 1)) b :=
      GlobalTheory.CompanionTheory.TowFlat.mem_lpow.2 ⟨(p, s), Prod.ext hp hts⟩
    obtain ⟨u1, v, hv, e⟩ := E j b h (x, t) hdc
    have e1 : x = ((l : W) ^ b) • u1.1 + v.1 := congrArg Prod.fst e
    refine (Submodule.Quotient.mk_eq_zero (((quo l K b).B j).submoduleOf ((quo l K b).Z j))).2 ?_
    change z.1 ∈ (quo l K b).B j
    have e2 : z.1 = (prj l K b).f j v.1 := by
      have e3 : (prj l K b).f j (((l : W) ^ b) • u1.1) = 0 := (prj_zero K b j _).2 ⟨u1.1, rfl⟩
      rw [← hx, e1, map_add (f := _), e3, zero_add]
    rw [e2]
    exact prj_B K b j _ (cone_B_fst f j v hv)
  · obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ u
    obtain ⟨w, hw⟩ := redg_surj (l := l) L h j z.1
    have hz : (quo l L b).d j z.1 = 0 := z.2
    have hdw : (quo l L m).d j w ∈ lpow (W := W) l ((quo l L m).X (j + 1)) b :=
      (redg_zero L h _ _).1 (by rw [← (redg l L h).comm, hw]; exact hz)
    obtain ⟨p, hp⟩ := GlobalTheory.CompanionTheory.TowFlat.mem_lpow.1 hdw
    have hdc : (cone f).d (j + 1) ((0, w) : K.X (j + 1) × Sh (quo l L m) (j + 1)) ∈
        lpow (W := W) l ((cone f).X (j + 1 + 1)) b := by
      refine GlobalTheory.CompanionTheory.TowFlat.mem_lpow.2 ⟨(0, -p), Prod.ext ?_ ?_⟩
      · change ((l : W) ^ b) • (0 : K.X (j + 1 + 1)) = K.d (j + 1) 0
        rw [smul_zero, map_zero]
      · change ((l : W) ^ b) • (-p) = (f.f (j + 1) 0) - (quo l L m).d j w
        rw [smul_neg, hp, map_zero, zero_sub]
    obtain ⟨⟨u1, u2⟩, v, ⟨⟨g1, g2⟩, rfl⟩, e⟩ := E (j + 1) b h (0, w) hdc
    change (quo l L m).X j at u2
    have e1 : 0 = ((l : W) ^ b) • u1 + K.d j g1 := congrArg Prod.fst e
    have e2 : w = ((l : W) ^ b) • u2 + (f.f j g1 - sdL (quo l L m) j g2) := congrArg Prod.snd e
    have hc : (quo l K b).d j ((prj l K b).f j g1) = 0 := by
      rw [(prj l K b).comm]
      exact (prj_zero K b _ _).2 ⟨-u1, by
        change ((l : W) ^ b) • (-u1) = K.d j g1
        rw [smul_neg]
        exact neg_eq_of_add_eq_zero_right e1.symm⟩
    refine ⟨(quo l K b).cls _ hc, (Submodule.Quotient.eq (((quo l L b).B j).submoduleOf ((quo l L b).Z j))).2 ?_⟩
    change (qred l f h).f j ((prj l K b).f j g1) - z.1 ∈ (quo l L b).B j
    have e3 : (qred l f h).f j ((prj l K b).f j g1) - z.1 = (redg l L h).f j (sdL (quo l L m) j g2) := by
      have e4 : (redg l L h).f j (((l : W) ^ b) • u2) = 0 := (redg_zero L h j _).2 ⟨u2, rfl⟩
      have e5 : (qred l f h).f j ((prj l K b).f j g1) = (redg l L h).f j (f.f j g1) := rfl
      rw [← hw, e2, map_add (f := _), e4, zero_add, map_sub, e5]
      abel
    rw [e3]
    exact redg_shD L h j g2

end GlobalTheory.CompanionTheory.QredFlat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientReductionBijectiveOfFlat =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.LsSeqEq =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.LsSeqEq", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.ModFSW\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.IsUnitWitt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.FlatL\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatWittTowerLevel\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfFlatTower\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LseqOfLevelIsos\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientReductionBijectiveOfFlat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothModelRestrictionBijective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.QuoZeroSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Pb.LsG

open CrystallineSemistableComparison.Ls

theorem seq_flat {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : Res l K) (M : Model l K)
    (hM : M.Sm) : ∃ (ψ : ∀ n, Cx.Hom (Kt l (B.schFn M.p) r.ρ n) (quo l (Kt l (B.schFn M.p) r.ρ (n + 1)) n) (RingHom.id _))
      (_ : ∀ n j, Function.Bijective ((ψ n).mapH j)),
      (∀ m b (h : b ≤ m) j, Function.Bijective ((qred l (ψ m) h).mapH j)) ∧
      ∀ n j x, (ψ n).mapH j (resF l (B.schFn M.p) r.ρ n j ((Wc.HS l (B.schFn M.p) r.ρ j).r n x)) =
        (prj l (Kt l (B.schFn M.p) r.ρ (n + 1)) n).mapH j (resF l (B.schFn M.p) r.ρ (n + 1) j x) := by
  obtain ⟨ψ, hψ, hc⟩ := LsQ.seqflat0_pf r M hM
  have hfl : ∀ c, FlatL l c (Kt l (B.schFn M.p) r.ρ c) := fun c => _root_.GlobalTheory.CompanionTheory.FlatLevel.flatL_Kt l r.k _ (B.schFn M.p) r.ρ c
  exact ⟨ψ, hψ, fun m b h j => _root_.GlobalTheory.CompanionTheory.QredFlat.qred_bij _ l _ _ m (ψ m) (hfl m) (hfl (m + 1)) (hψ m) b h j, hc⟩

theorem ls_seq {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : Res l K) (M : Model l K)
    (hM : M.Sm) (j : ℕ) :
    Nonempty (CrystallineSemistableComparison.Tw.LSeq l (Wc.HS l (B.schFn M.p) r.ρ j) (Wc.HS l (B.schFn M.p) r.ρ (j + 1))) := by
  obtain ⟨ψ, hψ, hq, hc⟩ := seq_flat r M hM
  have hf := _root_.GlobalTheory.CompanionTheory.FlatRes.flat_restriction r M hM
  have hfl : ∀ c, FlatL l c (Kt l (B.schFn M.p) r.ρ c) := fun c => _root_.GlobalTheory.CompanionTheory.FlatLevel.flatL_Kt l r.k _ (B.schFn M.p) r.ρ c
  have fwd : ∀ i n x, (tsys l (Kt l (B.schFn M.p) r.ρ) ψ hψ i).r n (resF l (B.schFn M.p) r.ρ (n + 1) i x) =
      resF l (B.schFn M.p) r.ρ n i ((Wc.HS l (B.schFn M.p) r.ρ i).r n x) := by
    intro i n x
    change (LinearEquiv.ofBijective _ (hψ n i)).symm ((prj l _ n).mapH i (resF l (B.schFn M.p) r.ρ (n + 1) i x)) = _
    rw [← hc n i x]
    exact (LinearEquiv.ofBijective _ (hψ n i)).symm_apply_apply _
  let E : ∀ i n, (Wc.HS l (B.schFn M.p) r.ρ i).M n ≃ₗ[WittVector l r.k] (Kt l (B.schFn M.p) r.ρ n).H i :=
    fun i n => LinearEquiv.ofBijective _ (hf n i)
  let e : ∀ i, Sys.Hom (tsys l (Kt l (B.schFn M.p) r.ρ) ψ hψ i) (Wc.HS l (B.schFn M.p) r.ρ i) (RingHom.id _) := fun i =>
    { f := fun n => (E i n).symm.toLinearMap
      comm := fun n y => by
        apply (E i n).injective
        change E i n ((Wc.HS l (B.schFn M.p) r.ρ i).r n ((E i (n + 1)).symm y)) = E i n ((E i n).symm _)
        rw [LinearEquiv.apply_symm_apply]
        have h1 := fwd i n ((E i (n + 1)).symm y)
        have h2 : resF l (B.schFn M.p) r.ρ (n + 1) i ((E i (n + 1)).symm y) = y := (E i (n + 1)).apply_symm_apply y
        exact h1.symm.trans (congrArg _ h2) }
  exact _root_.GlobalTheory.CompanionTheory.TowerSeq.lseq_transport _ l _ _ _ _ (e j) (e (j + 1)) (fun n => (E j n).symm.bijective) (fun n => (E (j + 1) n).symm.bijective)
    (_root_.GlobalTheory.CompanionTheory.TowFlat.nonempty_lSeq_tsys _ l _ ψ hψ hfl hq j).some

end CrystallineSemistableComparison.Pb.LsG

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.LsSeqEq =====
