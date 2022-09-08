/// A mandatory list of clearing circuits.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ClearingCircuits Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.ClearingCircuitType, Sb.xsd.lt.IndicatorType, Sb.xsd.lt.Max140TextType, Sb.xsd.lt.Max40TextType, Sb.xsd.lt.PerfomanceSchemaType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ClearingCircuits";

Parameter XMLSEQUENCE = 1;

/// Guarantee fund information.
Property GarFunds As Sb.xsd.ed.GarFunds(XMLNAME = "GarFunds") [ Required ];

/// Clearing Account Information.
Property ClearingAccount As Sb.xsd.ed.ClearingAccount(XMLNAME = "ClearingAccount") [ Required ];

/// Clearing circuit ID.
Property ClearingCircuit As Sb.xsd.lt.ClearingCircuitType(XMLNAME = "ClearingCircuit", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Short name of the clearing circuit.
Property ClearingCircuitShortName As Sb.xsd.lt.Max40TextType(XMLNAME = "ClearingCircuitShortName", XMLPROJECTION = "ATTRIBUTE");

/// Description of the clearing circuit.
Property ClearingCircuitFullName As Sb.xsd.lt.Max140TextType(XMLNAME = "ClearingCircuitFullName", XMLPROJECTION = "ATTRIBUTE");

/// RCP should be settled on according to this schema.
Property PerfomanceSchema As Sb.xsd.lt.PerfomanceSchemaType(XMLNAME = "PerfomanceSchema", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Default Clearing Schema.
Property DefaultSchema As Sb.xsd.lt.IndicatorType(XMLNAME = "DefaultSchema", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Allows claim limits.
Property ClaimLimitsAllowed As Sb.xsd.lt.IndicatorType(XMLNAME = "ClaimLimitsAllowed", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship EPSInfo As Sb.xsd.ed.EPSInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ClearingCircuits ];

Storage Default
{
<Data name="ClearingCircuitsDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>GarFunds</Value>
</Value>
<Value name="3">
<Value>ClearingAccount</Value>
</Value>
<Value name="4">
<Value>ClearingCircuit</Value>
</Value>
<Value name="5">
<Value>ClearingCircuitShortName</Value>
</Value>
<Value name="6">
<Value>ClearingCircuitFullName</Value>
</Value>
<Value name="7">
<Value>PerfomanceSchema</Value>
</Value>
<Value name="8">
<Value>DefaultSchema</Value>
</Value>
<Value name="9">
<Value>ClaimLimitsAllowed</Value>
</Value>
<Value name="10">
<Value>EPSInfo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ClearingCircuitsD</DataLocation>
<DefaultData>ClearingCircuitsDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ClearingCircuitsD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ClearingCircuitsI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ClearingCircuitsS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

