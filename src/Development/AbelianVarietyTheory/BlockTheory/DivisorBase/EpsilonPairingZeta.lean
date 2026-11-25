module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ToSpanSingletonConstGenInjective
public import Development.AbelianVarietyTheory.Definitions.Divisors.XiMulNu
public import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConvEqOneOfForallPairing
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt

@[expose] public section

noncomputable section

open WittVector Ideal Matrix

namespace GlobalTheory.IndefiniteRowSideFullHecke.EpsilonPairingZeta

open GlobalTheory.PDivGroup GlobalTheory.Sandwich

structure IsIntegers (O C : Type) [CommRing O] [NormedField C] [Algebra O C] : Prop where

  inj : Function.Injective (algebraMap O C)

  mem_iff : ∀ x : C, (∃ a : O, algebraMap O C a = x) ↔ ‖x‖ ≤ 1

variable {p : ℕ} [Fact p.Prime] {O : Type} [CommRing O] [Fact ¬IsUnit (p : O)]
  [IsAdicComplete (span {(p : O)}) O]

def zeta (ε : PreTilt O p) (n : ℕ) : O := PreTilt.untilt (root^[n] ε)

theorem zeta_succ_pow (ε : PreTilt O p) (n : ℕ) : zeta ε (n + 1) ^ p = zeta ε n := by
  unfold zeta
  rw [← map_pow, Function.iterate_succ_apply']
  congr 1
  exact (_root_.frobeniusEquiv (PreTilt O p) p).apply_symm_apply _

def IsPrimitiveSystem (ε : PreTilt O p) : Prop := ∀ n, IsPrimitiveRoot (zeta ε n) (p ^ n)

theorem IsPrimitiveSystem.zeta_zero {ε : PreTilt O p} (hε : IsPrimitiveSystem ε) :
    zeta ε 0 = 1 := by simpa using (hε 0).pow_eq_one

def epsTate {ε : PreTilt O p} (hε : IsPrimitiveSystem ε) : (PDivGroup.mu p O).Tate :=
  muTate O (zeta ε) hε.zeta_zero (zeta_succ_pow ε)

def epsEquiv [IsDomain O] {ε : PreTilt O p} (hε : IsPrimitiveSystem ε) :
    ℤ_[p] ≃ₗ[ℤ_[p]] (PDivGroup.mu p O).Tate :=
  LinearEquiv.ofBijective (LinearMap.toSpanSingleton ℤ_[p] _ (epsTate hε))
    (smul_muTate_bijective (zeta ε) hε.zeta_zero (zeta_succ_pow ε) hε)

def epsPairing [IsDomain O] {ε : PreTilt O p} (hε : IsPrimitiveSystem ε) (G : PDivGroup p O)
    (t : G.Tate) (χ : G.dual.Tate) : ℤ_[p] :=
  (epsEquiv hε).symm (pairing G O t χ)

theorem epsPairing_smul [IsDomain O] {ε : PreTilt O p} (hε : IsPrimitiveSystem ε)
    (G : PDivGroup p O) (t : G.Tate) (χ : G.dual.Tate) :
    epsPairing hε G t χ • epsTate hε = pairing G O t χ :=
  (epsEquiv hε).apply_symm_apply _

def toO {G : PDivGroup p O} {h : ℕ} (e : G.Tate ≃ₗ[ℤ_[p]] (Fin h → ℤ_[p])) (t : G.Tate) :
    Fin h → O := fun i => padicToO p O (e t i)

def pairingO [IsDomain O] {ε : PreTilt O p} (hε : IsPrimitiveSystem ε) {G : PDivGroup p O}
    {h : ℕ} (e : G.Tate ≃ₗ[ℤ_[p]] (Fin h → ℤ_[p])) (y : Fin h → O) (χ : G.dual.Tate) : O :=
  ∑ i, y i * padicToO p O (epsPairing hε G (e.symm (Pi.single i 1)) χ)

theorem pairingO_toO [IsDomain O] {ε : PreTilt O p} (hε : IsPrimitiveSystem ε)
    {G : PDivGroup p O} {h : ℕ} (e : G.Tate ≃ₗ[ℤ_[p]] (Fin h → ℤ_[p])) (t : G.Tate)
    (χ : G.dual.Tate) : pairingO hε e (toO e t) χ = padicToO p O (epsPairing hε G t χ) := by
  have ht : t = ∑ i, e t i • e.symm (Pi.single i 1) := by
    apply e.injective

    rw [map_sum]
    ext j
    simp [Finset.sum_apply, Pi.single_apply]
  conv_rhs => rw [ht]

  simp only [pairingO, toO, epsPairing, map_sum, map_smul, LinearMap.sum_apply,
  LinearMap.smul_apply, smul_eq_mul, map_mul]

section Datum

variable {ε : PreTilt O p} {h : ℕ} {Λ : Type} [CommRing Λ] [Algebra ℤ_[p] Λ]

def actH (D : Datum ε h Λ) (a : Λ) : (Fin h → O) →ₗ[O] (Fin h → O) :=
  Matrix.toLin' ((D.ρM a).map (fontaineTheta O p))

def bQuot (D : Datum ε h Λ) : ((Fin h → O) ⧸ D.Fil) →ₗ[O] (Fin h → O) :=
  D.Fil.liftQ D.bb le_rfl

structure Realizes [IsDomain O] (hε : IsPrimitiveSystem ε) (u₁ u₂ : Oˣ) (G : PDivGroup p O)
    (_ρ : Action Λ G) (D : Datum ε h Λ) (e : G.Tate ≃ₗ[ℤ_[p]] (Fin h → ℤ_[p]))
    (fil : G.dual.omega ≃ₗ[O] D.Fil) (lie : ((Fin h → O) ⧸ D.Fil) ≃ₗ[O] G.Lie) : Prop where

  al_eq : ∀ t : G.Tate, D.al (toO e t) =
    (u₁ : O) • (fil (omegaMap G.dual (PDivGroup.mu p O) (dualChar G t) (dlogT p O)) : Fin h → O)

  b_eq : ∀ (x : G.Lie) (χ : G.dual.Tate), pairingO hε e (bQuot D (lie.symm x)) χ =
    (u₂ : O) * x (omegaMap G (PDivGroup.mu p O) (charHom G χ) (dlogT p O))

end Datum

def HodgeTateSandwichAt [IsDomain O] {ε : PreTilt O p} (hε : IsPrimitiveSystem ε) : Prop :=
  ∃ u₁ u₂ : Oˣ, ∀ (G : PDivGroup p O) (Λ : Type) [CommRing Λ] [Algebra ℤ_[p] Λ] (ρ : Action Λ G),
    ∃ (D : Datum ε G.height Λ) (e : G.Tate ≃ₗ[ℤ_[p]] (Fin G.height → ℤ_[p]))
      (fil : G.dual.omega ≃ₗ[O] D.Fil) (lie : ((Fin G.height → O) ⧸ D.Fil) ≃ₗ[O] G.Lie),
      Realizes hε u₁ u₂ G ρ D e fil lie

section Inhabitant

variable [IsDomain O] {ε : PreTilt O p} (hε : IsPrimitiveSystem ε)






end Inhabitant

section Guards

variable {p : ℕ} [Fact p.Prime] {C : Type} [NormedField C] [NormedAlgebra ℚ_[p] C]
  {O : Type} [CommRing O] [Algebra O C]

end Guards

end GlobalTheory.IndefiniteRowSideFullHecke.EpsilonPairingZeta
