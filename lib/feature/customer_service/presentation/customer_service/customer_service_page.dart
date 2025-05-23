import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bnext/feature/customer_service/presentation/customer_service/component/customer_service_loading.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

@RoutePage()
class CustomerServicePage extends StatefulWidget {
  const CustomerServicePage({super.key});

  @override
  State<CustomerServicePage> createState() => _CustomerServicePageState();
}

class _CustomerServicePageState extends State<CustomerServicePage>
    with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    redirectToWhatsApp();
  }

  @override
  void didPopNext() {
    redirectToWhatsApp(); // ketika balik dari WA ke halaman ini
  }

  Future<void> redirectToWhatsApp() async {
    const phone = '6285716224503';
    const message = 'Halo! Saya mau tanya-tanya dulu nih...';
    await openWhatsApp(phone, message);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0e0722),
      body: Center(
        child: CustomerServiceLoading(),
      ),
    );
  }
}

Future<void> openWhatsApp(String phone, String message) async {
  final encodedMessage = Uri.encodeComponent(message);
  final native = Uri.parse('whatsapp://send?phone=$phone&text=$encodedMessage');
  final fallback = Uri.parse('https://wa.me/$phone?text=$encodedMessage');

  if (!await launchUrl(native, mode: LaunchMode.externalApplication)) {
    if (!await launchUrl(fallback, mode: LaunchMode.externalApplication)) {
      debugPrint("Gagal membuka WhatsApp");
    }
  }
}