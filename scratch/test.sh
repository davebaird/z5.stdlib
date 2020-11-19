#!/bin/bash

text1="text has ' single apo"
text2='text " has double apo'
# text3="text has ' single and \" double apo"
# text4='text has '\''' single and " double apo'

jo -a "$(jo "Text=$text1")"
jo -a "$(jo "Text=$text2")"
jo "Text=\"$text1\""
jo "Text=\"$text2\""

