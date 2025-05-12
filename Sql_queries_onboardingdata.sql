
select * from onboardingdata;

SELECT
  COUNT(*) AS total_signups,
  COUNT(kyc_submitted) AS kyc_submitted,
  COUNT(kyc_approved) AS kyc_approved,
  COUNT(account_activated) AS account_activated
FROM onboardingdata;

SELECT
  AVG(DATEDIFF(kyc_submitted, signup_date)) AS avg_days_to_submit_kyc,
  AVG(DATEDIFF(kyc_approved, kyc_submitted)) AS avg_days_to_approve,
  AVG(DATEDIFF(account_activated, kyc_approved)) AS avg_days_to_activate
FROM onboardingdata
WHERE account_activated IS NOT NULL;
