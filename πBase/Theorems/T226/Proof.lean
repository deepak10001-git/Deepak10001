import πBase.Properties.P2.Def
import πBase.Properties.P99.Def

open Filter Topology

theorem T226 : P99 ≤ P2 := fun X _ ⟨p99⟩ ↦ ((t1Space_TFAE X).out 1 0 :).mp
  fun y ↦ isClosed_of_closure_subset fun x xincly ↦ Set.mem_singleton_iff.mp <|
  p99 x y (fun _ ↦ y) (fun U Unhd ↦ mem_map.mpr <| mem_atTop_sets.mpr
  ⟨0, fun _ _ ↦ Set.mem_preimage.mpr <| Set.inter_singleton_nonempty.mp <|
  mem_closure_iff_nhds.mp xincly U Unhd⟩) tendsto_const_nhds
