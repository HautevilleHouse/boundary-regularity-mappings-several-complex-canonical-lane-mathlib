import BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure BoundaryRegularityObject where
  domain : Type u
  boundary : Type v
  mapping : boundary → ℂ
  smoothBoundary : Prop
  holomorphicExtension : Prop
  boundaryRegular : Prop

structure BoundaryRegularityEvidence (B : BoundaryRegularityObject) where
  smoothBoundaryClosed : B.smoothBoundary
  holomorphicExtensionClosed : B.holomorphicExtension
  boundaryRegularClosed : B.boundaryRegular

def BoundaryRegularityClosed (B : BoundaryRegularityObject) : Prop :=
  B.smoothBoundary ∧ B.holomorphicExtension ∧ B.boundaryRegular

theorem boundary_regularity_closed_from_evidence (B : BoundaryRegularityObject) (E : BoundaryRegularityEvidence B) :
    BoundaryRegularityClosed B := by
  exact And.intro E.smoothBoundaryClosed (And.intro E.holomorphicExtensionClosed E.boundaryRegularClosed)

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse