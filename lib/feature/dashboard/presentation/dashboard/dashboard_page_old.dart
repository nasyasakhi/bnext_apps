import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../../libraries/libraries.dart';
import 'components/app_bar.dart';
import 'components/banner_widget.dart';


@RoutePage()
class DashboardPageOld extends StatefulWidget {
  const DashboardPageOld({super.key});

  @override
  State<DashboardPageOld> createState() => _DashboardPageOldState();
}

class _DashboardPageOldState extends State<DashboardPageOld>
    with SingleTickerProviderStateMixin {
  late AnimationController _opacityAnimationController;
  late Animation<double> _opacityTween;
  // late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();

    _opacityAnimationController = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );
    _opacityTween =
        Tween<double>(begin: 0, end: 1).animate(_opacityAnimationController);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return NotificationListener<ScrollNotification>(
      onNotification: scrollListener,
      child: CustomColumn(
        children: [
          const Gap(Sizes.p24),
          DashboardAppBar(
            opacityAnimationController: _opacityAnimationController,
            opacityTween: _opacityTween,
            // isAnimateBackground: state is! DashboardSta teFailure,
            onTapNotification: () {},
          ),
          Expanded(child: _mainSection()),
        ],
      ),
    );
  }

  Widget _mainSection() {
    return CustomScrollViewWrapper(
      physic: const AlwaysScrollableScrollPhysics(),
      slivers: [
        const SliverGap(Sizes.p20),
        SliverToBoxAdapter(
          child: _searchFieldWidget(),
        ),
        const SliverGap(Sizes.p12),
        SliverToBoxAdapter(
          child: _menuSection(),
        ),
        const SliverGap(Sizes.p20),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: SliderWidget(
              carouselData: [
              BannerWidget(),
              BannerWidget(),
              BannerWidget(),
              BannerWidget(),
              ],
            ),
          ),
        ),
        const SliverGap(Sizes.p20),
        const SliverToBoxAdapter(
          // child: StatusOrderSection(),
        ),
        SliverToBoxAdapter(
          child: Gap(Sizes.paddingBottom(context) + Sizes.p16),
        )
      ],
    );
  }

  Widget _searchFieldWidget() {
    final borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.neutral50,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        // controller: textEditingController,
        onChanged: (value) {},
        onTapOutside: (_) {
          FocusScope.of(context).unfocus();
        },
        style: context.bodySmall?.normal,
        decoration: InputDecoration(
          border: borderStyle,
          enabledBorder: borderStyle,
          filled: true,
          fillColor: AppColors.buttonPrimarylight,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: Icon(Icons.search_rounded, color: AppColors.primaryMain),
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 28,
            maxHeight: 40,
          ),
          hintText: 'Mencari layanan...',
          hintStyle: context.bodySmall?.normal,
          isDense: true,
        ),
      ),
    );
  }

  Widget _menuSection() {
    partnershipCallback() {
      // context.router.push(const PartnershipRoute());
    }

    membershipCallback() {
      // context.router.push(const MembershipRoute());
    }

    towingCallback() {
      // context.router.push(const TowingServiceRoute());
    }

    sendVehicleCallback() {
      // context.router.push(const TowingServiceRoute());
    }

    final listSubMenu = [
      {
        'title': 'ITS ERA Member',
        'subtitle': 'Belum Aktif',
        'icon': AppIcons.memberIcon,
        'onTap': membershipCallback,
      },
      {
        'title': 'Towing kendaraan',
        'subtitle': 'Pesan Sekarang',
        'icon': AppIcons.towingIcon,
        'onTap': towingCallback,
      },
      {
        'title': 'Kirim Kendaraan',
        'subtitle': 'Pesan Sekarang',
        'icon': AppIcons.shippingIcon,
        'onTap': sendVehicleCallback,
      },
      {
        'title': 'Layanan Lainnya',
        'subtitle': 'Lihat',
        'icon': AppIcons.repairingIcon,
        'onTap': () {},
      },
      {
        'title': 'Layanan Terdekat',
        'subtitle': 'Mencari',
        'icon': AppIcons.nearbyIcon,
        'onTap': () {},
      },
      {
        'title': 'Program Mitra',
        'subtitle': 'Lihat',
        'icon': AppIcons.mitraIcon,
        'onTap': partnershipCallback,
      },
    ];

    return CustomColumn(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p20,
      ),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Layanan Kami',
          style: context.bodyMedium?.semiBold.primary,
        ),
        const Gap(Sizes.p8),
        _subMenuSection(listSubMenu),
      ],
    );
  }

  Widget _subMenuSection(
    List<Map<String, dynamic>> listSubMenu,
  ) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 18,
          mainAxisSpacing: 12,
          mainAxisExtent: 130,
        ),
        shrinkWrap: true,
        itemCount: listSubMenu.length,
        itemBuilder: (BuildContext context, int index) {
          return SubmenuItem(
            title: listSubMenu[index]['title'],
            icon: listSubMenu[index]['icon'],
            onTap: listSubMenu[index]['onTap'],
            subTitle: listSubMenu[index]['subtitle'],
          );
        });
  }

  bool scrollListener(ScrollNotification scrollInfo) {
    var scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _opacityAnimationController.animateTo(scrollInfo.metrics.pixels / 40);
      return scroll = true;
    }
    return scroll;
  }
}
