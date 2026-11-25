module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsFirstChernClassInJAlt
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ToBSurj
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.ToYIsFirstChernIff
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ChainOf
public import Development.AutomorphicArithmetic.ThetaCorrespondence.FockModels.TiltedDrinfeld.Base
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.IsUOfIsUnit
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.SmoothQ
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.RedInEx

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.GaloisTTransform, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.CrisSurj

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.GaloisTTransform =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.GaloisTTransform", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsFirstChernClassInJAlt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ToBSurj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.HT

open Pb Pb.Kap

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem dividedPowerFiltration_one {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) : pdP δ 1 = J := by
  refine le_antisymm (Ideal.span_le.2 ?_) fun z hz => by simpa using pow_mem_pdP δ hz 1
  rintro _ ⟨L, hL, hr, rfl⟩
  induction L with
  | nil => simp at hr
  | cons q L ih =>
    simp only [List.map_cons, List.prod_cons, List.sum_cons] at hr ⊢
    rcases Nat.eq_zero_or_pos q.1 with h | h
    · exact J.mul_mem_left _ (ih (fun q' hq' => hL q' (List.mem_cons_of_mem _ hq')) (by omega))
    · exact J.mul_mem_right _ (δ.dpow_mem h.ne' (hL q List.mem_cons_self))

structure Br (R : Per l K) (Y : CB l K) (e : Y.Λ →+* R.A) (θP : R.P →+* ℂ_[l]) (sΛ : K.fixingSubgroup → Y.Λ →+* Y.Λ)
    (sn : K.fixingSubgroup → ∀ n, Y.R n →+* Y.R n) (sC : K.fixingSubgroup → ℂ_[l] →+* ℂ_[l]) (c : K.fixingSubgroup → ℂ_[l]) : Prop where
  et : e Y.t = R.t
  t_ne : R.tB ≠ 0
  θ_i : ∀ x, ∃ y : R.P, (y : R.B) = R.i (e x) ∧ θP y = Y.θ x
  θ_o : ∀ k : K, ∃ y : R.P, (y : R.B) = R.o k ∧ θP y = kC K k
  ker : ∀ x : R.P, θP x = 0 ↔ ∃ y : R.P, (x : R.B) = R.tB * y
  θ_σ : ∀ (g : K.fixingSubgroup) (x : R.P), ∃ y : R.P, R.σ g x = y ∧ θP y = sC g (θP x)
  galois_t_transform : ∀ g : K.fixingSubgroup, ∃ u : R.P, R.σ g R.tB = u * R.tB ∧ θP u = c g
  eσ : ∀ g x, e (sΛ g x) = R.σA g (e x)
  cris : ∀ g n x, sn g n (Y.c n x) = Y.c n (sΛ g x)

variable {R : Per l K} {Y : CB l K} {e : Y.Λ →+* R.A} {θP : R.P →+* ℂ_[l]} {sΛ : K.fixingSubgroup → Y.Λ →+* Y.Λ}
  {sn : K.fixingSubgroup → ∀ n, Y.R n →+* Y.R n} {sC : K.fixingSubgroup → ℂ_[l] →+* ℂ_[l]} {c : K.fixingSubgroup → ℂ_[l]}
  (hb : Br R Y e θP sΛ sn sC c) {m : ℕ} {L : Lev R m} (hL : L.Good)

include hb hL

theorem Br.θ_ex : ∃ θ : L.B →+* ℂ_[l], ∀ x, θ (L.toB x) = θP x := by
  refine ⟨(L.toB.liftOfSurjective hL.toB_surj) ⟨θP, fun x hx => ?_⟩, fun x => RingHom.liftOfRightInverse_comp_apply _ _ _ _ _⟩
  obtain ⟨y, hy⟩ := (hL.toB_ker x).1 hx
  obtain ⟨t, ht, -⟩ := hb.θ_i Y.t
  rw [hb.et] at ht
  obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_le hL.pos
  refine (hb.ker x).2 ⟨t ^ k * y, ?_⟩
  rw [hy, hk, pow_add, pow_one, Subring.coe_mul, SubmonoidClass.coe_pow, ht, mul_assoc]
  rfl

theorem Br.t_ex : ∃ t : R.P, (t : R.B) = R.tB ∧ L.ι (L.lam (e Y.t)) = L.toB t ∧ L.IB = Ideal.span {L.toB t} := by
  obtain ⟨t, ht, -⟩ := hb.θ_i Y.t
  refine ⟨t, by rw [ht, hb.et]; rfl, hL.ι_lam _ t ht, ?_⟩
  rw [← dividedPowerFiltration_one L.γB, hL.pdP_B 1 t (by rw [ht, hb.et]; rfl), pow_one]

def Br.θ : L.B →+* ℂ_[l] := (hb.θ_ex hL).choose

theorem Br.θ_toB (x : R.P) : hb.θ hL (L.toB x) = θP x := (hb.θ_ex hL).choose_spec x

theorem Br.ker_θ : RingHom.ker (hb.θ hL) = L.IB := by
  obtain ⟨t, ht, -, hI⟩ := hb.t_ex hL
  ext b
  obtain ⟨x, rfl⟩ := hL.toB_surj b
  rw [RingHom.mem_ker, hb.θ_toB, hI, Ideal.mem_span_singleton']
  constructor
  · intro h
    obtain ⟨y, hy⟩ := (hb.ker x).1 h
    refine ⟨L.toB y, ?_⟩
    rw [← map_mul]
    exact congrArg L.toB (Subtype.ext (by rw [hy, Subring.coe_mul, ht, mul_comm]))
  · rintro ⟨a, ha⟩
    have h0 : θP t = 0 := (hb.ker t).2 ⟨1, by rw [ht]; simp⟩
    rw [← hb.θ_toB hL, ← ha, map_mul, hb.θ_toB, h0, mul_zero]

theorem Br.gr (i : ℕ) (hi : i < m) (x : L.B)
    (h : x * L.ι (L.lam (e Y.t)) ^ i ∈ Ideal.span {L.ι (L.lam (e Y.t)) ^ (i + 1)}) : x ∈ L.IB := by
  obtain ⟨t, ht, h1, hI⟩ := hb.t_ex hL
  rw [h1] at h
  obtain ⟨a, ha⟩ := Ideal.mem_span_singleton'.1 h
  obtain ⟨x, rfl⟩ := hL.toB_surj x
  obtain ⟨a, rfl⟩ := hL.toB_surj a
  have h2 : L.toB (x * t ^ i - a * t ^ (i + 1)) = 0 := by
    rw [map_sub, map_mul, map_mul, map_pow, map_pow, ha, sub_self]
  obtain ⟨y, hy⟩ := (hL.toB_ker _).1 h2
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_lt hi
  have h3 : x = (a + t ^ k * y) * t := by
    refine Subtype.ext (mul_right_cancel₀ (pow_ne_zero i hb.t_ne) ?_)
    push_cast at hy ⊢
    rw [ht] at hy ⊢
    linear_combination hy
  rw [hI, h3, map_mul]
  exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)

def Br.lv (hd : ∀ n, ∃ d : RedIn (O := OK l K) (Y.γ n) (Y.κ n) L.γ l n, ∀ x, d.ρ (Y.c n x) = Ideal.Quotient.mk _ (L.lam (e x))) :
    Lv Y m where
  B := L.B
  IB := L.IB
  γB := L.γB
  θ := hb.θ hL
  A := L.A
  I := L.I
  γ := L.γ
  ι := L.ι
  lam := L.lam.comp e
  d n := (hd n).choose
  d_lam n := (hd n).choose_spec
  lat := hL.lat m le_rfl
  ι_dp := hL.ι_dp
  ι_O := hL.ι_O
  t_mem := by
    obtain ⟨t, -, h1, hI⟩ := hb.t_ex hL
    rw [hL.ι_I, Ideal.mem_comap, RingHom.comp_apply, h1, hI]
    exact Ideal.mem_span_singleton_self _
  θ_K k := by
    obtain ⟨y, h1, h2⟩ := hb.θ_o k
    rw [← hL.toB_K k y h1, hb.θ_toB, h2]
  θ_lam x := by
    obtain ⟨y, h1, h2⟩ := hb.θ_i x
    rw [RingHom.comp_apply, hL.ι_lam _ y h1, hb.θ_toB, h2]
  ker_θ := hb.ker_θ hL
  pdB r := by
    obtain ⟨t, ht, h1, -⟩ := hb.t_ex hL
    rw [RingHom.comp_apply, h1, hL.pdP_B r t ht]
  nil := by
    obtain ⟨t, ht, h1, -⟩ := hb.t_ex hL
    rw [RingHom.comp_apply, h1, ← map_pow]
    exact (hL.toB_ker _).2 ⟨1, by simp [ht]⟩
  gr := hb.gr hL

theorem Br.gal (hd) (g : K.fixingSubgroup) : Nonempty (LHom (hb.lv hL hd) (hb.lv hL hd) (sΛ g) (sn g) (sC g) (c g)) := by
  obtain ⟨u, hu, hc⟩ := hb.galois_t_transform g
  obtain ⟨t, ht, h1, -⟩ := hb.t_ex hL
  exact ⟨{
    le := le_rfl
    sA := L.σA g
    sB := L.σB g
    dpA := hL.σ_dp g
    dpB := hL.σB_dp g
    oA := hL.σ_O g
    oB := hL.σB_K g
    ι := fun a => (hL.σ_ι g a).symm
    lam := fun x => (hL.σ_lam g (e x)).trans (congrArg L.lam (hb.eσ g x).symm)
    cris := hb.cris g
    θ := fun b => by
      obtain ⟨x, rfl⟩ := hL.toB_surj b
      obtain ⟨y, h2, h3⟩ := hb.θ_σ g x
      change hb.θ hL (L.σB g (L.toB x)) = sC g (hb.θ hL (L.toB x))
      rw [hL.σB_toB g x y h2, hb.θ_toB, hb.θ_toB, h3]
    cB := L.toB u
    t := by
      change L.σB g (L.ι (L.lam (e Y.t))) = L.toB u * L.ι (L.lam (e Y.t))
      rw [h1, ← map_mul]
      exact hL.σB_toB g t (u * t) (by rw [Subring.coe_mul, ht, hu])
    θc := (hb.θ_toB hL u).trans hc }⟩

omit hL in
theorem Br.sys (S : LevSys R) (hS : S.Good)
    (hd : ∀ m n, ∃ d : RedIn (O := OK l K) (Y.γ n) (Y.κ n) (S.L m).γ l n,
      ∀ x, d.ρ (Y.c n x) = Ideal.Quotient.mk _ ((S.L m).lam (e x))) : Nonempty (LvSys Y sΛ sn sC c) :=
  ⟨{ L := fun m => hb.lv (hS.lev m) (hd m)
     dn := fun m =>
      { le := Nat.le_succ _
        sA := S.dA m
        sB := S.dB m
        dpA := hS.ddp m
        dpB := hS.ddpB m
        oA := hS.dO m
        oB := hS.dK m
        ι := hS.dι m
        lam := fun x => hS.dlam m (e x)
        cris := fun _ _ => rfl
        θ := fun b => by
          obtain ⟨x, rfl⟩ := (hS.lev (m + 1)).toB_surj b
          change hb.θ (hS.lev m) (S.dB m ((S.L (m + 1)).toB x)) = hb.θ (hS.lev (m + 1)) ((S.L (m + 1)).toB x)
          rw [hS.dB_toB, hb.θ_toB, hb.θ_toB]
        cB := 1
        t := by
          change S.dB m ((S.L (m + 1)).ι ((S.L (m + 1)).lam (e Y.t))) = 1 * (S.L m).ι ((S.L m).lam (e Y.t))
          rw [hS.dι, hS.dlam, one_mul]
        θc := map_one _ }
     gal := fun m g => (hb.gal (hS.lev m) (hd m) g).some }⟩

end CrystallineSemistableComparison.HT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.GaloisTTransform =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.CrisSurj =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.CrisSurj", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.ToYIsFirstChernIff\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.GaloisTTransform\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ChainOf\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.FockModels.TiltedDrinfeld.Base\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.IsUOfIsUnit\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.SmoothQ\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.RedInEx\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GroundTheory.PAdicHodge Formalism.Per6 DeRhamPotentiallySemistable.DRPst

namespace CrystallineSemistableComparison.HT

open Pb Pb.Kap PAlg

variable (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l))

