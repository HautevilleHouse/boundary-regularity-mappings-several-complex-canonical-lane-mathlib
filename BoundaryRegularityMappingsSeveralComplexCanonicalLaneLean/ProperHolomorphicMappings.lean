import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.HolomorphicMappings

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure ProperHolomorphicMapping (D E : ComplexDomainWithBoundary) (f : HolomorphicMapping D E) where
  proper : ∀ K ∈ compactSets E.carrier, f.map⁻¹' K ∈ compactSets D.carrier
  boundaryExtension : Prop
  boundaryExtensionSmooth : Prop

structure ProperHolomorphicMappingEvidence (P : ProperHolomorphicMapping D E f) where
  properClosed : P.proper
  boundaryExtensionClosed : P.boundaryExtension
  boundaryExtensionSmoothClosed : P.boundaryExtensionSmooth

def ProperHolomorphicMappingClosed (P : ProperHolomorphicMapping D E f) : Prop :=
  P.proper ∧ P.boundaryExtension ∧ P.boundaryExtensionSmooth

theorem proper_holomorphic_mapping_closed_from_evidence
  (P : ProperHolomorphicMapping D E f) (E : ProperHolomorphicMappingEvidence P) :
  ProperHolomorphicMappingClosed P := by
  exact And.intro E.properClosed
    (And.intro E.boundaryExtensionClosed E.boundaryExtensionSmoothClosed)

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse