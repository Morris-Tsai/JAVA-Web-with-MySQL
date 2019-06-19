package aaa;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ImageServlet extends HttpServlet {

	private int width=85;
	private int height=30;
	//定義驗證碼的使用的字母和數字
	private char[] charSeq="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
	private int codeCount=4;
	//定義驗證碼的基線
	private int codeX;
	private int codeY;
	public ImageServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		/*
		 * BufferedImage描述具有可以訪問圖像緩沖區的image
		 * Graphics類是所有圖形上下文
		 */
		BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		Graphics g=image.getGraphics();
		//將此圖形上下文的當前顏色設置为指定顏色
		g.setColor(Color.white);
		g.fillRect(0, 0, width, height);
		//設置邊框的yans
		g.setColor(Color.black);
		g.drawRect(0, 0, width-1, height-1);
		//生成驗證碼
		Random random=new Random();
		String randstr="";
		for(int i=1;i<=codeCount;i++){
			//隨即獲取驗證碼
			String rand=String.valueOf(charSeq[random.nextInt(charSeq.length)]);
			System.out.println("rand=  "+rand);
			randstr=randstr+rand;
			
			g.setColor(Color.blue);
			g.setFont(new Font("宋體",Font.BOLD,30));
			
			g.drawString(rand, codeX*i, codeY);
		}
		
		System.out.println("randstr=   "+randstr);
		//把randstr放置到session中
		session.setAttribute("checkKey", randstr);
		
		//設置幹擾點
		for(int i=0;i<155;i++){
			int x=random.nextInt(width);
			int y=random.nextInt(height);
			
			g.setColor(Color.red);
			g.drawOval(x, y, 0, 0);
		}
		//釋放資源
		g.dispose();
		
		HttpServletResponse res=(HttpServletResponse)response;  
        //設定網頁的到期時間，一旦過期則必須到服務器上重新調用  
        res.setDateHeader("Expires", -1);  
        //Cache-Control 指定請求和響應應遵循的緩存機制   no-cache指示請求或響應消息是不能緩存的  
        res.setHeader("Cache-Control", "no-cache");  
        //用於設定禁止瀏覽器從本地緩存中調用頁面內容，設定後一旦離開頁面就無法從Cache中再調出  
        res.setHeader("Pragma", "no-cache");  
        
		ImageIO.write(image, "jpeg", response.getOutputStream());
		
	}

	public void init() throws ServletException {
		this.codeX=width/(codeCount+2);
		this.codeY=height;
	}

}