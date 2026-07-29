import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure StructuralDynamicsPackage where
  modalAnalysis : Type u
  timeHistoryAnalysis : Type v
  naturalFrequencies : Prop
  dampingRatios : Prop
  modeShapes : Prop

structure StructuralDynamicsEvidence (D : StructuralDynamicsPackage) where
  naturalFrequenciesClosed : D.naturalFrequencies
  dampingRatiosClosed : D.dampingRatios
  modeShapesClosed : D.modeShapes

def StructuralDynamicsClosed (D : StructuralDynamicsPackage) : Prop :=
  D.naturalFrequencies ∧ D.dampingRatios ∧ D.modeShapes

theorem structural_dynamics_closed_from_evidence
    (D : StructuralDynamicsPackage) (E : StructuralDynamicsEvidence D) :
    StructuralDynamicsClosed D := by
  exact And.intro E.naturalFrequenciesClosed
    (And.intro E.dampingRatiosClosed E.modeShapesClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse