# hey_gpt_hey_whisper

#### simple bash functions that can be used to ask, and talk to openai gpt, from the terminal.

Inspired by: https://kadekillary.work/posts/1000x-eng/


```bash
# see: curl https://raw.githubusercontent.com/allen-munsch/hey_gpt_hey_whisper/main/hey_gpt_hey_whisper.sh
# and
# for the bold and daring to install just
curl https://raw.githubusercontent.com/allen-munsch/hey_gpt_hey_whisper/main/hey_gpt_hey_whisper.sh >> ~/.bashrc
source ~/.bashrc
```

Dependencies:

- PipeWire `pw-record`
- json thing `jq`
- python `whisper-cli`
- `xsel` to use like `pbcopy` and `pbpaste`

```
export OPENAI_API_KEY=<your-key-here>
sudo apt install jq
pip install whisper-cli
```

### Usage:

### hey_whisper

```
✗|→ hey_whisper
Recording your voice. Press Ctrl+C to stop recording.
^CWhisper output: Write me a Python function that takes two numbers and adds them together and returns the result.
Here is a Python function that takes two numbers as arguments, adds them together, and returns the result:

def add_numbers(num1, num2):
    result = num1 + num2
    return result

To use this function, you would call it with two numbers as arguments:

sum = add_numbers(5, 7)
print(sum)  # Output: 12

In this example, the `add_numbers` function is called with arguments `5` and `7`. The function adds these two numbers together and returns the result (`12`), which is stored in the variable `sum`. Finally, the result is printed to the console.

```

### hey_whisper $(cat some/data)

```
hey_whisper $(cat tests/functional_tests_in_selenium.py)
Recording your voice. Press Ctrl+C to stop recording.
^CWhisper output: Rewrite this functional test as a playwright script.
```

### hey_gpt 'some question'

```
hey_gpt 'what does 42 mean?'
As an AI language model, I do not have personal beliefs and/or opinions. However, 42 is a number that is famously associated with the science fiction novel "The Hitchhiker's Guide to the Galaxy" by Douglas Adams. In the novel, 42 is identified as the "Answer to the Ultimate Question of Life, the Universe, and Everything" calculated by an enormous supercomputer named Deep Thought over a period of 7.5 million years. It has since become a popular culture reference and meme.
```

### hey_gpt 'please sort' $(cat some/data)

```
hey_gpt 'can you sor this' 'b,c,d,a'

Sure, here is the sorted list: 

a, b, c, d
```


# From the clipboard pass 'clippy'

```
hey_gpt 'explain what these functions do in my clipboard' 'clippy'

explain what these functions do in my clipboard pbcopy pbmlife pbmpage pbmtext pbmtoascii
- pbcopy: This function is used to copy data from the standard input to the clipboard.
- pbmlife: This function converts a Portable Bitmap (PBM) image to a Conway's Game of Life pattern.
- pbmpage: This function combines multiple PBM images into a single multi-page document.
- pbmtext: This function converts a text file to a PBM image, where each character is represented by a black and white bitmap.
- pbmtoascii: This function converts a PBM image to ASCII art, where each black pixel is represented by a "#" symbol and each white pixel is represented by a space.
```

```
04:13:51 jm@pop-os  ±|jm/try-thing ✗|→ hey_whisper 'clippy'

Recording your voice. Press Ctrl+C to stop recording.
^CWhisper output: Explain to me what pbcopy does. Also pbmtext. Actually everything in the clipboard, just tell me what it does. Thank you.
Explain to me what pbcopy does. Also pbmtext. Actually everything in the clipboard, just tell me what it does. Thank you. pbcopy pbmlife pbmpage pbmtext pbmtoascii
pbcopy is a command-line utility for Mac OS X and Linux that allows you to copy the contents of a file or standard input to the clipboard. This means you can paste the copied text or data into another application, such as a text editor or spreadsheet program.

pbmlife is a utility that generates a "Game of Life" animation from a PBM (Portable Bitmap) image file. The Game of Life is a cellular automaton devised by mathematician John Conway in which a grid of cells evolves over time based on a set of rules.

pbmpage is a utility that allows you to create a PBM image file with a specified width and height. PBM files are a type of bitmap image format that stores black-and-white images.

pbmtext is a utility that converts text into a PBM bitmap image. You can specify the font, size, and other options to customize the output.

pbmtoascii is a utility that converts a PBM bitmap image into ASCII art. This means the image is represented using characters such as letters, numbers, and symbols instead of pixels. The output can be displayed in a terminal window or saved to a text file.
```
