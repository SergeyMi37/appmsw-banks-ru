/// Condition Parameters.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.CoverFundsSchemeParameters Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.EDDrawerIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "CoverFundsSchemeParameters";

Parameter XMLSEQUENCE = 1;

/// Amount to be provided.
Property CoverSum As Sb.xsd.ed.CoverSum(XMLNAME = "CoverSum");

/// UID of Participant to which APS send the copy of the "original" FTI, in order to notify the need to cover short position.
Property ParticipantToBeNotified As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "ParticipantToBeNotified", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="CoverFundsSchemeParametersDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CoverSum</Value>
</Value>
<Value name="3">
<Value>ParticipantToBeNotified</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.CoverFundsS6519D</DataLocation>
<DefaultData>CoverFundsSchemeParametersDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.CoverFundsS6519D</IdLocation>
<IndexLocation>^Sb.xsd.ed.CoverFundsS6519I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.CoverFundsS6519S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

