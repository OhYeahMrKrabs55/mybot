const Discord = require("discord.js");
const client = new Discord.Client();
const bot = new Discord.Client ();


client.on('ready', () => {
  console.log(`Logged in as ${client.user.tag}!`);
});
client.on('message', msg => {
  if (msg.content === '!help') {
    msg.reply('To buy these scripts read how-to-buy under Non-Buyer!');
  }
});

client.on('message', msg => {
	if (msg.content === '!test') {
		msg.channel.send('Oh Ok');
	}
});
client.on('message', function(message) {
    if (message.content == "!purge") {
        if (message.member.hasPermission("MANAGE_MESSAGES")) {
            message.channel.fetchMessages()
               .then(function(list){
                    message.channel.bulkDelete(list);
                }, function(err){message.channel.send("ERROR: ERROR CLEARING CHANNEL.")})                        
        }
    }

});
bot.on('guildMemberAdd', member => {
   member.send("Welcome to the server!");
});
client.on('message', msg => {
	if (msg.content === '!purchace') {
		msg.reply('Look In How To Buy choose one or the other way to pay then send purchace proof to Mr.Krabs! ENJOY');
	}
});
client.login('process.env.BOT_TOKEN');
