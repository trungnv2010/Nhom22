<html>

<head>
    <title>Date Time Processing Exercise</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container">
        <font size=5 color="blue">Date Time Processing Exercise</font>
        <br>
        <br>
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
            <div class="form-group form-row">
                <label>Your name: </label>
                <input type="text" size="10" maxlength="15" name="name" class="form-control">
            </div>
            <div class="form-group">
                <label>Date:</label>
                <div class="row form-row">
                    <div>
                        <select name="day" id="day" class="form-control">
                        </select>
                    </div>
                    <div>
                        <select name="month" id="month" onchange="generate_date()" class="form-control">
                        </select>
                    </div>
                    <div>
                        <select name="year" id="year" onchange="generate_date()" class="form-control">
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label>Time:</label>
                <div class="form-row">
                    <div>
                        <select name="hour" id="hour" class="form-control">
                        </select>
                    </div>
                    <div>
                        <select name="minute" id="minute" class="form-control">
                        </select>
                    </div>
                    <div>
                        <select name="second" id="second" class="form-control">
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group form-row mt-5">
                <button class="btn btn-primary mr-5" type="SUBMIT" name="submit">Submit</button>
                <button class="btn btn-secondary" type="RESET" name="reset">Reset</button>
            </div>
        </form>
        <p style="size:5; color:blue ">KẾT QUẢ:</p>

        <?php
        function isBissextile($year)
        {
            if ((int)$year % 4 === 0) {
                if ((int)$year % 100 === 0 && (int)$year % 400 === 0) {
                    return true;
                } else {
                    return true;
                }
            }
            return false;
        }
        if (isset($_GET['submit'])) {
            $name = $_GET['name'];
            $year = $_GET['year'];
            $month = $_GET['month'];
            $day = $_GET['day'];
            $hour = $_GET['hour'];
            $minute = $_GET['minute'];
            $second = $_GET['second'];
            print("<p>Hi " . $name . "!\n </p>");
            print("<p>You have choose to have an appointment on " . $hour . ":" . $minute . ":" . $second . ", " . $day . "/" . $month . "/" . $year . "</p>");
            print("<p>More infomation</p>");
            print("In 12 hours, the time and date is " . ($hour > 12 ? $hour - 12 : $hour) . ":" . $minute . ":" . $second . ($hour > 12 ? " PM" : " AM") . ", " . $day . "/" . $month . "/" . $year);
            $thirty_one = array("1", "3", "5", "7", "8", "10", "12");
            $thiry = array("4", "6", "9", "11");
            switch (true) {
                case in_array($month, $thirty_one):
                    print("<p>This one has 31 days</p>");
                    break;
                case in_array($month, $thiry):
                    print("<p>This one has 30 days</p>");
                    break;
                case $month === "2":
                    print("<p>This one has " . (isBissextile($year) ? 29 : 28) . " days</p>");
                    break;
                default:
                    break;
            }
        }

        if (isset($_GET['reset'])) {
            $name = "";
            $year = "1960";
            $month = "1";
            $day = "1";
            $hour = "1";
            $minute = "1";
            $second = "1";
        }

        ?>
    </div>

    <script type='text/javascript'>
        console.log(window.getSelection())
        const isBissextile = (year) => {
            if (year % 4 === 0) {
                if (year % 100 === 0 && year % 400 === 0) {
                    return true
                } else {
                    return true
                }
            }
            return false
        }

        const generate = (node_id, limit) => {
            for (let i = 1; i <= limit; i++) {
                const node = document.createElement('option');
                const value = document.createTextNode(i);
                node.appendChild(value);
                node.setAttribute('value', i);
                document.getElementById(node_id).appendChild(node);
            }
        }

        window.addEventListener("load", () => {
            for (let i = 1960; i <= 2021; i++) {
                const node = document.createElement('option');
                const value = document.createTextNode(i);
                node.appendChild(value);
                node.setAttribute('value', i);
                document.getElementById('year').appendChild(node);
            }
            generate('hour', 24);
            generate('minute', 60);
            generate('second', 60);
            generate('month', 12);
            generate('day', 31);
        })

        function generate_date() {
            const year = document.getElementById('year').value;
            console.log("year", year)
            const month = document.getElementById('month').value;
            const day = document.getElementById('day');
            while (day.hasChildNodes()) {
                day.removeChild(day.firstChild);
            }
            switch (true) {
                case [1, 3, 5, 7, 8, 10, 12].includes(parseInt(month)):
                    generate('day', 31);
                    break;

                case [4, 6, 9, 11].includes(parseInt(month)):
                    generate('day', 30);
                    break;

                case parseInt(month) === 2:
                    generate('day', isBissextile(parseInt(year)) ? 29 : 28);
                    break;

                default:
                    break;
            }
        }
    </script>
</body>

</html>