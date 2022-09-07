/// Информация об устанавливаемом лимите
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.LimitInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.NotNegativeKopeckAmountType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "LimitInfo";

Parameter XMLSEQUENCE = 1;

/// БИК ПУР, на который устанавливается лимит.
Property PURBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "PURBIC", XMLPROJECTION = "ATTRIBUTE");

/// Сумма лимита
Property LimitSum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "LimitSum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="LimitInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PURBIC</Value>
</Value>
<Value name="3">
<Value>LimitSum</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.LimitInfoD</DataLocation>
<DefaultData>LimitInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.LimitInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.LimitInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.LimitInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

