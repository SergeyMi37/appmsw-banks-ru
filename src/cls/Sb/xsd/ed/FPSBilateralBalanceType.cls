/// Bilateral gross balances between accounts which belongs to the one balance sheet.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.FPSBilateralBalanceType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.EDQuantityType, Sb.xsd.lt.NotNegativeKopeckAmountType, Sb.xsd.lt.RecordIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "FPSBilateralBalanceType";

Parameter XMLSEQUENCE = 1;

/// Record Identifier.
Property RecordID As Sb.xsd.lt.RecordIDType(XMLNAME = "RecordID", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participant BIC.
Property BICA As Sb.xsd.lt.BICRUIDType(XMLNAME = "BICA", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participants's Account.
Property AccountA As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "AccountA", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participant BIC.
Property BICB As Sb.xsd.lt.BICRUIDType(XMLNAME = "BICB", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participants's Account.
Property AccountB As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "AccountB", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Debt Turns
Property DebitTurnOver As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "DebitTurnOver", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Debt Turns
Property OperationQuantity As Sb.xsd.lt.EDQuantityType(XMLNAME = "OperationQuantity", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="FPSBilateralBalanceTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>RecordID</Value>
</Value>
<Value name="3">
<Value>BICA</Value>
</Value>
<Value name="4">
<Value>AccountA</Value>
</Value>
<Value name="5">
<Value>BICB</Value>
</Value>
<Value name="6">
<Value>AccountB</Value>
</Value>
<Value name="7">
<Value>DebitTurnOver</Value>
</Value>
<Value name="8">
<Value>OperationQuantity</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.FPSBilateraE90CD</DataLocation>
<DefaultData>FPSBilateralBalanceTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.FPSBilateraE90CD</IdLocation>
<IndexLocation>^Sb.xsd.ed.FPSBilateraE90CI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.FPSBilateraE90CS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

