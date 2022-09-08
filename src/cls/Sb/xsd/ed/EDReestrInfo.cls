/// Information about registry items about accepted for execution FTI's.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.EDReestrInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.Max5OrdinalNumberType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "EDReestrInfo";

Parameter XMLSEQUENCE = 1;

/// Registry Item Attributes List.
Relationship EDReestrFieldList As Sb.xsd.ed.FieldInfo(XMLNAME = "EDReestrFieldList", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = EDReestrInfo ];

/// Registry Item Number.
Property TransactionID As Sb.xsd.lt.Max5OrdinalNumberType(XMLNAME = "TransactionID", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="EDReestrInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TransactionID</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.EDReestrInfoD</DataLocation>
<DefaultData>EDReestrInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.EDReestrInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.EDReestrInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.EDReestrInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

