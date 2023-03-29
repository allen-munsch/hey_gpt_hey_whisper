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
- `whisper-cli`


### Usage:

### hey_whisper

```
export OPENAI_API_KEY=<your-key-here>
sudo apt install jq
pip install whisper-cli

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
