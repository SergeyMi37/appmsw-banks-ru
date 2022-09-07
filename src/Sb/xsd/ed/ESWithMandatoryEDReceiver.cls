/// Комплексный тип для электронных сообщений. Содержит обязательный реквизит EDReceiver.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ESWithMandatoryEDReceiver Extends Sb.xsd.ed.ED [ CompileAfter = Sb.xsd.lt.EDDrawerIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ESWithMandatoryEDReceiver";

Parameter XMLSEQUENCE = 1;

/// EM Receiver Unique Identifier.
Property EDReceiver As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "EDReceiver", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="ESWithMandatoryEDReceiverDefaultData">
<Subscript>"ESWithMandatoryEDReceiver"</Subscript>
<Value name="1">
<Value>EDReceiver</Value>
</Value>
</Data>
<DefaultData>ESWithMandatoryEDReceiverDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

