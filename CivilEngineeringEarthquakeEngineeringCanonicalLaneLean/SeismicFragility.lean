import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SeismicFragilityPackage where
  demandDistribution : Prop
  capacityModel : Prop
  limitStateDefinition : Prop
  fragilityCurve : Prop

structure SeismicFragilityEvidence (S : SeismicFragilityPackage) where
  demandDistributionClosed : S.demandDistribution
  capacityModelClosed : S.capacityModel
  limitStateDefinitionClosed : S.limitStateDefinition
  fragilityCurveClosed : S.fragilityCurve

def SeismicFragilityClosed (S : SeismicFragilityPackage) : Prop :=
  S.demandDistribution ∧ S.capacityModel ∧ S.limitStateDefinition ∧ S.fragilityCurve

theorem seismic_fragility_closed_from_evidence (S : SeismicFragilityPackage) (E : SeismicFragilityEvidence S) :
    SeismicFragilityClosed S := by
  exact And.intro E.demandDistributionClosed (And.intro E.capacityModelClosed (And.intro E.limitStateDefinitionClosed E.fragilityCurveClosed))

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
