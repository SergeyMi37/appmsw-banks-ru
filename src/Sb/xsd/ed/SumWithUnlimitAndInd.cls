/// Сумма с признаком отсутствия верхней границы на списание и признаком изменения
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SumWithUnlimitAndInd Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.Indicator1Type, Sb.xsd.lt.NotNegativeKopeckAmountType, Sb.xsd.lt.OneDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SumWithUnlimitAndInd";

Parameter XMLSEQUENCE = 1;

/// Amount.
Property Sum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "Sum", XMLPROJECTION = "ATTRIBUTE") [ SqlFieldName = _Sum ];

/// Признак изменения реквизита "Сумма".
Property ChangeSum As Sb.xsd.lt.Indicator1Type(XMLNAME = "ChangeSum", XMLPROJECTION = "ATTRIBUTE");

/// Признак отсутствия ограничений на списание средств
Property UnlimitedFundsMode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "UnlimitedFundsMode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="SumWithUnlimitAndIndDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Sum</Value>
</Value>
<Value name="3">
<Value>ChangeSum</Value>
</Value>
<Value name="4">
<Value>UnlimitedFundsMode</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SumWithUnliA85FD</DataLocation>
<DefaultData>SumWithUnlimitAndIndDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SumWithUnliA85FD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SumWithUnliA85FI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SumWithUnliA85FS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

