<?php
class Conectar{
    protected $dbh;
    protected function Conexion(){
        try {
            // TODO: Conexion a base de datos local
            //$conectar=$this->dbh = new PDO("mysql:host=localhost;dbname=paginawebphp", "root", "");
            // TODO: Conexion a base de datos HEROKU
            $conectar=$this->dbh = new PDO("mysql:host=us-cdbr-east-06.cleardb.net;dbname=heroku_646cd8936eb6efd", "b560f920f19b0e", "5cc9f806");
            return $conectar;
        } catch (Exception $e) {
            print "Error: ".$e->getMessage();
            die();
        }
    }

    public function set_names() {
        return $this->dbh->query("SET NAMES 'utf8'");
    }   
}
?>  