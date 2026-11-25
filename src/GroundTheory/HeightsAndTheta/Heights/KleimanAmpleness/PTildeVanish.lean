module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeTailCone
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeTailLoc
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsTildeVanish
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishCone, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishLoc, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanish

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishCone =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishCone", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeTailCone\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v w

section ConeE

variable (S : Type u) [CommRing S] {Ω : Type w} [Field Ω] [Algebra S Ω] {N : ℕ}
  (x : Fin (N + 1) → Ω) (E : Type v) [AddCommGroup E] [Module Ω E] [Module S E] [IsScalarTower S Ω E]

def ConeE (_S : Type u) (_x : Fin (N + 1) → Ω) (E : Type v) [AddCommGroup E] : Type v := ℤ →₀ E

instance : AddCommGroup (ConeE S x E) := inferInstanceAs (AddCommGroup (ℤ →₀ E))
instance : Module Ω (ConeE S x E) := inferInstanceAs (Module Ω (ℤ →₀ E))
instance : Module S (ConeE S x E) := inferInstanceAs (Module S (ℤ →₀ E))

def coeffE (c : ℤ) : ConeE S x E →ₗ[S] E := Finsupp.lapply c

def singleE (c : ℤ) : E →ₗ[S] ConeE S x E := Finsupp.lsingle c

variable {S x E}

theorem coneE_ext {w w' : ConeE S x E} (h : ∀ d, coeffE S x E d w = coeffE S x E d w') : w = w' :=
  Finsupp.ext h

theorem coeffE_singleE_same (c : ℤ) (v : E) : coeffE S x E c (singleE S x E c v) = v :=
  Finsupp.single_eq_same

theorem coeffE_singleE_ne {c d : ℤ} (h : c ≠ d) (v : E) : coeffE S x E d (singleE S x E c v) = 0 :=
  Finsupp.single_eq_of_ne h.symm

theorem coeffE_omega_smul (a : Ω) (w : ConeE S x E) (c : ℤ) : coeffE S x E c (a • w) = a • coeffE S x E c w :=
  rfl

def suppE (w : ConeE S x E) : Finset ℤ := Finsupp.support (show ℤ →₀ E from w)

theorem sum_singleE (w : ConeE S x E) : ∑ c ∈ suppE w, singleE S x E c (coeffE S x E c w) = w :=
  Finsupp.sum_single (show ℤ →₀ E from w)

variable (S x E)

def shiftE : Multiplicative ℤ →* Module.End Ω (ConeE S x E) where
  toFun n := (Finsupp.domLCongr (M := E) (R := Ω) (Equiv.addRight n.toAdd)).toLinearMap
  map_one' := LinearMap.ext fun w => Finsupp.ext fun c => by
    change (Finsupp.equivMapDomain (Equiv.addRight (0 : ℤ)) (show ℤ →₀ E from w)) c = (show ℤ →₀ E from w) c
    rw [Finsupp.equivMapDomain_apply]
    simp only [Equiv.addRight_symm_apply, neg_zero, add_zero]
  map_mul' a b := LinearMap.ext fun w => Finsupp.ext fun c => by
    change (Finsupp.equivMapDomain (Equiv.addRight (a.toAdd + b.toAdd)) (show ℤ →₀ E from w)) c =
      (Finsupp.equivMapDomain (Equiv.addRight a.toAdd)
        (Finsupp.equivMapDomain (Equiv.addRight b.toAdd) (show ℤ →₀ E from w))) c
    rw [Finsupp.equivMapDomain_apply, Finsupp.equivMapDomain_apply, Finsupp.equivMapDomain_apply]
    simp only [Equiv.addRight_symm_apply]
    congr 1
    abel

variable {S x E} in
theorem coeffE_shiftE (n : ℤ) (w : ConeE S x E) (c : ℤ) :
    coeffE S x E c (shiftE S x E (Multiplicative.ofAdd n) w) = coeffE S x E (c - n) w := by
  change (Finsupp.equivMapDomain (Equiv.addRight n) (show ℤ →₀ E from w)) c = _
  rw [Finsupp.equivMapDomain_apply]
  simp only [Equiv.addRight_symm_apply]
  rfl

def lpActE : LaurentPolynomial Ω →ₐ[Ω] Module.End Ω (ConeE S x E) :=
  AddMonoidAlgebra.lift Ω (Module.End Ω (ConeE S x E)) ℤ (shiftE S x E)

