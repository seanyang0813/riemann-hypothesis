module

public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.IsTwiceDifferentiableAt
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.MongeAmpereIntegralCongrPotentials
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.MongeAmpereIntegralMultilinearExpansion
public import ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential
public import ReciprocityTheory.AnalyticForms.PotentialTheory.DegreeInt
public import ReciprocityTheory.AnalyticForms.PotentialTheory.Stokes
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedB
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedF
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.RefLinked
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHFlProdLinear
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridge
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.AnalyticForms.PotentialTheory.IntegrableOnTargetOfTsupport
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.AnalyticForms.PotentialTheory.PotentialContDiffAt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsC2AtOfIsPotential, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RealTowerGeometricAgreement

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsC2AtOfIsPotential =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsC2AtOfIsPotential", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.IsTwiceDifferentiableAt\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.MongeAmpereIntegralCongrPotentials\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.MongeAmpereIntegralMultilinearExpansion\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.DegreeInt\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.Stokes\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedB\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.IntegrableOnTargetOfTsupport\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial MeasureTheory Filter Topology Matrix ReciprocityTheory.AnForm
  ReciprocityTheory.AnForm.M ReciprocityTheory.AnForm.P ReciprocityTheory.ChartRestriction.G.Geo
  GlobalTheory.CompanionTheory.Ar.PB

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Cmp

section Lines

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem isSmoothHerm_combLine {σ : Type} [Fintype σ] {A : σ → HermLine ι} (hA : ∀ a, IsSmoothHerm (A a))
    (n : σ → ℤ) : IsSmoothHerm (GlobalTheory.CompanionTheory.Ar.PB.combLine A n) := by
  refine contDiffOn_prod fun a _ => ?_
  intro z hz
  have h0 : (A a).h z ≠ 0 := ((A a).pos z hz).ne'
  have hf := hA a z hz
  have key : ∀ m : ℤ, ContDiffWithinAt ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) (fun z => (A a).h z ^ m)
      {z | ∀ k, ∃ i, z ⟨k, i⟩ ≠ 0} z := by
    intro m
    cases m with
    | ofNat k => simpa only [Int.ofNat_eq_natCast, zpow_natCast] using hf.pow k
    | negSucc k =>
      simp only [zpow_negSucc]
      exact (hf.pow (k + 1)).inv (pow_ne_zero _ h0)
  exact key _

theorem isC2At_of_isPotential {e : ℕ} {X : Type} [TopologicalSpace X] (A : FinHolAtlas e X) {P : LocPot X}
    (hP : IsPotential A P) (x : X) : IsTwiceDifferentiableAt A P x := by
  intro j hj
  have hm : A.chart j x ∈ (A.chart j).target ∩ (A.chart j).symm ⁻¹' P.U x :=
    ⟨(A.chart j).map_source hj, by
      rw [Set.mem_preimage, (A.chart j).left_inv hj]; exact P.mem_U x⟩
  exact (contDiffAt_of_isPotential A P hP x j hm).of_le (by
    exact WithTop.coe_le_coe.mpr (le_top : (2 : ℕ∞) ≤ ⊤))

end Lines

section Coef

variable {Ψ : Type} [DecidableEq Ψ] {N : ℕ}

def rootCoef (r p : Ψ × Fin N) : ℤ :=
  (if p.1 = r.1 ∧ (p.2 : ℕ) + 1 = r.2 then 1 else 0) - (if p = r then 1 else 0)

