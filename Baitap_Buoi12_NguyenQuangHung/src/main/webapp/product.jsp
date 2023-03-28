<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 06/10/2022
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>BAI TAP BUOI 12</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<div CLASS="container">

    <div class="row">
        <div class="col-md-6">
            <div >
                <h1 style="padding: 30px 0px;">QUẢN LÝ SẢN PHẨM</h1>
                <form action="http://localhost:8080/baitap/quanly-page" method="post">
                    <div class="mb-3">
                        <label for="tensanpham" class="form-label" >Tên sản phẩm</label><br>
                        <input type="text" class="form-control"  id="tensanpham" name="tensanpham">
                    </div>
                    <div class="mb-3">
                        <label for="soluong" class="form-label" >Số lượng</label><br>
                        <input type="number" class="form-control" id="soluong" name="soluong">
                    </div>
                    <div class="mb-3">
                        <label for="giaban" class="form-label" >Giá bán</label><br>
                        <input type="number" class="form-control" id="giaban" name="giaban">
                    </div>
                    <div>
                        <input class="btn btn-primary" type="submit" value="Lưu lại">
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-6">
        </div>
    </div>
    <div>
        <c:if test="${ListSanPham.size()>0}">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Tên Sản Phẩm</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Giá Bán</th>
            </tr>
            </thead>
            <tbody>

                <c:forEach var="sanpham" begin="1" end="${ListSanPham.size()}" >
                <tr>
                    <th scope="row">
                        <c:out value="${sanpham}"/>
                    </th>
                    <td>${ListSanPham.get(sanpham-1).getTenSP()}</td>
                    <td>${ListSanPham.get(sanpham-1).getSoLuong()}</td>
                    <td>${ListSanPham.get(sanpham-1).getGiaBan()}</td>
                </tr>
                </c:forEach>

            </tbody>
        </table>
        </c:if>
    </div>
</div>
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
