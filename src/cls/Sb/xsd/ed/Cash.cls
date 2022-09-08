/// Касса.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.Cash Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "Cash";

Parameter XMLSEQUENCE = 1;

/// БИК ПБР.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Лицевой счет кассы.
Property CashAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "CashAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="CashDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>CashAcc</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.CashD</DataLocation>
<DefaultData>CashDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.CashD</IdLocation>
<IndexLocation>^Sb.xsd.ed.CashI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.CashS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

