module

public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalIdeal
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.Support
public import Mathlib.Tactic.ENatToNat
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjTwistLeray
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalLimit
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.HasExtInstances
public import Mathlib.AlgebraicGeometry.Morphisms.Proper

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ZariskiLocal, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ZariskiSplit

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ZariskiLocal =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ZariskiLocal", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalIdeal\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.Support\npublic import Mathlib.Tactic.ENatToNat\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjTwistLeray\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace Limits IsLocalRing MonoidalCategory

universe u

noncomputable section

attribute [local instance] algebraOfOver

variable {A : Type u} [CommRing A] [IsNoetherianRing A] [IsLocalRing A] (X : Scheme.{u})
  [X.Over (Spec (.of A))]

abbrev closedFibre : Set X := (X ↘ Spec (.of A)).base ⁻¹' {closedPoint A}

variable {X}


omit [IsNoetherianRing A] [IsLocalRing A] in
lemma mem_basicOpen_algebraMap_iff (x : X) (a : A) :
    x ∈ X.basicOpen (algebraMap A Γ(X, ⊤) a) ↔ a ∉ ((X ↘ Spec (.of A)).base x).asIdeal := by
  have h1 : algebraMap A Γ(X, ⊤) a = (X ↘ Spec (.of A)).appTop ((Scheme.ΓSpecIso (.of A)).inv a) :=
    rfl
  rw [h1, ← Scheme.preimage_basicOpen_top, basicOpen_eq_of_affine]
  rfl


omit [IsNoetherianRing A] in
lemma exists_mem_basicOpen_of_not_mem_closedFibre {x : X} (hx : x ∉ closedFibre (A := A) X) :
    ∃ a ∈ maximalIdeal A, x ∈ X.basicOpen (algebraMap A Γ(X, ⊤) a) := by
  set y := (X ↘ Spec (.of A)).base x
  have hne : y ≠ closedPoint A := hx
  have hnot : ¬ (maximalIdeal A ≤ y.asIdeal) := by
    intro h
    apply hne
    exact PrimeSpectrum.ext (le_antisymm (le_maximalIdeal y.isPrime.ne_top) h)
  obtain ⟨a, ha, hay⟩ := Set.not_subset.1 hnot
  exact ⟨a, ha, (mem_basicOpen_algebraMap_iff x a).2 hay⟩


omit [IsNoetherianRing A] in
lemma not_mem_basicOpen_of_mem_closedFibre {x : X} (hx : x ∈ closedFibre (A := A) X) {a : A}
    (ha : a ∈ maximalIdeal A) : x ∉ X.basicOpen (algebraMap A Γ(X, ⊤) a) := by
  rw [mem_basicOpen_algebraMap_iff, not_not]
  have : (X ↘ Spec (.of A)).base x = closedPoint A := hx
  rw [this]
  exact ha


variable (A X) in
abbrev fibreQuot (n : ℕ) : X.Modules := quotPow (maximalIdeal A) (𝟙_ X.Modules) n


variable (A X) in
abbrev fibreOne (n : ℕ) : Γ(fibreQuot A X n, ⊤) :=
  (quotPowπ (maximalIdeal A) (𝟙_ X.Modules) n).app ⊤ (1 : Γ(X, ⊤))

instance : (𝟙_ X.Modules).IsQuasicoherent := isQuasicoherent_unit X

lemma eq_zero_of_isAffineOpen_le_basicOpen {V : X.Opens} (hV : IsAffineOpen V) {a : A}
    (ha : a ∈ maximalIdeal A) (hVa : V ≤ X.basicOpen (algebraMap A Γ(X, ⊤) a)) (n : ℕ)
    (t : Γ(fibreQuot A X n, V)) : t = 0 := by
  obtain ⟨u, rfl⟩ := surjective_quotPowπ_app (maximalIdeal A) (𝟙_ X.Modules) hV n t
  rw [quotPowπ_app_eq_zero_iff _ _ hV]
  have hunit : IsUnit (toFunctions V (a ^ (n + 1))) := by
    rw [map_pow]
    refine IsUnit.pow _ ?_
    have h := X.toRingedSpace.isUnit_res_basicOpen (algebraMap A Γ(X, ⊤) a)
    have e : toFunctions V a = X.presheaf.map (homOfLE hVa).op
        (X.presheaf.map (homOfLE (X.basicOpen_le (algebraMap A Γ(X, ⊤) a))).op
          (algebraMap A Γ(X, ⊤) a)) := by
      change (X.presheaf.map (homOfLE le_top).op).hom _ = _
      rw [← ConcreteCategory.comp_apply, ← Functor.map_comp]
      rfl
    rw [e]
    exact h.map _
  have htop : Ideal.map (toFunctions V) (maximalIdeal A ^ (n + 1)) = ⊤ :=
    Ideal.eq_top_of_isUnit_mem _ (Ideal.mem_map_of_mem _ (Ideal.pow_mem_pow ha _)) hunit
  rw [htop, Submodule.top_smul]
  exact Submodule.mem_top

