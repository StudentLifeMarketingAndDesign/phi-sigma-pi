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

window.onload = function () {
	makeContainerSlimIfNeeded();
	positionFooter();
}

window.onresize = function () {
	makeContainerSlimIfNeeded();
	positionFooter();
}
