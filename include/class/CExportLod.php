<?php

class CExportLod extends CWriteType {

    var $fp;
    var $CheckSumGlobal;

    Public Function InitExportLod( $Do, $Name, $MyTable, $Table, $Table2, $StructType, $StructTable, $StructType2, $StructTable2, $CountYesOrNo, $CheckSumYesOrNo, $FileName, $Category ) {
        $query = "SELECT * FROM t_lods WHERE a_name = '$Name'";
        $stmt = $this->mysqliExporter->prepare( $query );
        if ( $stmt = $this->mysqliExporter->prepare( $query ) ) {
            $stmt->execute();
            $res = $stmt->get_result();
            $row = $res->fetch_array( MYSQLI_BOTH );
            $enable = $row[ 'a_enable' ];
        }
        if ( $enable == 0 ) {
            $this->Msg( "[Error] $FileName isn't enabled!", "error" );
        } else {
            if ( $Do == "all" ) {
                $this->SaveFile( $Do, $Name, $MyTable, $Table, $Table2, $StructType, $StructTable, $StructType2, $StructTable2, $CountYesOrNo, $CheckSumYesOrNo, $FileName, $Category );
            } else {
                $this->Msg( "$FileName", "normal" );
                $this->SaveFile( $Do, $Name, $MyTable, $Table, $Table2, $StructType, $StructTable, $StructType2, $StructTable2, $CountYesOrNo, $CheckSumYesOrNo, $FileName, $Category );
                $this->DownloadFile( $FileName, $Category );
            }
        }
    }

    Public Function MakeZip() {
        $zip = new ZipArchive();
        $FileName = "_Lods.zip";
        $Dir = $this->GetExportPath();

        if ( file_exists( $Dir . $FileName ) ) {
            unlink( $Dir . $FileName );
        }

        if ( $handle = opendir( $Dir ) ) {
            while ( false !== ($file = readdir( $handle )) ) {
                if ( $zip->open( $Dir . $FileName, ZIPARCHIVE::CREATE ) === TRUE ) {
                    $zip->addFile( $Dir . $file, $file );
                    $zip->close();
                } else {
                    exit( "cannot open <$FileName>\n" );
                }
            }
        }
    }

    Protected Function DownloadAll($Category) {
        //$FileName = "_Lods.zip";
        $Link = $this->GetExportPath($Category);
        //echo "<a href='$Link'> Download .zip File </a>";
        $this->Msg( "Exported to: <b>$Link</b>", "success" );
    }

    Private Function DownloadFile( $FileName, $Category ) {
        $Link = $this->GetExportPath($Category) . $FileName;
        //echo "<a href='$Link' download='$FileName'> Download File </a>";
        $this->Msg( "Exported to: <b>$Link</b>", "success" );
    }