lemma supportedIn_fibreQuot_closedFibre (n : ℕ) :
    Scheme.Modules.SupportedIn (fibreQuot A X n) (closedFibre (A := A) X) := by
  intro U hU s
  apply sheaf_eq_of_locally (modulesAb (fibreQuot A X n)) s 0
  intro x hxU
  have hx : x ∉ closedFibre (A := A) X := fun h => Set.disjoint_left.1 hU hxU h
  obtain ⟨a, ha, hxa⟩ := exists_mem_basicOpen_of_not_mem_closedFibre hx
  obtain ⟨_, ⟨V, hV, rfl⟩, hxV, hVle⟩ := X.isBasis_affineOpens.exists_subset_of_mem_open
    (Set.mem_inter hxU hxa) (U ⊓ X.basicOpen (algebraMap A Γ(X, ⊤) a)).2
  have hVU : V ≤ U := fun y hy => (hVle hy).1
  refine ⟨V, hVU, hxV, ?_⟩
  rw [map_zero]
  exact eq_zero_of_isAffineOpen_le_basicOpen hV ha (fun y hy => (hVle hy).2) n _

lemma resF_fibreOne_ne_zero {x : X} (hx : x ∈ closedFibre (A := A) X) {W : X.Opens} (hxW : x ∈ W)
    (n : ℕ) : resF (fibreQuot A X n) (le_top : W ≤ ⊤) (fibreOne A X n) ≠ 0 := by
  intro h0
  obtain ⟨_, ⟨V, hV, rfl⟩, hxV, hVW⟩ := X.isBasis_affineOpens.exists_subset_of_mem_open hxW W.2
  replace hVW : V ≤ W := hVW
  have h1 : (quotPowπ (maximalIdeal A) (𝟙_ X.Modules) n).app V
      (resF (𝟙_ X.Modules) (le_top : V ≤ ⊤) (show Γ(𝟙_ X.Modules, ⊤) from (1 : Γ(X, ⊤)))) = 0 := by
    have e1 := resF_app (quotPowπ (maximalIdeal A) (𝟙_ X.Modules) n) (le_top : V ≤ ⊤)
      (show Γ(𝟙_ X.Modules, ⊤) from (1 : Γ(X, ⊤)))
    have e2 := resF_resF (fibreQuot A X n) (le_top : W ≤ ⊤) hVW (fibreOne A X n)
    rw [h0, map_zero] at e2
    exact e1.symm.trans e2.symm
  rw [quotPowπ_app_eq_zero_iff _ _ hV] at h1
  have h2 : (1 : Γ(X, V)) ∈ Ideal.map (toFunctions V) (maximalIdeal A ^ (n + 1)) := by
    have e : resF (𝟙_ X.Modules) (le_top : V ≤ ⊤) (show Γ(𝟙_ X.Modules, ⊤) from (1 : Γ(X, ⊤))) =
        (show Γ(𝟙_ X.Modules, V) from (1 : Γ(X, V))) := map_one (restrictTop V)
    rw [e] at h1
    refine Submodule.smul_induction_on (p := fun y : Γ(𝟙_ X.Modules, V) =>
      (show Γ(X, V) from y) ∈ Ideal.map (toFunctions V) (maximalIdeal A ^ (n + 1))) h1
      (fun a ha m _ => ?_) (fun x y hx hy => Ideal.add_mem _ hx hy)
    exact Ideal.mul_mem_right _ _ ha
  have hle : Ideal.map (toFunctions V) (maximalIdeal A ^ (n + 1)) ≤
      (maximalIdeal (X.presheaf.stalk x)).comap (X.presheaf.germ V x hxV).hom := by
    rw [Ideal.map_le_iff_le_comap]
    intro a ha
    rw [Ideal.mem_comap, Ideal.mem_comap, mem_maximalIdeal, mem_nonunits_iff]
    have ha' : a ∈ maximalIdeal A := Ideal.pow_le_self (Nat.succ_ne_zero n) ha
    intro hu
    apply not_mem_basicOpen_of_mem_closedFibre hx ha'
    have hb : x ∈ X.basicOpen (toFunctions V a) := (X.mem_basicOpen (toFunctions V a) x hxV).2 hu
    change x ∈ X.basicOpen (X.presheaf.map (homOfLE (le_top : V ≤ ⊤)).op
      (algebraMap A Γ(X, ⊤) a)) at hb
    rw [X.basicOpen_res] at hb
    exact hb.2
  have h3 := hle h2
  rw [Ideal.mem_comap, map_one] at h3
  exact (maximalIdeal.isMaximal _).ne_top ((Ideal.eq_top_iff_one _).2 h3)

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ZariskiLocal =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ZariskiSplit =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ZariskiSplit", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ZariskiLocal\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalLimit\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.HasExtInstances\npublic import Mathlib.AlgebraicGeometry.Morphisms.Proper\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

