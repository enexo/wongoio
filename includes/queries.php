<?php

namespace database;

class Queries {

    public $dbConnection;

    /**
     * Establishes the connection within the class
     *
     * Queries constructor.
     * @param $connection
     */
    public function __construct($connection) {
        $this->dbConnection = $connection;
    }

    /**
     * Takes table name, returns all data
     *
     * @param $tableName
     * @return array|null
     */
    public function getSelectOptions($tableName) {
        $results = mysqli_query($this->dbConnection, "SELECT * FROM {$tableName}");
        return mysqli_fetch_all($results);
    }

    /**
     * Takes tableName, and where clause and returns singular row from that table
     *
     * @example whereClause = ("catOption = 1")
     *
     * @param $tableName
     * @param $whereClause
     * @return array|null
     */
    public function getRow($tableName, $whereClause) {
        $results = mysqli_query($this->dbConnection, "SELECT * FROM {$tableName} WHERE {$whereClause}");
        return mysqli_fetch_row($results);
    }

    // standard comment

    /*
     * block comment
     * multiple rows
     */

    /**
     * Takes tablename, columnName, whereclause and returns single column
     *
     * @example return = [0] => ["Desktop"]
     *
     * @param $tableName string
     * @param $columnName string
     * @param $whereClause string
     * @return array
     */
    public function getColumnValue($tableName, $columnName, $whereClause) {
        $results = mysqli_query($this->dbConnection, "SELECT {$columnName} FROM {$tableName} WHERE {$whereClause}");
        return mysqli_fetch_row($results);
    }

}