#!perl -T

use Test::More tests => 34;
use Archive::Har();
use JSON();

my $har = Archive::Har->new();

my $firebug_get_string = <<'_FIREBUG_RESULTS_';
{
  "log": {
    "version": "1.1",
    "creator": {
      "name": "Firebug",
      "version": "1.9"
    },
    "browser": {
      "name": "Firefox",
      "version": "11.0"
    },
    "pages": [
      {
        "startedDateTime": "2012-03-23T12:35:23.920+11:00",
        "id": "page_16683",
        "title": "http archive specification at DuckDuckGo",
        "pageTimings": {
          "onContentLoad": 2939,
          "onLoad": 8701
        }
      }
    ],
    "entries": [
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:23.920+11:00",
        "time": 1108,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/?q=http+archive+specification",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [
            {
              "name": "q",
              "value": "http archive specification"
            }
          ],
          "headersSize": 394,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:11 GMT"
            },
            {
              "name": "Content-Type",
              "value": "text/html; charset=UTF-8"
            },
            {
              "name": "Transfer-Encoding",
              "value": "chunked"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Fri, 23 Mar 2012 01:32:12 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=1"
            },
            {
              "name": "Content-Encoding",
              "value": "gzip"
            }
          ],
          "content": {
            "mimeType": "text/html",
            "size": 6771,
            "text": "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\"><html><head><meta name=\"robots\" content=\"noindex,nofollow\"><meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\"><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge, chrome=1\"><title>http archive specification at DuckDuckGo</title><link rel=\"stylesheet\" href=\"/s422.css\" type=\"text/css\"><style id=\"DDG\" type=\"text/css\"></style><link title=\"DuckDuckGo\" type=\"application/opensearchdescription+xml\" rel=\"search\" href=\"/opensearch_ssl.xml\"><link rel=\"image_src\" href=\"/assets/logo_homepage.normal.v101.png\"/><link rel=\"apple-touch-icon\" href=\"/assets/logo_icon128.v101.png\"/><link rel=\"shortcut icon\" href=\"/favicon.ico\"><script type=\"text/javascript\">var fq,r1c,r2c,r3c,ric,rfq,rq,rds,rt,y,y1,ti,tig,ka,kb,kc,kd,ke,kf,kg,kh,ki,kj,kk,kl,km,kn,ko,kp,kq,kr,ks,kt,ku,kv,kw,kx,ky,kz,k1,k2,k3,k4,k5,k6,k7,k8,k9,kaa,kab,kac,kad,kae,kaf,kag,kah,kai,kaj,kak,kal,kam,kan,kao,kap,kaq,kar,kas,kat,kau,kav,kaw,kax,kay,kaz;fq=0;fd=1;it=0;iqa=0;iqm=0;iqs=0;iqq=0;qw=3;r1hc=0;r1c=0;r2c=0;r3c=0;ric=1;rq='http%20archive%20specification';rfq=0;rt='';ra='';rv='';rad='';rds=30;rs=0;kl='';kp='';ks='';kw='';ka='';kt='';ky='';kk='';kf='';kc='';ke='';kr='';ko='';kj='';kz='';kg='';kh='';kd='';ki='';kn='';kb='';km='';ku='';kq='';kv='';kx='';k1='';k2='';k3='';k4='';k5='';k6='',k7='',k8='',k9='';kaa='';kab='';kac='';kad='';kae='';kaf='';kag='';kah='';kai='';kaj='';kak='';kal='';kam='';kan='';kao='';kap='';kaq='';kar='';kas='';kat='';kau='';kav='';kaw='';kax='';kay='';kaz='';</script><meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\" /><meta name=\"HandheldFriendly\" content=\"true\" /><meta name=\"apple-mobile-web-app-capable\" content=\"yes\" /></head><body class=\"yui-skin-sam\"><input id=\"state_hidden\" name=\"state_hidden\" type=\"text\" size=\"1\"><span class=\"hide\">Ignore this box please.</span><div id=\"spacing_hidden_wrapper\"><div id=\"spacing_hidden\"></div></div><div id=\"add_to_browser\" class=\"add_to_browser\"></div><script type=\"text/javascript\" src=\"/d724.js\"></script><div id=\"header_wrapper\"><div id=\"header\"><div id=\"header_content_wrapper\"><div id=\"header_content\"><div class=\"clear\"></div><a tabindex=\"-1\" href=\"/?t=\"><div id=\"header_logo\"></div></a><form id=\"search_form\" name=\"x\" action=\"/\" onSubmit=\"return nbr()\"><div id=\"search_elements_hidden\"></div><div id=\"search_wrapper\"><input id=\"search_button\" type=\"submit\" tabindex=\"3\" value=\"\"/><a id=\"search_dropdown\" href=\"javascript:;\" tabindex=\"4\" onClick=\"nbc(1);\"></a></div><input id=\"search_form_input_clear\" type=\"button\" tabindex=\"2\" value=\"\"/><input type=\"text\" name=\"q\" tabindex=\"1\" autocomplete=\"off\" id=\"search_form_input\" onFocus=\"if ('rc' in window) {nua('nro',rc)};fq=1;\" onBlur=\"fq=0\" onclick=\"if (this.value=='put search terms here') {this.value='';this.style.color='#000000';}\" value=\"http archive specification\"></form><div id=\"header_button_wrapper\" onclick=\"DDG.toggle('header_button_menu')\"><ul id=\"header_button\"><li><div id=\"header_button_menu_wrapper\"><a class=\"header_button_menu_item\" id=\"header_button_menu_title\" href=\"javascript:;\">More</a><ul id=\"header_button_menu\"><li><a href=\"/settings.html\" tabindex=\"-1\"><img src=\"/f2/us.png\" class=\"inline\"> Settings</a></li><li><a href=\"/goodies.html\" tabindex=\"-1\">Goodies</a></li><li><a href=\"/about.html\" tabindex=\"-1\">About</a></li><li><a href=\"http://help.duckduckgo.com/\" tabindex=\"-1\">Help</a></li><li><a href=\"/feedback.html\" tabindex=\"-1\">Feedback</a></li><li class=\"header_button_menu_header\">PRIVACY</li><li><a href=\"http://donttrack.us/\" tabindex=\"-1\">DontTrack</a></li><li><a href=\"http://dontbubble.us/\" tabindex=\"-1\">DontBubble</a></li><li><a href=\"/privacy.html\" tabindex=\"-1\">Policy</a></li><li class=\"header_button_menu_header\">COMMUNITY</li><li><a href=\"https://dukgo.com/\" tabindex=\"-1\">Platform</a></li><li><a href=\"http://duck.co/\" tabindex=\"-1\">Forum</a></li><li><a href=\"http://webchat.freenode.net/?channels=duckduckgo\" tabindex=\"-1\">Chat</a></li><li><a href=\"/spread.html\" tabindex=\"-1\">Spread</a></li></ul></div></li></ul></div><div class=\"clear\"></div></div></div></div></div><div id=\"bang_wrapper\"><select id=\"bang\" size=\"2\" onChange=\"if (ip) nbb(this);\" onClick=\"if (!ip) nbb(this);\" onBlur=\"nbc(1);\"></select></div><div id=\"content_wrapper\"><div id=\"content\"><div id=\"side_wrapper\"><div id=\"side_wrapper2\"><div id=\"side\"><div id=\"side_sponsored\" class=\"hide\"></div><div id=\"side_suggestions\" class=\"hide\"></div><div id=\"keyboard_shortcuts\" class=\"hide\"><div class=\"spacer_bottom_7\">Search Syntax</div>s:d &nbsp; &nbsp; sort by date<br>r:uk &nbsp; &nbsp; uk region<br>site: &nbsp; &nbsp; domain search<br>\\ search &nbsp; &nbsp; first result<div id=\"keyboard_shortcuts_more\" class=\"spacer_top_3\"><a tabindex=\"-1\" href=\"javascript:;\" onclick=\"nsh('keyboard_shortcuts_more')\">More...</a></div><div id=\"keyboard_shortcuts_more_hidden\" class=\"hide\"><br>r:n &nbsp; &nbsp; turn off region<br>!a search &nbsp; &nbsp; search amazon<br>site:uk &nbsp; &nbsp; .uk pages<br>f: &nbsp; &nbsp; find files<br>t: &nbsp; &nbsp; within title<br>b: &nbsp; &nbsp; within body<br><a target=\"_blank\" href=\"http://help.duckduckgo.com/customer/portal/articles/300304\">More explanation...</a></div></div><div id=\"feedback_wrapper\" class=\"k_float k_bottom k_right\"><a title=\"Give feedback\" tabindex=\"-1\" target=\"_new\" href=\"/feedback.html\" rel=\"nofollow\"><div id=\"feedback\"></div></a></div></div></div></div><div id=\"zero_click_wrapper\" style=\"display:none;visibility:hidden;\"><div id=\"zero_click\"><div id=\"zero_click_wrapper2\"><div id=\"zero_click_plus_wrapper\"><a href=\"javascript:;\" onClick=\"nra4()\" id=\"zero_click_plus\">&nbsp;</a></div><div id=\"zero_click_header\" style=\"display:none;\"></div><div id=\"zero_click_image\" style=\"display:none;\"></div><div id=\"zero_click_abstract\" style=\"display:none;\"></div><div class=\"clear\">&nbsp;</div></div></div></div><div id=\"links_wrapper\"><noscript> &nbsp; &nbsp; This page requires JavaScript. Get the non-JS version <a href=\"https://duckduckgo.com/html/?q=http%20archive%20specification\">here</a>.</noscript><div id=\"links\"></div></div><div id=\"powered_by_wrapper\"></div><div id=\"bottom_spacing2\"> </div></div></div><script type=\"text/javascript\">nip();</script><script type=\"text/javascript\">tig=new YAHOO.util.ImageLoader.group('body',null,0.01);</script><script type=\"text/JavaScript\">function nrji() {nrj('/a.js?q=http%20archive%20specification&p=1');nrj('/d.js?q=http%20archive%20specification&l=us-en&p=1&s=0');nrj('/s.js?q=http%20archive%20specification');};if (ir) window.addEventListener('load', nrji, false);else nrji();</script><div id=\"z2\"> </div><script type=\"text/JavaScript\">if (ip) setTimeout('nuo(1)',500);</script><div id=\"z\"> </div></body></html>"
          },
          "redirectURL": "",
          "headersSize": 253,
          "bodySize": 2665
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 31,
          "connect": 796,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:25.090+11:00",
        "time": 281,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/s422.css",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "text/css,*/*;q=0.1"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 357,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:11 GMT"
            },
            {
              "name": "Content-Type",
              "value": "text/css"
            },
            {
              "name": "Last-Modified",
              "value": "Tue, 13 Mar 2012 02:13:52 GMT"
            },
            {
              "name": "Transfer-Encoding",
              "value": "chunked"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:11 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000"
            },
            {
              "name": "Vary",
              "value": "Accept-Encoding"
            },
            {
              "name": "Content-Encoding",
              "value": "gzip"
            }
          ],
          "content": {
            "mimeType": "text/css",
            "size": 25703,
            "text": ".invisible{visibility:hidden;}.k_float{z-index:9999999;position:fixed!important;position:absolute;}.k_bottom{bottom:0;_top:expression(eval(document.compatMode && document.compatMode=='CSS1Compat') ? document.documentElement.scrollTop+(document.documentElement.clientHeight-this.clientHeight) - 1:document.body.scrollTop+(document.body.clientHeight-this.clientHeight) - 1);}.k_right{right:2px;}.k_left{left:0;}.k_top{top:0;_top:expression(eval(document.compatMode && document.compatMode=='CSS1Compat') ? document.documentElement.scrollTop:document.body.scrollTop);}html{color:#000;background:#fff;}body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,button,textarea,select,p,blockquote,th,td{margin:0;padding:0;}table{border-collapse:collapse;border-spacing:0;}fieldset,img{border:0;}address,button,caption,cite,code,dfn,em,input,optgroup,option,select,strong,textarea,th,var{font:inherit;}del,ins{text-decoration:none;}li{list-style:none;}caption,th{text-align:left;}h1,h2,h3,h4,h5,h6{font-size:100%;font-weight:normal;}q:before,q:after{content:'';}abbr,acronym{border:0;font-variant:normal;}sup{vertical-align:baseline;}sub{vertical-align:baseline;}legend{color:#000;}body{font:13px/1.231 arial,helvetica,clean,sans-serif;*font-size:small;*font:x-small;}select,input,textarea,button{font:99% arial,helvetica,clean,sans-serif;}table{font-size:inherit;font:100%;}pre,code,kbd,samp,tt{font-family:monospace;*font-size:108%;line-height:100%;}html{height:101%;background:#fdfdfd;color:#333;overflow-y:scroll;overflow-x:hidden;}body{font-size:105%;}input,body,a,select,#special_page_header,#zero_click_header,#did_you_mean,#search_form_input,#bang{font-family:\"Helvetica Neue\",\"Segoe UI\",Arial,sans-serif;}a{text-decoration:none;color:#1168cc;}a:visited{color:#6830bb;}a:hover,a:focus{text-decoration:underline;}a:focus{outline:none;}a.large{font-size:128.6%;}h1,h2,h3,h4,h5,h6{display:inline;}h1{font-weight:bold;}h2{font-weight:normal;}img{display:block;-ms-interpolation-mode:bicubic;}ul{padding-left:30px;padding-top:3px;}ul li{list-style:disc outside;}ol{padding-left:37px;padding-top:3px;}ol li{list-style:decimal outside;}sup,sub{height:0;line-height:1;vertical-align:baseline;_vertical-align:bottom;position:relative;font-size:71.4%;}sup{bottom:1ex;}sub{top:.5ex;}#search_form_input_homepage,#search_form_input,#search_wrapper,#search_wrapper_homepage{-moz-background-clip:padding;-webkit-background-clip:padding-box;background-clip:padding-box;}#content_wrapper,#header_content_wrapper{max-width:1027px;min-width:647px;}#special_page_header,#zero_click_header{*zoom:1;color:#444;background:#e9e9e9 url(\"assets/zero_click_header_bg.v101.png\") repeat-x;border-top-radius:6px;font-size:107.1%;border-bottom:1px solid #d1d1d1;padding:5px;padding-left:15px;-moz-border-radius-topright:6px;-moz-border-radius-topleft:6px;-webkit-border-top-right-radius:6px;-webkit-border-top-left-radius:6px;border-top-right-radius:6px;border-top-left-radius:6px;font-weight:bold;}#special_page_header:before,#zero_click_header:before,#special_page_header:after,#zero_click_header:after{content:\"\";display:table;}#special_page_header:after,#zero_click_header:after{clear:both;}#special_page_header,#zero_click_header h1 a,#special_page_header h1 a{color:#434343;font-weight:bold;}#did_you_mean{padding-bottom:15px;}#bang_wrapper{max-width:900px;min-width:520px;margin:0 auto;padding:0 0 0 160px;}#bang{position:fixed;width:175px;top:43px;left:373px;display:none;outline:0;font-size:83.3%;z-index:100;}#bang option:hover{background:#86cbf4;color:#000;}#bottom_spacing{clear:both;padding-bottom:775px;}#bottom_spacing2{clear:both;padding-bottom:225px;}#content_wrapper{position:relative;z-index:1;padding-top:15px;padding-right:50px;}#content{max-width:900px;min-width:520px;padding:50px 0 0 62px;padding-top:expression(\"50px\");_width:expression(\"600px\");}#content_homepage{padding-top:10px;margin:auto;max-width:600px;}#content_internal{padding-left:15px;font-size:95.2%;}#content_wrapper_homepage{margin:auto;max-width:600px;}#did_you_mean{padding-bottom:5px;padding-left:33px;border:1px solid #fff;padding-top:4px;padding-bottom:4px;margin-bottom:10px;}#error_homepage{clear:both;padding-top:20px;font-weight:bold;color:#f00;text-align:center;margin:auto;display:none;}#feedback_wrapper{display:none;padding-top:15px;padding-bottom:4px;}#feedback{background:url(\"assets/icon_feedback.v101.png\") no-repeat;cursor:pointer;height:19px;width:71px;float:left;margin-right:5px;}#feedback:active{background-position:0 -38px;}#footer_homepage{vertical-align:middle;background:#fbfbfb;border-top:1px solid #e5e5e5;bottom:0;font-size:13px;left:0;padding-top:7px;padding-bottom:7px;position:absolute;width:100%;}#footer_homepage_left{float:left;padding-left:15px;}#footer_homepage_right{float:right;padding-right:15px;}#footer_homepage_right a{color:#747474;border-left:1px dotted #999;height:27px;padding-left:10px;}#header_wrapper{display:none;position:fixed;z-index:2;left:0;right:0;width:100%;}#header_wrapper #header{background:#cd473b url(\"assets/header_bg.v101.png\") repeat-x;height:57px;min-width:560px;width:100%;-webkit-box-shadow:0 0 5px 0 rgba(0,0,0,0.20);-moz-box-shadow:0 0 5px 0 rgba(0,0,0,0.20);box-shadow:0 0 5px 0 rgba(0,0,0,0.20);}#header_wrapper #header #header_content_wrapper #header_content{max-width:900px;min-width:803px;margin:0;padding-left:85px;}#header_wrapper #header #header_content_wrapper #header_content #header_logo{float:left;width:40px;height:57px;margin:0 0 -100px -80px;background:url(\"assets/logo_header.v101.png\") no-repeat;}#header_wrapper #header #header_content_wrapper #header_content #header_logo img{width:98px;height:141px;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper{float:left;font-weight:normal;font-size:83.3%;margin-left:40px;margin-top:7px;width:70px;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper ul{padding:0;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button{background:url(\"assets/header_button_bg.v101.png\") repeat-x;border:1px solid #b24d26;border-bottom:1px solid #ca5945;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;height:37px;list-style:none;margin:0 auto;cursor:pointer;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button:active{background-position:0 -37px;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button li{display:block!important;list-style:none;float:left;margin:0!important;height:19px;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button a{display:block!important;margin:0 2px;border:1px solid transparent;border-bottom:0;padding:2px 3px 3px;color:#2b68b3;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper{position:relative;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper a.header_button_menu_item{outline:none;background:url(\"assets/header_button_triangle.v101.png\") no-repeat;background-position:right 15px;color:#fff;cursor:pointer;height:18px;margin-top:0;margin-right:7px;padding-left:7px;padding-right:15px;padding-top:8px;padding-bottom:10px;text-align:right;text-align:center;text-shadow:#85361f 0 -1px;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper a:hover,#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper a:focus{text-decoration:none!important;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper:hover #header_button_menu,#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper:focus #header_button_menu{left:auto;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper:hover a,#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper:focus a{color:#1168cc!important;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper:hover a.header_button_menu_item,#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper:focus a.header_button_menu_item{color:#fff!important;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper #header_button_menu{display:none;margin:0;float:left;position:fixed;background:#fff;border:1px solid #ddd;margin-left:-17px;margin-top:0;margin-right:0;-webkit-box-shadow:0 1px 3px 0 rgba(0,0,0,0.20);-moz-box-shadow:0 1px 3px 0 rgba(0,0,0,0.20);box-shadow:0 1px 3px 0 rgba(0,0,0,0.20);}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper #header_button_menu li{display:block!important;list-style:none;float:none;height:auto;font-weight:normal;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper #header_button_menu li.header_button_menu_header{background-color:#f7f7f7;color:#3f4651!important;letter-spacing:1px;font-size:78.6%;border-top:1px dotted #d1d3d6;border-bottom:1px dotted #d1d3d6;padding-top:6px;padding-bottom:6px;padding-left:7px;padding-right:10px;font-weight:bold!important;cursor:default;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper #header_button_menu a{display:block;padding-bottom:3px;padding-top:2px;padding-left:5px;margin:1px;background-color:#fff;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper #header_button_menu a:hover,#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper #header_button_menu a:focus{background-color:#1258ae;color:#fff!important;font-weight:bold;}#header_wrapper #header #header_content_wrapper #header_content #header_button_wrapper #header_button #header_button_menu_wrapper #header_button_menu:after{content:\"-\";font-size:1px;display:block;position:fixed;opacity:0;filter:progid:DXImageTransform.Microsoft.Alpha(Opacity=0);}#iframe_hidden{height:0;width:0;display:none;}#keyboard_shortcuts{clear:both;width:130px;}#links_wrapper{max-width:759px;}#links{padding-top:15px;width:86.5%;}#links a:focus{outline:none;text-decoration:none;}#loading{margin-left:29px;}#logo_internal{background:url(\"/assets/logo_words.v101.png\") no-repeat left 10px;height:63px;}#logo_homepage{background:url(\"/assets/logo_homepage.normal.v102.png\") no-repeat center top;margin:auto;padding-bottom:1px;margin-bottom:40px;margin-top:40px;height:161px;text-align:center;color:transparent;text-indent:-9999px;font-size:0;width:202px;}#official_site{padding-top:3px;}#powered_by_wrapper{display:none;}#powered_by{clear:right;font-size:11px;text-align:right;color:#777;padding-top:4px;padding-bottom:2px;}#powered_by a{color:#777;}#search_elements_hidden{display:none;height:0;}#search_form{float:left;width:554px;margin-left:-25px;border-bottom:1px solid #cc6a5f;border-left:0 solid #e37552;border-top:0 solid #ec9a77;border-right:0 solid #e37552;-moz-border-radius:5px;-webkit-border-radius:5px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;margin-top:7px;}#search_form_homepage{width:518px;margin:auto;text-align:left;}#search_dropdown{display:block;float:left;width:24px;height:37px;background:url(\"assets/search_dropdown.v102.png\");background-position:top right;outline:none;}#search_dropdown:active{background-position:right bottom;}#search_dropdown_homepage{display:block;float:left;width:23px;height:40px;background:url(\"assets/search_dropdown_homepage.v102.png\") no-repeat;background-position:top right;}#search_dropdown_homepage:active{background-position:right bottom;}#search_form_input{float:right;background:#fff;color:#222;width:446px;height:27px;padding:4px 6px 4px 8px;margin:0;outline:none;border:#835342 solid 1px;border-right:0;font-size:95.2%;-webkit-border-radius:3px 0 0 3px;-moz-border-radius:3px 0 0 3px;border-radius:3px 0 0 3px;-moz-border-radius:3px 0 0 3px;-webkit-border-top-left-radius:3px;-webkit-border-bottom-left-radius:3px;}#search_form_input_homepage{float:right;background:#fff;color:#222;width:430px;height:28px;padding:4px 6px 5px 6px;margin:0;outline:none;border:#8d8d8d solid 1px;border-right:0;font-size:18px;-webkit-border-radius:3px 0 0 3px;-moz-border-radius:3px 0 0 3px;border-radius:3px 0 0 3px;-moz-border-radius:3px 0 0 3px;-webkit-border-top-left-radius:3px;-webkit-border-bottom-left-radius:3px;-webkit-box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);-moz-box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);-moz-box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);-webkit-box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);-webkit-box-shadow:1px 1px 2px #999;-webkit-box-shadow:inset 1px 1px 2px #999;-moz-box-shadow:inset 1px 1px 2px #999;box-shadow:inset 1px 1px 2px #999;}#search_wrapper{float:right;width:67px;height:37px;hidden;}#search_wrapper_homepage{float:right;height:39px;width:67px;background:#2db750;overflow:hidden;-webkit-border-radius:0 3px 3px 0;-moz-border-radius:0 3px 3px 0;border-radius:0 3px 3px 0;-moz-border-radius:0 3px 3px 0;-webkit-border-top-right-radius:3px;-webkit-border-bottom-right-radius:3px;-webkit-box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);-moz-box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);-moz-box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);-webkit-box-shadow:0 1px 2px 0 rgba(0,0,0,0.20);}#search_form_input_clear{float:right;width:25px;border:0;background:#fff url(\"assets/icon_xon.v101.png\") no-repeat left center;cursor:pointer;height:37px;margin:0;outline:none;border:none;*border-left:#fff solid 1px;*border-right:#fff solid 1px;border-bottom:#835342 solid 1px;border-top:#835342 solid 1px;}#search_form_input_clear:active{background:#fff url(\"assets/icon_xoff.v101.png\") no-repeat left center;}#search_button{float:left;height:37px;width:43px;border:0;background:url(\"assets/search_dropdown.v102.png\");cursor:pointer;outline:none;}#search_button:active{background-position:0 -37px;}#search_button_homepage{float:left;height:39px;width:44px;border:0;background:url(\"assets/search_dropdown_homepage.v102.png\") no-repeat;cursor:pointer;}#search_button_homepage:active{background-position:0 -39px;}#side_wrapper{max-width:759px;display:none;position:relative;margin:0;padding:0;}#side_wrapper2{width:130px;position:absolute;right:-100px;top:25px;font-size:71.4%;color:#545454;}#side{background-color:#fcfcfc;position:fixed;width:130px;z-index:1;margin-top:-15px;}#side_map{padding-bottom:20px;}#side_sponsored{text-align:left;}#side_suggestions{text-align:left;}#spacing_hidden{height:0;display:none;float:left;font-size:83.3%;padding-bottom:40px;}#state_hidden{height:0;border:0;width:0;display:none;}#zero_click_wrapper{padding-top:20px;max-width:759px;display:block;}#zero_click{background:#f9f9f9;border:1px solid #d2d2d2;width:86.5%;-moz-border-radius:6px;-webkit-border-radius:6px;-webkit-border-radius:6px;-moz-border-radius:6px;border-radius:6px;z-index:10;}#zero_click blockquote{background-color:#eee;margin-bottom:10px;padding:5px 5px 1px;}#zero_click blockquote,q{quotes:none;}#zero_click p{clear:both;margin-bottom:5px;}#zero_click pre{background-color:#eee;font-family:Consolas,Menlo,Monaco,Lucida Console,Liberation Mono,DejaVu Sans Mono,Bitstream Vera Sans Mono,Courier New,monospace,serif;margin-bottom:5px;padding:5px;margin-right:10px;word-wrap:break-word;white-space:pre-wrap;white-space:-moz-pre-wrap;white-space:-pre-wrap;white-space:-o-pre-wrap;}#zero_click_plus_wrapper,#zero_click_plus_wrapper a{float:right;width:14px;top:0;margin-left:7px;margin-right:5px;text-align:right;text-decoration:none!important;padding-bottom:2px;}#zero_click_plus{background:url(\"assets/icon_minus.v101.png\") no-repeat;height:14px;margin-top:5px;}#zero_click_abstract,#zero_click_abstract_top{font-size:83.3%;line-height:1.4;word-wrap:break-word;border:1px solid #f9f9f9;padding:2px;margin:2px;margin-top:4px;padding-top:0;margin-bottom:2px;}#zero_click_answer{margin-left:25px;}#zero_click_heading{float:left;margin-top:0;margin-bottom:0;}#zero_click_header_info{padding-top:10px;padding-left:65px;font-size:77.8%;}#zero_click_image{float:right;max-width:100px;margin-top:10px;margin-left:15px;margin-right:10px;padding-bottom:10px;padding-right:3px;line-height:1.2;font-size:83.3%;text-align:center;}#zero_click_message{padding-left:33px;font-size:83.3%;padding-bottom:10px;padding-top:5px;}#zero_click_topics{font-size:83.3%;margin-left:10px;margin-bottom:4px;}.add_to_browser{height:300px;width:200px;background-color:#ddd;display:none;position:fixed;bottom:50px;right:0;text-align:left;padding:10px;margin:10px;-moz-border-radius:10px;-webkit-border-radius:10px;-webkit-border-radius:10px;-moz-border-radius:10px;border-radius:10px;z-index:1000;font-size:14px;}.clear{clear:both;height:0;font-size:0;line-height:0;}.hide{display:none;}.hidden{display:none;}.highlight_sponsored{background:#fff7d0;border:1px solid #fef9eb!important;-moz-border-radius:6px;-webkit-border-radius:6px;-webkit-border-radius:6px;-moz-border-radius:6px;border-radius:6px;margin-bottom:2px;}.highlight_sponsored_hover{background:#eae3ad!important;}.highlight{background:url(\"assets/results_highlight_bg.v101.png\") repeat-x;background-color:#eaeaea;border:1px solid #bfbfbf!important;-moz-border-radius:6px;-webkit-border-radius:6px;-webkit-border-radius:6px;-moz-border-radius:6px;border-radius:6px;cursor:pointer;}.highlight_zero_click_wrapper{border:1px solid #f9f9f9;padding:2px;}.horizontal_line{height:1px;margin:0;padding:0;border:none;color:#bade89;background-color:#d2d2d2;text-align:left;}.horizontal_line_truncated{width:85%;}.icon_fav,.icon_fav2,.icon_category,.icon_disambig{float:left;display:none;}.icon_category{width:58px;text-align:right;}.icon_zero_click_header{float:right;display:inline;margin-top:0;padding-right:10px;}.icon_fav3{display:inline;float:left;padding-right:5px;width:16px;height:16px;}.icon_disambig{width:38px;text-align:right;padding-top:5px;}.icon_fav img,.icon_fav2 img,.icon_category img,.icon_disambig img{visibility:hidden;padding-right:8px;}.icon_fav img,.icon_fav2 img{width:16px;height:16px;}.icon_fav img,.icon_category img{padding-top:5px;}.icon_category img,.icon_disambig img{display:inline;}.icon_fav2 img{padding-top:5px;}.icon_zero_click_answer{float:left;padding-top:4px;padding-left:8px;padding-right:10px;display:inline;}.img_badge{display:inline;vertical-align:top;}.img_category{max-height:50px;max-width:50px;width:expression(\"50px\");}.img_disambig{max-height:30px;max-width:30px;width:expression(\"30px\");margin-top:3px;}.img_zero_click{max-height:100px;max-width:100px;width:expression(\"100px\");}.img_zero_click_big{max-width:85%;margin:auto;margin-bottom:5px;margin-top:5px;}.inline{display:inline;}.links_deep,.links_main,.links_more{font-size:83.3%;}.links_indent{padding-left:35px;}.links_main{text-align:left;margin-left:30px;word-wrap:break-word;*zoom:1;}.links_main:before,.links_main:after{content:\"\";display:table;}.links_main:after{clear:both;}.links_main div a.hidden{display:inline!important;visibility:hidden!important;}.links_menu,.links_menu a{background:url(\"assets/icon_triangle.v101.png\") no-repeat 0 4px;font-size:85.7%;color:#555!important;float:right;padding-right:20px;padding-left:10px;}.links_menu_wrapper{width:200px;display:inline;overflow:hidden;position:relative;}.links_menu_wrapper:hover,.links_menu_wrapper:focus{overflow:visible;}.links_menu_items{margin:0;float:left;position:absolute;top:-20px;left:-2000px;display:block;background:#fff;border:1px solid #ddd;margin-left:2px;margin-top:-1px;margin-right:0;-moz-box-shadow:0 1px 3px 0 rgba(0,0,0,0.20);-webkit-box-shadow:0 1px 3px 0 rgba(0,0,0,0.20);-webkit-box-shadow:0 1px 3px 0 rgba(0,0,0,0.20);-moz-box-shadow:0 1px 3px 0 rgba(0,0,0,0.20);box-shadow:0 1px 3px 0 rgba(0,0,0,0.20);width:150px;text-align:left;}.links_menu_wrapper:hover .links_menu_items,.links_menu_wrapper:focus .links_menu_items{left:20px;}.links_menu_items:after{content:\"-\";font-size:1px;display:block;position:fixed;opacity:0;filter:progid:DXImageTransform.Microsoft.Alpha(Opacity=0);}.links_menu_items li{display:block!important;list-style:none;float:none;height:auto;font-weight:normal;}.links_menu_items a{display:block;padding:2px 3px;margin:0;background-color:#fff;}.links_more{text-align:left;margin-left:58px;word-wrap:break-word;}.links_type{font-size:65%;}.links_zero_click{text-align:left;padding-left:5px;margin-right:5px;word-wrap:break-word;}.links_zero_click_disambig{text-align:left;margin-left:33px;margin-right:10px;padding:4px;word-wrap:break-word;border:1px solid #f9f9f9;}.page_count{float:left;color:#555;font-size:71.4%;text-align:left;}.page_count_pre,.page_count_post{color:#fff;background-color:#fff;border:1px dotted #777;border-style:none none dotted;height:1px;text-align:right;float:left;}.page_count_pre{width:10%;}.page_count_post{width:70%;}.results_links,.results_zero_click,.results_disambig,.results_links_more,.results_category_more,.results_disambig_more{clear:left;padding-top:10px;padding-bottom:10px;border:1px solid #fcfcfc;}.results_links_deep{padding-left:5px;padding-top:10px;padding-bottom:10px;border:1px solid #fcfcfc;}.results_links{padding-left:5px;}.results_links_more{padding-left:33px;}.results_category_more{padding-left:63px;}.results_disambig_more{margin-left:33px;margin-right:10px;padding:5px;padding-bottom:3px;padding-top:3px;}.results_zero_click,.results_zero_click_more{padding-bottom:3px;padding-top:3px;border:1px solid #f9f9f9;}.results_disambig_more,.results_disambig{border:1px solid #f9f9f9;}.results_disambig{padding-bottom:0;padding-top:0;}.results_zero_click{clear:none;padding-top:3px;}.results_zero_click_more{padding-top:3px;padding-left:5px;font-size:90%;}.search_suggestion{background-color:#666;background:#f5f5f5 url(\"assets/side_button_off.v101.png\") repeat-x;line-height:1.4;padding:4px;padding-top:4px;padding-bottom:5px;margin-bottom:7px;cursor:pointer!important;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;border:#e4e4e4 solid 1px;border:1px solid #e4e4e4;width:130px;}.search_suggestion:hover{background-color:#f0f0f0;background:#e2e2e2 url(\"assets/side_button_on.v101.png\") repeat-x;border:1px solid #adadad;}.search_suggestion:active{background-color:#bbb;}.search_suggestion a{background:url(\"assets/icon_plus.v102.png\") no-repeat left center;padding-left:14px;color:#333!important;text-decoration:none!important;}.small{font-size:83.3%;color:#333;}.snippet,.snippet a{clear:both;line-height:1.4;color:#333!important;text-decoration:none!important;}.snippet{font-size:92.8%;}.spacer_bottom_7{padding-bottom:7px;}.spacer_bottom_10{padding-bottom:10px;}.spacer_top_3{padding-top:3px;}.spacer_top_10{padding-top:10px;}.url,.url a{color:#781900!important;font-size:92.8%;}.zero_click_answer{padding-left:5px!important;margin-left:30px!important;margin-right:50px!important;}.zero_click_header_info{font-style:normal;}.zero_click_snippet{padding:10px;padding-top:5px;padding-bottom:3px;padding-left:5px!important;margin-left:10px!important;}.zero_click_snippet_no_image{padding:0;padding-bottom:5px;margin-left:10px!important;padding-left:5px!important;}@media only screen  and (max-device-width:599px){#content,#content_wrapper,#content_homepage,#content_wrapper_homepage,#zero_click_wrapper,#links_wrapper,#zero_click,#links{width:97%;min-width:97%;margin:auto;padding-right:0;}#content{margin:auto;padding-left:0;padding-top:50px;}#header_button_wrapper,#search_dropdown,#bang_wrapper,#search_dropdown_homepage{display:none;}#logo_homepage{background:url(\"/assets/logo_homepage_mobile.normal.v101.png\") no-repeat center top;width:275px;height:62px;padding-bottom:20px;margin-bottom:0;}#search_form{width:236px;}#search_form_homepage{width:220px;}#search_wrapper{width:42px;}#search_wrapper_homepage{width:42px;}#search_form_input{width:153px;}#search_form_input_homepage{width:163px;}}@media only screen  and (max-device-width:599px)  and (orientation:landscape){#search_form{width:336px;}#search_form_input{width:253px;}#search_form_homepage{width:313px;}#search_form_input_homepage{width:253px;}}@media only screen  and (-webkit-min-device-pixel-ratio:1.5){#content_homepage{width:97%;min-width:97%;margin:auto;padding-right:0;}#search_dropdown,#search_dropdown_homepage{display:none;}#logo_homepage{background:url(\"/assets/logo_homepage_mobile.normal.v101.png\") no-repeat center top;width:275px;height:62px;padding-bottom:20px;margin-bottom:0;}#search_form{width:236px;}#search_form_homepage{width:220px;}#search_wrapper{width:42px;}#search_wrapper_homepage{width:42px;}#search_form_input{width:153px;}#search_form_input_homepage{width:163px;}}@media only screen  and (-webkit-min-device-pixel-ratio:1.5)  and (orientation:landscape){#search_form{width:312px;}#search_form_input{width:253px;}#search_form_homepage{width:352px;}#search_form_input_homepage{width:287px;}}#wwo_outer{background:#f9f9f9!important;padding-left:15px!important;padding-bottom:5px!important;}"
          },
          "redirectURL": "",
          "headersSize": 313,
          "bodySize": 6163
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:25.090+11:00",
        "time": 1654,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/d724.js",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "*/*"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 341,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:11 GMT"
            },
            {
              "name": "Content-Type",
              "value": "application/x-javascript; charset=UTF-8"
            },
            {
              "name": "Last-Modified",
              "value": "Mon, 19 Mar 2012 14:58:36 GMT"
            },
            {
              "name": "Transfer-Encoding",
              "value": "chunked"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:11 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000"
            },
            {
              "name": "Vary",
              "value": "Accept-Encoding"
            },
            {
              "name": "Content-Encoding",
              "value": "gzip"
            }
          ],
          "content": {
            "mimeType": "application/x-javascript",
            "size": 176455,
            "text": "if(typeof YAHOO==\"undefined\"||!YAHOO){var YAHOO={}}YAHOO.namespace=function(){var a=arguments,h=null,k,l,j;for(k=0;k<a.length;k=k+1){j=(\"\"+a[k]).split(\".\");h=YAHOO;for(l=(j[0]==\"YAHOO\")?1:0;l<j.length;l=l+1){h[j[l]]=h[j[l]]||{};h=h[j[l]]}}return h};YAHOO.log=function(g,f,h){var e=YAHOO.widget.Logger;if(e&&e.log){return e.log(g,f,h)}else{return false}};YAHOO.register=function(s,o,p){var b=YAHOO.env.modules,r,l,m,n,q;if(!b[s]){b[s]={versions:[],builds:[]}}r=b[s];l=p.version;m=p.build;n=YAHOO.env.listeners;r.name=s;r.version=l;r.build=m;r.versions.push(l);r.builds.push(m);r.mainClass=o;for(q=0;q<n.length;q=q+1){n[q](r)}if(o){o.VERSION=l;o.BUILD=m}else{YAHOO.log(\"mainClass is undefined for module \"+s,\"warn\")}};YAHOO.env=YAHOO.env||{modules:[],listeners:[]};YAHOO.env.getVersion=function(b){return YAHOO.env.modules[b]||null};YAHOO.env.parseUA=function(p){var o=function(b){var a=0;return parseFloat(b.replace(/\\./g,function(){return(a++==1)?\"\":\".\"}))},l=navigator,m={ie:0,opera:0,gecko:0,webkit:0,chrome:0,mobile:null,air:0,ipad:0,iphone:0,ipod:0,ios:null,android:0,webos:0,caja:l&&l.cajaVersion,secure:false,os:null},q=p||(navigator&&navigator.userAgent),n=window&&window.location,j=n&&n.href,k;m.secure=j&&(j.toLowerCase().indexOf(\"https\")===0);if(q){if((/windows|win32/i).test(q)){m.os=\"windows\"}else{if((/macintosh/i).test(q)){m.os=\"macintosh\"}else{if((/rhino/i).test(q)){m.os=\"rhino\"}}}if((/KHTML/).test(q)){m.webkit=1}k=q.match(/AppleWebKit\\/([^\\s]*)/);if(k&&k[1]){m.webkit=o(k[1]);if(/ Mobile\\//.test(q)){m.mobile=\"Apple\";k=q.match(/OS ([^\\s]*)/);if(k&&k[1]){k=o(k[1].replace(\"_\",\".\"))}m.ios=k;m.ipad=m.ipod=m.iphone=0;k=q.match(/iPad|iPod|iPhone/);if(k&&k[0]){m[k[0].toLowerCase()]=m.ios}}else{k=q.match(/NokiaN[^\\/]*|Android \\d\\.\\d|webOS\\/\\d\\.\\d/);if(k){m.mobile=k[0]}if(/webOS/.test(q)){m.mobile=\"WebOS\";k=q.match(/webOS\\/([^\\s]*);/);if(k&&k[1]){m.webos=o(k[1])}}if(/ Android/.test(q)){m.mobile=\"Android\";k=q.match(/Android ([^\\s]*);/);if(k&&k[1]){m.android=o(k[1])}}}k=q.match(/Chrome\\/([^\\s]*)/);if(k&&k[1]){m.chrome=o(k[1])}else{k=q.match(/AdobeAIR\\/([^\\s]*)/);if(k){m.air=k[0]}}}if(!m.webkit){k=q.match(/Opera[\\s\\/]([^\\s]*)/);if(k&&k[1]){m.opera=o(k[1]);k=q.match(/Version\\/([^\\s]*)/);if(k&&k[1]){m.opera=o(k[1])}k=q.match(/Opera Mini[^;]*/);if(k){m.mobile=k[0]}}else{k=q.match(/MSIE\\s([^;]*)/);if(k&&k[1]){m.ie=o(k[1])}else{k=q.match(/Gecko\\/([^\\s]*)/);if(k){m.gecko=1;k=q.match(/rv:([^\\s\\)]*)/);if(k&&k[1]){m.gecko=o(k[1])}}}}}}return m};YAHOO.env.ua=YAHOO.env.parseUA();(function(){YAHOO.namespace(\"util\",\"widget\",\"example\");if(\"undefined\"!==typeof YAHOO_config){var e=YAHOO_config.listener,f=YAHOO.env.listeners,g=true,h;if(e){for(h=0;h<f.length;h++){if(f[h]==e){g=false;break}}if(g){f.push(e)}}}})();YAHOO.lang=YAHOO.lang||{};(function(){var m=YAHOO.lang,r=Object.prototype,p=\"[object Array]\",k=\"[object Function]\",j=\"[object Object]\",q=[],l={\"&\":\"&amp;\",\"<\":\"&lt;\",\">\":\"&gt;\",'\"':\"&quot;\",\"'\":\"&#x27;\",\"/\":\"&#x2F;\",\"`\":\"&#x60;\"},o=[\"toString\",\"valueOf\"],n={isArray:function(a){return r.toString.apply(a)===p},isBoolean:function(a){return typeof a===\"boolean\"},isFunction:function(a){return(typeof a===\"function\")||r.toString.apply(a)===k},isNull:function(a){return a===null},isNumber:function(a){return typeof a===\"number\"&&isFinite(a)},isObject:function(a){return(a&&(typeof a===\"object\"||m.isFunction(a)))||false},isString:function(a){return typeof a===\"string\"},isUndefined:function(a){return typeof a===\"undefined\"},_IEEnumFix:(YAHOO.env.ua.ie)?function(b,c){var e,f,a;for(e=0;e<o.length;e=e+1){f=o[e];a=c[f];if(m.isFunction(a)&&a!=r[f]){b[f]=a}}}:function(){},escapeHTML:function(a){return a.replace(/[&<>\"'\\/`]/g,function(b){return l[b]})},extend:function(a,f,b){if(!f||!a){throw new Error(\"extend failed, please check that all dependencies are included.\")}var c=function(){},e;c.prototype=f.prototype;a.prototype=new c();a.prototype.constructor=a;a.superclass=f.prototype;if(f.prototype.constructor==r.constructor){f.prototype.constructor=f}if(b){for(e in b){if(m.hasOwnProperty(b,e)){a.prototype[e]=b[e]}}m._IEEnumFix(a.prototype,b)}},augmentObject:function(g,a){if(!a||!g){throw new Error(\"Absorb failed, verify dependencies.\")}var e=arguments,b,f,c=e[2];if(c&&c!==true){for(b=2;b<e.length;b=b+1){g[e[b]]=a[e[b]]}}else{for(f in a){if(c||!(f in g)){g[f]=a[f]}}m._IEEnumFix(g,a)}return g},augmentProto:function(a,b){if(!b||!a){throw new Error(\"Augment failed, verify dependencies.\")}var e=[a.prototype,b.prototype],c;for(c=2;c<arguments.length;c=c+1){e.push(arguments[c])}m.augmentObject.apply(this,e);return a},dump:function(s,c){var g,e,a=[],u=\"{...}\",h=\"f(){...}\",b=\", \",f=\" => \";if(!m.isObject(s)){return s+\"\"}else{if(s instanceof Date||(\"nodeType\" in s&&\"tagName\" in s)){return s}else{if(m.isFunction(s)){return h}}}c=(m.isNumber(c))?c:3;if(m.isArray(s)){a.push(\"[\");for(g=0,e=s.length;g<e;g=g+1){if(m.isObject(s[g])){a.push((c>0)?m.dump(s[g],c-1):u)}else{a.push(s[g])}a.push(b)}if(a.length>1){a.pop()}a.push(\"]\")}else{a.push(\"{\");for(g in s){if(m.hasOwnProperty(s,g)){a.push(g+f);if(m.isObject(s[g])){a.push((c>0)?m.dump(s[g],c-1):u)}else{a.push(s[g])}a.push(b)}}if(a.length>1){a.pop()}a.push(\"}\")}return a.join(\"\")},substitute:function(c,b,s,Q){var H,I,K,f,v,h,g=[],N,a=c.length,M=\"dump\",J=\" \",L=\"{\",P=\"}\",O,e;for(;;){H=c.lastIndexOf(L,a);if(H<0){break}I=c.indexOf(P,H);if(H+1>I){break}N=c.substring(H+1,I);f=N;h=null;K=f.indexOf(J);if(K>-1){h=f.substring(K+1);f=f.substring(0,K)}v=b[f];if(s){v=s(f,v,h)}if(m.isObject(v)){if(m.isArray(v)){v=m.dump(v,parseInt(h,10))}else{h=h||\"\";O=h.indexOf(M);if(O>-1){h=h.substring(4)}e=v.toString();if(e===j||O>-1){v=m.dump(v,parseInt(h,10))}else{v=e}}}else{if(!m.isString(v)&&!m.isNumber(v)){v=\"~-\"+g.length+\"-~\";g[g.length]=N}}c=c.substring(0,H)+v+c.substring(I+1);if(Q===false){a=H-1}}for(H=g.length-1;H>=0;H=H-1){c=c.replace(new RegExp(\"~-\"+H+\"-~\"),\"{\"+g[H]+\"}\",\"g\")}return c},trim:function(b){try{return b.replace(/^\\s+|\\s+$/g,\"\")}catch(a){return b}},merge:function(){var e={},b=arguments,c=b.length,a;for(a=0;a<c;a=a+1){m.augmentObject(e,b[a],true)}return e},later:function(v,f,h,c,b){v=v||0;f=f||{};var e=h,x=c,a,g;if(m.isString(h)){e=f[h]}if(!e){throw new TypeError(\"method undefined\")}if(!m.isUndefined(c)&&!m.isArray(x)){x=[c]}a=function(){e.apply(f,x||q)};g=(b)?setInterval(a,v):setTimeout(a,v);return{interval:b,cancel:function(){if(this.interval){clearInterval(g)}else{clearTimeout(g)}}}},isValue:function(a){return(m.isObject(a)||m.isString(a)||m.isNumber(a)||m.isBoolean(a))}};m.hasOwnProperty=(r.hasOwnProperty)?function(b,a){return b&&b.hasOwnProperty&&b.hasOwnProperty(a)}:function(b,a){return !m.isUndefined(b[a])&&b.constructor.prototype[a]!==b[a]};n.augmentObject(m,n,true);YAHOO.util.Lang=m;m.augment=m.augmentProto;YAHOO.augment=m.augmentProto;YAHOO.extend=m.extend})();YAHOO.register(\"yahoo\",YAHOO,{version:\"2.9.0\",build:\"2800\"});(function(){YAHOO.env._id_counter=YAHOO.env._id_counter||0;var aM=YAHOO.util,aG=YAHOO.lang,af=YAHOO.env.ua,aQ=YAHOO.lang.trim,ao={},ak={},aE=/^t(?:able|d|h)$/i,au=/color$/i,aH=window.document,av=aH.documentElement,an=\"ownerDocument\",ae=\"defaultView\",W=\"documentElement\",Y=\"compatMode\",aq=\"offsetLeft\",aC=\"offsetTop\",X=\"offsetParent\",at=\"parentNode\",ag=\"nodeType\",aO=\"tagName\",aD=\"scrollLeft\",aj=\"scrollTop\",aB=\"getBoundingClientRect\",G=\"getComputedStyle\",ar=\"currentStyle\",aF=\"CSS1Compat\",ap=\"BackCompat\",al=\"class\",aL=\"className\",aI=\"\",aP=\" \",Z=\"(?:^|\\\\s)\",ah=\"(?= |$)\",ax=\"g\",ac=\"position\",am=\"fixed\",aw=\"relative\",ai=\"left\",ad=\"top\",aa=\"medium\",ab=\"borderLeftWidth\",aA=\"borderTopWidth\",aN=af.opera,aJ=af.webkit,aK=af.gecko,ay=af.ie;aM.Dom={CUSTOM_ATTRIBUTES:(!av.hasAttribute)?{\"for\":\"htmlFor\",\"class\":aL}:{htmlFor:\"for\",className:al},DOT_ATTRIBUTES:{checked:true},get:function(g){var c,j,e,f,a,b,h=null;if(g){if(typeof g==\"string\"||typeof g==\"number\"){c=g+\"\";g=aH.getElementById(g);b=(g)?g.attributes:null;if(g&&b&&b.id&&b.id.value===c){return g}else{if(g&&aH.all){g=null;j=aH.all[c];if(j&&j.length){for(f=0,a=j.length;f<a;++f){if(j[f].id===c){return j[f]}}}}}}else{if(aM.Element&&g instanceof aM.Element){g=g.get(\"element\")}else{if(!g.nodeType&&\"length\" in g){e=[];for(f=0,a=g.length;f<a;++f){e[e.length]=aM.Dom.get(g[f])}g=e}}}h=g}return h},getComputedStyle:function(b,a){if(window[G]){return b[an][ae][G](b,null)[a]}else{if(b[ar]){return aM.Dom.IE_ComputedStyle.get(b,a)}}},getStyle:function(b,a){return aM.Dom.batch(b,aM.Dom._getStyle,a)},_getStyle:function(){if(window[G]){return function(b,c){c=(c===\"float\")?c=\"cssFloat\":aM.Dom._toCamel(c);var e=b.style[c],a;if(!e){a=b[an][ae][G](b,null);if(a){e=a[c]}}return e}}else{if(av[ar]){return function(b,e){var f;switch(e){case\"opacity\":f=100;try{f=b.filters[\"DXImageTransform.Microsoft.Alpha\"].opacity}catch(c){try{f=b.filters(\"alpha\").opacity}catch(a){}}return f/100;case\"float\":e=\"styleFloat\";default:e=aM.Dom._toCamel(e);f=b[ar]?b[ar][e]:null;return(b.style[e]||f)}}}}}(),setStyle:function(b,a,c){aM.Dom.batch(b,aM.Dom._setStyle,{prop:a,val:c})},_setStyle:function(){if(!window.getComputedStyle&&aH.documentElement.currentStyle){return function(a,b){var e=aM.Dom._toCamel(b.prop),c=b.val;if(a){switch(e){case\"opacity\":if(c===\"\"||c===null||c===1){a.style.removeAttribute(\"filter\")}else{if(aG.isString(a.style.filter)){a.style.filter=\"alpha(opacity=\"+c*100+\")\";if(!a[ar]||!a[ar].hasLayout){a.style.zoom=1}}}break;case\"float\":e=\"styleFloat\";default:a.style[e]=c}}else{}}}else{return function(a,b){var e=aM.Dom._toCamel(b.prop),c=b.val;if(a){if(e==\"float\"){e=\"cssFloat\"}a.style[e]=c}else{}}}}(),getXY:function(a){return aM.Dom.batch(a,aM.Dom._getXY)},_canPosition:function(a){return(aM.Dom._getStyle(a,\"display\")!==\"none\"&&aM.Dom._inDoc(a))},_getXY:function(f){var e,h,b,k,c,a,j=Math.round,g=false;if(aM.Dom._canPosition(f)){b=f[aB]();k=f[an];e=aM.Dom.getDocumentScrollLeft(k);h=aM.Dom.getDocumentScrollTop(k);g=[b[ai],b[ad]];if(c||a){g[0]-=a;g[1]-=c}if((h||e)){g[0]+=e;g[1]+=h}g[0]=j(g[0]);g[1]=j(g[1])}else{}return g},getX:function(b){var a=function(c){return aM.Dom.getXY(c)[0]};return aM.Dom.batch(b,a,aM.Dom,true)},getY:function(b){var a=function(c){return aM.Dom.getXY(c)[1]};return aM.Dom.batch(b,a,aM.Dom,true)},setXY:function(b,c,a){aM.Dom.batch(b,aM.Dom._setXY,{pos:c,noRetry:a})},_setXY:function(g,b){var a=aM.Dom._getStyle(g,ac),c=aM.Dom.setStyle,h=b.pos,f=b.noRetry,k=[parseInt(aM.Dom.getComputedStyle(g,ai),10),parseInt(aM.Dom.getComputedStyle(g,ad),10)],j,e;j=aM.Dom._getXY(g);if(!h||j===false){return false}if(a==\"static\"){a=aw;c(g,ac,a)}if(isNaN(k[0])){k[0]=(a==aw)?0:g[aq]}if(isNaN(k[1])){k[1]=(a==aw)?0:g[aC]}if(h[0]!==null){c(g,ai,h[0]-j[0]+k[0]+\"px\")}if(h[1]!==null){c(g,ad,h[1]-j[1]+k[1]+\"px\")}if(!f){e=aM.Dom._getXY(g);if((h[0]!==null&&e[0]!=h[0])||(h[1]!==null&&e[1]!=h[1])){aM.Dom._setXY(g,{pos:h,noRetry:true})}}},setX:function(a,b){aM.Dom.setXY(a,[b,null])},setY:function(b,a){aM.Dom.setXY(b,[null,a])},getRegion:function(b){var a=function(e){var c=false;if(aM.Dom._canPosition(e)){c=aM.Region.getRegion(e)}else{}return c};return aM.Dom.batch(b,a,aM.Dom,true)},getClientWidth:function(){return aM.Dom.getViewportWidth()},getClientHeight:function(){return aM.Dom.getViewportHeight()},getElementsByClassName:function(m,g,l,h,e,j){g=g||\"*\";l=(l)?aM.Dom.get(l):null||aH;if(!l){return[]}var f=[],k=l.getElementsByTagName(g),b=aM.Dom.hasClass;for(var c=0,a=k.length;c<a;++c){if(b(k[c],m)){f[f.length]=k[c]}}if(h){aM.Dom.batch(f,h,e,j)}return f},hasClass:function(a,b){return aM.Dom.batch(a,aM.Dom._hasClass,b)},_hasClass:function(e,a){var b=false,c;if(e&&a){c=aM.Dom._getAttribute(e,aL)||aI;if(c){c=c.replace(/\\s+/g,aP)}if(a.exec){b=a.test(c)}else{b=a&&(aP+c+aP).indexOf(aP+a+aP)>-1}}else{}return b},addClass:function(a,b){return aM.Dom.batch(a,aM.Dom._addClass,b)},_addClass:function(e,a){var b=false,c;if(e&&a){c=aM.Dom._getAttribute(e,aL)||aI;if(!aM.Dom._hasClass(e,a)){aM.Dom.setAttribute(e,aL,aQ(c+aP+a));b=true}}else{}return b},removeClass:function(a,b){return aM.Dom.batch(a,aM.Dom._removeClass,b)},_removeClass:function(f,g){var a=false,e,c,b;if(f&&g){e=aM.Dom._getAttribute(f,aL)||aI;aM.Dom.setAttribute(f,aL,e.replace(aM.Dom._getClassRegex(g),aI));c=aM.Dom._getAttribute(f,aL);if(e!==c){aM.Dom.setAttribute(f,aL,aQ(c));a=true;if(aM.Dom._getAttribute(f,aL)===\"\"){b=(f.hasAttribute&&f.hasAttribute(al))?al:aL;f.removeAttribute(b)}}}else{}return a},replaceClass:function(c,a,b){return aM.Dom.batch(c,aM.Dom._replaceClass,{from:a,to:b})},_replaceClass:function(g,h){var a,c,f,b=false,e;if(g&&h){c=h.from;f=h.to;if(!f){b=false}else{if(!c){b=aM.Dom._addClass(g,h.to)}else{if(c!==f){e=aM.Dom._getAttribute(g,aL)||aI;a=(aP+e.replace(aM.Dom._getClassRegex(c),aP+f).replace(/\\s+/g,aP)).split(aM.Dom._getClassRegex(f));a.splice(1,0,aP+f);aM.Dom.setAttribute(g,aL,aQ(a.join(aI)));b=true}}}}else{}return b},generateId:function(b,c){c=c||\"yui-gen\";var a=function(f){if(f&&f.id){return f.id}var e=c+YAHOO.env._id_counter++;if(f){if(f[an]&&f[an].getElementById(e)){return aM.Dom.generateId(f,e+c)}f.id=e}return e};return aM.Dom.batch(b,a,aM.Dom,true)||a.apply(aM.Dom,arguments)},isAncestor:function(a,c){a=aM.Dom.get(a);c=aM.Dom.get(c);var b=false;if((a&&c)&&(a[ag]&&c[ag])){if(a.contains&&a!==c){b=a.contains(c)}else{if(a.compareDocumentPosition){b=!!(a.compareDocumentPosition(c)&16)}}}else{}return b},inDocument:function(b,a){return aM.Dom._inDoc(aM.Dom.get(b),a)},_inDoc:function(a,c){var b=false;if(a&&a[aO]){c=c||a[an];b=aM.Dom.isAncestor(c[W],a)}else{}return b},getElementsBy:function(f,g,m,k,e,l,h){g=g||\"*\";m=(m)?aM.Dom.get(m):null||aH;var a=(h)?null:[],j;if(m){j=m.getElementsByTagName(g);for(var c=0,b=j.length;c<b;++c){if(f(j[c])){if(h){a=j[c];break}else{a[a.length]=j[c]}}}if(k){aM.Dom.batch(a,k,e,l)}}return a},getElementBy:function(c,b,a){return aM.Dom.getElementsBy(c,b,a,null,null,null,true)},batch:function(h,c,f,e){var g=[],a=(e)?f:null;h=(h&&(h[aO]||h.item))?h:aM.Dom.get(h);if(h&&c){if(h[aO]||h.length===undefined){return c.call(a,h,f)}for(var b=0;b<h.length;++b){g[g.length]=c.call(a||h[b],h[b],f)}}else{return false}return g},getDocumentHeight:function(){var a=(aH[Y]!=aF||aJ)?aH.body.scrollHeight:av.scrollHeight,b=Math.max(a,aM.Dom.getViewportHeight());return b},getDocumentWidth:function(){var a=(aH[Y]!=aF||aJ)?aH.body.scrollWidth:av.scrollWidth,b=Math.max(a,aM.Dom.getViewportWidth());return b},getViewportHeight:function(){var b=self.innerHeight,a=aH[Y];if((a||ay)&&!aN){b=(a==aF)?av.clientHeight:aH.body.clientHeight}return b},getViewportWidth:function(){var b=self.innerWidth,a=aH[Y];if(a||ay){b=(a==aF)?av.clientWidth:aH.body.clientWidth}return b},getAncestorBy:function(b,a){while((b=b[at])){if(aM.Dom._testElement(b,a)){return b}}return null},getAncestorByClassName:function(a,b){a=aM.Dom.get(a);if(!a){return null}var c=function(e){return aM.Dom.hasClass(e,b)};return aM.Dom.getAncestorBy(a,c)},getAncestorByTagName:function(a,b){a=aM.Dom.get(a);if(!a){return null}var c=function(e){return e[aO]&&e[aO].toUpperCase()==b.toUpperCase()};return aM.Dom.getAncestorBy(a,c)},getPreviousSiblingBy:function(b,a){while(b){b=b.previousSibling;if(aM.Dom._testElement(b,a)){return b}}return null},getPreviousSibling:function(a){a=aM.Dom.get(a);if(!a){return null}return aM.Dom.getPreviousSiblingBy(a)},getNextSiblingBy:function(b,a){while(b){b=b.nextSibling;if(aM.Dom._testElement(b,a)){return b}}return null},getNextSibling:function(a){a=aM.Dom.get(a);if(!a){return null}return aM.Dom.getNextSiblingBy(a)},getFirstChildBy:function(b,c){var a=(aM.Dom._testElement(b.firstChild,c))?b.firstChild:null;return a||aM.Dom.getNextSiblingBy(b.firstChild,c)},getFirstChild:function(b,a){b=aM.Dom.get(b);if(!b){return null}return aM.Dom.getFirstChildBy(b)},getLastChildBy:function(b,c){if(!b){return null}var a=(aM.Dom._testElement(b.lastChild,c))?b.lastChild:null;return a||aM.Dom.getPreviousSiblingBy(b.lastChild,c)},getLastChild:function(a){a=aM.Dom.get(a);return aM.Dom.getLastChildBy(a)},getChildrenBy:function(a,c){var e=aM.Dom.getFirstChildBy(a,c),b=e?[e]:[];aM.Dom.getNextSiblingBy(e,function(f){if(!c||c(f)){b[b.length]=f}return false});return b},getChildren:function(a){a=aM.Dom.get(a);if(!a){}return aM.Dom.getChildrenBy(a)},getDocumentScrollLeft:function(a){a=a||aH;return Math.max(a[W].scrollLeft,a.body.scrollLeft)},getDocumentScrollTop:function(a){a=a||aH;return Math.max(a[W].scrollTop,a.body.scrollTop)},insertBefore:function(a,b){a=aM.Dom.get(a);b=aM.Dom.get(b);if(!a||!b||!b[at]){return null}return b[at].insertBefore(a,b)},insertAfter:function(a,b){a=aM.Dom.get(a);b=aM.Dom.get(b);if(!a||!b||!b[at]){return null}if(b.nextSibling){return b[at].insertBefore(a,b.nextSibling)}else{return b[at].appendChild(a)}},getClientRegion:function(){var e=aM.Dom.getDocumentScrollTop(),a=aM.Dom.getDocumentScrollLeft(),c=aM.Dom.getViewportWidth()+a,b=aM.Dom.getViewportHeight()+e;return new aM.Region(e,c,b,a)},setAttribute:function(a,b,c){aM.Dom.batch(a,aM.Dom._setAttribute,{attr:b,val:c})},_setAttribute:function(e,a){var b=aM.Dom._toCamel(a.attr),c=a.val;if(e&&e.setAttribute){if(aM.Dom.DOT_ATTRIBUTES[b]&&e.tagName&&e.tagName!=\"BUTTON\"){e[b]=c}else{b=aM.Dom.CUSTOM_ATTRIBUTES[b]||b;e.setAttribute(b,c)}}else{}},getAttribute:function(a,b){return aM.Dom.batch(a,aM.Dom._getAttribute,b)},_getAttribute:function(a,b){var c;b=aM.Dom.CUSTOM_ATTRIBUTES[b]||b;if(aM.Dom.DOT_ATTRIBUTES[b]){c=a[b]}else{if(a&&\"getAttribute\" in a){if(/^(?:href|src)$/.test(b)){c=a.getAttribute(b,2)}else{c=a.getAttribute(b)}}else{}}return c},_toCamel:function(a){var c=ao;function b(f,e){return e.toUpperCase()}return c[a]||(c[a]=a.indexOf(\"-\")===-1?a:a.replace(/-([a-z])/gi,b))},_getClassRegex:function(a){var b;if(a!==undefined){if(a.exec){b=a}else{b=ak[a];if(!b){a=a.replace(aM.Dom._patterns.CLASS_RE_TOKENS,\"\\\\$1\");a=a.replace(/\\s+/g,aP);b=ak[a]=new RegExp(Z+a+ah,ax)}}}return b},_patterns:{ROOT_TAG:/^body|html$/i,CLASS_RE_TOKENS:/([\\.\\(\\)\\^\\$\\*\\+\\?\\|\\[\\]\\{\\}\\\\])/g},_testElement:function(b,a){return b&&b[ag]==1&&(!a||a(b))},_calcBorders:function(e,c){var a=parseInt(aM.Dom[G](e,aA),10)||0,b=parseInt(aM.Dom[G](e,ab),10)||0;if(aK){if(aE.test(e[aO])){a=0;b=0}}c[0]+=b;c[1]+=a;return c}};var az=aM.Dom[G];if(af.opera){aM.Dom[G]=function(a,b){var c=az(a,b);if(au.test(b)){c=aM.Dom.Color.toRGB(c)}return c}}if(af.webkit){aM.Dom[G]=function(a,b){var c=az(a,b);if(c===\"rgba(0, 0, 0, 0)\"){c=\"transparent\"}return c}}if(af.ie&&af.ie>=8){aM.Dom.DOT_ATTRIBUTES.type=true}})();YAHOO.util.Region=function(g,f,b,h){this.top=g;this.y=g;this[1]=g;this.right=f;this.bottom=b;this.left=h;this.x=h;this[0]=h;this.width=this.right-this.left;this.height=this.bottom-this.top};YAHOO.util.Region.prototype.contains=function(b){return(b.left>=this.left&&b.right<=this.right&&b.top>=this.top&&b.bottom<=this.bottom)};YAHOO.util.Region.prototype.getArea=function(){return((this.bottom-this.top)*(this.right-this.left))};YAHOO.util.Region.prototype.intersect=function(g){var j=Math.max(this.top,g.top),h=Math.min(this.right,g.right),b=Math.min(this.bottom,g.bottom),k=Math.max(this.left,g.left);if(b>=j&&h>=k){return new YAHOO.util.Region(j,h,b,k)}else{return null}};YAHOO.util.Region.prototype.union=function(g){var j=Math.min(this.top,g.top),h=Math.max(this.right,g.right),b=Math.max(this.bottom,g.bottom),k=Math.min(this.left,g.left);return new YAHOO.util.Region(j,h,b,k)};YAHOO.util.Region.prototype.toString=function(){return(\"Region {top: \"+this.top+\", right: \"+this.right+\", bottom: \"+this.bottom+\", left: \"+this.left+\", height: \"+this.height+\", width: \"+this.width+\"}\")};YAHOO.util.Region.getRegion=function(k){var h=YAHOO.util.Dom.getXY(k),l=h[1],j=h[0]+k.offsetWidth,b=h[1]+k.offsetHeight,m=h[0];return new YAHOO.util.Region(l,j,b,m)};YAHOO.util.Point=function(e,c){if(YAHOO.lang.isArray(e)){c=e[1];e=e[0]}YAHOO.util.Point.superclass.constructor.call(this,c,e,c,e)};YAHOO.extend(YAHOO.util.Point,YAHOO.util.Region);(function(){var S=YAHOO.util,T=\"clientTop\",O=\"clientLeft\",K=\"parentNode\",J=\"right\",x=\"hasLayout\",L=\"px\",z=\"opacity\",I=\"auto\",Q=\"borderLeftWidth\",N=\"borderTopWidth\",E=\"borderRightWidth\",y=\"borderBottomWidth\",B=\"visible\",D=\"transparent\",G=\"height\",P=\"width\",M=\"style\",A=\"currentStyle\",C=/^width|height$/,F=/^(\\d[.\\d]*)+(em|ex|px|gd|rem|vw|vh|vm|ch|mm|cm|in|pt|pc|deg|rad|ms|s|hz|khz|%){1}?/i,H={get:function(b,c){var e=\"\",a=b[A][c];if(c===z){e=S.Dom.getStyle(b,z)}else{if(!a||(a.indexOf&&a.indexOf(L)>-1)){e=a}else{if(S.Dom.IE_COMPUTED[c]){e=S.Dom.IE_COMPUTED[c](b,c)}else{if(F.test(a)){e=S.Dom.IE.ComputedStyle.getPixel(b,c)}else{e=a}}}}return e},getOffset:function(g,c){var j=g[A][c],b=c.charAt(0).toUpperCase()+c.substr(1),f=\"offset\"+b,h=\"pixel\"+b,a=\"\",e;if(j==I){e=g[f];if(e===undefined){a=0}a=e;if(C.test(c)){g[M][c]=e;if(g[f]>e){a=e-(g[f]-e)}g[M][c]=I}}else{if(!g[M][h]&&!g[M][c]){g[M][c]=j}a=g[M][h]}return a+L},getBorderWidth:function(a,b){var c=null;if(!a[A][x]){a[M].zoom=1}switch(b){case N:c=a[T];break;case y:c=a.offsetHeight-a.clientHeight-a[T];break;case Q:c=a[O];break;case E:c=a.offsetWidth-a.clientWidth-a[O];break}return c+L},getPixel:function(f,b){var a=null,e=f[A][J],c=f[A][b];f[M][J]=c;a=f[M].pixelRight;f[M][J]=e;return a+L},getMargin:function(c,a){var b;if(c[A][a]==I){b=0+L}else{b=S.Dom.IE.ComputedStyle.getPixel(c,a)}return b},getVisibility:function(c,a){var b;while((b=c[A])&&b[a]==\"inherit\"){c=c[K]}return(b)?b[a]:B},getColor:function(b,a){return S.Dom.Color.toRGB(b[A][a])||D},getBorderColor:function(e,b){var c=e[A],a=c[b]||c.color;return S.Dom.Color.toRGB(S.Dom.Color.toHex(a))}},R={};R.top=R.right=R.bottom=R.left=R[P]=R[G]=H.getOffset;R.color=H.getColor;R[N]=R[E]=R[y]=R[Q]=H.getBorderWidth;R.marginTop=R.marginRight=R.marginBottom=R.marginLeft=H.getMargin;R.visibility=H.getVisibility;R.borderColor=R.borderTopColor=R.borderRightColor=R.borderBottomColor=R.borderLeftColor=H.getBorderColor;S.Dom.IE_COMPUTED=R;S.Dom.IE_ComputedStyle=H})();(function(){var h=\"toString\",f=parseInt,e=RegExp,g=YAHOO.util;g.Dom.Color={KEYWORDS:{black:\"000\",silver:\"c0c0c0\",gray:\"808080\",white:\"fff\",maroon:\"800000\",red:\"f00\",purple:\"800080\",fuchsia:\"f0f\",green:\"008000\",lime:\"0f0\",olive:\"808000\",yellow:\"ff0\",navy:\"000080\",blue:\"00f\",teal:\"008080\",aqua:\"0ff\"},re_RGB:/^rgb\\(([0-9]+)\\s*,\\s*([0-9]+)\\s*,\\s*([0-9]+)\\)$/i,re_hex:/^#?([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})$/i,re_hex3:/([0-9A-F])/gi,toRGB:function(a){if(!g.Dom.Color.re_RGB.test(a)){a=g.Dom.Color.toHex(a)}if(g.Dom.Color.re_hex.exec(a)){a=\"rgb(\"+[f(e.$1,16),f(e.$2,16),f(e.$3,16)].join(\", \")+\")\"}return a},toHex:function(a){a=g.Dom.Color.KEYWORDS[a]||a;if(g.Dom.Color.re_RGB.exec(a)){a=[Number(e.$1).toString(16),Number(e.$2).toString(16),Number(e.$3).toString(16)];for(var b=0;b<a.length;b++){if(a[b].length<2){a[b]=\"0\"+a[b]}}a=a.join(\"\")}if(a.length<6){a=a.replace(g.Dom.Color.re_hex3,\"$1$1\")}if(a!==\"transparent\"&&a.indexOf(\"#\")<0){a=\"#\"+a}return a.toUpperCase()}}}());YAHOO.register(\"dom\",YAHOO.util.Dom,{version:\"2.9.0\",build:\"2800\"});YAHOO.util.CustomEvent=function(l,m,g,h,k){this.type=l;this.scope=m||window;this.silent=g;this.fireOnce=k;this.fired=false;this.firedWith=null;this.signature=h||YAHOO.util.CustomEvent.LIST;this.subscribers=[];if(!this.silent){}var j=\"_YUICEOnSubscribe\";if(l!==j){this.subscribeEvent=new YAHOO.util.CustomEvent(j,this,true)}this.lastError=null};YAHOO.util.CustomEvent.LIST=0;YAHOO.util.CustomEvent.FLAT=1;YAHOO.util.CustomEvent.prototype={subscribe:function(e,h,g){if(!e){throw new Error(\"Invalid callback for subscriber to '\"+this.type+\"'\")}if(this.subscribeEvent){this.subscribeEvent.fire(e,h,g)}var f=new YAHOO.util.Subscriber(e,h,g);if(this.fireOnce&&this.fired){this.notify(f,this.firedWith)}else{this.subscribers.push(f)}},unsubscribe:function(l,j){if(!l){return this.unsubscribeAll()}var k=false;for(var g=0,h=this.subscribers.length;g<h;++g){var m=this.subscribers[g];if(m&&m.contains(l,j)){this._delete(g);k=true}}return k},fire:function(){this.lastError=null;var l=[],k=this.subscribers.length;var p=[].slice.call(arguments,0),q=true,n,j=false;if(this.fireOnce){if(this.fired){return true}else{this.firedWith=p}}this.fired=true;if(!k&&this.silent){return true}if(!this.silent){}var o=this.subscribers.slice();for(n=0;n<k;++n){var m=o[n];if(!m||!m.fn){j=true}else{q=this.notify(m,p);if(false===q){if(!this.silent){}break}}}return(q!==false)},notify:function(m,p){var e,k=null,n=m.getScope(this.scope),j=YAHOO.util.Event.throwErrors;if(!this.silent){}if(this.signature==YAHOO.util.CustomEvent.FLAT){if(p.length>0){k=p[0]}try{e=m.fn.call(n,k,m.obj)}catch(l){this.lastError=l;if(j){throw l}}}else{try{e=m.fn.call(n,this.type,p,m.obj)}catch(o){this.lastError=o;if(j){throw o}}}return e},unsubscribeAll:function(){var e=this.subscribers.length,c;for(c=e-1;c>-1;c--){this._delete(c)}this.subscribers=[];return e},_delete:function(e){var c=this.subscribers[e];if(c){delete c.fn;delete c.obj}this.subscribers.splice(e,1)},toString:function(){return\"CustomEvent: '\"+this.type+\"', context: \"+this.scope}};YAHOO.util.Subscriber=function(f,e,g){this.fn=f;this.obj=YAHOO.lang.isUndefined(e)?null:e;this.overrideContext=g};YAHOO.util.Subscriber.prototype.getScope=function(b){if(this.overrideContext){if(this.overrideContext===true){return this.obj}else{return this.overrideContext}}return b};YAHOO.util.Subscriber.prototype.contains=function(e,c){if(c){return(this.fn==e&&this.obj==c)}else{return(this.fn==e)}};YAHOO.util.Subscriber.prototype.toString=function(){return\"Subscriber { obj: \"+this.obj+\", overrideContext: \"+(this.overrideContext||\"no\")+\" }\"};if(!YAHOO.util.Event){YAHOO.util.Event=function(){var n=false,m=[],k=[],t=0,p=[],s=0,r={63232:38,63233:40,63234:37,63235:39,63276:33,63277:34,25:9},q=YAHOO.env.ua.ie,o=\"focusin\",l=\"focusout\";return{POLL_RETRYS:500,POLL_INTERVAL:40,EL:0,TYPE:1,FN:2,WFN:3,UNLOAD_OBJ:3,ADJ_SCOPE:4,OBJ:5,OVERRIDE:6,CAPTURE:7,lastError:null,isSafari:YAHOO.env.ua.webkit,webkit:YAHOO.env.ua.webkit,isIE:q,_interval:null,_dri:null,_specialTypes:{focusin:(q?\"focusin\":\"focus\"),focusout:(q?\"focusout\":\"blur\")},DOMReady:false,throwErrors:false,startInterval:function(){if(!this._interval){this._interval=YAHOO.lang.later(this.POLL_INTERVAL,this,this._tryPreloadAttach,null,true)}},onAvailable:function(e,a,g,f,h){var c=(YAHOO.lang.isString(e))?[e]:e;for(var b=0;b<c.length;b=b+1){p.push({id:c[b],fn:a,obj:g,overrideContext:f,checkReady:h})}t=this.POLL_RETRYS;this.startInterval()},onContentReady:function(e,c,b,a){this.onAvailable(e,c,b,a,true)},onDOMReady:function(){this.DOMReadyEvent.subscribe.apply(this.DOMReadyEvent,arguments)},_addListener:function(g,j,C,c,E,z){if(!C||!C.call){return false}if(this._isValidCollection(g)){var B=true;for(var b=0,F=g.length;b<F;++b){B=this.on(g[b],j,C,c,E)&&B}return B}else{if(YAHOO.lang.isString(g)){var e=this.getEl(g);if(e){g=e}else{this.onAvailable(g,function(){YAHOO.util.Event._addListener(g,j,C,c,E,z)});return true}}}if(!g){return false}if(\"unload\"==j&&c!==this){k[k.length]=[g,j,C,c,E];return true}var h=g;if(E){if(E===true){h=c}else{h=E}}var f=function(u){return C.call(h,YAHOO.util.Event.getEvent(u,g),c)};var A=[g,j,C,f,h,c,E,z];var a=m.length;m[a]=A;try{this._simpleAdd(g,j,f,z)}catch(D){this.lastError=D;this.removeListener(g,j,C);return false}return true},_getType:function(a){return this._specialTypes[a]||a},addListener:function(a,e,b,g,f){var c=((e==o||e==l)&&!YAHOO.env.ua.ie)?true:false;return this._addListener(a,this._getType(e),b,g,f,c)},addFocusListener:function(b,c,a,e){return this.on(b,o,c,a,e)},removeFocusListener:function(a,b){return this.removeListener(a,o,b)},addBlurListener:function(b,c,a,e){return this.on(b,l,c,a,e)},removeBlurListener:function(a,b){return this.removeListener(a,l,b)},removeListener:function(h,j,a){var g,c,v;j=this._getType(j);if(typeof h==\"string\"){h=this.getEl(h)}else{if(this._isValidCollection(h)){var y=true;for(g=h.length-1;g>-1;g--){y=(this.removeListener(h[g],j,a)&&y)}return y}}if(!a||!a.call){return this.purgeElement(h,false,j)}if(\"unload\"==j){for(g=k.length-1;g>-1;g--){v=k[g];if(v&&v[0]==h&&v[1]==j&&v[2]==a){k.splice(g,1);return true}}return false}var f=null;var e=arguments[3];if(\"undefined\"===typeof e){e=this._getCacheIndex(m,h,j,a)}if(e>=0){f=m[e]}if(!h||!f){return false}var x=f[this.CAPTURE]===true?true:false;try{this._simpleRemove(h,j,f[this.WFN],x)}catch(b){this.lastError=b;return false}delete m[e][this.WFN];delete m[e][this.FN];m.splice(e,1);return true},getTarget:function(a,b){var c=a.target||a.srcElement;return this.resolveTextNode(c)},resolveTextNode:function(a){try{if(a&&3==a.nodeType){return a.parentNode}}catch(b){return null}return a},getPageX:function(a){var b=a.pageX;if(!b&&0!==b){b=a.clientX||0;if(this.isIE){b+=this._getScrollLeft()}}return b},getPageY:function(b){var a=b.pageY;if(!a&&0!==a){a=b.clientY||0;if(this.isIE){a+=this._getScrollTop()}}return a},getXY:function(a){return[this.getPageX(a),this.getPageY(a)]},getRelatedTarget:function(a){var b=a.relatedTarget;if(!b){if(a.type==\"mouseout\"){b=a.toElement}else{if(a.type==\"mouseover\"){b=a.fromElement}}}return this.resolveTextNode(b)},getTime:function(a){if(!a.time){var b=new Date().getTime();try{a.time=b}catch(c){this.lastError=c;return b}}return a.time},stopEvent:function(a){this.stopPropagation(a);this.preventDefault(a)},stopPropagation:function(a){if(a.stopPropagation){a.stopPropagation()}else{a.cancelBubble=true}},preventDefault:function(a){if(a.preventDefault){a.preventDefault()}else{a.returnValue=false}},getEvent:function(a,c){var b=a||window.event;if(!b){var e=this.getEvent.caller;while(e){b=e.arguments[0];if(b&&Event==b.constructor){break}e=e.caller}}return b},getCharCode:function(a){var b=a.keyCode||a.charCode||0;if(YAHOO.env.ua.webkit&&(b in r)){b=r[b]}return b},_getCacheIndex:function(h,e,c,f){for(var g=0,a=h.length;g<a;g=g+1){var b=h[g];if(b&&b[this.FN]==f&&b[this.EL]==e&&b[this.TYPE]==c){return g}}return -1},generateId:function(b){var a=b.id;if(!a){a=\"yuievtautoid-\"+s;++s;b.id=a}return a},_isValidCollection:function(a){try{return(a&&typeof a!==\"string\"&&a.length&&!a.tagName&&!a.alert&&typeof a[0]!==\"undefined\")}catch(b){return false}},elCache:{},getEl:function(a){return(typeof a===\"string\")?document.getElementById(a):a},clearCache:function(){},DOMReadyEvent:new YAHOO.util.CustomEvent(\"DOMReady\",YAHOO,0,0,1),_load:function(a){if(!n){n=true;var b=YAHOO.util.Event;b._ready();b._tryPreloadAttach()}},_ready:function(a){var b=YAHOO.util.Event;if(!b.DOMReady){b.DOMReady=true;b.DOMReadyEvent.fire();b._simpleRemove(document,\"DOMContentLoaded\",b._ready)}},_tryPreloadAttach:function(){if(p.length===0){t=0;if(this._interval){this._interval.cancel();this._interval=null}return}if(this.locked){return}if(this.isIE){if(!this.DOMReady){this.startInterval();return}}this.locked=true;var f=!n;if(!f){f=(t>0&&p.length>0)}var g=[];var e=function(x,v){var y=x;if(v.overrideContext){if(v.overrideContext===true){y=v.obj}else{y=v.overrideContext}}v.fn.call(y,v.obj)};var b,c,h,j,a=[];for(b=0,c=p.length;b<c;b=b+1){h=p[b];if(h){j=this.getEl(h.id);if(j){if(h.checkReady){if(n||j.nextSibling||!f){a.push(h);p[b]=null}}else{e(j,h);p[b]=null}}else{g.push(h)}}}for(b=0,c=a.length;b<c;b=b+1){h=a[b];e(this.getEl(h.id),h)}t--;if(f){for(b=p.length-1;b>-1;b--){h=p[b];if(!h||!h.id){p.splice(b,1)}}this.startInterval()}else{if(this._interval){this._interval.cancel();this._interval=null}}this.locked=false},purgeElement:function(g,f,c){var j=(YAHOO.lang.isString(g))?this.getEl(g):g;var e=this.getListeners(j,c),h,b;if(e){for(h=e.length-1;h>-1;h--){var a=e[h];this.removeListener(j,a.type,a.fn)}}if(f&&j&&j.childNodes){for(h=0,b=j.childNodes.length;h<b;++h){this.purgeElement(j.childNodes[h],f,c)}}},getListeners:function(f,h){var b=[],g;if(!h){g=[m,k]}else{if(h===\"unload\"){g=[k]}else{h=this._getType(h);g=[m]}}var x=(YAHOO.lang.isString(f))?this.getEl(f):f;for(var c=0;c<g.length;c=c+1){var j=g[c];if(j){for(var a=0,v=j.length;a<v;++a){var e=j[a];if(e&&e[this.EL]===x&&(!h||h===e[this.TYPE])){b.push({type:e[this.TYPE],fn:e[this.FN],obj:e[this.OBJ],adjust:e[this.OVERRIDE],scope:e[this.ADJ_SCOPE],index:a})}}}}return(b.length)?b:null},_unload:function(A){var g=YAHOO.util.Event,c,e,f,a,b,z=k.slice(),h;for(c=0,a=k.length;c<a;++c){f=z[c];if(f){try{h=window;if(f[g.ADJ_SCOPE]){if(f[g.ADJ_SCOPE]===true){h=f[g.UNLOAD_OBJ]}else{h=f[g.ADJ_SCOPE]}}f[g.FN].call(h,g.getEvent(A,f[g.EL]),f[g.UNLOAD_OBJ])}catch(j){}z[c]=null}}f=null;h=null;k=null;if(m){for(e=m.length-1;e>-1;e--){f=m[e];if(f){try{g.removeListener(f[g.EL],f[g.TYPE],f[g.FN],e)}catch(x){}}}f=null}try{g._simpleRemove(window,\"unload\",g._unload);g._simpleRemove(window,\"load\",g._load)}catch(y){}},_getScrollLeft:function(){return this._getScroll()[1]},_getScrollTop:function(){return this._getScroll()[0]},_getScroll:function(){var b=document.documentElement,a=document.body;if(b&&(b.scrollTop||b.scrollLeft)){return[b.scrollTop,b.scrollLeft]}else{if(a){return[a.scrollTop,a.scrollLeft]}else{return[0,0]}}},regCE:function(){},_simpleAdd:function(){if(window.addEventListener){return function(a,e,b,c){a.addEventListener(e,b,(c))}}else{if(window.attachEvent){return function(a,e,b,c){a.attachEvent(\"on\"+e,b)}}else{return function(){}}}}(),_simpleRemove:function(){if(window.removeEventListener){return function(a,e,b,c){a.removeEventListener(e,b,(c))}}else{if(window.detachEvent){return function(b,a,c){b.detachEvent(\"on\"+a,c)}}else{return function(){}}}}()}}();(function(){var e=YAHOO.util.Event;e.on=e.addListener;e.onFocus=e.addFocusListener;e.onBlur=e.addBlurListener;\n/* DOMReady: based on work by: Dean Edwards/John Resig/Matthias Miller/Diego Perini */\nif(e.isIE){if(self!==self.top){document.onreadystatechange=function(){if(document.readyState==\"complete\"){document.onreadystatechange=null;e._ready()}}}else{YAHOO.util.Event.onDOMReady(YAHOO.util.Event._tryPreloadAttach,YAHOO.util.Event,true);var c=document.createElement(\"p\");e._dri=setInterval(function(){try{c.doScroll(\"left\");clearInterval(e._dri);e._dri=null;e._ready();c=null}catch(a){}},e.POLL_INTERVAL)}}else{if(e.webkit&&e.webkit<525){e._dri=setInterval(function(){var a=document.readyState;if(\"loaded\"==a||\"complete\"==a){clearInterval(e._dri);e._dri=null;e._ready()}},e.POLL_INTERVAL)}else{e._simpleAdd(document,\"DOMContentLoaded\",e._ready)}}e._simpleAdd(window,\"load\",e._load);e._simpleAdd(window,\"unload\",e._unload);e._tryPreloadAttach()})()}YAHOO.util.EventProvider=function(){};YAHOO.util.EventProvider.prototype={__yui_events:null,__yui_subscribers:null,subscribe:function(h,m,j,k){this.__yui_events=this.__yui_events||{};var l=this.__yui_events[h];if(l){l.subscribe(m,j,k)}else{this.__yui_subscribers=this.__yui_subscribers||{};var g=this.__yui_subscribers;if(!g[h]){g[h]=[]}g[h].push({fn:m,obj:j,overrideContext:k})}},unsubscribe:function(o,m,k){this.__yui_events=this.__yui_events||{};var j=this.__yui_events;if(o){var l=j[o];if(l){return l.unsubscribe(m,k)}}else{var h=true;for(var n in j){if(YAHOO.lang.hasOwnProperty(j,n)){h=h&&j[n].unsubscribe(m,k)}}return h}return false},unsubscribeAll:function(b){return this.unsubscribe(b)},createEvent:function(h,k){this.__yui_events=this.__yui_events||{};var m=k||{},n=this.__yui_events,l;if(n[h]){}else{l=new YAHOO.util.CustomEvent(h,m.scope||this,m.silent,YAHOO.util.CustomEvent.FLAT,m.fireOnce);n[h]=l;if(m.onSubscribeCallback){l.subscribeEvent.subscribe(m.onSubscribeCallback)}this.__yui_subscribers=this.__yui_subscribers||{};var j=this.__yui_subscribers[h];if(j){for(var o=0;o<j.length;++o){l.subscribe(j[o].fn,j[o].obj,j[o].overrideContext)}}}return n[h]},fireEvent:function(e){this.__yui_events=this.__yui_events||{};var g=this.__yui_events[e];if(!g){return null}var f=[];for(var h=1;h<arguments.length;++h){f.push(arguments[h])}return g.fire.apply(g,f)},hasEvent:function(b){if(this.__yui_events){if(this.__yui_events[b]){return true}}return false}};(function(){var f=YAHOO.util.Event,g=YAHOO.lang;YAHOO.util.KeyListener=function(l,a,k,j){if(!l){}else{if(!a){}else{if(!k){}}}if(!j){j=YAHOO.util.KeyListener.KEYDOWN}var c=new YAHOO.util.CustomEvent(\"keyPressed\");this.enabledEvent=new YAHOO.util.CustomEvent(\"enabled\");this.disabledEvent=new YAHOO.util.CustomEvent(\"disabled\");if(g.isString(l)){l=document.getElementById(l)}if(g.isFunction(k)){c.subscribe(k)}else{c.subscribe(k.fn,k.scope,k.correctScope)}function b(s,t){if(!a.shift){a.shift=false}if(!a.alt){a.alt=false}if(!a.ctrl){a.ctrl=false}if(s.shiftKey==a.shift&&s.altKey==a.alt&&s.ctrlKey==a.ctrl){var r,h=a.keys,p;if(YAHOO.lang.isArray(h)){for(var q=0;q<h.length;q++){r=h[q];p=f.getCharCode(s);if(r==p){c.fire(p,s);break}}}else{p=f.getCharCode(s);if(h==p){c.fire(p,s)}}}}this.enable=function(){if(!this.enabled){f.on(l,j,b);this.enabledEvent.fire(a)}this.enabled=true};this.disable=function(){if(this.enabled){f.removeListener(l,j,b);this.disabledEvent.fire(a)}this.enabled=false};this.toString=function(){return\"KeyListener [\"+a.keys+\"] \"+l.tagName+(l.id?\"[\"+l.id+\"]\":\"\")}};var e=YAHOO.util.KeyListener;e.KEYDOWN=\"keydown\";e.KEYUP=\"keyup\";e.KEY={ALT:18,BACK_SPACE:8,CAPS_LOCK:20,CONTROL:17,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:27,HOME:36,LEFT:37,META:224,NUM_LOCK:144,PAGE_DOWN:34,PAGE_UP:33,PAUSE:19,PRINTSCREEN:44,RIGHT:39,SCROLL_LOCK:145,SHIFT:16,SPACE:32,TAB:9,UP:38}})();YAHOO.register(\"event\",YAHOO.util.Event,{version:\"2.9.0\",build:\"2800\"});YAHOO.register(\"yahoo-dom-event\",YAHOO,{version:\"2.9.0\",build:\"2800\"});(function(){var q=document,y=q.createElement(\"p\"),v=y.style,x=YAHOO.lang,n={},r={},u=0,p=(\"cssFloat\" in v)?\"cssFloat\":\"styleFloat\",t,z,o;z=(\"opacity\" in v)?function(a){a.opacity=\"\"}:function(a){a.filter=\"\"};v.border=\"1px solid red\";v.border=\"\";o=v.borderLeft?function(b,a){var c;if(a!==p&&a.toLowerCase().indexOf(\"float\")!=-1){a=p}if(typeof b[a]===\"string\"){switch(a){case\"opacity\":case\"filter\":z(b);break;case\"font\":b.font=b.fontStyle=b.fontVariant=b.fontWeight=b.fontSize=b.lineHeight=b.fontFamily=\"\";break;default:for(c in b){if(c.indexOf(a)===0){b[c]=\"\"}}}}}:function(a,b){if(b!==p&&b.toLowerCase().indexOf(\"float\")!=-1){b=p}if(x.isString(a[b])){if(b===\"opacity\"){z(a)}else{a[b]=\"\"}}};function s(l,c){var h,A,j,k={},e,g,a,m,f,b;if(!(this instanceof s)){return new s(l,c)}A=l&&(l.nodeName?l:q.getElementById(l));if(l&&r[l]){return r[l]}else{if(A&&A.yuiSSID&&r[A.yuiSSID]){return r[A.yuiSSID]}}if(!A||!/^(?:style|link)$/i.test(A.nodeName)){A=q.createElement(\"style\");A.type=\"text/css\"}if(x.isString(l)){if(l.indexOf(\"{\")!=-1){if(A.styleSheet){A.styleSheet.cssText=l}else{A.appendChild(q.createTextNode(l))}}else{if(!c){c=l}}}if(!A.parentNode||A.parentNode.nodeName.toLowerCase()!==\"head\"){h=(A.ownerDocument||q).getElementsByTagName(\"head\")[0];h.appendChild(A)}j=A.sheet||A.styleSheet;e=j&&(\"cssRules\" in j)?\"cssRules\":\"rules\";a=(\"deleteRule\" in j)?function(B){j.deleteRule(B)}:function(B){j.removeRule(B)};g=(\"insertRule\" in j)?function(B,D,C){j.insertRule(B+\" {\"+D+\"}\",C)}:function(B,D,C){j.addRule(B,D,C)};for(m=j[e].length-1;m>=0;--m){f=j[e][m];b=f.selectorText;if(k[b]){k[b].style.cssText+=\";\"+f.style.cssText;a(m)}else{k[b]=f}}A.yuiSSID=\"yui-stylesheet-\"+(u++);s.register(A.yuiSSID,this);if(c){s.register(c,this)}x.augmentObject(this,{getId:function(){return A.yuiSSID},node:A,enable:function(){j.disabled=false;return this},disable:function(){j.disabled=true;return this},isEnabled:function(){return !j.disabled},set:function(J,E){var G=k[J],I=J.split(/\\s*,\\s*/),H,F;if(I.length>1){for(H=I.length-1;H>=0;--H){this.set(I[H],E)}return this}if(!s.isValidSelector(J)){return this}if(G){G.style.cssText=s.toCssText(E,G.style.cssText)}else{F=j[e].length;E=s.toCssText(E);if(E){g(J,E,F);k[J]=j[e][F]}}return this},unset:function(L,F){var I=k[L],K=L.split(/\\s*,\\s*/),G=!F,H,J;if(K.length>1){for(J=K.length-1;J>=0;--J){this.unset(K[J],F)}return this}if(I){if(!G){if(!x.isArray(F)){F=[F]}v.cssText=I.style.cssText;for(J=F.length-1;J>=0;--J){o(v,F[J])}if(v.cssText){I.style.cssText=v.cssText}else{G=true}}if(G){H=j[e];for(J=H.length-1;J>=0;--J){if(H[J]===I){delete k[L];a(J);break}}}}return this},getCssText:function(C){var F,E,D;if(x.isString(C)){F=k[C.split(/\\s*,\\s*/)[0]];return F?F.style.cssText:null}else{E=[];for(D in k){if(k.hasOwnProperty(D)){F=k[D];E.push(F.selectorText+\" {\"+F.style.cssText+\"}\")}}return E.join(\"\\n\")}}},true)}t=function(g,c){var f=g.styleFloat||g.cssFloat||g[\"float\"],a;try{v.cssText=c||\"\"}catch(e){y=q.createElement(\"p\");v=y.style;v.cssText=c||\"\"}if(x.isString(g)){v.cssText+=\";\"+g}else{if(f&&!g[p]){g=x.merge(g);delete g.styleFloat;delete g.cssFloat;delete g[\"float\"];g[p]=f}for(a in g){if(g.hasOwnProperty(a)){try{v[a]=x.trim(g[a])}catch(b){}}}}return v.cssText};x.augmentObject(s,{toCssText:((\"opacity\" in v)?t:function(a,b){if(x.isObject(a)&&\"opacity\" in a){a=x.merge(a,{filter:\"alpha(opacity=\"+(a.opacity*100)+\")\"});delete a.opacity}return t(a,b)}),register:function(a,b){return !!(a&&b instanceof s&&!r[a]&&(r[a]=b))},isValidSelector:function(b){var a=false;if(b&&x.isString(b)){if(!n.hasOwnProperty(b)){n[b]=!/\\S/.test(b.replace(/\\s+|\\s*[+~>]\\s*/g,\" \").replace(/([^ ])\\[.*?\\]/g,\"$1\").replace(/([^ ])::?[a-z][a-z\\-]+[a-z](?:\\(.*?\\))?/ig,\"$1\").replace(/(?:^| )[a-z0-6]+/ig,\" \").replace(/\\\\./g,\"\").replace(/[.#]\\w[\\w\\-]*/g,\"\"))}a=n[b]}return a}},true);YAHOO.util.StyleSheet=s})();YAHOO.register(\"stylesheet\",YAHOO.util.StyleSheet,{version:\"2.9.0\",build:\"2800\"});if(typeof(YAHOO.util.ImageLoader)==\"undefined\"){YAHOO.util.ImageLoader={}}YAHOO.util.ImageLoader.group=function(a,c,b){this.name=\"unnamed\";this._imgObjs={};this.timeoutLen=b;this._timeout=null;this._triggers=[];this._customTriggers=[];this.foldConditional=false;this.className=null;this._classImageEls=null;if(YAHOO.util.Event.DOMReady){this._onloadTasks()}else{YAHOO.util.Event.onDOMReady(this._onloadTasks,this,true)}this.addTrigger(a,c)};YAHOO.util.ImageLoader.group.prototype.addTrigger=function(c,b){if(!c||!b){return}var a=function(){this.fetch()};this._triggers.push([c,b,a]);YAHOO.util.Event.addListener(c,b,a,this,true)};YAHOO.util.ImageLoader.group.prototype.addCustomTrigger=function(b){if(!b||!b instanceof YAHOO.util.CustomEvent){return}var a=function(){this.fetch()};this._customTriggers.push([b,a]);b.subscribe(a,this,true)};YAHOO.util.ImageLoader.group.prototype._onloadTasks=function(){if(this.timeoutLen&&typeof(this.timeoutLen)==\"number\"&&this.timeoutLen>0){this._timeout=setTimeout(this._getFetchTimeout(),this.timeoutLen*1000)}if(this.foldConditional){this._foldCheck()}};YAHOO.util.ImageLoader.group.prototype._getFetchTimeout=function(){var a=this;return function(){a.fetch()}};YAHOO.util.ImageLoader.group.prototype.registerBgImage=function(b,a){this._imgObjs[b]=new YAHOO.util.ImageLoader.bgImgObj(b,a);return this._imgObjs[b]};YAHOO.util.ImageLoader.group.prototype.registerSrcImage=function(b,e,c,a){this._imgObjs[b]=new YAHOO.util.ImageLoader.srcImgObj(b,e,c,a);return this._imgObjs[b]};YAHOO.util.ImageLoader.group.prototype.registerPngBgImage=function(b,c,a){this._imgObjs[b]=new YAHOO.util.ImageLoader.pngBgImgObj(b,c,a);return this._imgObjs[b]};YAHOO.util.ImageLoader.group.prototype.fetch=function(){var c,a,b;clearTimeout(this._timeout);for(c=0,a=this._triggers.length;c<a;c++){YAHOO.util.Event.removeListener(this._triggers[c][0],this._triggers[c][1],this._triggers[c][2])}for(c=0,a=this._customTriggers.length;c<a;c++){this._customTriggers[c][0].unsubscribe(this._customTriggers[c][1],this)}this._fetchByClass();for(b in this._imgObjs){if(YAHOO.lang.hasOwnProperty(this._imgObjs,b)){this._imgObjs[b].fetch()}}};YAHOO.util.ImageLoader.group.prototype._foldCheck=function(){var b=(document.compatMode!=\"CSS1Compat\")?document.body.scrollTop:document.documentElement.scrollTop,a=YAHOO.util.Dom.getViewportHeight(),e=b+a,l=(document.compatMode!=\"CSS1Compat\")?document.body.scrollLeft:document.documentElement.scrollLeft,j=YAHOO.util.Dom.getViewportWidth(),g=l+j,c,f,k,h;for(c in this._imgObjs){if(YAHOO.lang.hasOwnProperty(this._imgObjs,c)){f=YAHOO.util.Dom.getXY(this._imgObjs[c].domId);if(f[1]<e&&f[0]<g){this._imgObjs[c].fetch()}}}if(this.className){this._classImageEls=YAHOO.util.Dom.getElementsByClassName(this.className);for(k=0,h=this._classImageEls.length;k<h;k++){f=YAHOO.util.Dom.getXY(this._classImageEls[k]);if(f[1]<e&&f[0]<g){YAHOO.util.Dom.removeClass(this._classImageEls[k],this.className)}}}};YAHOO.util.ImageLoader.group.prototype._fetchByClass=function(){if(!this.className){return}if(this._classImageEls===null){this._classImageEls=YAHOO.util.Dom.getElementsByClassName(this.className)}YAHOO.util.Dom.removeClass(this._classImageEls,this.className)};YAHOO.util.ImageLoader.imgObj=function(b,a){this.domId=b;this.url=a;this.width=null;this.height=null;this.setVisible=false;this._fetched=false};YAHOO.util.ImageLoader.imgObj.prototype.fetch=function(){if(this._fetched){return}var a=document.getElementById(this.domId);if(!a){return}this._applyUrl(a);if(this.setVisible){a.style.visibility=\"visible\"}if(this.width){a.width=this.width}if(this.height){a.height=this.height}this._fetched=true};YAHOO.util.ImageLoader.imgObj.prototype._applyUrl=function(a){};YAHOO.util.ImageLoader.bgImgObj=function(b,a){YAHOO.util.ImageLoader.bgImgObj.superclass.constructor.call(this,b,a)};YAHOO.lang.extend(YAHOO.util.ImageLoader.bgImgObj,YAHOO.util.ImageLoader.imgObj);YAHOO.util.ImageLoader.bgImgObj.prototype._applyUrl=function(a){a.style.backgroundImage=\"url('\"+this.url+\"')\"};YAHOO.util.ImageLoader.srcImgObj=function(b,e,c,a){YAHOO.util.ImageLoader.srcImgObj.superclass.constructor.call(this,b,e);this.width=c;this.height=a};YAHOO.lang.extend(YAHOO.util.ImageLoader.srcImgObj,YAHOO.util.ImageLoader.imgObj);YAHOO.util.ImageLoader.srcImgObj.prototype._applyUrl=function(a){a.src=this.url};YAHOO.util.ImageLoader.pngBgImgObj=function(b,c,a){YAHOO.util.ImageLoader.pngBgImgObj.superclass.constructor.call(this,b,c);this.props=a||{}};YAHOO.lang.extend(YAHOO.util.ImageLoader.pngBgImgObj,YAHOO.util.ImageLoader.imgObj);YAHOO.util.ImageLoader.pngBgImgObj.prototype._applyUrl=function(c){if(YAHOO.env.ua.ie&&YAHOO.env.ua.ie<=6){var b=(YAHOO.lang.isUndefined(this.props.sizingMethod))?\"scale\":this.props.sizingMethod,a=(YAHOO.lang.isUndefined(this.props.enabled))?\"true\":this.props.enabled;c.style.filter='progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\"'+this.url+'\", sizingMethod=\"'+b+'\", enabled=\"'+a+'\")'}else{c.style.backgroundImage=\"url('\"+this.url+\"')\"}};YAHOO.register(\"imageloader\",YAHOO.util.ImageLoader,{version:\"2.9.0\",build:\"2800\"});YAHOO.namespace(\"util\");YAHOO.util.Cookie={_createCookieString:function(g,e,f,a){var b=YAHOO.lang,c=encodeURIComponent(g)+\"=\"+(f?encodeURIComponent(e):e);if(b.isObject(a)){if(a.expires instanceof Date){c+=\"; expires=\"+a.expires.toUTCString()}if(b.isString(a.path)&&a.path!==\"\"){c+=\"; path=\"+a.path}if(b.isString(a.domain)&&a.domain!==\"\"){c+=\"; domain=\"+a.domain}if(a.secure===true){c+=\"; secure\"}}return c},_createCookieHashString:function(e){var b=YAHOO.lang;if(!b.isObject(e)){throw new TypeError(\"Cookie._createCookieHashString(): Argument must be an object.\")}var c=[];for(var a in e){if(b.hasOwnProperty(e,a)&&!b.isFunction(e[a])&&!b.isUndefined(e[a])){c.push(encodeURIComponent(a)+\"=\"+encodeURIComponent(String(e[a])))}}return c.join(\"&\")},_parseCookieHash:function(c){var e=c.split(\"&\"),b=null,f={};if(c.length>0){for(var g=0,a=e.length;g<a;g++){b=e[g].split(\"=\");f[decodeURIComponent(b[0])]=decodeURIComponent(b[1])}}return f},_parseCookieString:function(g,e){var f={};if(YAHOO.lang.isString(g)&&g.length>0){var c=(e===false?function(n){return n}:decodeURIComponent);var j=g.split(/;\\s/g),h=null,b=null,m=null;for(var a=0,l=j.length;a<l;a++){m=j[a].match(/([^=]+)=/i);if(m instanceof Array){try{h=decodeURIComponent(m[1]);b=c(j[a].substring(m[1].length+1))}catch(k){}}else{h=decodeURIComponent(j[a]);b=\"\"}f[h]=b}}return f},exists:function(a){if(!YAHOO.lang.isString(a)||a===\"\"){throw new TypeError(\"Cookie.exists(): Cookie name must be a non-empty string.\")}var b=this._parseCookieString(document.cookie,true);return b.hasOwnProperty(a)},get:function(f,a){var b=YAHOO.lang,e;if(b.isFunction(a)){e=a;a={}}else{if(b.isObject(a)){e=a.converter}else{a={}}}var c=this._parseCookieString(document.cookie,!a.raw);if(!b.isString(f)||f===\"\"){throw new TypeError(\"Cookie.get(): Cookie name must be a non-empty string.\")}if(b.isUndefined(c[f])){return null}if(!b.isFunction(e)){return c[f]}else{return e(c[f])}},getSub:function(a,e,f){var b=YAHOO.lang,c=this.getSubs(a);if(c!==null){if(!b.isString(e)||e===\"\"){throw new TypeError(\"Cookie.getSub(): Subcookie name must be a non-empty string.\")}if(b.isUndefined(c[e])){return null}if(!b.isFunction(f)){return c[e]}else{return f(c[e])}}else{return null}},getSubs:function(c){var a=YAHOO.lang.isString;if(!a(c)||c===\"\"){throw new TypeError(\"Cookie.getSubs(): Cookie name must be a non-empty string.\")}var b=this._parseCookieString(document.cookie,false);if(a(b[c])){return this._parseCookieHash(b[c])}return null},remove:function(b,a){if(!YAHOO.lang.isString(b)||b===\"\"){throw new TypeError(\"Cookie.remove(): Cookie name must be a non-empty string.\")}a=YAHOO.lang.merge(a||{},{expires:new Date(0)});return this.set(b,\"\",a)},removeSub:function(g,c,a){var b=YAHOO.lang;a=a||{};if(!b.isString(g)||g===\"\"){throw new TypeError(\"Cookie.removeSub(): Cookie name must be a non-empty string.\")}if(!b.isString(c)||c===\"\"){throw new TypeError(\"Cookie.removeSub(): Subcookie name must be a non-empty string.\")}var e=this.getSubs(g);if(b.isObject(e)&&b.hasOwnProperty(e,c)){delete e[c];if(!a.removeIfEmpty){return this.setSubs(g,e,a)}else{for(var f in e){if(b.hasOwnProperty(e,f)&&!b.isFunction(e[f])&&!b.isUndefined(e[f])){return this.setSubs(g,e,a)}}return this.remove(g,a)}}else{return\"\"}},set:function(f,e,a){var b=YAHOO.lang;a=a||{};if(!b.isString(f)){throw new TypeError(\"Cookie.set(): Cookie name must be a string.\")}if(b.isUndefined(e)){throw new TypeError(\"Cookie.set(): Value cannot be undefined.\")}var c=this._createCookieString(f,e,!a.raw,a);document.cookie=c;return c},setSub:function(g,e,f,a){var b=YAHOO.lang;if(!b.isString(g)||g===\"\"){throw new TypeError(\"Cookie.setSub(): Cookie name must be a non-empty string.\")}if(!b.isString(e)||e===\"\"){throw new TypeError(\"Cookie.setSub(): Subcookie name must be a non-empty string.\")}if(b.isUndefined(f)){throw new TypeError(\"Cookie.setSub(): Subcookie value cannot be undefined.\")}var c=this.getSubs(g);if(!b.isObject(c)){c={}}c[e]=f;return this.setSubs(g,c,a)},setSubs:function(f,e,a){var b=YAHOO.lang;if(!b.isString(f)){throw new TypeError(\"Cookie.setSubs(): Cookie name must be a string.\")}if(!b.isObject(e)){throw new TypeError(\"Cookie.setSubs(): Cookie value must be an object.\")}var c=this._createCookieString(f,this._createCookieHashString(e),false,a);document.cookie=c;return c}};YAHOO.register(\"cookie\",YAHOO.util.Cookie,{version:\"2.8.0r4\",build:\"2446\"});YAHOO.util.FlashDetect=new function(){var a=this;a.installed=false;a.raw=\"\";a.major=-1;a.minor=-1;a.revision=-1;a.revisionStr=\"\";var b=[{name:\"ShockwaveFlash.ShockwaveFlash.7\",version:function(j){return e(j)}},{name:\"ShockwaveFlash.ShockwaveFlash.6\",version:function(l){var j=\"6,0,21\";try{l.AllowScriptAccess=\"always\";j=e(l)}catch(k){}return j}},{name:\"ShockwaveFlash.ShockwaveFlash\",version:function(j){return e(j)}}];var e=function(l){var j=-1;try{j=l.GetVariable(\"$version\")}catch(k){}return j};var h=function(j){var l=-1;try{l=new ActiveXObject(j)}catch(k){l={activeXError:true}}return l};var c=function(k){var j=k.split(\",\");return{raw:k,major:parseInt(j[0].split(\" \")[1],10),minor:parseInt(j[1],10),revision:parseInt(j[2],10),revisionStr:j[2]}};var g=function(m){var k=m.split(/ +/);var l=k[2].split(/\\./);var j=k[3];return{raw:m,major:parseInt(l[0],10),minor:parseInt(l[1],10),revisionStr:j,revision:f(j)}};var f=function(j){return parseInt(j.replace(/[a-zA-Z]/g,\"\"),10)||a.revision};a.majorAtLeast=function(j){return a.major>=j};a.minorAtLeast=function(j){return a.minor>=j};a.revisionAtLeast=function(j){return a.revision>=j};a.versionAtLeast=function(k){var l=[a.major,a.minor,a.revision];var j=Math.min(l.length,arguments.length);for(i=0;i<j;i++){if(l[i]>=arguments[i]){if(i+1<j&&l[i]==arguments[i]){continue}else{return true}}else{return false}}};a.FlashDetect=function(){if(navigator.plugins&&navigator.plugins.length>0){var m=\"application/x-shockwave-flash\";var l=navigator.mimeTypes;if(l&&l[m]&&l[m].enabledPlugin&&l[m].enabledPlugin.description){var j=l[m].enabledPlugin.description;var n=g(j);a.raw=n.raw;a.major=n.major;a.minor=n.minor;a.revisionStr=n.revisionStr;a.revision=n.revision;a.installed=true}}else{if(navigator.appVersion.indexOf(\"Mac\")==-1&&window.execScript){var j=-1;for(var k=0;k<b.length&&j==-1;k++){var o=h(b[k].name);if(!o.activeXError){a.installed=true;j=b[k].version(o);if(j!=-1){var n=c(j);a.raw=n.raw;a.major=n.major;a.minor=n.minor;a.revision=n.revision;a.revisionStr=n.revisionStr}}}}}}()};YAHOO.util.FlashDetect.JS_RELEASE=\"1.0.4\";if(typeof DDG==\"undefined\"){var DDG={}}DDG.namespace=function(){var b=arguments,g=null,e,c,f;for(e=0;e<b.length;e=e+1){f=b[e].split(\".\");g=window;for(c=0;c<f.length;c=c+1){g[f[c]]=g[f[c]]||{};g=g[f[c]]}}return g};DDG.stylesheet=YAHOO.util.StyleSheet(\"DDG\");var page_type=new Array();page_type[0]=\"results\";page_type[1]=\"homepage\";page_type[2]=\"internal\";DDG.get_page_type=function(){var a=DDG.page_type||0;return page_type[a]};DDG.fix_browser_bugs=function(){nuv();if(is_silk){YAHOO.util.Dom.setStyle(\"side\",\"display\",\"none\")}};DDG.resize=function(y){nuv();var A,t;var f=533;var j=239;var c=320;var q=453;var a=871;var D=600;var E=767;var u=55;var s=130;var p=50;var v=0;var n=62;var r=87;var k=1027;var h=1027;var l=647;var z=647;var C=520;var B=-100;var m=97;var g=86.5;var b=86.5;var x=DDG.get_page_type();if(x==\"homepage\"){if((!is_silk||viewport_height>q)&&viewport_width>c){YAHOO.util.Dom.setStyle(\"content_wrapper_homepage\",\"padding-top\",parseInt(((viewport_height*2/10)-50))+\"px\")}else{YAHOO.util.Dom.setStyle(\"content_wrapper_homepage\",\"padding-top\",\"20px\")}}if(d.getElementById(\"footer_homepage_left\")){A=d.getElementById(\"footer_homepage_left\");if(viewport_width>580){if(A){A.innerHTML=\"We don't <a href='http://donttrack.us'>track</a> or <a href='http://dontbubble.us'>bubble</a> you! &nbsp;See our <a href='/privacy.html'>privacy policy</a>.\"}}else{if(A){A.innerHTML=\"We don't <a href='http://donttrack.us'>track</a> you!\"}}}if(d.getElementById(\"zero_click_image\")&&d.getElementById(\"zero_click_abstract\")&&!is_mobile){t=d.getElementById(\"zero_click_image\").scrollWidth;t=t<10?130:30;A=YAHOO.util.Dom.getX(\"zero_click_image\")-YAHOO.util.Dom.getX(\"zero_click_abstract\")-t;if(isNaN&&!isNaN(A)){YAHOO.util.Dom.setStyle(\"zero_click_abstract\",\"max-width\",A+\"px\");YAHOO.util.Dom.setStyle(\"zero_click_topics\",\"max-width\",A+\"px\")}}else{if(is_mobile){YAHOO.util.Dom.setStyle(\"zero_click_abstract\",\"max-width\",\"1000px\");YAHOO.util.Dom.setStyle(\"zero_click_topics\",\"max-width\",\"1000px\")}}if(is_mobile&&!ipa){YAHOO.util.Dom.setStyle(\"logo_homepage\",\"background\",\"url(/assets/logo_homepage_mobile.normal.v101.png) no-repeat center top\");YAHOO.util.Dom.setStyle(\"logo_homepage\",\"margin-bottom\",\"0px\");YAHOO.util.Dom.setStyle(\"logo_homepage\",\"padding-bottom\",\"20px\");YAHOO.util.Dom.setStyle(\"logo_homepage\",\"width\",\"275px\");YAHOO.util.Dom.setStyle(\"logo_homepage\",\"height\",\"62px\")}else{YAHOO.util.Dom.setStyle(\"logo_homepage\",\"background\",\"url(/assets/logo_homepage.normal.v101.png) no-repeat center top\");YAHOO.util.Dom.setStyle(\"logo_homepage\",\"margin-bottom\",\"40px\");YAHOO.util.Dom.setStyle(\"logo_homepage\",\"padding-bottom\",\"1px\");YAHOO.util.Dom.setStyle(\"logo_homepage\",\"width\",\"220px\");YAHOO.util.Dom.setStyle(\"logo_homepage\",\"height\",\"161px\")}if(viewport_width>720){YAHOO.util.Dom.setStyle(\"search_form\",\"width\",\"554px\");YAHOO.util.Dom.setStyle(\"search_form_input\",\"width\",\"446px\");YAHOO.util.Dom.setStyle(\"search_form_homepage\",\"width\",\"518px\");YAHOO.util.Dom.setStyle(\"search_form_input_homepage\",\"width\",\"430px\");YAHOO.util.Dom.setStyle(\"header_button_wrapper\",\"margin-left\",\"40px\")}else{if(viewport_width>620){YAHOO.util.Dom.setStyle(\"search_form\",\"width\",\"453px\");YAHOO.util.Dom.setStyle(\"search_form_input\",\"width\",\"346px\");YAHOO.util.Dom.setStyle(\"search_form_homepage\",\"width\",\"418px\");YAHOO.util.Dom.setStyle(\"search_form_input_homepage\",\"width\",\"330px\");YAHOO.util.Dom.setStyle(\"header_button_wrapper\",\"margin-left\",\"30px\")}else{if(viewport_width>525){YAHOO.util.Dom.setStyle(\"search_form\",\"width\",\"360px\");YAHOO.util.Dom.setStyle(\"search_form_input\",\"width\",\"253px\");YAHOO.util.Dom.setStyle(\"search_form_homepage\",\"width\",\"375px\");YAHOO.util.Dom.setStyle(\"search_form_input_homepage\",\"width\",\"287px\");YAHOO.util.Dom.setStyle(\"header_button_wrapper\",\"margin-left\",\"20px\")}else{YAHOO.util.Dom.setStyle(\"search_form\",\"width\",\"260px\");YAHOO.util.Dom.setStyle(\"search_form_input\",\"width\",\"153px\");YAHOO.util.Dom.setStyle(\"search_form_homepage\",\"width\",\"275px\");YAHOO.util.Dom.setStyle(\"search_form_input_homepage\",\"width\",\"187px\");YAHOO.util.Dom.setStyle(\"header_button_wrapper\",\"margin-left\",\"10px\")}}}if(is_mobile||ie6||(kq&&kq==-1)){YAHOO.util.Dom.setStyle(\"search_form_input_clear\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"search_wrapper\",\"width\",\"42px\");YAHOO.util.Dom.setStyle(\"search_dropdown\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"search_wrapper_homepage\",\"width\",\"42px\");YAHOO.util.Dom.setStyle(\"search_dropdown_homepage\",\"display\",\"none\");if(d.getElementById(\"search_form\")){YAHOO.util.Dom.setStyle(\"search_form\",\"width\",parseInt(d.getElementById(\"search_form\").scrollWidth-23-25)+\"px\")}if(d.getElementById(\"search_form_homepage\")){YAHOO.util.Dom.setStyle(\"search_form_homepage\",\"width\",parseInt(d.getElementById(\"search_form_homepage\").scrollWidth-23)+\"px\")}}if(viewport_width>f&&viewport_height>q){if(!ke||ke==\"1\"){YAHOO.util.Dom.setStyle(\"feedback_wrapper\",\"display\",\"block\")}}else{YAHOO.util.Dom.setStyle(\"feedback_wrapper\",\"display\",\"none\")}if(viewport_width>a&&viewport_height>D&&(!k4||k4==1)){YAHOO.util.Dom.setStyle(\"side_wrapper\",\"display\",\"block\");YAHOO.util.Dom.setStyle(\"powered_by_wrapper\",\"display\",\"block\")}else{YAHOO.util.Dom.setStyle(\"side_wrapper\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"powered_by_wrapper\",\"display\",\"none\")}if(viewport_width>E){var A=p;var t=0;if(!k4||k4==1){YAHOO.util.Dom.setStyle(\"side_wrapper\",\"display\",\"block\");YAHOO.util.Dom.setStyle(\"powered_by_wrapper\",\"display\",\"block\");div=d.getElementById(\"links\");t=s;if(viewport_width>950&&viewport_width<=1210){t=parseInt((1210-viewport_width)/2)}else{if(viewport_width>1210){t=0}}}else{A=0;t=p;div=d.getElementById(\"links\");YAHOO.util.Dom.setStyle(\"side_wrapper\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"powered_by_wrapper\",\"display\",\"none\")}if(div&&(!km||km!=\"l\")){diff=parseInt((viewport_width-div.scrollWidth-A-t)/2);diff=diff-parseInt(YAHOO.util.Dom.getX(\"content\"));if(diff>n){var o=25;YAHOO.util.Dom.setStyle(\"content\",\"padding-left\",parseInt(diff)+\"px\");YAHOO.util.Dom.setStyle(\"header_content\",\"padding-left\",parseInt(diff+o)+\"px\");YAHOO.util.Dom.setStyle(\"content_wrapper\",\"max-width\",parseInt(d.getElementById(\"content\").scrollWidth+diff)+\"px\");YAHOO.util.Dom.setStyle(\"header_content_wrapper\",\"max-width\",parseInt(d.getElementById(\"header_content\").scrollWidth+diff+o)+\"px\")}else{YAHOO.util.Dom.setStyle(\"content\",\"padding-left\",n+\"px\");YAHOO.util.Dom.setStyle(\"header_content\",\"padding-left\",r+\"px\");YAHOO.util.Dom.setStyle(\"header_content_wrapper\",\"max-width\",k+\"px\");YAHOO.util.Dom.setStyle(\"content_wrapper\",\"max-width\",h+\"px\")}diff=viewport_width-div.scrollWidth-YAHOO.util.Dom.getX(div);if(d.getElementById(\"side_map\")){s=d.getElementById(\"side_map\").scrollWidth}if(diff>s+u&&(!k4||k4==1)){YAHOO.util.Dom.setStyle(\"side_wrapper\",\"display\",\"block\");YAHOO.util.Dom.setStyle(\"powered_by_wrapper\",\"display\",\"block\");diff2=((diff-s)/2)+30;YAHOO.util.Dom.setStyle(\"side_wrapper2\",\"right\",\"-\"+diff2+\"px\")}else{YAHOO.util.Dom.setStyle(\"side_wrapper\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"powered_by_wrapper\",\"display\",\"none\")}}}else{YAHOO.util.Dom.setStyle(\"content\",\"padding-left\",n+\"px\");YAHOO.util.Dom.setStyle(\"header_content\",\"padding-left\",r+\"px\");YAHOO.util.Dom.setStyle(\"header_content_wrapper\",\"max-width\",k+\"px\");YAHOO.util.Dom.setStyle(\"content_wrapper\",\"max-width\",h+\"px\")}if(viewport_width<=f){YAHOO.util.Dom.setStyle(\"header_content_wrapper\",\"min-width\",m+\"%\");YAHOO.util.Dom.setStyle(\"content_wrapper\",\"min-width\",m+\"%\");YAHOO.util.Dom.setStyle(\"content_wrapper\",\"padding-right\",0+\"px\");YAHOO.util.Dom.setStyle(\"content_wrapper\",\"margin-left\",10+\"px\");YAHOO.util.Dom.setStyle(\"content\",\"min-width\",m+\"%\");YAHOO.util.Dom.setStyle(\"content\",\"padding-left\",0+\"px\");YAHOO.util.Dom.setStyle(\"zero_click\",\"width\",m+\"%\");YAHOO.util.Dom.setStyle(\"links\",\"width\",m+\"%\")}else{YAHOO.util.Dom.setStyle(\"header_content_wrapper\",\"min-width\",l);YAHOO.util.Dom.setStyle(\"content_wrapper\",\"min-width\",z);YAHOO.util.Dom.setStyle(\"content_wrapper\",\"padding-right\",p);YAHOO.util.Dom.setStyle(\"content_wrapper\",\"margin-left\",v+\"px\");YAHOO.util.Dom.setStyle(\"content\",\"min-width\",C+\"px\");YAHOO.util.Dom.setStyle(\"content\",\"padding_left\",n+\"px\");YAHOO.util.Dom.setStyle(\"zero_click\",\"width\",b+\"%\");YAHOO.util.Dom.setStyle(\"links\",\"width\",g+\"%\")}};DDG.toggle=function(c,a){var b=d.getElementById(c);if(b){if((!a||a!=-1)&&(YAHOO.util.Dom.getStyle(b,\"display\")==\"none\"||a)){YAHOO.util.Dom.setStyle(b,\"display\",\"block\")}else{if(!a||a==-1){YAHOO.util.Dom.setStyle(b,\"display\",\"none\")}}}};DDG.clear_button_toggle=function(a){var b;b=d.getElementById(\"search_form_input\");if(!b){b=d.getElementById(\"search_form_input_homepage\")}if(b&&!ipa){if(b.value==\"\"){YAHOO.util.Dom.setStyle(\"search_form_input_clear\",\"background\",\"#FFF\")}else{YAHOO.util.Dom.setStyle(\"search_form_input_clear\",\"background\",\"#FFF url(assets/icon_xon.v101.png) no-repeat left center\")}}};DDG.clear_button=function(a){var b;b=d.getElementById(\"search_form_input\");if(!b){b=d.getElementById(\"search_form_input_homepage\")}if(b){b.value=\"\";b.focus();DDG.clear_button_toggle()}};var iqw,cd,ci,dz,da,fk,fb,fs,fm,fe,fl,fo,fa,fn,fz,ie,ih5,issl,idom,io,il,ir,is,is5,ga,gd,rc,rd,rs,rdc,rsc,rtc,rii,rin,rir,rl,rp,reb,rebc,sx,sy,tl,tlz,tac,tr,ts,tn,tsl,tz,d,w,nir,kurl,is_mobile;d=document;w=window;viewport_width=YAHOO.util.Dom.getViewportWidth();viewport_height=YAHOO.util.Dom.getViewportHeight();nuv();ie=d.all?true:false;ie6=/msie 6/.test(navigator.userAgent.toLowerCase())?true:false;ie7=/msie 7/.test(navigator.userAgent.toLowerCase())?true:false;ie9=/msie 9/.test(navigator.userAgent.toLowerCase())?true:false;is=/safari/.test(navigator.userAgent.toLowerCase())?true:false;iw=/webkit/.test(navigator.userAgent.toLowerCase())?true:false;ir=/chrome(?!frame)/.test(navigator.userAgent.toLowerCase())?true:false;ir12=/chrome\\/12/.test(navigator.userAgent.toLowerCase())?true:false;is5=(is&&/version\\/[56]/.test(navigator.userAgent.toLowerCase()))?true:false;im=(navigator.userAgent.indexOf(\"Firefox\")!=-1)?true:false;io=(navigator.userAgent.indexOf(\"Opera\")!=-1)?true:false;io11=(navigator.userAgent.indexOf(\"Opera\")!=-1&&navigator.userAgent.indexOf(\"/11\")!=-1)?true:false;iom=(navigator.userAgent.indexOf(\"Opera Mini\")!=-1)?true:false;is_opera_mobile=(navigator.userAgent.indexOf(\"Opera Mobi\")!=-1)?true:false;ip=(navigator.userAgent.indexOf(\"iPad\")!=-1||navigator.userAgent.indexOf(\"iPhone\")!=-1)?true:false;ipa=(navigator.userAgent.indexOf(\"iPad\")!=-1)?true:false;iph=(navigator.userAgent.indexOf(\"iPhone\")!=-1)?true:false;ia=(navigator.userAgent.indexOf(\"Android\")!=-1)?true:false;iam=(navigator.userAgent.indexOf(\"Android\")!=-1&&/mobile/.test(navigator.userAgent.toLowerCase()))?true:false;is_silk=(navigator.userAgent.indexOf(\"Silk\")!=-1)?true:false;ih5=w.postMessage?true:false;issl=document.location.protocol==\"https:\"?1:0;is_mobile=/mobile/.test(navigator.userAgent.toLowerCase())?true:false;if(iom||is_opera_mobile||ip||ia||is_silk||(viewport_width<600&&viewport_height<400)){is_mobile=1}gre=new RegExp(\"((http://(.*yfrog..*/.*|www.flickr.com/photos/.*|flic.kr/.*|twitpic.com/.*|www.twitpic.com/.*|twitpic.com/photos/.*|www.twitpic.com/photos/.*|.*imgur.com/.*|.*.posterous.com/.*|post.ly/.*|twitgoo.com/.*|i.*.photobucket.com/albums/.*|s.*.photobucket.com/albums/.*|phodroid.com/.*/.*/.*|www.mobypicture.com/user/.*/view/.*|moby.to/.*|xkcd.com/.*|www.xkcd.com/.*|imgs.xkcd.com/.*|www.asofterworld.com/index.php?id=.*|www.asofterworld.com/.*.jpg|asofterworld.com/.*.jpg|www.qwantz.com/index.php?comic=.*|23hq.com/.*/photo/.*|www.23hq.com/.*/photo/.*|.*dribbble.com/shots/.*|drbl.in/.*|.*.smugmug.com/.*|.*.smugmug.com/.*#.*|emberapp.com/.*/images/.*|emberapp.com/.*/images/.*/sizes/.*|emberapp.com/.*/collections/.*/.*|emberapp.com/.*/categories/.*/.*/.*|embr.it/.*|picasaweb.google.com.*/.*/.*#.*|picasaweb.google.com.*/lh/photo/.*|picasaweb.google.com.*/.*/.*|dailybooth.com/.*/.*|brizzly.com/pic/.*|pics.brizzly.com/.*.jpg|img.ly/.*|www.tinypic.com/view.php.*|tinypic.com/view.php.*|www.tinypic.com/player.php.*|tinypic.com/player.php.*|www.tinypic.com/r/.*/.*|tinypic.com/r/.*/.*|.*.tinypic.com/.*.jpg|.*.tinypic.com/.*.png|meadd.com/.*/.*|meadd.com/.*|.*.deviantart.com/art/.*|.*.deviantart.com/gallery/.*|.*.deviantart.com/#/.*|fav.me/.*|.*.deviantart.com|.*.deviantart.com/gallery|.*.deviantart.com/.*/.*.jpg|.*.deviantart.com/.*/.*.gif|.*.deviantart.net/.*/.*.jpg|.*.deviantart.net/.*/.*.gif|www.fotopedia.com/.*/.*|fotopedia.com/.*/.*|photozou.jp/photo/show/.*/.*|photozou.jp/photo/photo_only/.*/.*|instagr.am/p/.*|instagram.com/p/.*|skitch.com/.*/.*/.*|img.skitch.com/.*|share.ovi.com/media/.*/.*|www.questionablecontent.net/|questionablecontent.net/|www.questionablecontent.net/view.php.*|questionablecontent.net/view.php.*|questionablecontent.net/comics/.*.png|www.questionablecontent.net/comics/.*.png|picplz.com/.*|twitrpix.com/.*|.*.twitrpix.com/.*|www.someecards.com/.*/.*|someecards.com/.*/.*|some.ly/.*|www.some.ly/.*|pikchur.com/.*|achewood.com/.*|www.achewood.com/.*|achewood.com/index.php.*|www.achewood.com/index.php.*|www.whosay.com/content/.*|www.whosay.com/photos/.*|www.whosay.com/videos/.*|say.ly/.*|ow.ly/i/.*|color.com/s/.*|bnter.com/convo/.*|mlkshk.com/p/.*|lockerz.com/s/.*|soundcloud.com/.*|soundcloud.com/.*/.*|soundcloud.com/.*/sets/.*|soundcloud.com/groups/.*|snd.sc/.*|www.last.fm/music/.*|www.last.fm/music/+videos/.*|www.last.fm/music/+images/.*|www.last.fm/music/.*/_/.*|www.last.fm/music/.*/.*|www.mixcloud.com/.*/.*/|www.radionomy.com/.*/radio/.*|radionomy.com/.*/radio/.*|www.hark.com/clips/.*|www.rdio.com/#/artist/.*/album/.*|www.rdio.com/artist/.*/album/.*|www.zero-inch.com/.*|.*.bandcamp.com/|.*.bandcamp.com/track/.*|.*.bandcamp.com/album/.*|freemusicarchive.org/music/.*|www.freemusicarchive.org/music/.*|freemusicarchive.org/curator/.*|www.freemusicarchive.org/curator/.*|www.npr.org/.*/.*/.*/.*/.*|www.npr.org/.*/.*/.*/.*/.*/.*|www.npr.org/.*/.*/.*/.*/.*/.*/.*|www.npr.org/templates/story/story.php.*|huffduffer.com/.*/.*|www.audioboo.fm/boos/.*|audioboo.fm/boos/.*|boo.fm/b.*|www.xiami.com/song/.*|xiami.com/song/.*|www.saynow.com/playMsg.html.*|www.saynow.com/playMsg.html.*|grooveshark.com/.*|radioreddit.com/songs.*|www.radioreddit.com/songs.*|radioreddit.com/?q=songs.*|www.radioreddit.com/?q=songs.*|www.gogoyoko.com/song/.*|.*amazon..*/gp/product/.*|.*amazon..*/.*/dp/.*|.*amazon..*/dp/.*|.*amazon..*/o/ASIN/.*|.*amazon..*/gp/offer-listing/.*|.*amazon..*/.*/ASIN/.*|.*amazon..*/gp/product/images/.*|.*amazon..*/gp/aw/d/.*|www.amzn.com/.*|amzn.com/.*|www.shopstyle.com/browse.*|www.shopstyle.com/action/apiVisitRetailer.*|api.shopstyle.com/action/apiVisitRetailer.*|www.shopstyle.com/action/viewLook.*|gist.github.com/.*|twitter.com/.*/status/.*|twitter.com/.*/statuses/.*|www.twitter.com/.*/status/.*|www.twitter.com/.*/statuses/.*|mobile.twitter.com/.*/status/.*|mobile.twitter.com/.*/statuses/.*|www.crunchbase.com/.*/.*|crunchbase.com/.*/.*|www.slideshare.net/.*/.*|www.slideshare.net/mobile/.*/.*|slidesha.re/.*|scribd.com/doc/.*|www.scribd.com/doc/.*|scribd.com/mobile/documents/.*|www.scribd.com/mobile/documents/.*|screenr.com/.*|polldaddy.com/community/poll/.*|polldaddy.com/poll/.*|answers.polldaddy.com/poll/.*|www.5min.com/Video/.*|www.howcast.com/videos/.*|www.screencast.com/.*/media/.*|screencast.com/.*/media/.*|www.screencast.com/t/.*|screencast.com/t/.*|issuu.com/.*/docs/.*|www.kickstarter.com/projects/.*/.*|www.scrapblog.com/viewer/viewer.aspx.*|ping.fm/p/.*|chart.ly/symbols/.*|chart.ly/.*|maps.google.com/maps?.*|maps.google.com/?.*|maps.google.com/maps/ms?.*|.*.craigslist.org/.*/.*|my.opera.com/.*/albums/show.dml?id=.*|my.opera.com/.*/albums/showpic.dml?album=.*&picture=.*|tumblr.com/.*|.*.tumblr.com/post/.*|www.polleverywhere.com/polls/.*|www.polleverywhere.com/multiple_choice_polls/.*|www.polleverywhere.com/free_text_polls/.*|www.quantcast.com/wd:.*|www.quantcast.com/.*|siteanalytics.compete.com/.*|statsheet.com/statplot/charts/.*/.*/.*/.*|statsheet.com/statplot/charts/e/.*|statsheet.com/.*/teams/.*/.*|statsheet.com/tools/chartlets?chart=.*|.*.status.net/notice/.*|identi.ca/notice/.*|brainbird.net/notice/.*|shitmydadsays.com/notice/.*|www.studivz.net/Profile/.*|www.studivz.net/l/.*|www.studivz.net/Groups/Overview/.*|www.studivz.net/Gadgets/Info/.*|www.studivz.net/Gadgets/Install/.*|www.studivz.net/.*|www.meinvz.net/Profile/.*|www.meinvz.net/l/.*|www.meinvz.net/Groups/Overview/.*|www.meinvz.net/Gadgets/Info/.*|www.meinvz.net/Gadgets/Install/.*|www.meinvz.net/.*|www.schuelervz.net/Profile/.*|www.schuelervz.net/l/.*|www.schuelervz.net/Groups/Overview/.*|www.schuelervz.net/Gadgets/Info/.*|www.schuelervz.net/Gadgets/Install/.*|www.schuelervz.net/.*|myloc.me/.*|pastebin.com/.*|pastie.org/.*|www.pastie.org/.*|redux.com/stream/item/.*/.*|redux.com/f/.*/.*|www.redux.com/stream/item/.*/.*|www.redux.com/f/.*/.*|cl.ly/.*|cl.ly/.*/content|speakerdeck.com/u/.*/p/.*|www.kiva.org/lend/.*|www.timetoast.com/timelines/.*|storify.com/.*/.*|.*meetup.com/.*|meetu.ps/.*|www.dailymile.com/people/.*/entries/.*|.*.kinomap.com/.*|www.metacdn.com/api/users/.*/content/.*|www.metacdn.com/api/users/.*/media/.*|prezi.com/.*/.*|.*.uservoice.com/.*/suggestions/.*|formspring.me/.*|www.formspring.me/.*|formspring.me/.*/q/.*|www.formspring.me/.*/q/.*|twitlonger.com/show/.*|www.twitlonger.com/show/.*|tl.gd/.*|www.qwiki.com/q/.*|crocodoc.com/.*|.*.crocodoc.com/.*|www.wikipedia.org/wiki/.*|www.wikimedia.org/wiki/File.*|.*youtube.com/watch.*|.*.youtube.com/v/.*|youtu.be/.*|.*.youtube.com/user/.*|.*.youtube.com/.*#.*/.*|m.youtube.com/watch.*|m.youtube.com/index.*|.*.youtube.com/profile.*|.*.youtube.com/view_play_list.*|.*.youtube.com/playlist.*|.*justin.tv/.*|.*justin.tv/.*/b/.*|.*justin.tv/.*/w/.*|www.ustream.tv/recorded/.*|www.ustream.tv/channel/.*|www.ustream.tv/.*|qik.com/video/.*|qik.com/.*|qik.ly/.*|.*revision3.com/.*|.*.dailymotion.com/video/.*|.*.dailymotion.com/.*/video/.*|collegehumor.com/video:.*|collegehumor.com/video/.*|www.collegehumor.com/video:.*|www.collegehumor.com/video/.*|.*twitvid.com/.*|www.break.com/.*/.*|vids.myspace.com/index.cfm?fuseaction=vids.individual&videoid.*|www.myspace.com/index.cfm?fuseaction=.*&videoid.*|www.metacafe.com/watch/.*|www.metacafe.com/w/.*|blip.tv/.*/.*|.*.blip.tv/.*/.*|video.google.com/videoplay?.*|.*revver.com/video/.*|video.yahoo.com/watch/.*/.*|video.yahoo.com/network/.*|.*viddler.com/explore/.*/videos/.*|liveleak.com/view?.*|www.liveleak.com/view?.*|animoto.com/play/.*|dotsub.com/view/.*|www.overstream.net/view.php?oid=.*|www.livestream.com/.*|www.worldstarhiphop.com/videos/video.*.php?v=.*|worldstarhiphop.com/videos/video.*.php?v=.*|teachertube.com/viewVideo.php.*|www.teachertube.com/viewVideo.php.*|www1.teachertube.com/viewVideo.php.*|www2.teachertube.com/viewVideo.php.*|bambuser.com/v/.*|bambuser.com/channel/.*|bambuser.com/channel/.*/broadcast/.*|www.schooltube.com/video/.*/.*|bigthink.com/ideas/.*|bigthink.com/series/.*|sendables.jibjab.com/view/.*|sendables.jibjab.com/originals/.*|www.xtranormal.com/watch/.*|socialcam.com/v/.*|www.socialcam.com/v/.*|dipdive.com/media/.*|dipdive.com/member/.*/media/.*|dipdive.com/v/.*|.*.dipdive.com/media/.*|.*.dipdive.com/v/.*|v.youku.com/v_show/.*.html|v.youku.com/v_playlist/.*.html|www.snotr.com/video/.*|snotr.com/video/.*|video.jardenberg.se/.*|www.clipfish.de/.*/.*/video/.*|www.myvideo.de/watch/.*|www.whitehouse.gov/photos-and-video/video/.*|www.whitehouse.gov/video/.*|wh.gov/photos-and-video/video/.*|wh.gov/video/.*|www.hulu.com/watch.*|www.hulu.com/w/.*|hulu.com/watch.*|hulu.com/w/.*|.*crackle.com/c/.*|www.fancast.com/.*/videos|www.funnyordie.com/videos/.*|www.funnyordie.com/m/.*|funnyordie.com/videos/.*|funnyordie.com/m/.*|www.vimeo.com/groups/.*/videos/.*|www.vimeo.com/.*|vimeo.com/groups/.*/videos/.*|vimeo.com/.*|vimeo.com/m/#/.*|www.ted.com/talks/.*.html.*|www.ted.com/talks/lang/.*/.*.html.*|www.ted.com/index.php/talks/.*.html.*|www.ted.com/index.php/talks/lang/.*/.*.html.*|.*nfb.ca/film/.*|www.thedailyshow.com/watch/.*|www.thedailyshow.com/full-episodes/.*|www.thedailyshow.com/collection/.*/.*/.*|movies.yahoo.com/movie/.*/video/.*|movies.yahoo.com/movie/.*/trailer|movies.yahoo.com/movie/.*/video|www.colbertnation.com/the-colbert-report-collections/.*|www.colbertnation.com/full-episodes/.*|www.colbertnation.com/the-colbert-report-videos/.*|www.comedycentral.com/videos/index.jhtml?.*|www.theonion.com/video/.*|theonion.com/video/.*|wordpress.tv/.*/.*/.*/.*/|www.traileraddict.com/trailer/.*|www.traileraddict.com/clip/.*|www.traileraddict.com/poster/.*|www.escapistmagazine.com/videos/.*|www.trailerspy.com/trailer/.*/.*|www.trailerspy.com/trailer/.*|www.trailerspy.com/view_video.php.*|www.atom.com/.*/.*/|fora.tv/.*/.*/.*/.*|www.spike.com/video/.*|www.gametrailers.com/video/.*|gametrailers.com/video/.*|www.koldcast.tv/video/.*|www.koldcast.tv/#video:.*|techcrunch.tv/watch.*|techcrunch.tv/.*/watch.*|mixergy.com/.*|video.pbs.org/video/.*|www.zapiks.com/.*|tv.digg.com/diggnation/.*|tv.digg.com/diggreel/.*|tv.digg.com/diggdialogg/.*|www.trutv.com/video/.*|www.nzonscreen.com/title/.*|nzonscreen.com/title/.*|app.wistia.com/embed/medias/.*|hungrynation.tv/.*/episode/.*|www.hungrynation.tv/.*/episode/.*|hungrynation.tv/episode/.*|www.hungrynation.tv/episode/.*|indymogul.com/.*/episode/.*|www.indymogul.com/.*/episode/.*|indymogul.com/episode/.*|www.indymogul.com/episode/.*|channelfrederator.com/.*/episode/.*|www.channelfrederator.com/.*/episode/.*|channelfrederator.com/episode/.*|www.channelfrederator.com/episode/.*|tmiweekly.com/.*/episode/.*|www.tmiweekly.com/.*/episode/.*|tmiweekly.com/episode/.*|www.tmiweekly.com/episode/.*|99dollarmusicvideos.com/.*/episode/.*|www.99dollarmusicvideos.com/.*/episode/.*|99dollarmusicvideos.com/episode/.*|www.99dollarmusicvideos.com/episode/.*|ultrakawaii.com/.*/episode/.*|www.ultrakawaii.com/.*/episode/.*|ultrakawaii.com/episode/.*|www.ultrakawaii.com/episode/.*|barelypolitical.com/.*/episode/.*|www.barelypolitical.com/.*/episode/.*|barelypolitical.com/episode/.*|www.barelypolitical.com/episode/.*|barelydigital.com/.*/episode/.*|www.barelydigital.com/.*/episode/.*|barelydigital.com/episode/.*|www.barelydigital.com/episode/.*|threadbanger.com/.*/episode/.*|www.threadbanger.com/.*/episode/.*|threadbanger.com/episode/.*|www.threadbanger.com/episode/.*|vodcars.com/.*/episode/.*|www.vodcars.com/.*/episode/.*|vodcars.com/episode/.*|www.vodcars.com/episode/.*|confreaks.net/videos/.*|www.confreaks.net/videos/.*|video.allthingsd.com/video/.*|videos.nymag.com/.*|aniboom.com/animation-video/.*|www.aniboom.com/animation-video/.*|clipshack.com/Clip.aspx?.*|www.clipshack.com/Clip.aspx?.*|grindtv.com/.*/video/.*|www.grindtv.com/.*/video/.*|ifood.tv/recipe/.*|ifood.tv/video/.*|ifood.tv/channel/user/.*|www.ifood.tv/recipe/.*|www.ifood.tv/video/.*|www.ifood.tv/channel/user/.*|logotv.com/video/.*|www.logotv.com/video/.*|lonelyplanet.com/Clip.aspx?.*|www.lonelyplanet.com/Clip.aspx?.*|streetfire.net/video/.*.htm.*|www.streetfire.net/video/.*.htm.*|trooptube.tv/videos/.*|www.trooptube.tv/videos/.*|sciencestage.com/v/.*.html|sciencestage.com/a/.*.html|www.sciencestage.com/v/.*.html|www.sciencestage.com/a/.*.html|www.godtube.com/featured/video/.*|godtube.com/featured/video/.*|www.godtube.com/watch/.*|godtube.com/watch/.*|www.tangle.com/view_video.*|mediamatters.org/mmtv/.*|www.clikthrough.com/theater/video/.*|espn.go.com/video/clip.*|espn.go.com/.*/story.*|abcnews.com/.*/video/.*|abcnews.com/video/playerIndex.*|washingtonpost.com/wp-dyn/.*/video/.*/.*/.*/.*|www.washingtonpost.com/wp-dyn/.*/video/.*/.*/.*/.*|www.boston.com/video.*|boston.com/video.*|www.facebook.com/photo.php.*|www.facebook.com/video/video.php.*|www.facebook.com/v/.*|cnbc.com/id/.*?.*video.*|www.cnbc.com/id/.*?.*video.*|cnbc.com/id/.*/play/1/video/.*|www.cnbc.com/id/.*/play/1/video/.*|cbsnews.com/video/watch/.*|www.google.com/buzz/.*/.*/.*|www.google.com/buzz/.*|www.google.com/profiles/.*|google.com/buzz/.*/.*/.*|google.com/buzz/.*|google.com/profiles/.*|www.cnn.com/video/.*|edition.cnn.com/video/.*|money.cnn.com/video/.*|today.msnbc.msn.com/id/.*/vp/.*|www.msnbc.msn.com/id/.*/vp/.*|www.msnbc.msn.com/id/.*/ns/.*|today.msnbc.msn.com/id/.*/ns/.*|multimedia.foxsports.com/m/video/.*/.*|msn.foxsports.com/video.*|www.globalpost.com/video/.*|www.globalpost.com/dispatch/.*|guardian.co.uk/.*/video/.*/.*/.*/.*|www.guardian.co.uk/.*/video/.*/.*/.*/.*|bravotv.com/.*/.*/videos/.*|www.bravotv.com/.*/.*/videos/.*|video.nationalgeographic.com/.*/.*/.*.html|dsc.discovery.com/videos/.*|animal.discovery.com/videos/.*|health.discovery.com/videos/.*|investigation.discovery.com/videos/.*|military.discovery.com/videos/.*|planetgreen.discovery.com/videos/.*|science.discovery.com/videos/.*|tlc.discovery.com/videos/.*|video.forbes.com/fvn/.*))|(https://(skitch.com/.*/.*/.*|img.skitch.com/.*|twitter.com/.*/status/.*|twitter.com/.*/statuses/.*|www.twitter.com/.*/status/.*|www.twitter.com/.*/statuses/.*|mobile.twitter.com/.*/status/.*|mobile.twitter.com/.*/statuses/.*|crocodoc.com/.*|.*.crocodoc.com/.*|.*youtube.com/watch.*|.*.youtube.com/v/.*|app.wistia.com/embed/medias/.*|www.facebook.com/photo.php.*|www.facebook.com/video/video.php.*|www.facebook.com/v/.*)))$\");grb=new RegExp(\"^((?=[134./abcdefghijklmnopqrstuvwxyz])(?:u(?:rban(?:dictionary)?|p(?:coming|down|(?:ackage)?s)|buntu(?:f(?:orums)?|users)|s(?:a(?:today)?|(?:erscript|p)s)|ni(?:ty|code)|ltimateguitar|z?g|kp|tf8|d)|t(?:r(?:a(?:c(?:k|eroute)|ffic|iler|(?:nslat|dem)e)|u(?:veo|eknowledge|lia)|ipadvisor)?|h(?:e(?:s(?:aurus|ession|tar)|(?:on|nat)ion|piratebay|moviedb|fullwiki)|umbplay|inktutorial|omas)|v(?:tropes|db|guide)?|i(?:n(?:y(?:url|pic)|eye)|cket(?:s|master)|vo)|o(?:rrent(?:freak|z)?|talcmd|mshardware|nes|psy)|e(?:ch(?:(?:ne|dir)t|crunch)|x(?:ture)?|legraph|d)|w(?:e(?:et|akers)|n|itter)?|k(?:nowledge)?|a(?:r(?:get|inga)|bs)|m(?:db|z)|umblr|nt|c|pb|yda)?|l(?:i(?:b(?:r(?:ary(?:.nu|thing)|ivox)|(?:e|universita)ria)|n(?:k(?:edin|scape|up)|uxfr)|fehacker|ke|sp)?|o(?:c(?:al|ita)?|gin|vefilm)|a(?:s(?:er(?:ship)?|t.?fm)|t(?:ex|imes)|unchpad|vva)|e(?:o[rfesic]?|novo)|ucire|(?:d|yric)s|nu|[hp]|xr)|o(?:r(?:(?:ei|ie)lly|acle|kut)|pe(?:n(?:s(?:treet(?:map)?|ubtitles)|b(?:ook|sd)|ports)|ra)|s(?:[em]|ub)|c(?:al?|topart|w)|ne(?:look|riot)|mgu(?:buntu)?|bb|(?:verstoc|kgee)k|(?:tra|opo)n|eis|hloh)|m(?:a(?:m(?:ont|ma)|p(?:quest|s)?|r(?:k(?:et|tplaats|mail)|miton)|c(?:world|(?:y|port|addres)s|update)?|th(?:ematica|world)|g(?:ma(?:wiki)?|iccards)|(?:k|shabl)e|lpha|n)|y(?:a(?:llsearch|nimelist)|s(?:pace|ql)|wot|opera)|e(?:t(?:a(?:critic|filter|l|so)|rolyrics)|r(?:c(?:adolivre|urynews)|riamwebster)|n(?:upages|deley)|moryalpha|fi)|o(?:o(?:tools)?|bygames|(?:us|nst)er)|vn(?:repository)?|u(?:lticolr|sicbrainz)|s(?:dn|kb|mvps|nbc)?|i(?:c(?:rosoft|haelis)|n(?:e(?:pedia|craft)|iclip)|mvi|tocw)|p(?:[cp]h|sf|ny|fl|bo|dc|la)?|d(?:[cn]|bg)|tv|mnt|(?:flo)?w|cpan|l?b)?|g(?:u(?:[ks]|tenberg|ildwiki|ardian)|a(?:me(?:s(?:pot|radar)|(?:pr|zeb)o|(?:ranking|cheat|faq)s)|u|wker)|o(?:o(?:gle(?:maps?|uk|images)?|sh|dreads)|daddy|(?:ea|phe)r|lang|rp)|d(?:ocs|e)?|r(?:e(?:p(?:cpa|li)n|ader)|i(?:cal|dcalendar)|ooveshark|ave)?|e(?:iz(?:hals)?|o(?:ip|names)|n(?:toowiki|esis)|(?:ttyimage|m)s|phi|egain)|t(?:r(?:anslate|ends)|url|abs)?|s(?:c(?:holar)?|a|hopping)?|m(?:a(?:ps?|il|ne))?|i(?:s(?:(?:afe)?off|t)|ga(?:pedia|om)|m(?:ages)?|ez(?:hals)?|thub|zmodo)?|b(?:(?:ook|log)s)?|wp(?:de)?|g(?:roups)?|p(?:a(?:ckages|t)|hotos)?|v(?:pl)?|f(?:i(?:nance)?)?|c(?:pan|ache)|l(?:o(?:beandmai|ca)l|atest)|n[zu]?|h)?|b(?:i(?:n(?:g(?:(?:image|map)s)?|search)|ble(?:gateway)?|t(?:bucket|snoop)|mages|ography)?|l(?:o(?:g(?:s(?:pot)?|talkradio)|omberg)|ackbook(?:mag)?|ekko)|v(?:ideos?)?|u(?:lba(?:pedia)?|sinessweek|y|gmenot)|o(?:o(?:k(?:f(?:lavo|inde)r|[so])|st)|ardgamegeek|l|ingboing)|t(?:abs|junkie)|a(?:ngs?|i(?:du|xaki)|r(?:nesandnoble|tlets)|tlyrics|seballreference)|r(?:itannica)?|e(?:o(?:es|pt)?|stbuy)|n|gg|bc|maps|sd)?|w(?:3(?:c|schools)|o(?:w(?:armory(?:eu)?|head)|r(?:ld(?:cat|ofspectrum)|d(?:n(?:ik|et)|reference|press))|lfram(?:alpha)?|[ts])|u(?:k|nderground)|e(?:ather(?:bug)?|b(?:m(?:d|enu)|warper|2py|oftrust)|[osn])|n(?:[nlo]|etwork)|i(?:n(?:ehq|k)|k(?:i(?:t(?:ravel)?|how|c|(?:pedi)?a|(?:new|book)s)?|t(?:ionary)?)|t|red)|h(?:ite(?:pages|water)|(?:o|at)is)|a(?:l(?:l(?:base|paper)|pha|mart)|tch|shingtonpost|yback|koopa)?|p(?:t(?:hemes)?|plugins|l)?|s[jv]|[mw]|de|fr|ja|ru|ykop)?|s(?:f(?:gate)?|q(?:uidoo|lalchemy)|ynonym(?:e?s)?|h(?:o(?:dan(?:hq)?|p(?:ping|zilla)?|wtimes|utitout)|elfari|areware|uttershock)?|i(?:m(?:ilar|plyhired))?|l(?:i(?:ckdeals|deshare)|a(?:ckbuilds?|te(?:fr)?|ng|shdot)|oanes)|u(?:per(?:d(?:ownloads)?|user)|ntimes|(?:li|mmitpos)t|bscene)?|o(?:ng(?:sterr|meanings)|u(?:rceforge|ndcloud)|ftware|so)?|t(?:e(?:am|x)|a(?:rt(?:r(?:ek|ibune))?|(?:ple|b)s|ticice|gevu|ckoverflow)|ock(?:photos)?|u(?:mble(?:upon)?|bhub))|c(?:r(?:oogle|ibd)|i(?:ru|enceblog)s|h(?:olar|loarpedia)|oopler)|e(?:a(?:rch(?:yc|code|forphp)|tgeek)|eks|c|rverfault)|m(?:h|og)|p(?:hp|r|orcle|anishdict|ezify)|a(?:s|lon|feoff)|nopes|xc|kyrock|ba)?|d(?:p(?:(?:t|ackage)s|kg)?|o(?:c(?:jar|s)|wn(?:load|for)|i|main)|i(?:g(?:i(?:ke|talsp)y|g)?|c(?:t(?:ionary|.?cc)?|cionari)|s(?:co(?:gs|very)|tro(?:watch)?|ney)|lbert|aspora|igo)|r(?:ibbb?le|a[me]|upal(?:api)?)|e(?:b(?:ianfr|bug)|v(?:eloppez|iantart|apple)|l(?:icious|l)|monoid|fine|ezer)|20(?:srd)?|a(?:t[ea]|ilymotion|pi|rklyrics)?|jango(?:me)?|(?:bug|n)s|moz|hl|&d|cc|fman)?|p(?:o(?:rt(?:ableapps)?|st(?:gresql|ers)|dcast|psike|kepedia|llstar)|a(?:r(?:king|lysearch|ashift)|t(?:ft|ternry)|ckage|ndora|lgn)|y(?:thon(?:3[102]?|2[76])?|pi|3k|lons)|h(?:p(?:net)?|otobucket)|i(?:n(?:voke|board|g)|ratebay|ctures)|r(?:i(?:ce(?:grabber)?|beram|sjakt)|o(?:c(?:essing)?|nounce|xy))|e(?:r(?:l(?:mo(?:d|nks)|doc)?|seus|fspot|ezhilton)|er)|p(?:lware|a)|lay(?:asia)?|b(?:one|s)|kgs(?:rc)?|(?:simplifi|ubm)ed|df)|c(?:i(?:rcuitcity|teul)?|h(?:a(?:rity(?:navigator)?|nnel[54]|kra(?:pkg|wiki|ccr|forum))|i(?:lango|cagotribune)|eatc(?:odes|c)|rome|ords)|fp?|n(?:et|n|bc|rtl)|bs(?:sport|new)s|s(?:pan|monitor|harp)|o(?:de(?:plex)?|l(?:dfusion|legeboard)|m(?:mons|pete)|(?:upon|ncert)s|stco|coa)|p(?:an|p|lusplus)|a(?:r(?:eerbuilder|mag|toonnetwork)?|p(?:ost|taincrawl)|ched?)|l(?:ojure(?:docs)?|ipart|usty)|r(?:a(?:igslist|n)|unch(?:yroll|base))|[te]an|ultureunplugged|[2c])|1(?:1870|ddl)|n(?:e(?:w(?:s(?:day|max|vine|yc|now|week)?|egg|(?:ff|yorke)r|ark)|t(?:flix|craft|gear))|y(?:(?:pos)?t|aa)|b(?:sdman|a)|zb(?:matrix)?|rc(?:next)?|o(?:lo|aa|voseek)|a(?:tionalgeographic|metoolkit)|[fh]l|ciku|lab|pr|intendolife|vidia)?|a(?:l(?:l(?:e(?:gro|xperts)|m(?:ovie|usic)|abolag|ocine|(?:poster|recipe)s)|t(?:(?:ernative)?t)?o|bumart(?:c|dv)d|exa|istapart)|b(?:cn(?:ews|otation)|andonia|out)|r(?:t(?:work|urogoga|ist)|ch(?:ived?|pkg|aur|wiki|linux)|duino|xiv|stechnica)|c(?:ro(?:nyms?)?|tivestate|cuweather|ademic)|u(?:toca)?r|m(?:azon(?:mp3)?|c[an]|fr|it|jp|de|uk)?|d(?:planner|(?:ob)?e|a)|p(?:p(?:le(?:dev)?|engine|brain|shopper)|ackages|ertium)?|n(?:i(?:me(?:newsnetwork)?|db)|n|ontalk|droid|agram|swers)|s(?:k(?:ubuntu)?|[3n])|jc)?|k(?:i(?:ndle(?:uk)?|ckasstorrents)|a(?:zazz|t)|u(?:rrently|ler)|(?:erodica|hrono|bug)s|pop|obo|ym|nowyourmeme)|i(?:con(?:finder|s)?|s(?:o(?:hunt)?|tockphoto|bndb)|n(?:structable|fochimp)s|m(?:ages?|db|g|eem|slp)|w(?:ant)?|p(?:ernity|s|layer)|t(?:v|unes)|bm|eee|(?:usethi|r)s|(?:dentic|ke)a|gn|fdb|xquick)?|r(?:o(?:(?:ttentomato|otsarchiv)es|(?:settacod|llingston)e|adandtrack|btex|m)|a(?:(?:diotime|il)s|e|(?:nd|cke)t|teyourmusic)|d(?:ns|oc|io)|e(?:c(?:ipes|ycle)|d(?:f(?:in|lagdeals)|tram|z|dit)|ad(?:thedocs|writeweb)|tailmenot|uters)|uby(?:doc|gems)?|pm(?:find)?|hyme|bl|t|fc|seek|ingtones)|e(?:b(?:u(?:ilds?|k)|a(?:y(?:i[ent]|c[ha]|p[lh]|a[ut]|my|[uh]k|es|nl|[db]e|fr|sg)?|[tu])|i[net]|p[hl]|c[ha]|nl|es|hk|sg|[bd]e|my|fr)?|n(?:t(?:rez|ireweb)|cyclopedia|gadget)|pi(?:nion|curiou)s|v(?:e(?:ryclick|ntful)|irt(?:a[tu]|tit|ed|des)?|ri)|s(?:p(?:n|acenet)|vonline)|co(?:sia|nomist)|m(?:u(?:l|paradis)e|acs(?:wiki)?)|t(?:ymolog|s)y|x(?:if|pedia)|rlang|(?:urogame|dga)r|arth911)|j(?:a(?:va(?:docs?|[456]|script)?|lop(?:nik)?|r|mendo)|e(?:twick|ux)|o(?:b|hnlewi)s|(?:quer|cpenne)y|[ls]|dk)|f(?:t(?:p|ube)?|i(?:le(?:stube|hippo|xt)?|refox|ndjar)|l(?:ick(?:r(?:c|iver)?|peek)|ex|attr)|o(?:r(?:kd|rst|bes)|o[dl]|xnews|lktunefinder|tolog)|a(?:twallet|(?:r|ceboo)k)|e(?:edbooks|nopy|dex)|r(?:e(?:edict(?:ionary)?|shmeat)|iendster)|da?|ullwiki|ports|b)|q(?:tc?|rz?|u(?:o(?:ra|tes)|antcast))|h(?:ead-?fi|a(?:ck(?:a(?:ge|day)|ernews)|yoo|lf)|u(?:lu|ffingtonpost)|o(?:w(?:t(?:hingswork|oforge)|stuffworks|jsay)|tukdeals|st|ogle)|tf|[np]|i5|ypem)|v(?:i(?:deo(?:sift)?|m(?:eo|doc))|e(?:r(?:b(?:omatic)?|oot|siontracker)|ekun|oh)|gg(?:uk|de)?|ogue(?:uk)?|a(?:lleywag|(?:ndal|galum)e))?|y(?:ou(?:tube|dao)|e(?:l(?:lowpages|p)|ahway)|u(?:mmly|i|bnub)|a(?:n(?:dex|swers)|en|hoo|cy|bsearch)?|i(?:ppy|mages)|f(?:inance)?|[ct]|news)?|.(?:net|/)|x(?:daf?|anga|kcd)|z(?:i(?:pca|llow)|a(?:he|ppos)|von|dnet|oho)|3tailer|43things|/.))$\");gra2=new RegExp(\"\\\\b(selling|sellers?|rents?|stores?|shops?|shopping|shopper|buy|orders?|products?|pricing|prices?|reviews?|deals?|dealer|isbn)\\\\b\",\"i\");gra=new RegExp(\"^https?://(?:www.|)(amazon|netflix|ebay|barnesandnoble|bizrate|imdb|nextag|cnet|buy|blockbuster|powells|target|walmart|newegg|macys|overstock|khols|kmart|sears|homedepot|jcpenney|qvc|last|cdwow|cduniverse|mtv|getglue|rhapsody|pandora|tower|goodreads|teenourmous|cafepress|zazzle|spreadshirt|shelfari|oreilly|librarything|worldcat|costco|ikea|jcpenney|johnlewis|staples|etsy|allposters|circuitcity|bestbuy|toysrus|shopping|coupons.thefind|lyricsmode|metrolyrics|librarything|dpreview|gizmodo)\\\\.\");gram=new RegExp(\"^https?://(?:www.|)(cdwow|cduniverse|mtv|rhapsody|pandora|lyricsmode|metrolyrics|last)\\\\.\");grab=new RegExp(\"^https?://(?:www.|)(oreilly|shelfari|goodreads|librarything|barnesandnoble)\\\\.\");grad=new RegExp(\"^https?://(?:www.|)(netflix|imdb)\\\\.\");grae=new RegExp(\"^https?://(?:www.|)(newegg|dpreview|gizmodo)\\\\.\");gra3=new RegExp(\"^https?://.*amazon.com.*/dp/([\\\\dA-Z]{10})[/?]\");grc=new RegExp(\"^https?://.*(?:android|itunes|androlib|apple|appbrain|chomp|market)\\\\.\");grq=new RegExp(\"^https?://.*(?:twitter.com/)([^/?]+)/?$\");grqh=new Array();grqh.google=\"1\";grqh.twitter=\"1\";grqh.facebook=\"1\";grqh.youtube=\"1\";gry=new RegExp(\"\\\\b(\\\\d{3})(?:&#x29;|)[-.\\\\s]*(\\\\d{3})[-.](\\\\d{4})\\\\b\");gry2=new RegExp(\"^https?://.*\\\\b(?:yelp|tripadvisor|yellowpages|urbanspoon|local|foursquare|map|insiderpages|yellowbook|manta|superpages|allmenus|allpages|citysearch|menupix|patch|yipit)\\\\.\");gryt=new RegExp(\"(youtube)\",\"i\");gryt2=new RegExp(\"(last.fm|pandora)\",\"i\");ytLyrics=new RegExp(\"(lyrics)\",\"i\");tr=new Array();ts=new Array();rd=new Array();rsd=new Array();reb=new Array();dow=new Array(\"Sun\",\"Mon\",\"Tue\",\"Wed\",\"Thu\",\"Fri\",\"Sat\");ga=\"http://i2.duck.co/i/\";gd=\"http://duckduckgo.com/\";if(issl){gd=\"https://duckduckgo.com/\";ga=\"https://i.duckduckgo.com/i/\"}iqc=iqw=fb=iqyp=iqyt=ci=iwa=irl=idom=il=dz=da=dam=daiq=daia=fz=tl=tlz=sx=sy=fl=fo=fa=fn=rdc=rtc=rsc=rii=rin=rebc=tsl=tac=tn=tz=fe=fmx=fmy=ieof=iad=iad2=iad3=iadt=0;kurl=\"\";rpc=fk=fs=1;if(!w.ka){ka=YAHOO.util.Cookie.get(\"a\")||\"\"}if(!w.kb){kb=YAHOO.util.Cookie.get(\"b\")||\"\"}if(!w.kc){kc=YAHOO.util.Cookie.get(\"c\")||\"\"}if(!w.kd){kd=YAHOO.util.Cookie.get(\"d\")||\"\"}if(!w.ke){ke=YAHOO.util.Cookie.get(\"e\")||\"\"}if(!w.kf){kf=YAHOO.util.Cookie.get(\"f\")||\"\"}if(!w.kg){kg=YAHOO.util.Cookie.get(\"g\")||\"\"}if(!w.kh){kh=YAHOO.util.Cookie.get(\"h\")||\"\"}if(!w.ki){ki=YAHOO.util.Cookie.get(\"i\")||\"\"}if(!w.kj){kj=YAHOO.util.Cookie.get(\"j\")||\"\"}if(!w.kk){kk=YAHOO.util.Cookie.get(\"k\")||\"\"}if(!w.kl){kl=YAHOO.util.Cookie.get(\"l\")||\"\"}if(!w.km){km=YAHOO.util.Cookie.get(\"m\")||\"\"}if(!w.kn){kn=YAHOO.util.Cookie.get(\"n\")||\"\"}if(!w.ko){ko=YAHOO.util.Cookie.get(\"o\")||\"\"}if(!w.kp){kp=YAHOO.util.Cookie.get(\"p\")||\"\"}if(!w.kq){kq=YAHOO.util.Cookie.get(\"q\")||\"\"}if(!w.kr){kr=YAHOO.util.Cookie.get(\"r\")||\"\"}if(!w.ks){ks=YAHOO.util.Cookie.get(\"s\")||\"\"}if(!w.kt){kt=YAHOO.util.Cookie.get(\"t\")||\"\"}if(!w.ku){ku=YAHOO.util.Cookie.get(\"u\")||\"\"}if(!w.kv){kv=YAHOO.util.Cookie.get(\"v\")||\"\"}if(!w.kw){kw=YAHOO.util.Cookie.get(\"w\")||\"\"}if(!w.kx){kx=YAHOO.util.Cookie.get(\"x\")||\"\"}if(!w.ky){ky=YAHOO.util.Cookie.get(\"y\")||\"\"}if(!w.kz){kz=YAHOO.util.Cookie.get(\"z\")||\"\"}if(!w.k1){k1=YAHOO.util.Cookie.get(\"1\")||\"\"}if(!w.k2){k2=YAHOO.util.Cookie.get(\"2\")||\"\"}if(!w.k3){k3=YAHOO.util.Cookie.get(\"3\")||\"\"}if(!w.k4){k4=YAHOO.util.Cookie.get(\"4\")||\"\"}if(!w.k5){k5=YAHOO.util.Cookie.get(\"5\")||\"\"}if(!w.k6){k6=YAHOO.util.Cookie.get(\"6\")||\"\"}if(!w.k7){k7=YAHOO.util.Cookie.get(\"7\")||\"\"}if(!w.k8){k8=YAHOO.util.Cookie.get(\"8\")||\"\"}if(!w.k9){k9=YAHOO.util.Cookie.get(\"9\")||\"\"}if(!w.kaa){kaa=YAHOO.util.Cookie.get(\"aa\")||\"\"}if(!w.kab){kab=YAHOO.util.Cookie.get(\"ab\")||\"\"}if(!w.kac){kac=YAHOO.util.Cookie.get(\"ac\")||\"\"}if(!w.kad){kad=YAHOO.util.Cookie.get(\"ad\")||\"\"}if(!w.kae){kae=YAHOO.util.Cookie.get(\"ae\")||\"\"}if(!w.kaf){kaf=YAHOO.util.Cookie.get(\"af\")||\"\"}if(!w.kag){kag=YAHOO.util.Cookie.get(\"ag\")||\"\"}if(!w.kah){kah=YAHOO.util.Cookie.get(\"ah\")||\"\"}if(!w.kai){kai=YAHOO.util.Cookie.get(\"ai\")||\"\"}if(!w.kaj){kaj=YAHOO.util.Cookie.get(\"aj\")||\"\"}if(!w.kak){kak=YAHOO.util.Cookie.get(\"ak\")||\"\"}if(!w.kal){kal=YAHOO.util.Cookie.get(\"al\")||\"\"}if(!w.kam){kam=YAHOO.util.Cookie.get(\"am\")||\"\"}if(!w.kan){kan=YAHOO.util.Cookie.get(\"an\")||\"\"}if(!w.kao){kao=YAHOO.util.Cookie.get(\"ao\")||\"\"}if(!w.kap){kap=YAHOO.util.Cookie.get(\"ap\")||\"\"}if(!w.kaq){kaq=YAHOO.util.Cookie.get(\"aq\")||\"\"}if(!w.kar){kar=YAHOO.util.Cookie.get(\"ar\")||\"\"}if(!w.kas){kas=YAHOO.util.Cookie.get(\"as\")||\"\"}if(!w.kat){kat=YAHOO.util.Cookie.get(\"at\")||\"\"}if(!w.kau){kau=YAHOO.util.Cookie.get(\"au\")||\"\"}if(!w.kav){kav=YAHOO.util.Cookie.get(\"av\")||\"\"}if(!w.kaw){kaw=YAHOO.util.Cookie.get(\"aw\")||\"\"}if(!w.kax){kax=YAHOO.util.Cookie.get(\"ax\")||\"\"}if(!w.kay){kay=YAHOO.util.Cookie.get(\"ay\")||\"\"}if(!w.kaz){kaz=YAHOO.util.Cookie.get(\"az\")||\"\"}rl=YAHOO.util.Cookie.get(\"l\")||\"us-en\";if(w.kl){rl=kl}rp=YAHOO.util.Cookie.get(\"p\")||1;if(w.kp){rp=kp}if(w.r2c){rir=\"r2-0\"}function nfn(f){if(!isFinite(f)){return f}var e=\"\"+f,a=Math.abs(f),b,c;if(a>=1000){b=(\"\"+a).split(/\\./);c=b[0].length%3||3;b[0]=e.slice(0,c+(f<0))+b[0].slice(c).replace(/(\\d{3})/g,\",$1\");e=b.join(\".\")}return e}function nutr(b){var a=tr.length;tr[a]=b;return a}function nutp(c){var a,b;return false;b=Math.ceil(Math.random()*10000000);a=nur(\"\",\"\",\"/t/\"+c+\"?\"+b)}function nuv(){viewport_width=YAHOO.util.Dom.getViewportWidth();if(screen.width<viewport_width){viewport_width=screen.width}viewport_height=YAHOO.util.Dom.getViewportHeight();if(screen.height<viewport_height){viewport_height=screen.height}}function ntk(){if(confirm(\"Hide this legend?\")){YAHOO.util.Cookie.set(\"k\",\"l\",{expires:new Date(\"January 12, 2025\")});YAHOO.util.Dom.setStyle(\"keyboard_shortcuts\",\"display\",\"none\")}}function nte(){if(confirm(\"Hide feedback icon?\")){YAHOO.util.Cookie.set(\"e\",\"-1\",{expires:new Date(\"January 12, 2025\")});YAHOO.util.Dom.setStyle(\"feedback_wrapper\",\"display\",\"none\")}}function nux(){var a=1;if((!d.getElementById(\"zero_click_abstract\")||YAHOO.util.Dom.getStyle(\"zero_click_abstract\",\"display\")==\"none\")){a=0}return a}function nua(j,k,h,g,b,e,c,a){if(!b){b=tr.length;tr[b]=k}if(!h){h=10}if(!g){setTimeout(j+\"(tr[\"+b+\"],\"+e+\",\"+c+\",\"+a+\");\",h)}else{if(!tsl){tsl=ts.length;setTimeout(j+\"(tr[\"+b+\"],\"+e+\",\"+c+\",\"+a+\");tsl=0\",10)}else{setTimeout(\"nua(\"+j+\",0,1,\"+b+\",\"+e+\",\"+c+\",\"+a+\")\",100)}}}function nkdc(a){var b;if(a){b=a.ctrlKey}return b}function nkdm(a){var b;if(!ie&&a){b=a.metaKey}return b}function nkdt(a){var b;if(a){b=a.altKey}return b}function nkds(a){var b;if(a){b=a.shiftKey}return b}function nrl(b,a){var c,e;b=b||window.event;fl=1;c=nkdc(b)||nkdm(b)||\"\";if(!c&&kn&&kn==\"1\"&&a&&a.href&&a.getAttribute(\"href\").indexOf(\"http\")!=-1){c=1}if(!c&&(nkds(b)||fm||(b.button&&(((!ie||ie9)&&b.button==1)||(ie&&b.button==4))))){c=1}if(c){if(kg!=\"p\"&&(!kd||kd==1)&&a.href.indexOf(\"/l/?\")==-1&&a.href.indexOf(\"/k/?\")==-1){a.href=\"/l/?u=\"+encodeURIComponent(a.href);nua(\"nul\",a,500)}if(nkds(b)&&!ie&&!is){nua(\"nug\",a.href,\"\",\"\",\"\",c);return false}else{return true}}else{e=a.href;if(kg!=\"p\"&&(!kd||kd==1)&&!ih5&&!ie7&&a.href.indexOf(\"/k/?\")==-1&&a.href.indexOf(\"/l/?\")==-1){if(ie){e=\"/l/?u=\"+encodeURIComponent(a.href)}else{e=\"/k/?u=\"+encodeURIComponent(a.href)}}nua(\"nug\",e);return false}}function nul(b){var a,c;var a=b.href.indexOf(\"/k/?u=\");if(a==-1){a=b.href.indexOf(\"/l/?u=\")}if(a!=-1){c=decodeURIComponent(b.href.substring(a+6))}b.href=c;fl=0}function nrg(j,b,f,g){var e,a,c,h;if(!b){b=0}f=f||window.event;c=new RegExp(\"highlight[a-z]*?(\\\\d+)\");if(g&&c.test(YAHOO.util.Dom.get(j).className)){if(RegExp.$1==3){b=-1}else{b=parseInt(RegExp.$1)-1}}if(b==\"-1\"){e=j.getElementsByTagName(\"a\")[j.getElementsByTagName(\"a\").length-1]}else{e=j.getElementsByTagName(\"a\")[b]||j.getElementsByTagName(\"a\")[0]}if(!g){g=nkdc(f)||nkdm(f)||fn}if(!g&&kn&&kn==\"1\"){g=1}if(g&&e&&e.href&&e.getAttribute(\"href\").indexOf(\"http\")==-1){g=0}if(e.href&&e.href!=\"javascript:;\"){nhr(j.id);if(fl){fl=0}else{fl=1;if(e.clickurl&&e.clickurl!=e.href){e.href=e.clickurl}a=e.href;if(g&&kg!=\"p\"&&(!kd||kd==1)&&a.indexOf(\"/l/?\")==-1&&a.indexOf(\"/k/?\")==-1){a=\"/l/?u=\"+encodeURIComponent(a)}if(g){nug(a,g)}else{nua(\"nug\",a,\"\",\"\",\"\",g)}}}else{if(fl){fl=0}else{if(e.href&&e.href==\"javascript:;\"){e.onclick()}}}}function nug(e,g){var b,c,f,a;fl=0;fn=0;a=\"\";if(window.getSelection){a=window.getSelection().toString()}else{if(document.selection){a=document.selection.createRange();a=a.text}}if(a.length){return false}if(g){window.open(e)}else{if(ir&&!irl){}if(!is&&ih5&&kg!=\"p\"&&(!kd||kd==1)){b=document.getElementById(\"iframe_hidden\");b.contentWindow.postMessage(e,location.protocol+\"//\"+location.hostname)}else{if((ie||ip||ir||is||im)&&e.indexOf(\"http\")!=-1&&kg!=\"p\"&&(!kd||kd==1)){if(d.getElementById(\"iframe_hidden\")){d.body.removeChild(d.getElementById(\"iframe_hidden\"))}c=\"<html><head><body><script language='JavaScript'>top.window.location=\\\"\"+e+'\";<\\/script></body></html>';b=d.createElement(\"iframe\");b.id=\"iframe_hidden\";d.body.appendChild(b);f=b.document;if(b.contentDocument){f=b.contentDocument}else{if(b.contentWindow){f=b.contentWindow.document}}f.open();f.writeln(c);f.close()}else{w.location=e}}}}function nrt(a){var b=d.getElementById(\"search_elements_hidden\");if(b){b.innerHTML='<input type=\"hidden\" name=\"v\">';document.x.v.value=a;setTimeout(\"document.x.submit()\",100)}}function nrv(a,g,p,b){if(!a){return false}var f,m,q,n,l,k,e,h,o,c;f=a;a=a.parentNode;if(a&&a.style){while(YAHOO.util.Dom.getStyle(a,\"display\")==\"none\"){nsr(a.previousSibling.firstChild,a!=f.parentNode?1:0,p);a=a.parentNode}}if(f.id==\"r1-\"+(parseInt(r1c)-1)){if(!il&&nrb){nrb(\"\",1)}}if(!g){if(f.className&&f.className.indexOf(\"highlight\")==-1&&f.children.length){for(var e=0;e<f.children.length;e++){var j=f.children[e];if(j&&j.className&&j.className.indexOf(\"highlight\")!=-1){f=j;break}}}if(!YAHOO.util.Dom.hasClass(f,\"highlight\")){YAHOO.util.Dom.addClass(f,\"highlight\");if(YAHOO.util.Dom.hasClass(f,\"highlight_sponsored\")){YAHOO.util.Dom.addClass(f,\"highlight_sponsored_hover\")}m=nun(f);n=YAHOO.util.Dom.getY(f);l=YAHOO.util.Dom.getDocumentScrollTop();if(b&&m&&!fq&&n>l){m.focus();m.onclick=function(r){return nrl(r,this)}}h=YAHOO.util.Dom.getElementsByClassName(\"hidden\",\"a\",f);for(o in h){c=h[o];if(!c){continue}YAHOO.util.Dom.removeClass(c,\"hidden\");YAHOO.util.Dom.addClass(c,\"hidden2\");break}}}if(f.childNodes[1]&&f.childNodes[1].childNodes[1]&&f.childNodes[1].childNodes[1].className==\"hidden\"){f.childNodes[1].childNodes[1].style.display=\"inline\"}}function nun(c){var b,a;b=\"\";a=0;re=new RegExp(\"highlight_?[a-z]*?(\\\\d+)\");if(re.test(YAHOO.util.Dom.get(c).className)){if(RegExp.$1==3){a=-1}else{if(kf&&(kf==\"fw\"||kf==\"b\")){a=2}else{a=parseInt(RegExp.$1)-1}}}if(a==\"-1\"){b=c.getElementsByTagName(\"a\")[c.getElementsByTagName(\"a\").length-1]}else{b=c.getElementsByTagName(\"a\")[a]||c.getElementsByTagName(\"a\")[0]}return b}function nro(a,n,k){var l,c,b,o,m,j,f,g,p,e;if(!a){return false}if(!YAHOO.util.Dom.hasClass(a,\"highlight\")&&a.className&&a.children.length){for(var f=0;f<a.children.length;f++){var h=a.children[f];if(YAHOO.util.Dom.hasClass(h,\"highlight\")){a=h;break}}}if(YAHOO.util.Dom.hasClass(a,\"highlight\")){if(n&&k){c=YAHOO.util.Dom.getX(a);b=c+a.scrollWidth;o=YAHOO.util.Dom.getY(a);m=o+a.scrollHeight;if(n>c&&n<b&&k>o&&k<m){return false}}YAHOO.util.Dom.removeClass(a,\"highlight\");if(YAHOO.util.Dom.hasClass(a,\"highlight_sponsored_hover\")){YAHOO.util.Dom.removeClass(a,\"highlight_sponsored_hover\")}g=YAHOO.util.Dom.getElementsByClassName(\"hidden2\",\"a\",a);for(p in g){e=g[p];if(!e){continue}YAHOO.util.Dom.removeClass(e,\"hidden2\");YAHOO.util.Dom.addClass(e,\"hidden\");break}l=nun(a);if(l&&!fq){l.blur()}}}function nrq(k){var c,n,m,h,g,f,e,l,a,b,j;nuv();if(!k||!k.length){return false}div=d.getElementById(\"side_suggestions\");h=d.getElementById(\"side_wrapper\");if(div&&YAHOO.util.Dom.getStyle(h,\"display\")==\"block\"&&(YAHOO.util.Dom.getY(h)+h.scrollHeight+250<viewport_height)){g=d.createElement(\"div\");g.innerHTML+='<div class=\"spacer_bottom_7\">Search suggestions:</div>';m=g;nutp(\"d1-si\");j=0;for(c=0;c<k.length;c++){n=k[c];a=n.s||\"\";b=n.r||\"\";if(d.referrer.match(a)){continue}j++;f=d.createElement(\"div\");f.onclick=function(){nrqc(this.firstChild)};l=d.createElement(\"a\");if(b){l.innerHTML=\" \"+b+\" -> \"}l.innerHTML+=a;l.nrqs=a;l.nrqr=b;l.href=\"javascript:;\";YAHOO.util.Dom.addClass(f,\"search_suggestion\");f.appendChild(l);g.appendChild(f);if(j==1){YAHOO.util.Dom.setStyle(f,\"margin-top\",\"2px\")}if(j==7){break}if(j==8&&k.length>10){e=d.createElement(\"div\");g.appendChild(e);YAHOO.util.Dom.setStyle(e,\"display\",\"none\");l=d.createElement(\"a\");l.innerHTML=\"More...\";l.onclick=function(){nsh(\"cpq\")};l.href=\"javascript:;\";l.id=\"cpq\";e.id=\"cpqh\";div.insertBefore(l,div.firstChild);div.insertBefore(g,div.firstChild);g=e}}if(j>=8&&k.length>10){div.insertBefore(e,div.firstChild.nextSibling)}else{div.insertBefore(g,div.firstChild)}YAHOO.util.Dom.setStyle(div,\"padding-top\",\"10px\");YAHOO.util.Dom.setStyle(div,\"padding-bottom\",\"15px\");YAHOO.util.Dom.setStyle(div,\"display\",\"block\")}}function nrqc(a){if(a.nrqr){d.x.q.value=d.x.q.value.replace(new RegExp(a.nrqr,\"i\"),a.nrqs)}else{if(a.nrqs.indexOf(\" \")!=-1){d.x.q.value+=' \"'+a.nrqs+'\"'}else{d.x.q.value+=\" \"+a.nrqs}}setTimeout(\"document.x.submit()\",100)}function nrm(f,e){var r,k,h,b,l,o,g,a,c,j,m,q,p,s,n;if(fq){return false}if(fo){setTimeout(\"nrm(\"+f+\",'\"+e+\"')\",100);return false}fo=1;nuv();r=new RegExp(\"r(\\\\d+)-(\\\\d+)\");k=new RegExp(\"rl([ei])(\\\\d+)-(\\\\d+)\");h=new RegExp(\"rld-(\\\\d+)\");if(e){if(r.test(e)){b=RegExp.$1||0;l=RegExp.$2||0}else{if(e==\"zero_click_abstract\"||e==\"s\"){b=1;l=-1}else{fo=0;return false}}}else{if(rc&&rc.id==\"zero_click_abstract\"){b=1;l=-1}else{if(rc&&rc.id==\"s\"){b=1;l=-1}else{if(rc&&r.test(rc.id)){b=RegExp.$1||0;l=RegExp.$2||0}else{if(rc&&k.test(rc.id)){b=rs?1:2;m=1}else{if(rc&&h.test(rc.id)){b=1;m=1}else{rc=d.getElementById(\"r1-0\");if(!rc){rc=d.getElementById(\"zero_click_abstract\")}if(!rc){rc=d.getElementById(\"s\")}if(!rc){fo=0;return false}else{l=0;b=1}}}}}}}switch(f){case 1:if(rc&&rc.id&&rc.id==\"r1-0\"&&!YAHOO.util.Dom.hasClass(rc,\"highlight\")){}else{l++}break;case 2:l--;break;case 3:b++;l=0;break;case 4:b--;l=0;break;case 5:break;case 6:break;case 7:l++;break;default:l++}a=\"r\"+b+\"-\"+l;if(l<=-1){if(d.getElementById(\"did_you_mean\")){a=\"did_you_mean\"}else{a=\"zero_click_abstract\"}}c=d.getElementById(a);j=0;if(e){j=d.getElementById(e)}if(f==1&&b==2&&!c&&r1c){a=\"r1-0\";c=d.getElementById(a)}if(f==1){n=YAHOO.util.Dom.getDocumentScrollTop();s=YAHOO.util.Dom.getY(a);if(s&&(s<n||s>n+viewport_height)){o=0;while(o>-1){g=d.getElementById(\"r1-\"+o);if(!g){break}s=YAHOO.util.Dom.getY(g.id);if(s-90<n){o++}else{c=g;break}}}}if(f==2){n=YAHOO.util.Dom.getDocumentScrollTop();s=YAHOO.util.Dom.getY(a);if(s<n||s>n+viewport_height){o=r1c-2;while(o>0){g=d.getElementById(\"r1-\"+o);s=YAHOO.util.Dom.getY(g.id);if(!g){break}if(s+90>n+viewport_height){o--}else{c=g;break}}}}if(j&&!c&&f==7&&j.nextSibling&&j.nextSibling.firstChild){if(j.nextSibling.firstChild.onclick){j.nextSibling.firstChild.onclick()}fo=0;return}else{if(!j&&!c&&f==7&&rc&&rc.nextSibling&&rc.nextSibling.firstChild){if(rc.nextSibling.firstChild.onclick){rc.nextSibling.firstChild.onclick()}fo=0;return}}if((a==\"zero_click_abstract\"||a==\"s\")&&YAHOO.util.Dom.getStyle(c,\"display\")==\"none\"){if(a==\"zero_click_abstract\"&&r2c){c=d.getElementById(\"r2-0\")}else{fo=0;return}}if(m){switch(f){case 1:if(b==2){c=rc.nextSibling.nextSibling;if(!c){a=\"r1-0\";c=d.getElementById(a)}else{if(YAHOO.util.Dom.getStyle(c,\"display\")==\"none\"){c=c.nextSibling.firstChild;if(!c.id&&c.nextSibling){c=c.nextSibling}}}}else{if(b==1&&rc.nextSibling.nextSibling){c=rc.nextSibling.nextSibling.nextSibling}else{if(1){a=\"r1-0\";c=d.getElementById(a)}else{c=rc.nextSibling.firstChild}}}break;case 2:c=rc.previousSibling.previousSibling;if(YAHOO.util.Dom.getStyle(c,\"display\")==\"none\"){c=c.nextSibling.lastChild}break;case 4:break;case 7:if(rc.nextSibling.nextSibling){c=rc.nextSibling.nextSibling.nextSibling}else{c=rc.nextSibling.firstChild}break;default:fo=0;return false}}if(c){if(b==1&&k.test(c.id)){c=c.nextSibling.firstChild}if(f!=7){if(rc){nua(\"nro\",rc)}}if(f!=5&&(b==2||rs)&&YAHOO.util.Dom.getStyle(c.parentNode,\"display\")==\"none\"){q=c;while(q.parentNode.id!=\"zero_click_topics\"&&q.parentNode.id!=\"links\"&&q.parentNode.id!=\"content\"){q=q.parentNode;if(!p&&YAHOO.util.Dom.getStyle(q,\"display\")==\"block\"){p=q}}if(p&&m){c=q.nextSibling.nextSibling}else{if(YAHOO.util.Dom.getStyle(q,\"display\")==\"none\"){c=q.previousSibling}else{if(q.nextSibling&&YAHOO.util.Dom.getStyle(q.nextSibling,\"display\")==\"block\"){c=p.lastChild.previousSibling}else{if(f==2&&q.previousSibling){c=q.previousSibling}else{if(f==1&&q.nextSibling&&YAHOO.util.Dom.getStyle(q.nextSibling,\"display\")==\"none\"){c=q.nextSibling.nextSibling.firstChild.nextSibling}else{if(f==1&&!q.nextSibling){c=q.previousSibling}}}}}}if(k.test(c.id)&&rs&&RegExp.$1==\"e\"){c=c.nextSibling.firstChild}}nua(\"nrv\",c,0,1,0,f==7?1:0,(f==5||f==7)?1:0,1);if(f!=7){rc=c}if(f!=7&&rc&&rc.id&&rc.id!=\"r1-0\"){if(fk&&(l>6||f==2)){if(!io){nua(\"nrs\",rc,0,1,0,1,f==5?0:(f==1?1:-1))}else{nrs(rc,1,f==5?0:(f==1?1:-1))}}else{if(!io){nua(\"nrs\",rc,0,1)}else{nrs(rc,0,0)}}}}else{if(b==1&&a!=\"zero_click_abstract\"&&a!=\"s\"&&!ieof&&(!rs||!it)&&++ci<20){nrv(d.getElementById(\"r1-\"+parseInt(r1c-1)),1);setTimeout(\"nrm(\"+f+\",'\"+e+\"')\",100)}}if(io&&f==1&&nrb){nrb()}fo=0}function nrs(b,f,e){var g,a,c,j,h;g=YAHOO.util.Dom.getY(b);c=b.scrollHeight;a=YAHOO.util.Dom.getDocumentScrollTop();nuv();h=viewport_height/2;if(!c||g==a){return}if(f||((g+c+10)>(viewport_height+a))||((g-10)<a)){j=g-h;if(!e||(e==1&&(g-a)>h)||(e==-1&&(g-a)<h)){w.scroll(0,j)}}}function nki(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;if(rii){nrm(5,rii)}}function nkr(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;if(rir){nrm(5,rir)}}function nkda(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;nrm(1)}function nkua(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;nrm(2)}function nke(c){if(fq){if(YAHOO.util.Dom.getStyle(\"bang\",\"display\")==\"block\"){nbb(d.getElementById(\"bang\"))}return false}if(c&&(nkdc(c)||nkdm(c)||nkds(c)||nkdt(c)||fa)){return false}fk=1;if(rc&&(!kn||kn!=\"1\")){var b=new RegExp(\"rl([ei])(\\\\d+)-(\\\\d+)\");var a=new RegExp(\"^r2-(\\\\d+)$\");if(rc.id&&b.test(rc.id)){if(a.test(rc.nextSibling.firstChild.id)){rc=rc.nextSibling.firstChild}else{rc=rc.nextSibling.firstChild.nextSibling}nrv(rc)}else{rc.onclick()}}}function nko(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;if(rc){rc.onclick()}}function nkt(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;nuo()}function nkd(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;nrg(rc,\"-1\")}function nkn(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;fn=1;if(rc){rc.onclick()}}function nkm(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;if(d.getElementById(\"r1-0\")){nrm(5,\"r1-0\")}}function nkes(a){if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}if(fq){fq=0;d.x.q.blur();if(rc&&rc.id){nrm(5,rc.id)}}}function nkex(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkdt(a)||fa)){return false}fk=1;nbc()}function nksb(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;if(!il&&nrb){nrb()}}function nksp(a){var b;if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){return false}fk=1;b=d.getElementById(\"s\");if(b){nrm(5,\"s\")}}function nks(a){if(fq){return false}if(a&&(nkdc(a)||nkdm(a)||nkds(a)||fa)){return false}fk=1;setTimeout(\"d.x.q.focus()\",10);setTimeout(\"d.x.q.select()\",15);if(ko&&ko==\"s\"){setTimeout(\"w.scrollTo(0,0)\",10)}}function nhs(a){nrm(5,a)}function nhr(a){d.getElementById(\"state_hidden\").value=a}function nrp(e,g){var a,h,f,c,b;if(!e){return false}h=d.getElementById(\"special_page_header\");f=d.getElementById(\"zero_click_abstract\");c=d.getElementById(\"did_you_mean\");if(!h&&(!f||YAHOO.util.Dom.getStyle(\"zero_click_abstract\",\"display\")==\"none\")&&!c){b=e.replace(/%20/i,\"+\");if(d.referrer.indexOf(b)!=-1){return false}h=d.createElement(\"div\");f=d.createElement(\"div\");h.id=\"did_you_mean\";f.innerHTML=\"<b>Did you mean </b>\";link=d.createElement(\"a\");link.innerHTML=decodeURIComponent(g);link.href=\"/?q=\"+e+(rv?\"&v=\"+rv:\"\")+(kurl?kurl:\"\");link.onclick=function(){fl=1};f.appendChild(link);f.appendChild(d.createTextNode(\"?\"));YAHOO.util.Dom.addClass(h,\"highlight_s1\");h.appendChild(f);a=d.getElementById(\"r1a\")||d.getElementById(\"links\");a.insertBefore(h,a.firstChild);YAHOO.util.Dom.setStyle(\"links\",\"padding-top\",\"20px\");if(d.getElementById(\"zero_click_answer\")){YAHOO.util.Dom.setStyle(\"did_you_mean\",\"padding-bottom\",\"20px\")}if(nir){nir(\"s\")}}}function nra2(b,e){var c,a;c=d.getElementById(e);nuv();if(c){if(b){a=d.getElementById(\"zero_click_header\");if(a){a.innerHTML=b;YAHOO.util.Dom.setStyle(a,\"display\",\"block\")}}a=d.getElementById(\"zero_click_abstract\");a.appendChild(c);if(a){YAHOO.util.Dom.setStyle(a,\"display\",\"block\")}a=d.getElementById(\"zero_click_wrapper\");if(a){YAHOO.util.Dom.setStyle(a,\"display\",\"block\")}if(a){YAHOO.util.Dom.setStyle(a,\"visibility\",\"visible\")}if(viewport_width>900){if(ie6){YAHOO.util.Dom.setStyle(a,\"padding-top\",\"25px\")}}else{if(viewport_width<900){if(ie6){YAHOO.util.Dom.setStyle(a,\"padding-top\",\"45px\")}}}}}function nra(j,m,p){var h,b,a,e,f,n,u,s,k,c,o,l,x,v,t,r,q,g;nuv();g=0;c=j.length;if(c&&(nux()||rt==\"D\")){if(j[0][\"is_top\"]){g=1}}if(nux()&&rt!=\"D\"&&!g){return false}l=new RegExp(\"^.*?//([^/?:#]+)\");t=\"\";k=0;for(o in j){if(!j[o]){continue}obj=j[o];if(l.test(obj.u)){x=RegExp.$1}if(obj.i&&!g){b=d.getElementById(\"zero_click_plus_wrapper\");h=d.getElementById(\"zero_click_image\");if(b&&!h){a=d.createElement(\"div\");a.id=\"zero_click_image\";b.parentNode.insertBefore(a,b.nextSibling);h=a}if(h&&obj.i){if(obj.i.indexOf(\"http\")==0){obj.i=\"<img src='/iu/?u=\"+obj.i+\"'>\"}h.innerHTML=obj.i;YAHOO.util.Dom.setStyle(h,\"display\",\"block\");YAHOO.util.Dom.setStyle(h,\"margin-top\",\"2px\");YAHOO.util.Dom.setStyle(h,\"padding-bottom\",\"2px\");if(obj.w){YAHOO.util.Dom.setStyle(h,\"width\",obj.w+\"px\");if(obj.w>100){YAHOO.util.Dom.setStyle(h,\"max-width\",obj.w+\"px\")}}}}if(obj.a){k++;if(k==1){h=d.getElementById(\"zero_click_abstract\");if(g&&(rt||(h&&YAHOO.util.Dom.getStyle(h,\"display\")==\"block\"))){h=d.getElementById(\"zero_click_abstract_top\")}if(obj.i&&viewport_width>751&&!g){q=YAHOO.util.Dom.getX(\"zero_click_image\")-YAHOO.util.Dom.getX(\"zero_click_wrapper\")-50;if(isNaN&&!isNaN(q)){YAHOO.util.Dom.setStyle(h,\"max-width\",q+\"px\")}}if(x){v=d.createElement(\"img\");if(v){v.src=ga+x+\".ico\";e=d.createElement(\"a\");e.href=obj.u;e.onclick=function(){fl=1};if(kn&&kn==\"1\"){e.target=\"_blank\"}YAHOO.util.Dom.addClass(v,\"icon_fav3\");e.appendChild(v);if(m){t=e}else{h.appendChild(e)}YAHOO.util.Dom.addClass(h,\"zero_click_snippet\");YAHOO.util.Dom.setStyle(h,\"margin-right\",\"50px\");if(!p){YAHOO.util.Dom.addClass(h,\"highlight_zero_click\")}}}else{YAHOO.util.Dom.addClass(h,\"zero_click_snippet_no_image\");if(!p){YAHOO.util.Dom.addClass(h,\"highlight_zero_click3\")}}if(obj.h&&obj.s!=\"WolframAlpha\"&&obj.s!=\"Amazon\"){h.innerHTML+=obj.h+'<div style=\"margin-top:5px\"></div>'}if(typeof(obj.a)==\"object\"){h.appendChild(obj.a)}else{h.innerHTML+=obj.a+\" \"}e=d.createElement(\"a\");e.href=obj.u;if(obj.s==\"WolframAlpha\"){e.innerHTML=\"Computed by Wolfram|Alpha\"}else{e.innerHTML=\"More&nbsp;at&nbsp;\"+obj.s}e.onclick=function(){fl=1};if(kn&&kn==\"1\"){e.target=\"_blank\"}if(m&&t){b=d.createElement(\"div\");if(m!=2){YAHOO.util.Dom.setStyle(b,\"margin-top\",\"10px\")}if(m==3){YAHOO.util.Dom.setStyle(t,\"clear\",\"left\");YAHOO.util.Dom.setStyle(b,\"clear\",\"left\")}b.appendChild(e);b.appendChild(t);h.appendChild(b);b=d.createElement(\"div\");YAHOO.util.Dom.addClass(b,\"clear\");h.appendChild(b)}else{h.appendChild(e)}YAHOO.util.Dom.setStyle(h,\"display\",\"block\");if(obj.s==\"WolframAlpha\"){n=d.createElement(\"span\");YAHOO.util.Dom.setStyle(n,\"color\",\"#777\");YAHOO.util.Dom.setStyle(n,\"font-size\",\"11px\");r=new Date();n.innerHTML=\" at \"+r.toString();h.appendChild(n)}}else{if(k==2){h=d.getElementById(\"zero_click\");b=d.createElement(\"div\");b.id=\"zero_click_topics\";u=d.createElement(\"hr\");YAHOO.util.Dom.addClass(u,\"horizontal_line\");b.appendChild(u);h.appendChild(b)}h=d.getElementById(\"zero_click_topics\");b=d.createElement(\"div\");b.id=\"r2-\"+(r2c++);YAHOO.util.Dom.addClass(b,\"results_zero_click\");YAHOO.util.Dom.setStyle(b,\"margin-right\",\"50px\");a=d.createElement(\"div\");YAHOO.util.Dom.addClass(a,\"icon_fav\");b.appendChild(a);a=d.createElement(\"div\");YAHOO.util.Dom.addClass(a,\"links_zero_click\");e=d.createElement(\"a\");e.url=gd+\"?q=\"+obj.t;e.href=\"javascript:;\";e.innerHTML=obj.t;e.onclick=function(){fl=1;nrv(d.getElementById(this.parentNode.parentNode.id),1);YAHOO.util.Dom.addClass(this.parentNode.parentNode,\"highlight_zero_click3\");if(nir){nir(\"zero_click\")}setTimeout(\"fl=0\",100)};a.appendChild(e);n=d.createElement(\"span\");n.innerHTML=\" - \"+obj.a+\" \";YAHOO.util.Dom.addClass(n,\"hidden\");YAHOO.util.Dom.setStyle(n,\"display\",\"none\");e=d.createElement(\"a\");e.href=obj.u;e.innerHTML=\"More at \"+obj.s;e.onclick=function(){fl=1};if(kn&&kn==\"1\"){e.target=\"_blank\"}n.appendChild(e);a.appendChild(n);b.appendChild(a);h.appendChild(b)}if(k==3){break}}}if(k){if(nir){nir(\"zero_click\")}h=d.getElementById(\"zero_click_wrapper\");if(h){YAHOO.util.Dom.setStyle(h,\"display\",\"block\");YAHOO.util.Dom.setStyle(h,\"visibility\",\"visible\");if(rt){YAHOO.util.Dom.setStyle(h,\"padding-bottom\",\"15px\")}if(viewport_width>900){if(ie6){YAHOO.util.Dom.setStyle(h,\"padding-top\",\"25px\")}else{if(x&&x==\"www.amazon.com\"){YAHOO.util.Dom.setStyle(h,\"padding-top\",\"0px\")}else{YAHOO.util.Dom.setStyle(h,\"padding-top\",\"15px\")}}}else{if(viewport_width<900){if(ie6){YAHOO.util.Dom.setStyle(h,\"padding-top\",\"45px\")}else{if(x&&x==\"www.amazon.com\"){YAHOO.util.Dom.setStyle(h,\"padding-top\",\"15px\")}else{YAHOO.util.Dom.setStyle(h,\"padding-top\",\"25px\")}}}}}h=d.getElementById(\"zero_click_abstract\");YAHOO.util.Dom.setStyle(h,\"margin-bottom\",\"2px\");if(g&&(rt||(h&&YAHOO.util.Dom.getStyle(h,\"display\")==\"block\"))){h=d.getElementById(\"zero_click_abstract_top\")}if((rt==\"D\"||g)&&(!ki||ki==1)&&(!kz||kz==1)){u=d.createElement(\"hr\");u.id=\"zero_click_separator\";YAHOO.util.Dom.addClass(u,\"horizontal_line\");YAHOO.util.Dom.setStyle(u,\"padding-top\",\"2px\");YAHOO.util.Dom.setStyle(u,\"width\",\"100%\");YAHOO.util.Dom.setStyle(u,\"clear\",\"both\");h.parentNode.insertBefore(u,h.nextSibling)}if(obj.s!=undefined&&obj.s!=\"OpenStreetMap\"&&(obj.s.indexOf(\"Punchfork\")==-1)&&!obj.f){if(h.scrollHeight>150&&c==1){YAHOO.util.Dom.setStyle(\"zero_click_wrapper2\",\"height\",\"125px\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper2\",\"overflow\",\"auto\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper2\",\"margin\",\"auto\");YAHOO.util.Dom.setStyle(\"zero_click\",\"padding-right\",\"0px\");YAHOO.util.Dom.setStyle(\"zero_click\",\"padding-bottom\",\"5px\");YAHOO.util.Dom.setStyle(\"zero_click_plus_wrapper\",\"padding-right\",\"5px\");YAHOO.util.Dom.setStyle(\"zero_click_abstract\",\"margin-right\",\"40px\")}else{if(h.scrollHeight>125&&c>1){YAHOO.util.Dom.setStyle(\"zero_click_wrapper2\",\"height\",\"100px\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper2\",\"overflow\",\"auto\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper2\",\"margin\",\"auto\");YAHOO.util.Dom.setStyle(\"zero_click\",\"padding-right\",\"0px\");YAHOO.util.Dom.setStyle(\"zero_click\",\"padding-bottom\",\"5px\");YAHOO.util.Dom.setStyle(\"zero_click_plus_wrapper\",\"padding-right\",\"5px\");YAHOO.util.Dom.setStyle(\"zero_click_abstract\",\"margin-right\",\"40px\")}}}b=d.getElementById(\"links\");if(b){YAHOO.util.Dom.setStyle(b,\"padding-top\",\"10px\")}h=d.getElementById(\"zero_click_wrapper2\");b=d.getElementById(\"zero_click\");if(h&&h.scrollHeight&&b.scrollHeight&&(h.scrollHeight<125||b.scrollHeight>=h.scrollHeight)){a=d.getElementById(\"zero_click_plus\");if(a){a.onclick=nra4;YAHOO.util.Dom.setStyle(\"zero_click_plus\",\"background\",\"url(assets/icon_minus.v101.png) no-repeat\")}}else{a=d.getElementById(\"zero_click_plus\");if(a){a.onclick=nra3;YAHOO.util.Dom.setStyle(\"zero_click_plus\",\"background\",\"url(assets/icon_plus.v101.png) no-repeat\")}}DDG.resize()}}function nra3(){var c,b;c=d.getElementById(\"zero_click_abstract\");if(c&&c.innerHTML!=\"\"){YAHOO.util.Dom.setStyle(c,\"display\",\"block\")}c=d.getElementById(\"zero_click_topics\");if(c){YAHOO.util.Dom.setStyle(c,\"display\",\"block\")}c=d.getElementById(\"zero_click_separator\");if(c){YAHOO.util.Dom.setStyle(c,\"display\",\"block\")}c=d.getElementById(\"zero_click_image\");if(c){YAHOO.util.Dom.setStyle(c,\"display\",\"block\")}c=d.getElementById(\"zero_click_header\");if(c){YAHOO.util.Dom.setStyle(c,\"margin-bottom\",\"0px\")}if(c&&c.firstChild){YAHOO.util.Dom.setStyle(c,\"display\",\"block\")}c=d.getElementById(\"zero_click_wrapper2\");if(c){YAHOO.util.Dom.setStyle(c,\"height\",\"100%\");YAHOO.util.Dom.setStyle(c,\"overflow-y\",\"auto\");if(!rt){YAHOO.util.Dom.setStyle(c,\"max-height\",\"800px\")}else{YAHOO.util.Dom.setStyle(c,\"max-height\",\"100%\")}}b=d.getElementById(\"zero_click_plus\");if(b){b.onclick=nra4;YAHOO.util.Dom.setStyle(\"zero_click_plus\",\"background\",\"url(assets/icon_minus.v101.png) no-repeat\")}}function nra4(){var c,b;c=d.getElementById(\"zero_click_abstract\");if(c){YAHOO.util.Dom.setStyle(c,\"display\",\"none\")}c=d.getElementById(\"zero_click_image\");if(c){YAHOO.util.Dom.setStyle(c,\"display\",\"none\")}c=d.getElementById(\"zero_click_separator\");if(c){YAHOO.util.Dom.setStyle(c,\"display\",\"none\")}c=d.getElementById(\"zero_click_topics\");if(c){YAHOO.util.Dom.setStyle(c,\"display\",\"none\")}c=d.getElementById(\"zero_click_header\");if(c){YAHOO.util.Dom.setStyle(c,\"margin-bottom\",\"0px\")}c=d.getElementById(\"zero_click_wrapper2\");if(c){YAHOO.util.Dom.setStyle(c,\"max-height\",\"50px\");YAHOO.util.Dom.setStyle(c,\"overflow-y\",\"hidden\")}b=d.getElementById(\"zero_click_plus\");if(b){b.onclick=nra3;YAHOO.util.Dom.setStyle(\"zero_click_plus\",\"background\",\"url(assets/icon_plus.v101.png) no-repeat\")}}function nrn(af,u){var D,ad,Z,Y,X,v,b,q,p,o,n,e,G,R,c,Q,ac,W,l,k,ae,ab,aa,I,a,m,N,M,K,r,g,F,E,t,L,T,P,s,H,O,U,C,A,S,V,B;l=new RegExp(\"^.*?//(?:ww[\\\\dw]+.|)([^/?:#]+)\");p=o=n=O=U=C=S=A=\"\";switch(af){case\"t\":ac=\"e\";W=r2c;break;case\"d\":ac=\"1\";W=r1c;break;case\"r\":ac=\"1\";W=r1c;break;case\"i\":ac=\"3\";W=r3c;break}if(!af||!u){return false}r=u.length;if(rq.indexOf(\"site%3A\")!=-1){iqs=1}V=rds==30?1:0;if(af==\"d\"&&V){nutp(\"d1\")}if(ac==\"e\"){c=d.getElementById(\"rtes\");if((d.getElementById(\"zero_click_abstract\")&&YAHOO.util.Dom.getStyle(d.getElementById(\"zero_click_abstract\"),\"display\")==\"block\")||(d.getElementById(\"did_you_mean\")&&YAHOO.util.Dom.getStyle(d.getElementById(\"did_you_mean\"),\"display\")==\"block\")){return false}}else{if(ac==\"3\"){c=d.getElementById(\"side\")}else{if(V&&d.getElementById(\"rre0-1\")){c=d.getElementById(\"rre0-1\");c.removeChild(c.lastChild);W--}else{if(W){c=d.getElementById(\"r1-\"+parseInt(W-1)).parentNode}else{c=d.getElementById(\"r1a\")||d.getElementById(\"links\")}}}}Q=c;if(af==\"d\"&&(r1c||rad)&&rd.length==0){rd[0]=1;if(rad&&(!kz||kz==1)){rd[rad]=1}nut(c);for(ab=0;ab<W;ab++){if(!ie||ie9){links=d.getElementById(\"r1-\"+ab).getElementsByTagName(\"a\")}for(aa=0;aa<links.length;aa++){if(YAHOO.util.Dom.hasClass(links[aa],\"url\")){if(links[aa].textContent==\"Official site\"){T=1}if(links[aa].textContent==\"Official blog\"){P=1}if(l.test(links[aa].href)){rd[RegExp.$1]=links[aa].href;if(kf&&(kf==\"w\"||kf==\"fw\"||kf==\"b\")&&V&&!rs){U+=(U?\",\":\"\")+RegExp.$1+\":r1-\"+ab}if(!iqw&&!rs&&grq.test(links[aa].href)&&!T&&!grqh[RegExp.$1]){iqw=RegExp.$1;nrj(\"/iq/v1/twitter/\"+iqw+\"/services.json?callback=nrqw&request_id=r1-\"+ab)}}}}}for(ab=0;ab<r1hc;ab++){links=d.getElementById(\"r1h-\"+ab);if(!links){continue}links=links.getElementsByTagName(\"a\");if(!links){continue}for(aa=0;aa<links.length;aa++){if(links[aa].textContent==\"Official site\"){T=1}if(links[aa].textContent==\"Official blog\"){P=1}if(l.test(links[aa].href)){rd[RegExp.$1]=links[aa].href;if(kf&&(kf==\"w\"||kf==\"fw\"||kf==\"b\")&&V&&!rs){U+=(U?\",\":\"\")+RegExp.$1+\":r1h-\"+ab}if(!iqw&&!rs&&grq.test(links[aa].href)&&!grqh[RegExp.$1]){iqw=RegExp.$1;nrj(\"/iq/v1/twitter/\"+iqw+\"/services.json?callback=nrqw&request_id=r1h-\"+ab)}}}}}if(!r&&((af==\"r\"&&rsc<=0)||(af==\"d\"&&rv==\"d\"))){if(af==\"d\"&&!r1c){ad=d.getElementById(\"rfd\");YAHOO.util.Dom.setStyle(ad,\"display\",\"none\")}af=\"r\";u.x=new Array();u.x[\"t\"]=\"EOH\"}t=0;if(af==\"d\"&&(u[r-1][\"t\"]==\"EOP\"||u[r-1][\"t\"]==\"EOF\")){t=1;ieof=1;il=1;if(u[r-1][\"t\"]==\"EOP\"){t=2}}I=a=g=F=E=0;for(D in u){I++;s=0;if(!u[D]){continue}if(k1&&k1==\"-1\"&&u[D][\"p\"]){continue}if(af==\"d\"&&rv!=\"d\"&&I==1){nsl()}if(I==1&&rv==\"i\"){setTimeout('top.location.replace(\"'+u[D][\"u\"]+'\")',100);return}m=\"\";if(l.test(u[D][\"c\"])){m=RegExp.$1}L=0;if(af==\"d\"&&u[D][\"t\"]==\"EOP\"){u[D][\"t\"]=\"Safe search is on. No \"+(rad||W||r>1?\"more \":\"\")+\"safe search results.\";L=1}else{if(af==\"d\"&&u[D][\"t\"]==\"EOF\"){L=1;continue}}if(af==\"d\"&&!L&&!u[D][\"p\"]&&(rv!=\"d\"||(rv==\"d\"&&W==0))){if(!m||(rd[m]&&!iqs)||rd[u[D][\"c\"]]){if(a==0&&I==r&&!V){nrj(\"/l.js?q=\"+rq);t=1}if(I==r){s=1}else{continue}}else{rd[m]=u[D][\"c\"];rd[u[D][\"c\"]]=u[D][\"c\"]}}if(af==\"r\"&&u[D][\"t\"]==\"EOH\"){s=1}if(af==\"r\"){if(rsd[u[D][\"a\"]]){s=1}else{rsd[u[D][\"a\"]]=1}if(m&&!iqs){rd[m]=u[D][\"c\"]}rd[u[D][\"c\"]]=u[D][\"c\"];rsd[0]=1}if(rv==\"d\"&&af==\"d\"){rsc++;nrj(\"/r.js?u=\"+encodeURIComponent(u[D][\"c\"])+\"&q=\"+rq+(rp&&rp!=\"-1\"?\"&p=1\":\"\"));if(W!=0){continue}}if(!s){a++;ad=d.createElement(\"div\");ad.id=\"r\"+ac+\"-\"+W++;YAHOO.util.Dom.addClass(ad,\"results_links\"+(af==\"d\"&&!u[D][\"h\"]?\"_deep\":\"\")+\" highlight_\"+af+((af==\"r\"||u[D][\"i\"])?\"2\":\"\"));if(af==\"d\"){if(kf&&(kf==\"w\"||kf==\"fw\"||kf==\"b\")&&m&&!L){U+=(U?\",\":\"\")+m+\":\"+ad.id}if(0&&!iqs&&gre.test(u[D][\"u\"])){O+=(O?\",\":\"\")+u[D][\"u\"];reb[reb.length]=ad.id}if(!C&&V&&W>1&&W<8&&rt!=\"A\"&&!rs&&gra3.test(u[D][\"u\"])){C=RegExp.$1}if(!S&&V&&(gra.test(u[D][\"u\"])||(!da&&(rt||gra2.test(u[D][\"a\"]+\" \"+u[D][\"t\"]))))){if(gram.test(u[D][\"u\"])){S=\"m\"}else{if(grae.test(u[D][\"u\"])){S=\"e\"}else{if(grad.test(u[D][\"u\"])){S=\"d\"}else{if(grab.test(u[D][\"b\"])){S=\"b\"}else{S=1}}}}}var h,f;if(gry2.test(u[D][\"u\"])&&W<20){iqyp++;if(u[D][\"u\"].indexOf(\"yelp\")!=-1&&W<=3){h=u[D][\"u\"].substring(u[D][\"u\"].lastIndexOf(\"/\")+1,u[D][\"u\"].length);f=W}}if(!rs&&W<20&&!ytLyrics.test(u[D][\"t\"])){if((!iqyt||iqyt==1)&&gryt2.test(u[D][\"u\"])){iqyt=2}else{if(!iqyt&&gryt.test(u[D][\"u\"])){iqyt=1}}}if(!iqw&&grq.test(u[D][\"u\"])){iqw=RegExp.$1;nrj(\"/iq/v1/twitter/\"+iqw+\"/services.json?callback=nrqw&request_id=\"+ad.id)}}if(af==\"i\"&&!rii){rii=ad.id}else{if(af==\"n\"&&!rin){rin=ad.id}else{if(af==\"t\"&&!rir){rir=ad.id}}}}if((af==\"d\"&&!t&&I==r&&!g)||(af==\"r\"&&rsc<=0)){Z=d.createElement(\"div\");YAHOO.util.Dom.addClass(Z,\"results_links_more highlight_\"+af);b=d.createElement(\"a\");b.href=\"javascript:;\";b.onclick=function(){nsr(this)};if(af==\"d\"||af==\"r\"){if(af==\"d\"){Z.id=\"rld-\"+(++rdc)}else{if(af==\"r\"){Z.id=\"rle0-1\"}}if(af==\"r\"&&!r1hc){b.appendChild(d.createTextNode(\"Get Web links...\"))}else{b.appendChild(d.createTextNode(\"More Links...\"))}YAHOO.util.Dom.addClass(b,\"large\");YAHOO.util.Dom.addClass(Z,\"links_deep\")}else{if(af==\"t\"){Z.id=\"rli1-\"+(++rtc);b.appendChild(d.createTextNode(\"More Related Topics...\"))}}Z.appendChild(b);if(af==\"r\"&&!s){g=Z;E=Y}else{if(af==\"r\"){c.appendChild(Y)}c.appendChild(Z)}Z=d.createElement(\"div\");if(af==\"d\"){Z.id=\"rrd-\"+rdc}else{if(af==\"r\"){Z.id=\"rre0-1\"}else{if(af==\"t\"){Z.id=\"rri1-\"+rtc}}}YAHOO.util.Dom.setStyle(Z,\"display\",\"none\");if(af==\"r\"){Y=d.createElement(\"div\");Y.id=\"r\"+ac+\"-\"+W++;Z.appendChild(Y)}if(af==\"r\"&&!s){F=Z}else{c.appendChild(Z);c=Z;g=1;nut(c);if(af==\"r\"&&W<=6){nua(\"nsr\",c.previousSibling.firstChild,0,0,0,1)}}}if(s){continue}Z=d.createElement(\"div\");YAHOO.util.Dom.addClass(Z,\"icon_\"+(af==\"d\"&&!u[D][\"h\"]?\"fav2\":\"fav\"));if((af==\"d\"||af==\"r\")&&u[D][\"i\"]!=\"\"&&(!kf||kf==\"1\"||kf==\"fw\"||kf==\"b\")){G=\"Search domain \"+u[D][\"i\"];if(nur){e=nur(YAHOO.util.Dom.getStyle(c,\"display\")==\"block\"&&c.event&&c.event.is_fired?\"\":c.ig,G,ga+u[D][\"i\"]+\".ico\",16,16)}if(e){b=d.createElement(\"a\");b.href=iqs?\"/?q=\"+rq:\"/?q=\"+rq+\"+site:\"+u[D][\"i\"];b.title=G;b.appendChild(e);b.onclick=function(){fl=1};Z.appendChild(b)}}else{if(af==\"r\"){Z.innerHTML+=\"&#149;\"}}ad.appendChild(Z);Z=d.createElement(\"div\");YAHOO.util.Dom.addClass(Z,\"links_\"+(ac==1?\"main\":\"zero_click\"));if(af==\"d\"&&!u[D][\"h\"]){YAHOO.util.Dom.addClass(Z,\"links_deep\")}if(af!=\"r\"){b=d.createElement(\"a\");if(af==\"d\"){YAHOO.util.Dom.addClass(b,\"large\")}b.href=u[D][\"c\"];if(kn&&kn==\"1\"&&b&&b.href&&b.getAttribute(\"href\").indexOf(\"http\")!=-1){b.target=\"_blank\"}if(u[D][\"t\"]==\"<b>Official site</b>\"){if(T||W>1){u[D][\"t\"]=u[D][\"h\"];u[D][\"h\"]=0}else{u[D][\"a\"]=\" - \"+decodeURIComponent(rq)}}else{if(P&&u[D][\"t\"]==\"Official blog\"){W--;continue}}b.innerHTML=u[D][\"t\"];if(af==\"i\"&&u[D][\"h\"]){if(nur){e=nur(\"\",u[D][\"t\"],u[D][\"h\"],u[D][\"w\"],u[D][\"x\"])}if(e){b.insertBefore(e,b.firstChild)}}q=b;B=d.createElement(\"h2\");B.appendChild(b);Z.appendChild(B)}if(af==\"d\"){if(u[D][\"h\"]&&u[D][\"a\"]){v=d.createElement(\"span\");v.innerHTML=\" \"+u[D][\"a\"];Z.appendChild(v)}else{if(u[D][\"a\"]){Y=d.createElement(\"div\");YAHOO.util.Dom.addClass(Y,\"snippet\");if(k2&&k2==\"1\"){o=d.createElement(\"a\");o.href=u[D][\"c\"];if(kn&&kn==\"1\"&&o.getAttribute(\"href\").indexOf(\"http\")!=-1){o.target=\"_blank\"}o.innerHTML=u[D][\"a\"];Y.appendChild(o)}else{Y.innerHTML=u[D][\"a\"]}Z.appendChild(Y)}}Y=d.createElement(\"div\");p=d.createElement(\"a\");p.href=u[D][\"c\"];if(kn&&kn==\"1\"&&p.getAttribute(\"href\").indexOf(\"http\")!=-1){p.target=\"_blank\"}p.appendChild(d.createTextNode(\" \"+u[D][\"d\"]));Y.appendChild(p);YAHOO.util.Dom.addClass(p,\"url\");if(!L){if(u[D][\"e\"]){v=d.createElement(\"span\");YAHOO.util.Dom.addClass(v,\"links_menu\");v.innerHTML=\"&nbsp; &nbsp;\"+u[D][\"e\"];Y.appendChild(v)}if(!iqs&&!u[D][\"p\"]){Y.appendChild(d.createTextNode(\"\\u00a0 \\u00a0\"));n=d.createElement(\"a\");n.href=iqs?\"/?q=\"+rq:\"/?q=\"+rq+\"+site:\"+u[D][\"i\"];if(kurl){n.href+=kurl}n.appendChild(d.createTextNode(\"More results\"));n.title=\"Search domain \"+u[D][\"i\"];YAHOO.util.Dom.addClass(n,\"links_menu\");if(!u[D][\"m\"]){YAHOO.util.Dom.addClass(n,\"hidden\")}Y.appendChild(n)}else{if(u[D][\"p\"]){Y.appendChild(d.createTextNode(\"\\u00a0 \\u00a0\"));n=d.createElement(\"span\");n.href=u[D][\"c\"];n.appendChild(d.createTextNode(\"Sponsored link\"));YAHOO.util.Dom.addClass(n,\"links_menu\");YAHOO.util.Dom.addClass(ad,\"highlight_sponsored\");YAHOO.util.Dom.addClass(ad,\"sponsored\");Y.appendChild(n)}}}Z.appendChild(Y)}else{if(af==\"t\"&&u[D][\"a\"]!=\"\"){v=d.createElement(\"span\");v.innerHTML=\" - \"+u[D][\"a\"];YAHOO.util.Dom.addClass(v,\"hidden\");YAHOO.util.Dom.setStyle(v,\"display\",\"none\");Z.appendChild(v)}else{if(af==\"i\"){}else{if(af==\"r\"){YAHOO.util.Dom.addClass(Z,\"snippet\");Z.innerHTML+=u[D][\"a\"]+\"<br>\";b=d.createElement(\"a\");b.href=u[D][\"c\"];if(kn&&kn==\"1\"&&b.getAttribute(\"href\").indexOf(\"http\")!=-1){b.target=\"_blank\"}b.innerHTML+=\"\"+u[D][\"d\"];Z.appendChild(b);if(u[D][\"t\"]){v=d.createElement(\"span\");YAHOO.util.Dom.addClass(v,\"url\");v.innerHTML+=\"&nbsp;[\"+u[D][\"t\"]+\"]\";Z.appendChild(v)}else{v=d.createElement(\"span\");v.innerHTML+=\"&nbsp;\";Z.appendChild(v)}}}}}ad.appendChild(Z);if(af==\"t\"){c.options[c.options.length]=new Option(u[D][\"t\"],u[D][\"u\"]+(rv?\"?v=\"+rv:\"\"))}else{if(rv==\"d\"&&af==\"d\"){Z=d.getElementById(\"zero_click_answer\")||d.getElementById(\"rfd\")||\"\";if(Z){if(Z.id==\"zero_click_answer\"){YAHOO.util.Dom.setStyle(Z,\"padding-bottom\",\"5px\")}Z.parentNode.insertBefore(ad,Z.nextSibling)}}else{if(af==\"i\"){c.insertBefore(ad,c.firstChild)}else{c.appendChild(ad);if(!rc&&ad.id==\"r1-0\"){rc=ad}}}}if(af==\"r\"&&g&&F){c.appendChild(E);c.appendChild(g);c.appendChild(F);c=g;nut(c);if(W<=6){nua(\"nsr\",g.firstChild,0,0,0,1)}}if(af==\"d\"&&a==1){H=0;k=new RegExp(\"^r1-(\\\\d+)$\");if(rc&&k.test(rc.id)){ae=RegExp.$1}H=(ae==W)?1:0;if(fk&&H&&(!ad.previousSibling||ad.previousSibling.id.indexOf(\"r1-\")==-1)){nrm(6,ad.id)}}if(q){q.onclick=function(j){return nrl(j,this)}}if(p){p.onclick=function(j){return nrl(j,this)}}if(o){o.onclick=function(j){return nrl(j,this)}}if(n){n.onclick=function(j){return nrl(j,this)}}if(af==\"i\"){break}}if(af==\"t\"){YAHOO.util.Dom.setStyle(d.getElementById(\"rte\"),\"display\",\"block\");YAHOO.util.Dom.setStyle(\"links\",\"padding-top\",\"20px\");if(d.getElementById(\"did_you_mean\")){YAHOO.util.Dom.setStyle(\"did_you_mean\",\"padding-bottom\",\"20px\")}}if(af==\"d\"&&u[0][\"s\"]&&!d.getElementById(\"powered_by\")){Z=d.createElement(\"div\");Z.id=\"powered_by\";if(u[0][\"s\"]==\"blekko\"){Z.appendChild(d.createTextNode(\"uses results from \"));b=d.createElement(\"a\");b.href=\"/\"+u[0][\"s\"]+\"/\";b.target=\"_blank\";b.innerHTML=\"blekko\";b.onclick=function(){fl=1};Z.appendChild(b);ad=d.getElementById(\"links\");if(ad){ad.insertBefore(Z,ad.firstChild)}}else{if(0&&W>5){u[0][\"s\"]=\"bing\";if(nur){e=nur(\"\",\"\",\"/assets/icon_\"+u[0][\"s\"]+\".v101.png\")}YAHOO.util.Dom.addClass(e,\"inline\");b=d.createElement(\"a\");b.href=\"http://help.duckduckgo.com/customer/portal/articles/216399\";b.target=\"_blank\";b.innerHTML=\"results by\";b.onclick=function(){fl=1};Z.appendChild(b);Z.appendChild(d.createTextNode(\" \"));b=d.createElement(\"a\");b.href=\"/\"+u[0][\"s\"]+\"/\";b.target=\"_blank\";b.appendChild(e);b.onclick=function(){fl=1};Z.appendChild(b);u[0][\"s\"]=\"yahoo\";if(nur){e=nur(\"\",\"\",\"/\"+u[0][\"s\"]+\".png\")}YAHOO.util.Dom.addClass(e,\"inline\");b=d.createElement(\"a\");b.href=\"http://help.duckduckgo.com/customer/portal/articles/216399\";b.target=\"_blank\";b.innerHTML=\"built with\";b.onclick=function(){fl=1};Z.innerHTML+=\"<br>\";Z.appendChild(b);b=d.createElement(\"a\");b.href=\"/\"+u[0][\"s\"]+\"/\";b.target=\"_blank\";b.appendChild(e);b.onclick=function(){fl=1};Z.appendChild(b);b=d.createElement(\"a\");b.href=\"http://help.duckduckgo.com/customer/portal/articles/216399\";b.target=\"_blank\";b.onclick=function(){fl=1};Z.appendChild(b);Z.innerHTML+=\"<br>\";b=d.createElement(\"a\");b.href=\"http://help.duckduckgo.com/customer/portal/articles/216399\";b.target=\"_blank\";b.innerHTML=\"What does this mean?\";Z.appendChild(b);ad=d.getElementById(\"powered_by_wrapper\");if(ad){ad.appendChild(Z);M=YAHOO.util.Dom.getY(Z);YAHOO.util.Dom.setStyle(Z,\"position\",\"absolute\");YAHOO.util.Dom.setStyle(Z,\"top\",M+\"px\");YAHOO.util.Dom.setStyle(Z,\"width\",\"130px\");YAHOO.util.Dom.setStyle(Z,\"text-align\",\"left\");YAHOO.util.Dom.setStyle(Z,\"left\",(YAHOO.util.Dom.getX(\"side\")-YAHOO.util.Dom.getX(\"content_wrapper\"))+\"px\")}}}}if(ac==\"3\"){r3c=W}else{if(ac!=\"e\"){r1c=W}}if(!ip){window.scrollBy(0,1)}u=null;if(nir){nir(af)}if(af==\"d\"&&YAHOO.util.Dom.getStyle(Q,\"display\")==\"block\"&&Q.event){nua(\"nse\",Q,200)}if(O&&(!kb||kb!=\"n\")&&(YAHOO.util.FlashDetect.installed||ip||ia)){nrj(\"/ie/?urls=\"+O+\"&maxwidth=600&format=json&wmode=window&callback=nreb&autoplay=1\")}if(U){nrj(\"/o.js?d=\"+U+(kf&&kf==\"b\"?\"&t=b\":\"\"))}if(V&&!iwa&&!iqa&&!iqm&&(!kz||kz==1)&&(!rt||rt!=\"E\")){if(iqyp>1){nrj(\"/js/r/nryp110.js\");var J=\"/yelp.js?q=\"+rq;if(rt){J+=\"&rt=\"+rt}if(h){J+=\"&id=\"+h+\"&rank=\"+f}nrj(J)}else{if(rt!=\"D\"&&!nux()){if(iqyt){nrj(\"/js/r/nryt112.js\")}else{if(C&&(!k1||k1!=\"-1\")){nrj(\"/m.js?q=\"+rq+(rt?\"&t=\"+rt:\"\")+\"&l=\"+rl+\"&i=\"+C+(ra?\"&a=\"+ra:\"\"));YAHOO.util.Dom.setStyle(d.getElementById(\"zero_click_wrapper\"),\"display\",\"block\");A=1}}}}}if(t&&t==1){nrj(\"/l.js?q=\"+rq)}if(V&&YAHOO.util.Dom.getStyle(\"side_wrapper\",\"display\")==\"block\"){if(!iqa&&!iqm&&!iqs&&!iqq&&(rt||qw<4)){nrj(\"//builder.duckduckgo.com/b.js?q=\"+rq+(rt?\"&t=\"+rt:\"\"))}}if(nrb){nrb()}}function nrj(c){var b,a;b=d.createElement(\"script\");b.type=\"text/javascript\";b.async=true;b.src=c;a=document.getElementsByTagName(\"script\")[0];a.parentNode.insertBefore(b,a)}function nrc(c){var b,a;b=d.createElement(\"link\");b.type=\"text/css\";b.rel=\"stylesheet\";b.async=true;b.href=c;b.media=\"screen\";a=document.getElementsByTagName(\"head\")[0];a.parentNode.insertBefore(b,a)}function nue(a){if(a.preventDefault){a.preventDefault();a.stopPropagation()}else{a.cancelBubble=true;a.returnValue=false}}function nut(b){if(b.event){if(YAHOO.util.Dom.getStyle(b,\"display\")==\"block\"){nua(\"nse\",b,200)}else{return false}}b.event=new YAHOO.util.CustomEvent(\"it\");var a=new YAHOO.util.ImageLoader.group(b,\"click\");a.addCustomTrigger(b.event);b.ig=a}function nur(b,g,f,a,e){var c=d.createElement(\"img\");if(g){c.title=g}c.alt=\"\";c.id=\"i\"+(++ric);if(!b){c.src=f;if(a&&e){c.height=a;c.width=e}YAHOO.util.Dom.setStyle(c,\"visibility\",\"visible\")}else{nus(b,ric,f,a,e)}return c}function nus(b,c,g,a,f){if(!b){b=new YAHOO.util.ImageLoader.group(\"content_wrapper\",\"mousemove\",0.1);b.addTrigger(\"header_wrapper\",\"mousemove\",0.1);b.addTrigger(window,\"scroll\",0.1)}var e=b.registerSrcImage(\"i\"+c,g,f,a);e.setVisible=true}function nsd(){cd++;if(cd<50){d.getElementById(\"o\").innerHTML+=\".\"}}function nsr(q,r,o){var g,e,p,k,n,a,f,c,b,m,l,j,h;l=0;p=new RegExp(\"^r[lr](.*)-(\\\\d+)$\");q=q.parentNode;if(q.id&&p.test(q.id)){n=RegExp.$1||0;a=RegExp.$2||0}if(n&&a){if(tn==q.id){return false}tn=q.id;h=g=e=0;k=new RegExp(\"^r1-(\\\\d+)$\");if(rc&&k.test(rc.id)){g=RegExp.$1}if(q.previousSibling&&k.test(q.previousSibling.id)){e=RegExp.$1}h=g&&e&&parseInt(g)==parseInt(e)+1?1:0;if(!fk){h=2}f=d.getElementById(\"rl\"+n+\"-\"+a);c=d.getElementById(\"rr\"+n+\"-\"+a);b=d.getElementById(\"rl\"+n+\"-\"+(parseInt(a)+1));if((kv&&(kv==\"1\"||kv==\"n\"||kv==\"l\"))&&rds!=0&&(rds!=1||r1hc)&&n&&n.indexOf(\"i\")==-1){if(kv==\"n\"){f.innerHTML='<hr class=\"page_count_post\" size=\"1\" style=\"width: 85%;\" noshade><div class=\"clear\"></div>'}else{if(kv==\"l\"){f.innerHTML='<div class=\"page_count\">&nbsp;&nbsp;page '+(++rpc)+'&nbsp;&nbsp;</div><div class=\"clear\"></div>'}else{f.innerHTML='<hr class=\"page_count_pre\" size=\"1\" noshade><div class=\"page_count\">&nbsp;&nbsp;page '+(++rpc)+'&nbsp;&nbsp;</div><hr class=\"page_count_post\" size=\"1\" noshade>&nbsp<div class=\"clear\"></div>'}}f.onmouseover=function(){};f.onmouseout=function(){};f.onclick=function(){};YAHOO.util.Dom.removeClass(f,\"highilghtd\");YAHOO.util.Dom.removeClass(f,\"links_deep\");YAHOO.util.Dom.setStyle(f,\"width\",\"99%\");YAHOO.util.Dom.setStyle(f,\"padding-top\",\"4px\");YAHOO.util.Dom.setStyle(f,\"padding-bottom\",\"1px\")}else{YAHOO.util.Dom.setStyle(f,\"display\",\"none\")}if(c.event){nua(\"nse\",c,200)}c.style.display=\"block\";if(b&&!r){YAHOO.util.Dom.setStyle(b,\"display\",\"block\")}else{if(!b&&(n==\"d\"||(n==\"e0\"&&!fd))){j=d.createElement(\"img\");j.src=\"/l.gif\";j.id=\"loading\";c.parentNode.appendChild(j);tl=j;if(rv==\"d\"){rv=\"\"}m=d.createElement(\"script\");m.src=\"/d.js?q=\"+rq+(rt?\"&t=\"+rt:\"\")+(rv?\"&v=\"+rv:\"\")+\"&l=\"+rl+(rp&&rp!=\"-1\"?\"&p=1\":\"\")+\"&s=\"+rds+(ra?\"&a=\"+ra:\"\");m.type=\"text/javascript\";if(rds){rds+=50}else{rds+=30}d.getElementsByTagName(\"head\")[0].appendChild(m);l=1}}if(!r&&!o&&h==1){if(q.nextSibling.firstChild){nrm(6,q.nextSibling.firstChild.id)}}}}function nui(b){var a=navigator.userAgent.toLowerCase();if(!b&&w.external&&(\"AddSearchProvider\" in w.external)){if(issl||(kh&&kh==\"1\")){w.external.AddSearchProvider(gd+\"opensearch_ssl.xml\")}else{w.external.AddSearchProvider(gd+\"opensearch.xml\")}setTimeout(\"top.location.replace(gd)\",10)}}nir=function(k){var b,h,a,g,f,c,e;if(!k){k=\"\"}f=\"highlight_\"+k;b=d.getElementsByTagName(\"div\");h=new RegExp(\"(?:^|\\\\s+)\"+f+\"(\\\\d?)(?:\\\\s+|$)\");for(g=0;g<b.length;g++){if(h.test(b[g].className)){if(b[g].onmouseover){continue}a=RegExp.$1||0;b[g].onmouseover=function(j){if(fk||fe){return false}if(ky&&ky==-1){return false}if(rc&&rc!=this){nua(\"nro\",rc)}nua(\"nrv\",this);rc=this};b[g].onmouseout=function(j){if(fk||fe){return false}if(ky&&ky==-1){return false}if(j&&j.clientX){nua(\"nro\",this,\"\",\"\",\"\",j.clientX,j.clientY)}else{nua(\"nro\",this)}};if(a==\"3\"){b[g].onclick=function(j){if(!fe){nrg(this,-1,j,0)}}}else{if(a){b[g].onclick=function(j){if(!fe){nrg(this,kf&&(kf==\"fw\"||kf==\"b\")?2:1,j,0)}}}else{b[g].onclick=function(j){if(!fe){nrg(this,0,j,0)}}}}if(!k||k==\"a\"){c=b[g].getElementsByTagName(\"a\");for(e=0;e<c.length;e++){if(!c[e].onclick&&!rs){c[e].onclick=function(j){this.blur();return nrl(j||window.event,this)}}else{if(!c[e].onclick){c[e].onclick=function(){this.blur();fl=1}}}if(kn&&kn==\"1\"&&c[e].href&&c[e].href!=\"javascript:;\"&&c[e].getAttribute(\"href\").indexOf(\"http\")!=-1){c[e].target=\"_blank\"}}}}}};function nim(k,g,b){var a,j,c,f,e,h;a=d.getElementById(\"side\");j=d.getElementById(\"links\");nuv();if(a&&!d.getElementById(\"side_map\")&&YAHOO.util.Dom.getStyle(a,\"display\")==\"block\"&&viewport_width>1000){f=d.createElement(\"div\");f.id=\"side_map\";e=d.createElement(\"img\");e.id=\"side_map_img\";c=ie6?130:viewport_width-YAHOO.util.Dom.getX(j)-j.scrollWidth-100;e.src=\"/imq2/?size=\"+c+\",200&zoom=\"+k+\"&center=\"+g+\",\"+b+\"&imageType=jpg&mcenter=\"+g+\",\"+b;YAHOO.util.Dom.setStyle(a,\"width\",c+\"px\");YAHOO.util.Dom.setStyle(e,\"margin-top\",\"10px\");h=d.createElement(\"a\");h.href=\"http://open.mapquest.com/?q=[\"+g+\",\"+b+\"]\";h.appendChild(e);h.onclick=function(){fl=1};f.appendChild(h);a.insertBefore(f,a.firstChild);nua(\"DDG.resize\",\"\",10)}}function nib(h,l,e,o,c,m){var f,n,k,a,j,p,b,g;f=navigator.userAgent.toLowerCase();j=n=p=a=k=\"\";if(!o){o=\"\"}if(!m){m=0}if(!c&&kr&&kr!=\"1\"){return false}if(/ipad/.test(f)){n=\"iPad\"}else{if(/android/.test(f)){n=\"Android\"}else{if(/chrome/.test(f)){n=\"Chrome\"}else{if(/fennec/.test(f)){n=\"Fennec\"}else{if(/seamonkey/.test(f)){n=\"SeaMonkey\"}else{if(/iceape/.test(f)){n=\"Iceape\"}else{if(/maxthon/.test(f)){n=\"Maxthon\"}else{if(/epiphany/.test(f)){n=\"Epiphany\"}else{if(/firefox/.test(f)){n=\"Firefox\"}else{if(/uzbl/.test(f)){n=\"Uzbl\"}else{if(/msie [789]/.test(f)){n=\"IE\"}else{if(/msie 6/.test(f)){n=\"IE6\"}else{if(/opera/.test(f)){n=\"Opera\"}else{if(/iphone/.test(f)){n=\"iPhone\"}else{if(/arora/.test(f)){n=\"Arora\"}else{if(/safari/.test(f)){n=\"Safari\"}else{n=\"Browser\"}}}}}}}}}}}}}}}}if(is_silk){n=\"\"}j=\"duckduckgo.com\";if(w.k3u){j+=\"/tw/\"+k3u}else{if(k3){j+=\"/tw/\"+k3}}if(n==\"IE\"&&!m){p=\"nui()\"}else{if(document.all||(n==\"IE\"&&m)){p=\"this.style.behavior='url(#default#homepage)';this.setHomePage('http://duckduckgo.com/');\"}else{if(n==\"Firefox\"&&m){k='<br><br>1. Drag <a href=\"http://'+j+'\">this link</a> to the home icon on your browser toolbar.<br><br>2. For more advanced stuff, check out our <a target=\"_blank\" href=\"http://help.duckduckgo.com/customer/portal/articles/216441/\">support center</a>.'}else{if(n==\"Firefox\"){k='<br><br>1. Install <a target=\"_blank\" href=\"https://addons.mozilla.org/en-US/firefox/addon/duckduckgo-ssl/\">this plugin</a>, which adds DuckDuckGo to your search bar.<br><br>2. If that does not work, go to the search box (upper right), click the down arrow, and select Add DuckDuckGo.<br><br>3. For more advanced stuff, check out our <a target=\"_blank\" href=\"http://help.duckduckgo.com/customer/portal/articles/216441/\">support center</a>.'}else{if(n==\"Chrome\"&&m){k=\"<br><br>1. Click the wrench icon on the browser toolbar (top right).<br><br>2. Select Options (Windows), Preferences (Mac) or Settings (Linux).<br><br>3. Under Basics -> Home page, type in \"+j+\"<br><br>4. Select Open the home page (under On startup).<br><br>5. Check Show Home button (under Toolbar).\"}else{if(n==\"Chrome\"){k='<br><br>1. Right-click the address bar (where it says duckduckgo.com).<br><br>2. Select Edit search engines.<br><br>3. Find and select DuckDuckGo in the list. If not there, <a href=\"javascript:;\" onclick=\"nui()\">click here</a>.<br><br>4. Click Make Default.<br><br>5. It should then move to the very top with (Default) next to it. Good luck!'}else{if(n==\"Arora\"&&!m){k=\"<br><br>1. Click the magnifying glass in the search bar (upper right).<br><br>2. Click Add DuckDuckGo (bottom).<br><br>3. Click Yes.<br><br>4. Click the magnifying glass again.<br><br>5. Select DuckDuckGo from the drop down.\"}else{if(n==\"Android\"&&!m){a=\"market://details?id=com.duckduckgo.mobile.android\";p=\";\"}else{if((n==\"iPhone\"||n==\"iPad\")&&!m){a=\"http://itunes.apple.com/us/app/id479988136?mt=8\";p=\";\"}else{if((n==\"SeaMonkey\"||n==\"Iceape\")&&!m){a=\"https://addons.mozilla.org/seamonkey/addon/duck-duck-go-ssl-search-plugin/\";p=\";\"}else{if(n==\"Maxthon\"&&!m){k=\"<br><br>1. Go to Options.<br><br>2. Go to Search Engine.<br><br>3. Click add.<br><br>4. Name: DuckDuckGo<br>4b) URL: http://duckduckgo.com/?q=%s<br>4c) Alias: d<br><br>5. Click OK!\"}else{if(n==\"Safari\"&&m){k=\"<br><br>1. Click the gears icon in the browser toolbar (top right).<br><br>2. Select Preferences.<br><br>3. Click the General tab.<br><br>4. Where it says Home page click Set to Current Page.<br><br>5. If you want, select Home Page next to New windows and New tabs (open with).<br><br>6. Close window.\"}else{if(n==\"Safari\"){if(ih5){k='<br><br>You have a few options.<br><br>1. Install <a href=\"https://duckduckgo.com/safari/latest.safariextz\">this extension</a> (adds a small toolbar).<br><br>2. Install <a target=\"_blank\" href=\"http://www.machangout.com/\">Glims</a>, which can add search engines. The config looks <a target=\"_blank\" href=\"https://duckduckgo.com/glim1.png\">like this</a> and <a target=\"_blank\" href=\"https://duckduckgo.com/glim2.png\">then this</a>.<br><br>3. Install <a target=\"_blank\" href=\"http://glimmerblocker.org/\">GlimmerBlocker</a> and use the <a target=\"_blank\"><a href=\"http://glimmerblocker.org/wiki/Filters\">DuckDuckGo filter</a>.<br><br>4. If you know what you\\'re doing, <a href=\"http://hints.macworld.com/article.php?story=20030514035516436\" target=\"_blank\">hack the binary</a>!'}else{k='<br><br>You have a few options.<br><br>1. Install <a target=\"_blank\" href=\"http://www.machangout.com/\">Glims</a>, which can add search engines. The config looks <a target=\"_blank\" href=\"/glim1.png\">like this</a> and <a target=\"_blank\" href=\"/glim2.png\">then this</a>.<br><br>2. Install <a target=\"_blank\" href=\"http://glimmerblocker.org/\">GlimmerBlocker</a> and use the <a target=\"_blank\"><a href=\"http://glimmerblocker.org/wiki/Filters\">DuckDuckGo filter</a>.<br><br>3. If you know what you\\'re doing, <a href=\"http://hints.macworld.com/article.php?story=20030514035516436\" target=\"_blank\">hack the binary</a>!'}}else{if(n==\"Opera\"&&m){k=\"<br><br>1. Open the Opera menu (top).<br><br>2. Go to settings/preferences.<br><br>3. Under homepage, click Use Current.<br><br>4. Click OK.\"}else{if(n==\"Opera\"){k=\"<br><br>1. Check if DuckDuckGo exists in the search bar (upper right).<br><br>2. If yes, start using it!<br><br>3. If no, right-click the search box (in the page).<br><br>4. Select Create Search.<br><br>5. Enter d for keyword.<br><br>6. Click OK.\"}else{n=\"\"}}}}}}}}}}}}}}}if(n){if(m){n=\"Homepage\";b=\"add_to_browser_homepage\"}else{n=n;b=\"add_to_browser\"}g=\"\";if(!p){g=(\"<b>\"+n+'</b> [<a href=\"javascript:;\" onclick=\"YAHOO.util.Dom.setStyle(document.getElementById(\\''+b+\"'),'display','none');\\\">X</a>]\"+k)}document.write(e+'<a href=\"');if(a){document.write(a)}else{document.write(\"javascript:;\")}document.write('\" class=\"'+l+'\" onclick=\"');if(p){document.write(p)}else{document.write(\"DDG.toggle('\"+b+\"')\")}if(w.k3u){document.write(\";YAHOO.util.Cookie.set('3', k3u, { path: '/', expires: new Date('January 12, 2025') });\")}document.write('\">'+n+\"</a>\"+o);if(d.getElementById(b)){d.getElementById(b).innerHTML=g}else{document.write('<div id=\"'+b+'\" class=\"cnib\">'+g+\"</div>\")}}}function nsl(){var a=d.getElementById(\"loading\");if(a&&a.id){a.parentNode.removeChild(a)}else{if(tl&&tl.id){if(tl.parentNode){tl.parentNode.removeChild(tl)}tl=\"\"}}}function nse(a){if(!a||!a.event){return}a.event.fire();a.event.is_fired=1}function not(){document.y.action=\"http://www.gabrielweinberg.com/\";setTimeout(\"document.y.submit()\")}function nik(o){var y,x,v,u,t,s,r,q,p,l,k,j,h,g,f,e,c,b,a,n,m;if(!o){y=new YAHOO.util.KeyListener(document,{keys:[40,74]},{fn:nkda});y.enable();x=new YAHOO.util.KeyListener(document,{keys:[38,75]},{fn:nkua});x.enable();if(!im){k3=new YAHOO.util.KeyListener(document,{shift:true,keys:[191]},{fn:nks});k3.enable();u=new YAHOO.util.KeyListener(document,{keys:[191]},{fn:nks});u.enable()}a=new YAHOO.util.KeyListener(document,{keys:[79]},{fn:nko});a.enable();s=new YAHOO.util.KeyListener(document,{keys:[76]},{fn:nko});s.enable();r=new YAHOO.util.KeyListener(document,{keys:[111,72]},{fn:nks});r.enable();q=new YAHOO.util.KeyListener(document,{keys:[222]},{fn:nkn});q.enable();p=new YAHOO.util.KeyListener(document,{keys:[73]},{fn:nki});p.enable();l=new YAHOO.util.KeyListener(document,{keys:[82]},{fn:nkr});l.enable();k=new YAHOO.util.KeyListener(document,{keys:[86]},{fn:nkn});k.enable();j=new YAHOO.util.KeyListener(document,{keys:[32]},{fn:nksb});j.enable();h=new YAHOO.util.KeyListener(document,{keys:[77]},{fn:nkm});h.enable();g=new YAHOO.util.KeyListener(document,{keys:[70]},{fn:not});g.enable();b=new YAHOO.util.KeyListener(document,{keys:[83]},{fn:nksp});b.enable()}t=new YAHOO.util.KeyListener(document,{keys:[13]},{fn:nke});t.enable();f=new YAHOO.util.KeyListener(document,{keys:[27]},{fn:nkes});f.enable();n=new YAHOO.util.KeyListener(document,{keys:[84]},{fn:nkt});n.enable();if(!io){e=new YAHOO.util.KeyListener(document,{keys:[49]},{fn:nkex});e.enable()}c=new YAHOO.util.KeyListener(document,{shift:true,keys:[49]},{fn:nkex});c.enable();m=new YAHOO.util.KeyListener(document,{keys:[68]},{fn:nkd});m.enable()}function ncku(a){if(!ie&&!a.metaKey){fa=0}}function nckd(a){if(!ie&&a.metaKey){fa=1}if(!fq&&(!kk||kk==\"1\")&&a.keyCode&&(a.keyCode==40||a.keyCode==74||a.keyCode==38||a.keyCode==75)){if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){}else{nue(a)}}}function nckp(a){if(!fq&&(!kk||kk==\"1\")&&a.keyCode&&(a.keyCode==40||a.keyCode==74||a.keyCode==38||a.keyCode==75)){if(a&&(nkdc(a)||nkdm(a)||nkds(a)||nkdt(a)||fa)){}else{nue(a)}}}function ncf(f){var c,g,a,b;fmx=f.clientX;fmy=f.clientY;nuv();if(fmx>(viewport_width-100)&&fmy>(parseInt(viewport_height)-17)){if(!il&&nrb){nrb()}}c=\"\";if(ie){c=f.srcElement}else{c=f.target}if(c&&c.id&&c.id.indexOf(\"header_button_menu\")==-1){DDG.toggle(\"header_button_menu\",-1)}a=c;while(a!=window){if(a.id){b=a.id;break}else{if(a.parentNode){a=a.parentNode}else{break}}}if(!b){b=\"x\"}nutp(\"c-\"+b);if(((f.button&&(((!ie||ie9)&&f.button==1)||(ie&&f.button==4))))&&rc&&rc.id){fm=1;while(c!=window){if(c.nodeName&&c.nodeName==\"A\"){if(c.href==\"javascript:;\"){c.onclick();return false}else{if(kg!=\"p\"&&(!kd||kd==1)&&c.href.indexOf(\"/k/?\")==-1&&c.href.indexOf(\"/l/?\")==-1){c.href=\"/k/?u=\"+encodeURIComponent(c.href)}}fl=1;break}g=c.id;if(g){if(g==\"links\"){break}if(g==rc.id){nrg(rc,0,f,1)}}if(c.parentNode){c=c.parentNode}else{break}}}else{fm=0}}function ncg(a){fmx=0;fmy=0;nuv();if(a.clientX>(viewport_width-25)){if(!il&&nrb){nrb()}}}function nkf(c){var b,a;if(ie){b=c.clientX+d.body.scrollLeft;a=c.clientY+d.body.scrollTop}else{b=c.pageX;a=c.pageY}if(fk&&sx&&sy&&(sx!=b||sy!=a)){fk=0}sx=b;sy=a}var mousewheelevt=(/Firefox/i.test(navigator.userAgent))?\"DOMMouseScroll\":\"mousewheel\";if(document.attachEvent){document.attachEvent(\"on\"+mousewheelevt,nkw)}else{if(document.addEventListener){document.addEventListener(mousewheelevt,nkw,false)}}function nkw(a){if(io&&!il&&nrb){nrb()}fk=0}function nis(){var c,a;setTimeout(\"idom=1;\",250);if(fq){return false}var b=d.getElementById(\"state_hidden\").value;if(b){nhs(b)}else{rc=d.getElementById(\"r1-0\")}fs=0;if(!il&&nrb){nrb()}}function nrqw(n){var k,o,e,f,l,a,h,g,j,b,c,m;o=new RegExp(\"([^/.]+.com)\");b=n.request_id;if(!b){return}a=d.getElementById(b);if(!a){return}if(a){a=YAHOO.util.Dom.getElementsByClassName(\"links_main\",\"div\",a)}if(!a){return}if(a.length>0){a=a[0]}if(!a){return}h=d.createElement(\"div\");j=0;c=new Array();m=new Array();m[\"twitter.com\"]=1;m[\"myspace.com\"]=1;m[\"bebo.com\"]=1;m[\"friendfeed.com\"]=1;m[\"blogs.com\"]=1;m[\"multiply.com\"]=1;m[\"technorati.com\"]=1;for(k in n.services){if(!n.services[k]){continue}k=n.services[k];if(o.test(k.url)){e=RegExp.$1;if(!m[e]&&!c[e]){c[e]=1;var f=d.createElement(\"img\");if(f){f.src=ga+e+\".ico\";f.title=(k.username?k.username+\" | \":\"\")+(k.type&&k.type!=\"other\"?k.type:\"\");if(!f.title){f.title=e}l=d.createElement(\"a\");l.href=k.url;l.onclick=function(){fl=1};if(kn&&kn==\"1\"){l.target=\"_blank\"}YAHOO.util.Dom.addClass(f,\"inline\");YAHOO.util.Dom.setStyle(f,\"float\",\"left\");YAHOO.util.Dom.setStyle(f,\"padding-right\",\"5px\");YAHOO.util.Dom.setStyle(f,\"padding-top\",\"2px\");YAHOO.util.Dom.setStyle(f,\"width\",\"16px\");YAHOO.util.Dom.setStyle(f,\"height\",\"16px\");l.appendChild(f);h.appendChild(l);if(e!=\"klout.com\"){j++}}}}}if(j&&a){g=d.createElement(\"div\");YAHOO.util.Dom.addClass(g,\"clear\");h.appendChild(g);g=d.createElement(\"div\");YAHOO.util.Dom.setStyle(g,\"float\",\"left\");g.innerHTML=\"more:&nbsp;\";h.insertBefore(g,h.firstChild);YAHOO.util.Dom.setStyle(h,\"padding-top\",\"1px\");YAHOO.util.Dom.setStyle(h,\"padding-bottom\",\"1px\");g=YAHOO.util.Dom.getElementsByClassName(\"url\",\"a\",a)[0].parentNode;a.insertBefore(h,g)}}function nuov(q,p,b,l,k,n,r,e,a,o,m){var h,j,g,f,c;j=d.createElement(\"div\");YAHOO.util.Dom.addClass(j,\"inline\");if(l){YAHOO.util.Dom.setStyle(j,\"clear\",\"right\");YAHOO.util.Dom.setStyle(j,\"float\",\"right\");YAHOO.util.Dom.setStyle(j,\"margin-left\",\"10px\")}else{YAHOO.util.Dom.setStyle(j,\"clear\",\"left\");YAHOO.util.Dom.setStyle(j,\"float\",\"left\");YAHOO.util.Dom.setStyle(j,\"margin-left\",\"10px\");YAHOO.util.Dom.setStyle(j,\"margin-right\",\"10px\")}if(k){YAHOO.util.Dom.setStyle(j,\"border\",\"1px solid #FFF\")}if(nur){g=nur(\"\",\"\",\"/iu2/?u=\"+decodeURIComponent(q))}if(g){YAHOO.util.Dom.addClass(g,\"inline\");YAHOO.util.Dom.setStyle(g,\"max-height\",n+\"px\");YAHOO.util.Dom.setStyle(g,\"max-width\",r+\"px\");if(ie6){if(p>65){YAHOO.util.Dom.setStyle(g,\"height\",n+\"px\")}else{if(b>100){YAHOO.util.Dom.setStyle(g,\"width\",r+\"px\")}}}j.appendChild(g);f=nur(\"\",\"\",\"/assets/icon_play.v101.png\");if(f){YAHOO.util.Dom.setStyle(f,\"z-index\",\"100\");YAHOO.util.Dom.setStyle(f,\"margin\",\"auto\");YAHOO.util.Dom.setStyle(f,\"margin-top\",\"-\"+parseInt((n/2)+22)+\"px\");YAHOO.util.Dom.setStyle(f,\"margin-bottom\",parseInt((n/2)-21)+\"px\");j.appendChild(f)}c=nutr(o);j.embedly=c;j.embedlyw=a;j.embedlyh=e;j.onclick=function(){fl=1;var t=this.parentNode;var s=this;t.removeChild(this);s.innerHTML=tr[s.embedly];YAHOO.util.Dom.setStyle(s,\"float\",\"none\");YAHOO.util.Dom.removeClass(s,\"inline\");YAHOO.util.Dom.setStyle(s,\"max-width\",\"600px\");j=d.createElement(\"div\");YAHOO.util.Dom.setStyle(j,\"padding-top\",\"5px\");s.onmouseout=function(){};s.onmouseover=function(){};YAHOO.util.Dom.setStyle(s,\"border\",\"none\");if(t.id&&t.id==\"side_map\"){t=d.getElementById(\"content\");t.insertBefore(s,t.firstChild);t.insertBefore(j,t.firstChild)}else{YAHOO.util.Dom.setStyle(s,\"margin-left\",m+\"px\");t.appendChild(j);t.appendChild(s)}};if(k){j.onmouseover=function(){YAHOO.util.Dom.setStyle(this,\"border\",\"1px solid #ff6666\")};j.onmouseout=function(){YAHOO.util.Dom.setStyle(this,\"border\",\"1px solid #FFF\")}}}return j}function nreb(f){var r,o,h,e,a,n,j,c,t,q,m,b,s,p,g,k;g=new RegExp(\"^r1-(\\\\d+)$\");for(h=0;h<f.length;h++){a=d.getElementById(reb[rebc++]);k=0;if(a.id&&g.test(a.id)){k=RegExp.$1}r=f[h][\"provider_name\"];if(!r){continue}t=new RegExp(f[h][\"provider_name\"].replace(/^the/i,\"\"),\"i\");q=t.test(decodeURIComponent(rq))?true:false;if(a&&(r==\"YouTube\"||(f[h][\"type\"]==\"video\"&&f[h][\"html\"]))&&(!kb||(q&&kb==\"d\")||(kb&&(kb==\"e\"||kb==\"v\")))){if(!b){b=1000}if(f[h][\"thumbnail_url\"]){if(((!ip&&!ia)||r==\"YouTube\")&&f[h][\"type\"]==\"video\"&&f[h][\"html\"]){n=nuov(f[h][\"thumbnail_url\"],f[h][\"thumbnail_height\"],f[h][\"thumbnail_width\"],!b||b!=-1?1:0,1,65,100,f[h][\"height\"],f[h][\"width\"],f[h][\"html\"],29);if(b==-1){b=n}else{a.insertBefore(n,a.firstChild)}}}}else{if(a&&f[h][\"thumbnail_url\"]&&(!kb||kb==\"d\"||kb==\"e\"||kb==\"t\")){n=d.createElement(\"div\");YAHOO.util.Dom.addClass(n,\"inline\");YAHOO.util.Dom.setStyle(n,\"clear\",\"right\");if(s){YAHOO.util.Dom.setStyle(n,\"float\",\"right\");YAHOO.util.Dom.setStyle(n,\"margin-left\",\"10px\")}if(nur){j=nur(\"\",\"\",\"/iu2/?u=\"+decodeURIComponent(f[h][\"thumbnail_url\"]))}if(j){YAHOO.util.Dom.addClass(j,\"inline\");YAHOO.util.Dom.setStyle(j,\"max-height\",\"65px\");YAHOO.util.Dom.setStyle(j,\"max-width\",\"100px\");if(ie6){if(f[h][\"thumbnail_height\"]>65){YAHOO.util.Dom.setStyle(j,\"height\",\"65px\")}else{if(f[h][\"thumbnail_width\"]>100){YAHOO.util.Dom.setStyle(j,\"width\",\"100px\")}}}n.appendChild(j);if(!s){s=n;h--;rebc--}else{a.insertBefore(n,a.firstChild)}}}}}}function nsk(){if(kk&&kk==\"-1\"){return false}YAHOO.util.Dom.setStyle(\"keyboard_shortcuts\",\"display\",\"block\");YAHOO.util.Dom.setStyle(\"keyboard_shortcuts\",\"padding-top\",\"10px\");YAHOO.util.Dom.setStyle(\"keyboard_shortcuts\",\"padding-bottom\",\"15px\")}function nsh(c){var b,a;if(!c){return}b=d.getElementById(c);a=d.getElementById(c+\"h\");if(!a){a=d.getElementById(c+\"_hidden\")}if(b&&a){YAHOO.util.Dom.setStyle(b,\"display\",\"none\");YAHOO.util.Dom.setStyle(a,\"display\",\"inline\")}}function nrrel(m){var k,b,l,a,g,f,h,j,e,c;if(d.getElementById(\"nrreld\")){return}a=d.getElementById(\"links\");j=m.r&&m.r.length?1:0;e=r1c||d.getElementById(\"did_you_mean\")||d.getElementById(\"zero_click_answer\")||rad||YAHOO.util.Dom.getStyle(\"zero_click_wrapper\",\"visibility\")==\"visible\"?1:0;g=d.createElement(\"div\");g.id=\"nrreld\";YAHOO.util.Dom.setStyle(g,\"font-size\",\"107.1%\");if(d.getElementById(\"zero_click_answer\")&&!r1c){YAHOO.util.Dom.setStyle(g,\"font-size\",\"95.2%\")}rs?YAHOO.util.Dom.setStyle(g,\"padding-left\",\"64px\"):YAHOO.util.Dom.setStyle(g,\"padding-left\",\"33px\");if(e){YAHOO.util.Dom.setStyle(g,\"padding-top\",\"20px\")}if(rq.indexOf(\"sort%3Adate\")!=-1||rq.indexOf(\"s%3Ad\")!=-1){c=1}else{c=\"\"}f=d.createElement(\"div\");f.innerHTML=\"No \"+(e?\"more \":\"\")+(c?\"date \":\"\")+\"results.\"+(j?\" Try:\":\"\");g.appendChild(f);if(j){for(k in m.r){b=m.u[k];k=m.r[k];f=d.createElement(\"div\");h=d.createElement(\"a\");h.href=\"/?q=\"+encodeURIComponent(b);if(kurl){h.href+=kurl}h.innerHTML=k;f.appendChild(h);YAHOO.util.Dom.setStyle(f,\"padding-top\",\"2px\");g.appendChild(f)}}f=d.createElement(\"div\");f.innerHTML=(j?\"Or try \":\"Try \")+'<a href=\"/?q=!g '+rq+'\">Google</a> / <a href=\"/?q=!b '+rq+'\">Bing</a> / <a href=\"/bang.html\" onclick=this.href=\\'#\\';nbc();return false;>More...</a>';j?YAHOO.util.Dom.setStyle(f,\"padding-top\",\"15px\"):YAHOO.util.Dom.setStyle(f,\"padding-top\",\"7px\");g.appendChild(f);a.appendChild(g)}function nrwot(b){var e,j,c,f,a,g,h;for(e in b){if(!e){continue}j=b[e][\"d\"];if(!j){continue}f=b[e][\"r\"];if(!f){continue}g=b[e][\"t\"];if(!g){continue}j=d.getElementById(j);if(!j){continue}c=YAHOO.util.Dom.getElementsByClassName(\"icon_fav2\",\"div\",j);if(!c.length){c=YAHOO.util.Dom.getElementsByClassName(\"icon_fav\",\"div\",j)}if(!c.length){continue}c=c[0];if(!c){continue}h=\"\";if(f<=2){h=\"Warning! Site could be harmful.\"}else{if(f>=4){h=\"Site has good reputation.\"}}if(nur){a=nur(\"\",h,\"/wot/\"+f+\".png\",16,16)}if(a){link=d.createElement(\"a\");link.href=\"http://www.mywot.com/en/scorecard/\"+g;if(h){link.title=h}link.appendChild(a);link.onclick=function(){fl=1};if(kf==\"w\"){c.innerHTML=\"\"}c.appendChild(link);YAHOO.util.Dom.setStyle(c,\"display\",\"block\")}}}function nrb(b,c){var e,n,g,j,l,k,m,f,a,h;if(fs){return false}fs=1;l=YAHOO.util.Dom.getDocumentHeight();k=YAHOO.util.Dom.getDocumentScrollTop();nuv();g=((k+viewport_height)>=(l-500))?1:0;e=d.getElementById(\"r1-\"+(parseInt(r1c)-2));j=0;if(e){n=YAHOO.util.Dom.getY(e);if(n<(k+viewport_height+20)){j=1}}if(!c&&fmx&&fmy&&fmx>(viewport_width-100)&&fmy<(parseInt(viewport_height)-17)){fs=0;return}if(g||j||c){for(f=parseInt(r1c)-1;f>=0;f--){a=d.getElementById(\"r1-\"+f);h=a.parentNode;if(YAHOO.util.Dom.getStyle(h,\"display\")==\"block\"){nrm(7,\"r1-\"+f);break}}}fs=0}function nic(){var k,h,m,j,e,a,g,l,c,b,f;f=DDG.page_type;nuv();DDG.fix_browser_bugs();k=kh||YAHOO.util.Cookie.get(\"h\");if(k){kurl+=\"&kh=\"+encodeURIComponent(k)}if(k&&k==\"1\"&&!issl){d.x.action=\"https://\"+w.location.host}k=ki||YAHOO.util.Cookie.get(\"i\");if(k){kurl+=\"&ki=\"+encodeURIComponent(k)}if(k&&k==\"-1\"&&typeof(rt)!=\"undefined\"&&rt==\"D\"){YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"visibility\",\"hidden\");YAHOO.util.Dom.setStyle(\"zero_click_header\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"zero_click_header\",\"visibility\",\"hidden\");YAHOO.util.Dom.setStyle(\"zero_click_topics\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"zero_click_topics\",\"visibility\",\"hidden\")}k=ks||YAHOO.util.Cookie.get(\"s\");if(k){kurl+=\"&ks=\"+encodeURIComponent(k)}b=\"100\";if(k==\"s\"){b=\"85\"}else{if(k==\"m\"){b=\"91\"}else{if(k==\"l\"){b=\"108\"}else{if(k==\"t\"){b=\"115\"}}}}if(k==\"s\"||k==\"m\"||k==\"l\"||k==\"t\"){YAHOO.util.Dom.setStyle(\"content\",\"font-size\",b+\"%\");YAHOO.util.Dom.setStyle(\"search_form_homepage\",\"font-size\",b+\"%\");YAHOO.util.Dom.setStyle(\"header_button\",\"font-size\",b+\"%\");YAHOO.util.Dom.setStyle(\"bang_wrapper\",\"font-size\",b+\"%\");YAHOO.util.Dom.setStyle(\"spacing_hidden_wrapper\",\"font-size\",b+\"%\");YAHOO.util.Dom.setStyle(\"side\",\"font-size\",b+\"%\")}if(k==\"s\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".results_links, .results_links_more, .results_category_more, .results_links_deep\",{paddingTop:\"6px\",paddingBottom:\"6px\"}).set(\".results_links, .results_links_more, .results_category_more\",{paddingTop:\"6px\",paddingBottom:\"6px\"}).set(\".results_zero_click, .results_zero_click_more\",{paddingTop:\"2px\",paddingBottom:\"2px\"}).enable()}else{if(k==\"m\"||k==\"l\"||k==\"t\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".results_links, .results_links_more, .results_category_more, .results_links_deep\",{paddingTop:\"9px\",paddingBottom:\"9px\"}).set(\".results_links, .results_links_more, .results_category_more\",{paddingTop:\"9px\",paddingBottom:\"9px\"}).set(\".results_zero_click, .results_zero_click_more\",{paddingTop:\"2px\",paddingBottom:\"2px\"}).enable()}}k=ka||YAHOO.util.Cookie.get(\"a\");if(k){kurl+=\"&ka=\"+encodeURIComponent(k)}if(k){if(k==\"a\"){h=\"Arial\"}else{if(k==\"c\"){h=\"Century Gothic\"}else{if(k==\"g\"){h=\"Georgia\"}else{if(k==\"t\"){h=\"Times\"}else{if(k==\"h\"){h=\"Helvetica\"}else{if(k==\"v\"){h=\"Verdana\"}else{if(k==\"b\"){h=\"Trebuchet MS\"}else{if(k==\"s\"){h=\"Serif\"}else{if(k==\"n\"){h=\"Sans-Serif\"}else{if(k==\"o\"){h=\"Tahoma\"}else{if(k==\"e\"){h=\"Segoe UI\"}else{h=k}}}}}}}}}}}YAHOO.util.StyleSheet(DDG.stylesheet).set(\"a\",{fontFamily:h}).enable()}else{YAHOO.util.Dom.setStyle(\"spacing_hidden_wrapper\",\"font-family\",'\"Segoe UI\",\"Arial\",sans-serif')}k=kt||YAHOO.util.Cookie.get(\"t\");if(k){kurl+=\"&kt=\"+encodeURIComponent(k)}if(k){if(k==\"a\"){h=\"Arial\"}else{if(k==\"c\"){h=\"Century Gothic\"}else{if(k==\"g\"){h=\"Georgia\"}else{if(k==\"t\"){h=\"Trebuchet MS\"}else{if(k==\"i\"){h=\"Times\"}else{if(k==\"h\"){h=\"Helvetica\"}else{if(k==\"v\"){h=\"Verdana\"}else{if(k==\"s\"){h=\"Serif\"}else{if(k==\"n\"){h=\"Sans-Serif\"}else{if(k==\"o\"){h=\"Tahoma\"}else{if(k==\"e\"){h=\"Segoe UI\"}else{h=k}}}}}}}}}}}YAHOO.util.Dom.setStyle(\"search_form_input\",\"font-family\",h);YAHOO.util.Dom.setStyle(\"bang\",\"font-family\",h);YAHOO.util.StyleSheet(DDG.stylesheet).set(\"body\",{fontFamily:h}).set(\".snippet, .snippet a, .url, .url a\",\"font-family: \"+h+\" !important;\").enable()}k=ky||YAHOO.util.Cookie.get(\"y\");if(k){kurl+=\"&ky=\"+encodeURIComponent(k)}if(k==\"-1\"||is_mobile){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".highlight\",{background:\"#FCFCFC\",cursor:\"default\"}).enable()}else{if(k==\"b\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".highlight\",{background:\"#eaf5fc\",cursor:\"default\"}).set(\".highlight\",\"border: 1px solid #b0d9f2 !important;\").enable()}else{if(k==\"y\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".highlight\",{background:\"#fcf5aa\",cursor:\"default\"}).set(\".highlight\",\"border: 1px solid #d2df70 !important;\").enable()}else{if(k==\"t\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".highlight\",{background:\"#fcf5ea\",cursor:\"default\"}).set(\".highlight\",\"border: 1px solid #f2d9b0 !important;\").enable()}else{if(k==\"p\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".highlight\",{background:\"#fceaf5\",cursor:\"default\"}).set(\".highlight\",\"border: 1px solid #f2b0d9 !important;\").enable()}else{if(k==\"g\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".highlight\",{background:\"#e4f6b9\",cursor:\"default\"}).set(\".highlight\",\"border: 1px solid #b8e478 !important;\").enable()}else{if(k){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".highlight\",{background:k,cursor:\"default\"}).set(\".highlight\",\"border: 1px solid \"+k+\" !important;\").enable()}}}}}}}k=kk||YAHOO.util.Cookie.get(\"k\");if(k){kurl+=\"&kk=\"+encodeURIComponent(k)}if(k!=\"-1\"&&!is_mobile){if(f){YAHOO.util.Event.onDOMReady(setTimeout(\"nik(1)\",250))}else{YAHOO.util.Event.onDOMReady(setTimeout(\"nik()\",250))}}if(k==\"s\"&&!is_mobile){nsk()}if(k==\"s\"&&!ip){nsh(\"keyboard_shortcuts_more\")}k=kf||YAHOO.util.Cookie.get(\"f\");if(k){kurl+=\"&kf=\"+encodeURIComponent(k)}if(!k||k==\"1\"||k==\"fw\"||k==\"b\"||rs){YAHOO.util.StyleSheet(DDG.stylesheet).set(\".icon_fav\",{display:\"block\"}).set(\".icon_fav2\",{display:\"block\"}).set(\".icon_category\",{display:\"block\"}).set(\".icon_disambig\",{display:\"block\"}).enable()}else{if(k==\"1\"){nur=null}}k=kc||YAHOO.util.Cookie.get(\"c\");if(k){kurl+=\"&kc=\"+encodeURIComponent(k)}if(k!=\"-1\"&&(!io||io11)){YAHOO.util.Event.addListener(window,\"scroll\",nrb)}else{if(k&&k==\"-1\"){nrb=null}}k=kw||YAHOO.util.Cookie.get(\"w\");if(k){kurl+=\"&kw=\"+encodeURIComponent(k)}if(k==\"w\"){YAHOO.util.Dom.setStyle(\"header_content_wrapper\",\"max-width\",\"1200px\");YAHOO.util.Dom.setStyle(\"header_content\",\"max-width\",\"1073px\");YAHOO.util.Dom.setStyle(\"content_wrapper\",\"max-width\",\"1200px\");YAHOO.util.Dom.setStyle(\"content\",\"max-width\",\"1082px\");YAHOO.util.Dom.setStyle(\"links\",\"max-width\",\"1000px\");YAHOO.util.Dom.setStyle(\"links_wrapper\",\"max-width\",\"1000px\");YAHOO.util.Dom.setStyle(\"zero_click\",\"max-width\",\"990px\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"max-width\",\"990px\");YAHOO.util.Dom.setStyle(\"side\",\"max-width\",\"900px\");YAHOO.util.Dom.setStyle(\"side_wrapper\",\"max-width\",\"900px\");YAHOO.util.Dom.setStyle(\"search_form_input\",\"width\",\"581px\");YAHOO.util.Dom.setStyle(\"search_form\",\"width\",\"688px\")}else{if(k==\"s\"){YAHOO.util.Dom.setStyle(\"header_content_wrapper\",\"max-width\",\"1500px\");YAHOO.util.Dom.setStyle(\"header_content\",\"max-width\",\"1373px\");YAHOO.util.Dom.setStyle(\"content_wrapper\",\"max-width\",\"1460px\");YAHOO.util.Dom.setStyle(\"content\",\"max-width\",\"1382px\");YAHOO.util.Dom.setStyle(\"links\",\"max-width\",\"1245px\");YAHOO.util.Dom.setStyle(\"links_wrapper\",\"max-width\",\"1245px\");YAHOO.util.Dom.setStyle(\"zero_click\",\"max-width\",\"1240px\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"max-width\",\"1240px\");YAHOO.util.Dom.setStyle(\"side\",\"max-width\",\"1100px\");YAHOO.util.Dom.setStyle(\"side_wrapper\",\"max-width\",\"1100px\");YAHOO.util.Dom.setStyle(\"search_form_input\",\"width\",\"781px\");YAHOO.util.Dom.setStyle(\"search_form\",\"width\",\"888px\")}}if(k==\"w\"||k==\"s\"){YAHOO.util.Dom.setStyle(\"content\",\"padding-left\",\"62px\");YAHOO.util.Dom.setStyle(\"header_content\",\"padding-left\",\"87px\");YAHOO.util.Dom.setStyle(\"links\",\"width\",\"80%\");YAHOO.util.Dom.setStyle(\"zero_click\",\"width\",\"80%\")}k=ku||YAHOO.util.Cookie.get(\"u\");if(k){kurl+=\"&ku=\"+encodeURIComponent(k)}if(k==\"1\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\"a.large\",{textDecoration:\"underline\"}).enable()}k=kq||YAHOO.util.Cookie.get(\"q\");if(k){kurl+=\"&kq=\"+encodeURIComponent(k)}k=kv||YAHOO.util.Cookie.get(\"v\");if(k){kurl+=\"&kv=\"+encodeURIComponent(k)}k=ke||YAHOO.util.Cookie.get(\"e\");if(k){kurl+=\"&ke=\"+encodeURIComponent(k)}k=kj||YAHOO.util.Cookie.get(\"j\");if(ie6){k=\"w\"}if(k){kurl+=\"&kj=\"+encodeURIComponent(k);if(k!=\"r3\"){YAHOO.util.Dom.setStyle(\"header\",\"height\",\"53px\");YAHOO.util.Dom.setStyle(\"header\",\"border-bottom\",\"none\");YAHOO.util.Dom.setStyle(\"search_form\",\"border-bottom\",\"0px\");YAHOO.util.Dom.setStyle(\"search_form_input\",\"border\",\"#888 solid 1px\");YAHOO.util.Dom.setStyle(\"search_form_input\",\"border-right\",\"0px\");YAHOO.util.Dom.setStyle(\"search_form_input_clear\",\"border\",\"#888 solid 1px\");YAHOO.util.Dom.setStyle(\"search_form_input_clear\",\"border-right\",\"0px\");YAHOO.util.Dom.setStyle(\"search_form_input_clear\",\"border-left\",\"0px\");YAHOO.util.Dom.setStyle(\"header_button\",\"border\",\"0px\");YAHOO.util.StyleSheet(DDG.stylesheet).set(\"#header_button_menu_wrapper a.header_button_menu_item\",\"text-shadow: none !important\").enable()}if(k==\"r\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#d31920 url(/headerbg.v101.red.png) 0 0 repeat-x\");YAHOO.util.Dom.setStyle(\"header_button\",\"background\",\"#d31920\")}else{if(k==\"r2\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#bd232a url(/headerbg.v101.dred.png) 0 0 repeat-x\");YAHOO.util.Dom.setStyle(\"header_button\",\"background\",\"#bd232a\")}else{if(k==\"b\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#F5FAFD url(/headerbg.v101.lblue.png) 0 0 repeat-x\");YAHOO.util.Dom.setStyle(\"header_button\",\"background\",\"#aed7f3\")}else{if(k==\"d\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#F5FAFD url(/headerbg.v101.lgreen.png) 0 0 repeat-x\");YAHOO.util.Dom.setStyle(\"header_button\",\"background\",\"#bae57a\")}else{if(k==\"b2\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#2e708e url(/headerbg.v101.dblue.png) 0 0 repeat-x\");YAHOO.util.Dom.setStyle(\"header_button\",\"background\",\"#2e708e\")}else{if(k==\"p\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#8a4391 url(/headerbg.v101.purple.png) 0 0 repeat-x\");YAHOO.util.Dom.setStyle(\"header_button\",\"background\",\"#8a4391\")}else{if(k==\"g\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#09A940 url(/headerbg.v101.green.png) 0 0 repeat-x\");YAHOO.util.Dom.setStyle(\"header_button\",\"background\",\"#09A940\")}else{if(k==\"g2\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#47a055 url(/headerbg.v101.dgreen.png) 0 0 repeat-x\");YAHOO.util.Dom.setStyle(\"header_button\",\"background\",\"#47a055\")}else{if(k==\"o\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#da7e46 url(/headerbg.v101.orange.png) 0 0 repeat-x\");YAHOO.util.Dom.setStyle(\"header_button\",\"background\",\"#da7e46\")}else{if(k==\"w\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",\"#fff\");YAHOO.util.Dom.setStyle(\"header_logo\",\"background\",\"none\");YAHOO.util.Dom.setStyle(\"header\",\"border-bottom\",\"none\");YAHOO.util.Dom.setStyle(\"header\",\"box-shadow\",\"none\")}else{if(k!=\"r3\"){YAHOO.util.Dom.setStyle(\"header\",\"background\",k);YAHOO.util.Dom.setStyle(\"header_button\",\"background\",k)}}}}}}}}}}}}k=kr||YAHOO.util.Cookie.get(\"r\");if(k){kurl+=\"&kr=\"+encodeURIComponent(k)}if(ie6){k=\"-1\"}if(k&&(k==\"-1\"||k==\"c\")){YAHOO.util.Dom.setStyle(\"header_button\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"header_button_wrapper\",\"display\",\"none\");if(k==\"c\"){YAHOO.util.Dom.setStyle(\"header_content\",\"width\",\"600px\");YAHOO.util.Dom.setStyle(\"content\",\"padding-left\",\"0\");YAHOO.util.Dom.setStyle(\"header_content\",\"padding-left\",\"60px\");YAHOO.util.Dom.setStyle(\"content\",\"margin\",\"auto\");YAHOO.util.Dom.setStyle(\"links_wrapper\",\"margin\",\"auto\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"margin\",\"auto\")}}k=km||YAHOO.util.Cookie.get(\"m\");if(k){kurl+=\"&km=\"+encodeURIComponent(k)}if(k==\"l\"){YAHOO.util.Dom.setStyle(\"content\",\"padding-left\",\"20px\");YAHOO.util.Dom.setStyle(\"content_wrapper\",\"margin\",\"0\");YAHOO.util.Dom.setStyle(\"header_wrapper\",\"margin\",\"0\");YAHOO.util.Dom.setStyle(\"header_content_wrapper\",\"margin\",\"0\");YAHOO.util.Dom.setStyle(\"content\",\"margin\",\"0\");YAHOO.util.Dom.setStyle(\"links_wrapper\",\"margin\",\"0\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"margin\",\"0\");YAHOO.util.Dom.setStyle(\"header_content\",\"margin\",\"0\");YAHOO.util.Dom.setStyle(\"header_content\",\"padding-left\",\"95px\")}k=ko||YAHOO.util.Cookie.get(\"o\");if(k){kurl+=\"&ko=\"+encodeURIComponent(k)}if(ie6){k=\"s\"}if(!k||k!=\"-1\"){YAHOO.util.Dom.setStyle(\"header_wrapper\",\"display\",\"block\")}if(k&&k==\"s\"){YAHOO.util.Dom.setStyle(\"header\",\"position\",\"absolute\");YAHOO.util.Dom.setStyle(\"header_wrapper\",\"position\",\"absolute\");if(ie6){YAHOO.util.Dom.setStyle(\"header\",\"padding-top\",\"0px\");YAHOO.util.Dom.setStyle(\"header\",\"height\",\"70px\");YAHOO.util.Dom.setStyle(\"header\",\"width\",\"700px\");YAHOO.util.Dom.setStyle(\"header\",\"padding-left\",\"23px\");YAHOO.util.Dom.setStyle(\"header_content_wrapper\",\"padding-top\",\"0\");YAHOO.util.Dom.setStyle(\"header_content\",\"padding-top\",\"0\")}}else{if(k&&k==\"-1\"){YAHOO.util.Dom.setStyle(\"content\",\"padding-top\",\"10px\");YAHOO.util.StyleSheet(DDG.stylesheet).set(\"#zero_click_wrapper, #links\",\"padding-top:0px !important;\").enable()}}k=kz||YAHOO.util.Cookie.get(\"z\");if(k){kurl+=\"&kz=\"+encodeURIComponent(k)}if((!k||k==\"1\")&&w.rad){YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"display\",\"block\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"visibility\",\"visible\")}else{if(k==\"-1\"){YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"zero_click_wrapper\",\"visibility\",\"hidden\");YAHOO.util.Dom.setStyle(\"zero_click_header\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"zero_click_header\",\"visibility\",\"hidden\");YAHOO.util.Dom.setStyle(\"zero_click_topics\",\"display\",\"none\");YAHOO.util.Dom.setStyle(\"zero_click_topics\",\"visibility\",\"hidden\");nra=function(){return false};nra2=function(){return false}}}k=kx||YAHOO.util.Cookie.get(\"x\");if(k){kurl+=\"&kx=\"+encodeURIComponent(k)}if(k&&k!=\"r\"){if(k==\"g\"){k=\"#0f5c17\"}else{if(k==\"b\"){k=\"#10385d\"}else{if(k==\"o\"){k=\"#d15d0d\"}else{if(k==\"p\"){k=\"#732883\"}else{if(k==\"l\"){k=\"#222222\"}else{if(k==\"e\"){k=\"#777777\"}}}}}}YAHOO.util.StyleSheet(DDG.stylesheet).set(\".url, .url a\",\"color: \"+k+\" !important;\").enable()}k=kg||YAHOO.util.Cookie.get(\"g\");if(k){kurl+=\"&kg=\"+encodeURIComponent(k)}if(k==\"p\"){d.x.method=\"POST\";d.title=\"DuckDuckGo\"}k=kl||YAHOO.util.Cookie.get(\"l\");if(k){kurl+=\"&kl=\"+encodeURIComponent(k)}k=kp||YAHOO.util.Cookie.get(\"p\");if(k){kurl+=\"&kp=\"+encodeURIComponent(k)}k=kd||YAHOO.util.Cookie.get(\"d\");if(k){kurl+=\"&kd=\"+encodeURIComponent(k)}k=kn||YAHOO.util.Cookie.get(\"n\");if(k){kurl+=\"&kn=\"+encodeURIComponent(k)}k=kb||YAHOO.util.Cookie.get(\"b\");if(k){kurl+=\"&kb=\"+encodeURIComponent(k)}k=k1||YAHOO.util.Cookie.get(\"1\");if(k){kurl+=\"&k1=\"+encodeURIComponent(k)}k=k2||YAHOO.util.Cookie.get(\"2\");if(k){kurl+=\"&k2=\"+encodeURIComponent(k)}k=k3||YAHOO.util.Cookie.get(\"3\");if(k){kurl+=\"&k3=\"+encodeURIComponent(k)}k=k4||YAHOO.util.Cookie.get(\"4\");if(k){kurl+=\"&k4=\"+encodeURIComponent(k)}k=k5||YAHOO.util.Cookie.get(\"5\");if(k){kurl+=\"&k5=\"+encodeURIComponent(k)}k=k6||YAHOO.util.Cookie.get(\"6\");if(k){kurl+=\"&k6=\"+encodeURIComponent(k)}k=k7||YAHOO.util.Cookie.get(\"7\");if(k&&k!=\"ow\"){if(k==\"w\"){k=\"#FFFFFF\"}YAHOO.util.StyleSheet(DDG.stylesheet).set(\"html,body,#side,#zero_click,.highlight_sponsored\",{background:\"none\"}).set(\"html,body,#side,#zero_click,.highlight_sponsored\",{backgroundColor:k}).set(\"#zero_click_abstract,#did_you_mean,.results_links,.cr3,.results_links_more,.results_category_more,.results_links_deep,.results_zero_click,.results_zero_click_more,.results_disambig,.links_zero_click_disambig,.results_disambig_more\",{borderColor:k}).set(\".highlight_sponsored\",\"border-color: \"+k+\" !important\").enable()}if(k){kurl+=\"&k7=\"+encodeURIComponent(k)}k=k8||YAHOO.util.Cookie.get(\"8\");if(k&&k!=\"g\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\"html\",{color:k}).set(\".snippet, .snippet a, .search_suggestion, .search_suggestion a, .links_menu, .links_menu a, #side\",\"color: \"+k+\" !important;\").enable()}if(k){kurl+=\"&k8=\"+encodeURIComponent(k)}k=k9||YAHOO.util.Cookie.get(\"9\");if(k&&k!=\"b\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\"a, #header_button_menu_wrapper:hover a\",{color:k}).enable()}if(k){kurl+=\"&k9=\"+encodeURIComponent(k)}k=kaa||YAHOO.util.Cookie.get(\"aa\");if(k&&k!=\"p\"){YAHOO.util.StyleSheet(DDG.stylesheet).set(\"a:visited\",{color:k}).enable()}if(k){kurl+=\"&kaa=\"+encodeURIComponent(k)}k=kab||YAHOO.util.Cookie.get(\"ab\");if(k&&k!=\"e\"){if(k==\"r\"){k=\"#EE7777\"}YAHOO.util.StyleSheet(DDG.stylesheet).set(\"#zero_click,.search_suggestion\",{borderColor:k}).enable()}if(k){kurl+=\"&kab=\"+encodeURIComponent(k)}k=kac||YAHOO.util.Cookie.get(\"ac\");if(k){kurl+=\"&kac=\"+encodeURIComponent(k)}k=kad||YAHOO.util.Cookie.get(\"ad\");if(k){kurl+=\"&kad=\"+encodeURIComponent(k)}k=kae||YAHOO.util.Cookie.get(\"ae\");if(k){kurl+=\"&kae=\"+encodeURIComponent(k)}k=kaf||YAHOO.util.Cookie.get(\"af\");if(k){kurl+=\"&kaf=\"+encodeURIComponent(k)}k=kag||YAHOO.util.Cookie.get(\"ag\");if(k){kurl+=\"&kag=\"+encodeURIComponent(k)}k=kah||YAHOO.util.Cookie.get(\"ah\");if(k){kurl+=\"&kah=\"+encodeURIComponent(k)}k=kai||YAHOO.util.Cookie.get(\"ai\");if(k){kurl+=\"&kai=\"+encodeURIComponent(k)}k=kaj||YAHOO.util.Cookie.get(\"aj\");if(k){kurl+=\"&kaj=\"+encodeURIComponent(k)}k=kak||YAHOO.util.Cookie.get(\"ak\");if(k){kurl+=\"&kak=\"+encodeURIComponent(k)}k=kal||YAHOO.util.Cookie.get(\"al\");if(k){kurl+=\"&kal=\"+encodeURIComponent(k)}k=kam||YAHOO.util.Cookie.get(\"am\");if(k){kurl+=\"&kam=\"+encodeURIComponent(k)}k=kan||YAHOO.util.Cookie.get(\"an\");if(k){kurl+=\"&kan=\"+encodeURIComponent(k)}k=kao||YAHOO.util.Cookie.get(\"ao\");if(k){kurl+=\"&kao=\"+encodeURIComponent(k)}k=kap||YAHOO.util.Cookie.get(\"ap\");if(k){kurl+=\"&kap=\"+encodeURIComponent(k)}k=kaq||YAHOO.util.Cookie.get(\"aq\");if(k){kurl+=\"&kaq=\"+encodeURIComponent(k)}k=kar||YAHOO.util.Cookie.get(\"ar\");if(k){kurl+=\"&kar=\"+encodeURIComponent(k)}k=kas||YAHOO.util.Cookie.get(\"as\");if(k){kurl+=\"&kas=\"+encodeURIComponent(k)}k=kat||YAHOO.util.Cookie.get(\"at\");if(k){kurl+=\"&kat=\"+encodeURIComponent(k)}k=kau||YAHOO.util.Cookie.get(\"au\");if(k){kurl+=\"&kau=\"+encodeURIComponent(k)}k=kav||YAHOO.util.Cookie.get(\"av\");if(k){kurl+=\"&kav=\"+encodeURIComponent(k)}k=kaw||YAHOO.util.Cookie.get(\"aw\");if(k){kurl+=\"&kaw=\"+encodeURIComponent(k)}k=kax||YAHOO.util.Cookie.get(\"ax\");if(k){kurl+=\"&kax=\"+encodeURIComponent(k)}k=kay||YAHOO.util.Cookie.get(\"ay\");if(k){kurl+=\"&kay=\"+encodeURIComponent(k)}k=kaz||YAHOO.util.Cookie.get(\"az\");if(k){kurl+=\"&kaz=\"+encodeURIComponent(k)}DDG.resize();nua(\"DDG.resize\",\"\",250);nua(\"DDG.resize\",\"\",1250)}function nbc(b){var a,e,g,c,f;c=d.getElementById(\"search_form_homepage\")?1:0;a=d.getElementById(\"bang\");if(YAHOO.util.Dom.getStyle(a,\"display\")==\"none\"){f=\"search_dropdown\";if(c){f=\"search_dropdown_homepage\"}e=0;if(ir||is||iw){e-=2}if(c){e+=2}YAHOO.util.Dom.setStyle(a,\"top\",parseInt(YAHOO.util.Dom.getY(f)+37+e-YAHOO.util.Dom.getDocumentScrollTop())+\"px\");g=153;if(a.options.length>100){g+=125}YAHOO.util.Dom.setStyle(a,\"left\",parseInt(YAHOO.util.Dom.getX(f)-g)+\"px\");a.selectedIndex=0;setTimeout(\"YAHOO.util.Dom.setStyle('bang','display','block')\",100);setTimeout('d.getElementById(\"bang\").focus()',150);fb=1;fq=1}else{if(!fb||b){fq=0;setTimeout(\"YAHOO.util.Dom.setStyle('bang','display','none')\",200)}}}function nbp(){var e,g,b,c,f,a;c=YAHOO.util.Cookie.getSubs(\"!\")||0;b=d.getElementById(\"bang\");if(b){a=0;if(rl&&rl!=\"us-en\"&&rl!=\"wt-wt\"){b.options.add(new Option(\"From any region\",\"region:none\"),a++)}b.options.add(new Option(\"Sort by date\",\"!date\"),a++);b.options.add(new Option(\"I'm feeling ducky\",\"!\"),a++);b.options.add(new Option(\"-- Try search on --\",\"\"),a++);b.options.add(new Option(\"Amazon (!a)\",\"!a\"),a++);b.options.add(new Option(\"Images - Bing (!bi)\",\"!bi\"),a++);b.options.add(new Option(\"Images - Google (!gi)\",\"!gi\"),a++);b.options.add(new Option(\"Map (!m)\",\"!m\"),a++);b.options.add(new Option(\"News (!n)\",\"!n\"),a++);b.options.add(new Option(\"Wikipedia (!w)\",\"!w\"),a++);b.options.add(new Option(\"YouTube (!yt)\",\"!yt\"),a++);b.options.add(new Option(\"-- Show all --\",\"\"),a++);b.options.add(new Option(\"By category (!bang)\",\"!bang\"),a++);b.options.add(new Option(\"Alphabetically\",\"more\"),a++);b.size=a;if(c){f=new Array();for(g in c){if(g==\"date\"||g==\"ducky\"||g==\"bang\"){continue}if(grb.test(g)){f[f.length]={name:g,count:c[g]}}}f.sort(function(j,h){return h.count-j.count});a=0;for(e=0;e<f.length;e++){g=f[e];b.options.add(new Option(\"!\"+g.name,\"!\"+g.name),0+a);a++;if(a==5){break}}if(a){b.options.add(new Option(\"-- Special --\",\"\"),0+a);a++}b.size+=a}}}function nbr(){var c,b,e,a;if(d.x.q.value==\"\"||d.x.q.value==\"put search terms here\"){d.x.q.value=\"put search terms here\";d.x.q.style.color=\"#AAAAAA\";setTimeout(\"d.x.q.onclick();d.x.q.focus();\",1000);return false}c=new RegExp(\" \\\\!([^\\\\s]+)$\");b=new RegExp(\"^\\\\!([^\\\\s]+) \");if(c.test(d.x.q.value)||b.test(d.x.q.value)){e=RegExp.$1||0;if(e&&grb.test(e)){a=YAHOO.util.Cookie.getSub(\"!\",e)||0;a++;if(!kq||kq==\"1\"){YAHOO.util.Cookie.setSub(\"!\",e,a,{expires:new Date(\"January 12, 2025\")})}}}return true}function nbb(f,b){var h,g,j,a,e,c;h=new RegExp(\" \\\\!([^\\\\s]*)\\\\s*$\");g=new RegExp(\"^\\\\!([^\\\\s]+) \");a=0;if(h.test(d.x.q.value)){j=RegExp.$1||\"\";a=d.x.q.value.indexOf(\"!\"+j);if(a){d.x.q.value=d.x.q.value.substring(0,a-1)}}else{if(g.test(d.x.q.value)){d.x.q.value=\"\"}}j=\"\";if(b){j=b}else{j=f.options[f.selectedIndex].value}if(j==\"more\"){nrj(\"/bang.v117.js\")}else{if((d.x.q.value!=\"\"||j==\"!bang\")&&j){d.x.q.value+=\" \"+j;setTimeout(\"nbr();d.x.submit()\",250)}else{if(j){d.x.q.value+=j+\" \";setTimeout(\"d.x.q.focus()\",100)}}}}function nbm(c){var b,f,g,e,a;b=d.getElementById(\"bang\");e=d.getElementById(\"search_form_homepage\")?1:0;a=b.options.length;for(f in c){if(!c[f]){continue}b.options[b.length]=new Option(c[f][\"s\"]+\" (!\"+c[f][\"t\"]+\")\",\"!\"+c[f][\"t\"])}b.options[b.selectedIndex].text=\"----\";b.options[b.selectedIndex].value=\" \";b.size=20;YAHOO.util.Dom.setStyle(b,\"width\",\"300px\");g=\"search_dropdown\";if(e){g=\"search_dropdown_homepage\"}YAHOO.util.Dom.setStyle(b,\"left\",parseInt(YAHOO.util.Dom.getX(g)-278)+\"px\");b.scrollTop=parseInt(20*a)}function nuc(a){var b=\"47\";if(a.length==1){b=\"73\"}if(ko&&(ko==\"-1\"||ko==\"s\")){b=\"20\"}if(d.getElementById(\"zero_click\")){b=parseInt(b)+parseInt(d.getElementById(\"zero_click\").scrollHeight)-40}YAHOO.util.Dom.setStyle(\"zero_click_abstract\"+a,\"padding-top\",b+\"px\")}function nuo(a){if(!a){a=0}window.scroll(0,a)}function nipo(a){var c;try{c=YAHOO.util.StyleSheet(\"DDGT\");YAHOO.util.StyleSheet(c).set(\".icon_fav\",\"float: left\").enable();nic(a)}catch(b){setTimeout(\"nipo()\",150)}finally{}}function nip(a){var b;DDG.page_type=a;if(!a&&ih5){b=d.createElement(\"iframe\");b.id=\"iframe_hidden\";b.src=\"/post.html\";d.body.appendChild(b)}if((io||ie)&&!a){nipo(a)}else{nic(a)}if(a){YAHOO.util.Event.addListener(\"search_form_input_homepage\",\"keyup\",DDG.clear_button_toggle)}else{if(nir){nir()}YAHOO.util.Event.onDOMReady(setTimeout(\"nis()\",250));setTimeout(\"nsl()\",10000);YAHOO.util.Event.addListener(d,\"mousemove\",nkf);YAHOO.util.Event.addListener(d,\"mousedown\",ncf);YAHOO.util.Event.addListener(d,\"mouseup\",ncg);YAHOO.util.Event.addListener(d,\"keydown\",nckd);YAHOO.util.Event.addListener(d,\"keypress\",nckp);YAHOO.util.Event.addListener(d,\"keyup\",ncku);YAHOO.util.Event.addListener(\"search_form_input\",\"keyup\",DDG.clear_button_toggle);YAHOO.util.Event.addListener(\"search_form_input_clear\",\"click\",DDG.clear_button)}window.onresize=DDG.resize;nbp()}function nif(){var c,b,l;c=\"Arial\";b=1;if(typeof(screen.fontSmoothingEnabled)!=\"undefined\"){b=screen.fontSmoothingEnabled}else{try{var e=document.createElement(\"canvas\");e.width=\"35\";e.height=\"35\";e.style.display=\"none\";document.body.appendChild(e);var m=e.getContext(\"2d\");m.textBaseline=\"top\";m.font=\"32px Arial\";m.fillStyle=\"black\";m.strokeStyle=\"black\";if(m.mozMeasureText&&!m.measureText){m.__defineSetter__(\"font\",function(j){this.mozTextStyle=j});m.__defineGetter__(\"font\",function(){return this.mozTextStyle})}if(m.mozMeasureText&&!m.measureText){m.measureText=function(j){return{width:this.mozMeasureText(j)}}}if(m.mozPathText&&!m.strokeText){m.strokeText=function(o,j,p){this.translate(j,p);this.mozPathText(o);this.stroke();this.translate(-j,-p)}}if(m.mozDrawText&&!m.fillText){m.fillText=function(o,j,p){this.translate(j,p);this.mozDrawText(o);this.translate(-j,-p)}}m.fillText(\"O\",0,0);var n=0;if(m.getImageData){canvas_loop:for(var g=8;g<=32;g++){for(var h=1;h<=32;h++){var a=m.getImageData(h,g,1,1).data;var f=a[3];if(f!=255&&f!=0){n=1;break canvas_loop}}}}b=n?1:0}catch(k){b=0}}if(!b){l=YAHOO.util.Cookie.get(\"t\");if(!l){YAHOO.util.Dom.setStyle(\"search_form_input\",\"font-family\",c);YAHOO.util.Dom.setStyle(\"search_form_input_homepage\",\"font-family\",c);YAHOO.util.Dom.setStyle(\"bang\",\"font-family\",c);YAHOO.util.StyleSheet(DDG.stylesheet).set(\"body\",{fontFamily:c}).enable()}l=YAHOO.util.Cookie.get(\"a\");if(!l){YAHOO.util.Dom.setStyle(\"header_button_wrapper\",\"font-family\",c);YAHOO.util.Dom.setStyle(\"special_page_header\",\"font-family\",c);YAHOO.util.Dom.setStyle(\"zero_click_header\",\"font-family\",c);YAHOO.util.Dom.setStyle(\"did_you_mean\",\"font-family\",c);YAHOO.util.StyleSheet(DDG.stylesheet).set(\"zero_click_abstract\",{fontFamily:c}).enable()}}}YAHOO.util.Event.onDOMReady(nif);if(ir){window.onload=fnChromeLoad}function fnChromeLoad(a){irl=1};"
          },
          "redirectURL": "",
          "headersSize": 344,
          "bodySize": 56690
        },
        "cache": {},
        "timings": {
          "blocked": 297,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 811,
          "receive": 546
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 842,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/f2/us.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 373,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "609"
            },
            {
              "name": "Last-Modified",
              "value": "Fri, 20 May 2011 15:12:20 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:14 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 609
          },
          "redirectURL": "",
          "headersSize": 290,
          "bodySize": 609
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 562,
          "send": 0,
          "wait": 280,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 842,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/header_bg.v101.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 368,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "923"
            },
            {
              "name": "Last-Modified",
              "value": "Wed, 01 Feb 2012 15:43:49 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:14 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 923
          },
          "redirectURL": "",
          "headersSize": 290,
          "bodySize": 923
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 562,
          "send": 0,
          "wait": 280,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 874,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/logo_header.v101.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 370,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "1978"
            },
            {
              "name": "Last-Modified",
              "value": "Wed, 01 Feb 2012 15:43:49 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:14 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 1978
          },
          "redirectURL": "",
          "headersSize": 291,
          "bodySize": 1978
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 577,
          "send": 0,
          "wait": 297,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 827,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/search_dropdown.v102.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 374,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "3221"
            },
            {
              "name": "Last-Modified",
              "value": "Wed, 01 Feb 2012 15:43:49 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:14 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 3221
          },
          "redirectURL": "",
          "headersSize": 291,
          "bodySize": 3221
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 546,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 827,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/icon_xon.v101.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 367,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "542"
            },
            {
              "name": "Last-Modified",
              "value": "Fri, 13 Jan 2012 18:36:15 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:14 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 542
          },
          "redirectURL": "",
          "headersSize": 290,
          "bodySize": 542
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 562,
          "send": 0,
          "wait": 265,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 842,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/header_button_bg.v101.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 375,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "373"
            },
            {
              "name": "Last-Modified",
              "value": "Fri, 13 Jan 2012 18:36:15 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:14 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 373
          },
          "redirectURL": "",
          "headersSize": 290,
          "bodySize": 373
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 562,
          "send": 0,
          "wait": 280,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 1123,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/header_button_triangle.v101.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 381,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "300"
            },
            {
              "name": "Last-Modified",
              "value": "Wed, 01 Feb 2012 15:43:49 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:14 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 300
          },
          "redirectURL": "",
          "headersSize": 290,
          "bodySize": 300
        },
        "cache": {},
        "timings": {
          "blocked": 842,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 1123,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/icon_feedback.v101.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 372,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "3393"
            },
            {
              "name": "Last-Modified",
              "value": "Wed, 01 Feb 2012 15:43:49 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:14 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 3393
          },
          "redirectURL": "",
          "headersSize": 291,
          "bodySize": 3393
        },
        "cache": {},
        "timings": {
          "blocked": 842,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 1092,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/a.js?q=http%20archive%20specification&p=1",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "*/*"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [
            {
              "name": "p",
              "value": "1"
            },
            {
              "name": "q",
              "value": "http archive specification"
            }
          ],
          "headersSize": 375,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "application/x-javascript; charset=UTF-8"
            },
            {
              "name": "Content-Length",
              "value": "0"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Fri, 23 Mar 2012 01:32:13 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "content": {
            "mimeType": "application/x-javascript",
            "size": 0
          },
          "redirectURL": "",
          "headersSize": 234,
          "bodySize": 0
        },
        "cache": {},
        "timings": {
          "blocked": 827,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 265,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 1373,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/d.js?q=http%20archive%20specification&l=us-en&p=1&s=0",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "*/*"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [
            {
              "name": "l",
              "value": "us-en"
            },
            {
              "name": "p",
              "value": "1"
            },
            {
              "name": "q",
              "value": "http archive specification"
            },
            {
              "name": "s",
              "value": "0"
            }
          ],
          "headersSize": 387,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "application/x-javascript; charset=UTF-8"
            },
            {
              "name": "Transfer-Encoding",
              "value": "chunked"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Fri, 23 Mar 2012 01:32:13 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Content-Encoding",
              "value": "gzip"
            }
          ],
          "content": {
            "mimeType": "application/x-javascript",
            "size": 16046,
            "text": "if (nrn) nrn('d',[{\"a\":\"Get AM General Hummer News and Info Spy Photos, Videos, Breaking News\",\"d\":\"insideline.com\",\"m\":0,\"s\":\"boss\",\"p\":1,\"c\":\"/y.js?u2=http%3A%2F%2F0.r.msn.com%2F%3Fld%3D4vJZprmSxfDprpRqDzePwPSt%2D4fW3LY9zy1bCowmFguwS5d_tU2u8E7Ay%2DRvBR2b9ktM2gIu3WykjeOZDLCHiFh1hlU3ngRA60K2x8XMemvVie_%2D31Zw4uAaAvaT99edEFJO2ksiCnp3kwwlLMIXMT5%2DLs8VAVUch51kOAgStMcvTjxUz1HELGol8YggyN_bsRH41pFePRoOZrj_%2D8q7zRzeK4TWMsURxQ0dDhWs6afP2DZak1PzC%2DuQj7OAkzY6srtBvKMT8aRjQH_E46W3jhh1x3DWsWgc2OrIbjHI%2DwvSODxEJOwU7dpzBI1ODDsis0%2DemctRAmY3M9iqX103ufyO8Bj8q8uUtAdRLZjPqTIgCTjA8un2nqO98&k=%2Fd.js%3Fq%3Dhttp%252520archive%252520specification%26l%3Dus%2Den%26p%3D1%26s%3D0\",\"u\":\"/y.js?u2=http%3A%2F%2F0.r.msn.com%2F%3Fld%3D4vJZprmSxfDprpRqDzePwPSt%2D4fW3LY9zy1bCowmFguwS5d_tU2u8E7Ay%2DRvBR2b9ktM2gIu3WykjeOZDLCHiFh1hlU3ngRA60K2x8XMemvVie_%2D31Zw4uAaAvaT99edEFJO2ksiCnp3kwwlLMIXMT5%2DLs8VAVUch51kOAgStMcvTjxUz1HELGol8YggyN_bsRH41pFePRoOZrj_%2D8q7zRzeK4TWMsURxQ0dDhWs6afP2DZak1PzC%2DuQj7OAkzY6srtBvKMT8aRjQH_E46W3jhh1x3DWsWgc2OrIbjHI%2DwvSODxEJOwU7dpzBI1ODDsis0%2DemctRAmY3M9iqX103ufyO8Bj8q8uUtAdRLZjPqTIgCTjA8un2nqO98&k=%2Fd.js%3Fq%3Dhttp%252520archive%252520specification%26l%3Dus%2Den%26p%3D1%26s%3D0\",\"h\":0,\"k\":0,\"i\":1,\"t\":\"AM General News Articles\"},{\"a\":\"Will browsers eventually let a site request a HAR file from a regular user? By Chase - Apr 18 2011 - 3 authors - 3 replies\",\"d\":\"groups.google.com/group/http-archive-specification\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.groups.google.com/group/http-archive-specification\",\"u\":\"http://www.groups.google.com/group/http-archive-specification\",\"h\":0,\"k\":null,\"i\":\"www.groups.google.com\",\"t\":\"<b>HTTP Archive Specification</b> | Google Groups\"},{\"a\":\"<b>HTTP Archive Specification</b>: Firebug and HttpWatch. October 19, 2009 1:16 pm | 13 Comments. A few years ago, I set a goal to foster the creation of an Internet Performance <b>Archive</b>.\",\"d\":\"stevesouders.com/blog/2009/10/19/http-archive-specificat...\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.stevesouders.com/blog/2009/10/19/http-archive-specification-firebug-and-httpwatch/\",\"u\":\"http://www.stevesouders.com/blog/2009/10/19/http-archive-specification-firebug-and-httpwatch/\",\"h\":0,\"k\":null,\"i\":\"www.stevesouders.com\",\"t\":\"<b>HTTP Archive Specification</b>: Firebug and HttpWatch | High ...\"},{\"a\":\"2008-02: drafts -02 of the revised <b>HTTP</b>/1.1 <b>specifications</b>; 2007-10: <b>Hypertext Transfer Protocol</b> Bis WG &#x28;httpbis&#x29; came to life. ... Content Negotiation &#x28;conneg&#x29; IETF Working Group with mailing list and <b>archives</b>; <b>HTTP</b> wg &#x28;<b>http</b>&#x29; with mailing list and <b>archives</b>\",\"d\":\"w3.org/Protocols/\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.w3.org/Protocols/\",\"u\":\"http://www.w3.org/Protocols/\",\"h\":0,\"k\":null,\"i\":\"www.w3.org\",\"t\":\"<b>HTTP</b> - <b>Hypertext Transfer Protocol</b> Overview\"},{\"a\":\"Published: October 21st, 2009; Comments: 4 Comments; Category: Firebug, HAR, NetExport, Planet Mozilla; We have been working with Simon Perkins and Steve Souders on an open format for exporting <b>HTTP</b> tracing information.\",\"d\":\"softwareishard.com/blog/firebug/http-archive-specification/\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.softwareishard.com/blog/firebug/http-archive-specification/\",\"u\":\"http://www.softwareishard.com/blog/firebug/http-archive-specification/\",\"h\":0,\"k\":null,\"i\":\"www.softwareishard.com\",\"t\":\"Software is hard | <b>HTTP Archive Specification</b>\"},{\"a\":\"I want to know webpage performance of given URL, Specifically time difference &#x28;between request and response&#x29; of each resource used in given webpage &#x28;URL&#x29;.\",\"d\":\"stackoverflow.com/questions/4710031/http-archive-specification\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://stackoverflow.com/questions/4710031/http-archive-specification\",\"u\":\"http://stackoverflow.com/questions/4710031/http-archive-specification\",\"h\":0,\"k\":null,\"i\":\"stackoverflow.com\",\"t\":\"performance - <b>HTTP Archive Specification</b> - Stack Overflow\"},{\"a\":\"<b>Archives</b> ... are not system requirements, and are not final, but simply a view of what works best for running the Consumer Preview.\",\"d\":\"blogs.msdn.com/b/b8/archive/2012/02/29/running-the-con...\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://blogs.msdn.com/b/b8/archive/2012/02/29/running-the-consumer-preview-system-recommendations.aspx\",\"u\":\"http://blogs.msdn.com/b/b8/archive/2012/02/29/running-the-consumer-preview-system-recommendations.aspx\",\"h\":0,\"k\":null,\"i\":\"blogs.msdn.com\",\"t\":\"Running the Consumer Preview: system recommendations ...\"},{\"a\":\"Adobe PDF Reference <b>Archives</b> ... The PDF <b>specification</b> is represented by the combination of this document, the PDF Reference, sixth edition, version 1.7 &#x28;Nov. 2006&#x29;, Errata to Sixth ...\",\"d\":\"adobe.com/devnet/pdf/pdf_reference_archive.html\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.adobe.com/devnet/pdf/pdf_reference_archive.html\",\"u\":\"http://www.adobe.com/devnet/pdf/pdf_reference_archive.html\",\"h\":0,\"k\":null,\"i\":\"www.adobe.com\",\"t\":\"Adobe PDF Reference <b>Archives</b> | Adobe Developer Connection\"},{\"a\":\"FotoWare <b>Archive</b> Agent <b>Specification</b> 4 / 16 FotoWare 2 Data formats The <b>Archive</b> Agents communicate via <b>HTTP</b> URLs and return results as XML documents.\",\"d\":\"fotoware.com/Documents/Archive_Agent_Spec_6_0.pdf?ep...\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.fotoware.com/Documents/Archive_Agent_Spec_6_0.pdf?epslanguage=en\",\"u\":\"http://www.fotoware.com/Documents/Archive_Agent_Spec_6_0.pdf?epslanguage=en\",\"h\":0,\"k\":null,\"i\":\"www.fotoware.com\",\"t\":\"<span class=\\\"links_type\\\">[PDF] </span> FotoWeb 6.0 User Guide - <b>Archive</b> Agent specs.\"},{\"a\":\"A <b>specification</b> &#x28;often abbreviated as <b>spec</b>&#x29; is an explicit set of requirements to be satisfied by a material, product, or service. ... <b>http</b>://web.<b>archive</b>.org/web/20080405023254/<b>http</b>://www.foodstandards.gov.au/thecode/foodstandardscode.cfm.\",\"d\":\"en.wikipedia.org/wiki/Specification_(technical_standard)\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"https://en.wikipedia.org/wiki/Specification_(technical_standard)\",\"u\":\"https://en.wikipedia.org/wiki/Specification_(technical_standard)\",\"h\":0,\"k\":null,\"i\":\"en.wikipedia.org\",\"t\":\"<b>Specification</b> &#x28;technical standard&#x29; - Wikipedia, the free ...\"},{\"a\":\"Mailing List <b>Archive</b> and FindMail <b>Archive</b>; Meeting Notes; <b>Specifications</b> Requests for Comments &#x28;RFC&#x29; Primary <b>HTTP</b> Revision Drafts ... &#x22;<b>Hypertext Transfer Protocol</b> -- <b>HTTP</b>/1.1&#x22;, R. Fielding, J. Gettys, J. Mogul, H. Frystyk, T. Berners-Lee, January 1997.\",\"d\":\"ftp.ics.uci.edu/pub/ietf/http/\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://ftp.ics.uci.edu/pub/ietf/http/\",\"u\":\"http://ftp.ics.uci.edu/pub/ietf/http/\",\"h\":0,\"k\":null,\"i\":\"ftp.ics.uci.edu\",\"t\":\"IETF - <b>Hypertext Transfer Protocol</b> &#x28;<b>HTTP</b>&#x29; Working Group\"},{\"a\":\"<b>specifications</b>; gallery; v| 360 tours; allegro red. overview; features; <b>specifications</b> ... compare models; locate dealer; owners; contact us; <b>archive</b>; join our email list\",\"d\":\"tiffinmotorhomes.com/archive/specifications\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.tiffinmotorhomes.com/archive/specifications\",\"u\":\"http://www.tiffinmotorhomes.com/archive/specifications\",\"h\":0,\"k\":null,\"i\":\"www.tiffinmotorhomes.com\",\"t\":\"<b>Archive</b> - <b>Specifications</b> | Tiffin Motorhomes\"},{\"a\":\"... CAY16-J4 1n4000 DIODE OS1801 display lcd 4x20 PJ-014D-SMT emergency circuit and working theory PJ-014D-SMT Nylon46 M7793/1-001* MSL-1 1S1554 <b>SPEC</b> ... Electronic Component Photos - <b>Archive</b> of component photos. Package and Case Datasheets - Component packages and dimensions.\",\"d\":\"datasheetarchive.com\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.datasheetarchive.com/\",\"u\":\"http://www.datasheetarchive.com/\",\"h\":0,\"k\":null,\"i\":\"www.datasheetarchive.com\",\"t\":\"Datasheet &amp; application note database, pdf, circuits, cross ...\"},{\"a\":\"Materials <b>Specifications</b>; National <b>Archives</b> Housing <b>Specifications</b>; Peel Test; Electronic Records Storage; TIP 13: Using Technology to Safeguard Archival Holdings\",\"d\":\"archives.gov/preservation/technical/materials-specif...\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.archives.gov/preservation/technical/materials-specifications.html\",\"u\":\"http://www.archives.gov/preservation/technical/materials-specifications.html\",\"h\":0,\"k\":null,\"i\":\"www.archives.gov\",\"t\":\"Materials <b>Specification</b> - National <b>Archives</b> and Records ...\"},{\"a\":\"<b>Specifications</b> are subject to change without any notice or obligation on the part of the manufacturer. ... Film Cameras; Film Scanners; Accessories; Brochure Download; Product <b>Archive</b>\",\"d\":\"imaging.nikon.com/lineup/coolpix/life/l23/spec.htm\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://imaging.nikon.com/lineup/coolpix/life/l23/spec.htm\",\"u\":\"http://imaging.nikon.com/lineup/coolpix/life/l23/spec.htm\",\"h\":0,\"k\":null,\"i\":\"imaging.nikon.com\",\"t\":\"Nikon | Imaging Products | Product <b>Archive</b> - <b>Specifications</b> ...\"},{\"a\":\"Index to the Riders&#x27; Digest, 1956-1976 Index to the Roosevelt Review. For City Agencies: Information for City Agencies on Transferring Records to the City <b>Archives</b>\",\"d\":\"neworleanspubliclibrary.org/spec/speclist.htm\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://neworleanspubliclibrary.org/spec/speclist.htm\",\"u\":\"http://neworleanspubliclibrary.org/spec/speclist.htm\",\"h\":0,\"k\":null,\"i\":\"neworleanspubliclibrary.org\",\"t\":\"Louisiana Division/City <b>Archives</b>/Special Collections - New ...\"},{\"a\":\"Ebook and Texts <b>Archive</b> &gt; American Libraries &gt; <b>Specification</b> and Design of Dynamo-electric Machinery ... <b>http</b>://www.<b>archive</b>.org/details/specificationan00walkgoog: Scandate: 20071106\",\"d\":\"archive.org/details/specificationan00walkgoog\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.archive.org/details/specificationan00walkgoog\",\"u\":\"http://www.archive.org/details/specificationan00walkgoog\",\"h\":0,\"k\":null,\"i\":\"www.archive.org\",\"t\":\"<b>Specification</b> and Design of Dynamo-electric Machinery : Miles ...\"},{\"a\":\"<b>Specification</b>: CPE <b>Specification</b> 2.2 Web site: <b>http</b>://cpe.mitre.org/ Official Dictionary: <b>http</b>://nvd.nist.gov/cpe.cfm Community Forum: CPE-DISCUSSION-LIST@LISTS.MITRE.ORG &#x28;View <b>archive</b>&#x29; CVE\\u00ae: Common Vulnerabilities and Exposures\",\"d\":\"scap.nist.gov/revision/1.0/index.html\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://scap.nist.gov/revision/1.0/index.html\",\"u\":\"http://scap.nist.gov/revision/1.0/index.html\",\"h\":0,\"k\":null,\"i\":\"scap.nist.gov\",\"t\":\"<b>Specifications</b> - The Security Content Automation Protocol ...\"},{\"a\":\"OAI-ORE Production Release The production versions of the OAI-ORE <b>specifications</b> and implementation documents are now available to the public, with a table of contents page at <b>http</b>://www.openarchives.org/ore/toc.\",\"d\":\"openarchives.org\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.openarchives.org/\",\"u\":\"http://www.openarchives.org/\",\"h\":0,\"k\":null,\"i\":\"www.openarchives.org\",\"t\":\"Open <b>Archives</b> Initiative\"},{\"a\":\"Domain names - implementation and <b>specification</b> RFC 1035 was last modified on Tuesday, November 24th, 1987 Use this location for manual linking: <b>http</b>://www.rfc-<b>archive</b>.org/getrfc.php?rfc=1035\",\"d\":\"rfc-archive.org/getrfc.php?rfc=1035\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.rfc-archive.org/getrfc.php?rfc=1035\",\"u\":\"http://www.rfc-archive.org/getrfc.php?rfc=1035\",\"h\":0,\"k\":null,\"i\":\"www.rfc-archive.org\",\"t\":\"RFC 1035 - Domain names - implementation and <b>specification</b> ...\"},{\"a\":\"Mailing Lists <b>Archive</b>: jsr342-expert@javaee-<b>spec</b>.java.net, users@javaee-<b>spec</b>.java.net ... JAX-RS: Validate parameters and return values on <b>HTTP</b> calls; JAXB: Convert constraints into XML schema descriptor\",\"d\":\"blogs.oracle.com/arungupta/entry/java_ee_7_key_features\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://blogs.oracle.com/arungupta/entry/java_ee_7_key_features\",\"u\":\"http://blogs.oracle.com/arungupta/entry/java_ee_7_key_features\",\"h\":0,\"k\":null,\"i\":\"blogs.oracle.com\",\"t\":\"Java EE 7: Key features, <b>Specifications</b>, Projects, Mailing ...\"},{\"a\":\"Search the RFC <b>Archives</b> ... June 1999 <b>Hypertext Transfer Protocol</b> -- <b>HTTP</b>/1.1 Status of this Memo This document ... data units of the protocol in question is outside the scope of this <b>specification</b>. In <b>HTTP</b>/1.0 ...\",\"d\":\"faqs.org/rfcs/rfc2616.html\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://www.faqs.org/rfcs/rfc2616.html\",\"u\":\"http://www.faqs.org/rfcs/rfc2616.html\",\"h\":0,\"k\":null,\"i\":\"www.faqs.org\",\"t\":\"RFC 2616 - <b>Hypertext Transfer Protocol</b> -- <b>HTTP</b>/1.1 &#x28;RFC2616&#x29;\"},{\"a\":\"The footnote with the same number in brackets provides additional information regarding the details in the <b>specification</b> table. The footnote does not apply to any line in the table that does not contain a bracketed number.\",\"d\":\"support.jvc.com/consumer/product.jsp?modelId=MODL028309...\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://support.jvc.com/consumer/product.jsp?modelId=MODL028309&pathId=133&page=3&archive=true\",\"u\":\"http://support.jvc.com/consumer/product.jsp?modelId=MODL028309&pathId=133&page=3&archive=true\",\"h\":0,\"k\":null,\"i\":\"support.jvc.com\",\"t\":\"KW-AVX810J - KW-AVX810J - <b>Specification</b> - JVC USA\"},{\"a\":\"Opening the Landsat <b>Archive</b>/Product <b>Specifications</b>. On April 21, 2008, the USGS announced plans to provide all archived Landsat scenes at no charge to all users. ... Landsat scenes can be requested and downloaded from Glovis &#x28;<b>http</b>://glovis.usgs.gov&#x29; or EarthExplorer &#x28;<b>http</b>://earthexplorer.usgs.gov&#x29;.\",\"d\":\"landsat.usgs.gov/products_data_at_no_charge.php\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://landsat.usgs.gov/products_data_at_no_charge.php\",\"u\":\"http://landsat.usgs.gov/products_data_at_no_charge.php\",\"h\":0,\"k\":null,\"i\":\"landsat.usgs.gov\",\"t\":\"Opening the Landsat <b>Archive</b>/Product <b>Specifications</b>\"},{\"a\":\"Preboot Execution Environment &#x28;PXE&#x29; <b>Specification</b> 4 Version 2.1 September 20, 1999 Copyright \\u00a9 1998, 1999 Intel Corporation. ... section to refer to related <b>specifications</b>. 1.2.1 Wired for Management Wired for Management &#x28;WfM&#x29; Baseline [WFM] Version 2.0, December 23, 1998 <b>http</b> ...\",\"d\":\"download.intel.com/design/archives/wfm/downloads/pxespec.pdf\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://download.intel.com/design/archives/wfm/downloads/pxespec.pdf\",\"u\":\"http://download.intel.com/design/archives/wfm/downloads/pxespec.pdf\",\"h\":0,\"k\":null,\"i\":\"download.intel.com\",\"t\":\"<span class=\\\"links_type\\\">[PDF] </span> Preboot Execution Environment &#x28;PXE&#x29; <b>Specification</b>\"},{\"a\":\"Open <b>Archives</b> Initiative Releases <b>Specification</b> for Conveying Rights Expressions. ... option for data providers to make their metadata available to services, based on the open standards <b>HTTP</b> &#x28;<b>Hypertext Transport Protocol</b>&#x29; and XML ...\",\"d\":\"xml.coverpages.org/ni2005-05-06-a.html\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://xml.coverpages.org/ni2005-05-06-a.html\",\"u\":\"http://xml.coverpages.org/ni2005-05-06-a.html\",\"h\":0,\"k\":null,\"i\":\"xml.coverpages.org\",\"t\":\"Cover Pages: Open <b>Archives</b> Initiative Releases <b>Specification</b> ...\"},{\"a\":\"Some of these requirements will come down to the Servlet <b>spec</b> eventually. I would like to encourage people in this expert group to read the proposal at <b>http</b>://java.net/projects/javaee-<b>spec</b>/lists/jsr342-experts/<b>archive</b>/2011-05/message/11 and either participate in the users mailing list for the ...\",\"d\":\"java.net/projects/servlet-spec/lists/jsr340-expe...\",\"m\":0,\"s\":\"boss\",\"p\":0,\"c\":\"http://java.net/projects/servlet-spec/lists/jsr340-experts/archive/2011-05/message/18\",\"u\":\"http://java.net/projects/servlet-spec/lists/jsr340-experts/archive/2011-05/message/18\",\"h\":0,\"k\":null,\"i\":\"java.net\",\"t\":\"Servlet <b>Specification</b>: jsr340-experts@servlet-<b>spec</b>.java.net ...\"},{\"n\":\"d.js?q=http%20archive%20specification&l=us-en&p=1&s=30\"}]);"
          },
          "redirectURL": "",
          "headersSize": 267,
          "bodySize": 5554
        },
        "cache": {},
        "timings": {
          "blocked": 827,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 281,
          "receive": 265
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:26.853+11:00",
        "time": 1108,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/s.js?q=http%20archive%20specification",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "*/*"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [
            {
              "name": "q",
              "value": "http archive specification"
            }
          ],
          "headersSize": 371,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Content-Type",
              "value": "application/x-javascript; charset=UTF-8"
            },
            {
              "name": "Content-Length",
              "value": "0"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Fri, 23 Mar 2012 01:32:13 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "content": {
            "mimeType": "application/x-javascript",
            "size": 0
          },
          "redirectURL": "",
          "headersSize": 234,
          "bodySize": 0
        },
        "cache": {},
        "timings": {
          "blocked": 842,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 266,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.351+11:00",
        "time": 1170,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/1.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 373,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:15 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:15 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 269,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 62,
          "connect": 827,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.351+11:00",
        "time": 842,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/icon_triangle.v101.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 372,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:15 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "271"
            },
            {
              "name": "Last-Modified",
              "value": "Fri, 13 Jan 2012 18:36:15 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:15 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 271
          },
          "redirectURL": "",
          "headersSize": 290,
          "bodySize": 271
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 15,
          "connect": 562,
          "send": 0,
          "wait": 265,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.351+11:00",
        "time": 1466,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.groups.google.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 393,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "1150"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 1150
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 1150
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 62,
          "connect": 827,
          "send": 0,
          "wait": 577,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.351+11:00",
        "time": 1513,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.stevesouders.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 392,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "1406"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 1406
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 1406
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 62,
          "connect": 858,
          "send": 0,
          "wait": 593,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.351+11:00",
        "time": 1201,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.w3.org.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 382,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:15 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:15 GMT"
            },
            {
              "name": "Content-Length",
              "value": "894"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 894
          },
          "redirectURL": "",
          "headersSize": 270,
          "bodySize": 894
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 62,
          "connect": 858,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.351+11:00",
        "time": 1544,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.softwareishard.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 394,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "5430"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 5430
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 5430
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 62,
          "connect": 827,
          "send": 0,
          "wait": 655,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.351+11:00",
        "time": 1201,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/stackoverflow.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 389,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:15 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:15 GMT"
            },
            {
              "name": "Content-Length",
              "value": "1150"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 1150
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 1150
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 62,
          "connect": 858,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.351+11:00",
        "time": 1435,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/blogs.msdn.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 386,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "1150"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 1150
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 1150
        },
        "cache": {},
        "timings": {
          "blocked": 1170,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 265,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.351+11:00",
        "time": 1482,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.adobe.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 385,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "1150"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 1150
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 1150
        },
        "cache": {},
        "timings": {
          "blocked": 1201,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2465,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.fotoware.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 388,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "15086"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 15086
          },
          "redirectURL": "",
          "headersSize": 272,
          "bodySize": 15086
        },
        "cache": {},
        "timings": {
          "blocked": 1186,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 1279,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 1701,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/en.wikipedia.org.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 388,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "318"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 318
          },
          "redirectURL": "",
          "headersSize": 270,
          "bodySize": 318
        },
        "cache": {},
        "timings": {
          "blocked": 1420,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2044,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/ftp.ics.uci.edu.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 387,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 269,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 1451,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 593,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2122,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.tiffinmotorhomes.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 396,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "1406"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 1406
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 1406
        },
        "cache": {},
        "timings": {
          "blocked": 1467,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 655,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 1779,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.datasheetarchive.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 396,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "894"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 894
          },
          "redirectURL": "",
          "headersSize": 270,
          "bodySize": 894
        },
        "cache": {},
        "timings": {
          "blocked": 1498,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 1794,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.archives.gov.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 388,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "1150"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 1150
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 1150
        },
        "cache": {},
        "timings": {
          "blocked": 1529,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 265,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2293,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/imaging.nikon.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 389,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Length",
              "value": "3638"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 3638
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 3638
        },
        "cache": {},
        "timings": {
          "blocked": 1701,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 592,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 3089,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/neworleanspubliclibrary.org.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 399,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 269,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 1779,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 1310,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2059,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.archive.org.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 387,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Length",
              "value": "4286"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 4286
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 4286
        },
        "cache": {},
        "timings": {
          "blocked": 1794,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 265,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2902,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/scap.nist.gov.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 385,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 269,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 2044,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 858,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2980,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.openarchives.org.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 392,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 269,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 2059,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 921,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2808,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.rfc-archive.org.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 391,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 269,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 2122,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 686,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2559,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/blogs.oracle.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 388,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 269,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 2293,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 266,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 2761,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/www.faqs.org.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 384,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Length",
              "value": "3638"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 3638
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 3638
        },
        "cache": {},
        "timings": {
          "blocked": 2465,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 296,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 3697,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/support.jvc.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 387,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Length",
              "value": "13934"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 13934
          },
          "redirectURL": "",
          "headersSize": 272,
          "bodySize": 13934
        },
        "cache": {},
        "timings": {
          "blocked": 2559,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 1138,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 3495,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/landsat.usgs.gov.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 388,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:18 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:18 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 269,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 2761,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 734,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 3105,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/download.intel.com.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 390,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:17 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Age",
              "value": "4124"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 280,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 2808,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 297,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 3900,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/xml.coverpages.org.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 390,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:18 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from DS"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:18 GMT"
            },
            {
              "name": "Content-Length",
              "value": "43"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 43
          },
          "redirectURL": "",
          "headersSize": 269,
          "bodySize": 43
        },
        "cache": {},
        "timings": {
          "blocked": 2902,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 998,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 3541,
        "request": {
          "method": "GET",
          "url": "https://i.duckduckgo.com/i/java.net.ico",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "i.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 380,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:18 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/x-icon"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "X-Cache",
              "value": "Hit from MC"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "*"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=2592000"
            },
            {
              "name": "Expires",
              "value": "Sun, 22 Apr 2012 01:32:18 GMT"
            },
            {
              "name": "Content-Length",
              "value": "1150"
            }
          ],
          "content": {
            "mimeType": "image/x-icon",
            "size": 1150
          },
          "redirectURL": "",
          "headersSize": 271,
          "bodySize": 1150
        },
        "cache": {},
        "timings": {
          "blocked": 2980,
          "dns": 0,
          "connect": 0,
          "send": 0,
          "wait": 561,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:28.366+11:00",
        "time": 983,
        "request": {
          "method": "GET",
          "url": "https://builder.duckduckgo.com/b.js?q=http%20archive%20specification",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "builder.duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "*/*"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/?q=http+archive+specification"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [
            {
              "name": "q",
              "value": "http archive specification"
            }
          ],
          "headersSize": 379,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:15 GMT"
            },
            {
              "name": "Content-Type",
              "value": "application/x-javascript; charset=UTF-8"
            },
            {
              "name": "Transfer-Encoding",
              "value": "chunked"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Fri, 23 Mar 2012 01:32:14 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Content-Encoding",
              "value": "gzip"
            }
          ],
          "content": {
            "mimeType": "application/x-javascript",
            "size": 343,
            "text": "if (nrq) nrq([{\"r\":\"\",\"s\":\"format\"},{\"r\":\"\",\"s\":\"technical\"},{\"r\":\"\",\"s\":\"version\"},{\"r\":\"\",\"s\":\"support\"},{\"r\":\"\",\"s\":\"software\"},{\"r\":\"\",\"s\":\"preservation\"},{\"r\":\"\",\"s\":\"files\"},{\"r\":\"\",\"s\":\"content\"},{\"r\":\"\",\"s\":\"metadata\"},{\"r\":\"\",\"s\":\"based\"},{\"r\":\"\",\"s\":\"development\"},{\"r\":\"\",\"s\":\"group\"},{\"r\":\"\",\"s\":\"available\"},{\"r\":\"\",\"s\":\"mogul\"}])"
          },
          "redirectURL": "",
          "headersSize": 267,
          "bodySize": 161
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 655,
          "send": 0,
          "wait": 328,
          "receive": 0
        },
        "serverIPAddress": "176.34.131.233",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:29.427+11:00",
        "time": 874,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/side_button_off.v101.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 374,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "149"
            },
            {
              "name": "Last-Modified",
              "value": "Fri, 13 Jan 2012 18:36:15 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:16 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 149
          },
          "redirectURL": "",
          "headersSize": 290,
          "bodySize": 149
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 593,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:29.427+11:00",
        "time": 889,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/icon_plus.v102.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 368,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:16 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "212"
            },
            {
              "name": "Last-Modified",
              "value": "Wed, 01 Feb 2012 15:43:49 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:16 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 212
          },
          "redirectURL": "",
          "headersSize": 290,
          "bodySize": 212
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 608,
          "send": 0,
          "wait": 281,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      },
      {
        "pageref": "page_16683",
        "startedDateTime": "2012-03-23T12:35:31.783+11:00",
        "time": 826,
        "request": {
          "method": "GET",
          "url": "https://duckduckgo.com/assets/results_highlight_bg.v101.png",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Host",
              "value": "duckduckgo.com"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0"
            },
            {
              "name": "Accept",
              "value": "image/png,image/*;q=0.8,*/*;q=0.5"
            },
            {
              "name": "Accept-Language",
              "value": "en-us,en;q=0.5"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Referer",
              "value": "https://duckduckgo.com/s422.css"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            }
          ],
          "queryString": [],
          "headersSize": 379,
          "bodySize": -1
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "cookies": [],
          "headers": [
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Date",
              "value": "Fri, 23 Mar 2012 01:32:18 GMT"
            },
            {
              "name": "Content-Type",
              "value": "image/png"
            },
            {
              "name": "Content-Length",
              "value": "160"
            },
            {
              "name": "Last-Modified",
              "value": "Fri, 13 Jan 2012 18:36:15 GMT"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Expires",
              "value": "Sat, 23 Mar 2013 01:32:18 GMT"
            },
            {
              "name": "Cache-Control",
              "value": "max-age=31536000, public"
            },
            {
              "name": "Accept-Ranges",
              "value": "bytes"
            }
          ],
          "content": {
            "mimeType": "image/png",
            "size": 160
          },
          "redirectURL": "",
          "headersSize": 290,
          "bodySize": 160
        },
        "cache": {},
        "timings": {
          "blocked": 0,
          "dns": 0,
          "connect": 561,
          "send": 0,
          "wait": 265,
          "receive": 0
        },
        "serverIPAddress": "46.51.216.187",
        "connection": "443"
      }
    ]
  }
}
_FIREBUG_RESULTS_
ok($har->string($firebug_get_string), "Successfully read firebug har archive for https://duckduckgo.com/?q=http+archive+specification");
ok($har->version() eq '1.1', "INPUT: Firebug produces a version 1.1 http archive");
ok($har->creator()->name() eq 'Firebug', "INPUT: Firebug's creator name is 'Firebug'");
ok($har->creator()->version() eq '1.9', "INPUT: Pingdom's creator version is '1.9'");
ok(not(defined $har->creator()->comment()), "INPUT: Pingdom's creator comment is not defined");
ok($har->browser()->name() eq 'Firefox', "INPUT: Firebug's browser name is 'Firefox'");
ok($har->browser()->version() eq '11.0', "INPUT: Firebug's browser version is '11.0'");
ok(not(defined $har->browser()->comment()), "INPUT: Firebug's browser comment is not defined");
($firstEntry) = $har->entries();
ok(scalar $firstEntry->request()->headers() == 9, "INPUT: Firebug's archive first entry request has 9 headers");
my @headers = $firstEntry->request()->headers();
ok($headers[1]->name() eq 'User-Agent', "INPUT: Firebug's archive first entry second header has a name of 'User-Agent'");
ok($headers[1]->value() eq 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0', "INPUT: Firebug's archive first entry second header has a value of 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0'");
my @queryString = $firstEntry->request()->queryString();
ok($queryString[0]->name() eq 'q', "INPUT: Firebug's archive first entry first query parameter has a name of 'q'");
ok($queryString[0]->value() eq 'http archive specification', "INPUT: Firebug's archive first entry first query parameter has a value of 'http archive specification'");
ok($firstEntry->request()->headersSize(undef) == 394, "INPUT: Firebug's archive first entry request has a header size of 394");
ok(not(defined $firstEntry->request()->headersSize(-1)), "INPUT: Firebug's archive first entry request has a header size that is not defined (after being set to undef)");
ok(not(defined $firstEntry->request()->headersSize(394)), "INPUT: Firebug's archive first entry request has a header size that is not defined (after being set to -1)");
ok(not(defined $firstEntry->request()->bodySize()), "INPUT: Firebug's archive first entry request has a body size that is not defined");
ok(not(defined $firstEntry->request()->postData()), "INPUT: Firebug's archive first entry request has a post data reference that is not defined");
my $firebug_ref = JSON::decode_json($har->string());
ok($firebug_ref->{log}->{version} eq '1.1', "OUTPUT: Firebug produces a version 1.1 http archive");
ok($firebug_ref->{log}->{creator}->{name} eq 'Firebug', "OUTPUT: Firebug's creator name is 'Firebug'");
ok($firebug_ref->{log}->{creator}->{version} eq '1.9', "OUTPUT: Firebug's creator version is '1.9'");
ok(not(exists $firebug_ref->{log}->{creator}->{comment}), "OUTPUT: Firebug's creator comment does not exist");
ok($firebug_ref->{log}->{browser}->{name} eq 'Firefox', "OUTPUT: Firebug's browser name is 'Firefox'");
ok($firebug_ref->{log}->{browser}->{version} eq '11.0', "OUTPUT: Firebug's browser version is '11.0'");
ok(not(exists $firebug_ref->{log}->{browser}->{comment}), "OUTPUT: Firebug's browser comment does not exist");
ok($firebug_ref->{log}->{entries}->[0]->{request}->{headers}->[1]->{name} eq 'User-Agent', "OUTPUT: Firebug's archive first entry second header has a name of 'User-Agent'");
ok($firebug_ref->{log}->{entries}->[0]->{request}->{headers}->[1]->{value} eq 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0', "OUTPUT: Firebug's archive first entry second header has a value of 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0'");
ok($firebug_ref->{log}->{entries}->[0]->{request}->{queryString}->[0]->{name} eq 'q', "OUTPUT: Firebug's archive first entry first query parameter has a name of 'q'");
ok($firebug_ref->{log}->{entries}->[0]->{request}->{queryString}->[0]->{value} eq 'http archive specification', "OUTPUT: Firebug's archive first entry first query parameter has a value of 'http archive specification'");
ok($firebug_ref->{log}->{entries}->[0]->{request}->{headersSize} eq '394', "OUTPUT: Firebug's archive first entry has a header size of 394");
$firstEntry->request()->headersSize(undef);
$firebug_ref = JSON::decode_json($har->string());
ok($firebug_ref->{log}->{entries}->[0]->{request}->{headersSize} eq '-1', "OUTPUT: Firebug's archive first entry has a header size of '-1' (after being set to undef)");
$firstEntry->request()->headersSize(-1);
$firebug_ref = JSON::decode_json($har->string());
ok($firebug_ref->{log}->{entries}->[0]->{request}->{headersSize} eq '-1', "OUTPUT: Firebug's archive first entry has a header size of '-1' (after being set to -1)");
ok($firebug_ref->{log}->{entries}->[0]->{request}->{bodySize} eq '-1', "OUTPUT: Firebug's archive first entry has a body size of '-1'");
ok(not(exists $firebug_ref->{log}->{entries}->[0]->{request}->{postData}), "OUTPUT: Firebug's archive first entry does not have a postData reference");

