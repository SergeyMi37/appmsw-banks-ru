/// Balance Sweeping Destination Account.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BalanceSweepingAccount Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BalanceSweepingAccount";

Parameter XMLSEQUENCE = 1;

/// Balance Sweeping Event.
Property DailyTransfer As Sb.xsd.ed.DailyTransfer(XMLNAME = "DailyTransfer");

/// BIC.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Destination Account.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="BalanceSweepingAccountDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DailyTransfer</Value>
</Value>
<Value name="3">
<Value>BIC</Value>
</Value>
<Value name="4">
<Value>Account</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.BalanceSweeE2E8D</DataLocation>
<DefaultData>BalanceSweepingAccountDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BalanceSweeE2E8D</IdLocation>
<IndexLocation>^Sb.xsd.ed.BalanceSweeE2E8I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BalanceSweeE2E8S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

