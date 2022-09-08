/// BIC of Authorized sender Or List of BICs of Banks using Authorized sender to communicate with NPS.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.UFCFInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.BICRUIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "UFCFInfo";

Parameter XMLSEQUENCE = 0;

/// BIC of Authorized Sender.
Property UFBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "UFBIC");

/// List of BICs of Banks using Authorized Sender.
/// List of BICs of Banks using Authorized Sender.
/// BIC of Bank using Authorized Sender.
Property CFBICList As list Of Sb.xsd.lt.BICRUIDType(XMLITEMNAME = "CFBIC", XMLNAME = "CFBICList", XMLPROJECTION = "COLLECTION");

Storage Default
{
<Data name="UFCFInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UFBIC</Value>
</Value>
<Value name="3">
<Value>CFBICList</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.UFCFInfoD</DataLocation>
<DefaultData>UFCFInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.UFCFInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.UFCFInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.UFCFInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

