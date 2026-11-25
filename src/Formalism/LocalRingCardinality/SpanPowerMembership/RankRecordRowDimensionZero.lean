module

public import Formalism.LocalRingCardinality.SpanPowerMembership.GenericMemberLevelNearLower
public import Formalism.LocalRingCardinality.SpanPowerMembership.BaseFormAnisotropicOrthogonalSingle
public import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleClassGroupCardPos
import Formalism.LocalRingCardinality.SpanPowerMembership.Adelic
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.FrameFacts

@[expose] public section

noncomputable section

namespace Formalism.BasicNotions.Examples₂

open NumberField IsDedekindDomain

abbrev Tau2 (R : Ranks) : Type := ↥(R.Psi)

theorem card_realPlaces_eq_degree (R : Ranks) : Fintype.card (Tau2 R) = R.f := by
  rw [← Nat.card_eq_fintype_card, R.toFrame.natCard_Psi]
  rfl

section Member2

variable {R : Ranks} {Tau : Type} [Fintype Tau] (hc : Tau → HCParam R)

abbrev chain2 : ColumnChain R Tau hc where
  cls := fun _ => Empty
  stab := fun _ c => c.elim
  stabGrp := fun _ c => c.elim
  stabFin := fun _ c => c.elim
  DGam := 1
  DGam_pos := one_pos
  dvd_DGam := fun _ _ c => c.elim
  Y := fun _ => Unit
  de := fun _ _ _ => 1
  de_ne := fun _ _ _ => one_ne_zero
  rhoDet := fun _ c => c.elim
  rhoDet' := fun _ c => c.elim
  rho_norm := fun _ _ c => c.elim
  rho'_norm := fun _ _ c => c.elim
  unf := fun _ c => c.elim
  sSharp := fun i τ => if h : i < R.m then (sInt R (hc τ) ⟨i, h⟩).2.choose else 0
  sSharp_eq := fun i h τ => by rw [dite_eq_left h]; exact (sInt R (hc τ) ⟨i, h⟩).2.choose_spec.symm
  sDiv := fun i τ => if h : i < R.m then (sInt R (hc τ) ⟨i, h⟩).1.choose else 0
  sDiv_eq := fun i h τ => by rw [dite_eq_left h]; exact (sInt R (hc τ) ⟨i, h⟩).1.choose_spec.symm

variable (T : ℕ) [hT : Fact T.Prime]

abbrev levelColumnsAt (Dst : ℝ) (hD : 0 < Dst) (Gam : ℝ) (hG : 1 < Gam) : ColumnsAtT R (chain2 hc) :=
  haveI : NeZero T := ⟨hT.out.ne_zero⟩
  { T := T
    T_prime := hT.out
    vT := Fin R.f
    card_vT := Fintype.card_fin _
    Fv := fun _ => ZMod T
    card_Fv := fun _ => ZMod.card T
    psiT := fun _ => ZMod.stdAddChar
    psiT_ne := fun _ => by
      have := ZMod.isPrimitive_stdAddChar T (one_ne_zero (α := ZMod T))
      rwa [AddChar.mulShift_one] at this
    rhoT := fun _ => 1
    Mu0 := ⊥
    Mu0_fd := inferInstance
    Mu0_stable := fun _ _ => by simp
    duStar := 1
    duStar_pos := one_pos
    Dstar := Dst
    Dstar_pos := hD
    GamP := Gam
    one_lt_gammaP := hG }

end Member2

def dstarOfRanks (R : Ranks) (Ts Gam : ℝ) : ℝ :=
  (Ts * Gam ^ ((2 : ℝ) / ((R.f * R.k : ℕ) : ℝ))) ^ (R.f * R.k)

section Record

variable {R : Ranks}

variable (H : Host R)

abbrev hostLevelData (Ts Gam : ℝ) : Rows.Data R :=
  rowsG H.E H.φ₀ (@placesOf H.E _ _ H.cmStar) (Tau2 R) (card_realPlaces_eq_degree R) (dstarOfRanks R Ts Gam) (shaExample H)
    (shaExample_nonneg H) (exampleClassGroupCard H) (exampleClassGroupCard_pos H)

def hostSpacesOfNorm (T : ℕ) [hT : Fact T.Prime] (pz : H.E) (hpz : pz * H.conj pz = (T : H.E)) :
    @Spaces R H.F H.E _ _ _ _ H.cmStar _ :=
  letI := H.cmStar
  spacesOfRanks R star_isIntegral (cmData H) T hT.out pz
    (by rw [star_eq_conj H pz, mul_comm]; exact hpz)
    (exists_adelic_neg_one H (cmData H).sig (fun x => star_eq_conj H x))

end Record

end Formalism.BasicNotions.Examples₂
