pragma solidity ^0.4.4 ;
/*
 Wrote by : Anan Paenthongkham
 Project : Thailand 4.0  free shuttle bus with blockchain system
 versipn : 1.23
 revsion : 1.61
 update  : 8 กค. 2361 
 
*/

import './prachachon-registoring.sol' ;

contract contractFucntion is  registering  {
    

}

contract MainContract is contractFucntion  {
      
    function MainContract  () {
              projectGorvernor  =  msg.sender  ;  
              system =  msg.sender  ; 
              mainContractAddr[msg.sender] = "THAI:2561-07-08:PRACHARATH" ; 
              ProjectName  = "Thailand 4.0  free shuttle bus with blockchain system "  ;  
              projectCode  = "THAI4.0:LIFE:GOV:OFFER:2561:08:12:VER1.0:REV1.1" ; 
              branchs[1] = "กรงเทพมหานคร" ; 
          } 

    function getInFreeShuttleReader ( address _Prachachon ) returns (bool success) {  //  reader install in shuttle 
        require ( _Prachachon == prachachons[_Prachachon].prachachonAddr ,  "not allow get in ") ;
        shuttleBalances[msg.sender] +=  shuttles[msg.sender].fee  ;
        totleShuttleBalance += shuttles[msg.sender].fee  ;
        emit PrachachonGetShuttleLog ( _Prachachon ,  msg.sender , shuttles[msg.sender].fee ) ;  // Logging 
        if (prachachons[_Prachachon].prachachonAddr != _Prachachon ){
            return (false) ; 
        }else {
            return (true);
        }
        
    } 
     
    function pingBlockchainProject () public constant returns (
          string Project_Name ,
          string Project_Code , 
          address project_Gorvernor ,
          address YourAddress  ,
          uint totalRegistoredPrachachon, 
          uint blokUnixTimeStamp ,
          uint Blocknumber
          ) {
          return ( ProjectName , projectCode , projectGorvernor , msg.sender , totalPrachachons - 1 , block.timestamp , block.number ) ; 
     }

    

    
}
