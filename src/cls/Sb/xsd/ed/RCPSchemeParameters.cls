/// Condition Parameters.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.RCPSchemeParameters Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.ClearingCircuitType, Sb.xsd.lt.DateType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "RCPSchemeParameters";

Parameter XMLSEQUENCE = 1;

/// RCP Begin processing date.
Property BeginProcessingDate As Sb.xsd.lt.DateType(XMLNAME = "BeginProcessingDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// RCP End processing date.
Property EndProcessingDate As Sb.xsd.lt.DateType(XMLNAME = "EndProcessingDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Clearing scheme related to Registry of the Clearing Positions (RCP).
Property ClearingCircuit As Sb.xsd.lt.ClearingCircuitType(XMLNAME = "ClearingCircuit", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="RCPSchemeParametersDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BeginProcessingDate</Value>
</Value>
<Value name="3">
<Value>EndProcessingDate</Value>
</Value>
<Value name="4">
<Value>ClearingCircuit</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.RCPSchemeParametersD</DataLocation>
<DefaultData>RCPSchemeParametersDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.RCPSchemeParametersD</IdLocation>
<IndexLocation>^Sb.xsd.ed.RCPSchemeParametersI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.RCPSchemeParametersS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

