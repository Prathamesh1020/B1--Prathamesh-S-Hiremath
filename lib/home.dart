import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key:key);

  List<String> imagesList=[
    'https://images.unsplash.com/photo-1587606607030-5e0716be2b70?lixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxNzA4Mjc2fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1586191582151-f73872dfd183?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8M3wxNzA4Mjc2fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1494059980473-813e73ee784b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1769&q=80',
    'https://images.unsplash.com/photo-1445962125599-30f582ac21f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXwxNzA4Mjc2fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1546200042-eafb5f5b987f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTl8MTcwODI3Nnx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1546312956-8194d84d25fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjB8MTcwODI3Nnx8ZW58MHx8fHx8&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1536370118071-bf9d8df4f51f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjZ8MTcwODI3Nnx8ZW58MHx8fHx8&auto=format&fit=crop&w=300&q=60',
    'https://images.unsplash.com/photo-1531718371548-c72dcd9e8b47?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MzJ8MTcwODI3Nnx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1478424255087-62cc74005486?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Mzd8MTcwODI3Nnx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1525536442945-13bd56f1f3ce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NDF8MTcwODI3Nnx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1525702513299-f42ae28aac0a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NDV8MTcwODI3Nnx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1525870997090-44cb777cbe56?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NTN8MTcwODI3Nnx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60',
    'https://cdn.pixabay.com/photo/2022/12/01/04/40/backpacker-7628303_1280.jpg',
    'https://cdn.pixabay.com/photo/2022/03/12/07/29/dragon-7063555_1280.png',
    'https://cdn.pixabay.com/photo/2018/10/10/13/52/cat-3737295_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/01/06/12/28/ninja-7701126_1280.jpg',
    'https://cdn.pixabay.com/photo/2022/12/24/11/42/home-7675774_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/07/17/01/58/girl-4342896_1280.jpg',
    'https://media.istockphoto.com/id/1470977720/photo/japan-anime-cosplay-portrait-of-girl-with-comic-costume-with-japanese-theme-garden.webp?b=1&s=612x612&w=0&k=20&c=r9WPayvccsoccplgHWB-zxtfsVEzR-XnfS790fFpHv8=',
    'https://t3.ftcdn.net/jpg/05/36/78/84/240_F_536788448_UcOZv30qCQY36To1ygsjmFmVUaeuc7kf.jpg',
    'https://t4.ftcdn.net/jpg/04/04/73/39/240_F_404733910_2mIXr6RbC5G3WZJFjopVsBaR3EOM6Bqy.jpg',
    'https://t4.ftcdn.net/jpg/05/60/44/93/240_F_560449312_I6FTJ1HWythaLutWDMuHvJy2IoCv20iJ.jpg',
    'https://t3.ftcdn.net/jpg/05/53/87/38/240_F_553873869_ctbRrBsrxyEmgq0Oxpfz5JodUdqXvTEM.jpg',
   'https://t4.ftcdn.net/jpg/05/55/95/33/240_F_555953348_h2WODHOuUyTzt7a0Z5VnB3LI8BulBabn.jpg',
   'https://t4.ftcdn.net/jpg/04/46/93/93/240_F_446939375_83iP0UYTg5F9vHl6icZwgrEBHXeXMVaU.jpg',
   'https://t3.ftcdn.net/jpg/06/18/40/06/240_F_618400689_33faoHzzQCLRFo4nv1UtGTMhc1eSNSFe.jpg',
   'https://t3.ftcdn.net/jpg/02/31/82/04/240_F_231820456_WhsrQABcZydYVS6Utgp5MRkFaDKhtu6F.jpg',
   'https://t3.ftcdn.net/jpg/06/21/37/76/240_F_621377692_t9GkOLeaV4igmr8OUus41mbJJLkShJie.jpg',
   'https://t4.ftcdn.net/jpg/06/16/60/07/240_F_616600796_6VORopzCY1sHwTYUDZDCYl3V1RWDnf7R.jpg',
   'https://t3.ftcdn.net/jpg/05/53/64/18/240_F_553641866_U9Ce2uA9JjQ9WhSoIjeD88emqhN7CU5H.jpg',
   'https://t4.ftcdn.net/jpg/06/13/11/61/240_F_613116152_phFvUXoveir0Vtn8LHFXqAyAX1eNXY0N.jpg',
   'https://t4.ftcdn.net/jpg/06/26/41/97/240_F_626419721_42yYoMBHdgbHlxXPLdofhMtRAYWebm5T.jpg',
   'https://t3.ftcdn.net/jpg/06/22/96/50/240_F_622965092_LFvjdKD8rsZGg8SLEznwHTr9al94lzth.jpg',
    'https://t3.ftcdn.net/jpg/06/18/81/68/240_F_618816823_P1XiLVN2TPQY8gD6dJJsivzeLGDO3yIk.jpg',
    'https://t3.ftcdn.net/jpg/06/11/35/88/240_F_611358842_RRUTDhPVvxxyb5UkwRn92okJXUTohAeO.jpg',
    'https://t3.ftcdn.net/jpg/06/12/50/04/240_F_612500470_FzcOiZekneHbCX6TqjSXmljP5k9qj9db.jpg',
    'https://t4.ftcdn.net/jpg/06/21/62/09/240_F_621620978_TNMGF6rODnkrEZZBdWfLVGpBa7pyjcUP.jpg',
    'https://t3.ftcdn.net/jpg/06/20/58/68/240_F_620586897_MOkRNWWrjQ2bpEKufB8KtmTQMnU8Ntko.jpg',
    'https://t4.ftcdn.net/jpg/06/11/35/79/240_F_611357913_hIopuuhdrXC0nlyYnkqvhIt7rBWSNgJv.jpg',
    'https://t3.ftcdn.net/jpg/06/28/60/24/240_F_628602416_n0W1mG5nlyQqbi1ZRBhEDpfNHY3lNPaj.jpg',
    'https://t3.ftcdn.net/jpg/06/22/29/08/240_F_622290893_5ssqawgZHmfZxYkaOyOx4iEDmlFQCIol.jpg',
    'https://t3.ftcdn.net/jpg/06/29/48/20/240_F_629482014_Ip9gRX7tXGU6EZVAYKTEuLMfQ3c7UIr4.jpg',
    'https://t3.ftcdn.net/jpg/06/14/62/02/240_F_614620296_PiFqva2ZAlKg7nTblRJI0CVexaYbIasL.jpg',
    'https://t4.ftcdn.net/jpg/06/20/57/77/240_F_620577773_j0fYpEishTZToiuMJ9mC4Q6dHYgCXg4D.jpg',
    'https://t4.ftcdn.net/jpg/06/21/82/21/240_F_621822144_ZsNlvKQ35k3YsfNmlVDkeNIOT4Kt3GS8.jpg',
    'https://t4.ftcdn.net/jpg/06/07/11/67/240_F_607116700_MN2JGTNtheqMHNwmbO2BhSWxdcsSpdu9.jpg',
    'https://t3.ftcdn.net/jpg/06/23/62/02/240_F_623620210_1jTOP5mY2TgF0yTHmiRvYTO70uUbnzdb.jpg',
    'https://t3.ftcdn.net/jpg/02/48/92/96/240_F_248929619_JkVBYroM1rSrshWJemrcjriggudHMUhV.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: GridView.builder(
            itemCount: imagesList.length,
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2),
              itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                image: DecorationImage(
                  image: NetworkImage(imagesList[index]),
                  fit: BoxFit.cover)
              ),
            );
              }),
        ),
      ),
    );
  }
}
