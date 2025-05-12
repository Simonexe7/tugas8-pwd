<?php

define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'jam_tidur_mahasiswa');

class Database 
{
    public $mysqli;

    public function __construct()
    {
        $this->mysqli = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        if($this->mysqli->connect_errno){
            echo "Gagal menghubungkan ke mysqli : ".$this->mysqli->connect_error;
        }
    }

    public function select($table, $where = NULL)
    {
        $sql = ("SELECT * FROM $table");
        if($where != NULL){
            $sql .= "WHERE ";
            $row = null;

            if(count($where) == 1){
                foreach ($where as $key => $value) {
                    $sql .= $key."='".$value."'";
                }
            } else {
                foreach ($where as $key => $value) {
                    $row .= $key."='".$value."'AND ";
                }
                $sql .= substr($row, 0, -4);
            }
        }
        $result = $this->mysqli->query($sql) or trigger_error('Wrong SQL: ' . $sql . ' Error: ' . $this->mysqli->error, E_USER_ERROR);
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function __destruct()
    {
        $this->mysqli->close();
    }
}