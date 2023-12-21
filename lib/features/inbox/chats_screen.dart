import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/inbox/chat_detail_screen.dart';

class ChatsScreen extends StatefulWidget {
  static const String routeName = "chats";
  static const String routeURL = "/chats";
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

const Duration _duration = Duration(microseconds: 500);

class _ChatsScreenState extends State<ChatsScreen> {
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();
  void _asdItem() {
    if (_key.currentState != null) {
      _key.currentState!.insertItem(
        _itmes.length,
        duration: _duration,
      );
      _itmes.add(_itmes.length);
    }
  }

  void _deleteItem(int index) {
    if (_key.currentState != null) {
      _key.currentState!.removeItem(
        index,
        duration: _duration,
        (context, animation) => SizeTransition(
          sizeFactor: animation,
          child: Container(
            color: Colors.red,
            child: _makeTile(index),
          ),
        ),
      );
      _itmes.removeAt(index);
    }
  }

  final List<int> _itmes = [];
  Widget _makeTile(int index) {
    return ListTile(
      onLongPress: () => _deleteItem(index),
      onTap: _onChatTap,
      leading: const CircleAvatar(
        radius: 30,
        foregroundImage: NetworkImage(
          "https://avatars.githubusercontent.com/u/3612017",
        ),
        child: Text("신정민"),
      ),
      title: Text(
        "Lynn ($index)",
        style: const TextStyle(
          fontSize: Sizes.size18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        "Don't forget to make video",
        style: TextStyle(
          color: Colors.grey.shade600,
        ),
      ),
      trailing: Text(
        "2:22 pm",
        style: TextStyle(color: Colors.grey.shade400),
      ),
    );
  }

  void _onChatTap() {
    context.pushNamed(ChatDetailScreen.routeName, params: {
      "chatId" : "1"
    }

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "Direct Message",
              ),
              IconButton(
                onPressed: _asdItem,
                icon: const FaIcon(FontAwesomeIcons.plus),
                color: Colors.black45,
              ),
            ],
          ),
        ),
        body: AnimatedList(
          key: _key,
          itemBuilder: (BuildContext context, int index, animation) {
            return FadeTransition(
              key: UniqueKey(),
              opacity: animation,
              child: SizeTransition(
                sizeFactor: animation,
                child: _makeTile(index),
              ),
            );
          },
        ));
  }
}
