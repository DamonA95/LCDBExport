<?php

Class CMyMySQLi {

// our mysqli object instance
    PUBLIC $mysqli = null;
    Public $Version = "1.0.35";

    Public Function GetExportPath() {
        $ReadConfigFile = parse_ini_file( "config.ini", TRUE );
        return $ReadConfigFile[ "Main" ][ "ExportPath" ];
    }

    Public Function GetDatabaseName() {
        $ReadConfigFile = parse_ini_file( "config.ini", TRUE );
        return $ReadConfigFile[ "DataBase" ][ "LastChaosDB" ];
    }

    PUBLIC FUNCTION GetCharset() {
        @$id = $this->clearText( $_GET[ 'charset' ] );
        if ( !isset( $id ) ) {
            $id = "utf8";
            return $id;
        } else {
            if ( $id == "" ) {
                $id = "utf8";
                return $id;
            } else {
                if ( $id == "undefined" ) {
                    $id = "utf8";
                    return $id;
                } else {
                    return $id;
                }
            }
        }
    }

// Class constructor override
    PUBLIC FUNCTION __construct() {


        $ReadConfigFile = parse_ini_file( "config.ini", TRUE );
        $DB_SERVER = $ReadConfigFile["MySQL"]["Host"];
        $DB_USER = $ReadConfigFile["MySQL"]["User"];
        $DB_PASS = $ReadConfigFile["MySQL"]["Password"];
        
        $DB_NAME_EXPORTER = $ReadConfigFile["DataBase"]["ExporterDB"];

        $this->mysqliExporter = new mysqli( $DB_SERVER, $DB_USER, $DB_PASS, $DB_NAME_EXPORTER );


        $DB_NAME = $this->GetDatabaseName();
        $this->mysqliLC = new mysqli( $DB_SERVER, $DB_USER, $DB_PASS, $DB_NAME );


        if ( $this->mysqliLC->connect_errno OR $this->mysqliExporter->connect_errno ) {
            echo "Error MySQLi: (" & nbsp . $this->mysqli->connect_errno
            . ") " . $this->mysqliLC->connect_error;
            exit();
        }
        $sCharset = "utf8";
        $Charset = $this->GetCharset();

        if ( $Charset == "gb2312" ) {
            $sCharset = "gb2312";
        }
        if ( $Charset == "iso-8859-1" ) {
            $sCharset = "iso-8859-1";
        }

        $this->mysqliLC->set_charset( $sCharset );
        $this->mysqliExporter->set_charset( "utf8" );
    }

    PUBLIC FUNCTION clearText( $text ) {
        $text = trim( $text );
        if ( get_magic_quotes_gpc() ) {
            $text = stripslashes( $text );
        }
        return $this->mysqliLC->real_escape_string( $text );
    }

    PUBLIC FUNCTION CountRow( $query = "0", $whichRow = "0" ) {
        $row = 0;
        if ( $stmt = $this->mysqliLC->prepare( $query ) ) {
            $stmt->execute();
            $res = $stmt->get_result();
            $row = $res->num_rows;
        } else {
            $this->Msg( "[Query Error] " . $this->mysqliLC->error, "error" );
        }
        return $row;
    }

}

?>
