import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure ComplexManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Type v
  boundary : Set manifold
  smoothBoundary : manifold → Prop
  complexSmooth : Prop
  boundarySmooth : Prop
  holomorphicCoordinateCharts : Prop

structure ComplexManifoldEvidence (G : ComplexManifoldPackage) where
  complexSmoothClosed : G.complexSmooth
  boundarySmoothClosed : G.boundarySmooth
  holomorphicCoordinateChartsClosed : G.holomorphicCoordinateCharts

def ComplexManifoldClosed (G : ComplexManifoldPackage) : Prop :=
  G.complexSmooth ∧ G.boundarySmooth ∧ G.holomorphicCoordinateCharts

theorem complex_manifold_closed_from_evidence
    (G : ComplexManifoldPackage) (E : ComplexManifoldEvidence G) :
    ComplexManifoldClosed G := by
  exact And.intro E.complexSmoothClosed
    (And.intro E.boundarySmoothClosed E.holomorphicCoordinateChartsClosed)

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse