module

public import Development.EtaleCohomology.TateTwists.EtaleTateTwistGeneratorMapIsIsoOfInjSurj

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.EtaleTensorPairingSectionsLocallyFiniteSums, Development.EtaleCohomology.TateTwists.EtaleTateTwistLocalGenerationAndRootCompatOfPart

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleTensorPairingSectionsLocallyFiniteSums =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleTensorPairingSectionsLocallyFiniteSums", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleTateTwistGeneratorMapIsIsoOfInjSurj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

noncomputable section

def LateralTheory.EtaleFoundations.EtaleTensorPairingSectionsLocallyFiniteSums : Prop :=
  ∀ (R : Type) [CommRing R] (F G T : Shv R) (μ : Pair (sgl F) (sgl G) (sgl T)), μ.IsTensor →
    ∀ (U : Scheme.{0}) (y : Sec ((sgl T).X 0) U), Loc U fun V g => ∃ (n : ℕ) (a : Fin n → Sec F V) (b : Fin n → Sec G V),
      Sec.res g y = ∑ m, μ.mul V 0 0 0 (add_zero 0) (Sec.map (sglι F) (a m)) (Sec.map (sglι G) (b m))

def LateralTheory.EtaleFoundations.EtaleTateTwistGeneratorMapHitsProductsLocally : Prop :=
  ∀ (q : ℕ) [NeZero q] (i j k : ℤ) (T : Shv (ZMod q)) (μ : Pair (sgl (tw q i)) (sgl (tw q j)) (sgl T)),
    i + j = k → ∀ φ : tw q k ⟶ T, (∀ (U : Scheme.{0}) (ζ : Prim q Γ(U, ⊤)),
      Sec.map (sglι T) (Sec.map φ (twGen k ζ)) =
        μ.mul U 0 0 0 (add_zero 0) (Sec.map (sglι _) (twGen i ζ)) (Sec.map (sglι _) (twGen j ζ))) →
    ∀ (U : Scheme.{0}) (a : Sec (tw q i) U) (b : Sec (tw q j) U), Loc U fun V g => ∃ c : Sec (tw q k) V,
      Sec.map (sglι T) (Sec.map φ c) =
        μ.mul V 0 0 0 (add_zero 0) (Sec.map (sglι _) (Sec.res g a)) (Sec.map (sglι _) (Sec.res g b))

namespace LateralTheory.EtaleFoundations.GenIsoSurjPf

variable {R : Type} [CommRing R]

alias loc_mono' := _root_.LateralTheory.EtaleFoundations.TwMulPf.loc_mono

theorem loc_top' {U : Scheme.{0}} {P : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} (h : ∀ V g, P V g) : Loc U P :=
  ⟨⊤, Scheme.etaleTopology.top_mem U, fun V g _ => h V g⟩

theorem loc_and' {U : Scheme.{0}} {P Q : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} (hP : Loc U P) (hQ : Loc U Q) :
    Loc U fun V g => P V g ∧ Q V g := by
  obtain ⟨S, hS, h⟩ := hP
  obtain ⟨T, hT, h'⟩ := hQ
  exact ⟨S ⊓ T, Scheme.etaleTopology.intersection_covering hS hT, fun V g hg => ⟨h V g hg.1, h' V g hg.2⟩⟩

theorem loc_bind' {U : Scheme.{0}} {P : ∀ V : Scheme.{0}, (V ⟶ U) → Prop}
    (h : Loc U fun V g => Loc V fun W k => P W (k ≫ g)) : Loc U P := by
  obtain ⟨S, hS, h'⟩ := h
  choose T hT hP using h'
  refine ⟨Sieve.bind S.arrows fun V g hg => T V g hg, Scheme.etaleTopology.bind_covering hS hT, ?_⟩
  rintro W f ⟨V, k, g, hg, hk, rfl⟩
  exact hP V g hg W k hk

