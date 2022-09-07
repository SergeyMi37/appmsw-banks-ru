/// Список счетов для ПУР-получателя.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.PayeeAccInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.AccountNumberRUIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "PayeeAccInfo";

Parameter XMLSEQUENCE = 1;

/// Номер счета ПУР - получателя
Property PayeeAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "PayeeAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship PayeeInfo As Sb.xsd.ed.PayeeInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = PayeeAccInfo ];

Storage Default
{
<Data name="PayeeAccInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PayeeAcc</Value>
</Value>
<Value name="3">
<Value>PayeeInfo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.PayeeAccInfoD</DataLocation>
<DefaultData>PayeeAccInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.PayeeAccInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.PayeeAccInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.PayeeAccInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

