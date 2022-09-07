/// System-defined Business Scenario Identifier.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ProcessingDetails Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BusinessScenarioType, Sb.xsd.lt.DateType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ProcessingDetails";

Parameter XMLSEQUENCE = 1;

/// Settlement Cycle Type and Number (Or Settlement Time) when FTI was settled (if FTI was settled in cycle).
Property Session As Sb.xsd.ed.Session(XMLNAME = "Session");

/// System-defined Business Scenario Identifier.
Property BusinessScenario As Sb.xsd.lt.BusinessScenarioType(XMLNAME = "BusinessScenario", XMLPROJECTION = "ATTRIBUTE");

/// Debit Date of Debit Account.
Property DebitDate As Sb.xsd.lt.DateType(XMLNAME = "DebitDate", XMLPROJECTION = "ATTRIBUTE");

/// Credit Date of Credit Account.
Property CreditDate As Sb.xsd.lt.DateType(XMLNAME = "CreditDate", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="ProcessingDetailsDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Session</Value>
</Value>
<Value name="3">
<Value>BusinessScenario</Value>
</Value>
<Value name="4">
<Value>DebitDate</Value>
</Value>
<Value name="5">
<Value>CreditDate</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ProcessingDetailsD</DataLocation>
<DefaultData>ProcessingDetailsDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ProcessingDetailsD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ProcessingDetailsI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ProcessingDetailsS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

