/// Реквизиты востребуемого депозита
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.DepositInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BankDKOIDType, Sb.xsd.lt.DateTimeType, Sb.xsd.lt.DateType, Sb.xsd.lt.KopeckAmountType, Sb.xsd.lt.Max10TextType, Sb.xsd.lt.Max20TextType, Sb.xsd.lt.Max5TextType, Sb.xsd.lt.OneDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "DepositInfo";

Parameter XMLSEQUENCE = 1;

/// Номер удовлетворенной заявки на участие в депозитном аукционе или на размещение депозита по фиксированной процентной ставке
Property ExecReqNum As Sb.xsd.lt.Max20TextType(XMLNAME = "ExecReqNum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата и время составления удовлетворенной заявки
Property ReqDateTime As Sb.xsd.lt.DateTimeType(XMLNAME = "ReqDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата генерального депозитного соглашения
Property DepositConsDate As Sb.xsd.lt.DateType(XMLNAME = "DepositConsDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Номер генерального депозитного соглашения
Property DepositConsNo As Sb.xsd.lt.Max10TextType(XMLNAME = "DepositConsNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата проведения депозитного аукциона или депозитной операции по фиксированной процентной ставке
Property DepositOpDate As Sb.xsd.lt.DateType(XMLNAME = "DepositOpDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Способ проведения депозитной операции
Property DepositOpMethod As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "DepositOpMethod", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Срок депозита/Стандартное условие
Property DepositOpKind As Sb.xsd.lt.Max5TextType(XMLNAME = "DepositOpKind", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата перечисления средств в депозит, открываемый в Банке России
Property AttractDate As Sb.xsd.lt.DateType(XMLNAME = "AttractDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата возврата депозита и получения процентов.
Property ReturnDate As Sb.xsd.lt.DateType(XMLNAME = "ReturnDate", XMLPROJECTION = "ATTRIBUTE");

/// Сумма востребуемого депозита.
Property ApplicationSum As Sb.xsd.lt.KopeckAmountType(XMLNAME = "ApplicationSum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Регистрационный номер кредитной организации.
Property OrgRegNum As Sb.xsd.lt.BankDKOIDType(XMLNAME = "OrgRegNum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="DepositInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ExecReqNum</Value>
</Value>
<Value name="3">
<Value>ReqDateTime</Value>
</Value>
<Value name="4">
<Value>DepositConsDate</Value>
</Value>
<Value name="5">
<Value>DepositConsNo</Value>
</Value>
<Value name="6">
<Value>DepositOpDate</Value>
</Value>
<Value name="7">
<Value>DepositOpMethod</Value>
</Value>
<Value name="8">
<Value>DepositOpKind</Value>
</Value>
<Value name="9">
<Value>AttractDate</Value>
</Value>
<Value name="10">
<Value>ReturnDate</Value>
</Value>
<Value name="11">
<Value>ApplicationSum</Value>
</Value>
<Value name="12">
<Value>OrgRegNum</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.DepositInfoD</DataLocation>
<DefaultData>DepositInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.DepositInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.DepositInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.DepositInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

