module

public import GroundTheory.HeightsAndTheta.Heights.HeightComparison.HeightObjects
public import GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.Objects

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial ReciprocityTheory.ChartRestriction.G
open scoped ContDiff

noncomputable section

variable {ι : Type} [Fintype ι] [DecidableEq ι] {n : ι → ℕ}

def HermLine.ofGeo (N : Geo.HermLine (blockIdx n)) (hN : Geo.IsSmoothHerm N) : Heights.HermLine n where
  deg := N.a
  metric z := N.h (flatCone z)
  metric_pos z hz := N.pos _ ((blockNonzero_unflatCone_iff _).mp hz)
  metric_smul c z hc _ := N.smul c (flatCone z) hc
  metric_smooth := by
    have hu : ContDiff ℝ ∞ (fun z : Cone n ℂ ↦ flatCone z) :=
      contDiff_pi.2 fun p ↦ ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin (n p.1 + 1) ↦ ℂ) p.2).comp
        (ContinuousLinearMap.proj (R := ℝ) (φ := fun k ↦ Fin (n k + 1) → ℂ) p.1)).contDiff
    exact hN.comp hu.contDiffOn fun z hz ↦ (blockNonzero_unflatCone_iff _).mp hz

theorem HermLine.toGeo_ofGeo_h (N : Geo.HermLine (blockIdx n)) (hN : Geo.IsSmoothHerm N)
    {w : Coord n → ℂ} (hw : BlockNonzero (unflatCone w)) : (HermLine.ofGeo N hN).toGeo.h w = N.h w :=
  HermLine.toGeo_h_of_blockNonzero _ hw

namespace ArithVariety

variable (P : ArithVariety n)

end ArithVariety

namespace AddBlockData

variable {P : ArithVariety n} (D : AddBlockData P)

end AddBlockData

section Examples

variable (n)










end Examples

end

end GroundTheory.Heights₂.Heights
