Create Table tbl_SEP_Reason	-- SEP = Special Election Period 
(
	  ID			SmallInt IDENTITY(1,1) NOT NULL
	, SEPReasonText	VarChar(1024) NOT NULL
	, SEPReasonCode	VarChar(3) NOT NULL
	, Active		Bit NOT NULL
)
