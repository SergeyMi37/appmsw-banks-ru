/// Time range
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BusinessDay Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.DateType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BusinessDay";

Parameter XMLSEQUENCE = 1;

/// Operation Date
Property AbstractDate As Sb.xsd.lt.DateType(XMLNAME = "AbstractDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="BusinessDayDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AbstractDate</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.BusinessDayD</DataLocation>
<DefaultData>BusinessDayDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BusinessDayD</IdLocation>
<IndexLocation>^Sb.xsd.ed.BusinessDayI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BusinessDayS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

