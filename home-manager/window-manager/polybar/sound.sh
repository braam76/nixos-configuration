#!/nix/store/5mh7kaj2fyv8mk4sfq1brwxgc02884wi-bash-5.2p37/bin/sh

function main() {
    # Get the current volume
    VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
    
    # Handle actions based on input arguments
    case "$1" in
        mute)
            wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
            ;;
        up)
            wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%+
            ;;
        down)
            wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-
            ;;
        *)
            echo "$VOLUME"
            ;;
    esac
}

main "$@"

