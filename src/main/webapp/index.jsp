<html>
<%--@elvariable id="imc" type="java"--%>
<html>
<head>
    <title>IMC</title>
</head>
<body>
<h1>Calculo do IMC</h1>
<form name="imcForm" action="calc" method="GET">
    <table>
        <tr>
            <td><label for="weight">Seu peso (kg):</label></td>
            <td><input type="text" name="peso" id="weight"/></td>
        </tr>
        <tr>
            <td><label for="height">Sua altura (m) :</label></td>
            <td><input type="text" name="altura" id="height"/></td>
        </tr>
        <tr>
            <th><input type="submit" value="Enviar" name="find"/></th>
            <th><input type="reset" value="Limpar" name="reset"/></th>
        </tr>
    </table>
    <%--    <h2>${imc}</h2>--%>
    <h2>IMC: ${imc}</h2>
</form>
</body>
</html>


<%--Criar uma classe chamada PesoIdelServlet que na sua execução recebe o sexo
 ( com as opções “M” ou “F” para Masculino ou Feminino), a altura da pessoa e retorna na saída o peso ideal para a pessoa.--%>
<%--a.	Os cálculos para peso ideal de homem e mulher são os seguintes:--%>
<%--i.	Para homens = ( 72.7 * altura) - 58;--%>
<%--ii.	Para mulheres = ( 62.1 * altura) - 44.7;--%>