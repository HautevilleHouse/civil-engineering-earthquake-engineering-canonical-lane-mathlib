import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SoilStructureInteractionPackage where
  soilConstitutiveModel : Prop
  foundationImpedance : Prop
  kinematicInteraction : Prop
  inertialInteraction : Prop

structure SoilStructureInteractionEvidence (S : SoilStructureInteractionPackage) where
  soilConstitutiveModelClosed : S.soilConstitutiveModel
  foundationImpedanceClosed : S.foundationImpedance
  kinematicInteractionClosed : S.kinematicInteraction
  inertialInteractionClosed : S.inertialInteraction

def SoilStructureInteractionClosed (S : SoilStructureInteractionPackage) : Prop :=
  S.soilConstitutiveModel ∧ S.foundationImpedance ∧ S.kinematicInteraction ∧ S.inertialInteraction

theorem soil_structure_interaction_closed_from_evidence (S : SoilStructureInteractionPackage) (E : SoilStructureInteractionEvidence S) :
    SoilStructureInteractionClosed S := by
  exact And.intro E.soilConstitutiveModelClosed (And.intro E.foundationImpedanceClosed (And.intro E.kinematicInteractionClosed E.inertialInteractionClosed))

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
