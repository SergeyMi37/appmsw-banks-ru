/// Кассовая отчетность.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.CashAccInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.CashAccountingCodeType, Sb.xsd.lt.KopeckAmountType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "CashAccInfo";

Parameter XMLSEQUENCE = 1;

/// Символ кассовой отчетности.
Property CashAccCode As Sb.xsd.lt.CashAccountingCodeType(XMLNAME = "CashAccCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Сумма по символу кассовой отчетности.
Property CashAccSum As Sb.xsd.lt.KopeckAmountType(XMLNAME = "CashAccSum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="CashAccInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CashAccCode</Value>
</Value>
<Value name="3">
<Value>CashAccSum</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.CashAccInfoD</DataLocation>
<DefaultData>CashAccInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.CashAccInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.CashAccInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.CashAccInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

