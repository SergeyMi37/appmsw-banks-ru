/// Information about FTI.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SEDAccDocInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountDocIDType, Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.DateType, Sb.xsd.lt.KopeckAmountType, Sb.xsd.lt.Max10TextType, Sb.xsd.lt.Max210TextType, Sb.xsd.lt.OneDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SEDAccDocInfo";

Parameter XMLSEQUENCE = 1;

/// Назначение платежа.
Property Purpose As Sb.xsd.lt.Max210TextType(XMLNAME = "Purpose");

/// BIC of CBR Subdivision servicing credit organization.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Correspondent Account.
Property PersonalAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "PersonalAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Признак дебета/кредита
Property DC As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "DC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// FTI’s Amount.
Property Sum As Sb.xsd.lt.KopeckAmountType(XMLNAME = "Sum", XMLPROJECTION = "ATTRIBUTE") [ Required, SqlFieldName = _Sum ];

/// Operational Deparment BIC.
Property ODBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "ODBIC", XMLPROJECTION = "ATTRIBUTE");

/// Account opened in Operational Department.
Property Acc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Acc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Номер расчетного документа
Property AccDocNo As Sb.xsd.lt.AccountDocIDType(XMLNAME = "AccDocNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата расчетного документа
Property AccDocDate As Sb.xsd.lt.DateType(XMLNAME = "AccDocDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Уникальный номер кредита Банка России.
Property CreditNum As Sb.xsd.lt.Max10TextType(XMLNAME = "CreditNum", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="SEDAccDocInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Purpose</Value>
</Value>
<Value name="3">
<Value>BIC</Value>
</Value>
<Value name="4">
<Value>PersonalAcc</Value>
</Value>
<Value name="5">
<Value>DC</Value>
</Value>
<Value name="6">
<Value>Sum</Value>
</Value>
<Value name="7">
<Value>ODBIC</Value>
</Value>
<Value name="8">
<Value>Acc</Value>
</Value>
<Value name="9">
<Value>AccDocNo</Value>
</Value>
<Value name="10">
<Value>AccDocDate</Value>
</Value>
<Value name="11">
<Value>CreditNum</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SEDAccDocInfoD</DataLocation>
<DefaultData>SEDAccDocInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SEDAccDocInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SEDAccDocInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SEDAccDocInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

