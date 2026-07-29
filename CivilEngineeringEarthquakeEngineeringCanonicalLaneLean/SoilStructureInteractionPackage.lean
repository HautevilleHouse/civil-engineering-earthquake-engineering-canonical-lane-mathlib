import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SoilStructureInteractionPackage where
  soilProfile : Type u
  foundationImpedance : Type v
  kinematicInteraction : Prop
  inertialInteraction : Prop
  soilNonlinearity : Prop

structure SoilStructureInteractionEvidence (S : SoilStructureInteractionPackage) where
  kinematicInteractionClosed : S.kinematicInteraction
  inertialInteractionClosed : S.inertialInteraction
  soilNonlinearityClosed : S.soilNonlinearity

def SoilStructureInteractionClosed (S : SoilStructureInteractionPackage) : Prop :=
  S.kinematicInteraction ∧ S.inertialInteraction ∧ S.soilNonlinearity

theorem soil_structure_interaction_closed_from_evidence
    (S : SoilStructureInteractionPackage) (E : SoilStructureInteractionEvidence S) :
    SoilStructureInteractionClosed S := by
  exact And.intro E.kinematicInteractionClosed
    (And.intro E.inertialInteractionClosed E.soilNonlinearityClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse