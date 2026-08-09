USE PolyCoffee;
GO

INSERT INTO categories (CategoryName, Description, Status)
VALUES
(N'Cà phê', N'Các loại cà phê', 1),
(N'Trà', N'Các loại trà', 1),
(N'Nước ép', N'Nước ép trái cây', 1),
(N'Đá xay', N'Đồ uống đá xay', 1);
GO

INSERT INTO drinks (DrinkName, Price, Image, Status, CategoryID)
VALUES
(N'Cà phê đen', 25000, 'coffee-den.jpg', 1, 1),
(N'Cà phê sữa', 30000, 'coffee-sua.jpg', 1, 1),
(N'Trà đào', 35000, 'tra-dao.jpg', 1, 2),
(N'Nước cam', 30000, 'nuoc-cam.jpg', 1, 3);
GO

INSERT INTO users (FullName, Username, Password, Phone, Role)
VALUES
(N'Quản trị viên', 'admin', '123456', '0900000000', 1),
(N'Nhân viên mẫu', 'nhanvien', '123456', '0900000001', 0);
GO
