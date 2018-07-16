pragma solidity ^0.4.20 ;

contract database { 
   
    event AddPrachachonlogEnvent(  address adder, uint  adder_id,
    uint prachonIndex  , uint UnixTimeStamp   );
    
    
   string  ProjectName  ; 
   string  projectCode  ; 
   address  projectGorvernor   ;  
   address  system  ;  
   uint totalbranchs = 2  ; 
   uint totalPrachachons = 1  ; 
   uint totalHeadOfBranch = 1  ;
   
    mapping (address => string ) mainContractAddr ; 
    mapping (address => uint256) shuttleBalances ;
    mapping (address => uint256) balances ;
    uint256 totleBalance ; 
    uint256 totleShuttleBalance ; 
     
    
    uint256 totalbalances   ; 
    uint256 totalTransportBalances   ;  
     
    struct   shuttle { 
      uint    lineNumber ;
      string  vehicleNumber ; // ทะเบียนรถ
      uint256 fee  ;   // Fixed price 
      address shuttleAddress ; 
      uint    provider ;
    }
    
    /*
     More code contract hs1gab@gmail.com
    
    */
    
    }
