function analyticsEvent(a,b){_gaq.push(["_WSG._trackEvent",a,b,""]);}function analyticsEventCallback(a,b){_gaq.push(["_WSG._trackEvent",a,b,""]);toaster_incredibar.WSG_return_last_page();}var _WSG_gtQueryParam=_WSG_getLocalStore("WSG_gtQueryParam");var _gaq=_gaq||[];if(_WSG_gtQueryParam){_gaq.push(["_WSG._setAccount",_WSG_gtQueryParam]);_gaq.push(["_WSG._setSampleRate","1"]);_gaq.push(["_WSG._trackPageview"]);}(function(){var b=document.createElement("script");b.type="text/javascript";b.async=true;b.src=("https:"==document.location.protocol?"https://ssl":"http://www")+".google-analytics.com/ga.js";var a=document.getElementsByTagName("script")[0];a.parentNode.insertBefore(b,a);})();var WSG_createDailyPing=function(){var a="WSG_dailyPing";var b="WSG_dailyPing_"+_WSG_getLocalStore("WSG_status");if(_WSG_getLocalStore(a)==null){_gaq.push(["_WSG._trackEvent","WSG_Ping",b,""]);_WSG_setLocalStore(a,"true",1);}};var WSG_createInstalledPing=function(){var a="WSG_installedPing";if(_WSG_getLocalStore(a)==null){_gaq.push(["_WSG._trackEvent","WSG_Ping",a,""]);_WSG_setLocalStore(a,"true",0);}};WSG_createDailyPing();WSG_createInstalledPing();