theorem sum_rootCoef_mul [Fintype Ψ] (r : Ψ × Fin N) (f : Ψ × Fin N → ℤ) :
    ∑ p, rootCoef r p * f p =
      (if h : 0 < (r.2 : ℕ) then f (r.1, ⟨(r.2 : ℕ) - 1, lt_of_le_of_lt (Nat.sub_le _ _) r.2.isLt⟩) else 0) - f r := by
  obtain ⟨τ, i⟩ := r
  simp only [rootCoef, sub_mul, Finset.sum_sub_distrib, ite_mul, one_mul, zero_mul]
  congr 1
  · split_ifs with h
    · rw [Finset.sum_eq_single (τ, ⟨(i : ℕ) - 1, lt_of_le_of_lt (Nat.sub_le _ _) i.isLt⟩)]
      · rw [if_pos ⟨rfl, by simp only; omega⟩]
      · rintro ⟨τ', l⟩ - hne
        rw [if_neg]
        rintro ⟨h1, h2⟩
        simp only at h1 h2
        subst h1
        exact hne (by simp only [Prod.mk.injEq, true_and]; ext; simp only; omega)
      · simp
    · refine Finset.sum_eq_zero fun p _ => if_neg ?_
      rintro ⟨-, h2⟩
      have h2' : (p.2 : ℕ) + 1 = i := h2
      omega
  · simp

