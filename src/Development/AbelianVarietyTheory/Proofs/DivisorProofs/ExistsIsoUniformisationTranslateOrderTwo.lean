module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapsAtExpLeB
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleIdentityIso
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonemptyIsPullDegOfSameTorusTwist
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RigidifiedIsoRespectsCubeAndSymmetry
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UnifPreCharacterGroupIso
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ComparisonTorusInvariant
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationPolarisationsAgreeAtLevel
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationPolarisedAbelianSchemesIso
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsIsoOfCompatibleAbelianThickenings
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsIsoOfIsClosedImmersionOfThickeningsOfIsProper
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ValPsiZero
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZeroStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoUniformisationTranslateOrderTwo

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapsAtExpLeB\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleIdentityIso\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonemptyIsPullDegOfSameTorusTwist\nimport Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ValPsiZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.MumCmp.Norm

section General

variable {X X' S : Scheme.{0}} {L : LB X} {L' : LB X'}

theorem exists_iso (hL : L.IsLB) (hL' : L'.IsLB) (p : X' ⟶ S) (e' : S ⟶ X') (he : e' ≫ p = 𝟙 S) (Φ : X' ⟶ X)
    (e : S ⟶ X) (ρ' : LB.Gen (L'.pull e')) (hρ' : ρ'.IsGen) (ρ : LB.Gen (L.pull e)) (hρ : ρ.IsGen)
    (w₀ : LB.Iso L' (L.pull Φ)) (hw₀ : w₀.IsGen) :
    ∃ w : LB.Iso L' (LB.LinComb L ![Φ, p ≫ e' ≫ Φ, p ≫ e] twε), w.IsGen ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ S) (z : Z) (j : Fin 3 → L.ι) (q : L'.ι),
        e' (r z) ∈ LB.wchart L ![Φ, p ≫ e' ≫ Φ, p ≫ e] j → e' (r z) ∈ L'.U q →
        gv w (r ≫ e') z j q = gm ((r ≫ e') ≫ Φ) z (L.U (j 0) ⊓ L.U (j 1)) (L.g (j 0) (j 1)) *
          gm r z (LB.wchart L (fun _ : PUnit => e) (fun _ => j 2)) (ρ.s (fun _ => j 2)) *
          (gm r z (LB.wchart L' (fun _ : PUnit => e') (fun _ => q)) (ρ'.s (fun _ => q)))⁻¹ := by
  have hw := (isGen_iff w₀).1 hw₀
  obtain ⟨u, hu, vu⟩ := exists_up hw hL hL' (K := PUnit) (φ' := fun _ => e') (ε := fun _ => 1) ρ' hρ'
  have l₀ : ∀ (j : Fin 3 → L.ι) (q : L'.ι), LB.wchart L ![Φ, p ≫ e' ≫ Φ, p ≫ e] j ⊓ L'.U q ≤
      (L.pull Φ).U (fun _ => j 0) ⊓ L'.U q := fun j q x hx => ⟨mem_pull.2 (Set.mem_iInter.1 hx.1 0), hx.2⟩
  have l₁ : ∀ (j : Fin 3 → L.ι) (q : L'.ι), LB.wchart L ![Φ, p ≫ e' ≫ Φ, p ≫ e] j ⊓ L'.U q ≤
      p ⁻¹ᵁ LB.wchart L (fun _ : PUnit => e' ≫ Φ) (fun _ => j 1) := fun j q x hx =>
    Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hx.1 1
  have l₂ : ∀ (j : Fin 3 → L.ι) (q : L'.ι), LB.wchart L ![Φ, p ≫ e' ≫ Φ, p ≫ e] j ⊓ L'.U q ≤
      p ⁻¹ᵁ LB.wchart L (fun _ : PUnit => e) (fun _ => j 2) := fun j q x hx =>
    Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hx.1 2
  let w : LB.Iso L' (LB.LinComb L ![Φ, p ≫ e' ≫ Φ, p ≫ e] twε) :=
    ⟨fun c => res (l₀ c.1 c.2) (w₀.s (fun _ => c.1 0, c.2)) *
      (res (l₁ c.1 c.2) (pullU p _ (u.s (fun _ => c.1 1))))⁻¹ * res (l₂ c.1 c.2) (pullU p _ (ρ.s (fun _ => c.1 2)))⟩
  have vw : ∀ (Z : Scheme.{0}) (f : Z ⟶ X') (z : Z) (j : Fin 3 → L.ι) (q : L'.ι),
      f z ∈ LB.wchart L ![Φ, p ≫ e' ≫ Φ, p ≫ e] j ⊓ L'.U q →
      gm f z (LB.wchart L ![Φ, p ≫ e' ≫ Φ, p ≫ e] j ⊓ L'.U q) (w.s (j, q)) = gw w₀ f z (j 0) q *
        (gm (f ≫ p) z (LB.wchart L (fun _ : PUnit => e' ≫ Φ) (fun _ => j 1)) (u.s (fun _ => j 1)))⁻¹ *
        gm (f ≫ p) z (LB.wchart L (fun _ : PUnit => e) (fun _ => j 2)) (ρ.s (fun _ => j 2)) := fun Z f z j q hz =>
    (map_mul _ _ _).trans (congrArg₂ (· * ·) ((map_mul _ _ _).trans (congrArg₂ (· * ·) (gm_res f z (l₀ j q) hz _)
      ((map_inv _ _).trans (congrArg (·⁻¹) ((gm_res f z (l₁ j q) hz _).trans (gm_pull f p z _ (l₁ j q hz) _))))))
      ((gm_res f z (l₂ j q) hz _).trans (gm_pull f p z _ (l₂ j q hz) _)))
  refine ⟨w, ?_, fun Z r z j q hj hq => ?_⟩
  · rintro ⟨j, q⟩ ⟨j', q'⟩
    refine unit_ext fun x hx => ?_
    refine ((gm_res (𝟙 X') x _ hx _).trans (vw _ _ x j q hx.1)).trans (Eq.symm ((map_mul _ _ _).trans
      ((congrArg₂ (· * ·) ((gm_div L' _ (𝟙 X') x (j, q) (j', q') hx).trans
        (congrArg (· * _) (gm_linComb L _ twε (𝟙 X') x j j' hx.1.1 hx.2.1)))
        ((gm_res (𝟙 X') x _ hx _).trans (vw _ _ x j' q' hx.2))).trans ?_)))
    rw [hw _ (𝟙 X') x (j 0) (j' 0) q q' (Set.mem_iInter.1 hx.1.1 0) (Set.mem_iInter.1 hx.2.1 0) hx.1.2 hx.2.2,
      gen_trans hu (𝟙 X' ≫ p) x (l₁ j q hx.1) (l₁ j' q' hx.2), gen_trans hρ (𝟙 X' ≫ p) x (l₂ j q hx.1) (l₂ j' q' hx.2),
      Fin.prod_univ_three]
    simp only [trF, Fintype.prod_unique, twε, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val, zpow_one,
      zpow_neg, Category.assoc]
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_inv]
    abel
  · have hp : (r ≫ e') ≫ p = r := by rw [Category.assoc, he, Category.comp_id]
    have hz : p (e' (r z)) = r z := congrArg (fun g => g z) hp
    have m₀ : Φ (e' (r z)) ∈ L.U (j 0) := Set.mem_iInter.1 hj 0
    have m₁ : Φ (e' (r z)) ∈ L.U (j 1) := by
      have : Φ (e' (p (e' (r z)))) ∈ L.U (j 1) := Set.mem_iInter.1 hj 1
      rwa [hz] at this
    refine (vw Z (r ≫ e') z j q ⟨hj, hq⟩).trans ?_
    rw [hp, vu Z r z (fun _ => j 1) (fun _ => q) (Set.mem_iInter.2 fun _ => m₁) (Set.mem_iInter.2 fun _ => hq),
      pw, Fintype.prod_unique, zpow_one, hw Z (r ≫ e') z (j 0) (j 1) q q m₀ m₁ hq hq, gm_self hL' (r ≫ e') z hq]
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_inv, inv_one, ofMul_one]
    abel

theorem exists_iso_maps (hL : L.IsLB) (hL' : L'.IsLB) (p : X' ⟶ S) (e' : S ⟶ X') (he : e' ≫ p = 𝟙 S) (Φ : X' ⟶ X)
    (b e : S ⟶ X) (hb : e' ≫ Φ = b) (ρ' : LB.Gen (L'.pull e')) (hρ' : ρ'.IsGen) (ρ : LB.Gen (L.pull e)) (hρ : ρ.IsGen)
    (w₀ : LB.Iso L' (L.pull Φ)) (hw₀ : w₀.IsGen) {Y : Scheme.{0}} (r : Y ⟶ S) (x : Y ⟶ X') (hx : x = r ≫ e')
    (a : LB.Gen (LB.LinComb L' (K := PUnit) (fun _ => x) (fun _ => -1)))
    (ha : ∀ (y : Y) (q : L'.ι), e' (r y) ∈ L'.U q →
      gm (𝟙 Y) y (LB.wchart L' (fun _ : PUnit => x) (fun _ => q)) (a.s (fun _ => q)) =
        (gm r y (LB.wchart L' (fun _ : PUnit => e') (fun _ => q)) (ρ'.s (fun _ => q)))⁻¹) :
    ∃ w : LB.Iso L' (LB.LinComb L ![Φ, p ≫ b, p ≫ e] twε), w.IsGen ∧
      ∃ t : LB.Gen (LB.LinComb L (fun i => x ≫ (![Φ, p ≫ b, p ≫ e] : Fin 3 → (X' ⟶ X)) i) (fun i => -1 * twε i)),
        MapsAtExp L L' ![Φ, p ≫ b, p ≫ e] twε w x (-1) a t ∧
        ∀ y J, Good L y J → val t (𝟙 Y) y J = (val ρ r y J)⁻¹ := by
  subst hb hx
  obtain ⟨w, hw, vw⟩ := exists_iso hL hL' p e' he Φ e ρ' hρ' ρ hρ w₀ hw₀
  have hp : (r ≫ e') ≫ p = r := by rw [Category.assoc, he, Category.comp_id]
  have hz : ∀ z, p (e' (r z)) = r z := fun z => congrArg (fun g => g z) hp
  have l₁ : ∀ j : Fin 3 → L.ι,
      LB.wchart L (fun i => (r ≫ e') ≫ (![Φ, p ≫ e' ≫ Φ, p ≫ e] : Fin 3 → (X' ⟶ X)) i) j ≤
        ((r ≫ e') ≫ Φ) ⁻¹ᵁ (L.U (j 0) ⊓ L.U (j 1)) := fun j y hy => ⟨Set.mem_iInter.1 hy 0, by
    have : Φ (e' (p (e' (r y)))) ∈ L.U (j 1) := Set.mem_iInter.1 hy 1
    rw [hz] at this
    exact this⟩
  have l₂ : ∀ j : Fin 3 → L.ι,
      LB.wchart L (fun i => (r ≫ e') ≫ (![Φ, p ≫ e' ≫ Φ, p ≫ e] : Fin 3 → (X' ⟶ X)) i) j ≤
        r ⁻¹ᵁ LB.wchart L (fun _ : PUnit => e) (fun _ => j 2) := fun j y hy => Set.mem_iInter.2 fun _ => by
    have : e (p (e' (r y))) ∈ L.U (j 2) := Set.mem_iInter.1 hy 2
    rw [hz] at this
    exact this
  let t : LB.Gen (LB.LinComb L (fun i => (r ≫ e') ≫ (![Φ, p ≫ e' ≫ Φ, p ≫ e] : Fin 3 → (X' ⟶ X)) i)
      (fun i => -1 * twε i)) :=
    ⟨fun j => (res (l₁ j) (pullU ((r ≫ e') ≫ Φ) (L.U (j 0) ⊓ L.U (j 1)) (L.g (j 0) (j 1))) * res (l₂ j) (pullU r _ (ρ.s (fun _ => j 2))))⁻¹⟩
  have vt : ∀ (y : Y) (j : Fin 3 → L.ι),
      y ∈ LB.wchart L (fun i => (r ≫ e') ≫ (![Φ, p ≫ e' ≫ Φ, p ≫ e] : Fin 3 → (X' ⟶ X)) i) j →
      gm (𝟙 Y) y (LB.wchart L (fun i => (r ≫ e') ≫ (![Φ, p ≫ e' ≫ Φ, p ≫ e] : Fin 3 → (X' ⟶ X)) i) j) (t.s j) =
        (gm ((r ≫ e') ≫ Φ) y (L.U (j 0) ⊓ L.U (j 1)) (L.g (j 0) (j 1)) *
          gm r y (LB.wchart L (fun _ : PUnit => e) (fun _ => j 2)) (ρ.s (fun _ => j 2)))⁻¹ := fun y j hy =>
    (map_inv _ _).trans (congrArg (·⁻¹) ((map_mul _ _ _).trans (congrArg₂ (· * ·)
      ((gm_res (𝟙 Y) y (l₁ j) hy _).trans ((gm_pull (𝟙 Y) ((r ≫ e') ≫ Φ) y (L.U (j 0) ⊓ L.U (j 1)) (l₁ j hy) _).trans (by rw [Category.id_comp])))
      ((gm_res (𝟙 Y) y (l₂ j) hy _).trans ((gm_pull (𝟙 Y) r y _ (l₂ j hy) _).trans (by rw [Category.id_comp]))))))
  refine ⟨w, hw, t, fun j q => unit_ext fun y hy => ?_, fun y J hJ => ?_⟩
  · refine ((gm_res (𝟙 Y) y _ hy _).trans (vt y j (mapsAtExp_le_b L L' _ twε _ j q hy))).trans
      (Eq.symm ((map_mul _ _ _).trans ((congrArg₂ (· * ·) ((map_zpow _ _ _).trans (congrArg (· ^ (-1 : ℤ))
        ((gm_pull (𝟙 Y) (r ≫ e') y _ hy _).trans ((congrArg (fun f => gv w f y j q) (Category.id_comp _)).trans
          (vw Y r y j q hy.1 hy.2))))) ((gm_res (𝟙 Y) y _ hy _).trans (ha y q hy.2))).trans ?_)))
    rw [zpow_neg, zpow_one, ← mul_inv, inv_mul_cancel_right]
  · have e₁ : (r ≫ e') ≫ p ≫ e' ≫ Φ = (r ≫ e') ≫ Φ := by rw [← Category.assoc, hp, Category.assoc]
    have e₂ : (r ≫ e') ≫ p ≫ e = r ≫ e := by rw [← Category.assoc, hp]
    rw [val_of t (𝟙 Y) y J ![J ((r ≫ e') ≫ Φ), J ((r ≫ e') ≫ Φ), J (r ≫ e)] (fun k => by
      rw [Category.id_comp]
      fin_cases k
      exacts [rfl, congrArg J e₁, congrArg J e₂])]
    refine (vt y _ (Set.mem_iInter.2 fun k => ?_)).trans ?_
    · fin_cases k
      · exact hJ ((r ≫ e') ≫ Φ)
      · show ((r ≫ e') ≫ p ≫ e' ≫ Φ) y ∈ L.U (J ((r ≫ e') ≫ Φ))
        rw [e₁]; exact hJ _
      · show ((r ≫ e') ≫ p ≫ e) y ∈ L.U (J (r ≫ e))
        rw [e₂]; exact hJ _
    · exact congrArg (·⁻¹) ((congrArg (· * _) (gm_self hL ((r ≫ e') ≫ Φ) y (hJ _))).trans (_root_.one_mul _))

end General

theorem exists_rigidified : ∀ (R : Type) [CommRing R] [IsDomain R] (I : Ideal R) (D D₂ : DegData R I) (g : GtPt D.toPre (𝟙_ (Over (Sp R)))) (β : D₂.toPre.P.A ⟶ D.toPre.P.A), IsMonHom β → ∀ w₀ : LB.Iso D₂.toPre.P.L (D.toPre.P.L.pull (padd D.toPre.P.A β (toUnit D₂.toPre.P.A ≫ g.b)).left), w₀.IsGen → ∃ w : LB.Iso D₂.toPre.P.L (LB.LinComb D.toPre.P.L (GlobalTheory.MumCmp.twφ D₂.toPre D.toPre β g.b) GlobalTheory.MumCmp.twε), w.IsGen ∧ ∃ t : LB.Gen (LB.LinComb D.toPre.P.L (fun i => D₂.toPre.xK 0 ≫ GlobalTheory.MumCmp.twφ D₂.toPre D.toPre β g.b i) (fun i => -1 * GlobalTheory.MumCmp.twε i)), GlobalTheory.MumCmp.MapsAtExp D.toPre.P.L D₂.toPre.P.L (GlobalTheory.MumCmp.twφ D₂.toPre D.toPre β g.b) GlobalTheory.MumCmp.twε w (D₂.toPre.xK 0) (-1) (D₂.toPre.psi 0) t ∧ LB.Gen.Corr D.toPre.P.L _ _ _ _ t (LB.mulGen D.toPre.P.L _ _ _ _ (D.toPre.psi 0) (LB.pullGen D.toPre.P.L _ _ (g.s 0) (toUnit (TK R)).left)) := by
  intro R _ _ I D D₂ g β hβ w₀ hw₀
  have hb : eSec D₂.toPre.P.A ≫ (padd D.toPre.P.A β (toUnit D₂.toPre.P.A ≫ g.b)).left = g.b.left := by
    rw [eSec, ← Over.comp_left]
    congr 1
    show η[D₂.toPre.P.A] ≫ (β * (toUnit D₂.toPre.P.A ≫ g.b)) = g.b
    have h₁ : η[D₂.toPre.P.A] ≫ β = 1 := by rw [IsMonHom.one_hom, Hom.one_def, toUnit_unit, Category.id_comp]
    have h₂ : η[D₂.toPre.P.A] ≫ toUnit D₂.toPre.P.A = 𝟙 _ := toUnit_unique _ _
    rw [MonObj.comp_mul, h₁, ← Category.assoc, h₂, Category.id_comp, _root_.one_mul]
  have he : eSec D₂.toPre.P.A ≫ (toUnit D₂.toPre.P.A).left = 𝟙 _ := by
    rw [eSec, ← Over.comp_left, toUnit_unique (η[D₂.toPre.P.A] ≫ toUnit D₂.toPre.P.A) (𝟙 _)]
    rfl
  obtain ⟨w, hw, t, h₁, h₂⟩ := exists_iso_maps D.toPre.P.isLB D₂.toPre.P.isLB (toUnit D₂.toPre.P.A).left
    (eSec D₂.toPre.P.A) he _ g.b.left (eSec D.toPre.P.A) hb D₂.toPre.rig D₂.toPre.rig_gen D.toPre.rig D.toPre.rig_gen
    w₀ hw₀ (jK R) (D₂.toPre.xK 0) (Uniq.xK_zero D₂.toPre) (D₂.toPre.psi 0)
    (fun y q hq => Uniq.gm_psi_zero D₂.tau_bimult 0 rfl y q hq)
  refine ⟨w, hw, t, h₁, corr_of_val D.toPre.P.isLB fun y J hJ => (h₂ y J hJ).trans ?_⟩
  refine Eq.symm ((val_mul hJ _ _ _).trans ?_)
  rw [PsiZero.val_psi_zero D.tau_bimult hJ, val_pull hJ, val_corr hJ g.s_zero, val_one, _root_.mul_one]

end GlobalTheory.MumCmp.Norm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZeroStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZeroStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapsAtExpLeB\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem _root_.GlobalTheory.T.exists_rigidified_translatedBundle_iso_psi_zero : ∀ (R : Type) [CommRing R] [IsDomain R] (I : Ideal R) (D D₂ : DegData R I) (g : GtPt D.toPre (𝟙_ (Over (Sp R)))) (β : D₂.toPre.P.A ⟶ D.toPre.P.A), IsMonHom β → ∀ w₀ : LB.Iso D₂.toPre.P.L (D.toPre.P.L.pull (padd D.toPre.P.A β (toUnit D₂.toPre.P.A ≫ g.b)).left), w₀.IsGen → ∃ w : LB.Iso D₂.toPre.P.L (LB.LinComb D.toPre.P.L (GlobalTheory.MumCmp.twφ D₂.toPre D.toPre β g.b) GlobalTheory.MumCmp.twε), w.IsGen ∧ ∃ t : LB.Gen (LB.LinComb D.toPre.P.L (fun i => D₂.toPre.xK 0 ≫ GlobalTheory.MumCmp.twφ D₂.toPre D.toPre β g.b i) (fun i => -1 * GlobalTheory.MumCmp.twε i)), GlobalTheory.MumCmp.MapsAtExp D.toPre.P.L D₂.toPre.P.L (GlobalTheory.MumCmp.twφ D₂.toPre D.toPre β g.b) GlobalTheory.MumCmp.twε w (D₂.toPre.xK 0) (-1) (D₂.toPre.psi 0) t ∧ LB.Gen.Corr D.toPre.P.L _ _ _ _ t (LB.mulGen D.toPre.P.L _ _ _ _ (D.toPre.psi 0) (LB.pullGen D.toPre.P.L _ _ (g.s 0) (toUnit (TK R)).left)) := by
  first | exact @GlobalTheory.MumCmp.Norm.exists_rigidified
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZeroStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoUniformisationTranslateOrderTwo =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoUniformisationTranslateOrderTwo", "h": "module\n\nimport Mathlib\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapsAtExpLeB\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RigidifiedIsoRespectsCubeAndSymmetry\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UnifPreCharacterGroupIso\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ComparisonTorusInvariant\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationPolarisationsAgreeAtLevel\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationPolarisedAbelianSchemesIso\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsIsoOfCompatibleAbelianThickenings\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsIsoOfIsClosedImmersionOfThickeningsOfIsProper\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedTranslatedBundleIsoPsiZeroStatement\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MumCmp.Transl

section Group

variable {S : Scheme.{0}} {G : Over S} [GrpObj G] [IsCommMonObj G] (a : 𝟙_ (Over S) ⟶ G)

abbrev tr : G ⟶ G := (toUnit G ≫ a) * 𝟙 G

omit [IsCommMonObj G] in
theorem comp_tr {T : Over S} (y : T ⟶ G) : y.left ≫ (tr a).left = ((toUnit T ≫ a) * y).left := by
  rw [← Over.comp_left, MonObj.comp_mul, Category.comp_id, ← Category.assoc, comp_toUnit]

theorem prod_cub_tr {T : Over S} (x x' y : T ⟶ G) {V : Type} [CommGroup V] (h : (T.left ⟶ G.left) → V) :
    (∏ k : thK.{0}, h (((lift x (lift x' y)).left ≫ thφ G (x3 G) k) ≫ (tr a).left) ^ thε k) *
      ∏ k : thK.{0}, h ((lift x (lift x' (toUnit T ≫ a))).left ≫ thφ G (x3 G) k) ^ thε k =
      ∏ k : thK.{0}, h ((lift x (lift x' ((toUnit T ≫ a) * y))).left ≫ thφ G (x3 G) k) ^ thε k := by
  rw [prod_cub x x' y (fun s => h (s ≫ (tr a).left)), prod_cub, prod_cub]
  simp only [comp_tr]
  generalize toUnit T ≫ a = b
  rw [_root_.mul_one, show b * (x * x' * y) = x * x' * (b * y) from mul_left_comm _ _ _,
    show b * (x * x') = x * x' * b from _root_.mul_comm _ _, show b * (x * y) = x * (b * y) from mul_left_comm _ _ _,
    show b * (x' * y) = x' * (b * y) from mul_left_comm _ _ _, _root_.mul_comm b x, _root_.mul_comm b x']
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_inv]
  abel

variable {L L' : RigLB G} {w : LB.Iso L'.L (L.L.pull (tr a).left)}

theorem cube_tr (hw : PGen w) (c : CubicalStr G L) (c' : CubicalStr G L')
    (hs : Function.Surjective ((snd G (G ⊗ G)).left ≫ (snd G G).left ≫ G.hom).appTop.hom)
    {T : Over S} (x x' y : T ⟶ G) {z : T.left} {N : (T.left ⟶ G.left) → L.L.ι} {N' : (T.left ⟶ G.left) → L'.L.ι}
    (hN : Good L.L z N) (hN' : Good L'.L z N') :
    cubV c z N x x' ((toUnit T ≫ a) * y) =
      (∏ k : thK.{0}, gw w ((lift x (lift x' y)).left ≫ thφ G (x3 G) k) z
        (N (((lift x (lift x' y)).left ≫ thφ G (x3 G) k) ≫ (tr a).left))
        (N' ((lift x (lift x' y)).left ≫ thφ G (x3 G) k)) ^ thε k) *
      cubV c' z N' x x' y * cubV c z N x x' (toUnit T ≫ a) := by
  obtain ⟨t, ht, hv⟩ := exists_up hw L.isLB L'.isLB (φ' := thφ G (x3 G)) (ε := thε) c'.t c'.isGen
  have tv : ∀ {T : Over S} (x x' y : T ⟶ G) {z : T.left} {N : (T.left ⟶ G.left) → L.L.ι}
      {N' : (T.left ⟶ G.left) → L'.L.ι}, Good L.L z N → Good L'.L z N' → val t (lift x (lift x' y)).left z N =
      (∏ k : thK.{0}, gw w ((lift x (lift x' y)).left ≫ thφ G (x3 G) k) z
        (N (((lift x (lift x' y)).left ≫ thφ G (x3 G) k) ≫ (tr a).left))
        (N' ((lift x (lift x' y)).left ≫ thφ G (x3 G) k)) ^ thε k) * cubV c' z N' x x' y := by
    intro T x x' y z N N' hN hN'
    refine (hv _ _ z _ _ (Good.mem hN _ _) (Good.mem hN' _ _)).trans (congrArg₂ (· * ·) ?_ rfl)
    exact Finset.prod_congr rfl fun k _ => by rw [Category.assoc]
  have vv : ∀ {T : Over S} (x x' y : T ⟶ G) {z : T.left} {N : (T.left ⟶ G.left) → L.L.ι}, Good L.L z N →
      val (LB.pullGen L.L (thφ G (x3 G)) thε c.t
        (lift (x3 G 0) (lift (x3 G 1) ((toUnit _ ≫ a) * x3 G 2))).left) (lift x (lift x' y)).left z N =
        cubV c z N x x' ((toUnit T ≫ a) * y) ∧
      val (LB.mulGen L.L _ _ _ _ t (LB.pullGen L.L (thφ G (x3 G)) thε c.t
        (lift (x3 G 0) (lift (x3 G 1) (toUnit _ ≫ a))).left)) (lift x (lift x' y)).left z N =
        val t (lift x (lift x' y)).left z N * cubV c z N x x' (toUnit T ≫ a) := by
    intro T x x' y z N hN
    have a₀ : lift x (lift x' y) ≫ x3 G 0 = x := by simp [x3]
    have a₁ : lift x (lift x' y) ≫ x3 G 1 = x' := by simp [x3]
    have a₂ : lift x (lift x' y) ≫ x3 G 2 = y := by simp [x3]
    have a₃ : lift x (lift x' y) ≫ toUnit _ ≫ a = toUnit T ≫ a := by rw [← Category.assoc, comp_toUnit]
    constructor
    · rw [val_cub c _ hN, MonObj.comp_mul, a₀, a₁, a₂, a₃]
    · refine (val_mul hN _ _ _).trans (congrArg (_ * ·) ?_)
      rw [val_cub c _ hN, a₀, a₁, a₃]
  let e : 𝟙_ (Over S) ⟶ G3 G := lift 1 (lift 1 1)
  have he : e.left ≫ (snd G (G ⊗ G)).left ≫ (snd G G).left ≫ G.hom = 𝟙 _ := by
    rw [Over.w, Over.w]; exact Over.w e
  have key := gen_unique' L.isLB (fun V _ h => by
      refine (Fintype.prod_sum_type _).trans (Eq.trans (congrArg₂ (· * ·) ?_ rfl)
        (prod_cub_tr a (x3 G 0) (x3 G 1) (x3 G 2) h))
      have : lift (x3 G 0) (lift (x3 G 1) (x3 G 2)) = 𝟙 _ := by ext <;> simp [x3]
      rw [this]
      exact Finset.prod_congr rfl fun k _ => congrArg (fun q => h (q ≫ _) ^ _) (Category.id_comp _).symm) _ e.left he hs
    (DVR.pullGen_isGen _ _ _ _ c.isGen (lift (x3 G 0) (lift (x3 G 1) ((toUnit _ ≫ a) * x3 G 2))).left)
    (DVR.mulGen_isGen _ _ _ _ _ _ _ ht (DVR.pullGen_isGen _ _ _ _ c.isGen
      (lift (x3 G 0) (lift (x3 G 1) (toUnit _ ≫ a))).left)) (fun s J hJ => by
      choose J' hJ' using fun ψ : (𝟙_ (Over S)).left ⟶ G.left => exists_chart L'.isLB (ψ s)
      have v := vv (1 : 𝟙_ (Over S) ⟶ G) 1 1 hJ
      refine v.1.trans (Eq.trans ?_ v.2.symm)
      rw [tv (1 : 𝟙_ (Over S) ⟶ G) 1 1 hJ hJ', (isCub_cubV c' (T := 𝟙_ (Over S)) hJ').face _ _, _root_.mul_one, _root_.mul_one,
        prod_cub 1 1 1 (fun q => gw w q s (J (q ≫ (tr a).left)) (J' q))]
      simp) _ (lift x (lift x' y)).left z N hN
  exact (vv x x' y hN).1.symm.trans (key.trans ((vv x x' y hN).2.trans (congrArg (· * _) (tv x x' y hN hN'))))

theorem sym_tr (hw : PGen w) (ha : a ^ 2 = 1)
    (s : LB.Gen (LB.LinComb L.L (K := Fin 2) ![(ι[G]).left, 𝟙 G.left] ![1, -1])) (hs : s.IsGen)
    (s' : LB.Gen (LB.LinComb L'.L (K := Fin 2) ![(ι[G]).left, 𝟙 G.left] ![1, -1])) (hs' : s'.IsGen)
    (rig : LB.Gen.Corr L'.L _ _ _ _ (LB.pullGen L'.L _ _ s' (eSec G)) (LB.oneGen L'.L))
    (hf : Function.Surjective G.hom.appTop.hom)
    {Z : Scheme.{0}} (r : Z ⟶ G.left) {z : Z} {N : (Z ⟶ G.left) → L.L.ι} {N' : (Z ⟶ G.left) → L'.L.ι}
    (hN : Good L.L z N) (hN' : Good L'.L z N') :
    val s (r ≫ (tr a).left) z N =
      gw w (r ≫ (ι[G]).left) z (N ((r ≫ (ι[G]).left) ≫ (tr a).left)) (N' (r ≫ (ι[G]).left)) *
      (gw w r z (N (r ≫ (tr a).left)) (N' r))⁻¹ * val s' r z N' * val s (r ≫ (toUnit G ≫ a).left) z N := by
  obtain ⟨t, ht, hv⟩ := exists_up hw L.isLB L'.isLB s' hs'
  have tv : ∀ {Z : Scheme.{0}} (r : Z ⟶ G.left) {z : Z} {N : (Z ⟶ G.left) → L.L.ι} {N' : (Z ⟶ G.left) → L'.L.ι},
      Good L.L z N → Good L'.L z N' → val t r z N =
      gw w (r ≫ (ι[G]).left) z (N ((r ≫ (ι[G]).left) ≫ (tr a).left)) (N' (r ≫ (ι[G]).left)) *
      (gw w r z (N (r ≫ (tr a).left)) (N' r))⁻¹ * val s' r z N' := by
    intro Z r z N N' hN hN'
    refine (hv _ _ z _ _ (Good.mem hN _ _) (Good.mem hN' _ _)).trans (congrArg₂ (· * ·) ?_ rfl)
    rw [pw, Fin.prod_univ_two]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Category.assoc, Category.comp_id, Category.id_comp,
      zpow_one, zpow_neg]
  have ai : (toUnit G ≫ a)⁻¹ = toUnit G ≫ a := by
    rw [inv_eq_iff_mul_eq_one, ← MonObj.comp_mul, ← pow_two, ha, MonObj.comp_one]
  have i₁ : (toUnit G ≫ a).left ≫ (ι[G]).left = (toUnit G ≫ a).left := by
    rw [← Over.comp_left, ← Hom.inv_def, ai]
  have i₂ : (tr a).left ≫ (ι[G]).left = (ι[G]).left ≫ (tr a).left := by
    rw [comp_tr, ← Over.comp_left, ← Hom.inv_def, mul_inv, ai, Hom.inv_def, Category.id_comp]
  have key := gen_unique' L.isLB (fun V _ h => by
      refine (Fintype.prod_sum_type _).trans ?_
      simp only [Fin.prod_univ_two, Sum.elim_inl, Sum.elim_inr, Matrix.cons_val_zero, Matrix.cons_val_one,
        Category.comp_id, Category.id_comp, i₁, i₂, zpow_one, zpow_neg, mul_inv_cancel, _root_.mul_one])
    G.hom (eSec G) (Over.w η[G]) hf (DVR.pullGen_isGen _ _ _ _ hs (tr a).left)
    (DVR.mulGen_isGen _ _ _ _ _ _ _ ht (DVR.pullGen_isGen _ _ _ _ hs (toUnit G ≫ a).left)) (fun y J hJ => by
      choose J' hJ' using fun ψ : S ⟶ G.left => exists_chart L'.isLB (ψ y)
      have oi : eSec G ≫ (ι[G]).left = eSec G := by
        have : η[G] ≫ ι[G] = η[G] := by simp
        exact congrArg (fun q => q.left) this
      have b := val_corr hJ' rig (𝟙 _)
      rw [val_pull hJ', val_one, Category.id_comp] at b
      have ot : eSec G ≫ (tr a).left = eSec G ≫ (toUnit G ≫ a).left := by
        refine (comp_tr a η[G]).trans (congrArg (fun q => q.left) (?_ : _ = η[G] ≫ toUnit G ≫ a))
        rw [← Category.assoc, comp_toUnit]
        exact (congrArg (_ * ·) (by simp [Hom.one_def] : η[G] = 1)).trans (_root_.mul_one _)
      rw [val_mul hJ, val_pull hJ, val_pull hJ, tv _ hJ hJ', oi, b, ot]
      simp) _ r z N hN
  rw [val_mul hN, val_pull hN, val_pull hN, tv r hN hN'] at key
  exact key

end Group

section Compare

variable {B B' G G' E : Scheme.{0}} {M : LB B} {M' : LB B'} {L : LB G} {L' : LB G'}

theorem exists_repack {K : LB E} (ψ : E ⟶ E) (f : E ⟶ G) {g : E ⟶ G} (h : ψ ≫ f = g) (v : LB.Iso K (L.pull g))
    (hv : PGen v) : ∃ v' : LB.Iso K ((L.pull f).pull ψ), PGen v' ∧ ∀ (Z : Scheme.{0}) (r : Z ⟶ E) (z : Z) (j : L.ι)
      (k : K.ι), g (r z) ∈ L.U j → r z ∈ K.U k → gw v' r z (fun _ => j) k = gw v r z j k := by
  subst h
  have le : ∀ (J : PUnit → PUnit → L.ι) (k : K.ι), ((L.pull f).pull ψ).U J ⊓ K.U k ≤
      (L.pull (ψ ≫ f)).U (fun _ => J PUnit.unit PUnit.unit) ⊓ K.U k := fun J k x hx =>
    ⟨mem_pull₂.2 (mem_pull.1 (mem_pull.1 hx.1)), hx.2⟩
  let v' : LB.Iso K ((L.pull f).pull ψ) :=
    ⟨fun p => res (le p.1 p.2) (v.s (fun _ => p.1 PUnit.unit PUnit.unit, p.2))⟩
  have e : ∀ (Z : Scheme.{0}) (r : Z ⟶ E) (z : Z) (j : L.ι) (k : K.ι), (ψ ≫ f) (r z) ∈ L.U j → r z ∈ K.U k →
      gw v' r z (fun _ => j) k = gw v r z j k := fun Z r z j k hj hk =>
    gm_res r z (le (fun _ _ => j) k) ⟨mem_pull.2 (mem_pull.2 hj), hk⟩ _
  refine ⟨v', fun Z r z j j' k k' hj hj' hk hk' => ?_, e⟩
  have m := mem_pull.1 hj
  have m' := mem_pull.1 hj'
  have g₁ := GlobalTheory.Algebraise.gm_pull_g f (r ≫ ψ) z m m'
  rw [Category.assoc] at g₁
  refine (e Z r z _ k m hk).trans ((hv Z r z _ _ k k' m m' hk hk').trans ?_)
  exact (congrArg₂ (· * ·) (congrArg (· * _) g₁) (e Z r z _ k' m' hk')).symm

theorem exists_comparison (hM : M.IsLB) (hM' : M'.IsLB) (hL : L.IsLB) (hL' : L'.IsLB) {p : E ⟶ B} {p' : E ⟶ B'}
    {f : E ⟶ G} {f' : E ⟶ G'} {F : G' ⟶ G} (ψ : E ⟶ E) (h : ψ ≫ f = f' ≫ F)
    {w : LB.Iso (L.pull f) (M.pull p)} {w' : LB.Iso (L'.pull f') (M'.pull p')}
    {wL : LB.Iso L' (L.pull F)} (hw : w.IsGen) (hw' : w'.IsGen) (hwL : PGen wL) :
    ∃ u : LB.Iso (M'.pull p') (M.pull (ψ ≫ p)), u.IsGen ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ E) (z : Z) (jM : M.ι) (jM' : M'.ι) (jL : L.ι) (jL' : L'.ι),
        p (ψ (r z)) ∈ M.U jM → p' (r z) ∈ M'.U jM' → F (f' (r z)) ∈ L.U jL → f' (r z) ∈ L'.U jL' →
        gw u r z jM (fun _ => jM') * gw w' r z jM' (fun _ => jL') =
          gw w (r ≫ ψ) z jM (fun _ => jL) * gw wL (r ≫ f') z jL jL' := by
  obtain ⟨y₁, g₁, v₁⟩ := GlobalTheory.Algebraise.exists_swap _ _ w' hw' (𝟙 _) _ _ (Category.id_comp _) (Category.id_comp _)
  rw [isGen_iff] at g₁ hw
  obtain ⟨y₂, t₂⟩ := exists_comp hL' wL y₁ hwL g₁ hL (LB.isLB_pull hM' _)
  obtain ⟨y₃, g₃, v₃⟩ := exists_repack ψ f h y₂ (t₂.pgen_comp hL' hwL g₁)
  obtain ⟨u, t₄⟩ := exists_comp (LB.isLB_pull hL _) w y₃ hw g₃ hM (LB.isLB_pull hM' _)
  refine ⟨u, (isGen_iff u).2 (t₄.pgen_comp (LB.isLB_pull hL _) hw g₃), fun Z r z jM jM' jL jL' a₁ a₂ a₃ a₄ => ?_⟩
  have a₅ : f (ψ (r z)) ∈ L.U jL := (congrArg (fun q : E ⟶ G => q (r z) ∈ L.U jL) h).mpr a₃
  rw [t₄ Z r z jM (fun _ => jL) (fun _ => jM') a₁ (mem_pull.2 a₅) (mem_pull.2 a₂), v₃ Z r z jL _ a₃ (mem_pull.2 a₂),
    t₂ Z r z jL jL' _ a₃ a₄ (mem_pull.2 a₂), v₁ Z r z jM' jL' a₂ a₄, Category.comp_id, _root_.mul_assoc,
    inv_mul_cancel_right]

end Compare

section Level

open TorusInvariance WCub

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {G : Over (Spec (CommRingCat.of R))} [GrpObj G]
  [IsCommMonObj G] {e : ℕ}

abbrev up {T : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} (y : T ⟶ thickObj R I e G) :
    (Over.map (thick R I e)).obj T ⟶ G :=
  (Over.map (thick R I e)).map y ≫ fstG I e G

omit [IsDomain R] [IsCommMonObj G] in
theorem up_mul {T : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} (x y : T ⟶ thickObj R I e G) :
    up (x * y) = up x * up y :=
  map_mul (pushHom (isGrpPullback_pullback G (thick R I e)) T) x y

variable {a : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ G} {ae : 𝟙_ _ ⟶ thickObj R I e G}
  (hae : ae.left ≫ (fstG I e G).left = thick R I e ≫ a.left)
include hae

omit [IsDomain R] [IsCommMonObj G] [GrpObj G] in
theorem up_ae (T : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))) : up (toUnit T ≫ ae) = toUnit _ ≫ a := by
  apply Over.OverMorphism.ext
  show (T.hom ≫ ae.left) ≫ (fstG I e G).left = (T.hom ≫ thick R I e) ≫ a.left
  rw [Category.assoc, Category.assoc]
  exact congrArg (T.hom ≫ ·) hae

omit [IsDomain R] in
theorem tr_fst : (tr ae).left ≫ (fstG I e G).left = (fstG I e G).left ≫ (tr a).left := by
  have h := up_mul (toUnit _ ≫ ae) (𝟙 (thickObj R I e G))
  rw [up_ae hae] at h
  have k : up (𝟙 (thickObj R I e G)) = fstG I e G := Over.OverMorphism.ext (Category.id_comp _)
  rw [k] at h
  exact (congrArg (fun q => q.left) h).trans (comp_tr a (fstG I e G)).symm

variable {D D' : DegData R I} {A A' : PolAV (Spec (CommRingCat.of (FractionRing R)))} {U : UnifPre I D A G}
  {U' : UnifPre I D' A' G}
  (u : LB.Iso (D'.toPre.P.L.pull (U'.gt e).pG.left) (D.toPre.P.L.pull ((tr ae).left ≫ (U.gt e).pG.left)))

def uV {Z : Scheme.{0}} (z : Z) (J : (Z ⟶ D.toPre.P.A.left) → D.toPre.P.L.ι)
    (J' : (Z ⟶ D'.toPre.P.A.left) → D'.toPre.P.L.ι) (r : Z ⟶ (thickObj R I e G).left) : (Z.presheaf.stalk z)ˣ :=
  gw u r z (J (r ≫ (tr ae).left ≫ (U.gt e).pG.left)) (fun _ => J' (r ≫ (U'.gt e).pG.left))

variable {wL : LB.Iso U'.LG.L (U.LG.L.pull (tr a).left)} (hw : PGen wL)
  (sq : ∀ (Z : Scheme.{0}) (r : Z ⟶ (thickObj R I e G).left) (z : Z) (jM : D.toPre.P.L.ι) (jM' : D'.toPre.P.L.ι)
    (jL : U.LG.L.ι) (jL' : U'.LG.L.ι), (U.gt e).pG.left ((tr ae).left (r z)) ∈ D.toPre.P.L.U jM →
    (U'.gt e).pG.left (r z) ∈ D'.toPre.P.L.U jM' → (tr a).left ((fstG I e G).left (r z)) ∈ U.LG.L.U jL →
    (fstG I e G).left (r z) ∈ U'.LG.L.U jL' →
    gw u r z jM (fun _ => jM') * gw (U'.w e) r z jM' (fun _ => jL') =
      gw (U.w e) (r ≫ (tr ae).left) z jM (fun _ => jL) * gw wL (r ≫ (fstG I e G).left) z jL jL')
include sq

theorem uV_mul {Z : Scheme.{0}} {z : Z} {J : (Z ⟶ D.toPre.P.A.left) → D.toPre.P.L.ι}
    {J' : (Z ⟶ D'.toPre.P.A.left) → D'.toPre.P.L.ι} {N : (Z ⟶ G.left) → U.LG.L.ι} {N' : (Z ⟶ G.left) → U'.LG.L.ι}
    (hJ : Good D.toPre.P.L z J) (hJ' : Good D'.toPre.P.L z J') (hN : Good U.LG.L z N) (hN' : Good U'.LG.L z N')
    (r : Z ⟶ (thickObj R I e G).left) :
    uV u z J J' r * wVal U' e z J' N' r = wVal U e z J N (r ≫ (tr ae).left) *
      gw wL (r ≫ (fstG I e G).left) z (N ((r ≫ (fstG I e G).left) ≫ (tr a).left)) (N' (r ≫ (fstG I e G).left)) := by
  have k : (r ≫ (tr ae).left) ≫ (fstG I e G).left = (r ≫ (fstG I e G).left) ≫ (tr a).left :=
    (Category.assoc _ _ _).trans ((congrArg (r ≫ ·) (tr_fst hae)).trans (Category.assoc _ _ _).symm)
  unfold wVal uV
  rw [k, Category.assoc r (tr ae).left]
  exact sq _ r z _ _ _ _ (hJ (r ≫ (tr ae).left ≫ (U.gt e).pG.left)) (hJ' _)
    (hN ((r ≫ (fstG I e G).left) ≫ (tr a).left)) (hN' _)

include hw

theorem cube_uV (hs : Function.Surjective ((snd G (G ⊗ G)).left ≫ (snd G G).left ≫ G.hom).appTop.hom)
    {T : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} (x x' y : T ⟶ thickObj R I e G)
    {z : T.left} {J : (T.left ⟶ D.toPre.P.A.left) → D.toPre.P.L.ι}
    {J' : (T.left ⟶ D'.toPre.P.A.left) → D'.toPre.P.L.ι}
    (hJ : Good D.toPre.P.L z J) (hJ' : Good D'.toPre.P.L z J') :
    val (L := D.toPre.P.L) (φ := thφ D.toPre.P.A (x3 D.toPre.P.A)) (ε := thε) D.toPre.cub.t
        (tri (thick R I e) (U.gt e).pG ![x, x', (toUnit T ≫ ae) * y]) z J =
      (∏ k : thK.{0}, uV u z J J' (psum (thickObj R I e G) ![x, x', y] k.down).left ^ thε k) *
        val (L := D'.toPre.P.L) (φ := thφ D'.toPre.P.A (x3 D'.toPre.P.A)) (ε := thε) D'.toPre.cub.t
          (tri (thick R I e) (U'.gt e).pG ![x, x', y]) z J' *
        val (L := D.toPre.P.L) (φ := thφ D.toPre.P.A (x3 D.toPre.P.A)) (ε := thε) D.toPre.cub.t
          (tri (thick R I e) (U.gt e).pG ![x, x', toUnit T ≫ ae]) z J := by
  choose N hN using fun χ : T.left ⟶ G.left => exists_chart U.LG.isLB (χ z)
  choose N' hN' using fun χ : T.left ⟶ G.left => exists_chart U'.LG.isLB (χ z)
  have f₃ := tri_thφ (thick R I e) (fstG I e G) ![x, x', y] (𝟙 _) (Category.id_comp _).symm
  have e₁ := cube_val U ![x, x', (toUnit T ≫ ae) * y] hJ hN
  have e₂ := cube_val U ![x, x', toUnit T ≫ ae] hJ hN
  have e₃ := cube_val U' ![x, x', y] hJ' hN'
  have e₄ := cube_tr a hw U.cubG U'.cubG hs (T := (Over.map (thick R I e)).obj T) (up x) (up x') (up y) hN hN'
  rw [← up_ae hae, ← up_mul] at e₄
  have e₅ := prod_cub_tr ae x x' y (wVal U e z J N)
  rw [prod_cub x x' y (fun s => wVal U e z J N (s ≫ (tr ae).left)),
    ← prod_psum x x' y (fun s => wVal U e z J N (s ≫ (tr ae).left)), prod_cub, ← prod_psum, prod_cub,
    ← prod_psum] at e₅
  have e₆ : (∏ k : thK.{0}, uV u z J J' (psum (thickObj R I e G) ![x, x', y] k.down).left ^ thε k) *
      (∏ k : thK.{0}, wVal U' e z J' N' (psum (thickObj R I e G) ![x, x', y] k.down).left ^ thε k) =
      (∏ k : thK.{0}, wVal U e z J N ((psum (thickObj R I e G) ![x, x', y] k.down).left ≫ (tr ae).left) ^ thε k) *
      ∏ k : thK.{0}, gw wL (tri (thick R I e) (fstG I e G) ![x, x', y] ≫ thφ G (x3 G) k) z
        (N ((tri (thick R I e) (fstG I e G) ![x, x', y] ≫ thφ G (x3 G) k) ≫ (tr a).left))
        (N' (tri (thick R I e) (fstG I e G) ![x, x', y] ≫ thφ G (x3 G) k)) ^ thε k := by
    rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun k _ => ?_
    rw [← mul_zpow, ← mul_zpow, f₃ k]
    exact congrArg (· ^ thε k) (uV_mul hae u sq hJ hJ' hN hN' _)
  have alg : ∀ {V : Type} [CommGroup V] {m₁ m₂ m₃ w₁ w₂ w₃ w₄ l₁ l₂ l₃ d c : V}, m₁ = w₁ * l₁ → m₂ = w₂ * l₂ →
      m₃ = w₃ * l₃ → l₁ = d * l₃ * l₂ → w₄ * w₂ = w₁ → c * w₃ = w₄ * d → m₁ = c * m₃ * m₂ := by
    intro V _ m₁ m₂ m₃ w₁ w₂ w₃ w₄ l₁ l₂ l₃ d c h₁ h₂ h₃ h₄ h₅ h₆
    rw [h₁, h₂, h₃, h₄, ← h₅, ← _root_.mul_assoc c, h₆]
    ac_rfl
  exact alg e₁ e₂ e₃ e₄ e₅ e₆

theorem even_uV (ha : a ^ 2 = 1) (hf : Function.Surjective G.hom.appTop.hom)
    {T : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} (y : T ⟶ thickObj R I e G) {z : T.left}
    {J : (T.left ⟶ D.toPre.P.A.left) → D.toPre.P.L.ι} {J' : (T.left ⟶ D'.toPre.P.A.left) → D'.toPre.P.L.ι}
    {N : (T.left ⟶ G.left) → U.LG.L.ι}
    (hJ : Good D.toPre.P.L z J) (hJ' : Good D'.toPre.P.L z J') (hN : Good U.LG.L z N) :
    val D.toPre.sym (y.left ≫ (tr ae).left ≫ (U.gt e).pG.left) z J * uV u z J J' y.left =
      uV u z J J' (y.left ≫ (ι[thickObj R I e G]).left) * (val D'.toPre.sym (y.left ≫ (U'.gt e).pG.left) z J' *
        val U.symG (T.hom ≫ thick R I e ≫ a.left) z N) := by
  choose N' hN' using fun χ : T.left ⟶ G.left => exists_chart U'.LG.isLB (χ z)
  have iF : (ι[thickObj R I e G]).left ≫ (fstG I e G).left = (fstG I e G).left ≫ (ι[G]).left :=
    EvenPull.inv_fst _ G
  have ae2 : (toUnit T ≫ ae) * (toUnit T ≫ ae) = 1 := by
    have h := up_mul (toUnit T ≫ ae) (toUnit T ≫ ae)
    rw [up_ae hae, ← MonObj.comp_mul _ a a, ← pow_two a, ha, MonObj.comp_one] at h
    have o := up_mul (1 : T ⟶ thickObj R I e G) 1
    rw [_root_.mul_one] at o
    have k := congrArg (fun q => q.left) (h.trans (left_eq_mul.1 o).symm)
    exact Over.OverMorphism.ext (pullback.hom_ext k ((Over.w _).trans (Over.w (1 : T ⟶ thickObj R I e G)).symm))
  have i₂ : (y.left ≫ (tr ae).left) ≫ (ι[thickObj R I e G]).left =
      (y.left ≫ (ι[thickObj R I e G]).left) ≫ (tr ae).left := by
    rw [comp_tr, ← Over.comp_left, ← Over.comp_left, comp_tr, ← Hom.inv_def, ← Hom.inv_def, mul_inv,
      inv_eq_of_mul_eq_one_right ae2]
  have e₁ := even_val U (y.left ≫ (tr ae).left) hJ hN
  have e₂ := even_val U' y.left hJ' hN'
  have e₃ := sym_tr a hw ha U.symG U.symG_gen U'.symG U'.symG_gen U'.symG_rig hf (y.left ≫ (fstG I e G).left) hN hN'
  have e₅ := uV_mul hae u sq hJ hJ' hN hN' y.left
  have e₆ := uV_mul hae u sq hJ hJ' hN hN' (y.left ≫ (ι[thickObj R I e G]).left)
  have k₁ : (y.left ≫ (tr ae).left) ≫ (fstG I e G).left = (y.left ≫ (fstG I e G).left) ≫ (tr a).left :=
    (Category.assoc _ _ _).trans ((congrArg (y.left ≫ ·) (tr_fst hae)).trans (Category.assoc _ _ _).symm)
  have k₂ : (y.left ≫ (ι[thickObj R I e G]).left) ≫ (fstG I e G).left =
      (y.left ≫ (fstG I e G).left) ≫ (ι[G]).left :=
    (Category.assoc _ _ _).trans ((congrArg (y.left ≫ ·) iF).trans (Category.assoc _ _ _).symm)
  have k₃ : (y.left ≫ (fstG I e G).left) ≫ (toUnit G ≫ a).left = T.hom ≫ thick R I e ≫ a.left := by
    have : up y ≫ toUnit G ≫ a = toUnit _ ≫ a := by rw [← Category.assoc, comp_toUnit]
    exact (congrArg (fun q => q.left) this).trans (Category.assoc T.hom _ _)
  rw [i₂, k₁, Category.assoc y.left (tr ae).left] at e₁
  rw [k₂] at e₆
  rw [k₃] at e₃
  have alg : ∀ {V : Type} [CommGroup V] {m w w' s m₂ v v' s₂ d d' κ c c' : V}, m * w = w' * s → m₂ * v = v' * s₂ →
      s = d' * d⁻¹ * s₂ * κ → c * v = w * d → c' * v' = w' * d' → m * c = c' * (m₂ * κ) := by
    intro V _ m w w' s m₂ v v' s₂ d d' κ c c' h₁ h₂ h₃ h₅ h₆
    have a₁ := congrArg Additive.ofMul h₁
    have a₂ := congrArg Additive.ofMul h₂
    have a₄ := congrArg Additive.ofMul h₃
    have a₅ := congrArg Additive.ofMul h₅
    have a₆ := congrArg Additive.ofMul h₆
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_inv] at a₁ a₂ a₄ a₅ a₆ ⊢
    linear_combination (norm := abel) a₁ - a₂ + a₄ + a₅ - a₆
  exact alg e₁ e₂ e₃ e₅ e₆


omit u sq in

theorem exists_level [IsLocalRing R] (hG : IsSemiAbelian G) (ha : a ^ 2 = 1)
    (hf : Function.Surjective G.hom.appTop.hom)
    (hs : Function.Surjective ((snd G (G ⊗ G)).left ≫ (snd G G).left ≫ G.hom).appTop.hom)
    (β : D'.toPre.P.A ⟶ D.toPre.P.A) (hβ : (U'.gt e).pG.left ≫ β.left = (U.gt e).pG.left)
    (be : (thickObj R I e D'.toPre.P.A).left ⟶ D.toPre.P.A.left)
    (hb : (tr ae).left ≫ (U.gt e).pG.left = (U'.gt e).q.left ≫ be) :
    ∃ v : LB.Iso (D'.toPre.P.L.pull (fstG I e D'.toPre.P.A).left) (D.toPre.P.L.pull be), v.IsGen ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ (thickObj R I e G).left) (z : Z) (jM : D.toPre.P.L.ι) (jM' : D'.toPre.P.L.ι)
      (jL : U.LG.L.ι) (jL' : U'.LG.L.ι), (U.gt e).pG.left ((tr ae).left (r z)) ∈ D.toPre.P.L.U jM →
      (U'.gt e).pG.left (r z) ∈ D'.toPre.P.L.U jM' → (tr a).left ((fstG I e G).left (r z)) ∈ U.LG.L.U jL →
      (fstG I e G).left (r z) ∈ U'.LG.L.U jL' →
      gw v (r ≫ (U'.gt e).q.left) z jM (fun _ => jM') * gw (U'.w e) r z jM' (fun _ => jL') =
        gw (U.w e) (r ≫ (tr ae).left) z jM (fun _ => jL) * gw wL (r ≫ (fstG I e G).left) z jL jL' := by
  obtain ⟨u, hu, sq⟩ := exists_comparison D.toPre.P.isLB D'.toPre.P.isLB U.LG.isLB U'.LG.isLB (tr ae).left
    (tr_fst hae) (U.w_gen e) (U'.w_gen e) hw
  have := (U'.gt e).q_hom
  have := (U'.gt e).i_hom
  have hq' : ∀ {Z : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} (τ : Z ⟶ splitTorus _ D'.toPre.X),
      (τ ≫ (U'.gt e).i) ≫ (U'.gt e).q = (1 : Z ⟶ thickObj R I e G) ≫ (U'.gt e).q := fun τ => by
    rw [Category.assoc, (U'.gt e).isKernel.w, MonObj.one_comp, ← Category.assoc, comp_toUnit, Hom.one_def]
  have hm : ∀ {Z : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} (τ : Z ⟶ splitTorus _ D'.toPre.X)
      (y : Z ⟶ thickObj R I e G), ((τ ≫ (U'.gt e).i) * y) ≫ (U'.gt e).q = y ≫ (U'.gt e).q := fun τ y => by
    rw [MonObj.mul_comp, hq', ← MonObj.mul_comp, _root_.one_mul]
  have hF : ∀ {Z : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} {x y : Z ⟶ thickObj R I e G},
      x ≫ (U'.gt e).q = y ≫ (U'.gt e).q →
      x.left ≫ (tr ae).left ≫ (U.gt e).pG.left = y.left ≫ (tr ae).left ≫ (U.gt e).pG.left := fun {Z x y} h => by
    have : x.left ≫ (U'.gt e).q.left = y.left ≫ (U'.gt e).q.left := congrArg (fun q => q.left) h
    rw [hb, reassoc_of% this]
  have him : ∀ {Z : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} {x y : Z ⟶ thickObj R I e G},
      x ≫ (U'.gt e).q = y ≫ (U'.gt e).q → TorusCoord.im (U.gt e) x = TorusCoord.im (U.gt e) y := fun {Z x y} h => by
    apply Over.OverMorphism.ext
    have := pG_congr (U'.gt e) h
    show x.left ≫ (U.gt e).pG.left = y.left ≫ (U.gt e).pG.left
    rw [← hβ]
    exact (Category.assoc _ _ _).symm.trans ((congrArg (· ≫ β.left) this).trans (Category.assoc _ _ _))
  have htri : ∀ {Z : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} (t t' : Z ⟶ splitTorus _ D'.toPre.X)
      (y : Z ⟶ thickObj R I e G), tri (thick R I e) (U.gt e).pG ![t ≫ (U'.gt e).i, t' ≫ (U'.gt e).i, y] =
      tri (thick R I e) (U.gt e).pG ![1, 1, y] := fun t t' y => by
    show (lift (TorusCoord.im (U.gt e) (t ≫ (U'.gt e).i)) (lift (TorusCoord.im (U.gt e) (t' ≫ (U'.gt e).i))
      (TorusCoord.im (U.gt e) y))).left =
      (lift (TorusCoord.im (U.gt e) 1) (lift (TorusCoord.im (U.gt e) 1) (TorusCoord.im (U.gt e) y))).left
    rw [him (hq' t), him (hq' t')]
  have inv : ∀ (Z : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))) (τ : Z ⟶ splitTorus _ D'.toPre.X)
      (y : Z ⟶ thickObj R I e G) (z : Z.left) (jM : D.toPre.P.L.ι) (jM' : D'.toPre.P.L.ι),
      ((tr ae).left ≫ (U.gt e).pG.left) (y.left z) ∈ D.toPre.P.L.U jM →
      (U'.gt e).pG.left (y.left z) ∈ D'.toPre.P.L.U jM' →
      gw u ((τ ≫ (U'.gt e).i) * y).left z jM (fun _ => jM') = gw u y.left z jM (fun _ => jM') := by
    intro Z₀ τ₀ y₀ z₀ jM jM' m m'
    have := hG.geomConnected
    have := U.smooth
    have := connectedSpace_spec_quotient (I ^ (e + 1)) (Z₀.hom z₀)
    have : GeometricallyConnected (thickObj R I e G).hom :=
      inferInstanceAs (GeometricallyConnected (pullback.snd G.hom (thick R I e)))
    have : ConnectedSpace (thickObj R I e G).left :=
      GroupConn.connectedSpace_of_section (thickObj R I e G).hom (η : 𝟙_ _ ⟶ thickObj R I e G).left (Over.w _)
    obtain ⟨ρ, key⟩ := exists_ratio_translate (U'.gt e).i D.toPre.P.isLB D'.toPre.P.isLB u hu
      (fun _ t y => hF (hm t y)) (fun _ t y => pG_congr _ (hm t y))
    have triv := ratio_eq_one (U'.gt e).i ρ (fun Z z => by
      choose J hJ using fun χ : Z.left ⟶ D.toPre.P.A.left => exists_chart D.toPre.P.isLB (χ z)
      choose J' hJ' using fun χ : Z.left ⟶ D'.toPre.P.A.left => exists_chart D'.toPre.P.isLB (χ z)
      choose N hN using fun χ : Z.left ⟶ G.left => exists_chart U.LG.isLB (χ z)
      refine ⟨uV u z J J', fun t y => ?_, fun t t' y => ?_, fun t => ?_⟩
      · rw [uV, uV, hF (hm t y), pG_congr _ (hm t y)]
        exact key Z t y z _ _ (hJ (y.left ≫ (tr ae).left ≫ (U.gt e).pG.left)) (hJ' _)
      · have a := cube_uV hae u hw sq hs (t ≫ (U'.gt e).i) (t' ≫ (U'.gt e).i) y hJ hJ'
        have b := cube_uV hae u hw sq hs 1 1 y hJ hJ'
        rw [htri, htri, tri_congr (U'.gt e) y (hq' t) (hq' t')] at a
        exact mul_right_cancel (mul_right_cancel (a.symm.trans b))
      · have a := even_uV hae u hw sq ha hf (t ≫ (U'.gt e).i) hJ hJ' hN
        have b := even_uV hae u hw sq ha hf (1 : Z ⟶ thickObj R I e G) hJ hJ' hN
        rw [hF (hq' t), pG_congr (U'.gt e) (hq' t)] at a
        exact cancel_even a b)
    rw [key Z₀ τ₀ y₀ z₀ jM jM' m m', triv, map_one, _root_.one_mul]
  haveI := (U'.gt e).q_flat
  haveI := (U'.gt e).q_surj
  haveI := (U'.gt e).q_affine
  obtain ⟨v, hv, hv'⟩ := LevelComparison.exists_iso_descend (U'.gt e).q.left (fstG I e D'.toPre.P.A).left be
    (p := (tr ae).left ≫ (U.gt e).pG.left) (p' := (U'.gt e).pG.left) hb rfl u hu (fun Z g₁ g₂ z j j' h a b => by
      let Z' : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1)))) := Over.mk (g₂ ≫ (thickObj R I e G).hom)
      let k₂ : Z' ⟶ thickObj R I e G := Over.homMk g₂ rfl
      let k₁ : Z' ⟶ thickObj R I e G := Over.homMk g₁ (by
        change g₁ ≫ (thickObj R I e G).hom = g₂ ≫ (thickObj R I e G).hom
        rw [← Over.w (U'.gt e).q, reassoc_of% h])
      have e₁ : k₁ ≫ (U'.gt e).q = k₂ ≫ (U'.gt e).q := Over.OverMorphism.ext h
      have w : (k₁ * k₂⁻¹) ≫ (U'.gt e).q = toUnit Z' ≫ η[thickObj R I e D'.toPre.P.A] := by
        rw [MonObj.mul_comp, GrpObj.inv_comp, e₁, mul_inv_cancel]
        rfl
      have ht : ((U'.gt e).isKernel.lift _ _ w ≫ (U'.gt e).i) * k₂ = k₁ := by
        rw [(U'.gt e).isKernel.lift_fst, inv_mul_cancel_right]
      have := inv Z' ((U'.gt e).isKernel.lift _ _ w) k₂ z j j' a b
      rw [ht] at this
      exact this)
  refine ⟨v, hv, fun Z r z jM jM' jL jL' a₁ a₂ a₃ a₄ => ?_⟩
  rw [← sq Z r z jM jM' jL jL' a₁ a₂ a₃ a₄]
  exact congrArg (· * _) (hv' Z r z jM jM' a₁ a₂)

end Level

section Limit

open UnifCompare

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {G : Over (Spec (CommRingCat.of R))} [GrpObj G]
  [IsCommMonObj G]

theorem gw_trans' {D : DegData R I} {A : PolAV (Spec (CommRingCat.of (FractionRing R)))} (U : UnifPre I D A G)
    (e : ℕ) {Z : Scheme.{0}} (r : Z ⟶ (thickObj R I e G).left) (z : Z) (jM : D.toPre.P.L.ι) (jL : U.LG.L.ι)
    (hM : (U.gt e).pG.left (r z) ∈ D.toPre.P.L.U jM) (hL : (fstG I e G).left (r z) ∈ U.LG.L.U jL) :
    gw (U.w (e + 1)) (r ≫ thickMap R I e G) z jM (fun _ => jL) = gw (U.w e) r z jM (fun _ => jL) := by
  have hM' : (U.gt (e + 1)).pG.left (thickMap R I e G (r z)) ∈ D.toPre.P.L.U jM :=
    (congrArg (fun g => g (r z) ∈ D.toPre.P.L.U jM) (U.gt_q e)).mpr hM
  have hL' : (fstG I (e + 1) G).left (thickMap R I e G (r z)) ∈ U.LG.L.U jL :=
    (congrArg (fun g => g (r z) ∈ U.LG.L.U jL) (trans_comp_proj e G)).mpr hL
  have hm : r z ∈ thickMap R I e G ⁻¹ᵁ ((D.toPre.P.L.pull (U.gt (e + 1)).pG.left).U (fun _ => jM) ⊓
        (U.LG.L.pull (fstG I (e + 1) G).left).U (fun _ => jL)) ⊓
      ((D.toPre.P.L.pull (U.gt e).pG.left).U (fun _ => jM) ⊓
        (U.LG.L.pull (fstG I e G).left).U (fun _ => jL)) :=
    ⟨⟨mem_pull.2 hM', mem_pull.2 hL'⟩, mem_pull.2 hM, mem_pull.2 hL⟩
  have H := congrArg (gm r z _)
    (U.w_compat e (fun _ => jM, fun _ => jL) _ inf_le_left inf_le_right)
  have h₁ := gm_pull r (thickMap R I e G) z _ hm.1 ((U.w (e + 1)).s (fun _ => jM, fun _ => jL))
  exact h₁.symm.trans ((gm_res r z inf_le_left hm _).symm.trans (H.trans (gm_res r z inf_le_right hm _)))


omit [IsDomain R] [GrpObj G] [IsCommMonObj G] in
theorem thickMap_comm {G' : Over (Spec (CommRingCat.of R))} (e : ℕ) (f₀ : thickObj R I e G' ⟶ thickObj R I e G)
    (f₁ : thickObj R I (e + 1) G' ⟶ thickObj R I (e + 1) G) (f : G'.left ⟶ G.left)
    (h₀ : f₀.left ≫ (fstG I e G).left = (fstG I e G').left ≫ f)
    (h₁ : f₁.left ≫ (fstG I (e + 1) G).left = (fstG I (e + 1) G').left ≫ f) :
    thickMap R I e G' ≫ f₁.left = f₀.left ≫ thickMap R I e G := by
  apply pullback.hom_ext
  · exact (Category.assoc _ _ _).trans ((congrArg (thickMap R I e G' ≫ ·) h₁).trans ((Category.assoc _ _ _).symm.trans
      ((congrArg (· ≫ f) (trans_comp_proj e G')).trans (h₀.symm.trans
        ((congrArg (f₀.left ≫ ·) (trans_comp_proj e G).symm).trans (Category.assoc _ _ _).symm)))))
  · have a₁ : f₁.left ≫ pullback.snd _ _ = pullback.snd _ _ := Over.w f₁
    have a₀ : f₀.left ≫ pullback.snd _ _ = pullback.snd _ _ := Over.w f₀
    have k : ∀ B : Over (Spec (CommRingCat.of R)), thickMap R I e B ≫ pullback.snd _ _ =
        pullback.snd _ _ ≫ thickTrans R I e := fun B => pullback.lift_snd _ _ _
    exact (Category.assoc _ _ _).trans ((congrArg (thickMap R I e G' ≫ ·) a₁).trans ((k G').trans
      ((congrArg (· ≫ thickTrans R I e) a₀.symm).trans ((Category.assoc _ _ _).trans
        ((congrArg (f₀.left ≫ ·) (k _).symm).trans (Category.assoc _ _ _).symm)))))

theorem surjective_appTop {D : DegData R I} {A : PolAV (Spec (CommRingCat.of (FractionRing R)))}
    (U : UnifPre I D A G) : Function.Surjective G.hom.appTop.hom ∧
      Function.Surjective ((snd G (G ⊗ G)).left ≫ (snd G G).left ≫ G.hom).appTop.hom := by
  have hG := GlobalTheory.abelianSchemeLaws_all.1.globalFns
  have := U.smooth
  have : IsDominant (jK R) := ⟨(PrimeSpectrum.denseRange_comap_iff_ker_le_nilRadical _).2
    (((RingHom.injective_iff_ker_eq_bot _).1 (IsFractionRing.injective R (FractionRing R))).le.trans bot_le)⟩
  have := IsSchemeTheoreticallyDominant.of_isDominant (jK R)
  have hg : IsPullback (U.gen.inv.left ≫ pullback.fst G.hom (jK R)) A.A.hom G.hom (jK R) := by
    have : IsIso U.gen.inv.left := inferInstanceAs (IsIso ((Over.forget _).map U.gen.inv))
    have s : IsPullback U.gen.inv.left A.A.hom (pullback.snd G.hom (jK R)) (𝟙 _) :=
      IsPullback.of_horiz_isIso ⟨(Over.w U.gen.inv).trans (Category.comp_id _).symm⟩
    simpa using s.paste_horiz (IsPullback.of_hasPullback G.hom (jK R))
  have s₁ : Function.Surjective G.hom.appTop.hom :=
    RigidIsoCube.surjective_appTop_of_baseChange hg (eSec G) (Over.w η[G]) (hG _ _ A.isAb).2
  have : Flat (G ⊗ G).hom := by rw [Over.tensorObj_hom]; infer_instance
  exact ⟨s₁, surj_comp (RigidIsoCube.surjective_snd_of_generic hG (jK R) G A.isAb hg _)
    (surj_comp (RigidIsoCube.surjective_snd_of_generic hG (jK R) G A.isAb hg _) s₁)⟩


-- TODO: Stopgap for https://github.com/leanprover-community/riemann-hypothesis/issues/1038: remove once Mathlib lowers its priority.
attribute [-instance] CategoryTheory.Monoidal.fromInducedMonoidal in
theorem exists_iso_translate [IsLocalRing R] (hR : AdmBase R I) (hG : IsSemiAbelian G) {D D' : DegData R I}
    {A A' : PolAV (Spec (CommRingCat.of (FractionRing R)))} (U : UnifPre I D A G) (U' : UnifPre I D' A' G)
    (a : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ G) (ha : a ^ 2 = 1) (b : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ D.toPre.P.A)
    (hab : ∀ (e : ℕ) (ae : Spec (CommRingCat.of (R ⧸ I ^ (e + 1))) ⟶ (thickObj R I e G).left),
      ae ≫ (thickObj R I e G).hom = 𝟙 _ → ae ≫ (fstG I e G).left = thick R I e ≫ a.left →
      ae ≫ (U.gt e).pG.left = thick R I e ≫ b.left)
    (wL : LB.Iso U'.LG.L (U.LG.L.pull (tr a).left)) (hw : wL.IsGen) (β : D'.toPre.P.A ≅ D.toPre.P.A)
    (hβ : ∀ e, (U'.gt e).pG.left ≫ β.hom.left = (U.gt e).pG.left) :
    ∃ w : LB.Iso D'.toPre.P.L (D.toPre.P.L.pull (padd D.toPre.P.A β.hom (toUnit D'.toPre.P.A ≫ b)).left),
      w.IsGen := by
  rw [isGen_iff] at hw
  obtain ⟨hf, hs⟩ := surjective_appTop U
  obtain ⟨ae, hae⟩ : ∃ ae : ∀ e, 𝟙_ _ ⟶ thickObj R I e G,
      ∀ e, (ae e).left ≫ (fstG I e G).left = thick R I e ≫ a.left :=
    ⟨fun e => Over.homMk (pullback.lift (thick R I e ≫ a.left) (𝟙 _) (by
      rw [Category.assoc, Over.w a]; exact (Category.comp_id _).trans (Category.id_comp _).symm))
      (pullback.lift_snd _ _ _), fun e => pullback.lift_fst _ _ _⟩
  let Φ : D'.toPre.P.A ≅ D.toPre.P.A :=
    { hom := β.hom * (toUnit _ ≫ b)
      inv := (𝟙 _ * (toUnit _ ≫ b)⁻¹) ≫ β.inv
      hom_inv_id := by
        rw [← Category.assoc, MonObj.comp_mul, Category.comp_id, GrpObj.comp_inv, ← Category.assoc, comp_toUnit,
          mul_inv_cancel_right, β.hom_inv_id]
      inv_hom_id := by
        rw [MonObj.comp_mul, Category.assoc, β.inv_hom_id, Category.comp_id, ← Category.assoc, comp_toUnit,
          inv_mul_cancel_right] }
  let βe : ∀ e, thickObj R I e D'.toPre.P.A ≅ thickObj R I e D.toPre.P.A := fun e =>
    (Over.pullback (thick R I e)).mapIso Φ
  have hβe : ∀ e, (βe e).hom.left ≫ (fstG I e D.toPre.P.A).left = (fstG I e D'.toPre.P.A).left ≫ Φ.hom.left :=
    fun e => pullback.lift_fst _ _ _
  have hb : ∀ e, (tr (ae e)).left ≫ (U.gt e).pG.left =
      (U'.gt e).q.left ≫ (βe e).hom.left ≫ (fstG I e D.toPre.P.A).left := fun e => by
    have h₁ := TorusCoord.im_mul (U.gt e) (toUnit _ ≫ ae e) (𝟙 (thickObj R I e G))
    have h₂ : TorusCoord.im (U.gt e) (toUnit (thickObj R I e G) ≫ ae e) = toUnit _ ≫ b := by
      apply Over.OverMorphism.ext
      show ((thickObj R I e G).hom ≫ (ae e).left) ≫ (U.gt e).pG.left = ((thickObj R I e G).hom ≫ thick R I e) ≫ b.left
      rw [Category.assoc, Category.assoc]
      exact congrArg ((thickObj R I e G).hom ≫ ·) (hab e _ (Over.w (ae e)) (hae e))
    have h₃ : TorusCoord.im (U.gt e) (𝟙 (thickObj R I e G)) = (U'.gt e).pG ≫ β.hom :=
      Over.OverMorphism.ext ((Category.id_comp _).trans (hβ e).symm)
    have h₄ : (U'.gt e).pG ≫ Φ.hom = ((U'.gt e).pG ≫ β.hom) * (toUnit _ ≫ b) := by
      show (U'.gt e).pG ≫ (β.hom * (toUnit _ ≫ b)) = _
      rw [MonObj.comp_mul, ← Category.assoc _ (toUnit _), comp_toUnit]
    rw [h₂, h₃, _root_.mul_comm (toUnit _ ≫ b), ← h₄] at h₁
    rw [hβe]
    exact (congrArg (fun q => q.left) h₁).trans (Category.assoc (U'.gt e).q.left _ _)
  choose v hvg hv using fun e => exists_level (hae e) hw hG ha hf hs β.hom (hβ e) _ (hb e)
  have hc : ∀ e, thickMap R I e D'.toPre.P.A ≫ (βe (e + 1)).hom.left =
      (βe e).hom.left ≫ thickMap R I e D.toPre.P.A := fun e => thickMap_comm e _ _ _ (hβe e) (hβe (e + 1))
  have ht : ∀ e, thickMap R I e G ≫ (tr (ae (e + 1))).left = (tr (ae e)).left ≫ thickMap R I e G := fun e =>
    thickMap_comm e _ _ _ (tr_fst (hae e)) (tr_fst (hae (e + 1)))
  obtain ⟨hN, -, -, hC⟩ := hR
  obtain ⟨Ψ, w, hwg, H⟩ := exists_iso_of_compatible_thickenings GlobalTheory.abelianSchemeLaws_all.1.secBaseChange
    GlobalTheory.abelianSchemeLaws_all.1.ample R I D.toPre.P D'.toPre.P βe v hvg hc (by
    intro e Z r z j j' hj hj'
    have := (U'.gt e).q_flat
    have := (U'.gt e).q_surj
    have hm : ∀ y : (thickObj R I e D'.toPre.P.A).left,
        y ∈ (D.toPre.P.L.pull ((βe e).hom.left ≫ (fstG I e D.toPre.P.A).left)).U (fun _ => j) ⊓
          (D'.toPre.P.L.pull (fstG I e D'.toPre.P.A).left).U (fun _ => j') →
        thickMap R I e D'.toPre.P.A y ∈
          (D.toPre.P.L.pull ((βe (e + 1)).hom.left ≫ (fstG I (e + 1) D.toPre.P.A).left)).U (fun _ => j) ⊓
          (D'.toPre.P.L.pull (fstG I (e + 1) D'.toPre.P.A).left).U (fun _ => j') := by
      intro y hy
      have k : thickMap R I e D'.toPre.P.A ≫ (βe (e + 1)).hom.left ≫ (fstG I (e + 1) D.toPre.P.A).left =
          (βe e).hom.left ≫ (fstG I e D.toPre.P.A).left :=
        (Category.assoc _ _ _).symm.trans ((congrArg (· ≫ (fstG I (e + 1) D.toPre.P.A).left) (hc e)).trans
          ((Category.assoc _ _ _).trans (congrArg ((βe e).hom.left ≫ ·) (trans_comp_proj e _))))
      exact ⟨mem_pull.2 ((congrArg (fun g => g y ∈ D.toPre.P.L.U j) k).mpr (mem_pull.1 hy.1)),
        mem_pull.2 ((congrArg (fun g => g y ∈ D'.toPre.P.L.U j') (trans_comp_proj e _)).mpr
          (mem_pull.1 hy.2))⟩
    have hz : r z ∈ (D.toPre.P.L.pull ((βe e).hom.left ≫ (fstG I e D.toPre.P.A).left)).U (fun _ => j) ⊓
          (D'.toPre.P.L.pull (fstG I e D'.toPre.P.A).left).U (fun _ => j') :=
      ⟨mem_pull.2 hj, mem_pull.2 hj'⟩
    refine (gm_pull r _ z _ (hm _ hz) _).symm.trans
      (gm_eq_of_flat_surjective (U'.gt e).q.left _ _ (fun x _ hx => ?_) r z (hm _ hz) hz)
    refine (gm_pull _ _ x _ (hm _ hx) _).trans ?_
    obtain ⟨jL, hL⟩ := exists_chart U.LG.isLB ((tr a).left ((fstG I e G).left x))
    obtain ⟨jL', hL'⟩ := exists_chart U'.LG.isLB ((fstG I e G).left x)
    have hM : (U.gt e).pG.left ((tr (ae e)).left x) ∈ D.toPre.P.L.U j :=
      (congrArg (fun g => g x ∈ D.toPre.P.L.U j) (hb e)).mpr (mem_pull.1 hx.1)
    have hM' : (U'.gt e).pG.left x ∈ D'.toPre.P.L.U j' := mem_pull.1 hx.2
    have k₁ : (thickMap R I e G ≫ (tr (ae (e + 1))).left) ≫ (U.gt (e + 1)).pG.left =
        (tr (ae e)).left ≫ (U.gt e).pG.left :=
      (congrArg (· ≫ (U.gt (e + 1)).pG.left) (ht e)).trans ((Category.assoc _ _ _).trans
        (congrArg ((tr (ae e)).left ≫ ·) (U.gt_q e)))
    have h₀ := hv e _ (𝟙 _) x j j' jL jL' hM hM' hL hL'
    have h₁ := hv (e + 1) _ (thickMap R I e G) x j j' jL jL'
      ((congrArg (fun g => g x ∈ D.toPre.P.L.U j) k₁).mpr hM)
      ((congrArg (fun g => g x ∈ D'.toPre.P.L.U j') (U'.gt_q e)).mpr hM')
      ((congrArg (fun g => (tr a).left (g x) ∈ U.LG.L.U jL) (trans_comp_proj e G)).mpr hL)
      ((congrArg (fun g => g x ∈ U'.LG.L.U jL') (trans_comp_proj e G)).mpr hL')
    rw [gw_trans U' e x j' jL' hM' hL', ht, gw_trans' U e (tr (ae e)).left x j jL hM
      ((congrArg (fun g => g x ∈ U.LG.L.U jL) (tr_fst (hae e))).mpr hL), trans_comp_q, trans_comp_proj] at h₁
    rw [Category.id_comp, Category.id_comp, Category.id_comp] at h₀
    exact mul_right_cancel (h₁.trans h₀.symm))
  have := D'.toPre.P.isAb.proper
  have := D.toPre.P.isAb.proper
  have e : Ψ.hom = padd D.toPre.P.A β.hom (toUnit D'.toPre.P.A ≫ b) :=
    hom_eq_of_thickenings_of_isProper R I ((IsAdicComplete.le_jacobson I).trans_eq Ideal.jacobson_bot.symm) _ _ Ψ.hom Φ.hom
      fun e => (H e).1.trans (hβe e)
  rw [← e]
  exact ⟨w, hwg⟩

end Limit

end GlobalTheory.MumCmp.Transl

theorem GlobalTheory.MumCmp.exists_iso_twist_of_translate : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G) (g : GtPt D.toPre (𝟙_ (Over (Sp R)))), (∃ z : GtPt D.toPre (𝟙_ (Over (Sp R))), z.IsZero ∧ GtPt.IsAdd g g z) → ∀ a : 𝟙_ (Over (Sp R)) ⟶ G, a ^ 2 = 1 → (∀ (e : ℕ) (ae : Spec (CommRingCat.of (R ⧸ maximalIdeal R ^ (e + 1))) ⟶ (thickObj R (maximalIdeal R) e G).left), ae ≫ (thickObj R (maximalIdeal R) e G).hom = 𝟙 _ → ae ≫ (fstG (maximalIdeal R) e G).left = thick R (maximalIdeal R) e ≫ a.left → ae ≫ (U.gt e).pG.left = thick R (maximalIdeal R) e ≫ g.b.left ∧ ∀ χ : D.toPre.X, LB.Gen.Corr D.toPre.P.L _ _ _ _ (LB.pullGen D.toPre.P.L _ _ ((U.gt e).t χ) ae) (LB.pullGen D.toPre.P.L _ _ (g.s χ) (thick R (maximalIdeal R) e))) → ∀ (A₂ : PolAV (Sp (FractionRing R))) (D₂ : DegData R (maximalIdeal R)) (U₂ : Unif (maximalIdeal R) D₂ A₂ G), LBIso U₂.LG.L (U.LG.L.pull ((toUnit G ≫ a) * 𝟙 G).left) → ∀ β : D₂.toPre.P.A ≅ D.toPre.P.A, IsMonHom β.hom → (∀ e : ℕ, (U₂.gt e).pG.left ≫ β.hom.left = (U.gt e).pG.left) → ∃ w : LB.Iso D₂.toPre.P.L (LB.LinComb D.toPre.P.L (GlobalTheory.MumCmp.twφ D₂.toPre D.toPre β.hom g.b) GlobalTheory.MumCmp.twε), w.IsGen ∧ ∃ t : LB.Gen (LB.LinComb D.toPre.P.L (fun i => D₂.toPre.xK 0 ≫ GlobalTheory.MumCmp.twφ D₂.toPre D.toPre β.hom g.b i) (fun i => -1 * GlobalTheory.MumCmp.twε i)), GlobalTheory.MumCmp.MapsAtExp D.toPre.P.L D₂.toPre.P.L (GlobalTheory.MumCmp.twφ D₂.toPre D.toPre β.hom g.b) GlobalTheory.MumCmp.twε w (D₂.toPre.xK 0) (-1) (D₂.toPre.psi 0) t ∧ LB.Gen.Corr D.toPre.P.L _ _ _ _ t (LB.mulGen D.toPre.P.L _ _ _ _ (D.toPre.psi 0) (LB.pullGen D.toPre.P.L _ _ (g.s 0) (toUnit (TK R)).left)) := by
  intro R _ _ _ hR D A G _ _ hG U g _ a ha hab A₂ D₂ U₂ ⟨wL, hw⟩ β hβ hq
  obtain ⟨w, hw⟩ := GlobalTheory.MumCmp.Transl.exists_iso_translate hR.1 hG U.toUnifPre U₂.toUnifPre a ha g.b
    (fun e ae h₁ h₂ => (hab e ae h₁ h₂).1) wL hw β hq
  exact GlobalTheory.T.exists_rigidified_translatedBundle_iso_psi_zero R _ D D₂ g β.hom hβ w hw
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoUniformisationTranslateOrderTwo =====
