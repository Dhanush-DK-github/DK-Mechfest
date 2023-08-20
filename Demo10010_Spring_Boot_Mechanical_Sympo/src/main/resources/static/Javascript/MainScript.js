
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
                console.log("Timer elapsed");
                location.reload();
            };

            function timerReset() {
                console.log("Reseting timer");
                clearTimeout(timer);
                timer = setTimeout(timerElapsed, 5 * 60 * 1000); // 5 mins
            }