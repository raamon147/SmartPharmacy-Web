<%@page import="com.itextpdf.text.FontFactory"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="java.util.Random"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.PageSize"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="DAO.AplicacaoDAO" %>
<%@page import="util.Acentuacao"%>

<%
     Random r = new Random();
     
     Acentuacao acentua = new Acentuacao();
     
     int id = r.nextInt(9999999);
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");
    String endereco = request.getParameter("endereco");
    String nascimento = request.getParameter("dtnasc");
    String tipo = request.getParameter("tipo");
    String medicamento = request.getParameter("medicamento");
    String data = request.getParameter("data");
    AplicacaoDAO a = new AplicacaoDAO();
    String res = "";
    
    if(!medicamento.isEmpty()){
        medicamento = acentua.removeAcento(medicamento);
    }

    res = a.inserirAplicacao(cpf, nome, nascimento, endereco, tipo, medicamento, data,id);

    
   response.sendRedirect("formaplicacao.jsp?res=" + res + "&id="+id);

%>