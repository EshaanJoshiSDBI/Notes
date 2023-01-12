- A simple way to measure the semantic similarity betweem two synsets is to treat taxonomy as an undirected graph and measure the distance between them in wordnet.
- The shorter the path from one node to another, the more similar they are
- Not the that path length is measured in nodes/vertices rather than in links/edges.
- The length of the path between two members of the same synset

Subsumer is a shared parent of two synsets
LCS of two synsets is the most specific sub-sumer of the two synsets
wu-palmer = 2*(depth(lcs(s1,s2))/(depth(s1)+depth(s2)))