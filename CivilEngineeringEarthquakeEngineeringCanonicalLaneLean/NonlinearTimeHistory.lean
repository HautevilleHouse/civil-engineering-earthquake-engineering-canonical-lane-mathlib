import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure NonlinearTimeHistoryPackage where
  inelasticMaterialModel : Prop
  hysteresisRule : Prop
  numericalIntegration : Prop
  convergenceCriterion : Prop

structure NonlinearTimeHistoryEvidence (N : NonlinearTimeHistoryPackage) where
  inelasticMaterialModelClosed : N.inelasticMaterialModel
  hysteresisRuleClosed : N.hysteresisRule
  numericalIntegrationClosed : N.numericalIntegration
  convergenceCriterionClosed : N.convergenceCriterion

def NonlinearTimeHistoryClosed (N : NonlinearTimeHistoryPackage) : Prop :=
  N.inelasticMaterialModel ∧ N.hysteresisRule ∧ N.numericalIntegration ∧ N.convergenceCriterion

theorem nonlinear_time_history_closed_from_evidence (N : NonlinearTimeHistoryPackage) (E : NonlinearTimeHistoryEvidence N) :
    NonlinearTimeHistoryClosed N := by
  exact And.intro E.inelasticMaterialModelClosed (And.intro E.hysteresisRuleClosed (And.intro E.numericalIntegrationClosed E.convergenceCriterionClosed))

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
