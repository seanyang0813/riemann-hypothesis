module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GlobWIff
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HANegRight
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.Development
public import Formalism.PeriodIntegrals.ScRefExists
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemLiftOfSteps
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalEndomorphisms.HenselRoot
public import Mathlib.RingTheory.DedekindDomain.Different
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PPAssemble
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.NatCastSmulMemL
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.ThetaA
public import Mathlib.RingTheory.DedekindDomain.Factorization
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GWGlue, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGNsmulRight, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HypsNonvacuous, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GlueHoldsVar, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemAd, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemLoc, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemTen, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemMain, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocGlob, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.SpanSmulInto, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocalAssemblyPrincipal, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.ThetaSeriesExistence, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.TargetOfWframe

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GWGlue =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GWGlue", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GlobWIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HANegRight\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S IsDedekindDomain
open scoped TensorProduct

namespace PI.ScRefExists.GWG

open PI.ScRefExists.Sk

section Lemmas

variable (I : Formalism.MainNotions.S.AutInst)

theorem hG_add_left (x y z : Fin I.n → I.E) : hG I (x + y) z = hG I x z + hG I y z := by
  unfold hG Formalism.UG.hform
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl (fun i _ => ?_)
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl (fun j _ => ?_)
  simp only [Pi.add_apply, map_add (f := _)]
  ring

theorem hG_add_right (x y z : Fin I.n → I.E) : hG I x (y + z) = hG I x y + hG I x z := by
  unfold hG Formalism.UG.hform
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl (fun i _ => ?_)
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl (fun j _ => ?_)
  simp only [Pi.add_apply]
  ring

theorem hG_zsmul_left (q : ℤ) (x y : Fin I.n → I.E) : hG I (q • x) y = (q : I.E) * hG I x y := by
  unfold hG Formalism.UG.hform
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl (fun i _ => ?_)
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl (fun j _ => ?_)
  simp only [Pi.smul_apply, zsmul_eq_mul, map_mul, map_intCast]
  ring

theorem hG_zsmul_right (q : ℤ) (x y : Fin I.n → I.E) : hG I x (q • y) = (q : I.E) * hG I x y := by
  unfold hG Formalism.UG.hform
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl (fun i _ => ?_)
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl (fun j _ => ?_)
  simp only [Pi.smul_apply, zsmul_eq_mul]
  ring

theorem hG_zero_right (x : Fin I.n → I.E) : hG I x 0 = 0 := by
  simp [hG, Formalism.UG.hform]

theorem hG_comb (q₁ q₂ : ℤ) (x₁ x₂ y₁ y₂ : Fin I.n → I.E) :
    hG I (q₁ • x₁ + q₂ • x₂) (q₁ • y₁ + q₂ • y₂) =
      (q₁ : I.E) ^ 2 * hG I x₁ y₁ + (q₁ : I.E) * (q₂ : I.E) * (hG I x₁ y₂ + hG I x₂ y₁) +
        (q₂ : I.E) ^ 2 * hG I x₂ y₂ := by
  simp only [hG_add_left, hG_add_right, hG_zsmul_left, hG_zsmul_right]
  ring

theorem hG_int {x y : Fin I.n → I.E} (hx : x ∈ I.L) (hy : y ∈ I.L) :
    hG I x y ∈ (algebraMap (𝓞 I.E) I.E).range := (I.L_dual y).mp hy x hx

theorem theta_mem (θ : 𝓞 I.E) : (θ : I.E) ∈ (algebraMap (𝓞 I.E) I.E).range := ⟨θ, rfl⟩

theorem ite_mem {p : Prop} [Decidable p] :
    (if p then (1 : I.E) else 0) ∈ (algebraMap (𝓞 I.E) I.E).range := by
  split_ifs
  · exact one_mem _
  · exact zero_mem _

theorem osmul_mem {t : I.E} (ht : t ∈ (algebraMap (𝓞 I.E) I.E).range) {v : Fin I.n → I.E}
    (hv : v ∈ I.L) : t • v ∈ I.L := by
  obtain ⟨s, rfl⟩ := ht
  rw [algebraMap_smul]
  exact I.L.smul_mem s hv

theorem crt_ge {g₁ g₂ : ℕ} {A B q₁ q₂ : ℤ} (hq₁ : q₁ = g₂ * B) (hq₂ : q₂ = g₁ * A)
    {x X₁₁ X₁₂ X₂₂ : I.E} (h₁ : GE I g₁ X₁₁) (h₂ : GE I g₂ X₂₂)
    (h₁₂ : X₁₂ ∈ (algebraMap (𝓞 I.E) I.E).range)
    (hx : x = (q₁ : I.E) ^ 2 * X₁₁ + (q₁ : I.E) * (q₂ : I.E) * X₁₂ + (q₂ : I.E) ^ 2 * X₂₂) :
    GE I (g₁ * g₂) x := by
  obtain ⟨t1, ht1⟩ := h₁
  obtain ⟨t2, ht2⟩ := h₂
  obtain ⟨s, hs⟩ := h₁₂
  have hc : ∀ u : 𝓞 I.E, (u : I.E) = algebraMap (𝓞 I.E) I.E u := fun u => rfl
  refine ⟨(g₂ : 𝓞 I.E) * (B : 𝓞 I.E) ^ 2 * t1 + (B : 𝓞 I.E) * (A : 𝓞 I.E) * s +
    (g₁ : 𝓞 I.E) * (A : 𝓞 I.E) ^ 2 * t2, ?_⟩
  rw [hx, hq₁, hq₂, ht1, ht2, ← hs]
  simp only [hc, map_add (f := _), map_mul, map_pow, map_natCast, map_intCast]
  push_cast
  try ring

theorem ge_one {x : I.E} (hx : x ∈ (algebraMap (𝓞 I.E) I.E).range) : GE I 1 x := by
  obtain ⟨s, rfl⟩ := hx
  exact ⟨s, by rw [Nat.cast_one, one_mul]⟩

def SS (r k M : ℕ) (e f : Fin r → Fin I.n → I.E) (θ : 𝓞 I.E) (z : Fin I.n → I.E)
    (b bd : Fin k → Fin I.n → I.E) : Set (Fin I.n → I.E) :=
  Set.range (fun a => M • e a) ∪ Set.range (fun a => M • f a) ∪ {z} ∪
    Set.range (fun i => (θ : I.E) • b i) ∪ Set.range (fun i => star (θ : I.E) • bd i)

theorem gL_mem (G : ℕ) {x : Fin I.n → I.E} (hx : x ∈ I.L) : (G : I.E) • x ∈ gL I G := Submodule.subset_span ⟨x, hx, rfl⟩

theorem side_mem {r k M : ℕ} (e f : Fin r → Fin I.n → I.E) (θ : 𝓞 I.E) (G ga : ℕ) (qa qb w wab : ℤ)
    (z za zb : Fin I.n → I.E) (b ba bb bd bda bdb : Fin k → Fin I.n → I.E)
    (hza : za ∈ I.L) (hzb : zb ∈ I.L)
    (hbL : ∀ i, ba i ∈ I.L ∧ bb i ∈ I.L ∧ bda i ∈ I.L ∧ bdb i ∈ I.L)
    (hsum : (qa : I.E) + (qb : I.E) = 1) (hprod : (qa : I.E) * (qb : I.E) = (G : I.E) * (wab : I.E))
    (hga : (qa : I.E) * (ga : I.E) = (G : I.E) * (w : I.E))
    (hz : z = qa • za + qb • zb) (hb : ∀ i, b i = qa • ba i + qb • bb i)
    (hbd : ∀ i, bd i = qa • bda i + qb • bdb i) {y : Fin I.n → I.E}
    (hsp : y ∈ Submodule.span (𝓞 I.E) (SS I r k M e f θ za ba bda) ⊔ gL I ga) :
    qa • y ∈ Submodule.span (𝓞 I.E) (SS I r k M e f θ z b bd) ⊔ gL I G := by
  set S' := Submodule.span (𝓞 I.E) (SS I r k M e f θ z b bd) ⊔ gL I G with hS'
  have hsp' : ∀ v ∈ SS I r k M e f θ z b bd, v ∈ S' :=
    fun v hv => Submodule.mem_sup_left (Submodule.subset_span hv)
  have hG' : ∀ x ∈ I.L, (G : I.E) • x ∈ S' := fun x hx => Submodule.mem_sup_right (gL_mem I G hx)
  have hzs : ∀ (q : ℤ) {v : Fin I.n → I.E}, v ∈ S' → q • v ∈ S' := fun q v hv => zsmul_mem hv q
  have hwab : (wab : I.E) ∈ (algebraMap (𝓞 I.E) I.E).range := ⟨(wab : 𝓞 I.E), by simp⟩
  let φ : (Fin I.n → I.E) →ₗ[𝓞 I.E] (Fin I.n → I.E) :=
    { toFun := fun v => qa • v
      map_add' := fun a c => smul_add qa a c
      map_smul' := fun c v => smul_comm qa c v }
  suffices h : Submodule.span (𝓞 I.E) (SS I r k M e f θ za ba bda) ⊔ gL I ga ≤ S'.comap φ from h hsp
  apply sup_le
  · rw [Submodule.span_le]
    intro v hv
    simp only [SS, Set.mem_union, Set.mem_range, Set.mem_singleton_iff] at hv
    show qa • v ∈ S'
    rcases hv with ((((⟨a, rfl⟩ | ⟨a, rfl⟩) | hvz) | ⟨i, rfl⟩) | ⟨i, rfl⟩)
    · exact hzs qa (hsp' _ (Or.inl (Or.inl (Or.inl (Or.inl ⟨a, rfl⟩)))))
    · exact hzs qa (hsp' _ (Or.inl (Or.inl (Or.inl (Or.inr ⟨a, rfl⟩)))))
    · rw [hvz]
      have hv : qa • za = qa • z + (G : I.E) • ((wab : I.E) • (za - zb)) := by
        ext j
        simp only [hz, Pi.add_apply, Pi.smul_apply, Pi.sub_apply, Pi.mul_apply, Pi.intCast_apply, zsmul_eq_mul, smul_eq_mul]
        linear_combination (za j - zb j) * hprod - ((qa : I.E) * za j) * hsum
      rw [hv]
      exact S'.add_mem (hzs qa (hsp' z (Or.inl (Or.inl (Or.inr rfl)))))
        (hG' _ (osmul_mem I hwab (I.L.sub_mem hza hzb)))
    · have hv : qa • ((θ : I.E) • ba i) = qa • ((θ : I.E) • b i) +
          (G : I.E) • ((wab : I.E) • ((θ : I.E) • (ba i - bb i))) := by
        ext j
        simp only [hb, Pi.add_apply, Pi.smul_apply, Pi.sub_apply, Pi.mul_apply, Pi.intCast_apply, zsmul_eq_mul, smul_eq_mul]
        linear_combination (θ : I.E) * (ba i j - bb i j) * hprod - ((θ : I.E) * (qa : I.E) * ba i j) * hsum
      rw [hv]
      exact S'.add_mem (hzs qa (hsp' _ (Or.inl (Or.inr ⟨i, rfl⟩))))
        (hG' _ (osmul_mem I hwab (osmul_mem I (theta_mem I θ) (I.L.sub_mem (hbL i).1 (hbL i).2.1))))
    · have hv : qa • (star (θ : I.E) • bda i) = qa • (star (θ : I.E) • bd i) +
          (G : I.E) • ((wab : I.E) • (star (θ : I.E) • (bda i - bdb i))) := by
        ext j
        simp only [hbd, Pi.add_apply, Pi.smul_apply, Pi.sub_apply, Pi.mul_apply, Pi.intCast_apply, zsmul_eq_mul, smul_eq_mul]
        linear_combination star (θ : I.E) * (bda i j - bdb i j) * hprod -
          (star (θ : I.E) * (qa : I.E) * bda i j) * hsum
      rw [hv]
      exact S'.add_mem (hzs qa (hsp' _ (Or.inr ⟨i, rfl⟩)))
        (hG' _ (osmul_mem I hwab (osmul_mem I (_root_.PI.ScRefExists.GlueA.star_int I θ)
          (I.L.sub_mem (hbL i).2.2.1 (hbL i).2.2.2))))
  · rw [gL, Submodule.span_le]
    rintro v ⟨x, hx, rfl⟩
    show qa • ((ga : I.E) • x) ∈ S'
    have hv : qa • ((ga : I.E) • x) = (G : I.E) • ((w : I.E) • x) := by
      ext j
      simp only [Pi.smul_apply, zsmul_eq_mul, smul_eq_mul]
      linear_combination (x j) * hga
    rw [hv]
    exact hG' _ (osmul_mem I ⟨(w : 𝓞 I.E), by simp⟩ hx)

end Lemmas

