$(document).ready(function () {

    $("input.numberic").each(function (i, obj) {
        var o = $(this);
        o.val(addcommas(ConvertScientificToDecimal(o.val())));
    });

});

function SetMoney(e, obj) {
    var txt = $(obj);
    txt.val(addcommas(ConvertScientificToDecimal(txt.val())));
}

function SetFloatNumber(obj) {
    var txt = $(obj);
    return parseFloat(txt.val().replace('/', '.'));
}

function SetValueFloatNumber(obj) {
 
    return parseFloat(obj.replace('/', '.'));
}


function addcommas(sValue) {
    if (sValue == undefined)
        return 0;

    var arr = sValue.split('.');
    var s1 = arr[0];
    var s2 = null;
    if (arr.length > 1) {
        s2 = GetNumber(arr[1]);
    }
    var sRegExp = new RegExp('(-?[0-9]+)([0-9]{3})');
    var unicode = new RegExp('^[\u0600-\u06FF]');

    var commExp = new RegExp(',');



    s1 = GetNumber(s1);
    while (commExp.test(s1)) {

        s1 = s1.replace(commExp, '');
    }

    while (sRegExp.test(s1)) {
        s1 = s1.replace(sRegExp, '$1,$2');
    }
    if (s2 != null) {
        return s1 + "." + s2;
    }
    else {
        return s1;
    }

}
function NullCheckerSTSLOMFB(temp) {
    if (temp == "" || temp == undefined)
        return "0".toString();
    return temp.toString();
}

function addcommas2(sValue) {

    //sValue /= 1000000;
    var sValue = sValue.toString();
    var sRegExp = new RegExp('(-?[0-9]+)([0-9]{3})');
    var commExp = new RegExp(',');
    while (commExp.test(sValue)) {
        sValue = sValue.replace(commExp, '');
    }
    while (sRegExp.test(sValue)) {
        sValue = sValue.replace(sRegExp, '$1,$2');
    }
    return sValue;
}

function GetNumber(rawData) {
    var temp = "";
    var num = new RegExp('[0-9]');
    while (num.test(rawData)) {

        temp += rawData.match(num);

        rawData = rawData.replace(num, '');
    }
    return temp;
}

function ConvertScientificToDecimal(SciNote) {
    if (SciNote.toString().match('E') != null) {
        var a = SciNote.toString().split('E')[0];
        var power = SciNote.toString().split('E')[1];
        // return (a * Math.pow(10, power)).toString();
        return parseFloat((SciNote)).toPrecision(2);
    }
    else
        return SciNote;
}