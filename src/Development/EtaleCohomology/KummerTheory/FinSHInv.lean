module

public import Development.EtaleCohomology.KummerTheory.InjSlice
public import Development.EtaleCohomology.KummerTheory.SHInsepPf
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteMaximalSpectrumOfFiniteOfIsLocalRing
public import Development.EtaleCohomology.KummerTheory.PlaceStepPf
public import Development.EtaleCohomology.KummerTheory.SecSHPf
public import Development.EtaleCohomology.KummerTheory.AlgExtPf
public import Development.EtaleCohomology.KummerTheory.PlaceExPfZorn
public import Development.EtaleCohomology.KummerTheory.PlacePfVal
public import Development.EtaleCohomology.KummerTheory.PlaceResGoodPf
public import Development.EtaleCohomology.KummerTheory.PrimTorsPf
public import Development.EtaleCohomology.KummerTheory.ShSectPf
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.KummerTheory.InsepPf, Development.EtaleCohomology.KummerTheory.SHInsepHensPf, Development.EtaleCohomology.KummerTheory.SHInsepLocPf, Development.EtaleCohomology.KummerTheory.SHInsepResPf, Development.EtaleCohomology.KummerTheory.SHInvPf, Development.EtaleCohomology.KummerTheory.FinSHInv

-- ===== clump member: Development.EtaleCohomology.KummerTheory.InsepPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.InsepPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.InjSlice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC
open scoped TensorProduct

namespace LateralTheory.KummerTheory.InsepPf

theorem res_comp {R : Type} [CommRing R] (F : Shv R) {W V U : Scheme.{0}} (g : W ⟶ V) (h : V ⟶ U) (x : Sec F U) :
    Sec.res (g ≫ h) x = Sec.res g (Sec.res h x) := by
  simp [Sec.res]

theorem res_id {R : Type} [CommRing R] (F : Shv R) {U : Scheme.{0}} (x : Sec F U) : Sec.res (𝟙 U) x = x := by
  simp [Sec.res]

theorem res_bij_iso {R : Type} [CommRing R] (F : Shv R) {V U : Scheme.{0}} (e : V ≅ U) :
    Function.Bijective (Sec.res (F := F) e.hom) := by
  refine Function.bijective_iff_has_inverse.2 ⟨Sec.res e.inv, fun x => ?_, fun x => ?_⟩
  · rw [← res_comp, e.inv_hom_id, res_id]
  · rw [← res_comp, e.hom_inv_id, res_id]

theorem twGen_res {q : ℕ} (i : ℤ) {V U : Scheme.{0}} (g : V ⟶ U) (ζ : Prim q Γ(U, ⊤)) :
    Sec.res g (twGen i ζ) = twGen i (Prim.map (Scheme.Γ.map g.op).hom ζ) := by
  have h := congrArg (fun f => f.hom (Submodule.Quotient.mk (Finsupp.single ζ (1 : ULift.{1} (ZMod q))) : (twF q i).obj Γ(U, ⊤)))
    ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)).naturality g.op)
  simp only [ModuleCat.hom_comp] at h
  unfold twGen ofRings.sec
  refine h.symm.trans ?_
  show ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)).app (op V)).hom
    (((Scheme.Γ ⋙ twF q i).map g.op).hom (Submodule.Quotient.mk (Finsupp.single ζ (1 : ULift.{1} (ZMod q))))) = _
  refine congrArg ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)).app (op V)).hom ?_
  change Submodule.Quotient.mk (Finsupp.mapDomain (Prim.map (Scheme.Γ.map g.op).hom) (Finsupp.single ζ (1 : ULift.{1} (ZMod q)))) = _
  exact congrArg _ (Finsupp.mapDomain_single (f := Prim.map (Scheme.Γ.map g.op).hom) (a := ζ) (b := (1 : ULift.{1} (ZMod q))))

theorem res_smul {R : Type} [CommRing R] (F : Shv R) {V U : Scheme.{0}} (g : V ⟶ U) (c : ULift.{1} R) (x : Sec F U) :
    Sec.res g (c • x) = c • Sec.res g x := map_smul (F.obj.map g.op).hom c x