section

open AlgebraicGeometry CategoryTheory TopologicalSpace

universe c236Ext c236Scheme

private noncomputable abbrev H.linearMapV436 {X : Scheme.{c236Scheme}}
    [HasExt.{c236Ext} (Sheaf (Opens.grothendieckTopology X.toTopCat) AddCommGrpCat.{c236Scheme})]
    (A : Type*) [CommRing A] [Algebra A Γ(X, ⊤)]
    {F G : X.Modules} (φ : F ⟶ G) (n : ℕ) :
    Sheaf.H.{c236Ext} (modulesAb F) n →ₗ[A] Sheaf.H.{c236Ext} (modulesAb G) n :=
  H.linearMap A φ n

end

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace Limits IsLocalRing MonoidalCategory

universe u

noncomputable section

attribute [local instance] algebraOfOver

variable {A : Type u} [CommRing A] [IsNoetherianRing A] [IsLocalRing A] {X : Scheme.{u}}
  [X.Over (Spec (.of A))]

lemma existsUnique_glue_of_supportedIn {F : X.Modules} {T : Set X}
    (hF : Scheme.Modules.SupportedIn F T) {W₁ W₂ : X.Opens} (hcov : W₁ ⊔ W₂ = ⊤)
    (hdisj : Disjoint ((W₁ ⊓ W₂ : X.Opens) : Set X) T) (s₁ : Γ(F, W₁)) (s₂ : Γ(F, W₂)) :
    ∃! s : Γ(F, ⊤), resF F (le_top : W₁ ≤ ⊤) s = s₁ ∧ resF F (le_top : W₂ ≤ ⊤) s = s₂ := by
  have hzero : ∀ {V : X.Opens}, V ≤ W₁ ⊓ W₂ → ∀ t : Γ(F, V), t = 0 := fun hV t =>
    hF _ (Set.disjoint_of_subset_left hV hdisj) t
  let Wf : ULift.{u} Bool → X.Opens := fun b => if b.down then W₁ else W₂
  have hWf : ∀ b c : ULift.{u} Bool, Wf b ⊓ Wf c ≤ W₁ ⊓ W₂ ∨ b = c := by
    rintro ⟨_ | _⟩ ⟨_ | _⟩
    · exact Or.inr rfl
    · exact Or.inl (le_of_eq (inf_comm _ _))
    · exact Or.inl le_rfl
    · exact Or.inr rfl
  let sf : ∀ b, ToType ((modulesAb F).1.obj (op (Wf b))) := fun b => by
    rcases b with ⟨_ | _⟩
    · exact s₂
    · exact s₁
  have hcovx : ∀ x ∈ (⊤ : X.Opens), ∃ b, x ∈ Wf b := fun x _ => by
    have : x ∈ W₁ ⊔ W₂ := hcov ▸ trivial
    rcases this with h | h
    · exact ⟨⟨true⟩, h⟩
    · exact ⟨⟨false⟩, h⟩
  obtain ⟨s, hs⟩ := sheaf_exists_glue (modulesAb F) (V := ⊤) Wf (fun _ => le_top) hcovx sf
    (fun b c => by
      rcases hWf b c with h | rfl
      · exact (hzero h _).trans (hzero h _).symm
      · rfl)
  refine ⟨s, ⟨hs ⟨true⟩, hs ⟨false⟩⟩, fun t ht => ?_⟩
  apply sheaf_eq_of_locally (modulesAb F) t s
  intro x _
  have : x ∈ W₁ ⊔ W₂ := hcov ▸ trivial
  rcases this with h | h
  · exact ⟨W₁, le_top, h, ht.1.trans (hs ⟨true⟩).symm⟩
  · exact ⟨W₂, le_top, h, ht.2.trans (hs ⟨false⟩).symm⟩

