const Discordie = require("discordie");
const Events = Discordie.Events;
const Client = new Discordie();
const Config = require("./config.json");

var Reason = "";
var Message;

Client.connect({ token: Config.token });

Client.Dispatcher.on(Events.GATEWAY_READY, e => {
	console.log(`Bot wystartowal, posiada nazwe: ${Client.User.username}.`); 
});

Client.Dispatcher.on(Events.MESSAGE_CREATE, e => {
	var message = e.message
	if(message.author.bot) return;
	if(message.content.indexOf(Config.prefix) !== 0) return;

	const args = message.content.slice(Config.prefix.length).trim().split(/ +/g);
	const command = args.shift().toLowerCase();
	const ChannelCheck = false;


	if (message.member.can(Discordie.Permissions.ADD_REACTIONS, message.guild) == true){
		if (ChannelCheck === false) {
			if (command === "help") {
				message.reply("Dostępne komendy to:");
				message.reply(Config.prefix + "***```revive <ID> - revive'uje gracza o danym ID```***");
				message.reply(Config.prefix + "***```ogloszenie <TREŚĆ> - wysyła ogłoszenie o danej treści na serwer```***");
				message.reply(Config.prefix + "***```refreshwl - refreshuje whiteliste```***");
				return message.delete().catch(O_o=>{}); 
			};
		};
		
		switch(command) {
			case "xd":
				print(message.member.can(Discordie.Permissions.ADD_REACTIONS, message.guild));
			break;
			
			case "refreshwl":
				emit("Frosher:Req", command, "empty", "empty");
				message.reply("***```Whitelista została przeładowana!```***")
			break;

			case "revive":
				var ServerID = parseInt(args[0], 10);
				if(ServerID) {
					if (ServerID < 10){
						ServerID = "0" + ServerID;
					}
					emit("Frosher:Req", command, ServerID, "empty");
					message.reply("***```Gracz o ID: " + ServerID + " został zrevive'owany.```***")
				}else {
					message.reply("Nic nie podano")
				};
				break;
				          case "ogloszenie":
                if(!args) {
                    message.reply("Nie podano ogloszenia")
                } else {
                let tekst = ""
                    args.forEach(arg => {
                    tekst += `${arg} `
                })
                    emit("Frosher:Req", command, tekst, "empty");
                    message.reply("***Wysłano ogłoszenie.***")
}
								break;
			default:
		};
	} else {
		message.reply("Nie masz permisji do wyrzucania członkow!")
	};
});

on('Frosher:Res', (Command, ResponseValue1, ResponseValue2, ResponseValue3) => {
	ReturnMessageToDiscord(Command, ResponseValue1, ResponseValue2, ResponseValue3);
});


