module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.DivWCoreLacUseType
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FiniteDimensionalWdSpace
public import Formalism.LocalRingCardinality.AdicCompletionLocal.LocTied
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.TrivialOnInertiaOfUnr
import Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds
import Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf
import ReciprocityTheory.NeutralLocalFields.Reciprocity

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Neutral.B1 Formalism.L2.Host Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.N
open GlobalTheory.CuspRep GlobalTheory.WeilDeligne GlobalTheory.Pst GlobalTheory.LocLanglands GlobalTheory.HeckeGal GlobalTheory.LocGL GlobalTheory.GalOfCusp Polynomial

namespace PositivityTheory.AutomorphicGaloisHodgeTate.Div

def HTLac {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω] {l : ℕ}
    [Fact l.Prime] {N : ℕ} (V : G E Ω →* GL (Fin N) (Qbar l)) (n : ℕ) : Prop :=
  ∃ (P : LocPrime l) (AI : LocAinf l P), Nonempty (LocTied l P AI) ∧
    ∃ (w : HeightOneSpectrum (𝓞 E)) (A : ValuationSubring Ω), ((l : ℕ) : 𝓞 E) ∈ w.asIdeal ∧ IsPlaceOver A w ∧
    ∃ (O : Type) (_ : CommRing O) (_ : Algebra ℤ_[l] O) (_ : TopologicalSpace O)
      (Bw : LocBridge l E Ω (Dec (F := E) A) O), GlobalTheory.Pst.Induces Bw ∧
    ∃ (τ : E →+* Qbar l) (J : Multiset ℤ), IsJumpsAt P Bw (V.comp (Dec (F := E) A).subtype) τ J ∧
      ∃ ks : Fin n → ℤ, Function.Injective ks ∧ (∀ i, ks i ∈ J) ∧ IsLac (fun i => ((ks i : ℤ) : ℚ))

def SenWLac : Prop :=
  ∀ (E Ω : Type) [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
    (l : ℕ) [Fact l.Prime] (N n : ℕ) (V : G E Ω →* GL (Fin N) (Qbar l)), Continuous V → HTLac V n →
    ∃ (K' : Type) (_ : Field K') (_ : IsAlgClosed K') (_ : Algebra (Qbar l) K')
      (X : Matrix (Fin N) (Fin N) K'), InLieZar V X ∧
        ∃ e : Fin n → K', Function.Injective e ∧ IsLac e ∧ ∀ i, X.charpoly.IsRoot (e i)

end PositivityTheory.AutomorphicGaloisHodgeTate.Div
