import BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.BoundaryRegularityPackage

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure MappingExtensionPackage (B : BoundaryRegularityObject) where
  extensionExists : Prop
  uniqueExtension : Prop
  regularityImprovement : Prop
  boundaryHolomorphicExtension : Prop

structure MappingExtensionEvidence {B : BoundaryRegularityObject} (M : MappingExtensionPackage B) where
  extensionExistsClosed : M.extensionExists
  uniqueExtensionClosed : M.uniqueExtension
  regularityImprovementClosed : M.regularityImprovement
  boundaryHolomorphicExtensionClosed : M.boundaryHolomorphicExtension

def MappingExtensionClosed {B : BoundaryRegularityObject} (M : MappingExtensionPackage B) : Prop :=
  M.extensionExists ∧ M.uniqueExtension ∧ M.regularityImprovement ∧ M.boundaryHolomorphicExtension

theorem mapping_extension_closed_from_evidence {B : BoundaryRegularityObject} (M : MappingExtensionPackage B) (E : MappingExtensionEvidence M) :
    MappingExtensionClosed M := by
  exact And.intro E.extensionExistsClosed (And.intro E.uniqueExtensionClosed (And.intro E.regularityImprovementClosed E.boundaryHolomorphicExtensionClosed))

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse