import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            onPressed: () {
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
          Spacer(),

          // NAME + CLASS
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Rayhan Alviansyah',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              Text('PPLG XII-3',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),

          SizedBox(width: 10),

          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('assets/images/profile_2.jpg'),
          ),

          // ▼ ICON DROPDOWN
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                onPressed: () {
                  showMenu(
                    context: context,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    elevation: 4,
                    position: RelativeRect.fromLTRB(200, 80, 10, 0),
                    items: [

                      // MENU
                      menuItem(Icons.home_outlined, "Dashboard",
                          '/dashboard', context),
                      menuItem(Icons.person_outline, "Profil",
                          '/profile', context),
                      menuItem(Icons.explore_outlined, "Jelajahi",
                          '/explore', context),

                      PopupMenuItem(child: Divider(), enabled: false),

                      menuItem(Icons.menu_book_outlined, "Jurnal Pembiasaan",
                          '/jurnal_pembiasaan', context),
                      menuItem(Icons.person_search_outlined, "Permintaan Saksi",
                          '/permintaan_saksi', context),
                      menuItem(Icons.bar_chart_outlined, "Progress",
                          '/progress', context),
                      menuItem(Icons.warning_amber_outlined, "Catatan Sikap",
                          '/catatan_sikap', context),

                      PopupMenuItem(child: Divider(), enabled: false),

                      menuItem(Icons.menu_book, "Panduan Penggunaan",
                          '/panduan_pengguna', context),
                      menuItem(Icons.settings, "Pengaturan Akun",
                          '/setting_account', context),
                      menuItem(Icons.logout, "Log Out", '/', context),
                    ],
                  );
                },
              );
            }
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}


// FUNCTION TEMPLATE MENU ITEM
PopupMenuItem menuItem(
    IconData icon, String label, String route, BuildContext context) {
  return PopupMenuItem(
    child: Row(
      children: [
        Icon(icon, size: 20, color: Colors.black54),
        SizedBox(width: 12),
        Text(label),
      ],
    ),
    onTap: () {
      Future.delayed(Duration(milliseconds: 10), () {
        Navigator.pushNamed(context, route);
      });
    },
  );
}
