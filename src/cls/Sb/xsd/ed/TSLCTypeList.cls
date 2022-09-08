/// Список типов сообщений TSLC
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.TSLCTypeList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.Max15TextType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "TSLCTypeList";

Parameter XMLSEQUENCE = 1;

/// Тип сообщения TSLC
Property TSLCTypeNo As Sb.xsd.lt.Max15TextType(XMLNAME = "TSLCTypeNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="TSLCTypeListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TSLCTypeNo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.TSLCTypeListD</DataLocation>
<DefaultData>TSLCTypeListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.TSLCTypeListD</IdLocation>
<IndexLocation>^Sb.xsd.ed.TSLCTypeListI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.TSLCTypeListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

