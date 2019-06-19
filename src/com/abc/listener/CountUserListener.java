package com.abc.listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class CountUserListener
 *
 */
@WebListener
public class CountUserListener implements HttpSessionListener {
	ServletContext ctx=null;
	static int total=0,current=0;

    /**
     * Default constructor. 
     */
    public CountUserListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent e)  { 
         // TODO Auto-generated method stub
    	total++;
    	current++;
		ctx=e.getSession().getServletContext();
		ctx.setAttribute("totalusers", total);
		ctx.setAttribute("currentusers", current);
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent e)  { 
         // TODO Auto-generated method stub
    	current--;
		ctx.setAttribute("currentusers", current);
    }
	
}
