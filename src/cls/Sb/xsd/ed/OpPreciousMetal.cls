/// Операция с драгоценными металлами.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.OpPreciousMetal Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.Max12WeightType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "OpPreciousMetal";

Parameter XMLSEQUENCE = 1;

/// Дата валютирования
Property ValueDate As Sb.xsd.lt.DateType(XMLNAME = "ValueDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Масса
Property Mass As Sb.xsd.lt.Max12WeightType(XMLNAME = "Mass", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="OpPreciousMetalDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ValueDate</Value>
</Value>
<Value name="3">
<Value>Mass</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.OpPreciousMetalD</DataLocation>
<DefaultData>OpPreciousMetalDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.OpPreciousMetalD</IdLocation>
<IndexLocation>^Sb.xsd.ed.OpPreciousMetalI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.OpPreciousMetalS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

