<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 30056685(03)
  Date: 03.03.2023
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-color: #91ced4;
        }

        body * {
            box-sizing: border-box;
        }

        .header {
            background-color: #327a81;
            color: white;
            font-size: 1.5em;
            padding: 1rem;
            text-align: center;
            text-transform: uppercase;
        }

        .table-users {
            border: 1px solid #327a81;
            border-radius: 10px;
            box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
            max-width: calc(100% - 2em);
            margin: 1em auto;
            overflow: hidden;
            width: 800px;
        }

        table {
            width: 100%;
        }

        table td, table th {
            color: #2b686e;
            padding: 10px;
        }

        table td {
            text-align: center;
            vertical-align: middle;
        }

        table td:last-child {
            font-size: 0.95em;
            line-height: 1.4;
            text-align: left;
        }

        table th {
            background-color: #daeff1;
            font-weight: 300;
        }

        table tr:nth-child(2n) {
            background-color: white;
        }

        table tr:nth-child(2n+1) {
            background-color: #edf7f8;
        }

        @media screen and (max-width: 700px) {
            table, tr, td {
                display: block;
            }

            td:first-child {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                width: 100px;
            }

            td:not(:first-child) {
                clear: both;
                margin-left: 100px;
                padding: 4px 20px 4px 90px;
                position: relative;
                text-align: left;
            }

            td:not(:first-child):before {
                color: #91ced4;
                content: "";
                display: block;
                left: 0;
                position: absolute;
            }

            td:nth-child(2):before {
                content: "Name:";
            }

            td:nth-child(3):before {
                content: "Email:";
            }

            td:nth-child(4):before {
                content: "Phone:";
            }

            td:nth-child(5):before {
                content: "Comments:";
            }

            tr {
                padding: 10px 0;
                position: relative;
            }

            tr:first-child {
                display: none;
            }
        }

        @media screen and (max-width: 500px) {
            .header {
                background-color: transparent;
                color: white;
                font-size: 2em;
                font-weight: 700;
                padding: 0;
                text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
            }

            img {
                border: 3px solid;
                border-color: #daeff1;
                height: 100px;
                margin: 0.5rem 0;
                width: 100px;
            }

            td:first-child {
                background-color: #c8e7ea;
                border-bottom: 1px solid #91ced4;
                border-radius: 10px 10px 0 0;
                position: relative;
                top: 0;
                transform: translateY(0);
                width: 100%;
            }

            td:not(:first-child) {
                margin: 0;
                padding: 5px 1em;
                width: 100%;
            }

            td:not(:first-child):before {
                font-size: 0.8em;
                padding-top: 0.3em;
                position: relative;
            }

            td:last-child {
                padding-bottom: 1rem !important;
            }

            tr {
                background-color: white !important;
                border: 1px solid #6cbec6;
                border-radius: 10px;
                box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
                margin: 0.5rem 0;
                padding: 0;
            }

            .table-users {
                border: none;
                box-shadow: none;
                overflow: visible;
            }
        }
    </style>
</head>
<body>
<div class="table-users">
    <div class="header">Users</div>

    <table cellspacing="0">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th width="230">Comments</th>
        </tr>

        <tr>
            <c:forEach items="${people}" var="person">
            <td>${person.name}</td>
            <td>${person.email}</td>
            <td>${person.phone}</td>
            <td>${person.comments}</td>
        </tr>
        </c:forEach>


        <%--        <tr>--%>
        <%--            <td><img src="https://i.picsum.photos/id/1027/100/100.jpg" alt=""/></td>--%>
        <%--            <td>John Doe</td>--%>
        <%--            <td>john.doe@foo.com</td>--%>
        <%--            <td>01 800 2000</td>--%>
        <%--            <td>Blanditiis, aliquid numquam iure voluptatibus ut maiores explicabo ducimus neque, nesciunt rerum--%>
        <%--                perferendis, inventore.--%>
        <%--            </td>--%>
        <%--        </tr>--%>

        <%--        <tr>--%>
        <%--            <td><img src="https://i.picsum.photos/id/64/100/100.jpg" alt=""/></td>--%>
        <%--            <td>Jane Smith</td>--%>
        <%--            <td>jane.smith@foo.com</td>--%>
        <%--            <td>01 800 2000</td>--%>
        <%--            <td> Culpa praesentium unde pariatur fugit eos recusandae voluptas.</td>--%>
        <%--        </tr>--%>

        <%--        <tr>--%>
        <%--            <td><img src="https://i.picsum.photos/id/1025/100/100.jpg" alt=""/></td>--%>
        <%--            <td>John Smith</td>--%>
        <%--            <td>john.smith@foo.com</td>--%>
        <%--            <td>01 800 2000</td>--%>
        <%--            <td>Aut voluptatum accusantium, eveniet, sapiente quaerat adipisci consequatur maxime temporibus quas,--%>
        <%--                dolorem impedit.--%>
        <%--            </td>--%>
        <%--        </tr>--%>
    </table>
</div>
</body>
</html>
