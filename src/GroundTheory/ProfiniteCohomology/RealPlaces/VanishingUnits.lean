module

public import GroundTheory.ProfiniteCohomology.RealPlaces.ConeMap
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighSUnits
public import GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality
public import GroundTheory.ProfiniteCohomology.GaloisCohomology.Kummer
public import GroundTheory.ProfiniteCohomology.Procyclic
public import GroundTheory.ProfiniteCohomology.CoinducedModules
public import Mathlib.GroupTheory.Torsion
public import GroundTheory.ProfiniteCohomology.CohomologicalDimension.SubsingletonCohomologyOfPrimaryOfFinite
public import GroundTheory.GlobalFields.CompletionAtPlace.Integers
public import GroundTheory.LocalFields.MaximalUnramified
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisor
public import GroundTheory.ProfiniteCohomology.GlobalClassFormation.ABHNPrep
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.Brauer
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerFrob
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.FiniteSetOfNsmulEqZeroQZ
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDecomp
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerLocalDefs
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerLocalVal
public import GroundTheory.ProfiniteCohomology.ColimitUnion
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.DivisorModule
public import GroundTheory.ProfiniteCohomology.ClassFormationDefs
public import GroundTheory.ProfiniteCohomology.ShapiroDefs
public import GroundTheory.ProfiniteCohomology.CohomologicalDimension.Closed
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighInfl
public import GroundTheory.ProfiniteCohomology.ClassFormations.IsIsoCohomologyMapAlongResSubgroupOfHom
public import GroundTheory.ProfiniteCohomology.GlobalClassFormation.HighUnits
public import GroundTheory.ProfiniteCohomology.RealPlaces.GSDefs
public import GroundTheory.ProfiniteCohomology.RealPlaces.LocalCohomologyIsoHomologyMapNormCochains
import GroundTheory.ProfiniteCohomology.CoinducedModules.Acyclic
import GroundTheory.ProfiniteCohomology.CoinducedModules.CohomologyCoindCokernelIsoHom
import GroundTheory.ProfiniteCohomology.CohomologyTwoIntAddEquivQZSymmApply
import GroundTheory.ProfiniteCohomology.Colimit
import GroundTheory.ProfiniteCohomology.GlobalClassFormation.HighUnitsLocal
import GroundTheory.ProfiniteCohomology.ClassFormations.HighFormations
import GroundTheory.ProfiniteCohomology.GlobalClassFormation.LocalResConj

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDefs, GroundTheory.ProfiniteCohomology.RestrictedRamification.HighProcyclic, GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDecompLadic, GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDivisor, GroundTheory.ProfiniteCohomology.RestrictedRamification.EqZeroOfPowNsmulCohomologySUnitsOfOdd, GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnits

-- ===== clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDefs =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDefs", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.ConeMap\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighSUnits\nimport GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality\nimport GroundTheory.ProfiniteCohomology.GaloisCohomology.Kummer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain GroundTheory.Global

local notation "ℚ̄" => AlgebraicClosure ℚ

noncomputable section

section NSMul

universe u

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {ι : Type u} {H : ι → Type u} [∀ v, Group (H v)] [∀ v, TopologicalSpace (H v)]
  [∀ v, IsTopologicalGroup (H v)] (φ : ∀ v, H v →ₜ* G)
  {κ : Type u} {F : κ → Type u} [∀ w, Group (F w)] [∀ w, TopologicalSpace (F w)]
  [∀ w, IsTopologicalGroup (F w)] [∀ w, Fintype (F w)] (ψ : ∀ w, F w →ₜ* G)
  (A : Rep.{u} k G) [IsDiscreteRep A] (Aᵥ : ∀ v, Rep.{u} k (H v))
  [∀ v, IsDiscreteRep (Aᵥ v)] (a : ∀ v, Rep.res (φ v).toMonoidHom A ⟶ Aᵥ v)
  (Aᵣ : ∀ w, Rep.{u} k (F w)) [∀ w, IsDiscreteRep (Aᵣ w)]
  (ar : ∀ w, Rep.res (ψ w).toMonoidHom A ⟶ Aᵣ w)

theorem tateCompactCochainsMap_nsmul_id (m : ℕ)
    (hg : ∀ v, a v ≫ (m • 𝟙 (Aᵥ v)) = (Rep.resFunctor (φ v).toMonoidHom).map (m • 𝟙 A) ≫ a v)
    (hgr : ∀ w, ar w ≫ (m • 𝟙 (Aᵣ w)) = (Rep.resFunctor (ψ w).toMonoidHom).map (m • 𝟙 A) ≫ ar w) :
    tateCompactCochainsMap φ ψ (m • 𝟙 A) (fun v => m • 𝟙 (Aᵥ v)) (fun w => m • 𝟙 (Aᵣ w)) hg hgr =
      m • 𝟙 _ := by
  ext n : 1
  refine ModuleCat.hom_ext (LinearMap.ext fun p => ?_)
  obtain ⟨⟨x, e⟩, y⟩ := p
  have h1 : ((cochainsMap (m • 𝟙 A)).f n).hom x = m • x := by
    rw [cochainsMap_nsmul, cochainsMap_id]
    simp
  have h2 : ((degZeroMap (piRepHom fun w => m • 𝟙 (Aᵣ w))).f n).hom e = m • e := by
    cases n with
    | zero =>
      funext w
      exact nsmul_id_hom_apply (Aᵣ w) m _
    | succ n => exact Subsingleton.elim _ _
  have h3 : (shiftNegOneMapF (tateLocalMap (fun v => m • 𝟙 (Aᵥ v)) (fun w => m • 𝟙 (Aᵣ w))) n).hom y =
      m • y := by
    cases n with
    | zero => rfl
    | succ n =>
      obtain ⟨y1, y2⟩ := y
      refine Prod.ext (funext fun v => ?_) (funext fun w => ?_)
      · change ((cochainsMap (m • 𝟙 (Aᵥ v))).f n).hom (y1 v) = m • y1 v
        rw [cochainsMap_nsmul, cochainsMap_id]
        simp
      · change ((cochainsMap (m • 𝟙 (Aᵣ w))).f n).hom (y2 w) = m • y2 w
        rw [cochainsMap_nsmul, cochainsMap_id]
        simp
  have hr : ((m • 𝟙 (tateCompactCochains φ ψ A Aᵥ a Aᵣ ar)).f n).hom ((x, e), y) = m • ((x, e), y) := by
    rw [HomologicalComplex.nsmul_f_apply, ModuleCat.hom_nsmul]
    rfl
  rw [hr]
  change ((((cochainsMap (m • 𝟙 A)).f n).hom x,
    ((degZeroMap (piRepHom fun w => m • 𝟙 (Aᵣ w))).f n).hom e),
    (shiftNegOneMapF (tateLocalMap (fun v => m • 𝟙 (Aᵥ v)) (fun w => m • 𝟙 (Aᵣ w))) n).hom y) = _
  rw [h1, h2, h3]
  rfl

theorem tateCompactCohomologyMap_nsmul_id (m n : ℕ)
    (hg : ∀ v, a v ≫ (m • 𝟙 (Aᵥ v)) = (Rep.resFunctor (φ v).toMonoidHom).map (m • 𝟙 A) ≫ a v)
    (hgr : ∀ w, ar w ≫ (m • 𝟙 (Aᵣ w)) = (Rep.resFunctor (ψ w).toMonoidHom).map (m • 𝟙 A) ≫ ar w) :
    tateCompactCohomologyMap φ ψ (m • 𝟙 A) (fun v => m • 𝟙 (Aᵥ v)) (fun w => m • 𝟙 (Aᵣ w)) hg hgr n =
      m • 𝟙 _ := by
  unfold tateCompactCohomologyMap
  rw [tateCompactCochainsMap_nsmul_id]
  have := (HomologicalComplex.homologyFunctor (ModuleCat k) (ComplexShape.up ℕ) n).map_nsmul
    (f := 𝟙 (tateCompactCochains φ ψ A Aᵥ a Aᵣ ar)) (n := m)
  simp only [HomologicalComplex.homologyFunctor_map, HomologicalComplex.homologyMap_id] at this
  exact this

end NSMul

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))

section LocalMor

variable {Kv Ωv : Type} [Field Kv] [Field Ωv] [Algebra Kv Ωv]
  (θ : Gal(Ωv/Kv) →* galUnramifiedOutside K.1 ℚ̄ S) (j : maxUnramifiedOutside K.1 ℚ̄ S →+* Ωv)
  (hj : ∀ σ y, j (θ σ y) = σ (j y))

def sUnitsLocalMor : Rep.res θ (galSUnitsMax K.1 ℚ̄ S) ⟶ galUnits.{0} Kv Ωv :=
  Rep.ofHom ⟨uliftIntLinearMap (MonoidHom.toAdditive (α := sUnitsMax K.1 ℚ̄ S) (β := Ωvˣ)
      ((Units.map j.toMonoidHom).comp (sUnitsMax K.1 ℚ̄ S).subtype)),
    fun σ => LinearMap.ext fun x => congrArg Additive.ofMul (Units.ext (hj σ
      (((Additive.toMul x : sUnitsMax K.1 ℚ̄ S) : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) :
        maxUnramifiedOutside K.1 ℚ̄ S)))⟩

def rootsLocalMor : Rep.res θ (galRootsOfUnity.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S) 2) ⟶ galUnits.{0} Kv Ωv :=
  Rep.ofHom ⟨uliftIntLinearMap (MonoidHom.toAdditive (α := rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S))
      (β := Ωvˣ) ((Units.map j.toMonoidHom).comp (rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S)).subtype)),
    fun σ => LinearMap.ext fun x => congrArg Additive.ofMul (Units.ext (hj σ
      (((Additive.toMul x : rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S)) :
        (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) : maxUnramifiedOutside K.1 ℚ̄ S)))⟩

theorem rootsLocalMor_hom_apply (x : Additive (rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S))) :
    ((Additive.toMul ((rootsLocalMor S θ j hj).hom x) : Ωvˣ) : Ωv) =
      j (((Additive.toMul x : rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S)) :
        (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) : maxUnramifiedOutside K.1 ℚ̄ S) :=
  rfl

def localKummerSeq : ShortComplex (Rep.{0} (ULift.{0} ℤ) Gal(Ωv/Kv)) :=
  ShortComplex.mk (rootsLocalMor S θ j hj) (2 • 𝟙 (galUnits.{0} Kv Ωv)) (by
    apply Rep.hom_ext
    apply Representation.IntertwiningMap.ext
    apply LinearMap.ext
    intro x
    change (2 • 𝟙 (galUnits.{0} Kv Ωv)).hom ((rootsLocalMor S θ j hj).hom x) = 0
    rw [nsmul_id_hom_apply]
    apply Additive.toMul.injective
    apply Units.ext
    have hx2 : ((Additive.toMul (α := rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S)) x :
        (maxUnramifiedOutside K.1 ℚ̄ S)ˣ)) ^ 2 = 1 := (mem_rootsOfUnity 2 _).1 (Additive.toMul x).2
    change ((Additive.toMul ((rootsLocalMor S θ j hj).hom x) : Ωvˣ) : Ωv) ^ 2 = 1
    rw [rootsLocalMor_hom_apply, ← map_pow, ← Units.val_pow_eq_pow_val, hx2, Units.val_one, map_one])

theorem localKummerSeq_shortExact [IsAlgClosed Ωv] : (localKummerSeq S θ j hj).ShortExact := by
  have h2' : (2 : maxUnramifiedOutside K.1 ℚ̄ S) ≠ 0 := two_ne_zero
  have h2 : (2 : Ωv) ≠ 0 := by
    have : (2 : Ωv) = j 2 := by rw [map_ofNat]
    rw [this]
    exact (map_ne_zero j).2 h2'
  have hmono : Mono (localKummerSeq S θ j hj).f := by
    refine (Rep.mono_iff_injective _).2 fun x y hxy => ?_
    have h := congrArg (fun t : Additive Ωvˣ => ((Additive.toMul t : Ωvˣ) : Ωv)) hxy
    change j (((Additive.toMul (α := rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S)) x :
        (maxUnramifiedOutside K.1 ℚ̄ S)ˣ)) : maxUnramifiedOutside K.1 ℚ̄ S) =
      j (((Additive.toMul (α := rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S)) y :
        (maxUnramifiedOutside K.1 ℚ̄ S)ˣ)) : maxUnramifiedOutside K.1 ℚ̄ S) at h
    exact Additive.toMul.injective (Subtype.ext (Units.ext (j.injective h)))
  have hepi : Epi (localKummerSeq S θ j hj).g :=
    (Rep.epi_iff_surjective _).2 (nsmul_id_galUnits_surjective 2 h2)
  refine { exact := ?_ }
  · refine shortComplex_exact_of_forall_exists _ fun x hx => ?_
    let x' : Additive Ωvˣ := x
    have hx' : 2 • x' = 0 :=
      (nsmul_id_hom_apply (galUnits.{0} Kv Ωv) 2 x).symm.trans hx
    have hsq : ((Additive.toMul (α := Ωvˣ) x : Ωvˣ) : Ωv) * ((Additive.toMul (α := Ωvˣ) x : Ωvˣ) : Ωv) = 1 := by
      have e : (2 • x' : Additive Ωvˣ) = x' + x' := two_nsmul x'
      rw [e] at hx'
      have := congrArg (fun t : Additive Ωvˣ => ((Additive.toMul t : Ωvˣ) : Ωv)) hx'
      simp only [toMul_add, toMul_zero, Units.val_mul, Units.val_one] at this
      exact this
    have hneg : (-1 : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) ∈ rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S) := by
      rw [mem_rootsOfUnity]
      exact neg_one_sq
    rcases mul_self_eq_one_iff.1 hsq with h | h
    · refine ⟨0, ?_⟩
      apply Additive.toMul.injective
      apply Units.ext
      change ((Additive.toMul ((rootsLocalMor S θ j hj).hom 0) : Ωvˣ) : Ωv) = _
      rw [map_zero]
      exact h.symm
    · refine ⟨(Additive.ofMul (⟨-1, hneg⟩ : rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S)) :
        Additive (rootsOfUnity 2 (maxUnramifiedOutside K.1 ℚ̄ S))), ?_⟩
      apply Additive.toMul.injective
      apply Units.ext
      change j ((-1 : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) : maxUnramifiedOutside K.1 ℚ̄ S) = _
      rw [Units.val_neg, Units.val_one, map_neg, map_one]
      exact h.symm

def kummerLocalMap :
    (sUnitsKummerSequence S (maxUnramifiedOutside K.1 ℚ̄ S) 2).map (Rep.resFunctor θ) ⟶
      localKummerSeq S θ j hj where
  τ₁ := 𝟙 _
  τ₂ := sUnitsLocalMor S θ j hj
  τ₃ := sUnitsLocalMor S θ j hj
  comm₁₂ := by
    apply Rep.hom_ext
    apply Representation.IntertwiningMap.ext
    apply LinearMap.ext
    intro x
    apply Additive.toMul.injective
    apply Units.ext
    rfl
  comm₂₃ := by
    apply Rep.hom_ext
    apply Representation.IntertwiningMap.ext
    apply LinearMap.ext
    intro x
    change (2 • 𝟙 (galUnits.{0} Kv Ωv)).hom ((sUnitsLocalMor S θ j hj).hom x) =
      (sUnitsLocalMor S θ j hj).hom ((2 • 𝟙 (galSUnitsMax K.1 ℚ̄ S)).hom x)
    erw [nsmul_id_hom_apply, nsmul_id_hom_apply, map_nsmul]

