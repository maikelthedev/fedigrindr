# Fedigrindr 

This is how I would summarise what this project is about:
> A project to create a location-based federated social app **to actively destroy Grindr monopoly and hold** over the LGBTQI+ community

The name is not final. Fedigrindr is right now a clear placeholder that shows what it is attempting to be. 

# Introduction

I hate Grindr with a burning passion and I think our social lives shouldn't be on the hands of a for-profit private company. There needs to be a federated, owned by no one, open-source, ad-free SPACE for us to meet other LOCAL people. 

# Where am I on this idea?

UPDATE 14th of August 2023 and tldr: I'm learning Elixir, I'm focused on the backend and how things would operate between servers and users. One of the many things I hate from grindr is how it, by design, loses messages. A built-in dark pattern so that it costs you more to find people and you stay swallowing their ads. 

I don't want to just design **this** project, but to create a template of how I design any project that requires multiple disciplines. 

I'm a visual person, my ideas get shape easier when I can see what I have in mind as a prototype. So I'm designing sections with simple prototypes. 

# What do I want to design?

Everything. Backend, cloud, frontend, android/ios app. I've done it before with Survation's Panel. 

How do I want to design it:
1. I am using Elixir and a website with a PWA first. Then once the concept takes shape I'll add a ReactNative or NativeScript (I know both) app on top to be able to develop it for both Android and iOS. If this is a federated Grindr, we need to think how could it run in places where being LGBTQI+ is an issue or there are state-run firewalls to block actual Grindr. Federation solves that only as far as a user can plug to an undetected server (TOR integration even?)
2. The first iteration or proof-of-concept (PoC) in Elixir as a PWA. 
3. Front-end needs to be platform agnostic, hence why I'm thinking in either ReactNative or NativeScript with Angular (I know both). 
4. Backend choice of DB for a proof-of-concept is sufficient with SQLite...for now. Migrating to something better is easy with Ecto in Elixir. 

# Stuff I actively want to avoid. 

1. Centralisation. 
2. Ads & bots. 
4. Lack of moderation. 
5. Lack of encryption. Messages should be e2e encrypted unless a user wants to report someone in which case they should have the option to attach their conversation. 
6. A community based on who has the biggest biceps. It shouldn't be pic oriented. Even if there's a grid where people are organised by relative closeness, it should discourage headless torsos. I might steal ideas from Tinder. 

# Credits

Initial idea came from [this](https://calckey.social/notes/9fmjo1uvorj015av) toot by Fedo and the conversation that followed it. 
