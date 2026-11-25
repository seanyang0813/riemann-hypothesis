module

public import Formalism.HermitianCurvature.StatementJF
public import Formalism.FormalDegreeBessel.FinalBF
public import Formalism.FormalDegreeBessel.FinalG
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellHermitian
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellInversePair
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase

@[expose] public section

open Matrix MeasureTheory Filter

noncomputable section

namespace Formalism.FourierDecayAlt.P.BigCellZetaMinors

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

variable {k r : ℕ}

theorem one_uw (z : Fin (2 * r + k + 1) → ℂ) : (1 : Mat k r) ∈ UWset k r z := by
  refine ⟨?_, fun a => by simp, by simp⟩
  simp [UH]

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]

theorem dmin_sgs (D : RealPlaceData k r Wp Wq) {p : SS k r} (hp : D.inSS p) (g : Mat k r) (l : Fin (r + 2)) :
    Dmin k r D.z D.z' (sgs p g) l = Dmin k r D.z D.z' g l := by
  obtain ⟨h1, h2, h3, h4⟩ := hp
  have hs : (Matrix.of p.1.2 * Matrix.of p.1.1 : Mat k r)⁻¹ ∈ Sset k r D.z := by
    rw [Matrix.mul_inv_rev]
    exact ⟨_, BigCellInversePair.uw_inv h1, _, WeylGroupFacts.mem_n_inv h2, rfl⟩
  have hs' : (Matrix.of p.2.2 * Matrix.of p.2.1 : Mat k r) ∈ Sset k r D.z' :=
    (sGroup k r D.z' D.z'_mem).2.1 _ ⟨1, one_uw _, _, h4, (Matrix.one_mul _).symm⟩ _
      ⟨_, h3, 1, WeylGroupFacts.mem_n_one, (Matrix.mul_one _).symm⟩
  rw [B5.sgs_eq]
  exact dInv k r D.z D.z' D.z_mem D.z'_mem _ hs _ hs' g l

theorem cmin_gq (D : RealPlaceData k r Wp Wq) {q : (Fin r → ℂ) × ℂ} (hq : q ∈ QDom k r D.z D.z') (a : Fin r) :
    cmin k r D.z D.z' (gq D q) a = q.1 a :=
  (bigCellMinors k r D.z D.z' q.1 (D.μsec q.2) D.z_mem D.z'_mem).2.1 hq.1 a

theorem zeta_gq (D : RealPlaceData k r Wp Wq) {q : (Fin r → ℂ) × ℂ} (hq : q ∈ QDom k r D.z D.z') :
    zeta k r D.z D.z' (gq D q) = q.2 := by
  have hz := (bigCellMinors k r D.z D.z' q.1 (D.μsec q.2) D.z_mem D.z'_mem).2.2 hq.1
  rw [BigCellHermitian.herm_bigCell _ _ D.z_mem D.z'_mem, (D.sec.2 q.2 hq.2).2] at hz
  exact hz

end Formalism.FourierDecayAlt.P.BigCellZetaMinors

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

end Formalism.FourierDecayAlt.P
