<?php

class FamilyMember {
    public function entity($FamilyMemberId): void {
        global $mysqli;
        try {
            $result = $mysqli->getConnection()
                ->query('SELECT * FROM family_members WHERE id = ' . $FamilyMemberId);
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