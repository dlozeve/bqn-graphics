⟨PPM⟩←•Import"../pnm.bqn"
⟨Inferno,Viridis⟩←•Import"../colormaps.bqn"
•Out PPM ⌊255×>Viridis¨100÷˜•rand.Range¨100‿100⥊100
