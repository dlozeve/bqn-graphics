bqngraphics←"../"
⟨Viridis⟩←•Import bqngraphics∾"colormaps.bqn"
⟨HSVtoRGB⟩←•Import bqngraphics∾"colors.bqn"
⟨PBM,PGM,PPM⟩←•Import bqngraphics∾"pnm.bqn"

# https://susam.net/blog/gcd-grid.html
GCDGrid←•math.GCD⌜˜↕

•Out PBM 1≠GCDGrid 50
#•Out PGM GCDGrid 20
#•Out PPM {⌊255×HSVtoRGB⎉1⍉(360×𝕩÷1+⌈˝𝕩)∾(2∾≢𝕩)⥊1}GCDGrid 20
#•Out PPM ⌊255×> Viridis¨ (⊢÷⌈´∘⥊) GCDGrid 20
