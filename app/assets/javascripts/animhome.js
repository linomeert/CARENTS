var Expand = (function() {
  var container = $('.strips');
  var tiles = $('.strips__strip');
  var tileLink = $('.strips__strip > .strip__content');
  var tileText = tileLink.find('.strip__inner-text');

  var expanded  = false;

  var open = function() {

    var tile = $(this).parent();

    if (!expanded) {
      tiles.addClass('under')
      tile.removeClass('under');
      tile.addClass('strips__strip--expanded');
      // add delay to inner text
      //tileText.css('transition', 'all .5s .3s cubic-bezier(0.23, 1, 0.32, 1)');
      expanded = true;
    }
  };

  var close = function() {
    if (expanded) {
      tiles.removeClass('strips__strip--expanded');
      // remove delay from inner text
      tileText.css('transition', 'all 0.15s 0 cubic-bezier(0.23, 1, 0.32, 1)');
      expanded = false;
    }
  }

  var bindActions = function() {
    tileLink.on('click', open);
  };

  var init = function() {
    $(window).click(() => {
      console.log("window click", expanded)
      if(expanded){
        close()
      }
    })

    container.click(e => {
      console.log("container click")
      e.stopPropagation()
    })

    bindActions();
  };

  return {
    init: init
  };

  }());

Expand.init();