def coneE : Poly S N →+* Module.End Ω (ConeE S x E) :=
  (lpActE S x E).toRingHom.comp ((ConeLaurent.toLP S x).comp (coneLaurent S x))

instance : Module (Poly S N) (ConeE S x E) := Module.compHom _ (coneE S x E)

variable {S x E}

theorem coneE_smul (p : Poly S N) (w : ConeE S x E) : p • w = coneE S x E p w := rfl

theorem coeffE_smul_of_isHomogeneous {f : Poly S N} {e : ℕ} (hf : f.IsHomogeneous e)
    (w : ConeE S x E) (c : ℤ) : coeffE S x E c (f • w) = aeval x f • coeffE S x E (c - e) w := by
  rw [coneE_smul]
  change coeffE S x E c (lpActE S x E (ConeLaurent.toLP S x (coneLaurent S x f)) w) = _
  rw [coneLaurent_of_isHomogeneous hf, ConeLaurent.toLaurent_ofLaurent, lpActE, AddMonoidAlgebra.lift_single,
    LinearMap.smul_apply, coeffE_omega_smul, coeffE_shiftE]

theorem coneE_C (s : S) (w : ConeE S x E) : coneE S x E (C s) w = s • w := by
  refine coneE_ext fun d => ?_
  have h := coeffE_smul_of_isHomogeneous (x := x) (isHomogeneous_C (Fin (N + 1)) s) w d
  rw [coneE_smul] at h
  rw [h, aeval_C, Nat.cast_zero, sub_zero, algebraMap_smul, map_smul]

instance : IsScalarTower S (Poly S N) (ConeE S x E) where
  smul_assoc s p w := by
    rw [Algebra.smul_def, mul_smul, MvPolynomial.algebraMap_eq]
    exact coneE_C s (p • w)

theorem smul_singleE {f : Poly S N} {e : ℕ} (hf : f.IsHomogeneous e) (c : ℤ) (v : E) :
    f • singleE S x E c v = singleE S x E (c + e) (aeval x f • v) := by
  refine coneE_ext fun d => ?_
  rw [coeffE_smul_of_isHomogeneous hf]
  by_cases h : c + e = d
  · rw [← h, add_sub_cancel_right, coeffE_singleE_same, coeffE_singleE_same]
  · rw [coeffE_singleE_ne h, coeffE_singleE_ne (by omega), smul_zero]

theorem bijective_smul_of_isHomogeneous {s : Poly S N} {e : ℕ} (hs : s.IsHomogeneous e)
    (h0 : aeval x s ≠ 0) : Function.Bijective (fun w : ConeE S x E => s • w) := by
  refine ⟨fun w w' h => coneE_ext fun d => ?_, fun w => ?_⟩
  · have h1 := congrArg (coeffE S x E (d + e)) h
    simp only [coeffE_smul_of_isHomogeneous hs, add_sub_cancel_right] at h1
    exact smul_right_injective E h0 h1
  · refine ⟨shiftE S x E (Multiplicative.ofAdd (-(e : ℤ))) ((aeval x s)⁻¹ • w), coneE_ext fun d => ?_⟩
    change coeffE S x E d (s • _) = _
    rw [coeffE_smul_of_isHomogeneous hs, coeffE_shiftE, coeffE_omega_smul, smul_smul,
      mul_inv_cancel₀ h0, one_smul, sub_neg_eq_add, sub_add_cancel]

end ConeE

section SubE

variable {S : Type u} [CommRing S] {Ω : Type w} [Field Ω] [Algebra S Ω] {N : ℕ}
  {x : Fin (N + 1) → Ω} {E : Type v} [AddCommGroup E] [Module Ω E] [Module S E] [IsScalarTower S Ω E]
  (M : FinGradedSub (S := S) (x := x) E)

def FinGradedSub.coneSubE : Submodule (Poly S N) (ConeE S x E) where
  carrier := {w | ∀ c, coeffE S x E c w ∈ M.piece c}
  add_mem' ha hb c := by
    rw [(coeffE S x E c).map_add]
    exact add_mem (ha c) (hb c)
  zero_mem' c := by rw [map_zero]; exact zero_mem _
  smul_mem' p w hw c := by
    change coeffE S x E c (p • w) ∈ M.piece c

    rw [← sum_homogeneousComponent p, Finset.sum_smul, map_sum]
    refine Submodule.sum_mem _ fun e _ => ?_
    rw [coeffE_smul_of_isHomogeneous (homogeneousComponent_isHomogeneous e p)]
    have := M.smul_mem e (c - e) _ _ (homogeneousComponent_isHomogeneous e p) (hw (c - e))
    rwa [sub_add_cancel] at this

