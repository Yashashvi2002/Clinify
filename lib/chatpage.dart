// import 'package:flutter/material.dart';
//
// import 'Themes/chat_bubble.dart';
// import 'Themes/constants.dart';
//
// class ChatPage extends StatefulWidget {
//   final String receiverUserEmail;
//   final String receiverUserID;
//   const ChatPage({super.key, required this.receiverUserEmail, required this.receiverUserID});
//
//   @override
//   State<ChatPage> createState() => _ChatPageState();
// }
//
// class _ChatPageState extends State<ChatPage> {
//   final TextEditingController _messageController = TextEditingController();
//   List<ChatMessage> _messages = []; // Assuming a ChatMessage class to store messages
//
//   void sendMessage() async {
//     if (_messageController.text.isNotEmpty) {
//       setState(() {
//         _messages.add(ChatMessage( // Add your message
//           senderEmail: 'Your Email', // Replace with your user data
//           message: _messageController.text,
//         ));
//       });
//       // Simulate receiving a message from the receiver (replace with actual logic)
//       _messages.add(ChatMessage( // Simulate receiver message
//         senderEmail: widget.receiverUserEmail, // Replace with receiver data
//         message: 'Hi there!',
//       ));
//       _messageController.clear();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: buttonTheme,
//         title: Text(widget.receiverUserEmail.split('@')[0]),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: _buildMessageList(),
//             ),
//             _buildMessageInput(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildMessageList() {
//     return ListView.builder(
//       reverse: true,
//       itemCount: _messages.length,
//       itemBuilder: (context, index) {
//         final message = _messages[index];
//         var alignment = message.senderEmail == 'Your Email' ? Alignment.centerRight : Alignment.centerLeft;
//         return _buildMessageItem(message, alignment);
//       },
//     );
//   }
//
//   Widget _buildMessageItem(ChatMessage message, Alignment alignment) {
//     return Container(
//       alignment: alignment,
//       child: Column(
//         crossAxisAlignment: message.senderEmail == 'Your Email' ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//         mainAxisAlignment: message.senderEmail == 'Your Email' ? MainAxisAlignment.end : MainAxisAlignment.start,
//         children: [
//           Text(
//             message.senderEmail,
//             style: const TextStyle(color: Colors.black),
//           ),
//           ChatBubble(message: message.message, alignment: alignment,),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildMessageInput() {
//     return Row(
//       children: [
//         Expanded(
//             child: TextField(
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
//                   filled: true,
//                   fillColor: Colors.grey,
//                   hintText: 'Enter Message'),
//               controller: _messageController,
//               obscureText: false,
//             )),
//         IconButton(
//             onPressed: sendMessage,
//             icon: const Icon(
//               color: buttonTheme,
//               Icons.send,
//               size: 40,
//             ))
//       ],
//     );
//   }
// }
