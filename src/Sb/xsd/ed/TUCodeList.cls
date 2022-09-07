/// ТУ, начавшие день в БЭСП
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.TUCodeList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.TUCodeIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "TUCodeList";

Parameter XMLSEQUENCE = 1;

/// Код ТУ
Property TUCode As list Of Sb.xsd.lt.TUCodeIDType(XMLNAME = "TUCode", XMLPROJECTION = "ELEMENT") [ Required ];

Storage Default
{
<Data name="TUCodeListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TUCode</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.TUCodeListD</DataLocation>
<DefaultData>TUCodeListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.TUCodeListD</IdLocation>
<IndexLocation>^Sb.xsd.ed.TUCodeListI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.TUCodeListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

