/// Numeric. Percent. Positive number, up to 7 digits, up to 4 decimals.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_leaftypes_v2019.2.0.xsd
Class Sb.xsd.lt.PercentNumberType Extends %Numeric [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:leaftypes:v2.0";

Parameter XMLFractionDigits = 4;

Parameter XMLPATTERN = "([0]|([1-9]\d{0,2}))([.]\d{0,4})?";

Parameter XMLTotalDigits = 7;

}

