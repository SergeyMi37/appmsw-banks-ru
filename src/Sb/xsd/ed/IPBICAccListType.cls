/// Indirect Participant Info.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.IPBICAccListType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "IPBICAccListType";

Parameter XMLSEQUENCE = 1;

/// IP's BIC.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// IP's Account.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship AccountsInfoType As Sb.xsd.ed.AccountsInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = IPInfo ];

Storage Default
{
<Data name="IPBICAccListTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>Account</Value>
</Value>
<Value name="4">
<Value>AccountsInfoType</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.IPBICAccListTypeD</DataLocation>
<DefaultData>IPBICAccListTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.IPBICAccListTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.IPBICAccListTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.IPBICAccListTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