variable {W₁ W₂ : X.Opens} (hcov : W₁ ⊔ W₂ = ⊤)
  (hdisj : Disjoint ((W₁ ⊓ W₂ : X.Opens) : Set X) (closedFibre (A := A) X))


variable (A) in
def splitSection (n : ℕ) : Γ(fibreQuot A X n, ⊤) :=
  (existsUnique_glue_of_supportedIn (supportedIn_fibreQuot_closedFibre n) hcov hdisj
    (resF (fibreQuot A X n) (le_top : W₁ ≤ ⊤) (fibreOne A X n)) 0).exists.choose

lemma splitSection_spec (n : ℕ) :
    resF (fibreQuot A X n) (le_top : W₁ ≤ ⊤) (splitSection A hcov hdisj n) =
        resF (fibreQuot A X n) (le_top : W₁ ≤ ⊤) (fibreOne A X n) ∧
      resF (fibreQuot A X n) (le_top : W₂ ≤ ⊤) (splitSection A hcov hdisj n) = 0 :=
  (existsUnique_glue_of_supportedIn (supportedIn_fibreQuot_closedFibre n) hcov hdisj
    (resF (fibreQuot A X n) (le_top : W₁ ≤ ⊤) (fibreOne A X n)) 0).exists.choose_spec

lemma quotPowMap_fibreOne (n : ℕ) :
    (quotPowMap (maximalIdeal A) (𝟙_ X.Modules) n).app ⊤ (fibreOne A X (n + 1)) =
      fibreOne A X n := by
  change ((quotPowπ (maximalIdeal A) (𝟙_ X.Modules) (n + 1)).app ⊤ ≫
    (quotPowMap (maximalIdeal A) (𝟙_ X.Modules) n).app ⊤) _ = _
  rw [← Scheme.Modules.Hom.comp_app, quotPowπ_map]

lemma quotPowMap_splitSection (n : ℕ) :
    (quotPowMap (maximalIdeal A) (𝟙_ X.Modules) n).app ⊤ (splitSection A hcov hdisj (n + 1)) =
      splitSection A hcov hdisj n := by
  obtain ⟨h₁, h₂⟩ := splitSection_spec hcov hdisj (n + 1)
  refine (existsUnique_glue_of_supportedIn (supportedIn_fibreQuot_closedFibre n) hcov hdisj
    (resF (fibreQuot A X n) (le_top : W₁ ≤ ⊤) (fibreOne A X n)) 0).unique ⟨?_, ?_⟩
    (splitSection_spec hcov hdisj n)
  · rw [resF_app, h₁, ← resF_app, quotPowMap_fibreOne]
  · rw [resF_app, h₂, map_zero]


variable (A X) in
abbrev fibreTower : ∀ n, Sheaf.H.{u} (modulesAb (fibreQuot A X (n + 1))) 0 →ₗ[A]
    Sheaf.H.{u} (modulesAb (fibreQuot A X n)) 0 :=
  fun n => H.linearMap A (quotPowMap (maximalIdeal A) (𝟙_ X.Modules) n) 0

