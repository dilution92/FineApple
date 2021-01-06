package product.sort;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductDao2;
import product.ProductVo;

/**
 * Servlet implementation class Pricelist
 */
@WebServlet("/Pricelist")
public class Pricelist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDao2 dao = ProductDao2.getInstance();
		
		List<ProductVo> productList = dao.selectPricelist();
		request.setAttribute("productList", productList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("product_index/phonepricelist.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