theorem crisSurj : CrisSurj l := fun n => ((RL.base_acr (base l) isBase_base).2 n).1

def thP : period_ring_base.Plus l →+* ℂ_[l] where
  toFun x := period_ring_base.th l x.1
  map_one' := by
    have h := _root_.period_ring_base.BaseB.th_alg (l := l) 1
    rw [map_one, map_one] at h
    exact h
  map_mul' x y := (period_ring_base.base l).th_mul _ x.2 _ y.2
  map_zero' := by
    have h := _root_.period_ring_base.BaseB.th_alg (l := l) 0
    rw [map_zero, map_zero] at h
    exact h
  map_add' x y := (period_ring_base.base l).th_add _ x.2 _ y.2

theorem θD_algCl (x : PadicAlgCl l) : θD l (algClToBdR l x) = clToC l x := thetaAlgHom_algClToBdR l x

theorem br (ht : TFil l) (hs : CrisSurj l) : Br (per l K) (cb K ht hs) (RingHom.id (Acris l)) (thP l)
    (fun σ => ACris.galCris (IntermediateField.fixingSubgroupEquiv K σ))
    (fun σ => galBase (IntermediateField.fixingSubgroupEquiv K σ))
    (fun σ => (period_ring_base.σC σ.1).toRingHom) (fun σ => qC l (period_ring_base.χ σ.1)) := by
  exact {
    et := rfl
    t_ne := DeRhamTwist.Twist.tQ_ne
    θ_i x := ⟨⟨_, ⟨ACris.iota ℂ_[l] l x, rfl⟩⟩, rfl, _root_.period_ring_base.BaseB.th_alg _⟩
    θ_o k := ⟨⟨_, ⟨algClToBdR l k.1, rfl⟩⟩, rfl, (_root_.period_ring_base.BaseB.th_alg _).trans (θD_algCl l k.1)⟩
    ker x := ((period_ring_base.base l).th_zero x.1 x.2).trans
      ⟨fun ⟨y, hy, e⟩ => ⟨⟨y, hy⟩, e⟩, fun ⟨y, e⟩ => ⟨y.1, y.2, e⟩⟩
    θ_σ g x :=
      ⟨⟨_, (period_ring_base.base l).plus_σ g.1 x.1 x.2⟩, rfl, (period_ring_base.base l).th_σ g.1 x.1 x.2⟩
    galois_t_transform g :=
      ⟨⟨_, ((period_ring_base.base l).th_q (period_ring_base.χ g.1)).1⟩, σD_tQ g.1, th_qQ _⟩
    eσ _ _ := rfl
    cris g n x := galBase_cris _ n x
  }

theorem red_ex {m : ℕ} (L : Lev (per l K) m) (hL : L.Good) (hC : L.CrisOK) (n : ℕ) :
    ∃ d : RedIn (B.DD false (base l) n) (B.κb (okToOC l K) false n) L.γ l n,
      ∀ c, d.ρ ((base l).cris n c) = Ideal.Quotient.mk _ (L.lam c) :=
  redIn_ex L.γ m L.lam (hL.lat m le_rfl).tf hC.1 hC.2 n

theorem lvEx_of (h : ∃ S : LevSys (per l K), S.Good ∧ ∀ m, (S.L m).CrisOK) : LvEx l K := fun ht hs =>
  h.elim fun S hS => (br l K ht hs).sys S hS.1 fun m n => red_ex l K (S.L m) (hS.1.lev m) (hS.2 m) n

end CrystallineSemistableComparison.HT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.CrisSurj =====
