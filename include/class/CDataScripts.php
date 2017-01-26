<?php

class CDataScripts extends CExportLod {

    Public Function RenameShop() {
        $ErrorStatus = 0;

        $query = "SELECT * FROM t_npc;";

        if ( $stmt = $this->mysqliLC->prepare( $query ) ) {
            $stmt->execute();
            $res = $stmt->get_result();
        } else {
            $ErrorStatus++;
            $this->Msg( $this->mysqliLC->error, "error" );
        }

        while ( $row = $res->fetch_assoc() ) {
            $NpcIndex = $row[ 'a_index' ];
            $NpcName = $row[ 'a_name' ];

            $query3 = "UPDATE t_shop SET a_name = ? WHERE a_keeper_idx = ?; ";
            if ( $stmt3 = $this->mysqliLC->prepare( $query3 ) ) {
                $stmt3->bind_param( 'ss', $NpcName, $NpcIndex );
                $stmt3->execute();
            } else {
                $ErrorStatus++;
                $this->Msg( $this->mysqliLC->error, "error" );
            }
        }


        if ( $ErrorStatus == 0 ) {
            $this->Msg( "Renamed t_shop names with t_npc.", "success" );
        }
    }

    Public Function RenameMagic() {
        $ErrorStatus = 0;
        
        $preQuery = "UPDATE t_magic SET a_name = 'NOT FOUND' ";
        if ( $stmt0 = $this->mysqliLC->prepare( $preQuery ) ) {
            $stmt0->execute();     
        } else {
            $ErrorStatus++;
            $this->Msg( $this->mysqliLC->error, "error" );
        }
        
        $query = "SELECT * FROM t_skilllevel;";

        if ( $stmt = $this->mysqliLC->prepare( $query ) ) {
            $stmt->execute();
            $res = $stmt->get_result();
        } else {
            $ErrorStatus++;
            $this->Msg( $this->mysqliLC->error, "error" );
        }

        $i = 0;
        while ( $row = $res->fetch_assoc() ) {
            $Index = $row[ 'a_index' ];
            $MagicIndex1 = $row[ 'a_magicIndex1' ];
            $MagicIndex2 = $row[ 'a_magicIndex2' ];
            $MagicIndex3 = $row[ 'a_magicIndex3' ];

            $query2 = "SELECT * FROM t_skill WHERE a_index = '$Index'; ";
            if ( $stmt2 = $this->mysqliLC->prepare( $query2 ) ) {
                $stmt2->execute();
                $res2 = $stmt2->get_result();
            } else {
                $ErrorStatus++;
                $this->Msg( $this->mysqliLC->error, "error" );
            }

            while ( $row2 = $res2->fetch_assoc() ) {
                $Index2 = $row2[ 'a_index' ];
                $name = $row2[ 'a_name' ];

                $query3 = "UPDATE t_magic SET a_name = ? WHERE a_index = ? AND a_name = 'NOT FOUND'; ";
                if ( $stmt3 = $this->mysqliLC->prepare( $query3 ) ) {
                    $stmt3->bind_param( 'ss', $name, $MagicIndex1 );
                    $stmt3->execute();
                } else {
                    $ErrorStatus++;
                    $this->Msg( $this->mysqliLC->error, "error" );
                }
                $query4 = "UPDATE t_magic SET a_name = ? WHERE a_index = ? AND a_name = 'NOT FOUND'; ";
                if ( $stmt4 = $this->mysqliLC->prepare( $query4 ) ) {
                    $stmt4->bind_param( 'ss', $name, $MagicIndex2 );
                    $stmt4->execute();
                } else {
                    $ErrorStatus++;
                    $this->Msg( $this->mysqliLC->error, "error" );
                }
                
                $query5 = "UPDATE t_magic SET a_name = ? WHERE a_index = ? AND a_name = 'NOT FOUND'; ";
                if ( $stmt5 = $this->mysqliLC->prepare( $query5 ) ) {
                    $stmt5->bind_param( 'ss', $name, $MagicIndex3 );
                    $stmt5->execute();
                } else {
                    $ErrorStatus++;
                    $this->Msg( $this->mysqliLC->error, "error" );
                }
                
            }
            $i++;
        }
        if ( $ErrorStatus == 0 ) {
            $this->Msg( "Renamed t_magic names with t_skill.", "success" );
        }
    }
    
    

}
