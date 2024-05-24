<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
</head>

<body>
    <?php
    $conn = new mysqli("localhost", "root", "", "project");
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $fname = $_POST["fname"];
    $mname = $_POST["mname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];
    $mobile = $_POST["mobile"];
    $street = $_POST["street"];
    $city = $_POST["city"];
    $state = $_POST["state"];
    $pincode = $_POST["pincode"];
    $bloodgroup = $_POST["bloodgroup"];
    $emergencymobile = $_POST["emergencyMobile"];
    $password = $_POST["password"];
    $gender = $_POST["gender"];

    // echo "fname : " . $fname;
    // echo "mname : " . $mname;
    // echo "lname : " . $lname;
    // echo "email : " . $email;
    // echo "mobile : " . $mobile;
    // echo "street : " . $street;
    // echo "city : " . $city;
    // echo "state : " . $state;
    // echo "pincode : " . $pincode;
    // echo "bloodgroup : " . $bloodgroup;
    // echo "emergencymobile : " . $emergencymobile;
    // echo "password :" . $password;
    // echo "gender : " . $gender;
    
    $find = "select * from `user` where `email` = '$email'";
    $result = $conn->query($find);
    if ($result->num_rows > 0) {
        echo "Email already exists";
        $conn->close();
    } else {
        $sql = "INSERT INTO `user` (`fname`, `mname`, `lname`, `email`, `mobile`, `street`, `city`, `state`, `pincode`, `bloodgroup`, `emergencymobile`, `password`, `gender`) VALUES ('$fname', '$mname', '$lname', '$email', '$mobile', '$street', '$city', '$state', '$pincode', '$bloodgroup', '$emergencymobile', '$password', '$gender');";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            echo "New record created successfully";
            ?>
            <!-- <script>
                window.location.href = "program_selection.html";
            </script> -->
            <?php
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();
    }
    ?>

</body>

</html>