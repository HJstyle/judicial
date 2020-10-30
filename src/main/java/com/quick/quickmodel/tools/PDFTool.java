package com.quick.quickmodel.tools;
import java.io.IOException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.pdfbox.cos.COSString;
import org.apache.pdfbox.exceptions.COSVisitorException;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.edit.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDFont;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.util.PDFTextStripper;


public class PDFTool {
    public static PDDocument getPdDocument(String fileName) throws IOException{
        PDDocument document=PDDocument.load(fileName);
        return document;
    }
    public static void getTextStripper(PDDocument document, Writer writer)
            throws IOException {
        PDFTextStripper textStripper = new PDFTextStripper();
        textStripper.writeText(document, writer);
    }
    public static String getText(String fileName) throws IOException {
        String textString = "";

        PDDocument document = getPdDocument(fileName);
        //将提取出来的字节流转换为字符流进行显示
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        OutputStreamWriter writer = new OutputStreamWriter(out);
        getTextStripper(document, writer);
        document.close();
        out.close();
        writer.close();
        byte[] con = out.toByteArray();
        textString = new String(con);
        return textString;
    }





}
