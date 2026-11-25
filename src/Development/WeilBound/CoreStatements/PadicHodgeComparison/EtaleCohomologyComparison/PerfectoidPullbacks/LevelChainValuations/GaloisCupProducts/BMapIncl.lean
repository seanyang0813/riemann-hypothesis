module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.NmK
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.ReductionChangeLevel
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.ChainOf
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CrSEqOne

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section



open CategoryTheory AlgebraicGeometry Limits GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb.Kap

namespace LevelChangeComparison

end LevelChangeComparison

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

section
variable (S : LevSys (per l K)) (hS : S.Good) (m : ℕ) (M : Model l K)

def nmLevA : NMor (S.L (m + 1)).γ M.p (κA (OK l K) (S.L (m + 1)).I) (S.L m).γ M.p (κA (OK l K) (S.L m).I) (S.dA m) :=
  nmK (S.L (m + 1)).γ (S.L m).γ M.p M.p (S.dA m) (hS.ddp m) (hS.dO m) (𝟙 M.X) (Category.id_comp _)

def nmLevB : NMor (S.L (m + 1)).γB M.q (κA K (S.L (m + 1)).IB) (S.L m).γB M.q (κA K (S.L m).IB) (S.dB m) :=
  nmK (S.L (m + 1)).γB (S.L m).γB M.q M.q (S.dB m) (hS.ddpB m) (hS.dK m) (𝟙 M.gen) (Category.id_comp _)

namespace LevelChangeComparison

end LevelChangeComparison

end

theorem bMap_incl {m : ℕ} {L : Lev (per l K) m} (hL : L.Good) (M : Model l K) {s s' : ℕ} (h : s ≤ s')
    (hQ : ∀ T, QB L M s T → QA L M s (((nmB M hL).mor 0).obj T))
    (hQ' : ∀ T, QB L M s' T → QA L M s' (((nmB M hL).mor 0).obj T)) (j : ℕ) (z : HO (QA L M s') j) :
    (incl (ts_le L.γB M.q 1 h {⊤})).o.pull j (bMap M s' hL hQ' j z) =
      bMap M s hL hQ j ((incl (ts_le L.γ M.p l h {⊤})).o.pull j z) := by
  have e₁ := CrystallineSemistableComparison.pull_pull L.ι (smB M s' hL hQ').o (incl (ts_le L.γB M.q 1 h {⊤})).o j z
  have e₂ := CrystallineSemistableComparison.pull_pull L.ι (incl (ts_le L.γ M.p l h {⊤})).o (smB M s hL hQ).o j z
  exact e₁.trans (Eq.trans rfl e₂.symm)

end CrystallineSemistableComparison.Pb.Kap
