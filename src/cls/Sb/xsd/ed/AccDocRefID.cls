/// Settlement Document Attributes.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AccDocRefID Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountDocIDType, Sb.xsd.lt.DateType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AccDocRefID";

Parameter XMLSEQUENCE = 1;

/// Initial Paper Document Number.
Property AccDocNo As Sb.xsd.lt.AccountDocIDType(XMLNAME = "AccDocNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Initial Paper Document Issue Date.
Property AccDocDate As Sb.xsd.lt.DateType(XMLNAME = "AccDocDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="AccDocRefIDDefaultData">
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
<DataLocation>^Sb.xsd.ed.AccDocRefIDD</DataLocation>
<DefaultData>AccDocRefIDDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AccDocRefIDD</IdLocation>
<IndexLocation>^Sb.xsd.ed.AccDocRefIDI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AccDocRefIDS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

