/// Guarantee fund information.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.GarFunds Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.GarFundsUsageType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "GarFunds";

Parameter XMLSEQUENCE = 1;

/// Guarantee funds number.
Property GarFundNumber As Sb.xsd.ed.GarFundNumber(XMLNAME = "GarFundNumber");

/// Guarantee funds usage.
Property GarFundsUsage As Sb.xsd.lt.GarFundsUsageType(XMLNAME = "GarFundsUsage", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="GarFundsDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>GarFundNumber</Value>
</Value>
<Value name="3">
<Value>GarFundsUsage</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.GarFundsD</DataLocation>
<DefaultData>GarFundsDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.GarFundsD</IdLocation>
<IndexLocation>^Sb.xsd.ed.GarFundsI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.GarFundsS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

