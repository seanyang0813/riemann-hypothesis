module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.DiffIdealNeBot
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.CoeCj
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.HTOsmulRight
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.NormRepLift, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.FrameActOneAdd, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.IntLatOfUnimod, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ResidueOnto, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.GlobalDual, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.PreRowvec, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.NormRepStepOfTrace

-- ===== clump member: Formalism.PeriodIntegrals.NormRepLift =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.NormRepLift", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.NormRepLift

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable (D : D7) (u u' : D.what₂.Word)

def NormRepStep : Prop :=
  ∀ (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)) (Λ : Submodule (𝓞 D.host.E) (VS D).V),
    IsRowLat D F0 Λ → ∀ t : TermsOf D u' F0 Λ,
      IsRel Λ (lf D F0) (PD D Λ (lf D F0) u') D.host.F t → IsGen Λ (lf D F0) (PD D Λ (lf D F0) u') (gS D) t →
        ∃ F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E),
          Formalism.L2.SG.TermDef.Rep Λ (lf D F0) (PD D Λ (lf D F0) u') t F' ∧ AdmWit Λ (gS D) (lf D F0) F' 1

end PI.NormRepLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.NormRepLift =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.FrameActOneAdd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.FrameActOneAdd", "h": "module\n\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.NRL

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T : E}

theorem Xflag_mono (F : LFlag S r T) (j : ℕ) : Xflag F j ≤ Xflag F (j + 1) := by
  show Submodule.span E (F.fl.e '' {i | i.1 < j}) ≤ Submodule.span E (F.fl.e '' {i | i.1 < j + 1})
  exact Submodule.span_mono (Set.image_mono fun i hi => by
    simp only [Set.mem_setOf_eq] at hi ⊢
    omega)

theorem X_le_orth (F : LFlag S r T) : Xsp F ≤ orth S (Xsp F) := by
  intro x hx
  simp only [orth, Submodule.mem_iInf, LinearMap.mem_ker]
  intro y hy
  refine span_zero (φ := S.hT y) (fun z hz => ?_) hx
  obtain ⟨i, rfl⟩ := hz
  rw [herm_eq, span_zero (φ := S.hT (F.fl.e i)) (fun z hz => by
    obtain ⟨k, rfl⟩ := hz
    exact F.fl.e_iso i k) hy, star_zero]

theorem NLam_mul (Λ : Submodule (𝓞 E) S.V) (F : LFlag S r T) {n₁ n₂ : S.V ≃ₗ[E] S.V}
    (h₁ : n₁ ∈ NLam Λ F) (h₂ : n₂ ∈ NLam Λ F) : n₁ * n₂ ∈ NLam Λ F := by
  apply PI.DCRelEquiv.UnitaryGroupMassFormula.nlam_mul <;> assumption

theorem modG_of_mem (Λ : Submodule (𝓞 E) S.V) (g : ℕ) {x : S.V}
    (hx : x ∈ Ideal.span {(g : 𝓞 E)} • Λ) : ModG S Λ g x := by
  intro P hP
  haveI := P.isPrime
  show ∃ s ∈ P.asIdeal.primeCompl, s • x ∈ Ideal.span {(g : 𝓞 E)} • Λ
  exact ⟨1, Submonoid.one_mem _, by rwa [one_smul]⟩

theorem modG_add (Λ : Submodule (𝓞 E) S.V) (g : ℕ) {x y : S.V} (hx : ModG S Λ g x) (hy : ModG S Λ g y) :
    ModG S Λ g (x + y) := by
  intro P hP
  exact Submodule.add_mem _ (hx P hP) (hy P hP)

theorem modG_map (Λ : Submodule (𝓞 E) S.V) (g : ℕ) (n : S.V ≃ₗ[E] S.V) (hn : Formalism.HermitianLatticesTheory.gmap n Λ = Λ)
    {x : S.V} (hx : ModG S Λ g x) : ModG S Λ g (n x) := by
  intro P hP
  have hx' := hx P hP
  haveI := P.isPrime
  obtain ⟨s, hs, hsx⟩ : ∃ s ∈ P.asIdeal.primeCompl, s • x ∈ Ideal.span {(g : 𝓞 E)} • Λ := hx'
  show ∃ s ∈ P.asIdeal.primeCompl, s • n x ∈ Ideal.span {(g : 𝓞 E)} • Λ
  refine ⟨s, hs, ?_⟩
  have hmap : (Ideal.span {(g : 𝓞 E)} • Λ).map ((n : S.V →ₗ[E] S.V).restrictScalars (𝓞 E)) =
      Ideal.span {(g : 𝓞 E)} • Λ := by
    rw [Submodule.map_smul'']
    unfold Formalism.HermitianLatticesTheory.gmap at hn
    rw [hn]
  have hmem := Submodule.mem_map_of_mem (f := (n : S.V →ₗ[E] S.V).restrictScalars (𝓞 E)) hsx
  rw [hmap] at hmem
  have he : ((n : S.V →ₗ[E] S.V).restrictScalars (𝓞 E)) (s • x) = s • n x :=
    map_smul ((n : S.V →ₗ[E] S.V).restrictScalars (𝓞 E)) s x
  rw [he] at hmem
  exact hmem

