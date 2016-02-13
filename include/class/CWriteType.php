<?php

class CWriteType extends CMain{

    Public Function WriteInt( $val ) {
        fwrite( $this->fp, pack( 'l', $val ) );
    }

    Public Function WriteShort( $val ) {
        fwrite( $this->fp, pack( 's', $val ) );
    }

    Public Function WriteByte( $val ) {
        fwrite( $this->fp, pack( 'C', $val ) );
    }

    Public Function WriteFloat( $val ) {
        fwrite( $this->fp, pack( 'f', $val ) );
    }

    Public Function WriteLong( $val ) {
        // Need PHP 64 bit
        fwrite( $this->fp, pack( 'Q', $val ) );
    }

    Public Function WriteString( $val ) {
        if ( strlen( $val ) > 0 ) {
            $this->WriteInt( strlen( $val ) );
            fwrite( $this->fp, $val );
        } else {
            $this->WriteInt( 0 );
        }
    }

    Public Function WriteStringLength32( $val ) {
        fwrite( $this->fp, pack( 'a32', $val ) );
    }

    Public Function WriteStringLength64( $val ) {
        fwrite( $this->fp, pack( 'a64', $val ) );
    }

    Public Function WriteStringLength128( $val ) {
        fwrite( $this->fp, pack( 'a128', $val ) );
    }

    Public Function WriteStringLength256( $val ) {
        fwrite( $this->fp, pack( 'a256', $val ) );
    }

}
