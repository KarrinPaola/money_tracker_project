import 'package:flutter/material.dart';

class Custombutton extends StatefulWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onTap;

  const Custombutton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.iconData,
  }) : super(key: key);

  @override
  State<Custombutton> createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  bool isSelected = false; // Trạng thái để kiểm tra xem có được chọn hay không

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected; // Đổi trạng thái khi được nhấn
        });
        widget.onTap(); // Gọi hàm callback từ cha
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.width / 4 / 2,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF1e42f9) : Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            isSelected
                ? BoxShadow(
                    color: Color(0xFF1e42f9).withOpacity(0.5), // Màu của shadow
                    spreadRadius: 2, // Bán kính lan rộng của shadow
                    blurRadius: 5, // Bán kính làm mờ shadow
                    offset: const Offset(0, 3), // Độ dịch chuyển của shadow
                  )
                : BoxShadow(
                    color: Color(0xFFedeff1).withOpacity(1), // Màu của shadow
                    spreadRadius: 2, // Bán kính lan rộng của shadow
                    blurRadius: 5, // Bán kính làm mờ shadow
                    offset: const Offset(0, 3), // Độ dịch chuyển của shadow
                  )
          ],
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.iconData,
              color: isSelected ? Color(0xFFFFFFFF) : Color(0xFF000000),
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(widget.title, style: TextStyle(
              color: isSelected ? Color(0xFFFFFFFF) : Color(0xFF000000),
              fontSize: 13,
              fontWeight: FontWeight.w500
            ),)
          ],
        ),
      ),
    );
  }
}
