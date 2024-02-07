*  Checked out to T2400036 from Prod Online t2400026 on 02/07/24
*  Checked out to T2400026 from Prod Online dpaat3.idxd on 01/29/24
         BEGIN NAME=GGDE,VERSION=Q1                                                         
*@01     BEGIN NAME=GGDE,VERSION=Q0                                                  
* (C) 1997-2001 GALILEO INTERNATIONAL.ALL                                                                                                                          
*@OS****************** SEGMENT DESCRIPTION ****************************                           
*                                                                     *                                             
*        PROJECT             : WE2847                                 *
*        PROGRAMMER          : ANATOLI                                                    
*        DATE                : MAY 1997                               *
*        DRIVER SEGMENT      : RIK2                                   *
*        SEGMENT DESCRIPTION :                                        *
*                                                                     *
*        THIS PROGRAM CHECKS THE BSP TABLE FOR HAND-OFF MANUAL        *
*     TICKET DATA TO ARC/BSP.                                         *
*                                                                     *
*                                                                     *
*@END******************************************************************
         EJECT                                                                   
*@OX******************** ENTRY / EXIT POINTS                                                           
*                                                                     *                                  
*     THIS SEGMENT CALLED BY:                                         *                                             
*     -------------------------------                                              
*     RIK2                                        
*                                                            
*     THIS SEGME                                                            
*     -------------------------------                                 *
*                                                                     *
*     ENTRC  FACE                                                     *
*                                                                     *
*     MACROS, GLOBALS, EQUATES,                                 
*     -------------------------------                                 *
*     #EIF #ESUB #GOTO #IF #LOCA #PERF                             
*     #SSAAT #SUBR ATTAC BACKC DBCLS DB                                    
*     DBRED DETAC DREC1G ENTRC                         
*     GGDE IR0IR RELCC SW00SR                                        
*                                                                     *
*@END******************************************************************
         EJECT               
*@OA******************  AMENDMENTS TO SEGMENT *************************
*  @##    PROGRAMMER NAME      INT      PROJ #           LOADDATE     *
* ------------------------------------------------------------------- *
*  @01    PARSHANT CHANANA     PCX1     PL2143                            
*         DENVER CONTACT : ERIC                                            
*         AAT ORDINAL EXPANSION                        
*         READING THE NEW EXPANDED FOUR BYTE AAT ORDINAL FROM      @01*
*         FIELD 'WA0NOI'INSTEAD OF TWO BYTES OF  FIELD 'WA0OUR'.   @01*
*@END******************************************************************
 
         EJECT                                      
*@OU************** LEVEL/ECB/REGISTER USAGE                                               
*                                                          
*                                                                     *
*    "THIS AREA DEFINES THE USAGE OF LEVELS, ECB, AND REGISTERS."     *
*                                                                     *
**********               LEVEL USAGE                         **********
*
*        1 =
*        3 = IR0 - A-06-FIR RECORD
*        7 = WK0 - A-06-SSW RECORD
*        8 = S70 - A-06-AAT RECORD
*        9-D = TPFDF - DREC1G - A-06-BSP RECORD
*
**********                ECB USAGE                          **********
*                                                                     *
