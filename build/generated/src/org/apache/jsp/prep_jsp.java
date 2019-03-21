package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class prep_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Preparación</title>\n");
      out.write("        <link href=\"css/JP.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\t\t<link href=\"css/pagina.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#f0f0fd\">\n");
      out.write("\t");

	HttpSession HS = request.getSession();
	String usuario = (String)HS.getAttribute("usuario");
	if(usuario == null){
	response.sendRedirect("index.jsp");
    }
	ArrayList<String> imagen = (ArrayList<String>)request.getAttribute("imagen");
	ArrayList<String> nombre = (ArrayList<String>)request.getAttribute("nombre");
	ArrayList<String> mote = (ArrayList<String>)request.getAttribute("alias");
	ArrayList<String> id = (ArrayList<String>)request.getAttribute("id");
	
	int aux = 1;
	int x = 6;
	int y = 1;
	
      out.write("\n");
      out.write("\t<div class=\"Banner\">\n");
      out.write("\t\t<a href='cargarUsuario'>\n");
      out.write("\t\t\t<img class=\"BannerIMG\" src=\"https://fontmeme.com/permalink/190204/d47185544d1fa348a14808f6c977dcbf.png\" alt='Volver'>\n");
      out.write("\t\t</a>\n");
      out.write("\t\t<!-- Para algún futuro no tan cercano\n");
      out.write("\t\t\t<img class=\"BannerIMG\" src=\"https://fontmeme.com/permalink/190214/2dfd11517c9e22bb7011e8974ef834bf.png\" alt='Volver'>\n");
      out.write("\t\t\t<img class=\"BannerIMG\" src=\"https://fontmeme.com/permalink/190214/6aa59d624ffc72141aa4390c866d6a35.png\" alt='Volver'>\n");
      out.write("\t\t\t<img class=\"BannerIMG\" src=\"https://fontmeme.com/permalink/190214/11de0412e027d09020816adf4f9e8d03.png\" alt='Volver'>\n");
      out.write("\t\t-->\n");
      out.write("\t\t<div id='nUsuario'>\n");
      out.write("\t\t\t");
      out.print( usuario);
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"prepTextBox\">\n");
      out.write("\t\t<p>Elige un pokémon para jugar</p>\n");
      out.write("\t</div>\n");
      out.write("    <div id=\"prepPKMN\">\n");
      out.write("        ");

        for(int i = 0; i < imagen.size(); i++){
            
      out.write("\n");
      out.write("\t\t\t<div align=\"center\" class=\"prepIMGcont\" style=\"left:");
      out.print( x);
      out.write("%;top:");
      out.print( y);
      out.write("%\">\n");
      out.write("\t\t\t\t<img id=\"Img");
      out.print( i);
      out.write("\" class=\"ImgPokPeq\" src=\"");
      out.print( imagen.get(i));
      out.write("\" onclick=\"clickPKMN(");
      out.print( i);
      out.write(")\">\n");
      out.write("\t\t\t\t<div id=\"Nombre");
      out.print( i);
      out.write('"');
      out.write('>');
      out.print( nombre.get(i));
      out.write("</div>\n");
      out.write("\t\t\t\t<div id=\"Apodo");
      out.print( i);
      out.write('"');
      out.write('>');
      out.print( mote.get(i));
      out.write("</div>\n");
      out.write("\t\t\t\t<div id=\"ID");
      out.print( i);
      out.write("\" class=\"idPokPC\">");
      out.print( id.get(i));
      out.write("</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("            ");

			if(x == 72){
				x = -27;
			}
			if(x == -27){
				y += 50;
			}
			x += 33;
			aux++;
		}
		while(aux <= 6){
			
      out.write("\n");
      out.write("\t\t\t<div class='prepIMGcont' style=\"left: ");
      out.print( x);
      out.write("%; top: ");
      out.print( y);
      out.write("%\">\n");
      out.write("\t\t\t\t<a href=\"servletPC\">\n");
      out.write("\t\t\t\t<img class='ImgPokPeq' src='pic/PKball.png'>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t");

			if(x == 66){
				x = -33;
			}
			if(x == -33){
				y += 50;
			}
			x += 33;
			aux++;
            }
        
      out.write("\n");
      out.write("    </div>\n");
      out.write("\t<div id=\"prepSelectPKMN\">\n");
      out.write("\t\t<img id=\"prepImgGra\" src=\"pic/PKball.png\" class=\"ImgSelect\">\n");
      out.write("\t</div>\n");
      out.write("    <div id=\"prepJugarModo\">\n");
      out.write("\t\t<form action=\"\" method=\"post\">\n");
      out.write("\t\t\t<input name=\"pokemonID\" id=\"prepIDpkmn\" type=\"hidden\">\n");
      out.write("\t\t\t<input id=\"Jugar\" type=\"submit\" value=\"Jugar\" class=\"prepButton\">\n");
      out.write("\t\t</form>\n");
      out.write("    </div>\n");
      out.write("\t<script src=\"js/Preparacion.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
