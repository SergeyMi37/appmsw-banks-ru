/// Сумма с признаком отсутствия верхней границы на списание
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SumWithUnlimit Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.NotNegativeKopeckAmountType, Sb.xsd.lt.OneDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SumWithUnlimit";

Parameter XMLSEQUENCE = 1;

/// Amount.
Property Sum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "Sum", XMLPROJECTION = "ATTRIBUTE") [ SqlFieldName = _Sum ];

/// Признак отсутствия ограничений на списание средств
Property UnlimitedFundsMode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "UnlimitedFundsMode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="SumWithUnlimitDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Sum</Value>
</Value>
<Value name="3">
<Value>UnlimitedFundsMode</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SumWithUnlimitD</DataLocation>
<DefaultData>SumWithUnlimitDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SumWithUnlimitD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SumWithUnlimitI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SumWithUnlimitS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