theorem FinGradedSub.singleE_mem_coneSubE {c : ℤ} {v : E} (hv : v ∈ M.piece c) :
    singleE S x E c v ∈ M.coneSubE := fun d => by
  by_cases h : c = d
  · subst h; rw [coeffE_singleE_same]; exact hv
  · rw [coeffE_singleE_ne h]; exact zero_mem _

def FinGradedSub.conePieceE (a : ℤ) : Submodule S M.coneSubE where
  carrier := {m | ∀ d, d ≠ a → coeffE S x E d (m : ConeE S x E) = 0}
  add_mem' ha hb d hd := by rw [Submodule.coe_add, map_add (f := _), ha d hd, hb d hd, add_zero]
  zero_mem' d _ := by rw [Submodule.coe_zero, map_zero]
  smul_mem' s m hm d hd := by rw [Submodule.coe_smul_of_tower, map_smul, hm d hd, smul_zero]

theorem FinGradedSub.eq_singleE_of_mem_conePieceE {a : ℤ} {m : M.coneSubE} (hm : m ∈ M.conePieceE a) :
    (m : ConeE S x E) = singleE S x E a (coeffE S x E a m) := by
  refine coneE_ext fun d => ?_
  by_cases h : a = d
  · subst h; rw [coeffE_singleE_same]
  · rw [coeffE_singleE_ne h, hm d (Ne.symm h)]

theorem FinGradedSub.singleE_mem_conePieceE {c : ℤ} {v : E} (hv : v ∈ M.piece c) :
    (⟨singleE S x E c v, M.singleE_mem_coneSubE hv⟩ : M.coneSubE) ∈ M.conePieceE c :=
  fun _ hd => coeffE_singleE_ne (Ne.symm hd) v

def FinGradedSub.coneGradedE : GradedPMod S N M.coneSubE where
  piece := M.conePieceE
  isInternal := by
    refine DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top ?_ ?_
    · refine iSupIndep_def.mpr fun a => Submodule.disjoint_def.mpr fun m hm hm' => ?_
      have h0 : coeffE S x E a (m : ConeE S x E) = 0 := by
        have hle : (⨆ (j : ℤ) (_ : j ≠ a), M.conePieceE j) ≤
            LinearMap.ker ((coeffE S x E a).comp ((M.coneSubE.subtype).restrictScalars S)) :=
          iSup₂_le fun j hj m hm => hm a (Ne.symm hj)
        exact hle hm'
      apply Subtype.ext
      rw [M.eq_singleE_of_mem_conePieceE hm, h0, map_zero]
      rfl
    · refine eq_top_iff.mpr fun m _ => ?_
      have hm : m = ∑ c ∈ suppE (m : ConeE S x E),
          (⟨singleE S x E c (coeffE S x E c m), M.singleE_mem_coneSubE (m.2 c)⟩ : M.coneSubE) := by
        apply Subtype.ext
        rw [Submodule.coe_sum]
        exact (sum_singleE (m : ConeE S x E)).symm
      rw [hm]
      exact Submodule.sum_mem _ fun c _ =>
        Submodule.mem_iSup_of_mem c (M.singleE_mem_conePieceE (m.2 c))
  smul_mem d c p m hp hm e he := by
    change coeffE S x E e (p • (m : ConeE S x E)) = 0
    rw [coeffE_smul_of_isHomogeneous hp, hm (e - d) (by omega), smul_zero]

theorem FinGradedSub.coneSubE_finite : Module.Finite (Poly S N) M.coneSubE := by
  obtain ⟨n, deg, gen, hgen, hspan⟩ := M.fg
  have heq : M.coneSubE = Submodule.span (Poly S N) (Set.range fun j => singleE S x E (deg j) (gen j)) := by
    refine le_antisymm (fun w hw => ?_) (Submodule.span_le.mpr ?_)
    · rw [← sum_singleE w]
      refine Submodule.sum_mem _ fun c _ => ?_
      have hv := hspan c (hw c)
      refine Submodule.span_induction (p := fun v _ => singleE S x E c v ∈
        Submodule.span (Poly S N) (Set.range fun j => singleE S x E (deg j) (gen j))) ?_ ?_ ?_ ?_ hv
      · rintro _ ⟨j, f, e, hf, hej, rfl⟩
        have : singleE S x E c (aeval x f • gen j) = f • singleE S x E (deg j) (gen j) := by
          rw [smul_singleE hf, show deg j + (e : ℤ) = c by omega]
        rw [this]
        exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)
      · rw [map_zero]; exact zero_mem _
      · intro a b _ _ ha hb
        rw [(singleE S x E c).map_add]
        exact add_mem ha hb
      · intro s a _ ha; rw [map_smul]; exact Submodule.smul_of_tower_mem _ s ha
    · rintro _ ⟨j, rfl⟩
      exact M.singleE_mem_coneSubE (hgen j)
  rw [Module.Finite.iff_fg, heq]
  exact Submodule.fg_span (Set.finite_range _)

