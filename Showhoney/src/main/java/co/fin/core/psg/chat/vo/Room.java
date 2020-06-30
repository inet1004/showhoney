package co.fin.core.psg.chat.vo;

public class Room {
	int booth_no;
	int roomNumber;
	String roomName;
	String status;
	
	public int getRoomNumber() {
		return roomNumber;
	}
	
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	
	public String getRoomName() {
		return roomName;
	}
	
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	
	public int getBooth_no() {
		return booth_no;
	}
	
	public void setBooth_no(int booth_no) {
		this.booth_no = booth_no;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Room [booth_no=" + booth_no + ", roomNumber=" + roomNumber + ", roomName=" + roomName + ", status="
				+ status + "]";
	}

}