theorem chinese_remainder_gluing : GWcrt := by
  intro I g₁ g₂ r k θ e f M hcop _ hC1 hC2
  obtain ⟨A, B, hAB⟩ := Nat.isCoprime_iff_coprime.mpr hcop
  obtain ⟨za, ba, bda, hza, hbaL, hoza, hoba, hGa, hTa, hTTa, hspa⟩ := hC1
  obtain ⟨zb, bb, bdb, hzb, hbbL, hozb, hobb, hGb, hTb, hTTb, hspb⟩ := hC2
  set qa : ℤ := (g₂ : ℤ) * B with hqa
  set qb : ℤ := (g₁ : ℤ) * A with hqb
  have hsumZ : qa + qb = 1 := by rw [hqa, hqb]; linarith
  have hsum : (qa : I.E) + (qb : I.E) = 1 := by exact_mod_cast hsumZ
  have hprod : (qa : I.E) * (qb : I.E) = ((g₁ * g₂ : ℕ) : I.E) * ((A * B : ℤ) : I.E) := by
    rw [hqa, hqb]; push_cast; ring
  have hga : (qa : I.E) * (g₁ : I.E) = ((g₁ * g₂ : ℕ) : I.E) * (B : I.E) := by
    rw [hqa]; push_cast; ring
  have hgb : (qb : I.E) * (g₂ : I.E) = ((g₁ * g₂ : ℕ) : I.E) * (A : I.E) := by
    rw [hqb]; push_cast; ring
  have hsum' : (qb : I.E) + (qa : I.E) = 1 := by rw [add_comm]; exact hsum
  have hprod' : (qb : I.E) * (qa : I.E) = ((g₁ * g₂ : ℕ) : I.E) * ((A * B : ℤ) : I.E) := by
    rw [mul_comm]; exact hprod
  have two_mem : (2 : I.E) ∈ (algebraMap (𝓞 I.E) I.E).range := ⟨2, map_ofNat _ 2⟩
  refine ⟨qa • za + qb • zb, fun i => qa • ba i + qb • bb i, fun i => qa • bda i + qb • bdb i,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact I.L.add_mem (zsmul_mem hza qa) (zsmul_mem hzb qb)
  · exact fun i => ⟨I.L.add_mem (zsmul_mem (hbaL i).1 qa) (zsmul_mem (hbbL i).1 qb),
      I.L.add_mem (zsmul_mem (hbaL i).2 qa) (zsmul_mem (hbbL i).2 qb)⟩
  · intro a
    obtain ⟨h1, h2⟩ := hoza a
    obtain ⟨h3, h4⟩ := hozb a
    constructor <;> simp only [hG_add_right, hG_zsmul_right, h1, h2, h3, h4, mul_zero, add_zero]
  · intro a i
    obtain ⟨h1, h2, h3, h4⟩ := hoba a i
    obtain ⟨h5, h6, h7, h8⟩ := hobb a i
    refine ⟨?_, ?_, ?_, ?_⟩ <;>
      simp only [hG_add_right, hG_zsmul_right, h1, h2, h3, h4, h5, h6, h7, h8, mul_zero, add_zero]
  · refine crt_ge I hqa hqb hGa hGb
      (add_mem (add_mem (hG_int I hza hzb) (hG_int I hzb hza)) two_mem) ?_
    rw [hG_comb]
    linear_combination (-((qa : I.E) + qb + 1)) * hsum
  · intro i
    constructor
    · refine crt_ge I hqa hqb (hTa i).1 (hTb i).1
        (mul_mem (theta_mem I θ) (add_mem (hG_int I hza (hbbL i).1) (hG_int I hzb (hbaL i).1))) ?_
      beta_reduce
      rw [hG_comb]
      ring
    · refine crt_ge I hqa hqb (hTa i).2 (hTb i).2
        (mul_mem (_root_.PI.ScRefExists.GlueA.star_int I θ)
          (add_mem (hG_int I hza (hbbL i).2) (hG_int I hzb (hbaL i).2))) ?_
      beta_reduce
      rw [hG_comb]
      ring
  · intro i j
    refine crt_ge I hqa hqb (hTTa i j) (hTTb i j)
      (mul_mem (theta_mem I θ) (sub_mem (add_mem (hG_int I (hbaL i).2 (hbbL j).1)
        (hG_int I (hbbL i).2 (hbaL j).1)) (mul_mem two_mem (ite_mem I (p := i = j))))) ?_
    beta_reduce
    rw [hG_comb]
    linear_combination ((θ : I.E) * (if i = j then (1 : I.E) else 0) * ((qa : I.E) + qb + 1)) * hsum
  · intro y hy
    have h1 := side_mem I e f θ (g₁ * g₂) g₁ qa qb B (A * B) (qa • za + qb • zb) za zb
      (fun i => qa • ba i + qb • bb i) ba bb (fun i => qa • bda i + qb • bdb i) bda bdb hza hzb
      (fun i => ⟨(hbaL i).1, (hbbL i).1, (hbaL i).2, (hbbL i).2⟩) hsum hprod hga rfl
      (fun i => rfl) (fun i => rfl) (hspa y hy)
    have h2 := side_mem I e f θ (g₁ * g₂) g₂ qb qa A (A * B) (qa • za + qb • zb) zb za
      (fun i => qa • ba i + qb • bb i) bb ba (fun i => qa • bda i + qb • bdb i) bdb bda hzb hza
      (fun i => ⟨(hbbL i).1, (hbaL i).1, (hbbL i).2, (hbaL i).2⟩) hsum' hprod' hgb (add_comm _ _)
      (fun i => add_comm _ _) (fun i => add_comm _ _) (hspb y hy)
    have hy' : y = qa • y + qb • y := by rw [← add_smul, hsumZ, one_smul]
    rw [hy']
    exact add_mem h1 h2

theorem hyp_dvd {I : Formalism.MainNotions.S.AutInst} {g g' r k : ℕ} {θ : 𝓞 I.E} {e f : Fin r → Fin I.n → I.E} {M : ℕ}
    (h : Hyp I g r k θ e f M) (hd : g' ∣ g) (h1 : 1 ≤ g') : Hyp I g' r k θ e f M := by
  obtain ⟨c, rfl⟩ := hd
  have hc : ∀ u : 𝓞 I.E, (u : I.E) = algebraMap (𝓞 I.E) I.E u := fun u => rfl
  have hGE : ∀ x, GE I (g' * c) x → GE I g' x := by
    rintro x ⟨t, rfl⟩
    refine ⟨(c : 𝓞 I.E) * t, ?_⟩
    simp only [hc, map_mul, map_natCast]
    push_cast
    ring
  obtain ⟨_, hS, hT, hn, he, hf, hef, hM, hL⟩ := h
  refine ⟨h1, ?_, ⟨hGE _ hT.1, hGE _ hT.2.1, hGE _ hT.2.2⟩, hn, he, hf, hef,
    Nat.Coprime.coprime_dvd_right (Dvd.intro c rfl) hM, hL⟩
  intro v hv
  apply hS v
  rw [Nat.cast_mul]
  exact v.asIdeal.mul_mem_right _ hv

theorem concl_one (I : Formalism.MainNotions.S.AutInst) (r k : ℕ) (θ : 𝓞 I.E) (e f : Fin r → Fin I.n → I.E) (M : ℕ) :
    Concl I 1 r k θ e f M := by
  have hz0 : ∀ x : Fin I.n → I.E, hG I x 0 = 0 := hG_zero_right I
  refine ⟨0, fun _ => 0, fun _ => 0, I.L.zero_mem, fun _ => ⟨I.L.zero_mem, I.L.zero_mem⟩,
    fun a => ⟨hz0 _, hz0 _⟩, fun a i => ⟨hz0 _, hz0 _, hz0 _, hz0 _⟩, ?_, ?_, ?_, ?_⟩
  · rw [hz0, zero_add]; exact ge_one I (one_mem _)
  · intro i
    simp only [hz0, mul_zero]
    exact ⟨ge_one I (zero_mem _), ge_one I (zero_mem _)⟩
  · intro i j
    exact ge_one I (mul_mem (theta_mem I θ) (sub_mem (by rw [hz0]; exact zero_mem _) (ite_mem I (p := i = j))))
  · intro y hy
    apply Submodule.mem_sup_right
    have := gL_mem I 1 hy
    rwa [Nat.cast_one, one_smul] at this

theorem globW_of (h1 : GWpp) (h2 : GWcrt) : GlobW := by
  have key : ∀ (I : Formalism.MainNotions.S.AutInst) (r k : ℕ) (θ : 𝓞 I.E) (e f : Fin r → Fin I.n → I.E) (M : ℕ)
      (g : ℕ), Hyp I g r k θ e f M → Concl I g r k θ e f M := by
    intro I r k θ e f M g
    induction g using Nat.recOnPosPrimePosCoprime with
    | prime_pow p n hp hn => exact h1 I p n r k θ e f M hp hn
    | zero => intro h; exact absurd h.1 (by norm_num)
    | one => intro _; exact concl_one I r k θ e f M
    | coprime a b ha hb hab iha ihb =>
      intro h
      exact h2 I a b r k θ e f M hab h (iha (hyp_dvd h (Dvd.intro b rfl) (by omega)))
        (ihb (hyp_dvd h (Dvd.intro_left a rfl) (by omega)))
  intro I g r k θ e f M hg hS hT hn he hf hef hM hL
  exact key I r k θ e f M g ⟨hg, hS, hT, hn, he, hf, hef, hM, hL⟩

end PI.ScRefExists.GWG

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GWGlue =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGNsmulRight =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGNsmulRight", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HANegRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S
open scoped TensorProduct

namespace PI.ScRefExists.GlueB

open PI.ScRefExists PI.ScRefExists.GlueA PI.ScRefExists.Sk

section Lemmas

variable (I : Formalism.MainNotions.S.AutInst) (g : ℕ)

theorem zmod_zero : ZMod' I g 0 := ⟨0, zero_mem _, by simp⟩

theorem zmod_of_GE {x : I.E} (h : GE I g x) : ZMod' I g (Formalism.UG.inclE (F := I.F) (Af I.F) x) := by
  obtain ⟨t, rfl⟩ := h
  exact ⟨Formalism.UG.inclE (F := I.F) (Af I.F) (t : I.E), inclE_mem' I t, by rw [map_mul, map_natCast]⟩

theorem zmod_add {x y : I.E ⊗[I.F] Af I.F} (h1 : ZMod' I g x) (h2 : ZMod' I g y) :
    ZMod' I g (x + y) := by
  obtain ⟨a, ha, rfl⟩ := h1
  obtain ⟨b, hb, rfl⟩ := h2
  exact ⟨a + b, add_mem ha hb, (mul_add _ _ _).symm⟩

theorem zmod_mul_int {x y : I.E ⊗[I.F] Af I.F} (h : ZMod' I g x) (hy : y ∈ IntAf I.F I.E) :
    ZMod' I g (x * y) := by
  obtain ⟨a, ha, rfl⟩ := h
  exact ⟨a * y, mul_mem ha hy, mul_assoc _ _ _⟩

theorem zmod_eps {ε : I.E ⊗[I.F] Af I.F} {θ : I.E}
    (hε : ZMod' I g (ε - Formalism.UG.inclE (F := I.F) (Af I.F) θ)) {x : I.E}
    (hx : x ∈ (algebraMap (𝓞 I.E) I.E).range) (h : GE I g (θ * x)) :
    ZMod' I g (ε * Formalism.UG.inclE (F := I.F) (Af I.F) x) := by
  obtain ⟨s, rfl⟩ := hx
  have h1 := zmod_mul_int I g hε (inclE_mem' I s)
  have h2 := zmod_add I g h1 (zmod_of_GE I g h)
  convert h2 using 1
  rw [map_mul]
  have e : algebraMap (𝓞 I.E) I.E s = (s : I.E) := rfl
  rw [e]
  ring

theorem zmod_sig {ε : I.E ⊗[I.F] Af I.F} {θ : I.E}
    (hε : ZMod' I g (ε - Formalism.UG.inclE (F := I.F) (Af I.F) θ)) :
    ZMod' I g (sigA I ε - Formalism.UG.inclE (F := I.F) (Af I.F) (star θ)) := by
  obtain ⟨t, ht, he⟩ := hε
  have hinc : ∀ a : I.E, sigA I (Formalism.UG.inclE (F := I.F) (Af I.F) a) =
      Formalism.UG.inclE (F := I.F) (Af I.F) (star a) := by
    intro a
    show (Algebra.TensorProduct.map I.cm.sig (AlgHom.id I.F (Af I.F))) (a ⊗ₜ[I.F] (1 : Af I.F)) =
      (star a) ⊗ₜ[I.F] (1 : Af I.F)
    rw [Algebra.TensorProduct.map_tmul]
    rfl
  have hcl : Subring.closure (Set.range (fun x : Formalism.UG.intOE I.E => (x : I.E) ⊗ₜ[I.F] (1 : Af I.F)) ∪
      Set.range (fun y : Formalism.UG.intAd I.F => (1 : I.E) ⊗ₜ[I.F] (y : Af I.F))) ≤
      (IntAf I.F I.E).comap (sigA I) := by
    rw [Subring.closure_le]
    rintro _ (⟨⟨s, hs⟩, rfl⟩ | ⟨⟨y, hy⟩, rfl⟩)
    · obtain ⟨s', rfl⟩ := hs
      show sigA I (Formalism.UG.inclE (F := I.F) (Af I.F) (algebraMap (𝓞 I.E) I.E s')) ∈ IntAf I.F I.E
      rw [hinc]
      have hi : IsIntegral ℤ (star (algebraMap (𝓞 I.E) I.E s')) :=
        IsIntegral.map (starRingEnd I.E).toIntAlgHom (NumberField.RingOfIntegers.isIntegral_coe s')
      exact inclE_mem' I ⟨_, hi⟩
    · show (Algebra.TensorProduct.map I.cm.sig (AlgHom.id I.F (Af I.F))) ((1 : I.E) ⊗ₜ[I.F] (y : Af I.F)) ∈
        IntAf I.F I.E
      rw [Algebra.TensorProduct.map_tmul, map_one, AlgHom.id_apply]
      exact Subring.subset_closure (Or.inr ⟨⟨y, hy⟩, rfl⟩)
  refine ⟨sigA I t, hcl ht, ?_⟩
  rw [← hinc, ← map_sub, he, map_mul, map_natCast]

theorem hG_nsmul_left (m : ℕ) (x y : Fin I.n → I.E) :
    Formalism.UG.hform (starRingEnd I.E) I.J (m • x) y = (m : I.E) * Formalism.UG.hform (starRingEnd I.E) I.J x y := by
  simp only [Formalism.UG.hform, Pi.smul_apply, nsmul_eq_mul, map_mul, map_natCast, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem hG_nsmul_right (m : ℕ) (x y : Fin I.n → I.E) :
    Formalism.UG.hform (starRingEnd I.E) I.J x (m • y) = (m : I.E) * Formalism.UG.hform (starRingEnd I.E) I.J x y := by
  simp only [Formalism.UG.hform, Pi.smul_apply, nsmul_eq_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem mem_mL {x : VA I} (hx : x ∈ I.Lf) : ((g : ℕ) : I.E ⊗[I.F] Af I.F) • x ∈ mL I g :=
  Submodule.subset_span ⟨x, hx, rfl⟩

theorem incl_osmul (c : 𝓞 I.E) (x : Fin I.n → I.E) :
    incl I (c • x) = (⟨Formalism.UG.inclE (F := I.F) (Af I.F) (c : I.E), inclE_mem' I c⟩ : IntAf I.F I.E) •
      incl I x := by
  funext i
  simp only [incl, Pi.smul_apply, Algebra.smul_def, map_mul]
  rfl

theorem mem_L_of (h3 : LocGlob) {x : Fin I.n → I.E} (hx : incl I x ∈ I.Lf) : x ∈ I.L := by
  refine (I.L_dual x).mpr fun y hy => ?_
  let H : VA I → I.E ⊗[I.F] Af I.F := fun v =>
    ∑ i, ∑ j, Formalism.UG.inclE (F := I.F) (Af I.F) (starRingEnd I.E (y i) * I.J i j) * v j
  have hinc : ∀ z : Fin I.n → I.E, H (incl I z) =
      Formalism.UG.inclE (F := I.F) (Af I.F) (Formalism.UG.hform (starRingEnd I.E) I.J y z) := by
    intro z

    simp only [H, incl, Formalism.UG.hform, map_sum, map_mul]
  have key : ∀ v ∈ I.Lf, H v ∈ IntAf I.F I.E := by
    intro v hv
    change v ∈ Submodule.span _ _ at hv
    induction hv using Submodule.span_induction with
    | mem v hv =>
      obtain ⟨z, rfl⟩ := hv
      change H (incl I (z : Fin I.n → I.E)) ∈ IntAf I.F I.E
      obtain ⟨s, hs⟩ := (I.L_dual z).mp z.2 y hy
      rw [hinc, ← hs]
      exact inclE_mem' I s
    | zero => simp [H]
    | add a b _ _ ha hb =>
      have e : H (a + b) = H a + H b := by
        simp only [H, Pi.add_apply, mul_add, Finset.sum_add_distrib]
      rw [e]
      exact add_mem ha hb
    | smul a v _ hv =>
      have e : H (a • v) = (a : I.E ⊗[I.F] Af I.F) * H v := by
        simp only [H, Pi.smul_apply, Subring.smul_def, smul_eq_mul, Finset.mul_sum]
        refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
        ring
      rw [e]
      exact mul_mem a.2 hv
  have hm := key _ hx
  rw [hinc x] at hm
  obtain ⟨s, hs⟩ := h3 I _ hm
  exact ⟨s, hs⟩

theorem incl_nsmul' (m : ℕ) (x : Fin I.n → I.E) : incl I (m • x) = m • incl I x := by
  funext i
  simp only [incl, Pi.smul_apply, map_nsmul]

theorem ge_of_nat {x : I.E} (m : ℕ) (h : x = (g : I.E) * (m : I.E)) : GE I g x :=
  ⟨(m : 𝓞 I.E), by rw [h]; exact congrArg _ (map_natCast (algebraMap (𝓞 I.E) I.E) m).symm⟩

end Lemmas

end PI.ScRefExists.GlueB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGNsmulRight =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HypsNonvacuous =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HypsNonvacuous", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScRefExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S
open scoped TensorProduct

namespace PI.ScRefExists.UnitaryGroupMassFormula

variable (I : Formalism.MainNotions.S.AutInst)

theorem hA_zero_left (y : VA I) : hA I 0 y = 0 := by
  simp [hA, Formalism.UG.hform]

theorem zmod_one_of_mem {c : I.E ⊗[I.F] Af I.F} (h : c ∈ IntAf I.F I.E) : ZMod' I 1 c := by
  unfold ZMod'
  exact ⟨c, h, by simp⟩

theorem mL_one : mL I 1 = I.Lf := by
  unfold mL
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro y ⟨x, hx, rfl⟩
    simpa using hx
  · intro x hx
    exact Submodule.subset_span ⟨x, hx, by simp⟩

theorem ite_mem_int {p : Prop} [Decidable p] (x : I.E ⊗[I.F] Af I.F) (hx : x ∈ IntAf I.F I.E) :
    (if p then x else 0) ∈ IntAf I.F I.E := by
  split_ifs
  · exact hx
  · exact zero_mem _

def frameOne (r k : ℕ) (e f : Fin r → Fin I.n → I.E)
    (he : ∀ a, InAt I 1 1 (incl I (e a)) ∧ InAt I 1 1 (incl I (f a))) : RefData I 1 r k e f where
  e0 := fun _ => 0
  f0 := fun _ => 0
  z0 := 0
  bw := fun _ => 0
  bwd := fun _ => 0
  ew := 0
  vectorsInLattice := ⟨fun _ => ⟨zero_mem _, zero_mem _⟩, zero_mem _, fun _ => ⟨zero_mem _, zero_mem _⟩⟩
  basisApprox := by
    intro a
    constructor
    · obtain ⟨c, hc, hm⟩ := (he a).1
      exact ⟨c, hc, by rw [zero_sub, smul_neg]; exact neg_mem hm⟩
    · obtain ⟨c, hc, hm⟩ := (he a).2
      exact ⟨c, hc, by rw [zero_sub, smul_neg]; exact neg_mem hm⟩
  gramIntegral := by
    intro a b
    refine ⟨zmod_one_of_mem I ?_, zmod_one_of_mem I ?_, zmod_one_of_mem I ?_⟩
    · rw [hA_zero_left]; exact zero_mem _
    · rw [hA_zero_left]; exact zero_mem _
    · rw [hA_zero_left, zero_sub]; exact neg_mem (ite_mem_int I 1 (one_mem _))
  formsAtZero := by
    refine ⟨zmod_one_of_mem I ?_, fun a => ⟨zmod_one_of_mem I ?_, zmod_one_of_mem I ?_⟩⟩
    · rw [hA_zero_left, zero_add]; exact one_mem _
    · rw [hA_zero_left]; exact zero_mem _
    · rw [hA_zero_left]; exact zero_mem _
  weightVectorsIntegral := by
    intro i
    refine ⟨zmod_one_of_mem I ?_, zmod_one_of_mem I ?_, fun a => ⟨zmod_one_of_mem I ?_,
      zmod_one_of_mem I ?_, zmod_one_of_mem I ?_, zmod_one_of_mem I ?_⟩⟩ <;>
      (rw [hA_zero_left]; exact zero_mem _)
  ew_idem := by simp
  ew_orth := by simp
  ew_int := zero_mem _
  ew_full := by
    intro y hy
    rw [map_zero, sub_zero, sub_zero, one_smul, mL_one]
    exact hy
  bw_w := fun _ => by simp
  bwd_w := fun _ => by simp
  bw_dual := by
    intro i j
    apply zmod_one_of_mem
    rw [hA_zero_left, zero_sub]
    exact neg_mem (ite_mem_int I 0 (zero_mem _))
  latticeSpan := by
    intro y hy
    apply Submodule.mem_sup_right
    rw [mL_one]
    exact hy

theorem refData_one (r k : ℕ) (e f : Fin r → Fin I.n → I.E)
    (he : ∀ a, InAt I 1 1 (incl I (e a)) ∧ InAt I 1 1 (incl I (f a))) :
    Nonempty (RefData I 1 r k e f) := ⟨frameOne I r k e f he⟩

def TargetTwo : Prop :=
  ∀ (I : Formalism.MainNotions.S.AutInst) (g r k : ℕ) (e f : Fin r → Fin I.n → I.E), 2 ≤ g →
    (∀ v : IsDedekindDomain.HeightOneSpectrum (𝓞 I.F), (g : 𝓞 I.F) ∈ v.asIdeal →
      Nat.card {w : IsDedekindDomain.HeightOneSpectrum (𝓞 I.E) //
        w.asIdeal.comap (algebraMap (𝓞 I.F) (𝓞 I.E)) = v.asIdeal} = 2) →
    I.n = 2 * r + k + 1 →
    (∀ a b, Formalism.UG.hform (starRingEnd I.E) I.J (e a) (e b) = 0) →
    (∀ a b, Formalism.UG.hform (starRingEnd I.E) I.J (f a) (f b) = 0) →
    (∀ a b, Formalism.UG.hform (starRingEnd I.E) I.J (e a) (f b) = if a = b then 1 else 0) →
    (∀ a, InAt I g 1 (incl I (e a)) ∧ InAt I g 1 (incl I (f a))) →
    Nonempty (RefData I g r k e f)

theorem target_of_two (h : TargetTwo) : Target := by
  unfold TargetTwo at h
  unfold Target
  intro J g r k e f hg hs hn he hf hef hin
  rcases Nat.lt_or_ge g 2 with hlt | hge
  · obtain rfl : g = 1 := by omega
    exact refData_one J r k e f hin
  · exact h J g r k e f hge hs hn he hf hef hin

end PI.ScRefExists.UnitaryGroupMassFormula

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HypsNonvacuous =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GlueHoldsVar =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GlueHoldsVar", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGNsmulRight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HypsNonvacuous\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HANegRight\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S
open scoped TensorProduct

namespace PI.ScRefExists.GlueC

open PI.ScRefExists PI.ScRefExists.GlueA PI.ScRefExists.GlueB PI.ScRefExists.Sk

theorem glue_holds_var : Glue := by
  intro h1 h2 h3 h4
  apply PI.ScRefExists.UnitaryGroupMassFormula.target_of_two
  intro I g r k e f hg hs hn he hf hef hi
  have hg1 : 1 ≤ g := by omega
  have hc : ∀ x : Fin I.n → I.E, InAt I g 1 (incl I x) → ∃ c : ℕ, Nat.Coprime c g ∧ c • x ∈ I.L := by
    rintro x ⟨c, hcg, hm⟩
    refine ⟨c, hcg, mem_L_of I h3 ?_⟩
    rw [incl_nsmul, ← PI.ScRefExists.UnitaryGroupMassFormula.mL_one]
    exact hm
  choose ce hce hceL using fun a => hc (e a) (hi a).1
  choose cf hcf hcfL using fun a => hc (f a) (hi a).2
  obtain ⟨M, hM, hMef⟩ : ∃ M : ℕ, Nat.Coprime M g ∧ ∀ a, M • e a ∈ I.L ∧ M • f a ∈ I.L := by
    refine ⟨∏ a, ce a * cf a, Nat.coprime_prod_left_iff.2 (fun a _ => Nat.Coprime.mul_left (hce a) (hcf a)),
      fun a => ?_⟩
    obtain ⟨d, hd⟩ : ce a * cf a ∣ ∏ a, ce a * cf a := Finset.dvd_prod_of_mem _ (Finset.mem_univ a)
    constructor
    · rw [hd, show ce a * cf a * d = (cf a * d) * ce a by ring, mul_smul]
      exact nsmul_mem (hceL a) _
    · rw [hd, show ce a * cf a * d = (ce a * d) * cf a by ring, mul_smul]
      exact nsmul_mem (hcfL a) _
  obtain ⟨Q, -, hQ⟩ := Nat.exists_mul_mod_eq_one_of_coprime hM (by omega : 1 < g)
  obtain ⟨s, hN⟩ : ∃ s : ℕ, M * Q = 1 + g * s :=
    ⟨M * Q / g, by have := Nat.div_add_mod (M * Q) g; rw [hQ] at this; linarith⟩
  have hNE : (M : I.E) * (Q : I.E) = 1 + (g : I.E) * (s : I.E) := by exact_mod_cast hN
  obtain ⟨θ, hθ⟩ := h1 I g hg1 hs
  obtain ⟨ε, hεi, hεe, hεo, hεθ⟩ := h2 I g θ hg1 hs hθ
  obtain ⟨z, b, bd, hz, hb, hez, heb, hzz, hzb, hbb, hspan⟩ :=
    h4 I g r k θ e f M hg1 hs hθ hn he hf hef hM hMef
  simp only [Sk.hG] at hez heb hzz hzb hbb
  obtain ⟨t, ht, hεt⟩ := id hεθ
  obtain ⟨t', ht', hσt⟩ := zmod_sig I g hεθ
  refine ⟨{
    e0 := fun a => incl I (Q • M • e a)
    f0 := fun a => incl I (Q • M • f a)
    z0 := incl I z
    bw := fun i => ε • incl I (b i)
    bwd := fun i => sigA I ε • incl I (bd i)
    ew := ε
    vectorsInLattice := ?_
    basisApprox := ?_
    gramIntegral := ?_
    formsAtZero := ?_
    weightVectorsIntegral := ?_
    ew_idem := hεe
    ew_orth := hεo
    ew_int := hεi
    ew_full := ?_
    bw_w := ?_
    bwd_w := ?_
    bw_dual := ?_
    latticeSpan := ?_ }⟩
  · exact ⟨fun a => ⟨incl_mem_Lf I (nsmul_mem (hMef a).1 Q), incl_mem_Lf I (nsmul_mem (hMef a).2 Q)⟩,
      incl_mem_Lf I hz, fun i => ⟨smul_mem_Lf I hεi (incl_mem_Lf I (hb i).1),
        smul_mem_Lf I (sigA_mem I hεi) (incl_mem_Lf I (hb i).2)⟩⟩
  · intro a
    have key : ∀ x : Fin I.n → I.E, M • x ∈ I.L → InAt I g g (incl I (Q • M • x) - incl I x) := by
      intro x hx
      refine ⟨M, hM, ?_⟩
      have h' : ((M : ℕ) : I.E ⊗[I.F] Af I.F) • (incl I (Q • M • x) - incl I x) =
          ((g : ℕ) : I.E ⊗[I.F] Af I.F) • incl I (s • M • x) := by
        rw [← incl_sub, ← incl_nsmul, ← incl_nsmul]
        congr 1
        funext i
        simp only [Pi.smul_apply, Pi.sub_apply, nsmul_eq_mul, Pi.mul_apply, Pi.natCast_apply]
        linear_combination ((M : I.E) * x i) * hNE
      rw [h']
      exact mem_mL I g (incl_mem_Lf I (nsmul_mem hx s))
    exact ⟨key _ (hMef a).1, key _ (hMef a).2⟩
  · intro a b'
    refine ⟨?_, ?_, ?_⟩
    · show ZMod' I g (hA I (incl I (Q • M • e a)) (incl I (Q • M • e b')))
      rw [hA_incl]
      simp only [hG_nsmul_left, hG_nsmul_right, he a b', mul_zero, map_zero]
      exact zmod_zero I g
    · show ZMod' I g (hA I (incl I (Q • M • f a)) (incl I (Q • M • f b')))
      rw [hA_incl]
      simp only [hG_nsmul_left, hG_nsmul_right, hf a b', mul_zero, map_zero]
      exact zmod_zero I g
    · show ZMod' I g (hA I (incl I (Q • M • e a)) (incl I (Q • M • f b')) - if a = b' then 1 else 0)
      rw [hA_incl]
      simp only [hG_nsmul_left, hG_nsmul_right, hef a b']
      split_ifs with hab
      · rw [mul_one, ← map_one (Formalism.UG.inclE (F := I.F) (Af I.F)), ← map_sub]
        apply zmod_of_GE
        apply ge_of_nat I g (s * (M * Q + 1))
        push_cast
        linear_combination ((M : I.E) * (Q : I.E) + 1) * hNE
      · simp only [mul_zero, map_zero, sub_zero]
        exact zmod_zero I g
  · refine ⟨?_, fun a => ⟨?_, ?_⟩⟩
    · show ZMod' I g (hA I (incl I z) (incl I z) + 1)
      rw [hA_incl, ← map_one (Formalism.UG.inclE (F := I.F) (Af I.F)), ← map_add (f := _)]
      exact zmod_of_GE I g hzz
    · show ZMod' I g (hA I (incl I (Q • M • e a)) (incl I z))
      rw [hA_incl]
      simp only [hG_nsmul_left, (hez a).1, mul_zero, map_zero]
      exact zmod_zero I g
    · show ZMod' I g (hA I (incl I (Q • M • f a)) (incl I z))
      rw [hA_incl]
      simp only [hG_nsmul_left, (hez a).2, mul_zero, map_zero]
      exact zmod_zero I g
  · intro i
    refine ⟨?_, ?_, fun a => ⟨?_, ?_, ?_, ?_⟩⟩
    · show ZMod' I g (hA I (incl I z) (ε • incl I (b i)))
      rw [hA_smul_right, hA_incl]
      exact zmod_eps I g hεθ (hG_int I hz (hb i).1) (hzb i).1
    · show ZMod' I g (hA I (incl I z) (sigA I ε • incl I (bd i)))
      rw [hA_smul_right, hA_incl]
      exact zmod_eps I g (zmod_sig I g hεθ) (hG_int I hz (hb i).2) (hzb i).2
    · show ZMod' I g (hA I (incl I (Q • M • e a)) (ε • incl I (b i)))
      rw [hA_smul_right, hA_incl]
      simp only [hG_nsmul_left, (heb a i).1, mul_zero, map_zero]
      exact zmod_zero I g
    · show ZMod' I g (hA I (incl I (Q • M • f a)) (ε • incl I (b i)))
      rw [hA_smul_right, hA_incl]
      simp only [hG_nsmul_left, (heb a i).2.1, mul_zero, map_zero]
      exact zmod_zero I g
    · show ZMod' I g (hA I (incl I (Q • M • e a)) (sigA I ε • incl I (bd i)))
      rw [hA_smul_right, hA_incl]
      simp only [hG_nsmul_left, (heb a i).2.2.1, mul_zero, map_zero]
      exact zmod_zero I g
    · show ZMod' I g (hA I (incl I (Q • M • f a)) (sigA I ε • incl I (bd i)))
      rw [hA_smul_right, hA_incl]
      simp only [hG_nsmul_left, (heb a i).2.2.2, mul_zero, map_zero]
      exact zmod_zero I g
  · intro y hy
    obtain ⟨u, hu⟩ := hθ.2.2
    have e1 : 1 - ε - sigA I ε = ((g : ℕ) : I.E ⊗[I.F] Af I.F) *
        (Formalism.UG.inclE (F := I.F) (Af I.F) (u : I.E) - t - t') := by
      have hu' := congrArg (Formalism.UG.inclE (F := I.F) (Af I.F)) hu
      rw [map_sub, map_sub, map_one, map_mul, map_natCast] at hu'
      linear_combination hu' - hεt - hσt
    rw [e1, mul_smul]
    exact mem_mL I g (smul_mem_Lf I (sub_mem (sub_mem (inclE_mem' I u) ht) ht') hy)
  · intro i
    show ε • incl I (b i) = ε • ε • incl I (b i)
    rw [smul_smul, hεe]
  · intro i
    show sigA I ε • incl I (bd i) = sigA I ε • sigA I ε • incl I (bd i)
    rw [smul_smul, ← map_mul, hεe]
  · intro i j
    show ZMod' I g (hA I (sigA I ε • incl I (bd i)) (ε • incl I (b j)) - if i = j then ε else 0)
    rw [hA_smul_left, hA_smul_right, sigA_sigA, hA_incl]
    have e2 : ε * (ε * Formalism.UG.inclE (F := I.F) (Af I.F) (Formalism.UG.hform (starRingEnd I.E) I.J (bd i) (b j))) -
        (if i = j then ε else 0) = ε * Formalism.UG.inclE (F := I.F) (Af I.F)
          (Formalism.UG.hform (starRingEnd I.E) I.J (bd i) (b j) - if i = j then 1 else 0) := by
      split_ifs
      · rw [map_sub, map_one, ← mul_assoc, hεe]; ring
      · rw [sub_zero, sub_zero, ← mul_assoc, hεe]
    rw [e2]
    refine zmod_eps I g hεθ (sub_mem (hG_int I (hb i).2 (hb j).1) ?_) (hbb i j)
    split_ifs
    · exact one_mem _
    · exact zero_mem _
  · intro y hy
    let S : Set (VA I) := Set.range (fun a => incl I (Q • M • e a)) ∪
      Set.range (fun a => incl I (Q • M • f a)) ∪ {incl I z} ∪ Set.range (fun i => ε • incl I (b i)) ∪
      Set.range (fun i => sigA I ε • incl I (bd i))
    show y ∈ Submodule.span (IntAf I.F I.E) S ⊔ mL I g
    have hSe : ∀ a, incl I (Q • M • e a) ∈ Submodule.span (IntAf I.F I.E) S ⊔ mL I g := fun a =>
      Submodule.mem_sup_left (Submodule.subset_span (Or.inl (Or.inl (Or.inl (Or.inl ⟨a, rfl⟩)))))
    have hSf : ∀ a, incl I (Q • M • f a) ∈ Submodule.span (IntAf I.F I.E) S ⊔ mL I g := fun a =>
      Submodule.mem_sup_left (Submodule.subset_span (Or.inl (Or.inl (Or.inl (Or.inr ⟨a, rfl⟩)))))
    have hSz : incl I z ∈ Submodule.span (IntAf I.F I.E) S ⊔ mL I g :=
      Submodule.mem_sup_left (Submodule.subset_span (Or.inl (Or.inl (Or.inr rfl))))
    have hSb : ∀ i, ε • incl I (b i) ∈ Submodule.span (IntAf I.F I.E) S ⊔ mL I g := fun i =>
      Submodule.mem_sup_left (Submodule.subset_span (Or.inl (Or.inr ⟨i, rfl⟩)))
    have hSbd : ∀ i, sigA I ε • incl I (bd i) ∈ Submodule.span (IntAf I.F I.E) S ⊔ mL I g := fun i =>
      Submodule.mem_sup_left (Submodule.subset_span (Or.inr ⟨i, rfl⟩))
    let T : Submodule (𝓞 I.E) (Fin I.n → I.E) :=
      { carrier := {x | incl I x ∈ Submodule.span (IntAf I.F I.E) S ⊔ mL I g}
        add_mem' := fun {x y} hx hy => by
          simp only [Set.mem_ofPred_eq, incl_add] at *
          exact add_mem hx hy
        zero_mem' := by
          simp only [Set.mem_ofPred_eq, incl_zero]
          exact zero_mem _
        smul_mem' := fun c x hx => by
          simp only [Set.mem_ofPred_eq] at *
          rw [incl_osmul]
          exact Submodule.smul_mem _ _ hx }
    have memT : ∀ x, incl I x ∈ Submodule.span (IntAf I.F I.E) S ⊔ mL I g → x ∈ T := fun x h => h
    have hgT : gL I g ≤ T := by
      refine Submodule.span_le.2 ?_
      rintro _ ⟨x, hx, rfl⟩
      refine memT _ ?_
      rw [incl_smul, ← natCast_eq]
      exact Submodule.mem_sup_right (mem_mL I g (incl_mem_Lf I hx))
    have hST : Submodule.span (𝓞 I.E) (Set.range (fun a => M • e a) ∪ Set.range (fun a => M • f a) ∪
        {z} ∪ Set.range (fun i => (θ : I.E) • b i) ∪ Set.range (fun i => star (θ : I.E) • bd i)) ≤ T := by
      refine Submodule.span_le.2 ?_
      rintro _ ((((⟨a, rfl⟩ | ⟨a, rfl⟩) | rfl) | ⟨i, rfl⟩) | ⟨i, rfl⟩)
      · refine memT _ ?_
        have h' : incl I (M • e a) = M • incl I (Q • M • e a) -
            ((g : ℕ) : I.E ⊗[I.F] Af I.F) • incl I (s • M • e a) := by
          rw [← incl_nsmul', ← incl_nsmul, ← incl_sub]
          congr 1
          funext i
          simp only [Pi.smul_apply, Pi.sub_apply, nsmul_eq_mul, Pi.mul_apply, Pi.natCast_apply]
          linear_combination (-(M : I.E) * e a i) * hNE
        rw [h']
        exact sub_mem (nsmul_mem (hSe a) M)
          (Submodule.mem_sup_right (mem_mL I g (incl_mem_Lf I (nsmul_mem (hMef a).1 s))))
      · refine memT _ ?_
        have h' : incl I (M • f a) = M • incl I (Q • M • f a) -
            ((g : ℕ) : I.E ⊗[I.F] Af I.F) • incl I (s • M • f a) := by
          rw [← incl_nsmul', ← incl_nsmul, ← incl_sub]
          congr 1
          funext i
          simp only [Pi.smul_apply, Pi.sub_apply, nsmul_eq_mul, Pi.mul_apply, Pi.natCast_apply]
          linear_combination (-(M : I.E) * f a i) * hNE
        rw [h']
        exact sub_mem (nsmul_mem (hSf a) M)
          (Submodule.mem_sup_right (mem_mL I g (incl_mem_Lf I (nsmul_mem (hMef a).2 s))))
      · exact memT _ hSz
      · refine memT _ ?_
        have h' : incl I ((θ : I.E) • b i) = ε • incl I (b i) -
            ((g : ℕ) : I.E ⊗[I.F] Af I.F) • (t • incl I (b i)) := by
          rw [incl_smul, smul_smul, ← sub_smul]
          congr 1
          linear_combination -hεt
        rw [h']
        exact sub_mem (hSb i)
          (Submodule.mem_sup_right (mem_mL I g (smul_mem_Lf I ht (incl_mem_Lf I (hb i).1))))
      · refine memT _ ?_
        have h' : incl I (star (θ : I.E) • bd i) = sigA I ε • incl I (bd i) -
            ((g : ℕ) : I.E ⊗[I.F] Af I.F) • (t' • incl I (bd i)) := by
          rw [incl_smul, smul_smul, ← sub_smul]
          congr 1
          linear_combination -hσt
        rw [h']
        exact sub_mem (hSbd i)
          (Submodule.mem_sup_right (mem_mL I g (smul_mem_Lf I ht' (incl_mem_Lf I (hb i).2))))
    have hLT : I.Lf ≤ Submodule.span (IntAf I.F I.E) S ⊔ mL I g := by
      refine Submodule.span_le.2 ?_
      rintro _ ⟨⟨x, hx⟩, rfl⟩
      show incl I x ∈ _
      exact (sup_le hST hgT) (hspan x hx)
    exact hLT hy

end PI.ScRefExists.GlueC

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GlueHoldsVar =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemAd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemAd", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemLiftOfSteps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S IsDedekindDomain

namespace PI.ScRefExists.Id

section Ad

variable {F : Type} [Field F] [NumberField F]

theorem memO {v : HeightOneSpectrum (𝓞 F)} {x : v.adicCompletion F} :
    x ∈ v.adicCompletionIntegers F ↔ Valued.v x ≤ 1 := by
  first
    | exact Iff.rfl

def evA (v : HeightOneSpectrum (𝓞 F)) : Af F →+* v.adicCompletion F where
  toFun a := a v
  map_one' := rfl
  map_mul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl

theorem evA_apply (v : HeightOneSpectrum (𝓞 F)) (a : Af F) : evA v a = a v := rfl

theorem eq_of_evA {a b : Af F} (h : ∀ v, evA v a = evA v b) : a = b := by
  first
    | (ext v; exact h v)
    | exact Subtype.ext (funext h)

def mkA (c : ∀ v : HeightOneSpectrum (𝓞 F), v.adicCompletion F) (hc : ∀ v, Valued.v (c v) ≤ 1) :
    Af F :=
  ⟨c, Filter.Eventually.of_forall fun v => memO.2 (hc v)⟩

theorem mkA_apply (c : ∀ v : HeightOneSpectrum (𝓞 F), v.adicCompletion F)
    (hc : ∀ v, Valued.v (c v) ≤ 1) (v : HeightOneSpectrum (𝓞 F)) : mkA c hc v = c v := rfl

theorem mkA_mem (c : ∀ v : HeightOneSpectrum (𝓞 F), v.adicCompletion F)
    (hc : ∀ v, Valued.v (c v) ≤ 1) : mkA c hc ∈ Formalism.UG.intAd F := by
  unfold Formalism.UG.intAd
  show ∀ v, mkA c hc v ∈ HeightOneSpectrum.adicCompletionIntegers F v
  intro v
  rw [mkA_apply]
  exact memO.2 (hc v)

theorem natCast_le_one (v : HeightOneSpectrum (𝓞 F)) (g : ℕ) :
    Valued.v ((g : ℕ) : v.adicCompletion F) ≤ 1 := memO.1 (natCast_mem _ g)

end Ad

theorem adOfLoc : AdOfLoc := by
  unfold AdOfLoc LocIdem AdIdem
  intro hL F _ _ g α β hg hα hβ
  have hα' : ∀ v, Valued.v (α v) ≤ 1 := by
    intro v
    have h0 := (show ∀ v, α v ∈ HeightOneSpectrum.adicCompletionIntegers F v from hα) v
    exact memO.1 h0
  have hβ' : ∀ v, Valued.v (β v) ≤ 1 := by
    intro v
    have h0 := (show ∀ v, β v ∈ HeightOneSpectrum.adicCompletionIntegers F v from hβ) v
    exact memO.1 h0
  have key : ∀ v : HeightOneSpectrum (𝓞 F), ∃ c₁ c₂ : v.adicCompletion F,
      Valued.v c₁ ≤ 1 ∧ Valued.v c₂ ≤ 1 ∧
      (1 + (g : v.adicCompletion F) * α v) * (1 + (g : v.adicCompletion F) * c₁) ^ 2
          - 2 * (1 + (g : v.adicCompletion F) * c₁) * ((g : v.adicCompletion F) * c₂)
        = 1 + (g : v.adicCompletion F) * c₁ ∧
      ((g : v.adicCompletion F) * c₂) ^ 2
          - (g : v.adicCompletion F) * β v * (1 + (g : v.adicCompletion F) * c₁) ^ 2
        = -((g : v.adicCompletion F) * c₂) ∧
      ((g : v.adicCompletion F) * c₂) ^ 2
          - (1 + (g : v.adicCompletion F) * α v) * ((g : v.adicCompletion F) * c₂)
            * (1 + (g : v.adicCompletion F) * c₁)
          + (g : v.adicCompletion F) * β v * (1 + (g : v.adicCompletion F) * c₁) ^ 2 = 0 := by
    intro v
    by_cases hv : Valued.v ((g : ℕ) : v.adicCompletion F) < 1
    · exact hL F v g (α v) (β v) hg hv (hα' v) (hβ' v)
    · have h1 : Valued.v ((g : ℕ) : v.adicCompletion F) = 1 :=
        le_antisymm (natCast_le_one v g) (not_lt.mp hv)
      have hg0 : ((g : ℕ) : v.adicCompletion F) ≠ 0 := by
        intro h
        rw [h, map_zero] at h1
        exact zero_ne_one h1
      have hu : 1 + (g : v.adicCompletion F) * -((g : v.adicCompletion F))⁻¹ = 0 := by
        rw [mul_neg, mul_inv_cancel₀ hg0, add_neg_cancel]
      refine ⟨-((g : v.adicCompletion F))⁻¹, 0, ?_, ?_, ?_, ?_, ?_⟩
      · rw [Valuation.map_neg, map_inv₀, h1, inv_one]
      · rw [map_zero]
        exact zero_le'
      · rw [hu]
        simp
      · rw [hu]
        simp
      · rw [hu]
        simp
  choose c₁ c₂ h1 h2 e1 e2 e3 using key
  refine ⟨mkA c₁ h1, mkA c₂ h2, mkA_mem c₁ h1, mkA_mem c₂ h2, ?_, ?_, ?_⟩
  · apply eq_of_evA
    intro v
    simp only [map_add (f := _), map_mul, map_sub, map_pow, map_one, map_natCast, map_ofNat,
      evA_apply, mkA_apply]
    exact e1 v
  · apply eq_of_evA
    intro v
    simp only [map_add (f := _), map_mul, map_sub, map_pow, map_one, map_natCast, map_neg, evA_apply, mkA_apply]
    exact e2 v
  · apply eq_of_evA
    intro v
    simp only [map_add (f := _), map_mul, map_sub, map_pow, map_one, map_natCast, map_zero, evA_apply, mkA_apply]
    exact e3 v

end PI.ScRefExists.Id
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemAd =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemLoc =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemLoc", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemLiftOfSteps\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalEndomorphisms.HenselRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Polynomial

namespace PI.ScRefExists.Id

theorem locIdem : LocIdem := by
  intro F _ _ v g α β hg hgv hα hβ
  classical
  haveI : CharZero (v.adicCompletion F) :=
    charZero_of_injective_algebraMap (algebraMap F (v.adicCompletion F)).injective
  have memO : ∀ x : v.adicCompletion F, x ∈ v.adicCompletionIntegers F ↔ Valued.v x ≤ 1 := fun x => by
    rw [HeightOneSpectrum.mem_adicCompletionIntegers]
  let ϖ : v.adicCompletionIntegers F := ⟨((g : ℕ) : v.adicCompletion F), (memO _).2 hgv.le⟩
  let aO : v.adicCompletionIntegers F := ⟨α, (memO _).2 hα⟩
  let bO : v.adicCompletionIntegers F := ⟨β, (memO _).2 hβ⟩
  have hϖ : ϖ ≠ 0 := by
    intro h
    have h' : ((g : ℕ) : v.adicCompletion F) = 0 := congrArg Subtype.val h
    exact (Nat.cast_ne_zero.mpr (by omega : g ≠ 0)) h'
  have h1 : ‖(ϖ : v.adicCompletion F)‖ < 1 := Valued.toNormedField.norm_lt_one_iff.mpr hgv
  haveI := PI.LocalEndW.isAdicComplete v ϖ hϖ h1
  let f : Polynomial (v.adicCompletionIntegers F) := X ^ 2 - C (1 + ϖ * aO) * X + C (ϖ * bO)
  have hf : f.Monic := by simp only [f]; monicity!
  have h0 : f.eval 0 ∈ Ideal.span {ϖ} := by
    have e : f.eval 0 = bO * ϖ := by
      simp only [f, eval_add, eval_sub, eval_pow, eval_X, eval_mul, eval_C]; ring
    rw [e, Ideal.mem_span_singleton']
    exact ⟨bO, rfl⟩
  have hd : f.derivative.eval 0 = -(1 + ϖ * aO) := by simp [f]
  have hm : Ideal.Quotient.mk (Ideal.span {ϖ}) (-(1 + ϖ * aO)) = -1 := by
    rw [← map_one (Ideal.Quotient.mk (Ideal.span {ϖ})), ← map_neg, Ideal.Quotient.eq,
      Ideal.mem_span_singleton']
    exact ⟨-aO, by ring⟩
  obtain ⟨ρ, hρ, hρI⟩ := HenselianRing.is_henselian (I := Ideal.span {ϖ}) f hf 0 h0
    (by rw [hd, hm]; exact isUnit_one.neg)
  rw [sub_zero, Ideal.mem_span_singleton'] at hρI
  obtain ⟨r0, rfl⟩ := hρI
  have hroot : (r0 * ϖ) ^ 2 - (1 + ϖ * aO) * (r0 * ϖ) + ϖ * bO = 0 := by
    have h : f.eval (r0 * ϖ) = 0 := hρ
    simpa only [f, eval_add, eval_sub, eval_pow, eval_X, eval_mul, eval_C] using h
  have hu : IsUnit (1 + ϖ * (aO - 2 * r0)) := by
    rw [HeightOneSpectrum.adicCompletionIntegers.isUnit_iff_valued_eq_one]
    have hy : Valued.v ((aO - 2 * r0 : v.adicCompletionIntegers F) : v.adicCompletion F) ≤ 1 :=
      (memO _).1 (aO - 2 * r0).2
    have hlt : Valued.v ((ϖ : v.adicCompletion F) *
        ((aO - 2 * r0 : v.adicCompletionIntegers F) : v.adicCompletion F)) < 1 := by
      rw [map_mul]
      exact lt_of_le_of_lt (mul_le_of_le_one_right' hy) hgv
    exact (Valued.v).map_one_add_of_lt hlt
  obtain ⟨U, hU⟩ := hu
  obtain ⟨wO, hwO⟩ : ∃ w : v.adicCompletionIntegers F, w = ((U⁻¹ : (v.adicCompletionIntegers F)ˣ) :
      v.adicCompletionIntegers F) := ⟨_, rfl⟩
  have huw : (1 + ϖ * (aO - 2 * r0)) * wO = 1 := by rw [← hU, hwO]; exact U.mul_inv
  obtain ⟨c1, hc1⟩ : ∃ c : v.adicCompletionIntegers F, c = -(aO - 2 * r0) * wO := ⟨_, rfl⟩
  obtain ⟨c2, hc2⟩ : ∃ c : v.adicCompletionIntegers F, c = r0 * wO := ⟨_, rfl⟩
  have hA : (1 + ϖ * aO) * (1 + ϖ * c1) ^ 2 - 2 * (1 + ϖ * c1) * (ϖ * c2) = 1 + ϖ * c1 := by
    rw [hc1, hc2]
    linear_combination ((1 + ϖ * (-(aO - 2 * r0) * wO)) * (1 - (1 + ϖ * aO))) * huw
  have hB : (ϖ * c2) ^ 2 - ϖ * bO * (1 + ϖ * c1) ^ 2 = -(ϖ * c2) := by
    rw [hc1, hc2]
    linear_combination (-(r0 * ϖ) * wO + ϖ * bO * (2 * wO - ((1 + ϖ * (aO - 2 * r0)) * wO - 1))) * huw
      + (-wO ^ 2) * hroot
  have hC : (ϖ * c2) ^ 2 - (1 + ϖ * aO) * (ϖ * c2) * (1 + ϖ * c1) + ϖ * bO * (1 + ϖ * c1) ^ 2 = 0 := by
    rw [hc1, hc2]
    linear_combination ((1 + ϖ * aO) * (r0 * ϖ) * wO - 2 * (ϖ * bO) * wO
      + ϖ * bO * ((1 + ϖ * (aO - 2 * r0)) * wO - 1)) * huw + wO ^ 2 * hroot
  refine ⟨(c1 : v.adicCompletion F), (c2 : v.adicCompletion F), (memO _).1 c1.2, (memO _).1 c2.2,
    ?_, ?_, ?_⟩
  · have e := congrArg (v.adicCompletionIntegers F).subtype hA
    simp only [map_add (f := _), map_sub, map_mul, map_pow, map_one, map_ofNat] at e
    exact e
  · have e := congrArg (v.adicCompletionIntegers F).subtype hB
    simp only [map_add (f := _), map_sub, map_mul, map_pow, map_one, map_neg] at e
    exact e
  · have e := congrArg (v.adicCompletionIntegers F).subtype hC
    simp only [map_add (f := _), map_sub, map_mul, map_pow, map_one, map_zero] at e
    exact e

end PI.ScRefExists.Id
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemLoc =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemTen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemTen", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemLiftOfSteps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S IsDedekindDomain
open scoped TensorProduct

namespace PI.ScRefExists.Id

theorem fixInt : FixInt := by
  intro I s hs
  obtain ⟨a, ha⟩ := (I.cm.fixed (s : I.E)).mp hs
  have hs' : IsIntegral ℤ ((algebraMap I.F I.E).toIntAlgHom a) := by
    show IsIntegral ℤ (algebraMap I.F I.E a)
    rw [ha]
    exact NumberField.RingOfIntegers.isIntegral_coe s
  have hint : IsIntegral ℤ a :=
    (isIntegral_algHom_iff (algebraMap I.F I.E).toIntAlgHom (algebraMap I.F I.E).injective).mp hs'
  exact ⟨⟨a, hint⟩, ha⟩

theorem intF {F : Type} [Field F] [NumberField F] (r : 𝓞 F) :
    algebraMap F (Af F) (r : F) ∈ Formalism.UG.intAd F := by
  show ∀ v, _
  intro v
  rw [IsDedekindDomain.FiniteAdeleRing.algebraMap_apply]
  exact IsDedekindDomain.HeightOneSpectrum.coe_mem_adicCompletionIntegers v r

section Ten

variable (I : Formalism.MainNotions.S.AutInst)

def iA : Af I.F →ₐ[I.F] I.E ⊗[I.F] Af I.F := Algebra.TensorProduct.includeRight

def iE : I.E →+* I.E ⊗[I.F] Af I.F := Formalism.UG.inclE (F := I.F) (Af I.F)

theorem iA_apply (x : Af I.F) : iA I x = (1 : I.E) ⊗ₜ[I.F] x :=
  Algebra.TensorProduct.includeRight_apply x

theorem iE_apply (e : I.E) : iE I e = e ⊗ₜ[I.F] (1 : Af I.F) :=
  Algebra.TensorProduct.includeLeftRingHom_apply e

theorem iE_alg (x : I.F) : iE I (algebraMap I.F I.E x) = iA I (algebraMap I.F (Af I.F) x) := by
  rw [iE_apply, iA_apply, Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_eq_smul_one,
    TensorProduct.smul_tmul]

theorem sig_iA (x : Af I.F) : sigA I (iA I x) = iA I x := by
  rw [iA_apply]
  show Algebra.TensorProduct.map I.cm.sig (AlgHom.id I.F (Af I.F)) ((1 : I.E) ⊗ₜ[I.F] x) = _
  rw [Algebra.TensorProduct.map_tmul, map_one]
  rfl

theorem sig_iE (e : I.E) : sigA I (iE I e) = iE I (star e) := by
  rw [iE_apply, iE_apply]
  show Algebra.TensorProduct.map I.cm.sig (AlgHom.id I.F (Af I.F)) (e ⊗ₜ[I.F] (1 : Af I.F)) = _
  rw [Algebra.TensorProduct.map_tmul, map_one]
  rfl

theorem iE_mem (θ : 𝓞 I.E) : iE I (θ : I.E) ∈ IntAf I.F I.E := by
  rw [iE_apply]
  exact Subring.subset_closure (Or.inl ⟨⟨(θ : I.E), θ, rfl⟩, rfl⟩)

theorem iA_mem {x : Af I.F} (hx : x ∈ Formalism.UG.intAd I.F) : iA I x ∈ IntAf I.F I.E := by
  rw [iA_apply]
  exact Subring.subset_closure (Or.inr ⟨⟨x, hx⟩, rfl⟩)

end Ten

theorem tenStep : TenStep := by
  intro hAd hFix I g θ hg _hsp hθ
  obtain ⟨⟨t1, ht1⟩, ⟨t2, ht2⟩, ⟨t3, ht3⟩⟩ := hθ
  have hgE : ((g : ℕ) : I.E) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  have hs2 : star (t2 : I.E) = t2 := by
    have h1 : star ((θ : I.E) * star (θ : I.E)) = (θ : I.E) * star (θ : I.E) := by
      rw [star_mul, star_star]
    rw [ht2, star_mul, star_natCast, mul_comm] at h1
    exact mul_left_cancel₀ hgE h1
  have hs3 : star (t3 : I.E) = t3 := by
    have h1 : star (1 - (θ : I.E) - star (θ : I.E)) = 1 - (θ : I.E) - star (θ : I.E) := by
      rw [star_sub, star_sub, star_one, star_star]
      ring
    rw [ht3, star_mul, star_natCast, mul_comm] at h1
    exact mul_left_cancel₀ hgE h1
  obtain ⟨a2, ha2⟩ := hFix I t2 hs2
  obtain ⟨a3, ha3⟩ := hFix I t3 hs3
  have hαi : -algebraMap I.F (Af I.F) (a3 : I.F) ∈ Formalism.UG.intAd I.F :=
    (Formalism.UG.intAd I.F).neg_mem (intF a3)
  have hβi : algebraMap I.F (Af I.F) (a2 : I.F) ∈ Formalism.UG.intAd I.F := intF a2
  obtain ⟨C₁, C₂, hC₁, hC₂, hi, hii, hiii⟩ := hAd I.F g _ _ hg hαi hβi
  obtain ⟨W, hWd⟩ : ∃ W : Af I.F, W = 1 + (g : Af I.F) * C₁ := ⟨_, rfl⟩
  obtain ⟨Q, hQd⟩ : ∃ Q : Af I.F, Q = (g : Af I.F) * C₂ := ⟨_, rfl⟩
  obtain ⟨A0, hA0d⟩ : ∃ A0 : Af I.F,
      A0 = 1 + (g : Af I.F) * -algebraMap I.F (Af I.F) (a3 : I.F) := ⟨_, rfl⟩
  obtain ⟨B0, hB0d⟩ : ∃ B0 : Af I.F, B0 = (g : Af I.F) * algebraMap I.F (Af I.F) (a2 : I.F) :=
    ⟨_, rfl⟩
  rw [← hWd, ← hQd, ← hA0d] at hi
  rw [← hWd, ← hQd, ← hB0d] at hii
  rw [← hWd, ← hQd, ← hA0d, ← hB0d] at hiii
  have hi' := congrArg (iA I) hi
  have hii' := congrArg (iA I) hii
  have hiii' := congrArg (iA I) hiii
  simp only [map_mul, map_add (f := _), map_sub, map_pow, map_neg, map_ofNat, map_zero] at hi' hii' hiii'
  have hA : iA I A0 = iE I (θ : I.E) + iE I (star (θ : I.E)) := by
    have e1 : A0 = algebraMap I.F (Af I.F) (1 - (g : I.F) * (a3 : I.F)) := by
      rw [hA0d, map_sub, map_one, map_mul, map_natCast]
      ring
    have e2 : algebraMap I.F I.E (1 - (g : I.F) * (a3 : I.F)) = (θ : I.E) + star (θ : I.E) := by
      rw [map_sub, map_one, map_mul, map_natCast, ha3]
      linear_combination ht3
    rw [e1, ← iE_alg, e2, map_add (f := _)]
  have hB : iA I B0 = iE I (θ : I.E) * iE I (star (θ : I.E)) := by
    have e1 : B0 = algebraMap I.F (Af I.F) ((g : I.F) * (a2 : I.F)) := by
      rw [hB0d, map_mul, map_natCast]
    have e2 : algebraMap I.F I.E ((g : I.F) * (a2 : I.F)) = (θ : I.E) * star (θ : I.E) := by
      rw [map_mul, map_natCast, ha2, ht2]
    rw [e1, ← iE_alg, e2, map_mul]
  rw [hA] at hi' hiii'
  rw [hB] at hii' hiii'
  have hWi : W ∈ Formalism.UG.intAd I.F := by
    rw [hWd]
    exact add_mem (one_mem _) (mul_mem (natCast_mem _ g) hC₁)
  have hQi : Q ∈ Formalism.UG.intAd I.F := by
    rw [hQd]
    exact mul_mem (natCast_mem _ g) hC₂
  refine ⟨iE I (θ : I.E) * iA I W - iA I Q, ?_, ?_, ?_, ?_⟩
  · exact sub_mem (mul_mem (iE_mem I θ) (iA_mem I hWi)) (iA_mem I hQi)
  · linear_combination (iE I (θ : I.E)) * hi' + hii'
  · rw [map_sub, map_mul, sig_iE, sig_iA, sig_iA]
    linear_combination hiii'
  · refine ⟨iE I (θ : I.E) * iA I C₁ - iA I C₂,
      sub_mem (mul_mem (iE_mem I θ) (iA_mem I hC₁)) (iA_mem I hC₂), ?_⟩
    have hW' : iA I W = 1 + (g : I.E ⊗[I.F] Af I.F) * iA I C₁ := by
      rw [hWd, map_add (f := _), map_one, map_mul, map_natCast]
    have hQ' : iA I Q = (g : I.E ⊗[I.F] Af I.F) * iA I C₂ := by
      rw [hQd, map_mul, map_natCast]
    show iE I (θ : I.E) * iA I W - iA I Q - iE I (θ : I.E) = _
    rw [hW', hQ']
    ring

end PI.ScRefExists.Id
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemTen =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemMain", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemAd\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemLoc\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemTen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.ScRefExists.Id

theorem idemLift : PI.ScRefExists.Sk.IdemLift :=
  idemLift_of_steps locIdem adOfLoc fixInt tenStep

end PI.ScRefExists.Id
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemMain =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocGlob =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocGlob", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.DedekindDomain.Different\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S IsDedekindDomain
open scoped TensorProduct nonZeroDivisors

namespace PI.ScRefExists.LG

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem int_mem_intAd (r : 𝓞 F) : algebraMap F (Af F) (algebraMap (𝓞 F) F r) ∈ Formalism.UG.intAd F := by
  intro v
  show ((algebraMap (𝓞 F) F r : F) : v.adicCompletion F) ∈ v.adicCompletionIntegers F
  rw [HeightOneSpectrum.mem_adicCompletionIntegers, HeightOneSpectrum.valuedAdicCompletion_eq_valuation']
  exact v.valuation_le_one r

theorem int_of_mem_intAd (x : F) (h : algebraMap F (Af F) x ∈ Formalism.UG.intAd F) :
    x ∈ (algebraMap (𝓞 F) F).range := by
  refine HeightOneSpectrum.mem_integers_of_valuation_le_one F x fun v => ?_
  have hv : ((x : F) : v.adicCompletion F) ∈ v.adicCompletionIntegers F := h v
  rwa [HeightOneSpectrum.mem_adicCompletionIntegers,
    HeightOneSpectrum.valuedAdicCompletion_eq_valuation'] at hv

def lam (a : E) : E →ₗ[F] F := (Algebra.trace F E) ∘ₗ (LinearMap.mulLeft F a)

def Phi (a : E) : E ⊗[F] Af F →ₗ[F] Af F :=
  (TensorProduct.lid F (Af F)).toLinearMap ∘ₗ TensorProduct.map (lam a) LinearMap.id

omit [NumberField E] in
theorem Phi_tmul (a x : E) (c : Af F) :
    Phi a (x ⊗ₜ[F] c) = algebraMap F (Af F) (Algebra.trace F E (a * x)) * c := by
  simp [Phi, lam, Algebra.smul_def]

def Gens : Submonoid (E ⊗[F] Af F) where
  carrier := {x | ∃ o : 𝓞 E, ∃ c ∈ Formalism.UG.intAd F, x = (algebraMap (𝓞 E) E o) ⊗ₜ[F] c}
  one_mem' := ⟨1, 1, one_mem _, by simp [Algebra.TensorProduct.one_def]⟩
  mul_mem' := by
    rintro _ _ ⟨o, c, hc, rfl⟩ ⟨o', c', hc', rfl⟩
    exact ⟨o * o', c * c', mul_mem hc hc', by simp [Algebra.TensorProduct.tmul_mul_tmul]⟩

theorem Phi_mem (a : E) (ha : ∀ o : 𝓞 E, Algebra.trace F E (a * algebraMap (𝓞 E) E o) ∈
    (algebraMap (𝓞 F) F).range) {y : E ⊗[F] Af F} (hy : y ∈ IntAf F E) :
    Phi a y ∈ Formalism.UG.intAd F := by
  have hy' : y ∈ AddSubgroup.closure ((Submonoid.closure
      (Set.range (fun x : Formalism.UG.intOE E => (x : E) ⊗ₜ[F] (1 : Af F)) ∪
        Set.range (fun y : Formalism.UG.intAd F => (1 : E) ⊗ₜ[F] (y : Af F))) : Set _)) :=
    Subring.mem_closure_iff.mp hy
  have hle : Submonoid.closure
      (Set.range (fun x : Formalism.UG.intOE E => (x : E) ⊗ₜ[F] (1 : Af F)) ∪
        Set.range (fun y : Formalism.UG.intAd F => (1 : E) ⊗ₜ[F] (y : Af F))) ≤ (Gens : Submonoid _) := by
    rw [Submonoid.closure_le]
    rintro _ (⟨⟨x, o, rfl⟩, rfl⟩ | ⟨⟨c, hc⟩, rfl⟩)
    · exact ⟨o, 1, one_mem _, rfl⟩
    · exact ⟨1, c, hc, by simp⟩
  have hy2 := AddSubgroup.closure_mono hle hy'
  clear hy hy' hle
  induction hy2 using AddSubgroup.closure_induction with
  | mem x hx =>
    obtain ⟨o, c, hc, rfl⟩ := hx
    rw [Phi_tmul]
    obtain ⟨r, hr⟩ := ha o
    rw [← hr]
    exact mul_mem (int_mem_intAd r) hc
  | zero => rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
  | neg x _ hx => rw [map_neg]; exact neg_mem hx

theorem locGlob_gen (t : E) (ht : Formalism.UG.inclE (F := F) (Af F) t ∈ IntAf F E) :
    ∃ s : 𝓞 E, algebraMap (𝓞 E) E s = t := by
  have h1 : (1 : FractionalIdeal (𝓞 E)⁰ E) ≠ 0 := one_ne_zero
  have hd : FractionalIdeal.dual (𝓞 F) F (1 : FractionalIdeal (𝓞 E)⁰ E) ≠ 0 :=
    FractionalIdeal.dual_ne_zero (𝓞 F) F h1
  have hmem : t ∈ FractionalIdeal.dual (𝓞 F) F
      (FractionalIdeal.dual (𝓞 F) F (1 : FractionalIdeal (𝓞 E)⁰ E)) := by
    rw [FractionalIdeal.mem_dual hd]
    intro a ha
    rw [FractionalIdeal.mem_dual h1] at ha
    have ha' : ∀ o : 𝓞 E, Algebra.trace F E (a * algebraMap (𝓞 E) E o) ∈
        (algebraMap (𝓞 F) F).range := by
      intro o
      have := ha (algebraMap (𝓞 E) E o) ((FractionalIdeal.mem_one_iff (𝓞 E)⁰).mpr ⟨o, rfl⟩)
      simpa [Algebra.traceForm_apply] using this
    have hP := Phi_mem a ha' ht
    have hx : Phi a (Formalism.UG.inclE (F := F) (Af F) t) =
        algebraMap F (Af F) (Algebra.trace F E (a * t)) := by
      simp [Formalism.UG.inclE, Phi_tmul]
    rw [hx] at hP
    have := int_of_mem_intAd _ hP
    simpa [Algebra.traceForm_apply, mul_comm] using this
  rw [FractionalIdeal.dual_dual] at hmem
  exact (FractionalIdeal.mem_one_iff (𝓞 E)⁰).mp hmem

end Gen

theorem local_global_principle_alt : PI.ScRefExists.Sk.LocGlob := by
  intro I t ht
  exact locGlob_gen t ht

end PI.ScRefExists.LG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocGlob =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.SpanSmulInto =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.SpanSmulInto", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PPAssemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.NatCastSmulMemL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S IsDedekindDomain

namespace PI.ScRefExists.PPA

open PI.ScRefExists.Sk

variable (I : Formalism.MainNotions.S.AutInst)

theorem GE_star (g : ℕ) {x : I.E} (h : GE I g x) : GE I g (star x) := by
  obtain ⟨t, ht⟩ := h
  have hint : IsIntegral ℤ (starRingEnd I.E (t : I.E)) := by
    first
    | exact (RingOfIntegers.isIntegral_coe t).map (starRingEnd I.E).toIntAlgHom
  refine ⟨⟨starRingEnd I.E (t : I.E), hint⟩, ?_⟩
  rw [ht]
  first
  | (rw [star_mul', star_natCast]; rfl)

theorem span_part (p m r k : ℕ) (θ : 𝓞 I.E) (e f : Fin r → Fin I.n → I.E) (M T : ℕ)
    (w wd : Fin (k + 1) → Fin I.n → I.E)
    (hM : Nat.Coprime M p) (hM0 : (M : I.E) ≠ 0) (hT : Nat.Coprime T p) (hT0 : (T : I.E) ≠ 0)
    (hθ1 : GE I (p ^ m) ((θ : I.E) * θ - θ)) (hθ2 : GE I (p ^ m) ((θ : I.E) * star (θ : I.E)))
    (hθ3 : GE I (p ^ m) (1 - (θ : I.E) - star (θ : I.E)))
    (hw : ∀ i, w i ∈ LA I p ∧ wd i ∈ LA I p)
    (hspan : ∀ y ∈ I.L, y ∈ Submodule.span (Ap I p) (Set.range e ∪ Set.range f ∪ Set.range w) ∧
        y ∈ Submodule.span (Ap I p) (Set.range e ∪ Set.range f ∪ Set.range wd))
    (Sset : Set (Fin I.n → I.E))
    (hSe : ∀ a, M • e a ∈ Sset) (hSf : ∀ a, M • f a ∈ Sset)
    (hSz : (T : I.E) • ((θ : I.E) • w (Fin.last k) - star (θ : I.E) • wd (Fin.last k)) ∈ Sset)
    (hSb : ∀ i : Fin k, (θ : I.E) • ((T : I.E) • w i.castSucc) ∈ Sset)
    (hSbd : ∀ i : Fin k, star (θ : I.E) • ((T : I.E) • wd i.castSucc) ∈ Sset) :
    ∀ y ∈ I.L, y ∈ Submodule.span (𝓞 I.E) Sset ⊔ gL I (p ^ m) := by
  classical
  set N : Submodule (𝓞 I.E) (Fin I.n → I.E) := Submodule.span (𝓞 I.E) Sset ⊔ gL I (p ^ m) with hN
  have hsm : ∀ (c : 𝓞 I.E) (v : Fin I.n → I.E), c • v = (c : I.E) • v := fun c v => rfl
  have hS : ∀ v ∈ Sset, v ∈ N := fun v hv => Submodule.mem_sup_left (Submodule.subset_span hv)
  have hE : ∀ (c : 𝓞 I.E) (v : Fin I.n → I.E), v ∈ N → (c : I.E) • v ∈ N := fun c v hv => by
    rw [← hsm]
    exact N.smul_mem c hv
  have hnat : ∀ (s : ℕ) (v : Fin I.n → I.E), v ∈ N → (s : I.E) • v ∈ N := fun s v hv => by
    rw [Nat.cast_smul_eq_nsmul]
    exact nsmul_mem hv s
  have hgl : ∀ x ∈ I.L, ∀ t : 𝓞 I.E, (((p ^ m : ℕ) : I.E) * (t : I.E)) • x ∈ N := by
    intro x hx t
    have h1 : ((p ^ m : ℕ) : I.E) • x ∈ N :=
      Submodule.mem_sup_right (Submodule.subset_span ⟨x, hx, rfl⟩)
    rw [mul_comm, mul_smul]
    exact hE t _ h1
  have hbez : ∀ z ∈ I.L, ∀ s : ℕ, Nat.Coprime s p → (s : I.E) • z ∈ N → z ∈ N := by
    intro z hz s hs hsz
    have hcop : IsCoprime (s : ℤ) ((p ^ m : ℕ) : ℤ) :=
      Nat.isCoprime_iff_coprime.mpr (Nat.Coprime.pow_right m hs)
    obtain ⟨u, v, huv⟩ := hcop
    have hpz : ((p ^ m : ℕ) : I.E) • z ∈ N :=
      Submodule.mem_sup_right (Submodule.subset_span ⟨z, hz, rfl⟩)
    have hc : (u : I.E) * (s : I.E) + (v : I.E) * ((p ^ m : ℕ) : I.E) = 1 := by
      have h := congrArg (Int.cast : ℤ → I.E) huv
      push_cast at h ⊢
      linear_combination h
    have e : z = u • ((s : I.E) • z) + v • (((p ^ m : ℕ) : I.E) • z) := by
      rw [← Int.cast_smul_eq_zsmul I.E u, ← Int.cast_smul_eq_zsmul I.E v, smul_smul, smul_smul,
        ← add_smul, hc, one_smul]
    rw [e]
    exact N.add_mem (zsmul_mem hsz u) (zsmul_mem hpz v)
  have hclr : ∀ v ∈ LA I p, ∃ s : ℕ, Nat.Coprime s p ∧ (s : I.E) • v ∈ I.L := by
    intro v hv
    obtain ⟨s, hs, h⟩ := span_clear I p (I.L : Set (Fin I.n → I.E)) hv
    exact ⟨s, hs, by rwa [Submodule.span_eq] at h⟩
  have gen : ∀ (φ φ' : 𝓞 I.E) (u u' : Fin (k + 1) → Fin I.n → I.E),
      (∀ i, u i ∈ LA I p) → (∀ i, u' i ∈ LA I p) →
      (∀ i : Fin k, (φ : I.E) • ((T : I.E) • u i.castSucc) ∈ Sset) →
      (T : I.E) • ((φ : I.E) • u (Fin.last k) - (φ' : I.E) • u' (Fin.last k)) ∈ N →
      GE I (p ^ m) ((φ : I.E) * φ - φ) → GE I (p ^ m) ((φ : I.E) * φ') →
      ∀ y ∈ I.L, y ∈ Submodule.span (Ap I p) (Set.range e ∪ Set.range f ∪ Set.range u) →
        (φ : I.E) • y ∈ N := by
    intro φ φ' u u' hu hu' hSu hz h1 h2 y hy hyA
    obtain ⟨s2, hs2, hs2L⟩ := hclr _ (hu (Fin.last k))
    obtain ⟨s3, hs3, hs3L⟩ := hclr _ (hu' (Fin.last k))
    obtain ⟨t1, ht1⟩ := h1
    obtain ⟨t2, ht2⟩ := h2
    obtain ⟨s1, hs1, hs1y⟩ := span_clear I p _ hyA
    have key : ∀ v ∈ Submodule.span (𝓞 I.E) (Set.range e ∪ Set.range f ∪ Set.range u),
        ((M * T * s2 * s3 : ℕ) : I.E) • ((φ : I.E) • v) ∈ N := by
      intro v hv
      induction hv using Submodule.span_induction with
      | mem v hv =>
        rcases hv with (⟨a, rfl⟩ | ⟨a, rfl⟩) | ⟨i, rfl⟩
        · have h := hS _ (hSe a)
          rw [← Nat.cast_smul_eq_nsmul I.E] at h
          have e1 : ((M * T * s2 * s3 : ℕ) : I.E) • ((φ : I.E) • e a) =
              ((T * s2 * s3 : ℕ) : I.E) • ((φ : I.E) • ((M : I.E) • e a)) := by
            simp only [smul_smul]
            congr 1
            push_cast
            ring
          rw [e1]
          exact hnat _ _ (hE φ _ h)
        · have h := hS _ (hSf a)
          rw [← Nat.cast_smul_eq_nsmul I.E] at h
          have e1 : ((M * T * s2 * s3 : ℕ) : I.E) • ((φ : I.E) • f a) =
              ((T * s2 * s3 : ℕ) : I.E) • ((φ : I.E) • ((M : I.E) • f a)) := by
            simp only [smul_smul]
            congr 1
            push_cast
            ring
          rw [e1]
          exact hnat _ _ (hE φ _ h)
        · cases i using Fin.lastCases with
          | last =>
            have hA : ((M * s2 * s3 : ℕ) : I.E) •
                ((φ : I.E) • ((T : I.E) • ((φ : I.E) • u (Fin.last k) - (φ' : I.E) • u' (Fin.last k)))) ∈ N :=
              hnat _ _ (hE φ _ hz)
            have hB : ((M * s3 * T : ℕ) : I.E) • ((((p ^ m : ℕ) : I.E) * (t1 : I.E)) •
                ((s2 : I.E) • u (Fin.last k))) ∈ N := hnat _ _ (hgl _ hs2L t1)
            have hC : ((M * s2 * T : ℕ) : I.E) • ((((p ^ m : ℕ) : I.E) * (t2 : I.E)) •
                ((s3 : I.E) • u' (Fin.last k))) ∈ N := hnat _ _ (hgl _ hs3L t2)
            have e1 : ((M * T * s2 * s3 : ℕ) : I.E) • ((φ : I.E) • u (Fin.last k)) =
                ((M * s2 * s3 : ℕ) : I.E) •
                  ((φ : I.E) • ((T : I.E) • ((φ : I.E) • u (Fin.last k) - (φ' : I.E) • u' (Fin.last k)))) -
                ((M * s3 * T : ℕ) : I.E) • ((((p ^ m : ℕ) : I.E) * (t1 : I.E)) •
                  ((s2 : I.E) • u (Fin.last k))) +
                ((M * s2 * T : ℕ) : I.E) • ((((p ^ m : ℕ) : I.E) * (t2 : I.E)) •
                  ((s3 : I.E) • u' (Fin.last k))) := by
              rw [← ht1, ← ht2]
              funext i
              simp only [Pi.add_apply, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
              push_cast
              ring
            rw [e1]
            exact N.add_mem (N.sub_mem hA hB) hC
          | cast j =>
            have h := hS _ (hSu j)
            have e1 : ((M * T * s2 * s3 : ℕ) : I.E) • ((φ : I.E) • u j.castSucc) =
                ((M * s2 * s3 : ℕ) : I.E) • ((φ : I.E) • ((T : I.E) • u j.castSucc)) := by
              simp only [smul_smul]
              congr 1
              push_cast
              ring
            rw [e1]
            exact hnat _ _ h
      | zero => simp
      | add v w _ _ hv hw =>
        rw [smul_add, smul_add]
        exact N.add_mem hv hw
      | smul c v _ hv =>
        rw [hsm, smul_comm (φ : I.E) (c : I.E) v, smul_comm ((M * T * s2 * s3 : ℕ) : I.E) (c : I.E)]
        exact hE c _ hv
    have hk := key _ hs1y
    have hφy : (φ : I.E) • y ∈ I.L := by
      rw [← hsm]
      exact I.L.smul_mem φ hy
    refine hbez _ hφy (M * T * s2 * s3 * s1)
      (Nat.Coprime.mul_left (Nat.Coprime.mul_left (Nat.Coprime.mul_left (Nat.Coprime.mul_left hM hT) hs2) hs3) hs1) ?_
    have e2 : ((M * T * s2 * s3 * s1 : ℕ) : I.E) • ((φ : I.E) • y) =
        ((M * T * s2 * s3 : ℕ) : I.E) • ((φ : I.E) • ((s1 : I.E) • y)) := by
      simp only [smul_smul]
      congr 1
      push_cast
      ring
    rw [e2]
    exact hk
  obtain ⟨θb, hθb⟩ : ∃ θb : 𝓞 I.E, (θb : I.E) = star (θ : I.E) := by
    have hint : IsIntegral ℤ (starRingEnd I.E (θ : I.E)) := by
      first
      | exact (RingOfIntegers.isIntegral_coe θ).map (starRingEnd I.E).toIntAlgHom
    exact ⟨⟨starRingEnd I.E (θ : I.E), hint⟩, rfl⟩
  intro y hy
  have hyN1 : (θ : I.E) • y ∈ N :=
    gen θ θb w wd (fun i => (hw i).1) (fun i => (hw i).2) hSb (by rw [hθb]; exact hS _ hSz) hθ1
      (by rw [hθb]; exact hθ2) y hy (hspan y hy).1
  have hz2 : (T : I.E) • ((θb : I.E) • wd (Fin.last k) - (θ : I.E) • w (Fin.last k)) ∈ N := by
    have e : (T : I.E) • ((θb : I.E) • wd (Fin.last k) - (θ : I.E) • w (Fin.last k)) =
        -((T : I.E) • ((θ : I.E) • w (Fin.last k) - star (θ : I.E) • wd (Fin.last k))) := by
      rw [hθb, ← smul_neg, neg_sub]
    rw [e]
    exact N.neg_mem (hS _ hSz)
  have h1' : GE I (p ^ m) ((θb : I.E) * θb - θb) := by
    have h := GE_star I (p ^ m) hθ1
    rwa [star_sub, star_mul', ← hθb] at h
  have h2' : GE I (p ^ m) ((θb : I.E) * θ) := by
    rw [hθb, mul_comm]
    exact hθ2
  have hyN2 : (θb : I.E) • y ∈ N :=
    gen θb θ wd w (fun i => (hw i).2) (fun i => (hw i).1) (fun i => by rw [hθb]; exact hSbd i) hz2 h1' h2'
      y hy (hspan y hy).2
  obtain ⟨t3, ht3⟩ := hθ3
  have h3 : ((1 : I.E) - θ - star (θ : I.E)) • y ∈ N := by
    rw [ht3]
    exact hgl y hy t3
  have e : y = (θ : I.E) • y + (θb : I.E) • y + ((1 : I.E) - θ - star (θ : I.E)) • y := by
    rw [hθb, ← add_smul, ← add_smul,
      show (θ : I.E) + star (θ : I.E) + (1 - θ - star (θ : I.E)) = 1 by ring, one_smul]
  rw [e]
  exact N.add_mem (N.add_mem hyN1 hyN2) h3

end PI.ScRefExists.PPA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.SpanSmulInto =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocalAssemblyPrincipal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocalAssemblyPrincipal", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PPAssemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.NatCastSmulMemL\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.SpanSmulInto\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S IsDedekindDomain

namespace PI.ScRefExists.PPA

open PI.ScRefExists.Sk

def IsInt (I : Formalism.MainNotions.S.AutInst) (x : I.E) : Prop := ∃ a : 𝓞 I.E, (a : I.E) = x

section Int

variable (I : Formalism.MainNotions.S.AutInst)

theorem isInt_coe (a : 𝓞 I.E) : IsInt I (a : I.E) := ⟨a, rfl⟩

theorem isInt_mul {x y : I.E} (hx : IsInt I x) (hy : IsInt I y) : IsInt I (x * y) := by
  obtain ⟨a, rfl⟩ := hx
  obtain ⟨b, rfl⟩ := hy
  exact ⟨a * b, by push_cast; rfl⟩

theorem isInt_sub {x y : I.E} (hx : IsInt I x) (hy : IsInt I y) : IsInt I (x - y) := by
  obtain ⟨a, rfl⟩ := hx
  obtain ⟨b, rfl⟩ := hy
  exact ⟨a - b, by push_cast; rfl⟩

theorem isInt_add {x y : I.E} (hx : IsInt I x) (hy : IsInt I y) : IsInt I (x + y) := by
  obtain ⟨a, rfl⟩ := hx
  obtain ⟨b, rfl⟩ := hy
  exact ⟨a + b, by push_cast; rfl⟩

theorem isInt_one : IsInt I (1 : I.E) := ⟨1, by simp⟩

theorem isInt_hG {x y : Fin I.n → I.E} (hx : x ∈ I.L) (hy : y ∈ I.L) : IsInt I (hG I x y) := by
  obtain ⟨a, ha⟩ := (I.L_dual y).1 hy x hx
  exact ⟨a, ha⟩

theorem isInt_star (θ : 𝓞 I.E) : IsInt I (star (θ : I.E)) :=
  ⟨⟨star (θ : I.E), (RingOfIntegers.isIntegral_coe θ).map (starRingEnd I.E).toIntAlgHom⟩, rfl⟩

theorem natCast_mem_Ap (p s : ℕ) : (s : I.E) ∈ Ap I p := by
  refine ⟨1, Nat.coprime_one_left p, (s : 𝓞 I.E), ?_⟩
  simp

end Int

theorem local_assembly_principal : PPAssemble := by
  unfold PPAssemble
  intro I p m r k θ e f M w wd hp hm hH hw hew hwd hspan
  obtain ⟨-, -, hθ, -, -, -, -, hMc, -⟩ := hH
  obtain ⟨hθ1, hθ2, hθ3⟩ := hθ
  have hm0 : m ≠ 0 := by omega
  have hp1 : p ≠ 1 := hp.one_lt.ne'
  have hMp : Nat.Coprime M p := Nat.Coprime.coprime_dvd_right (dvd_pow_self p hm0) hMc
  have hM0 : (M : I.E) ≠ 0 := by
    have hM : M ≠ 0 := by
      rintro rfl
      exact hp1 ((Nat.coprime_zero_left _).1 hMp)
    exact_mod_cast hM

  choose sw hsw using fun i => LA_clear (I := I) p (hw i).1
  choose sd hsd using fun i => LA_clear (I := I) p (hw i).2
  have hT0p : Nat.Coprime ((∏ i, sw i) * ∏ i, sd i) p :=
    Nat.Coprime.mul_left (Nat.Coprime.prod_left fun i _ => (hsw i).1)
      (Nat.Coprime.prod_left fun i _ => (hsd i).1)
  obtain ⟨T, hTdef⟩ : ∃ T : ℕ, T = ((∏ i, sw i) * ∏ i, sd i) ^ Nat.totient (p ^ m) := ⟨_, rfl⟩
  have hTp : Nat.Coprime T p := hTdef ▸ Nat.Coprime.pow_left _ hT0p
  have hT0dvd : ((∏ i, sw i) * ∏ i, sd i) ∣ T :=
    hTdef ▸ dvd_pow_self _ (Nat.totient_pos.2 (pow_pos hp.pos m)).ne'
  have hTne : T ≠ 0 := by
    rintro h0
    rw [h0] at hTp
    exact hp1 ((Nat.coprime_zero_left _).1 hTp)
  have hTE : (T : I.E) ≠ 0 := by exact_mod_cast hTne
  have hTmod : T ≡ 1 [MOD p ^ m] := hTdef ▸ Nat.ModEq.pow_totient (Nat.Coprime.pow_right m hT0p)
  obtain ⟨c, hc⟩ : ∃ c, T = 1 + p ^ m * c := by
    have h1 : 1 ≤ T := Nat.one_le_iff_ne_zero.2 hTne
    obtain ⟨c, hc⟩ := (Nat.modEq_iff_dvd' h1).1 hTmod.symm
    refine ⟨c, ?_⟩
    generalize p ^ m * c = q at hc ⊢
    omega
  have hT1 : QA I p (p ^ m) (1 - (T : I.E) ^ 2) := by
    apply QA_of_GE (I := I)
    refine ⟨-((c : 𝓞 I.E) + c + (p : 𝓞 I.E) ^ m * c * c), ?_⟩
    rw [hc]
    push_cast
    ring
  have hTA : (T : I.E) ^ 2 ∈ Ap I p := pow_mem (natCast_mem_Ap I p T) 2
  have hTw : ∀ i, (T : I.E) • w i ∈ I.L := by
    intro i
    obtain ⟨d, hd⟩ : sw i ∣ T := dvd_trans (dvd_trans (Finset.dvd_prod_of_mem sw (Finset.mem_univ i))
      (dvd_mul_right _ _)) hT0dvd
    rw [hd, Nat.cast_mul, mul_comm, mul_smul, natE_smul (I := I)]
    exact I.L.smul_mem _ (hsw i).2
  have hTwd : ∀ i, (T : I.E) • wd i ∈ I.L := by
    intro i
    obtain ⟨d, hd⟩ : sd i ∣ T := dvd_trans (dvd_trans (Finset.dvd_prod_of_mem sd (Finset.mem_univ i))
      (dvd_mul_left _ _)) hT0dvd
    rw [hd, Nat.cast_mul, mul_comm, mul_smul, natE_smul (I := I)]
    exact I.L.smul_mem _ (hsd i).2

  have hθ1s : GE I (p ^ m) (star (θ : I.E) * star (θ : I.E) - star (θ : I.E)) := by
    obtain ⟨t, ht⟩ := hθ1
    obtain ⟨ts, hts⟩ := isInt_star I t
    refine ⟨ts, ?_⟩
    have h := congrArg star ht
    simp only [star_sub, star_mul, star_natCast] at h
    rw [h, hts]
    ring
  obtain ⟨θs, hθs⟩ := isInt_star I θ
  obtain ⟨z, hzdef⟩ : ∃ z : Fin I.n → I.E,
      z = (T : I.E) • ((θ : I.E) • w (Fin.last k) - star (θ : I.E) • wd (Fin.last k)) := ⟨_, rfl⟩
  have hz : z ∈ I.L := by
    rw [hzdef, smul_sub, smul_comm (T : I.E) (θ : I.E), smul_comm (T : I.E) (star (θ : I.E)), ← hθs]
    exact I.L.sub_mem (I.L.smul_mem θ (hTw _)) (I.L.smul_mem θs (hTwd _))
  have hl1 : hG I (wd (Fin.last k)) (w (Fin.last k)) = 1 := by
    simpa using hwd (Fin.last k) (Fin.last k)
  have hl2 : hG I (w (Fin.last k)) (wd (Fin.last k)) = 1 := by
    rw [hG_symm (I := I) (wd (Fin.last k)) (w (Fin.last k)), hl1, star_one]
  have hl3 : ∀ i : Fin k, hG I (wd (Fin.last k)) (w i.castSucc) = 0 := by
    intro i
    rw [hwd, if_neg (Fin.castSucc_ne_last i).symm]
  have hl4 : ∀ i : Fin k, hG I (w (Fin.last k)) (wd i.castSucc) = 0 := by
    intro i
    rw [hG_symm (I := I) (wd i.castSucc) (w (Fin.last k)), hwd, if_neg (Fin.castSucc_ne_last i), star_zero]
  unfold Concl
  refine ⟨z, fun i => (T : I.E) • w i.castSucc, fun i => (T : I.E) • wd i.castSucc, hz,
    fun i => ⟨hTw _, hTwd _⟩, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro a
    rw [hzdef]
    refine ⟨?_, ?_⟩ <;> rw [hG_smul_right, hG_sub_right, hG_smul_right, hG_smul_right]
    · rw [(hew a _).1, (hew a _).2.2.1]
      ring
    · rw [(hew a _).2.1, (hew a _).2.2.2]
      ring
  · intro a i
    simp [hG_smul_right, hew]
  ·
    apply GE_of_QA (I := I) p m (isInt_add I (isInt_hG I hz hz) (isInt_one I))
    have hzz : hG I z z + 1 =
        ((T : I.E) ^ 2 * (hG I (w (Fin.last k)) (w (Fin.last k)) + hG I (wd (Fin.last k)) (wd (Fin.last k))))
          * ((θ : I.E) * star (θ : I.E))
        - (T : I.E) ^ 2 * ((θ : I.E) * θ - θ)
        - (T : I.E) ^ 2 * (star (θ : I.E) * star (θ : I.E) - star (θ : I.E))
        + (T : I.E) ^ 2 * (1 - (θ : I.E) - star (θ : I.E))
        + (1 - (T : I.E) ^ 2) := by
      rw [hzdef]
      simp only [hG_smul_left, hG_smul_right, hG_sub_left, hG_sub_right, star_natCast, star_star]
      rw [hl1, hl2]
      ring
    rw [hzz]
    have hAD : (T : I.E) ^ 2 * (hG I (w (Fin.last k)) (w (Fin.last k)) + hG I (wd (Fin.last k)) (wd (Fin.last k)))
        ∈ Ap I p :=
      mul_mem hTA (add_mem (hG_mem_Ap (I := I) p (hw _).1 (hw _).1) (hG_mem_Ap (I := I) p (hw _).2 (hw _).2))
    refine QA_add (I := I) p _ (QA_add (I := I) p _ (QA_sub (I := I) p _ (QA_sub (I := I) p _
      (QA_mul (I := I) p _ hAD (QA_of_GE (I := I) p _ hθ2))
      (QA_mul (I := I) p _ hTA (QA_of_GE (I := I) p _ hθ1)))
      (QA_mul (I := I) p _ hTA (QA_of_GE (I := I) p _ hθ1s)))
      (QA_mul (I := I) p _ hTA (QA_of_GE (I := I) p _ hθ3))) hT1
  · intro i
    constructor
    · apply GE_of_QA (I := I) p m (isInt_mul I (isInt_coe I θ) (isInt_hG I hz (hTw _)))
      have h : (θ : I.E) * hG I z ((T : I.E) • w i.castSucc) =
          ((T : I.E) ^ 2 * hG I (w (Fin.last k)) (w i.castSucc)) * ((θ : I.E) * star (θ : I.E)) := by
        rw [hzdef]
        simp only [hG_smul_left, hG_smul_right, hG_sub_left, star_natCast, star_star]
        rw [hl3]
        ring
      rw [h]
      exact QA_mul (I := I) p _ (mul_mem hTA (hG_mem_Ap (I := I) p (hw _).1 (hw _).1))
        (QA_of_GE (I := I) p _ hθ2)
    · apply GE_of_QA (I := I) p m
        (isInt_mul I (by rw [← hθs]; exact isInt_coe I θs) (isInt_hG I hz (hTwd _)))
      have h : star (θ : I.E) * hG I z ((T : I.E) • wd i.castSucc) =
          -((T : I.E) ^ 2 * hG I (wd (Fin.last k)) (wd i.castSucc)) * ((θ : I.E) * star (θ : I.E)) := by
        rw [hzdef]
        simp only [hG_smul_left, hG_smul_right, hG_sub_left, star_natCast, star_star]
        rw [hl4]
        ring
      rw [h]
      exact QA_mul (I := I) p _ (neg_mem (mul_mem hTA (hG_mem_Ap (I := I) p (hw _).2 (hw _).2)))
        (QA_of_GE (I := I) p _ hθ2)
  · intro i j
    have h : hG I ((T : I.E) • wd i.castSucc) ((T : I.E) • w j.castSucc) =
        (T : I.E) ^ 2 * (if i = j then 1 else 0) := by
      rw [hG_smul_left, hG_smul_right, hwd, star_natCast]
      simp only [Fin.castSucc_inj]
      ring
    rw [h]
    by_cases hij : i = j
    · rw [if_pos hij, mul_one]
      apply GE_of_QA (I := I) p m
        (isInt_mul I (isInt_coe I θ) (isInt_sub I ⟨(T : 𝓞 I.E) ^ 2, by push_cast; rfl⟩ (isInt_one I)))
      have h2 : (θ : I.E) * ((T : I.E) ^ 2 - 1) = -(θ : I.E) * (1 - (T : I.E) ^ 2) := by ring
      rw [h2]
      exact QA_mul (I := I) p _ (neg_mem (int_mem_Ap (I := I) p θ)) hT1
    · rw [if_neg hij]
      exact ⟨0, by simp⟩
  · exact span_part (I := I) p m r k θ e f M T w wd hMp hM0 hTp hTE hθ1 hθ2 hθ3 hw hspan _
      (fun a => Or.inl (Or.inl (Or.inl (Or.inl ⟨a, rfl⟩))))
      (fun a => Or.inl (Or.inl (Or.inl (Or.inr ⟨a, rfl⟩))))
      (Or.inl (Or.inl (Or.inr hzdef.symm)))
      (fun i => Or.inl (Or.inr ⟨i, rfl⟩))
      (fun i => Or.inr ⟨i, rfl⟩)

end PI.ScRefExists.PPA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocalAssemblyPrincipal =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.ThetaSeriesExistence =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.ThetaSeriesExistence", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.ThetaA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.DedekindDomain.Factorization\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S IsDedekindDomain

namespace PI.ScRefExists.TH

variable (I : Formalism.MainNotions.S.AutInst)

theorem spanG_ne (g : ℕ) (hg : 1 ≤ g) : Ideal.span {(g : 𝓞 I.E)} ≠ 0 := by
  have hg0 : (g : 𝓞 I.E) ≠ 0 := by
    intro h
    have h2 := congrArg (fun x : 𝓞 I.E => (x : I.E)) h
    have h3 : (g : I.E) = 0 := by simpa using h2
    have h4 : g = 0 := by exact_mod_cast h3
    omega
  rw [Ne, Submodule.zero_eq_bot, Ideal.span_singleton_eq_bot]
  exact hg0

def primesG (g : ℕ) (hg : 1 ≤ g) : Finset (HeightOneSpectrum (𝓞 I.E)) :=
  (Ideal.finite_factors (spanG_ne I g hg)).toFinset

theorem mem_primesG (g : ℕ) (hg : 1 ≤ g) (P : HeightOneSpectrum (𝓞 I.E)) :
    P ∈ primesG I g hg ↔ (g : 𝓞 I.E) ∈ P.asIdeal := by
  unfold primesG
  rw [Set.Finite.mem_toFinset, Set.mem_setOf_eq, Ideal.dvd_iff_le, Ideal.span_singleton_le_iff_mem]

theorem prod_le_radical (g : ℕ) (hg : 1 ≤ g) :
    (∏ P ∈ primesG I g hg, P.asIdeal) ≤ (Ideal.span {(g : 𝓞 I.E)}).radical := by
  rw [Ideal.radical_eq_sInf]
  refine le_sInf fun J hJ => ?_
  obtain ⟨hJle, hJp⟩ := hJ
  have hgJ : (g : 𝓞 I.E) ∈ J := hJle (Ideal.mem_span_singleton_self _)
  have hJ0 : J ≠ ⊥ := by
    intro h
    apply spanG_ne I g hg
    rw [Submodule.zero_eq_bot, Ideal.span_singleton_eq_bot]
    rw [h] at hgJ
    exact (Submodule.mem_bot _).mp hgJ
  let Q : HeightOneSpectrum (𝓞 I.E) := ⟨J, hJp, hJ0⟩
  have hQ : Q ∈ primesG I g hg := (mem_primesG I g hg Q).mpr hgJ
  exact Ideal.prod_le_inf.trans (Finset.inf_le hQ)

private lemma sk_GE_of_mem_span_natCast (g : ℕ) (z : 𝓞 I.E) (hz : z ∈ Ideal.span {(g : 𝓞 I.E)}) :
    PI.ScRefExists.Sk.GE I g (z : I.E) := by
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.mp hz
  refine ⟨t, ?_⟩
  rw [← ht]
  first
    | (push_cast; ring)

theorem theta_series_existence : PI.ScRefExists.Sk.ThetaEx := by
  intro I g hg hS
  classical
  letI : LinearOrder (HeightOneSpectrum (𝓞 I.E)) := by
    first
      | exact linearOrderOfSTO WellOrderingRel
  obtain ⟨N, hN⟩ : ∃ N : ℕ, (∏ P ∈ primesG I g hg, P.asIdeal) ^ N ≤ Ideal.span {(g : 𝓞 I.E)} := by
    first
      | exact Ideal.exists_pow_le_of_le_radical_of_fg (prod_le_radical I g hg) (IsNoetherian.noetherian _)
  obtain ⟨θ, hθ⟩ := IsDedekindDomain.exists_forall_sub_mem_ideal (s := primesG I g hg)
    (fun P : HeightOneSpectrum (𝓞 I.E) => P.asIdeal) (fun _ => N) (fun P _ => P.prime)
    (fun P _ Q _ h e => h (HeightOneSpectrum.ext e))
    (fun P => if (P : HeightOneSpectrum (𝓞 I.E)) < cj I P then (1 : 𝓞 I.E) else 0)
  have h1 : ∀ P ∈ primesG I g hg, P < cj I P → θ - 1 ∈ P.asIdeal ^ N := by
    intro P hP h
    simpa [h] using hθ P hP
  have h0 : ∀ P ∈ primesG I g hg, ¬ P < cj I P → θ ∈ P.asIdeal ^ N := by
    intro P hP h
    simpa [h] using hθ P hP
  have hcjS : ∀ P ∈ primesG I g hg, cj I P ∈ primesG I g hg := by
    intro P hP
    rw [mem_primesG] at hP ⊢
    rw [mem_cj, map_natCast]
    exact hP
  have hsg : ∀ (P : HeightOneSpectrum (𝓞 I.E)) (z : 𝓞 I.E), z ∈ (cj I P).asIdeal ^ N →
      sg I z ∈ P.asIdeal ^ N := by
    intro P z hz
    have h2 := Ideal.mem_map_of_mem (sg I) hz
    rwa [Ideal.map_pow, show (cj I P).asIdeal = P.asIdeal.comap (sg I) from rfl,
      Ideal.map_comap_of_surjective _ (fun y => ⟨sg I y, sg_sg I y⟩)] at h2
  have hloc : ∀ P ∈ primesG I g hg, θ * θ - θ ∈ P.asIdeal ^ N ∧ θ * sg I θ ∈ P.asIdeal ^ N ∧
      1 - θ - sg I θ ∈ P.asIdeal ^ N := by
    intro P hP
    have hne : cj I P ≠ P := cj_ne I g hg hS P ((mem_primesG I g hg P).mp hP)
    by_cases hlt : P < cj I P
    · have ha := h1 P hP hlt
      have hb : θ ∈ (cj I P).asIdeal ^ N :=
        h0 (cj I P) (hcjS P hP) (by rw [cj_cj]; exact lt_asymm hlt)
      have hb' := hsg P θ hb
      refine ⟨?_, ?_, ?_⟩
      · have e : θ * θ - θ = (θ - 1) * θ := by ring
        rw [e]
        exact Ideal.mul_mem_right _ _ ha
      · exact Ideal.mul_mem_left _ _ hb'
      · have e : 1 - θ - sg I θ = -(θ - 1) - sg I θ := by ring
        rw [e]
        exact Ideal.sub_mem _ (Submodule.neg_mem _ ha) hb'
    · have ha := h0 P hP hlt
      have hlt' : cj I P < cj I (cj I P) := by
        rw [cj_cj]
        exact lt_of_le_of_ne (not_lt.mp hlt) hne
      have hb' := hsg P _ (h1 (cj I P) (hcjS P hP) hlt')
      rw [map_sub, map_one] at hb'
      refine ⟨?_, ?_, ?_⟩
      · have e : θ * θ - θ = θ * (θ - 1) := by ring
        rw [e]
        exact Ideal.mul_mem_right _ _ ha
      · exact Ideal.mul_mem_right _ _ ha
      · have e : 1 - θ - sg I θ = -θ - (sg I θ - 1) := by ring
        rw [e]
        exact Ideal.sub_mem _ (Submodule.neg_mem _ ha) hb'
  have key : (primesG I g hg).inf (fun P : HeightOneSpectrum (𝓞 I.E) => P.asIdeal ^ N) =
      (∏ P ∈ primesG I g hg, P.asIdeal) ^ N := by
    rw [← Finset.prod_pow]
    exact IsDedekindDomain.inf_pow_eq_prod_of_prime _ _ _ (fun P _ => P.prime)
      (fun P _ Q _ h e => h (HeightOneSpectrum.ext e))
  have hmem : ∀ z : 𝓞 I.E, (∀ P ∈ primesG I g hg, z ∈ P.asIdeal ^ N) →
      z ∈ Ideal.span {(g : 𝓞 I.E)} := by
    intro z hz
    apply hN
    rw [← key]
    exact (Ideal.span_singleton_le_iff_mem _).mp
      (Finset.le_inf fun P hP => (Ideal.span_singleton_le_iff_mem _).mpr (hz P hP))
  refine ⟨θ, ?_, ?_, ?_⟩
  · have e : ((θ * θ - θ : 𝓞 I.E) : I.E) = (θ : I.E) * θ - θ := by push_cast; ring
    rw [← e]
    exact sk_GE_of_mem_span_natCast I g _ (hmem _ fun P hP => (hloc P hP).1)
  · have e : ((θ * sg I θ : 𝓞 I.E) : I.E) = (θ : I.E) * star (θ : I.E) := by
      rw [← sg_coe]; push_cast; ring
    rw [← e]
    exact sk_GE_of_mem_span_natCast I g _ (hmem _ fun P hP => (hloc P hP).2.1)
  · have e : ((1 - θ - sg I θ : 𝓞 I.E) : I.E) = 1 - (θ : I.E) - star (θ : I.E) := by
      rw [← sg_coe]; push_cast; ring
    rw [← e]
    exact sk_GE_of_mem_span_natCast I g _ (hmem _ fun P hP => (hloc P hP).2.2)

end PI.ScRefExists.TH
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.ThetaSeriesExistence =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.TargetOfWframe =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.TargetOfWframe", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PPAssemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GWGlue\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.GlueHoldsVar\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.IdemMain\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocGlob\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.LocalAssemblyPrincipal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.ThetaSeriesExistence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.ScRefExists.Top

open PI.ScRefExists.Sk

theorem target_of_wframe (h : WFrame) : PI.ScRefExists.Target :=
  target_of_steps PI.ScRefExists.GlueC.glue_holds_var PI.ScRefExists.TH.theta_series_existence
    PI.ScRefExists.Id.idemLift PI.ScRefExists.LG.local_global_principle_alt
    (PI.ScRefExists.GWG.globW_of (gwpp_of h PI.ScRefExists.PPA.local_assembly_principal)
      PI.ScRefExists.GWG.chinese_remainder_gluing)

end PI.ScRefExists.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.TargetOfWframe =====
