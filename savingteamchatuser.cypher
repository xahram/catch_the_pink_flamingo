//savingteamchatuser

LOAD CSV FROM "https://raw.githubusercontent.com/xahram/catch_the_pink_flamingo/main/chat_leave_team_chat.csv" as line 		 														MERGE (u:User {id: line[0]})
MERGE (c:TeamChatSession {id: line[1]})
MERGE (u)-[:Leaves{timeStamp: line[2]}]->(c);   