package com.constant01.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.constant01.model.MemberDTO;
import com.constant01.model.ReserveDTO;
import com.constant01.service.MemberService;
import com.constant01.service.ProfService;
import com.constant01.service.ReserveService;


@Controller
public class ReserveController {
	@Autowired
	MemberService ms;
	@Autowired
	ProfService ps;
	@Autowired
	ReserveService rs;
	@RequestMapping(value = "home/reserveNew/resvOnline.do", method = RequestMethod.GET)
	public String resvOnline () {
		
		return "home/reserveNew/resvOnline";
	
	}
	@RequestMapping(value = "home/reserveNew/resvOnline.do", method = RequestMethod.POST)
	public String resvOnline2 () {
		
		return "home/reserveNew/resvOnline";
	
	}
	
	@RequestMapping(value = "home/reserveNew/stepResvInfo.do", method = RequestMethod.POST)
	public String stepResvin () {
		return "home/reserveNew/stepResvInfo";
	
	}
	
	// 예약페이지 1번 -------------------------------------------------------------------------------------------------
	@RequestMapping(value = "home/reserveNew/step1Pop.do", method = RequestMethod.GET)
	public String step1() {
		return "home/reserveNew/step1Pop";
	}
	@RequestMapping(value = "home/reserveNew/step1Pop.do", method = RequestMethod.POST)
	public String step11() {
		return "home/reserveNew/step1Pop";
	}
	// 예약페이지 2번 -------------------------------------------------------------------------------------------------
	@RequestMapping(value = "home/reserveNew/step2Pop.do", method = RequestMethod.GET)
	public String step2() {
		
		return "home/reserveNew/step2Pop";
	
	}
	@RequestMapping(value = "home/reserveNew/step2Pop.do", method = RequestMethod.POST)
	public String step22() {
		return "home/reserveNew/step2Pop";
	
	}
	// 예약페이지 3번 -------------------------------------------------------------------------------------------------
	@RequestMapping(value = "home/reserveNew/step3Pop.do", method = RequestMethod.GET)
	public String step3(ReserveDTO reserve) {
		System.out.println(reserve);
		return "home/reserveNew/step3Pop_f";
	
	}
	@RequestMapping(value = "home/reserveNew/step3Pop.do", method = RequestMethod.POST)
	public String step33() {
		return "home/reserveNew/step3Pop_f";
	
	}
	@RequestMapping(value = "home/reserveNew/resvProc.do", method = RequestMethod.POST)
	public String resvProc(ReserveDTO reserve,Model model) {
		System.out.println(reserve);
		rs.write(reserve);
		model.addAttribute(reserve);
		return "/home/reserveNew/stepEndPop";
	
	}
	// 지도띄우기 메인      ------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/home/reserveNew/homeFloor.do", method = RequestMethod.GET)
	public String homeFloor() {
		
		return "home/reserveNew/homeFloor";
	
	}
	@RequestMapping(value = "/home/reserveNew/floor.do", method = RequestMethod.GET)
	public String floor() {
		
		return "home/reserveNew/floor";
	
	}
	@RequestMapping(value = "home/reserveNew/map.do", method = RequestMethod.GET)
	public String map() {
		
		return "home/reserveNew/map";
	
	}
	// 지도띄우기 실험용     ------------------------------------------------------------------------------------------------
	@RequestMapping(value = "home/reserveNew/map2.do", method = RequestMethod.GET)
	public String map2() {
			
		return "home/reserveNew/map2";
		
	}
}
