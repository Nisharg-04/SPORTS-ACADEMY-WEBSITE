<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
</head>

<body>
    <?php
    $conn = new mysqli("localhost", "root", "", "project");
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }


    $email = $_POST["email"];
    $password = $_POST["password"];

    // echo "email : " . $email;
    // echo "password : " . $password;


    $find = "select * from `user` where `email` = '$email'";
    $result = $conn->query($find);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if ($row["password"] == $password) {
            echo "Login successful";
            ?>
            <script>
                window.location.href = "index.html";
            </script>
            <?php
        } else {
            echo "Incorrect password";
        }
    } else {
        echo "Email does not exist";
    }
    $conn->close();
    ?>

</body>

</html>