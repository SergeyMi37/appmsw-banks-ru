/// Информация о счете
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SEDAccInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.KopeckAmountType, Sb.xsd.lt.Max10TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SEDAccInfo";

Parameter XMLSEQUENCE = 1;

/// БИК подразделения расчетной сети Банка России
Property PBRBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "PBRBIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Номер лицевого счета по учету просроченной задолженности
Property OverdueDebetAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "OverdueDebetAcc", XMLPROJECTION = "ATTRIBUTE");

/// Остаток на счете по учету просроченной задолженности
Property OverdueDebetBal As Sb.xsd.lt.KopeckAmountType(XMLNAME = "OverdueDebetBal", XMLPROJECTION = "ATTRIBUTE");

/// Номер лицевого счета по учету просроченных процентов по предоставленным кредитам
Property OverduePercentAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "OverduePercentAcc", XMLPROJECTION = "ATTRIBUTE");

/// Остаток на счете по учету просроченных процентов
Property OverduePercentBal As Sb.xsd.lt.KopeckAmountType(XMLNAME = "OverduePercentBal", XMLPROJECTION = "ATTRIBUTE");

/// Номер ссудного лицевого счета 320
Property LoanAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "LoanAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Номер лицевого счета по уплате процентов
Property PercentAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "PercentAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Уникальный номер кредита Банка России
Property CreditNum As Sb.xsd.lt.Max10TextType(XMLNAME = "CreditNum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="SEDAccInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PBRBIC</Value>
</Value>
<Value name="3">
<Value>OverdueDebetAcc</Value>
</Value>
<Value name="4">
<Value>OverdueDebetBal</Value>
</Value>
<Value name="5">
<Value>OverduePercentAcc</Value>
</Value>
<Value name="6">
<Value>OverduePercentBal</Value>
</Value>
<Value name="7">
<Value>LoanAcc</Value>
</Value>
<Value name="8">
<Value>PercentAcc</Value>
</Value>
<Value name="9">
<Value>CreditNum</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SEDAccInfoD</DataLocation>
<DefaultData>SEDAccInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SEDAccInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SEDAccInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SEDAccInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

