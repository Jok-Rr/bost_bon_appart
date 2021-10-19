<?php

function flashError()
{
    if (!empty($_SESSION['error']["flash_message"])) {
        $message = '<p class="alert-error">' . $_SESSION['error']["flash_message"] . '</p>';
        unset($_SESSION['error']["flash_message"]);
        return $message;
    }
}

function flashSuccess()
{
    if (!empty($_SESSION['success']["flash_message"])) {
        $message = '<p class="alert-success">' .  $_SESSION['success']["flash_message"] . '</p>';
        unset($_SESSION['success']["flash_message"]);
        return $message;
    }
}
