module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.HeckeAlgebras.OrdinaryHeckeCharacters.LevelChangeBaseGroupHomApplyProjection
public import Development.AutomorphicArithmetic.AutomorphicVarieties.HeckeAlgebras.IsTheta
import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LengthCyclotomicBlockCocyclesLeSha
public import Development.AutomorphicArithmetic.AutomorphicVarieties.WeilGroupCharacters.ExistsDeterminantPairPullback
import Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.ReduceModChar

@[expose] public section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Polynomial ValuativeRel IsLocalRing GlobalTheory.CuspRep GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.LocGL GlobalTheory.GalOfCusp GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.UnitaryBC UpperTheory.V UpperTheory.V.Hi UpperTheory.V.Hi.CaseU
open UpperTheory.V.W (Plc Lp HidaSetting Vl Resid LamObj UniversalOrdinaryDeterminantRing Pair)
open UpperTheory.V.HV (Coef)
open scoped TensorProduct


noncomputable section

namespace UpperTheory.V.Hi.LvR

section Gen

variable {l : ℕ} [Fact l.Prime] {L Ω : Type} [Field L] [NumberField L] [IsCMField L] [Field Ω] [Algebra L Ω] [IsAlgClosure L Ω]
  {s : HidaSetting l L Ω} {V0 : s.Lev} {O : Type} [CommRing O] [IsLocalRing O] [Algebra ℤ_[l] O] {n : ℕ} {r : Resid V0.frame O n} {V : s.Lev}
  (h : (Pa.globOf r V).Hom (Pa.globOf r V0))

theorem c1 (i) : (rUp h).chib i = (r.chib i).comp (fh h).π₀ := rfl

theorem rUp_chib (i) (g : V.frame.G₀) : (rUp h).chib i g = r.chib i (p0 h g) := MonoidHom.comp_apply (r.chib i) (p0 h) g

theorem c2 (v i) : (rUp h).psib v i = (r.psib ((fh h).vl v) i).comp ((fh h).gv v) := MonoidHom.ext fun _ => rfl

theorem c3 (v i) (g : V.frame.mu v) (hg : (fh h).gv v g ∈ V0.frame.mu ((fh h).vl v)) : (rUp h).th v i g = r.th ((fh h).vl v) i ⟨_, hg⟩ := by
  have e : ∀ g : W.muG l (Dec (F := L) (s.A v.1)), (rUp h).th v i g = @id (W.muG l (Dec (F := L) (s.A v.1)) →* Oˣ) (r.th v i) g := fun _ => rfl
  have e2 : ∀ (g : Dec (F := L) (s.A v.1)) (hg : g ∈ W.muG l (Dec (F := L) (s.A v.1))), @id (W.muG l (Dec (F := L) (s.A v.1)) →* Oˣ) (r.th v i) ⟨g, hg⟩ = r.th v i ⟨g, hg⟩ := fun _ _ => rfl
  exact (e g).trans (e2 g.1 (@id (g.1 ∈ W.muG l (Dec (F := L) (s.A v.1))) g.2))

