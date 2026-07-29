import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure RetrofittingPackage where
  existingStructure : Type u
  retrofitScheme : Type v
  capacityDemandRatioImprovement : Prop
  ductilityEnhancement : Prop
  connectionUpgrade : Prop

structure RetrofittingEvidence (R : RetrofittingPackage) where
  capacityDemandRatioImprovementClosed : R.capacityDemandRatioImprovement
  ductilityEnhancementClosed : R.ductilityEnhancement
  connectionUpgradeClosed : R.connectionUpgrade

def RetrofittingClosed (R : RetrofittingPackage) : Prop :=
  R.capacityDemandRatioImprovement ∧ R.ductilityEnhancement ∧ R.connectionUpgrade

theorem retrofitting_closed_from_evidence (R : RetrofittingPackage)
    (E : RetrofittingEvidence R) : RetrofittingClosed R := by
  exact And.intro E.capacityDemandRatioImprovementClosed
    (And.intro E.ductilityEnhancementClosed E.connectionUpgradeClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse