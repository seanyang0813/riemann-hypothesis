module

public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangeModules
public import GroundTheory.ProfiniteCohomology.PoincarePairs.IsDiscreteRepResHomCoindRes
public import GroundTheory.ProfiniteCohomology.PoincarePairs.ConeProduct
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangeMackey

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransport, GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransportGS

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransport =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransport", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangeModules\npublic import GroundTheory.ProfiniteCohomology.PoincarePairs.IsDiscreteRepResHomCoindRes\npublic import GroundTheory.ProfiniteCohomology.PoincarePairs.ConeProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory MonoidalCategory GroundTheory.GroupCoh

universe u

noncomputable section

section Transport

variable {k G G' : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [Group G'] [TopologicalSpace G'] [IsTopologicalGroup G'] {ι ι' : Type u} {H : ι → Type u}
  {H' : ι' → Type u} [∀ i, Group (H i)] [∀ i, TopologicalSpace (H i)] [∀ i, IsTopologicalGroup (H i)]
  [∀ j, Group (H' j)] [∀ j, TopologicalSpace (H' j)] [∀ j, IsTopologicalGroup (H' j)]
  (φ : ∀ i, H i →ₜ* G) (φ' : ∀ j, H' j →ₜ* G') (θ : G ≃ₜ* G') (e : ι ≃ ι') (ψ : ∀ i, H i ≃ₜ* H' (e i))
  (hcomm : ∀ i h, θ (φ i h) = φ' (e i) (ψ i h))

section Cochains

variable {A' : Rep.{u} k G'} [IsDiscreteRep A'] {A : Rep.{u} k G} [IsDiscreteRep A]
  (f : Rep.res θ.toMulEquiv.toMonoidHom A' ⟶ A)

def transportLocalMor (i : ι) :
    Rep.res (ψ i).toMulEquiv.toMonoidHom (Rep.res (φ' (e i)).toMonoidHom A') ⟶
      Rep.res (φ i).toMonoidHom A :=
  Rep.ofHom ⟨f.hom.toLinearMap, fun h => LinearMap.ext fun a => by
    change f.hom (A'.ρ (φ' (e i) (ψ i h)) a) = A.ρ (φ i h) (f.hom a)
    rw [← hcomm]
    exact Rep.hom_comm_apply f (φ i h) a⟩


abbrev transportGlobal : cochainsComplex A' ⟶ cochainsComplex A :=
  cochainsMapAlong θ.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom θ) f

def transportLocal :
    piComplex (fun j => cochainsComplex (Rep.res (φ' j).toMonoidHom A')) ⟶
      piComplex (fun i => cochainsComplex (Rep.res (φ i).toMonoidHom A)) :=
  piLift fun i => piProj (fun j => cochainsComplex (Rep.res (φ' j).toMonoidHom A')) (e i) ≫
    cochainsMapAlong (ψ i).toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom (ψ i))
      (transportLocalMor φ φ' θ e ψ hcomm f i)

theorem localRes_transportLocal :
    localRes φ' A' (fun j => Rep.res (φ' j).toMonoidHom A') (fun _ => 𝟙 _) ≫
        transportLocal φ φ' θ e ψ hcomm f =
      transportGlobal θ f ≫ localRes φ A (fun i => Rep.res (φ i).toMonoidHom A) (fun _ => 𝟙 _) := by
  refine HomologicalComplex.hom_ext _ _ fun n => ModuleCat.hom_ext (LinearMap.ext fun x =>
    funext fun i => cochainOf_injective (funext fun σ => ?_))
  change f.hom (cochainOf A' x (⇑(φ' (e i)) ∘ ⇑(ψ i) ∘ σ)) = f.hom (cochainOf A' x (⇑θ ∘ ⇑(φ i) ∘ σ))
  congr 2
  funext j
  exact (hcomm i (σ j)).symm

def compactTransportCochains :
    compactCochains φ' A' (fun j => Rep.res (φ' j).toMonoidHom A') (fun _ => 𝟙 _) ⟶
      compactCochains φ A (fun i => Rep.res (φ i).toMonoidHom A) (fun _ => 𝟙 _) :=
  mappingCoconeNat.mapOfHomotopy (Homotopy.ofEq (localRes_transportLocal φ φ' θ e ψ hcomm f))

def compactTransport (n : ℕ) : compactCohomologyRes φ' A' n ⟶ compactCohomologyRes φ A n :=
  HomologicalComplex.homologyMap (compactTransportCochains φ φ' θ e ψ hcomm f) n

theorem compactTransport_compactToGlobal (n : ℕ) :
    compactTransport φ φ' θ e ψ hcomm f n ≫ compactToGlobal φ A _ (fun _ => 𝟙 _) n =
      compactToGlobal φ' A' _ (fun _ => 𝟙 _) n ≫
        cohomologyMapAlong θ.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom θ) f n :=
  (HomologicalComplex.homologyMap_comp _ _ n).symm.trans
    ((congrArg (fun ψ => HomologicalComplex.homologyMap ψ n)
      (mappingCoconeNat.mapOfHomotopy_fst _)).trans (HomologicalComplex.homologyMap_comp _ _ n))

def transportLocalCohomology (n : ℕ) :
    ModuleCat.of k (∀ j, cohomology (Rep.res (φ' j).toMonoidHom A') n) ⟶
      ModuleCat.of k (∀ i, cohomology (Rep.res (φ i).toMonoidHom A) n) :=
  ModuleCat.ofHom (LinearMap.pi fun i => (cohomologyMapAlong (ψ i).toMulEquiv.toMonoidHom
    (continuous_mulEquiv_toMonoidHom (ψ i)) (transportLocalMor φ φ' θ e ψ hcomm f i) n).hom.comp
      (LinearMap.proj (e i)))


omit [IsTopologicalGroup G] [IsTopologicalGroup G'] in
theorem homologyMap_transportLocal_localCohomologyIso (n : ℕ) :
    HomologicalComplex.homologyMap (transportLocal φ φ' θ e ψ hcomm f) n ≫
        (localCohomologyIso (fun i => Rep.res (φ i).toMonoidHom A) n).hom =
      (localCohomologyIso (fun j => Rep.res (φ' j).toMonoidHom A') n).hom ≫
        transportLocalCohomology φ φ' θ e ψ hcomm f n := by
  refine ModuleCat.hom_ext (LinearMap.ext fun z => funext fun i => ?_)
  change (HomologicalComplex.homologyMap (piProj _ i) n).hom
      ((HomologicalComplex.homologyMap (transportLocal φ φ' θ e ψ hcomm f) n).hom z) =
    (cohomologyMapAlong (ψ i).toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom (ψ i))
      (transportLocalMor φ φ' θ e ψ hcomm f i) n).hom
        ((HomologicalComplex.homologyMap (piProj _ (e i)) n).hom z)
  rw [hom_apply_hom_apply_of_comp_eq (HomologicalComplex.homologyMap_comp _ _ n).symm z, transportLocal,
    piLift_piProj, HomologicalComplex.homologyMap_comp]
  rfl

end Cochains

section Iso

variable {A' : Rep.{u} k G'} [IsDiscreteRep A'] {A : Rep.{u} k G} [IsDiscreteRep A]
  (f : Rep.res θ.toMulEquiv.toMonoidHom A' ≅ A)

def transportLocalIso (i : ι) :
    Rep.res (ψ i).toMulEquiv.toMonoidHom (Rep.res (φ' (e i)).toMonoidHom A') ≅
      Rep.res (φ i).toMonoidHom A where
  hom := transportLocalMor φ φ' θ e ψ hcomm f.hom i
  inv := Rep.ofHom ⟨f.inv.hom.toLinearMap, fun h => LinearMap.ext fun a => by
    change f.inv.hom (A.ρ (φ i h) a) = A'.ρ (φ' (e i) (ψ i h)) (f.inv.hom a)
    rw [← hcomm]
    exact Rep.hom_comm_apply f.inv (φ i h) a⟩
  hom_inv_id := Rep.hom_ext (Representation.IntertwiningMap.ext (LinearMap.ext fun a => by
    change f.inv.hom (f.hom.hom (a : A')) = (a : A')
    exact Rep.inv_hom_apply _ _ f a))
  inv_hom_id := Rep.hom_ext (Representation.IntertwiningMap.ext (LinearMap.ext fun a => by
    change f.hom.hom (f.inv.hom (a : A)) = (a : A)
    exact Rep.hom_inv_apply _ _ f a))

omit [IsTopologicalGroup G] [IsTopologicalGroup G'] in
theorem transportLocalCohomology_bijective (n : ℕ) :
    Function.Bijective (transportLocalCohomology φ φ' θ e ψ hcomm f.hom n).hom := by
  have hc : ∀ i, Function.Bijective (cohomologyMapAlong (ψ i).toMulEquiv.toMonoidHom
      (continuous_mulEquiv_toMonoidHom (ψ i)) (transportLocalMor φ φ' θ e ψ hcomm f.hom i) n).hom :=
    fun i => ((cohomologyIsoOfContinuousMulEquiv (ψ i) (transportLocalIso φ φ' θ e ψ hcomm f i) n).toLinearEquiv).bijective
  have h1 : Function.Bijective (fun ξ : ∀ j, cohomology (Rep.res (φ' j).toMonoidHom A') n =>
      fun i => ξ (e i)) :=
    (Equiv.piCongrLeft (fun j => cohomology (Rep.res (φ' j).toMonoidHom A') n) e).symm.bijective
  exact (Function.Bijective.piMap hc).comp h1

instance isIso_homologyMap_transportGlobal (n : ℕ) :
    IsIso (HomologicalComplex.homologyMap (transportGlobal θ f.hom) n) :=
  (cohomologyIsoOfContinuousMulEquiv θ f n).isIso_hom

instance isIso_homologyMap_transportLocal (n : ℕ) :
    IsIso (HomologicalComplex.homologyMap (transportLocal φ φ' θ e ψ hcomm f.hom) n) := by
  have hb := transportLocalCohomology_bijective φ φ' θ e ψ hcomm f n
  have : IsIso (transportLocalCohomology φ φ' θ e ψ hcomm f.hom n) :=
    (ConcreteCategory.isIso_iff_bijective _).2 hb
  have h := homologyMap_transportLocal_localCohomologyIso φ φ' θ e ψ hcomm f.hom n
  rw [← Iso.eq_comp_inv] at h
  rw [h]
  infer_instance

instance isIso_compactTransport (n : ℕ) : IsIso (compactTransport φ φ' θ e ψ hcomm f.hom n) :=
  mappingCoconeNat.isIso_homologyMap_mapOfHomotopy _
    (isIso_homologyMap_transportGlobal θ f) (isIso_homologyMap_transportLocal φ φ' θ e ψ hcomm f) n

def compactTransportIso (n : ℕ) : compactCohomologyRes φ' A' n ≅ compactCohomologyRes φ A n :=
  asIso (compactTransport φ φ' θ e ψ hcomm f.hom n)

end Iso

omit [IsTopologicalGroup G] [IsTopologicalGroup G'] in
theorem homotopy_ofEq_hom_apply {C D : CochainComplex (ModuleCat.{u} k) ℕ} {f g : C ⟶ D} (h : f = g) (i j : ℕ)
    (x : C.X i) : ((Homotopy.ofEq h).hom i j).hom x = 0 :=
  rfl

section CupGeneral

variable {K₁ K₂ : Type u} [Group K₁] [TopologicalSpace K₁] [IsTopologicalGroup K₁] [Group K₂]
  [TopologicalSpace K₂] [IsTopologicalGroup K₂] (ι₀ : K₁ →* K₂) (hι₀ : Continuous ι₀)
  {A B C : Rep.{u} k K₂} [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C]
  {A₁ B₁ C₁ : Rep.{u} k K₁} [IsDiscreteRep A₁] [IsDiscreteRep B₁] [IsDiscreteRep C₁]
  (a : Rep.res ι₀ A ⟶ A₁) (b : Rep.res ι₀ B ⟶ B₁) (c : Rep.res ι₀ C ⟶ C₁) (μ : A ⊗ B ⟶ C)
  (μ₁ : A₁ ⊗ B₁ ⟶ C₁) (hμ : (Rep.resFunctor ι₀).map μ ≫ c = resTensorHom ι₀ a b ≫ μ₁)


include hμ in
theorem cochainsMapAlong_cupPairingCochains {r s n : ℕ} (h : r + s = n) (x : (cochainsComplex A).X r)
    (z : (cochainsComplex B).X s) :
    ((cochainsMapAlong ι₀ hι₀ c).f n).hom (cupPairingCochains μ h x z) =
      cupPairingCochains μ₁ h (((cochainsMapAlong ι₀ hι₀ a).f r).hom x)
        (((cochainsMapAlong ι₀ hι₀ b).f s).hom z) := by
  apply cochainOf_injective
  funext σ
  change c.hom (μ.hom (cupCochain h (cochainOf A x) (cochainOf B z) (⇑ι₀ ∘ σ))) =
    μ₁.hom (cupCochain h (fun τ => a.hom (cochainOf A x (⇑ι₀ ∘ τ)))
      (fun τ => b.hom (cochainOf B z (⇑ι₀ ∘ τ))) σ)
  rw [cupCochain_apply, cupCochain_apply, ← Rep.hom_comm_apply, partialProd_comp_monoidHom]
  exact congrArg (fun F : Rep.res ι₀ (A ⊗ B) ⟶ C₁ => F.hom
    ((cochainOf A x fun i => (⇑ι₀ ∘ σ) ⟨i, by omega⟩) ⊗ₜ[k]
      B.ρ (ι₀ (Fin.partialProd σ ⟨r, by omega⟩))
        (cochainOf B z fun j => (⇑ι₀ ∘ σ) ⟨r + j, by omega⟩) :
      (A ⊗ B : Rep k K₂))) hμ

end CupGeneral

section Cup

variable {A' B' C' : Rep.{u} k G'} [IsDiscreteRep A'] [IsDiscreteRep B'] [IsDiscreteRep C']
  {A B C : Rep.{u} k G} [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C]
  (fA : Rep.res θ.toMulEquiv.toMonoidHom A' ⟶ A) (fB : Rep.res θ.toMulEquiv.toMonoidHom B' ⟶ B)
  (fC : Rep.res θ.toMulEquiv.toMonoidHom C' ⟶ C) (μ' : A' ⊗ B' ⟶ C') (μ : A ⊗ B ⟶ C)
  (hμ : (Rep.resFunctor θ.toMulEquiv.toMonoidHom).map μ' ≫ fC =
    resTensorHom θ.toMulEquiv.toMonoidHom fA fB ≫ μ)


omit [IsTopologicalGroup G] [IsTopologicalGroup G'] [∀ i, IsTopologicalGroup (H i)]
  [∀ j, IsTopologicalGroup (H' j)] [IsDiscreteRep A'] [IsDiscreteRep B'] [IsDiscreteRep C']
  [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C] in
include hμ in
theorem transportLocalMor_pairing (i : ι) :
    (Rep.resFunctor (ψ i).toMulEquiv.toMonoidHom).map ((Rep.resFunctor (φ' (e i)).toMonoidHom).map μ') ≫
        transportLocalMor φ φ' θ e ψ hcomm fC i =
      resTensorHom (ψ i).toMulEquiv.toMonoidHom (transportLocalMor φ φ' θ e ψ hcomm fA i)
        (transportLocalMor φ φ' θ e ψ hcomm fB i) ≫ (Rep.resFunctor (φ i).toMonoidHom).map μ := by
  apply Rep.hom_ext
  apply Representation.IntertwiningMap.ext
  apply TensorProduct.ext'
  intro a b
  change fC.hom (μ'.hom ((a : A') ⊗ₜ[k] (b : B') : (A' ⊗ B' : Rep k G'))) =
    μ.hom ((fA.hom a ⊗ₜ[k] fB.hom b : (A ⊗ B : Rep k G)))
  exact congrArg (fun F : Rep.res θ.toMulEquiv.toMonoidHom (A' ⊗ B') ⟶ C =>
    F.hom ((a : A') ⊗ₜ[k] (b : B') : (A' ⊗ B' : Rep k G'))) hμ


omit [IsTopologicalGroup G] [IsTopologicalGroup G'] in
include hμ in
theorem transportLocal_pi_cup {r s n : ℕ} (hh : r + s = n)
    (y₀ : (piComplex fun j => cochainsComplex (Rep.res (φ' j).toMonoidHom A')).X r)
    (w₀ : (piComplex fun j => cochainsComplex (Rep.res (φ' j).toMonoidHom B')).X s) :
    ((transportLocal φ φ' θ e ψ hcomm fC).f n).hom
        ((LeibnizPairing.pi fun j => cupLeibniz (A := Rep.res (φ' j).toMonoidHom A') (B := Rep.res (φ' j).toMonoidHom B')
        (C := Rep.res (φ' j).toMonoidHom C') ((Rep.resFunctor (φ' j).toMonoidHom).map μ')).μ hh y₀ w₀) =
      (LeibnizPairing.pi fun i => cupLeibniz (A := Rep.res (φ i).toMonoidHom A) (B := Rep.res (φ i).toMonoidHom B)
        (C := Rep.res (φ i).toMonoidHom C) ((Rep.resFunctor (φ i).toMonoidHom).map μ)).μ hh
        (((transportLocal φ φ' θ e ψ hcomm fA).f r).hom y₀) (((transportLocal φ φ' θ e ψ hcomm fB).f s).hom w₀) := by
  funext i
  change ((cochainsMapAlong (ψ i).toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom (ψ i))
      (transportLocalMor φ φ' θ e ψ hcomm fC i)).f n).hom
        (cupPairingCochains (A := Rep.res (φ' (e i)).toMonoidHom A') (B := Rep.res (φ' (e i)).toMonoidHom B')
          (C := Rep.res (φ' (e i)).toMonoidHom C') ((Rep.resFunctor (φ' (e i)).toMonoidHom).map μ') hh
          (y₀ (e i)) (w₀ (e i))) =
    cupPairingCochains (A := Rep.res (φ i).toMonoidHom A) (B := Rep.res (φ i).toMonoidHom B)
      (C := Rep.res (φ i).toMonoidHom C) ((Rep.resFunctor (φ i).toMonoidHom).map μ) hh
      (((cochainsMapAlong (ψ i).toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom (ψ i))
        (transportLocalMor φ φ' θ e ψ hcomm fA i)).f r).hom (y₀ (e i)))
      (((cochainsMapAlong (ψ i).toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom (ψ i))
        (transportLocalMor φ φ' θ e ψ hcomm fB i)).f s).hom (w₀ (e i)))
  exact cochainsMapAlong_cupPairingCochains (ψ i).toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom (ψ i))
    (A := Rep.res (φ' (e i)).toMonoidHom A') (B := Rep.res (φ' (e i)).toMonoidHom B')
    (C := Rep.res (φ' (e i)).toMonoidHom C') (A₁ := Rep.res (φ i).toMonoidHom A)
    (B₁ := Rep.res (φ i).toMonoidHom B) (C₁ := Rep.res (φ i).toMonoidHom C)
    (transportLocalMor φ φ' θ e ψ hcomm fA i) (transportLocalMor φ φ' θ e ψ hcomm fB i)
    (transportLocalMor φ φ' θ e ψ hcomm fC i) ((Rep.resFunctor (φ' (e i)).toMonoidHom).map μ')
    ((Rep.resFunctor (φ i).toMonoidHom).map μ)
    (transportLocalMor_pairing φ φ' θ e ψ hcomm fA fB fC μ' μ hμ i) hh (y₀ (e i)) (w₀ (e i))


include hμ in
theorem compactTransport_compactCupRes {r s n : ℕ} (h : r + s = n) (y : compactCohomologyRes φ' A' r)
    (x : cohomology B' s) :
    (compactTransport φ φ' θ e ψ hcomm fC n).hom (compactCupRes φ' μ' h y x) =
      compactCupRes φ μ h ((compactTransport φ φ' θ e ψ hcomm fA r).hom y)
        ((cohomologyMapAlong θ.toMulEquiv.toMonoidHom (continuous_mulEquiv_toMonoidHom θ) fB s).hom x) := by
  have hc := fun {r s n : ℕ} (hh : r + s = n) (x₀ : (cochainsComplex A').X r)
      (z₀ : (cochainsComplex B').X s) =>
    localRes_cupPairingCochains φ' μ'
      (Aᵥ := fun j => Rep.res (φ' j).toMonoidHom A') (Bᵥ := fun j => Rep.res (φ' j).toMonoidHom B')
      (Cᵥ := fun j => Rep.res (φ' j).toMonoidHom C')
      (a := fun _ => 𝟙 _) (b := fun _ => 𝟙 _) (c := fun _ => 𝟙 _)
      (fun j => (Rep.resFunctor (φ' j).toMonoidHom).map μ')
      (fun j => resFunctor_map_comp_id (φ' j).toMonoidHom _) hh x₀ z₀
  have hc' := fun {r s n : ℕ} (hh : r + s = n) (x₀ : (cochainsComplex A).X r)
      (z₀ : (cochainsComplex B).X s) =>
    localRes_cupPairingCochains φ μ
      (Aᵥ := fun i => Rep.res (φ i).toMonoidHom A) (Bᵥ := fun i => Rep.res (φ i).toMonoidHom B)
      (Cᵥ := fun i => Rep.res (φ i).toMonoidHom C)
      (a := fun _ => 𝟙 _) (b := fun _ => 𝟙 _) (c := fun _ => 𝟙 _)
      (fun i => (Rep.resFunctor (φ i).toMonoidHom).map μ)
      (fun i => resFunctor_map_comp_id (φ i).toMonoidHom _) hh x₀ z₀
  exact mappingCoconeNat.homologyMap_mapOfHomotopy_coconeLeft
    (Homotopy.ofEq (localRes_transportLocal φ φ' θ e ψ hcomm fA))
    (Homotopy.ofEq (localRes_transportLocal φ φ' θ e ψ hcomm fC))
    (Homotopy.ofEq (localRes_transportLocal φ φ' θ e ψ hcomm fB))
    (LeibnizPairing.pi fun j => cupLeibniz (A := Rep.res (φ' j).toMonoidHom A') (B := Rep.res (φ' j).toMonoidHom B')
        (C := Rep.res (φ' j).toMonoidHom C') ((Rep.resFunctor (φ' j).toMonoidHom).map μ'))
    (cupLeibniz μ')
    (LeibnizPairing.pi fun i => cupLeibniz (A := Rep.res (φ i).toMonoidHom A) (B := Rep.res (φ i).toMonoidHom B)
        (C := Rep.res (φ i).toMonoidHom C) ((Rep.resFunctor (φ i).toMonoidHom).map μ))
    (cupLeibniz μ) hc hc'
    (fun hh x₀ z₀ => cochainsMapAlong_cupPairingCochains _ _ fA fB fC μ' μ hμ hh x₀ z₀)
    (fun hh y₀ w₀ => transportLocal_pi_cup φ φ' θ e ψ hcomm fA fB fC μ' μ hμ hh y₀ w₀)
    (fun _ _ _ => by
      rw [homotopy_ofEq_hom_apply, homotopy_ofEq_hom_apply, homotopy_ofEq_hom_apply, LinearMap.map_zero₂,
        map_zero, smul_zero, add_zero])
    (fun _ _ _ => by rw [homotopy_ofEq_hom_apply, homotopy_ofEq_hom_apply, map_zero])
    (fun _ _ _ => by rw [homotopy_ofEq_hom_apply, homotopy_ofEq_hom_apply, LinearMap.map_zero₂]) h y x

end Cup

end Transport

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransport =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransportGS =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransportGS", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransport\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangeMackey\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open IsDedekindDomain NumberField CategoryTheory MonoidalCategory

universe u

noncomputable section

attribute [local instance 2000] Rep.hV2

section ZModRes

variable {G G' : Type u} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [Group G']
  [TopologicalSpace G'] [IsTopologicalGroup G'] (θ : G ≃ₜ* G')

def zmodRepResIso (n : ℕ) : Rep.res θ.toMulEquiv.toMonoidHom (zmodRep.{u} G' n) ≅ zmodRep.{u} G n where
  hom := Rep.ofHom ⟨LinearMap.id, fun _ => rfl⟩
  inv := Rep.ofHom ⟨LinearMap.id, fun _ => rfl⟩



omit [IsTopologicalGroup G] [IsTopologicalGroup G'] in
theorem zmodMulPairingRight_res (n : ℕ) {D' : Rep.{u} (ULift.{u} ℤ) G'} {D : Rep.{u} (ULift.{u} ℤ) G}
    (hD' : ∀ d : D', n • d = 0) (hD : ∀ d : D, n • d = 0) (f : Rep.res θ.toMulEquiv.toMonoidHom D' ⟶ D) :
    (Rep.resFunctor θ.toMulEquiv.toMonoidHom).map (zmodMulPairingRight n D' hD') ≫ f =
      resTensorHom θ.toMulEquiv.toMonoidHom f (zmodRepResIso θ n).hom ≫ zmodMulPairingRight n D hD := by
  apply Rep.hom_ext
  apply Representation.IntertwiningMap.ext
  apply TensorProduct.ext'
  intro d a
  obtain ⟨a⟩ := a
  change f.hom ((zmodMulPairing n D' hD').hom ((ULift.up a : zmodRep.{u} G' n) ⊗ₜ[ULift.{u} ℤ] (d : D') :
      (zmodRep.{u} G' n ⊗ D' : Rep _ _))) =
    (zmodMulPairing n D hD).hom ((ULift.up a : zmodRep.{u} G n) ⊗ₜ[ULift.{u} ℤ] f.hom d :
      (zmodRep.{u} G n ⊗ D : Rep _ _))
  rw [zmodMulPairing_tmul, zmodMulPairing_tmul]
  exact map_zsmul f.hom.toLinearMap.toAddMonoidHom _ _

end ZModRes

section Mackey

variable {F L Ω : Type u} [Field F] [NumberField F] [Field L] [NumberField L] [Field Ω]
  [Algebra F L] [Algebra F Ω] [Algebra L Ω] [IsScalarTower F L Ω] [IsGalois F Ω] [IsGalois L Ω]
  {S : Set (HeightOneSpectrum (𝓞 F))}
  (hL : ∀ x : L, algebraMap L Ω x ∈ maxUnramifiedOutside F Ω S)
  (ιs : ∀ v : S, Ω →ₐ[F] AlgebraicClosure ((v : HeightOneSpectrum (𝓞 F)).adicCompletion F))

def gsMackeyEmbeddings : ∀ w : (placesOver S : Set (HeightOneSpectrum (𝓞 L))),
    Ω →ₐ[L] AlgebraicClosure ((w : HeightOneSpectrum (𝓞 L)).adicCompletion L) :=
  Equiv.piCongrLeft (fun w : (placesOver S : Set (HeightOneSpectrum (𝓞 L))) =>
      Ω →ₐ[L] AlgebraicClosure ((w : HeightOneSpectrum (𝓞 L)).adicCompletion L))
    (mackeyPlaceEquiv S hL ιs) (fun p => gsLocalEmbeddingOver hL ιs p.1 p.2.out)

omit [IsGalois L Ω] in
theorem gsMackeyEmbeddings_mackeyPlaceEquiv
    (p : MackeyIndex (gsOpenSubgroup S hL) (gsFinFamily S ιs)) :
    gsMackeyEmbeddings hL ιs (mackeyPlaceEquiv S hL ιs p) = gsLocalEmbeddingOver hL ιs p.1 p.2.out :=
  Equiv.piCongrLeft_apply_apply _ _ _ _


omit [NumberField F] [Algebra F Ω] [IsScalarTower F L Ω] [IsGalois F Ω] in
theorem gsFinFamily_apply_of_eq {ιs' : ∀ w : (placesOver S : Set (HeightOneSpectrum (𝓞 L))),
      Ω →ₐ[L] AlgebraicClosure ((w : HeightOneSpectrum (𝓞 L)).adicCompletion L)}
    {w : (placesOver S : Set (HeightOneSpectrum (𝓞 L)))}
    {ι₀ : Ω →ₐ[L] AlgebraicClosure ((w : HeightOneSpectrum (𝓞 L)).adicCompletion L)} (h : ιs' w = ι₀)
    (σ : Gal(AlgebraicClosure ((w : HeightOneSpectrum (𝓞 L)).adicCompletion L) /
      (w : HeightOneSpectrum (𝓞 L)).adicCompletion L)) :
    gsFinFamily (placesOver S) ιs' w σ = decompHomS _ (placesOver S) ι₀ σ := by
  rw [← h]
  rfl

theorem gsBaseChange_mackeyFamily_eq (p : MackeyIndex (gsOpenSubgroup S hL) (gsFinFamily S ιs))
    (σ : mackeyGroup (gsOpenSubgroup S hL) (gsFinFamily S ιs) p) :
    gsBaseChange S hL (mackeyFamily (gsOpenSubgroup S hL) (gsFinFamily S ιs) p σ) =
      gsFinFamily (placesOver S) (gsMackeyEmbeddings hL ιs) (mackeyPlaceEquiv S hL ιs p)
        (gsMackeyLocalEquiv hL ιs p.1 p.2.out σ) := by
  exact (gsBaseChange_mackeyFamily hL ιs p σ).trans
    (gsFinFamily_apply_of_eq (gsMackeyEmbeddings_mackeyPlaceEquiv hL ιs p) _).symm

section Compact

variable {k : Type u} [CommRing k]

def gsMackeyCompactIso {A' : Rep.{u} k (galUnramifiedOutside L Ω (placesOver S))} [IsDiscreteRep A']
    {A : Rep.{u} k (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside F Ω S))} [IsDiscreteRep A]
    (f : Rep.res (gsBaseChange S hL).toMulEquiv.toMonoidHom A' ≅ A) (n : ℕ) :
    compactCohomologyRes (gsFinFamily (placesOver S) (gsMackeyEmbeddings hL ιs)) A' n ≅
      compactCohomologyRes (mackeyFamily (gsOpenSubgroup S hL) (gsFinFamily S ιs)) A n :=
  compactTransportIso (mackeyFamily (gsOpenSubgroup S hL) (gsFinFamily S ιs))
    (gsFinFamily (placesOver S) (gsMackeyEmbeddings hL ιs)) (gsBaseChange S hL) (mackeyPlaceEquiv S hL ιs)
    (fun p => gsMackeyLocalEquiv hL ιs p.1 p.2.out) (gsBaseChange_mackeyFamily_eq hL ιs) f n

theorem gsMackeyCompactIso_hom {A' : Rep.{u} k (galUnramifiedOutside L Ω (placesOver S))} [IsDiscreteRep A']
    {A : Rep.{u} k (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside F Ω S))} [IsDiscreteRep A]
    (f : Rep.res (gsBaseChange S hL).toMulEquiv.toMonoidHom A' ≅ A) (n : ℕ) :
    (gsMackeyCompactIso hL ιs f n).hom =
      compactTransport (mackeyFamily (gsOpenSubgroup S hL) (gsFinFamily S ιs))
        (gsFinFamily (placesOver S) (gsMackeyEmbeddings hL ιs)) (gsBaseChange S hL) (mackeyPlaceEquiv S hL ιs)
        (fun p => gsMackeyLocalEquiv hL ιs p.1 p.2.out) (gsBaseChange_mackeyFamily_eq hL ιs) f.hom n :=
  rfl

end Compact

section ZMod

attribute [local irreducible] compactTransport compactCupRes cohomologyMapAlong

theorem gsMackeyCompactIso_compactCupRes_zmod (n : ℕ)
    {D' : Rep.{u} (ULift.{u} ℤ) (galUnramifiedOutside L Ω (placesOver S))} [IsDiscreteRep D']
    {D : Rep.{u} (ULift.{u} ℤ) (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside F Ω S))} [IsDiscreteRep D]
    (hD' : ∀ d : D', n • d = 0) (hD : ∀ d : D, n • d = 0)
    (f : Rep.res (gsBaseChange S hL).toMulEquiv.toMonoidHom D' ≅ D) {r s m : ℕ} (h : r + s = m)
    (y : compactCohomologyRes (gsFinFamily (placesOver S) (gsMackeyEmbeddings hL ιs)) D' r)
    (x : cohomology (zmodRep.{u} (galUnramifiedOutside L Ω (placesOver S)) n) s) :
    (gsMackeyCompactIso hL ιs f m).hom.hom (compactCupRes _ (zmodMulPairingRight n D' hD') h y x) =
      compactCupRes (mackeyFamily (gsOpenSubgroup S hL) (gsFinFamily S ιs)) (zmodMulPairingRight n D hD) h
        ((gsMackeyCompactIso hL ιs f r).hom.hom y)
        ((cohomologyMapAlong (gsBaseChange S hL).toMulEquiv.toMonoidHom
          (continuous_mulEquiv_toMonoidHom (gsBaseChange S hL)) (zmodRepResIso (gsBaseChange S hL) n).hom s).hom
          x) :=
  compactTransport_compactCupRes (mackeyFamily (gsOpenSubgroup S hL) (gsFinFamily S ιs))
    (gsFinFamily (placesOver S) (gsMackeyEmbeddings hL ιs)) (gsBaseChange S hL) (mackeyPlaceEquiv S hL ιs)
    (fun p => gsMackeyLocalEquiv hL ιs p.1 p.2.out) (gsBaseChange_mackeyFamily_eq hL ιs) f.hom
    (zmodRepResIso (gsBaseChange S hL) n).hom f.hom (zmodMulPairingRight n D' hD') (zmodMulPairingRight n D hD)
    (zmodMulPairingRight_res (gsBaseChange S hL) n hD' hD f.hom) h y x

end ZMod

end Mackey

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseTransportGS =====
