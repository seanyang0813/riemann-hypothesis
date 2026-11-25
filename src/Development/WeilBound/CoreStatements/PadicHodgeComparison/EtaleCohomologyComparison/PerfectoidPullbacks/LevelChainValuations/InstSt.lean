module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ChainOf
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.unitB
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BcOnFalse
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.CoefficientReductionFirstChernClassTateTwist
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.IsProperOfProj
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.CgLift
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BasisB
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.QbLePf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.CgBasis, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.LevelSystemGood, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.InstSt

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.QbLePf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.QbLePf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ChainOf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.unitB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section



open CategoryTheory AlgebraicGeometry Limits GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb.Kap

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {R : Per l K} {m : ℕ}

theorem qb_le_pf {L : Lev R m} (hL : L.Good) (M : Model l K) (s : ℕ) :
    ∀ T, QB L M s T → QA L M s (((nmB M hL).mor 0).obj T) := by
  intro T hT
  obtain ⟨⟨h1, h2⟩, V, hV, hU⟩ := hT
  have hu : IsUnit ((l : ℕ) : T.B) := by
    have := (unit_B_pf (R := R) hL).map T.i
    simpa using this
  obtain ⟨u, hu'⟩ := hu
  refine ⟨⟨h1, fun r (x : T.B) hx => ?_⟩, ⊤, Set.mem_singleton _, ?_⟩
  · change ((l : ℕ) : T.B) * x ∈ T.pdPow r at hx
    change x ∈ T.pdPow r
    have e : x = ((u⁻¹ : T.Bˣ) : T.B) * ((l : T.B) * x) := by
      rw [← hu', ← mul_assoc, Units.inv_mul, one_mul]
    rw [e]
    exact Ideal.mul_mem_left _ _ hx
  · intro x _
    exact Set.mem_univ _

end CrystallineSemistableComparison.Pb.Kap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.QbLePf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.CgBasis =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.CgBasis", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ChainOf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BcOnFalse\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section



open CategoryTheory AlgebraicGeometry Limits GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb.Kap.DividedPowerIdealFacts

variable {A B : Type} [CommRing A] [CommRing B] {I : Ideal A} {J : Ideal B}

theorem dividedPowerFiltration_le_map (γ : DividedPowers I) (δ : DividedPowers J) (f : A →+* B) (hf : IsDPMorphism γ δ f)
    (hJ : J = I.map f) (r : ℕ) : pdP δ r ≤ (pdP γ r).map f := by

  have key : ∀ x ∈ J, ∀ n, δ.dpow n x ∈ (pdP γ n).map f := by
    intro x hx
    have hx' : x ∈ I.map f := hJ ▸ hx
    induction hx' using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨a, ha, rfl⟩ := hy
      intro n
      rw [hf.dpow_comp (n := n) a ha]
      exact Ideal.mem_map_of_mem _ (_root_.GlobalTheory.CompanionTheory.DPFil.dpow_mem_pdP γ n ha)
    | zero =>
      intro n
      rcases Nat.eq_zero_or_pos n with rfl | hn
      · rw [δ.dpow_zero J.zero_mem, _root_.GlobalTheory.CompanionTheory.GrTens.dividedPowerFiltration_zero_eq, Ideal.map_top]; exact Submodule.mem_top
      · rw [δ.dpow_eval_zero hn.ne']; exact Ideal.zero_mem _
    | add y z hy hz ihy ihz =>
      intro n
      have hyJ : y ∈ J := hJ ▸ hy
      have hzJ : z ∈ J := hJ ▸ hz
      rw [δ.dpow_add hyJ hzJ]
      refine Ideal.sum_mem _ fun k hk => ?_
      have hk' : k.1 + k.2 = n := Finset.HasAntidiagonal.mem_antidiagonal.1 hk
      have := Ideal.mul_mem_mul (ihy hyJ k.1) (ihz hzJ k.2)
      rw [← Ideal.map_mul] at this
      rw [← hk']
      exact Ideal.map_mono (_root_.GlobalTheory.CompanionTheory.DPFil.dividedPowerFiltration_mul_le γ k.1 k.2) this
    | smul c y hy ihy =>
      intro n
      have hyJ : y ∈ J := hJ ▸ hy
      rw [smul_eq_mul, δ.dpow_mul hyJ]
      exact Ideal.mul_mem_left _ _ (ihy hyJ n)
  refine Ideal.span_le.2 ?_
  rintro _ ⟨L, hL, hr, rfl⟩
  refine Ideal.map_mono (_root_.GlobalTheory.CompanionTheory.BasisBase.dividedPowerFiltration_anti' γ hr) ?_
  clear hr
  induction L with
  | nil => simp [_root_.GlobalTheory.CompanionTheory.GrTens.dividedPowerFiltration_zero_eq, Ideal.map_top]
  | cons q L ih =>
    simp only [List.map_cons, List.prod_cons, List.sum_cons]
    have h1 := key q.2 (hL q (by simp)) q.1
    have h2 := ih (fun q' hq' => hL q' (by simp [hq']))
    have := Ideal.mul_mem_mul h1 h2
    rw [← Ideal.map_mul] at this
    exact Ideal.map_mono (_root_.GlobalTheory.CompanionTheory.DPFil.dividedPowerFiltration_mul_le γ _ _) this

end CrystallineSemistableComparison.Pb.Kap.DividedPowerIdealFacts

namespace CrystallineSemistableComparison.Pb.Kap

namespace CgEmpty

variable {O' : Type} [CommRing O'] {R' : Type} [CommRing R'] {I' : Ideal R'}

theorem thick_sub {γ : DividedPowers I'} {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O')} {κ : O' →+* R' ⧸ I'}
    (hX : IsEmpty X) (T : Thick (nlFun γ 0 X q κ)) : Subsingleton T.B := by
  have h1 : Subsingleton (T.B ⧸ T.J) := by
    by_contra hn
    rw [not_subsingleton_iff_nontrivial] at hn
    obtain ⟨M, hM⟩ := Ideal.exists_maximal (T.B ⧸ T.J)
    exact hX.elim ((pt T).base ⟨M, hM.isPrime⟩)
  have hJ : T.J = ⊤ := Ideal.Quotient.subsingleton_iff.1 h1
  obtain ⟨n, hn⟩ := T.adm.2 rfl
  rw [hJ, Ideal.top_pow] at hn
  have h2 : (1 : T.B) ∈ (⊤ : Ideal T.B) := Submodule.mem_top
  rw [hn] at h2
  exact subsingleton_of_zero_eq_one ((Submodule.mem_bot _).1 h2).symm

theorem HO_sub {γ : DividedPowers I'} {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O')} {κ : O' →+* R' ⧸ I'}
    (hX : IsEmpty X) (Q : ObjectProperty (Thick (nlFun γ 0 X q κ))) (j : ℕ) : Subsingleton (HO Q j) := by
  have hc : Subsingleton (CH.Cn (CH.modF (sP Q).A) j) :=
    ⟨fun f g => funext fun s => @Subsingleton.elim _ (thick_sub hX (s.obj (Fin.last j)).obj) (f s) (g s)⟩
  refine ⟨fun x y => ?_⟩
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ y
  congr 1
  exact Subtype.ext (hc.elim _ _)

theorem HdR_sub {K' : Type} [CommRing K'] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K')) (hX : IsEmpty X) (j : ℕ) :
    Subsingleton (HdR q j) := by
  have hc : Subsingleton (GlobalTheory.CatH.Cn (O (smFun X q)) j) :=
    ⟨fun f g => funext fun s => @Subsingleton.elim _ (thick_sub hX (s.obj (Fin.last j))) (f s) (g s)⟩
  refine ⟨fun x y => ?_⟩
  unfold HdR at x y
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ y
  congr 1
  exact Subtype.ext (hc.elim _ _)

end CgEmpty

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {R : Per l K} {m : ℕ}

theorem cg_basis_pdP {L : Lev R m} (hL : L.Good) : pdP L.γB m = ⊥ := by
  have h := DividedPowerIdealFacts.dividedPowerFiltration_le_map L.γ L.γB L.ι hL.ι_dp hL.IB_eq m
  rw [(hL.lat m le_rfl).tf.nil, Ideal.map_bot] at h
  exact le_bot_iff.1 h

theorem cg_basis_empty {L : Lev R m} (hL : L.Good) (M : Model l K) (hM : M.Sm) (s : ℕ) (U : Cov M.q)
    (hU0 : IsEmpty U.ι) (j : ℕ) {a : ℕ} (bs : Module.Basis (Fin a) K (HdR M.q j)) (w : HO (QB L M s) j) :
    ∃! g : Fin a → L.B, w = ∑ t, g t • muB L.γB M.q 1 s {⊤} j (bs t) := by
  have hX : IsEmpty M.gen := by
    have h := U.cover
    rw [iSup_of_empty] at h
    refine ⟨fun x => ?_⟩
    have hx : x ∈ (⊤ : M.gen.Opens) := trivial
    rw [← h] at hx
    simp at hx
  haveI := CgEmpty.HO_sub hX (QB L M s) j
  haveI := CgEmpty.HdR_sub M.q hX j
  have ha : a = 0 := by
    by_contra h
    exact bs.ne_zero ⟨0, Nat.pos_of_ne_zero h⟩ (Subsingleton.elim _ _)
  subst ha
  exact ⟨Fin.elim0, Subsingleton.elim _ _, fun g _ => funext fun t => t.elim0⟩

theorem cg_basis_pf {L : Lev R m} (hL : L.Good) (M : Model l K) (hM : M.Sm) (s : ℕ) (U : Cov M.q) (hU : ∀ α, U.d α + m ≤ s)
    (j : ℕ) {a : ℕ} (bs : Module.Basis (Fin a) K (HdR M.q j)) (w : HO (QB L M s) j) :
    ∃! g : Fin a → L.B, w = ∑ t, g t • muB L.γB M.q 1 s {⊤} j (bs t) := by
  rcases isEmpty_or_nonempty U.ι with h0 | h1
  · exact cg_basis_empty hL M hM s U h0 j bs w
  · obtain ⟨α⟩ := h1
    have hms : m ≤ s := le_trans (Nat.le_add_left _ _) (hU α)
    exact (basisB L.γB s m (cg_basis_pdP hL) hms M.q U hU {⊤} sSup_singleton j bs).1 w

end CrystallineSemistableComparison.Pb.Kap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.CgBasis =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.LevelSystemGood =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.LevelSystemGood", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.QbLePf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.CoefficientReductionFirstChernClassTateTwist\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.IsProperOfProj\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.CgBasis\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.CgLift\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.unitB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section



open CategoryTheory AlgebraicGeometry Limits GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb.Kap

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

section
variable {m : ℕ} {L : Lev (per l K) m} (hL : L.Good) (M : Model l K) (s : ℕ)

theorem level_system_good [FiniteDimensional ℚ_[l] K] (hM : M.Sm) (U : Cov M.q) (hU : ∀ α, U.d α + m ≤ s) (hs : m ≤ s)
    (rH : ∀ n j, M.Hc false n j →ₛₗ[L.lam] HM (QA L M s) none ((l : L.A) ^ n) j)
    (hr : ∀ n j x, trM (QA L M s) none (l : L.A) n j (rH (n + 1) j x) = rH n j ((M.HS false j).r n x)) :
    (chainOf hL M s (qb_le_pf hL M s) rH).Good := by
  refine
    { unit := unit_B_pf (l := l) hL
      fin := fun j => (m_fin M hM j).1
      basis := fun j _ bs w => cg_basis_pf hL M hM s U hU j bs w
      r_tr := hr
      red_tr := fun n j z => _root_.GlobalTheory.CompanionTheory.RedTower.trM_redM (QA L M s) none (l : L.A) n j z
      lift := ?_
      sep := ?_ }
  · intro j x hx
    obtain ⟨e, he⟩ := cg_lift_pf hL M hM s hs j
    obtain ⟨z, hz⟩ := he.1 (fun n => rH n j (x n)) (fun n => by
      exact (hr n j (x (n + 1))).trans (congrArg (rH n j) (hx n)))
    exact ⟨e, z, hz⟩
  · intro j z hz
    obtain ⟨e, he⟩ := cg_lift_pf hL M hM s hs j
    have h0 := he.2.1 z hz
    have h1 : (chainOf hL M s (qb_le_pf hL M s) rH).b j (((l : L.A) ^ e) • z) = 0 := by
      rw [h0, map_zero]
    rw [LinearMap.map_smulₛₗ] at h1
    have hu : IsUnit ((L.ι ((l : L.A) ^ e)) : L.B) := by
      rw [map_pow, map_natCast]
      exact (unit_B_pf hL).pow e
    exact hu.smul_left_cancel.1 (by rw [smul_zero]; exact h1)

end

end CrystallineSemistableComparison.Pb.Kap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.LevelSystemGood =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.InstSt =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.InstSt", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ChainOf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BasisB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.CgLift\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.LevelSystemGood\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ValuationChainProofs.unitB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section



open CategoryTheory AlgebraicGeometry Limits GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb.Kap

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {R : Per l K} {m : ℕ}

theorem qb_le {L : Lev R m} (hL : L.Good) (M : Model l K) (s : ℕ) :
    ∀ T, QB L M s T → QA L M s (((nmB M hL).mor 0).obj T) := qb_le_pf hL M s

section
variable {m : ℕ} {L : Lev (per l K) m} (hL : L.Good) (M : Model l K) (s : ℕ)

theorem chain_good [FiniteDimensional ℚ_[l] K] (hM : M.Sm) (U : Cov M.q) (hU : ∀ α, U.d α + m ≤ s) (hs : m ≤ s)
    (rH : ∀ n j, M.Hc false n j →ₛₗ[L.lam] HM (QA L M s) none ((l : L.A) ^ n) j)
    (hr : ∀ n j x, trM (QA L M s) none (l : L.A) n j (rH (n + 1) j x) = rH n j ((M.HS false j).r n x)) :
    (chainOf hL M s (_root_.CrystallineSemistableComparison.Pb.Kap.qb_le_pf hL M s) rH).Good := level_system_good hL M s hM U hU hs rH hr

end

end CrystallineSemistableComparison.Pb.Kap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.InstSt =====
