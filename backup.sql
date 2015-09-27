--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: code; Type: TABLE; Schema: public; Owner: kimhayden; Tablespace: 
--

CREATE TABLE code (
    code integer NOT NULL,
    definition text
);


ALTER TABLE code OWNER TO kimhayden;

--
-- Name: item; Type: TABLE; Schema: public; Owner: kimhayden; Tablespace: 
--

CREATE TABLE item (
    code integer,
    item text NOT NULL,
    "CNRatio" numeric,
    "CN" character(1),
    "AddedNotes" text
);


ALTER TABLE item OWNER TO kimhayden;

--
-- Name: COLUMN item."CNRatio"; Type: COMMENT; Schema: public; Owner: kimhayden
--

COMMENT ON COLUMN item."CNRatio" IS 'from http://www.homecompostingmadeeasy.com/carbonnitrogenratio.html

Use this Rule of Thumb when viewing the chart below

Any organic matter that has a C:N ratio generally smaller than 30:1 is considered a GREEN.
Any organic matter that has a C:N ratio generally larger than 30:1 is considered a BROWN.';


--
-- Data for Name: code; Type: TABLE DATA; Schema: public; Owner: kimhayden
--

COPY code (code, definition) FROM stdin;
0	worm, backyard,curbside
1	backyard, curbside
2	backyard
3	curbside
4	worm, curbside
5	maybe
6	No! Do Not Compost
\.


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: kimhayden
--

