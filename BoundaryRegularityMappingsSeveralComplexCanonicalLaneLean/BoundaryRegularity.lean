import .HolomorphicMapping

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure BoundaryRegularityPackage {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    {N : ComplexManifoldPackage} {D : ComplexManifoldEvidence N}
    {CR_M : CRStructurePackage C} {CR_N : CRStructurePackage D}
    (H : HolomorphicMappingPackage CR_M CR_N) where
  smoothExtensionToBoundary : Prop
  feffermanTheoremApplied : Prop
  chernMoserInvariantsDefined : Prop
  boundaryRegularityClass : Nat
  maximalRegularityAttained : Prop

def BoundaryRegularityClosed {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    {N : ComplexManifoldPackage} {D : ComplexManifoldEvidence N}
    {CR_M : CRStructurePackage C} {CR_N : CRStructurePackage D}
    {H : HolomorphicMappingPackage CR_M CR_N}
    (B : BoundaryRegularityPackage H) : Prop :=
  B.smoothExtensionToBoundary ∧ B.feffermanTheoremApplied ∧
  B.chernMoserInvariantsDefined ∧ B.maximalRegularityAttained

structure BoundaryRegularityEvidence {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    {N : ComplexManifoldPackage} {D : ComplexManifoldEvidence N}
    {CR_M : CRStructurePackage C} {CR_N : CRStructurePackage D}
    {H : HolomorphicMappingPackage CR_M CR_N}
    (B : BoundaryRegularityPackage H) where
  smoothExtensionToBoundaryClosed : B.smoothExtensionToBoundary
  feffermanTheoremAppliedClosed : B.feffermanTheoremApplied
  chernMoserInvariantsDefinedClosed : B.chernMoserInvariantsDefined
  maximalRegularityAttainedClosed : B.maximalRegularityAttained

theorem boundary_regularity_closed_from_evidence {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    {N : ComplexManifoldPackage} {D : ComplexManifoldEvidence N}
    {CR_M : CRStructurePackage C} {CR_N : CRStructurePackage D}
    {H : HolomorphicMappingPackage CR_M CR_N}
    (B : BoundaryRegularityPackage H) (E : BoundaryRegularityEvidence B) :
    BoundaryRegularityClosed B := by
  exact And.intro E.smoothExtensionToBoundaryClosed
    (And.intro E.feffermanTheoremAppliedClosed
      (And.intro E.chernMoserInvariantsDefinedClosed E.maximalRegularityAttainedClosed))

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse