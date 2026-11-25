module

public import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef
public import Development.EtaleCohomology.CohomologicalPurity.LeafIndExc
public import Development.EtaleCohomology.CohomologicalPurity.LeafRootPf
public import Mathlib.RingTheory.Etale.StandardEtale
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Algebra.Category.Ring.FilteredColimits

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.CohomologicalPurity.LeafCoeqPf, Development.EtaleCohomology.CohomologicalPurity.LeafColHensPf, Development.EtaleCohomology.CohomologicalPurity.LeafColUnivPf, Development.EtaleCohomology.CohomologicalPurity.LeafCompPf, Development.EtaleCohomology.CohomologicalPurity.LeafDiagPf, Development.EtaleCohomology.CohomologicalPurity.LeafHensCut, Development.EtaleCohomology.CohomologicalPurity.LeafInvPf, Development.EtaleCohomology.CohomologicalPurity.LeafRootHensPf, Development.EtaleCohomology.CohomologicalPurity.LeafRootStdPf, Development.EtaleCohomology.CohomologicalPurity.LeafStagePf, Development.EtaleCohomology.CohomologicalPurity.LeafSupPf, Development.EtaleCohomology.CohomologicalPurity.FinLeafHens

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCoeqPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafCoeqPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped TensorProduct

namespace LateralTheory.CohomologicalPurity.Hz

