module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsMonHomOfMul
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.MixCore
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaCore
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBTransport

@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.G.Geo.Tor

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.DVR

section GenOf

variable {X Y Y' : Scheme.{0}} (M : LB X)

def GenOf (F : ∀ (U : Type) [CommGroup U], ((Y ⟶ X) → U) → U) : Prop :=
  ∃ (K : Type) (_ : Fintype K) (φ : K → (Y ⟶ X)) (ε : K → ℤ) (u : LB.Gen (LB.LinComb M φ ε)), u.IsGen ∧
    ∀ (U : Type) [CommGroup U] (h : (Y ⟶ X) → U), ∏ k, h (φ k) ^ ε k = F U h

variable {M} {F F' : ∀ (U : Type) [CommGroup U], ((Y ⟶ X) → U) → U}

theorem GenOf.congr (a : GenOf M F) (e : ∀ (U : Type) [CommGroup U] h, F U h = F' U h) : GenOf M F' := by
  obtain ⟨K, _, φ, ε, u, hu, hF⟩ := a
  exact ⟨K, inferInstance, φ, ε, u, hu, fun U _ h => (hF U h).trans (e U h)⟩

theorem GenOf.mul (a : GenOf M F) (b : GenOf M F') : GenOf M fun U _ h => F U h * F' U h := by
  obtain ⟨K, _, φ, ε, u, hu, hF⟩ := a
  obtain ⟨K', _, φ', ε', u', hu', hF'⟩ := b
  refine ⟨K ⊕ K', inferInstance, Sum.elim φ φ', Sum.elim ε ε', LB.mulGen M φ ε φ' ε' u u',
    mulGen_isGen M φ ε φ' ε' u u' hu hu', fun U _ h => ?_⟩
  rw [Fintype.prod_sum_type]
  simp only [Sum.elim_inl, Sum.elim_inr]
  rw [hF U h, hF' U h]

theorem GenOf.inv (a : GenOf M F) : GenOf M fun U _ h => (F U h)⁻¹ := by
  obtain ⟨K, _, φ, ε, u, hu, hF⟩ := a
  refine ⟨K, inferInstance, φ, fun k => -ε k, LB.invGen M φ ε u, invGen_isGen M φ ε u hu, fun U _ h => ?_⟩
  simp only [zpow_neg, Finset.prod_inv_distrib]
  rw [hF U h]

theorem genOf_one : GenOf (Y := Y) M fun _ _ _ => 1 := by
  refine ⟨PEmpty, inferInstance, PEmpty.elim, PEmpty.elim, LB.oneGen M, ?_, fun U _ h => by simp⟩
  intro i j
  have hg : (LB.LinComb M (Y := Y) (K := PEmpty) PEmpty.elim PEmpty.elim).g i j = 1 := by
    simp [LB.LinComb]
    rfl
  rw [hg, _root_.one_mul]
  simp only [LB.oneGen, map_one]

theorem GenOf.pow (a : GenOf M F) (n : ℕ) : GenOf M fun U _ h => F U h ^ n := by
  induction n with
  | zero => exact genOf_one.congr fun U _ h => by simp
  | succ n ih => exact (ih.mul a).congr fun U _ h => by simp [pow_succ]

private theorem sameSum_of_prod_pow_eq {X Y : Scheme.{0}} {K K' : Type} [Fintype K] [Fintype K']
    (φ : K → (Y ⟶ X)) (ε : K → ℤ) (φ' : K' → (Y ⟶ X)) (ε' : K' → ℤ)
    (e : ∀ (U : Type) [CommGroup U] (h : (Y ⟶ X) → U), ∏ k, h (φ k) ^ ε k = ∏ k, h (φ' k) ^ ε' k) :
    LB.SameSum φ ε φ' ε' := by
  classical
  intro ψ
  have key := congrArg Multiplicative.toAdd
    (e (Multiplicative ℤ) fun q => Multiplicative.ofAdd (if q = ψ then (1 : ℤ) else 0))
  simp only [toAdd_prod, toAdd_zpow, toAdd_ofAdd, smul_eq_mul, mul_ite, _root_.mul_one, mul_zero] at key
  convert key

theorem GenOf.gen (hM : M.IsLB) (a : GenOf M F) {K : Type} [Fintype K] {φ : K → (Y ⟶ X)} {ε : K → ℤ}
    (e : ∀ (U : Type) [CommGroup U] (h : (Y ⟶ X) → U), ∏ k, h (φ k) ^ ε k = F U h) :
    ∃ u : LB.Gen (LB.LinComb M φ ε), u.IsGen := by
  obtain ⟨K₀, _, φ₀, ε₀, u₀, hu₀, hF⟩ := a
  obtain ⟨t, ht, -⟩ := gen_transport (L := M) hM
    (sameSum_of_prod_pow_eq φ₀ ε₀ φ ε fun U _ h => (hF U h).trans (e U h).symm) u₀ hu₀
  exact ⟨t, ht⟩

end GenOf

variable {S : Scheme.{0}} {A : Over S} [GrpObj A] [IsCommMonObj A] {L : RigLB A} (c : CubicalStr A L) {T : Over S}

include c in
theorem genOf_cub (x y z : T ⟶ A) : GenOf L.L fun _ _ h => h (x * y * z).left * (h (x * y).left)⁻¹ * (h (x * z).left)⁻¹ *
    (h (y * z).left)⁻¹ * h x.left * h y.left * h z.left * (h (1 : T ⟶ A).left)⁻¹ := by
  have hx3 : ∀ k, lift x (lift y z) ≫ x3 A k = ![x, y, z] k := by
    intro k
    fin_cases k <;> simp [x3]
  have hfold : ∀ l : List (Fin 3),
      lift x (lift y z) ≫ l.foldr (fun k acc => padd A (x3 A k) acc) (pzero A (G3 A)) =
        l.foldr (fun k acc => padd A (![x, y, z] k) acc) (pzero A T) := by
    intro l
    induction l with
    | nil =>
      simp only [List.foldr_nil, pzero]
      rw [← Category.assoc, comp_toUnit]
    | cons k l ih =>
      simp only [List.foldr_cons]
      rw [← ih, ← hx3 k]
      simp only [padd, ← Category.assoc, comp_lift]
  have hps : ∀ I : Finset (Fin 3),
      (lift x (lift y z)).left ≫ (psum A (x3 A) I).left = (psum A ![x, y, z] I).left := by
    intro I
    rw [← Over.comp_left]
    simp only [psum, hfold]
  have hpm : ∀ a b : T ⟶ A, padd A a b = a * b := fun _ _ => rfl
  have hpz : pzero A T = (1 : T ⟶ A) := rfl
  have e012 : psum A ![x, y, z] {0, 1, 2} = x * y * z := by
    have hl : (List.finRange 3).filter (· ∈ ({0, 1, 2} : Finset (Fin 3))) = [0, 1, 2] := by decide
    simp only [psum, hl, List.foldr_cons, List.foldr_nil, hpm, hpz]
    show x * (y * (z * 1)) = x * y * z
    rw [_root_.mul_one, _root_.mul_assoc]
  have e01 : psum A ![x, y, z] {0, 1} = x * y := by
    have hl : (List.finRange 3).filter (· ∈ ({0, 1} : Finset (Fin 3))) = [0, 1] := by decide
    simp only [psum, hl, List.foldr_cons, List.foldr_nil, hpm, hpz]
    show x * (y * 1) = x * y
    rw [_root_.mul_one]
  have e02 : psum A ![x, y, z] {0, 2} = x * z := by
    have hl : (List.finRange 3).filter (· ∈ ({0, 2} : Finset (Fin 3))) = [0, 2] := by decide
    simp only [psum, hl, List.foldr_cons, List.foldr_nil, hpm, hpz]
    show x * (z * 1) = x * z
    rw [_root_.mul_one]
  have e12 : psum A ![x, y, z] {1, 2} = y * z := by
    have hl : (List.finRange 3).filter (· ∈ ({1, 2} : Finset (Fin 3))) = [1, 2] := by decide
    simp only [psum, hl, List.foldr_cons, List.foldr_nil, hpm, hpz]
    show y * (z * 1) = y * z
    rw [_root_.mul_one]
  have e0 : psum A ![x, y, z] {0} = x := by
    have hl : (List.finRange 3).filter (· ∈ ({0} : Finset (Fin 3))) = [0] := by decide
    simp only [psum, hl, List.foldr_cons, List.foldr_nil, hpm, hpz]
    show x * 1 = x
    rw [_root_.mul_one]
  have e1 : psum A ![x, y, z] {1} = y := by
    have hl : (List.finRange 3).filter (· ∈ ({1} : Finset (Fin 3))) = [1] := by decide
    simp only [psum, hl, List.foldr_cons, List.foldr_nil, hpm, hpz]
    show y * 1 = y
    rw [_root_.mul_one]
  have e2 : psum A ![x, y, z] {2} = z := by
    have hl : (List.finRange 3).filter (· ∈ ({2} : Finset (Fin 3))) = [2] := by decide
    simp only [psum, hl, List.foldr_cons, List.foldr_nil, hpm, hpz]
    show z * 1 = z
    rw [_root_.mul_one]
  have eE : psum A ![x, y, z] ∅ = 1 := by
    have hl : (List.finRange 3).filter (· ∈ (∅ : Finset (Fin 3))) = [] := by decide
    simp only [psum, hl, List.foldr_nil, hpz]
  have hcube : ∀ {U : Type} [CommGroup U] (f : Finset (Fin 3) → U),
      ∏ I : ULift.{0} (Finset (Fin 3)), f I.down ^ ((-1 : ℤ) ^ (3 - I.down.card)) =
        f {0, 1, 2} * (f {0, 1})⁻¹ * (f {0, 2})⁻¹ * (f {1, 2})⁻¹ * f {0} * f {1} * f {2} * (f ∅)⁻¹ := by
    intro U _ f
    rw [Fintype.prod_equiv Equiv.ulift (fun I => f I.down ^ ((-1 : ℤ) ^ (3 - I.down.card)))
      (fun I => f I ^ ((-1 : ℤ) ^ (3 - I.card))) (fun _ => rfl)]
    rw [← Finset.powerset_univ, show (Finset.univ : Finset (Fin 3)) = {0, 1, 2} by decide]
    have h0 : (0 : Fin 3) ∉ ({1, 2} : Finset (Fin 3)) := by decide
    have h1 : (1 : Fin 3) ∉ ({2} : Finset (Fin 3)) := by decide
    have h2 : (∅ : Finset (Fin 3)) ≠ {2} := by decide
    have h3 : ({2} : Finset (Fin 3)).powerset = {∅, {2}} := by decide
    simp only [Finset.prod_powerset_insert h0, Finset.prod_powerset_insert h1, h3,
      Finset.prod_pair h2, Finset.insert_empty]
    have c3 : (-1 : ℤ) ^ (3 - ({0, 1, 2} : Finset (Fin 3)).card) = 1 := by decide
    have c01 : (-1 : ℤ) ^ (3 - ({0, 1} : Finset (Fin 3)).card) = -1 := by decide
    have c02 : (-1 : ℤ) ^ (3 - ({0, 2} : Finset (Fin 3)).card) = -1 := by decide
    have c12 : (-1 : ℤ) ^ (3 - ({1, 2} : Finset (Fin 3)).card) = -1 := by decide
    have c0 : (-1 : ℤ) ^ (3 - ({0} : Finset (Fin 3)).card) = 1 := by decide
    have c1 : (-1 : ℤ) ^ (3 - ({1} : Finset (Fin 3)).card) = 1 := by decide
    have c2 : (-1 : ℤ) ^ (3 - ({2} : Finset (Fin 3)).card) = 1 := by decide
    have cE : (-1 : ℤ) ^ (3 - (∅ : Finset (Fin 3)).card) = -1 := by decide
    simp only [c3, c01, c02, c12, c0, c1, c2, cE, zpow_one, zpow_neg_one]
    first
    | ac_rfl
  refine ⟨ULift.{0} (Finset (Fin 3)), inferInstance,
    fun I => (lift x (lift y z)).left ≫ (psum A (x3 A) I.down).left, fun I => (-1 : ℤ) ^ (3 - I.down.card),
    LB.pullGen L.L (thφ A (x3 A)) thε c.t (lift x (lift y z)).left,
    pullGen_isGen L.L (thφ A (x3 A)) thε c.t c.isGen (lift x (lift y z)).left, fun U _ h => ?_⟩
  simp only [hps]
  rw [hcube (fun I => h (psum A ![x, y, z] I).left)]
  simp only [e012, e01, e02, e12, e0, e1, e2, eE]

theorem genOf_rig (T : Over S) : GenOf L.L fun _ _ h => h (1 : T ⟶ A).left := by
  refine ⟨PUnit, inferInstance, fun _ => (toUnit T).left ≫ eSec A, fun _ => 1,
    LB.pullGen L.L _ _ L.rig (toUnit T).left, pullGen_isGen L.L _ _ L.rig L.rigGen (toUnit T).left,
    fun U _ h => ?_⟩
  simp only [Fintype.prod_unique, zpow_one]
  rfl

theorem genOf_sym (hs : L.IsSymmetric) (y : T ⟶ A) : GenOf L.L fun _ _ h => h y⁻¹.left * (h y.left)⁻¹ := by
  obtain ⟨-, ws, gws, -⟩ := hs
  obtain ⟨ν, hν⟩ := gen_of_iso ((isGen_iff ws).1 gws) y.left
  exact ⟨Fin 2, inferInstance, _, _, ν, hν, fun _ _ h => (Fin.prod_univ_two _).trans
    (congrArg₂ (· * ·) (zpow_one _) (zpow_neg_one _))⟩

include c in
theorem genOf_pow (hs : L.IsSymmetric) (y : T ⟶ A) (n : ℕ) : GenOf L.L fun _ _ h => h y.left ^ (n ^ 2) * (h (y ^ n).left)⁻¹ := by
  have R := genOf_rig (L := L) T
  have S0 := genOf_sym hs y
  have E : GenOf L.L fun _ _ h => h y.left * h y.left *
      (h (y * y).left * (h y.left)⁻¹ * (h y.left)⁻¹ * h (1 : T ⟶ A).left)⁻¹ := by
    refine (((genOf_cub c y y⁻¹ y).mul S0.inv).mul (R.pow 2)).congr fun U _ h => ?_
    simp only [mul_inv_cancel, inv_mul_cancel, _root_.one_mul]
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_inv, ofMul_pow]
    abel!
  have C : ∀ k : ℕ, GenOf L.L fun _ _ h => h (y ^ k * y).left * (h (y ^ k).left)⁻¹ * (h y.left)⁻¹ *
      h (1 : T ⟶ A).left * (h (y * y).left * (h y.left)⁻¹ * (h y.left)⁻¹ * h (1 : T ⟶ A).left)⁻¹ ^ k := by
    intro k
    induction k with
    | zero =>
      refine genOf_one.congr fun U _ h => ?_
      simp only [pow_zero, _root_.one_mul, _root_.mul_one]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv, ofMul_one]
      abel!
    | succ k ih =>
      refine ((genOf_cub c (y ^ k) y y).mul ih).congr fun U _ h => ?_
      rw [pow_succ y k]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv, ofMul_pow, nsmul_add, smul_neg, add_nsmul, one_nsmul]
      abel!
  induction n with
  | zero => exact R.inv.congr fun U _ h => by simp
  | succ n ih =>
    have C := C n
    refine (((ih.mul C.inv).mul (E.pow n)).mul R).congr fun U _ h => ?_
    rw [pow_succ y n, show (n + 1) ^ 2 = n ^ 2 + n + n + 1 by ring]
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_inv, ofMul_pow, nsmul_add, smul_neg, add_nsmul, one_nsmul]
    abel!


end ReciprocityTheory.ChartRestriction.G.Geo.Tor
