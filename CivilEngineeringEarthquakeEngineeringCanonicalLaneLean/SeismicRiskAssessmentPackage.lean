import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SeismicRiskAssessmentPackage where
  hazardMap : Type u
  vulnerabilityCurve : Type v
  annualizedLoss : Prop
  riskCategory : Prop
  insurancePremium : Prop

structure SeismicRiskAssessmentEvidence (R : SeismicRiskAssessmentPackage) where
  annualizedLossClosed : R.annualizedLoss
  riskCategoryClosed : R.riskCategory
  insurancePremiumClosed : R.insurancePremium

def SeismicRiskAssessmentClosed (R : SeismicRiskAssessmentPackage) : Prop :=
  R.annualizedLoss ∧ R.riskCategory ∧ R.insurancePremium

theorem seismic_risk_assessment_closed_from_evidence
    (R : SeismicRiskAssessmentPackage) (E : SeismicRiskAssessmentEvidence R) :
    SeismicRiskAssessmentClosed R := by
  exact And.intro E.annualizedLossClosed
    (And.intro E.riskCategoryClosed E.insurancePremiumClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse