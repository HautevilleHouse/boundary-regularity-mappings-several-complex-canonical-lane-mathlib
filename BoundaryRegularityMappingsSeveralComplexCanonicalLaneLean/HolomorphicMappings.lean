import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure ComplexStructure (M : Type u) where
  atlas : List (OpenCover M)
  holomorphicCharts : Prop

structure BoundaryCondition (b : Set M) where
  smooth : Prop
  leviPseudoconvex : Prop

structure OpenCover (M : Type u) where
  sets : List (Set M)
  covering : Prop
  openSets : Prop

structure HolomorphicMappingOnInterior (f : M → N) (D : Set M) where
  holomorphicAtEachPoint : ∀ x ∈ D, ∃ chart, f is holomorphic at x

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse