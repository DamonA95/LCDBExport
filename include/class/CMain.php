<?php

include_once('CMySQLi.php');

class CMain extends CMyMySQLi { 

    PUBLIC FUNCTION GetSiteID() {
        @$id = $this->clearText( $_GET[ 'site' ] );

        if ( !isset( $id ) ) {
            $id = "home";
            return $id;
        } else {
            if ( $id == "" ) {
                $id = "home";
                return $id;
            } else {
                if ( $id == "undefined" ) {
                    $id = "home";
                    return $id;
                } else {
                    return $id;
                }
            }
        }
    }

    PUBLIC FUNCTION GetDo() {
        @$id = $this->clearText( $_GET[ 'do' ] );

        if ( !isset( $id ) ) {
            $id = "-1";
            return $id;
        } else {
            if ( $id == "" ) {
                $id = "-1";
                return $id;
            } else {
                if ( $id == "undefined" ) {
                    $id = "-1";
                    return $id;
                } else {
                    return $id;
                }
            }
        }
    }

    Protected Function Msg( $String, $type ) {
        $dateNow = date( 'd.m.Y, H:i:s' );
        if ( $type == "success" ) {
            echo "<div id='MSG_success'>[$dateNow] $String </div> ";
        } elseif ( $type == "error" ) {
            echo "<div id='MSG_error'>[$dateNow] $String </div> ";
        } elseif ( $type == "normal" ) {
            echo "<div id='MSG_normal'>[$dateNow] $String </div> ";
        } elseif ( $type == "errorquery" ) {
            echo "<div id='MSG_error'>[$dateNow][Query Error] $String </div> ";
        }
    }

    Public Function GetType( $Table ) {
        if ( $Table != "none" ) {
            $query = "SELECT * FROM $Table";         
            $stmt = $this->mysqliExporter->prepare( $query );
            if ( $stmt = $this->mysqliExporter->prepare( $query ) ) {
                // $stmt->bind_param( 's', $LoginSalt );
                $stmt->execute();
                $res = $stmt->get_result();
            }else {
            var_dump( $this->mysqliExporter->error );
        }

            while ( $row = $res->fetch_assoc() ) {
                //$arrayString .= $row["a_type"];
                $array[] = $row[ 'a_type' ];               
            }
            return $array;
        } else {
            return 0;
        }
    }

    Public Function GetTable( $Table ) {
        if ( $Table != "none" ) {
            $query = "SELECT * FROM $Table";
            $stmt = $this->mysqliExporter->prepare( $query );

            if ( $stmt = $this->mysqliExporter->prepare( $query ) ) {
                //$stmt->bind_param( 's', "2" );
                $stmt->execute();
                $res = $stmt->get_result();
            }

            while ( $row = $res->fetch_assoc() ) {
                $array[] = $row[ 'a_table' ];
            }
            return $array;
        } else {
            return 0;
        }
    }

