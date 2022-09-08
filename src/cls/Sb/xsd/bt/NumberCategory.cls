/// Число. Числовая информация, определенная последовательностью положительных целых чисел. Для нее не нужны единицы измерения.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_basetypes_v2018.3.0.xsd
Class Sb.xsd.bt.NumberCategory Extends %Integer [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:basetypes:v2.0";

Parameter XMLPATTERN = "[\-]?[1-9]\d{0,}|[0]";

}

