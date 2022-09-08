/// Value and Usage of Limit.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.LimitInfoType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.ClearingCircuitType, Sb.xsd.lt.EDDrawerIDType, Sb.xsd.lt.KopeckAmountType, Sb.xsd.lt.LimitType, Sb.xsd.lt.NotNegativeKopeckAmountType, Sb.xsd.lt.TwoDigitIdentifierType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "LimitInfoType";

Parameter XMLSEQUENCE = 1;

/// Limit Type.
Property LimitType As Sb.xsd.lt.LimitType(XMLNAME = "LimitType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Limit Value.
Property Value As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "Value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Payer BIC.
Property PayerBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "PayerBIC", XMLPROJECTION = "ATTRIBUTE");

/// Идентификатор договора.
Property AggrementID As Sb.xsd.lt.TwoDigitIdentifierType(XMLNAME = "AggrementID", XMLPROJECTION = "ATTRIBUTE");

/// Limit Utilization.
Property Utilization As Sb.xsd.lt.KopeckAmountType(XMLNAME = "Utilization", XMLPROJECTION = "ATTRIBUTE");

/// National BIC.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE");

/// SP’s Account.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE");

/// UID.
Property UID As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "UID", XMLPROJECTION = "ATTRIBUTE");

/// Clearing scheme.
Property ClearingCircuit As Sb.xsd.lt.ClearingCircuitType(XMLNAME = "ClearingCircuit", XMLPROJECTION = "ATTRIBUTE");

Relationship AccountsInfoType1 As Sb.xsd.ed.AccountsInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = LimitsInfo ];

Relationship ParticipantProfileInfoType2 As Sb.xsd.ed.ParticipantProfileInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = LimitsInfo ];

Storage Default
{
<Data name="LimitInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>LimitType</Value>
</Value>
<Value name="3">
<Value>Value</Value>
</Value>
<Value name="4">
<Value>PayerBIC</Value>
</Value>
<Value name="5">
<Value>AggrementID</Value>
</Value>
<Value name="6">
<Value>Utilization</Value>
</Value>
<Value name="7">
<Value>BIC</Value>
</Value>
<Value name="8">
<Value>Account</Value>
</Value>
<Value name="9">
<Value>UID</Value>
</Value>
<Value name="10">
<Value>ClearingCircuit</Value>
</Value>
<Value name="11">
<Value>AccountsInfoType1</Value>
</Value>
<Value name="12">
<Value>ParticipantProfileInfoType2</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.LimitInfoTypeD</DataLocation>
<DefaultData>LimitInfoTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.LimitInfoTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.LimitInfoTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.LimitInfoTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

