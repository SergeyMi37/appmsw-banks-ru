/// Список балансовых счетов
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AccBrfModifList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDBrfType, Sb.xsd.lt.OneDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AccBrfModifList";

Parameter XMLSEQUENCE = 1;

/// Балансовый счет
Property AccBrf As Sb.xsd.lt.AccountNumberRUIDBrfType(XMLNAME = "AccBrf", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Признак операции со счетом
Property AccOperationType As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "AccOperationType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship CustomerAccInfo1 As Sb.xsd.ed.CustomerAccInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AccBrfModifList ];

Storage Default
{
<Data name="AccBrfModifListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AccBrf</Value>
</Value>
<Value name="3">
<Value>AccOperationType</Value>
</Value>
<Value name="4">
<Value>CustomerAccInfo1</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AccBrfModifListD</DataLocation>
<DefaultData>AccBrfModifListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AccBrfModifListD</IdLocation>
<IndexLocation>^Sb.xsd.ed.AccBrfModifListI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AccBrfModifListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

