module

public import Mathlib.NumberTheory.NumberField.Completion.FinitePlace
import GroundTheory.GlobalFields.Adele.WeakApprox

@[expose] public section

namespace GroundTheory.Global

open IsDedekindDomain NumberField WithZeroMulInt WithZero Topology Filter

noncomputable section

namespace SemiLocal

variable {L : Type*} [Field L] [NumberField L]

theorem denseRange_algebraMap_pi {ι : Type*} [Finite ι] (w : ι → HeightOneSpectrum (𝓞 L))
    (hw : Function.Injective w) :
    DenseRange (fun x : L ↦ fun i ↦ algebraMap L ((w i).adicCompletion L) x) := by
  classical
  let := Fintype.ofFinite ι
  let S := Finset.univ.map ⟨w, hw⟩
  let indexEquiv : ι ≃ S := (Equiv.subtypeUnivEquiv Finset.mem_univ).symm.trans
    (Finset.univ.equivMap ⟨w, hw⟩)
  let reindex := (Homeomorph.piCongrLeft (Y := fun v : S ↦ v.1.adicCompletion L) indexEquiv).symm
  have h := denseRange_algebraMap_prod_pi S (∅ : Finset (InfinitePlace L))
  exact reindex.surjective.denseRange.comp (Prod.fst_surjective.denseRange.comp h continuous_fst)
    reindex.continuous

end SemiLocal

end

end GroundTheory.Global
