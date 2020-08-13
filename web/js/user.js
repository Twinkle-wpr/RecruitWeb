//修改个人信息
function userMsg(){
    $.ajax({
        type:"get",
        url:"/RecruitWeb/commonUser/userMsg.jsp",
        success:function(data){
            $(".userMain").html(data);
        }
    });
}