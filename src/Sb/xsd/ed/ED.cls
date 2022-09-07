/// Базовый комплексный тип для всех электронных сообщений данного пространства имен
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ED Extends Sb.xsd.ed.EDRefID [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ED";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="EDDefaultData">
<Subscript>"ED"</Subscript>
<Value name="1">
<Value>any</Value>
</Value>
</Data>
<DefaultData>EDDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

