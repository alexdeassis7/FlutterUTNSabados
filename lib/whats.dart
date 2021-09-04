import 'package:flutter/material.dart';

class WhatsChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsChat'),
      ),
      body: ChatItem(),
    );
  }
}

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final url = 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d27o7od-b6a9c594-a44e-40e7-9150-1b0384f5c70b.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVmNGJkN2E2LWY3NjMtNDUxOC05YjgxLWJkZmQ0MGNlM2ZjOVwvZDI3bzdvZC1iNmE5YzU5NC1hNDRlLTQwZTctOTE1MC0xYjAzODRmNWM3MGIucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.7ygdyL4ZPw539NivJaDPzRlbMjkixf6InsB4FvtpCAI';

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          // Sección izquierda
          CircleAvatar(
            backgroundImage: NetworkImage(url),
          ),

          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '+52 55 12345678',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '👍👍🎉🎉',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),


          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                '10:21',
                style: TextStyle(
                  color: Colors.green[700],
                ),
              ),
              CircleAvatar(
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 12.0),
                ),
                radius: 10.0,
                backgroundColor: Colors.green[700],
              )
            ],
          ),
        ],
      ),
    );
  }
}
