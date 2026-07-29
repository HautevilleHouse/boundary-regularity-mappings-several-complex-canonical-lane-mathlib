import HautevilleHouse.BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

private def sourceRepository : String :=
  "BoundaryRegularityMappingsSeveralComplexCanonicalLane"

private def sourceDescription : String :=
  "C^k boundary regularity of holomorphic mappings in several complex variables"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := "Boundary Regularity of Mappings in Several Complex Variables",
  theoremObject := sourceDescription,
  classicalBoundary := "Smooth extension of holomorphic mappings to the boundary",
  manifoldConstrainedStatement := "Theorem certificate internalized through admissible class closure",
  certificateLane := "boundary_regularity_constrained",
  carriedRemainder := "Classical boundary carried by endpoint satisfaction or remainder record"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "boundary_regularity_constrained" := by
  rfl

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse