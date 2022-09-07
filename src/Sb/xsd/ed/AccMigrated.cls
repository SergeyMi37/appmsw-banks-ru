/// Information regarding Participant’s Migration from RABIS.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AccMigrated Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.IndicatorType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AccMigrated";

Parameter XMLSEQUENCE = 1;

/// Balance was received in NPS from RABIS.
Property BalanceReceived As Sb.xsd.lt.IndicatorType(XMLNAME = "BalanceReceived", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="AccMigratedDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BalanceReceived</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AccMigratedD</DataLocation>
<DefaultData>AccMigratedDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AccMigratedD</IdLocation>
<IndexLocation>^Sb.xsd.ed.AccMigratedI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AccMigratedS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

