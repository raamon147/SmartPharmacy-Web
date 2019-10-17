<%@page import="java.text.SimpleDateFormat"%>
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
<%@page import="com.itextpdf.text.Document"%>

<%
    float tt = 0;
    String cd = request.getParameter("cod_compra");
    if (cd != null) {
        ArrayList<Compra> lista = new CompraDAO().getAll(cd);

        String codigoCompra = String.valueOf(lista.get(0).getCodigo());
        String data = lista.get(0).getDataCompra();
        String cpf = lista.get(0).getCpf();
        String qtdTotalProd = String.valueOf(lista.get(0).getQtdTotal());
        String txt ="";

        for (Compra c : lista) {
            txt += ""+c.getCod_prod()+" "+c.getNome_prod()+"   R$"+c.getPrecoProd()+"    qtd:"+c.getQtdProd()+"    Total: R$"+c.getTotalPrecoProd()+"\n";
            tt += c.getTotalPrecoProd();
        }
        String desconto = String.valueOf(tt - lista.get(0).getTotal());
        String totalCompra = String.valueOf(lista.get(0).getTotal());
        
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        
        Date dataV = new Date();
        
        String d = format.format(dataV);
        
        response.setContentType("application/pdf");
        try {
            Document document = new Document();
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();
            Paragraph titulo = new Paragraph("Cupom para Compra");
            Paragraph validade = new Paragraph("Validade Cupom: "+d);
            titulo.setAlignment(Element.ALIGN_CENTER);
            validade.setAlignment(Element.ALIGN_RIGHT);
            document.add(titulo);
            document.add(validade);
            document.add(new Paragraph("Codigo da Compra: " + codigoCompra));
            document.add(new Paragraph("Data da Compra: " + data));
            document.add(new Paragraph("CPF do Cliente: " + cpf));
            document.add(new Paragraph(" "));
            document.add(new Paragraph(txt));
            document.add(new Paragraph(" "));
            document.add(new Paragraph("Quantidade Total de Produtos: " + qtdTotalProd));
            document.add(new Paragraph("Total Desconto: " + desconto));
            document.add(new Paragraph("Total da Compra: " + totalCompra));
            document.close();
        } catch (DocumentException de) {
            de.printStackTrace();
            out.println(de.toString());
        } catch (IOException ioe) {
            ioe.printStackTrace();
            out.println(ioe.toString());
        } finally {
            response.getOutputStream().flush();
            response.getOutputStream().close();
        }
    }


%>