## What is POS tagging.
- POS tagging refers to the automatic assignment of a tag to words in a given sentence.
- It converts a sentence into a list of words with their tags.
- Since this task involves considering the sentence structure, it cannot be done at the Lexical level.
- A POS tagger considers surrounding words while assigning a tag.
- Example: "I like to read book" is represented as [(I,Preposition),(like,Verb),(read,Verb),(books,Noun)]
- Penn TreeBank Tag Set is most used for the English language. Example:
|Part of Speech|Tag|
|:------------:|:-:|
|Noun (Singular)|NN|
|Noun (Plural)|NNS|
|Verb|VB|
|Determiner|DT|
|Adjective|JJ|
|Adverb|RB|

## Difficulties
- Similar to most NLP problems, POS tagging suffers from ambihuity.
- Example: In the sentence 'book the flight' and 'i like to read books', book acts as a verb or noun.

## Types
- Rule based
    - Involves using a dictionary consisting of all the possible POS tags for a given word.
    - If any of the words have more than one tag, hand-written rules are used to assign the correct tag based on the tags of surrounding words.
- Stochastic tagger
    - A supervised model, involves using with frequencies or probabilities of the tags in the given training corpus to assign a tag to a new world. These taggers entirely rely on statistics of the tag occurrence.