lemma mem_towerLimit_splitSection :
    (fun n => (Sheaf.H.equiv₀ (modulesAb (fibreQuot A X n)) isTerminalTop).symm
      (splitSection A hcov hdisj n)) ∈ towerLimit (fibreTower A X) := by
  intro n
  change Sheaf.H.map.{u} (modulesAbMap (quotPowMap (maximalIdeal A) (𝟙_ X.Modules) n)) 0
    ((Sheaf.H.equiv₀ _ isTerminalTop).symm (splitSection A hcov hdisj (n + 1))) = _
  exact (Sheaf.H.equiv₀_symm_naturality isTerminalTop _ _).trans
    (congrArg _ (quotPowMap_splitSection hcov hdisj n))


include hcov hdisj in
theorem false_of_split (hΓ : Function.Surjective (algebraMap A Γ(X, ⊤)))
    (hsurj : ∀ x : (∀ n, Sheaf.H.{u} (modulesAb (fibreQuot A X n)) 0),
      x ∈ towerLimit (fibreTower A X) → x 0 ∈ LinearMap.range
      (H.linearMap.{u} A (quotPowπ (maximalIdeal A) (𝟙_ X.Modules) 0) 0))
    {x₁ x₂ : X} (hx₁ : x₁ ∈ closedFibre (A := A) X) (hx₁W : x₁ ∈ W₁)
    (hx₂ : x₂ ∈ closedFibre (A := A) X) (hx₂W : x₂ ∈ W₂) : False := by
  obtain ⟨h, hh⟩ := hsurj _ (mem_towerLimit_splitSection hcov hdisj)
  set g : Γ(X, ⊤) := Sheaf.H.equiv₀ (modulesAb (𝟙_ X.Modules)) isTerminalTop h
  obtain ⟨a, ha⟩ := hΓ g
  have hs : splitSection A hcov hdisj 0 = (algebraMap A Γ(X, ⊤) a) • fibreOne A X 0 := by
    have e1 : Sheaf.H.equiv₀ (modulesAb (fibreQuot A X 0)) isTerminalTop
        (H.linearMapV436 A (quotPowπ (maximalIdeal A) (𝟙_ X.Modules) 0) 0 h) =
          splitSection A hcov hdisj 0 := by
      rw [hh]
      exact AddEquiv.apply_symm_apply _ _
    rw [← e1]
    change Sheaf.H.equiv₀ _ isTerminalTop (Sheaf.H.map.{u}
      (modulesAbMap (quotPowπ (maximalIdeal A) (𝟙_ X.Modules) 0)) 0 h) = _
    rw [← Sheaf.H.equiv₀_naturality]
    change (quotPowπ (maximalIdeal A) (𝟙_ X.Modules) 0).app ⊤ g = _
    have e2 : (show Γ(𝟙_ X.Modules, ⊤) from g) =
        algebraMap A Γ(X, ⊤) a • (show Γ(𝟙_ X.Modules, ⊤) from (1 : Γ(X, ⊤))) := by
      rw [← ha]
      exact (mul_one (algebraMap A Γ(X, ⊤) a)).symm
    rw [e2]
    exact Scheme.Modules.Hom.app_smul _ _ _
  obtain ⟨hs₁, hs₂⟩ := splitSection_spec hcov hdisj 0
  rw [hs, resF_smul] at hs₁ hs₂
  rcases isUnit_or_isUnit_one_sub_self a with hu | hu
  · apply resF_fibreOne_ne_zero hx₂ hx₂W 0
    have hu' : IsUnit (resO (le_top : W₂ ≤ ⊤) (algebraMap A Γ(X, ⊤) a)) := (hu.map _).map _
    obtain ⟨v, hv⟩ := hu'
    rw [← hv] at hs₂
    have := congrArg (fun t => (↑v⁻¹ : Γ(X, W₂)) • t) hs₂
    simpa [smul_smul] using this
  · apply resF_fibreOne_ne_zero hx₁ hx₁W 0
    have hu' : IsUnit (resO (le_top : W₁ ≤ ⊤) (algebraMap A Γ(X, ⊤) (1 - a))) := (hu.map _).map _
    have e : resO (le_top : W₁ ≤ ⊤) (algebraMap A Γ(X, ⊤) (1 - a)) •
        resF (fibreQuot A X 0) (le_top : W₁ ≤ ⊤) (fibreOne A X 0) = 0 := by
      rw [map_sub, map_one, map_sub, map_one, sub_smul, one_smul, hs₁, sub_self]
    obtain ⟨v, hv⟩ := hu'
    rw [← hv] at e
    have := congrArg (fun t => (↑v⁻¹ : Γ(X, W₁)) • t) e
    simpa [smul_smul] using this

