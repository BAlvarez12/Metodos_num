<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Método de la Secante</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background: linear-gradient(135deg, #1f1c2c, #928dab);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            padding: 30px 40px;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            border: 1px solid rgba(255, 255, 255, 0.18);
            color: white;
            width: 400px;
            animation: slideIn 1s ease-out;
        }

        @keyframes slideIn {
            from { opacity: 0; transform: translateY(-50px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            font-weight: bold;
            color: #ffffff;
            text-shadow: 0 0 8px #fff;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 18px;
            border: none;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.1);
            color: #ffffff;
            font-size: 14px;
            outline: none;
            transition: background 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            background: rgba(255, 255, 255, 0.2);
        }

        ::placeholder {
            color: #cccccc;
        }

        button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #00feba, #5b548a);
            color: white;
            font-weight: bold;
            font-size: 16px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.4s ease;
        }

        button:hover {
            background: linear-gradient(135deg, #5b548a, #00feba);
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Método de la Secante</h2>
    <form method="post" action="SecanteServlet">
        <label for="funcion">Función f(x):</label>
        <input type="text" id="funcion" name="funcion" required>

        <label for="x0">Valor inicial x0:</label>
        <input type="number" step="any" id="x0" name="x0" required>

        <label for="x1">Valor siguiente x1:</label>
        <input type="number" step="any" id="x1" name="x1" required>

        <button type="submit">Calcular</button>
        
            <% if (request.getAttribute("resultado") != null) { %>
        <hr style="margin-top: 25px; border: 0; border-top: 1px solid rgba(255,255,255,0.3);">
        <h3 style="text-align:center; margin-top:20px;">Resultado</h3>

        <div style="margin-top: 20px;">
            <%= request.getAttribute("resultado") %>
        </div>
    <% } %>

    </form>
</div>
</body>
</html>
