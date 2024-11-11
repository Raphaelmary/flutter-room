# random number generator

> import dart:math

    int getRandomNumber(){
        Random random = Random();
        dynamic generateRandomNumber = random.nextInt(10);
        return generateRandomNumber();
    }

    Text('${getRandomNumber()'});

    TextButton(
        style: TextButton.styleFrom(
        backgroundColor: Colors.white10,
        side: const BorderSide(
            color: Colors.red,
            width: 4.0,
            ),
        ),
        onPressed: () {
            setState({
                getRandomNumber();
             })
            },
            child: const Text('Click!'),
        ),

# TextRich

> Text.rich(

    TextSpan(
        text: 'This is my Text',
        children: [
            TextSpan(
                text: 'Another Text',
            ),
            TextSpan(
                text: 'Another Text II',
            )
        ]
    )

)

# Images
> Images

    Image(
        image: AssetImage(
            './images/i.png',
            ),
            width: 40.0
    ),

    Image.asset(
        './images/i.png',
        width: 40,
    ),
