
            var xmlHttp;
            function setXmlHttp() {
                // code for IE6, IE5
                if (window.ActiveXObject) {
                    xmlHttp = new ActiveXObject('Microsoft.XMLHTTP');
                }
                //IE7+, Firefox, Chrome, Opera, Safari
                else if (window.XMLHttpRequest) {
                    xmlHttp = new XMLHttpRequest();
                }
                else {
                    alert("Navegador não suporta AJAX");
                    xmlHttp = null;
                }
            }

            function pesquisar() {

                var jsUF = document.getElementById("prod").value;
                var url = "buscaritem.jsp?item=" + jsUF;
                setXmlHttp();
                xmlHttp.open('GET', url, true);
                xmlHttp.onreadystatechange = capturaeventos;
                xmlHttp.send(null);
            }


            function capturaeventos() {
                //Mostra imagem de carregando na caixa
                if (xmlHttp.readyState == 1) {
                    
                }
                if (xmlHttp.readyState == 4) {
                    if (xmlHttp.status == 200) {
                        xmlDoc = xmlHttp.responseText;
                        document.getElementById("listaprodutos").innerHTML = xmlDoc;
                        
                    }
                }
            }


