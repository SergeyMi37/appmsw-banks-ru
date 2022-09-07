/// Комплексный тип для электронных сообщений. Содержит реквизит EDSender.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ESWithEDSender Extends Sb.xsd.ed.ESWithMandatoryEDReceiver [ CompileAfter = Sb.xsd.lt.EDDrawerIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ESWithEDSender";

Parameter XMLSEQUENCE = 1;

/// УИС головного участника МЭР, или децентрализованного участника - отправителя ЭС.
Property EDSender As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "EDSender", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="ESWithEDSenderDefaultData">
<Subscript>"ESWithEDSender"</Subscript>
<Value name="1">
<Value>EDSender</Value>
</Value>
</Data>
<DefaultData>ESWithEDSenderDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

