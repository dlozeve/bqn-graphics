⟨PPM⟩←•Import"../pnm.bqn"
⟨HSVtoRGB⟩←•Import"../colors.bqn"
•Out PPM ⌊255×>HSVtoRGB¨{(𝕨×360)‿𝕩‿1}⌜˜↕⊸÷˜50
