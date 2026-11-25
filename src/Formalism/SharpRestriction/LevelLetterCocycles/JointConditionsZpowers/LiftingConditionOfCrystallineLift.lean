module

public import Formalism.SharpRestriction.LevelLetterCocycles.LiftingTheory

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.WeaklyAdmissibleFiltrations

open NumberField IsDedekindDomain

section Gen

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL] {O : Type} [CommRing O] [Algebra O LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
    [Module O V] [IsScalarTower O LL V] {ρ : Representation LL G V}
    [TopologicalSpace V] [ContinuousAdd V] [ContinuousConstSMul LL V]
    {V' : Type} [AddCommGroup V'] [Module LL V'] [Module Qp V'] [IsScalarTower Qp LL V']
    [Module O V'] [IsScalarTower O LL V'] {ρ' : Representation LL G V'}
    [TopologicalSpace V'] [ContinuousAdd V'] [ContinuousConstSMul LL V']
    {L : Lattice (O := O) ρ} {L' : Lattice (O := O) ρ'}

theorem LiftF_mono (F : LatHom L L') {e e' : ℕ} (he : e ≤ e') (h : F.LiftF PD e) : F.LiftF PD e' := by
  intro c hc
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le he
  rw [pow_add, mul_comm, mul_smul]
  exact (F.ImF PD).smul_mem _ (h c hc)

end Gen

section Fields

variable {l : ℕ} [Fact l.Prime]

theorem caseA_of_unram (P : LocPrime l) (H : LocHW l P) {K : FinExt l} {LL : FinExt l} (h : Good K 1 LL)
    (hK : K.1 ≤ MaximalUnramifiedExtension l) (hl : l ≠ 2) : Formalism.MainNotions.LiftingTheory.CaseA (H.W K 1 LL h) := by
  refine ⟨⟨RingHom.injective (algebraMap ↥(K0 K) ↥K.1), fun y =>
    ⟨⟨(y : Om l), IntermediateField.mem_inf.mpr ⟨y.2, hK y.2⟩⟩, by ext; rfl⟩⟩, H.W_s K 1 LL h, ?_⟩
  rw [P.PD_p K]
  exact hl

end Fields

theorem Hmax_const_le (n M h : ℕ) : Formalism.MainNotions.LiftingTheory.Hmax n (fun _ => M) (fun _ => h) ≤ M + h := by
  unfold Formalism.MainNotions.LiftingTheory.Hmax
  exact Finset.sup_le fun _ _ => le_rfl

end Formalism.MainNotions.N
