/// Primary account of LP.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.MainPoolParticipant Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "MainPoolParticipant";

Parameter XMLSEQUENCE = 1;

/// БИК главного участника.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Номер главного счета.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="MainPoolParticipantDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>Account</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.MainPoolParticipantD</DataLocation>
<DefaultData>MainPoolParticipantDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.MainPoolParticipantD</IdLocation>
<IndexLocation>^Sb.xsd.ed.MainPoolParticipantI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.MainPoolParticipantS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

