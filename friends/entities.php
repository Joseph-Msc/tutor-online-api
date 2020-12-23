<?php

class Friends
{
    public function entities(): void
    {
        global $mysqli;
        try {
            $result = $mysqli->getConnection()->query('SELECT * FROM family_friends');

            Response::send(
                $result->fetch_all(MYSQLI_ASSOC)
            );
        } catch (Exception $exception) {
            Response::error500($exception->getMessage());
        }
    }
}
