<?php

class Friend {
    public function entity($id): void {
        global $mysqli;
        try {
            $result = $mysqli->getConnection()
                ->query('SELECT * FROM family_friends WHERE id = ' . $id);
            $results = $result->fetch_assoc();

            if($results) {
                Response::send(
                    $results
                );
            } else {
                Response::notFound();
            }
        } catch (Exception $exception) {
            Response::error500($exception->getMessage());
        }
    }
}