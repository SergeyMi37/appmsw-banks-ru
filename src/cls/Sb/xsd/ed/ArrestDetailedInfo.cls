/// List of Arrests/Limitations.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ArrestDetailedInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.IndicatorType, Sb.xsd.lt.Max10TextType, Sb.xsd.lt.NotNegativeKopeckAmountType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ArrestDetailedInfo";

Parameter XMLSEQUENCE = 1;

/// Restriction or restricton’s deletion basis document.
Property RestrictionBasisDoc As Sb.xsd.ed.RestrictionBasisDocument(XMLNAME = "RestrictionBasisDoc");

/// ID of Arrest/Limitation.
Property ArrestID As Sb.xsd.lt.Max10TextType(XMLNAME = "ArrestID", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Indeterminate account Flag.
Property IndeterminateAmountFlag As Sb.xsd.lt.IndicatorType(XMLNAME = "IndeterminateAmountFlag", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Amount of arrest (limitation) imposed on the account.
Property ArrestAmount As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "ArrestAmount", XMLPROJECTION = "ATTRIBUTE");

/// Outstanding amount of arrest or limitation on the account.
Property OutstandingAmount As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "OutstandingAmount", XMLPROJECTION = "ATTRIBUTE");

Relationship AccountsInfoType3 As Sb.xsd.ed.AccountsInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ArrestsInfo ];

Relationship ArrestInfo As Sb.xsd.ed.ArrestInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ArrestDetailedInfo ];

Storage Default
{
<Data name="ArrestDetailedInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>RestrictionBasisDoc</Value>
</Value>
<Value name="3">
<Value>ArrestID</Value>
</Value>
<Value name="4">
<Value>IndeterminateAmountFlag</Value>
</Value>
<Value name="5">
<Value>ArrestAmount</Value>
</Value>
<Value name="6">
<Value>OutstandingAmount</Value>
</Value>
<Value name="7">
<Value>AccountsInfoType3</Value>
</Value>
<Value name="8">
<Value>ArrestInfo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ArrestDetailedInfoD</DataLocation>
<DefaultData>ArrestDetailedInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ArrestDetailedInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ArrestDetailedInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ArrestDetailedInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

