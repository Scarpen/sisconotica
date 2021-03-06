// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
//= require maskedinput
$(function() {
	$("#cpf").mask("999.999.999-99");
	$(".telefone").mask("(99)9999-9999");
	$("#cep").mask("99999-999");
  $("#produtos th a, #produtos.pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#produtos_search input").keyup(function() {
    $.get($("#produtos_search").attr("action"), $("#produtos_search").serialize(), null, "script");
    return false;
  });

});

