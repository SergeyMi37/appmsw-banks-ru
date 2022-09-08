/// Restriction of service.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.IntradayRestrictionsType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.IndicatorType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "IntradayRestrictionsType";

Parameter XMLSEQUENCE = 1;

/// Restriction or restricton’s deletion basis document.
Property RestrictionBasisDoc As Sb.xsd.ed.RestrictionBasisDocument(XMLNAME = "RestrictionBasisDoc");

/// Restriction applied flag.
Property Applied As Sb.xsd.lt.IndicatorType(XMLNAME = "Applied", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Date of applying/removing of the restriction.
Property ApplyDate As Sb.xsd.lt.DateType(XMLNAME = "ApplyDate", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="IntradayRestrictionsTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>RestrictionBasisDoc</Value>
</Value>
<Value name="3">
<Value>Applied</Value>
</Value>
<Value name="4">
<Value>ApplyDate</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.IntradayRes6580D</DataLocation>
<DefaultData>IntradayRestrictionsTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.IntradayRes6580D</IdLocation>
<IndexLocation>^Sb.xsd.ed.IntradayRes6580I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.IntradayRes6580S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

