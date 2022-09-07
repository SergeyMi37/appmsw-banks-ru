/// Participant's Restrictions.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.RstrListType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.RstrType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "RstrListType";

Parameter XMLSEQUENCE = 1;

/// Participant's Restriction Code.
Property Rstr As Sb.xsd.lt.RstrType(XMLNAME = "Rstr", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participant's Restriction's start date.
Property RstrDate As Sb.xsd.lt.DateType(XMLNAME = "RstrDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship ParticipantInfoType As Sb.xsd.ed.ParticipantInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = RstrList ];

Storage Default
{
<Data name="RstrListTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Rstr</Value>
</Value>
<Value name="3">
<Value>RstrDate</Value>
</Value>
<Value name="4">
<Value>ParticipantInfoType</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.RstrListTypeD</DataLocation>
<DefaultData>RstrListTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.RstrListTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.RstrListTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.RstrListTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

