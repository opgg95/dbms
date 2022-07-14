package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.BoardDAO;

public class DeleteBoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		System.out.println("1번조회");
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
//		boolean boardnum = req.getParameter("boardnum");
		System.out.println("2번조회");
		if(bdao.deleteBoard(boardnum)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath()+ "/mocar/BoardView.mc?boardnum=" + boardnum);
			System.out.println("3번조회");
		}
		return forward;
	}

}