theorem loc_fin {U : Scheme.{0}} : ∀ (n : ℕ) (P : Fin n → ∀ V : Scheme.{0}, (V ⟶ U) → Prop),
    (∀ m, Loc U (P m)) → Loc U fun V g => ∀ m, P m V g
  | 0, _, _ => loc_top' fun _ _ m => m.elim0
  | n + 1, P, h => loc_mono' (loc_and' (h 0) (loc_fin n (fun m => P m.succ) fun m => h m.succ))
      fun _ _ hv m => Fin.cases hv.1 hv.2 m

theorem res_res {F : Shv R} {W V U : Scheme.{0}} (k : W ⟶ V) (g : V ⟶ U) (x : Sec F U) :
    Sec.res k (Sec.res g x) = Sec.res (k ≫ g) x := by
  simp [Sec.res]

alias res_map := _root_.LateralTheory.EtaleFoundations.TwMulPf.sec_res_map

theorem sglι_inj (F : Shv R) {U : Scheme.{0}} {x y : Sec F U}
    (h : Sec.map (sglι F) x = Sec.map (sglι F) y) : x = y := by
  have e : ∀ z : Sec F U, Sec.map (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).hom
      (Sec.map (sglι F) z) = z := by
    intro z
    change Sec.map (sglι F ≫ (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).hom) z = z
    rw [sglι]
    erw [Iso.inv_hom_id]
    exact _root_.LateralTheory.EtaleFoundations.TwMulPf.sec_map_id z
  rw [← e x, ← e y, h]

end LateralTheory.EtaleFoundations.GenIsoSurjPf

namespace LateralTheory.EtaleFoundations.GenIsoSurjPf

variable {R : Type} [CommRing R]

theorem sec_zero_of_isZero {F : Shv R} (hF : IsZero F) {U : Scheme.{0}} (x : Sec F U) : x = 0 := by
  have h1 : Sec.map (𝟙 F) x = Sec.map (0 : F ⟶ F) x := by rw [hF.eq_of_src (𝟙 F) 0]
  rw [_root_.LateralTheory.EtaleFoundations.TwMulPf.sec_map_id] at h1
  rw [h1]
  simp [Sec.map]

theorem sglι_surj (F : Shv R) {U : Scheme.{0}} (y : Sec ((sgl F).X 0) U) : ∃ a : Sec F U, Sec.map (sglι F) a = y := by
  refine ⟨Sec.map (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).hom y, ?_⟩
  change Sec.map ((HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).hom ≫ sglι F) y = y
  rw [sglι]
  erw [Iso.hom_inv_id]
  exact _root_.LateralTheory.EtaleFoundations.TwMulPf.sec_map_id y

def IsSum {F G T : Shv R} (μ : Pair (sgl F) (sgl G) (sgl T)) (V : Scheme.{0}) (z : Sec ((sgl T).X 0) V) : Prop :=
  ∃ (n : ℕ) (a : Fin n → Sec F V) (b : Fin n → Sec G V),
    z = ∑ m, μ.mul V 0 0 0 (add_zero 0) (Sec.map (sglι F) (a m)) (Sec.map (sglι G) (b m))

theorem isSum_zero {F G T : Shv R} (μ : Pair (sgl F) (sgl G) (sgl T)) (V : Scheme.{0}) : IsSum μ V 0 :=
  ⟨0, Fin.elim0, Fin.elim0, by simp⟩

theorem isSum_add {F G T : Shv R} (μ : Pair (sgl F) (sgl G) (sgl T)) (V : Scheme.{0}) {z w : Sec ((sgl T).X 0) V}
    (hz : IsSum μ V z) (hw : IsSum μ V w) : IsSum μ V (z + w) := by
  obtain ⟨n, a, b, rfl⟩ := hz
  obtain ⟨n', a', b', rfl⟩ := hw
  refine ⟨n + n', Fin.append a a', Fin.append b b', ?_⟩
  rw [Fin.sum_univ_add]
  simp [Fin.append_left, Fin.append_right]

