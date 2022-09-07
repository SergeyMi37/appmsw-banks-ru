/// Базовый комплексный тип для ЭСИС с информацией о части.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ESIDWithPartInfo Extends Sb.xsd.ed.ESID [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ESIDWithPartInfo";

Parameter XMLSEQUENCE = 1;

/// Information about partition.
Property PartInfo As Sb.xsd.ed.PartInfo(XMLNAME = "PartInfo");

/// Initial ESIM-request Identifiers.
Property InitialED As Sb.xsd.ed.EDRefID(XMLNAME = "InitialED");

Storage Default
{
<Data name="ESIDWithPartInfoDefaultData">
<Subscript>"ESIDWithPartInfo"</Subscript>
<Value name="1">
<Value>PartInfo</Value>
</Value>
<Value name="2">
<Value>InitialED</Value>
</Value>
</Data>
<DefaultData>ESIDWithPartInfoDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

