

-- Create Categories Table
CREATE TABLE Categories (
  category_id INT PRIMARY KEY IDENTITY(1,1),
  name NVARCHAR(255),
  father_catagories_id INT,
  FOREIGN KEY (father_catagories_id) REFERENCES Categories(category_id)
);
-- Create Manufacture Table
CREATE TABLE Manufacture (
  manufacture_id INT PRIMARY KEY IDENTITY(1,1),
  name NVARCHAR(255),
  phone_number NVARCHAR(255),
  address NVARCHAR(255),
  email NVARCHAR(255)
);
-- Create Person Table
CREATE TABLE Person (
  person_id INT PRIMARY KEY IDENTITY(1,1),
  name NVARCHAR(255),
  address NVARCHAR(255),
  phone_number NVARCHAR(255),
  role INT,
  dob DATE,
  email NVARCHAR(255),
  username NVARCHAR(255),
  password NVARCHAR(255),
  note INT
);

-- Create Products Table
CREATE TABLE Products (
--them gia hien tai
  product_id INT PRIMARY KEY IDENTITY(1,1),
  name NVARCHAR(255),
  description NVARCHAR(255),
  image NVARCHAR(255),
  category_id INT,
  created_at DATE,
  manufacture_id INT,
  FOREIGN KEY (manufacture_id) REFERENCES Manufacture(manufacture_id),
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Create Imports Table
CREATE TABLE Imports (
  import_id INT PRIMARY KEY IDENTITY(1,1),
  product_id INT,
  quantity INT,
  price DECIMAL(10,2),
  manufacture_id INT,
  date DATE,
  employee_id INT,
  note NVARCHAR(255),
  FOREIGN KEY (product_id) REFERENCES Products(product_id),
  FOREIGN KEY (manufacture_id) REFERENCES Manufacture(manufacture_id),
  FOREIGN KEY (employee_id) REFERENCES Person(person_id)
);
-- Create Listproduct Table
CREATE TABLE Listproduct (
--them gia hien tai
  listproduct_id INT PRIMARY KEY IDENTITY(1,1),
  product_id INT,
  number INT,
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create Exports Table
CREATE TABLE Exports (
  export_id INT PRIMARY KEY IDENTITY(1,1),
  list_product_id INT,
  price DECIMAL(10,2),
  manufacture_id INT,
  date DATE,
  employee_id INT,
  note NVARCHAR(255),
  FOREIGN KEY (list_product_id) REFERENCES Listproduct(listproduct_id),
  FOREIGN KEY (manufacture_id) REFERENCES Manufacture(manufacture_id),
  FOREIGN KEY (employee_id) REFERENCES Person(person_id)
);


-- Create Salary Table
CREATE TABLE Salary (
  salary_id INT PRIMARY KEY IDENTITY(1,1),
  id_employee INT,
  salary DECIMAL(10,2),
  bonus DECIMAL(10,2),
  date DATE,
  FOREIGN KEY (id_employee) REFERENCES Person(person_id)
);

-- Create Cart Table
CREATE TABLE Cart (
--them gia hien tai
  cart_id INT PRIMARY KEY IDENTITY(1,1),
  customer_id INT,
  product_id INT,
  number INT,
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create History_update_product Table
CREATE TABLE History_update_product (
  history_update_id INT PRIMARY KEY IDENTITY(1,1),
  product_id INT,
  employee_id INT,
  price_cur DECIMAL(10,2),
  date DATE,
  content NVARCHAR(255),
  FOREIGN KEY (product_id) REFERENCES Products(product_id),
  FOREIGN KEY (employee_id) REFERENCES Person(person_id)
);

-- Create Product_In_Stock Table
CREATE TABLE Product_In_Stock (
--them gia hien tai
  product_id INT PRIMARY KEY,
  number INT,
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create Orders Table
CREATE TABLE Orders (
--them gia hien tai
  order_id INT PRIMARY KEY IDENTITY(1,1),
  customer_id INT,
  product_id INT,
  number_order INT,
  FOREIGN KEY (customer_id) REFERENCES Person(person_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create notifications Table
CREATE TABLE notifications (
  notification_id INT PRIMARY KEY IDENTITY(1,1),
  content NVARCHAR(255),
  timestamp DATE,
  user_id INT,
  role NVARCHAR(50),
  FOREIGN KEY (user_id) REFERENCES Person(person_id)
);

INSERT INTO Categories (name, [father_catagories_id]) VALUES 
(N'Đồ gia dụng', NULL),
(N'Đồ phòng khách', NULL),
(N'Đồ phòng tắm', NULL),
(N'Đồ phòng bếp', NULL),
(N'Tủ lạnh',1), --5
(N'Máy giặt',1), --6
(N'Máy lạnh',1), --7
(N'TV', 2), --8
(N'Bàn ghế', 2), --9
(N'Đồ trang trí', 2), --10
(N'Bồn tắm', 3), --11
(N'Bồn rửa mặt', 3),--12
(N'Vòi hoa sen', 3),--13
(N'Bếp nấu ăn', 4),--14
(N'Bát đĩa', 4),--15
(N'Thiết bị điện nhà bếp', 4);--16


INSERT INTO Manufacture (name, phone_number, address, email) VALUES 
('Panasonic', '0123456789', N'123 Đường ABC, Thành phố X', 'panasonic@example.com'),
('Samsung', '0987654321', N'456 Đường XYZ, Thành phố Y', 'samsung@example.com'),
('LG', '0123456789', N'789 Đường DEF, Thành phố Z', 'lg@example.com'),
('Mitsubishi', '0987654321', N'101 Đường GHI, Thành phố W', 'mitsubishi@example.com'),
('Daikin', '0123456789', N'202 Đường JKL, Thành phố V', 'daikin@example.com'),
('TCL', '0987654321', N'303 Đường MNO, Thành phố U', 'tcl@example.com'),
('Bosch', '0123456789', N'404 Đường PQR, Thành phố T', 'bosch@example.com'),
('Ariston', '0987654321', N'505 Đường STU, Thành phố S', 'ariston@example.com'),
('Sharp', '0123456789', N'606 Đường VWX, Thành phố R', 'sharp@example.com'),
('Hurom', '0987654321', N'707 Đường YZ, Thành phố Q', 'hurom@example.com');

-- Thêm dữ liệu vào bảng Products từ thông tin đã cung cấp
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
-- tu lanh
(N'Tủ lạnh Aqua', N'Tủ lạnh Aqua Inverter 456 lít AQR-M525XA(FB) thiết kế có thể bảo quản thực phẩm khô và ẩm riêng biệt nhờ công nghệ cân bằng độ ẩm HCS, giúp duy trì được độ tươi ngon cũng như kéo dài thời gian bảo quản thực phẩm lâu hơn', 'tulanh_aqua.jpg', 5, '2024-03-04', 1),
(N'Tủ lạnh LG', N'Tủ lạnh LG Inverter 470 lít GR-B50BL là sự lựa chọn hoàn hảo cho những gia đình đông thành viên. Với dung tích sử dụng rộng rãi 470 lít, mẫu tủ lạnh cỡ lớn French Door được thiết kế nhiều ngăn - khay - kệ - hộc bên trong', 'tulanh_lg.jpg', 5, '2024-03-04', 1),
(N'Tủ lạnh Samsung', N'Tủ lạnh Samsung Inverter 655 lít RS62R5001M9/SV có thiết kế kiểu tủ lạnh side by side đẳng cấp, đi cùng gam màu bạc sang trọng, thời thượng, tủ lạnh sẽ là điểm nhấn nổi bật, mang lại cho không gian nội thất của gia đình một vẻ đẹp hiện đại.', 'tulanh_samsung.jpg', 5, '2024-03-04', 1),
(N'Tủ lạnh mini Hòa Phát', N'Tủ đông đứng Hòa Phát 147 Lít HPF UAH6147 được phân chia nhiều ngăn thuận tiện cho việc phân loại và bảo quản thực phẩm. Ngoài ra, tủ đông có khả năng cấp đông nhanh và sâu đến ≤ -18℃.', 'tulanh_hoaphat.jpg', 5, '2024-03-04', 1),
(N'Tủ Đông Sanaky 100 lít', N'Tủ đông 100 lít phù hợp với gia đình, hộ buôn bán có diện tích nhỏ hoặc có nhu cầu trữ thực phẩm không cao.', 'tulanh_sanaky.jpg', 5, '2024-03-04', 1),
(N'Tủ đông Hòa Phát 245 Lít', N'Tủ đông Hòa Phát 245 Lít HPF BD6245 có 1 ngăn đông và 1 ngăn mát cho bạn giữ lạnh thực phẩm tối ưu với công nghệ làm lạnh trực tiếp, dàn lạnh bằng đồng dẫn nhiệt tốt, sử dụng gas R600a bảo vệ môi trường.', 'tulanh_hoaphat2.jpg', 5, '2024-03-04', 1),
(N'Tủ lạnh Casper Inverter', N'Tủ lạnh Casper Inverter 458 lít Side By Side RS-460PG mang thiết kế Side by Side sang trọng, hỗ trợ công nghệ làm lạnh đa chiều, làm lạnh trực tiếp cho hiệu quả giữ tươi thực phẩm cao, dùng tiết kiệm điện với công nghệ Advanced Inverter.', 'tulanh_casper.jpg', 5, '2024-03-04', 1);

--may giat
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Máy giặt LG', N'Máy giặt tiện lợi', 'maygiat_lg.jpg', 6, '2024-03-04', 2),
(N'Máy giặt LG Model B2', N'Máy giặt tiện lợi, chất lượng cao', 'maygiat_lg_model_b2.jpg', 6, '2024-03-04', 2),
(N'Máy giặt Samsung QuickWash', N'Máy giặt nhanh chóng, hiệu quả', 'maygiat_samsung_quickwash.jpg', 6, '2024-03-04', 1),
(N'Máy giặt Electrolux SilentClean', N'Máy giặt êm, làm sạch mạnh mẽ', 'maygiat_electrolux_silentclean.jpg', 6, '2024-03-04', 3),
(N'Máy giặt Bosch PowerWash', N'Máy giặt công suất mạnh, tiết kiệm nước', 'maygiat_bosch_powerwash.jpg', 6, '2024-03-04', 4),
(N'Máy giặt Panasonic EcoFriendly', N'Máy giặt thân thiện với môi trường', 'maygiat_panasonic_ecofriendly.jpg', 6, '2024-03-04', 5);

--may lanh
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Máy lạnh Panasonic', N'Máy lạnh hiệu suất cao', 'maylanh_panasonic.jpg', 7, '2024-03-04', 3),
(N'Máy lạnh Panasonic Model A1', N'Máy lạnh hiệu suất cao, công nghệ mới', 'maylanh_panasonic_model_a1.jpg', 7, '2024-03-04', 3),
(N'Máy lạnh Samsung CoolTech', N'Máy lạnh tiết kiệm năng lượng', 'maylanh_samsung_cooltech.jpg', 7, '2024-03-04', 1),
(N'Máy lạnh LG Inverter', N'Máy lạnh Inverter, làm lạnh nhanh chóng', 'maylanh_lg_inverter.jpg', 7, '2024-03-04', 2),
(N'Máy lạnh Mitsubishi SilentCool', N'Máy lạnh siêu êm, phù hợp cho phòng ngủ', 'maylanh_mitsubishi_silentcool.jpg', 7, '2024-03-04', 4),
(N'Máy lạnh Daikin EcoSmart', N'Máy lạnh tiết kiệm năng lượng và thân thiện với môi trường', 'maylanh_daikin_ecosmart.jpg', 7, '2024-03-04', 5);

--TV
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'TV Sony 4K', N'TV độ phân giải cao, màu sắc sống động', 'tv_sony_4k.jpg', 8, '2024-03-04', 4),
(N'TV Samsung QLED 8K', N'TV công nghệ màn hình mới, độ phân giải siêu cao', 'tv_samsung_qled_8k.jpg', 8, '2024-03-04', 1),
(N'TV LG OLED Smart', N'TV OLED thông minh, màu sắc chân thực', 'tv_lg_oled_smart.jpg', 8, '2024-03-04', 2),
(N'TV Panasonic UltraHD', N'TV UltraHD, âm thanh mạnh mẽ', 'tv_panasonic_ultrahd.jpg', 8, '2024-03-04', 3),
(N'TV Philips Ambilight', N'TV có hệ thống đèn Ambilight tạo không khí hình ảnh độc đáo', 'tv_philips_ambilight.jpg', 8, '2024-03-04', 5),
(N'TV TCL Android TV', N'TV chạy hệ điều hành Android, tiện ích đa dạng', 'tv_tcl_android_tv.jpg', 8, '2024-03-04', 6);

-- ban ghe
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Bàn trà gỗ', N'Bàn trà phòng khách, chất liệu gỗ tự nhiên', 'ban_tra_go.jpg', 9, '2024-03-04', 5),
(N'Bàn ăn gỗ sồi', N'Bàn ăn chất liệu gỗ sồi cao cấp', 'ban_an_go_soi.jpg', 9, '2024-03-04', 6),
(N'Bàn làm việc hiện đại', N'Bàn làm việc phong cách hiện đại', 'ban_lam_viec_hien_dai.jpg', 9, '2024-03-04', 1),
(N'Ghế sofa da cao cấp', N'Ghế sofa da êm ái và sang trọng', 'ghe_sofa_da_caocap.jpg', 9, '2024-03-04', 2),
(N'Ghế ăn gỗ chất liệu MDF', N'Ghế ăn chất liệu MDF, kiểu dáng đẹp', 'ghe_an_go_mdf.jpg', 9, '2024-03-04', 3),
(N'Ghế xoay văn phòng', N'Ghế văn phòng thoải mái, có thể xoay 360 độ', 'ghe_xoay_van_phong.jpg', 9, '2024-03-04', 4);

-- do trang tri
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Gối sofa trang trí', N'Gối sofa màu sắc', 'goi_sofa.jpg', 10, '2024-03-04', 6),
(N'Gối sofa trang trí màu pastel', N'Gối sofa mềm mại, phù hợp trang trí phòng khách', 'goi_sofa_mau_pastel.jpg', 10, '2024-03-04', 6),
(N'Gối sofa hoa văn hiện đại', N'Gối sofa với hoa văn thiết kế hiện đại', 'goi_sofa_hoa_van_hien_dai.jpg', 10, '2024-03-04', 1),
(N'Gối sofa linen tự nhiên', N'Gối sofa chất liệu linen tự nhiên, thoáng khí', 'goi_sofa_linen_tu_nhien.jpg', 10, '2024-03-04', 2),
(N'Bộ gối sofa và chăn nhẹ', N'Bộ gối sofa và chăn phù hợp cho mùa hè', 'bo_goi_sofa_va_chan_nhe.jpg', 10, '2024-03-04', 3),
(N'Gối sofa hình trái tim', N'Gối sofa hình trái tim dễ thương', 'goi_sofa_hinh_trai_tim.jpg', 10, '2024-03-04', 4);

-- bon tam
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Bồn tắm chất liệu acrylic', N'Bồn tắm chất liệu chống trầy', 'bon_tam_acrylic.jpg', 11, '2024-03-04', 7),
(N'Bồn tắm acrylic vuông', N'Bồn tắm vuông chất liệu acrylic chống trầy', 'bon_tam_acrylic_vuong.jpg', 11, '2024-03-04', 7),
(N'Bồn tắm oval chống trầy', N'Bồn tắm oval chất liệu acrylic chống trầy', 'bon_tam_acrylic_oval.jpg', 11, '2024-03-04', 1),
(N'Bồn tắm acrylic có chân đứng', N'Bồn tắm acrylic cao cấp có chân đứng', 'bon_tam_acrylic_chan_dung.jpg', 11, '2024-03-04', 2),
(N'Bồn tắm acrylic đôi', N'Bồn tắm acrylic đôi sang trọng', 'bon_tam_acrylic_doi.jpg', 11, '2024-03-04', 3),
(N'Bồn tắm acrylic giữ nhiệt', N'Bồn tắm acrylic giữ nhiệt tốt', 'bon_tam_acrylic_giu_nhiet.jpg', 11, '2024-03-04', 4),
(N'Bồn tắm acrylic kiểu dáng hiện đại', N'Bồn tắm acrylic kiểu dáng hiện đại', 'bon_tam_acrylic_kieu_dang_hien_dai.jpg', 11, '2024-03-04', 5);

--bon rua mat
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Bồn rửa mặt đáng yêu', N'Bồn rửa mặt phòng tắm', 'bon_rua_mat_dayeu.jpg', 12, '2024-03-04', 8),
(N'Bồn rửa mặt hình chú mèo', N'Bồn rửa mặt hình chú mèo dễ thương', 'bon_rua_mat_hinh_chu_meo.jpg', 12, '2024-03-04', 8),
(N'Bồn rửa mặt hình trái tim', N'Bồn rửa mặt hình trái tim phong cách', 'bon_rua_mat_hinh_trai_tim.jpg', 12, '2024-03-04', 1),
(N'Bồn rửa mặt vòng tròn', N'Bồn rửa mặt hình vòng tròn đơn giản', 'bon_rua_mat_vong_tron.jpg', 12, '2024-03-04', 2),
(N'Bồn rửa mặt hình ngôi sao', N'Bồn rửa mặt hình ngôi sao sinh động', 'bon_rua_mat_hinh_ngoi_sao.jpg', 12, '2024-03-04', 3),
(N'Bồn rửa mặt hình hoa', N'Bồn rửa mặt hình hoa tinh tế', 'bon_rua_mat_hinh_hoa.jpg', 12, '2024-03-04', 4),
(N'Bồn rửa mặt hình góc cạnh', N'Bồn rửa mặt hình góc cạnh hiện đại', 'bon_rua_mat_hinh_goc_canh.jpg', 12, '2024-03-04', 5);

-- voi sen 
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Vòi sen inox', N'Vòi sen chống rỉ sét', 'voi_sen_inox.jpg', 13, '2024-03-04', 9),
(N'Vòi sen inox vuông', N'Vòi sen inox chất liệu cao cấp, kiểu dáng vuông', 'voi_sen_inox_vuong.jpg', 13, '2024-03-04', 9),
(N'Vòi sen inox tròn', N'Vòi sen inox kiểu dáng tròn, chống rỉ sét', 'voi_sen_inox_tron.jpg', 13, '2024-03-04', 1),
(N'Vòi sen inox dạng cổ điển', N'Vòi sen inox kiểu cổ điển, sang trọng', 'voi_sen_inox_dang_co_dien.jpg', 13, '2024-03-04', 2),
(N'Vòi sen inox đa năng', N'Vòi sen inox có nhiều chức năng tiện ích', 'voi_sen_inox_da_nang.jpg', 13, '2024-03-04', 3),
(N'Vòi sen inox với đèn LED', N'Vòi sen inox tích hợp đèn LED thú vị', 'voi_sen_inox_den_led.jpg', 13, '2024-03-04', 4),
(N'Vòi sen inox góc cạnh', N'Vòi sen inox kiểu dáng góc cạnh hiện đại', 'voi_sen_inox_goc_canh.jpg', 13, '2024-03-04', 5);

--bep ga
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Bếp gas Bosch', N'Bếp gas tiết kiệm năng lượng', 'bep_gas_bosch.jpg', 14, '2024-03-04', 10),
(N'Bếp gas Bosch Model X1', N'Bếp gas Bosch tiết kiệm năng lượng, kiểu dáng hiện đại', 'bep_gas_bosch_model_x1.jpg', 14, '2024-03-04', 10),
(N'Bếp gas Bosch Inverter', N'Bếp gas Bosch với công nghệ Inverter', 'bep_gas_bosch_inverter.jpg', 14, '2024-03-04', 1),
(N'Bếp gas Bosch đôi', N'Bếp gas Bosch với hai bếp độc lập', 'bep_gas_bosch_doi.jpg', 14, '2024-03-04', 2),
(N'Bếp gas Bosch dạng bàn', N'Bếp gas Bosch dạng bàn tiện lợi', 'bep_gas_bosch_dang_ban.jpg', 14, '2024-03-04', 3),
(N'Bếp gas Bosch SmartCook', N'Bếp gas Bosch với tính năng SmartCook thông minh', 'bep_gas_bosch_smartcook.jpg', 14, '2024-03-04', 4),
(N'Bếp gas Bosch đa chức năng', N'Bếp gas Bosch đa chức năng, sử dụng linh hoạt', 'bep_gas_bosch_da_chuc_nang.jpg', 14, '2024-03-04', 5);

--bat dia
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Bát đĩa sứ cao cấp', N'Bát đĩa chất liệu sứ cao cấp', 'bat_dia_su_caocap.jpg', 15, '2024-03-04', 1),
(N'Bát đĩa sứ cao cấp trắng', N'Bát đĩa sứ cao cấp màu trắng tinh khôi', 'bat_dia_su_caocap_trang.jpg', 15, '2024-03-04', 1),
(N'Bát đĩa sứ cao cấp họa tiết', N'Bát đĩa sứ cao cấp với họa tiết tinh xảo', 'bat_dia_su_caocap_hoa_tiet.jpg', 15, '2024-03-04', 1),
(N'Bát đĩa sứ cao cấp màu pastel', N'Bát đĩa sứ cao cấp màu pastel dịu dàng', 'bat_dia_su_caocap_mau_pastel.jpg', 15, '2024-03-04', 2),
(N'Bát đĩa sứ cao cấp hình hoa', N'Bát đĩa sứ cao cấp với hình hoa tinh tế', 'bat_dia_su_caocap_hinh_hoa.jpg', 15, '2024-03-04', 3),
(N'Bát đĩa sứ cao cấp dành cho đặc sản', N'Bát đĩa sứ cao cấp với hình châu báu đặc sản', 'bat_dia_su_caocap_dac_san.jpg', 15, '2024-03-04', 4),
(N'Bát đĩa sứ cao cấp phong cách châu Âu', N'Bát đĩa sứ cao cấp phong cách châu Âu sang trọng', 'bat_dia_su_caocap_chau_a.jpg', 15, '2024-03-04', 5);
-- ... (Thêm dữ liệu cho các sản phẩm khác
INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES 
(N'Máy xay cà phê hiện đại', N'Máy xay cà phê chất lượng cao, thiết kế hiện đại', 'may_xay_ca_phe_hien_dai.jpg', 16, '2024-03-04', 3),
(N'Lò vi sóng Panasonic Inverter', N'Lò vi sóng Panasonic với công nghệ Inverter', 'lo_vi_song_panasonic_inverter.jpg', 16, '2024-03-04', 1),
(N'Bếp điện từ Bosch', N'Bếp điện từ Bosch tiết kiệm năng lượng', 'bep_dien_tu_bosch.jpg', 16, '2024-03-04', 2),
(N'Máy nước nóng Ariston', N'Máy nước nóng Ariston, hiệu suất cao', 'may_nuoc_nong_ariston.jpg', 16, '2024-03-04', 3),
(N'Máy lọc không khí Sharp', N'Máy lọc không khí Sharp, đảm bảo không khí trong lành', 'may_loc_khong_khi_sharp.jpg', 16, '2024-03-04', 4),
(N'Máy ép trái cây Hurom', N'Máy ép trái cây Hurom, giữ nguyên chất dinh dưỡng', 'may_ep_trai_cay_hurom.jpg', 16, '2024-03-04', 5);

INSERT INTO Person
([name], [address], [phone_number], [role], [dob], [email], [username], [password], [note])
VALUES 
(N'Nguyễn Mạnh Hùng', N'Yên Phong-Bắc Ninh', '0373999888', '3', '2003-12-18', 'manhung1@email.com', 'cus1', '123', ''),
(N'Đỗ Đức Hanh', N'Hải Phòng', '0373999999', '2', '2003-12-18', 'manhung1223@email.com', 'em1', '123', ''),
(N'Hoàng Ngọc Thủy', N'Vĩnh Phúc', '0373999777', '1', '2003-12-18', 'manhung1334@email.com', 'ma1', '123', '');

INSERT INTO Salary (id_employee, salary, bonus, date)
VALUES 
(2, 50000000, 2000000, '2024-03-04'),
(2, 50000000, 3000000, '2024-04-04');

INSERT INTO Product_In_Stock ([product_id], [number])
VALUES 
(1, 500),
(2, 500),
(3, 500),
(4, 500),
(5, 500),
(6, 500),
(7, 500),
(8, 500),
(9, 500),
(10, 500),
(11, 500),
(12, 500),
(13, 500),
(14, 500),
(15, 500),
(16, 500),
(17, 500),
(18, 500),
(19, 500),
(20, 500),
(21, 500),
(22, 500),
(23, 500),
(24, 500),
(25, 500),
(26, 500),
(27, 500),
(28, 500),
(29, 500),
(30, 500),
(31, 500),
(32, 500),
(33, 500),
(34, 500),
(35, 500),
(36, 500),
(37, 500),
(38, 500),
(39, 500),
(40, 500),
(41, 500),
(42, 500),
(43, 500),
(44, 500),
(45, 500),
(46, 500),
(47, 500),
(48, 500),
(49, 500),
(50, 500),
(51, 500),
(52, 500),
(53, 500),
(54, 500),
(55, 500),
(56, 500),
(57, 500),
(58, 500),
(59, 500),
(60, 500),
(61, 500),
(62, 500),
(63, 500),
(64, 500),
(65, 500),
(66, 500),
(67, 500),
(68, 500),
(69, 500),
(70, 500),
(71, 500),
(72, 500),
(73, 500),
(74, 500),
(75, 500),
(76, 500),
(77, 500),
(78, 500);

INSERT INTO Cart (customer_id, product_id, number)
VALUES
(1, 5, 3),
(1, 8, 2),
(1, 12, 1),
(1, 17, 4),
(1, 20, 2);

INSERT INTO Orders (customer_id, product_id, number_order)
VALUES
(1, 5, 200),
(1, 8, 100),
(1, 12, 3500);

INSERT INTO Imports (product_id, quantity, price, manufacture_id, date, employee_id, note)
VALUES
(1, 10, 150.50, 1, '2024-03-05', 2, 'Hóa đơn 1 cho khách hàng 1'),
(2, 5, 200.75, 1, '2024-03-06', 2, 'Hóa đơn 2 cho khách hàng 1');

INSERT INTO Listproduct (product_id, number)
VALUES
(1, 5),
(2, 10),
(3, 8);


INSERT INTO Exports (list_product_id, price, manufacture_id, date, employee_id, note)
VALUES
(1, 120.25, 1, '2024-03-07', 2, 'Hóa đơn xuất 1 cho khách hàng 1'),
(3, 75.50, 1, '2024-03-08', 2, 'Hóa đơn xuất 2 cho khách hàng 1'),
(2, 150.75, 1, '2024-03-09', 2, 'Hóa đơn xuất 3 cho khách hàng 1');

INSERT INTO History_update_product (product_id, employee_id, price_cur, date, content)
VALUES
(1, 2, 1500000, '2024-03-04', 'Updated price for Product 1'),
(3, 2, 800000, '2024-03-04', 'Updated price for Product 3'),
(2, 2, 1200000, '2024-03-04', 'Updated price for Product 2');
INSERT INTO History_update_product ([product_id], [employee_id], [price_cur], [date], [content])
VALUES
    (4, 2, 15000000.00, '2024-03-04', ''),
    (5, 2, 12087000.00, '2024-03-04', ''),
    (6, 2, 8007000.00, '2024-03-04', ''),
	(7, 2, 15080000.00, '2024-03-04', ''),
    (8, 2, 12070000.00, '2024-03-04', ''),
    (9, 2, 8008000.00, '2024-03-04', ''),
	(10, 2, 15090000.00, '2024-03-04', ''),
    (11, 2, 12080000.00, '2024-03-04', ''),
    (12, 2, 8009000.00, '2024-03-04', ''),
	(13, 2, 15080000.00, '2024-03-04', ''),
    (14, 2, 12700000.00, '2024-03-04', ''),
    (15, 2, 8008000.00, '2024-03-04', ''),
	(16, 2, 1500000.00, '2024-03-04', ''),
    (17, 2, 12009000.00, '2024-03-04', ''),
    (18, 2, 8040000.00, '2024-03-04', ''),
	(19, 2, 15040000.00, '2024-03-04', ''),
    (20, 2, 12300000.00, '2024-03-04', ''),
    (21, 2, 8040000.00, '2024-03-04', ''),
	(22, 2, 1500000.00, '2024-03-04', ''),
    (23, 2, 1200000.00, '2024-03-04', ''),
    (24, 2, 80036000.00, '2024-03-04', ''),
	(25, 2, 15200000.00, '2024-03-04', ''),
    (26, 2, 12030000.00, '2024-03-04', ''),
    (27, 2, 8002000.00, '2024-03-04', ''),
	(28, 2, 15030000.00, '2024-03-04', ''),
    (29, 2, 12020000.00, '2024-03-04', ''),
    (30, 2, 8040000.00, '2024-03-04', ''),
	(31, 2, 15030000.00, '2024-03-04', ''),
    (32, 2, 12020000.00, '2024-03-04', ''),
    (33, 2, 8040000.00, '2024-03-04', ''),
	(34, 2, 15300000.00, '2024-03-04', ''),
    (35, 2, 12200000.00, '2024-03-04', ''),
    (36, 2, 8020000.00, '2024-03-04', ''),
	(37, 2, 15300000.00, '2024-03-04', ''),
    (38, 2, 12200000.00, '2024-03-04', ''),
    (39, 2, 8003000.00, '2024-03-04', ''),
	(40, 2, 15030000.00, '2024-03-04', ''),
    (41, 2, 12400000.00, '2024-03-04', ''),
    (42, 2, 8030000.00, '2024-03-04', ''),
	(43, 2, 15300000.00, '2024-03-04', ''),
    (44, 2, 12200000.00, '2024-03-04', ''),
    (45, 2, 8004000.00, '2024-03-04', ''),
	(46, 2, 15020000.00, '2024-03-04', ''),
    (47, 2, 12400000.00, '2024-03-04', ''),
    (48, 2, 8030000.00, '2024-03-04', ''),
	(49, 2, 15040000.00, '2024-03-04', ''),
    (50, 2, 1200000.00, '2024-03-04', ''),
    (51, 2, 8030000.00, '2024-03-04', ''),
	(52, 2, 15030000.00, '2024-03-04', ''),
    (53, 2, 1200000.00, '2024-03-04', ''),
    (54, 2, 8020000.00, '2024-03-04', ''),
	(55, 2, 1500000.00, '2024-03-04', ''),
    (56, 2, 12003000.00, '2024-03-04', ''),
	(57, 2, 13500000.00, '2024-03-04', ''),
    (58, 2, 12300000.00, '2024-03-04', ''),
    (59, 2, 8004000.00, '2024-03-04', ''),
	(60, 2, 15030000.00, '2024-03-04', ''),
    (61, 2, 12050000.00, '2024-03-04', ''),
	(62, 2, 15040000.00, '2024-03-04', ''),
    (63, 2, 12030000.00, '2024-03-04', ''),
    (64, 2, 8003000.00, '2024-03-04', ''),
	(65, 2, 15030000.00, '2024-03-04', ''),
    (66, 2, 12040000.00, '2024-03-04', ''),
	(67, 2, 15500000.00, '2024-03-04', ''),
    (68, 2, 12400000.00, '2024-03-04', ''),
    (69, 2, 8030000.00, '2024-03-04', ''),
	(70, 2, 15300000.00, '2024-03-04', ''),
    (71, 2, 12200000.00, '2024-03-04', ''),
	(72, 2, 15500000.00, '2024-03-04', ''),
    (73, 2, 12400000.00, '2024-03-04', ''),
    (74, 2, 800000.00, '2024-03-04', ''),
	(75, 2, 1500000.00, '2024-03-04', ''),
    (76, 2, 12300000.00, '2024-03-04', ''),
    (77, 2, 1800000.00, '2024-03-04', ''),
    (78, 2, 8100000.00, '2024-03-04', '');


INSERT INTO notifications (content, timestamp, user_id, role)
VALUES
('New notification 1', '2024-03-04 08:30:00', 1, 3),
('New notification 1.1', '2024-03-04 08:30:00', NULL, 3),
('New notification 2', '2024-03-04 09:15:00', 2, 2),
('New notification 3', '2024-03-04 10:00:00', 3, 1);