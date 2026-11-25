module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.IsAutI
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.AfStmt
public import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.KatoUse
public import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.GalEmbTop
public import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.AdmHom
public import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.DecEmb
public import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IsCrysOfInertia
public import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.PotCrysOf
public import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.RtPoints
public import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.DatFacts
public import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.PtIneL
public import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.PtInertiaAway
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.AfDesc
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.NumberU3US
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LinkedUnramifiedChains.LogarithmicNormBounds.LinkedUnlEOf
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IneLeFixingSubgroup
public import Development.AutomorphicArithmetic.AutomorphicVarieties.CurveDVRSpecialization.MatIrrOpenGd
public import Development.AutomorphicArithmetic.AutomorphicVarieties.CurveDVRSpecialization.TriangularOfReducibleRankThree
public import Development.AutomorphicArithmetic.AutomorphicVarieties.FrobeniusSmoothVectors.GdEx
public import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.IsPtOf
import Development.AutomorphicArithmetic.AutomorphicVarieties.CharacterLevelBounds.ClsFacts
import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.DvrFacts
import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.GalEmbFam
import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.Places
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.PtFinFinite
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.RtConj
import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.LocalRingsCompletion.DvrIntClosure
import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.LocalRingsCompletion.dvrFinite
import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.DatLoc
import Mathlib.Tactic.Linter.Style
import Development.AutomorphicArithmetic.AutomorphicVarieties.TheoremsMuLinked.MatrixIrreducibility.IrrOfMatIrr

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.ExistsFlagCharactersOfUpperTriangular, Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.AdmissibleTypeIEvenLevel

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.ExistsFlagCharactersOfUpperTriangular =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.ExistsFlagCharactersOfUpperTriangular", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.IsAutI\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.AfStmt\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.KatoUse\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.CharacterLevelBounds.ClsFacts\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.DvrFacts\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.GalEmbFam\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.GalEmbTop\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.Places\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.AdmHom\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.DecEmb\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IsCrysOfInertia\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.PotCrysOf\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.PtFinFinite\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.RtPoints\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.DatFacts\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.PtIneL\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.PtInertiaAway\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.RtConj\n\n"}
section -- clump:auto
@[expose] public section



