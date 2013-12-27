<html>
<head>
    <!-- Use '@resource.javascript' instead of 'script' -->
    <script>

        $j(document).ready(function () {
            $j("#testGetButton").click(function () {
                $j.ajax({
                    url: "/api/fu/test",
                    type: 'GET',
                    dataType: 'json',
                    success: function (data) {
                        alert("[Success] " + data.response);
                    },
                    error: function (data) {
                        alert("[Error]");
                    }
                });
            });

            $j("#testPostButton").click(function () {
                $j.ajax({
                    url: "/api/fu/testp",
                    type: 'POST',
                    dataType: 'json',
                    contentType: 'application/json',
                    success: function (data) {
                        alert("[Success] " + data.response);
                    },
                    error: function (data) {
                        alert("[Error]");
                    }
                });
            });

            $j("#retrieveUserButton").click(function () {
                $j.ajax({
                    url: "/api/fu/user",
                    type: 'GET',
                    dataType: 'json',
                    contentType: 'application/json',
                    success: function (data) {
                        alert("[Success] " + data.name + " - " + data.city);
                    },
                    error: function (data) {
                        alert("[Error]");
                    }
                });
            });

            $j("#createUserButton").click(function () {
                $j.ajax({
                    url: "/api/fu/userx",
                    type: 'POST',
                    dataType: 'json',
                    contentType: 'application/json',
                    //data: "{'name': 'Soham', 'city': 'Bangalore'}",
                    data: JSON.toString("{'name': 'Soham', 'city': 'Bangalore'}"),
                    //data: "{\"singer\":\"Metallica\",\"title\":\"Fade To Black\"}",
                    success: function (data) {
                        alert("[Success] Response: " + data.response);
                    },
                    error: function (data) {
                        alert("[Error]");
                    }
                });
            });


        });
    </script>
</head>

<body>
    <button id="testGetButton">Test GET</button>
    <br/>
    <button id="testPostButton">Test POST</button>
    <br/>
    <button id="retrieveUserButton">Retrieve User</button>
    <br/>
    <button id="createUserButton">Create User</button>
    <br/>
</body>

</html>