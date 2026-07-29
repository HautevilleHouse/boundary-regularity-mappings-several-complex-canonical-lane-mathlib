import HautevilleHouse.BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
