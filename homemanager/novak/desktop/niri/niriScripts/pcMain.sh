#!/usr/bin/env -S nix shell nixpkgs#bash nixpkgs#jq --command bash

set -u

apply_outputs() {
  local rout
  local -a vout
  local cout
  local o1
  local o2
  rout="$(niri msg outputs)"
  rout="$(grep "Output" <<<"$rout")"

  mapfile -t vout <<<"$rout"

  if grep 'PNP(AOC) CU34G2XP 1322131231233' <<<"$rout"; then
    for line in "${vout[@]}"; do
      if [[ $line == *"PNP(AOC) CU34G2XP 1322131231233"* ]]; then
        o2="$line"
      elif [[ $line == *"Unknown Unknown Unknown"* ]]; then
        o1="$line"
      fi
    done
    o1="${o1: -5}"
    o1="${o1::-1}"

    o2="${o2: -5}"
    o2="${o2::-1}"

    echo "PBP on"
    niri msg output "$o2" \
      on
    niri msg output "$o1" \
      mode 1720x1440@165.002
    niri msg output "$o2" \
      mode 1720x1440@165.002

  elif grep 'PNP(AOC) CU34G2XP 1Q1RBHA006084' <<<"$rout"; then
    for line in "${vout[@]}"; do
      if [[ $line == *"PNP(AOC) CU34G2XP 1Q1RBHA006084"* ]]; then
        o1="$line"
      elif [[ $line == *"Unknown Unknown Unknown"* ]]; then
        o2="$line"
      fi
    done
    o1="${o1: -5}"
    o1="${o1::-1}"

    o2="${o2: -5}"
    o2="${o2::-1}"

    echo "PBP off"
    niri msg output "$o1" \
      mode 3440x1440@180.000
    niri msg output "$o2" \
      off
  else
    exit

  fi

}
# Apply once at startup
last_state=""
while true; do
  cur_state="$(niri msg --json outputs | jq -S -c '[.[] | {make, model, serial}] | sort_by(.make, .model, .serial)')"
  echo cur_state: "$cur_state"
  if [[ "$cur_state" != "$last_state" ]]; then
    last_state="$cur_state"
    apply_outputs
  fi
  sleep 10
done
