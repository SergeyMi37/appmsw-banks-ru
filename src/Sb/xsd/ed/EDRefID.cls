/// EM referenced group attributes.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.EDRefID Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.EDDrawerIDType, Sb.xsd.lt.EDNumberType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "EDRefID";

Parameter XMLSEQUENCE = 1;

/// EM Sequence Number during business day.
Property EDNo As Sb.xsd.lt.EDNumberType(XMLNAME = "EDNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// EM Generation Date.
Property EDDate As Sb.xsd.lt.DateType(XMLNAME = "EDDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// EM Author Unique Identifier - UID.
Property EDAuthor As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "EDAuthor", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="EDRefIDDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>EDNo</Value>
</Value>
<Value name="3">
<Value>EDDate</Value>
</Value>
<Value name="4">
<Value>EDAuthor</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.EDRefIDD</DataLocation>
<DefaultData>EDRefIDDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.EDRefIDD</IdLocation>
<IndexLocation>^Sb.xsd.ed.EDRefIDI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.EDRefIDS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

