/// Список типов сообщений ISO
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ISOTypeList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.Max15TextType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ISOTypeList";

Parameter XMLSEQUENCE = 1;

/// Тип сообщения ISO
Property ISOTypeNo As Sb.xsd.lt.Max15TextType(XMLNAME = "ISOTypeNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="ISOTypeListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ISOTypeNo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ISOTypeListD</DataLocation>
<DefaultData>ISOTypeListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ISOTypeListD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ISOTypeListI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ISOTypeListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

