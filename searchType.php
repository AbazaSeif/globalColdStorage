<?php
session_start();
if (isset($_REQUEST['searchtype'])) {
    $_SESSION['searchtype'] = $_REQUEST['searchtype'];
} else {
    $_SESSION['searchtype'] = 1;
}

?>