theorem res_spec_bij (hTw : TwSec) (q : ℕ) [NeZero q] {A B : Type} [CommRing A] [CommRing B] (hA : SH A) (hB : SH B)
    (hq : IsUnit (q : A)) (φ : A →+* B) (i : ℤ) :
    Function.Bijective (Sec.res (F := tw q i) (Spec.map (CommRingCat.ofHom φ))) := by
  have hqB : IsUnit (q : B) := by simpa using hq.map φ
  obtain ⟨⟨ζ⟩, hζ⟩ := hTw q A hA hq
  have h1 := hζ i ζ
  have h2 := (hTw q B hB hqB).2 i (Prim.map (Scheme.Γ.map (Spec.map (CommRingCat.ofHom φ)).op).hom ζ)
  have e : (Sec.res (F := tw q i) (Spec.map (CommRingCat.ofHom φ))) ∘
      (fun t : ZMod q => (ULift.up t : ULift.{1} (ZMod q)) • twGen i ζ) =
      fun t : ZMod q => (ULift.up t : ULift.{1} (ZMod q)) •
        twGen i (Prim.map (Scheme.Γ.map (Spec.map (CommRingCat.ofHom φ)).op).hom ζ) := by
    funext t
    simp only [Function.comp]
    rw [res_smul, twGen_res]
    rfl
  exact (Function.Bijective.of_comp_iff _ h1).1 (by rw [e]; exact h2)

