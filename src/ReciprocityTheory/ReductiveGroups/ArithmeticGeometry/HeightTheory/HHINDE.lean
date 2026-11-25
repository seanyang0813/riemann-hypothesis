module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDC
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HintISBounds
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.IntNsg
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.IntegralLeOfAeLeAffine
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.LogHeightGeneratorLowerBound
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.LogNormNonneg
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FsumEqSum
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.GoodPrimesProperties
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HNormPtsB
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HPlaces
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.KTFiniteDimensional
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValuationResidueLemmas
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FsumLeOf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDD, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDE

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDD =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDD", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.GoodPrimesProperties\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HNormPtsB\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HPlaces\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.KTFiniteDimensional\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValuationResidueLemmas\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField MvPolynomial ReciprocityTheory.MultiplicativeHeights ReciprocityTheory.MultiplicativeHeights.Closed MeasureTheory IsDedekindDomain
  ReciprocityTheory.ChartRestriction.G.T0.HeightMultiplicativity

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem AH_smul (hd : d.AxH 𝒜) (h : d.S1) (O : ∀ c, AddValuation (Ω c) (WithTop ℤ) → A c → ℤ)
    (Nr : ∀ c, A c → (Ω c →+* ℂ) → ℝ) (ta : ∀ c, A c) (a : ∀ c, Ω c) (ha : ∀ c, a c ≠ 0)
    (hOs : ∀ c v, d.admitted c v →
      ((O c v (a c • ta c) : ℤ) : WithTop ℤ) = v (a c) + (O c v (ta c) : WithTop ℤ))
    (hOf : ∀ c, {v | d.admitted c v ∧ O c v (ta c) ≠ 0}.Finite)
    (hOf' : ∀ c, {v | d.admitted c v ∧ O c v (a c • ta c) ≠ 0}.Finite)
    (hPf : ∀ c, {p | p ∈ d.HtOne ∧ d.anP h O c (ta c) p ≠ 0}.Finite)
    (hNs : ∀ c P, Nr c (a c • ta c) P = ‖P (a c)‖ * Nr c (ta c) P)
    (hN0 : ∀ c P, Nr c (ta c) P ≠ 0)
    (hI : ∀ c sg, Integrable (d.aI Nr c (ta c) sg) (blockSphereProb d.D (d.N + 1)))
    (hI' : ∀ c sg, Integrable (d.aI Nr c (a c • ta c) sg) (blockSphereProb d.D (d.N + 1))) :
    d.AH h O Nr (fun c => a c • ta c) = d.AH h O Nr ta := by
  set U := ⋃ c, ({la : HeightOneSpectrum (𝓞 K) | ∃ w ∈ d.PlOver la c, O c (d.Wres c w) (ta c) ≠ 0} ∪
    {la : HeightOneSpectrum (𝓞 K) | ∃ w ∈ d.PlOver la c, O c (d.Wres c w) (a c • ta c) ≠ 0}) with hUdef
  have hU : U.Finite := Set.finite_iUnion fun c =>
    (d.la_fin hd h c (fun v => O c v (ta c)) (hOf c)).union (d.la_fin hd h c (fun v => O c v (a c • ta c)) (hOf' c))
  have e1 : ∑ᶠ la, d.aNla h O ta la * logNorm la = ∑ la ∈ hU.toFinset, d.aNla h O ta la * logNorm la := by
    apply finsum_eq_sum_of_support_subset
    intro la hla
    rw [Set.Finite.coe_toFinset]
    obtain ⟨c, hc⟩ := Set.mem_iUnion.1 (d.aNla_supp hd h O ta (Function.support_mul_subset_left _ _ hla))
    exact Set.mem_iUnion.2 ⟨c, Or.inl hc⟩
  have e2 : ∑ᶠ la, d.aNla h O (fun c => a c • ta c) la * logNorm la =
      ∑ la ∈ hU.toFinset, d.aNla h O (fun c => a c • ta c) la * logNorm la := by
    apply finsum_eq_sum_of_support_subset
    intro la hla
    rw [Set.Finite.coe_toFinset]
    obtain ⟨c, hc⟩ := Set.mem_iUnion.1
      (d.aNla_supp hd h O (fun c => a c • ta c) (Function.support_mul_subset_left _ _ hla))
    exact Set.mem_iUnion.2 ⟨c, Or.inr hc⟩
  have e3 : ∀ c, ∑ᶠ la, (d.nLa h c la (algebraMap (Ω c) (OmS (Ω c) d.D d.N) (a c)) : ℝ) * logNorm la =
      ∑ la ∈ hU.toFinset, (d.nLa h c la (algebraMap (Ω c) (OmS (Ω c) d.D d.N) (a c)) : ℝ) * logNorm la := by
    intro c
    apply finsum_eq_sum_of_support_subset
    intro la hla
    rw [Set.Finite.coe_toFinset]
    have hla' : la ∈ Function.support
        (fun la => d.nLa h c la (algebraMap (Ω c) (OmS (Ω c) d.D d.N) (a c))) := by
      intro h0; apply hla; simp only at h0 ⊢; rw [h0]; simp
    exact Set.mem_iUnion.2 ⟨c, d.nLa_supp hd h O c (ta c) (a c) (ha c) (hOs c) hla'⟩
  have hla : ∑ᶠ la, d.aNla h O (fun c => a c • ta c) la * logNorm la =
      ∑ᶠ la, d.aNla h O ta la * logNorm la +
        ∑ c, ∑ᶠ la, (d.nLa h c la (algebraMap (Ω c) (OmS (Ω c) d.D d.N) (a c)) : ℝ) * logNorm la := by
    rw [e1, e2, Finset.sum_congr rfl fun c _ => e3 c, Finset.sum_comm, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro la _
    rw [d.aNla_smul hd h O ta a ha hOs la, add_mul, Finset.sum_mul]
  have hP : ∀ c, ∑ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne),
      (d.anP h O c (a c • ta c) p : ℝ) * h0 (d.gen p) =
      ∑ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne), (d.anP h O c (ta c) p : ℝ) * h0 (d.gen p) +
      ∑ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne), (d.nPa h c p (a c) : ℝ) * h0 (d.gen p) := by
    intro c
    rw [finsum_mem_congr rfl (fun p hp => by
      rw [d.usage₆ hd h O c (ta c) (a c) (ha c) (hOs c) hp, Int.cast_add, add_mul])]
    apply finsum_mem_add_distrib'
    · refine (hPf c).subset ?_
      rintro p ⟨hp, hp0⟩
      exact ⟨hp, fun h0' => hp0 (by simp only; rw [h0']; simp)⟩
    · refine (d.nPa_support hd h c (a c) (ha c)).subset ?_
      rintro p ⟨hp, hp0⟩
      exact ⟨hp, fun h0' => hp0 (by simp only; rw [h0']; simp)⟩
  have hS : (fun sg => ∑ c, ∫ z, (∑ᶠ (P : Ω c →+* ℂ) (_ : P ∈ d.ST c sg (d.tOf z)),
      -Real.log (Nr c (a c • ta c) P)) ∂(blockSphereProb d.D (d.N + 1))) =
      fun sg => (∑ c, ∫ z, (∑ᶠ (P : Ω c →+* ℂ) (_ : P ∈ d.ST c sg (d.tOf z)),
        -Real.log (Nr c (ta c) P)) ∂(blockSphereProb d.D (d.N + 1))) -
        ∑ c, ∫ z, d.lsum c sg (a c) z ∂(blockSphereProb d.D (d.N + 1)) := by
    funext sg
    rw [← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl fun c _ =>
      d.nsg_smul hd h Nr c (ta c) (a c) (ha c) (hNs c) (hN0 c) sg (hI c sg) (hI' c sg)
  have hpf := fun c => d.pf hd h c (a c) (ha c)
  unfold AH
  rw [hla, hS, meanK_sub, Finset.sum_congr rfl fun c _ => hP c, Finset.sum_add_distrib]
  simp only [meanK_sum]
  rw [← Finset.sum_congr rfl fun c _ => hpf c, Finset.sum_add_distrib, add_div, Finset.sum_div]
  ring

end Data

end ReciprocityTheory.ChartRestriction.G.T0

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField MvPolynomial ReciprocityTheory.MultiplicativeHeights ReciprocityTheory.MultiplicativeHeights.Closed MeasureTheory IsDedekindDomain
  ReciprocityTheory.ChartRestriction.G.T0.HeightMultiplicativity

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

def IntOK (G : WT) (ta : ∀ c, A c) : Prop :=
  ∀ c sg, Integrable (d.aI (fun c f P => d.nrm c G f P) c (ta c) sg) (blockSphereProb d.D (d.N + 1))

theorem meanK_add (F G : (K →+* ℂ) → ℝ) : meanK (fun sg => F sg + G sg) = meanK F + meanK G := by
  first
    | (simp only [meanK, Finset.sum_add_distrib, add_div])

theorem aI_mul_ae (hd : d.AxH 𝒜) (h : d.S1) {G G' : WT} (c : ι) {f g : A c}
    (hf : f ∈ 𝒜 c G) (hg : g ∈ 𝒜 c G') (hf0 : f ≠ 0) (hg0 : g ≠ 0) (sg : K →+* ℂ) :
    d.aI (fun c f P => d.nrm c (G + G') f P) c (f * g) sg =ᵐ[blockSphereProb d.D (d.N + 1)]
      fun z => d.aI (fun c f P => d.nrm c G f P) c f sg z + d.aI (fun c f P => d.nrm c G' f P) c g sg z := by
  have hfin : ∀ᵐ z ∂(blockSphereProb d.D (d.N + 1)), (d.ST c sg (d.tOf z)).Finite := by
    letI : Countable K := countable_numberField K
    letI : Algebra (KTf K d.D d.N) (OmS (Ω c) d.D d.N) := (d.KTtoS h c).toAlgebra
    letI := d.KT_finiteDimensional hd c
    let e : KTf K d.D d.N ≃+* d.KT c :=
      ((d.KTtoS h c).rangeRestrictFieldEquiv).trans (RingEquiv.subfieldCongr (d.KTtoS_fieldRange h c))
    have hmap : (algebraMap (KTf K d.D d.N) (OmS (Ω c) d.D d.N)).comp e.symm.toRingHom =
        algebraMap (d.KT c) (OmS (Ω c) d.D d.N) := by
      ext x
      change d.KTtoS h c (e.symm x) = (x : OmS (Ω c) d.D d.N)
      exact congrArg Subtype.val (e.apply_symm_apply x)
    letI : Module.Finite (KTf K d.D d.N) (OmS (Ω c) d.D d.N) :=
      Module.Finite.of_equiv_equiv e.symm (RingEquiv.refl _) hmap
    filter_upwards [NPB.ae_gen (K := K) (D := d.D) (N := d.N) sg] with z hz
    obtain ⟨y, -, hpt⟩ := NPB.exists_gen sg (fun q => d.tOf z q.1 q.2) hz 1 one_ne_zero
    let pt := NPB.gpt (fun q => d.tOf z q.1 q.2) y
    have hy : ∀ i, y (Fin.natAdd (d.N + 1) i) ≠ 0 := by
      intro i h0
      exact hpt (MvPolynomial.X (i.succ, 0)) (MvPolynomial.X_ne_zero _) (by simp [NPB.gpt, h0])
    letI : Algebra (KTf K d.D d.N) ℂ := (tauPev sg pt hpt).toAlgebra
    rw [← d.ST_scale c sg (d.tOf z) y hy]
    refine (Set.finite_range (fun σ : OmS (Ω c) d.D d.N →ₐ[KTf K d.D d.N] ℂ =>
      (σ : OmS (Ω c) d.D d.N →+* ℂ).comp (algebraMap (Ω c) (OmS (Ω c) d.D d.N)))).subset ?_
    intro P hP
    obtain ⟨σ, hσ, rfl⟩ := d.exists_emb hd h c sg pt hpt P hP
    exact ⟨{ σ with commutes' := fun x => RingHom.congr_fun hσ x }, rfl⟩
  filter_upwards [hfin] with z hz
  unfold aI
  rw [finsum_mem_eq_finite_toFinset_sum _ hz, finsum_mem_eq_finite_toFinset_sum _ hz,
    finsum_mem_eq_finite_toFinset_sum _ hz, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro P _
  dsimp only
  rw [hd.nrm_mul c P hf hg hf0 hg0, Real.log_mul (hd.nrm_pos c P hf hf0).ne' (hd.nrm_pos c P hg hg0).ne']

theorem Hgt_mul (hd : d.AxH 𝒜) (h : d.S1) (G G' : WT) (f g : ∀ c, A c)
    (hf : ∀ c, f c ∈ 𝒜 c G ∧ f c ≠ 0) (hg : ∀ c, g c ∈ 𝒜 c G' ∧ g c ≠ 0)
    (hIf : d.IntOK G f) (hIg : d.IntOK G' g) :
    d.IntOK (G + G') (f * g) ∧ d.Hgt h (G + G') (f * g) = d.Hgt h G f + d.Hgt h G' g := by
  have hae := fun c sg => d.aI_mul_ae hd h c (hf c).1 (hg c).1 (hf c).2 (hg c).2 sg
  have hI : d.IntOK (G + G') (f * g) := fun c sg => ((hIf c sg).add (hIg c sg)).congr (hae c sg).symm
  refine ⟨hI, ?_⟩

  have hOf := fun c => hd.a3' c (hf c).1 (hf c).2
  have hOg := fun c => hd.a3' c (hg c).1 (hg c).2
  have hla : ∀ la, d.aNla h (fun c v x => d.ord c v (G + G') x) (f * g) la =
      d.aNla h (fun c v x => d.ord c v G x) f la + d.aNla h (fun c v x => d.ord c v G' x) g la := by
    intro la
    unfold aNla
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro c _
    have hfin := (d.places_over_la hd h la c).1
    rw [finsum_mem_eq_finite_toFinset_sum _ hfin, finsum_mem_eq_finite_toFinset_sum _ hfin,
      finsum_mem_eq_finite_toFinset_sum _ hfin, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro w hw
    rw [Set.Finite.mem_toFinset] at hw
    have hv := (d.admissible_over_prime hd h la c w hw).1
    rw [Pi.mul_apply]
    dsimp only
    rw [hd.ord_mul c _ hv (hf c).1 (hg c).1 (hf c).2 (hg c).2]
    push_cast; ring
  have hsf : (Function.support fun la => d.aNla h (fun c v x => d.ord c v G x) f la * logNorm la).Finite :=
    (Set.finite_iUnion fun c => d.la_fin hd h c (fun v => d.ord c v G (f c)) (hOf c)).subset
    ((Function.support_mul_subset_left _ _).trans (d.aNla_supp hd h (fun c v x => d.ord c v G x) f))
  have hsg : (Function.support fun la => d.aNla h (fun c v x => d.ord c v G' x) g la * logNorm la).Finite :=
    (Set.finite_iUnion fun c => d.la_fin hd h c (fun v => d.ord c v G' (g c)) (hOg c)).subset
    ((Function.support_mul_subset_left (fun la => d.aNla h (fun c v x => d.ord c v G' x) g la)
      logNorm).trans (d.aNla_supp hd h (fun c v x => d.ord c v G' x) g))
  have hN : ∑ᶠ la, d.aNla h (fun c v x => d.ord c v (G + G') x) (f * g) la * logNorm la =
      ∑ᶠ la, d.aNla h (fun c v x => d.ord c v G x) f la * logNorm la +
      ∑ᶠ la, d.aNla h (fun c v x => d.ord c v G' x) g la * logNorm la := by
    rw [← finsum_add_distrib hsf hsg]
    exact finsum_congr fun la => by rw [hla, add_mul]

  have hS : ∀ sg c, ∫ z, (∑ᶠ (P : Ω c →+* ℂ) (_ : P ∈ d.ST c sg (d.tOf z)),
      -Real.log (d.nrm c (G + G') ((f * g) c) P)) ∂(blockSphereProb d.D (d.N + 1)) =
      ∫ z, (∑ᶠ (P : Ω c →+* ℂ) (_ : P ∈ d.ST c sg (d.tOf z)),
        -Real.log (d.nrm c G (f c) P)) ∂(blockSphereProb d.D (d.N + 1)) +
      ∫ z, (∑ᶠ (P : Ω c →+* ℂ) (_ : P ∈ d.ST c sg (d.tOf z)),
        -Real.log (d.nrm c G' (g c) P)) ∂(blockSphereProb d.D (d.N + 1)) := by
    intro sg c
    have e1 := d.neg_aI (fun c f P => d.nrm c (G + G') f P) c ((f * g) c) sg
    have e2 := d.neg_aI (fun c f P => d.nrm c G f P) c (f c) sg
    have e3 := d.neg_aI (fun c f P => d.nrm c G' f P) c (g c) sg
    simp_rw [e1, e2, e3]
    rw [integral_neg, integral_neg, integral_neg, Pi.mul_apply, integral_congr_ae (hae c sg),
      integral_add (hIf c sg) (hIg c sg)]
    ring

  have hP : ∀ c, ∑ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne),
      (d.anP h (fun c v x => d.ord c v (G + G') x) c ((f * g) c) p : ℝ) * h0 (d.gen p) =
      ∑ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne),
        (d.anP h (fun c v x => d.ord c v G x) c (f c) p : ℝ) * h0 (d.gen p) +
      ∑ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne),
        (d.anP h (fun c v x => d.ord c v G' x) c (g c) p : ℝ) * h0 (d.gen p) := by
    intro c
    rw [finsum_mem_congr rfl (fun p hp => by
      rw [show d.anP h (fun c v x => d.ord c v (G + G') x) c ((f * g) c) p =
          d.anP h (fun c v x => d.ord c v G x) c (f c) p + d.anP h (fun c v x => d.ord c v G' x) c (g c) p from by
        have hfin := d.goodP_finite' hd h c hp
        unfold anP
        rw [finsum_mem_eq_finite_toFinset_sum _ hfin, finsum_mem_eq_finite_toFinset_sum _ hfin,
          finsum_mem_eq_finite_toFinset_sum _ hfin, ← Finset.sum_add_distrib]
        apply Finset.sum_congr rfl
        intro w hw
        rw [Set.Finite.mem_toFinset] at hw
        rw [Pi.mul_apply]
        dsimp only
        rw [hd.ord_mul c _ (d.admissible_of_good_valuation hd h c hp hw) (hf c).1 (hg c).1 (hf c).2 (hg c).2]
        ring, Int.cast_add, add_mul])]
    apply finsum_mem_add_distrib'
    · refine ((d.good_primes_properties hd h c).2.2.1 G (f c) (hf c).1 (hf c).2).subset ?_
      rintro p ⟨hp, hp0⟩
      exact ⟨hp, fun h0' => hp0 (by simp only; rw [show d.anP h _ c (f c) p = d.nP h c G (f c) p from rfl, h0']; simp)⟩
    · refine ((d.good_primes_properties hd h c).2.2.1 G' (g c) (hg c).1 (hg c).2).subset ?_
      rintro p ⟨hp, hp0⟩
      exact ⟨hp, fun h0' => hp0 (by simp only; rw [show d.anP h _ c (g c) p = d.nP h c G' (g c) p from rfl, h0']; simp)⟩
  rw [d.Hgt_eq_AH, d.Hgt_eq_AH, d.Hgt_eq_AH]
  unfold AH
  rw [hN]
  simp only [hS, Finset.sum_add_distrib, meanK_add, hP]
  ring

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDD =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDE =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDE", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.GoodPrimesProperties\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HintISBounds\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.IntNsg\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.IntegralLeOfAeLeAffine\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.LogHeightGeneratorLowerBound\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.LogNormNonneg\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.ValuationResidueLemmas\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FsumEqSum\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField MvPolynomial ReciprocityTheory.MultiplicativeHeights ReciprocityTheory.MultiplicativeHeights.Closed MeasureTheory IsDedekindDomain
  ReciprocityTheory.ChartRestriction.G.T0.HeightMultiplicativity

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem exists_smul_eq (hd : d.AxH 𝒜) {c : ι} {G : WT} {f g : A c} (hf : f ∈ 𝒜 c G) (hf0 : f ≠ 0)
    (hg : g ∈ 𝒜 c G) (hg0 : g ≠ 0) : ∃ a : Ω c, a ≠ 0 ∧ a • f = g := by
  have h1 := hd.finrank_one c G
  have hne : (⟨f, hf⟩ : 𝒜 c G) ≠ 0 := by
    rwa [Ne, Submodule.mk_eq_zero]
  obtain ⟨a, ha⟩ := (finrank_eq_one_iff_of_nonzero' _ hne).1 h1 ⟨g, hg⟩
  have ha' : a • f = g := congrArg Subtype.val ha
  refine ⟨a, ?_, ha'⟩
  rintro rfl
  exact hg0 (by rw [← ha', zero_smul])

theorem Hgt_indep (hd : d.AxH 𝒜) (h : d.S1) (G : WT) (ta ta' : ∀ c, A c)
    (hta : ∀ c, ta c ∈ 𝒜 c G ∧ ta c ≠ 0) (hta' : ∀ c, ta' c ∈ 𝒜 c G ∧ ta' c ≠ 0)
    (hI : d.IntOK G ta) (hI' : d.IntOK G ta') : d.Hgt h G ta = d.Hgt h G ta' := by
  choose a ha hae using fun c => d.exists_smul_eq hd (hta c).1 (hta c).2 (hta' c).1 (hta' c).2
  have he : ta' = fun c => a c • ta c := funext fun c => (hae c).symm
  subst he
  rw [d.Hgt_eq_AH, d.Hgt_eq_AH]
  refine (d.AH_smul hd h _ _ ta a ha (fun c v hv => hd.ord_smul c v hv (a c) (hta c).1 (hta c).2 (ha c))
    (fun c => hd.a3' c (hta c).1 (hta c).2) (fun c => hd.a3' c (hta' c).1 (hta' c).2)
    (fun c => (d.good_primes_properties hd h c).2.2.1 G (ta c) (hta c).1 (hta c).2)
    (fun c P => hd.nrm_smul c P (a c) (hta c).1 (hta c).2 (ha c))
    (fun c P => (hd.nrm_pos c P (hta c).1 (hta c).2).ne') hI hI').symm

theorem Hgt_pow (hd : d.AxH 𝒜) (h : d.S1) (G : WT) (f : ∀ c, A c)
    (hf : ∀ c, f c ∈ 𝒜 c G ∧ f c ≠ 0) (hI : d.IntOK G f) (n : ℕ) :
    (∀ c, (f ^ (n + 1)) c ∈ 𝒜 c ((n + 1) • G) ∧ (f ^ (n + 1)) c ≠ 0) ∧
      d.IntOK ((n + 1) • G) (f ^ (n + 1)) ∧
      d.Hgt h ((n + 1) • G) (f ^ (n + 1)) = ((n + 1 : ℕ) : ℝ) * d.Hgt h G f := by
  induction n with
  | zero =>
    refine ⟨fun c => ?_, ?_, ?_⟩ <;>
      simp only [zero_add, pow_one, one_smul, Nat.cast_one, one_mul]
    · exact hf c
    · exact hI
  | succ n ih =>
    obtain ⟨hm, hI', hH⟩ := ih
    have hmem : ∀ c, (f ^ (n + 1 + 1)) c ∈ 𝒜 c ((n + 1 + 1) • G) ∧ (f ^ (n + 1 + 1)) c ≠ 0 := by
      intro c
      haveI := hd.graded c
      rw [pow_succ, succ_nsmul, Pi.mul_apply]
      exact ⟨SetLike.GradedMul.mul_mem (hm c).1 (hf c).1,
        hd.mul_ne_zero c (hm c).1 (hf c).1 (hm c).2 (hf c).2⟩
    obtain ⟨hI2, hH2⟩ := d.Hgt_mul hd h ((n + 1) • G) G (f ^ (n + 1)) f hm hf hI' hI
    rw [← pow_succ, ← succ_nsmul] at hI2 hH2
    refine ⟨hmem, hI2, ?_⟩
    rw [hH2, hH]
    push_cast
    ring

theorem Hgt_pow' (hd : d.AxH 𝒜) (h : d.S1) (G : WT) (f : ∀ c, A c)
    (hf : ∀ c, f c ∈ 𝒜 c G ∧ f c ≠ 0) (hI : d.IntOK G f) (n : ℕ) (hn : 0 < n) :
    (∀ c, (f ^ n) c ∈ 𝒜 c (n • G) ∧ (f ^ n) c ≠ 0) ∧ d.IntOK (n • G) (f ^ n) ∧
      d.Hgt h (n • G) (f ^ n) = (n : ℝ) * d.Hgt h G f := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  exact d.Hgt_pow hd h G f hf hI m

theorem intOK_of (hd : d.AxH 𝒜) (h : d.S1) (hI2be : d.HeightIntegralBoundEstimate) (G : WT)
    (hG : G ∈ ({d.wL, d.n1 • d.wde, (2 : ℕ) • d.G1, d.wF, d.G2} : Set WT)) (ta : ∀ c, A c)
    (hta : ∀ c, ta c ∈ 𝒜 c G ∧ ta c ≠ 0) : d.IntOK G ta :=
  fun c sg => (d.int_Nsg hd h hI2be c sg).1 G (ta c) hG (hta c).1 (hta c).2

theorem weight_double_eq_scaled_line : d.n1 • ((2 : ℕ) • d.G1) + (2 : ℕ) • (d.n1 • d.wde) = (2 * d.n1) • d.wL := by
  simp only [Data.G1, smul_sub, smul_smul]
  rw [mul_comm d.n1 2]
  exact sub_add_cancel _ _

theorem weight_sum_eq_scaled_line : d.wF + d.G2 = (d.D + 4) • d.wL := by
  simp only [Data.G2]
  abel

theorem degree_multiplier_pos (hd : d.AxH 𝒜) : 0 < d.n1 := Nat.mul_pos hd.i_ge hd.g_zero_ge_ask_sum

theorem h_ind' (hd : d.AxH 𝒜) (h : d.S1) (hI2be : d.HeightIntegralBoundEstimate) :
    (∀ (G : WT) (ta ta' : ∀ c, A c),
      G ∈ ({d.wL, d.n1 • d.wde, (2 : ℕ) • d.G1, d.wF, d.G2} : Set WT) →
      (∀ c, ta c ∈ 𝒜 c G ∧ ta c ≠ 0) → (∀ c, ta' c ∈ 𝒜 c G ∧ ta' c ≠ 0) →
      d.Hgt h G ta = d.Hgt h G ta') ∧
    (∀ f f' : ∀ c, A c, (∀ c, f c ∈ 𝒜 c d.wL ∧ f c ≠ 0) → (∀ c, f' c ∈ 𝒜 c d.wL ∧ f' c ≠ 0) →
      d.HgtMM h f = d.HgtMM h f') ∧
    (∀ x : Fin (d.N + 1) → K, (∀ c, d.wx x c ≠ 0) →
      (d.n1 : ℝ) * d.Hgt h ((2 : ℕ) • d.G1) d.ta1 + 2 * d.Hgt h (d.n1 • d.wde) d.et =
        2 * d.n1 * d.Hgt h d.wL (d.wx x)) ∧
    (∀ (x : Fin (d.N + 1) → K) (ta' : ∀ c, A c), (∀ c, d.wx x c ≠ 0) →
      (∀ c, ta' c ∈ 𝒜 c d.wF ∧ ta' c ≠ 0) →
      d.Hgt h d.wF ta' + d.Hgt h d.G2 d.ta2 = (d.D + 4) * d.Hgt h d.wL (d.wx x)) := by
  have hmemS : ∀ G, G ∈ ({d.wL, d.n1 • d.wde, (2 : ℕ) • d.G1, d.wF, d.G2} : Set WT) → True :=
    fun _ _ => trivial
  refine ⟨fun G ta ta' hG hta hta' => d.Hgt_indep hd h G ta ta' hta hta'
      (d.intOK_of hd h hI2be G hG ta hta) (d.intOK_of hd h hI2be G hG ta' hta'), ?_, ?_, ?_⟩
  · intro f f' hf hf'
    choose a ha hae using fun c => d.exists_smul_eq hd (hf c).1 (hf c).2 (hf' c).1 (hf' c).2
    have he : f' = fun c => a c • f c := funext fun c => (hae c).symm
    subst he
    have hbe : ∀ c P, d.be c P ≠ 0 := fun c P => by
      rw [d.hint_be_eq hd c P]
      exact (mul_pos (hd.nrm_pos c P (hd.w_mem (d.jc c) c) (hd.w_base c))
        (by linarith [d.hint_one_le_U hd c P])).ne'
    have hOs : ∀ c v, d.admitted c v →
        ((d.ordMM c v (a c • f c) : ℤ) : WithTop ℤ) = v (a c) + (d.ordMM c v (f c) : WithTop ℤ) := by
      intro c v hv
      have e := hd.ord_smul c v hv (a c) (hf c).1 (hf c).2 (ha c)
      have hvt : v (a c) ≠ ⊤ := by rw [Ne, AddValuation.top_iff]; exact ha c
      obtain ⟨k, hk⟩ := WithTop.ne_top_iff_exists.1 hvt
      rw [← hk] at e ⊢
      unfold ordMM
      norm_cast at e ⊢
      omega
    have hOfin : ∀ c (g : A c), g ∈ 𝒜 c d.wL → g ≠ 0 →
        {v | d.admitted c v ∧ d.ordMM c v g ≠ 0}.Finite := by
      intro c g hg hg0
      refine ((hd.a3' c hg hg0).union (Set.finite_iUnion fun j : {j // d.w j c ≠ 0} =>
        hd.a3' c (hd.w_mem j.1 c) j.2)).subset ?_
      rintro v ⟨hv, hne⟩
      by_contra hcon
      simp only [Set.mem_union, Set.mem_setOf_eq, Set.mem_iUnion, not_or, not_exists, not_and,
        not_not] at hcon
      apply hne
      have hne' : Nonempty {j // d.w j c ≠ 0} := ⟨⟨d.jc c, hd.w_base c⟩⟩
      unfold ordMM
      rw [hcon.1 hv]
      have : (fun j : {j // d.w j c ≠ 0} => d.ord c v d.wL (d.w j c)) = fun _ => 0 :=
        funext fun j => hcon.2 j hv
      rw [this, ciInf_const]; rfl
    have hsm : ∀ c, a c • f c ∈ 𝒜 c d.wL ∧ a c • f c ≠ 0 := fun c =>
      ⟨Submodule.smul_mem _ _ (hf c).1, smul_ne_zero (ha c) (hf c).2⟩
    rw [d.HgtMM_eq_AH, d.HgtMM_eq_AH]
    refine (d.AH_smul hd h (fun c v g => d.ordMM c v g) (fun c g P => d.nrm c d.wL g P / d.be c P) f a ha hOs (fun c => hOfin c _ (hf c).1 (hf c).2)
      (fun c => hOfin c _ (hsm c).1 (hsm c).2)
      (fun c => (d.good_primes_properties hd h c).2.2.2 (f c) (hf c).1 (hf c).2)
      (fun c P => by
        rw [hd.nrm_smul c P (a c) (hf c).1 (hf c).2 (ha c), mul_div_assoc])
      (fun c P => div_ne_zero (hd.nrm_pos c P (hf c).1 (hf c).2).ne' (hbe c P))
      (fun c sg => (d.int_Nsg hd h hI2be c sg).2 (f c) (hf c).1 (hf c).2)
      (fun c sg => (d.int_Nsg hd h hI2be c sg).2 _ (hsm c).1 (hsm c).2)).symm
  · intro x hx
    have hw : ∀ c, d.wx x c ∈ 𝒜 c d.wL ∧ d.wx x c ≠ 0 := fun c => ⟨d.wx_mem hd x c, hx c⟩
    have hIw := d.intOK_of hd h hI2be d.wL (by simp) _ hw
    have hn1 := d.degree_multiplier_pos hd
    have ht1 : ∀ c, d.ta1 c ∈ 𝒜 c ((2 : ℕ) • d.G1) ∧ d.ta1 c ≠ 0 := fun c => ⟨hd.firstSectionMem c, hd.firstSectionNeZero c⟩
    have het : ∀ c, d.et c ∈ 𝒜 c (d.n1 • d.wde) ∧ d.et c ≠ 0 := fun c => ⟨hd.et_mem c, hd.et_ne c⟩
    obtain ⟨m1, I1, H1⟩ := d.Hgt_pow' hd h _ d.ta1 ht1 (d.intOK_of hd h hI2be _ (by simp) _ ht1) d.n1 hn1
    obtain ⟨m2, I2, H2⟩ := d.Hgt_pow' hd h _ d.et het (d.intOK_of hd h hI2be _ (by simp) _ het) 2 two_pos
    obtain ⟨m3, I3, H3⟩ := d.Hgt_pow' hd h _ _ hw hIw (2 * d.n1) (by omega)
    obtain ⟨I4, H4⟩ := d.Hgt_mul hd h _ _ _ _ m1 m2 I1 I2
    have m4 : ∀ c, (d.ta1 ^ d.n1 * d.et ^ 2) c ∈ 𝒜 c (d.n1 • ((2 : ℕ) • d.G1) + (2 : ℕ) • (d.n1 • d.wde)) ∧
        (d.ta1 ^ d.n1 * d.et ^ 2) c ≠ 0 := fun c => by
      have := hd.graded c
      rw [Pi.mul_apply]
      exact ⟨SetLike.mul_mem_graded (m1 c).1 (m2 c).1, hd.mul_ne_zero c (m1 c).1 (m2 c).1 (m1 c).2 (m2 c).2⟩
    rw [d.weight_double_eq_scaled_line] at I4 H4 m4
    have := d.Hgt_indep hd h _ _ _ m4 m3 I4 I3
    rw [H4, H1, H2, H3] at this
    push_cast at this
    linarith
  · intro x ta' hx hta'
    have hw : ∀ c, d.wx x c ∈ 𝒜 c d.wL ∧ d.wx x c ≠ 0 := fun c => ⟨d.wx_mem hd x c, hx c⟩
    have hIw := d.intOK_of hd h hI2be d.wL (by simp) _ hw
    have ht2 : ∀ c, d.ta2 c ∈ 𝒜 c d.G2 ∧ d.ta2 c ≠ 0 := fun c => ⟨hd.secondSectionMem c, hd.secondSectionNeZero c⟩
    obtain ⟨m3, I3, H3⟩ := d.Hgt_pow' hd h _ _ hw hIw (d.D + 4) (by omega)
    obtain ⟨I4, H4⟩ := d.Hgt_mul hd h _ _ _ _ hta' ht2 (d.intOK_of hd h hI2be _ (by simp) _ hta')
      (d.intOK_of hd h hI2be _ (by simp) _ ht2)
    have m4 : ∀ c, (ta' * d.ta2) c ∈ 𝒜 c (d.wF + d.G2) ∧ (ta' * d.ta2) c ≠ 0 := fun c => by
      have := hd.graded c
      rw [Pi.mul_apply]
      exact ⟨SetLike.mul_mem_graded (hta' c).1 (ht2 c).1,
        hd.mul_ne_zero c (hta' c).1 (ht2 c).1 (hta' c).2 (ht2 c).2⟩
    rw [d.weight_sum_eq_scaled_line] at I4 H4 m4
    have := d.Hgt_indep hd h _ _ _ m4 m3 I4 I3
    rw [H4, H3] at this
    push_cast at this
    linarith

end Data

end ReciprocityTheory.ChartRestriction.G.T0

namespace ReciprocityTheory.ChartRestriction.G.T0

open NumberField MvPolynomial ReciprocityTheory.MultiplicativeHeights MeasureTheory IsDedekindDomain

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]
  {Ω : ι → Type} [∀ c, Field (Ω c)] [∀ c, Algebra K (Ω c)]
  {WT : Type} [AddCommGroup WT]
  {A : ι → Type} [∀ c, CommRing (A c)] [∀ c, Algebra (Ω c) (A c)] [∀ c, Algebra K (A c)]
  [∀ c, Algebra (𝓞 K) (A c)]
  {𝒜 : (c : ι) → WT → Submodule (Ω c) (A c)}

namespace Data

variable (d : Data K ι Ω WT A)

theorem four_sg (hd : d.AxH 𝒜) (h : d.S1) (G : WT) (ta : ∀ c, A c)
    (hta : ∀ c, ta c ∈ 𝒜 c G ∧ ta c ≠ 0) (sg : K →+* ℂ)
    (hbdd : BddAbove (Set.range fun p : (Σ c, PT (Ω := Ω c) sg) => d.nrm p.1 G (ta p.1) p.2))
    (c : ι) (hint : Integrable (fun z : BlockSphere d.D (d.N + 1) =>
        ∑ᶠ (P : Ω c →+* ℂ) (_ : P ∈ d.ST c sg (fun i j => spherePoint (z i) j)),
          Real.log (d.nrm c G (ta c) P)) (blockSphereProb d.D (d.N + 1))) :
    -((d.delc c : ℝ) * Real.log (d.supN sg G ta)) ≤
      ∫ z, (∑ᶠ (P : Ω c →+* ℂ) (_ : P ∈ d.ST c sg (fun i j => spherePoint (z i) j)),
        -Real.log (d.nrm c G (ta c) P)) ∂(blockSphereProb d.D (d.N + 1)) := by
  have := blockSphereMeasure_isProbability (B := d.D) (Nat.succ_pos d.N)
  have I2 := d.int_neg c sg (fun P => Real.log (d.nrm c G (ta c) P)) hint
  have k := integral_le_of_ae_le_affine (blockSphereProb d.D (d.N + 1)) (fun _ => (0 : ℝ)) _ _
    ((d.delc c : ℝ) * Real.log (d.supN sg G ta)) 0 (integrable_const 0) I2 I2 ?_
  · simp only [integral_zero, zero_mul, add_zero] at k
    linarith
  refine (d.hint_fs hd h c sg).mono ?_
  intro z hz
  obtain ⟨s, hcard, hmem, hsum⟩ := hz
  simp only [zero_mul, add_zero]
  change 0 ≤ d.hintSm c sg (fun P => -Real.log (d.nrm c G (ta c) P)) z + _
  have e : (d.delc c : ℝ) * Real.log (d.supN sg G ta) =
      ∑ P ∈ s, Real.log (d.supN sg G ta) := by
    rw [Finset.sum_const, nsmul_eq_mul, hcard]
  rw [hsum, e, ← Finset.sum_add_distrib]
  refine Finset.sum_nonneg fun P hP => ?_
  have hn := hd.nrm_pos c P (hta c).1 (hta c).2
  have hle : d.nrm c G (ta c) P ≤ d.supN sg G ta :=
    le_ciSup (f := fun p : (Σ c, PT (Ω := Ω c) sg) => d.nrm p.1 G (ta p.1) p.2) hbdd ⟨c, ⟨P, hmem P hP⟩⟩
  have := Real.log_le_log hn hle
  linarith

theorem sum_mult_logHeight_lower (hd : d.AxH 𝒜) (h : d.S1) (G : WT) (c : ι) (f : A c) (hf : f ∈ 𝒜 c G)
    (hf0 : f ≠ 0) (hord : ∀ v, d.admitted c v → 0 ≤ d.ord c v G f) :
    -((d.D : ℝ) * (((∑ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne),
        d.nP h c G f p * (d.dg (d.gen p) : ℤ) : ℤ)) : ℝ) * (Real.log (d.N + 1 : ℕ) + 1 / 2)) ≤
      ∑ᶠ (p : Ideal (KTp K d.D d.N)) (_ : p ∈ d.HtOne), (d.nP h c G f p : ℝ) * h0 (d.gen p) := by
  classical
  have hfin := (d.good_primes_properties hd h c).2.2.1 G f hf hf0
  set S := hfin.toFinset
  have mem : ∀ p, p ∈ d.HtOne → d.nP h c G f p ≠ 0 → p ∈ S := fun p hp h1 => by
    simp only [S, Set.Finite.mem_toFinset]; exact ⟨hp, h1⟩
  rw [fsum_eq_sum _ S (fun p => d.nP h c G f p * (d.dg (d.gen p) : ℤ))
      (fun p hp h0 => mem p hp fun e => h0 (by simp [e])),
    fsum_eq_sum _ S (fun p => (d.nP h c G f p : ℝ) * h0 (d.gen p))
      (fun p hp h0 => mem p hp fun e => h0 (by simp [e]))]
  push_cast
  rw [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_neg_distrib]
  refine Finset.sum_le_sum fun p _ => ?_
  by_cases hp : p ∈ d.HtOne
  · simp only [Set.indicator_of_mem hp]
    by_cases hg : ∃ w, w ∈ d.GoodP c p
    · have hL := d.logHeight_generator_lower_bound hd h c hp hg
      have hn0 : (0 : ℝ) ≤ d.nP h c G f p := by exact_mod_cast d.nP_nonneg hd h c hp G f hord
      push_cast at hL ⊢
      nlinarith [mul_le_mul_of_nonneg_left hL hn0]
    · push_neg at hg
      have hG : d.GoodP c p = ∅ := Set.eq_empty_iff_forall_notMem.mpr hg
      have e2 : d.nP h c G f p = 0 := by unfold nP; rw [hG]; simp
      rw [e2]; simp
  · simp [Set.indicator_of_notMem hp]

theorem h_four' (hd : d.AxH 𝒜) (h : d.S1) (G : WT) (ta : ∀ c, A c)
    (hta : ∀ c, ta c ∈ 𝒜 c G ∧ ta c ≠ 0)
    (hord : ∀ c (v : AddValuation (Ω c) (WithTop ℤ)), d.admitted c v → 0 ≤ d.ord c v G (ta c))
    (hbdd : ∀ sg : K →+* ℂ, BddAbove (Set.range fun p : (Σ c, PT (Ω := Ω c) sg) => d.nrm p.1 G (ta p.1) p.2))
    (hint : ∀ (c : ι) (sg : K →+* ℂ), MeasureTheory.Integrable (fun z : ReciprocityTheory.MultiplicativeHeights.BlockSphere d.D (d.N + 1) =>
        ∑ᶠ (P : Ω c →+* ℂ) (_ : P ∈ d.ST c sg (fun i j => ReciprocityTheory.MultiplicativeHeights.spherePoint (z i) j)),
          Real.log (d.nrm c G (ta c) P)) (ReciprocityTheory.MultiplicativeHeights.blockSphereProb d.D (d.N + 1))) :
    -(d.del * meanK (fun sg => Real.log (d.supN sg G ta))) -
        d.D * d.aG h G ta * (Real.log (d.N + 1 : ℕ) + 1 / 2) ≤ d.Hgt h G ta ∧
      (∑ᶠ la, d.NlaG h G ta la * logNorm la) / (Module.finrank ℚ K : ℝ) ≤
        d.Hgt h G ta + d.del * meanK (fun sg => Real.log (d.supN sg G ta)) +
          d.D * d.aG h G ta * (Real.log (d.N + 1 : ℕ) + 1 / 2) := by

  have hA : 0 ≤ (∑ᶠ la, d.NlaG h G ta la * logNorm la) / (Module.finrank ℚ K : ℝ) := by
    refine div_nonneg (finsum_nonneg fun la => mul_nonneg ?_ (logNorm_nonneg la)) (Nat.cast_nonneg _)
    exact Finset.sum_nonneg fun c _ => finsum_nonneg fun w => finsum_nonneg fun hw =>
      mul_nonneg (Nat.cast_nonneg _) (by exact_mod_cast hord c _ (d.admissible_over_prime hd h la c w hw).1)

  have hB : -(d.del * meanK (fun sg => Real.log (d.supN sg G ta))) ≤ meanK (d.Nsg G ta) := by
    unfold meanK
    rw [← mul_div_assoc, ← neg_div, Finset.mul_sum, ← Finset.sum_neg_distrib]
    refine div_le_div_of_nonneg_right (Finset.sum_le_sum fun sg _ => ?_) (Nat.cast_nonneg _)
    unfold Nsg del
    push_cast
    rw [Finset.sum_mul, ← Finset.sum_neg_distrib]
    exact Finset.sum_le_sum fun c _ => d.four_sg hd h G ta hta sg (hbdd sg) c (hint c sg)

  have hC : -((d.D : ℝ) * d.aG h G ta * (Real.log (d.N + 1 : ℕ) + 1 / 2)) ≤ d.h0f h G ta := by
    unfold aG h0f
    push_cast
    rw [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_neg_distrib]
    refine Finset.sum_le_sum fun c _ => ?_
    have k := d.sum_mult_logHeight_lower hd h G c (ta c) (hta c).1 (hta c).2 (fun v hv => hord c v hv)
    push_cast at k
    exact k
  have hH : d.Hgt h G ta = (∑ᶠ la, d.NlaG h G ta la * logNorm la) / (Module.finrank ℚ K : ℝ) +
      meanK (d.Nsg G ta) + d.h0f h G ta := rfl
  constructor
  · rw [hH]; linarith
  · rw [hH]; linarith

end Data

end ReciprocityTheory.ChartRestriction.G.T0
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HHINDE =====
