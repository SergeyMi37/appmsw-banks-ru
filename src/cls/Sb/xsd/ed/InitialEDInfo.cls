/// Информация о транзакционном пакете ЭС
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.InitialEDInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.OneDigitCodeType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "InitialEDInfo";

Parameter XMLSEQUENCE = 1;

/// Идентификаторы транзакционного пакета ЭС
Property EDRefID As Sb.xsd.ed.EDRefID(XMLNAME = "EDRefID") [ Required ];

/// Статус транзакционного пакета ЭС
Property PacketStatus As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "PacketStatus", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="InitialEDInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>EDRefID</Value>
</Value>
<Value name="3">
<Value>PacketStatus</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.InitialEDInfoD</DataLocation>
<DefaultData>InitialEDInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.InitialEDInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.InitialEDInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.InitialEDInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

