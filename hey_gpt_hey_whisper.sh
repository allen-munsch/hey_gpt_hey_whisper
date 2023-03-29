
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'


# Function to handle the SIGINT signal (Ctrl+C)
handle_ctrl_c() {
    echo "Recording stopped. Processing the audio..."
    # Reset the trap to default behavior
    trap - SIGINT
}

# Function to call the OpenAI API
hey_gpt() {
    item="$1 $2"
    if [ "$2" == "clippy" ]; then
        item="$1 $(pbpaste)"
    fi
    echo "$item"
    json_payload=$(jq -n --arg prompt "$item" '{"model": "gpt-3.5-turbo", "messages": [{"role": "user", "content": $prompt}], "temperature": 0.7}')
    echo "$json_payload"
    curl -Lv https://api.openai.com/v1/chat/completions -s \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -d "$json_payload" | jq -r '.choices[0].message.content'
}

hey_whisper() {
    # Set the trap to catch SIGINT and call the handle_ctrl_c function
    trap handle_ctrl_c SIGINT

    # Record your voice
    output_file="/tmp/hey_gpt_hey_whisper.mp3"
    echo "Recording your voice. Press Ctrl+C to stop recording."
    pw-record $output_file

    # Process the recorded audio
    whisper key set $OPENAI_API_KEY --env dev
    whisper env activate --env dev
    whisper_output=$(whisper transcribe $output_file)
    echo "Whisper output: $whisper_output"
    hey_gpt "$whisper_output" "$1"
}