section Connected

variable {A : Type u} [CommRing A] [IsNoetherianRing A] [IsLocalRing A] {X : Scheme.{u}}
  [X.Over (Spec (.of A))]


omit [IsNoetherianRing A] in
lemma isClosed_closedFibre : IsClosed (closedFibre (A := A) X) :=
  (isClosed_singleton_closedPoint A).preimage (X ↘ Spec (.of A)).base.hom.continuous

theorem isConnected_closedFibre_of_surj [IsProper (X ↘ Spec (.of A))]
    (hΓ : Function.Bijective (algebraMap A Γ(X, ⊤)))
    (hsurj : ∀ x : (∀ n, Sheaf.H.{u} (modulesAb (fibreQuot A X n)) 0),
      x ∈ towerLimit (fibreTower A X) → x 0 ∈ LinearMap.range
      (H.linearMap.{u} A (quotPowπ (maximalIdeal A) (𝟙_ X.Modules) 0) 0)) :
    _root_.IsConnected (closedFibre (A := A) X) := by
  refine ⟨?_, ?_⟩
  ·
    have : CompactSpace X := QuasiCompact.compactSpace_of_compactSpace (X ↘ Spec (.of A))
    have hinj : Function.Injective (X ↘ Spec (.of A)).appTop := by
      intro r s hrs
      obtain ⟨r', rfl⟩ := (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (.of A)).inv).2 r
      obtain ⟨s', rfl⟩ := (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (.of A)).inv).2 s
      have : algebraMap A Γ(X, ⊤) r' = algebraMap A Γ(X, ⊤) s' := hrs
      rw [hΓ.1 this]
    have : IsDominant (X ↘ Spec (.of A)) := isDominant_of_of_appTop_injective hinj
    have hrange : Set.range (X ↘ Spec (.of A)).base = Set.univ := by
      rw [← ((X ↘ Spec (.of A)).isClosedMap.isClosed_range).closure_eq]
      exact (X ↘ Spec (.of A)).denseRange.closure_range
    obtain ⟨x, hx⟩ : closedPoint A ∈ Set.range (X ↘ Spec (.of A)).base := hrange ▸ trivial
    exact ⟨x, hx⟩
  · intro u v hu hv hsub hu' hv'
    by_contra hne
    set X₀ := closedFibre (A := A) X
    have hX₀ : IsOpen X₀ᶜ := isClosed_closedFibre.isOpen_compl
    let W₁ : X.Opens := ⟨u ∪ X₀ᶜ, hu.union hX₀⟩
    let W₂ : X.Opens := ⟨v ∪ X₀ᶜ, hv.union hX₀⟩
    have hcov : W₁ ⊔ W₂ = ⊤ := by
      apply le_antisymm le_top
      intro x _
      by_cases hx : x ∈ X₀
      · rcases hsub hx with h | h
        · exact Or.inl (Or.inl h)
        · exact Or.inr (Or.inl h)
      · exact Or.inl (Or.inr hx)
    have hdisj : Disjoint ((W₁ ⊓ W₂ : X.Opens) : Set X) X₀ := by
      rw [Set.disjoint_left]
      rintro x ⟨h₁, h₂⟩ hx
      rcases h₁ with h₁ | h₁
      · rcases h₂ with h₂ | h₂
        · exact hne ⟨x, hx, h₁, h₂⟩
        · exact h₂ hx
      · exact h₁ hx
    obtain ⟨x₁, hx₁, hx₁u⟩ := hu'
    obtain ⟨x₂, hx₂, hx₂v⟩ := hv'
    exact false_of_split hcov hdisj hΓ.2 hsurj hx₁ (Or.inl hx₁u) hx₂ (Or.inl hx₂v)

end Connected

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ZariskiSplit =====
