always all s : Signal | Green
-- div,1
always all s : Signal |
s in Green implies eventually s not in Green or
s not in Green implies s eventually s in Green
-- div,1
always all s : Signal {
s in Green implies eventually s not in Green or
s not in Green implies s eventually s in Green
}
-- div,1
always (all s : Signal {
s in Green implies eventually s not in Green or
s not in Green implies s eventually s in Green
})
-- div,1