theorem res_bij (hTw : TwSec) (q : ℕ) [NeZero q] (i : ℤ) {P Q : Scheme.{0}} (m : P ⟶ Q) {A B : Type} [CommRing A]
    [CommRing B] (hA : SH A) (hB : SH B) (hq : IsUnit (q : A)) (iP : P ≅ Spec (CommRingCat.of B))
    (iQ : Q ≅ Spec (CommRingCat.of A)) : Function.Bijective (Sec.res (F := tw q i) m) := by
  set g' := iP.inv ≫ m ≫ iQ.hom
  have hm : m = iP.hom ≫ Spec.map (CommRingCat.ofHom (Spec.preimage g').hom) ≫ iQ.inv := by
    simp [g']
  have hg := res_spec_bij hTw q hA hB hq (Spec.preimage g').hom i
  have : (Sec.res (F := tw q i) m) = Sec.res iP.hom ∘ Sec.res (Spec.map (CommRingCat.ofHom (Spec.preimage g').hom)) ∘
      Sec.res (F := tw q i) iQ.inv := by
    funext x
    simp only [Function.comp]
    rw [hm, res_comp, res_comp]
  rw [this]
  exact (res_bij_iso _ iP).comp (hg.comp (res_bij_iso _ iQ.symm))

theorem sub_of_iso {R : Type} [CommRing R] (F : Shv R) (n : ℤ) {P : Scheme.{0}} {B : Type} [CommRing B]
    (e : P ≅ Spec (CommRingCat.of B)) (h : Subsingleton (H R (sp B) F n)) : Subsingleton (H R (sch.obj P) F n) := by
  refine ⟨fun x y => ?_⟩
  have hx : ∀ z : H R (sch.obj P) F n, z = pull R (sch.map e.hom) F n (pull R (sch.map e.inv) F n z) := fun z => by
    rw [← pull_comp, ← Functor.map_comp, e.hom_inv_id, CategoryTheory.Functor.map_id, pull_id]
  rw [hx x, hx y, Subsingleton.elim (pull R (sch.map e.inv) F n x) (pull R (sch.map e.inv) F n y)]

theorem bij_of_sub {G G' : Type*} [AddCommGroup G] [AddCommGroup G'] (f : G →+ G') (h : Subsingleton G)
    (h' : Subsingleton G') : Function.Bijective f :=
  ⟨fun a b _ => Subsingleton.elim a b, fun y => ⟨0, Subsingleton.elim _ _⟩⟩

theorem eqv_of (hA9 : A9) (hB2 : B2) (hTw : TwSec) (q : ℕ) [NeZero q] (i : ℤ) {P Q : Scheme.{0}} (m : P ⟶ Q)
    {A B : Type} [CommRing A] [CommRing B] (hA : SH A) (hB : SH B) (hq : IsUnit (q : A))
    (iP : P ≅ Spec (CommRingCat.of B)) (iQ : Q ≅ Spec (CommRingCat.of A)) : Eqv _ (sch.map m) (tw q i) := by
  intro n
  rcases lt_trichotomy n 0 with hn | rfl | hn
  · exact bij_of_sub _ ((hA9 _ (tw q i)).1 _ n hn) ((hA9 _ (tw q i)).1 _ n hn)
  · obtain ⟨e, he, -⟩ := (hA9 _ (tw q i)).2
    have h0 := res_bij hTw q i m hA hB hq iP iQ
    have : (pull _ (sch.map m) (tw q i) 0 : _ → _) = e P ∘ Sec.res m ∘ (e Q).symm := by
      funext x
      simp only [Function.comp]
      rw [← he, AddEquiv.apply_symm_apply]
    rw [this]
    exact (e P).bijective.comp (h0.comp (e Q).symm.bijective)
  · exact bij_of_sub _ (sub_of_iso _ n iQ (hB2 _ A hA _ n hn)) (sub_of_iso _ n iP (hB2 _ B hB _ n hn))

theorem Insep_of (hSH : SHInsep) (hTw : TwSec) : Insep := by
  intro hA9 hB2 hB3 q _ κ K _ _ _ _ hq X p i
  have hqX : IsUnit (q : Γ(X, ⊤)) := by
    have h1 : IsUnit (q : Γ(Spec (CommRingCat.of κ), ⊤)) := by
      simpa using hq.map (Scheme.ΓSpecIso (CommRingCat.of κ)).inv.hom
    simpa using h1.map (p.appTop).hom
  refine hB3 q (pullback.fst p (Spec.map (CommRingCat.ofHom (algebraMap κ K)))) (𝟙 X) hqX i ?_
  intro A _ s hA
  let _ : Algebra κ A := (Spec.preimage (s ≫ p)).hom.toAlgebra
  have hsp : s ≫ p = Spec.map (CommRingCat.ofHom (algebraMap κ A)) := (Spec.map_preimage _).symm
  have hqA : IsUnit (q : A) := by simpa using hq.map (algebraMap κ A)
  refine eqv_of hA9 hB2 hTw q i _ hA (hSH κ K A hA) hqA ?_ (asIso (pullback.snd (𝟙 X) s))
  exact pullback.congrHom (Category.comp_id _) rfl ≪≫ pullbackSymmetry _ _ ≪≫
    pullbackRightPullbackFstIso p _ s ≪≫ pullback.congrHom hsp rfl ≪≫ pullbackSpecIso κ A K

end LateralTheory.KummerTheory.InsepPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.InsepPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.SHInsepHensPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.SHInsepHensPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.SHInsepPf\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteMaximalSpectrumOfFiniteOfIsLocalRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped TensorProduct
open GlobalTheory.EtC IsLocalRing Polynomial

namespace LateralTheory.KummerTheory

theorem hens_root_of_sub {R S : Type*} [CommRing R] [CommRing S] [HenselianLocalRing R] [IsLocalRing S]
    (φ : R →+* S) (hc : (maximalIdeal S).comap φ = maximalIdeal R) (f : S[X]) (hf : f.Monic) (a₀ : S)
    (hlift : ∀ n, f.coeff n ∈ Set.range φ) (ha : a₀ ∈ Set.range φ) (h1 : f.eval a₀ ∈ maximalIdeal S)
    (h2 : IsUnit (f.derivative.eval a₀)) : ∃ a, f.IsRoot a ∧ a - a₀ ∈ maximalIdeal S := by
  obtain ⟨g, hg, -, hgm⟩ := lifts_and_degree_eq_and_monic ((lifts_iff_coeff_lifts f).2 hlift) hf
  obtain ⟨b₀, rfl⟩ := ha
  have hmem : ∀ x, x ∈ maximalIdeal R ↔ φ x ∈ maximalIdeal S := fun x => by rw [← hc]; rfl
  have e1 : φ (g.eval b₀) = f.eval (φ b₀) := by rw [← hg, eval_map, eval₂_at_apply]
  have e2 : φ (g.derivative.eval b₀) = f.derivative.eval (φ b₀) := by
    rw [← hg, derivative_map, eval_map, eval₂_at_apply]
  have hu : IsUnit (g.derivative.eval b₀) := by
    by_contra hu
    have := (hmem _).1 ((mem_maximalIdeal _).2 hu)
    rw [e2] at this
    exact (mem_maximalIdeal _).1 this h2
  obtain ⟨b, hb, hbb⟩ := HenselianLocalRing.is_henselian g hgm b₀ ((hmem _).2 (e1 ▸ h1)) hu
  refine ⟨φ b, ?_, ?_⟩
  · rw [IsRoot.def] at hb ⊢
    rw [← hg, eval_map, eval₂_at_apply, hb, map_zero]
  · rw [← map_sub]; exact (hmem _).1 hbb

abbrev incMap (κ K A : Type) [Field κ] [Field K] [Algebra κ K] [CommRing A] [Algebra κ A]
    (L : IntermediateField κ K) : A ⊗[κ] L →ₐ[A] A ⊗[κ] K :=
  Algebra.TensorProduct.map (AlgHom.id A A) L.val

theorem incMap_mono {κ K A : Type} [Field κ] [Field K] [Algebra κ K] [CommRing A] [Algebra κ A]
    {L L' : IntermediateField κ K} (h : L ≤ L') {x : A ⊗[κ] K} (hx : x ∈ (incMap κ K A L).range) :
    x ∈ (incMap κ K A L').range := by
  obtain ⟨y, rfl⟩ := hx
  refine ⟨Algebra.TensorProduct.map (AlgHom.id A A) (IntermediateField.inclusion h) y, ?_⟩
  have : (incMap κ K A L').comp (Algebra.TensorProduct.map (AlgHom.id A A) (IntermediateField.inclusion h))
      = incMap κ K A L := Algebra.TensorProduct.ext' (fun a l => by simp)
  exact congrArg (fun F : A ⊗[κ] L →ₐ[A] A ⊗[κ] K => F y) this

theorem exists_fd_range {κ K A : Type} [Field κ] [Field K] [Algebra κ K] [Algebra.IsIntegral κ K] [CommRing A]
    [Algebra κ A] (s : Finset (A ⊗[κ] K)) :
    ∃ L : IntermediateField κ K, FiniteDimensional κ L ∧ ∀ x ∈ s, x ∈ (incMap κ K A L).range := by
  have one : ∀ x : A ⊗[κ] K, ∃ L : IntermediateField κ K, FiniteDimensional κ L ∧ x ∈ (incMap κ K A L).range := by
    intro x
    induction x using TensorProduct.induction_on with
    | zero => exact ⟨⊥, inferInstance, zero_mem _⟩
    | tmul a k =>
      refine ⟨IntermediateField.adjoin κ {k},
        IntermediateField.adjoin.finiteDimensional (Algebra.IsIntegral.isIntegral k), ?_⟩
      exact ⟨a ⊗ₜ ⟨k, IntermediateField.mem_adjoin_simple_self κ k⟩, by simp⟩
    | add x y hx hy =>
      obtain ⟨L₁, h₁, hx⟩ := hx
      obtain ⟨L₂, h₂, hy⟩ := hy
      exact ⟨L₁ ⊔ L₂, inferInstance, add_mem (incMap_mono le_sup_left hx) (incMap_mono le_sup_right hy)⟩
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨⊥, inferInstance, by simp⟩
  | insert a s _ ih =>
    obtain ⟨L₁, h₁, ha⟩ := one a
    obtain ⟨L₂, h₂, hs⟩ := ih
    refine ⟨L₁ ⊔ L₂, inferInstance, ?_⟩
    intro x hx
    rcases Finset.mem_insert.1 hx with rfl | hx
    · exact incMap_mono le_sup_left ha
    · exact incMap_mono le_sup_right (hs x hx)

theorem SHInsepHens_of (hL : SHInsepLoc) : SHInsepHens := by
  intro κ K A _ _ _ _ _ _ hA _
  have hA' := hA
  obtain ⟨_, -⟩ := hA'
  refine { toIsLocalRing := inferInstance, is_henselian := ?_ }
  intro f hf a₀ h1 h2
  classical
  obtain ⟨L, hFD, hs⟩ := exists_fd_range (A := A) (insert a₀ (f.support.image f.coeff))
  have : IsLocalRing (A ⊗[κ] L) := hL κ L A hA
  have : HenselianLocalRing (A ⊗[κ] L) := GlobalTheory.henselianLocalRing_of_finite A _
  have hint : (incMap κ K A L).toRingHom.IsIntegral := by
    refine RingHom.IsIntegral.tower_top (algebraMap A (A ⊗[κ] L)) _ ?_
    have e : (incMap κ K A L).toRingHom.comp (algebraMap A (A ⊗[κ] L)) = algebraMap A (A ⊗[κ] K) :=
      (incMap κ K A L).comp_algebraMap
    rw [e]
    exact fun x => Algebra.IsIntegral.isIntegral (R := A) x
  have hc : (maximalIdeal (A ⊗[κ] K)).comap (incMap κ K A L).toRingHom = maximalIdeal (A ⊗[κ] L) :=
    IsLocalRing.eq_maximalIdeal (Ideal.isMaximal_comap_of_isIntegral_of_isMaximal' _ hint _)
  refine hens_root_of_sub (incMap κ K A L).toRingHom hc f hf a₀ ?_ ?_ h1 h2
  · intro n
    by_cases hn : n ∈ f.support
    · exact (AlgHom.mem_range _).1 (hs _ (Finset.mem_insert_of_mem (Finset.mem_image_of_mem _ hn)))
    · exact ⟨0, by simp [Polynomial.notMem_support_iff.1 hn]⟩
  · exact (AlgHom.mem_range _).1 (hs _ (Finset.mem_insert_self _ _))

end LateralTheory.KummerTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.SHInsepHensPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.SHInsepLocPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.SHInsepLocPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.SHInsepPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped TensorProduct

namespace LateralTheory.KummerTheory

section
variable {κ K : Type} [Field κ] [Field K] [Algebra κ K]

theorem shl_nontriv (B : Type) [CommRing B] [Nontrivial B] [Algebra κ B] : Nontrivial (B ⊗[κ] K) :=
  TensorProduct.nontrivial_of_linearMap_injective_of_flat_right κ B K (Algebra.linearMap κ B)
    (algebraMap κ B).injective

variable [IsPurelyInseparable κ K] {A : Type} [CommRing A] [Algebra κ A]

theorem shl_pow (q : ℕ) [ExpChar κ q] [ExpChar (A ⊗[κ] K) q] (y : A ⊗[κ] K) :
    ∃ n : ℕ, ∃ a : A, y ^ q ^ n = algebraMap A (A ⊗[κ] K) a := by
  induction y using TensorProduct.induction_on with
  | zero => exact ⟨0, 0, by simp⟩
  | tmul a k =>
    obtain ⟨n, c, hc⟩ := (isPurelyInseparable_iff_pow_mem κ q).1 inferInstance k
    refine ⟨n, c • a ^ q ^ n, ?_⟩
    rw [Algebra.TensorProduct.tmul_pow, ← hc, Algebra.algebraMap_eq_smul_one, TensorProduct.tmul_smul,
      Algebra.TensorProduct.algebraMap_apply]
    simp [TensorProduct.smul_tmul']
  | add x y hx hy =>
    obtain ⟨n, a, ha⟩ := hx
    obtain ⟨m, b, hb⟩ := hy
    refine ⟨n + m, a ^ q ^ m + b ^ q ^ n, ?_⟩
    rw [add_pow_expChar_pow, map_add (f := _), map_pow, map_pow, ← ha, ← hb, ← pow_mul, ← pow_mul, ← pow_add,
      ← pow_add, add_comm m n]

end

theorem SHInsepLoc_of : SHInsepLoc := by
  intro κ K A _ _ _ _ _ _ hA
  obtain ⟨hH, _⟩ := hA
  have : IsLocalRing A := hH.toIsLocalRing
  obtain ⟨q, hq⟩ := ExpChar.exists κ
  have : Nontrivial (A ⊗[κ] K) := shl_nontriv A
  have : ExpChar (A ⊗[κ] K) q := expChar_of_injective_algebraMap (algebraMap κ _).injective q
  have hqpos : ∀ n : ℕ, q ^ n ≠ 0 := fun n => pow_ne_zero _ (expChar_pos κ q).ne'

  have hm : ∀ a ∈ IsLocalRing.maximalIdeal A, ¬ IsUnit (algebraMap A (A ⊗[κ] K) a) := by
    intro a ha hu
    have : Nontrivial ((A ⧸ IsLocalRing.maximalIdeal A) ⊗[κ] K) := shl_nontriv _
    let φ := Algebra.TensorProduct.map (Ideal.Quotient.mkₐ κ (IsLocalRing.maximalIdeal A)) (AlgHom.id κ K)
    have h0 : φ (algebraMap A (A ⊗[κ] K) a) = 0 := by
      simp [φ, Algebra.TensorProduct.algebraMap_apply, Ideal.Quotient.eq_zero_iff_mem.2 ha]
    have := hu.map φ
    rw [h0] at this
    exact not_isUnit_zero this
  have hkey : ∀ y : A ⊗[κ] K, ¬ IsUnit y →
      ∃ n : ℕ, ∃ a ∈ IsLocalRing.maximalIdeal A, y ^ q ^ n = algebraMap A (A ⊗[κ] K) a := by
    intro y hy
    obtain ⟨n, a, ha⟩ := shl_pow q y
    refine ⟨n, a, ?_, ha⟩
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    exact hy ((isUnit_pow_iff (hqpos n)).1 (ha ▸ hu.map _))
  refine IsLocalRing.of_nonunits_add ?_
  intro x y hx hy hxy
  obtain ⟨n, a, ha, hxa⟩ := hkey x hx
  obtain ⟨m, b, hb, hyb⟩ := hkey y hy
  apply hm (a ^ q ^ m + b ^ q ^ n)
  · exact Ideal.add_mem _ (Ideal.pow_mem_of_mem _ ha _ (Nat.pos_of_ne_zero (hqpos m)))
      (Ideal.pow_mem_of_mem _ hb _ (Nat.pos_of_ne_zero (hqpos n)))
  · have : (x + y) ^ q ^ (n + m) = algebraMap A (A ⊗[κ] K) (a ^ q ^ m + b ^ q ^ n) := by
      rw [add_pow_expChar_pow, map_add (f := _), map_pow, map_pow, ← hxa, ← hyb, ← pow_mul, ← pow_mul, ← pow_add,
        ← pow_add, add_comm m n]
    rw [← this]
    exact hxy.pow _

end LateralTheory.KummerTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.SHInsepLocPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.SHInsepResPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.SHInsepResPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.SHInsepPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped TensorProduct
open Polynomial

namespace LateralTheory.KummerTheory

section
variable (κ K A : Type) [Field κ] [Field K] [Algebra κ K] [IsPurelyInseparable κ K] [CommRing A]
  [Algebra κ A]

theorem shInsepRes_pow [Nontrivial (A ⊗[κ] K)] (y : A ⊗[κ] K) :
    ∃ n : ℕ, ∃ a : A, y ^ (ringExpChar κ) ^ n = algebraMap A (A ⊗[κ] K) a := by
  set q := ringExpChar κ
  have : ExpChar (A ⊗[κ] K) q :=
    expChar_of_injective_algebraMap (algebraMap κ (A ⊗[κ] K)).injective q
  induction y using TensorProduct.induction_on with
  | zero => exact ⟨0, 0, by simp⟩
  | tmul a k =>
    obtain ⟨n, c, hc⟩ := IsPurelyInseparable.pow_mem κ q k
    refine ⟨n, c • a ^ q ^ n, ?_⟩
    rw [Algebra.TensorProduct.tmul_pow, ← hc]
    show (a ^ q ^ n) ⊗ₜ[κ] (algebraMap κ K c) = (c • a ^ q ^ n) ⊗ₜ[κ] (1 : K)
    rw [Algebra.algebraMap_eq_smul_one, TensorProduct.tmul_smul, TensorProduct.smul_tmul']
  | add x y hx hy =>
    obtain ⟨n, a, ha⟩ := hx
    obtain ⟨m, b, hb⟩ := hy
    refine ⟨n + m, a ^ q ^ m + b ^ q ^ n, ?_⟩
    rw [add_pow_expChar_pow, map_add (f := _), map_pow, map_pow, ← ha, ← hb, ← pow_mul, ← pow_mul, ← pow_add,
      ← pow_add, add_comm m n]

omit [IsPurelyInseparable κ K] in
theorem shInsepRes_inj : Function.Injective (algebraMap A (A ⊗[κ] K)) :=
  Algebra.TensorProduct.includeLeft_injective (S := A) (algebraMap κ K).injective

theorem shInsepRes_localHom [Nontrivial (A ⊗[κ] K)] : IsLocalHom (algebraMap A (A ⊗[κ] K)) := by
  refine ⟨fun a ha => ?_⟩
  obtain ⟨u, hu⟩ := ha
  obtain ⟨n, b, hb⟩ := shInsepRes_pow κ K A (↑u⁻¹ : A ⊗[κ] K)
  have hQ : (ringExpChar κ) ^ n ≠ 0 := pow_ne_zero _ (expChar_pos κ (ringExpChar κ)).ne'
  have h1 : algebraMap A (A ⊗[κ] K) (a ^ (ringExpChar κ) ^ n * b) = algebraMap A (A ⊗[κ] K) 1 := by
    rw [map_mul, map_pow, ← hb, ← hu, ← mul_pow, Units.mul_inv, one_pow, map_one]
  have h2 := shInsepRes_inj κ K A h1
  exact (isUnit_pow_iff hQ).mp (isUnit_of_mul_isUnit_left (h2 ▸ isUnit_one))

end

theorem SHInsepRes_of : SHInsepRes := by
  intro κ K A _ _ _ _ _ _ hA _
  obtain ⟨hh, hsc⟩ := hA
  have : IsLocalRing A := hh.toIsLocalRing
  have : IsLocalHom (algebraMap A (A ⊗[κ] K)) := shInsepRes_localHom κ K A
  let _ : Algebra (IsLocalRing.ResidueField A) (IsLocalRing.ResidueField (A ⊗[κ] K)) :=
    (IsLocalRing.ResidueField.map (algebraMap A (A ⊗[κ] K))).toAlgebra
  have : Algebra.IsAlgebraic (IsLocalRing.ResidueField A) (IsLocalRing.ResidueField (A ⊗[κ] K)) := by
    constructor
    intro x
    obtain ⟨y, rfl⟩ := IsLocalRing.residue_surjective x
    obtain ⟨n, a, ha⟩ := shInsepRes_pow κ K A y
    have hQ : 0 < (ringExpChar κ) ^ n := pow_pos (expChar_pos κ (ringExpChar κ)) _
    refine ⟨X ^ (ringExpChar κ) ^ n - C (IsLocalRing.residue A a), X_pow_sub_C_ne_zero hQ _, ?_⟩
    rw [map_sub, map_pow, aeval_X, aeval_C, ← map_pow, ha, sub_eq_zero]
    rfl
  exact Algebra.IsAlgebraic.isSepClosed (F := IsLocalRing.ResidueField A)

end LateralTheory.KummerTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.SHInsepResPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.SHInvPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.SHInvPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.InjSlice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.KummerTheory

theorem shinv_eqv_of_iso {R : Type} [CommRing R] {E E' : Spc} (f : E ⟶ E') [IsIso f] (F : Shv R) : Eqv R f F := by
  intro n
  refine Function.bijective_iff_has_inverse.2 ⟨pull R (inv f) F n, fun x => ?_, fun x => ?_⟩
  · rw [← pull_comp, IsIso.inv_hom_id, pull_id]
  · rw [← pull_comp, IsIso.hom_inv_id, pull_id]

theorem shinv_pull_comp_fun {R : Type} [CommRing R] {E E' E'' : Spc} (f : E ⟶ E') (g : E' ⟶ E'') (F : Shv R) (n : ℤ) :
    (pull R (f ≫ g) F n : H R E'' F n → H R E F n) = pull R f F n ∘ pull R g F n := by
  funext x; exact pull_comp R f g F n x

theorem shinv_eqv_comp {R : Type} [CommRing R] {E E' E'' : Spc} {f : E ⟶ E'} {g : E' ⟶ E''} {F : Shv R}
    (hf : Eqv R f F) (hg : Eqv R g F) : Eqv R (f ≫ g) F := by
  intro n; rw [shinv_pull_comp_fun]; exact (hf n).comp (hg n)

theorem shinv_eqv_right {R : Type} [CommRing R] {E E' E'' : Spc} {f : E ⟶ E'} {g : E' ⟶ E''} {F : Shv R}
    (hf : Eqv R f F) (hfg : Eqv R (f ≫ g) F) : Eqv R g F := by
  intro n; have := hfg n; rw [shinv_pull_comp_fun] at this
  exact (Function.Bijective.of_comp_iff' (hf n) _).1 this

theorem SHInv_of (hAlgExt : AlgExt) (hInsep : Insep) : SHInv := by
  intro hA9 hB2 hB3 hE2 hE3 q _ k _ _ hq X p _ _ A s hSH i
  obtain ⟨hHL, hsc⟩ := hSH
  have hqA : IsUnit (q : A) := by simpa using hq.map s.hom
  have hqκ : IsUnit (q : IsLocalRing.ResidueField A) := by simpa using hqA.map (IsLocalRing.residue A)
  haveI : IsPurelyInseparable (IsLocalRing.ResidueField A) (AlgebraicClosure (IsLocalRing.ResidueField A)) :=
    (isSepClosed_iff_isPurelyInseparable_algebraicClosure _ _).mp hsc
  let res := Spec.map (CommRingCat.ofHom (IsLocalRing.residue A))
  let alg := Spec.map (CommRingCat.ofHom (algebraMap (IsLocalRing.ResidueField A)
    (AlgebraicClosure (IsLocalRing.ResidueField A))))
  let pA := pullback.snd p (Spec.map s)
  have h1 : Eqv _ (sch.map (pullback.fst pA res)) (tw q i) := hE2 q A ⟨hHL, hsc⟩ hqA pA i
  have h2 : Eqv _ (sch.map (pullback.fst (pullback.snd pA res) alg)) (tw q i) :=
    hInsep hA9 hB2 hB3 q _ _ hqκ (pullback.snd pA res) i
  let f : k →+* AlgebraicClosure (IsLocalRing.ResidueField A) :=
    (algebraMap (IsLocalRing.ResidueField A) _).comp ((IsLocalRing.residue A).comp s.hom)
  have h3 := hAlgExt hE2 hE3 q k _ f hq p i
  have hf : Spec.map (CommRingCat.ofHom f) = (alg ≫ res) ≫ Spec.map s := by
    simp only [alg, res, ← Spec.map_comp]; rfl
  have h3' : Eqv _ (sch.map (pullback.fst p ((alg ≫ res) ≫ Spec.map s))) (tw q i) := by
    have key : ∀ g, g = (alg ≫ res) ≫ Spec.map s → Eqv _ (sch.map (pullback.fst p g)) (tw q i) →
        Eqv _ (sch.map (pullback.fst p ((alg ≫ res) ≫ Spec.map s))) (tw q i) := by
      intro g hg h; subst hg; exact h
    exact key _ hf h3
  have hcomp : pullback.fst (pullback.snd pA res) alg ≫ pullback.fst pA res ≫ pullback.fst p (Spec.map s) =
      ((pullbackLeftPullbackSndIso pA res alg).hom ≫ (pullbackLeftPullbackSndIso p (Spec.map s) (alg ≫ res)).hom) ≫
        pullback.fst p ((alg ≫ res) ≫ Spec.map s) := by
    rw [Category.assoc, pullbackLeftPullbackSndIso_hom_fst p (Spec.map s) (alg ≫ res)]
    erw [← Category.assoc (pullbackLeftPullbackSndIso pA res alg).hom, pullbackLeftPullbackSndIso_hom_fst pA res alg]
    rw [Category.assoc]
  have hall : Eqv _ (sch.map (pullback.fst (pullback.snd pA res) alg) ≫ sch.map (pullback.fst pA res) ≫
      sch.map (pullback.fst p (Spec.map s))) (tw q i) := by
    rw [← Functor.map_comp, ← Functor.map_comp, hcomp, Functor.map_comp]
    exact shinv_eqv_comp (shinv_eqv_of_iso _ _) h3'
  exact shinv_eqv_right h1 (shinv_eqv_right h2 hall)

end LateralTheory.KummerTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.SHInvPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.FinSHInv =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.FinSHInv", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.PlaceStepPf\npublic import Development.EtaleCohomology.KummerTheory.SHInsepPf\npublic import Development.EtaleCohomology.KummerTheory.SecSHPf\npublic import Development.EtaleCohomology.KummerTheory.AlgExtPf\npublic import Development.EtaleCohomology.KummerTheory.InsepPf\npublic import Development.EtaleCohomology.KummerTheory.PlaceExPfZorn\npublic import Development.EtaleCohomology.KummerTheory.PlacePfVal\npublic import Development.EtaleCohomology.KummerTheory.PlaceResGoodPf\npublic import Development.EtaleCohomology.KummerTheory.PrimTorsPf\npublic import Development.EtaleCohomology.KummerTheory.SHInsepHensPf\npublic import Development.EtaleCohomology.KummerTheory.SHInsepLocPf\npublic import Development.EtaleCohomology.KummerTheory.SHInsepResPf\npublic import Development.EtaleCohomology.KummerTheory.SHInvPf\npublic import Development.EtaleCohomology.KummerTheory.ShSectPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.SHInv
theorem etale_cohomology_place_localization_inductive_extension : LateralTheory.KummerTheory.PlaceStep := by
  apply LateralTheory.KummerTheory.PlaceStep_of <;> first | exact _root_.LateralTheory.KummerTheory.PlaceResGood_of
theorem etale_cohomology_place_localization_exists : LateralTheory.KummerTheory.PlaceEx := by
  apply LateralTheory.KummerTheory.PlaceEx_of_step <;> first | exact etale_cohomology_place_localization_inductive_extension
theorem etale_cohomology_place_localization_holds : LateralTheory.KummerTheory.Place := by
  apply LateralTheory.KummerTheory.Place_of_ex <;> first | exact etale_cohomology_place_localization_exists
theorem etale_cohomology_algebraic_extension_invariance_of_places : LateralTheory.KummerTheory.AlgExt := by
  apply LateralTheory.KummerTheory.AlgExt_of <;> first | exact etale_cohomology_place_localization_holds
theorem etale_strict_henselization_inseparable_henselian_pair_in_henselization : LateralTheory.KummerTheory.SHInsepHens := by
  apply LateralTheory.KummerTheory.SHInsepHens_of <;> first | exact _root_.LateralTheory.KummerTheory.SHInsepLoc_of
theorem etale_strict_henselization_inseparable_invariance_in_henselization_inv : LateralTheory.KummerTheory.SHInsep := by
  apply LateralTheory.KummerTheory.SHInsep_of <;> first | exact _root_.LateralTheory.KummerTheory.SHInsepLoc_of | exact etale_strict_henselization_inseparable_henselian_pair_in_henselization | exact _root_.LateralTheory.KummerTheory.SHInsepRes_of
theorem etale_sections_over_strict_henselization_in_henselization_invariance_a : LateralTheory.KummerTheory.SecSH := by
  apply LateralTheory.KummerTheory.SecSH_of <;> first | exact _root_.LateralTheory.KummerTheory.ShSectPf.ShSect_of
theorem etale_twisted_sections_cohomology_isomorphism_in_henselization_invaria : LateralTheory.KummerTheory.TwSec := by
  apply LateralTheory.KummerTheory.TwSec_of <;> first | exact _root_.LateralTheory.KummerTheory.PrimTors_of | exact etale_sections_over_strict_henselization_in_henselization_invariance_a
theorem etale_purely_inseparable_extension_cohomology_invariant_in_henselizati : LateralTheory.KummerTheory.Insep := by
  apply LateralTheory.KummerTheory.InsepPf.Insep_of <;> first | exact etale_strict_henselization_inseparable_invariance_in_henselization_inv | exact etale_twisted_sections_cohomology_isomorphism_in_henselization_invaria
theorem etale_strict_henselization_invariance_of_cohomology_in_henselization_i : LateralTheory.KummerTheory.SHInv := by
  apply LateralTheory.KummerTheory.SHInv_of <;> first | exact etale_cohomology_algebraic_extension_invariance_of_places | exact etale_purely_inseparable_extension_cohomology_invariant_in_henselizati
alias intersectionNumber_baseChange := _root_.LateralTheory.Fin.SHInv.etale_strict_henselization_invariance_of_cohomology_in_henselization_i
end LateralTheory.Fin.SHInv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.FinSHInv =====
