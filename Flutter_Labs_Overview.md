# Tổng quan và Phân tích 9 Mini-Projects Flutter

Tài liệu này trình bày chi tiết mục tiêu, kỹ năng thiết yếu và các khái niệm sẽ được học/áp dụng cho 9 bài Lab (mini-projects) trong quá trình học và thực hành Flutter. Dưới đây là mục đích và những gì bạn sẽ học được qua từng project tương ứng với 9 thư mục đã tạo.

---

## Lab 1: I Am Rich - How to Create Flutter Apps From Scratch
**Thư mục:** `lab1_iam_rich`
- **Mục tiêu chính:** Làm quen với môi trường Flutter, thiết lập ứng dụng từ một project rỗng (scratch) và nắm được cấu trúc thư mục của một dự án Flutter cơ bản.
- **Khái niệm áp dụng:** `MaterialApp`, `Scaffold`, `AppBar`, `Image`, `StatelessWidget`.
- **Kỹ năng đạt được:** 
  - Biết cách nhúng tài nguyên cục bộ (như ảnh, icon) vào file `pubspec.yaml`.
  - Thành thạo việc tạo một ứng dụng tĩnh với các widget nền tảng cơ bản nhất.

## Lab 2: MiCard - How to Build Beautiful UIs with Flutter Widgets
**Thư mục:** `lab2_micard`
- **Mục tiêu chính:** Xây dựng một ứng dụng danh thiếp cá nhân (business card) chuyên nghiệp với giao diện đẹp mắt.
- **Khái niệm áp dụng:** Xây dựng Layout với `Column`, `Row`, `Container`, `CircleAvatar`, `Card`, `ListTile`, `SizedBox`, `Icon`, Custom Fonts.
- **Kỹ năng đạt được:**
  - Làm chủ cách sắp xếp, canh chỉnh các phần tử trên không gian 2D trên thiết bị.
  - Tích hợp và sử dụng các font chữ tuỳ chỉnh, nắm vững cách dùng margin và padding để bố cục (UI Layouts).

## Lab 3: Dicee - Building Apps with State
**Thư mục:** `lab3_dicee`
- **Mục tiêu chính:** Tạo ra ứng dụng đổ xúc xắc (xí ngầu) tương tác. Ứng dụng sẽ thay đổi hình ảnh con xúc xắc khi người dùng nhấn vào màn hình.
- **Khái niệm áp dụng:** `StatefulWidget`, function `setState()`, bắt sự kiện `onPressed`, sử dụng hàm Random, Expanded widget.
- **Kỹ năng đạt được:**
  - Hiểu rõ sự khác biệt giữa giao diện tĩnh (`Stateless`) và giao diện động tĩnh (`Stateful`).
  - Nắm được cách widget tự vẽ lại (re-render) để phản hồi lại thao tác của người dùng thông qua việc thay đổi các biến trạng thái (state).

## Lab 4: Challenge 1 - Magic 8 Ball
**Thư mục:** `lab4_magic_8_ball`
- **Mục tiêu chính:** Củng cố kiến thức từ 3 Lab trước với việc độc lập thực hành tạo ra ứng dụng mô phỏng "Quả bóng ma thuật 8" đưa ra các dự đoán ngẫu nhiên.
- **Khái niệm áp dụng:** Kế thừa lại các concepts như `StatefulWidget`, `Expanded`, `TextButton`, `Random`, UI Layout basic.
- **Kỹ năng đạt được:** Tự thân tư duy thiết kế luồng xử lý và viết code (mindset logic) từ yêu cầu chức năng thay vì phải làm theo một bài hướng dẫn chi tiết từng bước.

