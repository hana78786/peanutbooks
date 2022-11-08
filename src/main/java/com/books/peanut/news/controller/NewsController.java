package com.books.peanut.news.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.books.peanut.member.domain.Member;
import com.books.peanut.news.domain.News;
import com.books.peanut.news.service.NewsService;

@Controller
public class NewsController {
	@Autowired
	private NewsService nService;
	
	// 내 알림 화면
//	@RequestMapping(value="/news/myNews.pb", method=RequestMethod.GET)
//	public String myNewsView() {
//		return "news/news-my";
//	}
	
	// 알림 목록 조회
	@RequestMapping(value="/news/newsList.pb", method=RequestMethod.GET)
	public ModelAndView newsList(
			ModelAndView mv,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember"); // 로그인한 회원 정보를 member 객체에 담음
		String memberId = member.getMemberId(); // member 객체에서 id 값 가져와서 memberId 변수에 넣음
		List<News> nList = nService.showNewsList(memberId); // 로그인한 회원의 id 사용해서 해당 회원의 알림 목록 가져오기
		if(!nList.isEmpty()) { // 가져온 알림 목록이 비어있지 않으면
			mv.addObject("nList", nList); // 아래의 jsp로 알림 정보가 담긴 nList 값을 넘김
		}
		mv.setViewName("news/news-my");
		return mv;
	}
	
}