end SubE

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishCone =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishLoc =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishLoc", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishCone\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeTailLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v w

section LocE

variable {S : Type u} [CommRing S] {Ω : Type w} [Field Ω] [Algebra S Ω] {N : ℕ}
  {x : Fin (N + 1) → Ω} {E : Type v} [AddCommGroup E] [Module Ω E] [Module S E] [IsScalarTower S Ω E]
  (M : FinGradedSub (S := S) (x := x) E)

def locConeE (I : Finset (Fin (N + 1))) (hI : I ⊆ support x) :
    LocMod S N M.coneSubE I →ₗ[Poly S N] ConeE S x E :=
  LocalizedModule.lift (monos I) M.coneSubE.subtype fun s => by
    rw [Module.End.isUnit_iff]
    obtain ⟨e, he⟩ := monos_isHomogeneous s.2
    exact bijective_smul_of_isHomogeneous he (aeval_ne_zero_of_mem_monos_support hI s.2)

theorem locConeE_mk (I : Finset (Fin (N + 1))) (hI : I ⊆ support x) (m : M.coneSubE)
    (s : monos (S := S) I) :
    (s : Poly S N) • locConeE M I hI (LocalizedModule.mk m s) = m := by
  have h1 : (s : Poly S N) • (LocalizedModule.mk m s : LocalizedModule (monos (S := S) I) M.coneSubE) =
      LocalizedModule.mk m 1 := by
    rw [LocalizedModule.smul'_mk]
    exact LocalizedModule.mk_cancel s m
  have h2 : locConeE M I hI ((s : Poly S N) • LocalizedModule.mk m s) = m := by
    change LocalizedModule.lift (monos I) M.coneSubE.subtype _
      ((s : Poly S N) • (LocalizedModule.mk m s : LocalizedModule (monos (S := S) I) M.coneSubE)) = m
    rw [h1]
    simp
  have h3 := (locConeE M I hI).map_smul (s : Poly S N) (LocalizedModule.mk m s : LocMod S N M.coneSubE I)
  exact h3.symm.trans h2

theorem locConeE_mk_eq {I : Finset (Fin (N + 1))} (hI : I ⊆ support x) {m : M.coneSubE}
    {s : monos (S := S) I} {w : ConeE S x E} (h : (s : Poly S N) • w = m) :
    locConeE M I hI (LocalizedModule.mk m s) = w := by
  obtain ⟨e, he⟩ := monos_isHomogeneous s.2
  exact (bijective_smul_of_isHomogeneous he (aeval_ne_zero_of_mem_monos_support hI s.2)).1
    ((locConeE_mk M I hI m s).trans h.symm)

theorem locConeE_injective (I : Finset (Fin (N + 1))) (hI : I ⊆ support x) :
    Function.Injective (locConeE M I hI) := by
  refine (injective_iff_map_eq_zero _).mpr fun z => ?_
  refine LocalizedModule.induction_on
    (β := fun z : LocalizedModule (monos (S := S) I) M.coneSubE => locConeE M I hI z = 0 → z = 0)
    (fun m s hz => ?_) z
  have h := locConeE_mk M I hI m s
  rw [hz, smul_zero] at h
  have hm : m = 0 := Subtype.ext h.symm
  rw [hm, LocalizedModule.zero_mk]

theorem locConeE_locRes {I J : Finset (Fin (N + 1))} (h : I ⊆ J) (hJ : J ⊆ support x)
    (z : LocMod S N M.coneSubE I) :
    locConeE M J hJ (locRes h z) = locConeE M I (h.trans hJ) z := by
  refine LocalizedModule.induction_on
    (β := fun z : LocalizedModule (monos (S := S) I) M.coneSubE =>
      locConeE M J hJ (locRes h z) = locConeE M I (h.trans hJ) z) (fun m s => ?_) z
  rw [locRes_mk]
  exact locConeE_mk_eq M hJ (locConeE_mk M I _ m s)

theorem locModE_subsingleton {I : Finset (Fin (N + 1))} {i : Fin (N + 1)} (hi : i ∈ I) (hx : x i = 0) :
    Subsingleton (LocMod S N M.coneSubE I) := by
  have hX : ∀ m : M.coneSubE, (X i : Poly S N) • m = 0 := fun m => by
    apply Subtype.ext
    refine coneE_ext fun d => ?_
    change coeffE S x E d ((X i : Poly S N) • (m : ConeE S x E)) = coeffE S x E d 0
    rw [coeffE_smul_of_isHomogeneous (isHomogeneous_X S i), aeval_X, hx, zero_smul, map_zero]
  refine subsingleton_of_forall_eq 0 fun z => ?_
  refine LocalizedModule.induction_on
    (β := fun z : LocalizedModule (monos (S := S) I) M.coneSubE => z = 0) (fun m s => ?_) z
  rw [← LocalizedModule.mk_cancel_common_left ⟨X i, X_mem_monos hi⟩ s m]
  have h0 : (⟨X i, X_mem_monos hi⟩ : monos (S := S) I) • m = 0 := hX m
  rw [h0, LocalizedModule.zero_mk]

theorem locConeE_degLoc (c : ℤ) (I : StdCell N) (hI : I.1 ⊆ support x) {z : LocMod S N M.coneSubE I.1}
    (hz : z ∈ degLoc M.coneGradedE c I) :
    ∃ v ∈ M.tilde c ⟨I.1, I.2.1, hI⟩, locConeE M I.1 hI z = singleE S x E c v := by
  refine Submodule.span_induction (p := fun z _ => ∃ v ∈ M.tilde c ⟨I.1, I.2.1, hI⟩,
    locConeE M I.1 hI z = singleE S x E c v) ?_ ?_ ?_ ?_ hz
  · rintro _ ⟨m, s, a, e, hm, hse, hae, rfl⟩
    have hs0 := aeval_ne_zero_of_mem_monos_support hI s.2
    refine ⟨(aeval x (s : Poly S N))⁻¹ • coeffE S x E a (m : ConeE S x E),
      Submodule.subset_span ⟨coeffE S x E a m, s, a, e, s.2, hse, m.2 a, hae, rfl⟩, locConeE_mk_eq M hI ?_⟩
    rw [smul_singleE hse, smul_smul, mul_inv_cancel₀ hs0, one_smul, show c + (e : ℤ) = a by omega]
    exact (M.eq_singleE_of_mem_conePieceE hm).symm
  · exact ⟨0, zero_mem _, by rw [map_zero, map_zero]⟩
  · rintro _ _ _ _ ⟨v, hv, hzv⟩ ⟨v', hv', hzv'⟩
    exact ⟨v + v', add_mem hv hv', by rw [map_add (f := _), map_add (f := _), hzv, hzv']⟩
  · rintro s _ _ ⟨v, hv, hzv⟩
    refine ⟨s • v, ?_, by rw [LinearMap.map_smul_of_tower, hzv, map_smul]⟩
    rw [← algebraMap_smul Ω s v]
    exact (M.tilde c _).smul_mem (algebraMap S (chartRing S x ⟨I.1, I.2.1, hI⟩) s) hv

def tildeGensE (c : ℤ) (I : Chart x) : Set E :=
  {y | ∃ (m : E) (s : Poly S N) (a : ℤ) (e : ℕ), s ∈ monos I.1 ∧ s.IsHomogeneous e ∧ m ∈ M.piece a ∧
    a - e = c ∧ y = (aeval x s)⁻¹ • m}

theorem tildeE_le_span (c : ℤ) (I : Chart x) :
    (M.tilde c I : Set E) ⊆ Submodule.span S (tildeGensE M c I) := by
  have hclosed : ∀ a : chartRing S x I, ∀ y ∈ Submodule.span S (tildeGensE M c I),
      a • y ∈ Submodule.span S (tildeGensE M c I) := by
    intro a y hy
    refine Submodule.span_induction (p := fun y _ => a • y ∈ Submodule.span S (tildeGensE M c I))
      ?_ ?_ ?_ ?_ hy
    · rintro _ ⟨m, s, b, e, hs, hse, hm, hbe, rfl⟩
      obtain ⟨f, s', e', hs', hf, hse', ha⟩ := a.2
      refine Submodule.subset_span ⟨aeval x f • m, s' * s, b + e', e' + e, mul_mem hs' hs, hse'.mul hse,
        M.smul_mem e' b f m hf hm, by push_cast; omega, ?_⟩
      change (a : Ω) • ((aeval x s)⁻¹ • m) = _
      rw [smul_smul, smul_smul, ha, map_mul, mul_inv, div_eq_mul_inv]
      congr 1
      ring
    · rw [smul_zero]; exact zero_mem _
    · intro y y' _ _ hy hy'; rw [smul_add]; exact add_mem hy hy'
    · intro t y _ hy
      have : a • (t • y) = t • (a • y) := by
        rw [← algebraMap_smul Ω t y, ← algebraMap_smul Ω t (a • y)]
        change (a : Ω) • (algebraMap S Ω t • y) = algebraMap S Ω t • ((a : Ω) • y)
        rw [smul_smul, smul_smul, mul_comm]
      rw [this]; exact Submodule.smul_mem _ t hy
  intro y hy
  exact Submodule.span_induction (p := fun y _ => y ∈ Submodule.span S (tildeGensE M c I))
    (fun y hy => Submodule.subset_span hy) (zero_mem _) (fun _ _ _ _ => add_mem)
    (fun a y _ hy => hclosed a y hy) hy

theorem exists_locConeE_eq (c : ℤ) (I : StdCell N) (hI : I.1 ⊆ support x) {y : E}
    (hy : y ∈ M.tilde c ⟨I.1, I.2.1, hI⟩) :
    ∃ z ∈ degLoc M.coneGradedE c I, locConeE M I.1 hI z = singleE S x E c y := by
  refine Submodule.span_induction (p := fun y _ => ∃ z ∈ degLoc M.coneGradedE c I,
    locConeE M I.1 hI z = singleE S x E c y) ?_ ?_ ?_ ?_ (tildeE_le_span M c _ hy)
  · rintro _ ⟨m, s, a, e, hs, hse, hm, hae, rfl⟩
    refine ⟨LocalizedModule.mk ⟨singleE S x E a m, M.singleE_mem_coneSubE hm⟩ ⟨s, hs⟩,
      Submodule.subset_span ⟨_, ⟨s, hs⟩, a, e, M.singleE_mem_conePieceE hm, hse, hae, rfl⟩,
      locConeE_mk_eq M hI ?_⟩
    have hs0 := aeval_ne_zero_of_mem_monos_support hI hs
    change s • singleE S x E c ((aeval x s)⁻¹ • m) = singleE S x E a m
    rw [smul_singleE hse, smul_smul, mul_inv_cancel₀ hs0, one_smul, show c + (e : ℤ) = a by omega]
  · exact ⟨0, zero_mem _, by rw [map_zero, map_zero]⟩
  · rintro _ _ _ _ ⟨z, hz, hzy⟩ ⟨z', hz', hzy'⟩
    exact ⟨z + z', add_mem hz hz', by rw [map_add (f := _), map_add (f := _), hzy, hzy']⟩
  · rintro t _ _ ⟨z, hz, hzy⟩
    exact ⟨t • z, Submodule.smul_mem _ t hz, by rw [LinearMap.map_smul_of_tower, hzy, map_smul]⟩

end LocE

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishLoc =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanish =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanish", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsTildeVanish\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanishLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v w

section Compare

variable {S : Type u} [CommRing S] {Ω : Type w} [Field Ω] [Algebra S Ω] {N : ℕ}
  {x : Fin (N + 1) → Ω} {E : Type v} [AddCommGroup E] [Module Ω E] [Module S E] [IsScalarTower S Ω E]

theorem coe_d_sub (F : SubSystem S x E) {i : ℕ} (t : Cech.Cochain (fun I : Chart x => ↥(F.sub I)) i)
    (J : Cech.Idx (support x) (i + 1)) :
    ((Cech.d (fun I : Chart x => ↥(F.sub I)) F.res i t J : F.sub J.1) : E) =
      ∑ j : J.1.1, Cech.sgn J.1.1 j • (t (Cech.face J j) : E) := by
  rw [Cech.d_apply, Submodule.coe_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Submodule.coe_smul_of_tower]
  rfl

variable (M : FinGradedSub (S := S) (x := x) E) (c : ℤ)

def liftTilde (I : StdCell N) (hI : I.1 ⊆ support x) (y : M.tilde c ⟨I.1, I.2.1, hI⟩) :
    LocMod S N M.coneSubE I.1 :=
  Classical.choose (exists_locConeE_eq M c I hI y.2)

theorem liftTilde_mem (I : StdCell N) (hI : I.1 ⊆ support x) (y : M.tilde c ⟨I.1, I.2.1, hI⟩) :
    liftTilde M c I hI y ∈ degLoc M.coneGradedE c I :=
  (Classical.choose_spec (exists_locConeE_eq M c I hI y.2)).1

theorem locConeE_liftTilde (I : StdCell N) (hI : I.1 ⊆ support x) (y : M.tilde c ⟨I.1, I.2.1, hI⟩) :
    locConeE M I.1 hI (liftTilde M c I hI y) = singleE S x E c y :=
  (Classical.choose_spec (exists_locConeE_eq M c I hI y.2)).2

def liftCochain {i : ℕ} (t : Cech.Cochain (fun I : Chart x => ↥((M.tildeSys c).sub I)) i) :
    Cech.Cochain (locSys S N M.coneSubE) i := fun J =>
  if hJ : J.1.1 ⊆ support x then liftTilde M c J.1 hJ (t ⟨⟨J.1.1, J.1.2.1, hJ⟩, J.2⟩) else 0

theorem liftCochain_of {i : ℕ} (t : Cech.Cochain (fun I : Chart x => ↥((M.tildeSys c).sub I)) i)
    (J : Cech.Idx (Finset.univ : Finset (Fin (N + 1))) i) (hJ : J.1.1 ⊆ support x) :
    liftCochain M c t J = liftTilde M c J.1 hJ (t ⟨⟨J.1.1, J.1.2.1, hJ⟩, J.2⟩) :=
  dif_pos hJ

theorem liftCochain_mem {i : ℕ} (t : Cech.Cochain (fun I : Chart x => ↥((M.tildeSys c).sub I)) i) :
    liftCochain M c t ∈ Cech.Cdeg (locSys S N M.coneSubE) (degLoc M.coneGradedE c) i := by
  intro J _
  by_cases hJ : J.1.1 ⊆ support x
  · rw [liftCochain_of M c t J hJ]
    exact liftTilde_mem M c _ hJ _
  · change (if hJ : J.1.1 ⊆ support x then _ else 0) ∈ _
    rw [dite_eq_right hJ]
    exact zero_mem _

theorem locConeE_d {i : ℕ} (z : Cech.Cochain (locSys S N M.coneSubE) i)
    (K : Cech.Idx (Finset.univ : Finset (Fin (N + 1))) (i + 1)) (hK : K.1.1 ⊆ support x) :
    locConeE M K.1.1 hK (Cech.d (locSys S N M.coneSubE) locResS i z K) =
      ∑ j : K.1.1, Cech.sgn K.1.1 j • locConeE M (Cech.face K j).1.1
        ((Cech.face_subset K j).trans hK) (z (Cech.face K j)) := by

  rw [Cech.d_apply, map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [map_zsmul]
  congr 1
  exact locConeE_locRes M (Cech.face_subset K j) hK _

theorem d_liftCochain {i : ℕ} (t : Cech.Cochain (fun I : Chart x => ↥((M.tildeSys c).sub I)) (i + 1))
    (ht : Cech.d (fun I : Chart x => ↥((M.tildeSys c).sub I)) (M.tildeSys c).res (i + 1) t = 0) :
    Cech.d (locSys S N M.coneSubE) locResS (i + 1) (liftCochain M c t) = 0 := by
  funext K
  change _ = 0
  by_cases hK : K.1.1 ⊆ support x
  · apply locConeE_injective M K.1.1 hK
    rw [locConeE_d M (liftCochain M c t) K hK, map_zero]
    have h0 := coe_d_sub (M.tildeSys c) t ⟨⟨K.1.1, K.1.2.1, hK⟩, K.2⟩
    rw [ht] at h0
    calc ∑ j : K.1.1, Cech.sgn K.1.1 j • locConeE M (Cech.face K j).1.1
          ((Cech.face_subset K j).trans hK) (liftCochain M c t (Cech.face K j))
        = ∑ j : K.1.1, Cech.sgn K.1.1 j • singleE S x E c
            (t (Cech.face (⟨⟨K.1.1, K.1.2.1, hK⟩, K.2⟩ : Cech.Idx (support x) (i + 1 + 1)) j) : E) := by
          refine Finset.sum_congr rfl fun j _ => ?_
          rw [liftCochain_of M c t _ ((Cech.face_subset K j).trans hK)]
          congr 1
          exact locConeE_liftTilde M c _ _ _
      _ = singleE S x E c (∑ j : K.1.1, Cech.sgn K.1.1 j •
            (t (Cech.face (⟨⟨K.1.1, K.1.2.1, hK⟩, K.2⟩ : Cech.Idx (support x) (i + 1 + 1)) j) : E)) := by

          rw [map_sum]
          refine Finset.sum_congr rfl fun j _ => ?_
          rw [map_zsmul]
      _ = 0 := by
          rw [← h0]
          exact map_zero _
  · haveI := locModE_subsingleton (S := S) M (Finset.not_subset.mp hK).choose_spec.1
      (by simpa [mem_support] using (Finset.not_subset.mp hK).choose_spec.2)
    exact Subsingleton.elim _ _

theorem tildeSys_H_subsingleton (k : ℕ) (h : Subsingleton (cohom M.coneGradedE (k + 1) c)) :
    Subsingleton ((M.tildeSys c).H (k + 1)) := by
  unfold cohom Cech.Hdeg at h
  rw [Submodule.Quotient.subsingleton_iff, Submodule.eq_top_iff'] at h
  unfold SubSystem.H Cech.H
  set_option synthInstance.maxHeartbeats 200000 in
    refine Submodule.Quotient.subsingleton_iff.mpr (Submodule.eq_top_iff'.mpr ?_)
  rintro ⟨t, ht⟩
  rw [Submodule.mem_comap]
  change t ∈ LinearMap.range (Cech.d _ (M.tildeSys c).res k)
  have hz : liftCochain M c t ∈
      Cech.cocyDeg (locSys S N M.coneSubE) (degLoc M.coneGradedE c) locResS (k + 1) :=
    ⟨d_liftCochain M c t (LinearMap.mem_ker.mp ht), liftCochain_mem M c t⟩
  have hb := h ⟨_, hz⟩
  rw [Submodule.mem_comap] at hb
  change liftCochain M c t ∈ (Cech.Cdeg (locSys S N M.coneSubE) (degLoc M.coneGradedE c) k).map
    (Cech.d (locSys S N M.coneSubE) locResS k) at hb
  obtain ⟨y, hy, hyz⟩ := hb
  have hu : ∀ I : Cech.Idx (support x) k, coeffE S x E c (locConeE M I.1.1 I.1.2.2
      (y ⟨⟨I.1.1, I.1.2.1, Finset.subset_univ _⟩, I.2⟩)) ∈ (M.tildeSys c).sub I.1 := fun I => by
    obtain ⟨v, hv, hyv⟩ := locConeE_degLoc M c _ I.1.2.2
      (hy ⟨⟨I.1.1, I.1.2.1, Finset.subset_univ _⟩, I.2⟩ (Set.mem_univ _))
    rw [hyv, coeffE_singleE_same]
    exact hv
  refine ⟨fun I => ⟨_, hu I⟩, ?_⟩
  funext J
  apply Subtype.ext
  rw [coe_d_sub]
  have e1 := locConeE_liftTilde M c ⟨J.1.1, J.1.2.1, Finset.subset_univ _⟩ J.1.2.2 (t J)
  have e2 := congrFun hyz ⟨⟨J.1.1, J.1.2.1, Finset.subset_univ _⟩, J.2⟩
  rw [liftCochain_of M c t _ J.1.2.2] at e2
  rw [← coeffE_singleE_same (S := S) (x := x) c (t J : E), ← e1, ← e2]
  refine Eq.trans ?_ (congrArg (coeffE S x E c)
    (locConeE_d M y ⟨⟨J.1.1, J.1.2.1, Finset.subset_univ _⟩, J.2⟩ J.1.2.2)).symm
  set_option synthInstance.maxHeartbeats 100000 in
    rw [map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [map_zsmul]
  rfl

end Compare

theorem TildeVanish.proof (h : SerreVanish.Statement.{u, v}) : TildeVanish.Statement.{u, v, w} := by
  intro S _ _ Ω _ _ N x E _ _ _ _ M
  obtain ⟨c₀, hc₀⟩ := h S N M.coneSubE M.coneGradedE M.coneSubE_finite
  refine ⟨c₀, fun i hi c hc => ?_⟩
  obtain ⟨k, rfl⟩ : ∃ k, i = k + 1 := ⟨i - 1, by omega⟩
  exact tildeSys_H_subsingleton M c k (hc₀ (k + 1) hi c hc)

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTildeVanish =====
