/// Bilateral gross balances between accounts which belongs to the one balance sheet.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BilateralBalanceType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.NotNegativeKopeckAmountType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BilateralBalanceType";

Parameter XMLSEQUENCE = 1;

/// Participant BIC.
Property BICA As Sb.xsd.lt.BICRUIDType(XMLNAME = "BICA", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participants's Account.
Property AccA As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "AccA", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participant BIC.
Property BICB As Sb.xsd.lt.BICRUIDType(XMLNAME = "BICB", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participants's Account.
Property AccB As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "AccB", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Debt Turns
Property DebitTurnOver As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "DebitTurnOver", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="BilateralBalanceTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BICA</Value>
</Value>
<Value name="3">
<Value>AccA</Value>
</Value>
<Value name="4">
<Value>BICB</Value>
</Value>
<Value name="5">
<Value>AccB</Value>
</Value>
<Value name="6">
<Value>DebitTurnOver</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.BilateralBalFA9D</DataLocation>
<DefaultData>BilateralBalanceTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BilateralBalFA9D</IdLocation>
<IndexLocation>^Sb.xsd.ed.BilateralBalFA9I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BilateralBalFA9S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

