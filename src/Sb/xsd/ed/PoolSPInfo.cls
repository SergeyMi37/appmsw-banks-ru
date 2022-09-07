/// Primary account of liquidity pool (LP) OR List of Subordinate Accounts of LP.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.PoolSPInfo Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "PoolSPInfo";

Parameter XMLSEQUENCE = 0;

/// List of Subordinate Accounts of LP.
/// List of Subordinate Accounts of LP.
/// Subordinate Account of LP.
Relationship ListOfSP As Sb.xsd.ed.SPInfo(XMLITEMNAME = "SPInfo", XMLNAME = "ListOfSP", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = PoolSPInfo ];

/// Primary account of LP.
Property MainPoolParticipant As Sb.xsd.ed.MainPoolParticipant(XMLNAME = "MainPoolParticipant");

Storage Default
{
<Data name="PoolSPInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>MainPoolParticipant</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.PoolSPInfoD</DataLocation>
<DefaultData>PoolSPInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.PoolSPInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.PoolSPInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.PoolSPInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

