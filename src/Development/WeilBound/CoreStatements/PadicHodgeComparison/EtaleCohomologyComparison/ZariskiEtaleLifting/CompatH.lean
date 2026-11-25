module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.SchFnPtTw

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.B

variable (l : ℕ) [Fact l.Prime]

structure CompatH : Prop where
  cup : ∀ {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (k : Bool) {m n : ℕ} (h : n ≤ m) {i j s : ℕ} (e : i + j = s)
    (x : Hc F κ k m i) (y : Hc F κ k m j), redHc F κ k h s ((CH.mulP (OcA F κ k m)).cup e x y) =
      (CH.mulP (OcA F κ k n)).cup e (redHc F κ k h i x) (redHc F κ k h j y)
  one : ∀ {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (k : Bool) {m n : ℕ} (h : n ≤ m),
    redHc F κ k h 0 (CH.oneH (OcA F κ k m)) = CH.oneH (OcA F κ k n)

end CrystallineSemistableComparison.B
