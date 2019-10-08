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

<%
     Random r = new Random();
     
     int id = r.nextInt(20000000);
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpf");
    String endereco = request.getParameter("endereco");
    String nascimento = request.getParameter("dtnasc");
    String tipo = request.getParameter("tipo");
    String medicamento = request.getParameter("medicamento");
    String data = request.getParameter("data");
    AplicacaoDAO a = new AplicacaoDAO();
    String res = "";

    res = a.inserirAplicacao(cpf, nome, nascimento, endereco, tipo, medicamento, data,id);

    Document document = new Document();
    try {

        PdfWriter.getInstance(document, new FileOutputStream("C:\\Users/rssobreira/Desktop/aps2/web/pdf/print"+id+".pdf"));
        document.open();
        // adicionando um parágrafo no documento
        Paragraph titulo = new Paragraph("FORMULÁRIO DE APLICAÇÂO");
        Paragraph codigo = new Paragraph("Código aplicação: " + id);
        codigo.setAlignment(Element.ALIGN_RIGHT);
        titulo.setAlignment(Element.ALIGN_CENTER);
        document.add(titulo);
        document.add(codigo);
        document.add(new Paragraph(" "));
        document.add(new Paragraph(" "));
        document.add(new Paragraph("Nome: "+nome)); 
        document.add(new Paragraph("CPF: "+cpf));
        document.add(new Paragraph("Data de Nascimento: "+nascimento));
        document.add(new Paragraph("Endereço: "+endereco));
        document.add(new Paragraph(" "));
        document.add(new Paragraph("DADOS DA MEDICAÇÃO:"));
        document.add(new Paragraph("Medicamento: "+medicamento));
        document.add(new Paragraph("Tipo de Aplicação: "+tipo));
        document.add(new Paragraph(" "));
        document.add(new Paragraph(""));
        document.add(new Paragraph("Assinatura do Paciente:___________________________________"));
        document.add(new Paragraph(""));
        document.add(new Phrase("Data: " +data));
    } catch (DocumentException de) {
        System.err.println(de.getMessage());
    } catch (IOException ioe) {
        System.err.println(ioe.getMessage());
    }
    document.close();
    
   response.sendRedirect("formaplicacao.jsp?res=" + res + "&id="+id);

%>