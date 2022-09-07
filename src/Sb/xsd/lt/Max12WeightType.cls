/// Масса. В сотых грамма. Положительное целое число до 12 разрядов.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_leaftypes_v2019.2.0.xsd
Class Sb.xsd.lt.Max12WeightType Extends %Numeric [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:leaftypes:v2.0";

Parameter XMLFractionDigits = 0;

Parameter XMLPATTERN = "([0]|([1-9]\d{0,}))";

Parameter XMLTotalDigits = 12;

}

