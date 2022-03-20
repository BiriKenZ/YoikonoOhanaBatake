// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets

// モーダルの表示
$(function () {
  $("#btn").on("click", function () {
    $(".modalsearch,.masksearch").fadeIn();
  });
  $(".modalsearch-close,.masksearch").on("click", function () {
    $(".modalsearch,.masksearch").fadeOut();
  });
});

// 高さを整える関数
$(function () {
  // 高さの最大値を代入するための変数h
  var h = 0;

  // それぞれの要素の高さを調べる
  $("li.todo").each(function () {
    // 要素の高さと変数hの値を比較し、大きい方を変数hに代入
    if ($(this).height() > h) {
      h = $(this).height() + 40;
    }
  });

  // 要素の高さを変数hの値に統一します
  $("li.todo").css("height", h + "px");
});