theorem frameAct_mem (Λ : Submodule (𝓞 E) S.V) {n : ℕ} (f : Fin n → S.V) (hf : ∀ c, f c ∈ Λ)
    (Q : Matrix (Fin n) (Fin n) (𝓞 E)) (b : Fin n) : frameAct f Q b ∈ Λ := by
  unfold frameAct
  refine Submodule.sum_mem _ fun a _ => ?_
  rw [smul_coe]
  exact Λ.smul_mem _ (hf a)

theorem frameAct_one_add {n : ℕ} (f : Fin n → S.V) (g : 𝓞 E) (Q : Matrix (Fin n) (Fin n) (𝓞 E)) (b : Fin n) :
    frameAct f (1 + g • Q) b = f b + g • frameAct f Q b := by
  have h1 := frameAct_one f b
  unfold frameAct at h1 ⊢
  simp only [smul_coe] at h1 ⊢
  simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, add_smul, Finset.sum_add_distrib, h1,
    mul_smul, Finset.smul_sum]

theorem exists_undo (Λ : Submodule (𝓞 E) S.V) (hint : IntLat Λ) (F : LFlag S r T) (g : 𝓞 E)
    (hrow : ∀ (a : Fin r) (t : Fin (r + 1) → 𝓞 E), ∃ v ∈ Λ, ∃ l : 𝓞 E,
      (l : E) + star (l : E) = -S.hT v v ∧ (∀ i, i ≤ a → S.hT v (F.fl.e i) = 0) ∧
      ∀ c, Fin.castSucc a < c → ∃ q : 𝓞 E, S.hT v (frame F c) = ((t c + g * q : 𝓞 E) : E))
    (hfe : ∀ a, F.fl.e a ∈ Λ)
    (ξ : Matrix (Fin (r + 1)) (Fin (r + 1)) (𝓞 E)) (hξ : UniUp ξ) :
    ∃ n ∈ NLam Λ F, ∃ M, ActsBy n (frame F) M ∧ ∃ Q, M * ξ = 1 + g • Q := by
  have hone : (1 : S.V ≃ₗ[E] S.V) ∈ NLam Λ F := by
    simp only [NLam, IsAutLam, Set.mem_setOf_eq]
    refine ⟨⟨Subgroup.one_mem _, ?_⟩, fun j x _ => ?_, fun x _ => ?_⟩
    · rw [gmap_eq_iff]
      exact ⟨fun y hy => hy, fun y hy => ⟨y, hy, rfl⟩⟩
    · show x - x ∈ _
      rw [sub_self]
      exact Submodule.zero_mem _
    · show x - x ∈ _
      rw [sub_self]
      exact Submodule.zero_mem _
  have hrow' : ∀ a : Fin (r + 1), a.val < r → ∀ t : Fin (r + 1) → 𝓞 E, ∃ w : Fin (r + 1) → 𝓞 E,
      (∀ c, c ≤ a → w c = 0) ∧ (∀ c, a < c → ∃ q, w c = t c + g * q) ∧
      (∃ n ∈ NLam Λ F, ActsBy n (frame F) (1 + rowMat a w)) := by
    intro a ha t
    obtain ⟨v, hv, l, hl, hperp, hcong⟩ := hrow ⟨a.val, ha⟩ t
    have hca : Fin.castSucc (⟨a.val, ha⟩ : Fin r) = a := Fin.ext rfl
    rw [hca] at hcong
    choose q hq using hcong
    let w : Fin (r + 1) → 𝓞 E := fun c => if h : a < c then t c + g * q c h else 0
    have hee : S.hT (F.fl.e ⟨a.val, ha⟩) (F.fl.e ⟨a.val, ha⟩) = 0 := F.fl.e_iso _ _
    have hve : S.hT v (F.fl.e ⟨a.val, ha⟩) = 0 := hperp _ le_rfl
    have hev : S.hT (F.fl.e ⟨a.val, ha⟩) v = 0 := by rw [herm_eq, hve, star_zero]
    have hw : ∀ c, S.hT v (frame F c) = (w c : E) := by
      intro c
      by_cases hc : a < c
      · simp only [w, dif_pos hc]
        exact hq c hc
      · simp only [w, dif_neg hc]
        have hcr : c.val < r := by
          have h' : ¬ a.val < c.val := fun h => hc (Fin.lt_def.mpr h)
          omega
        obtain ⟨c', rfl⟩ : ∃ c' : Fin r, Fin.castSucc c' = c := ⟨⟨c.val, hcr⟩, Fin.ext rfl⟩
        have hfc : frame F (Fin.castSucc c') = F.fl.e c' := by
          show Fin.snoc (α := fun _ => S.V) F.fl.e F.fl.z (Fin.castSucc c') = F.fl.e c'
          exact Fin.snoc_castSucc ..
        have hle : c' ≤ (⟨a.val, ha⟩ : Fin r) := by
          have h' : ¬ a.val < c'.val := fun h => hc (Fin.lt_def.mpr (by simpa using h))
          exact Fin.le_def.mpr (by simp only; omega)
        rw [hfc, hperp c' hle]
        simp
    refine ⟨w, fun c hc => ?_, fun c hc => ⟨q c hc, by simp only [w, dif_pos hc]⟩, ?_⟩
    · have hnc : ¬ a < c := not_lt.mpr hc
      simp only [w, dif_neg hnc]
    · refine ⟨tvEquiv (F.fl.e ⟨a.val, ha⟩) v (l : E) hee hev hve,
        tv_mem_NLam Λ hint F ⟨a.val, ha⟩ (hfe _) v hv hperp l hl hee hev hve, ?_⟩
      have hact := tv_actsBy F ⟨a.val, ha⟩ v (l : E) hee hev hve w hw
      rw [hca] at hact
      exact hact
  obtain ⟨M, ⟨n, hn, hact⟩, Q, hQ⟩ := row_elim g (fun M => ∃ n ∈ NLam Λ F, ActsBy n (frame F) M)
    ⟨1, hone, actsBy_one _⟩
    (fun M N hM hN => by
      obtain ⟨n₁, h₁, a₁⟩ := hM
      obtain ⟨n₂, h₂, a₂⟩ := hN
      exact ⟨n₁ * n₂, NLam_mul Λ F h₁ h₂, actsBy_mul a₁ a₂⟩)
    hrow' ξ hξ
  exact ⟨n, hn, M, hact, Q, hQ⟩

end PI.NRL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.FrameActOneAdd =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.IntLatOfUnimod =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.IntLatOfUnimod", "h": "module\n\npublic import Formalism.PeriodIntegrals.NormRepLift\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.DiffIdealNeBot\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.FrameActOneAdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.NRL

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def RowVec (D : D7) (u : D.what₂.Word) (T' : ℕ) : Prop :=
  PrimeHyp D u T' →
  ∀ (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)) (Λ : Submodule (𝓞 D.host.E) (VS D).V),
    IsRowLat D F0 Λ → ∀ (a : Fin D.R.rS) (t : Fin (D.R.rS + 1) → 𝓞 D.host.E),
      ∃ v ∈ Λ, ∃ l : 𝓞 D.host.E, (l : D.host.E) + star (l : D.host.E) = -(VS D).hT v v ∧
        (∀ i, i ≤ a → (VS D).hT v (F0.e i) = 0) ∧
        ∀ c, Fin.castSucc a < c → ∃ q : 𝓞 D.host.E,
          (VS D).hT v (frame (lf D F0) c) = ((t c + (gS D : 𝓞 D.host.E) * q : 𝓞 D.host.E) : D.host.E)

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T : E}

def mapFlag (n : S.V ≃ₗ[E] S.V) (hn : ∀ x y, S.hT (n x) (n y) = S.hT x y) (F : FlagG S r T) :
    FlagG S r T where
  e := fun a => n (F.e a)
  z := n F.z
  e_indep := F.e_indep.map' (n : S.V →ₗ[E] S.V) n.ker
  e_iso := fun a b => by rw [hn]; exact F.e_iso a b
  z_orth := fun a => by rw [hn]; exact F.z_orth a
  z_norm := by rw [hn]; exact F.z_norm

theorem frame_mapFlag (n : S.V ≃ₗ[E] S.V) (hn : ∀ x y, S.hT (n x) (n y) = S.hT x y) (F : LFlag S r T)
    (zt : S.V) (b : Fin (r + 1)) :
    frame (⟨mapFlag n hn F.fl, zt⟩ : LFlag S r T) b = n (frame F b) := by
  induction b using Fin.lastCases with
  | last => simp [frame, FlagG.fvec, mapFlag]
  | cast i => simp [frame, FlagG.fvec, mapFlag]

theorem intLat_of_unimod (Λ : Submodule (𝓞 E) S.V) (h : Formalism.HermitianLatticesTheory.IsUnimodular S.hT Λ) : IntLat Λ := by
  intro x hx y hy
  rw [← h] at hy
  have hy' : y ∈ Formalism.E.hdual S.hT Λ := hy
  simp only [Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap,
    LinearMap.restrictScalars_apply] at hy'
  obtain ⟨o, ho⟩ := Submodule.mem_one.mp (hy' x hx)
  exact ⟨o, ho.symm⟩

theorem normRepStep_of (D : D7) (u u' : D.what₂.Word) (hS : TermStable D u u')
    (hP : PrimeHyp D u (Tu D u')) (hV : RowVec D u (Tu D u')) : PI.NormRepLift.NormRepStep D u u' := by
  intro F0 Λ hΛ t _ _
  obtain ⟨⟨F1, hF1⟩, rfl⟩ := Quot.exists_rep t
  obtain ⟨ξ, hAdm⟩ := hF1.2.1
  have hint : IntLat Λ := intLat_of_unimod Λ hΛ.2.1.2.1
  have hfe : ∀ a, (lf D F0).fl.e a ∈ Λ := fun a => e_mem_lam D F0 Λ hΛ a
  have hfr : ∀ c, frame (lf D F0) c ∈ Λ := by
    intro c
    induction c using Fin.lastCases with
    | last => simpa [frame, FlagG.fvec] using hΛ.2.1.2.2.1.1
    | cast i => simpa [frame, FlagG.fvec] using hfe i
  obtain ⟨n, hn, M, hM, Q, hQ⟩ := exists_undo Λ hint (lf D F0) (gS D : 𝓞 D.host.E)
    (hV hP F0 Λ hΛ) hfe ξ ⟨hAdm.1, hAdm.2.1⟩
  have hiso : ∀ x y, (VS D).hT (n x) (n y) = (VS D).hT x y := hn.1.1
  let F2 : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E) := ⟨mapFlag n hiso F1.fl, n F1.zt⟩
  have hDC : DCRel Λ (lf D F0) F1 F2 :=
    ⟨n, hn, 1, one_mem_NLam Λ F1, fun a => by
      induction a using Fin.lastCases with
      | last => simp [F2, frame, FlagG.fvec, mapFlag]
      | cast i => simp [F2, frame, FlagG.fvec, mapFlag], by simp [F2]⟩
  have hP2 : PD D Λ (lf D F0) u' F2 := hS F0 Λ hΛ ⟨F1, hF1⟩ F2 hDC
  have hq : Formalism.L2.SG.TermDef.mk Λ (lf D F0) (PD D Λ (lf D F0) u') ⟨F2, hP2⟩ =
      Quot.mk (Formalism.L2.SG.TermDef.Rel Λ (lf D F0) (PD D Λ (lf D F0) u')) ⟨F1, hF1⟩ :=
    (Quot.sound (r := Formalism.L2.SG.TermDef.Rel Λ (lf D F0) (PD D Λ (lf D F0) u'))
      (a := ⟨F1, hF1⟩) (b := ⟨F2, hP2⟩) hDC).symm
  refine ⟨F2, ⟨hP2, hq⟩, ?_, ?_, ?_⟩
  · intro a b hab; exact Matrix.one_apply_ne (ne_of_lt hab).symm
  · intro a; exact Matrix.one_apply_eq a
  · intro b
    rw [frameAct_one]
    change ModG (VS D) Λ (gS D) (frame ⟨mapFlag n hiso F1.fl, n F1.zt⟩ b - frame (lf D F0) b)
    rw [frame_mapFlag n hiso F1]
    have e1 : n (frame F1 b) - frame (lf D F0) b =
        n (frame F1 b - frameAct (frame (lf D F0)) ξ b) +
          (frameAct (frame (lf D F0)) (M * ξ) b - frame (lf D F0) b) := by
      rw [map_sub, actsBy_frameAct hM]; abel
    rw [e1]
    refine modG_add Λ _ (modG_map Λ _ n hn.1.2 (hAdm.2.2 b)) (modG_of_mem Λ _ ?_)
    rw [hQ, frameAct_one_add, add_sub_cancel_left]
    exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) (frameAct_mem Λ _ hfr Q b)

end PI.NRL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.IntLatOfUnimod =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ResidueOnto =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ResidueOnto", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.CoeCj\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.HTOsmulRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.NRL

open NumberField IsDedekindDomain Formalism.BasicNotions

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ}

section Prime

variable (Λ : Submodule (𝓞 E) S.V) (hU : Formalism.HermitianLatticesTheory.IsUnimodular S.hT Λ) (hint : IntLat Λ)
  (e : Fin r → S.V) (hind : LinearIndependent E e) (he : ∀ i, e i ∈ Λ) (P : HeightOneSpectrum (𝓞 E))
  (hloc : ∀ x ∈ Λ, x ∈ Submodule.span E (Set.range e) →
    ∃ s : 𝓞 E, s ∉ P.asIdeal ∧ s • x ∈ Submodule.span (𝓞 E) (Set.range e))

include hU hint hind he hloc in
theorem residue_onto (c : Fin r) :
    ∃ y ∈ Λ, ∃ o : Fin r → 𝓞 E, (∀ i, S.hT y (e i) = (o i : E)) ∧
      ∀ i, (o i - if i = c then 1 else 0) ∈ P.asIdeal := by
  haveI := P.isMaximal
  letI : Field (𝓞 E ⧸ P.asIdeal) := Ideal.Quotient.field P.asIdeal
  let mk := Ideal.Quotient.mk P.asIdeal
  let U : Submodule (𝓞 E ⧸ P.asIdeal) (Fin r → 𝓞 E ⧸ P.asIdeal) :=
    { carrier := {φ | ∃ y ∈ Λ, ∃ o : Fin r → 𝓞 E, (∀ i, S.hT y (e i) = (o i : E)) ∧ ∀ i, φ i = mk (o i)}
      zero_mem' := ⟨0, Λ.zero_mem, 0, fun i => by simp, fun i => by simp⟩
      add_mem' := by
        rintro φ ψ ⟨y, hy, o, ho, hφ⟩ ⟨y', hy', o', ho', hψ⟩
        refine ⟨y + y', Λ.add_mem hy hy', o + o', fun i => ?_, fun i => ?_⟩
        · simp [map_add (f := _), ho, ho']
        · simp [hφ, hψ]
      smul_mem' := by
        rintro κ φ ⟨y, hy, o, ho, hφ⟩
        obtain ⟨κ', rfl⟩ := Ideal.Quotient.mk_surjective κ
        refine ⟨cj κ' • y, Λ.smul_mem _ hy, fun i => κ' * o i, fun i => ?_, fun i => ?_⟩
        · rw [hT_cj_left, ho]; push_cast; ring
        · simp [hφ, mk] }
  have hUtop : U = ⊤ := by
    by_contra hne
    obtain ⟨f, hf0, hfU⟩ := Submodule.exists_le_ker_of_lt_top U (lt_top_iff_ne_top.mpr hne)
    let α : Fin r → 𝓞 E ⧸ P.asIdeal := fun i => f (fun j => if i = j then 1 else 0)
    have hfα : ∀ φ, f φ = ∑ i, φ i * α i := by
      intro φ
      rw [LinearMap.pi_apply_eq_sum_univ f φ]
      simp [α, smul_eq_mul]
    have hα0 : ∃ i, α i ≠ 0 := by
      by_contra h
      push Not at h
      apply hf0
      refine LinearMap.ext fun φ => ?_
      rw [hfα, LinearMap.zero_apply]
      exact Finset.sum_eq_zero fun i _ => by rw [h i, mul_zero]
    choose α' hα' using fun i => Ideal.Quotient.mk_surjective (α i)
    have hmem := coeff_mem_P Λ hU e hind P hloc α' (by
      intro y hy
      choose o ho using fun i => hint y hy (e i) (he i)
      have hφ : (fun i => mk (o i)) ∈ U := ⟨y, hy, o, ho, fun i => rfl⟩
      have hz : f (fun i => mk (o i)) = 0 := hfU hφ
      rw [hfα] at hz
      refine ⟨∑ i, o i * α' i, ?_, ?_⟩
      · rw [← Ideal.Quotient.eq_zero_iff_mem]

        simpa [map_sum, map_mul, hα', mk] using hz
      · set_option synthInstance.maxHeartbeats 100000 in
          rw [map_sum]
        push_cast
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [hT_osmul_right, ho]; ring)
    obtain ⟨i, hi⟩ := hα0
    apply hi
    rw [← hα' i]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr (hmem i)
  have hc : (fun i => if i = c then (1 : 𝓞 E ⧸ P.asIdeal) else 0) ∈ U := by rw [hUtop]; trivial
  obtain ⟨y, hy, o, ho, hφ⟩ := hc
  refine ⟨y, hy, o, ho, fun i => ?_⟩
  rw [← Ideal.Quotient.eq]
  have := hφ i
  simp only at this
  by_cases hic : i = c
  · simp only [hic, if_true] at this ⊢; rw [map_one]; exact this.symm
  · simp only [hic, if_false] at this ⊢; rw [map_zero]; exact this.symm

include hU hint hind he hloc in
theorem exact_dual (c : Fin r) :
    ∃ y ∈ Λ, (∀ i, i ≠ c → S.hT y (e i) = 0) ∧ ∃ o : 𝓞 E, S.hT y (e c) = (o : E) ∧ o ∉ P.asIdeal := by
  choose y hy o ho hP using fun j => residue_onto Λ hU hint e hind he P hloc j
  let G : Matrix (Fin r) (Fin r) (𝓞 E) := fun j i => o j i
  have hdet : G.det ∉ P.asIdeal := by
    intro hmem
    have h1 : (Ideal.Quotient.mk P.asIdeal).mapMatrix G = 1 := by
      ext j i
      simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.one_apply]
      have := Ideal.Quotient.eq.mpr (hP j i)
      rw [this]
      by_cases hij : i = j
      · subst hij; simp
      · simp [hij, Ne.symm hij]
    have := RingHom.map_det (Ideal.Quotient.mk P.asIdeal) G
    rw [h1, Matrix.det_one, Ideal.Quotient.eq_zero_iff_mem.mpr hmem] at this
    exact zero_ne_one this
  have key : ∀ i, S.hT (∑ j, cj (G.adjugate c j) • y j) (e i) = ((G.adjugate * G) c i : E) := by
    intro i

    rw [map_sum, LinearMap.sum_apply, Matrix.mul_apply]
    push_cast
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [hT_cj_left, ho]
  rw [Matrix.adjugate_mul] at key
  refine ⟨∑ j, cj (G.adjugate c j) • y j, Λ.sum_mem fun j _ => Λ.smul_mem _ (hy j), fun i hi => ?_,
    G.det, ?_, hdet⟩
  · rw [key, Matrix.smul_apply, Matrix.one_apply_ne (Ne.symm hi)]; simp
  · rw [key, Matrix.smul_apply, Matrix.one_apply_eq]; simp

end Prime

end PI.NRL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ResidueOnto =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.GlobalDual =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.GlobalDual", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.HTOsmulRight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ResidueOnto\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.CoeCj\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.NRL

open NumberField IsDedekindDomain Formalism.BasicNotions

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ}

theorem global_dual (Λ : Submodule (𝓞 E) S.V) (hU : Formalism.HermitianLatticesTheory.IsUnimodular S.hT Λ) (hint : IntLat Λ)
    (e : Fin r → S.V) (hind : LinearIndependent E e) (he : ∀ i, e i ∈ Λ) (g : 𝓞 E)
    (hlocg : ∀ P : HeightOneSpectrum (𝓞 E), g ∈ P.asIdeal → ∀ x ∈ Λ, x ∈ Submodule.span E (Set.range e) →
      ∃ s : 𝓞 E, s ∉ P.asIdeal ∧ s • x ∈ Submodule.span (𝓞 E) (Set.range e))
    (c : Fin r) :
    ∃ y ∈ Λ, (∀ i, i ≠ c → S.hT y (e i) = 0) ∧ ∃ q : 𝓞 E, S.hT y (e c) = ((1 + g * q : 𝓞 E) : E) := by
  let J : Ideal (𝓞 E) :=
    { carrier := {o | ∃ y ∈ Λ, (∀ i, i ≠ c → S.hT y (e i) = 0) ∧ S.hT y (e c) = (o : E)}
      zero_mem' := ⟨0, Λ.zero_mem, fun i _ => by simp, by simp⟩
      add_mem' := by
        rintro o o' ⟨y, hy, h0, ho⟩ ⟨y', hy', h0', ho'⟩
        refine ⟨y + y', Λ.add_mem hy hy', fun i hi => ?_, ?_⟩
        · simp [h0 i hi, h0' i hi]
        · simp [ho, ho']
      smul_mem' := by
        rintro κ o ⟨y, hy, h0, ho⟩
        refine ⟨cj κ • y, Λ.smul_mem _ hy, fun i hi => ?_, ?_⟩
        · rw [hT_cj_left, h0 i hi, mul_zero]
        · rw [hT_cj_left, ho, smul_eq_mul]; push_cast; rfl }
  have htop : J ⊔ Ideal.span {g} = ⊤ := by
    by_contra hne
    obtain ⟨M, hM, hle⟩ := Ideal.exists_le_maximal _ hne
    have hMbot : M ≠ ⊥ := Ring.ne_bot_of_isMaximal_of_not_isField hM (RingOfIntegers.not_isField E)
    let P : HeightOneSpectrum (𝓞 E) := ⟨M, hM.isPrime, hMbot⟩
    have hg : g ∈ M := hle (Ideal.mem_sup_right (Ideal.mem_span_singleton_self g))
    obtain ⟨y, hy, h0, o, ho, hoP⟩ := exact_dual Λ hU hint e hind he P (hlocg P hg) c
    exact hoP (hle (Ideal.mem_sup_left ⟨y, hy, h0, ho⟩))
  have h1 : (1 : 𝓞 E) ∈ J ⊔ Ideal.span {g} := by rw [htop]; trivial
  obtain ⟨j, hj, x, hx, hjx⟩ := Submodule.mem_sup.mp h1
  obtain ⟨a, rfl⟩ := Ideal.mem_span_singleton'.mp hx
  obtain ⟨y, hy, h0, ho⟩ := hj
  refine ⟨y, hy, h0, -a, ?_⟩
  rw [ho]
  have : j = 1 + g * -a := by rw [← hjx]; ring
  rw [this]

end PI.NRL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.GlobalDual =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.PreRowvec =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.PreRowvec", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.HTOsmulRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.CoeCj\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.NRL

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ}

theorem pre_rowvec (Λ : Submodule (𝓞 E) S.V) (hint : IntLat Λ) (Tn : ℕ) (F : LFlag S r ((Tn : ℕ) : E))
    (hz : F.fl.z ∈ Λ) (g : 𝓞 E)
    (hdual : ∀ c : Fin r, ∃ y ∈ Λ, (∀ i, i ≠ c → S.hT y (F.fl.e i) = 0) ∧
      ∃ q : 𝓞 E, S.hT y (F.fl.e c) = ((1 + g * q : 𝓞 E) : E))
    (hTg : ∃ x y : 𝓞 E, x * (Tn : 𝓞 E) + y * g = 1) (a : Fin r) (t : Fin (r + 1) → 𝓞 E) :
    ∃ v ∈ Λ, (∀ i, i ≤ a → S.hT v (F.fl.e i) = 0) ∧
      ∀ c, Fin.castSucc a < c → ∃ q : 𝓞 E, S.hT v (frame F c) = ((t c + g * q : 𝓞 E) : E) := by
  choose y hy h0 q hq using hdual
  let v₀ : S.V := ∑ c : Fin r, (if a < c then cj (t c.castSucc) else 0) • y c
  have hv₀ : v₀ ∈ Λ := Λ.sum_mem fun c _ => Λ.smul_mem _ (hy c)
  have hv0e : ∀ i, S.hT v₀ (F.fl.e i) =
      if a < i then (t i.castSucc : E) * ((1 + g * q i : 𝓞 E) : E) else 0 := by
    intro i

    rw [map_sum, LinearMap.sum_apply, Finset.sum_eq_single i]
    · by_cases hai : a < i
      · rw [if_pos hai, if_pos hai, hT_cj_left, hq]
      · rw [if_neg hai, if_neg hai, zero_smul, map_zero, LinearMap.zero_apply]
    · intro c _ hci
      by_cases hac : a < c
      · rw [if_pos hac, hT_cj_left, h0 c i (Ne.symm hci), mul_zero]
      · rw [if_neg hac, zero_smul, map_zero, LinearMap.zero_apply]
    · intro h; exact absurd (Finset.mem_univ i) h
  obtain ⟨ζ, hζ⟩ := hint v₀ hv₀ F.fl.z hz
  obtain ⟨x, y', hxy⟩ := hTg
  have hxyE : (x : E) * (Tn : E) + (y' : E) * (g : E) = 1 := by
    have := congrArg (fun o : 𝓞 E => (o : E)) hxy
    simpa using this
  let m : 𝓞 E := x * (ζ - t (Fin.last r))
  let v : S.V := v₀ + cj m • F.fl.z
  have hze : ∀ i, S.hT F.fl.z (F.fl.e i) = 0 := by
    intro i; rw [herm_eq, F.fl.z_orth i, star_zero]
  have hve : ∀ i, S.hT v (F.fl.e i) = S.hT v₀ (F.fl.e i) := by
    intro i; simp only [v, map_add (f := _), LinearMap.add_apply, hT_cj_left, hze, mul_zero, add_zero]
  refine ⟨v, Λ.add_mem hv₀ (Λ.smul_mem _ hz), fun i hi => ?_, fun c hc => ?_⟩
  · rw [hve, hv0e, if_neg (not_lt.mpr hi)]
  · induction c using Fin.lastCases with
    | last =>
      refine ⟨y' * (ζ - t (Fin.last r)), ?_⟩
      have hfz : frame F (Fin.last r) = F.fl.z := by simp [frame, FlagG.fvec]
      rw [hfz]
      simp only [v, map_add (f := _), LinearMap.add_apply, hT_cj_left, F.fl.z_norm, hζ, m]
      push_cast
      linear_combination (-((ζ : E) - (t (Fin.last r) : E))) * hxyE
    | cast i =>
      have hai : a < i := Fin.castSucc_lt_castSucc_iff.mp hc
      refine ⟨t i.castSucc * q i, ?_⟩
      have hfi : frame F (Fin.castSucc i) = F.fl.e i := by simp [frame, FlagG.fvec]
      rw [hfi, hve, hv0e, if_pos hai]
      push_cast; ring

theorem coe_nat (N : ℕ) : ((N : 𝓞 E) : E) = (N : E) := map_natCast (algebraMap (𝓞 E) E) N

theorem trace_fix (Λ : Submodule (𝓞 E) S.V) (hint : IntLat Λ) {n : ℕ} (f : Fin n → S.V) (g : 𝓞 E)
    (htr : (∃ k : ℕ, (g : E) = 2 * (k : E) + 1) ∨ ∃ ω : 𝓞 E, (ω : E) + star (ω : E) = 1)
    (Z : Set (Fin n)) (t : Fin n → 𝓞 E) (v : S.V) (hv : v ∈ Λ)
    (hZ : ∀ c ∈ Z, S.hT v (f c) = 0) (hc : ∀ c ∉ Z, ∃ q : 𝓞 E, S.hT v (f c) = ((t c + g * q : 𝓞 E) : E)) :
    ∃ v' ∈ Λ, ∃ l : 𝓞 E, (l : E) + star (l : E) = -S.hT v' v' ∧ (∀ c ∈ Z, S.hT v' (f c) = 0) ∧
      ∀ c ∉ Z, ∃ q : 𝓞 E, S.hT v' (f c) = ((t c + g * q : 𝓞 E) : E) := by
  obtain ⟨o, ho⟩ := hint v hv v hv
  have hself : star (o : E) = (o : E) := by rw [← ho, ← herm_eq]
  rcases htr with ⟨k, hk⟩ | ⟨ω, hω⟩
  · obtain ⟨M, hM⟩ : ∃ M : ℕ, M = 2 * (k + 1) := ⟨_, rfl⟩
    obtain ⟨N, hN⟩ : ∃ N : ℕ, N = 2 * (k + 1) * (k + 1) := ⟨_, rfl⟩
    have hmE : (M : E) = 2 * ((k : E) + 1) := by rw [hM]; push_cast; ring
    have hNE : (N : E) = 2 * ((k : E) + 1) * ((k : E) + 1) := by rw [hN]; push_cast; ring
    have hmg : (M : E) = (g : E) + 1 := by rw [hmE, hk]; ring
    refine ⟨cj (M : 𝓞 E) • v, Λ.smul_mem _ hv, -((N : 𝓞 E) * o), ?_, fun c hcZ => ?_, fun c hcZ => ?_⟩
    · rw [hT_cj_left, hT_osmul_right, coe_cj, ho]
      simp only [map_neg, map_mul, map_natCast, star_neg, star_mul', hself, star_natCast]
      rw [hNE, hmE]; ring
    · rw [hT_cj_left, hZ c hcZ, mul_zero]
    · obtain ⟨q, hq⟩ := hc c hcZ
      refine ⟨t c + (M : 𝓞 E) * q, ?_⟩
      rw [hT_cj_left, hq]
      simp only [map_add (f := _), map_mul, map_natCast]
      linear_combination ((t c : E) + (g : E) * (q : E) - (g : E) * (q : E)) * hmg
  · refine ⟨v, hv, -(ω * o), ?_, hZ, hc⟩
    rw [ho]
    simp only [map_neg, map_mul, star_neg, star_mul', hself]
    linear_combination (-(o : E)) * hω

end PI.NRL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.PreRowvec =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.NormRepStepOfTrace =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.NormRepStepOfTrace", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.IntLatOfUnimod\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.DiffIdealNeBot\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.GlobalDual\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.PreRowvec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.NRL

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def TraceOne (D : D7) : Prop := ∃ ω : 𝓞 D.host.E, (ω : D.host.E) + star (ω : D.host.E) = 1

theorem rowVec_of (D : D7) (u : D.what₂.Word) (T' : ℕ) (htr : Odd (gS D) ∨ TraceOne D) :
    RowVec D u T' := by
  intro hP F0 Λ hΛ a t
  have hU : Formalism.HermitianLatticesTheory.IsUnimodular (VS D).hT Λ := hΛ.2.1.2.1
  have hint : IntLat Λ := intLat_of_unimod Λ hU
  have hz : F0.z ∈ Λ := hΛ.2.1.2.2.1.1
  have he : ∀ i, F0.e i ∈ Λ := fun i => e_mem_lam D F0 Λ hΛ i
  have hlocg : ∀ P : HeightOneSpectrum (𝓞 D.host.E), ((gS D : ℕ) : 𝓞 D.host.E) ∈ P.asIdeal →
      ∀ x ∈ Λ, x ∈ Submodule.span D.host.E (Set.range F0.e) →
        ∃ s : 𝓞 D.host.E, s ∉ P.asIdeal ∧ s • x ∈ Submodule.span (𝓞 D.host.E) (Set.range F0.e) := by
    intro P hg x hx hxE
    haveI := P.isPrime
    obtain ⟨c, _, hc1, hceq⟩ := hΛ.2.1.2.2.2.1 P
    have hxX : x ∈ XLam Λ (lf D F0) := Submodule.mem_inf.mpr ⟨hx, hxE⟩
    have hxl : x ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (XLam Λ (lf D F0)) :=
      ⟨1, (Ideal.primeCompl P.asIdeal).one_mem, by simpa using hxX⟩
    rw [hceq] at hxl
    obtain ⟨s, hs, hsx⟩ := hxl
    have hfun : (fun a => c a • (lf D F0).fl.e a) = F0.e := by
      funext a; rw [hc1 hg a, one_smul]
    rw [hfun] at hsx
    exact ⟨s, hs, hsx⟩
  have hdual := fun c => global_dual Λ hU hint F0.e F0.e_indep he ((gS D : ℕ) : 𝓞 D.host.E) hlocg c
  have hcop : Nat.Coprime (Tu D u) (gS D) :=
    (Nat.Coprime.coprime_mul_right_right hP.2.2.2.2.2.2.2.1).symm
  have hTg : ∃ x y : 𝓞 D.host.E, x * ((Tu D u : ℕ) : 𝓞 D.host.E) + y * ((gS D : ℕ) : 𝓞 D.host.E) = 1 := by
    refine ⟨((Nat.gcdA (Tu D u) (gS D) : ℤ) : 𝓞 D.host.E), ((Nat.gcdB (Tu D u) (gS D) : ℤ) : 𝓞 D.host.E), ?_⟩
    have h := Nat.gcd_eq_gcd_ab (Tu D u) (gS D)
    rw [hcop.gcd_eq_one] at h
    have := congrArg (Int.cast : ℤ → 𝓞 D.host.E) h
    push_cast at this
    rw [this]; ring
  obtain ⟨v, hv, hv0, hvc⟩ := pre_rowvec Λ hint (Tu D u) (lf D F0) hz ((gS D : ℕ) : 𝓞 D.host.E)
    hdual hTg a t
  have htr' : (∃ k : ℕ, (((gS D : ℕ) : 𝓞 D.host.E) : D.host.E) = 2 * (k : D.host.E) + 1) ∨
      ∃ ω : 𝓞 D.host.E, (ω : D.host.E) + star (ω : D.host.E) = 1 := by
    rcases htr with ⟨k, hk⟩ | h
    · exact Or.inl ⟨k, by rw [coe_nat, hk]; push_cast; ring⟩
    · exact Or.inr h
  have hframe_e : ∀ i : Fin D.R.rS, frame (lf D F0) (Fin.castSucc i) = F0.e i := by
    intro i; simp [frame, FlagG.fvec]
  obtain ⟨v', hv', l, hl, hZ, hc⟩ := trace_fix Λ hint (frame (lf D F0)) ((gS D : ℕ) : 𝓞 D.host.E) htr'
    {c | c ≤ Fin.castSucc a} t v hv
    (by
      intro c hc
      have hcl : c ≠ Fin.last _ := fun h => by
        rw [h] at hc; exact absurd hc (not_le.mpr (Fin.castSucc_lt_last a))
      obtain ⟨i, rfl⟩ := Fin.exists_castSucc_eq.mpr hcl
      rw [hframe_e]
      exact hv0 i (Fin.castSucc_le_castSucc_iff.mp hc))
    (fun c hc => hvc c (not_le.mp hc))
  refine ⟨v', hv', l, hl, fun i hi => ?_, fun c hc' => hc c (not_le.mpr hc')⟩
  rw [← hframe_e]
  exact hZ _ (Fin.castSucc_le_castSucc_iff.mpr hi)

theorem normRepStep_of_trace (D : D7) (u u' : D.what₂.Word) (hS : TermStable D u u')
    (hP : PrimeHyp D u (Tu D u')) (htr : Odd (gS D) ∨ TraceOne D) : PI.NormRepLift.NormRepStep D u u' :=
  normRepStep_of D u u' hS hP (rowVec_of D u (Tu D u') htr)

end PI.NRL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.NormRepStepOfTrace =====
