/// Initial Settlement Document Attributes.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.RelatedDocRefID Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.Max16TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "RelatedDocRefID";

Parameter XMLSEQUENCE = 1;

/// Document Number (Field 78).
Property RelatedDocNo As Sb.xsd.lt.Max16TextType(XMLNAME = "RelatedDocNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Document Date (Field 79).
Property RelatedDocDate As Sb.xsd.lt.DateType(XMLNAME = "RelatedDocDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="RelatedDocRefIDDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>RelatedDocNo</Value>
</Value>
<Value name="3">
<Value>RelatedDocDate</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.RelatedDocRefIDD</DataLocation>
<DefaultData>RelatedDocRefIDDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.RelatedDocRefIDD</IdLocation>
<IndexLocation>^Sb.xsd.ed.RelatedDocRefIDI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.RelatedDocRefIDS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

