module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.InstAddCommGroup
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.CxPairing
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatTransUpToSqPullback, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TotalComplexFlipIsomorphism, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.DcColSurj

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatTransUpToSqPullback =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatTransUpToSqPullback", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.InstAddCommGroup\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH
universe w w' w'' t t' v u v' u' v'' u''

namespace GlobalTheory.CompanionTheory.CoefUpTo

theorem coef_upTo : ∀ {R : Type} [CommRing R] {C : Type u} [Category.{v} C]
    {F F' : C ⥤ ModuleCat.{w} R} (α : F ⟶ F') (s : R), (∀ T, UpTo s (α.app T).hom) →
    ∀ n, UpTo (s ^ 2) ((Mor.ofNatTrans α).pull n) := by
  intro R _ C _ F F' α s h n
  have inj : ∀ k (f : Cn F k), (Mor.ofNatTrans α).pullC k f = 0 → s • f = 0 := fun k f hf =>
    funext fun c => (h _).1 (f c) (congrFun hf c)
  have surj : ∀ k (g : Cn F' k), ∃ f : Cn F k, (Mor.ofNatTrans α).pullC k f = s • g := fun k g => by
    choose f hf using fun c : ComposableArrows C k => (h (c.obj (Fin.last k))).2 (g c)
    exact ⟨f, funext hf⟩
  refine ⟨fun x hx => ?_, fun y => ?_⟩
  · obtain ⟨a, ha, rfl⟩ := (CrystallineSemistableComparison.P.cls_surj (cx F) n).1 x
    have hz : (cx F').d n ((Mor.ofNatTrans α).pullC n a) = 0 := by
      have ha' : d F n a = 0 := ha
      change d F' n _ = 0
      rw [Mor.d_pullC, ha', map_zero]
    have hx' : (cx F').cls ((Mor.ofNatTrans α).pullC n a) hz = 0 := hx
    rw [(CrystallineSemistableComparison.P.cls_surj (cx F') n).2.1] at hx'
    have hd : (cx F).d n ((s ^ 2) • a) = 0 := by rw [map_smul, ha, smul_zero]
    rw [← (CrystallineSemistableComparison.P.cls_surj (cx F) n).2.2.2.2 (s ^ 2) a ha hd, (CrystallineSemistableComparison.P.cls_surj (cx F) n).2.1]
    cases n with
    | zero =>
      have h0 : (Mor.ofNatTrans α).pullC 0 a = 0 := hx'
      have h1 : (s ^ 2) • a = 0 := by rw [pow_two, mul_smul, inj 0 a h0, smul_zero]
      rw [h1]
      exact Submodule.zero_mem _
    | succ n =>
      obtain ⟨g', hg'⟩ := hx'
      have hg'' : d F' n g' = (Mor.ofNatTrans α).pullC (n + 1) a := hg'
      obtain ⟨g, hg⟩ := surj n g'
      have h0 : (Mor.ofNatTrans α).pullC (n + 1) (s • a - d F n g) = 0 := by
        rw [map_sub, ← Mor.d_pullC, hg, map_smul, map_smul, hg'']
        simp
      have h1 := inj _ _ h0
      rw [smul_sub, sub_eq_zero] at h1
      refine ⟨s • g, ?_⟩
      change d F n (s • g) = (s ^ 2) • a
      rw [map_smul, ← h1, pow_two, mul_smul]
  · obtain ⟨b, hb, rfl⟩ := (CrystallineSemistableComparison.P.cls_surj (cx F') n).1 y
    have hb' : d F' n b = 0 := hb
    obtain ⟨f, hf⟩ := surj n b
    have h0 : (Mor.ofNatTrans α).pullC (n + 1) (d F n f) = 0 := by
      rw [← Mor.d_pullC, hf, map_smul, hb', smul_zero]
    have h1 : d F n (s • f) = 0 := by rw [map_smul]; exact inj _ _ h0
    have hd : (cx F').d n ((s ^ 2) • b) = 0 := by rw [map_smul, hb, smul_zero]
    have e : (Mor.ofNatTrans α).pullC n (s • f) = (s ^ 2) • b := by
      rw [map_smul, hf, pow_two, mul_smul]
    refine ⟨(cx F).cls (s • f) h1, ?_⟩
    rw [← (CrystallineSemistableComparison.P.cls_surj (cx F') n).2.2.2.2 (s ^ 2) b hb hd]
    change (cx F').cls ((Mor.ofNatTrans α).pullC n (s • f)) _ = _
    simp only [e]

end GlobalTheory.CompanionTheory.CoefUpTo
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatTransUpToSqPullback =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TotalComplexFlipIsomorphism =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TotalComplexFlipIsomorphism", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.CxPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH
universe w w' w'' t t' v u v' u' v'' u''

namespace GlobalTheory.CompanionTheory.DCFlip

variable {R : Type} [CommRing R]

def sw (K : DCx.{w} R) (x : ∀ p q, K.X p q) : ∀ q p, K.flip.X q p :=
  fun q p => (-1 : ℤ) ^ (p * q) • x p q

theorem sw_apply (K : DCx.{w} R) (x : ∀ p q, K.X p q) (q p : ℕ) :
    sw K x q p = (-1 : ℤ) ^ (p * q) • x p q := rfl

theorem neg_one_pow_eq_of_even {m n : ℕ} (h : Even (m + n)) : (-1 : ℤ) ^ m = (-1 : ℤ) ^ n := by
  have hm : (-1 : ℤ) ^ m * (-1 : ℤ) ^ n = 1 := by rw [← pow_add]; exact h.neg_one_pow
  have hn : (-1 : ℤ) ^ n * (-1 : ℤ) ^ n = 1 := by rw [← mul_pow]; simp
  exact mul_right_cancel₀ (pow_ne_zero n (by norm_num : (-1 : ℤ) ≠ 0)) (hm.trans hn.symm)

theorem sign_smul_sign_smul {M : Type w} [AddCommGroup M] (k : ℕ) (z : M) :
    (-1 : ℤ) ^ k • (-1 : ℤ) ^ k • z = z := by
  rw [smul_smul, ← mul_pow]; simp

theorem D_sw (K : DCx.{w} R) (x : ∀ p q, K.X p q) : K.flip.D (sw K x) = sw K (K.D x) := by
  funext a b
  rcases a with _ | a <;> rcases b with _ | b
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, sw_apply]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, sw_apply]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, sw_apply]
  · have e1 : (-1 : ℤ) ^ ((b + 1) * a) = (-1 : ℤ) ^ ((b + 1) * (a + 1) + (b + 1)) :=
      neg_one_pow_eq_of_even ⟨(b + 1) * a + (b + 1), by ring⟩
    have e2 : (-1 : ℤ) ^ (a + 1 + b * (a + 1)) = (-1 : ℤ) ^ ((b + 1) * (a + 1)) := by
      congr 1; ring
    simp only [DCx.D_apply, DCx.Dh, DCx.Dv, sw_apply, map_zsmul, smul_add, smul_smul, ← pow_add]
    rw [e1, e2]
    exact add_comm _ _

def swHom (K : DCx.{w} R) : Cx.Hom K.tot K.flip.tot (RingHom.id R) where
  f n :=
    { toFun := fun x => ⟨sw K x.1, fun q p h => by
        change (-1 : ℤ) ^ (p * q) • x.1 p q = 0
        rw [x.2 p q (by omega), smul_zero]⟩
      map_add' := fun x y => Subtype.ext (funext fun q => funext fun p =>
        smul_add ((-1 : ℤ) ^ (p * q)) (x.1 p q) (y.1 p q))
      map_smul' := fun c x => Subtype.ext (funext fun q => funext fun p =>
        smul_comm ((-1 : ℤ) ^ (p * q)) c (x.1 p q)) }
  comm n x := Subtype.ext (D_sw K x.1)

theorem flip_tot : ∀ {R : Type} [CommRing R] (K : DCx.{w} R), ∃ φ : Cx.Hom K.tot K.flip.tot (RingHom.id R), (∀ n, Function.Bijective (φ.f n)) ∧ ∀ n (x : K.tot.X n) p q, (φ.f n x).1 q p = (-1 : ℤ) ^ (p * q) • x.1 p q := by
  intro R _ K
  refine ⟨swHom K, fun n => ⟨fun x y h => ?_, fun y => ?_⟩, fun n x p q => rfl⟩
  · refine Subtype.ext (funext fun p => funext fun q => ?_)
    have h' : (-1 : ℤ) ^ (p * q) • x.1 p q = (-1 : ℤ) ^ (p * q) • y.1 p q :=
      congrFun (congrFun (congrArg Subtype.val h) q) p
    have h'' := congrArg (fun z => (-1 : ℤ) ^ (p * q) • z) h'
    simpa only [sign_smul_sign_smul] using h''
  · refine ⟨⟨fun p q => (-1 : ℤ) ^ (p * q) • y.1 q p, fun p q h => ?_⟩, ?_⟩
    · change (-1 : ℤ) ^ (p * q) • y.1 q p = 0
      rw [y.2 q p (by omega), smul_zero]
    · refine Subtype.ext (funext fun q => funext fun p => ?_)
      exact sign_smul_sign_smul (p * q) (y.1 q p)

end GlobalTheory.CompanionTheory.DCFlip
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TotalComplexFlipIsomorphism =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.DcColSurj =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.DcColSurj", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.CxPairing\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.InstAddCommGroup\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatTransUpToSqPullback\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TotalComplexFlipIsomorphism\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH
universe w w' w'' t t' v u v' u' v'' u''

namespace CrystallineSemistableComparison.Auxfb
variable {R : Type} [CommRing R]

theorem zsm_cancel {M : Type*} [AddCommGroup M] (n : ℕ) (a : M) (h : (-1 : ℤ) ^ n • a = 0) : a = 0 := by
  have := congrArg (fun b => (-1 : ℤ) ^ n • b) h
  simpa [smul_smul, ← mul_pow] using this

theorem Dmem' (K : DCx.{w} R) (N : ℕ) (y : ∀ p q, K.X p q) (hy : ∀ p q, p + q + 1 ≠ N → y p q = 0) :
    K.D y ∈ K.T N := by
  intro p q h
  rcases p with _ | p <;> rcases q with _ | q
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, hy 0 q (by omega)]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, hy p 0 (by omega)]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, hy p (q + 1) (by omega), hy (p + 1) q (by omega)]

end CrystallineSemistableComparison.Auxfb

namespace CrystallineSemistableComparison.Auxfb
variable {R : Type} [CommRing R]

theorem stair (K : DCx.{w} R) (s : R) (N : ℕ)
    (hex : ∀ p q, p + q + 1 = N → ExactUpTo s (K.dv p q) (K.dv p (q + 1)))
    (x : ∀ p q, K.X p q) (hx : x ∈ K.T N) (hD : ∀ p q, K.D x p (q + 1) = 0) :
    ∀ k, k ≤ N → ∃ y : ∀ p q, K.X p q, (∀ p q, p + q + 1 ≠ N → y p q = 0) ∧
      ∀ p q, N - k < q → (s ^ k • x - K.D y) p q = 0 := by
  intro k
  induction k with
  | zero =>
    intro _
    refine ⟨0, fun _ _ _ => rfl, fun p q hq => ?_⟩
    simp only [pow_zero, one_smul, map_zero, sub_zero]
    exact hx p q (by omega)
  | succ k ih =>
    intro hk
    obtain ⟨y, hy, hs⟩ := ih (by omega)
    set x' := s ^ k • x - K.D y with hx'
    have hx'T : x' ∈ K.T N := Submodule.sub_mem _ (Submodule.smul_mem _ _ hx) (Dmem' K N y hy)
    have hDx' : ∀ p q, K.D x' p (q + 1) = 0 := by
      intro p q
      rw [hx', map_sub, K.DD, sub_zero, map_smul]
      simp [hD p q]
    obtain ⟨r, hr⟩ : ∃ r, N = k + r + 1 := ⟨N - k - 1, by omega⟩
    have hv : K.dv k (r + 1) (x' k (r + 1)) = 0 := by
      have h1 := hDx' k (r + 1)
      rw [DCx.D_apply] at h1
      have h2 : K.Dh x' k (r + 1 + 1) = 0 := by
        rcases k with _ | a
        · rfl
        · show K.dh a (r + 1 + 1) (x' a (r + 1 + 1)) = 0
          rw [hs a (r + 1 + 1) (by omega), map_zero]
      rw [h2, zero_add] at h1
      exact zsm_cancel k _ h1
    obtain ⟨w, hw⟩ := hex k r (by omega) _ hv
    refine ⟨s • y + (-1 : ℤ) ^ k • K.sgl k r w, fun p q hpq => ?_, fun p q hq => ?_⟩
    · show s • y p q + (-1 : ℤ) ^ k • K.sgl k r w p q = 0
      rw [hy p q hpq, K.sgl_ne w (by omega)]
      simp
    · have hsq : ((-1 : ℤ) ^ k * (-1) ^ k) = 1 := by rw [← mul_pow]; simp
      have e : s ^ (k + 1) • x - K.D (s • y + (-1 : ℤ) ^ k • K.sgl k r w) =
          s • x' - (-1 : ℤ) ^ k • K.sgl (k + 1) r (K.dh k r w) - K.sgl k (r + 1) (s • x' k (r + 1)) := by
        rw [map_add (f := _), map_smul, map_zsmul, K.D_sgl, hw, hx', smul_add, smul_smul ((-1 : ℤ) ^ k), hsq, one_smul,
          pow_succ', mul_smul, smul_sub]
        abel
      rw [e]
      simp only [Pi.sub_apply, Pi.smul_apply]
      rw [K.sgl_ne (K.dh k r w) (Or.inr (by omega) : p ≠ k + 1 ∨ q ≠ r), smul_zero, sub_zero]
      by_cases hq1 : q = r + 1
      · subst hq1
        by_cases hp : p = k
        · subst hp; rw [K.sgl_self, sub_self]
        · rw [hx'T p (r + 1) (by omega), K.sgl_ne _ (Or.inl hp)]; simp
      · rw [show x' p q = 0 from hs p q (by omega), K.sgl_ne _ (Or.inr hq1)]; simp

theorem stair_top (K : DCx.{w} R) (s : R) (N : ℕ)
    (hex : ∀ p q, p + q + 1 = N → ExactUpTo s (K.dv p q) (K.dv p (q + 1)))
    (x : ∀ p q, K.X p q) (hx : x ∈ K.T N) (hD : ∀ p q, K.D x p (q + 1) = 0) :
    ∃ y : ∀ p q, K.X p q, (∀ p q, p + q + 1 ≠ N → y p q = 0) ∧
      s ^ N • x - K.D y = K.sgl N 0 ((s ^ N • x - K.D y) N 0) := by
  obtain ⟨y, hy, hs⟩ := stair K s N hex x hx hD N le_rfl
  refine ⟨y, hy, ?_⟩
  have hT : s ^ N • x - K.D y ∈ K.T N := Submodule.sub_mem _ (Submodule.smul_mem _ _ hx) (Dmem' K N y hy)
  funext p q
  by_cases h : p = N ∧ q = 0
  · obtain ⟨rfl, rfl⟩ := h; rw [K.sgl_self]
  · rw [K.sgl_ne _ (by omega)]
    rcases q with _ | q
    · exact hT p 0 (by omega)
    · exact hs p (q + 1) (by omega)

end CrystallineSemistableComparison.Auxfb

namespace CrystallineSemistableComparison.Auxfb
theorem hom_ext {R R' : Type} [CommRing R] [CommRing R'] {σ : R →+* R'} {K : Cx.{w} R} {L : Cx.{w'} R'}
    (φ ψ : Cx.Hom K L σ) (h : φ.f = ψ.f) : φ = ψ := by
  cases φ; cases ψ; cases h; rfl
end CrystallineSemistableComparison.Auxfb

theorem CrystallineSemistableComparison.P.dc_col_surj : ∀ {R : Type} [CommRing R] {A : Cx.{w'} R} {K : DCx.{w} R} (e : DCx.AugCol A K) (s : R) (n : ℕ), (∀ p q, p + q + 1 = n → ExactUpTo s (K.dv p q) (K.dv p (q + 1))) → ExactUpTo s (e.η n) (K.dv n 0) → InjUpTo s (e.η (n + 1)) → SurjUpTo (s ^ (n + 2)) (e.edge.mapH n) := by
  intro R _ A K e s n hcol hη hinj c
  obtain ⟨x, hx, rfl⟩ := (P.cls_surj K.tot n).1 c
  have hD : K.D x.1 = 0 := congrArg Subtype.val hx
  obtain ⟨y, hy, hxy⟩ := Auxfb.stair_top K s n hcol x.1 x.2 (fun p q => by rw [hD]; rfl)
  set z := (s ^ n • x.1 - K.D y) n 0 with hz
  have hDz : K.D (K.sgl n 0 z) = 0 := by rw [← hxy, map_sub, K.DD, sub_zero, map_smul, hD, smul_zero]
  rw [K.D_sgl] at hDz
  have hv : K.dv n 0 z = 0 := by
    have h := congrFun (congrFun hDz n) 1
    rw [Pi.add_apply, Pi.add_apply, Pi.smul_apply, Pi.smul_apply,
      K.sgl_ne (K.dh n 0 z) (Or.inl (by omega) : n ≠ n + 1 ∨ 1 ≠ 0), K.sgl_self, zero_add] at h
    exact Auxfb.zsm_cancel n _ h
  have hh : K.dh n 0 z = 0 := by
    have h := congrFun (congrFun hDz (n + 1)) 0
    rw [Pi.add_apply, Pi.add_apply, Pi.smul_apply, Pi.smul_apply, K.sgl_self,
      K.sgl_ne (K.dv n 0 z) (Or.inl (by omega) : n + 1 ≠ n ∨ 0 ≠ 0 + 1), smul_zero, add_zero] at h
    exact h
  obtain ⟨a, ha⟩ := hη z hv
  have hda : s • A.d n a = 0 := hinj _ (by rw [← e.comm, ha, map_smul, hh, smul_zero])
  have hb : A.d n (s • a) = 0 := by rw [map_smul, hda]
  have hb' : K.tot.d n (e.edge.f n (s • a)) = 0 := by rw [e.edge.comm, hb, map_zero]
  refine ⟨A.cls (s • a) hb, ?_⟩
  rw [P.mapH_cls _ n _ hb hb', ← (P.cls_surj K.tot n).2.2.2.2 (s ^ (n + 2)) x hx (by rw [map_smul, hx, smul_zero]),
    (P.cls_surj K.tot n).2.2.1]
  have key : (e.edge.f n (s • a)).1 - s ^ (n + 2) • x.1 = K.D (-(s ^ 2 • y)) := by
    rw [show (e.edge.f n (s • a)).1 = K.sgl n 0 (e.η n (s • a)) from rfl, map_smul, ha, smul_smul, map_smul,
      ← hxy, map_neg, map_smul]
    module
  cases n with
  | zero =>
    have hy0 : y = 0 := funext fun p => funext fun q => hy p q (by omega)
    show _ ∈ (⊥ : Submodule R _)
    rw [Submodule.mem_bot]
    exact Subtype.ext (key.trans (by rw [hy0]; simp))
  | succ m =>
    have hyT : -(s ^ 2 • y) ∈ K.T m :=
      Submodule.neg_mem _ (Submodule.smul_mem _ _ fun p q h => hy p q (by omega))
    exact ⟨⟨_, hyT⟩, Subtype.ext key.symm⟩

theorem CrystallineSemistableComparison.P.dc_col_inj : ∀ {R : Type} [CommRing R] {A : Cx.{w'} R} {K : DCx.{w} R} (e : DCx.AugCol A K) (s : R) (n : ℕ), (∀ p q, p + q + 2 = n → ExactUpTo s (K.dv p q) (K.dv p (q + 1))) → (∀ m, m + 1 = n → ExactUpTo s (e.η m) (K.dv m 0)) → InjUpTo s (e.η n) → InjUpTo (s ^ (n + 2)) (e.edge.mapH n) := by
  intro R _ A K e s n hcol hη hinj c hc
  obtain ⟨a, ha, rfl⟩ := (P.cls_surj A n).1 c
  have hb' : K.tot.d n (e.edge.f n a) = 0 := by rw [e.edge.comm, ha, map_zero]
  rw [P.mapH_cls _ n a ha hb', (P.cls_surj K.tot n).2.1] at hc
  rw [← (P.cls_surj A n).2.2.2.2 _ a ha (by rw [map_smul, ha, smul_zero]), (P.cls_surj A n).2.1]
  cases n with
  | zero =>
    have h0 : e.edge.f 0 a = 0 := (Submodule.mem_bot R).1 hc
    have h00 : K.sgl 0 0 (e.η 0 a) 0 0 = 0 := congrFun (congrFun (congrArg Subtype.val h0) 0) 0
    rw [K.sgl_self] at h00
    have hs := hinj a h00
    show _ ∈ (⊥ : Submodule R _)
    rw [Submodule.mem_bot, pow_succ, mul_smul, hs, smul_zero]
  | succ m =>
    obtain ⟨Y, hY⟩ := hc
    have hDY : K.D Y.1 = K.sgl (m + 1) 0 (e.η (m + 1) a) := congrArg Subtype.val hY
    obtain ⟨y, hy, hyy⟩ := Auxfb.stair_top K s m (fun p q h => hcol p q (by omega)) Y.1 Y.2
      (fun p q => by rw [hDY]; exact K.sgl_ne _ (Or.inr (by omega)))
    set w := (s ^ m • Y.1 - K.D y) m 0 with hw
    have hDw : K.D (K.sgl m 0 w) = s ^ m • K.sgl (m + 1) 0 (e.η (m + 1) a) := by
      rw [← hyy, map_sub, K.DD, sub_zero, map_smul, hDY]
    rw [K.D_sgl] at hDw
    have hv : K.dv m 0 w = 0 := by
      have h := congrFun (congrFun hDw m) 1
      simp only [Pi.add_apply, Pi.smul_apply] at h
      rw [K.sgl_ne (K.dh m 0 w) (Or.inl (by omega) : m ≠ m + 1 ∨ 1 ≠ 0), K.sgl_self, zero_add,
        K.sgl_ne (e.η (m + 1) a) (Or.inl (by omega) : m ≠ m + 1 ∨ 1 ≠ 0), smul_zero] at h
      exact Auxfb.zsm_cancel m _ h
    have hh : K.dh m 0 w = s ^ m • e.η (m + 1) a := by
      have h := congrFun (congrFun hDw (m + 1)) 0
      simp only [Pi.add_apply, Pi.smul_apply] at h
      rw [K.sgl_self, K.sgl_self, K.sgl_ne (K.dv m 0 w) (Or.inl (by omega) : m + 1 ≠ m ∨ 0 ≠ 0 + 1),
        smul_zero, add_zero] at h
      exact h
    obtain ⟨b, hb⟩ := hη m rfl w hv
    have h1 : e.η (m + 1) (A.d m b - s ^ (m + 1) • a) = 0 := by
      rw [map_sub, ← e.comm, hb, map_smul, hh, map_smul, smul_smul, ← pow_succ', sub_self]
    have h2 := hinj _ h1
    rw [smul_sub, sub_eq_zero] at h2
    refine ⟨s ^ 2 • b, ?_⟩
    rw [map_smul, pow_two, mul_smul, h2, smul_smul, smul_smul]
    congr 1; ring

theorem CrystallineSemistableComparison.P.dc_flip : ∀ {R : Type} [CommRing R] (K : DCx.{w} R), ∃ φ : Cx.Hom K.tot K.flip.tot (RingHom.id R), (∀ n, Function.Bijective (φ.f n)) ∧ ∀ n (x : K.tot.X n) p q, (φ.f n x).1 q p = (-1 : ℤ) ^ (p * q) • x.1 p q := _root_.GlobalTheory.CompanionTheory.DCFlip.flip_tot

theorem CrystallineSemistableComparison.P.dc_col : ∀ {R : Type} [CommRing R] {A : Cx.{w'} R} {K : DCx.{w} R} (e : DCx.AugCol A K) (s : R), (∀ p, (K.col p).ResUpTo s (e.η p)) → ∀ n, UpTo (s ^ (n + 2)) (e.edge.mapH n) := by
  intro R _ A K e s hres n
  exact ⟨P.dc_col_inj e s n (fun p q _ => (hres p).2.2.2 q) (fun m _ => (hres m).2.2.1) (hres n).2.1,
    P.dc_col_surj e s n (fun p q _ => (hres p).2.2.2 q) (hres n).2.2.1 (hres (n + 1)).2.1⟩

theorem CrystallineSemistableComparison.P.dc_row : ∀ {R : Type} [CommRing R] {A : Cx.{w'} R} {K : DCx.{w} R} (e : DCx.AugRow A K) (s : R), (∀ q, (K.row q).ResUpTo s (e.ε q)) → ∀ n, UpTo (s ^ (n + 2)) (e.edge.mapH n) := by
  intro R _ A K e s hres n
  let e' : DCx.AugCol A K.flip := ⟨e.ε, e.hε, e.comm⟩
  have hc := P.dc_col e' s (fun p => hres p) n
  obtain ⟨φ, hbij, hφ⟩ := _root_.GlobalTheory.CompanionTheory.DCFlip.flip_tot K
  have heq : (e.edge.comp φ : Cx.Hom A K.flip.tot (RingHom.id R)) = e'.edge := by
    apply Auxfb.hom_ext
    funext m
    refine LinearMap.ext fun a => Subtype.ext (funext fun q => funext fun p => ?_)
    show (φ.f m (e.edge.f m a)).1 q p = K.flip.sgl m 0 (e.ε m a) q p
    rw [hφ]
    show (-1 : ℤ) ^ (p * q) • K.sgl 0 m (e.ε m a) p q = K.flip.sgl m 0 (e.ε m a) q p
    by_cases hp : p = 0
    · subst hp
      by_cases hq : q = m
      · subst hq; rw [K.sgl_self, K.flip.sgl_self]; simp
      · rw [K.sgl_ne _ (Or.inr hq), K.flip.sgl_ne _ (Or.inl hq)]; simp
    · rw [K.sgl_ne _ (Or.inl hp), K.flip.sgl_ne _ (Or.inr hp)]; simp
  have hg : UpTo (1 : R) (φ.mapH n) := ((P.upTo_alg (φ.mapH n) LinearMap.id 1 1).2.2.2.2).2 (P.mapH_bij φ hbij n)
  have hcomp : (φ.mapH n) ∘ₗ (e.edge.mapH n) = e'.edge.mapH n := by
    refine LinearMap.ext fun x => ?_
    rw [← heq, P.mapH_comp]; rfl
  have := (P.upTo_alg (e.edge.mapH n) (φ.mapH n) 1 (s ^ (n + 2))).2.2.1 hg (hcomp ▸ hc)
  rwa [one_mul] at this

theorem CrystallineSemistableComparison.P.coef_upTo : ∀ {R : Type} [CommRing R] {C : Type u} [Category.{v} C] {F F' : C ⥤ ModuleCat.{w} R} (α : F ⟶ F') (s : R), (∀ T, UpTo s (α.app T).hom) → ∀ n, UpTo (s ^ 2) ((Mor.ofNatTrans α).pull n) := _root_.GlobalTheory.CompanionTheory.CoefUpTo.coef_upTo
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.DcColSurj =====
