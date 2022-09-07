/// Restriction or deletion basis document.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.RestrictionBasisDocument Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.Max12TextType, Sb.xsd.lt.Max210TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "RestrictionBasisDocument";

Parameter XMLSEQUENCE = 1;

/// Document’s Date.
Property DocDate As Sb.xsd.lt.DateType(XMLNAME = "DocDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Document’s Number.
Property DocNumber As Sb.xsd.lt.Max12TextType(XMLNAME = "DocNumber", XMLPROJECTION = "ATTRIBUTE");

/// Document’s description.
Property Description As Sb.xsd.lt.Max210TextType(XMLNAME = "Description", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="RestrictionBasisDocumentDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DocDate</Value>
</Value>
<Value name="3">
<Value>DocNumber</Value>
</Value>
<Value name="4">
<Value>Description</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.Restriction96C4D</DataLocation>
<DefaultData>RestrictionBasisDocumentDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.Restriction96C4D</IdLocation>
<IndexLocation>^Sb.xsd.ed.Restriction96C4I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.Restriction96C4S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

