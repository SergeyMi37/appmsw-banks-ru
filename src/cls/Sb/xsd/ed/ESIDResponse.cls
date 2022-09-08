/// Общие реквизиты служебно-информационного пакета для ЭКО
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ESIDResponse Extends Sb.xsd.ed.ESID [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ESIDResponse";

Parameter XMLSEQUENCE = 1;

/// Информация об исходном транзакционном пакете ЭС
Property InitialEDInfo As Sb.xsd.ed.InitialEDInfo(XMLNAME = "InitialEDInfo");

/// Идентификаторы исходного ЭС - запроса
Property InitialED As Sb.xsd.ed.EDRefID(XMLNAME = "InitialED");

Storage Default
{
<Data name="ESIDResponseDefaultData">
<Subscript>"ESIDResponse"</Subscript>
<Value name="1">
<Value>InitialEDInfo</Value>
</Value>
<Value name="2">
<Value>InitialED</Value>
</Value>
</Data>
<DefaultData>ESIDResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