theorem isSum_lift {F G T : Shv R} (μ : Pair (sgl F) (sgl G) (sgl T)) (V : Scheme.{0})
    (x : Tens (sgl F) (sgl G) V 0) : IsSum μ V (μ.lift V 0 x) := by
  classical
  induction x using DirectSum.induction_on with
  | zero => simpa using isSum_zero μ V
  | add x y hx hy => simpa using isSum_add μ V hx hy
  | of p t =>
    obtain ⟨⟨s, u⟩, hsu⟩ := p
    have hl : μ.lift V 0 (DirectSum.of _ ⟨⟨s, u⟩, hsu⟩ t) = TensorProduct.lift (μ.mul V s u 0 hsu) t := by
      simp [Pair.lift, ← DirectSum.lof_eq_of (ULift.{1} R)]
    rw [hl]
    clear hl
    induction t using TensorProduct.induction_on with
    | zero => simpa using isSum_zero μ V
    | add x y hx hy => simpa using isSum_add μ V hx hy
    | tmul a b =>
      simp only [TensorProduct.lift.tmul]
      by_cases hs : s = 0
      · subst hs
        have hu : u = 0 := by simpa using hsu
        subst hu
        obtain ⟨a', rfl⟩ := sglι_surj F a
        obtain ⟨b', rfl⟩ := sglι_surj G b
        exact ⟨1, fun _ => a', fun _ => b', by simp⟩
      · have ha : a = 0 := sec_zero_of_isZero
          (HomologicalComplex.isZero_single_obj_X (ComplexShape.up ℤ) 0 F s hs) a
        rw [ha]
        simpa using isSum_zero μ V

theorem etale_tensor_pairing_sections_locally_finite_sums : LateralTheory.EtaleFoundations.EtaleTensorPairingSectionsLocallyFiniteSums := by
  intro R _ F G T μ hμ U y
  refine loc_mono' (hμ.1 U 0 y) fun V g ⟨x, hx⟩ => ?_
  obtain ⟨n, a, b, h⟩ := isSum_lift μ V x
  exact ⟨n, a, b, hx ▸ h⟩

end LateralTheory.EtaleFoundations.GenIsoSurjPf

open LateralTheory.EtaleFoundations.GenIsoSurjPf in
theorem LateralTheory.EtaleFoundations.etale_tate_twist_generator_map_locally_surjective_of_pairs (hp : LateralTheory.EtaleFoundations.EtaleTateTwistGeneratorMapHitsProductsLocally) : LateralTheory.EtaleFoundations.EtaleTateTwistGeneratorMapLocallySurjective := by
  intro q _ i j k T μ hμ hk φ hφ U b
  refine loc_bind' (loc_mono' (etale_tensor_pairing_sections_locally_finite_sums (ZMod q) _ _ _ μ hμ U (Sec.map (sglι T) b)) fun V g ⟨n, a, c, hy⟩ => ?_)
  refine loc_mono' (loc_fin n _ fun m => hp q i j k T μ hk φ hφ V (a m) (c m)) fun W h hW => ?_
  choose e he using hW
  refine ⟨∑ m, e m, sglι_inj T ?_⟩
  rw [← res_map, ← res_res, hy]

  simp only [map_sum, he, μ.nat, res_map]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleTensorPairingSectionsLocallyFiniteSums =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleTateTwistLocalGenerationAndRootCompatOfPart =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleTateTwistLocalGenerationAndRootCompatOfPart", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleTensorPairingSectionsLocallyFiniteSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

noncomputable section

def LateralTheory.EtaleFoundations.EtaleTateTwistSectionsLocallyMultiplesOfGenerator : Prop :=
  ∀ (q : ℕ) [NeZero q] (i : ℤ) (U : Scheme.{0}) (a : Sec (tw q i) U),
    Loc U fun V g => Sec.res g a = 0 ∨ ∃ (ζ : Prim q Γ(V, ⊤)) (c : ℕ), Sec.res g a = c • twGen i ζ

