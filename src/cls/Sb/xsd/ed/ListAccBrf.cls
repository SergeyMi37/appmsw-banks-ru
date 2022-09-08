/// Список балансовых счетов.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ListAccBrf Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.AccountNumberRUIDBrfType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ListAccBrf";

Parameter XMLSEQUENCE = 1;

/// Балансовый счет ОУР или балансовый счет АУР - структурного подразделения Банка России
Property AccBrf As Sb.xsd.lt.AccountNumberRUIDBrfType(XMLNAME = "AccBrf", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship RTGSCustomerInfo2 As Sb.xsd.ed.RTGSCustomerInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ListAccBrf ];

Storage Default
{
<Data name="ListAccBrfDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AccBrf</Value>
</Value>
<Value name="3">
<Value>RTGSCustomerInfo2</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ListAccBrfD</DataLocation>
<DefaultData>ListAccBrfDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ListAccBrfD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ListAccBrfI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ListAccBrfS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

