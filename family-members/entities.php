<?php

class FamilyMembers
{
    final public function entities($familyFriendId): void
    {
        global $mysqli;
        try {
            $select = 'ff.id as family_friend_id, fm.id as family_member_id,';
            $select .= "CONCAT(ff.first_name, ' ', ff.last_name) AS family_friend,";
            $select .= "CONCAT(fm.first_name, ' ', fm.last_name) AS family_member";
            $result = $mysqli->getConnection()->query(
                "SELECT ${select} FROM family_friends as ff"
                . ' LEFT JOIN family_friends_family_members as fffm ON fffm.family_friend_id = ff.id'
                . ' LEFT JOIN family_members as fm ON fffm.family_member_id = fm.id'
                . ' WHERE ff.id = ' . $familyFriendId
            );

            $results = $result->fetch_all(MYSQLI_ASSOC);
            $response = [
                'id' => $results[0]['family_friend_id'],
                'first_last_name' => $results[0]['family_friend'],
                'family_members' => []
            ];

            foreach ($results as $row) {
                $response['family_members'][] = [
                    'id' => $row['family_member_id'],
                    'first_last_name' => $row['family_member']
                ];
            }

            Response::send($response);
        } catch (Exception $exception) {
            Response::error500($exception->getMessage());
        }
    }
}
