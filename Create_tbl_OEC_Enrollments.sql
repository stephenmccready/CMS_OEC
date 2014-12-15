Create Table tbl_OEC_Enrollments
(
	  ConfirmationNumber	VarChar(20) Null	-- The confirmation associated to the application.
	, SubmitDate			VarChar(8) Null		-- The submission date of the application.
	, ContractID			VarChar(5) Null		-- The Contract ID of the plan the applicant is applying
	, PlanID				VarChar(3) Null		-- The Plan ID of the plan the applicant is applying
	, SegmentID				VarChar(3) Null		-- The Segment ID of the plan the applicant is applying (when this does not apply 000 will still be passed).
	, ApplicantTitle		VarChar(16) Null	-- The title of the applicant.
	, ApplicantFirstName	VarChar(32) Null	-- The first name of the applicant.
	, ApplicantMiddleInitial	VarChar(1) Null	-- The middle initial of the applicant.
	, ApplicantLastName		VarChar(32) Null	-- The last name of the applicant.
	, ApplicantBirthDate	VarChar(8) Null		-- The birth date of the applicant.
	, ApplicantGender		VarChar(1) Null		-- The gender of the applicant.
	, ApplicantAddress1		VarChar(64) Null	-- Address of applicant
	, ApplicantAddress2		VarChar(64) Null	-- Address of applicant
	, ApplicantAddress3		VarChar(64) Null	-- Address of applicant
	, ApplicantCity			VarChar(32) Null	-- City of applicant
	, ApplicantCounty		VarChar(64) Null	-- County of applicant
	, ApplicantState		VarChar(2) Null		-- State of applicant
	, ApplicantZip			VarChar(10) Null	-- Zip of applicant
	, ApplicantPhone		VarChar(32) Null	-- Phone number of applicant
	, ApplicantEmailAddress	VarChar(128) Null	-- Email address of applicant
	, ApplicantHICN			VarChar(12) Null	-- HICN of applicant
	, ApplicantSSN			VarChar(12) Null	-- SSN of applicant for SNP DE
	, MailingAddress1		VarChar(64) Null	-- Mailing Address of applicant
	, MailingAddress2		VarChar(64) Null	-- Mailing Address of applicant
	, MailingAddress3		VarChar(64) Null	-- Mailing Address of applicant
	, MailingCity			VarChar(32) Null	-- Mailing City of applicant
	, MailingState			VarChar(2) Null		-- Mailing State of applicant
	, MailingZip			VarChar(10) Null	-- Mailing Zip Code of applicant
	, MedicarePartAEffDate	VarChar(8) Null		-- Effective Date of Medicare Part A
	, MedicarePartBEffDate	VarChar(8) Null		-- Effective Date of Medicare Part B
	, EmergencyContact		VarChar(64) Null	-- Name of emergency contact
	, EmergencyPhone		VarChar(32) Null	-- Phone of emergency contact
	, EmergencyRelationship	VarChar(32) Null	-- Relationship of emergency contact
	, PremiumDeducted		VarChar(1) Null		-- Answer if the applicant wants their plan premium deducted from monthly Social Security benefit
												-- check. Note, this value should always be the opposite of PremiumDirectPay below, i.e. YES
												-- to PremiumDeducted = NO to PremiumDirectPay.
	, PremiumSource			VarChar(64) Null	-- Starting 11/15/2006, this field will no longer include data as PremiumDircectPay now dictates
												-- beneficiary premium options
	, OtherCoverage			VarChar(1) Null		-- Answer if applicant has other coverage for MAPD, PDP, SNP DE, PFFS-PD, and CP-PD enrollments.
	, OtherCoverageName		VarChar(128) Null	-- Name of applicants other coverage for MAPD, PDP, SNP DE, PFFS-PD, and CP-PD Enrollments.
	, OtherCoverageID		VarChar(32) Null	-- ID # of applicants other coverage for MAPD, PDP, SNP DE, PFFSPD, and CP-PD Enrollments.
	, LongTerm				VarChar(1) Null		-- Answer to if applicant is a resident of a Longer Term Facility
	, LongTermName		 	VarChar(128) Null	-- Name of Long Term Institution
	, LongTermAddress		VarChar(128) Null	-- Street of Long Term Institution
	, LongTermPhone			VarChar(32) Null	-- Phone of Long Term Institution
	, AuthorizedRepName		VarChar(64) Null	-- Name of Authorized Representative
	, AuthorizedRepAddress	VarChar(128) Null	-- Address of Authorized Representative
	, AuthorizedRepCity		VarChar(32) Null	-- City of Authorized Representative
	, AuthorizedRepState	VarChar(2) Null		-- State of Authorized Representative
	, AuthorizedRepZip		VarChar(10) Null	-- Zip of Authorized Representative
	, AuthorizedRepPhone	VarChar(32) Null	-- Phone of Authorized Representative
	, AuthorizedRepRelationship	VarChar(32) Null	-- Relationship of Authorized Representative
	, [Language	]			VarChar(32) Null	-- Starting 11/15/2009, this field will no longer contain any data.
	, ESRD					VarChar(1) Null		-- Answer to End State Renal Disease (ESRD) For MAPD, MA, SNP DE, PFFS-PD, PFFS-MA, CP-PD, and CP-MA Enrollments
	, StateMedicaid			VarChar(1) Null		-- Answer to Enrolled in State Medicaid For MAPD, MA, SNP DE, PFFS-PD, PFFS-MA, CP-PD, and CP-MA Enrollments
	, WorkStatus			VarChar(1) Null		-- Answer to if enrollee or spouse works For MAPD, MA, SNP DE, PFFS-PD, PFFS-MA, and CP-MA Enrollments
	, PrimaryCarePhysician	VarChar(64) Null	-- Name of Primary Care Physician For MAPD, MA, SNP DE, PFFSPD, PFFS-MA, CP-PD, and CP-MA Enrollments
	, OtherCoverageGroup	VarChar(32) Null	-- Group information about the Other Coverage, if applicable.
	, AgentID				VarChar(32) Null	-- For enrollments from a sponsor’s enrollment portal only, the agent ID entered.
	, SubmitTime			VarChar(32) Null	-- Indicates full time stamp of enrollment in Central Standard Time
	, PartDSubAppInd		VarChar(1) Null		-- Indicates the LIS approval status of the user.
	, DeemedInd				VarChar(1) Null		-- Indicates whether the user is deemed as eligible for subsidy by CMS or not. If DeemedInd = Y
												-- then user is considered to be at Full subsidy with subsidy level of 100.
	, SubsidyPercentage		VarChar(3) Null		-- The subsidy level of the user. Only matters if the DeemedInd = N and PartDSubAppInd = Y
	, DeemedReasonCode		VarChar(2) Null		-- Indicates whether the user is full dual or full subsidy. Only look at this when DeemedInd = Y
	, LISCopayLevelID		VarChar(1) Null		-- Indicates whether the user is full subsidy or partial subsidy. Only look at this when DeemedInd = N
												-- and PartDSubAppInd = Y
	, DeemedCopayLevelID	VarChar(1) Null		-- Indicates the different co-pays that the user is required to pay based on his/her situation. Look at this
												-- element when DeemedInd = Y
	, PartDOptOutSwitch		VarChar(1) Null		-- Indicates whether the user opted out or in for the part D enrollment. If the value of this parameter is “Y”,
												-- then the beneficiary will not be auto-enrolled by the system.
	, SEPReasonCode			VarChar(512) Null	-- Comma separated list of codes from SEP Reason Code indicating why the beneficiary is
												-- enrolling outside of the standard enrollment period. If applicable, date for selected SEP is included
	, SEPCMSReasonCODE		VarChar(3) Null		-- Only used by CMS staff indicating why the beneficiary has been approved for Special Exceptions
												-- Enrollment. Entries in this field will be standardized with regards to content and characters. The list of
												-- acceptable data elements will be published separately.
	, PremiumDirectPay		VarChar(3) Null		-- Answer if the applicant wants to pay their premium using plan’s premium payment options. Note,
												-- this value should always be the opposite of PremiumDeducted above, i.e. YES to PremiumDeducted = NO to
												-- PremiumDirectPay.
	, EnrollmentPlanYear	VarChar(4) Null		-- Indicates Plan Year of the plan the applicant is applying.
	, ImportFilename		VarChar(255) Null	-- Name of the OEC file
	, ImportDate			VarChar(8) Null		-- Date the file was imported
)
