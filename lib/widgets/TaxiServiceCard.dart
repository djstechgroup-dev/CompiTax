import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

class TaxiServiceCard extends StatefulWidget {
  final String logo_path;
  final String? name;
  final String? desc;
  final bool? showDownloadIcon;
  const TaxiServiceCard(
      {Key? key,
      required this.logo_path,
      required this.name,
      this.desc,
      this.showDownloadIcon})
      : super(key: key);

  @override
  _TaxiServiceCardState createState() => _TaxiServiceCardState();
}

class _TaxiServiceCardState extends State<TaxiServiceCard> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: GlobalColors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            widget.logo_path,
            width: deviceSize.width * 2 / 12,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name ?? '', style: textTheme.headline4),
                    Text(widget.desc ?? '', style: textTheme.bodyText1),
                  ],
                )),
          ),
          if (widget.showDownloadIcon == true)
            Icon(Icons.cloud_download_outlined, size: deviceSize.width / 12)
        ],
      ),
    );
  }
}
