 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculator</title>
    <style>
        table {
            width: 200px;
            height: 200px;
            border-collapse: collapse;
            margin: auto;
        }
        td {
            border: 1px solid black;
            text-align: center;
            vertical-align: middle;
            font-size: 20px;
            width: 50px;
            height: 50px;
            cursor: pointer;
        }
        .digit {
            background-color: lightgray;
        }
        .operator {
            background-color: lightblue;
        }
        .equals {
            background-color: lightgreen;
        }
        .clear {
            background-color: lightcoral;
        }
        input {
            width: 190px;
            font-size: 20px;
            text-align: right;
            margin: auto;
            display: block;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Calculator using JSP</h1>
    <form method="post">
        <input type="text" name="display" readonly>
        <input type="text" name="result" readonly>
        <table>
            <tr>
                <td class="digit" onclick="append('7')">7</td>
                <td class="digit" onclick="append('8')">8</td>
                <td class="digit" onclick="append('9')">9</td>
                <td class="operator" onclick="append('/')">/</td>
            </tr>
            <tr>
                <td class="digit" onclick="append('4')">4</td>
                <td class="digit" onclick="append('5')">5</td>
                <td class="digit" onclick="append('6')">6</td>
                <td class="operator" onclick="append('*')">*</td>
            </tr>
            <tr>
                <td class="digit" onclick="append('1')">1</td>
                <td class="digit" onclick="append('2')">2</td>
                <td class="digit" onclick="append('3')">3</td>
                <td class="operator" onclick="append('-')">-</td>
            </tr>
            <tr>
                <td class="digit" onclick="append('0')">0</td>
                <td class="digit" onclick="append('.')">.</td>
                <td class="equals" onclick="calculate()">=</td>
                <td class="operator" onclick="append('+')">+</td>
            </tr>
            <tr>
                <td class="clear" colspan="4" onclick="clearDisplay()">C</td>
            </tr>
        </table>
    </form>
    <script>
        function append(value) {
            document.forms[0].display.value += value;
        }
        
        function clearDisplay() {
            document.forms[0].display.value = '';
            document.forms[0].result.value = '';
        }

        function calculate() {
            try {
                var expression = document.forms[0].display.value;
                if (expression.includes("/0")) {
                    alert("Error: Division by zero is not possible.");
                } else {
                    var result = eval(expression);
                    document.forms[0].result.value = result;
                }
            } catch (e) {
                document.forms[0].result.value = 'Error';
            }
        }
    </script>
</body>
</html>
 