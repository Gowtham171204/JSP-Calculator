Calculator using JSP

This project is a simple 4x4 grid calculator implemented using JavaServer Pages (JSP). The calculator provides basic arithmetic operations such as addition, subtraction, multiplication, and division. It also includes error handling for division by zero.

Features

- Basic arithmetic operations: addition, subtraction, multiplication, and division
- Clear display button
- User-friendly 4x4 grid layout
- Error handling for division by zero
- Displays input expression and calculation result in separate input boxes

Getting Started

Prerequisites

To run this project, you will need:

- A web server that supports JSP, such as Apache Tomcat
- A web browser to access the calculator

Installation

1. Download and install Apache Tomcat (or another JSP-supported web server) from [Apache Tomcat](https://tomcat.apache.org/download-90.cgi).

2. Create a new web application project in your web server's webapps directory. For example, create a folder named `grid-calculator` in the `webapps` directory of your Tomcat installation.

3. Inside the `grid-calculator` folder, create a new JSP file named `app.jsp`.

4. Copy the following code into the `app.jsp` file:

    ```jsp
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
    ```

Usage

1. Start your web server (e.g., Apache Tomcat).

2. Open your web browser and navigate to `http://localhost:8080/grid-calculator` (adjust the URL based on your server configuration).

3. The calculator interface should be displayed. Enter your calculation by clicking the buttons on the grid, and the result will be shown in the result input box.





Screenshots

 ![Screenshot 2025-02-04 223313](https://github.com/user-attachments/assets/30bb978f-4bfc-43f3-b4c9-8819be9ea985)

 ![Screenshot 2025-02-05 092406](https://github.com/user-attachments/assets/90c3a7b3-a557-484a-8d05-6b947071bbe7)

![Screenshot 2025-02-05 092434](https://github.com/user-attachments/assets/9804df2c-fe67-4822-b369-167ca66517fd)

 ![Screenshot 2025-02-05 092452](https://github.com/user-attachments/assets/0e301a03-08a2-41bc-aca7-061f4313dd04)

 ![Screenshot 2025-02-05 092339](https://github.com/user-attachments/assets/6d0bfe19-edb7-4cd6-be4d-596b56ed7560)




Contributing

Feel free to fork this repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

License

This project is licensed under the MIT License. See the `LICENSE` file for more information.
