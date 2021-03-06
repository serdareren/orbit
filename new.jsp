<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="mainbody">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Planet Orbit</title>  
        <style>
            body,html{margin: 0;padding: 0;border: 0;width: 100%;height: 100%;display: block;overflow: hidden;}
            #frame2 { position: absolute; top: 50%; left: 50%; width: 1280px; height:720px; transform-origin: center center;background-color: white;
                      margin: -360px 0 0 -640px;padding: 0; border: 0 none;    overflow-y:scroll !important;
                      overflow-x:hidden !important;
                      overflow:hidden; }
             
        </style>
        <script src="Script/jquery-3.1.0.min.js" type="text/javascript"></script>
        <script>
            $(function () {
                $(window).resize(resizeIFrame);
            });
            
            function resizeIFrame() {
              var widthScale = $(window).width() / 1280;
              var heightScale = $(window).height() / 720;
              var scale = Math.min(widthScale, heightScale);
              $('#frame2').css('transform', 'scale(' + scale + ')');
            }
            
            var isFullScreen = 0;
            function toggleFullScreen() {
                console.log(111);
                var docElm = document.getElementById("mainbody");

                if (isFullScreen === 0) {
                    if (docElm.requestFullscreen) {
                        docElm.requestFullscreen();
                    }
                    else if (docElm.mozRequestFullScreen) {
                        docElm.mozRequestFullScreen();
                    }
                    else if (docElm.webkitRequestFullScreen) {
                        docElm.webkitRequestFullScreen();
                    }
                    else if (docElm.msRequestFullscreen) {
                        docElm.msRequestFullscreen();
                    }
                    isFullScreen = 1;
                } else {
                    if (document.exitFullscreen) {
                        document.exitFullscreen();
                    }
                    else if (document.mozCancelFullScreen) {
                        document.mozCancelFullScreen();
                    }
                    else if (document.webkitCancelFullScreen) {
                        document.webkitCancelFullScreen();
                    }
                    else if (document.msExitFullscreen) {
                        document.msExitFullscreen();
                    }
                    isFullScreen = 0;
                }


            }
        </script>

    </head>
    <body onload="resizeIFrame();" > 
        <iframe src="index.html" 
                name="frame2" 
                id="frame2"  
                frameborder=0 
                marginwidth=0 
                marginheight=0
                scrolling="no">
        </iframe>
    </body>
</html>
