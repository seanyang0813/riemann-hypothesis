module

public import Mathlib.RingTheory.Flat.Basic
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Development.WeilBound.CoreStatements.HodgeTatePoints.HtatHens

@[expose] public section

namespace GlobalTheory.CompanionTheory.CommAlg

theorem exists_flat_henselian_normal_over_prime :
    ∀ (R : Type) [CommRing R] [IsDomain R] [IsIntegrallyClosed R] (P : Ideal R) [P.IsPrime],
      ∃ (R' : Type) (_ : CommRing R') (_ : IsDomain R') (_ : HenselianLocalRing R')
        (_ : Algebra R R'), IsIntegrallyClosed R' ∧ Module.Flat R R' ∧
          (IsLocalRing.maximalIdeal R').comap (algebraMap R R') = P := by
  exact @PositivityTheory.HtPt.Htat.hens_normal

end GlobalTheory.CompanionTheory.CommAlg
