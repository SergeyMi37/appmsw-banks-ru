/// Базовый комплексный тип для всех электронных служебно-информационных сообщений. Содержит реквизиты, общие для всех типов ЭСИС.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ESID Extends Sb.xsd.ed.ED [ CompileAfter = Sb.xsd.lt.EDDrawerIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ESID";

Parameter XMLSEQUENCE = 1;

/// EM Receiver Unique Identifier.
Property EDReceiver As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "EDReceiver", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="ESIDDefaultData">
<Subscript>"ESID"</Subscript>
<Value name="1">
<Value>EDReceiver</Value>
</Value>
</Data>
<DefaultData>ESIDDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

