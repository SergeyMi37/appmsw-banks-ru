/// Amount to be provided.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.CoverSum Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.NotNegativeKopeckAmountType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "CoverSum";

Parameter XMLSEQUENCE = 1;

/// Minimum Amount to be provided.
Property Min As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "Min", XMLPROJECTION = "ATTRIBUTE") [ Required, SqlFieldName = _Min ];

/// Maximum Amount to be provided.
Property Max As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "Max", XMLPROJECTION = "ATTRIBUTE") [ Required, SqlFieldName = _Max ];

Storage Default
{
<Data name="CoverSumDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Min</Value>
</Value>
<Value name="3">
<Value>Max</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.CoverSumD</DataLocation>
<DefaultData>CoverSumDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.CoverSumD</IdLocation>
<IndexLocation>^Sb.xsd.ed.CoverSumI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.CoverSumS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

