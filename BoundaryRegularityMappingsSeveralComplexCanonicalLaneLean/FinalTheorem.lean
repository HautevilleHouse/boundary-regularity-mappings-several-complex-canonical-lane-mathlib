import HautevilleHouse.BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

def ConstrainedBoundaryRegularityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_regularity_endgame (A : AdmissibleClass) :
    ConstrainedBoundaryRegularityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
