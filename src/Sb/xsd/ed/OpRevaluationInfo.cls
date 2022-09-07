/// Дополнительная информация по операции.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.OpRevaluationInfo Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "OpRevaluationInfo";

Parameter XMLSEQUENCE = 1;

/// Операция с драгоценными металлами
Property OpPreciousMetal As Sb.xsd.ed.OpPreciousMetal(XMLNAME = "OpPreciousMetal") [ Required ];

Storage Default
{
<Data name="OpRevaluationInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>OpPreciousMetal</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.OpRevaluationInfoD</DataLocation>
<DefaultData>OpRevaluationInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.OpRevaluationInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.OpRevaluationInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.OpRevaluationInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

