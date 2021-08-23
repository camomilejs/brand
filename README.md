# camomilejs/brand

> [Camomile](https://github.com/camomilejs) brand assets

## Assets

### Name

The name is to be written according to the British spelling. The name is to be
capitalized. Exception: the word refers to the command name. In this case it
should be put inside a monospaced environment, like `<code>` in HTML or
backticks in Markdown. You may put the name in bold or italics to highlight it
in the sentence.

Examples of **correct** usage:

- "This plugin is design to work with Camomile 1.1.0 or later"
- "You can execute `camomile` to build your project"
- "_Camomile_ is a build automation toolkit"

Examples of **_incorrect_** usage:

- "You can build your website with Chamomile"
- "I can't seem to install camomile"

### Color

The color that is present in all brand assets of _Camomile_ is a bright shade
of yellow. The base value is **`#FED141`**; this is the reference value.
Other color values, according to [colorhexa](https://www.colorhexa.com/fed141),
are:

- HSL: `45.7º, 99%,  62,5%)`
- RGB: `254, 209, 65`
- CMYK: `0, 18, 74, 0`

### Logomark

The logomark of Camomile is a picture of a flower with white petals and yellow
strok around the petals and the disk. The flower resembles a daisy flower
(chamomile).

The body of the petals is white, while the disk is transparent. The stroke is
colored yellow (see [Color](#color)).

![Camomile logomark](./logo.png)

### Logotype

The logotype of Camomile comprises of the aforementioned logomark, letters "cam"
placed to the left of it, and letters "mile" placed to the right of it, thus
forming the word "camomile". The text part is set in the Rubik font with
weight 900 and is colored yellow.

![Camomile logotype](./logotype.png)

## Build

The files inside `source` directory represent the actual source files. We do the
graphical design in Affinity Design and manually export the SVG version of each
asset.

Then, to convert the assets to minified SVG, PNG, and JPEG, a Makefile is used.
Before commiting the changes in the `source` folder, one shall run `make`.

**Prerequisites:**

- **Node.js** with **NPM**
  (to minify SVGs with `svgo` and compress PNGs and JPEGs with `squoosh`)
- **`svgcleaner`**
  (to further minify SVGs)
- **Inkscape**
  (to convert SVGs to PNGs)
- **ImageMagick**
  (to convert SVGs to JPEGs)
- **GNU `make`**
  (to automate the process)

## License

The described assets were made by Nikita Karamov and are marked with
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/).
In other words, they're released to the public domain! You can do anything with
these resources, no questions asked. Attribution would be appreciated though :)
