/// Total Amount of Arrest (Limitation) and Total Unpaid Amount of Arrest (Limitation) on account.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ArrestInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.IndicatorType, Sb.xsd.lt.NotNegativeKopeckAmountType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ArrestInfo";

Parameter XMLSEQUENCE = 1;

/// List of Arrests/Limitations.
Relationship ArrestDetailedInfo As Sb.xsd.ed.ArrestDetailedInfo(XMLNAME = "ArrestDetailedInfo", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = ArrestInfo ];

/// Total Amount of Arrest (Limitation) on account.
Property TotalAmount As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "TotalAmount", XMLPROJECTION = "ATTRIBUTE");

/// Total Amount of funds reserved in consideration for Arrest (Limitation) to account.
Property ArrestedAmount As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "ArrestedAmount", XMLPROJECTION = "ATTRIBUTE");

/// Total Unpaid (Outstanding) Amount of Arrest (Limitation) on account.
Property OutstandingAmount As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "OutstandingAmount", XMLPROJECTION = "ATTRIBUTE");

/// Indeterminate account Flag.
Property IndeterminateAmountFlag As Sb.xsd.lt.IndicatorType(XMLNAME = "IndeterminateAmountFlag", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="ArrestInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TotalAmount</Value>
</Value>
<Value name="3">
<Value>ArrestedAmount</Value>
</Value>
<Value name="4">
<Value>OutstandingAmount</Value>
</Value>
<Value name="5">
<Value>IndeterminateAmountFlag</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ArrestInfoD</DataLocation>
<DefaultData>ArrestInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ArrestInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ArrestInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ArrestInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

