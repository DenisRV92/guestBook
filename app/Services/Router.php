<?php

require "Controller/GuestController.php";

class Router
{
    /**
     * Взависимости от url включает нужный метод;
     */
    public static function run()
    {
        $query = $_GET['route'];

        if ($_GET['userName'] || $_GET['email'] || $_GET['date']) {
            GuestController::examinationGetRequest($_GET);
        }
        if ($query == '') {
            GuestController::show();
        } elseif ($query === 'add_message' && $_SERVER['REQUEST_METHOD'] === 'POST') {
            GuestController::clearData($_POST);
        } else {
            header('Location: /');
        }
    }
}
