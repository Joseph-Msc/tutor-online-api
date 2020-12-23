<?php

class MySQLiLocal
{
    private MySQLi $mysqli;

    public function __construct()
    {
        $this->mysqli = new mysqli("localhost", "root", null, "friends");
    }

    final public function getConnection(): MySQLi
    {
        return $this->mysqli;
    }
}