def LateralTheory.EtaleFoundations.EtaleTateTwistGeneratorRestrictionAndRootChange : Prop :=
  ∀ (q : ℕ) [NeZero q] (j : ℤ),
    (∀ (V U : Scheme.{0}) (g : V ⟶ U) (ζ : Prim q Γ(U, ⊤)), Sec.res g (twGen j ζ) = twGen j (ζ.map g.appTop.hom)) ∧
    ∀ (U : Scheme.{0}) (ζ ξ : Prim q Γ(U, ⊤)), Loc U fun _ g => ∃ c : ℕ, Sec.res g (twGen j ξ) = c • twGen j (ζ.map g.appTop.hom)

namespace LateralTheory.EtaleFoundations.GenIsoSurjPf
theorem res_nsmul {R : Type} [CommRing R] {F : Shv R} {V U : Scheme.{0}} (g : V ⟶ U) (c : ℕ) (x : Sec F U) :
    Sec.res g (c • x) = c • Sec.res g x := by
  simp [Sec.res]

theorem map_nsmul' {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {U : Scheme.{0}} (c : ℕ) (x : Sec F U) :
    Sec.map φ (c • x) = c • Sec.map φ x := by
  simp [Sec.map]
end LateralTheory.EtaleFoundations.GenIsoSurjPf

open LateralTheory.EtaleFoundations.GenIsoSurjPf in
theorem LateralTheory.EtaleFoundations.etale_tate_twist_generator_map_hits_products_locally (hl : LateralTheory.EtaleFoundations.EtaleTateTwistSectionsLocallyMultiplesOfGenerator)
    (hr : LateralTheory.EtaleFoundations.EtaleTateTwistGeneratorRestrictionAndRootChange) : LateralTheory.EtaleFoundations.EtaleTateTwistGeneratorMapHitsProductsLocally := by
  intro q _ i j k T μ hk φ hφ U a b
  refine loc_bind' (loc_mono' (loc_and' (hl q i U a) (hl q j U b)) fun V g hab => ?_)
  rcases hab with ⟨ha | ⟨ζ, c, ha⟩, hb | ⟨ξ, d, hb⟩⟩
  · exact loc_top' fun W h => ⟨0, by rw [← res_res, ha]; simp⟩
  · exact loc_top' fun W h => ⟨0, by rw [← res_res, ha]; simp⟩
  · exact loc_top' fun W h => ⟨0, by rw [← res_res (F := tw q j), hb]; simp⟩
  · refine loc_mono' ((hr q j).2 V ζ ξ) fun W h ⟨e, he⟩ => ?_
    refine ⟨(c * (d * e)) • twGen k (ζ.map h.appTop.hom), ?_⟩
    rw [← res_res, ← res_res (F := tw q j), ha, hb, res_nsmul, res_nsmul, he, (hr q i).1, smul_smul,
      map_nsmul', map_nsmul', map_nsmul', map_nsmul', hφ]
    simp only [map_nsmul, LinearMap.smul_apply, smul_smul]
    ring_nf

theorem LateralTheory.EtaleFoundations.etale_tate_twist_generator_map_surjective_of_local_and_root (hl : LateralTheory.EtaleFoundations.EtaleTateTwistSectionsLocallyMultiplesOfGenerator)
    (hr : LateralTheory.EtaleFoundations.EtaleTateTwistGeneratorRestrictionAndRootChange) : LateralTheory.EtaleFoundations.EtaleTateTwistGeneratorMapLocallySurjective :=
  LateralTheory.EtaleFoundations.etale_tate_twist_generator_map_locally_surjective_of_pairs (LateralTheory.EtaleFoundations.etale_tate_twist_generator_map_hits_products_locally hl hr)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleTateTwistLocalGenerationAndRootCompatOfPart =====