theorem coeq_elem {A S S' : Type} [CommRing A] [CommRing S] [CommRing S'] (φ : A →+* S) (φ' : A →+* S')
    (I : Ideal A) (u v : S →+* S') (hφ : Good φ I) (hu : u.comp φ = φ') (hv : v.comp φ = φ') :
    ∃ e : S', (∀ s, (v s - u s) * e = 0) ∧ e - 1 ∈ I.map φ' := by
  let := φ.toAlgebra
  let := φ'.toAlgebra
  have : Algebra.Etale A S := hφ.etale
  let u' : S →ₐ[A] S' := { u with commutes' := fun a => RingHom.congr_fun hu a }
  let v' : S →ₐ[A] S' := { v with commutes' := fun a => RingHom.congr_fun hv a }
  obtain ⟨t, ht1, ht2⟩ :=
    (Algebra.FormallyUnramified.iff_exists_tensorProduct (R := A) (S := S)).1 inferInstance
  refine ⟨Algebra.TensorProduct.productMap u' v' t, fun s => ?_, ?_⟩
  · have h := congrArg (Algebra.TensorProduct.productMap u' v') (ht1 s)
    simpa [map_mul, map_sub, Algebra.TensorProduct.productMap_apply_tmul, u', v'] using h
  · have hmem : ∀ x ∈ I.map φ, u x ∈ I.map φ' ∧ v x ∈ I.map φ' := fun x hx => by
      refine ⟨?_, ?_⟩
      · have := Ideal.mem_map_of_mem u hx
        rwa [Ideal.map_map, hu] at this
      · have := Ideal.mem_map_of_mem v hx
        rwa [Ideal.map_map, hv] at this
    let q := Ideal.Quotient.mkₐ A (I.map φ')
    have hqv : q.comp v' = q.comp u' := by
      ext s
      obtain ⟨a, ha⟩ := hφ.surj s
      have e1 : v s - u s = v (s - φ a) - u (s - φ a) := by
        have h1 : v (φ a) = u (φ a) := (RingHom.congr_fun hv a).trans (RingHom.congr_fun hu a).symm
        rw [map_sub, map_sub, h1]; ring
      change Ideal.Quotient.mk _ (v s) = Ideal.Quotient.mk _ (u s)
      rw [Ideal.Quotient.eq, e1]
      exact Ideal.sub_mem _ (hmem _ ha).2 (hmem _ ha).1
    have hprod : q.comp (Algebra.TensorProduct.productMap u' v') = q.comp (u'.comp (Algebra.TensorProduct.lmul' A)) := by
      apply Algebra.TensorProduct.ext'
      intro a b
      have hb := AlgHom.congr_fun hqv b
      simp only [AlgHom.comp_apply, Algebra.TensorProduct.productMap_apply_tmul, map_mul,
        Algebra.TensorProduct.lmul'_apply_tmul] at hb ⊢
      rw [hb]
    have h := AlgHom.congr_fun hprod t
    simp only [AlgHom.comp_apply] at h
    rw [ht2, map_one] at h
    rw [← Ideal.Quotient.eq]
    simpa [q] using h

theorem LeafCoeq_of (hInv : LeafInv) (hComp : LeafComp) : LeafCoeq := by
  intro A S S' _ _ _ φ φ' I u v hφ hφ' hu hv
  obtain ⟨e, he1, he2⟩ := coeq_elem φ φ' I u v hφ hu hv
  obtain ⟨T, _, ψ, hg, hunit⟩ := hInv S' (I.map φ') (e - 1) he2
  rw [add_sub_cancel] at hunit
  refine ⟨T, inferInstance, ψ, RingHom.ext fun s => ?_, hComp.2 A S' T φ' ψ I hφ' hg⟩
  have h := congrArg ψ (he1 s)
  rw [map_mul, map_zero, hunit.mul_left_eq_zero, map_sub, sub_eq_zero] at h
  exact h.symm

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCoeqPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafColHensPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafColHensPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits Polynomial

namespace LateralTheory.CohomologicalPurity.Hz

theorem evalMapHom {R S : Type} [CommRing R] [CommRing S] (f : R →+* S) (p : R[X]) (x : R) :
    (p.map f).eval (f x) = f (p.eval x) := by
  rw [Polynomial.eval_map, eval₂_at_apply]

theorem Diag.leg_comp_map {A : Type} [CommRing A] {I : Ideal A} (Δ : Diag A I) (c : Cocone Δ.D) {j k : Δ.J}
    (e : j ⟶ k) : (Δ.leg c k).comp (Δ.D.map e).hom = Δ.leg c j :=
  congrArg CommRingCat.Hom.hom (c.w e)

theorem LeafColHens_of (hS : LeafStage) (hI : LeafInv) (hR : LeafRoot) : LeafColHens := by
  classical
  intro A _ I Δ c hc η hη
  have st := hS A I Δ c hc η hη
  have push : ∀ j (S : Type) [CommRing S] (φ : Δ.D.obj j →+* S), Good φ (I.map (Δ.s j)) →
      ∃ π : S →+* c.pt, π.comp φ = Δ.leg c j := by
    intro j S _ φ hφ
    obtain ⟨k, e, ρ, hρ⟩ := Δ.exh j S φ hφ
    exact ⟨(Δ.leg c k).comp ρ, by rw [RingHom.comp_assoc, hρ, Δ.leg_comp_map]⟩
  refine ⟨?_, ?_⟩
  · intro z hz
    rw [Ring.mem_jacobson_iff]
    intro y
    have hzy : z * y ∈ I.map η := Ideal.mul_mem_right y _ hz
    obtain ⟨j, hj⟩ := st.1 {z * y}
    obtain ⟨x, hx⟩ := hj (z * y) (Finset.mem_singleton_self _)
    have hx' : x ∈ I.map (Δ.s j) := st.2 j x (by rw [hx]; exact hzy)
    obtain ⟨S, _, φ, hφ, hu⟩ := hI (Δ.D.obj j) (I.map (Δ.s j)) x hx'
    obtain ⟨π, hπ⟩ := push j S φ hφ
    have h := hu.map π
    rw [← RingHom.comp_apply, hπ, map_add (f := _), map_one, hx, add_comm] at h
    exact h
  · intro f hf a₀ ha₀ hu
    obtain ⟨u, hu'⟩ := Ideal.Quotient.mk_surjective (↑hu.unit⁻¹ : c.pt ⧸ I.map η)
    have hdu : f.derivative.eval a₀ * u - 1 ∈ I.map η := by
      rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_mul, hu', map_one, IsUnit.mul_val_inv, sub_self]
    let T : Finset c.pt := insert a₀ (insert u (f.support.image f.coeff))
    obtain ⟨j, hj⟩ := st.1 T
    obtain ⟨a, ha⟩ := hj a₀ (Finset.mem_insert_self _ _)
    obtain ⟨v, hv⟩ := hj u (Finset.mem_insert_of_mem (Finset.mem_insert_self _ _))
    have hco : ∀ n, f.coeff n ∈ Set.range (Δ.leg c j) := by
      intro n
      by_cases hn : n ∈ f.support
      · exact hj _ (Finset.mem_insert_of_mem (Finset.mem_insert_of_mem (Finset.mem_image_of_mem _ hn)))
      · exact ⟨0, by rw [map_zero, notMem_support_iff.1 hn]⟩
    obtain ⟨g, hg, -, hgm⟩ := lifts_and_natDegree_eq_and_monic ((lifts_iff_coeff_lifts f).2 hco) hf
    have h1 : g.eval a ∈ I.map (Δ.s j) := st.2 j _ (by rw [← evalMapHom, hg, ha]; exact ha₀)
    have h2 : g.derivative.eval a * v - 1 ∈ I.map (Δ.s j) := st.2 j _ (by
      rw [map_sub, map_mul, map_one, ← evalMapHom, ← derivative_map, hg, ha, hv]; exact hdu)
    have h3 : IsUnit (Ideal.Quotient.mk (I.map (Δ.s j)) (g.derivative.eval a)) :=
      IsUnit.of_mul_eq_one (Ideal.Quotient.mk _ v)
        (by rw [← map_mul, ← map_one (Ideal.Quotient.mk (I.map (Δ.s j)))]; exact Ideal.Quotient.eq.2 h2)
    obtain ⟨S, _, φ, b, hφ, hb, hba⟩ := hR (Δ.D.obj j) (I.map (Δ.s j)) g a hgm h1 h3
    obtain ⟨π, hπ⟩ := push j S φ hφ
    refine ⟨π b, ?_, ?_⟩
    · have h := hb.map (f := π)
      rwa [Polynomial.map_map, hπ, hg] at h
    · have h := Ideal.mem_map_of_mem π hba
      rw [Ideal.map_map, Ideal.map_map, hπ, hη, map_sub, ← RingHom.comp_apply, hπ, ha] at h
      exact h

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafColHensPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafColUnivPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafColUnivPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef\nimport Mathlib.Tactic.Linter.Style\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits

namespace LateralTheory.CohomologicalPurity.Hz

theorem LeafColUniv_of : LeafColUniv := by
  intro A _ I Δ c hc η hη B _ J hJ ψ hψ
  have hu : ∀ j, ∃! χ : Δ.D.obj j →+* B, χ.comp (Δ.s j) = ψ := fun j => (Δ.good j).univ B J hJ ψ hψ
  choose χ hχ hχu using hu
  have hnat : ∀ {j k : Δ.J} (e : j ⟶ k), (χ k).comp (Δ.D.map e).hom = χ j := fun {j k} e => by
    apply hχu j
    rw [RingHom.comp_assoc, Δ.nat e, hχ k]
  let cB : Cocone Δ.D := ⟨CommRingCat.of B, ⟨fun j => CommRingCat.ofHom (χ j), fun j k e => by
    apply CommRingCat.hom_ext
    simpa using hnat e⟩⟩
  let d := hc.desc cB
  have hfac : ∀ j, d.hom.comp (Δ.leg c j) = χ j := fun j => by
    have := hc.fac cB j
    exact congrArg CommRingCat.Hom.hom this
  obtain ⟨j₀⟩ : Nonempty Δ.J := IsFiltered.nonempty
  refine ⟨d.hom, ?_, fun χ' h' => ?_⟩
  · show d.hom.comp η = ψ
    rw [← hη j₀, ← RingHom.comp_assoc, hfac, hχ]
  · have h2 : ∀ j, χ'.comp (Δ.leg c j) = χ j := fun j => by
      apply hχu j
      rw [RingHom.comp_assoc, hη j, h']
    have : CommRingCat.ofHom χ' = d := hc.hom_ext fun j => by
      apply CommRingCat.hom_ext
      change χ'.comp (Δ.leg c j) = d.hom.comp (Δ.leg c j)
      rw [h2, hfac]
    rw [← this]
    rfl

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafColUnivPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCompPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafCompPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef\nimport Mathlib.Tactic.Linter.Style\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace LateralTheory.CohomologicalPurity.Hz

theorem good_iso (A S : Type) [CommRing A] [CommRing S] (e : A ≃+* S) (I : Ideal A) : Good (e : A →+* S) I := by
  refine ⟨RingHom.Etale.of_bijective e.bijective, ⟨(Ideal.Quotient.mk I).comp (e.symm : S →+* A), ?_⟩, fun s => ⟨e.symm s, ?_⟩, ?_⟩
  · ext a; simp
  · simp
  · intro B _ J _ ψ _
    refine ⟨ψ.comp (e.symm : S →+* A), ?_, fun χ hχ => ?_⟩
    · ext a; simp
    · ext s
      have := congrArg (fun f : A →+* B => f (e.symm s)) hχ
      simpa using this

theorem good_comp (A S T : Type) [CommRing A] [CommRing S] [CommRing T] (φ : A →+* S) (ψ : S →+* T) (I : Ideal A)
    (h1 : Good φ I) (h2 : Good ψ (I.map φ)) : Good (ψ.comp φ) I := by
  obtain ⟨r1, hr1⟩ := h1.retr
  obtain ⟨r2, hr2⟩ := h2.retr
  have hk : I.map φ ≤ RingHom.ker r1 := by
    rw [Ideal.map_le_iff_le_comap]
    intro a ha
    change (r1.comp φ) a = 0
    rw [hr1]
    exact Ideal.Quotient.eq_zero_iff_mem.2 ha
  refine ⟨RingHom.Etale.stableUnderComposition φ ψ h1.etale h2.etale,
    ⟨(Ideal.Quotient.lift (I.map φ) r1 (fun a ha => hk ha)).comp r2, ?_⟩, fun t => ?_, ?_⟩
  · ext a
    have e2 : r2 (ψ (φ a)) = Ideal.Quotient.mk (I.map φ) (φ a) := congrArg (fun f : S →+* S ⧸ I.map φ => f (φ a)) hr2
    simp only [RingHom.comp_apply, e2]
    exact congrArg (fun f : A →+* A ⧸ I => f a) hr1
  · obtain ⟨s, hs⟩ := h2.surj t
    obtain ⟨a, ha⟩ := h1.surj s
    refine ⟨a, ?_⟩
    rw [Ideal.map_map] at hs
    have h3 : ψ (s - φ a) ∈ (I.map φ).map ψ := Ideal.mem_map_of_mem ψ ha
    rw [Ideal.map_map] at h3
    have : t - (ψ.comp φ) a = (t - ψ s) + ψ (s - φ a) := by simp [map_sub]
    rw [this]
    exact Ideal.add_mem _ hs h3
  · intro B _ J hB χ0 hI
    obtain ⟨χ1, hχ1, hu1⟩ := h1.univ B J hB χ0 hI
    have hI2 : I.map φ ≤ J.comap χ1 := by
      rw [Ideal.map_le_iff_le_comap, Ideal.comap_comap, hχ1]
      exact hI
    obtain ⟨χ2, hχ2, hu2⟩ := h2.univ B J hB χ1 hI2
    refine ⟨χ2, ?_, fun χ hχ => ?_⟩
    · show χ2.comp (ψ.comp φ) = χ0
      rw [← RingHom.comp_assoc, hχ2, hχ1]
    · apply hu2
      apply hu1
      show (χ.comp ψ).comp φ = χ0
      rw [RingHom.comp_assoc]
      exact hχ

theorem LeafComp_of : LeafComp := ⟨good_iso, good_comp⟩

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCompPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafDiagPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafDiagPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits

namespace LateralTheory.CohomologicalPurity.Hz.DiagPf

variable {A : Type} [CommRing A] (I : Ideal A)

structure Obj where
  n : ℕ
  K : Ideal (MvPolynomial (Fin n) A)
  good : Good (algebraMap A (MvPolynomial (Fin n) A ⧸ K)) I

variable {I}

abbrev Obj.Q (X : Obj I) : Type := MvPolynomial (Fin X.n) A ⧸ X.K

abbrev Obj.s (X : Obj I) : A →+* X.Q := algebraMap A X.Q

instance : SmallCategory (Obj I) where
  Hom X Y := {f : X.Q →+* Y.Q // f.comp X.s = Y.s}
  id X := ⟨RingHom.id _, RingHom.id_comp _⟩
  comp f g := ⟨g.1.comp f.1, by rw [RingHom.comp_assoc, f.2, g.2]⟩
  id_comp f := Subtype.ext (RingHom.comp_id _)
  comp_id f := Subtype.ext (RingHom.id_comp _)
  assoc f g h := Subtype.ext (RingHom.comp_assoc _ _ _).symm

def DF : Obj I ⥤ CommRingCat.{0} where
  obj X := CommRingCat.of X.Q
  map f := CommRingCat.ofHom f.1
  map_id _ := rfl
  map_comp _ _ := rfl

theorem key (hC : LeafComp) {T : Type} [CommRing T] (φ : A →+* T) (h : Good φ I) :
    ∃ (X : Obj I) (ρ : T →+* X.Q), ρ.comp φ = X.s := by
  let _ := φ.toAlgebra
  have : Algebra.Etale A T := h.etale
  obtain ⟨n, f, hf⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.1 (inferInstance : Algebra.FiniteType A T)
  let e0 := Ideal.quotientKerAlgEquivOfSurjective hf
  have hcomp : (e0.symm : T →+* MvPolynomial (Fin n) A ⧸ RingHom.ker f).comp φ =
      algebraMap A (MvPolynomial (Fin n) A ⧸ RingHom.ker f) := by
    have := AlgHom.comp_algebraMap (e0.symm : T →ₐ[A] MvPolynomial (Fin n) A ⧸ RingHom.ker f)
    rw [← RingHom.algebraMap_toAlgebra φ]
    exact this
  have hg : Good (algebraMap A (MvPolynomial (Fin n) A ⧸ RingHom.ker f)) I := by
    rw [← hcomp]
    exact hC.2 _ _ _ _ _ _ h (hC.1 _ _ e0.symm.toRingEquiv _)
  exact ⟨⟨n, RingHom.ker f, hg⟩, e0.symm, hcomp⟩

theorem diag_nonempty (hC : LeafComp) (hS : LeafSup) (hQ : LeafCoeq) (A : Type) [CommRing A] (I : Ideal A) :
    Nonempty (Diag A I) := by
  have hf : IsFiltered (Obj I) :=
    { cocone_objs := fun X Y => by
        obtain ⟨T, _, u, u', huu, hg⟩ := hS _ _ _ X.s Y.s I X.good Y.good
        obtain ⟨Z, ρ, hρ⟩ := key hC _ hg
        refine ⟨Z, ⟨ρ.comp u, by rw [RingHom.comp_assoc, hρ]⟩, ⟨ρ.comp u', ?_⟩, trivial⟩
        rw [RingHom.comp_assoc, ← huu, hρ]
      cocone_maps := fun X Y f g => by
        obtain ⟨T, _, w, hw, hg⟩ := hQ _ _ _ X.s Y.s I f.1 g.1 X.good Y.good f.2 g.2
        obtain ⟨Z, ρ, hρ⟩ := key hC _ hg
        refine ⟨Z, ⟨ρ.comp w, by rw [RingHom.comp_assoc, hρ]⟩, Subtype.ext ?_⟩
        change (ρ.comp w).comp f.1 = (ρ.comp w).comp g.1
        rw [RingHom.comp_assoc, RingHom.comp_assoc, hw]
      nonempty := by
        obtain ⟨Z, _, _⟩ := key hC (RingHom.id A) (hC.1 A A (RingEquiv.refl A) I)
        exact ⟨Z⟩ }
  refine ⟨@Diag.mk A _ I (Obj I) _ hf DF (fun X => X.s) (fun e => e.2) (fun X => X.good) ?_⟩
  intro j S _ ψ hψ
  have hg : Good (ψ.comp j.s) I := hC.2 _ _ _ _ _ _ j.good hψ
  obtain ⟨Z, ρ, hρ⟩ := key hC _ hg
  exact ⟨Z, ⟨ρ.comp ψ, hρ⟩, ρ, rfl⟩

end LateralTheory.CohomologicalPurity.Hz.DiagPf

namespace LateralTheory.CohomologicalPurity.Hz

theorem LeafDiag_of (hC : LeafComp) (hS : LeafSup) (hQ : LeafCoeq) : LeafDiag :=
  fun A _ I => DiagPf.diag_nonempty hC hS hQ A I

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafDiagPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafHensCut =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafHensCut", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafIndExc\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits

namespace LateralTheory.CohomologicalPurity.Hz

theorem Good.nbhd {A S : Type} [CommRing A] [CommRing S] {φ : A →+* S} {I : Ideal A} (h : Good φ I) : Nbhd φ I := by
  refine ⟨h.etale, Ideal.quotientMap_injective' ?_, fun y => ?_⟩
  · obtain ⟨r, hr⟩ := h.retr
    have h1 : I.map φ ≤ RingHom.ker r := by
      rw [Ideal.map_le_iff_le_comap]
      intro a ha
      change (r.comp φ) a = 0
      rw [hr]
      exact Ideal.Quotient.eq_zero_iff_mem.2 ha
    intro a ha
    have h2 : (r.comp φ) a = 0 := h1 ha
    rw [hr] at h2
    exact Ideal.Quotient.eq_zero_iff_mem.1 h2
  · obtain ⟨s, rfl⟩ := Ideal.Quotient.mk_surjective y
    obtain ⟨a, ha⟩ := h.surj s
    refine ⟨Ideal.Quotient.mk I a, ?_⟩
    rw [Ideal.quotientMap_mk]
    exact (Ideal.Quotient.eq.2 ha).symm

theorem exists_obj (h1 : LeafDiag) (h2 : LeafColHens) (h3 : LeafColUniv) (A : Type) [CommRing A] (I : Ideal A) :
    ∃ (H : CommRingCat.{0}) (η : A →+* H), HenselianRing H (I.map η) ∧ IndNbhd η I ∧ Univ η I := by
  obtain ⟨Δ⟩ := h1 A I
  let c := colimit.cocone Δ.D
  have hc : IsColimit c := colimit.isColimit Δ.D
  obtain ⟨j₀⟩ : Nonempty Δ.J := IsFiltered.nonempty
  have hw : ∀ {j k : Δ.J} (e : j ⟶ k), (Δ.leg c j).comp (Δ.s j) = (Δ.leg c k).comp (Δ.s k) := fun {j k} e => by
    have h : (Δ.leg c k).comp (Δ.D.map e).hom = Δ.leg c j := congrArg CommRingCat.Hom.hom (c.w e)
    rw [← Δ.nat e, ← RingHom.comp_assoc, h]
  have hη : ∀ j, (Δ.leg c j).comp (Δ.s j) = (Δ.leg c j₀).comp (Δ.s j₀) := fun j =>
    (hw (IsFiltered.leftToMax j j₀)).trans (hw (IsFiltered.rightToMax j j₀)).symm
  refine ⟨c.pt, _, h2 A I Δ c hc _ hη, ?_, h3 A I Δ c hc _ hη⟩
  refine ⟨Δ.J, Δ.cat, Δ.filt, Δ.D, ⟨fun j => CommRingCat.ofHom (Δ.s j), fun j k e => ?_⟩, c.ι, ⟨hc⟩,
    fun j => ⟨(Δ.good j).nbhd, ?_⟩⟩
  · exact CommRingCat.hom_ext (Δ.nat e).symm
  · exact CommRingCat.hom_ext (hη j)

theorem goal_of (h1 : LeafDiag) (h2 : LeafColHens) (h3 : LeafColUniv) : LeafHens := by
  choose H η hh hi hu using exists_obj h1 h2 h3
  have key : ∀ {A B : Type} [CommRing A] [CommRing B] {I : Ideal A} {J : Ideal B} (φ : A →+* B), I ≤ J.comap φ →
      ∃! χ : H A I →+* H B J, χ.comp (η A I) = (η B J).comp φ := fun {A B} _ _ {I J} φ h =>
    hu A I _ _ (hh B J) _ fun a ha => Ideal.mem_map_of_mem (η B J) (h ha)
  refine ⟨⟨H, η, fun φ h => (key φ h).exists.choose, fun φ h => (key φ h).exists.choose_spec, fun A _ I h => ?_,
    fun φ ψ h h' h'' => ?_, hh, hi⟩⟩
  · exact (key _ h).unique (key _ h).exists.choose_spec rfl
  · refine (key _ h'').unique (key _ h'').exists.choose_spec ?_
    rw [RingHom.comp_assoc, (key φ h).exists.choose_spec, ← RingHom.comp_assoc, (key ψ h').exists.choose_spec,
      RingHom.comp_assoc]

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafHensCut =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafInvPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafInvPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace LateralTheory.CohomologicalPurity.Hz

variable {A : Type} [CommRing A]

theorem inv_retr (I : Ideal A) (x : A) (hx : Ideal.Quotient.mk I x = 1) :
    ∃ r : Localization.Away x →+* A ⧸ I, r.comp (algebraMap A (Localization.Away x)) = Ideal.Quotient.mk I := by
  have hu0 : IsUnit (Ideal.Quotient.mk I x) := by rw [hx]; exact isUnit_one
  exact ⟨IsLocalization.Away.lift (S := Localization.Away x) (g := Ideal.Quotient.mk I) x hu0,
    IsLocalization.Away.lift_comp (S := Localization.Away x) x hu0⟩

theorem inv_surj (I : Ideal A) (x : A) (hx : Ideal.Quotient.mk I x = 1) (s : Localization.Away x) :
    ∃ a : A, s - algebraMap A (Localization.Away x) a ∈ I.map (algebraMap A (Localization.Away x)) := by
  obtain ⟨⟨a, ⟨u, n, rfl⟩⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers x) s
  refine ⟨a, ?_⟩
  have h1 := IsLocalization.mk'_spec (Localization.Away x) a (⟨x ^ n, n, rfl⟩ : Submonoid.powers x)
  have h2 : 1 - x ^ n ∈ I := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_pow, hx, one_pow, map_one, sub_self]
  rw [← h1]
  have h3 : IsLocalization.mk' (Localization.Away x) a (⟨x ^ n, n, rfl⟩ : Submonoid.powers x) -
      IsLocalization.mk' (Localization.Away x) a (⟨x ^ n, n, rfl⟩ : Submonoid.powers x) *
        algebraMap A (Localization.Away x) (x ^ n) =
      IsLocalization.mk' (Localization.Away x) a (⟨x ^ n, n, rfl⟩ : Submonoid.powers x) *
        algebraMap A (Localization.Away x) (1 - x ^ n) := by
    rw [map_sub, map_one, mul_sub, mul_one]
  rw [h3]
  exact Ideal.mul_mem_left _ _ (Ideal.mem_map_of_mem _ h2)

theorem inv_univ (I : Ideal A) (i : A) (hi : i ∈ I) : Univ (algebraMap A (Localization.Away (1 + i))) I := by
  intro B _ J hJ ψ hψ
  have hu : IsUnit (ψ (1 + i)) := by
    have hj : ψ i ∈ Ideal.jacobson ⊥ := by
      rw [Ideal.jacobson_bot]
      exact hJ.jac (hψ hi)
    have := (Ideal.mem_jacobson_bot.1 hj) 1
    rw [mul_one, add_comm] at this
    rwa [map_add, map_one]
  refine ⟨IsLocalization.Away.lift (1 + i) hu, RingHom.ext fun a => IsLocalization.Away.lift_eq (1 + i) hu a, ?_⟩
  intro χ hχ
  apply IsLocalization.ringHom_ext (Submonoid.powers (1 + i))
  rw [hχ]
  exact RingHom.ext fun a => (IsLocalization.Away.lift_eq (1 + i) hu a).symm

theorem LeafInv_of : LeafInv := by
  intro A _ I i hi
  have hx : Ideal.Quotient.mk I (1 + i) = 1 := by
    rw [map_add (f := _), map_one, Ideal.Quotient.eq_zero_iff_mem.2 hi, add_zero]
  refine ⟨Localization.Away (1 + i), inferInstance, algebraMap A (Localization.Away (1 + i)),
    ⟨?_, inv_retr I _ hx, inv_surj I _ hx, inv_univ I i hi⟩, IsLocalization.Away.algebraMap_isUnit (1 + i)⟩
  rw [RingHom.etale_algebraMap]
  exact Algebra.Etale.of_isLocalizationAway (1 + i)

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafInvPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafRootHensPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafRootHensPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafRootPf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Polynomial

namespace LateralTheory.CohomologicalPurity.Hz

theorem hens_isUnit_of_mk {B : Type} [CommRing B] (J : Ideal B) (hJ : J ≤ Ideal.jacobson ⊥) (x : B)
    (hx : IsUnit (Ideal.Quotient.mk J x)) : IsUnit x := by
  obtain ⟨y, hy⟩ := (Ideal.Quotient.mk_surjective (hx.unit⁻¹ : (B ⧸ J)ˣ).1)
  have h1 : Ideal.Quotient.mk J (x * y) = Ideal.Quotient.mk J 1 := by
    rw [map_mul, hy, map_one]; exact hx.mul_val_inv
  have h2 : x * y - 1 ∈ J := Ideal.Quotient.eq.mp h1
  have h3 : IsUnit (x * y) := Ideal.isUnit_of_sub_one_mem_jacobson_bot _ (hJ h2)
  exact isUnit_of_mul_isUnit_left h3

theorem hens_isUnit_of_sub {B : Type} [CommRing B] (J : Ideal B) (hJ : J ≤ Ideal.jacobson ⊥) (x y : B)
    (hxy : x - y ∈ J) (hy : IsUnit (Ideal.Quotient.mk J y)) : IsUnit x := by
  apply hens_isUnit_of_mk J hJ
  have : Ideal.Quotient.mk J x = Ideal.Quotient.mk J y := Ideal.Quotient.eq.mpr hxy
  rwa [this]

theorem hens_eval_sub_mem {B : Type} [CommRing B] (J : Ideal B) (p : B[X]) (x y : B) (h : x - y ∈ J) :
    p.eval x - p.eval y ∈ J := by
  obtain ⟨k, hk⟩ := Polynomial.sub_dvd_eval_sub x y p
  rw [hk]; exact J.mul_mem_right k h

theorem hens_q_eval {A : Type} [CommRing A] (f : A[X]) (a : A) :
    (f /ₘ (X - C a)).eval a = f.derivative.eval a := by
  have h : C (f.eval a) + (X - C a) * (f /ₘ (X - C a)) = f := by
    rw [← Polynomial.modByMonic_X_sub_C_eq_C_eval]; exact Polynomial.modByMonic_add_div f _
  conv_rhs => rw [← h]
  simp [derivative_mul]

theorem LeafRootHens_of : LeafRootHens := by
  intro A B _ _ I J hJ ψ hIJ f a hf hfa hu
  have hjac : J ≤ Ideal.jacobson ⊥ := by
    rw [Ideal.jacobson_bot]
    exact hJ.jac
  have hmk : ∀ x : A, IsUnit (Ideal.Quotient.mk I x) → IsUnit (Ideal.Quotient.mk J (ψ x)) := by
    intro x hx
    have := hx.map (Ideal.quotientMap J ψ hIJ)
    simpa [Ideal.quotientMap_mk] using this
  have hder : ∀ z : B, (f.map ψ).derivative.eval z = (f.derivative.map ψ).eval z := by
    intro z; rw [Polynomial.derivative_map]
  have e0 : ∀ (p : A[X]), (p.map ψ).eval (ψ a) = ψ (p.eval a) := by
    intro p; rw [Polynomial.eval_map, Polynomial.eval₂_at_apply]
  have hev0 : (f.map ψ).eval (ψ a) ∈ J := by rw [e0]; exact hIJ hfa
  have hu0 : IsUnit (Ideal.Quotient.mk J ((f.map ψ).derivative.eval (ψ a))) := by
    rw [hder, e0]; exact hmk _ hu
  obtain ⟨c, hc, hca⟩ := hJ.is_henselian (f.map ψ) (hf.map ψ) (ψ a) hev0 hu0
  have hc1 : IsUnit ((f.derivative.map ψ).eval c) := by
    apply hens_isUnit_of_sub J hjac _ (ψ (f.derivative.eval a)) _ (hmk _ hu)
    rw [← e0]; exact hens_eval_sub_mem J _ c (ψ a) hca
  have hc2 : IsUnit (((f /ₘ (X - C a)).map ψ).eval c) := by
    apply hens_isUnit_of_sub J hjac _ (ψ (f.derivative.eval a)) _ (hmk _ hu)
    rw [← hens_q_eval f a, ← e0]; exact hens_eval_sub_mem J _ c (ψ a) hca
  refine ⟨c, hc, hca, hc1, hc2, ?_⟩
  intro c' hc' hc'a
  have hd : c' - c ∈ J := by
    have := J.sub_mem hc'a hca
    rwa [sub_sub_sub_cancel_right] at this
  obtain ⟨k, hk⟩ := Polynomial.binomExpansion (f.map ψ) c (c' - c)
  rw [add_sub_cancel, hc'.eq_zero, hc.eq_zero, zero_add] at hk
  have hfac : (c' - c) * ((f.map ψ).derivative.eval c + k * (c' - c)) = 0 := by
    rw [hk]; ring
  have hunit : IsUnit ((f.map ψ).derivative.eval c + k * (c' - c)) := by
    apply hens_isUnit_of_sub J hjac _ ((f.map ψ).derivative.eval c)
    · rw [add_sub_cancel_left]; exact J.mul_mem_left k hd
    · rw [hder]; exact hc1.map _
  have : c' - c = 0 := (hunit.mul_left_eq_zero).mp hfac
  exact sub_eq_zero.mp this

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafRootHensPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafRootStdPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafRootStdPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafRootPf\npublic import Mathlib.RingTheory.Etale.StandardEtale\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Polynomial

namespace LateralTheory.CohomologicalPurity.Hz

lemma std_decomp {A : Type} [CommRing A] (f : A[X]) (a : A) :
    f = (X - C a) * (f /ₘ (X - C a)) + C (f.eval a) := by
  have h := modByMonic_add_div f (X - C a)
  rw [modByMonic_X_sub_C_eq_C_eval] at h
  rw [add_comm]; exact h.symm

lemma std_eval {A B : Type} [CommRing A] [CommRing B] (ψ : A →+* B) (f : A[X]) (a : A) (c : B) :
    (f.map ψ).eval c = (c - ψ a) * ((f /ₘ (X - C a)).map ψ).eval c + ψ (f.eval a) := by
  conv_lhs => rw [std_decomp f a]
  simp [Polynomial.map_mul, Polynomial.map_sub]

lemma std_deriv {A : Type} [CommRing A] (f : A[X]) (a : A) :
    f.derivative.eval a = (f /ₘ (X - C a)).eval a := by
  have h : f.derivative.eval a = (derivative ((X - C a) * (f /ₘ (X - C a)) + C (f.eval a))).eval a :=
    congrArg (fun p => (derivative p).eval a) (std_decomp f a)
  rw [h]; simp [derivative_mul]

lemma aeval_eq_eval_map {A B : Type} [CommRing A] [CommRing B] [Algebra A B] (p : A[X]) (x : B) :
    aeval x p = (p.map (algebraMap A B)).eval x := by
  rw [aeval_def, eval_map]

theorem LeafRootStd_of : LeafRootStd := by
  intro A _ I f a hf hfa hu
  set q := f /ₘ (X - C a) with hq
  let P : StandardEtalePair A := ⟨f, hf, f.derivative * q, ⟨q, 0, 1, by ring⟩⟩
  set φ := algebraMap A P.Ring with hφ
  have hX := P.hasMap_X
  have hroot : (f.map φ).eval P.X = 0 := by
    rw [← aeval_eq_eval_map]; exact hX.1
  have hgunit : IsUnit ((f.derivative.map φ).eval P.X * (q.map φ).eval P.X) := by
    have h2 := hX.2
    change IsUnit (aeval P.X (f.derivative * q)) at h2
    rwa [map_mul, aeval_eq_eval_map, aeval_eq_eval_map] at h2
  have hqunit : IsUnit ((q.map φ).eval P.X) := isUnit_of_mul_isUnit_right hgunit
  have hba : P.X - φ a ∈ I.map φ := by
    have e := std_eval φ f a P.X
    rw [hroot] at e
    have e2 : (P.X - φ a) * (q.map φ).eval P.X = -φ (f.eval a) := by linear_combination -e
    obtain ⟨u, hu'⟩ := hqunit
    rw [← hu'] at e2
    have e3 : P.X - φ a = ((P.X - φ a) * u) * ↑u⁻¹ := by simp [mul_assoc]
    rw [e3, e2]
    exact Ideal.mul_mem_right _ _ (neg_mem (Ideal.mem_map_of_mem _ hfa))
  have hmk : ∀ p : A[X], aeval (Ideal.Quotient.mk I a) p = Ideal.Quotient.mk I (p.eval a) := by
    intro p
    rw [← Ideal.Quotient.algebraMap_eq]
    exact aeval_algebraMap_apply_eq_algebraMap_eval a p
  have hga : IsUnit (Ideal.Quotient.mk I ((f.derivative * q).eval a)) := by
    rw [eval_mul, ← std_deriv, map_mul]; exact hu.mul hu
  have hm : P.HasMap (Ideal.Quotient.mk I a) := by
    refine ⟨?_, ?_⟩
    · change aeval _ f = 0
      rw [hmk]; exact Ideal.Quotient.eq_zero_iff_mem.mpr hfa
    · change IsUnit (aeval _ (f.derivative * q))
      rw [hmk]; exact hga
  refine ⟨P.Ring, inferInstance, φ, P.X, (RingHom.etale_algebraMap).mpr inferInstance,
    ⟨(P.lift _ hm : P.Ring →+* A ⧸ I),
      (AlgHom.comp_algebraMap (P.lift _ hm)).trans (Ideal.Quotient.algebraMap_eq I)⟩,
    ?_, hroot, hba, ?_, ?_⟩
  ·
    set J := I.map φ with hJ
    let π := Ideal.Quotient.mk J
    let R' := (π.comp φ).range
    have hXm : π P.X ∈ R' := ⟨a, (Ideal.Quotient.eq.mpr hba).symm⟩

    obtain ⟨v, hv⟩ := hga
    obtain ⟨u, hu2⟩ := Ideal.Quotient.mk_surjective (↑v⁻¹ : A ⧸ I)
    have hgu : ((f.derivative * q).eval a) * u - 1 ∈ I := by
      rw [← Ideal.Quotient.eq, map_mul, map_one, ← hv, hu2]; simp
    have hgb : π (aeval P.X P.g) = π (φ ((f.derivative * q).eval a)) := by
      apply Ideal.Quotient.eq.mpr
      change aeval P.X (f.derivative * q) - _ ∈ J
      rw [aeval_eq_eval_map, ← hφ]
      have hd := sub_dvd_eval_sub P.X (φ a) ((f.derivative * q).map φ)
      have hev : ((f.derivative * q).map φ).eval (φ a) = φ ((f.derivative * q).eval a) := by
        rw [Polynomial.eval_map, eval₂_at_apply]
      rw [hev] at hd
      obtain ⟨w, hw⟩ := hd
      rw [hw]; exact Ideal.mul_mem_right _ _ hba
    let mkP : A[X][X] →+* P.Ring := Ideal.Quotient.mk (Ideal.span {C P.f, X * C P.g - 1})
    have hY : π (mkP X) ∈ R' := by
      refine ⟨u, ?_⟩
      have h1 : aeval P.X P.g * mkP X = 1 := P.aeval_X_g_mul_mk_X
      have e1 : π (aeval P.X P.g) * π (mkP X) = 1 := by rw [← map_mul, h1, map_one]
      have h3 : π (φ ((f.derivative * q).eval a)) * π (φ u) = 1 := by
        rw [← map_mul, ← map_mul, ← map_one π, ← map_one φ]
        exact Ideal.Quotient.eq.mpr (by rw [← map_sub]; exact Ideal.mem_map_of_mem _ hgu)
      change π (φ u) = _
      linear_combination (-π (φ u)) * e1 + (π (mkP X) * π (φ u)) * hgb + π (mkP X) * h3
    have hin : ∀ c : A[X], π (mkP (C c)) ∈ R' := by
      intro c
      refine Polynomial.induction_on c (fun a0 => ⟨a0, rfl⟩) ?_ ?_
      · intro p1 p2 h1 h2; rw [C_add, map_add (f := _), map_add (f := _)]; exact add_mem h1 h2
      · intro n a0 ih
        rw [pow_succ, ← mul_assoc, C_mul, map_mul, map_mul]; exact mul_mem ih hXm
    have hall : ∀ p : A[X][X], π (mkP p) ∈ R' := by
      intro p
      refine Polynomial.induction_on p hin ?_ ?_
      · intro p1 p2 h1 h2; rw [map_add (f := _), map_add (f := _)]; exact add_mem h1 h2
      · intro n a0 ih
        rw [pow_succ, ← mul_assoc, map_mul, map_mul]; exact mul_mem ih hY
    intro s
    obtain ⟨p, rfl⟩ : ∃ p, mkP p = s := Ideal.Quotient.mk_surjective s
    obtain ⟨a', ha'⟩ := hall p
    exact ⟨a', Ideal.Quotient.eq.mp ha'.symm⟩
  · intro B _ χ₁ χ₂ h hb
    letI : Algebra A B := (χ₁.comp φ).toAlgebra
    let e₁ : P.Ring →ₐ[A] B := ⟨χ₁, fun _ => rfl⟩
    let e₂ : P.Ring →ₐ[A] B := ⟨χ₂, fun r => (congrArg (fun g : A →+* B => g r) h).symm⟩
    have := StandardEtalePair.hom_ext (f := e₁) (g := e₂) hb
    ext s
    exact congrArg (fun e : P.Ring →ₐ[A] B => e s) this
  · intro B _ ψ c hc h1 h2
    letI : Algebra A B := ψ.toAlgebra
    have hm' : P.HasMap c := by
      refine ⟨?_, ?_⟩
      · change aeval c f = 0
        rw [aeval_eq_eval_map]; exact hc
      · change IsUnit (aeval c (f.derivative * q))
        rw [map_mul, aeval_eq_eval_map, aeval_eq_eval_map]; exact h1.mul h2
    exact ⟨(P.lift c hm' : P.Ring →+* B), AlgHom.comp_algebraMap (P.lift c hm'), P.lift_X c hm'⟩

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafRootStdPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafStagePf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafStagePf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef\nimport Mathlib.Algebra.Category.Ring.FilteredColimits\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits

namespace LateralTheory.CohomologicalPurity.Hz

theorem Diag.leg_w {A : Type} [CommRing A] {I : Ideal A} (Δ : Diag A I) (c : Cocone Δ.D) {j k : Δ.J} (e : j ⟶ k) :
    (Δ.leg c k).comp (Δ.D.map e).hom = Δ.leg c j :=
  congrArg CommRingCat.Hom.hom (c.w e)

theorem Good.kill {A S : Type} [CommRing A] [CommRing S] {φ : A →+* S} {I : Ideal A}
    (ψ : S →+* A ⧸ I) (hψ : ψ.comp φ = Ideal.Quotient.mk I) : ∀ y ∈ I.map φ, ψ y = 0 := by
  intro y hy
  have h : I.map φ ≤ RingHom.ker ψ := by
    rw [Ideal.map_le_iff_le_comap]
    intro a ha
    change ψ (φ a) = 0
    rw [← RingHom.comp_apply, hψ]
    exact Ideal.Quotient.eq_zero_iff_mem.2 ha
  exact h hy

theorem Good.retr_unique {A S : Type} [CommRing A] [CommRing S] {φ : A →+* S} {I : Ideal A} (h : Good φ I)
    (χ χ' : S →+* A ⧸ I) (hχ : χ.comp φ = Ideal.Quotient.mk I) (hχ' : χ'.comp φ = Ideal.Quotient.mk I) : χ = χ' := by
  refine RingHom.ext fun s => ?_
  obtain ⟨a, ha⟩ := h.surj s
  have e1 := Good.kill χ hχ _ ha
  have e2 := Good.kill χ' hχ' _ ha
  rw [map_sub, sub_eq_zero] at e1 e2
  rw [e1, e2, ← RingHom.comp_apply, hχ, ← RingHom.comp_apply, hχ']

theorem stage_fin {A : Type} [CommRing A] {I : Ideal A} (Δ : Diag A I) (c : Cocone Δ.D) (hc : IsColimit c)
    (T : Finset c.pt) : ∃ j, ∀ t ∈ T, t ∈ (Δ.leg c j).range := by
  classical
  induction T using Finset.induction_on with
  | empty => exact ⟨(IsFiltered.nonempty : Nonempty Δ.J).some, by simp⟩
  | insert x T hx ih =>
    obtain ⟨j, hj⟩ := ih
    obtain ⟨k, y, hy⟩ := Concrete.isColimit_exists_rep Δ.D hc x
    refine ⟨IsFiltered.max j k, fun t ht => ?_⟩
    rcases Finset.mem_insert.1 ht with rfl | ht
    · refine ⟨(Δ.D.map (IsFiltered.rightToMax j k)).hom y, ?_⟩
      rw [← RingHom.comp_apply, Δ.leg_w]
      exact hy
    · obtain ⟨z, rfl⟩ := hj t ht
      exact ⟨(Δ.D.map (IsFiltered.leftToMax j k)).hom z, by rw [← RingHom.comp_apply, Δ.leg_w]⟩

theorem stage_ideal {A : Type} [CommRing A] {I : Ideal A} (Δ : Diag A I) (c : Cocone Δ.D) (hc : IsColimit c)
    (η : A →+* c.pt) (hη : ∀ j, (Δ.leg c j).comp (Δ.s j) = η) (j : Δ.J) (x : Δ.D.obj j)
    (hx : Δ.leg c j x ∈ I.map η) : x ∈ I.map (Δ.s j) := by
  let r : ∀ j, Δ.D.obj j →+* A ⧸ I := fun j => (Δ.good j).retr.choose
  have hr : ∀ j, (r j).comp (Δ.s j) = Ideal.Quotient.mk I := fun j => (Δ.good j).retr.choose_spec
  let cc : Cocone Δ.D :=
    { pt := CommRingCat.of (A ⧸ I)
      ι := { app := fun j => CommRingCat.ofHom (r j)
             naturality := fun j k e => by
               apply CommRingCat.hom_ext
               simp only [Functor.const_obj_obj, Functor.const_obj_map, Category.comp_id, CommRingCat.hom_comp,
                 CommRingCat.hom_ofHom]
               exact (Δ.good j).retr_unique _ _ (by rw [RingHom.comp_assoc, Δ.nat e, hr]) (hr j) } }
  let R : c.pt →+* A ⧸ I := (hc.desc cc).hom
  have hR : ∀ j, R.comp (Δ.leg c j) = r j := fun j => congrArg CommRingCat.Hom.hom (hc.fac cc j)
  have hRη : R.comp η = Ideal.Quotient.mk I := by rw [← hη j, ← RingHom.comp_assoc, hR, hr]
  obtain ⟨a, ha⟩ := (Δ.good j).surj x
  have h1 : Δ.leg c j (x - Δ.s j a) ∈ I.map η := by
    have := Ideal.mem_map_of_mem (Δ.leg c j) ha
    rwa [Ideal.map_map, hη] at this
  have h2 : η a ∈ I.map η := by
    have e : η a = Δ.leg c j x - Δ.leg c j (x - Δ.s j a) := by
      rw [map_sub, sub_sub_cancel, ← RingHom.comp_apply, hη]
    rw [e]
    exact Ideal.sub_mem _ hx h1
  have h3 : Ideal.Quotient.mk I a = 0 := by
    rw [← Good.kill R hRη _ h2, ← RingHom.comp_apply, hRη]
  have haI : a ∈ I := Ideal.Quotient.eq_zero_iff_mem.1 h3
  have e : x = (x - Δ.s j a) + Δ.s j a := by ring
  rw [e]
  exact Ideal.add_mem _ ha (Ideal.mem_map_of_mem _ haI)

theorem LeafStage_of : LeafStage := fun _ _ _ Δ c hc η hη =>
  ⟨stage_fin Δ c hc, stage_ideal Δ c hc η hη⟩

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafStagePf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafSupPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafSupPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCutDef\nimport Mathlib.Tactic.Linter.Style\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open TensorProduct

namespace LateralTheory.CohomologicalPurity.Hz

section Sup
variable {A S S' : Type} [CommRing A] [CommRing S] [CommRing S'] [Algebra A S] [Algebra A S'] (I : Ideal A)

theorem sup_etale (h : (algebraMap A S).Etale) (h' : (algebraMap A S').Etale) :
    (algebraMap A (S ⊗[A] S')).Etale := by
  rw [RingHom.etale_algebraMap] at *
  exact Algebra.Etale.comp A S (S ⊗[A] S')

theorem sup_retr (hr : ∃ r : S →+* A ⧸ I, r.comp (algebraMap A S) = Ideal.Quotient.mk I)
    (hr' : ∃ r : S' →+* A ⧸ I, r.comp (algebraMap A S') = Ideal.Quotient.mk I) :
    ∃ r : S ⊗[A] S' →+* A ⧸ I, r.comp (algebraMap A (S ⊗[A] S')) = Ideal.Quotient.mk I := by
  obtain ⟨r, hr⟩ := hr
  obtain ⟨r', hr'⟩ := hr'
  have c1 : ∀ a, r (algebraMap A S a) = algebraMap A (A ⧸ I) a := fun a => by
    rw [Ideal.Quotient.algebraMap_eq]; exact RingHom.congr_fun hr a
  have c2 : ∀ a, r' (algebraMap A S' a) = algebraMap A (A ⧸ I) a := fun a => by
    rw [Ideal.Quotient.algebraMap_eq]; exact RingHom.congr_fun hr' a
  let f : S →ₐ[A] A ⧸ I := { r with commutes' := c1 }
  let g : S' →ₐ[A] A ⧸ I := { r' with commutes' := c2 }
  refine ⟨(Algebra.TensorProduct.productMap f g).toRingHom, ?_⟩
  rw [AlgHom.toRingHom_eq_coe, AlgHom.comp_algebraMap, Ideal.Quotient.algebraMap_eq]

theorem mem_map_of_algHom {B : Type} [CommRing B] [Algebra A B] (f : S →ₐ[A] B) {s : S} {a : A}
    (h : s - algebraMap A S a ∈ I.map (algebraMap A S)) : f s - algebraMap A B a ∈ I.map (algebraMap A B) := by
  have e : (f : S →+* B).comp (algebraMap A S) = algebraMap A B := f.comp_algebraMap
  have h2 := Ideal.mem_map_of_mem (f : S →+* B) h
  rw [Ideal.map_map, e, map_sub] at h2
  simpa using h2

theorem sup_surj (hs : ∀ s : S, ∃ a : A, s - algebraMap A S a ∈ I.map (algebraMap A S))
    (hs' : ∀ s : S', ∃ a : A, s - algebraMap A S' a ∈ I.map (algebraMap A S')) (t : S ⊗[A] S') :
    ∃ a : A, t - algebraMap A (S ⊗[A] S') a ∈ I.map (algebraMap A (S ⊗[A] S')) := by
  set J := I.map (algebraMap A (S ⊗[A] S'))
  let R : Subring ((S ⊗[A] S') ⧸ J) := ((Ideal.Quotient.mk J).comp (algebraMap A (S ⊗[A] S'))).range
  have key : ∀ {B : Type} [CommRing B] [Algebra A B]
      (_ : ∀ s : B, ∃ a : A, s - algebraMap A B a ∈ I.map (algebraMap A B)) (f : B →ₐ[A] S ⊗[A] S') (s : B),
      Ideal.Quotient.mk J (f s) ∈ R := by
    intro B _ _ hB f s
    obtain ⟨a, ha⟩ := hB s
    refine ⟨a, ?_⟩
    show Ideal.Quotient.mk J (algebraMap A _ a) = Ideal.Quotient.mk J (f s)
    exact (Ideal.Quotient.eq.2 (mem_map_of_algHom I f ha)).symm
  suffices Ideal.Quotient.mk J t ∈ R by
    obtain ⟨a, ha⟩ := this
    exact ⟨a, Ideal.Quotient.eq.1 ha.symm⟩
  induction t using TensorProduct.induction_on with
  | zero => rw [map_zero]; exact R.zero_mem
  | tmul s s' =>
    have e : s ⊗ₜ[A] s' = Algebra.TensorProduct.includeLeft (S := A) s * Algebra.TensorProduct.includeRight s' := by
      simp
    rw [e, map_mul]
    exact R.mul_mem (key hs _ s) (key hs' _ s')
  | add x y hx hy => rw [map_add (f := _)]; exact R.add_mem hx hy

theorem sup_univ (hu : Univ (algebraMap A S) I) (hu' : Univ (algebraMap A S') I) :
    Univ (algebraMap A (S ⊗[A] S')) I := by
  intro B _ J hB ψ hIJ
  let _ : Algebra A B := ψ.toAlgebra
  obtain ⟨χ, hχ, hχ_unique⟩ := hu B J hB ψ hIJ
  obtain ⟨χ', hχ', hχ'_unique⟩ := hu' B J hB ψ hIJ
  let f : S →ₐ[A] B := { χ with commutes' := fun a => RingHom.congr_fun hχ a }
  let g : S' →ₐ[A] B := { χ' with commutes' := fun a => RingHom.congr_fun hχ' a }
  refine ⟨(Algebra.TensorProduct.productMap f g).toRingHom, ?_, ?_⟩
  · ext a
    exact (Algebra.TensorProduct.productMap f g).commutes a
  · intro χ₁ h₁
    have hl : χ₁.comp (Algebra.TensorProduct.includeLeft (R := A) (S := A) (A := S) (B := S') : S →ₐ[A] S ⊗[A] S').toRingHom = χ := by
      apply hχ_unique
      rw [RingHom.comp_assoc, AlgHom.toRingHom_eq_coe, AlgHom.comp_algebraMap, h₁]
    have hr : χ₁.comp (Algebra.TensorProduct.includeRight (R := A) (A := S) (B := S') : S' →ₐ[A] S ⊗[A] S').toRingHom = χ' := by
      apply hχ'_unique
      rw [RingHom.comp_assoc, AlgHom.toRingHom_eq_coe, AlgHom.comp_algebraMap, h₁]
    apply Algebra.TensorProduct.ringHom_ext
    · exact hl.trans (congrArg AlgHom.toRingHom (Algebra.TensorProduct.productMap_left f g)).symm
    · exact hr.trans (congrArg AlgHom.toRingHom (Algebra.TensorProduct.productMap_right f g)).symm

theorem sup_good (h : Good (algebraMap A S) I) (h' : Good (algebraMap A S') I) :
    Good (algebraMap A (S ⊗[A] S')) I :=
  ⟨sup_etale h.etale h'.etale, sup_retr I h.retr h'.retr, sup_surj I h.surj h'.surj, sup_univ I h.univ h'.univ⟩

end Sup

theorem LeafSup_of : LeafSup := by
  intro A S S' _ _ _ φ φ' I h h'
  let _ : Algebra A S := φ.toAlgebra
  let _ : Algebra A S' := φ'.toAlgebra
  refine ⟨S ⊗[A] S', inferInstance, (Algebra.TensorProduct.includeLeft (R := A) (S := A) (A := S) (B := S') : S →ₐ[A] S ⊗[A] S').toRingHom,
    (Algebra.TensorProduct.includeRight (R := A) (A := S) (B := S') : S' →ₐ[A] S ⊗[A] S').toRingHom, ?_, ?_⟩
  · exact RingHom.ext fun a => ((Algebra.TensorProduct.includeLeft (R := A) (S := A) (A := S) (B := S')).commutes a).trans
      ((Algebra.TensorProduct.includeRight (R := A) (A := S) (B := S')).commutes a).symm
  · have e : (Algebra.TensorProduct.includeLeft (R := A) (S := A) (A := S) (B := S') : S →ₐ[A] S ⊗[A] S').toRingHom.comp φ =
        algebraMap A (S ⊗[A] S') :=
      RingHom.ext fun a => (Algebra.TensorProduct.includeLeft (R := A) (S := A) (A := S) (B := S')).commutes a
    rw [e]
    exact sup_good I h h'

end LateralTheory.CohomologicalPurity.Hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafSupPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.FinLeafHens =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.FinLeafHens", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafRootPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafIndExc\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafCoeqPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafColHensPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafColUnivPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafCompPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDiagPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHensCut\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafInvPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafRootHensPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafRootStdPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafStagePf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafSupPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.LeafHens
theorem henselization_simple_root_lift_of_henselization : LateralTheory.CohomologicalPurity.Hz.LeafRoot := by
  apply LateralTheory.CohomologicalPurity.Hz.LeafRoot_of <;> first | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafRootStd_of | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafRootHens_of
theorem henselization_coequalizer_of_henselization : LateralTheory.CohomologicalPurity.Hz.LeafCoeq := by
  apply LateralTheory.CohomologicalPurity.Hz.LeafCoeq_of <;> first | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafInv_of | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafComp_of
theorem henselization_diagonal_section_of_henselization : LateralTheory.CohomologicalPurity.Hz.LeafDiag := by
  apply LateralTheory.CohomologicalPurity.Hz.LeafDiag_of <;> first | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafComp_of | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafSup_of | exact henselization_coequalizer_of_henselization
theorem henselization_colimit_henselian_of_henselization : LateralTheory.CohomologicalPurity.Hz.LeafColHens := by
  apply LateralTheory.CohomologicalPurity.Hz.LeafColHens_of <;> first | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafStage_of | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafInv_of | exact henselization_simple_root_lift_of_henselization
theorem etale_purity_henselian_local_of_henselization : LateralTheory.CohomologicalPurity.LeafHens := by
  apply LateralTheory.CohomologicalPurity.Hz.goal_of <;> first | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafComp_of | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafInv_of | exact henselization_simple_root_lift_of_henselization | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafSup_of | exact henselization_coequalizer_of_henselization | exact henselization_diagonal_section_of_henselization | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafStage_of | exact henselization_colimit_henselian_of_henselization | exact _root_.LateralTheory.CohomologicalPurity.Hz.LeafColUniv_of
alias intersectionNumber_baseChange := _root_.LateralTheory.Fin.LeafHens.etale_purity_henselian_local_of_henselization
end LateralTheory.Fin.LeafHens
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.FinLeafHens =====
