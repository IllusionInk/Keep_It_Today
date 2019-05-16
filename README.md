# Keep it Today

> As part of a 2 week Open Elective Course at college ( National Insitute of Design, Bangalore), our objective was to reimagine and contemporise traditional craft-forms of Gujarat to the current times.

>The idea was to depict the traditional craft forms in current times. How could traditional art forms be practised today, with the aid of relevant tool and technologies ? 


### Background
---
The region of Kutch its home to some of the most beautiful art forms of Gujarat. 
- **Lippan** artwork , done using mirrors and clay is an intricate art-form. It is usually done for the decoration of walls in village homes.
- **Ajrakh** on the other hand is a  traditional block and resist printing technique done using vegetable dyes on cloth. While, **Ajrakh** comes from ***‘Azrakʼ- the Arabic word for Indigo***, a naturally occurring blue paint; the popular story amongst painters is that *****'Ajrakh'*** means ‘keep it todayʼ**.

![sketch](https://github.com/IllusionInk/Keep_It_Today/blob/master/Assets/Keep_It_today-01.jpg)


### Idea
---
**Ajrakh** (Textile Block Printing ) and **Lippan** (Glass-Mudwork) two of the oldest art forms practised in Gujarat.

The idea was to depict a version of these traditional craft forms, fit with the contemporary times; employing modern digital techniques. The installation also seeks to depict the changing perception of the people and resulting impact on the traditional crafts today.

- **Projecting Lippan patterns** to a surface from a distorted arrangement of mirrors in its base form.
- **Visualising live sound** input to depict the changing perception of people on the craft.

### Process
---
- The live sound visualisation part was done in Processing using its inbuilt sound libraries. 
- The art glyphs were made in Illustrator, from the existing Ajrakh print motifs.

![sketch](https://github.com/IllusionInk/Keep_It_Today/blob/master/Assets/Keep_It_today-02.jpg)

#### Algorithm
- Import sound library in the code sketch ( is an inbuilt library).
- Import the glyphs based on ajrakh motifs in the sketch.
- Setup the variables for calculating input sound amplitude
- In order to use the amplitude at an observable level, i scaled it upto 1000. Map a variable ‘Si’ to be used as the stroke width from amplitude level.s
- Set the motifs to rotate about their individual centres.
- A certain threshold is kept considering the background white noise, as the input sound level crosses this, the motif rotation and color would be changed to certain set conditions.
-  The final block sets the grid of 5 motifs to rotate in unison.

![sketch](https://github.com/IllusionInk/Keep_It_Today/blob/master/Assets/Keep_It_today-04.jpg)

### Final Setup
---
![sketch](https://github.com/IllusionInk/Keep_It_Today/blob/master/Assets/Keep_It_today-03.jpg)

#### Test Video
[Render video with test music](https://vimeo.com/313569164)

### To Do
---
- [ ] Mapping sound frequencies - to show diversity / nature of incoming sounds
- [ ] Generate the pattern generatively using rose curves.

### References
---
- Processing (processing.sound) - Used the specific library to detect incoming live sound and derive its attributes (amplitude). You can find it [here](https://processing.org/reference/libraries/sound/index.html).
- Kudos to my teammates -
   - [Kathiravan S](https://www.behance.net/kathiravans),      
   - [Selva M](https://www.behance.net/selvamurugan),
   - [Prateeksha N](https://www.behance.net/Prateeksha_Narayan)
