/// Clearing Account Information.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ClearingAccount Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ClearingAccount";

Parameter XMLSEQUENCE = 1;

/// BIC.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Clearing Account Number.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="ClearingAccountDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>Account</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ClearingAccountD</DataLocation>
<DefaultData>ClearingAccountDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ClearingAccountD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ClearingAccountI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ClearingAccountS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

