package util;

public class Acentuacao {
    
    public String removeAcento(String palavra){
        String[] comAcento = new String[]{"�","�","�","�","�","�","�","�","�","�","�","�",
            "�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�","�",
            "�","�","�","�","�","�","�","�"};
        
        String[] semAcento = new String[]{"A","A","A","A","A","A","a","a","a","a","a","E","E",
            "E","E","e","e","e","e","I","I","I","I","i","i","i","i","O","O","O","O","O","o",
            "o","o","o","o","U","U","U","u","u","u","u","C","c"};
        
        for(int i = 0;i< comAcento.length;i++){
            palavra = palavra.replace(comAcento[i].toString(),semAcento[i].toString());
        }
        
        return palavra;
    }
}
