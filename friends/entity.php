<?php

class Friend
{
    final public function entity(string | int $id): void
    {
        global $mysqli;
        try {
            $result = $mysqli->getConnection()
                ->query('SELECT * FROM family_friends WHERE id = ' . $id);
            $results = $result->fetch_assoc();

            if ($results) {
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

    final public function createEntity(): void
    {
        global $mysqli;
        try {
            $firstName = $_POST['first_name'];
            $lastName = $_POST['last_name'];
            if (!$firstName || !$lastName) {
                throw new Exception('Cannot insert!');
            }
            $conn = $mysqli->getConnection();

            if ($this->getEntityByFirstLastName($firstName, $lastName, $conn)) {
                throw new Exception('Already Exists!');
            }

            $query = "INSERT INTO family_friends (first_name, last_name) VALUES ('${firstName}', '${lastName}')";
            $query = mysqli_query($conn, $query);
            $result = $this->getEntityByFirstLastName($firstName, $lastName, $conn);

            if (!$query || !$result) {
                throw new Exception('Something gone wrong!');
            }

            $result = $conn->query('SELECT * FROM family_friends WHERE id = ' . $result['id'])
                ->fetch_assoc();

            if ($result) {
                Response::send(
                    $result
                );
            } else {
                Response::notFound();
            }
        } catch (Exception $exception) {
            Response::error500($exception->getMessage());
        }
    }

    final public function deleteEntity(string | int $id): void {
        global $mysqli;
        try {
            $conn = $mysqli->getConnection();
            $entity = $this->getEntityById($id, $conn);

            if (!$entity) {
                Response::notFound(
                    [
                        'user' => $id
                    ]
                );
            } else {
                $query = $conn->query("DELETE FROM family_friends WHERE id = ${entity['id']}");
                if($query) {
                    Response::noContent();
                } else {
                    throw new Exception('Something gone wrong on DELETE!');
                }
            }
        } catch (Exception $exception) {
            Response::error500($exception->getMessage());
        }
    }

    private function getEntityByFirstLastName(string $firstName, string $lastName, $conn)
    {
        $query = $conn->query(
            "SELECT * FROM family_friends WHERE first_name = '${firstName}' AND last_name = '${lastName}'"
        );
        return $query ? $query->fetch_assoc() : null;
    }

    private function getEntityById(string | int $id, $conn)
    {
        $query = $conn->query(
            "SELECT * FROM family_friends WHERE id = ${id}"
        );
        return $query ? $query->fetch_assoc() : null;
    }
}