<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nghie
  Date: 18/03/2024
  Time: 8:56 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/bootstrap.bundle.min.js"></script>
</head>
<html>


<body>
<div class="container">
    <form action="/medicalRecord?action=update" method="post" class="w-50 ms-5">
        <h2>Sửa thông tin bệnh án</h2>
        <div class="form-floating mb-3">
            <input type="text" id="id" name="id" class="form-control" placeholder="Nhập Id" value="${medicalRecord.getId()}"
                   readonly>
            <label for="id">Id bệnh án</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" id="recordId" name="recordId" class="form-control" placeholder="Nhập mã bệnh án"
                   value="${medicalRecord.getRecordId()}" required>
            <label for="recordId" class="form-label">Mã Bệnh án</label>
        </div>
        <div class="form-floating mb-3">
            <input type="date" id="startDate" name="startDate" class="form-control" placeholder="Nhập ngày vào viện"
                   value="${medicalRecord.getStartDate()}" required>
            <label for="startDate" class="form-label">Ngày vào vện</label>
        </div>
        <div class="form-floating mb-3">
            <input type="date" id="endDate" name="endDate" class="form-control" placeholder="Nhập ngày ra viện"
                   value="${medicalRecord.getEndDate()}" required>
            <label for="endDate" class="form-label">Ngày ra viện</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" id="desc" name="desc" class="form-control" placeholder="Mô tả"
                   value="${medicalRecord.getDescription()}" required>
            <label for="desc" class="">Mô tả</label>
        </div>
        <div class="mb-3">
            <label for="patientId" class="form-label">Tên bệnh nhân</label>
            <select name="patientId" id="patientId" value="">
                <c:forEach var="patient" items="${patients}">
                    <option value="${patient.getId()}">${patient.getName()}</option>
                </c:forEach>
                -- Chọn bệnh nhân --
            </select>
        </div>
        <button class="btn btn-success" type="submit">Cập nhật</button>
    </form>
</div>
<script>
    const form = document.querySelector("form");
    form.addEventListener("submit", e => {
        if (!form.checkValidity()) {
            e.preventDefault();
        }
        form.classList.add("was-validated")
    })
</script>


</body>
</html>
