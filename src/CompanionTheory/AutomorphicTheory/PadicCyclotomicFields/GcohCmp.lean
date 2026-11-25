module

public import GroundTheory.ProfiniteCohomology.CupProducts
public import ReciprocityTheory.GaloisValuations.SeparatedDvrSecondCohomologyMem
public import GroundTheory.ProfiniteCohomology.FilteredHomology
public import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohDefs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmpA, CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmp

-- ===== clump member: CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmpA =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmpA", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.CupProducts\npublic import ReciprocityTheory.GaloisValuations.SeparatedDvrSecondCohomologyMem\npublic import GroundTheory.ProfiniteCohomology.FilteredHomology\nimport Mathlib.Algebra.Homology.ShortComplex.ModuleCat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory GroundTheory.ProfCoh ReciprocityTheory.Gal ValuativeRel

namespace CompanionTheory.LocalTateOrthogonality.Gcoh

attribute [local instance 2000] Rep.hV2

section Core

variable {k G : Type} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  (A : Rep.{0} k G) [IsDiscreteRep A]

theorem coc_inj (n : ℕ) {x y : cocycles A n}
    (h : cochainOf A (cocycleι A n x) = cochainOf A (cocycleι A n y)) : x = y :=
  cocycleι_injective (cochainOf_injective h)

theorem exists_coc (n : ℕ) (c : (Fin n → G) → A) (hc : IsLocallyConstant c)
    (hd : (inhomogeneousCochains.d A n).hom c = 0) :
    ∃ x : cocycles A n, cochainOf A (cocycleι A n x) = c := by
  refine ⟨(cochainsComplex A).cyclesMk (mkCochain A c hc) (n + 1) (by simp) ?_, ?_⟩
  · apply cochainOf_injective (A := A)
    exact (cochainOf_d (A := A) _).trans hd
  · exact congrArg (cochainOf A) ((cochainsComplex A).i_cyclesMk _ _ _ _)

theorem pi_succ_eq_zero_iff (n : ℕ) (x : cocycles A (n + 1)) :
    cohomologyπ A (n + 1) x = 0 ↔ ∃ w : (Fin n → G) → A, IsLocallyConstant w ∧
      (inhomogeneousCochains.d A n).hom w = cochainOf A (cocycleι A (n + 1) x) := by
  change ((cochainsComplex A).homologyπ (n + 1)).hom x = 0 ↔ _
  rw [homologyπ_eq_zero_iff, CochainComplex.prev_nat_succ]
  constructor
  · rintro ⟨w, hw⟩
    refine ⟨cochainOf A w, isLocallyConstant_cochainOf w, ?_⟩
    rw [← cochainOf_d]
    exact congrArg (cochainOf A) hw
  · rintro ⟨w, hw, h⟩
    refine ⟨mkCochain A w hw, ?_⟩
    apply cochainOf_injective (A := A)
    exact (cochainOf_d (A := A) _).trans h

theorem pi_zero_eq_zero_iff (x : cocycles A 0) :
    cohomologyπ A 0 x = 0 ↔ cochainOf A (cocycleι A 0 x) = 0 := by
  change ((cochainsComplex A).homologyπ 0).hom x = 0 ↔ _
  rw [homologyπ_eq_zero_iff, CochainComplex.prev_nat_zero]
  have h0 : (cochainsComplex A).d 0 0 = 0 := (cochainsComplex A).shape 0 0 (by simp)
  rw [h0]
  constructor
  · rintro ⟨w, hw⟩
    exact (congrArg (cochainOf A) hw).symm
  · intro h
    refine ⟨0, ?_⟩
    apply cochainOf_injective (A := A)
    exact h.symm

