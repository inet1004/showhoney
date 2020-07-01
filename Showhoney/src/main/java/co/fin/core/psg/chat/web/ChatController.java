package co.fin.core.psg.chat.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.psg.chat.vo.Room;


@Controller  ("/chat")
public class ChatController {
	
	List<Room> roomList = new ArrayList<Room>();
	static int roomNumber = 0;
	
	@RequestMapping("/chat") // /chat
	public ModelAndView chat() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("com/chat/chat");
		return mv;
	}
	
	/**
	 * 방 페이지
	 * @return
	 */
	@RequestMapping("/room") // /room.do
	public ModelAndView room() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("com/chat/room");
		return mv;
	}
	
	/**
	 * 방 생성하기
	 * @param params 
	 * @return
	 */
	@RequestMapping("/createRoom")  // /createRoom
	public @ResponseBody List<Room> createRoom(@RequestParam HashMap<Object, Object> params){
		String roomName = (String) params.get("roomName");
		if(roomName != null && !roomName.trim().equals("")) {
			Room room = new Room();
			room.setRoomNumber(++roomNumber);
			room.setRoomName(roomName);
			room.setBooth_no(Integer.parseInt((String) params.get("booth_no")));  // 추가 // 스트링먼저 정의 -> 인테저 정의
			room.setStatus("yes");
			roomList.add(room);
		}
		return roomList;
	}
	
	/**
	 * 방 정보가져오기
	 * @param params
	 * @return
	 */
	@RequestMapping("/getRoom")   // /getRoom.do
	public @ResponseBody List<Room> getRoom(@RequestParam HashMap<Object, Object> params){
		return roomList;
	}
	
	/**
	 * 채팅방
	 * @return
	 */
	@RequestMapping("/moveChating")  // /moveChating
	public ModelAndView chating(@RequestParam HashMap<Object, Object> params) {
		ModelAndView mv = new ModelAndView();
		int roomNumber = Integer.parseInt((String) params.get("roomNumber"));  //String으로 얻은 후 int 로 타입 변경함
		List<Room> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
		//맵은 바로 접근이 가능하지만 , list는 for문으로 조건에 맞는 값을 찾아서 넣어야함.
		for(int i=0; i < roomList.size(); i++) {
			if (roomList.get(i).getRoomNumber() == roomNumber ) {
				System.out.print("Before:" + roomList.get(i).getStatus());
				roomList.get(i).setStatus("no");
				System.out.print("After:" + roomList.get(i).getStatus());
			}
		}
		
		if(new_list != null && new_list.size() > 0) {
			mv.addObject("roomName", params.get("roomName"));
			mv.addObject("roomNumber", params.get("roomNumber"));
			mv.addObject("booth_no", params.get("booth_no")); // 추가
			mv.setViewName("com/chat/chat");
			System.out.print("mv:==> " + mv);
		}else {
			mv.setViewName("com/");
		}
		return mv;
	}
	
	@RequestMapping("/leaveChating")  // /moveChating
	public ModelAndView leaveChating(@RequestParam HashMap<Object, Object> params) {
		ModelAndView mv = new ModelAndView();
		//int roomNumber = Integer.parseInt((String) params.get("roomNumber"));  //String으로 얻은 후 int 로 타입 변경함
		List<Room> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
		for(int i=0; i < roomList.size(); i++) {
			if (roomList.get(i).getRoomNumber() == roomNumber ) {
				roomList.get(i).setStatus("yes");
			}
		}
		if(new_list != null && new_list.size() > 0) {
			//Number b_number = Integer.parseInt((String) params.get("booth_no"));
			Number b_number = Integer.parseInt((String) params.get("booth_no"));
			mv.setViewName("redirect:/room?booth_no=" + b_number);  // room.do?room_no=1 의 형태로 .do 처럼 mapping 주소로 보내야함!!!
									// 여기에서 /room은 urldl아닌 room.do 와 같은 맵vld주소임.
									// com/chat/chat 처럼 타일즈 주소가 필요없음..
		}else {
			mv.setViewName("redirect:/room");
		}
		return mv;
	}
	
	
}