/// Subordinate Account of LP.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SPInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SPInfo";

Parameter XMLSEQUENCE = 1;

/// БИК подчиненного участника пула.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Номер счета подчиненного участника пула.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship PoolSPInfo As Sb.xsd.ed.PoolSPInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ListOfSP ];

Storage Default
{
<Data name="SPInfoDefaultData">
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
<Value>PoolSPInfo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SPInfoD</DataLocation>
<DefaultData>SPInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SPInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SPInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SPInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