end LocalMor

section Compat

variable {Kv Ωv : Type} [Field Kv] [Field Ωv] [Algebra K.1 Kv] [Algebra Kv Ωv] [Algebra K.1 Ωv]
  [IsScalarTower K.1 Kv Ωv] (ι : ℚ̄ →ₐ[K.1] Ωv)

theorem gsRestrict_globalDecomp (σ : Gal(Ωv/Kv)) :
    gsRestrict K S (globalDecomp Kv ι σ) = decompHomS Kv S ι σ := by
  ext y
  apply ι.injective
  change ι ((gsRestrict K S (globalDecomp Kv ι σ) y : maxUnramifiedOutside K.1 ℚ̄ S) : ℚ̄) =
    ι ((decompHomS Kv S ι σ y : maxUnramifiedOutside K.1 ℚ̄ S) : ℚ̄)
  rw [gsRestrict_apply, globalDecomp_apply]
  exact (decompHom_apply (ι.comp (maxUnramifiedOutside K.1 ℚ̄ S).val) σ y).symm

theorem decompHomS_apply (σ : Gal(Ωv/Kv)) (y : maxUnramifiedOutside K.1 ℚ̄ S) :
    (ι.comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom (decompHomS Kv S ι σ y) =
      σ ((ι.comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom y) :=
  decompHom_apply _ σ y

def sUnitsToUnitsZ : uliftIntToIntRep (galSUnitsMax K.1 ℚ̄ S) ⟶
    uliftIntToIntRep (galUnits.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) :=
  Rep.ofHom ⟨(MonoidHom.toAdditive (α := sUnitsMax K.1 ℚ̄ S) (β := (maxUnramifiedOutside K.1 ℚ̄ S)ˣ)
    (sUnitsMax K.1 ℚ̄ S).subtype).toIntLinearMap, fun _ => LinearMap.ext fun _ => rfl⟩

def sUnitsLocalMorZ : Rep.res (decompHomS Kv S ι) (uliftIntToIntRep (galSUnitsMax K.1 ℚ̄ S)) ⟶
    galUnitsZ Kv Ωv :=
  Rep.ofHom ⟨(MonoidHom.toAdditive (α := sUnitsMax K.1 ℚ̄ S) (β := Ωvˣ)
    ((Units.map (ι.comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom.toMonoidHom).comp
      (sUnitsMax K.1 ℚ̄ S).subtype)).toIntLinearMap,
    fun σ => LinearMap.ext fun x => congrArg Additive.ofMul (Units.ext (decompHomS_apply S ι σ
      (((Additive.toMul x : sUnitsMax K.1 ℚ̄ S) : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) :
        maxUnramifiedOutside K.1 ℚ̄ S)))⟩

instance isDiscreteRep_uliftIntToIntRep_galSUnitsMax :
    IsDiscreteRep (uliftIntToIntRep (galSUnitsMax K.1 ℚ̄ S)) :=
  isDiscreteRep_uliftIntToIntRep _

variable [Algebra.IsIntegral Kv Ωv]

theorem unitsLocalRes_gsBrauerInfl_sUnitsToUnitsZ (r : ℕ)
    (x : cohomology (uliftIntToIntRep (galSUnitsMax K.1 ℚ̄ S)) r) :
    (unitsLocalRes Kv ι r).hom ((gsBrauerInfl K S r).hom
      ((cohomologyMap (sUnitsToUnitsZ S) r).hom x)) =
      (cohomologyMapAlong (decompHomS Kv S ι) (continuous_decompHomS (Kv := Kv) S ι)
        (sUnitsLocalMorZ S ι) r).hom x := by
  unfold unitsLocalRes gsBrauerInfl
  rw [← cohomologyMapAlong_id_eq_cohomologyMap, ← ModuleCat.comp_apply, ← ModuleCat.comp_apply,
    ← cohomologyMapAlong_comp, ← cohomologyMapAlong_comp]
  refine congrArg (fun g => g.hom x) (?_ : _ = cohomologyMapAlong (decompHomS Kv S ι)
    (continuous_decompHomS (Kv := Kv) S ι) (sUnitsLocalMorZ S ι) r)
  apply cohomologyMapAlong_congr
  · ext σ : 1
    exact gsRestrict_globalDecomp S ι σ
  · intro a
    rfl



theorem unitsLocalRes_sUnitsInfl (r : ℕ) (y : cohomology (galSUnitsMax K.1 ℚ̄ S) r) :
    (unitsLocalRes Kv ι r).hom (sUnitsInfl K S r y) =
      cohomologyULiftIntAddEquiv (galUnits.{0} Kv Ωv) r
        ((cohomologyMapAlong (decompHomS Kv S ι) (continuous_decompHomS (Kv := Kv) S ι)
          (sUnitsLocalMor S (decompHomS Kv S ι) (ι.comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom
            (decompHomS_apply S ι)) r).hom y) := by
  have h1 := cohomologyULiftIntAddEquiv_cohomologyMapAlong (galSUnitsMax K.1 ℚ̄ S)
    (decompHomS Kv S ι) (continuous_decompHomS (Kv := Kv) S ι)
    (sUnitsLocalMor S (decompHomS Kv S ι) (ι.comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom
      (decompHomS_apply S ι)) (sUnitsLocalMorZ S ι) (fun _ => rfl) r y
  have h2 := cohomologyULiftIntAddEquiv_cohomologyMapAlong (galSUnitsMax K.1 ℚ̄ S)
    (MonoidHom.id _) continuous_id (sUnitsToUnits S (maxUnramifiedOutside K.1 ℚ̄ S)) (sUnitsToUnitsZ S)
    (fun _ => rfl) r y
  rw [cohomologyMapAlong_id_eq_cohomologyMap, cohomologyMapAlong_id_eq_cohomologyMap] at h2
  rw [sUnitsInfl_apply, gsUnitsInfl_apply]
  refine Eq.trans ?_ h1.symm
  rw [h2]
  exact unitsLocalRes_gsBrauerInfl_sUnitsToUnitsZ S ι r _

end Compat

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDefs =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.HighProcyclic =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.HighProcyclic", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.Procyclic\npublic import GroundTheory.ProfiniteCohomology.CoinducedModules\npublic import Mathlib.GroupTheory.Torsion\npublic import GroundTheory.ProfiniteCohomology.CohomologicalDimension.SubsingletonCohomologyOfPrimaryOfFinite\nimport GroundTheory.ProfiniteCohomology.CoinducedModules.Acyclic\nimport GroundTheory.ProfiniteCohomology.CoinducedModules.CohomologyCoindCokernelIsoHom\npublic import GroundTheory.ProfiniteCohomology.GaloisCohomology.Kummer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Algebra.ClopenNhdofOne\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Separation.Connected\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory Limits

universe u

structure IsPrimePowGenerator {G : Type*} [Group G] [TopologicalSpace G] (ℓ : ℕ) (σ : G) : Prop where

  dense : IsTopologicalGenerator σ

  exists_hom : ∀ b : ℕ, ∃ φ : G →* Multiplicative (ZMod (ℓ ^ b)),
    IsOpen (φ.ker : Set G) ∧ φ σ = Multiplicative.ofAdd 1

section Quotient

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

theorem IsTopologicalGenerator.exists_zpow_mk_eq {σ : G} (hσ : IsTopologicalGenerator σ) (U : Subgroup G)
    [U.Normal] (hU : IsOpen (U : Set G)) (y : G ⧸ U) : ∃ m : ℤ, (QuotientGroup.mk σ : G ⧸ U) ^ m = y := by
  obtain ⟨g, rfl⟩ := QuotientGroup.mk_surjective y
  have ho : IsOpen {x : G | g⁻¹ * x ∈ U} := hU.preimage (continuous_const.mul continuous_id)
  obtain ⟨x, hxσ, hx⟩ := hσ.exists_mem_open ho ⟨g, by simp [U.one_mem]⟩
  obtain ⟨m, rfl⟩ := Subgroup.mem_zpowers_iff.1 hxσ
  refine ⟨m, ?_⟩
  rw [← QuotientGroup.mk_zpow, QuotientGroup.eq]
  have hx' : g⁻¹ * σ ^ m ∈ U := hx
  simpa using inv_mem hx'

variable [CompactSpace G]

theorem IsTopologicalGenerator.exists_hom_zmod_orderOf {σ : G} (hσ : IsTopologicalGenerator σ) (U : Subgroup G)
    [U.Normal] (hU : IsOpen (U : Set G)) :
    ∃ φ : G →* Multiplicative (ZMod (orderOf (QuotientGroup.mk σ : G ⧸ U))),
      U ≤ φ.ker ∧ φ σ = Multiplicative.ofAdd 1 := by
  have : Finite (G ⧸ U) := Subgroup.quotient_finite_of_isOpen U hU
  set τ : G ⧸ U := QuotientGroup.mk σ with hτ
  set L := orderOf τ with hL
  let f : ℤ →+ Additive (G ⧸ U) := zmultiplesHom (Additive (G ⧸ U)) (Additive.ofMul τ)
  have hf : f (L : ℤ) = 0 := by
    change (L : ℤ) • Additive.ofMul τ = 0
    rw [natCast_zsmul, ← ofMul_pow, hL, pow_orderOf_eq_one, ofMul_one]
  let ψ : ZMod L →+ Additive (G ⧸ U) := ZMod.lift L ⟨f, hf⟩
  have hψ : ∀ m : ℤ, ψ (m : ZMod L) = Additive.ofMul (τ ^ m) := fun m => by
    change ZMod.lift L ⟨f, hf⟩ (m : ZMod L) = _
    rw [ZMod.lift_coe]
    change m • Additive.ofMul τ = _
    rw [← ofMul_zpow]
  have hinj : Function.Injective ψ := by
    rw [injective_iff_map_eq_zero]
    intro k hk
    obtain ⟨m, rfl⟩ := ZMod.intCast_surjective k
    rw [hψ, ← ofMul_one, Additive.ofMul.injective.eq_iff] at hk
    rw [ZMod.intCast_zmod_eq_zero_iff_dvd]
    exact orderOf_dvd_iff_zpow_eq_one.2 hk
  have hsurj : Function.Surjective ψ := by
    intro y
    obtain ⟨m, hm⟩ := hσ.exists_zpow_mk_eq U hU (Additive.toMul y)
    exact ⟨m, by rw [hψ, hm]; rfl⟩
  let e : ZMod L ≃+ Additive (G ⧸ U) := AddEquiv.ofBijective ψ ⟨hinj, hsurj⟩
  let φ : G →* Multiplicative (ZMod L) :=
    (AddMonoidHom.toMultiplicativeRight e.symm.toAddMonoidHom).comp (QuotientGroup.mk' U)
  refine ⟨φ, fun u hu => ?_, ?_⟩
  · rw [MonoidHom.mem_ker]
    change Multiplicative.ofAdd (e.symm (Additive.ofMul (QuotientGroup.mk u : G ⧸ U))) = 1
    rw [(QuotientGroup.eq_one_iff u).2 hu, ofMul_one, map_zero, ofAdd_zero]
  · change Multiplicative.ofAdd (e.symm (Additive.ofMul τ)) = _
    congr 1
    rw [AddEquiv.symm_apply_eq]
    change Additive.ofMul τ = ψ 1
    have h1 := hψ 1
    rw [Int.cast_one, zpow_one] at h1
    exact h1.symm

end Quotient

section Cocycle

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {A : Rep.{u} k G} {σ : G} [IsDiscreteRep A]

theorem IsTopologicalGenerator.exists_cocycle_of_hom (hσ : IsTopologicalGenerator σ) (L : ℕ) [NeZero L]
    (φ : G →* Multiplicative (ZMod L)) (hφo : IsOpen (φ.ker : Set G)) (hφσ : φ σ = Multiplicative.ofAdd 1)
    (a : A) (hmem : σ ^ L ∈ stabilizer A.ρ a) (hsum : ∑ i ∈ Finset.range L, A.ρ (σ ^ i) a = 0) :
    ∃ f : (Fin 1 → G) → A, IsLocallyConstant f ∧ (inhomogeneousCochains.d A 1).hom f = 0 ∧
      f (fun _ => σ) = a := by
  have hρ : ∀ (x y : ℤ) (v : A), A.ρ (σ ^ x) (A.ρ (σ ^ y) v) = A.ρ (σ ^ (x + y)) v := by
    intro x y v
    rw [zpow_add, map_mul, Module.End.mul_apply]
  have hper : ∀ q : ℤ, A.ρ (σ ^ ((L : ℤ) * q)) a = a := by
    intro q
    have : σ ^ ((L : ℤ) * q) = (σ ^ L) ^ q := by
      rw [← zpow_natCast σ L, ← zpow_mul]
    rw [this]
    exact (mem_stabilizer _ _ _).1 (zpow_mem hmem _)
  obtain ⟨c, hc⟩ : ∃ c : ℤ → A, ∀ n, c n = ∑ i ∈ Finset.range ((n : ZMod L).val), A.ρ (σ ^ i) a :=
    ⟨_, fun _ => rfl⟩
  have hc0 : c 0 = 0 := by rw [hc]; simp
  have hrec : ∀ n : ℤ, c (n + 1) = c n + A.ρ (σ ^ n) a := by
    intro n
    obtain ⟨r, hr⟩ : ∃ r, r = (n : ZMod L).val := ⟨_, rfl⟩
    have hrL : r < L := hr ▸ ZMod.val_lt _
    have hrn : A.ρ (σ ^ n) a = A.ρ (σ ^ r) a := by
      have h1 : (r : ℤ) = n % L := by rw [hr, ZMod.val_intCast]
      have h2 : n = r + L * (n / L) := by rw [h1]; exact (Int.emod_add_mul_ediv n L).symm
      conv_lhs => rw [h2]
      rw [zpow_add, map_mul, Module.End.mul_apply, hper, zpow_natCast]
    have hval : ((n + 1 : ℤ) : ZMod L).val = (r + 1) % L := by
      rw [Int.cast_add, Int.cast_one, ZMod.val_add, ZMod.val_one_eq_one_mod, ← hr, Nat.add_mod_mod]
    rw [hc, hc, hval, hrn, ← hr]
    rcases Nat.lt_or_ge (r + 1) L with h | h
    · rw [Nat.mod_eq_of_lt h, Finset.sum_range_succ]
    · have h' : r + 1 = L := le_antisymm (by omega) h
      rw [h', Nat.mod_self, Finset.range_zero, Finset.sum_empty, ← Finset.sum_range_succ, h', hsum]
  have hcoc : ∀ x y : ℤ, c (x + y) = c x + A.ρ (σ ^ x) (c y) := by
    intro x y
    induction y using Int.induction_on with
    | zero => simp [hc0]
    | succ y ih =>
      rw [← add_assoc, hrec, ih, hrec, map_add (f := _), hρ, add_assoc]
    | pred y ih =>
      have e1 := hrec (x + (-(y : ℤ) - 1))
      have e2 := hrec (-(y : ℤ) - 1)
      rw [show x + (-(y : ℤ) - 1) + 1 = x + -(y : ℤ) by ring, ih] at e1
      rw [show -(y : ℤ) - 1 + 1 = -(y : ℤ) by ring] at e2
      rw [e2, map_add (f := _), hρ] at e1
      have e3 := e1.symm
      rw [← add_assoc] at e3
      exact add_right_cancel e3
  obtain ⟨F, hF⟩ : ∃ F : G → A, ∀ g, F g =
      ∑ i ∈ Finset.range (Multiplicative.toAdd (φ g)).val, A.ρ (σ ^ i) a := ⟨_, fun _ => rfl⟩
  have hFpow : ∀ n : ℤ, F (σ ^ n) = c n := by
    intro n
    rw [hF, hc, map_zpow, hφσ, toAdd_zpow, toAdd_ofAdd, zsmul_one]
  have hFlc : IsLocallyConstant F := by
    have h1 : IsLocallyConstant φ := φ.isLocallyConstant_of_isOpen_ker hφo
    have : F = (fun z : Multiplicative (ZMod L) =>
        ∑ i ∈ Finset.range (Multiplicative.toAdd z).val, A.ρ (σ ^ i) a) ∘ φ := funext hF
    rw [this]
    exact h1.comp _
  have hflc : IsLocallyConstant fun x : Fin 1 → G => F (x 0) :=
    hFlc.comp_continuous (continuous_apply 0)
  refine ⟨fun x => F (x 0), hflc, ?_, ?_⟩
  · refine hσ.eq_of_forall_zpow_pi (isLocallyConstant_d A hflc)
      (IsLocallyConstant.const 0) fun n => ?_
    show (inhomogeneousCochains.d A 1).hom (fun x => F (x 0)) (fun i => σ ^ n i) = 0
    rw [inhomogeneousD_one_apply]
    dsimp only
    rw [← zpow_add, hFpow, hFpow, hFpow, hcoc]
    abel
  · show F σ = a
    have h1 := hFpow 1
    rw [zpow_one] at h1
    rw [h1, ← zero_add (1 : ℤ), hrec, hc0, zpow_zero, map_one, Module.End.one_apply, zero_add]

end Cocycle

section Primary

theorem mul_pow_dvd_of_dvd_of_pow_add_dvd {ℓ N L e : ℕ} (hℓ : ℓ.Prime) (hN : 0 < N) (h1 : N ∣ L)
    (h2 : ℓ ^ (e + N) ∣ L) : N * ℓ ^ e ∣ L := by
  obtain ⟨v, r, hr, rfl⟩ := Nat.exists_eq_pow_mul_and_not_dvd hN.ne' ℓ hℓ.ne_one
  have hr0 : r ≠ 0 := by
    rintro rfl
    simp at hN
  have hcop : Nat.Coprime (ℓ ^ (e + v)) r :=
    Nat.Coprime.pow_left _ ((Nat.Prime.coprime_iff_not_dvd hℓ).2 hr)
  have hv : v ≤ ℓ ^ v * r := by
    have h3 : v < ℓ ^ v := v.lt_pow_self hℓ.one_lt
    have h4 : ℓ ^ v ≤ ℓ ^ v * r := Nat.le_mul_of_pos_right _ (Nat.pos_of_ne_zero hr0)
    omega
  have h3 : ℓ ^ (e + v) ∣ L := (Nat.pow_dvd_pow ℓ (by omega)).trans h2
  have h4 : r ∣ L := (Dvd.intro_left _ rfl).trans h1
  have := hcop.mul_dvd_of_dvd_of_dvd h3 h4
  calc ℓ ^ v * r * ℓ ^ e = ℓ ^ (e + v) * r := by ring
    _ ∣ L := this

end Primary

section CocyclePrimary

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [CompactSpace G] [TotallyDisconnectedSpace G] {ℓ : ℕ} {σ : G}

theorem IsPrimePowGenerator.exists_cocycle (hℓ : ℓ.Prime) (hσ : IsPrimePowGenerator ℓ σ)
    {A : Rep.{u} k G} [IsDiscreteRep A] (a : A) {e : ℕ} (ha : ℓ ^ e • a = 0) :
    ∃ f : (Fin 1 → G) → A, IsLocallyConstant f ∧ (inhomogeneousCochains.d A 1).hom f = 0 ∧
      f (fun _ => σ) = a := by
  obtain ⟨U₀, hU₀⟩ := ProfiniteGrp.exist_openNormalSubgroup_sub_open_nhds_of_one
    (isOpen_stabilizer A a) (stabilizer A.ρ a).one_mem
  have : Finite (G ⧸ (U₀ : Subgroup G)) := Subgroup.quotient_finite_of_isOpen _ U₀.isOpen'
  set N := orderOf (QuotientGroup.mk σ : G ⧸ (U₀ : Subgroup G)) with hNdef
  have hN : 0 < N := orderOf_pos _
  have hσN : σ ^ N ∈ stabilizer A.ρ a := hU₀ ((QuotientGroup.eq_one_iff _).1 (by
    rw [QuotientGroup.mk_pow, hNdef, pow_orderOf_eq_one]))
  obtain ⟨χ, hχo, hχσ⟩ := hσ.exists_hom (e + N)
  let U : Subgroup G := (U₀ : Subgroup G) ⊓ χ.ker
  have hUo : IsOpen (U : Set G) := U₀.isOpen'.inter hχo
  have : Finite (G ⧸ U) := Subgroup.quotient_finite_of_isOpen _ hUo
  set L := orderOf (QuotientGroup.mk σ : G ⧸ U) with hLdef
  obtain ⟨φ, hφU, hφσ⟩ := hσ.dense.exists_hom_zmod_orderOf U hUo
  have hLU : σ ^ L ∈ U := (QuotientGroup.eq_one_iff _).1 (by
    rw [QuotientGroup.mk_pow, hLdef, pow_orderOf_eq_one])
  have hL : 0 < L := orderOf_pos _
  have h1 : N ∣ L := orderOf_dvd_of_pow_eq_one (by
    rw [← QuotientGroup.mk_pow, QuotientGroup.eq_one_iff]
    exact hLU.1)
  have h2 : ℓ ^ (e + N) ∣ L := by
    have hk : χ (σ ^ L) = 1 := hLU.2
    rw [map_pow, hχσ, ← ofAdd_nsmul, nsmul_one, ← ofAdd_zero, Multiplicative.ofAdd.injective.eq_iff] at hk
    exact (ZMod.natCast_eq_zero_iff _ _).1 hk
  obtain ⟨c, hc⟩ := mul_pow_dvd_of_dvd_of_pow_add_dvd hℓ hN h1 h2
  have hsum : ∑ i ∈ Finset.range L, A.ρ (σ ^ i) a = 0 := by
    rw [hc, mul_assoc]
    exact sum_range_mul_eq_zero ((mem_stabilizer _ _ _).1 hσN) (by rw [mul_comm, mul_smul, ha, smul_zero])
  have : NeZero L := ⟨hL.ne'⟩
  exact hσ.dense.exists_cocycle_of_hom L φ (Subgroup.isOpen_mono hφU hUo) hφσ a (hU₀ hLU.1) hsum

theorem IsPrimePowGenerator.H1Eval_surjective (hℓ : ℓ.Prime) (hσ : IsPrimePowGenerator ℓ σ)
    (A : Rep.{u} k G) [IsDiscreteRep A] (hA : ∀ a : A, ∃ e : ℕ, ℓ ^ e • a = 0) :
    Function.Surjective (H1Eval A σ).hom := by
  intro y
  obtain ⟨a, rfl⟩ := Submodule.Quotient.mk_surjective _ y
  obtain ⟨e, he⟩ := hA a
  obtain ⟨f, hlc, hd, hfσ⟩ := hσ.exists_cocycle hℓ a he
  let x : locallyConstantCochains A 1 := ⟨f, hlc⟩
  have hx : ((cochainsComplex A).d 1 2).hom x = 0 := by
    rw [show (2 : ℕ) = 1 + 1 from rfl, cochainsComplex_d]
    exact Subtype.ext hd
  refine ⟨(cohomologyπ A 1).hom ((cochainsComplex A).cyclesMk x 2 (by simp) hx), ?_⟩
  rw [H1Eval_cohomology_class_apply]
  have h : cocycleFun A ((cochainsComplex A).cyclesMk x 2 (by simp) hx) = f :=
    congrArg Subtype.val ((cochainsComplex A).i_cyclesMk x 2 (by simp) hx)
  rw [h, hfσ]


omit [TotallyDisconnectedSpace G] in
theorem primary_discreteCoind_of_primary (A : Rep.{u} k G) [IsDiscreteRep A]
    (hA : ∀ a : A, ∃ e : ℕ, ℓ ^ e • a = 0) (f : discreteCoind k G A) : ∃ e : ℕ, ℓ ^ e • f = 0 := by
  let f' : LocallyConstant G A := f
  have : Finite (Set.range f') := f'.range_finite.to_subtype
  choose kk hkk using fun v : Set.range f' => hA v
  obtain ⟨K, hK⟩ := (Set.finite_range kk).bddAbove
  refine ⟨K, LocallyConstant.ext fun x => ?_⟩
  show ℓ ^ K • f' x = 0
  exact pow_nsmul_eq_zero_of_le (hK ⟨⟨f' x, x, rfl⟩, rfl⟩) (hkk ⟨f' x, x, rfl⟩)


omit [TotallyDisconnectedSpace G] in
theorem primary_coindCokernel_of_primary (A : Rep.{u} k G) [IsDiscreteRep A]
    (hA : ∀ a : A, ∃ e : ℕ, ℓ ^ e • a = 0) (x : coindCokernel A) : ∃ e : ℕ, ℓ ^ e • x = 0 := by
  have hepi : Epi (coindCokernelπ A) := (coindShortComplex_shortExact A).epi_g
  obtain ⟨f, rfl⟩ := (Rep.epi_iff_surjective (coindCokernelπ A)).1 hepi x
  obtain ⟨e, he⟩ := primary_discreteCoind_of_primary A hA f
  exact ⟨e, by rw [← map_nsmul, he, map_zero]⟩

theorem IsPrimePowGenerator.mem_range_sub_one_discreteCoind (hℓ : ℓ.Prime) (hσ : IsPrimePowGenerator ℓ σ)
    (A : Rep.{u} k G) [IsDiscreteRep A] (hA : ∀ a : A, ∃ e : ℕ, ℓ ^ e • a = 0) (c : LocallyConstant G A) :
    c ∈ LinearMap.range ((discreteCoind k G A).ρ σ - 1) := by
  have hz := isZero_cohomology_discreteCoind (k := k) (G := G) (X := A) 0
  have hs : Subsingleton (cohomology (discreteCoind k G A) 1) :=
    ModuleCat.subsingleton_of_isZero hz
  obtain ⟨x, hx⟩ := hσ.H1Eval_surjective hℓ (discreteCoind k G A)
    (primary_discreteCoind_of_primary A hA) (Submodule.Quotient.mk c)
  rw [Subsingleton.elim x 0, map_zero, eq_comm, Submodule.Quotient.mk_eq_zero] at hx
  exact hx

theorem IsPrimePowGenerator.isZero_cohomology_two (hℓ : ℓ.Prime) (hσ : IsPrimePowGenerator ℓ σ)
    (A : Rep.{u} k G) [IsDiscreteRep A] (hA : ∀ a : A, ∃ e : ℕ, ℓ ^ e • a = 0) :
    IsZero (cohomology A 2) := by
  refine IsZero.of_iso ?_ (cohomologyCoindCokernelIso A 0).symm
  refine @ModuleCat.isZero_of_subsingleton _ _ _ ⟨fun x y => ?_⟩
  apply H1Eval_injective (coindCokernel A) hσ.dense
  refine Subsingleton.elim (h := ⟨fun q q' => ?_⟩) _ _
  obtain ⟨q, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  obtain ⟨q', rfl⟩ := Submodule.Quotient.mk_surjective _ q'
  rw [Submodule.Quotient.eq]
  obtain ⟨c, hc⟩ := Submodule.Quotient.mk_surjective _ (q - q')
  rw [← hc]
  obtain ⟨d, hd⟩ := hσ.mem_range_sub_one_discreteCoind hℓ A hA c
  refine ⟨(coindCokernelπ A).hom d, ?_⟩
  rw [LinearMap.sub_apply, Module.End.one_apply, ← Rep.hom_comm_apply, ← map_sub]
  rw [← hd]
  rfl

theorem IsPrimePowGenerator.isZero_cohomology_of_primary (hℓ : ℓ.Prime) (hσ : IsPrimePowGenerator ℓ σ)
    (A : Rep.{u} k G) [IsDiscreteRep A] (hA : ∀ a : A, ∃ e : ℕ, ℓ ^ e • a = 0) {n : ℕ} (hn : 2 ≤ n) :
    IsZero (cohomology A n) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 2 := ⟨n - 2, by omega⟩
  clear hn
  induction m generalizing A with
  | zero => exact hσ.isZero_cohomology_two hℓ A hA
  | succ m ih =>
    exact (ih (coindCokernel A) (primary_coindCokernel_of_primary A hA)).of_iso
      (cohomologyCoindCokernelIso A (m + 1)).symm

theorem IsPrimePowGenerator.eq_zero_of_pow_nsmul (hℓ : ℓ.Prime) (hσ : IsPrimePowGenerator ℓ σ)
    (A : Rep.{u} k G) [IsDiscreteRep A] (hA : IsAddTorsion A) {p : ℕ} (hp : 2 ≤ p)
    (x : cohomology A p) {n : ℕ} (hx : ℓ ^ n • x = 0) : x = 0 := by
  set W := primarySubmodule A ℓ
  have hW := primarySubmodule_le_comap A ℓ
  have hS := subQuotShortComplex_shortExact A W hW

  have hbij : Function.Bijective (ℓ • 𝟙 (subQuotShortComplex A W hW).X₃).hom := by
    have : ⇑(ℓ • 𝟙 (subQuotShortComplex A W hW).X₃).hom =
        fun y : A ⧸ W => ℓ • y := funext fun y => nsmul_id_hom_apply _ ℓ y
    rw [this]
    exact bijective_nsmul_quotient_primarySubmodule A hA hℓ
  have hiso : IsIso (ℓ • 𝟙 (subQuotShortComplex A W hW).X₃) := by
    have he : (Rep.mkIso ((ℓ • 𝟙 (subQuotShortComplex A W hW).X₃).hom.ofBijective hbij)).hom =
        ℓ • 𝟙 (subQuotShortComplex A W hW).X₃ := Rep.hom_ext rfl
    rw [← he]
    infer_instance
  have hinj : Function.Injective (cohomologyMap (ℓ • 𝟙 (subQuotShortComplex A W hW).X₃) p).hom := by
    have hH : IsIso (cohomologyMap (ℓ • 𝟙 (subQuotShortComplex A W hW).X₃) p) :=
      ⟨cohomologyMap (inv (ℓ • 𝟙 (subQuotShortComplex A W hW).X₃)) p, by
        rw [← cohomologyMap_comp, IsIso.hom_inv_id, cohomologyMap_id], by
        rw [← cohomologyMap_comp, IsIso.inv_hom_id, cohomologyMap_id]⟩
    exact (ModuleCat.mono_iff_injective _).1 inferInstance
  let x' : cohomology (subQuotShortComplex A W hW).X₂ p := x
  have hx' : ℓ ^ n • x' = 0 := hx
  have hg : (cohomologyMap (subQuotShortComplex A W hW).g p).hom x' = 0 := by
    have hpow : ∀ j : ℕ, ∀ y : cohomology (subQuotShortComplex A W hW).X₃ p, ℓ ^ j • y = 0 → y = 0 := by
      intro j
      induction j with
      | zero => intro y hy; simpa using hy
      | succ j ih =>
        intro y hy
        apply ih
        apply hinj
        rw [map_zero, cohomologyMap_nsmul_id_apply, ← mul_smul, ← pow_succ']
        exact hy
    exact hpow n _ (by rw [← map_nsmul, hx', map_zero])
  obtain ⟨y, hy'⟩ := (ShortComplex.moduleCat_exact_iff _).1 (cohomology_exact₂ hS p) x' hg
  have hy : IsZero (cohomology (subQuotShortComplex A W hW).X₁ p) :=
    hσ.isZero_cohomology_of_primary hℓ _ (fun (b : (subQuotShortComplex A W hW).X₁) => by
      obtain ⟨j, hj⟩ := b.2
      exact ⟨j, Subtype.ext hj⟩) hp
  have h0 : x' = 0 := by
    rw [← hy', (ModuleCat.subsingleton_of_isZero hy).elim y 0, map_zero]
  exact h0

end CocyclePrimary

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.HighProcyclic =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDecompLadic =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDecompLadic", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighProcyclic\npublic import GroundTheory.GlobalFields.CompletionAtPlace.Integers\npublic import GroundTheory.LocalFields.MaximalUnramified\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisor\nimport GroundTheory.ProfiniteCohomology.CohomologyTwoIntAddEquivQZSymmApply\npublic import GroundTheory.ProfiniteCohomology.GlobalClassFormation.ABHNPrep\nimport GroundTheory.ProfiniteCohomology.RestrictedRamification.Brauer\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerFrob\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.FiniteSetOfNsmulEqZeroQZ\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDecomp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.Separation.CompletelyRegular\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerLocalDefs\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerLocalVal\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain IntermediateField GroundTheory.Global GroundTheory.LocalField
  GroundTheory.LocalField.Abstract

open scoped GroundTheory.LocalField.Abstract

local notation "ℚ̄" => AlgebraicClosure ℚ

noncomputable section

variable (K : FiniteSubfield) (S : Set (HeightOneSpectrum (𝓞 K.1))) (ιs : LocalEmbeddings K)
  (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S})

section Hom

variable {ℓ : ℕ} (hℓ : ℓ.Prime) (hS : ∀ w : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ w.asIdeal → w ∈ S)

theorem val_intCast_nsmul_eq_zsmul {A : Type*} [AddCommGroup A] {n : ℕ} [NeZero n] {c : A} (hc : n • c = 0)
    (k : ℤ) : ((k : ZMod n).val) • c = k • c := by
  have h1 : (((k : ZMod n).val : ℕ) : ℤ) = k % n := ZMod.val_intCast k
  rw [← natCast_zsmul, h1]
  conv_rhs => rw [← Int.emod_add_mul_ediv k n]
  rw [add_smul, mul_comm, mul_smul, natCast_zsmul, hc, smul_zero, add_zero]

theorem dvd_of_nsmul_mk_one_div_eq_zero {N m : ℕ} (hN : N ≠ 0) (h : m • QZ.mk (1 / (N : ℚ)) = 0) : N ∣ m := by
  have h2 : QZ.mk ((m : ℚ) * (1 / (N : ℚ))) = 0 := by
    have e := map_nsmul QZ.mkHom m (1 / (N : ℚ))
    rw [nsmul_eq_mul] at e
    exact e.trans h
  obtain ⟨n, hn⟩ := (QZ.mk_eq_zero_iff _).1 h2
  have hNq : (N : ℚ) ≠ 0 := by exact_mod_cast hN
  have e1 : (n : ℚ) * (N : ℚ) = m := by rw [hn]; field_simp
  have e2 : n * (N : ℤ) = m := by exact_mod_cast e1
  exact Int.natCast_dvd_natCast.1 ⟨n, by rw [← e2, mul_comm]⟩

private theorem exists_nsmul_order_of_bijective {A B : Type*} [AddMonoid A] [AddMonoid B]
    (f : A →+ B) (hf : Function.Bijective f) {n : ℕ} {y : B}
    (hy : n • y = 0) (horder : ∀ m : ℕ, m • y = 0 → n ∣ m) :
    ∃ x : A, n • x = 0 ∧ ∀ m : ℕ, m • x = 0 → n ∣ m := by
  obtain ⟨x, rfl⟩ := hf.2 y
  refine ⟨x, hf.1 ?_, fun m hm => horder m ?_⟩
  · rw [f.map_nsmul, hy, f.map_zero]
  · rw [← f.map_nsmul, hm, f.map_zero]

theorem exists_localGaloisCohomology_order {ℓ : ℕ} (hℓ : ℓ.Prime) (w : HeightOneSpectrum (𝓞 K.1)) (b : ℕ) :
    ∃ t : localGaloisCohomology K 2 (.inr w), ℓ ^ b • t = 0 ∧ ∀ m : ℕ, m • t = 0 → ℓ ^ b ∣ m := by
  exact exists_nsmul_order_of_bijective (placeInv (K := K) (.inr w))
    (placeInv_bijective_inr (K := K) w) (QZ.nsmul_mk_one_div (ℓ ^ b))
    (fun _ => dvd_of_nsmul_mk_one_div_eq_zero (pow_ne_zero b hℓ.ne_zero))

private theorem nsmul_order_of_ker_le {A B C D : Type*}
    [AddMonoid A] [AddMonoid B] [AddMonoid C] [AddMonoid D]
    (e : A ≃+ B) (f : A →+ C) (r : B →+ D)
    (hker : ∀ y, f y = 0 → r (e y) = 0) {x : B} {t : D} {n : ℕ}
    (hx : n • x = 0) (ht : r x = t) (horder : ∀ m : ℕ, m • t = 0 → n ∣ m) :
    n • f (e.symm x) = 0 ∧ ∀ m : ℕ, m • f (e.symm x) = 0 → n ∣ m := by
  constructor
  · rw [← f.map_nsmul, ← map_nsmul e.symm, hx, map_zero, map_zero]
  · intro m hm
    apply horder m
    have hz : f (m • e.symm x) = 0 := (f.map_nsmul _ _).trans hm
    have hr := hker _ hz
    rwa [map_nsmul e, e.apply_symm_apply, r.map_nsmul, ht] at hr

set_option maxHeartbeats 8000000 in
include hℓ hS in
theorem exists_char_order_gsDecomp (b : ℕ) :
    ∃ χ : Additive Gal(AlgebraicClosure (v.1.adicCompletion K.1)/v.1.adicCompletion K.1) →ₜ+ QZ,
      ℓ ^ b • χ = 0 ∧ (∀ m : ℕ, m • χ = 0 → ℓ ^ b ∣ m) ∧
        ∀ h, gsDecomp K S ιs v h = 1 → χ (Additive.ofMul h) = 0 := by
  let lift := cohomologyULiftIntAddEquiv (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) 2
  let loc := (gsLocalRes S (ιs.fin v.1) 2).hom.toAddMonoidHom
  let val := (cohomologyMapAlong (decompHomS (v.1.adicCompletion K.1) S (ιs.fin v.1))
    (continuous_decompHomS (Kv := v.1.adicCompletion K.1) S (ιs.fin v.1))
    (ordEmbMor S (ιs.fin v.1) v.2) 2).hom.toAddMonoidHom
  let equiv := gvChar Gal(AlgebraicClosure (v.1.adicCompletion K.1)/v.1.adicCompletion K.1)
  let char := equiv.toAddMonoidHom.comp val
  have hker (y) (hy : char y = 0) : loc (lift y) = 0 :=
    (gsLocalRes_eq_zero_iff S (ιs.fin v.1) v.2 y).2
      (equiv.injective (hy.trans equiv.map_zero.symm))
  refine (exists_localGaloisCohomology_order K hℓ v.1 b).elim fun t ht => ?_
  refine (exists_gsLocalRes_eq_single K S ℓ hℓ hS ιs v.1 v.2 t b ht.1).elim fun x hx => ?_
  have hord := nsmul_order_of_ker_le lift char loc hker hx.1 hx.2.1 ht.2
  exact ⟨char (lift.symm x), hord.1, hord.2, fun h hh =>
    gvChar_decompHomS_eq_zero S (ιs.fin v.1) (lift.symm x) (ordEmbMor S (ιs.fin v.1) v.2) h hh⟩

private theorem char_eq_proj_nsmul {G : Type*} [Group G] [TopologicalSpace G]
    (deg : G →* Multiplicative ℤ̂) (hdeg : Continuous deg) (σ : G)
    (hσ : deg σ = Multiplicative.ofAdd 1)
    (eq_univ : ∀ E : Set G, IsClosed E → (∀ k : ℤ, σ ^ k ∈ E) →
      (∀ g ∈ E, ∀ h, deg h = 1 → g * h ∈ E) → E = Set.univ)
    (n : ℕ+) (χ : Additive G →ₜ+ QZ) (hχ : (n : ℕ) • χ = 0)
    (hker : ∀ h, deg h = 1 → χ (Additive.ofMul h) = 0) (g : G) :
    χ (Additive.ofMul g) = (ProfiniteInteger.proj n (Multiplicative.toAdd (deg g))).val •
      χ (Additive.ofMul σ) := by
  let : NeZero (n : ℕ) := ⟨n.ne_zero⟩
  let proj := ProfiniteInteger.proj n
  let c := χ (Additive.ofMul σ)
  have hc : (n : ℕ) • c = 0 := by
    change (n : ℕ) • χ (Additive.ofMul σ) = 0
    rw [← ContinuousAddMonoidHom.nsmul_apply, hχ]
    rfl
  let E : Set G := {g | χ (Additive.ofMul g) = (proj (Multiplicative.toAdd (deg g))).val • c}
  have hclosed : IsClosed E :=
    isClosed_eq (χ.continuous.comp continuous_ofMul)
      ((continuous_of_discreteTopology (f := fun z : ZMod n => z.val • c)).comp
        ((ProfiniteInteger.continuous_proj n).comp (continuous_toAdd.comp hdeg)))
  have hpow (k : ℤ) : σ ^ k ∈ E := by
    change χ (Additive.ofMul (σ ^ k)) = (proj (Multiplicative.toAdd (deg (σ ^ k)))).val • c
    rw [ofMul_zpow, map_zsmul, deg.map_zpow, hσ, ← ofAdd_zsmul, toAdd_ofAdd, zsmul_one, map_intCast]
    exact (val_intCast_nsmul_eq_zsmul hc k).symm
  have hmul (g : G) (hg : g ∈ E) (h : G) (hh : deg h = 1) : g * h ∈ E := by
    change χ (Additive.ofMul (g * h)) = (proj (Multiplicative.toAdd (deg (g * h)))).val • c
    rw [ofMul_mul, map_add (f := χ), hker h hh, add_zero, deg.map_mul, hh, mul_one]
    exact hg
  exact Set.eq_univ_iff_forall.mp (eq_univ E hclosed hpow hmul) g

set_option maxHeartbeats 4000000 in
theorem char_eq_proj_nsmul_of_gsDecomp {ℓ : ℕ} (hℓ : ℓ.Prime) (b : ℕ)
    (χ : Additive Gal(AlgebraicClosure (v.1.adicCompletion K.1)/v.1.adicCompletion K.1) →ₜ+ QZ)
    (hχk : ℓ ^ b • χ = 0) (hB : ∀ h, gsDecomp K S ιs v h = 1 → χ (Additive.ofMul h) = 0)
    (σ : Gal(AlgebraicClosure (v.1.adicCompletion K.1)/v.1.adicCompletion K.1))
    (hσ : unramifiedDegree (v.1.adicCompletion K.1) (AlgebraicClosure (v.1.adicCompletion K.1)) σ =
      Multiplicative.ofAdd 1)
    (g : Gal(AlgebraicClosure (v.1.adicCompletion K.1)/v.1.adicCompletion K.1)) :
    χ (Additive.ofMul g) = (ProfiniteInteger.proj ⟨ℓ ^ b, pow_pos hℓ.pos b⟩
      (Multiplicative.toAdd (unramifiedDegree
        (v.1.adicCompletion K.1) (AlgebraicClosure (v.1.adicCompletion K.1)) g)) : ZMod (ℓ ^ b)).val •
          χ (Additive.ofMul σ) := by
  exact char_eq_proj_nsmul (unramifiedDegree _ _) continuous_unramifiedDegree σ hσ
    (eq_univ_of_unramifiedDegree v.1 σ hσ) ⟨ℓ ^ b, pow_pos hℓ.pos b⟩ χ hχk
    (fun h hh => hB h (gsDecomp_eq_one_of_unramifiedDegree_eq_one K S ιs v h hh)) g

private theorem zmod_eq_zero_of_char_eq_nsmul {G : Type*} [Group G] [TopologicalSpace G]
    {n : ℕ} [NeZero n] (χ : Additive G →ₜ+ QZ)
    (horder : ∀ m : ℕ, m • χ = 0 → n ∣ m) (c : QZ) (proj : G → ZMod n)
    (hchar : ∀ g, χ (Additive.ofMul g) = (proj g).val • c) (g : G)
    (hg : χ (Additive.ofMul g) = 0) : proj g = 0 := by
  have hzero : (proj g).val • c = 0 := (hchar g).symm.trans hg
  have hsmul : (proj g).val • χ = 0 := by
    refine DFunLike.ext _ _ fun y => ?_
    rw [ContinuousAddMonoidHom.nsmul_apply, ← ofMul_toMul y, hchar, smul_comm, hzero, smul_zero]
    rfl
  exact (ZMod.val_eq_zero (proj g)).1
    (Nat.eq_zero_of_dvd_of_lt (horder _ hsmul) (ZMod.val_lt (proj g)))

set_option maxHeartbeats 4000000 in
include hℓ hS in
theorem proj_unramifiedDegree_eq_zero_of_gsDecomp_eq_one (b : ℕ)
    (g : Gal(AlgebraicClosure (v.1.adicCompletion K.1)/v.1.adicCompletion K.1))
    (hg : gsDecomp K S ιs v g = 1) :
    ProfiniteInteger.proj ⟨ℓ ^ b, pow_pos hℓ.pos b⟩ (Multiplicative.toAdd (unramifiedDegree
      (v.1.adicCompletion K.1) (AlgebraicClosure (v.1.adicCompletion K.1)) g)) = 0 := by
  let : NeZero (ℓ ^ b) := ⟨pow_ne_zero b hℓ.ne_zero⟩
  let deg := unramifiedDegree (v.1.adicCompletion K.1) (AlgebraicClosure (v.1.adicCompletion K.1))
  let proj g := ProfiniteInteger.proj ⟨ℓ ^ b, pow_pos hℓ.pos b⟩ (Multiplicative.toAdd (deg g))
  refine (exists_unramifiedDegree_eq_one (K := K) (v := v.1)).elim fun σ hσ => ?_
  refine (exists_char_order_gsDecomp K S ιs v hℓ hS b).elim fun χ hχ => ?_
  exact zmod_eq_zero_of_char_eq_nsmul χ hχ.2.1 (χ (Additive.ofMul σ)) proj
    (char_eq_proj_nsmul_of_gsDecomp K S ιs v hℓ b χ hχ.1 hχ.2.2 σ hσ) g (hχ.2.2 g hg)

private theorem exists_range_hom_zmod {G H : Type*} [Group G] [Group H]
    [TopologicalSpace G] [TopologicalSpace H] (f : G →* H)
    (hf : Topology.IsQuotientMap f.rangeRestrict)
    (deg : G →* Multiplicative ℤ̂) (hdeg : Continuous deg) (n : ℕ+)
    (hker : ∀ g, f g = 1 → ProfiniteInteger.proj n (Multiplicative.toAdd (deg g)) = 0)
    (σ : G) (hσ : deg σ = Multiplicative.ofAdd 1) :
    ∃ φ : f.range →* Multiplicative (ZMod n),
      IsOpen (φ.ker : Set f.range) ∧ φ (f.rangeRestrict σ) = Multiplicative.ofAdd 1 := by
  let proj g := ProfiniteInteger.proj n (Multiplicative.toAdd (deg g))
  let ψ := (ProfiniteInteger.proj n).toAddMonoidHom.toMultiplicative.comp deg
  have hker' : f.ker ≤ ψ.ker := fun g hg =>
    MonoidHom.mem_ker.mpr (congrArg Multiplicative.ofAdd (hker g (MonoidHom.mem_ker.mp hg)))
  let e := QuotientGroup.quotientKerEquivRange f
  let φ := (QuotientGroup.lift _ ψ hker').comp e.symm.toMonoidHom
  have hφ (g : G) : φ (f.rangeRestrict g) = ψ g := by
    have he : e.symm (f.rangeRestrict g) = (g : G ⧸ f.ker) := e.symm_apply_apply (g : G ⧸ f.ker)
    change QuotientGroup.lift _ ψ hker' (e.symm (f.rangeRestrict g)) = ψ g
    rw [he, QuotientGroup.lift_mk]
  refine ⟨φ, ?_, ?_⟩
  · rw [← hf.isOpen_preimage]
    have hpreimage : f.rangeRestrict ⁻¹' (φ.ker : Set f.range) = proj ⁻¹' {0} := by
      refine Set.ext fun g => ?_
      change φ (f.rangeRestrict g) = 1 ↔ proj g ∈ ({0} : Set (ZMod n))
      rw [hφ, Set.mem_singleton_iff]
      exact Iff.rfl
    rw [hpreimage]
    exact (isOpen_discrete _).preimage
      ((ProfiniteInteger.continuous_proj n).comp (continuous_toAdd.comp hdeg))
  · rw [hφ]
    change Multiplicative.ofAdd (ProfiniteInteger.proj n (Multiplicative.toAdd (deg σ))) = _
    rw [hσ, toAdd_ofAdd, map_one]

set_option maxHeartbeats 4000000 in
include hℓ hS in
theorem exists_hom_zmod_pow_rangeRestrict_gsDecomp
    (σ : Gal(AlgebraicClosure (v.1.adicCompletion K.1)/v.1.adicCompletion K.1))
    (hσ : unramifiedDegree (v.1.adicCompletion K.1) (AlgebraicClosure (v.1.adicCompletion K.1)) σ =
      Multiplicative.ofAdd 1) (b : ℕ) :
    ∃ φ : (gsDecomp K S ιs v).range →* Multiplicative (ZMod (ℓ ^ b)),
      IsOpen (φ.ker : Set (gsDecomp K S ιs v).range) ∧
        φ ((gsDecomp K S ιs v).rangeRestrict σ) = Multiplicative.ofAdd 1 := by
  exact exists_range_hom_zmod (gsDecomp K S ιs v) (isQuotientMap_rangeRestrict_gsDecomp K S ιs v)
    (unramifiedDegree _ _) continuous_unramifiedDegree ⟨ℓ ^ b, pow_pos hℓ.pos b⟩
    (proj_unramifiedDegree_eq_zero_of_gsDecomp_eq_one K S ιs v hℓ hS b) σ hσ


set_option maxHeartbeats 4000000 in
include hℓ hS in
theorem exists_isPrimePowGenerator_gsDecomp :
    ∃ σ : (gsDecomp K S ιs v).range, IsPrimePowGenerator ℓ σ := by
  refine (exists_unramifiedDegree_eq_one (K := K) (v := v.1)).elim fun σ hσ => ?_
  exact ⟨(gsDecomp K S ιs v).rangeRestrict σ, isTopologicalGenerator_rangeRestrict_gsDecomp K S ιs v σ hσ,
    fun b => exists_hom_zmod_pow_rangeRestrict_gsDecomp K S ιs v hℓ hS σ hσ b⟩

instance isDiscreteRep_res_range_gsDecomp :
    IsDiscreteRep (Rep.res (gsDecomp K S ιs v).range.subtype (trivRep (galUnramifiedOutside K.1 ℚ̄ S) QZ)) :=
  isDiscreteRep_res_subtype _ _

instance totallyDisconnectedSpace_range_gsDecomp : TotallyDisconnectedSpace (gsDecomp K S ιs v).range :=
  have := galUnramifiedOutside_isProfinite (F := K.1) (Ω := ℚ̄) S
  inferInstance


set_option maxHeartbeats 4000000 in
include hℓ hS in
theorem eq_zero_of_pow_nsmul_cohomology_range_gsDecomp {p : ℕ} (hp : 2 ≤ p)
    (x : cohomology (Rep.res (gsDecomp K S ιs v).range.subtype
      (trivRep (galUnramifiedOutside K.1 ℚ̄ S) QZ)) p) (k : ℕ) (hx : ℓ ^ k • x = 0) : x = 0 := by
  exact (exists_isPrimePowGenerator_gsDecomp K S ιs v hℓ hS).elim fun _ hσ =>
    hσ.eq_zero_of_pow_nsmul hℓ _ isAddTorsion_QZ hp x hx

end Hom

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDecompLadic =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDivisor =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDivisor", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.ColimitUnion\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.DivisorModule\npublic import GroundTheory.ProfiniteCohomology.ClassFormationDefs\npublic import GroundTheory.ProfiniteCohomology.ShapiroDefs\npublic import GroundTheory.ProfiniteCohomology.CohomologicalDimension.Closed\nimport GroundTheory.ProfiniteCohomology.CohomologicalDimension.SubsingletonCohomologyOfPrimaryOfFinite\npublic import GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality\nimport GroundTheory.ProfiniteCohomology.Colimit\nimport GroundTheory.ProfiniteCohomology.GaloisCohomology.Kummer\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.Brauer\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighInfl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.EffectiveEpi.Comp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.ClopenNhdofOne\nimport Mathlib.Topology.Compactness.Paracompact\npublic import GroundTheory.ProfiniteCohomology.ClassFormations.IsIsoCohomologyMapAlongResSubgroupOfHom\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory Limits

noncomputable section

section Primary

variable {k G : Type} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G]
  [TotallyDisconnectedSpace G]

def PrimaryVanishes (ℓ p : ℕ) (M : Rep.{0} k G) [IsDiscreteRep M] : Prop :=
  ∀ (x : cohomology M p) (k : ℕ), ℓ ^ k • x = 0 → x = 0

theorem PrimaryVanishes.of_shortExact {S : ShortComplex (Rep.{0} k G)} [IsDiscreteRep S.X₁]
    [IsDiscreteRep S.X₂] [IsDiscreteRep S.X₃] (hS : S.ShortExact) {ℓ p : ℕ} (hℓ : ℓ.Prime) (hp : 1 ≤ p)
    (h₁ : PrimaryVanishes ℓ p S.X₁) (h₃ : PrimaryVanishes ℓ p S.X₃) : PrimaryVanishes ℓ p S.X₂ := by
  intro x k hx
  have hg : (cohomologyMap S.g p).hom x = 0 :=
    h₃ _ k (by rw [← map_nsmul, hx, map_zero])
  obtain ⟨y, rfl⟩ := _root_.GroundTheory.ProfCoh.exists_cohomologyMap_f_eq hS p x hg
  obtain ⟨y', ⟨j, hj⟩, hy'⟩ := exists_primary_map_eq (cohomologyMap S.f p).hom.toAddMonoidHom hℓ
    (isTorsion_cohomology _ hp y) (k := k) hx
  have : y' = 0 := h₁ y' j hj
  refine hy'.symm.trans ?_
  change (cohomologyMap S.f p).hom y' = 0
  rw [this, map_zero]

theorem PrimaryVanishes.of_union (M : Rep.{0} k G) [IsDiscreteRep M] {ι : Type} [Preorder ι]
    [Nonempty ι] [IsDirectedOrder ι] (W : ι → Submodule k M) (hW : Monotone W)
    (hstable : ∀ i g, W i ≤ (W i).comap (M.ρ g)) (hunion : ∀ a : M, ∃ i, a ∈ W i) {ℓ p : ℕ}
    (hW' : ∀ i (y : cohomology (M.subrepresentation (W i) (hstable i)) p) (k : ℕ), ℓ ^ k • y = 0 →
      ∃ (j : ι) (h : i ≤ j), (cohomologyMap (subrepInclusion M W hW hstable h) p).hom y = 0) :
    PrimaryVanishes ℓ p M := by
  intro x k hx
  obtain ⟨i, y, rfl⟩ := exists_cohomologyMap_subtype_eq M W hW hstable hunion p x
  have hy : (cohomologyMap (Rep.subtype M (W i) (hstable i)) p).hom (ℓ ^ k • y) = 0 := by
    rw [map_nsmul]
    exact hx
  obtain ⟨j, hij, hj⟩ := exists_cohomologyMap_subrepInclusion_eq_zero M W hW hstable hunion p i _ hy
  rw [map_nsmul] at hj
  obtain ⟨l, hjl, hl⟩ := hW' j _ k hj
  have e : subrepInclusion M W hW hstable hij ≫ subrepInclusion M W hW hstable hjl ≫
      Rep.subtype M (W l) (hstable l) = Rep.subtype M (W i) (hstable i) := by
    rw [subrepInclusion_comp_subtype, subrepInclusion_comp_subtype]
  rw [← e, cohomologyMap_comp, cohomologyMap_comp, ModuleCat.hom_comp, ModuleCat.hom_comp,
    LinearMap.comp_apply, LinearMap.comp_apply, hl, map_zero]

end Primary

section Single

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G]
  [TotallyDisconnectedSpace G] {H₀ : Type} [Group H₀] (ψ : H₀ →* G)

abbrev divFunRepOne : Rep.{0} (ULift.{0} ℤ) G :=
  divFunRep (I := PUnit) (H := fun _ => H₀) (fun _ => ψ) QZ

def OpenSubgroupAbove (Z : Subgroup G) : Type :=
  {U : OpenSubgroup G // Z ≤ (U : Subgroup G)}

instance (Z : Subgroup G) : Preorder (OpenSubgroupAbove Z) where
  le a b := (b.1 : Subgroup G) ≤ a.1
  le_refl _ := le_refl _
  le_trans _ _ _ hab hbc := hbc.trans hab

instance (Z : Subgroup G) : Nonempty (OpenSubgroupAbove Z) :=
  ⟨⟨⊤, le_top⟩⟩

instance (Z : Subgroup G) : IsDirectedOrder (OpenSubgroupAbove Z) :=
  ⟨fun a b => ⟨⟨a.1 ⊓ b.1, fun z hz => ⟨a.2 hz, b.2 hz⟩⟩, fun x hx => hx.1, fun x hx => hx.2⟩⟩

abbrev trivQZRes (U : OpenSubgroup G) : Rep.{0} (ULift.{0} ℤ) (U : Subgroup G) :=
  Rep.res (U : Subgroup G).subtype (trivRep G QZ)

instance isDiscreteRep_trivQZRes (U : OpenSubgroup G) : IsDiscreteRep (trivQZRes U) :=
  isDiscreteRep_res_subtype _ _

instance isDiscreteRep_coind_trivQZRes (U : OpenSubgroup G) :
    IsDiscreteRep (Rep.coind (U : Subgroup G).subtype (trivQZRes U)) :=
  isDiscreteRep_coind U _

instance isDiscreteRep_res_subtype_trivRepQZ (Z : Subgroup G) :
    IsDiscreteRep (Rep.res Z.subtype (trivRep G QZ)) :=
  isDiscreteRep_res_subtype _ _

def coindToDivFunOne (U : OpenSubgroup G) (hU : ψ.range ≤ (U : Subgroup G)) :
    Rep.coind (U : Subgroup G).subtype (trivQZRes U) ⟶ divFunRepOne ψ :=
  Rep.ofHom ⟨{
      toFun := fun F => ⟨fun _ => F.1, Set.toFinite _, fun _ =>
        ⟨isLocallyConstant_coind U (trivQZRes U) F, fun h x => by
          have := F.2 ⟨ψ h, hU ⟨h, rfl⟩⟩ x
          exact this⟩⟩
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }, fun _ => rfl⟩

theorem coindToDivFunOne_injective (U : OpenSubgroup G) (hU : ψ.range ≤ (U : Subgroup G)) :
    Function.Injective (coindToDivFunOne ψ U hU).hom := fun F F' h =>
  Subtype.ext (congrFun (congrArg Subtype.val h) PUnit.unit)

end Single

section SingleVanish

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G]
  [TotallyDisconnectedSpace G] {H₀ : Type} [Group H₀] (ψ : H₀ →* G)

def coindIncl {U U' : OpenSubgroup G} (h : (U' : Subgroup G) ≤ U) :
    Rep.coind (U : Subgroup G).subtype (trivQZRes U) ⟶ Rep.coind (U' : Subgroup G).subtype (trivQZRes U') :=
  Rep.ofHom ⟨{
      toFun := fun F => ⟨F.1, fun g x => F.2 ⟨g, h g.2⟩ x⟩
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }, fun _ => rfl⟩

theorem cohomologyMap_coindIncl_comp_shapiroMap {U U' : OpenSubgroup G} (h : (U' : Subgroup G) ≤ U) (n : ℕ) :
    cohomologyMap (coindIncl h) n ≫ shapiroMap U' (trivQZRes U') n =
      shapiroMap U (trivQZRes U) n ≫ cohomologyResLE (trivRep G QZ) h n := by
  rw [shapiroMap, shapiroMap, cohomologyResLE, ← cohomologyMapAlong_id_eq_cohomologyMap,
    ← cohomologyMapAlong_comp, ← cohomologyMapAlong_comp]
  exact cohomologyMapAlong_congr _ _ _ _ (by ext; rfl) (fun _ => rfl) n

def divFunOneLevel (a : OpenSubgroupAbove ψ.range) : Submodule (ULift.{0} ℤ) (divFunRepOne ψ) :=
  LinearMap.range (coindToDivFunOne ψ a.1 a.2).hom.toLinearMap

theorem divFunOneLevel_stable (a : OpenSubgroupAbove ψ.range) (g : G) :
    divFunOneLevel ψ a ≤ (divFunOneLevel ψ a).comap ((divFunRepOne ψ).ρ g) :=
  range_repHom_le_comap _ g

instance isDiscreteRep_divFunOneLevel (a : OpenSubgroupAbove ψ.range) :
    IsDiscreteRep ((divFunRepOne ψ).subrepresentation (divFunOneLevel ψ a) (divFunOneLevel_stable ψ a)) :=
  isDiscreteRep_subrepresentation _ _ _

theorem divFunOneLevel_mono : Monotone (divFunOneLevel ψ) := by
  intro a b hab
  rintro _ ⟨F, rfl⟩
  exact ⟨(coindIncl hab).hom F, rfl⟩


omit [TotallyDisconnectedSpace G] in
theorem exists_mem_divFunOneLevel [TotallyDisconnectedSpace G] (f : divFunRepOne ψ) :
    ∃ a, f ∈ divFunOneLevel ψ a := by
  obtain ⟨hlc, hinv⟩ := f.2.2 PUnit.unit
  obtain ⟨V, hV, hVf⟩ := exists_mem_nhds_one_forall_mul_eq hlc
  obtain ⟨W, hWV, hWo, h1W⟩ := mem_nhds_iff.1 hV
  obtain ⟨N, hN⟩ := ProfiniteGrp.exist_openNormalSubgroup_sub_open_nhds_of_one hWo h1W
  let U : OpenSubgroup G := ⟨ψ.range ⊔ (N : Subgroup G), Subgroup.isOpen_mono le_sup_right N.isOpen'⟩
  have hU : ψ.range ≤ (U : Subgroup G) := le_sup_left
  have hF : ∀ (g : (U : Subgroup G)) (x : G), (f : PUnit → G → QZ) PUnit.unit ((U : Subgroup G).subtype g * x) =
      (trivQZRes U).ρ g ((f : PUnit → G → QZ) PUnit.unit x) := by
    intro g x
    obtain ⟨m, ⟨h, rfl⟩, v, hv, hmv⟩ := Subgroup.mem_sup_of_normal_right.1 g.2
    change (f : PUnit → G → QZ) PUnit.unit ((g : G) * x) = (f : PUnit → G → QZ) PUnit.unit x
    have hv' : x⁻¹ * v * x ∈ (N : Subgroup G) := N.isNormal'.conj_mem' v hv x
    rw [← hmv, show ψ h * v * x = ψ h * (x * (x⁻¹ * v * x)) by group, hinv,
      hVf x _ (hWV (hN hv'))]
  refine ⟨⟨U, hU⟩, ⟨⟨(f : PUnit → G → QZ) PUnit.unit, hF⟩, ?_⟩⟩
  apply Subtype.ext
  funext u
  rfl

def coindToDivFunOneLevel (a : OpenSubgroupAbove ψ.range) :
    Rep.coind (a.1 : Subgroup G).subtype (trivQZRes a.1) ⟶
      (divFunRepOne ψ).subrepresentation (divFunOneLevel ψ a) (divFunOneLevel_stable ψ a) :=
  Rep.ofHom ⟨LinearMap.codRestrict (divFunOneLevel ψ a) (coindToDivFunOne ψ a.1 a.2).hom.toLinearMap
      (fun F => ⟨F, rfl⟩), fun _ => rfl⟩

theorem coindToDivFunOneLevel_bijective (a : OpenSubgroupAbove ψ.range) :
    Function.Bijective (coindToDivFunOneLevel ψ a).hom :=
  ⟨fun F F' h => coindToDivFunOne_injective ψ a.1 a.2 (congrArg Subtype.val h), fun y => by
    obtain ⟨F, hF⟩ := y.2
    exact ⟨F, Subtype.ext hF⟩⟩

instance isIso_coindToDivFunOneLevel (a : OpenSubgroupAbove ψ.range) :
    IsIso (coindToDivFunOneLevel ψ a) := by
  have : Mono (coindToDivFunOneLevel ψ a) :=
    (Rep.mono_iff_injective _).2 (coindToDivFunOneLevel_bijective ψ a).1
  have : Epi (coindToDivFunOneLevel ψ a) :=
    (Rep.epi_iff_surjective _).2 (coindToDivFunOneLevel_bijective ψ a).2
  exact isIso_of_mono_of_epi _

theorem coindToDivFunOneLevel_comp_subrepInclusion {a b : OpenSubgroupAbove ψ.range} (hab : a ≤ b) :
    coindToDivFunOneLevel ψ a ≫ subrepInclusion _ _ (divFunOneLevel_mono ψ) (divFunOneLevel_stable ψ) hab =
      coindIncl hab ≫ coindToDivFunOneLevel ψ b :=
  rfl

theorem bijective_cohomologyMap_of_isIso {k : Type} [CommRing k] {A B : Rep.{0} k G} [IsDiscreteRep A]
    [IsDiscreteRep B] (f : A ⟶ B) [IsIso f] (n : ℕ) : Function.Bijective (cohomologyMap f n).hom := by
  have : IsIso (cohomologyMap f n) :=
    ⟨cohomologyMap (inv f) n, by rw [← cohomologyMap_comp, IsIso.hom_inv_id, cohomologyMap_id],
      by rw [← cohomologyMap_comp, IsIso.inv_hom_id, cohomologyMap_id]⟩
  exact ⟨(ModuleCat.mono_iff_injective _).1 inferInstance, (ModuleCat.epi_iff_surjective _).1 inferInstance⟩

theorem primaryVanishes_divFunRepOne (hZ : IsClosed (ψ.range : Set G)) {ℓ p : ℕ} (hp : 1 ≤ p)
    (hloc : ∀ x : cohomology (Rep.res ψ.range.subtype (trivRep G QZ)) p, (∃ k : ℕ, ℓ ^ k • x = 0) → x = 0) :
    PrimaryVanishes ℓ p (divFunRepOne ψ) := by
  refine PrimaryVanishes.of_union (divFunRepOne ψ) (divFunOneLevel ψ) (divFunOneLevel_mono ψ)
    (divFunOneLevel_stable ψ) (exists_mem_divFunOneLevel ψ) fun a y k hy => ?_
  obtain ⟨x, rfl⟩ := (bijective_cohomologyMap_of_isIso (coindToDivFunOneLevel ψ a) p).2 y
  have hx : ℓ ^ k • x = 0 := (bijective_cohomologyMap_of_isIso (coindToDivFunOneLevel ψ a) p).1
    (by rw [map_nsmul, hy, map_zero])
  set z := (shapiroMap a.1 (trivQZRes a.1) p).hom x with hzdef
  have hz : ℓ ^ k • z = 0 := by rw [hzdef, ← map_nsmul, hx, map_zero]
  have hw : (cohomologyResLE (trivRep G QZ) a.2 p).hom z = 0 :=
    hloc _ ⟨k, by rw [← map_nsmul, hz, map_zero]⟩
  rw [cohomologyResLE_apply_eq_zero_iff] at hw
  obtain ⟨q, rfl⟩ : ∃ q, p = q + 1 := ⟨p - 1, by omega⟩
  have hZc : IsClosed ((ψ.range.subgroupOf (a.1 : Subgroup G) : Subgroup (a.1 : Subgroup G)) :
      Set (a.1 : Subgroup G)) := by
    rw [Subgroup.coe_subgroupOf]
    exact hZ.preimage continuous_subtype_val
  obtain ⟨U₀, hU₀o, hZU₀, hU₀⟩ := exists_cohomologyRes_eq_zero (M := trivQZRes a.1) hZc q z hw
  have hopen : IsOpen ((U₀.map (a.1 : Subgroup G).subtype : Subgroup G) : Set G) := by
    rw [Subgroup.coe_map]
    exact (a.1.isOpen).isOpenMap_subtype_val _ hU₀o
  let U' : OpenSubgroup G := ⟨U₀.map (a.1 : Subgroup G).subtype, hopen⟩
  have hU'a : (U' : Subgroup G) ≤ a.1 := Subgroup.map_subtype_le U₀
  have hZU' : ψ.range ≤ (U' : Subgroup G) := fun z hz =>
    ⟨⟨z, a.2 hz⟩, hZU₀ (show (⟨z, a.2 hz⟩ : (a.1 : Subgroup G)) ∈ ψ.range.subgroupOf (a.1 : Subgroup G) from hz), rfl⟩
  let b : OpenSubgroupAbove ψ.range := ⟨U', hZU'⟩
  have hab : a ≤ b := hU'a
  have : IsDiscreteRep (Rep.coind (b.1 : Subgroup G).subtype (trivQZRes b.1)) :=
    isDiscreteRep_coind_trivQZRes b.1
  have hres : (cohomologyResLE (trivRep G QZ) hU'a (q + 1)).hom z = 0 := by
    rw [cohomologyResLE_apply_eq_zero_iff]
    have e : (U' : Subgroup G).subgroupOf (a.1 : Subgroup G) = U₀ :=
      Subgroup.comap_map_eq_self_of_injective (Subgroup.subtype_injective _) U₀
    rw [e]
    exact hU₀
  have hsh : (shapiroMap b.1 (trivQZRes b.1) (q + 1)).hom ((cohomologyMap (coindIncl hab) (q + 1)).hom x) = 0 := by
    have := congrArg (fun φ => φ.hom x) (cohomologyMap_coindIncl_comp_shapiroMap hab (q + 1))
    simp only [ModuleCat.hom_comp, LinearMap.comp_apply] at this
    rw [this]
    exact hres
  have hinj : Function.Injective (shapiroMap b.1 (trivQZRes b.1) (q + 1)).hom :=
    (ModuleCat.mono_iff_injective _).1 inferInstance
  have h0 : (cohomologyMap (coindIncl hab) (q + 1)).hom x = 0 := hinj (hsh.trans (map_zero _).symm)
  refine ⟨b, hab, ?_⟩
  calc (cohomologyMap (subrepInclusion _ _ (divFunOneLevel_mono ψ) (divFunOneLevel_stable ψ) hab) (q + 1)).hom
        ((cohomologyMap (coindToDivFunOneLevel ψ a) (q + 1)).hom x)
      = (cohomologyMap (coindToDivFunOneLevel ψ a ≫
          subrepInclusion _ _ (divFunOneLevel_mono ψ) (divFunOneLevel_stable ψ) hab) (q + 1)).hom x := by
        rw [cohomologyMap_comp]
        rfl
    _ = (cohomologyMap (coindIncl hab ≫ coindToDivFunOneLevel ψ b) (q + 1)).hom x := by
        rw [coindToDivFunOneLevel_comp_subrepInclusion]
    _ = 0 := by
        rw [cohomologyMap_comp, ModuleCat.hom_comp, LinearMap.comp_apply, h0, map_zero]

end SingleVanish

section Family

attribute [local instance] Classical.propDecidable

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G]
  [TotallyDisconnectedSpace G] {I : Type} {H : I → Type} [∀ i, Group (H i)] (φ : ∀ i, H i →* G)


omit [IsTopologicalGroup G] [CompactSpace G] [TotallyDisconnectedSpace G] in
theorem ker_repHom_le_comap {k : Type} [CommRing k] {A B : Rep.{0} k G} (f : A ⟶ B) (g : G) :
    LinearMap.ker f.hom.toLinearMap ≤ (LinearMap.ker f.hom.toLinearMap).comap (A.ρ g) := by
  intro a ha
  change f.hom (A.ρ g a) = 0
  rw [Rep.hom_comm_apply]
  rw [show f.hom a = 0 from ha, map_zero]


omit [IsTopologicalGroup G] [CompactSpace G] [TotallyDisconnectedSpace G] in
theorem mem_divFun_ite (T : Finset I) (f : divFun φ QZ) :
    (fun i => if i ∈ T then 0 else (f : I → G → QZ) i) ∈ divFun φ QZ := by
  refine ⟨f.2.1.subset fun i hi => ?_, fun i => ?_⟩
  · intro hc
    apply hi
    simp only [hc, ite_self]
  · by_cases hi : i ∈ T
    · simp only [hi, if_true]
      exact ⟨IsLocallyConstant.const 0, fun _ _ => rfl⟩
    · simp only [hi, if_false]
      exact f.2.2 i

def divFunOutside (T : Finset I) : divFunRep φ QZ ⟶ divFunRep φ QZ :=
  Rep.ofHom ⟨{
      toFun := fun f => ⟨_, mem_divFun_ite φ T f⟩
      map_add' := fun f f' => by
        apply Subtype.ext
        funext i x
        by_cases hi : i ∈ T
        · simp [hi]
        · simp [hi]
      map_smul' := fun c f => by
        apply Subtype.ext
        funext i x
        by_cases hi : i ∈ T
        · simp [hi]
        · simp [hi] }, fun g => by
    apply LinearMap.ext
    intro f
    apply Subtype.ext
    funext i x
    show ((if i ∈ T then 0 else ((divFunAction φ QZ g f : divFun φ QZ) : I → G → QZ) i) : G → QZ) x =
      (if i ∈ T then (0 : G → QZ) else (f : I → G → QZ) i) (x * g)
    by_cases hi : i ∈ T
    · simp [hi]
    · simp [hi, coe_divFunAction_apply]⟩

def divFunSupp (T : Finset I) : Submodule (ULift.{0} ℤ) (divFunRep φ QZ) :=
  LinearMap.ker (divFunOutside φ T).hom.toLinearMap

theorem mem_divFunSupp_iff (T : Finset I) (f : divFunRep φ QZ) :
    f ∈ divFunSupp φ T ↔ ∀ i, i ∉ T → (f.1 : I → G → QZ) i = 0 := by
  constructor
  · intro hf i hi
    have := congrFun (congrArg Subtype.val (show (divFunOutside φ T).hom f = 0 from hf)) i
    simpa [divFunOutside, hi] using this
  · intro hf
    apply Subtype.ext
    funext i
    change (if i ∈ T then 0 else (f : I → G → QZ) i) = 0
    by_cases hi : i ∈ T
    · simp [hi]
    · simp [hi, hf i hi]

theorem divFunSupp_stable (T : Finset I) (g : G) :
    divFunSupp φ T ≤ (divFunSupp φ T).comap ((divFunRep φ QZ).ρ g) :=
  ker_repHom_le_comap _ g

instance isDiscreteRep_divFunSupp (T : Finset I) :
    IsDiscreteRep ((divFunRep φ QZ).subrepresentation (divFunSupp φ T) (divFunSupp_stable φ T)) :=
  isDiscreteRep_subrepresentation _ _ _

theorem divFunSupp_mono : Monotone (divFunSupp φ) := fun T T' h f hf =>
  (mem_divFunSupp_iff φ T' f).2 fun i hi => (mem_divFunSupp_iff φ T f).1 hf i fun hiT => hi (h hiT)

def divFunSuppComponent (T : Finset I) (j : I) :
    (divFunRep φ QZ).subrepresentation (divFunSupp φ (insert j T)) (divFunSupp_stable φ _) ⟶
      divFunRepOne (φ j) :=
  Rep.ofHom ⟨{
      toFun := fun f => ⟨fun _ => ((f.1 : divFun φ QZ) : I → G → QZ) j, Set.toFinite _, fun _ => f.1.2.2 j⟩
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }, fun _ => rfl⟩

def divFunSuppSequence (T : Finset I) (j : I) (hj : j ∉ T) : ShortComplex (Rep.{0} (ULift.{0} ℤ) G) :=
  ShortComplex.mk (subrepInclusion (divFunRep φ QZ) (divFunSupp φ) (divFunSupp_mono φ) (divFunSupp_stable φ)
      (Finset.subset_insert j T)) (divFunSuppComponent φ T j) (by
    apply Rep.hom_ext
    apply Representation.IntertwiningMap.ext
    apply LinearMap.ext
    intro f
    apply Subtype.ext
    funext _ x
    exact congrFun ((mem_divFunSupp_iff φ T f.1).1 f.2 j hj) x)

instance isDiscreteRep_divFunSuppSequence_X₁ (T : Finset I) (j : I) (hj : j ∉ T) :
    IsDiscreteRep (divFunSuppSequence φ T j hj).X₁ :=
  isDiscreteRep_divFunSupp φ T

instance isDiscreteRep_divFunSuppSequence_X₂ (T : Finset I) (j : I) (hj : j ∉ T) :
    IsDiscreteRep (divFunSuppSequence φ T j hj).X₂ :=
  isDiscreteRep_divFunSupp φ (insert j T)

instance isDiscreteRep_divFunSuppSequence_X₃ (T : Finset I) (j : I) (hj : j ∉ T) :
    IsDiscreteRep (divFunSuppSequence φ T j hj).X₃ :=
  (inferInstance : IsDiscreteRep (divFunRepOne (φ j)))


omit [IsTopologicalGroup G] [CompactSpace G] [TotallyDisconnectedSpace G] in
theorem single_mem_divFun (j : I) (F : G → QZ) (hF : IsLocallyConstant F ∧ ∀ (h : H j) (x : G), F (φ j h * x) = F x) :
    (Pi.single j F : I → G → QZ) ∈ divFun φ QZ := by
  refine ⟨(Set.finite_singleton j).subset fun i hi => ?_, fun i => ?_⟩
  · by_contra h
    have h' : i ≠ j := fun e => h (Set.mem_singleton_iff.2 e)
    exact hi (by simp [Pi.single_apply, h'])
  · by_cases h : i = j
    · subst h
      simp only [Pi.single_eq_same]
      exact hF
    · simp only [Pi.single_eq_of_ne h]
      exact ⟨IsLocallyConstant.const 0, fun _ _ => rfl⟩

theorem divFunSuppSequence_shortExact (T : Finset I) (j : I) (hj : j ∉ T) :
    (divFunSuppSequence φ T j hj).ShortExact := by
  have hmono : Mono (divFunSuppSequence φ T j hj).f :=
    (Rep.mono_iff_injective _).2
      (Submodule.inclusion_injective (divFunSupp_mono φ (Finset.subset_insert j T)))
  refine ShortComplex.ShortExact.mk' ?_ hmono ?_
  · apply shortComplex_exact_of_forall_exists
    intro f hf
    have hj0 : ((f.1 : divFun φ QZ) : I → G → QZ) j = 0 := congrFun (congrArg Subtype.val hf) PUnit.unit
    refine ⟨⟨f.1, (mem_divFunSupp_iff φ T f.1).2 fun i hi => ?_⟩, rfl⟩
    by_cases hij : i = j
    · subst hij
      exact hj0
    · exact (mem_divFunSupp_iff φ _ f.1).1 f.2 i (by simp [hij, hi])
  · apply (Rep.epi_iff_surjective _).2
    intro e
    refine ⟨⟨⟨Pi.single j ((e.1 : PUnit → G → QZ) PUnit.unit),
      single_mem_divFun φ j _ (e.2.2 PUnit.unit)⟩, (mem_divFunSupp_iff φ _ _).2 fun i hi => ?_⟩, ?_⟩
    · have hij : i ≠ j := fun h => hi (h ▸ Finset.mem_insert_self j T)
      change (Pi.single j ((e.1 : PUnit → G → QZ) PUnit.unit) : I → G → QZ) i = 0
      simp [hij]
    · apply Subtype.ext
      funext u
      exact Pi.single_eq_same j _

theorem primaryVanishes_divFunSupp (hZ : ∀ i, IsClosed ((φ i).range : Set G)) {ℓ p : ℕ} (hℓ : ℓ.Prime)
    (hp : 1 ≤ p)
    (hloc : ∀ i (x : cohomology (Rep.res (φ i).range.subtype (trivRep G QZ)) p), (∃ k : ℕ, ℓ ^ k • x = 0) → x = 0)
    (T : Finset I) :
    PrimaryVanishes ℓ p ((divFunRep φ QZ).subrepresentation (divFunSupp φ T) (divFunSupp_stable φ T)) := by
  induction T using Finset.induction_on with
  | empty =>
    have : Subsingleton ((divFunRep φ QZ).subrepresentation (divFunSupp φ ∅) (divFunSupp_stable φ ∅)) :=
      ⟨fun a b => Subtype.ext (Subtype.ext (funext fun i =>
        ((mem_divFunSupp_iff φ ∅ a.1).1 a.2 i (by simp)).trans
          ((mem_divFunSupp_iff φ ∅ b.1).1 b.2 i (by simp)).symm))⟩
    intro x k hx
    have := subsingleton_cohomology_of_subsingleton
      ((divFunRep φ QZ).subrepresentation (divFunSupp φ ∅) (divFunSupp_stable φ ∅)) p
    exact Subsingleton.elim _ _
  | insert j T hj ih =>
    exact PrimaryVanishes.of_shortExact (divFunSuppSequence_shortExact φ T j hj) hℓ hp ih
      (primaryVanishes_divFunRepOne (φ j) (hZ j) hp (hloc j))

theorem eq_zero_of_pow_nsmul_cohomology_divFunRep' (hZ : ∀ i, IsClosed ((φ i).range : Set G)) {ℓ : ℕ}
    (hℓ : ℓ.Prime) {p : ℕ} (hp : 1 ≤ p)
    (hloc : ∀ i (x : cohomology (Rep.res (φ i).range.subtype (trivRep G QZ)) p), (∃ k : ℕ, ℓ ^ k • x = 0) → x = 0)
    (x : cohomology (divFunRep φ QZ) p) (k : ℕ) (hx : ℓ ^ k • x = 0) : x = 0 := by
  refine PrimaryVanishes.of_union (divFunRep φ QZ) (divFunSupp φ) (divFunSupp_mono φ) (divFunSupp_stable φ)
    (fun a => ⟨a.2.1.toFinset, (mem_divFunSupp_iff φ _ a).2 fun i hi => ?_⟩)
    (fun T y k hy => ⟨T, le_rfl, ?_⟩) x k hx
  · by_contra h
    exact hi (a.2.1.mem_toFinset.2 h)
  · rw [primaryVanishes_divFunSupp φ hZ hℓ hp hloc T y k hy, map_zero]

theorem eq_zero_of_pow_nsmul_cohomology_divFunRep [T2Space G] [∀ i, TopologicalSpace (H i)]
    [∀ i, CompactSpace (H i)] (hφ : ∀ i, Continuous (φ i)) {ℓ : ℕ} (hℓ : ℓ.Prime) {p : ℕ} (hp : 1 ≤ p)
    (hloc : ∀ i (x : cohomology (Rep.res (φ i).range.subtype (trivRep G QZ)) p), (∃ k : ℕ, ℓ ^ k • x = 0) → x = 0)
    (x : cohomology (divFunRep φ QZ) p) (k : ℕ) (hx : ℓ ^ k • x = 0) : x = 0 :=
  eq_zero_of_pow_nsmul_cohomology_divFunRep' φ (fun i => by
    rw [MonoidHom.coe_range]
    exact (isCompact_range (hφ i)).isClosed) hℓ hp hloc x k hx

end Family

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDivisor =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.EqZeroOfPowNsmulCohomologySUnitsOfOdd =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.EqZeroOfPowNsmulCohomologySUnitsOfOdd", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighSUnits\npublic import GroundTheory.ProfiniteCohomology.GlobalClassFormation.HighUnits\nimport GroundTheory.ProfiniteCohomology.Colimit\nimport GroundTheory.ProfiniteCohomology.GlobalClassFormation.HighUnitsLocal\nimport GroundTheory.ProfiniteCohomology.RestrictedRamification.Brauer\nimport GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDecomp\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDecompLadic\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.HighDivisor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory Limits NumberField IsDedekindDomain GroundTheory.Global

noncomputable section

local notation "ℚ̄" => AlgebraicClosure ℚ

section TwoTorsion

variable {K : FiniteSubfield}

theorem two_nsmul_cohomology_unitsLimitRep {r : ℕ} (hr : 4 ≤ r) (y : cohomology (unitsLimitRep K) r) :
    2 • y = 0 := by
  obtain ⟨ι⟩ := nonempty_localEmbeddings K
  apply (bijective_realLocalization ι hr).1
  rw [map_nsmul, map_zero]
  funext v
  rw [Pi.smul_apply]
  rcases Nat.even_or_odd r with he | ho
  · have hc := natCard_localGaloisCohomology_of_isReal_of_even v.1 v.2 (by omega) he
    rw [← hc]
    exact card_nsmul_eq_zero'
  · have := subsingleton_localGaloisCohomology_of_isReal_of_odd v.1 v.2 ho
    exact Subsingleton.elim _ _

end TwoTorsion

variable (K : FiniteSubfield) (S : Set (HeightOneSpectrum (𝓞 K.1))) {ℓ : ℕ} (hℓ : ℓ.Prime)
  (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)


include hℓ hS in
theorem eq_zero_of_pow_nsmul_cohomology_gsDiv_QZ (ιs : LocalEmbeddings K) {p : ℕ} (hp : 2 ≤ p)
    (x : cohomology (gsDiv K S ιs QZ) p) (k : ℕ) (hx : ℓ ^ k • x = 0) : x = 0 :=
  eq_zero_of_pow_nsmul_cohomology_divFunRep (gsDecomp K S ιs) (continuous_gsDecomp K S ιs) hℓ (by omega)
    (fun v y hy => hy.elim fun j hj => eq_zero_of_pow_nsmul_cohomology_range_gsDecomp K S ιs v hℓ hS hp y j hj)
    x k hx


include hℓ hS in
theorem isIsoModCoprime_sUnitsToUnits_of_four_le {r : ℕ} (hr : 4 ≤ r) :
    IsIsoModCoprime ℓ (cohomologyMap (sUnitsToUnits S (maxUnramifiedOutside K.1 ℚ̄ S)) r).hom.toAddMonoidHom :=
  isIsoModCoprime_sUnitsToUnits K S (nonempty_localEmbeddings K).some hℓ hS
    (fun _ hp x k hx => eq_zero_of_pow_nsmul_cohomology_gsDiv_QZ K S hℓ hS _ hp x k hx) hr


include hℓ hS in
theorem isIsoModCoprime_sUnitsInfl {r : ℕ} (hr : 4 ≤ r) : IsIsoModCoprime ℓ (sUnitsInfl K S r) :=
  (isIsoModCoprime_gsUnitsInfl K S hℓ hS (by omega)).comp (isIsoModCoprime_sUnitsToUnits_of_four_le K S hℓ hS hr)

noncomputable def sUnitsToUnitsPrimaryEquiv {r : ℕ} (hr : 4 ≤ r) :
    AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) r) ℓ ≃+
      AddCommGroup.primaryComponent (cohomology (galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) r) ℓ :=
  AddEquiv.ofBijective _
    ((isIsoModCoprime_sUnitsToUnits_of_four_le K S hℓ hS hr).bijective_primaryComponentMap hℓ
      (isTorsion_cohomology _ (by omega)))

noncomputable def sUnitsInflPrimaryEquiv {r : ℕ} (hr : 4 ≤ r) :
    AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) r) ℓ ≃+
      AddCommGroup.primaryComponent (cohomology (unitsLimitRep K) r) ℓ :=
  AddEquiv.ofBijective _
    ((isIsoModCoprime_sUnitsInfl K S hℓ hS hr).bijective_primaryComponentMap hℓ (isTorsion_cohomology _ (by omega)))

section Odd



end Odd

section Real

variable (ι : LocalEmbeddings K)

theorem mem_primaryComponent_two_unitsLimitRep {r : ℕ} (hr : 4 ≤ r) (y : cohomology (unitsLimitRep K) r) :
    y ∈ AddCommGroup.primaryComponent (cohomology (unitsLimitRep K) r) 2 :=
  ⟨1, by rw [pow_one]; exact two_nsmul_cohomology_unitsLimitRep hr y⟩

attribute [local irreducible] realLocalization sUnitsInfl

theorem bijective_realLocalization_comp_primaryComponent {X : Type*} [AddCommGroup X] {r : ℕ} (hr : 4 ≤ r)
    (f : X →+ cohomology (unitsLimitRep K) r) (hf : IsIsoModCoprime 2 f) (hX : IsAddTorsion X) :
    Function.Bijective ((realLocalization ι (r := r) (by omega)).comp
      (f.comp (AddCommGroup.primaryComponent X 2).subtype)) := by
  have hb := hf.bijective_primaryComponentMap Nat.prime_two hX
  have hR := bijective_realLocalization ι hr
  refine ⟨fun a b hab => hb.1 (Subtype.ext (hR.1 hab)), fun t => ?_⟩
  obtain ⟨y, rfl⟩ := hR.2 t
  obtain ⟨a, ha⟩ := hb.2 ⟨y, mem_primaryComponent_two_unitsLimitRep (K := K) hr y⟩
  exact ⟨a, congrArg (realLocalization ι (r := r) (by omega)) (congrArg Subtype.val ha)⟩

variable (h2S : ∀ v : HeightOneSpectrum (𝓞 K.1), ((2 : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)

noncomputable def sUnitsRealPrimaryEquiv {r : ℕ} (hr : 4 ≤ r) :
    AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) r) 2 ≃+
      ∀ v : {v : InfinitePlace K.1 // v.IsReal}, localGaloisCohomology K r (.inl v.1) :=
  AddEquiv.ofBijective _ (bijective_realLocalization_comp_primaryComponent K ι hr (sUnitsInfl K S r)
    (isIsoModCoprime_sUnitsInfl K S Nat.prime_two h2S hr) (isTorsion_cohomology _ (by omega)))

theorem sUnitsRealPrimaryEquiv_apply {r : ℕ} (hr : 4 ≤ r)
    (x : AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) r) 2) :
    sUnitsRealPrimaryEquiv K S ι h2S hr x = realLocalization ι (r := r) (by omega) (sUnitsInfl K S r x) :=
  rfl

end Real

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.EqZeroOfPowNsmulCohomologySUnitsOfOdd =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnits =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnits", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnitsDefs\npublic import GroundTheory.ProfiniteCohomology.GlobalClassFormation.HighUnits\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.GSDefs\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.LocalCohomologyIsoHomologyMapNormCochains\nimport GroundTheory.ProfiniteCohomology.ClassFormations.HighFormations\nimport GroundTheory.ProfiniteCohomology.GlobalClassFormation.HighUnitsLocal\nimport GroundTheory.ProfiniteCohomology.GlobalClassFormation.LocalResConj\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.EqZeroOfPowNsmulCohomologySUnitsOfOdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain GroundTheory.Global

noncomputable section

local notation "ℚ̄" => AlgebraicClosure ℚ

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  (ιr : ∀ v : {v : InfinitePlace K.1 // v.IsReal}, ℚ̄ →ₐ[K.1] AlgebraicClosure v.1.Completion)
  (ιs : ∀ v : S, ℚ̄ →ₐ[K.1] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))

section Setup

abbrev finUnitsMor (v : S) :=
  sUnitsLocalMor S (gsFinFamily S ιs v).toMonoidHom
    ((ιs v).comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom (decompHomS_apply S (ιs v))

abbrev realUnitsMor (w : {v : InfinitePlace K.1 // v.IsReal}) :=
  sUnitsLocalMor S (gsRealFamily S ιr w).toMonoidHom
    ((ιr w).comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom (decompHomS_apply S (ιr w))

abbrev finUnits (v : S) : Rep.{0} (ULift.{0} ℤ)
    Gal(AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1) /
      (v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1) :=
  galUnits.{0} ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)
    (AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))

abbrev realUnits (w : {v : InfinitePlace K.1 // v.IsReal}) :
    Rep.{0} (ULift.{0} ℤ) Gal(AlgebraicClosure w.1.Completion / w.1.Completion) :=
  galUnits.{0} w.1.Completion (AlgebraicClosure w.1.Completion)

instance isDiscreteRep_finUnits (v : S) : IsDiscreteRep (finUnits S v) :=
  isDiscreteRep_galUnits (K := (v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)
    (L := AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))

instance isDiscreteRep_realUnits (w : {v : InfinitePlace K.1 // v.IsReal}) : IsDiscreteRep (realUnits w) :=
  isDiscreteRep_galUnits (K := w.1.Completion) (L := AlgebraicClosure w.1.Completion)

abbrev unitsTateCohomology (n : ℕ) : ModuleCat (ULift.{0} ℤ) :=
  tateCompactCohomology (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S)
    (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) n

theorem subsingleton_finLocal (v : S) {n : ℕ} (hn : 3 ≤ n) :
    Subsingleton (cohomology (galUnits.{0} ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1)
      (AlgebraicClosure ((v : HeightOneSpectrum (𝓞 K.1)).adicCompletion K.1))) n) :=
  subsingleton_cohomology_galUnits_of_three_le _ _ hn

abbrev realLocalEquiv (w : {v : InfinitePlace K.1 // v.IsReal}) (n : ℕ) :
    cohomology (galUnits.{0} w.1.Completion (AlgebraicClosure w.1.Completion)) n ≃+
      localGaloisCohomology K n (.inl w.1) :=
  cohomologyULiftIntAddEquiv (galUnits.{0} w.1.Completion (AlgebraicClosure w.1.Completion)) n

abbrev finLocalEquiv (v : HeightOneSpectrum (𝓞 K.1)) (n : ℕ) :
    cohomology (galUnits.{0} (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1))) n ≃+
      localGaloisCohomology K n (.inr v) :=
  cohomologyULiftIntAddEquiv (galUnits.{0} (v.adicCompletion K.1) (AlgebraicClosure (v.adicCompletion K.1))) n

theorem subsingleton_realLocal_of_odd (w : {v : InfinitePlace K.1 // v.IsReal}) {n : ℕ} (hn : Odd n) :
    Subsingleton (cohomology (galUnits.{0} w.1.Completion (AlgebraicClosure w.1.Completion)) n) := by
  have := subsingleton_localGaloisCohomology_of_isReal_of_odd w.1 w.2 hn
  exact (realLocalEquiv w n).injective.subsingleton



theorem two_nsmul_realLocal (w : {v : InfinitePlace K.1 // v.IsReal}) {n : ℕ} (hn : 1 ≤ n)
    (t : cohomology (galUnits.{0} w.1.Completion (AlgebraicClosure w.1.Completion)) n) : 2 • t = 0 := by
  rcases Nat.even_or_odd n with he | ho
  · have hc := natCard_localGaloisCohomology_of_isReal_of_even w.1 w.2 (by omega) he
    have : Finite (localGaloisCohomology K n (.inl w.1)) := Nat.finite_of_card_ne_zero (by rw [hc]; norm_num)
    apply (realLocalEquiv w n).injective
    rw [map_nsmul, map_zero]
    have h := card_nsmul_eq_zero' (G := localGaloisCohomology K n (.inl w.1)) (x := realLocalEquiv w n t)
    rw [hc] at h
    exact h
  · have := subsingleton_realLocal_of_odd w ho
    exact Subsingleton.elim _ _

end Setup

section Real

variable (h2S : ∀ v : HeightOneSpectrum (𝓞 K.1), ((2 : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)

abbrev realUnitsRes (r : ℕ) (w : {v : InfinitePlace K.1 // v.IsReal}) :
    cohomology (galSUnitsMax K.1 ℚ̄ S) r ⟶
      cohomology (galUnits.{0} w.1.Completion (AlgebraicClosure w.1.Completion)) r :=
  cohomologyMapAlong (gsRealFamily S ιr w).toMonoidHom (continuous_toMonoidHom _) (realUnitsMor S ιr w) r

theorem realUnitsRes_eq (r : ℕ) (w : {v : InfinitePlace K.1 // v.IsReal}) :
    realUnitsRes S ιr r w =
      cohomologyMapAlong (decompHomS w.1.Completion S (ιr w)) (continuous_decompHomS (Kv := w.1.Completion) S (ιr w))
        (sUnitsLocalMor S (decompHomS w.1.Completion S (ιr w))
          ((ιr w).comp (maxUnramifiedOutside K.1 ℚ̄ S).val).toRingHom (decompHomS_apply S (ιr w))) r :=
  rfl

theorem realLocalEquiv_realUnitsRes (ι : LocalEmbeddings K) {r : ℕ} (hr : 1 ≤ r)
    (w : {v : InfinitePlace K.1 // v.IsReal}) (y : cohomology (galSUnitsMax K.1 ℚ̄ S) r) :
    realLocalization ι hr (sUnitsInfl K S r y) w = realLocalEquiv w r ((realUnitsRes S ιr r w).hom y) := by
  refine (idelesLimitCohomologyEquiv_unitsToIdeles_inl ι hr w.1 (sUnitsInfl K S r y)).trans ?_
  refine (congrArg (fun f => f.hom (sUnitsInfl K S r y))
    (unitsLocalRes_eq_of_algHom w.1.Completion (ιr w) (ι.inf w.1) r)).trans ?_
  exact (unitsLocalRes_sUnitsInfl S (ιr w) r y).trans
    (congrArg (realLocalEquiv w r) (congrArg (fun f => f.hom y) (realUnitsRes_eq S ιr r w).symm))



attribute [local irreducible] realLocalization sUnitsInfl sUnitsRealPrimaryEquiv

include h2S in
theorem eq_zero_of_realUnitsRes_eq_zero {r : ℕ} (hr : 4 ≤ r) (y : cohomology (galSUnitsMax K.1 ℚ̄ S) r)
    {k : ℕ} (hk : 2 ^ k • y = 0) (h : ∀ w, (realUnitsRes S ιr r w).hom y = 0) : y = 0 := by
  have hinj := (sUnitsRealPrimaryEquiv K S (nonempty_localEmbeddings K).some h2S hr).injective
  have h0 : (⟨y, k, hk⟩ : AddCommGroup.primaryComponent (cohomology (galSUnitsMax K.1 ℚ̄ S) r) 2) = 0 := by
    apply hinj
    rw [map_zero]
    funext w
    rw [sUnitsRealPrimaryEquiv_apply, realLocalEquiv_realUnitsRes S ιr (nonempty_localEmbeddings K).some (by omega) w y, h w, map_zero]
    rfl
  exact congrArg Subtype.val h0



include h2S in
theorem exists_realUnitsRes_eq {r : ℕ} (hr : 4 ≤ r)
    (t : ∀ w : {v : InfinitePlace K.1 // v.IsReal},
      cohomology (galUnits.{0} w.1.Completion (AlgebraicClosure w.1.Completion)) r) :
    ∃ y, ∀ w, (realUnitsRes S ιr r w).hom y = t w := by
  obtain ⟨⟨y, _⟩, hy⟩ := (sUnitsRealPrimaryEquiv K S (nonempty_localEmbeddings K).some h2S hr).surjective
    (fun w => realLocalEquiv w r (t w))
  refine ⟨y, fun w => (realLocalEquiv w r).injective ?_⟩
  rw [← realLocalEquiv_realUnitsRes S ιr (nonempty_localEmbeddings K).some (by omega) w y]
  rw [sUnitsRealPrimaryEquiv_apply] at hy
  exact congrFun hy w



theorem realUnitsRes_tateToGlobal (n : ℕ) (x : unitsTateCohomology S ιr ιs (n + 1))
    (w : {v : InfinitePlace K.1 // v.IsReal}) :
    (realUnitsRes S ιr (n + 1) w).hom ((tateToGlobal (gsFinFamily S ιs) (gsRealFamily S ιr)
      (galSUnitsMax K.1 ℚ̄ S) (finUnits S) (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) (n + 1)).hom x) =
        0 :=
  congrFun (congrArg Prod.snd (hom_apply_hom_apply_of_comp_eq (tateToGlobal_tateGlobalToLocal
    (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S) (finUnitsMor S ιs) realUnits
    (realUnitsMor S ιr) n) x)) w



include h2S in
theorem exists_realUnitsRes_eq_of_three_le {m : ℕ} (hm : 3 ≤ m + 1)
    (t : ∀ w : {v : InfinitePlace K.1 // v.IsReal}, cohomology (realUnits w) (m + 1)) :
    ∃ y : cohomology (galSUnitsMax K.1 ℚ̄ S) (m + 1), ∀ w, (realUnitsRes S ιr (m + 1) w).hom y = t w := by
  rcases Nat.even_or_odd (m + 1) with he | ho
  · exact exists_realUnitsRes_eq S ιr h2S (r := m + 1) (by obtain ⟨j, hj⟩ := he; omega) t
  · exact ⟨0, fun w => @Subsingleton.elim _ (subsingleton_realLocal_of_odd w ho) _ _⟩



theorem tateGlobalToLocal_units_eq {m : ℕ} (hm : 3 ≤ m + 1)
    (t : (∀ v : S, cohomology (finUnits S v) (m + 1)) ×
      (∀ w : {v : InfinitePlace K.1 // v.IsReal}, cohomology (realUnits w) (m + 1)))
    (y : cohomology (galSUnitsMax K.1 ℚ̄ S) (m + 1)) (hy : ∀ w, (realUnitsRes S ιr (m + 1) w).hom y = t.2 w) :
    (tateGlobalToLocal (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S)
      (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) (m + 1)).hom y = t := by
  have h1 : (globalToLocal (gsFinFamily S ιs) (galSUnitsMax K.1 ℚ̄ S) (finUnits S) (finUnitsMor S ιs)
      (m + 1)).hom y = t.1 := funext fun v => @Subsingleton.elim _ (subsingleton_finLocal S v hm) _ _
  exact Prod.ext h1 (funext hy)


include h2S in
theorem exists_tateGlobalToLocal_eq {m : ℕ} (hm : 3 ≤ m + 1)
    (t : (∀ v : S, cohomology (finUnits S v) (m + 1)) ×
      (∀ w : {v : InfinitePlace K.1 // v.IsReal}, cohomology (realUnits w) (m + 1))) :
    ∃ g : cohomology (galSUnitsMax K.1 ℚ̄ S) (m + 1),
      (tateGlobalToLocal (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S)
        (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) (m + 1)).hom g = t :=
  (exists_realUnitsRes_eq_of_three_le S ιr h2S hm t.2).imp fun y hy =>
    tateGlobalToLocal_units_eq S ιr ιs hm t y hy



include h2S in
theorem tateToGlobal_units_eq_zero {n : ℕ} (hn : 3 ≤ n) (x : unitsTateCohomology S ιr ιs (n + 1))
    {k : ℕ} (hk : 2 ^ k • x = 0) :
    (tateToGlobal (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S)
      (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) (n + 1)).hom x = 0 := by
  refine eq_zero_of_realUnitsRes_eq_zero S ιr h2S (by omega) _ (k := k) ?_ fun w => ?_
  · rw [← map_nsmul, hk, map_zero]
  · exact realUnitsRes_tateToGlobal S ιr ιs n x w



include h2S in
theorem eq_zero_of_tateToGlobal_units_eq_zero {m : ℕ} (hm : 3 ≤ m + 1)
    (x : unitsTateCohomology S ιr ιs (m + 1 + 1))
    (hx : (tateToGlobal (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S)
      (finUnitsMor S ιs) realUnits (realUnitsMor S ιr) (m + 1 + 1)).hom x = 0) : x = 0 := by
  obtain ⟨t, ht⟩ := (ShortComplex.moduleCat_exact_iff _).1 (tateCompactCohomology_exact_compact
    (gsFinFamily S ιs) (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S) (finUnitsMor S ιs)
    realUnits (realUnitsMor S ιr) (m + 1)) x hx
  obtain ⟨g, hg⟩ := exists_tateGlobalToLocal_eq S ιr ιs h2S hm t
  rw [← ht, ← hg]
  exact hom_apply_hom_apply_of_comp_eq (tateGlobalToLocal_tateLocalToCompact (gsFinFamily S ιs)
    (gsRealFamily S ιr) (galSUnitsMax K.1 ℚ̄ S) (finUnits S) (finUnitsMor S ιs) realUnits
    (realUnitsMor S ιr) m) g


include h2S in
theorem eq_zero_unitsTateCohomology_of_two_pow_nsmul {r : ℕ} (hr : 4 ≤ r) (x : unitsTateCohomology S ιr ιs r)
    {k : ℕ} (hk : 2 ^ k • x = 0) : x = 0 := by
  obtain ⟨m, rfl⟩ : ∃ m, r = m + 1 + 1 := ⟨r - 2, by omega⟩
  exact eq_zero_of_tateToGlobal_units_eq_zero S ιr ιs h2S (by omega) x
    (tateToGlobal_units_eq_zero S ιr ιs h2S (by omega) x hk)

end Real

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RealPlaces.VanishingUnits =====
