
            var timer;

            window.onload = timerReset;
            document.onkeypress = timerReset;
            document.onmousemove = timerReset;
            document.onmousedown = timerReset; 
            document.ontouchstart = timerReset;
            document.onclick = timerReset;
            document.onscroll = timerReset;
            document.onkeypress = timerReset;

            function timerElapsed() {
                location.reload();
            };

            function timerReset() {

                clearTimeout(timer);
                timer = setTimeout(timerElapsed, 5 * 60 * 1000); // 5 mins
            }