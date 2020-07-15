<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<style rel="stylesheet">
  .n-footer{
    width: 1000px;
    height: 80px;
    margin-top: 0;
    text-align: center;
  }
  .nf-link-area li{
    display: inline-block;
  }
  .nf-link-area a{
    display: inline-block;
    padding: 0 10px;
    font-size: 14px;
    color: #757575;
  }
  .nf-link-area a:hover,.nf-link-area a.current{
    color: #333;
  }
  .nf-link-area span{
    display: inline-block;
  }
  .nf-intro{
    color: #757575;
    padding: 10px;
  }
  .nf-intro a{
    color: #757575;
  }

  *{
    margin: 0;
    padding: 0;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }
  /*版心*/
  .w{
    width: 1226px;
    margin: 0 auto;
  }
  li{
    list-style: none;
  }
  a{
    text-decoration: none;
  }
  input,button,img,fieldset{
    border: 0;
  }
  input{
    outline: none;
  }
  i,em{
    font-style: normal;
  }
</style>
<div class="b_btm_bg b_btm_c" id="footer">

  <!--登录底部开始-->
  <div id="custom_display_4" class="n-footer">
    <div class="nf-link-area">
      <ul>
        <li><a href="#" class="current">简体</a><span>|</span></li>
        <li><a href="#">繁体</a><span>|</span></li>
        <li><a href="#">English</a><span>|</span></li>
        <li><a href="#">常见问题</a><span>|</span></li>
        <li><a href="#">隐私政策</a></li>
      </ul>
    </div>
    <p class="nf-intro">
      我的公司版权所有-京ICP备00000-
      <a class="begin-record-link" href="#">
        <span><img src="images/ghs.png"></span>京公网安备000000号
      </a>
      -京ICP证0000000号
    </p>
  </div>
</div>