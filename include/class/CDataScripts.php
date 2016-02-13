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
            $MagicIndex = $row[ 'a_magicIndex1' ];

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


                $query3 = "UPDATE t_magic SET a_name = ? WHERE a_index = ?; ";

                if ( $stmt3 = $this->mysqliLC->prepare( $query3 ) ) {
                    $stmt3->bind_param( 'ss', $name, $MagicIndex );
                    $stmt3->execute();
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
