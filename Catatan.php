<?php

require_once "Database.php";
$mysqli = new Database();

class Catatan
{
    public $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function tampilData($table, $where = NULL)
    {
        return $this->db->select($table, $where);
    }
}