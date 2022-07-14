package com.koreait.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.board.dao.BoardDAO;

public class BoardViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		
		int boardnum = Integer.parseInt( req.getParameter("boardnum") );
		
		
		// 조회수 update
		bdao.updateReadCount(boardnum);
		
		req.setAttribute("replylist", bdao.getReplys(boardnum)); 
		req.setAttribute("board", bdao.getDetail(boardnum));
		forward.setRedirect(false);
		forward.setPath("/app/board/boardview.jsp");
		
		return forward;
	}

}










