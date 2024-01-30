import 'package:t_store_firebase/common/widgets/images/circular_images.dart';
import 'package:t_store_firebase/features/shop/widgets/widgets.dart';
import 'package:t_store_firebase/utils/constants/colors.dart';
import 'package:t_store_firebase/utils/constants/image_strings.dart';

class CUserProfileTile extends StatelessWidget {
  final VoidCallback onPressed;

  const CUserProfileTile({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Lidia Martínez Coding',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: CColors.white),
      ),
      subtitle: Text(
        'Holaaaaa',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: CColors.white),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.edit,
            color: CColors.white,
          )),
      leading: const CCircularImage(
        image: CImages.clothIcon,
        width: 50,
        height: 50,
        padding: 0,
      ),
    );
  }
}