## Lab 5: Xylophone - Using Flutter and Dart Packages to Speed Up Development
**Thư mục:** `lab5_xylophone`
- **Mục tiêu chính:** Xây dựng ứng dụng chơi nhạc (đàn Xylophone) phát ra âm thanh khi nhấn vào phím.
- **Khái niệm áp dụng:** Cài đặt Dart Packages (`audioplayers`), Viết các hàm (Functions) có thiết lập tham số (Parameters/Arguments), Vòng lặp.
- **Kỹ năng đạt được:**
  - Biết cách khai thác hệ sinh thái của Pub.dev để tiết kiệm thời gian thông qua các thư viện (packages) có sẵn.
  - Clean code: tối ưu code bằng cách tạo ra các hàm sử dụng lại được nhiều lần (reusable UI) hỗ trợ tuỳ biến các phím trên màn hình mà không cần phải lặp lại cấu trúc đoạn code dài.

## Lab 6: Quizzler - Modularising & Organising Flutter Code
**Thư mục:** `lab6_quizzler`
- **Mục tiêu chính:** Tạo ứng dụng giải đố/trắc nghiệm có chấm điểm đúng sai.
- **Khái niệm áp dụng:** Lập trình hướng đối tượng (OOP), `Classes` & `Objects`, List (Mảng/Danh sách), Kế thừa - Trừu tượng hóa (`Abstraction`) và Đóng gói (`Encapsulation`).
- **Kỹ năng đạt được:**
  - Biết cách tách mã nguồn thành những phần module nhỏ quản lý riêng biệt (tách Data/Logic ra khỏi UI files).
  - Định hình được cách sử dụng class mẫu (model classes) để tổ chức dữ liệu ứng dụng.

## Lab 7: Boss Level Challenge 2 - Destini
**Thư mục:** `lab7_destini`
- **Mục tiêu chính:** Xây dựng ứng dụng dạng "Choose your own adventure" - thể loại kể chuyện tương tác nơi người chơi đưa ra quyết định ảnh hưởng đến diễn biến.
- **Khái niệm áp dụng:** OOP nâng cao, điều hướng câu hỏi, cấu trúc điều kiện nâng cao (`if/else`), State management logic ngầm.
- **Kỹ năng đạt được:** Tích hợp kiến thức về OOP với State mangement trong một tình huống thực chiến phức tạp có cấu trúc luồng rẽ nhánh, luyện kỹ thuật tổ chức data.

## Lab 8: BMI Calculator - Building Flutter UI for Intermediates
**Thư mục:** `lab8_bmi_calculator`
- **Mục tiêu chính:** Làm ứng dụng máy tính BMI (Chỉ số khối cơ thể) với giao diện hiện đại mang đậm tính Customization và nhiều màn hình.
- **Khái niệm áp dụng:** Điều hướng (Navigation/Routes), Truyền dữ liệu giữa các màn hình (Passing Data), Biến tuỳ chỉnh (Custom Widgets), Themes, `Slider`, `GestureDetector`.
- **Kỹ năng đạt được:**
  - Bố cục UI tổng hợp (Composition UI nâng cao) như tuỳ chỉnh các nút, các thanh cuộn.
  - Quản lý cách ứng dụng điều hướng giữa các "Screen" và truyền dữ liệu xử lý kết quả.

## Lab 9: Clima - Powering Your Flutter App with Live Web Data
**Thư mục:** `lab9_clima`
- **Mục tiêu chính:** Tích hợp dữ liệu web và phần cứng vào ứng dụng để tạo ra "Ứng dụng thời tiết cập nhật trực tiếp".
- **Khái niệm áp dụng:** Lập trình bất đồng bộ Asynchronous (`Future`, `async/await`), Gọi API Request (Phân tích cú pháp JSON), Quyền sử dụng Geolocation/GPS, Component Lifecycle (`initState`).
- **Kỹ năng đạt được:**
  - Dùng packages như `http` để GET API từ máy chủ, parse cấu trúc từ JSON model sang Class, kết hợp với các package như `geolocator` lấy GPS thực.
  - Làm quen với các state lifecycle của màn hình điện thoại, xử lý spinner (trạng thái loading) khi chờ dữ liệu qua kết nối mạng.
