<?php

if (isset($_POST["price"])) {
    setcookie("price", $_POST["price"], time() + (86400 * 30), "/");
    setcookie("event_id", $_POST["event_id"], time() + (86400 * 30), "/");
    header("location:test.php");
}
?>