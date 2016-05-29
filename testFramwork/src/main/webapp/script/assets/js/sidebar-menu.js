(function ($) {
  $.fn.sidebarMenu = function (options) {
    options = $.extend({}, $.fn.sidebarMenu.defaults, options || {});
    var target = $(this);
    target.addClass('nav');
    target.addClass('nav-list');
    if (options.data) {
      init(target, options.data);
    }
    else {
      if (!options.url) return;
      $.getJSON(options.url, options.param, function (data) {
        init(target, data);
      });
    }
    var url = window.location.pathname;
    function init(target, data) {
      $.each(data, function (i, item) {
        var li = $('<li id="li'+item.id+'"></li>');
        var a = $('<a></a>');
        var icon = $('<i></i>');
        icon.addClass(item.moduleIcon);
        var text = $('<span></span>');
        text.addClass('menu-text').text(item.moduleName);
        a.append(icon);
        a.append(text);
        if (item.menus&&item.menus.length>0) {
          a.attr('href', '#');
          a.addClass('dropdown-toggle');
          li.append(a);
          var menus = $('<ul></ul>');
          if(ulIsContains(options,item)){
        	  menus = $('<ul style="display:block"></ul>')
          }
          menus.addClass('submenu');
          init(menus, item.menus);
          li.append(menus);
        }
        else {
        	var url = "";
        	if(item.moduleUrl != null && item.moduleUrl!=""){
        		url = $("#pageUrl").val()+'/' + item.moduleUrl;
        	}
        	a.attr('href', url);
	        a.attr('id', "option_"+item.id);
	        li.append(a);
	        if(options.isShow){
        		if(options.isShow == item.moduleUrl.replace(new RegExp(/\//g),'')){
        			li.addClass('active');
        		}
        	}
        }
        target.append(li);
      });
    }
  }
 
  $.fn.sidebarMenu.defaults = {
    url: null,
    param: null,
    data: null
  };
})(jQuery);

var addTabs = function(options){
	$.get(options.url,{},function(data){
		$("#maincontent").html(data);
	},"text")
}
var ulIsContains = function(options,item){
	if(item.menus&&item.menus.length>0&&options.isShow){
		for(var i =0 ;i<item.menus.length;i++){
			if(item.menus[i].moduleUrl.replace(new RegExp(/\//g),'') == options.isShow){
				return true;
			}else{
				if(ulIsContains(options,item.menus[i])){
					return true;
				}
			}
			
		}
	}
	return false;
}