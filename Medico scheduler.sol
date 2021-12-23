
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract RoomBooking {
    address public owner = msg.sender;
    address public Medico;         
    uint8 public NameMedico;
    uint8 private totalRooms;
    uint8[] private roomIds;
    uint8 private openingHour;
    uint8 private closingHour;
    // Room Id to Hour to Address
    mapping (uint8 => mapping(uint8 => address)) schedules;
    event RoomScheduled(uint8 roomId, uint8 hour, address whom,address NameMedico);
    event RoomDescheduled(uint8 roomId, uint8 hour, address pastOwner);


    constructor(uint8 roomNumber, uint8 opening, uint8 closing) public {
        require(opening < 24, "Opening hour must be a valid hour!");
        require(closing < 24, "Closing hour must be a valid hour!");
        require(opening < closing, "Rooms must be open at least one hour!");
        owner = msg.sender;
        totalRooms = roomNumber;
          roomIds = new uint8[](roomNumber);
        for (uint8 i = 0; i < roomNumber; i++) {
            roomIds[i] = i;
            for (uint8 j = 0; j < 24; j++) {
                schedules[i][j] = address(0);

                openingHour = opening;
                closingHour = closing;
    
            
            }
    
   }