theorem core_hom {Z : Type} [AddCommGroup Z] (n : ℕ) (φ : Z →+ ((Fin n → G) → A))
    (hex : ∀ z, ∃ x : cocycles A n, cochainOf A (cocycleι A n x) = φ z)
    (hsurj : ∀ x : cocycles A n, ∃ z, cochainOf A (cocycleι A n x) = φ z) :
    ∃ f : Z →+ cohomology A n, Function.Surjective f ∧
      ∀ z x, cochainOf A (cocycleι A n x) = φ z → f z = cohomologyπ A n x := by
  choose ψ hψ using hex
  have hadd : ∀ z z', ψ (z + z') = ψ z + ψ z' := fun z z' => coc_inj A n (by
    rw [map_add (f := _), cochainOf_add, hψ, hψ, hψ, map_add (f := _)])
  let f : Z →+ cohomology A n := AddMonoidHom.mk' (fun z => cohomologyπ A n (ψ z))
    (fun z z' => by rw [hadd, map_add (f := _)])
  have hf : ∀ z x, cochainOf A (cocycleι A n x) = φ z → f z = cohomologyπ A n x := fun z x h => by
    have : ψ z = x := coc_inj A n ((hψ z).trans h.symm)
    change cohomologyπ A n (ψ z) = _
    rw [this]
  refine ⟨f, fun y => ?_, hf⟩
  obtain ⟨x, rfl⟩ := cohomologyπ_surjective A n y
  obtain ⟨z, hz⟩ := hsurj x
  exact ⟨z, hf z x hz⟩

theorem core_quot {R Z : Type} [CommRing R] [AddCommGroup Z] [Module R Z] (B : Submodule R Z)
    (n : ℕ) (φ : Z →+ ((Fin n → G) → A))
    (hex : ∀ z, ∃ x : cocycles A n, cochainOf A (cocycleι A n x) = φ z)
    (hsurj : ∀ x : cocycles A n, ∃ z, cochainOf A (cocycleι A n x) = φ z)
    (hB : ∀ z x, cochainOf A (cocycleι A n x) = φ z → (cohomologyπ A n x = 0 ↔ z ∈ B)) :
    ∃ e : (Z ⧸ B) ≃+ cohomology A n,
      ∀ z x, cochainOf A (cocycleι A n x) = φ z →
        e (Submodule.Quotient.mk z) = cohomologyπ A n x := by
  obtain ⟨f, hs, hf⟩ := core_hom A n φ hex hsurj
  have hk : ∀ z, f z = 0 ↔ z ∈ B := fun z => by
    obtain ⟨x, hx⟩ := hex z
    rw [hf z x hx, hB z x hx]
  let g : (Z ⧸ B) →+ cohomology A n :=
    QuotientAddGroup.lift B.toAddSubgroup f (fun z hz => (hk z).2 hz)
  have hg : ∀ z, g (Submodule.Quotient.mk z) = f z := fun z => rfl
  refine ⟨AddEquiv.ofBijective g ⟨?_, ?_⟩, fun z x h => (hg z).trans (hf z x h)⟩
  · rw [injective_iff_map_eq_zero]
    intro q hq
    obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective B q
    rw [hg, hk] at hq
    exact (Submodule.Quotient.mk_eq_zero B).2 hq
  · intro y
    obtain ⟨z, rfl⟩ := hs y
    exact ⟨_, hg z⟩

end Core

theorem neg_one_pow_smul' {S V : Type} [Ring S] [AddCommGroup V] [Module S V] (j : ℕ) (v : V) :
    (-1 : S) ^ j • v = (-1 : ℤ) ^ j • v := by
  rw [← Int.cast_smul_eq_zsmul S]
  simp

section Cmp

variable {k G : Type} [CommRing k] [Group G]
  {R : Type} [CommRing R] {M : Type} [AddCommGroup M] [Module R M]
  (rho : Representation R G M) (A : Rep.{0} k G) (e : M ≃+ A.V)
  (he : ∀ g m, e (rho g m) = A.ρ g (e m))

theorem dn_app (n : ℕ) (f : (Fin n → G) → M) (g : Fin (n + 1) → G) :
    dn rho n f g = rho (g 0) (f fun i => g i.succ) + Finset.univ.sum fun j : Fin (n + 1) =>
      (-1 : R) ^ ((j : ℕ) + 1) • f (Fin.contractNth j (· * ·) g) := rfl

include he in
theorem d_comp (n : ℕ) (f : (Fin n → G) → M) :
    (inhomogeneousCochains.d A n).hom (fun s => e (f s)) = fun s => e (dn rho n f s) := by
  funext s

  rw [inhomogeneousCochains.d_hom_apply, dn_app, map_add (f := _), map_sum, he]
  congr 1
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [neg_one_pow_smul' (S := k), neg_one_pow_smul' (S := R), map_zsmul]

theorem dn_zero (f : (Fin 0 → G) → M) (s : Fin 1 → G) :
    dn rho 0 f s = rho (s 0) (f default) - f default := by
  have h : ∀ t, f t = f default := fun t => congrArg f (Subsingleton.elim _ _)
  rw [dn_app]
  simp [h, sub_eq_add_neg]

theorem dn_one (f : G → M) (s : Fin 2 → G) :
    dn rho 1 (fun t => f (t 0)) s = rho (s 0) (f (s 1)) - f (s 0 * s 1) + f (s 0) := by
  rw [dn_app]
  simp [Fin.sum_univ_succ, Fin.contractNth, sub_eq_add_neg, add_assoc]

theorem dn_two (f : G × G → M) (s : Fin 3 → G) :
    dn rho 2 (fun t => f (t 0, t 1)) s =
      rho (s 0) (f (s 1, s 2)) - f (s 0 * s 1, s 2) + f (s 0, s 1 * s 2) - f (s 0, s 1) := by
  rw [dn_app]
  have h3 : (-1 : R) ^ 3 = -1 := by norm_num
  simp [h3, Fin.sum_univ_succ, Fin.contractNth, sub_eq_add_neg, add_assoc]

end Cmp

end CompanionTheory.LocalTateOrthogonality.Gcoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmpA =====

-- ===== clump member: CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmp =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmp", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohDefs\npublic import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmpA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory GroundTheory.ProfCoh ReciprocityTheory.Gal ValuativeRel

namespace CompanionTheory.LocalTateOrthogonality.Gcoh

theorem gcRep : SgcRep := by
  intro G _ _ _ R _ M _ _ _ _ rho hrho
  letI : Module (ULift.{0} ℤ) M := Module.compHom M (ULift.ringEquiv : ULift.{0} ℤ ≃+* ℤ).toRingHom
  let σ : Representation (ULift.{0} ℤ) G M :=
    { toFun := fun g =>
        { toFun := rho g
          map_add' := map_add _
          map_smul' := fun c m => map_zsmul (rho g) c.down m }
      map_one' := LinearMap.ext fun m => by
        change rho 1 m = m
        rw [map_one]; rfl
      map_mul' := fun g h => LinearMap.ext fun m => by
        change rho (g * h) m = rho g (rho h m)
        rw [map_mul]; rfl }
  refine ⟨Rep.of σ, ⟨fun a => ?_⟩, AddEquiv.refl M, fun g m => rfl⟩
  have hc : Continuous fun g : G => rho g (a : M) :=
    hrho.comp (continuous_id.prodMk continuous_const)
  exact (isOpen_discrete {(a : M)}).preimage hc

attribute [local instance 2000] Rep.hV2

section

variable {k G : Type} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {M : Type} [AddCommGroup M] [TopologicalSpace M] [DiscreteTopology M]
  (A : Rep.{0} k G) (e : M ≃+ A.V)

omit [IsTopologicalGroup G] in
theorem lc_of_cont {X : Type} [TopologicalSpace X] {f : X → M} (hf : Continuous f) :
    IsLocallyConstant fun s => e (f s) :=
  ((IsLocallyConstant.iff_continuous f).2 hf).comp e

omit [IsTopologicalGroup G] in
theorem cont_of_lc {X : Type} [TopologicalSpace X] {f : X → A.V} (hf : IsLocallyConstant f) :
    Continuous fun s => e.symm (f s) :=
  (hf.comp e.symm).continuous

end

theorem gcn : Sgcn := by
  intro G _ _ _ R _ M _ _ _ _ rho A _ e he n
  let φ : Zn rho n →+ ((Fin n → G) → A) :=
    AddMonoidHom.mk' (fun z s => e (z.1 s)) (fun z z' => funext fun s => map_add e _ _)
  have hφ : ∀ z s, φ z s = e (z.1 s) := fun _ _ => rfl
  obtain ⟨e', -⟩ := core_quot A ((Bn rho n).comap (Zn rho n).subtype) n φ
    (fun z => exists_coc A n _ (lc_of_cont A e z.2.1) (by
      have hz : dn rho n z.1 = 0 := z.2.2
      refine (d_comp rho A e he n z.1).trans ?_
      funext s
      rw [hz]
      exact map_zero e))
    (fun x => by
      refine ⟨⟨fun s => e.symm (cochainOf A (cocycleι A n x) s),
        cont_of_lc A e (isLocallyConstant_cochainOf _), ?_⟩, ?_⟩
      · have h := d_comp rho A e he n fun s => e.symm (cochainOf A (cocycleι A n x) s)
        simp only [AddEquiv.apply_symm_apply] at h
        rw [d_cocycleι] at h
        change dn rho n _ = 0
        funext s
        apply e.injective
        rw [← congrFun h s]
        exact (map_zero e).symm
      · funext s
        exact (e.apply_symm_apply _).symm)
    (fun z x hx => by
      cases n with
      | zero =>
        rw [pi_zero_eq_zero_iff, hx]
        change _ ↔ z.1 = 0
        constructor
        · intro h
          funext s
          exact e.map_eq_zero_iff.1 (congrFun h s)
        · intro h
          funext s
          rw [hφ, h]
          exact map_zero e
      | succ n =>
        rw [pi_succ_eq_zero_iff, hx]
        constructor
        · rintro ⟨w, hw, h⟩
          refine ⟨fun s => e.symm (w s), cont_of_lc A e hw, ?_⟩
          have h' := d_comp rho A e he n fun s => e.symm (w s)
          simp only [AddEquiv.apply_symm_apply] at h'
          funext s
          apply e.injective
          exact (congrFun h' s).symm.trans (congrFun h s)
        · rintro ⟨c, hc, h⟩
          refine ⟨fun s => e (c s), lc_of_cont A e hc, (d_comp rho A e he n c).trans ?_⟩
          funext s
          rw [h]
          rfl)
  exact ⟨e'⟩

theorem gc0 : Sgc0 := by
  intro G _ _ _ R _ M _ _ _ _ rho A _ e he
  let φ : H0 rho →+ ((Fin 0 → G) → A) :=
    AddMonoidHom.mk' (fun z _ => e z.1) (fun z z' => funext fun s => map_add e _ _)
  have hex : ∀ z, ∃ x : cocycles A 0, cochainOf A (cocycleι A 0 x) = φ z := fun z =>
    exists_coc A 0 _ (IsLocallyConstant.const _) (by
      refine (d_comp rho A e he 0 fun _ => z.1).trans ?_
      funext s
      rw [dn_zero, z.2 (s 0), sub_self]
      exact map_zero e)
  obtain ⟨f, hs, hf⟩ := core_hom A 0 φ hex (fun x => by
    refine ⟨⟨e.symm (cochainOf A (cocycleι A 0 x) default), fun g => ?_⟩, ?_⟩
    · have h := d_comp rho A e he 0 fun s => e.symm (cochainOf A (cocycleι A 0 x) s)
      simp only [AddEquiv.apply_symm_apply] at h
      rw [d_cocycleι] at h
      have h' := congrFun h (fun _ => g)
      rw [dn_zero] at h'
      exact sub_eq_zero.1 (e.map_eq_zero_iff.1 h'.symm)
    · funext s
      rw [Subsingleton.elim s default]
      exact (e.apply_symm_apply _).symm)
  refine ⟨AddEquiv.ofBijective f ⟨?_, hs⟩, fun m x h => hf m x (funext h)⟩
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro z hz
  obtain ⟨x, hx⟩ := hex z
  rw [hf z x hx, pi_zero_eq_zero_iff, hx] at hz
  exact Subtype.ext (e.map_eq_zero_iff.1 (congrFun hz default))

theorem gc1 : Sgc1 := by
  intro G _ _ _ R _ M _ _ _ _ rho A _ e he
  let φ : Z1 rho →+ ((Fin 1 → G) → A) :=
    AddMonoidHom.mk' (fun z s => e (z.1 (s 0))) (fun z z' => funext fun s => map_add e _ _)
  have hex : ∀ z, ∃ x : cocycles A 1, cochainOf A (cocycleι A 1 x) = φ z := fun z =>
    exists_coc A 1 _ (lc_of_cont A e (z.2.1.comp (continuous_apply 0))) (by
      refine (d_comp rho A e he 1 fun s => z.1 (s 0)).trans ?_
      funext s
      rw [dn_one, z.2.2 (s 0) (s 1)]
      rw [show ∀ a b : M, b - (a + b) + a = 0 from fun a b => by abel]
      exact map_zero e)
  have hv : ∀ s : Fin 1 → G, s = fun _ => s 0 := fun s => funext fun i => by
    rw [Subsingleton.elim i 0]
  obtain ⟨e', he'⟩ := core_quot A ((B1 rho).comap (Z1 rho).subtype) 1 φ hex
    (fun x => by
      have hx : cochainOf A (cocycleι A 1 x) =
          fun s => e (e.symm (cochainOf A (cocycleι A 1 x) fun _ => s 0)) := by
        funext s
        rw [e.apply_symm_apply, ← hv]
      refine ⟨⟨fun g => e.symm (cochainOf A (cocycleι A 1 x) fun _ => g),
        (cont_of_lc A e (isLocallyConstant_cochainOf _)).comp
          (continuous_pi fun _ => continuous_id), fun g g' => ?_⟩, hx⟩
      have h := d_comp rho A e he 1 fun s => e.symm (cochainOf A (cocycleι A 1 x) fun _ => s 0)
      rw [← hx, d_cocycleι] at h
      have h' := congrFun h ![g, g']
      rw [dn_one rho (fun g => e.symm (cochainOf A (cocycleι A 1 x) fun _ => g))] at h'
      have h2 := e.map_eq_zero_iff.1 h'.symm
      simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at h2
      rw [← sub_eq_zero, ← neg_eq_zero, ← h2]
      abel)
    (fun z x hx => by
      rw [pi_succ_eq_zero_iff, hx]
      constructor
      · rintro ⟨w, hw, h⟩
        refine ⟨e.symm (w default), ?_⟩
        have h' := d_comp rho A e he 0 fun s => e.symm (w s)
        simp only [AddEquiv.apply_symm_apply] at h'
        funext g
        apply e.injective
        have h2 := (congrFun h' fun _ => g).symm.trans (congrFun h fun _ => g)
        rw [dn_zero] at h2
        exact h2
      · rintro ⟨m, h⟩
        refine ⟨fun _ => e m, IsLocallyConstant.const _, (d_comp rho A e he 0 fun _ => m).trans ?_⟩
        funext s
        rw [dn_zero]
        exact congrArg e (congrFun h (s 0)))
  refine ⟨e', fun z => ?_, fun z x h => he' z x (funext h)⟩
  obtain ⟨x, hx⟩ := hex z
  exact ⟨x, congrFun hx⟩

theorem gc2 : Sgc2 := by
  intro G _ _ _ R _ M _ _ _ _ rho A _ e he
  let φ : Z2 rho →+ ((Fin 2 → G) → A) :=
    AddMonoidHom.mk' (fun z s => e (z.1 (s 0, s 1))) (fun z z' => funext fun s => map_add e _ _)
  have hex : ∀ z, ∃ x : cocycles A 2, cochainOf A (cocycleι A 2 x) = φ z := fun z =>
    exists_coc A 2 _
      (lc_of_cont A e (z.2.1.comp ((continuous_apply 0).prodMk (continuous_apply 1)))) (by
      refine (d_comp rho A e he 2 fun s => z.1 (s 0, s 1)).trans ?_
      funext s
      rw [dn_two, z.2.2 (s 0) (s 1) (s 2)]
      exact map_zero e)
  have hv : ∀ s : Fin 1 → G, s = fun _ => s 0 := fun s => funext fun i => by
    rw [Subsingleton.elim i 0]
  have hv2 : ∀ s : Fin 2 → G, s = ![s 0, s 1] := fun s => funext fun i => by
    fin_cases i <;> rfl
  obtain ⟨e', he'⟩ := core_quot A ((B2 rho).comap (Z2 rho).subtype) 2 φ hex
    (fun x => by
      have hx : cochainOf A (cocycleι A 2 x) =
          fun s => e (e.symm (cochainOf A (cocycleι A 2 x) ![s 0, s 1])) := by
        funext s
        rw [e.apply_symm_apply, ← hv2]
      refine ⟨⟨fun p => e.symm (cochainOf A (cocycleι A 2 x) ![p.1, p.2]),
        (cont_of_lc A e (isLocallyConstant_cochainOf _)).comp
          (continuous_pi fun i => by
            fin_cases i
            · exact continuous_fst
            · exact continuous_snd), fun g g' g'' => ?_⟩, hx⟩
      have h := d_comp rho A e he 2 fun s => e.symm (cochainOf A (cocycleι A 2 x) ![s 0, s 1])
      rw [← hx, d_cocycleι] at h
      have h' := congrFun h ![g, g', g'']
      rw [dn_two rho (fun p => e.symm (cochainOf A (cocycleι A 2 x) ![p.1, p.2]))] at h'
      exact e.map_eq_zero_iff.1 h'.symm)
    (fun z x hx => by
      rw [pi_succ_eq_zero_iff, hx]
      constructor
      · rintro ⟨w, hw, h⟩
        refine ⟨fun g => e.symm (w fun _ => g),
          (cont_of_lc A e hw).comp (continuous_pi fun _ => continuous_id), ?_⟩
        have hw' : w = fun s => e (e.symm (w fun _ => s 0)) := by
          funext s
          rw [e.apply_symm_apply, ← hv]
        have h' := d_comp rho A e he 1 fun s => e.symm (w fun _ => s 0)
        rw [← hw'] at h'
        funext p
        apply e.injective
        have h2 := (congrFun h' ![p.1, p.2]).symm.trans (congrFun h ![p.1, p.2])
        rw [dn_one rho (fun g => e.symm (w fun _ => g))] at h2
        exact h2
      · rintro ⟨c, hc, h⟩
        refine ⟨fun s => e (c (s 0)), lc_of_cont A e (Continuous.comp hc (continuous_apply 0)),
          (d_comp rho A e he 1 fun s => c (s 0)).trans ?_⟩
        funext s
        rw [dn_one]
        exact congrArg e (congrFun h (s 0, s 1)))
  refine ⟨e', fun z => ?_, fun z x h => he' z x (funext h)⟩
  obtain ⟨x, hx⟩ := hex z
  exact ⟨x, congrFun hx⟩

end CompanionTheory.LocalTateOrthogonality.Gcoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmp =====