section
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.MainNotions.N Formalism.BasicNotions Formalism.BasicNotions.Loc GlobalTheory.GalOfCusp Matrix IsLocalRing
open UpperTheory.V UpperTheory.V.Base UpperTheory.V.HV UpperTheory.V.Alg UpperTheory.V.U3
private theorem conj_left_block_eq_theta {Γ R : Type} [Group Γ] [CommRing R] (r : Γ →* GG (m := 3) (R := R)) (c g : Γ)
    (hc : (r c).mat = 1) (hc' : (r c).right = -1) (hg : (r g).right = 1) : (r (c⁻¹ * g * c)).left = theta (r g).left := by
  have h1 : (r c).left = 1 := Units.ext hc
  have h2 : theta (1 : GL (Fin 3) R) = 1 := map_one (thetaAut 3 R)
  simp [h1, hc', hg, h2]
private theorem exists_flag_characters_of_upper_triangular {Γ k : Type} [Group Γ] [Field k] {n : ℕ} (ρ : Γ →* GL (Fin n) k) (H : Subgroup Γ) (M : GL (Fin n) k)
    (h : ∀ s ∈ H, ∀ i j, j < i → (M * ρ s * M⁻¹ : GL (Fin n) k) i j = 0) :
    ∃ κ : Fin n → ↥H →* kˣ, Af.IsFlagOn ρ H κ ∧ ∀ i (s : ↥H), (κ i s : k) = (M * ρ s * M⁻¹ : GL (Fin n) k) i i := by
  have hm : ∀ i, ∀ s ∈ H, ∀ t ∈ H, (M * ρ (s * t) * M⁻¹ : GL (Fin n) k) i i =
      (M * ρ s * M⁻¹ : GL (Fin n) k) i i * (M * ρ t * M⁻¹ : GL (Fin n) k) i i := by
    intro i s hs t ht
    have e : M * ρ (s * t) * M⁻¹ = (M * ρ s * M⁻¹) * (M * ρ t * M⁻¹) := by simp [mul_assoc]
    rw [e, Units.val_mul, Matrix.mul_apply, Finset.sum_eq_single i]
    · intro j _ hj
      rcases lt_or_gt_of_ne hj with h1 | h1
      · rw [h s hs i j h1, zero_mul]
      · rw [h t ht j i h1, mul_zero]
    · simp
  let κ : Fin n → ↥H →* k := fun i =>
    { toFun := fun s => (M * ρ s * M⁻¹ : GL (Fin n) k) i i
      map_one' := by simp
      map_mul' := fun s t => hm i s s.2 t t.2 }
  exact ⟨fun i => (κ i).toHomUnits, ⟨M, fun s => ⟨h s s.2, fun i => rfl⟩⟩, fun i s => rfl⟩
private theorem crystalline_of_theta_twist_gl3 {l : ℕ} [Fact l.Prime] {H : Type} [Group H] [TopologicalSpace H] [IsTopologicalGroup H]
    (φ : H →* GQ l) (hφ : Topology.IsOpenEmbedding φ) (E : FinExt l) (ρ : H →* GL (Fin 3) ↥E.1) (hρ : Continuous ρ)
    (h : Loc.IsCr φ (Loc.colRep ρ)) :
    Loc.IsCr φ (Loc.colRep ((thetaAut 3 ↥E.1).toMonoidHom.comp ρ)) := by
  haveI := E.2
  haveI : IsModuleTopology ℚ_[l] ↥E.1 := isModuleTopologyOfFiniteDimensional
  haveI : IsModuleTopology ℚ_[l] (Fin 3 → ↥E.1) := isModuleTopologyOfFiniteDimensional
  have h0 : Loc.IsCr φ (Loc.chRep (1 : H →* (↥E.1)ˣ)) :=
    Loc.crUnr φ hφ _ (by
      have : ∀ p : H × ↥E.1, Loc.chRep (1 : H →* (↥E.1)ˣ) p.1 p.2 = p.2 := fun p => by simp [Loc.chRep]
      exact continuous_snd.congr fun p => (this p).symm) 0 fun g _ x => by simp [Loc.chRep]
  have hc : ∀ σ : H →* GL (Fin 3) ↥E.1, Continuous (fun g => (σ g : Matrix (Fin 3) (Fin 3) ↥E.1)) →
      ContAction (Loc.colRep σ) := fun σ hσ =>
    (hσ.comp continuous_fst).matrix_mulVec continuous_snd
  let b : (Fin 3 → ↥E.1) →ₗ[ℚ_[l]] (Fin 3 → ↥E.1) →ₗ[ℚ_[l]] ↥E.1 :=
    LinearMap.mk₂ ℚ_[l] (fun w x => (Jmat _ 3 *ᵥ w) ⬝ᵥ x) (fun _ _ _ => by simp [Matrix.mulVec_add])
      (fun _ _ _ => by simp [Matrix.mulVec_smul]) (fun _ _ _ => by simp) (fun _ _ _ => by simp)
  refine (Loc.isCrys_isDR_internalHom φ hφ (Loc.colRep ρ) (Loc.chRep (1 : H →* (↥E.1)ˣ)) _ (hc ρ (Units.continuous_val.comp hρ)) ?_
    (hc _ ?_) b (fun g w x => ?_) ?_).1 h h0
  · have : ∀ p : H × ↥E.1, Loc.chRep (1 : H →* (↥E.1)ˣ) p.1 p.2 = p.2 := fun p => by simp [Loc.chRep]
    exact continuous_snd.congr fun p => (this p).symm
  · exact (continuous_const.matrix_mul (Units.continuous_coe_inv.comp hρ).matrix_transpose).matrix_mul continuous_const
  · change (Jmat _ 3 *ᵥ ((theta (ρ g) : Matrix (Fin 3) (Fin 3) ↥E.1) *ᵥ w)) ⬝ᵥ ((ρ g : Matrix (Fin 3) (Fin 3) ↥E.1) *ᵥ x) = (1 : ↥E.1) • ((Jmat _ 3 *ᵥ w) ⬝ᵥ x)
    rw [one_smul, theta_val, Matrix.mulVec_mulVec, ← Matrix.mul_assoc, ← Matrix.mul_assoc, Jmat_mul_Jmat, Matrix.one_mul,
      ← Matrix.mulVec_mulVec, Matrix.mulVec_transpose, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Units.inv_mul,
      Matrix.one_mulVec]
  · rw [injective_iff_map_eq_zero]
    intro w hw
    have h1 : Jmat _ 3 *ᵥ w = 0 := dotProduct_eq_zero _ fun x => LinearMap.congr_fun hw x
    have h2 := congrArg (Jmat _ 3 *ᵥ ·) h1
    simpa [Matrix.mulVec_mulVec, Jmat_mul_Jmat] using h2
private theorem continuous_of_matrix_units {Γ k : Type} [Group Γ] [TopologicalSpace Γ] [IsTopologicalGroup Γ] [CommRing k] [TopologicalSpace k]
    {n : ℕ} (ρ : Γ →* GL (Fin n) k) (h : Continuous fun g => (ρ g : Matrix (Fin n) (Fin n) k)) : Continuous ρ :=
  Units.continuous_iff.2 ⟨h, (h.comp continuous_inv).congr fun g => by simp only [Function.comp_apply, map_inv]⟩
section
variable {Ω : Type} [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] {K : Type} [Field K] [NumberField K] [Algebra K Ω]
  {l : ℕ} [Fact l.Prime] {c : Coef l} {N : ℕ} [NeZero N] {e : ℕ} {ψ : DirichletCharacter c.O N} (D : Dat Ω K c e ψ)
  {U : (_root_.UpperTheory.V.U3.Univ (_root_.UpperTheory.V.U3.GCond.noCondition _ (D.η.comp D.ι) (D.Ψ.comp D.ι)))} {g₁ : G ℚ Ω} {r : G ℚ Ω →* GG (m := 3) (R := PadicAlgCl l)}
private theorem isAlgClosure_of_number_field (Ω : Type) [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] (K : Type) [Field K] [NumberField K]
    [Algebra K Ω] : IsAlgClosure K Ω :=
  ⟨IsAlgClosure.isAlgClosed ℚ, Algebra.IsAlgebraic.tower_top (K := ℚ) K⟩
private theorem continuous_rho_of_point (h : D.IsPt U g₁ r) : Continuous (D.rhoK r h.mult) := by
  haveI := isAlgClosure_of_number_field Ω K
  exact continuous_of_matrix_units _ (h.cont.comp (galEmbTop ℚ K Ω).1.continuous)
private theorem exists_local_crystalline_gl3_model (hI : CohInp) (h : D.IsPt U g₁ r) :
    ∃ (E : FinExt l) (ρ : ↥D.loc.HL →* GL (Fin 3) ↥E.1),
      (∀ g, GeneralLinearGroup.map (E.1.val : ↥E.1 →+* PadicAlgCl l) (ρ g) = (r (D.ι g)).left) ∧
      Loc.IsCr D.loc.HL.subtype (Loc.colRep ρ) := by
  obtain ⟨f, hf, hker, hpush⟩ := h.loc
  haveI : IsLocalRing c.O := c.dvr.toIsLocalRing
  haveI := (dvrFacts l c.O).2.2.2.1
  obtain ⟨E, hE⟩ := Loc.ptFin (l := l) U.R ((TrivSqZeroExt.inlAlgHom c.O _ _).comp f) hf
  have hE' : ∀ a, f a ∈ E.1 := fun a => (hE a).1
  haveI := E.2
  letI : Algebra c.O ↥E.1 := ((algebraMap c.O (PadicAlgCl l)).codRestrict E.1 fun a => f.commutes a ▸ hE' _).toAlgebra
  haveI : IsScalarTower ℤ_[l] c.O ↥E.1 := IsScalarTower.of_algebraMap_eq fun _ => Subtype.ext rfl
  let f' : U.R →ₐ[c.O] ↥E.1 :=
    { (f : U.R →+* PadicAlgCl l).codRestrict E.1 hE' with commutes' := fun a => Subtype.ext (f.commutes a) }
  obtain ⟨-, -, ρ, h1, h2⟩ := Loc.rtPoints hI.loc D.loc U ↥E.1 (push f' U.r.hom)
    ⟨f', rfl, fun a ha => Subtype.ext (hker ha)⟩
  refine ⟨E, ρ, fun g => ?_, h2⟩
  rw [h1, ← MonoidHom.comp_apply r D.ι, ← hpush]
  rfl
private theorem potentially_crystalline_conjugate_place (hI : CohInp) (h : D.IsPt U g₁ r) (g : G ℚ Ω) (hg : g = 1 ∨ g = D.cc) :
    Af.PotCrysAt (D.rhoK r h.mult) (Loc.placeJ (D.j.comp (g : Ω →+* Ω))) := by
  haveI := isAlgClosure_of_number_field Ω K
  obtain ⟨E, ρ, h1, h2⟩ := exists_local_crystalline_gl3_model D hI h
  obtain ⟨-, hcc, -, hη, -⟩ := dat_facts D
  have hop : IsOpen (D.loc.HL : Set (GQ l)) :=
    ((hη.comp_continuous D.ι_cont).isOpen_fiber 1).inter D.τ_open
  have hφ : Topology.IsOpenEmbedding D.loc.HL.subtype := hop.isOpenEmbedding_subtypeVal
  have hinj := (galEmbTop ℚ K Ω).1.injective
  have hη1 : ∀ s : ↥D.loc.HL, D.η (D.ι s) = 1 := fun s => s.2.1
  let ψ₀ : ↥D.loc.HL →* G ℚ Ω := (MulAut.conj g⁻¹).toMonoidHom.comp (D.ι.comp D.loc.HL.subtype)
  have hψ₀ : ∀ s, ψ₀ s = g⁻¹ * D.ι s * g := fun s => by simp [ψ₀]
  have hmem : ∀ s, ψ₀ s ∈ (galEmb ℚ K Ω).range := fun s => by
    rw [range_galEmb, ← D.η_ker, MonoidHom.mem_ker, hψ₀]
    simp [hη1]
  let ψ' : ↥D.loc.HL →* G K Ω := (MonoidHom.ofInjective hinj).symm.toMonoidHom.comp (ψ₀.codRestrict _ hmem)
  have hψ' : ∀ s, galEmb ℚ K Ω (ψ' s) = g⁻¹ * D.ι s * g := fun s =>
    (MonoidHom.apply_ofInjective_symm hinj _).trans (hψ₀ s)
  have hspec : ∀ (s : ↥D.loc.HL) (y : Ω), D.loc.HL.subtype s ((D.j.comp (g : Ω →+* Ω)) y) = (D.j.comp (g : Ω →+* Ω)) (ψ' s y) := by
    intro s y
    change (s : GQ l) (D.j (g y)) = D.j (g (galEmb ℚ K Ω (ψ' s) y))
    rw [D.ι_spec, hψ']
    simp
  have hρ : Continuous ρ := by
    refine continuous_of_matrix_units _ (continuous_pi fun a => continuous_pi fun b => continuous_induced_rng.2 ?_)
    have h3 : Continuous fun s : ↥D.loc.HL => (r (D.ι s)).mat a b :=
      (h.cont.comp (D.ι_cont.comp continuous_subtype_val)).matrix_elem a b
    exact h3.congr fun s => by rw [GG.mat, ← h1]; rfl
  rcases hg with rfl | rfl
  · refine Loc.potCrysOf _ _ ψ' hφ hspec _ (continuous_rho_of_point D h) E ρ (fun s a b => ?_) h2
    rw [Dat.rhoK_apply, hψ', inv_one, one_mul, mul_one, ← h1]
    rfl
  · refine Loc.potCrysOf _ _ ψ' hφ hspec _ (continuous_rho_of_point D h) E _ (fun s a b => ?_) (crystalline_of_theta_twist_gl3 _ hφ E ρ hρ h2)
    rw [Dat.rhoK_apply, hψ', conj_left_block_eq_theta r _ _ h.norm.atc ((h.mult _).trans hcc) ((h.mult _).trans (hη1 s)), ← h1,
      ← map_theta]
    rfl
private theorem exists_place_over_conjugate_embedding (w : HeightOneSpectrum (𝓞 K)) (hw : ((l : ℕ) : 𝓞 K) ∈ w.asIdeal) :
    ∃ g : G ℚ Ω, (g = 1 ∨ g = D.cc) ∧ IsPlaceOver (Loc.placeJ (D.j.comp (g : Ω →+* Ω))) w := by
  haveI := isAlgClosure_of_number_field Ω K
  obtain ⟨-, hcc, -⟩ := dat_facts D
  obtain ⟨j, hj⟩ := (Loc.decEmb (F := K) (Ω := Ω) (v := l)).1 _ w (isPlaceOver_placeOf Ω w) hw
  obtain ⟨g, hg⟩ : ∃ g : G ℚ Ω, ∀ x, j x = D.j (g x) := by
    letI : Algebra Ω (Om l) := D.j.toAlgebra
    haveI : IsScalarTower ℚ Ω (Om l) := IsScalarTower.of_algebraMap_eq' (Subsingleton.elim _ _)
    exact ⟨AlgHom.restrictNormal' j.toRatAlgHom Ω, fun x => (AlgHom.restrictNormal_commutes j.toRatAlgHom Ω x).symm⟩
  have key : ∀ g' : G ℚ Ω, D.η g' = D.η g → IsPlaceOver (Loc.placeJ (D.j.comp (g' : Ω →+* Ω))) w := by
    intro g' hg' x
    have h1 : g'⁻¹ * g ∈ (galEmb ℚ K Ω).range := by
      rw [range_galEmb, ← D.η_ker, MonoidHom.mem_ker]
      simp [hg']
    obtain ⟨k, hk⟩ := h1
    have h2 : ∀ y : K, (D.j.comp (g' : Ω →+* Ω)) (algebraMap K Ω y) = j (algebraMap K Ω y) := fun y => by
      rw [hg, ← mul_inv_cancel_left g' g, ← hk, AlgEquiv.mul_apply, galEmb_apply, AlgEquiv.commutes]
      rfl
    rw [← isPlaceOver_placeOf Ω w x, ← hj, ← ValuationSubring.mem_nonunits_iff, ← ValuationSubring.mem_nonunits_iff,
      ValuationSubring.mem_nonunits_iff_or, ValuationSubring.mem_nonunits_iff_or, ← map_inv₀]
    simp only [Loc.placeJ, ValuationSubring.mem_comap, h2]
  rcases Int.units_eq_one_or (D.η g) with h1 | h1
  · exact ⟨1, Or.inl rfl, key _ (by rw [h1, map_one])⟩
  · exact ⟨_, Or.inr rfl, key _ (by rw [h1, hcc])⟩
end
theorem UpperTheory.V.U3.admissible_rank_three_of_type_one_of_automorphic_point :
    CohInp → ∀ {Ω : Type} [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] {K : Type} [Field K] [NumberField K] [Algebra K Ω]
      {l : ℕ} [Fact l.Prime] {c : Coef l} {N : ℕ} [NeZero N] {e : ℕ} {ψ : DirichletCharacter c.O N} (D : Dat Ω K c e ψ) {U : (_root_.UpperTheory.V.U3.Univ (_root_.UpperTheory.V.U3.GCond.noCondition _ (D.η.comp D.ι) (D.Ψ.comp D.ι)))} {g₁ : G ℚ Ω}, D.Marked g₁ → ∀ {r : G ℚ Ω →* GG (m := 3) (R := PadicAlgCl l)} (h : D.IsPt U g₁ r), ∀ [IsCMField K] (ι : Qbar l ≃+* ℂ),
      TypeI D.η r → D.IsAutIAlt ι r h.mult → _root_.UpperTheory.V.Af.Adm3Alt ι e N (D.rhoK r h.mult) := by
  intro hI Ω _ _ _ K _ _ _ l _ c N _ e ψ D U g₁ hM r h _ ι hT hA
  haveI := isAlgClosure_of_number_field Ω K
  have hη : ∀ s : G K Ω, D.η (galEmb ℚ K Ω s) = 1 := fun s => by
    rw [← MonoidHom.mem_ker, D.η_ker]
    exact galEmb_mem ℚ K Ω s
  let θ : G K Ω →* (Qbar l)ˣ := (Units.map (algebraMap c.O (PadicAlgCl l)).toMonoidHom).comp
    ((Chr.dirG ℚ Ω ψ).comp (galEmb ℚ K Ω))
  have hθ : ∀ i : Fin 3, Af.KillsMu N (θ ^ wt1 i) := fun i s hs => by
    have : Chr.cls ℚ Ω N (galEmb ℚ K Ω s) = 1 := (Chr.clsFacts ℚ Ω N).2.2.1 _ 1 fun ζ hζ => by
      rw [Units.val_one, ZMod.val_one_eq_one_mod, ← pow_eq_pow_mod 1 hζ, pow_one, galEmb_apply, hs ζ hζ]
    simp [θ, Chr.dirG, this]
  have hΨ : ∀ s : G K Ω, D.ΨQ (galEmb ℚ K Ω s) = cycBar K Ω l s ^ (e : ℤ) * θ s := fun s => by
    have h1 : Units.map (algebraMap c.O (PadicAlgCl l)).toMonoidHom (chiO ℚ Ω l c.O (galEmb ℚ K Ω s)) =
        cycBar K Ω l s := Units.ext rfl
    rw [← h1, ← map_zpow]
    exact map_mul (Units.map (algebraMap c.O (PadicAlgCl l)).toMonoidHom) _ _
  refine ⟨⟨top_ne_bot, fun _ _ _ => trivial, fun W _ hW => hT W fun g hg v hv => ?_⟩, hA, continuous_rho_of_point D h,
    fun w hw => ?_, fun w hw => ?_⟩
  · rw [D.η_ker, ← range_galEmb] at hg
    obtain ⟨s, rfl⟩ := hg
    exact hW s v hv
  · have hB := isPlaceOver_placeOf Ω w
    have hl : ¬ (placeOf Ω w).valuation (l : Ω) < 1 := fun h => hw (((places K Ω l _).2.2.1 w hB).1 h)
    obtain ⟨M, hM⟩ := pt_inertia_away D hM h _ hl
    refine ⟨_, hB, fun i => θ ^ wt1 i, hθ, M, fun s hs => ?_⟩
    have h1 := hM (galEmb ℚ K Ω s) hs (hη s)
    have h2 : cycBar K Ω l s = 1 := by
      have : cycZ K Ω l s = 1 := (places K Ω l _).2.2.2 hl hs
      simp [cycBar, this]
    rw [Units.val_mul, Units.val_mul, Dat.rhoK_apply, ← GG.mat, h1, Matrix.mul_assoc, Units.mul_inv, Matrix.mul_one,
      GG.mat, unitaryThreeReflection_left, tor_val, hΨ, h2, _root_.one_zpow, one_mul]
    rfl
  · obtain ⟨g, hg, hB⟩ := exists_place_over_conjugate_embedding D w hw
    have hl := ((places K Ω l _).2.2.1 w hB).2 hw
    obtain ⟨-, M, h1, h2⟩ := pt_inertia_above hI D hM h _ hl
    have hF := (galEmbFam ℚ K Ω l).1 (Loc.placeJ (D.j.comp (g : Ω →+* Ω)))
    have hc : ∀ s : G K Ω, (conjBy M r (galEmb ℚ K Ω s)).left = M * D.rhoK r h.mult s * M⁻¹ := fun s =>
      _root_.GlobalTheory.OrdLoc.conjBy_left M r _ ((h.mult _).trans (hη s))
    obtain ⟨κ, hκ, hκ'⟩ := exists_flag_characters_of_upper_triangular (D.rhoK r h.mult) (Dec (F := K) (Loc.placeJ (D.j.comp (g : Ω →+* Ω)))) M
      fun s hs i j hij => by
        rw [← hc]
        rw [← hF.1] at hs
        exact h1 _ hs (hη s) i j (by have : (j : ℕ) < i := hij; simp only [wt, wt1]; omega)
    refine ⟨_, hB, fun i => θ ^ wt1 i, κ, hθ, hκ, fun i s hs => Units.ext ?_, Or.inr (potentially_crystalline_conjugate_place D hI h g hg)⟩
    have h3 : ![(e : ℤ), 0, -(e : ℤ)] i = e * wt1 i := by fin_cases i <;> simp [wt1]
    rw [hκ', ← hc, h3, _root_.zpow_mul, MonoidHom.zpow_apply, ← _root_.mul_zpow, ← hΨ]
    refine (h2 _ hs i).trans ?_
    rw [GG.mat, unitaryThreeReflection_left, tor_val, Matrix.diagonal_apply_eq]
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.ExistsFlagCharactersOfUpperTriangular =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.AdmissibleTypeIEvenLevel =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.AdmissibleTypeIEvenLevel", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.AfDesc\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.NumberU3US\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LinkedUnramifiedChains.LogarithmicNormBounds.LinkedUnlEOf\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.KatoUse\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IneLeFixingSubgroup\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.CharacterLevelBounds.ClsFacts\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.CurveDVRSpecialization.MatIrrOpenGd\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.CurveDVRSpecialization.TriangularOfReducibleRankThree\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.FrobeniusSmoothVectors.GdEx\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.LocalRingsCompletion.DvrIntClosure\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.LocalRingsCompletion.dvrFinite\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.DvrFacts\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.ExistsFlagCharactersOfUpperTriangular\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.PtFinFinite\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.DatLoc\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.IsPtOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.TheoremsMuLinked.MatrixIrreducibility.IrrOfMatIrr\n\n"}
section -- clump:auto
@[expose] public section




section
section SlopeTestRemainingChoices
open IsLocalRing UpperTheory.V UpperTheory.V.U3 UpperTheory.V.Alg UpperTheory.V.HV
private alias int_of_norm := _root_.GlobalTheory.BlochKatoIntegralScalars.isIntegral_of_norm_le_one
private theorem loc_of_int {O R A : Type} [CommRing O] [CommRing R] [IsLocalRing R] [Algebra O R] [CommRing A]
    [Nontrivial A] [Algebra O A] [Algebra.IsIntegral O A] (f : R →ₐ[O] A) : IsLocalHom f := by
  let g : R →+* f.range := f.rangeRestrict
  have hg : Function.Surjective g := f.rangeRestrict_surjective
  haveI : IsLocalRing f.range := IsLocalRing.of_surjective' g hg
  have hl : IsLocalHom g := IsLocalHom.of_surjective _ hg
  haveI : Algebra.IsIntegral f.range A := Algebra.IsIntegral.tower_top (R := O)
  have h2 : IsLocalHom (algebraMap f.range A) := Algebra.IsIntegral.isLocalHom _ _
  exact ⟨fun x hx => hl.map_nonunit x (h2.map_nonunit (g x) hx)⟩
private theorem norm_le {l : ℕ} [Fact l.Prime] {c : Coef l} {R : Type} [CommRing R] [Algebra c.O R] [IsCO c.O R]
    {f : R →ₐ[c.O] PadicAlgCl l} (hf : IsLocPt f) (x : R) : ‖f x‖ ≤ 1 := by
  obtain ⟨-, -, hl, -⟩ := UpperTheory.V.abelian₂.dvr_finite l c.O
  have hz : (l : R) ∈ maximalIdeal R := fun h => by
    have h1 : IsUnit (algebraMap c.O R (l : c.O)) := by rwa [map_natCast]
    exact hl (IsLocalHom.map_nonunit _ h1)
  have hp : 0 < ‖((l : ℕ) : PadicAlgCl l)‖ := norm_pos_iff.2 (Nat.cast_ne_zero.2 (Fact.out : l.Prime).ne_zero)
  by_contra hx
  obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt (‖((l : ℕ) : PadicAlgCl l)‖⁻¹) (not_le.1 hx)
  have h1 := hf (x ^ n * l) (Ideal.mul_mem_left _ _ hz)
  rw [map_mul, map_pow, map_natCast, norm_mul, norm_pow] at h1
  have h2 := mul_lt_mul_of_pos_right hn hp
  rw [inv_mul_cancel₀ hp.ne'] at h2
  exact lt_asymm h1 h2
private theorem factor {l : ℕ} [Fact l.Prime] {c : Coef l} {R : Type} [CommRing R] [Algebra c.O R] [IsCO c.O R]
    (f : R →ₐ[c.O] PadicAlgCl l) (hf : IsLocPt f) :
    ∃ (A : Subalgebra c.O (PadicAlgCl l)) (h : IsDiscreteValuationRing A) (_ : Module.Finite c.O A) (f' : R →ₐ[c.O] A),
      IsAdicComplete (@maximalIdeal A _ h.toIsLocalRing) A ∧ ∀ x, (f' x : PadicAlgCl l) = f x := by
  haveI := (UpperTheory.V.abelian₂.dvr_finite l c.O).1
  obtain ⟨E, hE⟩ := Loc.ptFin (l := l) R ((TrivSqZeroExt.inlAlgHom c.O _ _).comp f) hf
  have hE' : ∀ a, f a ∈ E.1 := fun a => (hE a).1
  haveI := E.2
  obtain ⟨h1, h2, -⟩ := UpperTheory.V.abelian₂.dvr_intClosure l E.1
  let j : E.1 →ₐ[ℤ_[l]] PadicAlgCl l := E.1.val.restrictScalars ℤ_[l]
  have hj : Function.Injective j := Subtype.val_injective
  let e := (integralClosure ℤ_[l] E.1).equivMapOfInjective j hj
  let B := (integralClosure ℤ_[l] E.1).map j
  have hB : ∀ x, f x ∈ B := fun x =>
    ⟨⟨f x, hE' x⟩, (isIntegral_algHom_iff j hj).1 (int_of_norm _ (norm_le hf x)), rfl⟩
  let A : Subalgebra c.O (PadicAlgCl l) := { B.toSubsemiring with algebraMap_mem' := fun a => f.commutes a ▸ hB _ }
  have d1 : IsDiscreteValuationRing B := IsDiscreteValuationRing.RingEquivClass.isDiscreteValuationRing e
  have d2 : Module.Finite ℤ_[l] B := Module.Finite.equiv e.toLinearEquiv
  haveI : Module.Finite ℤ_[l] A := d2
  haveI d3 : IsDiscreteValuationRing A := d1
  exact ⟨A, d3, Module.Finite.of_restrictScalars_finite ℤ_[l] c.O A, f.codRestrict A hB, (UpperTheory.V.abelian₂.dvr_finite l A).1,
    fun _ => rfl⟩
end SlopeTestRemainingChoices
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.MainNotions.N Formalism.BasicNotions Formalism.BasicNotions.Loc GlobalTheory.GalOfCusp Matrix IsLocalRing
open UpperTheory.V UpperTheory.V.Base UpperTheory.V.HV UpperTheory.V.Alg UpperTheory.V.U3 UpperTheory.V.Z.J UpperTheory.V.Th
open Formalism.GaloisCohomology in
theorem UpperTheory.V.Z.J.admissible_typeI_even_level_alt :
    U3.CohInp → _root_.UpperTheory.V.Af.HypothesesH' → UnlEndLogNorm → _root_.UpperTheory.V.Z.J.AdmI_s := by
  intro hI hH hE Ω _ _ _ K _ _ _ _ _ l hl c N _ e ψ D U g₁ hM S f hf hr ι hT hA
  have hN := hH.litN
  have hσ : Sd.IsCC D.cc := D.conj
  haveI : IsLocalHom (algebraMap ℤ_[l] c.O) := (dvrFacts l c.O).2.2.1
  haveI : CharP (ResidueField c.O) l := by
    rw [CharP.charP_iff_prime_eq_zero hl.out, ← map_natCast (residue c.O), residue_eq_zero_iff,
      mem_maximalIdeal, mem_nonunits_iff, ← map_natCast (algebraMap ℤ_[l] c.O)]
    intro hu
    exact PadicInt.prime_p.not_unit (isUnit_of_map_unit _ _ hu)
  obtain ⟨B, hB, -, -, -, hB', -⟩ := U3.dat_loc D
  have hF := Fr.gd_ex ⟨⟨hN.coh.lf, hN.coh.lt, hN.coh.le, hN.coh.gf, hN.coh.ge, hN.coh.pt⟩, hN.coh.uo, hN.coh.gw⟩
    Ω K l c N e ψ D B hB
  have hσ' : IsConjOm D.cc.toRingEquiv := hσ
  have hΨ : Chr.Psi l e (Chr.dirG ℚ Ω ψ) D.cc = 1 := by
    have h1 : cycZ ℚ Ω l D.cc = -1 := hσ'.cyc (E := ℚ)
    have h2 : chiO ℚ Ω l c.O D.cc = -1 := by
      show Units.map (algebraMap ℤ_[l] c.O).toMonoidHom (cycZ ℚ Ω l D.cc) = -1
      rw [h1]
      apply Units.ext
      simp
    have h3 : (Chr.dirG ℚ Ω ψ D.cc : c.O) = (-1) ^ e := by
      rw [Chr.dirG, MonoidHom.comp_apply, (Chr.clsFacts ℚ Ω N).2.2.2.1 D.cc hσ', MulChar.coe_toUnitHom]
      exact D.gd.par
    apply Units.ext
    show ((chiO ℚ Ω l c.O D.cc ^ (e : ℤ) * Chr.dirG ℚ Ω ψ D.cc : c.Oˣ) : c.O) = 1
    rw [h2, zpow_natCast, Units.val_mul, h3, Units.val_pow_eq_pow_val, Units.val_neg, Units.val_one, ← mul_pow]
    simp
  have hram : ∀ B' : ValuationSubring Ω, ¬ Ine (F := ℚ) B' ≤ D.η.ker →
      B'.valuation ((l * N * (discr K).natAbs : ℕ) : Ω) < 1 := by
    intro B' h
    rw [D.η_ker] at h
    exact valuation_lt_one_of_ramified_of_discr_dvd K B' h (dvd_mul_left _ _)
  have hk : Pr.LinkHyp c N e D.η D.cc B (l * N * (discr K).natAbs) :=
    ⟨D.gd.e_pos, dvd_mul_right _ _,
      mul_ne_zero (mul_ne_zero hl.out.ne_zero (NeZero.ne N)) (Int.natAbs_ne_zero.2 (discr_ne_zero K)), hram, hB, hσ⟩
  obtain ⟨A, hA1, hA2, f', hA3, hf'⟩ := factor f hf
  haveI : IsLocalRing A := hA1.toIsLocalRing
  have ho := Pr.ordPt_of_gd hI.loc D g₁ hM U S B hB' A f' (loc_of_int f')
  have e1 : UnitaryThreeInertia.push A.val (U3.push f' S.r.hom) = U3.push f S.r.hom :=
    MonoidHom.ext fun g => SemidirectProduct.ext (Units.ext (Matrix.ext fun a b => hf' _)) rfl
  have had := _root_.UpperTheory.V.U3.admissible_rank_three_of_type_one_of_automorphic_point hI D hM (U3.isPt_push D hM S f hf) ι hT hA
  have he := D.gd.e_pos
  have key := hE Ω l c N e ψ D.η D.cc g₁ B _ hk D.gd.N_even hΨ hF A _ ho
    (Pr.matIrr_open_gd D g₁ hM B hB A _ ho (by rw [e1]; exact hT)) K D.gd.quad D.η_ker (D.rhoK _ hr)
    (fun s => by rw [e1]; rfl) N NeZero.one_le had.level.above
  exact { toAdm3 := had, unl := key }
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.AdmissibleTypeIEvenLevel =====
