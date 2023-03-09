$(function () {
	$(".form").submit(function (event) {
		var formData = {
			name: $("#name").val(),
			email: $("#email").val(),
			subject: $("#subject").val(),
		};

		$.ajax({
		type: 'POST',
		url: 'formularz.php',
		data: formData,
		dataType: "json",
		encode: true,
		}).done(function (data) {
			if (data.errors) {
				if (data.errors.name) {
					$("#successInfo").css("color", "red");
					$("#successInfo").text("Uzupełnij formularz");
				};
				if (data.errors.email) {
					$("#successInfo").css("color", "red");
					$("#successInfo").text("Uzupełnij formularz");
				};
				if (data.errors.subject) {
					$("#successInfo").css("color", "red");
					$("#successInfo").text("Uzupełnij formularz");
				};
			} else {
				$("#successInfo").css("color", "green");
				$("#successInfo").text("Dziękujemy za kontakt");
			}
		});
		
		event.preventDefault();
	});
	$(".rollOut").click(function () {
		$(".fadeOut").slideToggle(800);
		if ($(".about").height()==500) {
			$(".about").animate({"maxHeight":"1400px"}, 1000);
		} else {
			$(".about").animate({"maxHeight":"500px"}, 1000);
		}
		setTimeout( function() {
			$(".rollOut").toggleClass("rotated");
		},500);
		
	})
})

window.onresize = fun;
window.onload = fun;

function fun() {
	$("body").width(window.innerWidth);
	$(".rollOut").width(window.innerWidth/50+24);
	$(".rollOut").height(window.innerWidth/50+24);
	$(".rollOut").css({left: window.innerWidth*0.49-12});
}