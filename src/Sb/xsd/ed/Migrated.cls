/// Информация, связанная с процессом миграции Участника
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.Migrated Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.IndicatorType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "Migrated";

Parameter XMLSEQUENCE = 1;

/// Мигрировавший участник
Property MigratedInd As Sb.xsd.lt.IndicatorType(XMLNAME = "MigratedInd", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Дата последнего дня обслуживания в РАБИС
Property LastRABISDate As Sb.xsd.lt.DateType(XMLNAME = "LastRABISDate", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="MigratedDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>MigratedInd</Value>
</Value>
<Value name="3">
<Value>LastRABISDate</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.MigratedD</DataLocation>
<DefaultData>MigratedDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.MigratedD</IdLocation>
<IndexLocation>^Sb.xsd.ed.MigratedI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.MigratedS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

