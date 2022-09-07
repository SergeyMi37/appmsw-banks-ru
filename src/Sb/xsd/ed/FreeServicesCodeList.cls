/// Список предоставленных бесплатных услуг по видам
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.FreeServicesCodeList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.Max9QuantityType, Sb.xsd.lt.NotNegativeKopeckAmountType, Sb.xsd.lt.OneDigitCodeType, Sb.xsd.lt.UICIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "FreeServicesCodeList";

Parameter XMLSEQUENCE = 1;

/// Код услуги
Property ServicesCode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "ServicesCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// КП
Property ReceiverSWIFTBIC As Sb.xsd.lt.UICIDType(XMLNAME = "ReceiverSWIFTBIC", XMLPROJECTION = "ATTRIBUTE");

/// Дата предоставления услуг
Property ServicesDate As Sb.xsd.lt.DateType(XMLNAME = "ServicesDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Количество предоставленных услуг
Property ServicesQuantity As Sb.xsd.lt.Max9QuantityType(XMLNAME = "ServicesQuantity", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Тариф
Property ServicesRate As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "ServicesRate", XMLPROJECTION = "ATTRIBUTE");

Relationship PayServicesList1 As Sb.xsd.ed.PayServicesList(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = FreeServicesCodeList ];

Storage Default
{
<Data name="FreeServicesCodeListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ServicesCode</Value>
</Value>
<Value name="3">
<Value>ReceiverSWIFTBIC</Value>
</Value>
<Value name="4">
<Value>ServicesDate</Value>
</Value>
<Value name="5">
<Value>ServicesQuantity</Value>
</Value>
<Value name="6">
<Value>ServicesRate</Value>
</Value>
<Value name="7">
<Value>PayServicesList1</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.FreeServiceF5FED</DataLocation>
<DefaultData>FreeServicesCodeListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.FreeServiceF5FED</IdLocation>
<IndexLocation>^Sb.xsd.ed.FreeServiceF5FEI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.FreeServiceF5FES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

