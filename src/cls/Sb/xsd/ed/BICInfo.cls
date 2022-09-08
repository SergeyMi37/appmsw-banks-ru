/// БИК
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BICInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.BICRUIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BICInfo";

Parameter XMLSEQUENCE = 1;

/// БИК
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship RTGSCustomerInfo As Sb.xsd.ed.RTGSCustomerInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = PURBICInfo ];

Storage Default
{
<Data name="BICInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>RTGSCustomerInfo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.BICInfoD</DataLocation>
<DefaultData>BICInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BICInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.BICInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BICInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

