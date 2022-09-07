/// EPS Attributes.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.EPSInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.IndicatorType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "EPSInfo";

Parameter XMLSEQUENCE = 1;

/// A mandatory list of clearing circuits (at least one).
Relationship ClearingCircuits As Sb.xsd.ed.ClearingCircuits(XMLNAME = "ClearingCircuits", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = EPSInfo ];

/// Can send RCP’s.
Property RCPAllowed As Sb.xsd.lt.IndicatorType(XMLNAME = "RCPAllowed", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="EPSInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>RCPAllowed</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.EPSInfoD</DataLocation>
<DefaultData>EPSInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.EPSInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.EPSInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.EPSInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

