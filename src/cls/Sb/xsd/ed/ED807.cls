/// Full National BIC Directory/ National BIC Directory Changes
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed807_v2019.2.0.xsd
Class Sb.xsd.ed.ED807 Extends Sb.xsd.ed.ESIDWithPartInfo [ CompileAfter = (Sb.xsd.lt.DateTimeType, Sb.xsd.lt.DateType, Sb.xsd.lt.Max2NumberType, Sb.xsd.lt.ReasonCodeType, Sb.xsd.lt.RequestCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ED807";

Parameter XMLSEQUENCE = 1;

/// BIC Directory Entry.
Relationship BICDirectoryEntry As Sb.xsd.ed.BICDirectoryEntryType(XMLNAME = "BICDirectoryEntry", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = ED807 ];

/// Creation reason code (ReQueST, Profile was CHangeD, Profile was created at Start Of Business Day).
Property CreationReason As Sb.xsd.lt.ReasonCodeType(XMLNAME = "CreationReason", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Date and time of creation.
Property CreationDateTime As Sb.xsd.lt.DateTimeType(XMLNAME = "CreationDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Info Type.
Property InfoTypeCode As Sb.xsd.lt.RequestCodeType(XMLNAME = "InfoTypeCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Business day
Property BusinessDay As Sb.xsd.lt.DateType(XMLNAME = "BusinessDay", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Directory version inside of business day.
Property DirectoryVersion As Sb.xsd.lt.Max2NumberType(XMLNAME = "DirectoryVersion", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="ED807DefaultData">
<Subscript>"ED807"</Subscript>
<Value name="1">
<Value>CreationReason</Value>
</Value>
<Value name="2">
<Value>CreationDateTime</Value>
</Value>
<Value name="3">
<Value>InfoTypeCode</Value>
</Value>
<Value name="4">
<Value>BusinessDay</Value>
</Value>
<Value name="5">
<Value>DirectoryVersion</Value>
</Value>
</Data>
<DefaultData>ED807DefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

