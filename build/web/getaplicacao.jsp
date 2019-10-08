<%@page import="java.sql.ResultSet"%>
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
    int id = 0;
    String nome = "";
    String endereco = "";
    String cpf = "";
    String nascimento = "";
    String medicamento = "";
    String tipo = "";
    String data = "";
    AplicacaoDAO a = new AplicacaoDAO();

    ResultSet rs = a.buscarappcodigo(Integer.parseInt(request.getParameter("id")));
    if (rs.first()) {
        nome = rs.getString("nome");
        id = rs.getInt("id");
        endereco = rs.getString("endereco");
        nascimento = rs.getString("nascimento");
        medicamento = rs.getString("medicamento");
        tipo = rs.getString("tipo");
        data = rs.getString("data");
        cpf = rs.getString("cpf");
    }
    response.setContentType("application/pdf");
    try {

        Document document = new Document();
        PdfWriter.getInstance(document, response.getOutputStream());
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
        document.add(new Paragraph("Nome: " + nome));
        document.add(new Paragraph("CPF: " + cpf));
        document.add(new Paragraph("Data de Nascimento: " + nascimento));
        document.add(new Paragraph("Endereço: " + endereco));
        document.add(new Paragraph(" "));
        document.add(new Paragraph("DADOS DA MEDICAÇÃO:"));
        document.add(new Paragraph("Medicamento: " + medicamento));
        document.add(new Paragraph("Tipo de Aplicação: " + tipo));
        document.add(new Paragraph(" "));
        document.add(new Paragraph(""));
        document.add(new Paragraph("Assinatura do Paciente:___________________________________"));
        document.add(new Paragraph(""));
        document.add(new Phrase("Data: " + data));
        document.close();
    } catch (DocumentException de) {
        System.err.println(de.getMessage());
    } catch (IOException ioe) {
        System.err.println(ioe.getMessage());
    }

%>