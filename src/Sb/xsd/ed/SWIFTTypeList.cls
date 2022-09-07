/// Список типов сообщений SWIFT
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SWIFTTypeList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.Max5TextType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SWIFTTypeList";

Parameter XMLSEQUENCE = 1;

/// Тип сообщения SWIFT
Property SWIFTTypeNo As Sb.xsd.lt.Max5TextType(XMLNAME = "SWIFTTypeNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="SWIFTTypeListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SWIFTTypeNo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SWIFTTypeListD</DataLocation>
<DefaultData>SWIFTTypeListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SWIFTTypeListD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SWIFTTypeListI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SWIFTTypeListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

