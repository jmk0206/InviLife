package com.invi.controller;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.invi.domain.BoardVO;
import com.invi.domain.Criteria;
import com.invi.domain.PageDTO;
import com.invi.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;
	
	// register(글쓰기) - 화면용
	@GetMapping("register")
	public void register() {
		logger.info("register");
	}
	
	// 글쓰기 버튼 클릭 시 list로 넘어간다.
	@PostMapping("register")
	public String registerPost(BoardVO board) {
		logger.info("registerPost"+board);
		
		service.register(board);
		return "redirect:/board/list";
	}
	
	// list(글목록)
	@GetMapping("list")
	public void list(Model model, Criteria cri) {
		logger.info("list");
		
		int count = service.getTotalCount(cri);
		model.addAttribute("list", service.getList());	
//		model.addAttribute("list", service.getListWidthPaing(cri));
		model.addAttribute("pageMaker", new PageDTO(cri,count));
	}
	
	// get(글 상세페이지)
	@GetMapping("get")
	public void get(@RequestParam("bno") int bno, Model model) {
		logger.info("get...");
		model.addAttribute("board", service.get(bno));
	}
	
	// modify(수정 페이지)
	@GetMapping("modify")
	public void modify(@RequestParam("bno") int bno, Model model) {
		logger.info("get...");
		model.addAttribute("board", service.get(bno));
	}
	
	// modify(수정 적용)
	@PostMapping("modify")
	public String modifyPost(BoardVO board, RedirectAttributes rttr) {
		logger.info("modify...");
		if(service.modify(board)) {
			rttr.addAttribute("result", "success");
			rttr.addAttribute("bno", board.getBno());
		}
		return "redirect:/board/get";
	}
	
	// remove(삭제)
	@PostMapping("remove")
	public String remove(@RequestParam("bno") int bno) {
		logger.info("remove....");
		service.remove(bno);
		return "redirect:/board/list";
	}
	
	
	
}