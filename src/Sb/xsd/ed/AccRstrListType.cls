/// Account's Restrictions.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AccRstrListType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.RstrType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AccRstrListType";

Parameter XMLSEQUENCE = 1;

/// Account Restriction Code.
Property AccRstr As Sb.xsd.lt.RstrType(XMLNAME = "AccRstr", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Restriction start date.
Property AccRstrDate As Sb.xsd.lt.DateType(XMLNAME = "AccRstrDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship AccountsType As Sb.xsd.ed.AccountsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AccRstrList ];

Storage Default
{
<Data name="AccRstrListTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AccRstr</Value>
</Value>
<Value name="3">
<Value>AccRstrDate</Value>
</Value>
<Value name="4">
<Value>AccountsType</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AccRstrListTypeD</DataLocation>
<DefaultData>AccRstrListTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AccRstrListTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.AccRstrListTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AccRstrListTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