theorem c4 (hp : ∀ g, h.p (toGS Ω V.S' g) = toGS Ω V0.S' g) (u : s.St) (g : V.η.ker) (hg : g ∈ (rUp h).Ip u) : p0 h g ∈ r.Ip u := by
    obtain ⟨⟨x, hx, rfl⟩, h2⟩ := hg
    refine ⟨⟨x, hx, (levelChangeBaseGroupHom_apply_projection h hp x).symm⟩, ?_⟩
    exact Subgroup.mem_iInf.2 fun i => MonoidHom.mem_ker.2 ((rUp_chib h i _).symm.trans (MonoidHom.mem_ker.1 (Subgroup.mem_iInf.1 h2 i)))

theorem rUp_compat (hp : ∀ g, h.p (toGS Ω V.S' g) = toGS Ω V0.S' g) : (fh h).Compat (rUp h) r :=
  ⟨c1 h, c2 h, c3 h, fun u g hg => Or.inr ⟨u, c4 h hp u g hg⟩⟩

theorem pairUp (hn : 1 ≤ n) (hp : ∀ g, h.p (toGS Ω V.S' g) = toGS Ω V0.S' g) {R : Type} [CommRing R] [Algebra O R] [Alg.IsCO O R] (p : Pair r R) :
    ∃ p' : Pair (rUp h) R, p'.D = p.D.comap (p0 h) ∧ ∀ (v : Vl l L) i, @Eq (Dec (F := L) (s.A v.1) →* Rˣ) (p'.ψ v i) (p.ψ v i) := by
  obtain ⟨p', h1, h2⟩ := W.exists_determinantPair_pullback l _ _ (fh h) O n (rUp h) r (rUp_compat h hp) (fun e => by omega) R p
  exact ⟨p', h1, fun v i => Eq.trans (h2 v i) rfl⟩

end Gen

variable {l : ℕ} [Fact l.Prime] {L Ω : Type} [Field L] [NumberField L] [IsCMField L] [Field Ω] [Algebra L Ω] [IsAlgClosure L Ω]
  {s : HidaSetting l L Ω} {V0 : s.Lev} {c : Coef l} {n : ℕ} {r : Resid V0.frame c.O n} {V : s.Lev}
  (h : (Pa.globOf r V).Hom (Pa.globOf r V0))

abbrev qUp (V : s.Lev) {q : ℕ} (w : Fin q → Plc L) (h1 : Function.Injective fun j => (w j).under (𝓞 (Lp L)))
    (h2 : ∀ j, (w j).under (𝓞 (Lp L)) ∉ s.S) (h3 : V.S' = s.S ∪ Set.range fun j => (w j).under (𝓞 (Lp L))) : QData V where
  Q := Fin q
  wq := w
  inj := h1
  notS := h2
  range := h3

variable (Q0 : QData V0) (Q : QData V) (hS : V0.S' ⊆ V.S')

def opUp {m : ℕ} (τ₀ : KT n (wt s) →* GL (Fin m) c.O) : (hset Q τ₀).Op → (hset Q0 τ₀).Op
  | .inl x => .inl (⟨x.1.1, fun h => x.1.2.1 (hS h), x.1.2.2⟩, x.2)
  | .inr x => .inr x

def kMax {m : ℕ} (τ₀ : KT n (wt s) →* GL (Fin m) c.O) : (hset Q τ₀).Lev :=
  ⟨fun _ => KO _ (Fin n), fun _ => ⟨GlobalTheory.SplitFlip.isOpen_KO, GlobalTheory.SplitFlip.isCompact_KO⟩⟩

theorem free_of_neat {Γ Ga Gp : Type} [Group Γ] [Group Ga] [Group Gp] (X : Frame Γ Ga Gp) {A : Type} [CommRing A] {m : ℕ}
    (τ : X.Ub →* GL (Fin m) A) (θ : X.I.T →* Aˣ) (U : Subgroup X.Ub) (hU : X.Neat U) : X.Free τ θ U := by
  intro g γ u hu b hb e
  obtain ⟨rfl, rfl⟩ := hU g γ u hu b hb e
  refine ⟨one_mem _, one_mem _, ?_⟩
  have e1 : ∀ hh, (⟨1, hh⟩ : X.I.T) = 1 := fun _ => rfl
  rw [e1, map_one, map_one]
  simp

theorem teich_ext {O : Type} [CommRing O] [IsLocalRing O] [Finite (ResidueField O)] (x y : Oˣ) (h : residue O x = residue O y)
    (hx : x ^ (Nat.card (ResidueField O) - 1) = 1) (hy : y ^ (Nat.card (ResidueField O) - 1) = 1) : x = y := by
  set N := Nat.card (ResidueField O) - 1 with hN
  have hx' : (x : O) ^ N = 1 := by rw [← Units.val_pow_eq_pow_val, hx, Units.val_one]
  have hy' : (y : O) ^ N = 1 := by rw [← Units.val_pow_eq_pow_val, hy, Units.val_one]
  have e := (Commute.all (x : O) y).geom_sum₂_mul N
  rw [hx', hy', sub_self] at e
  have hu : IsUnit (∑ i ∈ Finset.range N, (x : O) ^ i * (y : O) ^ (N - 1 - i)) := by

    rw [← residue_ne_zero_iff_isUnit, map_sum]
    have : ∀ i ∈ Finset.range N, residue O ((x : O) ^ i * (y : O) ^ (N - 1 - i)) = residue O y ^ (N - 1) := fun i hi => by
      rw [map_mul, map_pow, map_pow, h, ← pow_add]
      congr 1
      have := Finset.mem_range.1 hi
      omega
    rw [Finset.sum_congr rfl this, Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    refine mul_ne_zero ?_ (pow_ne_zero _ ((residue_ne_zero_iff_isUnit _).2 y.isUnit))
    haveI := Fintype.ofFinite (ResidueField O)
    rw [hN, Nat.cast_sub Nat.card_pos, Nat.card_eq_fintype_card, FiniteField.cast_card_eq_zero]
    simp
  exact Units.ext (sub_eq_zero.1 (hu.mul_right_eq_zero.1 e))

theorem cont_up {m : ℕ} (τ₀ : KT n (wt s) →* GL (Fin m) c.O) {A : Type} [CommRing A] [IsLocalRing A]
    (θ : (hset Q0 τ₀).X.I.T →* Aˣ) (hθ : (hset Q0 τ₀).X.I.ContChar θ) : (hset Q τ₀).X.I.ContChar θ := hθ

theorem res_up (hp : ∀ g, h.p (toGS Ω V.S' g) = toGS Ω V0.S' g) {m : ℕ} (τ₀ : KT n (wt s) →* GL (Fin m) c.O)
    (a : (hset Q0 τ₀).Op → c.O) (ha : IsRes Q0 r τ₀ a) : IsRes Q (rUp h) τ₀ fun i => a (opUp Q0 Q hS τ₀ i) := by
  refine ⟨fun w B σ hB hσ => ?_, ?_⟩
  · refine (congrArg (fun D : W.GDet n (ResidueField c.O) V.frame.G₀ => D.chi (MonoidAlgebra.single (V.pr σ⁻¹) 1))
      (rUp_Dbar h)).trans ((chi_comap r.Dbar (p0 h) (V.pr σ⁻¹)).trans ?_)
    exact (congrArg (fun g : V0.frame.G₀ => r.Dbar.chi (MonoidAlgebra.single g 1)) (levelChangeBaseGroupHom_apply_projection h hp σ⁻¹)).trans
      (ha.frob ⟨w.1, fun h => w.2.1 (hS h), w.2.2⟩ B σ hB hσ)
  · have := ha.unif
    cases r
    exact this


end UpperTheory.V.Hi.LvR
