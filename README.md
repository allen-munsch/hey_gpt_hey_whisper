# hey_gpt_hey_whisper
simple bash functions that can be used to ask, and talk to openai gpt

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


Usage:

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


```
hey_gpt 'what does 42 mean?'
As an AI language model, I do not have personal beliefs and/or opinions. However, 42 is a number that is famously associated with the science fiction novel "The Hitchhiker's Guide to the Galaxy" by Douglas Adams. In the novel, 42 is identified as the "Answer to the Ultimate Question of Life, the Universe, and Everything" calculated by an enormous supercomputer named Deep Thought over a period of 7.5 million years. It has since become a popular culture reference and meme.

```