theorem sum_neg_mul_rootCoef [Fintype Ψ] (lam : Ψ × Fin N → ℝ) (p : Ψ × Fin N) :
    ∑ r, -lam r * (rootCoef r p : ℝ) = GlobalTheory.CompanionTheory.Ar.PB.gap lam p := by
  obtain ⟨τ, l⟩ := p
  have h2 : ∑ r : Ψ × Fin N, lam r * (if (τ, l) = r then (1 : ℝ) else 0) = lam (τ, l) := by simp
  have h1 : ∑ r : Ψ × Fin N, lam r * (if (τ, l).1 = r.1 ∧ (((τ, l).2 : Fin N) : ℕ) + 1 = r.2 then (1 : ℝ) else 0) =
      if h : (l : ℕ) + 1 < N then lam (τ, ⟨(l : ℕ) + 1, h⟩) else 0 := by
    split_ifs with h
    · rw [Finset.sum_eq_single (τ, ⟨(l : ℕ) + 1, h⟩)]
      · simp
      · rintro ⟨τ', m⟩ - hne
        rw [if_neg, mul_zero]
        rintro ⟨h1, h2⟩
        simp only at h1 h2
        subst h1
        exact hne (by simp only [Prod.mk.injEq, true_and]; ext; simp only; omega)
      · simp
    · refine Finset.sum_eq_zero fun r _ => ?_
      rw [if_neg, mul_zero]
      rintro ⟨-, h2⟩
      have := r.2.isLt
      simp only at h2
      omega
  have h3 : GlobalTheory.CompanionTheory.Ar.PB.gap lam (τ, l) =
      lam (τ, l) - if h : (l : ℕ) + 1 < N then lam (τ, ⟨(l : ℕ) + 1, h⟩) else 0 := by
    unfold GlobalTheory.CompanionTheory.Ar.PB.gap gapX
    split_ifs with h <;> simp
  rw [h3, ← h1, ← h2, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun r _ => ?_
  simp only [rootCoef]
  push_cast
  ring

end Coef

section Main

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

end Main

end GlobalTheory.CompanionTheory.Ar.Cmp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsC2AtOfIsPotential =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RealTowerGeometricAgreement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RealTowerGeometricAgreement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.RefLinked\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsC2AtOfIsPotential\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHFlProdLinear\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridge\nimport Development.AutomorphicSpectrum.Definitions.MetricPeriods.IsTwiceDifferentiableAt\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.MongeAmpereIntegralCongrPotentials\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.MongeAmpereIntegralMultilinearExpansion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.DegreeInt\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.IntegrableOnTargetOfTsupport\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.PotentialContDiffAt\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.Stokes\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedB\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedF\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

namespace RealGeo

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

def lineCoef : Option (Ψ × Fin N) → Option (Ψ × Fin N) → ℤ
  | none, none => 1
  | none, some _ => 0
  | some _, none => 0
  | some r, some p => Cmp.rootCoef r p


omit [DecidableEq Ψ] in
theorem line_smooth (M : RootModel Ψ N) (o : Option (Ψ × Fin N)) : IsSmoothHerm (M.line 1 o) := by
  cases o with
  | none => exact M.A_smooth
  | some r => exact M.x_smooth 1 r

theorem geoMono_word (hI : PB.Inputs) (M : RootModel Ψ N) {J : Ideal (MRing M.ι)}
    (R : AnLogRes M.P J (dimFl Ψ N)) (w : Fin (dimFl Ψ N) → Option (Ψ × Fin N)) :
    M.geoMono (∑ j, Finsupp.single (w j) 1) =
      mInt R.A (fun j => potOf R (M.line 1 (w j))) (fun _ => 1) /
        ((M.δ : ℝ) * (M.kA : ℝ) ^ (∑ j, Finsupp.single (w j) (1 : ℕ)) none) := by
  classical
  have hdeg : (∑ j, Finsupp.single (w j) (1 : ℕ)).degree = dimFl Ψ N := by

    rw [map_sum]
    simp [Finsupp.degree_single]
  have hms : Finsupp.toMultiset (∑ j, Finsupp.single (w j) (1 : ℕ)) = Multiset.map w Finset.univ.val := by
    rw [Finsupp.toMultiset_sum]
    simp only [Finsupp.toMultiset_single, one_smul]
    rw [Finset.sum_eq_multiset_sum]
    have e : (fun i => ({w i} : Multiset (Option (Ψ × Fin N)))) = (fun p => {p}) ∘ w := rfl
    rw [e, ← Multiset.map_map, Multiset.sum_map_singleton]
  obtain ⟨ρ, hρ⟩ := GroundTheory.Heights₂.Heights.LowerBoundFree.FlagHeightMultilinear.exists_perm_toList w
  have hML : monoLines (M.line 1) (∑ j, Finsupp.single (w j) (1 : ℕ)) (dimFl Ψ N) =
      (fun i => M.line 1 (w i)) ∘ ρ := by
    funext k
    have hk : (k : ℕ) < (Multiset.map w Finset.univ.val).toList.length := by
      have := k.2
      simp [Multiset.length_toList]
    unfold monoLines
    rw [hms, dite_eq_left hk, hρ k hk]
    rfl
  unfold RootModel.geoMono
  rw [ite_eq_left hdeg, hML]
  congr 1
  refine (ptsIntegral_one_eq_mInt hI.resExists resBridge R M.arith (L := (fun i => M.line 1 (w i)) ∘ ρ)
    (fun j => line_smooth M _)).trans ?_
  exact mIntSymm R.A (fun j => potOf R (M.line 1 (w j))) ρ _


omit [DecidableEq Ψ] in
theorem geoFun_pow (M : RootModel Ψ N) (a : Option (Ψ × Fin N) → ℝ) :
    M.geoFun ((∑ o, C (a o) * X o) ^ dimFl Ψ N) =
      ∑ w : Fin (dimFl Ψ N) → Option (Ψ × Fin N),
        (∏ j, a (w j)) * M.geoMono (∑ j, Finsupp.single (w j) 1) := by
  classical
  have h1 : (∑ o, C (a o) * X o : RPA Ψ N) ^ dimFl Ψ N =
      ∑ w : Fin (dimFl Ψ N) → Option (Ψ × Fin N),
        (∏ j, a (w j)) • monomial (∑ j, Finsupp.single (w j) 1) (1 : ℝ) := by
    have h0 : (∑ o, C (a o) * X o : RPA Ψ N) ^ dimFl Ψ N =
        ∏ _j : Fin (dimFl Ψ N), ∑ o, C (a o) * X o := by simp
    rw [h0, Finset.prod_univ_sum, Fintype.piFinset_univ]
    refine Finset.sum_congr rfl fun w _ => ?_
    rw [Finset.prod_mul_distrib, monomial_sum_one, smul_eq_C_mul, map_prod]
    rfl

  rw [h1, map_sum]
  refine Finset.sum_congr rfl fun w _ => ?_
  rw [map_smul, smul_eq_mul]
  congr 1
  have : (monomial (∑ j, Finsupp.single (w j) 1) (1 : ℝ) : RPA Ψ N) =
      basisMonomials (Option (Ψ × Fin N)) ℝ (∑ j, Finsupp.single (w j) 1) := by
    rw [coe_basisMonomials]
  rw [this, RootModel.geoFun, Module.Basis.constr_basis]


omit [DecidableEq Ψ] in
theorem linA_eq (lam : Wt Ψ N) (s : ℝ) :
    linA lam s = ∑ o : Option (Ψ × Fin N), C (o.elim s fun r => -lam r.1 r.2) * X o := by

  simp only [linA, toA, linRoot, map_neg, map_sum, map_mul, rename_C, rename_X, Fintype.sum_option,
  Option.elim, neg_mul, Finset.sum_neg_distrib]
  rw [add_comm]

omit [DecidableEq Ψ] in
theorem xdeg_eq {M : RootModel Ψ N} {S : PB.AnSys (dimFl Ψ N) (Option (Ψ × Fin N))} {n : ℕ} (R : RealTie M S n)
    (r : Ψ × Fin N) (k : M.K) :
    M.xdeg r k = (if _h : 0 < (r.2 : ℕ) then
      (R.Re.ref (some (r.1, ⟨(r.2 : ℕ) - 1, lt_of_le_of_lt (Nat.sub_le _ _) r.2.isLt⟩))).a k else 0) -
        (R.Re.ref (some r)).a k := by
  obtain ⟨τ, i⟩ := r
  dsimp only
  have hY : ∀ l : Fin N, (R.Re.ref (some (τ, l))).a k = -∑ m ∈ Finset.Iic l, M.xdeg (τ, m) k := fun l => by
    rw [R.fund_deg τ l]
    simp [Finset.sum_apply]
  split_ifs with h
  · have hI : Finset.Iic i = insert i (Finset.Iic (⟨(i : ℕ) - 1, lt_of_le_of_lt (Nat.sub_le _ _) i.isLt⟩ : Fin N)) := by
      ext l
      simp only [Finset.mem_Iic, Finset.mem_insert, Fin.le_def, Fin.ext_iff]
      omega
    have hn : i ∉ Finset.Iic (⟨(i : ℕ) - 1, lt_of_le_of_lt (Nat.sub_le _ _) i.isLt⟩ : Fin N) := by
      simp only [Finset.mem_Iic, Fin.le_def]
      omega
    simp only [hY]
    rw [hI, Finset.sum_insert hn]
    ring
  · have hI : Finset.Iic i = {i} := by
      ext l
      simp only [Finset.mem_Iic, Finset.mem_singleton, Fin.le_def, Fin.ext_iff]
      omega
    simp only [hY]
    rw [hI, Finset.sum_singleton]
    ring

theorem line_deg {M : RootModel Ψ N} {S : PB.AnSys (dimFl Ψ N) (Option (Ψ × Fin N))} {n : ℕ} (R : RealTie M S n)
    (o : Option (Ψ × Fin N)) : (M.line 1 o).a = (PB.combLine R.Re.ref (lineCoef o)).a := by
  funext k
  rw [PB.combLine_a, Fintype.sum_option]
  cases o with
  | none =>
    simp only [lineCoef, one_mul, zero_mul, Finset.sum_const_zero, add_zero, R.ref_none.1]
    rfl
  | some r =>
    simp only [lineCoef, zero_mul, zero_add]
    rw [Cmp.sum_rootCoef_mul r fun p => (R.Re.ref (some p)).a k]
    show (M.x 1 r).a k = _
    rw [M.x_deg, xdeg_eq R r k]


omit [DecidableEq Ψ] in
theorem prod_coef (M : RootModel Ψ N) (lam : Wt Ψ N) (s : ℝ) (w : Fin (dimFl Ψ N) → Option (Ψ × Fin N)) :
    ∏ j, M.coef lam s (w j) =
      (∏ j, (w j).elim s fun r => -lam r.1 r.2) / (M.kA : ℝ) ^ (∑ j, Finsupp.single (w j) (1 : ℕ)) none := by
  classical
  have h1 : ∀ j, M.coef lam s (w j) = ((w j).elim s fun r => -lam r.1 r.2) *
      ((M.kA : ℝ)⁻¹) ^ (Finsupp.single (w j) (1 : ℕ)) none := fun j => by
    cases h : w j with
    | none => simp [RootModel.coef, div_eq_mul_inv]
    | some r => simp [RootModel.coef]
  simp only [h1, Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum, Finsupp.finsetSum_apply]
  rw [inv_pow, div_eq_mul_inv]

theorem sum_coef_lineCoef (M : RootModel Ψ N) (lam : Wt Ψ N) (s : ℝ) (a : Option (Ψ × Fin N)) :
    ∑ o, M.coef lam s o * (lineCoef o a : ℝ) = PB.gapS (fun x => lam x.1 x.2) (s / M.kA) a := by
  rw [Fintype.sum_option]
  cases a with
  | none => simp [lineCoef, RootModel.coef, PB.gapS]
  | some p =>
    simp only [lineCoef, RootModel.coef, PB.gapS, Option.elim, Int.cast_zero, mul_zero, zero_add]
    exact Cmp.sum_neg_mul_rootCoef (fun x : Ψ × Fin N => lam x.1 x.2) p

open GlobalTheory.CompanionTheory.Ar.PB

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

private theorem local_mInt_potOf_eq_of_deg {P J : Ideal (MRing ι)} {e : ℕ} (R : AnLogRes P J e) {L L' : Fin e → HermLine ι}
    (hL : ∀ j, IsSmoothHerm (L j)) (hL' : ∀ j, IsSmoothHerm (L' j)) (ha : ∀ j, (L j).a = (L' j).a) :
    mInt R.A (fun j => potOf R (L j)) (fun _ => 1) = mInt R.A (fun j => potOf R (L' j)) (fun _ => 1) := by
  let B : Fin e → HermLine ι := fun j => GlobalTheory.CompanionTheory.Ar.PB.combLine ![L j, L' j] ![1, -1]
  have hB0 : ∀ j, (B j).a = 0 := fun j => by
    rw [(combLine_div (L j) (L' j)).1, ha j, sub_self]
  have hBs : ∀ j, IsSmoothHerm (B j) := fun j =>
    Cmp.isSmoothHerm_combLine (fun a => by
      fin_cases a
      · exact hL j
      · exact hL' j) _
  let u : Fin e → R.X → ℝ := fun j x => Real.log ((B j).h (R.lift x x))
  have hu : ∀ j, R.A.Smooth (u j) := fun j => smooth_diag R (hBs j) (hB0 j)
  have h1 : mInt R.A (fun j => potOf R (L j)) (fun _ => 1) =
      mInt R.A (fun j => potOf R (L' j) + LocPot.ofFun (u j)) (fun _ => 1) := by
    refine mInt_congr _ (locDens_congr_of_eqOn R fun i x y hy => ?_) fun _ => rfl
    show Real.log ((L i).h (R.lift x y)) = Real.log ((L' i).h (R.lift x y)) + Real.log ((B i).h (R.lift y y))
    have hm := (R.mem x y hy).1
    rw [← h_eq_of_sameOrbit (hB0 i) (R.compat x y y ⟨hy, R.mem_U y⟩), (combLine_div (L i) (L' i)).2,
      Real.log_div ((L i).pos _ hm).ne' ((L' i).pos _ hm).ne']
    ring
  rw [h1]
  exact massIndep R.A _ u (fun i => isPotential_potOf R (hL' i)) hu


private theorem local_mInt_ref_eq {D : ℕ} {σ : Type} {S : AnSys D σ} {P : Ideal (MRing ι)} (Re : Realis S P) (w : Fin D → σ) :
    mInt Re.R.A (fun j => potOf Re.R (Re.ref (w j))) (fun _ => 1) = Re.deg * S.degNum w := by
  have hth : ∀ a, IsPotential S.A (S.th a) := fun a => (S.sing a).1
  have hpb : ∀ a, IsPotential Re.R.A ((S.th a).pullback Re.π Re.holo.1) := fun a =>
    isPotentialPullback S.A Re.R.A Re.π Re.holo (S.th a) (hth a)
  have h1 := (_root_.GlobalTheory.CompanionTheory.Ar.PB.mInt_congr_samePot D Re.R.X Re.R.A Set.univ (fun j => potOf Re.R (Re.ref (w j)))
    (fun j => (S.th (w j)).pullback Re.π Re.holo.1) (fun _ => 1) (fun _ => 1)
    (fun j => by simp) (fun i => Re.ref_pot (w i)) (fun i x _ => Cmp.isC2At_of_isPotential _ (hpb _) x)
    (fun _ _ => rfl)).1
  rw [h1]
  exact (degreeFormulaInt S.A Re.R.A Re.π Re.holo Re.deg Re.br Re.degree (fun j => S.th (w j)) (fun i => hth _)
    (fun _ => 1) (mIntegrableCont S.A _ (fun i => hth _) _ continuous_const)).2

private theorem local_mInt_combLine_eq {D : ℕ} {σ : Type} [Fintype σ] {S : AnSys D σ} {P : Ideal (MRing ι)} (Re : Realis S P)
    (n : Fin D → σ → ℤ) :
    mInt Re.R.A (fun j => potOf Re.R (GlobalTheory.CompanionTheory.Ar.PB.combLine Re.ref (n j))) (fun _ => 1) =
      ∑ w : Fin D → σ, (∏ i, (n i (w i) : ℝ)) * (Re.deg * S.degNum w) := by
  have hP : ∀ a, IsPotential Re.R.A (potOf Re.R (Re.ref a)) := fun a => isPotential_potOf Re.R (Re.ref_smooth a)
  have h1 : mInt Re.R.A (fun j => potOf Re.R (GlobalTheory.CompanionTheory.Ar.PB.combLine Re.ref (n j))) (fun _ => 1) =
      mInt Re.R.A (fun j => sumPot (fun a => (n j a : ℝ)) fun a => potOf Re.R (Re.ref a)) (fun _ => 1) := by
    refine mInt_congr _ (fun j y hy => ?_) fun _ => rfl
    refine ReciprocityTheory.ChartRestriction.G.Geo.maDens_congr fun i => ?_
    filter_upwards [((Re.R.A.chart j).isOpen_inter_preimage_symm (Re.R.isOpen_U ((Re.R.A.chart j).symm y))).mem_nhds
      ⟨hy, Re.R.mem_U _⟩] with y' hy'
    have hm := (Re.R.mem _ _ hy'.2).1
    show Real.log (∏ a, (Re.ref a).h _ ^ n i a) = ∑ a, (n i a : ℝ) * Real.log ((Re.ref a).h _)
    rw [Real.log_prod fun a _ => (zpow_pos ((Re.ref a).pos _ hm) _).ne']
    exact Finset.sum_congr rfl fun a _ => Real.log_zpow _ _
  rw [h1, (_root_.GlobalTheory.CompanionTheory.Ar.PB.mInt_sumPot_expand D Re.R.X Re.R.A σ Set.univ (fun a => potOf Re.R (Re.ref a)) (fun j a => (n j a : ℝ))
    (fun _ => 1) (fun j => by simp) (fun a x _ => Cmp.isC2At_of_isPotential _ (hP a) x)
    (fun w => mIntegrableCont _ _ (fun i => hP _) _ continuous_const)).2]
  exact Finset.sum_congr rfl fun w _ => by rw [local_mInt_ref_eq Re w]


end RealGeo

theorem geoFun_linA_pow_of_realTie : PB.Inputs → ∀ II : IntersectionSystem, IsFullIntersectionSystem II →
    ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (M : RootModel Ψ N)
    (S : PB.AnSys (dimFl Ψ N) (Option (Ψ × Fin N))) (n : ℕ) (R : RealTie M S n) (lam : Wt Ψ N) (s : ℝ),
    (n : ℝ) * M.geoFun (linA lam s ^ dimFl Ψ N) =
      eval (PB.gapS (fun x => lam x.1 x.2) (s / M.kA)) S.degPoly := by
  intro hI _ _ Ψ _ _ N M S n R lam s
  classical
  have hδ : (M.δ : ℝ) = n * R.Re.deg := by exact_mod_cast R.δ_eq
  have hδ0 : (M.δ : ℝ) ≠ 0 := Nat.cast_ne_zero.2 M.δ_pos.ne'
  have hn0 : (n : ℝ) ≠ 0 := fun h => hδ0 (by rw [hδ, h, zero_mul])
  have hd0 : (R.Re.deg : ℝ) ≠ 0 := Nat.cast_ne_zero.2 R.Re.deg_pos.ne'
  have hk0 : (M.kA : ℝ) ≠ 0 := Nat.cast_ne_zero.2 M.kA_pos.ne'
  have hT : ∀ w : Fin (dimFl Ψ N) → Option (Ψ × Fin N),
      M.geoMono (∑ j, Finsupp.single (w j) 1) =
        (∑ v : Fin (dimFl Ψ N) → Option (Ψ × Fin N),
          (∏ i, (RealGeo.lineCoef (w i) (v i) : ℝ)) * (R.Re.deg * S.degNum v)) /
          ((M.δ : ℝ) * (M.kA : ℝ) ^ (∑ j, Finsupp.single (w j) (1 : ℕ)) none) := by
    intro w
    rw [RealGeo.geoMono_word hI M R.Re.R w, ← RealGeo.local_mInt_combLine_eq R.Re fun j => RealGeo.lineCoef (w j)]
    congr 1
    exact RealGeo.local_mInt_potOf_eq_of_deg R.Re.R (fun j => RealGeo.line_smooth M _)
      (fun j => Cmp.isSmoothHerm_combLine R.Re.ref_smooth _) fun j => RealGeo.line_deg R _
  have heval : eval (PB.gapS (fun x => lam x.1 x.2) (s / M.kA)) S.degPoly =
      ∑ v, S.degNum v * ∏ j, PB.gapS (fun x => lam x.1 x.2) (s / M.kA) (v j) := by
    simp [PB.AnSys.degPoly, PB.formPoly]
  have hg : ∀ v : Fin (dimFl Ψ N) → Option (Ψ × Fin N),
      ∏ j, PB.gapS (fun x => lam x.1 x.2) (s / M.kA) (v j) =
        ∑ w : Fin (dimFl Ψ N) → Option (Ψ × Fin N),
          (∏ j, M.coef lam s (w j)) * ∏ j, (RealGeo.lineCoef (w j) (v j) : ℝ) := by
    intro v
    simp_rw [← RealGeo.sum_coef_lineCoef]
    rw [Finset.prod_univ_sum, Fintype.piFinset_univ]
    exact Finset.sum_congr rfl fun w _ => Finset.prod_mul_distrib
  rw [RealGeo.linA_eq, RealGeo.geoFun_pow, heval, Finset.mul_sum]
  calc _ = ∑ w : Fin (dimFl Ψ N) → Option (Ψ × Fin N), ∑ v : Fin (dimFl Ψ N) → Option (Ψ × Fin N),
          S.degNum v * ((∏ j, M.coef lam s (w j)) * ∏ j, (RealGeo.lineCoef (w j) (v j) : ℝ)) :=
        Finset.sum_congr rfl fun w _ => by
          rw [hT, RealGeo.prod_coef, Finset.sum_div, Finset.mul_sum, Finset.mul_sum]
          refine Finset.sum_congr rfl fun v _ => ?_
          rw [hδ]
          have hp : (M.kA : ℝ) ^ (∑ j, Finsupp.single (w j) (1 : ℕ)) none ≠ 0 := pow_ne_zero _ hk0
          field_simp
    _ = ∑ v : Fin (dimFl Ψ N) → Option (Ψ × Fin N), ∑ w : Fin (dimFl Ψ N) → Option (Ψ × Fin N),
          S.degNum v * ((∏ j, M.coef lam s (w j)) * ∏ j, (RealGeo.lineCoef (w j) (v j) : ℝ)) :=
        Finset.sum_comm
    _ = _ := by
        refine Finset.sum_congr rfl fun v _ => ?_
        rw [hg, Finset.mul_sum]

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RealTowerGeometricAgreement =====
