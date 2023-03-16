⟨HSVtoRGB⟩⇐

# Convert colors from HSV to RGB.
# 𝕩 is a triple 0 ≤ h‿s‿v ≤ 360‿1‿1
# Output is a triple 0 ≤ r‿g‿b ≤ 1
HSVtoRGB←{𝕊⟨h,s,v⟩:
  c←v×s
  x←c×1-|1-2|h÷60
  m←v-c
  r‿g‿b←(⌊h÷60)⊑⟨c‿x‿0,x‿c‿0,0‿c‿x,0‿x‿c,x‿0‿c,c‿0‿x⟩
  m+r‿g‿b
}
