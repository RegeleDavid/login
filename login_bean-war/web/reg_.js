$(function (){
//    alert("asd");
    var m_j=$("#megegyszer_a_jelszo");
    var n=$("#nev");
    var j=$("#jelszo");
    var kiir=$("#kiir");
    var szo="";
    
    function  valid(e, tag, cim){
        if(tag.val()==""){
            e.preventDefault();
            tag.css("border", "1px solid red");
            szo+=cim+" nincs kitoltve, ";
        }
    }
    function  eredeti(tag){
        tag.css("border", "1px solid gray");
    }
    function  hossz(tag, e){
        if(tag.val().length<5){
            e.preventDefault();
            tag.css("border", "1px solid blue");
        }
    }
    
    function edenlo(tag1, tag2, e){
        if(tag1.val()!=tag2.val()){
            e.preventDefault();
            szo+="2 jelszo nem egyezik meg, ";
        }
    }
    function asd(tad, e){
        var s="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}";
        if(!tad.val().match(s)){
            e.preventDefault();
            szo+="a jelszo nem egyezik meg az illeztésel, ";
        }
    }
    $("#reg").click(function (e){
        eredeti(n);
        eredeti(j);
        eredeti(m_j)
        hossz(j, e);
        valid(e, n,"nev");
        valid(e, j,"jelszo");
        valid(e, m_j,"megegyszer a jelszo");
        asd(j, e);
        edenlo(j, m_j,e);
        kiir.text(szo)
    });
});


