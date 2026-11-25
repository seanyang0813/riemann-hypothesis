module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.Module.LinearMap.Defs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.ThetaSetupAlgebraMaps
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AbsProps
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PullRId
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PullTId

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.HomApply, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.GammaKey, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PrepairingEtaleValue

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.HomApply =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.HomApply", "h": "module\n\npublic import Mathlib.Algebra.Field.Defs\npublic import Mathlib.Algebra.Module.LinearMap.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison.Gam

variable {A B : Type*} [CommRing A] [Field B] (i : A →+* B) (t : A)
  {H N Q : Type*} [AddCommGroup H] [Module A H] [AddCommGroup N] [Module A N] [AddCommGroup Q]
  (β : H →ₗ[A] N) (κ : H →+ (Q →+ B))

def F (n : ℕ) (x : N → H) (y : N) (φ : Q) : B := (i t ^ n)⁻¹ * κ (x y) φ

variable {i t β κ}

theorem key (hlin : ∀ (c : A) (x : H) (φ : Q), κ (c • x) φ = i c * κ x φ) (ht : i t ≠ 0)
    (hinj : ∃ n₀ : ℕ, ∀ x, β x = 0 → t ^ n₀ • x = 0) {n : ℕ} {x : N → H} (hx : ∀ y, β (x y) = t ^ n • y)
    {c : A} {x' : H} {y : N} (h : β x' = c • y) (φ : Q) : κ x' φ = i c * F i t κ n x y φ := by
  obtain ⟨n₀, h₀⟩ := hinj
  have h1 : β (t ^ n • x' - c • x y) = 0 := by
    rw [map_sub, map_smul, map_smul, h, hx, smul_smul, smul_smul, mul_comm, sub_self]
  have h2 : κ (t ^ n₀ • (t ^ n • x' - c • x y)) φ = 0 := by rw [h₀ _ h1]; simp
  simp only [smul_sub, map_sub, AddMonoidHom.sub_apply, hlin, map_pow] at h2
  have hn0 : i t ^ n₀ ≠ 0 := pow_ne_zero _ ht
  have hn : i t ^ n ≠ 0 := pow_ne_zero _ ht
  have h3 : i t ^ n * κ x' φ = i c * κ (x y) φ := by
    apply mul_left_cancel₀ hn0; linear_combination h2
  unfold F
  field_simp
  linear_combination h3

def hom (hlin : ∀ (c : A) (x : H) (φ : Q), κ (c • x) φ = i c * κ x φ) (ht : i t ≠ 0)
    (hinj : ∃ n₀ : ℕ, ∀ x, β x = 0 → t ^ n₀ • x = 0) (n : ℕ) (x : N → H) (hx : ∀ y, β (x y) = t ^ n • y) :
    N →+ (Q →+ B) :=
  AddMonoidHom.mk' (fun y => AddMonoidHom.mk' (fun φ => F i t κ n x y φ) (by intro a b; simp [F, mul_add]))
    (by
      intro y y'
      ext φ
      have e := key hlin ht hinj hx (x' := x y + x y') (c := t ^ n) (y := y + y') (by simp [hx, smul_add]) φ
      have hn : i t ^ n ≠ 0 := pow_ne_zero _ ht
      simp only [AddMonoidHom.mk'_apply, AddMonoidHom.add_apply]
      rw [map_add (f := _), AddMonoidHom.add_apply, map_pow] at e
      unfold F at e ⊢
      field_simp
      field_simp at e
      linear_combination -e)

theorem hom_key (hlin : ∀ (c : A) (x : H) (φ : Q), κ (c • x) φ = i c * κ x φ) (ht : i t ≠ 0)
    (hinj : ∃ n₀ : ℕ, ∀ x, β x = 0 → t ^ n₀ • x = 0) (n : ℕ) (x : N → H) (hx : ∀ y, β (x y) = t ^ n • y)
    {c : A} {x' : H} {y : N} (h : β x' = c • y) (φ : Q) : κ x' φ = i c * hom hlin ht hinj n x hx y φ :=
  key hlin ht hinj hx h φ

end CrystallineSemistableComparison.Gam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.HomApply =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.GammaKey =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.GammaKey", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.ThetaSetupAlgebraMaps\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.HomApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false


noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct

namespace CrystallineSemistableComparison

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {R : Per l K} {G : Model l K → Prop}
  {D : Dat R}

def gN (β : BMap G D) {M : Model l K} (a : D.Ch M) (hM : G M) (j : ℕ) : ℕ := (β.surj a hM j).choose

def gX (β : BMap G D) {M : Model l K} (a : D.Ch M) (hM : G M) (j : ℕ) (y : (D.A a).N j) : (D.H a).N j :=
  ((β.surj a hM j).choose_spec y).choose

theorem gX_fil (β : BMap G D) {M : Model l K} (a : D.Ch M) (hM : G M) (j : ℕ) (y : (D.A a).N j) :
    D.fil a j (gN β a hM j) (gX β a hM j y) := ((β.surj a hM j).choose_spec y).choose_spec.1

theorem gX_spec (β : BMap G D) {M : Model l K} (a : D.Ch M) (hM : G M) (j : ℕ) (y : (D.A a).N j) :
    β.β a j (gX β a hM j y) = R.t ^ gN β a hM j • y := ((β.surj a hM j).choose_spec y).choose_spec.2


open Classical in
def gamma (hF : R.Facts) (β : BMap G D) (κ : PMap G D) {M : Model l K} (a : D.Ch M) (j : ℕ) :
    (D.A a).N j →+ (Module.Dual K (HdR M.q j) →+ R.B) :=
  if hM : G M then Gam.hom (κ.lin a hM j) hF.t_ne (β.inj a hM j) (gN β a hM j) (gX β a hM j) (gX_spec β a hM j) else 0

theorem t_pow_ne (hF : R.Facts) (n : ℕ) : R.i (R.t ^ n) ≠ 0 := by rw [map_pow]; exact pow_ne_zero _ hF.t_ne

variable (hF : R.Facts) (β : BMap G D) (κ : PMap G D)

theorem gamma_key {M : Model l K} {a : D.Ch M} (hM : G M) {j : ℕ} {c : R.A} {x : (D.H a).N j} {y : (D.A a).N j}
    (h : β.β a j x = c • y) (φ : Module.Dual K (HdR M.q j)) : κ.κ a j x φ = R.i c * gamma hF β κ a j y φ := by
  rw [gamma, dite_eq_left hM]
  exact Gam.hom_key _ _ _ _ _ _ h φ

theorem gamma_key' {M : Model l K} {a : D.Ch M} (hM : G M) {j : ℕ} (y : (D.A a).N j) (φ : Module.Dual K (HdR M.q j)) :
    κ.κ a j (gX β a hM j y) φ = R.i (R.t ^ gN β a hM j) * gamma hF β κ a j y φ :=
  gamma_key hF β κ hM (gX_spec β a hM j y) φ

theorem gamma_smul {M : Model l K} {a : D.Ch M} (hM : G M) {j : ℕ} (c : R.A) (y : (D.A a).N j)
    (φ : Module.Dual K (HdR M.q j)) : gamma hF β κ a j (c • y) φ = R.i c * gamma hF β κ a j y φ := by
  have h1 := gamma_key hF β κ hM (x := c • gX β a hM j y) (c := R.t ^ gN β a hM j) (y := c • y)
    (by rw [map_smul, gX_spec, smul_comm]) φ
  rw [κ.lin a hM, gamma_key' hF β κ hM] at h1
  apply mul_left_cancel₀ (t_pow_ne hF (gN β a hM j))
  linear_combination -h1

theorem gamma_lin' {M : Model l K} {a : D.Ch M} (hM : G M) {j : ℕ} (y : (D.A a).N j) (k : K)
    (φ : Module.Dual K (HdR M.q j)) : gamma hF β κ a j y (k • φ) = R.o k * gamma hF β κ a j y φ := by
  have h1 := gamma_key' hF β κ hM y (k • φ)
  rw [κ.lin' a hM, gamma_key' hF β κ hM] at h1
  apply mul_left_cancel₀ (t_pow_ne hF (gN β a hM j))
  linear_combination -h1

theorem gamma_act (hL : D.Laws G) {M : Model l K} {a : D.Ch M} (hM : G M) {j : ℕ} (σ : K.fixingSubgroup)
    (y : (D.A a).N j) (φ : Module.Dual K (HdR M.q j)) :
    gamma hF β κ a j ((D.A a).act j σ y) φ = R.σ σ (gamma hF β κ a j y φ) := by
  have h1 := gamma_key hF β κ hM (x := (D.H a).act j σ (gX β a hM j y)) (c := R.σA σ (R.t ^ gN β a hM j))
    (y := (D.A a).act j σ y) (by rw [β.act a hM, gX_spec, hL.act_smul]) φ
  rw [κ.act a hM, gamma_key' hF β κ hM, map_mul, hF.i_σ] at h1
  have ht : R.σ σ (R.i (R.t ^ gN β a hM j)) ≠ 0 := (map_ne_zero _).2 (t_pow_ne hF _)
  exact (mul_left_cancel₀ ht h1).symm

theorem gamma_nat {M N : Model l K} {u : M.X ⟶ N.X} {hu : u ≫ N.p = M.p} {a : D.Ch M} {b : D.Ch N}
    (m : D.Mo u hu a b) (hM : G M) (hN : G N) (j : ℕ) (y : (D.A b).N j) (φ : Module.Dual K (HdR M.q j)) :
    gamma hF β κ a j (D.pullA m j y) φ =
      gamma hF β κ b j y (φ ∘ₗ pullR j (Model.genMap u hu) (Model.genMap_q u hu)) := by
  have h1 := gamma_key hF β κ hM (x := D.pullH m j (gX β b hN j y)) (c := R.t ^ gN β b hN j) (y := D.pullA m j y)
    (by rw [β.nat m hM hN, gX_spec, map_smul]) φ
  rw [κ.nat m hM hN, gamma_key' hF β κ hN] at h1
  exact (mul_left_cancel₀ (t_pow_ne hF _) h1).symm

theorem gamma_fil {M : Model l K} {a : D.Ch M} (hM : G M) (j r : ℕ) (y : (D.A a).N j) (φ : Module.Dual K (HdR M.q j))
    (hφ : ∀ h ∈ FilR M.q j (r + 1), φ h = 0) : R.tB ^ r * gamma hF β κ a j y φ ∈ R.P := by
  obtain ⟨z, hz, e⟩ := κ.fil a hM j (gN β a hM j) r (gX β a hM j y) φ (gX_fil β a hM j y) hφ
  rw [gamma_key' hF β κ hM, map_pow] at e
  have ht : R.tB ^ gN β a hM j ≠ 0 := pow_ne_zero _ hF.t_ne
  have : R.tB ^ r * gamma hF β κ a j y φ = z := by
    apply mul_left_cancel₀ ht
    have e' : R.tB ^ r * (R.tB ^ gN β a hM j * gamma hF β κ a j y φ) = R.tB ^ gN β a hM j * z := e
    linear_combination e'
  rw [this]; exact hz

theorem gamma_cup (hL : D.Laws G) {M : Model l K} {a : D.Ch M} (hM : G M) {i j : ℕ} (y₁ : (D.A a).N i)
    (y₂ : (D.A a).N j) (y₃ : (D.A a).N (i + j)) (hc : (D.A a).cup y₁ y₂ y₃) {m m' : ℕ}
    (b : Module.Basis (Fin m) K (HdR M.q i)) (b' : Module.Basis (Fin m') K (HdR M.q j))
    (φ : Module.Dual K (HdR M.q (i + j))) :
    gamma hF β κ a (i + j) y₃ φ = ∑ s, ∑ s', gamma hF β κ a i y₁ (b.coord s) * gamma hF β κ a j y₂ (b'.coord s') *
      R.o (φ (κ.cupR M i j (b s) (b' s'))) := by
  obtain ⟨z, hz⟩ := hL.cup_ex a (gX β a hM i y₁) (gX β a hM j y₂)
  have hc' := β.cup a hM _ _ z hz
  rw [gX_spec, gX_spec] at hc'
  have e := hL.cup_uniq a _ _ _ _ hc' (hL.cup_smul a _ _ y₁ y₂ y₃ hc)
  have h1 := gamma_key hF β κ hM e φ
  rw [κ.cup a hM _ _ z hz b b' φ] at h1
  simp only [gamma_key' hF β κ hM] at h1
  have ht := mul_ne_zero (t_pow_ne hF (gN β a hM i)) (t_pow_ne hF (gN β a hM j))
  apply mul_left_cancel₀ ht
  rw [← map_mul, ← h1, Finset.mul_sum]
  refine Finset.sum_congr rfl fun s _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun s' _ => ?_
  rw [map_mul]
  ring

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.GammaKey =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PrepairingEtaleValue =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PrepairingEtaleValue", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AbsProps\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.GammaKey\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PullRId\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PullTId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false



noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct

namespace CrystallineSemistableComparison

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

def tmV (M : Model l K) (n : ℕ) (z : ℚ_[l]) (u : M.T n) : M.V n := (z ⊗ₜ[ℤ_[l]] u : ℚ_[l] ⊗[ℤ_[l]] M.T n)

theorem toV_eq (M : Model l K) (n : ℕ) (u : M.T n) : M.toV n u = tmV M n 1 u := rfl

theorem V_induction {M : Model l K} {n : ℕ} {p : M.V n → Prop} (v : M.V n) (h0 : p 0)
    (ht : ∀ z u, p (tmV M n z u)) (ha : ∀ x y, p x → p y → p (x + y)) : p v :=
  TensorProduct.induction_on (R := ℤ_[l]) (M := ℚ_[l]) (N := M.T n) (motive := p) v h0 ht ha

theorem act_tmV (M : Model l K) (n : ℕ) (σ : K.fixingSubgroup) (z : ℚ_[l]) (u : M.T n) :
    M.act n σ (tmV M n z u) = tmV M n z (M.actT n σ u) := rfl

theorem pullV_tmV {M N : Model l K} (u : M.X ⟶ N.X) (hu : u ≫ N.p = M.p) (n : ℕ) (z : ℚ_[l]) (w : N.T n) :
    Model.pullV u hu n (tmV N n z w) = tmV M n z (Model.pullT u hu n w) := rfl

theorem smul_tmV (M : Model l K) (n : ℕ) (c z : ℚ_[l]) (u : M.T n) : c • tmV M n z u = tmV M n (c * z) u :=
  TensorProduct.smul_tmul' c z _

variable {R : Per l K} {G : Model l K → Prop} {D : Dat R} (hF : R.Facts) (hL : D.Laws G) (E : EMap G D)
  (β : BMap G D) (κ : PMap G D)

theorem gammaE_nat {M N : Model l K} {u : M.X ⟶ N.X} {hu : u ≫ N.p = M.p} {a : D.Ch M} {b : D.Ch N}
    (m : D.Mo u hu a b) (hM : G M) (hN : G N) (n : ℕ) (w : N.T n) (φ : Module.Dual K (HdR M.q n)) :
    gamma hF β κ a n (E.e a n (Model.pullT u hu n w)) φ =
      gamma hF β κ b n (E.e b n w) (φ ∘ₗ pullR n (Model.genMap u hu) (Model.genMap_q u hu)) := by
  rw [E.nat m hM hN, gamma_nat hF β κ m hM hN]

theorem gammaE_id {M : Model l K} {a a' : D.Ch M} (m : D.Mo (𝟙 M.X) (Category.id_comp _) a' a) (hM : G M) (n : ℕ)
    (u : M.T n) (φ : Module.Dual K (HdR M.q n)) :
    gamma hF β κ a' n (E.e a' n u) φ = gamma hF β κ a n (E.e a n u) φ := by
  have := gammaE_nat hF E β κ m hM hM n u φ
  rw [pullT_id, LinearMap.id_apply, pullR_genMap_id, LinearMap.comp_id] at this
  exact this


include hL in
theorem gammaE_indep {M : Model l K} (hM : G M) (a a' : D.Ch M) (n : ℕ) (u : M.T n) (φ : Module.Dual K (HdR M.q n)) :
    gamma hF β κ a n (E.e a n u) φ = gamma hF β κ a' n (E.e a' n u) φ := by
  obtain ⟨b, ⟨m₁⟩, ⟨m₂⟩⟩ := hL.refine M M (𝟙 M.X) (Category.id_comp _) hM hM a a'
  rw [← gammaE_id hF E β κ m₁ hM, gammaE_id hF E β κ m₂ hM]

def cV {M : Model l K} (hM : G M) (a : D.Ch M) (n : ℕ) : M.V n →+ (Module.Dual K (HdR M.q n) →+ R.B) :=
  (TensorProduct.liftAddHom (R := ℤ_[l]) (M := ℚ_[l]) (N := M.T n)
    (AddMonoidHom.mk' (fun z => AddMonoidHom.mk' (fun u =>
      AddMonoidHom.mk' (fun φ => R.q z * gamma hF β κ a n (E.e a n u) φ) (by intros; simp [mul_add]))
        (by intros; ext; simp [mul_add])) (by intros; ext; simp [add_mul]))
    (by
      intro r z u
      ext φ
      simp only [AddMonoidHom.mk'_apply]
      rw [E.lin a hM n r u, gamma_smul hF β κ hM, hF.thetaSetup_structureMap_comp, Algebra.smul_def, map_mul]
      simp only [PadicInt.algebraMap_apply]
      ring) :
    ℚ_[l] ⊗[ℤ_[l]] M.T n →+ (Module.Dual K (HdR M.q n) →+ R.B))

theorem cV_tmV {M : Model l K} (hM : G M) (a : D.Ch M) (n : ℕ) (z : ℚ_[l]) (u : M.T n) (φ : Module.Dual K (HdR M.q n)) :
    cV hF E β κ hM a n (tmV M n z u) φ = R.q z * gamma hF β κ a n (E.e a n u) φ := by
  unfold cV tmV
  erw [TensorProduct.liftAddHom_tmul]
  rfl

def a0 (M : Model l K) (hM : G M) : D.Ch M := Classical.choice (hL.ch M hM)


open Classical in
def cP (M : Model l K) (n : ℕ) : M.V n →+ (Module.Dual K (HdR M.q n) →+ R.B) :=
  if hM : G M then cV hF E β κ hM (a0 hL M hM) n else 0

theorem cP_tmV {M : Model l K} (hM : G M) (n : ℕ) (z : ℚ_[l]) (u : M.T n) (φ : Module.Dual K (HdR M.q n)) :
    cP hF hL E β κ M n (tmV M n z u) φ = R.q z * gamma hF β κ (a0 hL M hM) n (E.e _ n u) φ := by
  rw [cP, dite_eq_left hM, cV_tmV]

theorem cP_toV {M : Model l K} (hM : G M) (a : D.Ch M) (n : ℕ) (u : M.T n) (φ : Module.Dual K (HdR M.q n)) :
    cP hF hL E β κ M n (M.toV n u) φ = gamma hF β κ a n (E.e a n u) φ := by
  rw [toV_eq, cP_tmV hF hL E β κ hM, map_one, one_mul, gammaE_indep hF hL E β κ hM]

theorem cP_not {M : Model l K} (hM : ¬ G M) (n : ℕ) (v : M.V n) (φ : Module.Dual K (HdR M.q n)) :
    cP hF hL E β κ M n v φ = 0 := by
  rw [cP, dite_eq_right hM]; rfl


include hL in
theorem isPow_beta (hE : EtSide G) {M : Model l K} (hM : G M) (a : D.Ch M) (x : (D.H a).N 2) (hx : D.c1H a x) :
    ∀ (k : ℕ) (z : (D.H a).N (2 * k)), IsPow (N := (D.H a).N) (D.H a).one (D.H a).cup x k z →
      ∃ v : M.T (2 * k), β.β a (2 * k) z = R.t ^ k • E.e a (2 * k) v := by
  intro k
  induction k with
  | zero =>
    intro z h
    obtain ⟨v₀, hv₀⟩ := E.one a hM
    exact ⟨v₀, by rw [pow_zero, one_smul]; exact hL.one_uniq a _ _ (β.one a hM z h) hv₀⟩
  | succ k ih =>
    intro z h
    obtain ⟨y, hy, hc⟩ := h
    obtain ⟨v, hv⟩ := ih y hy
    obtain ⟨v₁, hv₁⟩ := E.c1 a hM
    have e₁ := hL.first_chern_class_unique a _ _ (β.c1 a hM x hx) hv₁
    obtain ⟨w, hw⟩ := hE.cup_ex M v v₁
    have hA := hL.cup_smul a (R.t ^ k) R.t _ _ _ (E.cup a hM v v₁ w hw)
    have hB := β.cup a hM y x z hc
    rw [hv, e₁] at hB
    exact ⟨w, (hL.cup_uniq a _ _ _ _ hB hA).trans (by rw [pow_succ]; exact rfl)⟩

def preP (hE : EtSide G) : Pre G R where
  c := cP hF hL E β κ
  cupR := κ.cupR
  lin M n z v φ := by
    by_cases hM : G M
    · refine V_induction (p := fun v => cP hF hL E β κ M n (z • v) φ = R.q z * cP hF hL E β κ M n v φ) v ?_ ?_ ?_
      · simp only [smul_zero, map_zero, AddMonoidHom.zero_apply, mul_zero]
      · intro z' u
        rw [smul_tmV, cP_tmV hF hL E β κ hM, cP_tmV hF hL E β κ hM, map_mul, mul_assoc]
      · intro x y hx hy
        simp only [smul_add, map_add (f := _), AddMonoidHom.add_apply, hx, hy, mul_add]
    · rw [cP_not hF hL E β κ hM, cP_not hF hL E β κ hM, mul_zero]
  lin' M n k v φ := by
    by_cases hM : G M
    · refine V_induction (p := fun v => cP hF hL E β κ M n v (k • φ) = R.o k * cP hF hL E β κ M n v φ) v ?_ ?_ ?_
      · simp only [map_zero, AddMonoidHom.zero_apply, mul_zero]
      · intro z u
        rw [cP_tmV hF hL E β κ hM, cP_tmV hF hL E β κ hM, gamma_lin' hF β κ hM]
        ring
      · intro x y hx hy
        simp only [map_add (f := _), AddMonoidHom.add_apply, hx, hy, mul_add]
    · rw [cP_not hF hL E β κ hM, cP_not hF hL E β κ hM, mul_zero]
  fin := κ.fin
  top := κ.top
  cupR_fil := κ.cupR_fil
  equi M n hM σ v φ := by
    refine V_induction (p := fun v => cP hF hL E β κ M n (M.act n σ v) φ = R.σ σ (cP hF hL E β κ M n v φ)) v ?_ ?_ ?_
    · simp only [map_zero, AddMonoidHom.zero_apply]
    · intro z u
      rw [act_tmV, cP_tmV hF hL E β κ hM, cP_tmV hF hL E β κ hM, E.act _ hM, gamma_act hF β κ hL hM, map_mul, hF.σ_q]
    · intro x y hx hy
      simp only [map_add (f := _), AddMonoidHom.add_apply, hx, hy]
  fil M n hM r v φ hφ := by
    refine V_induction (p := fun v => R.tB ^ r * cP hF hL E β κ M n v φ ∈ R.P) v ?_ ?_ ?_
    · simp only [map_zero, AddMonoidHom.zero_apply, mul_zero]
      exact R.P.zero_mem
    · intro z u
      rw [cP_tmV hF hL E β κ hM, mul_left_comm]
      exact R.P.mul_mem (hF.q_mem z) (gamma_fil hF β κ hM n r _ φ hφ)
    · intro x y hx hy
      rw [map_add (f := _), AddMonoidHom.add_apply, mul_add]
      exact R.P.add_mem hx hy
  nat M N u hu n hM hN v φ := by
    refine V_induction (p := fun v => cP hF hL E β κ M n (Model.pullV u hu n v) φ =
      cP hF hL E β κ N n v (φ ∘ₗ pullR n (Model.genMap u hu) (Model.genMap_q u hu))) v ?_ ?_ ?_
    · simp only [map_zero, AddMonoidHom.zero_apply]
    · intro z w
      rw [pullV_tmV, cP_tmV hF hL E β κ hM, cP_tmV hF hL E β κ hN]
      congr 1
      obtain ⟨a', -, ⟨m⟩⟩ := hL.refine M N u hu hM hN (a0 hL M hM) (a0 hL N hN)
      rw [gammaE_indep hF hL E β κ hM (a0 hL M hM) a', gammaE_nat hF E β κ m hM hN]
    · intro x y hx hy
      simp only [map_add (f := _), AddMonoidHom.add_apply, hx, hy]
  cup M hM := by
    intro i j x y z hxyz m m' b b' φ
    simp only [cP_toV hF hL E β κ hM (a0 hL M hM)]
    exact gamma_cup hF β κ hL hM _ _ _ (E.cup _ hM x y z hxyz) b b' φ
  c1 M hM d hd := by
    obtain ⟨x, z, φ, hx, hz, hu⟩ := κ.c1 (a0 hL M hM) hM d hd
    obtain ⟨v, hv⟩ := isPow_beta hL E β hE hM _ x hx d z hz
    refine ⟨M.toV (2 * d) v, φ, ?_⟩
    rw [cP_toV hF hL E β κ hM (a0 hL M hM)]
    rw [gamma_key hF β κ hM hv, map_pow] at hu
    exact hu

theorem cP_span {M : Model l K} (hM : G M) (G' : Model l K → Prop) (S : Subring R.B) (ht : (R.tB)⁻¹ ∈ S)
    (hq : ∀ z, R.q z ∈ S) (hS : D.Span G' S) (hM' : G' M) (n : ℕ) :
    ∃ (r : ℕ) (w : Fin r → Module.Dual K (HdR M.q n) → R.B), (∀ i φ (σ : K.fixingSubgroup), R.σ σ (w i φ) = w i φ) ∧
      ∀ v, ∃ b : Fin r → R.B, (∀ i, b i ∈ S) ∧ ∀ φ, cP hF hL E β κ M n v φ = ∑ i, b i * w i φ := by
  obtain ⟨k, r, w', hw', hsp⟩ := hS M hM' (a0 hL M hM) n
  obtain ⟨n', hn'⟩ := β.surj' (a0 hL M hM) hM n
  let f : Module.Dual K (HdR M.q n) → ((D.H' (a0 hL M hM)).N n →+ R.B) := fun φ =>
    (AddMonoidHom.eval φ).comp ((gamma hF β κ (a0 hL M hM) n).comp (β.β' (a0 hL M hM) n).toAddMonoidHom)
  have hf : ∀ φ y, f φ y = gamma hF β κ (a0 hL M hM) n (β.β' (a0 hL M hM) n y) φ := fun _ _ => rfl
  have hFn : ∀ φ, GMod.Fn R (D.H' (a0 hL M hM)) n (f φ) := fun φ =>
    ⟨fun c y => by rw [hf, hf, map_smul, gamma_smul hF β κ hM],
     fun σ y => by rw [hf, hf, β.act' _ hM, gamma_act hF β κ hL hM]⟩
  have hc : ∀ (j : ℕ) (x : (D.H' (a0 hL M hM)).N n) (u : M.T n),
      β.β' (a0 hL M hM) n x = R.t ^ n' • E.e (a0 hL M hM) n u →
      β.β' (a0 hL M hM) n ((D.phi' (a0 hL M hM) n)^[j] x) = (((l : R.A) ^ j * R.t) ^ n') • E.e (a0 hL M hM) n u := by
    intro j x u h
    induction j with
    | zero => rw [Function.iterate_zero_apply, pow_zero, one_mul]; exact h
    | succ j ih =>
      rw [Function.iterate_succ_apply', β.phi' _ hM, ih, hL.phi_smul, E.phi _ hM]
      congr 1
      rw [map_pow, map_mul, map_pow, map_natCast, hF.frobenius_period]
      ring
  have hl : (l : R.B) ≠ 0 := by
    rw [← map_natCast R.q]
    exact (map_ne_zero _).2 (Nat.cast_ne_zero.2 (Fact.out : l.Prime).ne_zero)
  have hic : R.i (((l : R.A) ^ k * R.t) ^ n') = ((l : R.B) ^ k * R.tB) ^ n' := by
    simp only [map_pow, map_mul, map_natCast]; rfl
  have hi : R.i (((l : R.A) ^ k * R.t) ^ n') ≠ 0 := by
    rw [hic]; exact pow_ne_zero _ (mul_ne_zero (pow_ne_zero _ hl) hF.t_ne)
  have hiS : (R.i (((l : R.A) ^ k * R.t) ^ n'))⁻¹ ∈ S := by
    rw [hic, ← inv_pow, mul_inv, ← inv_pow]
    refine S.pow_mem (S.mul_mem (S.pow_mem ?_ _) ht) _
    rw [← map_natCast R.q, ← map_inv₀]
    exact hq _
  have hu : ∀ u : M.T n, ∃ b : Fin r → R.B, (∀ i, b i ∈ S) ∧
      ∀ φ, gamma hF β κ (a0 hL M hM) n (E.e (a0 hL M hM) n u) φ = ∑ i, b i * w' i (f φ) := by
    intro u
    obtain ⟨x, hx⟩ := hn' (E.e (a0 hL M hM) n u)
    obtain ⟨b, hbS, hb⟩ := hsp x
    refine ⟨fun i => (R.i (((l : R.A) ^ k * R.t) ^ n'))⁻¹ * b i, fun i => S.mul_mem hiS (hbS i), fun φ => ?_⟩
    have h1 := hb (f φ) (hFn φ)
    rw [hf, hc k x u hx, gamma_smul hF β κ hM] at h1
    simp only [mul_assoc]
    rw [← Finset.mul_sum, ← h1, ← mul_assoc, inv_mul_cancel₀ hi, one_mul]
  refine ⟨r, fun i φ => w' i (f φ), fun i φ σ => hw' (f φ) (hFn φ) i σ, fun v => ?_⟩
  refine V_induction (p := fun v => ∃ b : Fin r → R.B, (∀ i, b i ∈ S) ∧
    ∀ φ, cP hF hL E β κ M n v φ = ∑ i, b i * w' i (f φ)) v ?_ ?_ ?_
  · exact ⟨0, fun _ => S.zero_mem, fun φ => by simp⟩
  · intro z u
    obtain ⟨b, hbS, hb⟩ := hu u
    refine ⟨fun i => R.q z * b i, fun i => S.mul_mem (hq z) (hbS i), fun φ => ?_⟩
    rw [cP_tmV hF hL E β κ hM, hb, Finset.mul_sum]
    exact Finset.sum_congr rfl fun i _ => by ring
  · rintro x y ⟨b, hbS, hb⟩ ⟨b', hbS', hb'⟩
    refine ⟨b + b', fun i => S.add_mem (hbS i) (hbS' i), fun φ => ?_⟩
    rw [map_add (f := _), AddMonoidHom.add_apply, hb, hb', ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun i _ => by rw [Pi.add_apply, add_mul]

def PrepairingEtaleValue : Prop := ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) (R : Per l K)
  (G : Model l K → Prop) (D : Dat R) (hF : R.Facts), EtSide G → D.Laws G → ∀ (E : EMap G D) (β : BMap G D) (κ : PMap G D),
    ∃ P : Pre G R, (∀ (G' : Model l K → Prop) (S : Subring R.B), (R.tB)⁻¹ ∈ S → (∀ z, R.q z ∈ S) → D.Span G' S →
      ∀ M, G M → G' M → ∀ n, P.Span M n S) ∧
      ∀ M, G M → ∀ (a : D.Ch M) (n : ℕ) (v : M.T n) (φ : Module.Dual K (HdR M.q n)),
        P.c M n (M.toV n v) φ = gamma hF β κ a n (E.e a n v) φ

theorem pre' : PrepairingEtaleValue := by
  intro l _ K R G D hF hE hL E β κ
  exact ⟨preP hF hL E β κ hE, fun G' S ht hq hS M hM hM' n => cP_span hF hL E β κ hM G' S ht hq hS hM' n,
    fun M hM a n v φ => cP_toV hF hL E β κ hM a n v φ⟩

theorem pre : ComparisonPairing := by
  intro l _ K R G D hF hE hL E β κ
  exact (pre' l K R G D hF hE hL E β κ).imp fun _ h => h.1

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PrepairingEtaleValue =====
