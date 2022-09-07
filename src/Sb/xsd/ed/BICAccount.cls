/// BIC and CorrespAccount
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BICAccount Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BICAccount";

Parameter XMLSEQUENCE = 1;

/// Participants BIC
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Account Number
Property CorrespAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "CorrespAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="BICAccountDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>CorrespAcc</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.BICAccountD</DataLocation>
<DefaultData>BICAccountDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BICAccountD</IdLocation>
<IndexLocation>^Sb.xsd.ed.BICAccountI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BICAccountS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

