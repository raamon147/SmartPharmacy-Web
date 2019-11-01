package util;

public class Acentuacao {
    
    public String removeAcento(String palavra){
        String[] comAcento = new String[]{"Ä","Å","Á","Â","À","Ã","ä","á","â","à","ã","É",
            "Ê","Ë","È","é","ê","ë","è","Í","Î","Ï","Ì","í","î","ï","ì","Ö","Ó","Ô","Ò","Õ","ö","ó","ô","ò","õ","Ü",
            "Ú","Û","ü","ú","û","ù","Ç","ç"};
        
        String[] semAcento = new String[]{"A","A","A","A","A","A","a","a","a","a","a","E","E",
            "E","E","e","e","e","e","I","I","I","I","i","i","i","i","O","O","O","O","O","o",
            "o","o","o","o","U","U","U","u","u","u","u","C","c"};
        
        for(int i = 0;i< comAcento.length;i++){
            palavra = palavra.replace(comAcento[i].toString(),semAcento[i].toString());
        }
        
        return palavra;
    }
}
