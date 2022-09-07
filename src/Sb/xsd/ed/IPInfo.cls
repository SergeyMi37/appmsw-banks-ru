/// Indirect Participant Info.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.IPInfo Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "IPInfo";

Parameter XMLSEQUENCE = 0;

/// List of Indirect Participant BIC’s for Direct Participant.
Property BICList As Sb.xsd.ed.IPListType(XMLNAME = "BICList");

/// Primary account of LP.
Property DirectParticipant As Sb.xsd.ed.MainPoolParticipant(XMLNAME = "DirectParticipant");

/// Перечень SWIFT BIC, соответсвующих Участнику
Relationship SWBICS As Sb.xsd.ed.SWBICList(XMLNAME = "SWBICS", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = IPInfo ];

/// Информация о счетах участника перевода денежных средств.
Relationship Accounts As Sb.xsd.ed.AccountsType(XMLNAME = "Accounts", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = IPInfo1 ];

Storage Default
{
<Data name="IPInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BICList</Value>
</Value>
<Value name="3">
<Value>DirectParticipant</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.IPInfoD</DataLocation>
<DefaultData>IPInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.IPInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.IPInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.IPInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

