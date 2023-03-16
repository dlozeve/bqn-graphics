⟨PBM, PGM, PPM⟩⇐

Dims←{∾⥊' '∾˘•Fmt¨⌽2↑≢𝕩}

# Plain Portable Bit Map (PBM) format (black and white).
# 𝕩 is a 2D boolean matrix: 1 is black, 0 is white.
# https://netpbm.sourceforge.net/doc/pbm.html
PBM←{"P1"∾(Dims𝕩)∾∾⥊((@+10)∾˘•Fmt¨𝕩)}

# Plain Portable Gray Map (PGM) format (grayscale).
# 𝕩 is a 2D matrix, with an arbitrary maximum value.
# The maximum value is white, 0 is black, and gray in between.
# https://netpbm.sourceforge.net/doc/pgm.html
PGM←{"P2"∾(Dims𝕩)∾" "∾(•Fmt⌈´⥊𝕩)∾∾⥊' '∾˘⥊(@+10)∾˘•Fmt¨𝕩}

# Plain Portable Pixel Map (PPM) format (color).
# 𝕩 is an array of shape m‿n‿3, where each triplet is an RGB color.
# Maximum value can be arbitrary.
# https://netpbm.sourceforge.net/doc/ppm.html
PPM←{"P3"∾(Dims𝕩)∾" "∾(•Fmt⌈´⥊𝕩)∾(@+10)∾∾(∾' '⊸∾¨)¨•Fmt¨¨⥊𝕩}

