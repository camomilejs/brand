# camomilejs/brand

> [Camomile](https://github.com/camomilejs) brand assets

## Assets

### Color

The color that is present in all brand assets of _Camomile_ is a bright shade
of yellow, namely
[**PANTONE 122 C**](https://www.pantone.com/color-finder/122-C).
Its official color values are:

- RGB: `254, 209, 65`
- Hex: `#FED141`
- CMYK: `0, 9, 80, 0`

We take the RGB Hex value for our source files.

### Logo

The logo of Camomile is a picture of a flower with white petals and yellow
strok around the petals and the disk. The flower resembles a daisy flower
(chamomile).

The body of the petals is white, while the disk is transparent. The stroke is
colored yellow (see [Color](#color)).

![Camomile logo mark](./logo.png)

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

Camomile brand assets are marked with
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/).
In other words, they're released to the public domain. You can do anything with
these images.
