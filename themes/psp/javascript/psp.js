function rems(n) {
	return n * parseInt(
		$(document.getElementsByTagName('html')[0]).css('fontSize')
	);
}

function positionFooter () {
	var main = document.getElementById('main'),
		mainC = main.getElementsByClassName('c')[0],
		footer = document.getElementById('footer');

	$(footer).css('marginTop', $(mainC).outerHeight() - $(main).outerHeight() + rems(5)).show();
}

function makeContainerSlimIfNeeded () {
	var asides = $('#main:not(.slim) > .c aside');

	if (asides.length > 0) {
		var mc = $('#main > .c');
		mc.addClass('slim');
		$('.asides').html( asides.clone() );
		asides.remove();
	}
}

function fixUserForms () {
	$('fieldset .field.checkbox').each(function (i) {
		var checkboxField = $(this);
		var label = checkboxField.find('label');

		checkboxField.prepend(label.clone());
		label.remove();
		checkboxField.css('paddingBottom', '16px');
	});
}

window.onload = function () {
	makeContainerSlimIfNeeded();
	positionFooter();
	fixUserForms();
}

window.onresize = function () {
	makeContainerSlimIfNeeded();
	positionFooter();
}

$(document).on('click', 'input[type="submit"]', function () {
	setTimeout(positionFooter, 500);
});
