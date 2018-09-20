/**
 * Property of Department of Information and Communication Technology
 * @author National Government Portal Project team
 */

(function($, Liferay, AUI){
AUI().ready('pst-module', function(A){

  // embed pst
  (function(c,d){var a,b=c.getElementById(d);a=c.createElement("script");a.id="gwt-pst-jsdk";a.src="http://gwhs.i.gov.ph/pst/gwtpst.js?"+(new Date).getTime();b&&b.parentNode.insertAfter(a,b)})
  (document,"pst-time");
  var gwtpstReady=function(){new gwtpstTime({elementId:"pst-time",keyboardTrap:!0})};

  var duration = 500;
  var showScrollHintDelay = 5000;
  var hasScrolled = false;
  var scrollHint = $('#scroll-hint');
  var backToTop = $('#back-to-top');
  var mcp = $('#content').position().top;
  var offset = 220;
  var a11yHighContrastBtn = $('.a11y-high-contrast');
  var a11yContentBtn = $('.a11y-content');
  var a11yFooterBtn = $('.a11y-footer');
  var footerLoc = $('#f').position().top + $('#f').height();
  var templateDirectory = '/o/agency-theme/css';

  if($('#ControlMenu').length > 0){
    mcp = mcp - $('#ControlMenu').height();
  }

  // TODO: if the user haven't scrolled for a specfic amount of time, show scroll hint button
  $(window).scroll(function(){
    if(!hasScrolled){
      hasScrolled = true;
      scrollHint.fadeOut();
    }
    if ($(this).scrollTop() > offset) { backToTop.fadeIn(); } 
    else { backToTop.fadeOut(); }
  });

  scrollToContent = function(event){
    event.preventDefault();
    $('html, body').animate({scrollTop: mcp}, duration);
    return false;
  }

  scrollHint.click(scrollToContent);
  a11yContentBtn.click(scrollToContent);
  a11yFooterBtn.click(function(event){
    event.preventDefault();
    $('html, body').animate({scrollTop: footerLoc}, duration);
    return false;
  });

  backToTop.click(function(event) {
    event.preventDefault();
    $('html, body').animate({scrollTop: 0}, duration);
    return false;
  });

  // TODO: change the placeholder for gov.ph search button
  $('#_com_liferay_portal_search_web_portlet_SearchPortlet_keywords').attr('placeholder', 'Search Portal');

  // for a specific time, show the scroll hint button
  init = function(){
    setTimeout(function(){
      if(!hasScrolled){
        scrollHint.fadeIn();
      }
    }, showScrollHintDelay);
  }

  init();
});
})(jQuery, Liferay, AUI);