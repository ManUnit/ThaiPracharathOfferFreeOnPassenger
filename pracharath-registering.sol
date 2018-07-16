pragma solidity ^0.4.24 ;

import './prachachon-db.sol' ;

contract registering is database  {
     function setSystemAddr (address _system ) public { 
         require( _system  >  0x0 , "Request input address" );
         require( msg.sender == projectGorvernor , "Only project owner can set system " );
         system =  _system ; 
     }
     

    
    function addShuttle ( address _shuttleAddr , uint _linenum , string _vehicleNumber , uint256 _fee , uint _provider )  {
        require( msg.sender == projectGorvernor || msg.sender == system  , "Only project owner or system can use this function " );
        shuttles[_shuttleAddr].lineNumber = _linenum ; 
        shuttles[_shuttleAddr].vehicleNumber = _vehicleNumber ; 
        shuttles[_shuttleAddr].fee = _fee ; 
        shuttles[_shuttleAddr].shuttleAddress = _shuttleAddr ; 
        indexshuttles[totalShuttles] = _shuttleAddr ; 
        listshuttles[_shuttleAddr] = totalShuttles  ; 
        totalShuttles += 1 ;  
    }
    

    
    function addTransportline(address _lineAddr , uint _lineNumber , string _strLocation , string _endLocation , uint _providerId ) {
       require( msg.sender == projectGorvernor || msg.sender == system  , "Only project owner or system can use this function " );
       transportlines[_lineAddr].lineNumber = _lineNumber ; 
       transportlines[_lineAddr].startLocation = _strLocation ;
       transportlines[_lineAddr].endLocation = _endLocation;
       transportlines[_lineAddr].providerId = _providerId;
       transportlines[_lineAddr].transportlineAddr =  _lineAddr ; 
       listtransportlines[_lineAddr] =  totalTransportlines   ; 
       indextransportlines[totalTransportlines] = _lineAddr ; 
       totalTransportlines += 1 ; 
    }
    
    function addTransportProvider ( address _tpAddr , string _tpName , string _tpLocationAddr , string _tpPhoneNumber) {
        require( msg.sender == projectGorvernor || msg.sender == system  , "Only project owner or system can use this function " );
        transportProviders[_tpAddr].id = totalTransportProviders ; 
        transportProviders[_tpAddr].accountAddr =  _tpAddr ; 
        transportProviders[_tpAddr].prividerName = _tpName ; 
        transportProviders[_tpAddr].contractAddress =  _tpLocationAddr  ;
        transportProviders[_tpAddr].contractNumber  =  _tpPhoneNumber  ;
        indextransportProviders[totalTransportProviders] = _tpAddr ;  
        listtransportProviders[_tpAddr] = totalTransportProviders ; 
        totalTransportProviders += 1 ; 
    } 
     
    function setNewBranch (  string  _branchName  ) public    { 
             bytes memory _bbranchName = bytes(_branchName); 
             require(  _bbranchName.length != 0 , "Request branch name  " );
             require( msg.sender == projectGorvernor || msg.sender == system  , "Only project owner or system can set new branch " );
             branchs[totalbranchs] =  _branchName ; 
             totalbranchs = totalbranchs + 1 ; 
     }
     
    function reduceEmpowerToHeadbranch(address _HeadBranceAddr  ) public returns ( string )  {
              require(msg.sender == projectGorvernor , "Only governor can reduce empower to head of branch " );
              require(headBrances[_HeadBranceAddr].empowered,  "The Head already reduce empower " );
              headBrances[_HeadBranceAddr].empowered = false ; 
              return "reduce empower done!" ; 
    }
    
    /*
      Code  เพิ่มเติม email: hs1gab@gmail.com
    
    */
    
    
    }
