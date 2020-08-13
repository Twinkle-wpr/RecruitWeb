//显示boss的注册界面 改变mainRight
function bossRegister(){
  $.ajax({
    type:"get",
    url:"/RecruitWeb/boss/indexMainRight_bossRegister.jsp",
    success:function(data){
      $(".agile_info_right").html(data);
    }
  });
}