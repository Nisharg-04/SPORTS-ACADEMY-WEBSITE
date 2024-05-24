<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>add_event</title>
</head>

<body>
    <?php
    require ("db.php");
    if (isset($_POST["event_id"])) {
        $event_id = $_POST["event_id"];
        $find = "SELECT * FROM `event` WHERE `event_id` = '$event_id'";
        $result = mysqli_query($conn, $find);
        echo "$_POST[title]";
        if (mysqli_num_rows($result) > 0) {

            $event_id = $_POST["event_id"];
            $sql = "DELETE FROM `event` WHERE `event`.`event_id` = '$event_id'";
            if (mysqli_query($conn, $sql) == TRUE) {
                echo "<script>alert('Event deleted successfully')</script>";
                echo "<script>location.href='dashboard.php'</script>";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        } else {
            echo "<script>alert('Event not found')</script>";
            // echo "<script>location.href='dashboard.php'</script>";
        }
    }
    $conn->close();
    ?>
</body>

</html>