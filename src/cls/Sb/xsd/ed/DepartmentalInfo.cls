/// Departmental Information (fields 101, 104-110).
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.DepartmentalInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.CBCIDTextType, Sb.xsd.lt.DrawerStatusCodeTextType, Sb.xsd.lt.OKATOIDTextType, Sb.xsd.lt.TaxDocDateCodeTextType, Sb.xsd.lt.TaxDocIDTextType, Sb.xsd.lt.TaxPaytKindCodeTextType, Sb.xsd.lt.TaxPaytReasonCodeTextType, Sb.xsd.lt.TaxPeriodCodeTextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "DepartmentalInfo";

Parameter XMLSEQUENCE = 1;

/// Field 101.
Property DrawerStatus As Sb.xsd.lt.DrawerStatusCodeTextType(XMLNAME = "DrawerStatus", XMLPROJECTION = "ATTRIBUTE");

/// Field 104.
Property CBC As Sb.xsd.lt.CBCIDTextType(XMLNAME = "CBC", XMLPROJECTION = "ATTRIBUTE");

/// Field 105.
Property OKATO As Sb.xsd.lt.OKATOIDTextType(XMLNAME = "OKATO", XMLPROJECTION = "ATTRIBUTE");

/// Field 106.
Property PaytReason As Sb.xsd.lt.TaxPaytReasonCodeTextType(XMLNAME = "PaytReason", XMLPROJECTION = "ATTRIBUTE");

/// Field 107.
Property TaxPeriod As Sb.xsd.lt.TaxPeriodCodeTextType(XMLNAME = "TaxPeriod", XMLPROJECTION = "ATTRIBUTE");

/// Field 108.
Property DocNo As Sb.xsd.lt.TaxDocIDTextType(XMLNAME = "DocNo", XMLPROJECTION = "ATTRIBUTE");

/// Field 109.
Property DocDate As Sb.xsd.lt.TaxDocDateCodeTextType(XMLNAME = "DocDate", XMLPROJECTION = "ATTRIBUTE");

/// Field 110.
Property TaxPaytKind As Sb.xsd.lt.TaxPaytKindCodeTextType(XMLNAME = "TaxPaytKind", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="DepartmentalInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DrawerStatus</Value>
</Value>
<Value name="3">
<Value>CBC</Value>
</Value>
<Value name="4">
<Value>OKATO</Value>
</Value>
<Value name="5">
<Value>PaytReason</Value>
</Value>
<Value name="6">
<Value>TaxPeriod</Value>
</Value>
<Value name="7">
<Value>DocNo</Value>
</Value>
<Value name="8">
<Value>DocDate</Value>
</Value>
<Value name="9">
<Value>TaxPaytKind</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.DepartmentalInfoD</DataLocation>
<DefaultData>DepartmentalInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.DepartmentalInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.DepartmentalInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.DepartmentalInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

