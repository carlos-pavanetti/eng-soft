// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {
  $('.dropdown-menu').click(function(e) {
    return e.stopPropagation();
  });

  $(".alert").fadeTo(6000, 500).slideUp(1000, function(){
    $(".alert").alert('close');
  });

  $(document).bind("keydown", "ctrl+z", function() {$('#console').toggle()});

  $(".tipo_anuncio_radio").click(function(event) {
    if (event.target.value == 'troca') {
      $("label[for='anuncio_troco_por']").text("Troco Por");
      $("#anuncio_troco_por").attr('name', "anuncio[troco_por]");
      $("#anuncio_troco_por").attr('placeholder', "Livros desejados");
    } else {
      $("label[for='anuncio_troco_por']").text("Prazo de Empréstimo");
      $("#anuncio_troco_por").attr('name', "anuncio[prazo_emprestimo]");
      $("#anuncio_troco_por").attr('placeholder', "Quantos dias");
    }
  });
});