COPY item (code, item, "CNRatio", "CN", "AddedNotes") FROM stdin;
0	Achoccha	\N	N	\N
1	Alfalfa hay	\N	\N	\N
1	Alfalfa pellets 	\N	\N	\N
0	Algae	\N	N	\N
2	Almond Milk	\N	\N	\N
0	Almonds 	\N	\N	If salted, rinse off first. Salt is not good for worms
0	Amaranth	\N	N	\N
0	Amaranth Leaves	\N	N	\N
0	Angelica	\N	N	\N
0	Anise	\N	N	\N
0	Apple	\N	N	\N
0	Apricot	\N	N	\N
0	Aquatic weeds and plants	\N	N	\N
0	Arrowroot	\N	N	\N
0	Arrugula	\N	N	\N
0	Artichoke	\N	N	\N
0	Artichoke, globe	\N	N	\N
0	Artichoke, Jerusalem	\N	N	\N
0	Arugula	\N	N	\N
2	Ashes, firepit	\N	C	In moderation, in thin layers, and only if no chemicals were used
2	Ashes, fireplace	\N	C	In moderation, in thin layers, and only if no chemicals were used
2	Ashes, grill	\N	C	In moderation, in thin layers, and only if no chemicals were used
0	Asparagus	\N	N	\N
0	Atemoya	\N	N	\N
0	Aubergine	\N	N	\N
0	Avocado	\N	N	\N
0	Avocado pits 	\N	\N	Might Sprout
0	Baby Corn	\N	N	\N
0	Bags, Paper	\N	C	Recycle if possible, otherwise tear up, no glossy paper
0	Balsam Apple	\N	N	\N
0	Balsam Pear	\N	N	\N
0	Bambara groundnut	\N	N	\N
0	Bamboo	\N	N	\N
0	Bamboo Shoots	\N	N	\N
1	Bamboo skewers	\N	C	Break them into pieces
0	Banana	\N	N	\N
0	Barbados Cherry	\N	N	\N
2	Bark	\N	C	\N
0	Batatas	\N	N	\N
0	Bean Sprouts	\N	N	\N
0	Beans	\N	N	\N
2	Beer 	\N	N	\N
0	Beet	\N	N	\N
0	Beet Greens	\N	N	\N
0	Belgian Endive	\N	N	\N
0	Bell Pepper	\N	N	\N
0	Bibb lettuce	\N	N	\N
0	Bitter Gourd	\N	N	\N
0	Bitter Melon	\N	N	\N
0	Blackberry	\N	N	\N
0	Blueberry	\N	N	\N
0	Bok Choi	\N	N	\N
0	Bok Choy	\N	N	\N
3	Bones	\N	\N	Very slow to decompose, can attract pests, this is more advanced to do backyard
0	Boniato	\N	N	\N
0	Boston lettuce	\N	N	\N
0	Bread	\N	N	\N
0	Broccoli	\N	N	\N
0	Broccoli, Chinese	\N	N	\N
0	Broccoli, Raab	\N	N	\N
0	Brussels sprouts	\N	N	\N
0	Bunch Grape	\N	N	\N
0	Burdock	\N	N	\N
0	Burdock Root	\N	N	\N
0	Burlap	\N	C	Cut or torn into small pieces
2	Business cards 	\N	\N	Best to recycle in you can, otherwise Shred, as long as they’re not glossy
0	Butterhead lettuce	\N	N	\N
0	Cabbage	\N	N	\N
0	Sea-kale	\N	N	\N
0	Cabbage, swamp	\N	N	\N
0	Calabash	\N	N	\N
0	Calabaza	\N	N	\N
0	Candle Corn	\N	N	\N
0	Cantaloupes	\N	N	\N
0	Capers	\N	N	\N
0	Carambola	\N	N	\N
1	Cardboard	\N	C	Uncoated, best to recycle if possible, unless coated with food waste
1	Cardboard boxes from cereal, pasta, etc	\N	C	Uncoated, best to recycle if possible, unless coated with food waste
0	Cardoon	\N	N	\N
0	Carnote	\N	N	\N
0	Carrot	\N	N	\N
0	Cassava	\N	N	\N
1	Cat fur	\N	N	\N
0	Cauliflower	\N	N	\N
0	Celeriac	\N	N	\N
0	Celery	\N	N	\N
0	Celery Root	\N	N	\N
0	Celtuce	\N	N	\N
0	Cereal	\N	N	\N
0	Chard	\N	N	\N
0	Chaya	\N	N	\N
0	Chayote	\N	N	\N
3	Cheese	\N	\N	May smell, take a long time to decompose, and attract pests in backyard bin
0	Chicory	\N	N	\N
0	Chinese Broccoli	\N	N	\N
0	Chinese Cabbage	\N	N	\N
0	Chinese Jujube	\N	N	\N
0	Chinese Radish	\N	N	\N
0	Chinese Spinach	\N	N	\N
0	Chives	\N	N	\N
2	Christmas trees	\N	\N	Chop up with pruners first. Very acidic and waxy; breaks down slowly.
0	Chrysanthemum, edible	\N	N	\N
0	Chufa	\N	N	\N
1	Cigars	\N	\N	In small quantities, natural insecticide so too much could damage the breakdown of pile.
0	Cilantro	\N	N	\N
0	Citron	\N	N	\N
0	Citrus peel	\N	N	In moderation, or else this can be bad for worms.
2	Coconut Milk	\N	\N	\N
0	Coconut Palm	\N	N	\N
0	Coffee filters	\N	N	Make sure the filter is not a synthetic material like nylon. If it is, remove the contents from the bag and dispose of the bag.
0	Coffee grounds	\N	N	If in a filter, ake sure the filter is not a synthetic material like nylon. If it is, remove the contents from the bag and dispose of the bag.
0	Collard Greens	\N	N	\N
0	Collards	\N	N	\N
0	Comfrey	\N	N	\N
0	Cooked pasta	\N	\N	\N
4	Cooked rice	\N	\N	Backyard is debatable because of bacteria growth, but worms can eat rice quickly
0	Corn	\N	N	\N
1	Corn cobs	\N	C	Slow to break down, chop/mix with Nitrogen rich material
0	Corn salad	\N	N	\N
2	Corn Stalks	\N	C	Slow to break down, chop/mix with Nitrogen rich material
1	Cotton balls, 100% cotton	\N	C	\N
2	Cotton fabric	\N	\N	Ripped or cut into small pieces.
1	Cotton swabs 	\N	C	Made from 100% cotton and cardboard (not plastic) sticks
2	Cow manure	\N	N	\N
0	Crackers	\N	N	\N
1	Crepe paper streamers (shredded)	\N	C	Shredded
0	Crumbs	\N	\N	\N
0	Cuban Sweet Potato	\N	N	\N
0	Cucmber, Chinese	\N	N	\N
0	Cucumber	\N	N	\N
0	Cucumber, Armenian	\N	N	\N
1	Cupcake  cups, paper	\N	C	\N
0	Curly kale	\N	N	\N
1	Curry, Vegetable	\N	\N	Curry is not good for worms.
0	Cushcush	\N	N	\N
0	Daikon 	\N	N	\N
0	Daikon Radish	\N	N	\N
3	Dairy	\N	\N	May smell, take a long time to decompose, and attract pests in backyard bin
0	Dandelion	\N	N	\N
0	Dandelion Greens	\N	N	\N
0	Dasheen	\N	N	\N
1	Dead houseplants 	\N	N	If not diseased
0	Dill	\N	N	\N
1	Dog fur	\N	N	\N
1	Droppings, pet rodent	\N	N	\N
1	Dry cat food	\N	N	\N
1	Dry dog  food	\N	N	\N
1	Dryer lint	\N	C	Only if fabric softener dryer sheets not used
1	Dust bunnies	\N	C	\N
1	Dustpan contents	\N	C	Pick out any inorganic stuff, like pennies or legos 
0	Edamame	\N	N	\N
0	Eddo	\N	N	\N
3	Egg	\N	\N	\N
0	Egg cartons, cardboard	\N	C	Tear or cut up.
0	Egg Shells	\N	\N	Worms love broken up shells as grit. Also eggshells add calcium to compost.
0	Eggplant	\N	N	\N
1	Elephant Garlic	\N	N	Garlic is not good for worms
1	Elmer's Glue	\N	\N	\N
0	Endive	\N	N	\N
1	Energy bars	\N	\N	\N
1	English Cucumber	\N	N	\N
2	Envelopes 	\N	C	Best to recycle in you can, otherwise Shred, minus the plastic window
0	Escarole	\N	N	\N
0	Eugenia	\N	N	\N
1	Evergreen garlands	\N	\N	Chop up with pruners first. Very acidic and waxy; breaks down slowly.
1	Facial tissues	\N	C	\N
1	Feathers	\N	N	\N
0	Fennel	\N	N	\N
0	Fiddlehead	\N	N	\N
0	Fig	\N	N	\N
1	Fingernail clippings	\N	N	\N
3	Fish	\N	\N	Can attract pests; smells bad during decomposition.
1	Fish pellets	\N	N	\N
0	Flowers	\N	N	If not diseased
0	Frisee	\N	N	\N
0	Fruits	\N	N	Make sure it is chopped up for worms.
1	Fur,  dog	\N	N	\N
1	Fur, cat	\N	N	\N
0	Galangal	\N	N	\N
0	Galia Muskmelon	\N	N	\N
0	Garbanzo	\N	N	\N
0	Gherkin	\N	N	\N
0	Gherkin, West Indian	\N	N	\N
0	Ginger	\N	N	\N
0	Ginseng	\N	N	\N
1	Glue, white	\N	\N	\N
2	Goat manure	\N	N	\N
0	Gobo	\N	N	\N
0	Gourds	\N	N	\N
0	Grape	\N	N	\N
0	Grape Leaves	\N	N	\N
1	Grass	\N	N	Depends on the city if you can co-mingle yard waste with organics collection or if that is a separate service.
1	Grass clippings	\N	N	Depends on the city if you can co-mingle yard waste with organics collection or if that is a separate service.
3	Grease	\N	\N	Slow to decompose; will putrefy and smell bad; can attract pests.
0	Green Beans	\N	N	\N
0	Green Onions	\N	N	In moderation for worms
0	Green peas	\N	N	\N
0	Greens	\N	N	\N
0	Guar	\N	N	\N
0	Guava	\N	N	\N
1	Hair	\N	N	Human or animal, will take a long time to breakdown backyard.
0	Hanover Salad	\N	N	\N
2	Hay bales 	\N	C	Break apart (or read about how to use in the garden)
0	Hearts of Palm	\N	N	\N
0	Herbs 	\N	\N	\N
2	Horse  manure	\N	N	Compost in separate pile. Can contain seeds that might sprout.
0	Horseradish	\N	N	\N
0	Horseradish tree	\N	N	\N
1	Houseplants	\N	N	If not diseased
0	Huckleberry	\N	N	\N
0	Ice Plant	\N	N	\N
0	Iceberg Lettuce	\N	N	\N
1	Ivy	\N	N	Your city/hauler might have a separate or combined collection for this.
0	Jaboticaba	\N	N	\N
0	Jack O’lanterns	\N	N	Break up in small pieces, especially if giving to worms
0	Jackfruit	\N	N	\N
0	Jam	\N	\N	\N
0	Jelly	\N	\N	\N
0	Jerusalem Artichoke	\N	N	\N
0	Jicama	\N	N	\N
0	Jojoba	\N	N	\N
0	Kai-lan	\N	N	\N
0	Kale	\N	N	\N
0	Kangkong	\N	N	\N
0	Kelp	\N	N	\N
1	Kleenex	\N	C	\N
0	Kohlrabi	\N	N	\N
0	Kohlrabi Greens	\N	N	\N
0	Lacinato kale	\N	N	\N
2	Latex balloons	\N	\N	\N
2	Latex condoms	\N	\N	\N
1	Lawn trimmings	\N	N	Depends on the city if you can co-mingle yard waste with organics collection or if that is a separate service.
1	Leaves	\N	C	Your city/hauler might have a separate or combined collection for this.
1	Leaves, dried	\N	C	Your city/hauler might have a separate or combined collection for this.
1	Leaves, green	\N	C	Your city/hauler might have a separate or combined collection for this.
0	Leek	\N	N	\N
0	Leeks	\N	N	\N
0	Lemon	\N	N	\N
0	Lemon Peel	\N	N	In moderation, or else this can be bad for worms.
0	Lemongrass	\N	N	\N
0	Lentils	\N	N	\N
0	Lettuce	\N	N	\N
0	Lettuce, Iceberg	\N	N	\N
0	Lettuce, Romaine	\N	N	\N
1	Lint from dryer	\N	C	Only if fabric softener dryer sheets not used, and natural materials
2	Litter	\N	\N	Only bunny/rabbit, gerbil, hamster, guinea pig, chinchilla, mouse, or rat litter. The wood chips provide valuable carbon, and the urea is rich in nitrogen. But no cat litter!
0	Longan	\N	N	\N
1	Loofahs	\N	C	Cut up, natural only
0	Loose leaf tea	\N	N	\N
0	Loquat	\N	N	\N
0	Lotus Root	\N	N	\N
0	Lotus Seed	\N	N	\N
0	Lovage	\N	N	\N
0	Luffa Gourd	\N	N	\N
0	Lychee	\N	N	\N
0	Macadamia	\N	N	If salted, rinse off first. Salt is not good for worms
0	Maize	\N	N	\N
0	Malabar Spinach	\N	N	\N
0	Malanga	\N	N	\N
0	Mamey Sapote	\N	N	\N
0	Mango	\N	N	\N
2	Manure	\N	N	Do not put in cat, dog, or human feces in your compost, you can compost sheep, rabbit, goat, and chicken manure, but it should be dried out first before adding to your backyard bin
0	Martynia	\N	N	\N
1	Masking tape	\N	\N	Make sure there is no silicone, and it is the paper type
3	Meat 	\N	\N	Can attract pests; smells bad during decomposition.
0	Melon, casaba	\N	N	\N
0	Melon, honeydew	\N	N	\N
5	Menstrual blood	\N	\N	Yes, but it is not for everyone (ick factor,  or there might be concerns with hormonal birth control or certain medications). Look up online and make your own conclusions).
0	Momordica	\N	N	\N
0	Muffin cups, paper	\N	C	\N
0	Muscadine Grape	\N	N	\N
0	Mushroom	\N	N	\N
0	Muskmelons 	\N	N	\N
1	Mustard	\N	N	\N
0	Mustard collard	\N	N	\N
0	Mustard Greens	\N	N	\N
0	Mustard, potherb	\N	N	\N
0	Napa Cabbage	\N	N	\N
1	Napkins	\N	C	As long as you have not used household chemicals or other toxic materials with them.
0	Naranjillo	\N	N	\N
0	Nasturtium, garden	\N	N	\N
0	Nectarine	\N	N	\N
0	News Paper	\N	C	No glossy ads 
0	Newspaper	\N	C	Best to recycle, but tear into smaller pieces and no glossy paper. Great for worm bedding as long as it is not color paper..
1	Non-dairy milk	\N	\N	\N
0	Nopales	\N	N	\N
0	Nori	\N	N	Rinse off if salted if giving to worms or your backyard bin.
1	Nut shells 	\N	C	Except for walnut shells, which are toxic to plants.
1	Nuts	\N	N	If salted, rinse off first. Salt is not good for worms
0	Oatmeal	\N	\N	\N
0	Okara	\N	N	\N
0	Okra	\N	N	\N
0	Olive	\N	N	\N
0	Onion	\N	N	In moderation for worms.
0	Orach	\N	N	\N
0	Oranges, see Citrus	\N	N	\N
0	Oriental Persimmon	\N	N	\N
0	Pak Choy	\N	N	\N
0	Papaya	\N	N	\N
1	Paper	\N	C	Tear into tiny pieces
1	Paper bags 	\N	C	Ripped or cut into small pieces
1	Paper documents,plain	\N	C	Best to recycle in you can, otherwise Shred
1	Paper plates	\N	C	As long as they don’t have a waxy coating.
1	Paper table cloths	\N	C	Shredded or torn into smaller pieces, no plastic coating
0	Paper towel rolls	\N	C	Tear or shred
0	Paper towels	\N	C	As long as you have not used household chemicals or other toxic materials with them.
0	Paprika	\N	N	\N
0	Parsley	\N	N	\N
0	Parsley root	\N	N	\N
0	Parsnip	\N	N	\N
0	Passion Fruit	\N	N	\N
0	Pasta, cooked	\N	N	\N
0	Peach	\N	N	\N
0	Peanut shells	\N	C	If salted, rinse off first. Salt is not good for worms
0	Peanuts	\N	N	If salted, rinse off first. Salt is not good for worms
0	Pear	\N	N	\N
0	Peas	\N	N	\N
0	Pecan	\N	N	\N
0	Pecans	\N	\N	If salted, rinse off first. Salt is not good for worms
5	Pee	\N	N	Yes, but it is not for everyone (ick factor,  or there might be concerns with hormonal birth control or certain medications). Look up online and make your own conclusions).
1	Pencil shavings	\N	C	\N
0	Pepper	\N	N	\N
0	Peppers	\N	N	\N
0	Persimmon	\N	N	\N
1	Pet Food	\N	N	Dried only, no wet food
0	Pickling Cucumbers	\N	N	\N
0	Pimiento	\N	N	\N
2	Pine Needles	\N	C	Use sparingly. Very acidic and waxy; breaks down slowly.
1	Pineapple	\N	N	Fresh pineapple can kill worms.
0	Pineapple Guava	\N	N	\N
0	Pitas	\N	N	\N
0	Pitaya	\N	N	\N
1	Pizza boxes, cardboard, unwaxed	\N	C	Ripped or cut into small pieces if putting in back yard
0	Pizza crusts	\N	\N	\N
0	Plantain	\N	N	\N
0	Plum	\N	N	\N
0	Pokeweed	\N	N	\N
0	Pomegranate	\N	N	\N
0	Potato	\N	N	\N
1	Potato chips	\N	\N	Be careful with backyard due to oil and salt
1	Potpourri, natural	\N	C	\N
0	Preserves	\N	\N	\N
0	Pretzels	\N	N	\N
1	Protein bars	\N	\N	\N
0	Pumpkin	\N	N	Break up in small pieces, especially if giving to worms
0	Pumpkin seeds 	\N	\N	Might Sprout
0	Purslane	\N	N	\N
1	Q-tips	\N	C	Made from 100% cotton and cardboard (not plastic) sticks
0	Radicchio	\N	N	\N
0	Radish	\N	N	\N
0	Radish, Chinese	\N	N	\N
0	Rakkyo	\N	N	\N
0	Rampion	\N	N	\N
0	Rapini	\N	N	\N
0	Raspberry	\N	N	\N
0	Rhubarb	\N	N	Do not compost the leaves, stalk only.
1	Rice milk	\N	\N	\N
4	Rice, cooked	\N	N	There is some debate if it is safe for the backyard bin or not due to bacteria growth.
0	Romaine Lettuce	\N	N	\N
1	Rope	\N	C	Chopped, natural, unwaxed only
0	Roselle	\N	N	\N
0	Rutabaga	\N	N	\N
0	Saffron	\N	N	\N
0	Salsify	\N	N	\N
0	Sapodilla	\N	N	\N
0	Sarsaparilla	\N	N	\N
0	Sassafrass	\N	N	\N
2	Sawdust	\N	C	From plain wood that has NOT been pressure-treated, stained or painted
0	Scallions	\N	N	\N
0	Scorzonera	\N	N	\N
0	Sea kale	\N	N	\N
0	Sea Vegetables	\N	N	\N
0	Seagrape	\N	N	\N
0	Seaweed	\N	N	\N
0	Sesame seeds	\N	\N	Might Sprout
0	Shallot	\N	N	In moderation for worms
6	Shit	\N	N	Do not put in cat, dog, or human feces in your compost, you can compost  sheep, rabbit, goat, and chicken manure, but it should be dried out first before adding to your backyard bin
0	Skirret	\N	N	\N
0	Smallage	\N	N	\N
0	Snap Beans	\N	N	\N
0	Snow peas	\N	N	\N
0	Sorrel, garden	\N	N	\N
0	Southern pea	\N	N	\N
\N	Soy milk	\N	\N	\N
0	Soybeans	\N	N	\N
1	Spices	\N	\N	\N
0	Spinach	\N	N	\N
0	Spinach, Malabar	\N	N	\N
0	Spinach, New Zealand	\N	N	\N
0	Spondias	\N	N	\N
0	Squash	\N	N	\N
0	Stale bread	\N	\N	\N
0	Stale cereal	\N	N	\N
0	Stale crackers	\N	N	\N
0	Stale pitas	\N	\N	\N
1	Stale potato chips	\N	\N	Too greasy/salty for worms
1	Stale tortilla chips 	\N	\N	Too greasy/salty for worms
0	Stale tortillas	\N	\N	\N
0	Star Fruit	\N	N	\N
0	Sticky notes 	\N	\N	Best to recycle in you can, otherwise Shred
2	Straw bales	\N	C	Break apart (or read about how to use in the garden)
0	Strawberries	\N	N	\N
0	String Beans	\N	N	\N
0	Sugar Apple	\N	N	\N
0	Sugar snap peas	\N	N	\N
0	Sunchokes	\N	N	\N
0	Sunflower seeds	\N	\N	Might Sprout
0	Swamp Cabbage	\N	N	\N
0	Sweet Basil	\N	N	\N
0	Sweet Corn	\N	N	\N
0	Sweet potato	\N	N	\N
0	Swiss Chard	\N	N	\N
5	Tampon applicators	\N	\N	Paper, not plastic. Yes, but it is not for everyone (ick factor,  or there might be concerns with hormonal birth control or certain medications). Look up online and make your own conclusions).
5	Tampons 100% cotton, used	\N	\N	Yes, but it is not for everyone (ick factor,  or there might be concerns with hormonal birth control or certain medications). Look up online and make your own conclusions).
0	Taro	\N	N	\N
0	Tea Bags	\N	N	Make sure the filter is not a synthetic material like nylon. If it is, remove the contents from the bag and dispose of the bag.If there are staples, it is best to remove.
1	Tempeh	\N	N	Test your worms with a little bit, they might not like it.
1	Tofu 	\N	N	Test your worms with a little bit, they might not like it.
0	Toilet paper rolls 	\N	C	Tear or shred
0	Tomatillo	\N	N	\N
0	Tomato	\N	N	\N
1	Tomato, husk	\N	N	\N
1	Tomato, tree	\N	N	\N
1	Toothpicks	\N	C	\N
0	Tortillas	\N	\N	\N
0	Tropical Pumpkin	\N	N	\N
0	Tropical Sweetpotato	\N	N	\N
0	Truffles, plant	\N	N	The plant kind, not the chocolate kind
0	Truffles, chocolate	\N	\N	The chocolate kind, not the plant kind
0	Turnip	\N	N	\N
0	Turnip Greens	\N	N	\N
1	Twine	\N	C	\N
1	Unwaxed cardboard pizza boxes	\N	\N	Ripped or cut into small pieces
0	Upland cress	\N	N	\N
2	Urine	\N	\N	Yes, but it is not for everyone (ick factor, or there might be concerns with hormonal birth control or certain medications). Look up online and make your own conclusions).
1	Used matches	\N	C	\N
1	Used paper plates	\N	\N	As long as they don’t have a waxy coating.
1	Vacuum cleaner bag or canister	\N	C	Pick out any inorganic stuff, like pennies or legos 
0	Vegetables	\N	N	No garlic for the worms, please.
1	Walnut Shells	\N	C	Toxic to plants
0	Water celery	\N	N	\N
0	Water Chestnut	\N	N	\N
0	Water Spinach	\N	N	\N
0	Waterchestnut	\N	N	\N
0	Watercress	\N	N	\N
0	Watermelon	\N	N	\N
0	Wax Beans	\N	N	\N
2	Weeds	\N	N	No diseased or weeds gone to seed in the backyard. Many places do not allow yard waste in organics collection and have separate yard waste collection. Check your city/hauler.
1	White Glue	\N	\N	\N
2	Wine	\N	\N	\N
1	Wine corks 	\N	C	\N
0	Winter Melon	\N	N	\N
2	Wood chips	\N	C	\N
2	Wool 	\N	\N	Ripped or cut into small pieces.
1	Wrapping paper rolls	\N	C	Cut into smaller pieces
1	Wreaths, natural	\N	\N	Chop up with pruners first. Very acidic and waxy; breaks down slowly.
0	Yams	\N	N	\N
0	Zucchini	\N	N	\N
\.


--
-- Name: code_pkey; Type: CONSTRAINT; Schema: public; Owner: kimhayden; Tablespace: 
--

ALTER TABLE ONLY code
    ADD CONSTRAINT code_pkey PRIMARY KEY (code);


--
-- Name: item_pkey; Type: CONSTRAINT; Schema: public; Owner: kimhayden; Tablespace: 
--

ALTER TABLE ONLY item
    ADD CONSTRAINT item_pkey PRIMARY KEY (item);


--
-- Name: public; Type: ACL; Schema: -; Owner: kimhayden
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM kimhayden;
GRANT ALL ON SCHEMA public TO kimhayden;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

