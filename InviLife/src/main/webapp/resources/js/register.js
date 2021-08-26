
//입력 박스 클릭 시 이벤트 (focus, blur)

$(document).ready(function() {
 
    $(".inputBox").focus(function() {
        $(this).parent(".inputBorder").css({background: '#fff'});
    }).blur(function() {
        if(this.value == "") {
            $(this).parent(".inputBorder").css({background: '#f5f5f5'});
        } else {
            $(this).parent(".inputBorder").css({background: '#fff'});
        }
    });

    $(".c_textarea").focus(function() {
        $(this).css({background: '#fff'});
    }).blur(function() {
        if(this.value == "") {
            $(this).css({background: '#f5f5f5'});
        } else {
            $(this).css({background: '#fff'});
        }
    })
});


