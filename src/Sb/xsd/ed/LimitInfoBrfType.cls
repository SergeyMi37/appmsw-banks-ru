/// IOCL (limit of intraday credit) Value and Usage.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.LimitInfoBrfType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.NotNegativeKopeckAmountType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "LimitInfoBrfType";

Parameter XMLSEQUENCE = 1;

/// IOCL Value.
Property Value As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "Value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// IOCL Utilization.
Property Utilization As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "Utilization", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="LimitInfoBrfTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Value</Value>
</Value>
<Value name="3">
<Value>Utilization</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.LimitInfoBrfTypeD</DataLocation>
<DefaultData>LimitInfoBrfTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.LimitInfoBrfTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.LimitInfoBrfTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.LimitInfoBrfTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