    Public Function LoadMenu( $Do ) {    

            $Array = array( "1", "2" );

            $query1 = "SELECT * FROM t_lods WHERE a_enable = '1' ORDER BY a_name ";
            $stmt1 = $this->mysqliExporter->prepare( $query1 );

            if ( $stmt1 = $this->mysqliExporter->prepare( $query1 ) ) {
                // $stmt->bind_param( 's', $LoginSalt );
                $stmt1->execute();
                $res1 = $stmt1->get_result();
            }

            $i = 0;
            while ( $i < count( $Array ) ) {

                $Test = $Array[ $i ];
                $query = "SELECT * FROM t_lods WHERE a_enable = '1' AND a_category='$Test' ORDER BY a_name ";
                $stmt = $this->mysqliExporter->prepare( $query );

                if ( $stmt = $this->mysqliExporter->prepare( $query ) ) {
                    // $stmt->bind_param( 's', $LoginSalt );
                    $stmt->execute();
                    $res = $stmt->get_result();
                }
                $CategoryName = "";

                if ( $Test == 1 ) {
                    $CategoryName = "2015 Lod's: ";
                } elseif ( $Test == 2 ) {
                    $CategoryName = "2015 String Lod's: ";
                }

                //echo "<ul style='float: left; margin-right: 1em; margin-top: 0;'> <h2 style='padding-left: 1em;'>$RightVersion</h2>";           
                echo "<table>";

                echo "<form action='index.php' method='get'>";
                echo "<tr>";
                echo "<td class='first'><b>$CategoryName</b> <input type='hidden' name='site' value='export'></td>";
                echo "<td class='second'><select name='do'>";
                while ( $row = $res->fetch_assoc() ) {
                    $name = $row[ 'a_name' ];
                    $filename = $row[ 'a_filename' ];
                    //echo "<a class='exportLink' href='index.php?site=export&do=$name'>$name</a>      ";
                    //echo "<li style='list-style-type: none;  '><a href='index.php?site=export&do=$name'> $name </a></li>";                
                    if ( $Do == $name ) {
                        echo "<option value='$name' selected>$name</option>";
                    } else {
                        echo "<option value='$name'>$name</option>";
                    }
                }
                echo "</select></td>";
                //    echo "<input type='hidden' name='charset' value='$valueRadio'>";                
                echo "<td class='third'><input type='submit' value='Export' id='loginBtn2' style='color:#333; margin: 0;'></td>";

                $MySQLi = new CMyMySQLi;
                $sCharset = $MySQLi->GetCharset();
                $charsetRadio = array( "utf8", "gb2312", "iso-8859-1" );
                echo "<td>";
                for ( $countI = 0; $countI < count( $charsetRadio ); $countI++ ) {
                    $valueRadio = $charsetRadio[ $countI ];
                    if ( $sCharset == $valueRadio ) {
                        $checkedText = "checked='checked'";
                    } else {
                        $checkedText = "";
                    }
                    echo "<input type='radio' name='charset' value='$valueRadio' $checkedText>$valueRadio";
                }
                echo "</td></tr>";

                echo "</form>";
                echo "</table>";
                $i++;
            }

            echo "<table>";
            echo "<form action='index.php' method='get'>";
            echo "<tr>";
            echo "<td class='first'><b>Database Scripts:</b></td>";
            echo "<td class='second'><select name='site'>";
            echo "<option value='renameMagic' selected>Rename t_magic with t_skill</option>";
             echo "<option value='renameShop' selected>Rename t_shop with t_npc</option>";
            echo "</select></td>";
            echo "<td class='third'><input type='submit' value='Execute' id='loginBtn2' style='color:#333; margin: 0;'></td>";
            echo "<td></td>";
            echo "</tr>";
            echo "</form>";
            echo "</table>";

            echo "<a class='exportLink' href='index.php?site=export&do=all'>Export all lod's</a>";            
            // echo "</ul>";
        
    }

    Public Function LoadLods( $Do, $SiteID ) {

        $query = "SELECT * FROM t_lods WHERE a_enable = '1'";
        $stmt = $this->mysqliExporter->prepare( $query );

        if ( $stmt = $this->mysqliExporter->prepare( $query ) ) {
            // $stmt->bind_param( 's', $LoginSalt );
            $stmt->execute();
            $res = $stmt->get_result();
        }

        if ( $Do == "all" ) {
            $this->Msg( "Created all .lod in a .zip archive", "normal" );
        }

        $CExportLod = new CExportLod;
        while ( $row = $res->fetch_assoc() ) {
            if ( $Do == "all" ) {
                $MyTable = $row[ 'a_mytable' ];
                $MyTable2 = $row[ 'a_mytable2' ];
                $DbTable = $row[ 'a_dbtable' ];
                $DbTable2 = $row[ 'a_dbtable2' ];
                $Count = $row[ 'a_count' ];
                $CheckSum = $row[ 'a_checksum' ];
                $Filename = $row[ 'a_filename' ];
                $Category = $row['a_category'];
                $CExportLod->InitExportLod( $Do, $row[ 'a_name' ], $MyTable, $DbTable, $DbTable2, $this->GetType( $MyTable ), $this->GetTable( $MyTable ), $this->GetType( $MyTable2 ), $this->GetTable( $MyTable2 ), $Count, $CheckSum, $Filename, $Category );
            }
            if ( $Do == $row[ 'a_name' ] ) {
                $MyTable = $row[ 'a_mytable' ];
                $MyTable2 = $row[ 'a_mytable2' ];
                $DbTable = $row[ 'a_dbtable' ];
                $DbTable2 = $row[ 'a_dbtable2' ];
                $Count = $row[ 'a_count' ];
                $CheckSum = $row[ 'a_checksum' ];
                $Filename = $row[ 'a_filename' ];
                $Category = $row['a_category'];
                $CExportLod->InitExportLod( $Do, $row[ 'a_name' ], $MyTable, $DbTable, $DbTable2, $this->GetType( $MyTable ), $this->GetTable( $MyTable ), $this->GetType( $MyTable2 ), $this->GetTable( $MyTable2 ), $Count, $CheckSum, $Filename, $Category );
            }
        }
        if ( $Do == "all" ) {
            //$CExportLod->MakeZip();
            $CExportLod->DownloadAll();
        }

        //Init Classes     
        $CDataScripts = new CDataScripts;

        if ( $SiteID == "home" ) {
            include_once("include/news.php");
        }      
  
        if ( $SiteID == "renameMagic" ) {
            $CDataScripts->RenameMagic();
        }
        if ( $SiteID == "renameShop" ) {
            $CDataScripts->RenameShop();
        }
   
    }

}
