select * from quote;


select * from quote;

select * from quote;

CREATE TABLE "PUBLIC"."QUOTE_WITH_ID"
(
   id bigint auto_increment,                                                                                   
   day integer,
   quote varchar(500),
   month varchar(25)
);

insert into "QUOTE_WITH_ID" (day, quote, Month) select DAY, quote, Month from quote

insert into quote(day, quote, Month) select DAY, quote, Month from (

SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_01.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_02.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_03.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_04.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_05.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_06.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_07.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_08.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_09.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_10.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_11.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_12.csv') where Quote is not null
)

select * FROM QUOTE_WITH_ID

INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (1,1,'Arise, awake and stop not till the desired end is reached. Already everything is opening out before us. Be bold and fear not. It is only in our scriptures that this subjective is given unto the Lord -- abhih','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (2,1,'Every idea that strengthens you must be taken up and every thought that weakens you must rejected.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (3,1,'For fear of defeat shall I retreat from the fight? Defeat is the ornament the hero adorns himself with. What, to acknowledge defeat without fighting?','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (4,1,'My ideal indeed can be put into a few words and that is: to preach unto mankind there divinity and how to make it manifest in every moment of life.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (5,1,'Out of purity and silence comes the word of power. It (education) may be described as a development of faculty, not an accumulation of words, or as a training of individuals to will rightly, and efficiently','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (6,1,'Purity yourself is first and the while world is bound to be purified then.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (7,1,'So long as you have faith and honesty and devotion, everything will prosper','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (8,1,'The history of the world is the history of a few men who had faith in themselves.  That faith calls out the divinity within.  You can do anything. You fail only when you do not strive sufficiently to manifest infinite power. As soon as a man or a nation loses faith, death comes.','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (9,1,'The secret of religion lies not in theories but in practice. To be good and to do good -- that is the whole of the religion','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (10,1,'There are three things in the make-up of man. There is a body, there is a mind and there is a soul.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (11,1,'This world is not for cowards. Do not try to fly. Look not for success or failure. Join yourself to the perfectly unselfish will and work on. Know that the mind which is born to succeed joins itself to a determined will and perseveres.','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (12,1,'Those who believe in God should -- Not for money, not health, not for heaven; pray for knowledge and light','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (13,10,'Be brave, be brave! Man dies but once. My disciples must not cowards','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (14,10,'Hold the ideal a thousand times, and if you fail a thousand times, make the attempt once more.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (15,10,'Imitation, cowardly imitation, never makes for progress.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (16,10,'Learn obediance first. Always first learn to be a servantl; and then you will be fit to be a master.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (17,10,'Man never progresses from error to truth, but truth to truth, but lesser truth to higher truth - But it is never from error to truth','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (18,10,'Material science can only give worldly prosperity, whilst spiritual science is for eternal life','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (19,10,'Our first duty is not to hate ourselves because to advance we must have faith in ourself first and then in God. He who has no faith in himself can never have faith in God','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (20,10,'So long as the millions live in hunger and ignorance I hold every man a traitor who, having been educated at their expense, pays not the least heed to them! I call those men who strut about in their finery having got all their money by grinding the poor, wretches, so long as they do not do anything for those 200 millions who are now no better than hungry savages!','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (21,10,'Spiritual knowledge is the only thing that can destroy our miseries forever; Any other knowledge satisfies wants only for a time. It is only with the knowledge of the spirit that the faculty of want is annihilated forever…','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (22,10,'There is no greater sin than cowardice; Cowards are never saved -- That is sure','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (23,10,'Unchaste imagination is as bad as unchast action. Controlled desire leads to the highest result. Transform the sexual energy into spiritual energy','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (24,11,'All our actions in this world will determine our future life','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (25,11,'Any action, that makes us go, Godword is a good action, and is our duty; Any action that makes us go downword is evil and is not our duty','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (26,11,'Arise, awake and stop not till the desired end is reached. Be not afraid, for all great power, throughout the history of humanity, has been with the people. From out of their ranks have come all the greatest geniuses of the world','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (27,11,'How long is this life for? As you have come into this world, leave some mark behind. Otherwise, where is the difference between you, the trees and stones? They, too, come into existence, decay and die','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (28,11,'Man is like an infinite spring, coiled up in a small box and that spring is trying to unfold itself.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (29,11,'Misery is a great teacher than happiness','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (30,11,'Never mind failures; They are quite natural, they are the beauty of life, these failures. What would life be without them?','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (31,11,'Take my advice: set yourselves wholly to the service of others, when you come from your colleges. Believe me, far greater happiness would then be yours than if you had had a whole treasury full of money and other valuables at your command.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (32,11,'To me, the thought of oneself as low and humble is a sin and ignorance','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (33,11,'What makes you weep, my friend? In you is all power. Sommon up your all powerful nature, O mighty one, this whole universe will lie at your feet. It is the self alone that predominates, and not matter.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (34,11,'When a picture is being filled (by immersion), it gurgles, but when full, it is noiseless','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (35,12,'A man can be gigantic intellect, yet spirituality he can be a baby. ','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (36,12,'A nation is advanced in proportion as education and intelligence spread among the masses','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (37,12,'Character has to be established through a thousand stumbles','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (38,12,'Each work has to pass through these stages -- n1. Ridiculen2. Oppositionn3. AcceptancenEach man who thinks ahead of his time, is sure to be misunderstood. So opposition and persecution are welcome; only I have to be steady and pure and must have immense faith in God, all these will vanish...','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (39,12,'Gratitude and hospitality are the peculiar characteristics of Indian humanity','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (40,12,'It is a great privilege in our life that we are allowed to serve the Lord in all these shapes','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (41,12,'It is faith that makes a lion of a man.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (42,12,'It is not the receiver that is blessed, but it is the giver.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (43,12,'Perfect sincerity, wholiness, gigantic intellect, and all conquering will. Let only a handful of men worked with these, and the whole world will be revolutionized.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (44,12,'That which tends to increase the divinity in you is virtue, and that tends to increase brutality is vice','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (45,12,'The brotherhood of a man is the much-to-be-desired.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (46,13,'Blessed is the man who is mad after God','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (47,13,'Chastity is the life of a nation.','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (48,13,'Each man is only a conduit for the infinite ocean of knowledge and power that lies behind mankind.','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (49,13,'If you want to do a great or good work, do not trouble to think what the result will be','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (50,13,'It would be found that it was misery that taught more than happiness, it was poverty that taught more than wealth, it was blows that brought out their inner fire more than praise.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (51,13,'Jealousy is the root of all evil and the most difficult thing to conquer','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (52,13,'No religion for you, my children, but morality and bravery','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (53,13,'Slavery is slavery. The chain of gold is quite as bad as the chain of iron.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (54,13,'The only test of good things is that they make us strong. Good is life, Evil is death.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (55,13,'There is no limit to man''s desires; He goes on desiring, and when he comes to a point where desire cannot be fulfilled, the result is pain.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (56,13,'Three things are necessary to the student who wishes to succeed.n1. Give up all ideas of enjoyment in this world and the nextn2. Care only for Godn3. Care only for Truth','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (57,14,'Every reaction in the form of hatred are evil is so much loss to the mind','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (58,14,'Expansion is life and contraction is death. Whatever ceases to expand ceases to live. Translating this in moral world, we have: If one would expand, he must love, and when he ceases to love he dies','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (59,14,'Faith in God and in one''s own self is virtue; Doubt is sin.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (60,14,'He who has the slightest desire for wordly pleasure, even a shred of some such craving, will feel frieghtened at the thought of the path you are going to tread.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (61,14,'If a man with an ideal makes a thousand mistakes, I am sure the man without an ideal makes 50000. Therefore, it is better to have an ideal','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (62,14,'It is the fear that is the cause of our woes, it is fearlessness that brings heaven in a moment.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (63,14,'Knowledge is nothing but finding unity in the midst of diversity.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (64,14,'The great thing is to have faith in oneself, even before faith in God; But the difficulty seems to be we are losing faith in ourselves day by day','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (65,14,'Truth can never come to us as long as we are selfish.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (66,14,'Up, India, and conquer the world with your spirituality! Ay as has been declared on this soil first, Love must conquer hatred, hatred cannot conquer itself','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (67,14,'When the Lotus opens, the beast come of their own accord to seek the honey; so let the Lotus of your character be full blown and the results will follow','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (68,15,'Believe in yourselves first. I may be a little bouble, and you may be a wave mountain-high, but know that for both of us the infinite ocean is the background.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (69,15,'It is truth alone that gives strenth.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (70,15,'My child, what I want is muscles of iron and nerves of steel, inside which dwells a mind of the same material as that of which the thunderbolt is made. Strength, manhood, kshatra-virya + brahma-teja this I want.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (71,15,'My sons, all of you be men. This is what I want! If you are even a little successful, I shall feel my life has been meaningful.','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (72,15,'The controlled mind is a great treasure, the philosopher''s stone, which yields whatever you want','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (73,15,'The ideal of womanhood in India is motherhood -- That marvellous, unselfish, all-suffering, ever-forgiving - mother','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (74,15,'The infinite power of the spirit, brought to  bear upon matter evolves material development, made to act upon thought evolves intellectuality, and made to act upon itself makes of man a God','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (75,15,'The older I grow, the more everything seems to me to lie in manliness. This is my new gospel','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (76,15,'To succeed, you must have tremendous perseverance, tremendous will. "I will drink the ocean" - Says the persevering soul, "At my will mountains will crumble up" - Have that sort of energy, that sort of will, work hard, and you will reach the goal','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (77,15,'What we want are western Science coupled with Vedanta, Brahmacharya as the guiding motto, and also Shraddha and faith in one''s own Self','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (78,15,'You are lions, you are souls, pure, infinite, and perfect. The might of the universe is within you. Why weepest thou, my friend?','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (79,16,'"Fortune favours the brave and energetic". Do not look back -- forward, infinite energy, infinite enthusiasm, infinite daring, and infinite patience -- then alone can great deeds be accomplished','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (80,16,'Anything that brings spritual, mental, or physical weakness, touch it not with that toes of your feet.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (81,16,'Be not in despair; the way is very difficult, like walking on the edge of  a razor; yet despair not, arise, awake and find the ideal, the goal.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (82,16,'He (God) reveals Himself to the pure heart','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (83,16,'It is better, far better, to die on the field of beauty, preaching the truth, than to die like a worldly worm','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (84,16,'It is good and very grand to conquer external nature, but grander still to conquer our internal nature.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (85,16,'This "I and mine - causes the whole misery." With the sense of possession comes selfishness, and selfishness brings on misery','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (86,16,'Truth is purity, truth is all-knowledge; truth must be strengthening, must be enlightening, must be invigorating','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (87,16,'We are responsible for what we are; and whatever we wish ourselves to be, we have the power to make ourselves. If what we are now has been the result of our own past actions, it is certainly follows that whatever we wish to be in future, can be produced by our own present actions. So we have to know how to act','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (88,16,'When the soul has wrestled with the circumstance and has met death, a thousand times death on the way, but nothing daunted has struggled forward again and again and yet again -- then the souls come out as a giant and laughs at the ideal he has been struggling for','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (89,16,'When the world is the end and God the means to attain that end, that is material. When God is the end, when the world is the only the means to attain that end, spirituality has begun','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (90,17,'All power is within you. Believe in that, do not believe that you are weak, stand up and express the divinity within you.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (91,17,'Chastity is the first virtue in man or woman','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (92,17,'Civilisation, true civilisation should mean the power of taking the animal-man out of his sense-life.','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (93,17,'Despondency is not religion, whatever else it may be. By being pleasant always and smiling, it takes you nearer to God, nearer than any prayer','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (94,17,'Each one of us is the maker of his own fate.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (95,17,'Everyone worships God. Whatever be the name, they are all worshipping God','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (96,17,'Fill the brain with high thoughts, highest ideals, place them day and night before you, and out of that will come great work.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (97,17,'No man is to be judged by the mere nature of his duties, but all should be judged by the manner and the spirit in which they perform them.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (98,17,'Stand up, be bold, be strong. Take the whole responsibility on your own shoulders, and know that you are own creator of your own destiny. All the strength and succour you want is, within yourselves.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (99,17,'The cause of evil is our desire to be superior to others and our selfishness.','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (100,17,'We must point out not the mistakes that people are making in their thoughts and actions, but the way in which they will gradually be able to do these things better','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (101,18,'"Arise, Awake, sleep no more; Within each of you there is the power to remove all wants and all miseries. Believe this, and that power will be manifested."','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (102,18,'"Let the dead past bury its dead.". The inifinite future is before you.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (103,18,'Flying from work is never the way to find peace','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (104,18,'I hate only one thing in the world - hypocrisy','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (105,18,'If you have faith in all 300 and thirty millions of your mythological God…and still have no faith in yourself, there is no salvation for you. Have faith in yourself, and stand up on that faith and be strong; That is what we need','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (106,18,'In every attempt there will be one set of men who will applaud, and the another who will pick holes.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (107,18,'Is education book-learning? No.nIs it diverse knowledge? Not even that.nThe training by which the current and expression of will are brought under control and become fruitful is called education','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (108,18,'The national ideals of India are Renunciation and Service. Intensify her in those channels, and the rest will take care of itself','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (109,18,'The pleasure of Self is what the world calls religion. The more our bliss is within, the more spritual we are. Let us not depend upon the world for pleasure.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (110,18,'Truth does no pay homage to any society. Society has to pay homage to Truth.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (111,18,'Whatever you think, that you will be. If you think yourselves weak, weak you will be; If you think yourselves strong, strong you will be.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (112,19,'Darkness and light, enjoyment of the world and enjoyment of God will never go together','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (113,19,'Do all as a sacrifice or offering to the Lord. Be in the world, but not of it, like the lotus leaf whose roots are in the mud but which remain always pure. Let your love go to all, whatever they do to you. A blind man cannot see colour, how can we see evil unless it is in us?','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (114,19,'Happiness presents itself before man, wearing the crown of sorrow on its head. He who welcomes it, must also welcome sorrow.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (115,19,'If you lay down your life for a cause, then only you can be a leader. But we all want to be leaders without making the necessary sacrifice. And the result is zero - nobody listens to us','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (116,19,'Isn''t it man that makes money? Where did you ever hear money making man? If you can make your thoughts and words perfectly one, if you can, I say, make yourself one in speech and action, money will pour in at the feet of yourself','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (117,19,'Proclaim to the whole world with trumpet voice, "There is no sin in you, there is no in misery in you; you are the reservoir of omnipotent power. Arise, awake, and manifest the divinity within" .','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (118,19,'This world will always be a mixture of Good and Evil, of Happiness and Misery; This wheel will ever go up and come down; Dissolution and resolution is the inevitable law','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (119,19,'Three things are necessary to make every man great, every nation greatn1. Conviction of the power of Godnessn2. The absence of jealousy and suspicionn3. Helping all, who are trying to be and do good','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (120,19,'Three things are necessary to the student who wishes to succeed.n1. Give up all ideas of enjoyment in this world and the nextn2. Care only for Godn3. Care only for Truth','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (121,19,'Throw all other nonsense to the winds. Spit out your actins, good or bad, and never think of them again. What is done is done. Throw off superstition. Have no weakness even in the face of death. Do not repent, do not brood over past deeds.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (122,19,'We do not look at our own faults; the eyes do not see themselves, they see the eyes of everybody else.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (123,19,'Whatever you do sincerely, is good for you. Even the least thing well-done brings marvellous results; Therefore let everyone do what little he can.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (124,2,'Be of good cheer and believe that we are selected by the Lord to do great things, and we will do them.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (125,2,'Be strong and healthy; it is the best instrument you have','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (126,2,'Each thought is a little hammer blow on the lump of iron which our bodies are, manufacturing out of it what we want it to be. We are what our thoughts have made us; so take care of what you think.','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (127,2,'Goodness in our nature, purity is our nature, and that nature can never be destroyed','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (128,2,'Great results are attained only by great patience, great courage, and great attempts','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (129,2,'In religion, as in all other matters, discard everything that weakens you, have nothing to do with it.','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (130,2,'It is the coward and the fool who says, "This is the fate"-- so says the sanskrit proverb. But it is the strong man who stands up and says, "I will make my fate". It is people who are getting old who talk of fate.','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (131,2,'Life is ever expanding, contraction is death. The Self-seeking man who is looking after his personal comforts and leading a lazy life -- There is no room for him even in hell.','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (132,2,'Stick to truth and we shall succeed, may be slowly, but surely.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (133,2,'The happiest is the man who is not at all selfish','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (134,2,'The more opposition there is, the better. Does a river acquire velocity unless there is resistence? The newer and better a thing is, the more opposition it will meet with at the outset. It is opposition which foretells success. Where there is no opposition there is no success either.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (135,2,'Truth, Purity, and UnSelfishness - wherever these are present, There is no power below or above the sun to crush the possor there-of. Equipped with these, one individual is able to face the whole universe in opposition.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (136,20,'All misery and pain come from attachment.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (137,20,'Anxiety is worse than the disease','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (138,20,'Come up, O Lions, and shake off the delusion that you are sheep; You are souls immortal, spirits  free, blessed and eternal; You are not matter, You are not bodies; matter is your servant, not you the servant of matter','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (139,20,'Have faith in yourselves -- All power is within you -- Be conscious and bring it out. Say, "I can do everything."  "Even the poison of snake is powerless, if you can firmly deny it." Beware! No saying "Nay", no negative thoughts!','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (140,20,'Have inifinite patience, and success is yours.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (141,20,'Mystics in every religion speak the same tongue and teach the same truth.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (142,20,'So long as there is selfishness in the heart, so long as love of God impossible.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (143,20,'The easiest way to get hold of the mind is to sit quiet and let it drift where it will for a while','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (144,20,'The great secret of true success, of true happiness, then, is this: The man who asks for no return, the perfectly unselfish man, is the more successful','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (145,20,'The great secret of true success, of true happiness, then, is this: The man who asks for no return, the perfectly unselfish, is the most successful','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (146,20,'When fear ceases, then alone comes perfect happiness and perfect love.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (147,20,'Worldliness and realization of God cannot go together','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (148,21,'Faith, Faith, Faith in our selves. Faith, Faith in god. This is the secret of greatness.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (149,21,'If there is sin, this is the only sin -- To say that you are weak or others are weak','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (150,21,'It is only by doing good to others that one attains to one''s own good, and it is by leading others to Bhakti and Mukti that one attains them oneself.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (151,21,'It is to be found in every religion in the world -- that man is divine,that all this which we see around us is the outcome of that consciousness of the divine. Everything that is strong, and good, and powerful in human nature is the outcome of that divinity, and though potential in many, there is no difference between man and man essentially, all being alike divine','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (152,21,'Knowledge can never be created, it can only be discovered; and every man who makes a great discovery is inspired.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (153,21,'Struggle is the sign of life','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (154,21,'Sympathy for the poor, the downtrodden, even unto death - this is our motto.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (155,21,'The easiest way to make ourselves happy is to see that others are happy','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (156,21,'The gita is like a bouquet composed of beautiful flowers of spritual truths collected from the upanishads.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (157,21,'To think there is any imperfection, creates it. Thoughts of strength and perfection alone cure it','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (158,21,'We indeed require bold men in this world to tell us bold words about truth','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (159,22,'As long as, we require somone else to make us happy, we are slaves.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (160,22,'Despondency is not religion, whatever else it may be. By being pleasant always and smiling, it takes you nearer to god, nearer than any prayer.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (161,22,'His life also is one of equilibrium and balance. Whether on the ground of materialism, or of intellect, or of spirituality, the compensation that is given by the Lord to everyone impartially is exactly the same','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (162,22,'Loving others is virtue; Hating others is sin','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (163,22,'My hope of the future lies in the youths of character -- intelligent, renouncing all for the service of others, and obedient -- who can sacrifice their lives in working out my ideas and thereby do good to themselves and the country at large.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (164,22,'Our sacred mother land (India) is a land of religion and philosophy -- the birth place of spiritual giants -- the land of renunciation, where and where alone, from the most ancient to the most modern times, there has been the highest ideal of life open to man.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (165,22,'The infinite power of the spirit, brought to bear upon matter evolves material development, made to act upon thought evolves intellectuality, and made to act upon itself makes of man a God','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (166,22,'The main cause of all bondage is ignorance. Man is not wicked by his own nature -- not at all. His nature is pure, perfectly holy. Each man is divine. Each man that you see is a God by his very nature','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (167,22,'This is the hardest period, but hold fast; In the end the gain is sure, if you have patience','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (168,22,'Those who are protected by the Lord must be above fear.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (169,23,'Blessed are they whose bodies get destroyed In the service of others.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (170,23,'Don''t repent, Don''t brood over past deeds, And don''t remember your good deeds; be free. You can''t undo, the effect must come, face it, but be careful never to do the same thing again.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (171,23,'Good motives, sincerity, infinite love can conquer the world. One single soul possed of these virtues can destroy dark designs of millions of hypocrites and brutes.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (172,23,'Have faith that you are all, my brave lads, born to do great things! Let not the box of puppies frighten you -- No not even the thunderbolts of heaven -- But stand up and work!','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (173,23,'Honesty is the best policy, and a virtuous man, must gain in the end','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (174,23,'How they are wasting this precious human life on the fleeting pleasures of some silver coins and the frail beauty of women! Wonderful is the influence of Maha Maya (Divine illusion)!','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (175,23,'It is preferable to live on grass for the sake of doing good to others','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (176,23,'It is remarkable also that the possession of India by a foreign power has always been a turning-point in the history of that power, bringing to it wealth, prosperity, dominion, and spiritual ideas. While the western man tries to measure how much it is possible for him to possesses and to enjoy, the eastern seems to take the opposite course, and to measure how little of material possession he can do with.','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (177,23,'What is the use of living a day or two more in this transitory world? It is better to wear out than to rust out -- specially for the sake of doiong the least good to others.','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (178,23,'Without regular exercise the body does not keep fit; talking, talking all the time brings illness -- Know this for certain.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (179,24,'Every man, should take up his own ideal and endeavour to accomplish it. That is the surer way of progress than taking up other men''s ideals, which he can never hope to accomplish','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (180,24,'Everything can be sacrificed for truth, but truth can''t be sacrificed for anything.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (181,24,'Great enterprise, boundless courage, tremendous energy, above all, perfect obedeince, these are the only traits that lead to individual and national regeneration.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (182,24,'He who knows how to serve knows how to rule','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (183,24,'If you want to help others, your little self must go','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (184,24,'It is feeling that is the life, the strength, the vitality, without which no amount of intellectual activity can  reach god.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (185,24,'Know that every thought and word that weakens you in this world is the only evil that exists in the world. Whatever makes men weak and fear is the only evil that should be shunned','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (186,24,'Religion and religion alone is the life of India, and when that goes India will die, in spite of politics, in spite of social reforms, in spite of Kubera''s wealth poured upon the head of every one of her children','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (187,24,'The noble examples of Sita, Savitri, Damayanti, Leelavathi, Khana, and Meera should be brought home to their minds, and they should be inspired to mould their own lives in the light of these','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (188,24,'There is no good in store so long as malice, jealousy and egoism will prevail','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (189,24,'You have in you all and a thousand times more than is in all the books. Never lose faith in yourself, you can do anything in this universe. Never weaken, all power is yours.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (190,25,'A perfect, free being cannot have any desire.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (191,25,'By declaring we are weak, we become weak, we do not become better','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (192,25,'Do not desire for what you desire you get. With it comes the terrible bondage. It is nothing but bringing "noses on us"','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (193,25,'Don''t spend your energy in talking, but meditate in silence. Accumulate power in silence and become a dynamo of sprituality.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (194,25,'Man is born to conquer nature and not to follow it.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (195,25,'Obedience is the first duty.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (196,25,'Renunciation and spirituality are the two great ideals of India','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (197,25,'The history of the world is that of six men of faith, six men of deep pure character. We need to have three things; the heart to feel; the brain to conceive; the hand to work.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (198,25,'The road to good is the roughest and steepest in the universe','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (199,25,'We are to put the chemicals together, the crystallization will be done by nature according to her laws. Work hard, be steady, and have faith in the Lord','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (200,25,'Youth and beauty vanish, life and wealth vanish, name and fame vanish, even the mountains crumble into death. Friendship and love vanish. Truth alone abides.','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (201,26,'All misery comes from fear, from unsatisfied desire.','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (202,26,'He (God) reveals himself to the pure heart.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (203,26,'He who always speculates as to what awaits him in future, accomplishes nothing whatsoever. What you have understood as true and good, just do that at once.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (204,26,'Human language is the attempt to express the truth that is within.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (205,26,'It is attachment, identification, which makes us miserable','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (206,26,'Purity, patience, and perseverance are the three essentials to success and, above all love','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (207,26,'The difference between god and the devil is in nothing except in unselfishness and selfishness.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (208,26,'The more the power of concentration, the more knowledge is acquired, because this is the one and only method of acquiring knowledge','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (209,26,'What the world wants is character. The world is in need of those whose life isn1. Burning loven2. SelflessnThat love will make every word tell like thunderbolt','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (210,26,'You have to be practical in all spheres of work. The whole country has been ruined by masses of theories.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (211,27,'Be obedient and eternaly faithful to the cause of truth, humanity, and your country and you will move the world.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (212,27,'First build up your own physique. Then only you can get control over the mind','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (213,27,'He alone is the great man whose character is great always, the same wherever he be','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (214,27,'If I am unhappy, it has been of my own making, and that very thing shows that I can be happy if I will.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (215,27,'It is true that fear is the sure cause of degradation and sin. It is fear that brings misery, fear that brings death, fear that breeds evil. And what causes fear? Ignorance of our own nature','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (216,27,'Perfect love, the heart never reacting, this is what builds character','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (217,27,'Superstition is a great enemy of man, but bigotry is worse','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (218,27,'Take some holy person, some great person whom you revere, some saint whom you know to be perfectly non-attached, and think of his heart. That heart has become non-attached, and meditate on that heart: It will calm the mind.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (219,27,'Things that use to make me miserable, when I was a child do not do so now. The subject changed so the object was bound to change; so says the vedanta. The world will change if you change','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (220,27,'Truth is infinitely more weighty than untruth; So is goodness','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (221,27,'We want that education by which character is formed, strength of mind is increased, the intellect is expanded, and by which one can stand on one''s own feet.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (222,28,'All virtuous actions bring pleasure, all vicious actions bring pain.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (223,28,'Do always better and be happy. He said there ought to be no talk of sin. The mistakes of the past ought to be used only for guidance in the future, never to be moaned over. When the lesson is learned from them, they should be forgotten. "Strike a light," He said, "Sit not in darkness and sorrow."','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (224,28,'Expansion is the sign of life, and we must spread over the world with our spiritual ideals.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (225,28,'He who gives man spiritual knowledge is the greatest benefactor of mankind','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (226,28,'If you give up that spirituality, leaving it aside to go after the materializing civilization of the West, the result will be that in three generations you will be an extinct race; because the backbone of the nation will be broken, the foundation upon which the national edifice has been built will be undermined, and the result will be annihilation all around.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (227,28,'It is only those who persevere to the end that succeed','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (228,28,'Nine tens of our life''s energy is spent in training to make people think of us that which we are not. That energy will be more rightly spent in becoming that which we would like to be','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (229,28,'Obedience, readiness, and love for the cause -- if you have these three, nothing can hold you back','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (230,28,'The mind uncontrolled and unguided will drag us down, down, forever -- rend us, kill us; and the mind controlled and guided will save us, free us.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (231,28,'The wind of His grace is always blowing, what you need to do is to unfurl your sail','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (232,28,'Whatever others think or do, lower not your standard of purity, morality and love of God','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (233,29,'Character is repeated habits, repeated habits alone can reform character.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (234,29,'Duty is seldom sweet. It is only when love greases its wheels that it runs smoothly: It is a continiuous friction otherwise. How else could parents do their duties to their children, husbands to their wives, and vice versa?nDo we not meet with cases of friction everyday in our lives? Duty is sweet only through love, and love shines in freedom alone.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (235,29,'It is verly the sign of awful degradation in a man. Ay, when a man has begun to hate himself, then the last blow has come. When a man has begun to be ashamed of his ancestors, the end has come.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (236,29,'Now strengthen the witnessing part and do not waste time in restraining your wanderings. The mind must think; but slowly and gradually','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (237,29,'Pleasure is not the goal of man but knowledge.','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (238,29,'Think that the whole work is upon your shoulders. Think that you, young men of our mother land, are destined to do this. Put yourselves to the task. Lord bless you','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (239,29,'This body is the boat which will carry us to the other shore of the ocean of the life.  It must be taken care of. Unhealthy persons cannot be yogis','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (240,29,'Those who are pure always in body, mind and speech, who have strong devotion, who discern between the real and the unreal, who persevere in meditation and contemplation -- upon them alone, the grace of the Lord descends','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (241,29,'True civilization does not mean congregating in cities and living a foolish life, but going Godword, controlling the senses, and thus becoming the ruler in this house of the Self.','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (242,29,'Whenever you promise to do any work, you must do it exactly at the appointed time,  or people lose their faith in you','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (243,3,'Be not afraid. Think not how many times you fail. Never mind. Time is infinite. Go forward; assert yourself again and again, and light must come','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (244,3,'Concentration of the mind is the source all knowledge','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (245,3,'Each man is perfect by his nature; Prophets have manifested this perfection, but it is potential in us.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (246,3,'Each thought is a little hammer. Blow on the lump of iron which our bodies are, manufacturing out of it what we want it to be. We are what our thoughts have made us; so take care of what you think.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (247,3,'Experience is the only source of knowledge.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (248,3,'If I consider myself greater than the Ant that crawls on the ground I am ignorant','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (249,3,'No great work, can be achieved by humbug. It is through love, a passion for truth and tremendous energy, that all undertakings or accomplished-therefore, manifest your manhood.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (250,3,'So long as you have love for God and Guru and faith in truth, nothing can hurt you, my son. But the loss of any of these is dangerous','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (251,3,'Take care! Beware of everything that is untrue; stick to truth and we shall succeed, may be slowly, but surely. Work on as if I, never existed. Work as if on each of you, depended the whole work.','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (252,3,'The life is one equilibrium and balance. Whether on the ground of materialism, or of intellect, or of spirituality, the compensation that is given by the Lord to everyone impartially is exactly the same','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (253,3,'The more longing grows the more will the cloud of obstacales be dispelled, and stronger will faith be established.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (254,3,'Through practice comes Yoga, through Yoga comes knowledge, through knowledge love, and through love bliss','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (255,30,'Idle, gossip and barren ceremonials won''t do.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (256,30,'It is we who have put our hands before our eyes and cry that it is dark. Know that there is no darkness around us. Take the hands away and there is light which was from the beginning. Darkness never existed, weakness never existed. We who are fools cry that we are weak; We who are fools cry that we are impure','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (257,30,'The only remedy for bad habits is counter habits','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (258,30,'Unselfishness is more paying, and people have not the patience to practice it.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (259,30,'We must not judge of higher things from a low standpoint','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (260,30,'We want infinite energy, infinite zeal, infinite courage, and infinite patience, and then only will great things be achieved.','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (261,30,'When a person loves the Lord, the whole universe becomes dear to him, because it is all His','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (262,30,'You are spoiling your life in vains. Either takeup one idea, clear the deck, and to it dedicate the life; or be contented and practical','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (263,31,'Every man has in him the potentiality of attaining to perfect saintliness, Rishihood, or to the most exalted position of an Avatara, or to the greatness of a hero in material discoveries. It is only a question of time and adequate well-guided investigation, etc., to have this perfection manifested.','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (264,31,'I have given you advice enough; now put at least something in practice. Let the world see that your reading of the scriptures and listening to me has been a success.','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (265,31,'Man should not be degraded to worldy slavery but should be raised up to God','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (266,31,'The secret of life is not enjoyment, but education through experience.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (267,4,'Be pure first and you will have power. The chaste brain has tremendous energy and gigantic will-power. Without chastity there can be no spritual strength. Continence gives wonderful control over mankind. The spritual leaders of men have been continent, and this is what gave them power.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (268,4,'Go on bravely. Do not expect success in a day or a year. Always hold on to the highest. Be steady, avoid jealousy and selfishness.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (269,4,'Him I call a Mahatman (great soul) whose heart bleeds for the poor, otherwise he is a Duratman (wicked soul).','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (270,4,'How long is this life for? As you have come in to this word, leave some mark behind. You, the descendence of the most glorious Rishi''s the world ever saw. "In every one of you lies that eternal power", and try to wake it up','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (271,4,'I see clear as day light that there is the one God in all, in them and in me -- one Shakthi dwells in all. The only difference is of manifestation.','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (272,4,'In eating, dressing, or lying, in singing or playing, in enjoyment or disease, always manifest the highest moral courage. If you can build your character after such an ideal, then a thousand others will follow.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (273,4,'Test everything, try everything, and then believe it, and if you find it for the good, and if you find it for the good of many, give it to all','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (274,4,'That society is the greatest, where the highest truths become practical','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (275,4,'The purer the mind, the easier it is to control it. The mind takes every thought that rises and work it out out. The grosser the mind, the more difficult to control it','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (276,4,'This is the gist of all worship -- to be pure and to do good to others','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (277,4,'Truth is purity, truth is all-knowledge; truth must be strengthening, must be enlightening, must be invigorating','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (278,4,'Unselfishness is God.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (279,5,'God is in every man, whether man knows it or not','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (280,5,'Have faith in yourselves, great convictions are the mother of great deeds.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (281,5,'I want bold, daring, adventurous spirits to help me. Else I will work alone. I have a mission to fulfil. If I could get two or three like me, I could have left the world convulsed.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (282,5,'Infinite patience, infinite purity and infinite perseverance are the secret of success in a good cause','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (283,5,'Practice truthfulness. Twelve years of absolute truthfulness in thought, word and deed gives a man what he wills.','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (284,5,'The goal is to manifest the divinity within, by controlling nature, external and internal.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (285,5,'The less the thought of the body, the better. For it is the body that drags us down. It is attachment, identification, which makes us miserable','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (286,5,'The remedy for weakness is not brooding over weakness, but thinking of strength.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (287,5,'Through concentration of mind everything can be accomplished -- even mountains can be crushed to atoms.  Concentration is the means through which we can gain anything and everything, mental, moral or spiritual','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (288,5,'Unchaste imagination is as bad as unchaste action','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (289,5,'Weak he may be in the beginning, is sure to reach the goal at the end if he assiduously applies himself to gain it.','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (290,5,'Woke on! Hold on! Be brave! Dare anything and everything!','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (291,6,'Character has to be established through a thousand stumples.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (292,6,'Good motives, sincerity, and infinite love can conquer the world. One single soul possessed of these virtues can destory the dark designs of millions of hypocrites and brutes','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (293,6,'He is the real benefactor of humanity who helps the individual to overcome his imperfections under whatever institutions he may live.','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (294,6,'In helping the world we really help ourselves','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (295,6,'It is culture that withstands shocks, not a simple mass of knowledge. You can put a mass of knowledge into the world, but that will not do it much good. There must come culture into the blood','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (296,6,'The first God''s we have to worship are our countrymen.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (297,6,'The man who is pure, and who dares, does all things.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (298,6,'The whole universe is a mass of change. But there is One who never changes, and that is God; and the nearer we get to Him, the less will be the change for us, the less will nature be able to work on us; and when we reach Him, and stand with Him, we shall conquer nature, we shall be masters of these phenomena of nature, and they will have no effect on us','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (299,6,'Thinks do not grow better. They remain as they are; and we grow better by the changes we make in them.','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (300,6,'Throughout the history of the world you find great men make great sacrifices and the mass of mankind enjoy the benefit.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (301,6,'Throw overboard all idea of jealousy and egoism, once for all. Come on to the practical field with the tremendous energy; to work, in the fullness of strength!','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (302,6,'Why not do as much as lies within your power? Even if you cannot give to others for want of money, surely you can at least breath into their ears some good words or impart some good instructions, Can''t you? Or does that also require money?','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (303,7,'Consciously or unconsciously, we are all striving for perfection.','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (304,7,'Day and night never come together; So desire and the Lord, can never come together','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (305,7,'Every man has in him the potentiality of attaining to perfect saintliness.','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (306,7,'Every one of you is a prophet, bearing the burden of the world on your own shoulders.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (307,7,'Hold on to the ideal. March On! Do not look back upon little mistakes and things. In this battle field of ours, the dust of mistakes must be raised. Those who are so thin-skinned that they cannot bear the dust, let them get out of the ranks.','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (308,7,'In the well-being of one''s own nation is one''s own well-being','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (309,7,'Instead of talking foolish words, we must talk about God. Instead of reading foolish books, we must read good ones which tell of God','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (310,7,'Is not self sacrifice, a virtue? It is not the most virtuous deed to sacrifice the happiness of one, the welfare of one, for the sake of many?','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (311,7,'Mercy is heaven itself; to be good, we all have to be merciful','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (312,7,'Sincerity of conviction and purity of motive will surely gain the day; and even a small minority, armed with these, is surely destined to prevail against all odds.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (313,7,'The main spring of the strength of every race lies in spirituality, and the death of that race begins the day that spirituality wanes and materialism gains ground','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (314,7,'You know but little of that which is within you. For behind you, is the infinite power and blessedness.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (315,8,'Along with the development of concentration, we must develop the power detachment. ','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (316,8,'Everyone can play the role of a master, but it is very difficult to be a servant','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (317,8,'It is the level-headed man, the calm man, of good judgement and cool nerves, of the great sympathy and love, who does good work and so does good to himself.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (318,8,'Let me tell you again that you must be pure and help any one who comes to you, as much as lies in your power. And this is good Karma. By the power of this, the heart becomes pure (Chitta - shuddhi), and then Shiva who is residing in every one will become manifest','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (319,8,'No man should be judged by his defects. The great virtues a man has are especially, his errors are the common weaknesses of humanity and should never be counted in estimating his character.','October');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (320,8,'One ounce of practice is worth twenty thousand tons of big talk.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (321,8,'Take up one idea. Make that one idea your life -- Think of it, dream of it, live on that idea. Let the brain, the muscles, nerves, every part of the body, be full of that idea, and just leave every other idea alone. This is the way to success, and this is the way great spiritual giants are produced. Others are mere talking machines.','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (322,8,'The brain and muscles must develop simultaneously. Iron nerves with an intelligent brain -- and the whole world is at your feet','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (323,8,'The true man is he who is strong as strength itself and it possesses a woman''s heart','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (324,8,'This is the great fact: Strength is life, weakness is death. Strength is felicity, life eternal, immortall; Weakness is constant strain and misery. Weakness is death.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (325,8,'Try to be pure and unselfish -- That is the whole of religion.','May');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (326,8,'What we think, that our body becomes. Everything is manufactured by thought, and thus we are the manufacturers of our own lives. We alone are responsible for whatever we do','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (327,9,'All power is within you…Believe in that, do not believe that you are weak… Stand up and express the divinity within you','March');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (328,9,'All the secret of success is there; to pay as much attention to the means as to the end.','February');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (329,9,'Condemnation accomplishes nothing','April');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (330,9,'Do not lose heart, do not lose faith in your Guru, do not lose faith in God. So long as you possess these three, nothing can harm you.','November');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (331,9,'Give up the small for the infinite, give up small enjoyments for infinite bliss.','July');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (332,9,'Infinite faith and strength are the only conditions of success.','January');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (333,9,'It is the patient upbuilding of character, the intense struggle to realize the truth, which alone will tell in the future of humanity','September');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (334,9,'Nobody will come to help you if you put yourself forward  as a leader…Kill self first if you want to succeed','December');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (335,9,'The easiest way to make ourself happy is see that others are happy','August');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (336,9,'Wealth goes, beauty vanishes, life flies, powers fly -- but the Lord abideth forever','June');
INSERT INTO "PUBLIC"."QUOTE_WITH_ID" (ID,DAY,QUOTE,MONTH) VALUES (337,9,'When there is conflict between heart and the brain, let the heart be followed','May');
---completed