    Private Function SaveFile( $Do, $Name, $MyTable, $Table, $Table2, $StructType, $StructTable, $StructType2, $StructTable2, $CountYesOrNo, $CheckSumYesOrNo, $FileName, $Category ) {
        if ( $Do == "all" ) {
            if ( $this->Create( $this->GetExportPath( $Category ) . $FileName ) ) {
                
            }
        } else {
            if ( $this->Create( $this->GetExportPath( $Category ) . $FileName ) ) {
                $this->Msg( "File was created!", "success" );
            } else {
                $this->Msg( "[Error] File can't created", "error" );
            }
        }



        if ( $Table == "t_shop" ) {
            $rowName = "a_keeper_idx";
        } elseif ( $Table == "t_shopitem" ) {
            $rowName = "a_keeper_idx";
        } elseif ( $Table == "t_catalog" ) {
            $rowName = "a_ctid";
        } elseif ( $Table == "t_item_collection" ) {
            $rowName = "a_theme";
        } elseif ( $Table == "t_set_item" ) {
            $rowName = "a_set_idx";
        } elseif ( $Table == "t_fortune_data" ) {
            $rowName = "a_item_idx";
        } elseif ( $Table == "moonstone.lod2014" ) {
            $rowName = "a_type";
        } else {
            $rowName = "a_index";
        }

        $Count = $this->CountRow( "SELECT * FROM $Table ORDER BY $rowName", $rowName );

        if ( $CountYesOrNo == 1 ) {
            $this->WriteInt( $Count );
        } elseif ( $CountYesOrNo == 2 ) {
            $this->WriteInt( $Count );
            $this->WriteInt( $Count );
        }

        if ( $Table == "t_option" ) {
            
        }

        if ( $Name == "shopAll.lod2014" ) {
            $queryShop = "SELECT * FROM $Table ORDER BY $rowName DESC LIMIT 1";
            if ( $stmtShop = $this->mysqliLC->prepare( $queryShop ) ) {
                $stmtShop->execute();
                $resShop = $stmtShop->get_result();
                $rowShop = $resShop->fetch_array( MYSQLI_BOTH );
                $LastIndex = $rowShop[ $rowName ];
            } else {
                $$this->Msg( $this->mysqliLC->error, "errorquery" );
            }
            $this->WriteInt( $LastIndex );
        }





        if ( $Name == "npchelp.lod2014" ) {
            $query = "select distinct nr.a_zone_num, n.a_index 
		from t_npc_regen nr, t_npc n where nr.a_zone_num in ( 0, 4, 7, 15, 23, 32, 39, 40 ) 
		and nr.a_npc_idx = n.a_index and (n.a_flag & (1 << 25)) > 0 and !(a_flag1 & (1<<5)) and  n.a_enable=1 		
                UNION SELECT distinct shop_npc.a_zone_num, n.a_index 
		 FROM t_npc as n, t_shop as shop_npc WHERE  shop_npc.a_zone_num in ( 0, 4, 7, 15, 23, 32, 39, 40 ) 
		and n.a_index = shop_npc.a_keeper_idx AND (n.a_flag & ( 1 << 25 )) and !(a_flag1 & (1<<5)) and n.a_enable=1              
                ";
        } elseif ( $Name == "zoneflag.lod2014" ) {
            $query = "SELECT * FROM $Table WHERE a_zone_flag != '0' ORDER BY $rowName";
        } else {
            $query = "SELECT * FROM $Table ORDER BY $rowName";
        }

        $stmt = $this->mysqliLC->prepare( $query );

        if ( $stmt = $this->mysqliLC->prepare( $query ) ) {
            $stmt->execute();
            $res = $stmt->get_result();
        } else {
            $this->Msg( $this->mysqliLC->error, "errorquery" );
        }


        $complete = 0;
        while ( $row = $res->fetch_assoc() ) {

            if ( $Name == "moonstone.lod2014" ) {
                $Count723 = $this->CountRow( "SELECT * FROM t_moonstone_reward WHERE a_type = '723' " );
                $Count2545 = $this->CountRow( "SELECT * FROM t_moonstone_reward WHERE a_type = '2545' " );
                $Count2546 = $this->CountRow( "SELECT * FROM t_moonstone_reward WHERE a_type = '2546' " );
                $Count2547 = $this->CountRow( "SELECT * FROM t_moonstone_reward WHERE a_type = '2547' " );
                $Count2548 = $this->CountRow( "SELECT * FROM t_moonstone_reward WHERE a_type = '2548' " );

                if ( $complete == 0 ) {
                    $this->WriteInt( $Count723 );
                }
                if ( $complete == $Count723 ) {
                    $this->WriteInt( $Count2545 );
                }
                if ( $complete == ($Count723 + $Count2545) ) {
                    $this->WriteInt( $Count2546 );
                }
                if ( $complete == ($Count723 + $Count2545 + $Count2546) ) {
                    $this->WriteInt( $Count2547 );
                }
                if ( $complete == ($Count723 + $Count2545 + $Count2546 + $Count2547) ) {
                    $this->WriteInt( $Count2548 );
                }
            }
            for ( $i = 0; $i < count( $StructType ); $i ++ ) {

                if ( $StructTable[ $i ] == "a_maxLevel" ) {
                    $MaxLevel = $row[ $StructTable[ $i ] ];
                }
                if ( $StructTable[ $i ] == $rowName ) {
                    $Index = $row[ $StructTable[ $i ] ];
                }
                if ( $StructTable[ $i ] == "a_color" ) {
                    $row[ $StructTable[ $i ] ] = hexdec( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructTable[ $i ] == "a_bgcolor" ) {
                    $row[ $StructTable[ $i ] ] = hexdec( $row[ $StructTable[ $i ] ] );
                }
                if ( $Name == "npchelp.lod2014" ) {
                    
                }
                if ( $StructType[ $i ] == "Int" ) {
                    $this->WriteInt( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "String" ) {
                    $this->WriteString( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "Byte" ) {
                    $this->WriteByte( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "Short" ) {
                    $this->WriteShort( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "Float" ) {
                    $this->WriteFloat( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "Long" ) {
                    $this->WriteLong( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "StringLength32" ) {
                    $this->WriteStringLength32( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "StringLength64" ) {
                    $this->WriteStringLength64( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "StringLength128" ) {
                    $this->WriteStringLength128( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "StringLength256" ) {
                    $this->WriteStringLength256( $row[ $StructTable[ $i ] ] );
                }
                if ( $StructType[ $i ] == "ExplodeInt" ) {

                    $NameTable = $StructTable[ $i ];
                    $query3 = "SELECT * FROM $Table WHERE $rowName = '$Index' ";
                    $query4 = "SELECT * FROM $MyTable WHERE a_table = '$NameTable' ";

                    if ( $stmt4 = $this->mysqliExporter->prepare( $query4 ) ) {
                        $stmt4->execute();
                        $res4 = $stmt4->get_result();
                        $row4 = $res4->fetch_array( MYSQLI_BOTH );
                        $Table1 = $row4[ "a_table" ];
                        $TableCount = $row4[ "a_table_count" ];
                    } else {
                        var_dump( $this->mysqliLC->error );
                        echo "<br>";
                    }

                    if ( $stmt3 = $this->mysqliLC->prepare( $query3 ) ) {
                        $stmt3->execute();
                        $res3 = $stmt3->get_result();
                        $row3 = $res3->fetch_array( MYSQLI_BOTH );
                        $ExplodeString = $row3[ $Table1 ];
                        $ExplodeStringArray = explode( " ", $ExplodeString );
                        $CountExplodeStringArray = $TableCount;
                        if ( $TableCount == "-1" ) {
                            $CountExplodeStringArray = count( $ExplodeStringArray );
                        }
                        for ( $j = 0; $j < $CountExplodeStringArray; $j++ ) {
                            if ( empty( $ExplodeStringArray[ $j ] ) ) {
                                $ExplodeStringArray[ $j ] = 0;
                            }
                            $this->WriteInt( $ExplodeStringArray[ $j ] );
                        }
                    } else {
                        $this->Msg( $this->mysqliLC->error, "error" );
                    }
                }
                if ( $Table2 != "none" ) {
                    if ( $StructTable[ $i ] == $rowName ) {
                        $Count = $this->CountRow( "SELECT * FROM $Table2 WHERE $rowName = '$Index' ", $rowName );
                    }
                }
            }

            if ( $Table2 != "none" ) {
                if ( $Table2 == "t_shopitem" ) {
                    $query2 = "SELECT t1.a_item_idx AS itemindex
                    FROM t_shopitem t1, t_item t2 WHERE t1.a_keeper_idx=$Index AND t1.a_item_idx=t2.a_index
                     ORDER BY t2.a_job_flag, t2.a_level, t2.a_type_idx, t2.a_subtype_idx, t2.a_index";
                } else {
                    $query2 = "SELECT * FROM $Table2 WHERE $rowName = '$Index' ORDER BY $rowName";
                }

                $stmt2 = $this->mysqliLC->prepare( $query2 );

                if ( $stmt2 = $this->mysqliLC->prepare( $query2 ) ) {
                    $stmt2->execute();
                    $res2 = $stmt2->get_result();
                } else {
                    $this->Msg( $this->mysqliLC->error, "error" );
                }
            }
            if ( $Table2 != "none" ) {
                if ( $Name == "skills.lod2014" ) {
                    
                } else {
                    $this->WriteInt( $Count );
                }
                while ( $row2 = $res2->fetch_assoc() ) {
                    for ( $i = 0; $i < count( $StructType2 ); $i ++ ) {
                        if ( $Name == "skills.lod2014" ) {
                            if ( $StructTable2[ $i ] == "a_index" ) {
                                
                            } else {
                                if ( $StructType2[ $i ] == "Int" ) {
                                    $this->WriteInt( $row2[ $StructTable2[ $i ] ] );
                                }
                                if ( $StructType2[ $i ] == "Byte" ) {
                                    $this->WriteByte( $row2[ $StructTable2[ $i ] ] );
                                }
                            }
                        } else {

                            if ( $StructType2[ $i ] == "Int" ) {
                                $this->WriteInt( $row2[ $StructTable2[ $i ] ] );
                            }
                            if ( $StructType2[ $i ] == "Byte" ) {
                                $this->WriteByte( $row2[ $StructTable2[ $i ] ] );
                            }
                        }
                    }
                }
            }
            $complete++;
            if ( $Name == "catalog.lod2014" ) {
                $TableName = "a_icon";
                $this->WriteInt( $row[ $TableName ] );
            }
            if ( $Name == "itemAll.lod2014" ) {
                $ItemID = $row[ 'a_index' ];
                $CountFortune = $this->CountRow( "SELECT * FROM t_fortune_data WHERE a_item_idx = '$ItemID' ORDER BY a_skill_index, a_skill_level" );
                $fortuneIndex = 0;
                if ( $CountFortune > 0 ) {
                    $fortuneIndex = 1;
                }
                $this->WriteInt( $fortuneIndex );
            }
        }
        if ( $Name == "skills.lod2014" ) {
            $endTag = -9999;
            $this->WriteInt( $endTag );
        }
        if ( $CheckSumYesOrNo == 1 ) {
            $FileSize = filesize( $this->GetExportPath() . $FileName );
            $CheckSum = $this->CalculateSum( $FileName, $FileSize );
            $this->WriteInt( $CheckSum );
        }
    }

    Private Function CalculateSum( $FileName, $FileSize ) {
        $fileSum = 0;
        for ( $i = 0; $i < $FileSize; $i+=20 ) {
            $binarydata = fopen( $this->GetExportPath() . $FileName, "rb" );
            fseek( $binarydata, $i );
            $contents = fread( $binarydata, 4 );
            $countContents = strlen( $contents );
            if ( $countContents == 4 ) {
                $array = unpack( "I", $contents );
            } else {
                echo "<b>CheckSum Error</b><br>";
            }
            $fileSum += $array[ 1 ];
        }
        return $fileSum;
    }

    Private Function Create( $fileName ) {
        $this->fp = fopen( $fileName, 'wb' );

        if ( !$this->fp ) {
            return false;
        }
        return true;
    }

}
