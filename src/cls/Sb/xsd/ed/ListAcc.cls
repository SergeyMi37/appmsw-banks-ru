/// Список счетов.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ListAcc Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.AccountNumberRUIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ListAcc";

Parameter XMLSEQUENCE = 1;

/// Лицевой счет АУР - клиента, не являющегося КО
Property Acc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Acc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship RTGSCustomerInfo1 As Sb.xsd.ed.RTGSCustomerInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ListAcc ];

Storage Default
{
<Data name="ListAccDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Acc</Value>
</Value>
<Value name="3">
<Value>RTGSCustomerInfo1</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ListAccD</DataLocation>
<DefaultData>ListAccDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ListAccD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ListAccI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ListAccS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

