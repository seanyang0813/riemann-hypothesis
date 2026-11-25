module

public import GroundTheory.HeightsAndTheta.Heights.HeightsOfSets.DenseChart

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial NumberField
open scoped ContDiff

noncomputable section

variable {ι : Type} [Fintype ι] [DecidableEq ι] {n : ι → ℕ}


namespace ArithVariety

variable (P : ArithVariety n)

def IsLive (c : (k : ι) → Fin (n k + 1)) : Prop :=
  ∀ k, (X ⟨k, c k⟩ : MvPolynomial (Coord n) ℤ) ∉ P.ideal

def chartRing (c : (k : ι) → Fin (n k + 1)) : Subring P.FunField :=
  Subring.closure (Set.range (P.chartCoord c))

def chartPow (c : (k : ι) → Fin (n k + 1)) (a : ι → ℤ) : P.FunField :=
  ∏ k, P.mkF (X ⟨k, c k⟩) ^ a k

def IsOfDegree (a : ι → ℤ) (x : P.FunField) : Prop :=
  ∃ (f g : MvPolynomial (Coord n) ℤ) (δf δg : ι → ℕ), IsWeightedHomogeneous (coordDeg n) f δf ∧
    IsWeightedHomogeneous (coordDeg n) g δg ∧ (∀ k, (δf k : ℤ) - δg k = a k) ∧ g ∉ P.ideal ∧
    x = P.mkF f / P.mkF g

end ArithVariety

structure AddBlockData (P : ArithVariety n) where

  deg : ι → ℤ

  size : ℕ

  elt : Fin (size + 1) → P.FunField
  elt_deg : ∀ j, P.IsOfDegree deg (elt j)
  chart_mem : ∀ c, P.IsLive c → ∀ j, elt j / P.chartPow c deg ∈ P.chartRing c
  generating : ∀ c, P.IsLive c → ∃ u : Fin (size + 1) → P.FunField,
    (∀ j, u j ∈ P.chartRing c) ∧ ∑ j, u j * (elt j / P.chartPow c deg) = 1

namespace AddBlockData

variable {P : ArithVariety n} (D : AddBlockData P)

def extSizes : Option ι → ℕ := fun o ↦ o.elim D.size n

def den (d : ι → ℕ) (g : ((k : ι) → Fin (n k + 1)) → Fin (D.size + 1) → MvPolynomial (Coord n) ℤ)
    {r : ℕ} (G : Fin r → MvPolynomial (Coord n) ℤ) (δ : Fin r → ι → ℕ) (z : Cone n ℂ) : ℝ :=
  (∑ c, ∑ j, ‖evalCone z (g c j)‖ ^ 2) +
    ∑ i, ‖evalCone z (G i)‖ ^ 2 * ∏ k, l2Norm (z k) ^ (2 * ((d k : ℤ) + D.deg k - δ i k))

end AddBlockData

namespace HermLine

def pow (A : Heights.HermLine n) (m : ℕ) : Heights.HermLine n where
  deg := m • A.deg
  metric z := A.metric z ^ m
  metric_pos z hz := pow_pos (A.metric_pos z hz) m
  metric_smul c z hc hz := by
    rw [A.metric_smul c z hc hz, mul_pow, ← Finset.prod_pow]
    congr 1
    refine Finset.prod_congr rfl fun k _ ↦ ?_
    rw [Pi.smul_apply, nsmul_eq_mul, mul_comm, zpow_mul, zpow_natCast]
  metric_smooth := A.metric_smooth.pow m

def inv (A : Heights.HermLine n) : Heights.HermLine n where
  deg := -A.deg
  metric z := (A.metric z)⁻¹
  metric_pos z hz := inv_pos.mpr (A.metric_pos z hz)
  metric_smul c z hc hz := by
    rw [A.metric_smul c z hc hz, mul_inv, ← Finset.prod_inv_distrib]
    congr 1
    refine Finset.prod_congr rfl fun k _ ↦ ?_
    rw [Pi.neg_apply, zpow_neg]
  metric_smooth := A.metric_smooth.inv fun z hz ↦ (A.metric_pos z hz).ne'

end HermLine

omit [DecidableEq ι] in
theorem chartMonomial_add (c : (k : ι) → Fin (n k + 1)) (d d' : ι → ℕ) :
    chartMonomial c (d + d') = chartMonomial c d * chartMonomial c d' := by
  simp only [chartMonomial, Pi.add_apply, pow_add, Finset.prod_mul_distrib]

omit [DecidableEq ι] in
theorem chartMonomial_nsmul (c : (k : ι) → Fin (n k + 1)) (m : ℕ) (d : ι → ℕ) :
    chartMonomial c (m • d) = chartMonomial c d ^ m := by
  simp only [chartMonomial, Pi.smul_apply, smul_eq_mul, ← Finset.prod_pow, ← pow_mul, mul_comm]


namespace IntegralSection

variable {P : ArithVariety n} {a b : ι → ℤ}

def pow (s : IntegralSection P a) (m : ℕ) : IntegralSection P (m • a) where
  num := s.num ^ m
  den := s.den ^ m
  numDeg := m • s.numDeg
  denDeg := m • s.denDeg
  num_isHomogeneous := s.num_isHomogeneous.pow m
  den_isHomogeneous := s.den_isHomogeneous.pow m
  deg_eq k := by
    simp only [Pi.smul_apply, smul_eq_mul, Nat.cast_mul]
    rw [← s.deg_eq k]
    ring
  den_not_mem h := s.den_not_mem (P.isPrime.mem_of_pow_mem m h)
  regular c hc := by
    obtain ⟨d, e, ⟨δ, he, hδ⟩, hmem⟩ := s.regular c hc
    refine ⟨m • d, e ^ m, ⟨m • δ, he.pow m, fun k ↦ ?_⟩, ?_⟩
    · simp only [Pi.smul_apply, smul_eq_mul, Nat.cast_mul, hδ k]
      ring
    · rw [chartMonomial_nsmul, ← Ideal.Quotient.eq_zero_iff_mem]
      rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, sub_eq_zero] at hmem
      rw [map_sub, sub_eq_zero, map_mul, map_mul, map_pow, map_pow, map_pow, map_pow, ← mul_pow,
        ← mul_pow, ← map_mul, ← map_mul, hmem]

end IntegralSection

def blockIncl (k₀ : ι) : Coord (fun _ : Unit ↦ n k₀) → Coord n := fun v ↦ ⟨k₀, v.2⟩

variable {K : Type*} [Field K] [NumberField K] {e r : ℕ}


end

end GroundTheory.Heights₂.Heights
