<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CompraDAO"%>
<%@page import="Classes.Compra"%>
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
<%@page import="com.itextpdf.text.Document"%><%
    String codigo = request.getParameter("cod_compra");
    float tt = 0;

    if (codigo != null) {
        ArrayList<Compra> lista = new CompraDAO().getAll(codigo);

        response.setContentType("application/pdf");
        try {
            Document document = new Document();
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();
            Paragraph titulo = new Paragraph("Cupom para Compra");
            Paragraph validade = new Paragraph("Validade Cupom: " + new Date().toString());
            titulo.setAlignment(Element.ALIGN_CENTER);
            validade.setAlignment(Element.ALIGN_RIGHT);
            document.add(titulo);
            document.add(validade);
            document.add(new Paragraph(" "));
            document.add(new Paragraph(" "));
            document.add(new Paragraph("Codigo da Compra: " + lista.get(0).getCodigo()));
            document.add(new Paragraph("Data da Compra: " + lista.get(0).getDataCompra()));
            document.add(new Paragraph("CPF do Cliente: " + lista.get(0).getCpf()));
            document.add(new Paragraph("CÓDIGO   NOME   PREÇO   QTD   TOTAL"));
            for (Compra c : lista) {
                document.add(new Paragraph(c.getCod_prod() + " " + c.getNome_prod() + " " + c.getPrecoProd() + " " + c.getQtdProd() + " " + c.getTotalPrecoProd()));
                tt += c.getTotalPrecoProd();
            }
            document.add(new Paragraph("Quantidade Total de Produtos: " + lista.get(0).getQtdTotal()));
            document.add(new Paragraph("Total Desconto: " + (tt - lista.get(0).getTotal())));
            document.add(new Paragraph("Total da Compra: " + lista.get(0).getTotal()));
            document.close();
        } catch (DocumentException de) {
            out.println(de.toString());
        } catch (IOException ioe) {
            out.println(ioe.toString());
        } finally {
            response.getOutputStream().flush();
            response.getOutputStream().close();
        }

    }


%>