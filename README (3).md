# PolyCoffee

Dự án quản lý quán cà phê PolyCoffee sử dụng Java Servlet/JSP, JDBC, SQL Server và Maven.

## Cấu trúc
- `database/`: Script tạo CSDL và dữ liệu mẫu.
- `documents/`: Tài liệu Lab 1 đến Lab 8.
- `screenshots/`: Ảnh minh họa giao diện/chức năng.
- `src/main/java/`: Java source code (Entity, DAO, Servlet, Filter, Util...).
- `src/main/resources/`: Tài nguyên cấu hình.
- `src/main/webapp/`: JSP, CSS, JavaScript và tài nguyên web.
- `test/`: Test code/tài liệu kiểm thử.

## Công nghệ
- Java
- Jakarta Servlet / JSP
- JDBC
- SQL Server
- Maven
- Apache Tomcat

## Chạy dự án
1. Tạo database bằng `database/PolyCoffee.sql`.
2. Nạp dữ liệu mẫu bằng `database/sample-data.sql`.
3. Cập nhật thông tin kết nối SQL Server trong project.
4. Maven build project.
5. Deploy file WAR lên Apache Tomcat.
