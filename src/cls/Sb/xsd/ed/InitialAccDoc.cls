/// Реквизиты исходного документа.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.InitialAccDoc Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountDocIDType, Sb.xsd.lt.DateType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "InitialAccDoc";

Parameter XMLSEQUENCE = 1;

/// Номер документа.
Property AccDocNo As Sb.xsd.lt.AccountDocIDType(XMLNAME = "AccDocNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата выписки документа.
Property AccDocDate As Sb.xsd.lt.DateType(XMLNAME = "AccDocDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="InitialAccDocDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AccDocNo</Value>
</Value>
<Value name="3">
<Value>AccDocDate</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.InitialAccDocD</DataLocation>
<DefaultData>InitialAccDocDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.InitialAccDocD</IdLocation>
<IndexLocation>^Sb.xsd.ed.InitialAccDocI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.InitialAccDocS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

