/// Список счетов
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AccModifList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.OneDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AccModifList";

Parameter XMLSEQUENCE = 1;

/// Лицевой счет
Property Acc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Acc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Признак операции со счетом
Property AccOperationType As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "AccOperationType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship CustomerAccInfo As Sb.xsd.ed.CustomerAccInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AccModifList ];

Storage Default
{
<Data name="AccModifListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Acc</Value>
</Value>
<Value name="3">
<Value>AccOperationType</Value>
</Value>
<Value name="4">
<Value>CustomerAccInfo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AccModifListD</DataLocation>
<DefaultData>AccModifListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AccModifListD</IdLocation>
<IndexLocation>^Sb.xsd.ed.AccModifListI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AccModifListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

