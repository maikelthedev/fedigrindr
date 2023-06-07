# Fedigrindr 

This is how I would summarise what this project is about:
> A project to create a location-based federated social app **to actively destroy Grindr monopoly** over the LGBTQI+ community

The name is not final. Fedigrindr is right now a clear placeholder that shows what it is attempting to be. 

# Introduction

I hate Grindr with a burning passion and I think our social lives shouldn't be on the hands of a private company. There needs to be a federated, owned by no one, open-source, ad-free SPACE for us to meet other LOCAL people. 

# Where am I on this idea?

Right now just dumping random thoughts on this while trying to get a requirements document somewhere that coudl allow me to organise my thoughts on something I could convert into Agile user stories. 

I'm compiling random ideas so far using the tag #fedigrindr in my [fediverse account](https://blahaj.zone/tags/fedigrindr) (publically accesible toots) in Blahaj.zone

I don't want to just design **this** project, but to create a template of how I design any project that requires multiple disciplines. 

# What do I want to design?

Everything. Backend, cloud, frontend, android/ios app. I've done it before with Survation's Panel. 

How do I want to design it:
1. I want to use Rust for the server but I first want to create a prototype in either Python or TypeScript. My two main languages. The reason to choose Rust is because I want to learn it and learn it well with a real world example. Also I want the server/instances to be able to run in PCs with VERY little power. If this is a federated Grindr, we need to think how could it run in places where being LGBTQI+ is an issue or there are state-run firewalls to block actual Grindr. Federation solves that only as far as a user can plug to an undetected server (TOR integration even?)
2. The first iteration or proof-of-concept (PoC) needs to be TypeScript. 
3. Front-end needs to be platform agnostic, hence why I'm thinking in either ReactNative or NativeScript with Angular (I know both). 
4. Backend choice of DB for a proof-of-concept is sufficient with SQLite...for now. I'm a Mongo lover though. NoSQL gives me flexibility I can't find in SQL-based ones. I might go even simpler and use REDIS for the PoC.

# Stuff I actively want to avoid. 

1. Centralisation. 
2. Ads & bots. 
4. Lack of moderation. 
5. Lack of encryption. 
6. A community based on who has the biggest biceps. It shouldn't be pic oriented. Even if there's a grid where people are organised by relative closeness, it should discourage headless torsos. 

# Credits

Initial idea came from [this](https://calckey.social/notes/9fmjo1uvorj015av) toot by Fedo and the conversation that followed it. 
