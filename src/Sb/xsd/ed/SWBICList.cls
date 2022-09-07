/// SWIFT BICs of Participant.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SWBICList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICSWIFTIDType, Sb.xsd.lt.IndicatorType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SWBICList";

Parameter XMLSEQUENCE = 1;

/// Participant’s SWIFT BIC.
Property SWBIC As Sb.xsd.lt.BICSWIFTIDType(XMLNAME = "SWBIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Default SWIFT BIC flag.
Property DefaultSWBIC As Sb.xsd.lt.IndicatorType(XMLNAME = "DefaultSWBIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship BICDirectoryEntryType As Sb.xsd.ed.BICDirectoryEntryType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = SWBICS ];

Relationship BICDirectoryEntryExt As Sb.xsd.ed.BICDirectoryEntryExt(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = SWBICS ];

Relationship IPInfo As Sb.xsd.ed.IPInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = SWBICS ];

Storage Default
{
<Data name="SWBICListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SWBIC</Value>
</Value>
<Value name="3">
<Value>DefaultSWBIC</Value>
</Value>
<Value name="4">
<Value>BICDirectoryEntryType</Value>
</Value>
<Value name="5">
<Value>BICDirectoryEntryExt</Value>
</Value>
<Value name="6">
<Value>IPInfo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SWBICListD</DataLocation>
<DefaultData>SWBICListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SWBICListD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SWBICListI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SWBICListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

