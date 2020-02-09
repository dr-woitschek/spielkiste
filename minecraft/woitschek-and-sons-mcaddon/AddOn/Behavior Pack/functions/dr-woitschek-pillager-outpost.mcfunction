# Platz machen
fill ~12 ~0 ~-1 ~0 ~3 ~11 air 0
fill ~-15 ~-10 ~-13 ~24 ~10 ~23 air 0
# 1. Stock Cobblestone
fill ~11 ~0 ~0 ~1 ~3 ~10 cobblestone 0 hollow
# Ecken bereinigen
fill ~1 ~0 ~0 ~1 ~3 ~0 air 0 hollow
fill ~11 ~0 ~0 ~11 ~3 ~0 air 0 hollow
fill ~1 ~0 ~10 ~1 ~3 ~10 air 0 hollow
fill ~11 ~0 ~10 ~11 ~3 ~10 air 0 hollow
# Gartenzaun 1
setblock ~2 ~3 ~0 fence 5
setblock ~1 ~3 ~1 fence 5
# Gartenzaun 2
setblock ~11 ~3 ~9 fence 5
setblock ~10 ~3 ~10 fence 5
# Gartenzaun 3
setblock ~10 ~3 ~0 fence 5
setblock ~11 ~3 ~1 fence 5
# Gartenzaun 4
setblock ~1 ~3 ~9 fence 5
setblock ~2 ~3 ~10 fence 5
# Holzstufen aussen
fill ~4 ~4 ~0 ~8 ~4 ~0 wooden_slab 5
fill ~4 ~4 ~10 ~8 ~4 ~10 wooden_slab 5
fill ~1 ~4 ~3 ~1 ~4 ~7 wooden_slab 5
fill ~11 ~4 ~3 ~11 ~4 ~7 wooden_slab 5
# innere Decke weg
fill ~2 ~3 ~1 ~10 ~3 ~9 air 0 hollow
# Verbindungssteine fuer Fence setzen
setblock ~2 ~3 ~1 cobblestone
setblock ~2 ~3 ~9 cobblestone
setblock ~10 ~3 ~9 cobblestone
setblock ~10 ~3 ~1 cobblestone
# Holzverkleidungen, dunkles Holz
fill ~4 ~4 ~1 ~8 ~4 ~1 planks 5
fill ~4 ~4 ~9 ~8 ~4 ~9 planks 5
fill ~2 ~4 ~3 ~2 ~4 ~7 planks 5
fill ~10 ~4 ~3 ~10 ~4 ~7 planks 5
# Holzverkleidungen, helles Holz und Boden
fill ~2 ~5 ~1 ~10 ~5 ~9 planks 2
fill ~2 ~9 ~1 ~10 ~9 ~9 planks 2
fill ~1 ~13 ~0 ~11 ~13 ~10 planks 2
# Baumstamm aussen, unten links
fill ~3 ~5 ~1 ~3 ~10 ~1 log2 1
fill ~2 ~5 ~2 ~2 ~10 ~2 log2 1
# Baumstamm aussen, unten rechts
fill ~2 ~5 ~8 ~2 ~10 ~8 log2 1
fill ~3 ~5 ~9 ~3 ~10 ~9 log2 1
# Baumstamm aussen, oben rechts
fill ~9 ~5 ~9 ~9 ~10 ~9 log2 1
fill ~10 ~5 ~8 ~10 ~10 ~8 log2 1
# Baumstamm aussen, oben links
fill ~9 ~5 ~1 ~9 ~10 ~1 log2 1
fill ~10 ~5 ~2 ~10 ~10 ~2 log2 1
# Cobblestone unter den Baumstamm, vorn links
setblock ~3 ~4 ~1 cobblestone
setblock ~2 ~4 ~2 cobblestone
# Cobblestone unter den Baumstamm, oben rechts
setblock ~9 ~4 ~9 cobblestone
setblock ~10 ~4 ~8 cobblestone
# Cobblestone unter den Baumstamm, hinten links
setblock ~9 ~4 ~1 cobblestone
setblock ~10 ~4 ~2 cobblestone
# Cobblestone unter den Baumstamm, vorn rechts
setblock ~3 ~4 ~9 cobblestone
setblock ~2 ~4 ~8 cobblestone
# aussen frei machen
setblock ~2 ~9 ~1 air 0
setblock ~2 ~9 ~9 air 0
setblock ~10 ~9 ~9 air 0
setblock ~10 ~9 ~1 air 0
# Cobblestone Ecken im Obergeschoss
setblock ~1 ~13 ~0 cobblestone
setblock ~11 ~13 ~10 cobblestone
setblock ~11 ~13 ~0 cobblestone
setblock ~1 ~13 ~10 cobblestone
# Beleuchtung
setblock ~1 ~12 ~0 lantern 1
setblock ~11 ~12 ~10 lantern 1
setblock ~11 ~12 ~0 lantern 1
setblock ~1 ~12 ~10 lantern 1
# Cobblestone aussen, unten links
fill ~3 ~11 ~1 ~3 ~12 ~1 cobblestone
fill ~2 ~11 ~2 ~2 ~12 ~2 cobblestone
# Cobblestone aussen, unten rechts
fill ~2 ~11 ~8 ~2 ~12 ~8 cobblestone
fill ~3 ~11 ~9 ~3 ~12 ~9 cobblestone
# Cobblestone aussen, oben rechts
fill ~9 ~11 ~9 ~9 ~12 ~9 cobblestone
fill ~10 ~11 ~8 ~10 ~12 ~8 cobblestone
# Cobblestone aussen, oben links
fill ~9 ~11 ~1 ~9 ~12 ~1 cobblestone
fill ~10 ~11 ~2 ~10 ~12 ~2 cobblestone
# Ecken wegmachen, unten links
setblock ~2 ~5 ~1 air 0
# Ecken wegmachen, oben rechts
setblock ~10 ~5 ~9 air 0
# Ecken wegmachen, unten rechts
setblock ~2 ~5 ~9 air 0
# Ecken wegmachen, oben links
setblock ~10 ~5 ~1 air 0
# Holzmauer aussen, links
fill ~4 ~5 ~1 ~4 ~12 ~1 planks 5
fill ~8 ~5 ~1 ~8 ~12 ~1 planks 5
fill ~5 ~8 ~1 ~7 ~12 ~1 planks 5
# Holzmauer aussen, rechts
fill ~4 ~5 ~9 ~4 ~12 ~9 planks 5
fill ~8 ~5 ~9 ~8 ~12 ~9 planks 5
fill ~5 ~8 ~9 ~7 ~12 ~9 planks 5
# Holzmauer aussen, vorn
fill ~2 ~5 ~7 ~2 ~12 ~7 planks 5
fill ~2 ~4 ~3 ~2 ~12 ~3 planks 5
fill ~2 ~8 ~4 ~2 ~12 ~6 planks 5
# Holzmauer aussen, hinten
fill ~10 ~5 ~3 ~10 ~12 ~3 planks 5
fill ~10 ~5 ~7 ~10 ~12 ~7 planks 5
fill ~10 ~8 ~4 ~10 ~12 ~6 planks 5
# aussen Cobblestone setzen
setblock ~2 ~12 ~1 cobblestone
setblock ~2 ~12 ~9 cobblestone
setblock ~10 ~12 ~9 cobblestone
setblock ~10 ~12 ~1 cobblestone
# Cobblestonestufen aussen, links
setblock ~9 ~12 ~0 cobblestone
setblock ~3 ~12 ~0 cobblestone
setblock ~4 ~12 ~0 dark_oak_stairs 6
setblock ~8 ~12 ~0 dark_oak_stairs 6
fill ~5 ~5 ~0 ~7 ~5 ~0 stone_stairs 6
fill ~5 ~12 ~0 ~7 ~12 ~0 stone_stairs 6
setblock ~6 ~5 ~0 stone_slab 11
setblock ~6 ~5 ~1 log2 9
# Holzkreuz aussen, rechts
setblock ~6 ~9 ~1 log2 9
setblock ~6 ~11 ~1 log2 9
setblock ~5 ~10 ~1 log2 9
setblock ~7 ~10 ~1 log2 9
# Cobblestonestufen aussen, rechts
fill ~5 ~5 ~10 ~7 ~5 ~10 stone_stairs 7
fill ~5 ~12 ~10 ~7 ~12 ~10 stone_stairs 7
setblock ~9 ~12 ~10 cobblestone
setblock ~3 ~12 ~10 cobblestone
setblock ~4 ~12 ~10 dark_oak_stairs 7
setblock ~8 ~12 ~10 dark_oak_stairs 7
setblock ~6 ~5 ~10 stone_slab 11
setblock ~6 ~5 ~9 log2 9
# Holzkreuz aussen, rechts
setblock ~6 ~9 ~9 log2 9
setblock ~6 ~11 ~9 log2 9
setblock ~5 ~10 ~9 log2 9
setblock ~7 ~10 ~9 log2 9
# Cobblestonestufen aussen, vorn
fill ~1 ~5 ~4 ~1 ~5 ~6 stone_stairs 4
fill ~1 ~12 ~4 ~1 ~12 ~6 stone_stairs 4
setblock ~1 ~12 ~2 cobblestone
setblock ~1 ~12 ~8 cobblestone
setblock ~1 ~12 ~3 dark_oak_stairs 4
setblock ~1 ~12 ~7 dark_oak_stairs 4
setblock ~1 ~5 ~5 stone_slab 11
setblock ~2 ~5 ~5 log2 5
# Holzkreuz aussen, vorn
setblock ~2 ~9 ~5 log2 5
setblock ~2 ~11 ~5 log2 5
setblock ~2 ~10 ~4 log2 5
setblock ~2 ~10 ~6 log2 5
# Cobblestonestufen aussen, hinten
fill ~11 ~5 ~4 ~11 ~5 ~6 stone_stairs 5
fill ~11 ~12 ~4 ~11 ~12 ~6 stone_stairs 5
setblock ~11 ~12 ~2 cobblestone
setblock ~11 ~12 ~8 cobblestone
setblock ~11 ~12 ~3 dark_oak_stairs 5
setblock ~11 ~12 ~7 dark_oak_stairs 5
setblock ~11 ~5 ~5 stone_slab 11
setblock ~10 ~5 ~5 log2 5
# Holzkreuz aussen, hinten
setblock ~10 ~9 ~5 log2 5
setblock ~10 ~11 ~5 log2 5
setblock ~10 ~10 ~4 log2 5
setblock ~10 ~10 ~6 log2 5
# Wooden Slabs im Obergeschoss, links
setblock ~2 ~12 ~0 wooden_slab 13
setblock ~10 ~12 ~0 wooden_slab 13
setblock ~6 ~8 ~1 wooden_slab 13
# Wooden Slabs im Obergeschoss, rechts
setblock ~2 ~12 ~10 wooden_slab 13
setblock ~10 ~12 ~10 wooden_slab 13
setblock ~6 ~8 ~9 wooden_slab 13
# Wooden Slabs im Obergeschoss, vorn
setblock ~1 ~12 ~1 wooden_slab 13
setblock ~1 ~12 ~9 wooden_slab 13
setblock ~2 ~8 ~5 wooden_slab 13
# Wooden Slabs im Obergeschoss, hinten
setblock ~11 ~12 ~9 wooden_slab 13
setblock ~11 ~12 ~1 wooden_slab 13
setblock ~10 ~8 ~5 wooden_slab 13
# Obergeschoss, aussen, Pfosten
fill ~1 ~14 ~0 ~1 ~15 ~0 cobblestone_wall
fill ~11 ~14 ~10 ~11 ~15 ~10 cobblestone_wall
fill ~11 ~14 ~0 ~11 ~15 ~0 cobblestone_wall
fill ~1 ~14 ~10 ~1 ~15 ~10 cobblestone_wall
# Holzbrüstung, vorn
fill ~0 ~13 ~1 ~0 ~13 ~9 log2 9
fill ~0 ~14 ~1 ~0 ~14 ~9 fence 5
setblock ~0 ~13 ~1 log2 5
setblock ~0 ~13 ~9 log2 5
setblock ~1 ~14 ~1 fence 5
setblock ~1 ~14 ~9 fence 5
# Holzbrüstung, hinten
fill ~12 ~13 ~1 ~12 ~13 ~9 log2 9
fill ~12 ~14 ~1 ~12 ~14 ~9 fence 5
setblock ~12 ~13 ~1 log2 5
setblock ~12 ~13 ~9 log2 5
setblock ~11 ~14 ~1 fence 5
setblock ~11 ~14 ~9 fence 5
# Holzbrüstung, rechts
fill ~2 ~13 ~11 ~10 ~13 ~11 log2 5
fill ~2 ~14 ~11 ~10 ~14 ~11 fence 5
setblock ~2 ~13 ~11 log2 9
setblock ~10 ~13 ~11 log2 9
setblock ~2 ~14 ~10 fence 5
setblock ~10 ~14 ~10 fence 5
# Holzbrüstung, links
fill ~2 ~13 ~-1 ~10 ~13 ~-1 log2 5
fill ~2 ~14 ~-1 ~10 ~14 ~-1 fence 5
setblock ~2 ~13 ~-1 log2 9
setblock ~10 ~13 ~-1 log2 9
setblock ~2 ~14 ~0 fence 5
setblock ~10 ~14 ~0 fence 5
# Holzstämme Obergeschoss
fill ~3 ~14 ~8 ~3 ~17 ~8 log2 1
fill ~9 ~14 ~8 ~9 ~17 ~8 log2 1
fill ~9 ~14 ~2 ~9 ~17 ~2 log2 1
fill ~3 ~14 ~2 ~3 ~17 ~2 log2 1
# Holzstämme aussen, vorne
fill ~0 ~0 ~2 ~0 ~2 ~2 log2 1
setblock ~0 ~3 ~2 wooden_slab 5
fill ~0 ~0 ~8 ~0 ~2 ~8 log2 1
setblock ~0 ~3 ~8 wooden_slab 5
# Holzstämme aussen, links
fill ~3 ~0 ~-1 ~3 ~2 ~-1 log2 1
setblock ~3 ~3 ~-1 wooden_slab 5
fill ~9 ~0 ~-1 ~9 ~2 ~-1 log2 1
setblock ~9 ~3 ~-1 wooden_slab 5
# Holzstämme aussen, rechts
fill ~3 ~0 ~11 ~3 ~2 ~11 log2 1
setblock ~3 ~3 ~11 wooden_slab 5
fill ~9 ~0 ~11 ~9 ~2 ~11 log2 1
setblock ~9 ~3 ~11 wooden_slab 5
# Holzstämme aussen, vorne
fill ~12 ~0 ~2 ~12 ~2 ~2 log2 1
setblock ~12 ~3 ~2 wooden_slab 5
fill ~12 ~0 ~8 ~12 ~2 ~8 log2 1
setblock ~12 ~3 ~8 wooden_slab 5
# Obergeschoss, Dach
# Pfosten
fill ~1 ~16 ~0 ~1 ~17 ~0 planks 5
fill ~11 ~16 ~10 ~11 ~17 ~10 planks 5
fill ~11 ~16 ~0 ~11 ~17 ~0 planks 5
fill ~1 ~16 ~10 ~1 ~17 ~10 planks 5
# Decke 1
# vorne, links
fill ~1 ~18 ~0 ~4 ~18 ~3 planks 5
# hinten, rechts
fill ~11 ~18 ~10 ~8 ~18 ~7 planks 5
# hinten, links
fill ~11 ~18 ~0 ~8 ~18 ~3 planks 5
# vorne, rechts
fill ~1 ~18 ~10 ~4 ~18 ~7 planks 5
# Decke 2
fill ~1 ~19 ~0 ~11 ~19 ~10 planks 5
fill ~1 ~18 ~0 ~1 ~19 ~0 air 0
fill ~11 ~18 ~10 ~11 ~19 ~10 air 0
fill ~11 ~18 ~0 ~11 ~19 ~0 air 0
fill ~1 ~18 ~10 ~1 ~19 ~10 air 0
# Lichter oben
# vorne, links
setblock ~2 ~19 ~0 torch 5
setblock ~1 ~19 ~1 torch 5
# vorne, rechts
setblock ~1 ~19 ~9 torch 5
setblock ~2 ~19 ~10 torch 5
# hinten, rechts
setblock ~10 ~19 ~10 torch 5
setblock ~11 ~19 ~9 torch 5
# hinten, links
setblock ~10 ~19 ~0 torch 5
setblock ~11 ~19 ~1 torch 5
# Decke 3
fill ~2 ~20 ~1 ~10 ~20 ~9 planks 5
# vorne, links
setblock ~2 ~20 ~1 air 0
setblock ~3 ~20 ~1 air 0
setblock ~2 ~20 ~2 air 0
# vorne, rechts
setblock ~2 ~20 ~9 air 0
setblock ~2 ~20 ~8 air 0
setblock ~3 ~20 ~9 air 0
# hinten, rechts
setblock ~10 ~20 ~9 air 0
setblock ~10 ~20 ~8 air 0
setblock ~9 ~20 ~9 air 0
# hinten, links
setblock ~10 ~20 ~1 air 0
setblock ~9 ~20 ~1 air 0
setblock ~10 ~20 ~2 air 0
# Erdgeschoss
fill ~2 ~0 ~1 ~10 ~0 ~9 planks 2
# Tür
fill ~1 ~1 ~5 ~1 ~2 ~5 air 0
# Fenster
setblock ~5 ~2 ~10 air 0
setblock ~7 ~2 ~10 air 0
setblock ~11 ~2 ~6 air 0
setblock ~11 ~2 ~4 air 0
setblock ~5 ~2 ~0 air 0
setblock ~7 ~2 ~0 air 0
# Treppenhaus, Erdgeschoss
setblock ~9 ~1 ~7 stone_stairs 2
setblock ~9 ~1 ~8 planks 2
setblock ~8 ~2 ~8 stone_stairs 1
setblock ~7 ~3 ~8 stone_stairs 1
setblock ~6 ~4 ~8 stone_stairs 1
setblock ~5 ~5 ~8 stone_stairs 1
setblock ~6 ~5 ~8 air 0
setblock ~7 ~5 ~8 air 0
setblock ~8 ~5 ~8 air 0
# Treppenhaus, 1. OG
setblock ~3 ~9 ~2 air 0
setblock ~4 ~9 ~2 air 0
setblock ~5 ~9 ~2 air 0
setblock ~3 ~6 ~2 planks 2
setblock ~3 ~6 ~3 stone_stairs 3
setblock ~4 ~7 ~2 stone_stairs 0
setblock ~5 ~8 ~2 stone_stairs 0
setblock ~6 ~9 ~2 stone_stairs 0
# Beleuchtung 1. OG
setblock ~6 ~10 ~5 cobblestone
setblock ~6 ~11 ~5 lantern 0
# Treppenhaus, 2. OG
setblock ~8 ~13 ~8 air 0
setblock ~7 ~13 ~8 air 0
setblock ~6 ~13 ~8 air 0
setblock ~8 ~10 ~7 stone_stairs 2
setblock ~8 ~10 ~8 planks 2
setblock ~7 ~11 ~8 stone_stairs 1
setblock ~6 ~12 ~8 stone_stairs 1
setblock ~5 ~13 ~8 stone_stairs 1
# Vorbereitungen für den Sortierer
fill ~20 ~-2 ~-9 ~-8 ~-10 ~19 air 0
# Keller
fill ~0 ~-1 ~-1 ~12 ~-8 ~11 cobblestone 0 hollow
# Kellerdecke löschen
fill ~1 ~-1 ~0 ~11 ~-1 ~10 air 0 hollow
setblock ~1 ~-1 ~0 cobblestone
setblock ~11 ~-1 ~10 cobblestone
setblock ~11 ~-1 ~0 cobblestone
setblock ~1 ~-1 ~10 cobblestone
#
setblock ~1 ~-4 ~0 cobblestone
setblock ~11 ~-4 ~10 cobblestone
setblock ~11 ~-4 ~0 cobblestone
setblock ~1 ~-4 ~10 cobblestone
# Beleuchtung
setblock ~1 ~-2 ~0 lantern 1
# Treppenhaus, Keller
fill ~1 ~-5 ~0 ~11 ~-5 ~10 planks 2
fill ~1 ~-6 ~0 ~11 ~-7 ~10 cobblestone
fill ~2 ~0 ~1 ~2 ~-1 ~3 air 0
setblock ~2 ~0 ~4 stone_stairs 2
setblock ~2 ~-1 ~3 stone_stairs 2
setblock ~2 ~-2 ~2 stone_stairs 2
setblock ~2 ~-3 ~1 stone_stairs 2
setblock ~2 ~-4 ~0 planks 2
setblock ~3 ~-4 ~0 stone_stairs 1
# Eingang, aussen
fill ~0 ~0 ~3 ~0 ~0 ~7 stone_stairs 0
# Durchgang Sortierer Turm
# links
fill ~4 ~-4 ~-1 ~8 ~-2 ~-1 air 0
fill ~4 ~-5 ~-1 ~8 ~-5 ~-1 stone_stairs 2
# vorne
fill ~12 ~-4 ~3 ~12 ~-2 ~7 air 0
fill ~12 ~-5 ~3 ~12 ~-5 ~7 stone_stairs 1
# rechts
fill ~8 ~-4 ~11 ~4 ~-2 ~11 air 0
fill ~8 ~-5 ~11 ~4 ~-5 ~11 stone_stairs 3
# hinten
fill ~0 ~-2 ~3 ~0 ~-4 ~6 air 0
fill ~0 ~-5 ~3 ~0 ~-5 ~6 stone_stairs 0
# Werkbaenke im Aussenbereich
setblock ~1 ~0 ~0 crafting_table
setblock ~1 ~0 ~10 crafting_table
setblock ~11 ~0 ~10 crafting_table
setblock ~11 ~0 ~0 crafting_table
# Sortierer # START #########################
# Vorbereiten
fill ~1 ~-5 ~-2 ~1 ~-3 ~-2 air 0
setblock ~1 ~-3 ~-2 cobblestone
# TP
tp @s ~1 ~-5 ~-2 facing ~17 ~17 ~0
setblock ~0 ~-1 ~0 redstone_block
setblock ~0 ~2 ~0 air 0
# Cobblestone Grundkörper
fill ~-3 ~-1 ~-6 ~13 ~-3 ~0 cobblestone
fill ~-2 ~-1 ~20 ~-8 ~-3 ~-6 cobblestone
fill ~18 ~-1 ~13 ~-8 ~-3 ~20 cobblestone
fill ~12 ~-1 ~13 ~18 ~-3 ~-6 cobblestone
# Holzboden
fill ~-3 ~-1 ~0 ~13 ~-1 ~-1 planks 1
fill ~-3 ~-1 ~-1 ~-2 ~-1 ~15 planks 1
fill ~12 ~-1 ~-1 ~13 ~-1 ~15 planks 1
fill ~13 ~-1 ~15 ~-3 ~-1 ~14 planks 1
# 10 Kisten, hinten
fill ~-3 ~0 ~-1 ~-3 ~0 ~15 cobblestone
#
setblock ~-3 ~0 ~2 chest 5
setblock ~-3 ~0 ~3 trapped_chest 5
setblock ~-3 ~0 ~4 chest 5
setblock ~-3 ~0 ~5 trapped_chest 5
setblock ~-3 ~0 ~6 chest 5
setblock ~-3 ~0 ~7 trapped_chest 5
setblock ~-3 ~0 ~8 chest 5
setblock ~-3 ~0 ~9 trapped_chest 5
setblock ~-3 ~0 ~10 chest 5
setblock ~-3 ~0 ~11 trapped_chest 5
# 10 Kisten, vorn
fill ~13 ~0 ~-1 ~13 ~0 ~15 cobblestone
#
setblock ~13 ~0 ~2 chest 4
setblock ~13 ~0 ~3 trapped_chest 4
setblock ~13 ~0 ~4 chest 4
setblock ~13 ~0 ~5 trapped_chest 4
setblock ~13 ~0 ~6 chest 4
setblock ~13 ~0 ~7 trapped_chest 4
setblock ~13 ~0 ~8 chest 4
setblock ~13 ~0 ~9 trapped_chest 4
setblock ~13 ~0 ~10 chest 4
setblock ~13 ~0 ~11 trapped_chest 4
# 10 Kisten, gegenüber
fill ~-3 ~0 ~15 ~13 ~0 ~15 cobblestone
#
setblock ~0 ~0 ~15 chest 1
setblock ~1 ~0 ~15 trapped_chest 1
setblock ~2 ~0 ~15 chest 1
setblock ~3 ~0 ~15 trapped_chest 1
setblock ~4 ~0 ~15 chest 1
setblock ~5 ~0 ~15 trapped_chest 1
setblock ~6 ~0 ~15 chest 1
setblock ~7 ~0 ~15 trapped_chest 1
setblock ~8 ~0 ~15 chest 1
setblock ~9 ~0 ~15 trapped_chest 1
# 10 Kisten, man steht davor
fill ~-3 ~0 ~-1 ~13 ~0 ~-1 cobblestone
#
setblock ~0 ~0 ~-1 chest 3
setblock ~1 ~0 ~-1 trapped_chest 3
setblock ~2 ~0 ~-1 chest 3
setblock ~3 ~0 ~-1 trapped_chest 3
setblock ~4 ~0 ~-1 chest 3
setblock ~5 ~0 ~-1 trapped_chest 3
setblock ~6 ~0 ~-1 chest 3
setblock ~7 ~0 ~-1 trapped_chest 3
setblock ~8 ~0 ~-1 chest 3
setblock ~9 ~0 ~-1 trapped_chest 3
# Beschriftung, man steht davor
fill ~-4 ~1 ~-2 ~14 ~2 ~-2 cobblestone
fill ~0 ~1 ~-1 ~9 ~1 ~-1 frame 2
# Glowstone über die Frames
fill ~-3 ~2 ~-1 ~13 ~2 ~-1 cobblestone
fill ~0 ~2 ~-1 ~9 ~2 ~-1 glowstone
# Beschriftung, gegenüber
fill ~-4 ~1 ~16 ~14 ~2 ~16 cobblestone
fill ~0 ~1 ~15 ~9 ~1 ~15 frame 3
# Glowstone über die Frames
fill ~-3 ~2 ~15 ~13 ~2 ~15 cobblestone
fill ~0 ~2 ~15 ~9 ~2 ~15 glowstone
# Beschriftung, hinten
fill ~-4 ~1 ~16 ~-4 ~2 ~-2 cobblestone
fill ~-3 ~1 ~2 ~-3 ~1 ~11 frame 4
# Glowstone über die Frames
fill ~-3 ~2 ~-1 ~-3 ~2 ~15 cobblestone
fill ~-3 ~2 ~2 ~-3 ~2 ~11 glowstone
# Beschriftung, vorne
fill ~14 ~1 ~16 ~14 ~2 ~-2 cobblestone
fill ~13 ~1 ~2 ~13 ~1 ~11 frame 1
# Glowstone über die Frames
fill ~13 ~2 ~-1 ~13 ~2 ~15 cobblestone
fill ~13 ~2 ~2 ~13 ~2 ~11 glowstone
# Trichter, man steht davor
# untere Reihe
fill ~0 ~0 ~-3 ~9 ~0 ~-2 hopper 3
# obere Reihe
fill ~0 ~1 ~-3 ~9 ~1 ~-3 hopper 3
# Trichter, gegenüber
# untere Reihe
fill ~0 ~0 ~16 ~9 ~0 ~17 hopper 2
# obere Reihe
fill ~0 ~1 ~17 ~9 ~1 ~17 hopper 2
# Trichter, vorne
# untere Reihe
fill ~14 ~0 ~2 ~15 ~0 ~11 hopper 4
# obere Reihe
fill ~15 ~1 ~2 ~15 ~1 ~11 hopper 4
# Trichter, hinten
# untere Reihe
fill ~-4 ~0 ~2 ~-5 ~0 ~11 hopper 5
# obere Reihe
fill ~-5 ~1 ~2 ~-5 ~1 ~11 hopper 5
# Durchgang unter den Trichtern, man steht davor
fill ~-5 ~-1 ~-3 ~15 ~-2 ~-2 air 0 hollow
# Durchgang unter den Trichtern, gegenüber
fill ~-5 ~-1 ~16 ~15 ~-2 ~17 air 0 hollow
# Durchgang unter den Trichtern, vorne
fill ~14 ~-1 ~-3 ~15 ~-2 ~15 air 0 hollow
# Durchgang unter den Trichtern, hinten
fill ~-4 ~-1 ~-3 ~-5 ~-2 ~17 air 0 hollow
# Beleuchtung unter den Trichtern
# man steht davor
fill ~-5 ~-2 ~-3 ~15 ~-2 ~-2 torch 5
# gegenüber
fill ~-5 ~-2 ~16 ~15 ~-2 ~17 torch 5
# vorne
fill ~14 ~-2 ~-3 ~15 ~-2 ~15 torch 5
# hinten
fill ~-4 ~-2 ~-3 ~-5 ~-2 ~17 torch 5
# Redstone, man steht davor
fill ~0 ~0 ~-4 ~9 ~0 ~-5 cobblestone
fill ~0 ~1 ~-4 ~9 ~1 ~-4 unpowered_comparator
fill ~0 ~1 ~-5 ~9 ~1 ~-5 redstone_wire
fill ~0 ~0 ~-6 ~9 ~0 ~-6 redstone_wire
fill ~0 ~-1 ~-5 ~9 ~-1 ~-5 unpowered_repeater 2
fill ~0 ~-1 ~-3 ~9 ~-1 ~-3 redstone_torch 3
# Redstone, hinten
fill ~-6 ~0 ~2 ~-7 ~0 ~11 cobblestone
fill ~-6 ~1 ~2 ~-6 ~1 ~11 unpowered_comparator 3
fill ~-7 ~1 ~2 ~-7 ~1 ~11 redstone_wire
fill ~-8 ~0 ~2 ~-8 ~0 ~11 redstone_wire
fill ~-7 ~-1 ~2 ~-7 ~-1 ~11 unpowered_repeater 1
fill ~-5 ~-1 ~2 ~-5 ~-1 ~11 redstone_torch 1
# Redstone, vorne
fill ~16 ~0 ~2 ~17 ~0 ~11 cobblestone
fill ~16 ~1 ~2 ~16 ~1 ~11 unpowered_comparator 1
fill ~17 ~1 ~2 ~17 ~1 ~11 redstone_wire
fill ~18 ~0 ~2 ~18 ~0 ~11 redstone_wire
fill ~17 ~-1 ~2 ~17 ~-1 ~11 unpowered_repeater 3
fill ~15 ~-1 ~2 ~15 ~-1 ~11 redstone_torch 2
# Redstone, gegenüber
fill ~0 ~0 ~18 ~9 ~0 ~19 cobblestone
fill ~0 ~1 ~18 ~9 ~1 ~18 unpowered_comparator 2
fill ~0 ~1 ~19 ~9 ~1 ~19 redstone_wire
fill ~0 ~0 ~20 ~9 ~0 ~20 redstone_wire
fill ~0 ~-1 ~19 ~9 ~-1 ~19 unpowered_repeater 0
fill ~0 ~-1 ~17 ~9 ~-1 ~17 redstone_torch 4
# Obsidian Rahmen
fill ~-9 ~-5 ~-7 ~19 ~2 ~-7 obsidian
fill ~19 ~-5 ~-7 ~19 ~2 ~21 obsidian
fill ~-9 ~-5 ~-7 ~-9 ~2 ~21 obsidian
fill ~19 ~-5 ~21 ~-9 ~2 ~21 obsidian
# Obsidian Boden (ALT)
# fill ~19 ~-4 ~-7 ~-1 ~-4 ~21 obsidian
# Beleuchtung
fill ~-8 ~1 ~-6 ~18 ~2 ~-6 torch 3
fill ~-8 ~1 ~20 ~18 ~2 ~20 torch 4
fill ~18 ~1 ~-5 ~18 ~2 ~19 torch 0
fill ~-8 ~1 ~-5 ~-8 ~2 ~19 torch 1
# Sortierer # ENDE ##########################
#
# TP
tp @s ~-1 ~5 ~2 facing ~17 ~17 ~0
# Obsidian Deckel mit Grass
fill ~-8 ~-2 ~-9 ~20 ~-2 ~-2 obsidian
fill ~-8 ~-1 ~-9 ~20 ~-1 ~-2 grass
fill ~-8 ~0 ~-9 ~20 ~5 ~-2 air 0
# hinten, mitte
fill ~-8 ~-2 ~-9 ~-1 ~-2 ~19 obsidian
fill ~-8 ~-1 ~-9 ~-1 ~-1 ~19 grass
fill ~-8 ~0 ~-9 ~-1 ~5 ~19 air 0
# rechts, mitte
fill ~-8 ~-2 ~12 ~20 ~-2 ~19 obsidian
fill ~-8 ~-1 ~12 ~20 ~-1 ~19 grass
fill ~-8 ~0 ~12 ~20 ~5 ~19 air 0
# vorne
fill ~13 ~-2 ~-9 ~20 ~-2 ~19 obsidian
fill ~13 ~-1 ~-9 ~20 ~-1 ~19 grass
fill ~13 ~0 ~-9 ~20 ~5 ~19 air 0
# Durchgang Sortierer Turm, oben
# vorne
fill ~13 ~-2 ~3 ~13 ~-2 ~7 stone_stairs 4
# links
fill ~4 ~-2 ~-2 ~8 ~-2 ~-2 stone_stairs 7
# rechts
fill ~8 ~-2 ~12 ~4 ~-2 ~12 stone_stairs 6
# hinten
fill ~-1 ~-2 ~3 ~-1 ~-2 ~6 stone_stairs 5
# Startpunkt, Turm
setblock ~0 ~-1 ~0 mossy_cobblestone
#
tp @s ~-6 ~0 ~5 facing ~2 ~2 ~0
#
setblock ~0 ~-1 ~0 mossy_cobblestone
# Innenausbau
setblock ~11 ~6 ~-4 bed 2
setblock ~13 ~6 ~-4 bed 2
setblock ~14 ~6 ~-3 spruce_trapdoor 9
setblock ~15 ~6 ~-3 campfire 0
setblock ~15 ~6 ~-2 spruce_trapdoor 10
setblock ~16 ~6 ~-1 bed 3
setblock ~16 ~6 ~1 bed 3
#
setblock ~14 ~10 ~-3 spruce_trapdoor 9
setblock ~15 ~9 ~-3 air 0
setblock ~15 ~10 ~-2 spruce_trapdoor 10
#
fill ~17 ~6 ~-1 ~17 ~6 ~1 planks 5
fill ~11 ~6 ~-5 ~13 ~6 ~-5 planks 5
fill ~11 ~6 ~5 ~13 ~6 ~5 planks 5
fill ~7 ~6 ~-1 ~7 ~6 ~1 planks 5
#
fill ~10 ~12 ~3 ~11 ~12 ~3 lantern 1
#
setblock ~9 ~10 ~3 quartz_stairs 1
fill ~10 ~10 ~3 ~11 ~10 ~3 quartz_stairs 2
setblock ~12 ~10 ~3 quartz_stairs 0
#
setblock ~15 ~10 ~0 jukebox 0
setblock ~15 ~10 ~-1 chest 4
#
#replaceitem block ~15 ~10 ~-1 slot.container 0 record_13 1
replaceitem block ~15 ~10 ~-1 slot.container 0 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 1 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 2 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 3 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 4 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 5 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 6 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 7 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 8 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 9 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 10 record_wait 1
#
replaceitem block ~15 ~10 ~-1 slot.container 14 record_13 1
replaceitem block ~15 ~10 ~-1 slot.container 15 record_blocks 1
replaceitem block ~15 ~10 ~-1 slot.container 16 record_cat 1
replaceitem block ~15 ~10 ~-1 slot.container 17 record_chirp 1
replaceitem block ~15 ~10 ~-1 slot.container 18 record_far 1
replaceitem block ~15 ~10 ~-1 slot.container 19 record_mall 1
replaceitem block ~15 ~10 ~-1 slot.container 20 record_mellohi 1
replaceitem block ~15 ~10 ~-1 slot.container 21 record_stal 1
replaceitem block ~15 ~10 ~-1 slot.container 22 record_strad 1
replaceitem block ~15 ~10 ~-1 slot.container 23 record_wait 1
replaceitem block ~15 ~10 ~-1 slot.container 24 record_ward 1
#
setblock ~9 ~10 ~0 loom 3
setblock ~9 ~10 ~-1 chest 5
#
replaceitem block ~9 ~10 ~-1 slot.container 0 banner_pattern 1
replaceitem block ~9 ~10 ~-1 slot.container 1 banner_pattern 1
replaceitem block ~9 ~10 ~-1 slot.container 2 banner_pattern 1
replaceitem block ~9 ~10 ~-1 slot.container 3 banner_pattern 1
replaceitem block ~9 ~10 ~-1 slot.container 4 banner_pattern 1
replaceitem block ~9 ~10 ~-1 slot.container 5 banner_pattern 1
#
replaceitem block ~9 ~10 ~-1 slot.container 7 banner 8
replaceitem block ~9 ~10 ~-1 slot.container 8 banner 8
replaceitem block ~9 ~10 ~-1 slot.container 9 banner 8
replaceitem block ~9 ~10 ~-1 slot.container 10 banner 8
replaceitem block ~9 ~10 ~-1 slot.container 11 banner 8
replaceitem block ~9 ~10 ~-1 slot.container 12 banner 8
#
replaceitem block ~9 ~10 ~-1 slot.container 14 dye 8 10
replaceitem block ~9 ~10 ~-1 slot.container 15 dye 8 10
replaceitem block ~9 ~10 ~-1 slot.container 16 dye 8 10
replaceitem block ~9 ~10 ~-1 slot.container 17 dye 8 10
replaceitem block ~9 ~10 ~-1 slot.container 18 dye 8 10
replaceitem block ~9 ~10 ~-1 slot.container 19 dye 8 10
# Durchgaenge
# hinten, rechts
setblock ~-1 ~-6 ~5 spruce_stairs 1
setblock ~0 ~-7 ~5 spruce_stairs 1
setblock ~3 ~-7 ~5 spruce_stairs 0
setblock ~4 ~-6 ~5 spruce_stairs 0
setblock ~4 ~-5 ~5 air 0
setblock ~3 ~-4 ~5 air 0
setblock ~0 ~-6 ~5 air 0
setblock ~1 ~-6 ~5 air 0
setblock ~1 ~-7 ~5 air 0
# hinten, links
fill ~1 ~-7 ~-6 ~1 ~-6 ~-6 air 0
setblock ~0 ~-6 ~-6 air 0
setblock ~0 ~-7 ~-6 spruce_stairs 1
setblock ~-1 ~-6 ~-6 spruce_stairs 1
# rechts, hinten
fill ~6 ~-6 ~11 ~6 ~-7 ~11 air 0
setblock ~6 ~-6 ~12 air 0
setblock ~6 ~-7 ~12 spruce_stairs 2
setblock ~6 ~-6 ~13 spruce_stairs 2
# rechts, vorn
fill ~17 ~-6 ~11 ~17 ~-7 ~11 air 0
setblock ~17 ~-6 ~12 air 0
setblock ~17 ~-7 ~12 spruce_stairs 2
setblock ~17 ~-6 ~13 spruce_stairs 2
# links, vorn
fill ~17 ~-6 ~-11 ~17 ~-7 ~-11 air 0
setblock ~17 ~-6 ~-12 air 0
setblock ~17 ~-7 ~-12 spruce_stairs 3
setblock ~17 ~-6 ~-13 spruce_stairs 3
# links, hinten
fill ~6 ~-6 ~-11 ~6 ~-7 ~-11 air 0
setblock ~6 ~-6 ~-12 air 0
setblock ~6 ~-7 ~-12 spruce_stairs 3
setblock ~6 ~-6 ~-13 spruce_stairs 3
# vorne, links
fill ~23 ~-7 ~-6 ~23 ~-6 ~-6 air 0
setblock ~24 ~-6 ~-6 air 0
setblock ~24 ~-7 ~-6 spruce_stairs 0
setblock ~25 ~-6 ~-6 spruce_stairs 0
# vorne, rechts
fill ~23 ~-7 ~5 ~23 ~-6 ~5 air 0
setblock ~24 ~-6 ~5 air 0
setblock ~24 ~-7 ~5 spruce_stairs 0
setblock ~25 ~-6 ~5 spruce_stairs 0
# Trichterstrasse
# hinten
fill ~2 ~-3 ~10 ~2 ~-3 ~-9 hopper 2
# links
fill ~2 ~-3 ~-10 ~21 ~-3 ~-10 hopper 5
# vorne
fill ~22 ~-3 ~-10 ~22 ~-3 ~9 hopper 3
# rechts
fill ~22 ~-3 ~10 ~6 ~-3 ~10 hopper 4
# Reste-Kiste
fill ~5 ~-3 ~10 ~5 ~-4 ~10 hopper 0
fill ~5 ~-5 ~10 ~5 ~-5 ~9 hopper 2
setblock ~6 ~-5 ~9 cobblestone
setblock ~5 ~-5 ~8 trapped_chest
setblock ~6 ~-5 ~8 trapped_chest
#
setblock ~12 ~1 ~4 grindstone 0
#
setblock ~12 ~1 ~0 crafting_table
setblock ~12 ~1 ~-4 cartography_table 0
setblock ~11 ~1 ~-4 fence 5
setblock ~11 ~2 ~-4 carpet 12
setblock ~13 ~1 ~-4 fence 5
setblock ~13 ~2 ~-4 carpet 12
#
setblock ~16 ~1 ~-1 chest 4
setblock ~16 ~1 ~0 trapped_chest 4
setblock ~16 ~1 ~1 chest 4
#
# Trichter befüllen, hinten
replaceitem block ~2 ~-4 ~4 slot.container 0 chicken 11
replaceitem block ~2 ~-4 ~4 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~4 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~4 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~4 slot.container 4 blue_ice 1
#
replaceitem block ~2 ~-4 ~3 slot.container 0 porkchop 11
replaceitem block ~2 ~-4 ~3 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~3 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~3 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~3 slot.container 4 blue_ice 1
#
replaceitem block ~2 ~-4 ~2 slot.container 0 beef 11
replaceitem block ~2 ~-4 ~2 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~2 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~2 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~2 slot.container 4 blue_ice 1
#
replaceitem block ~2 ~-4 ~1 slot.container 0 muttonraw 11
replaceitem block ~2 ~-4 ~1 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~1 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~1 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~1 slot.container 4 blue_ice 1
#
replaceitem block ~2 ~-4 ~0 slot.container 0 rabbit 11
replaceitem block ~2 ~-4 ~0 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~0 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~0 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~0 slot.container 4 blue_ice 1
#
replaceitem block ~2 ~-4 ~-1 slot.container 0 fish 11
replaceitem block ~2 ~-4 ~-1 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~-1 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~-1 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~-1 slot.container 4 blue_ice 1
#
replaceitem block ~2 ~-4 ~-2 slot.container 0 salmon 11
replaceitem block ~2 ~-4 ~-2 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~-2 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~-2 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~-2 slot.container 4 blue_ice 1
#
replaceitem block ~2 ~-4 ~-3 slot.container 0 coal 11
replaceitem block ~2 ~-4 ~-3 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~-3 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~-3 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~-3 slot.container 4 blue_ice 1
#
replaceitem block ~2 ~-4 ~-4 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~-4 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~-4 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~-4 slot.container 4 blue_ice 1
#
replaceitem block ~2 ~-4 ~-5 slot.container 1 blue_ice 10
replaceitem block ~2 ~-4 ~-5 slot.container 2 blue_ice 5
replaceitem block ~2 ~-4 ~-5 slot.container 3 blue_ice 5
replaceitem block ~2 ~-4 ~-5 slot.container 4 blue_ice 1
#
# Trichter befüllen, links
replaceitem block ~7 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~7 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~7 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~7 ~-4 ~-10 slot.container 4 blue_ice 1
#
replaceitem block ~8 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~8 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~8 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~8 ~-4 ~-10 slot.container 4 blue_ice 1
#
replaceitem block ~9 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~9 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~9 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~9 ~-4 ~-10 slot.container 4 blue_ice 1
#
replaceitem block ~10 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~10 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~10 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~10 ~-4 ~-10 slot.container 4 blue_ice 1
#
replaceitem block ~11 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~11 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~11 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~11 ~-4 ~-10 slot.container 4 blue_ice 1
#
replaceitem block ~12 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~12 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~12 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~12 ~-4 ~-10 slot.container 4 blue_ice 1
#
replaceitem block ~13 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~13 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~13 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~13 ~-4 ~-10 slot.container 4 blue_ice 1
#
replaceitem block ~14 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~14 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~14 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~14 ~-4 ~-10 slot.container 4 blue_ice 1
#
replaceitem block ~15 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~15 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~15 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~15 ~-4 ~-10 slot.container 4 blue_ice 1
#
replaceitem block ~16 ~-4 ~-10 slot.container 1 blue_ice 10
replaceitem block ~16 ~-4 ~-10 slot.container 2 blue_ice 5
replaceitem block ~16 ~-4 ~-10 slot.container 3 blue_ice 5
replaceitem block ~16 ~-4 ~-10 slot.container 4 blue_ice 1
#
# Trichter befüllen, rechts
replaceitem block ~7 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~7 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~7 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~7 ~-4 ~10 slot.container 4 blue_ice 1
#
replaceitem block ~8 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~8 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~8 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~8 ~-4 ~10 slot.container 4 blue_ice 1
#
replaceitem block ~9 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~9 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~9 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~9 ~-4 ~10 slot.container 4 blue_ice 1
#
replaceitem block ~10 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~10 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~10 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~10 ~-4 ~10 slot.container 4 blue_ice 1
#
replaceitem block ~11 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~11 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~11 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~11 ~-4 ~10 slot.container 4 blue_ice 1
#
replaceitem block ~12 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~12 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~12 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~12 ~-4 ~10 slot.container 4 blue_ice 1
#
replaceitem block ~13 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~13 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~13 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~13 ~-4 ~10 slot.container 4 blue_ice 1
#
replaceitem block ~14 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~14 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~14 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~14 ~-4 ~10 slot.container 4 blue_ice 1
#
replaceitem block ~15 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~15 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~15 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~15 ~-4 ~10 slot.container 4 blue_ice 1
#
replaceitem block ~16 ~-4 ~10 slot.container 1 blue_ice 10
replaceitem block ~16 ~-4 ~10 slot.container 2 blue_ice 5
replaceitem block ~16 ~-4 ~10 slot.container 3 blue_ice 5
replaceitem block ~16 ~-4 ~10 slot.container 4 blue_ice 1
#
# Trichter befüllen, gegenüber
replaceitem block ~22 ~-4 ~4 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~4 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~4 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~4 slot.container 4 blue_ice 1
#
replaceitem block ~22 ~-4 ~3 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~3 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~3 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~3 slot.container 4 blue_ice 1
#
replaceitem block ~22 ~-4 ~2 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~2 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~2 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~2 slot.container 4 blue_ice 1
#
replaceitem block ~22 ~-4 ~1 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~1 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~1 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~1 slot.container 4 blue_ice 1
#
replaceitem block ~22 ~-4 ~0 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~0 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~0 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~0 slot.container 4 blue_ice 1
#
replaceitem block ~22 ~-4 ~-1 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~-1 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~-1 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~-1 slot.container 4 blue_ice 1
#
replaceitem block ~22 ~-4 ~-2 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~-2 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~-2 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~-2 slot.container 4 blue_ice 1
#
replaceitem block ~22 ~-4 ~-3 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~-3 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~-3 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~-3 slot.container 4 blue_ice 1
#
replaceitem block ~22 ~-4 ~-4 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~-4 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~-4 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~-4 slot.container 4 blue_ice 1
#
replaceitem block ~22 ~-4 ~-5 slot.container 1 blue_ice 10
replaceitem block ~22 ~-4 ~-5 slot.container 2 blue_ice 5
replaceitem block ~22 ~-4 ~-5 slot.container 3 blue_ice 5
replaceitem block ~22 ~-4 ~-5 slot.container 4 blue_ice 1
#
# Trichter-Eingang, aussen
setblock ~2 ~-2 ~10 hopper 0
setblock ~2 ~-1 ~10 hopper 0
setblock ~2 ~0 ~10 chest
#
fill ~4 ~2 ~8 ~0 ~2 ~8 dark_oak_stairs 2
fill ~4 ~2 ~12 ~0 ~2 ~12 dark_oak_stairs 3
fill ~4 ~2 ~9 ~4 ~2 ~11 dark_oak_stairs 1
fill ~0 ~2 ~9 ~0 ~2 ~11 dark_oak_stairs 0
#
fill ~3 ~0 ~11 ~3 ~0 ~9 fence 5
fill ~1 ~0 ~11 ~1 ~0 ~9 fence 5
fill ~3 ~0 ~11 ~2 ~0 ~11 fence 5
#
setblock ~1 ~1 ~11 fence 5
setblock ~3 ~1 ~11 fence 5
setblock ~1 ~1 ~9 fence 5
setblock ~3 ~1 ~9 fence 5
#
setblock ~0 ~1 ~10 lantern 1
setblock ~4 ~1 ~10 lantern 1
setblock ~2 ~1 ~12 lantern 1
#
fill ~4 ~-3 ~10 ~3 ~-4 ~10 cobblestone
#
# Trichter-Eingang, innen
fill ~9 ~-1 ~5 ~7 ~-4 ~2 cobblestone
setblock ~8 ~1 ~4 chest
# setblock ~9 ~1 ~4 chest # Doppelkiste
setblock ~8 ~0 ~4 hopper 0
setblock ~8 ~-1 ~4 hopper 3
setblock ~8 ~-1 ~5 hopper 0
setblock ~2 ~-2 ~5 hopper 0
fill ~3 ~-2 ~5 ~8 ~-2 ~5 hopper 4
fill ~7 ~-3 ~2 ~9 ~-3 ~2 torch 5
fill ~9 ~-3 ~3 ~9 ~-3 ~5 torch 5
#
# Ausfüllen
# hinten, rechts
fill ~1 ~-3 ~13 ~-1 ~-5 ~6 cobblestone
fill ~2 ~-3 ~13 ~5 ~-5 ~11 cobblestone
# hinten, links
fill ~1 ~-3 ~-13 ~-1 ~-5 ~-7 cobblestone
fill ~2 ~-3 ~-11 ~5 ~-5 ~-13 cobblestone
# vorne, links
fill ~18 ~-3 ~-11 ~25 ~-5 ~-13 cobblestone
fill ~25 ~-3 ~-10 ~23 ~-5 ~-7 cobblestone
# vorne, rechts
fill ~25 ~-3 ~10 ~23 ~-5 ~6 cobblestone
fill ~25 ~-3 ~13 ~18 ~-5 ~11 cobblestone
#
setblock ~12 ~1 ~-1 cobblestone
setblock ~12 ~1 ~1 cobblestone
setblock ~12 ~2 ~-1 lantern 0
setblock ~12 ~2 ~1 lantern 0
setblock ~16 ~1 ~4 cobblestone
setblock ~16 ~1 ~-4 cobblestone
setblock ~16 ~2 ~4 lantern 0
setblock ~16 ~2 ~-4 lantern 0
#
setblock ~8 ~2 ~4 lantern 1
setblock ~8 ~2 ~-4 lantern 1
#
# Beleuchtung
setblock ~4 ~-4 ~8 lantern 0
setblock ~4 ~-4 ~-8 lantern 0
setblock ~20 ~-4 ~-8 lantern 0
setblock ~20 ~-4 ~8 lantern 0
#
# Lampen für die Chest, aussen
fill ~1 ~2 ~9 ~3 ~2 ~11 redstone_lamp
fill ~1 ~3 ~9 ~3 ~3 ~11 redstone_wire
setblock ~2 ~3 ~10 daylight_detector_inverted
#
# Lampe, links hinten
fill ~4 ~0 ~-8 ~4 ~1 ~-8 fence 5
setblock ~4 ~2 ~-8 redstone_lamp
setblock ~4 ~3 ~-8 daylight_detector_inverted
#
# Lampe, rechts mitte
fill ~12 ~0 ~-11 ~12 ~1 ~-11 fence 5
setblock ~12 ~2 ~-11 redstone_lamp
setblock ~12 ~3 ~-11 daylight_detector_inverted
#
# Lampe, mitte mitte
fill ~23 ~0 ~0 ~23 ~1 ~-0 fence 5
setblock ~23 ~2 ~0 redstone_lamp
setblock ~23 ~3 ~0 daylight_detector_inverted
#
# Lampe, links vorne
fill ~20 ~0 ~-8 ~20 ~1 ~-8 fence 5
setblock ~20 ~2 ~-8 redstone_lamp
setblock ~20 ~3 ~-8 daylight_detector_inverted
#
# Lampe, rechts vorne
fill ~20 ~0 ~8 ~20 ~1 ~8 fence 5
setblock ~20 ~2 ~8 redstone_lamp
setblock ~20 ~3 ~8 daylight_detector_inverted
#
# Lampe, rechts mitte
fill ~12 ~0 ~11 ~12 ~1 ~11 fence 5
setblock ~12 ~2 ~11 redstone_lamp
setblock ~12 ~3 ~11 daylight_detector_inverted
#
# Obsidian/Cobblestone Boden (NEU)
fill ~26 ~-9 ~-14 ~-2 ~-9 ~14 cobblestone
fill ~26 ~-10 ~-14 ~-2 ~-10 ~14 obsidian
#
fill ~26 ~-9 ~-14 ~-2 ~-9 ~-14 obsidian
fill ~-2 ~-9 ~14 ~-2 ~-9 ~-14 obsidian
fill ~26 ~-9 ~-14 ~26 ~-9 ~14 obsidian
fill ~-2 ~-9 ~14 ~26 ~-9 ~14 obsidian
# Automatischer-Ofen
# Hopper unter den Kisten
fill ~4 ~-6 ~4 ~4 ~-6 ~-1 hopper 2
setblock ~4 ~-6 ~-2 hopper 0
setblock ~4 ~-6 ~-3 hopper 0
#
# Durchgang an den Hoppern
fill ~2 ~-7 ~-4 ~12 ~-8 ~-1 air 0
#
# Durchgang
fill ~2 ~-7 ~-5 ~3 ~-8 ~-5 air 0
fill ~2 ~-7 ~0 ~3 ~-8 ~0 air 0
fill ~2 ~-8 ~-5 ~3 ~-8 ~-5 spruce_stairs 3
fill ~2 ~-8 ~0 ~3 ~-8 ~0 spruce_stairs 2
#
# Hopper in die Mitte, Items zum brennen
setblock ~4 ~-7 ~-2 hopper 5
#
# Hopper in die Mitte, Brennstoff
setblock ~4 ~-7 ~-3 hopper 5
#
# Hopper zum Ofen
setblock ~5 ~-7 ~-2 hopper 0
setblock ~5 ~-7 ~-3 hopper 0
setblock ~5 ~-8 ~-3 hopper 3
setblock ~4 ~-8 ~-2 cobblestone
setblock ~4 ~-8 ~-3 cobblestone
#
# Der Ofen
setblock ~5 ~-8 ~-2 furnace
#
setblock ~6 ~-7 ~-5 lantern 0
setblock ~8 ~-7 ~-5 lantern 0
setblock ~10 ~-7 ~-5 lantern 0
setblock ~12 ~-7 ~-5 lantern 0
#
setblock ~6 ~-7 ~0 lantern 0
setblock ~8 ~-7 ~0 lantern 0
setblock ~10 ~-7 ~0 lantern 0
#
# Hopper Ergebnis zurückführen, links/rechts
fill ~2 ~-9 ~-2 ~2 ~-9 ~5 hopper 3
setblock ~2 ~-9 ~6 hopper 5
setblock ~3 ~-9 ~12 hopper 4
#
# Hopper Ergebnis zurückführen, vorn/hinten
fill ~3 ~-9 ~-2 ~5 ~-9 ~-2 hopper 4
#
# Teppich
fill ~2 ~-8 ~-1 ~3 ~-8 ~-4 carpet 12
#
# Kiste befüllen
replaceitem block ~4 ~-5 ~-3 slot.container 0 coal 64
# replaceitem block ~4 ~-5 ~-3 slot.container 1 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 2 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 3 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 4 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 5 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 6 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 7 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 8 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 9 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 10 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 11 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 12 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 13 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 14 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 15 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 16 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 17 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 18 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 19 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 20 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 21 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 22 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 23 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 24 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 25 coal 10
# replaceitem block ~4 ~-5 ~-3 slot.container 26 coal 10
#
# Item-Dropper nach oben
fill ~3 ~-9 ~11 ~1 ~-2 ~13 air 0
fill ~1 ~-9 ~7 ~-1 ~-2 ~13 air 0
#
fill ~3 ~-9 ~6 ~3 ~-9 ~11 hopper 3
setblock ~3 ~-9 ~12 hopper 4
#
fill ~2 ~-9 ~12 ~2 ~-3 ~12 dropper 1
fill ~1 ~-9 ~12 ~0 ~-2 ~12 quartz_block
setblock ~2 ~-2 ~12 dropper 2
setblock ~2 ~-3 ~11 hopper 2
setblock ~2 ~-2 ~11 air 0
#
setblock ~0 ~-9 ~12 unpowered_comparator 1
setblock ~1 ~-8 ~12 redstone_torch 0
setblock ~0 ~-7 ~12 unpowered_comparator 1
setblock ~1 ~-6 ~12 redstone_torch 0
setblock ~0 ~-5 ~12 unpowered_comparator 1
setblock ~1 ~-4 ~12 redstone_torch 0
setblock ~0 ~-3 ~12 unpowered_comparator 1
setblock ~1 ~-2 ~12 redstone_torch 0
#
setblock ~-1 ~-9 ~12 hopper 3
setblock ~-1 ~-9 ~13 hopper 2
replaceitem block ~-1 ~-9 ~13 slot.container 1 blue_ice 1
#
setblock ~-1 ~-7 ~12 hopper 3
setblock ~-1 ~-7 ~13 hopper 2
replaceitem block ~-1 ~-7 ~13 slot.container 1 blue_ice 1
#
setblock ~-1 ~-5 ~12 hopper 3
setblock ~-1 ~-5 ~13 hopper 2
replaceitem block ~-1 ~-5 ~13 slot.container 1 blue_ice 1
#
setblock ~-1 ~-3 ~12 hopper 3
setblock ~-1 ~-3 ~13 hopper 2
replaceitem block ~-1 ~-3 ~13 slot.container 1 blue_ice 1
#
fill ~-1 ~-2 ~9 ~-1 ~-9 ~9 quartz_block
fill ~-1 ~-9 ~7 ~-1 ~-9 ~8 quartz_block
#
setblock ~-1 ~-2 ~12 redstone_block
setblock ~-1 ~-2 ~10 sticky_piston 2
setblock ~-1 ~-2 ~9 unpowered_repeater 14
#
setblock ~-1 ~-4 ~12 redstone_block
setblock ~-1 ~-4 ~10 sticky_piston 2
setblock ~-1 ~-4 ~9 unpowered_repeater 14
#
setblock ~-1 ~-6 ~12 redstone_block
setblock ~-1 ~-6 ~10 sticky_piston 2
setblock ~-1 ~-6 ~9 unpowered_repeater 14
#
setblock ~-1 ~-8 ~12 redstone_block
setblock ~-1 ~-8 ~10 sticky_piston 2
setblock ~-1 ~-8 ~9 unpowered_repeater 14
#
setblock ~-1 ~-3 ~8 stone_slab 14
setblock ~-1 ~-5 ~8 stone_slab 14
setblock ~-1 ~-7 ~8 stone_slab 14
#
setblock ~0 ~-4 ~8 stone_slab 14
setblock ~0 ~-3 ~8 redstone_wire
#
setblock ~0 ~-6 ~8 stone_slab 14
setblock ~0 ~-5 ~8 redstone_wire
#
setblock ~0 ~-8 ~8 stone_slab 14
setblock ~0 ~-7 ~8 redstone_wire
#
setblock ~-1 ~-2 ~8 redstone_wire
setblock ~-1 ~-4 ~8 redstone_wire
setblock ~-1 ~-6 ~8 redstone_wire
setblock ~-1 ~-8 ~8 redstone_wire
setblock ~-1 ~-8 ~7 redstone_wire
setblock ~0 ~-9 ~7 redstone_wire
#
setblock ~2 ~-9 ~7 quartz_block
setblock ~1 ~-9 ~7 redstone_torch 2
#
setblock ~2 ~-9 ~8 redstone_wire
setblock ~2 ~-9 ~9 redstone_wire
#
setblock ~2 ~-9 ~10 unpowered_repeater 12
setblock ~2 ~-9 ~11 unpowered_comparator 0
#
fill ~3 ~-9 ~13 ~0 ~-9 ~13 cobblestone
fill ~1 ~-9 ~10 ~0 ~-9 ~8 cobblestone
#
setblock ~2 ~-8 ~11 cobblestone
setblock ~3 ~-8 ~11 cobblestone
fill ~1 ~-8 ~11 ~1 ~-8 ~8 cobblestone
setblock ~3 ~-8 ~12 cobblestone
fill ~3 ~-8 ~13 ~0 ~-3 ~13 cobblestone
fill ~0 ~-8 ~11 ~0 ~-7 ~9 cobblestone
#
setblock ~1 ~-8 ~7 cobblestone
fill ~1 ~-7 ~7 ~-1 ~-3 ~7 cobblestone
setblock ~2 ~-8 ~11 glass
fill ~1 ~-9 ~11 ~-1 ~-9 ~11 cobblestone
setblock ~-1 ~-9 ~10 cobblestone
#
setblock ~12 ~6 ~0 cobblestone
setblock ~12 ~7 ~0 lantern 0
#
# Aussenmauer, hinten
fill ~-5 ~-1 ~17 ~-5 ~1 ~-17 obsidian
fill ~-4 ~-1 ~17 ~-3 ~-1 ~-17 grass
fill ~-9 ~-2 ~21 ~-3 ~-10 ~-21 obsidian
fill ~-19 ~-2 ~21 ~-3 ~-10 ~-21 obsidian
#
fill ~-7 ~-2 ~31 ~-19 ~-2 ~-31 dirt
fill ~-7 ~-1 ~31 ~-19 ~-1 ~-31 grass
fill ~-7 ~0 ~31 ~-19 ~10 ~-31 air 0
#
fill ~-6 ~-1 ~18 ~-6 ~2 ~-18 cobblestone
fill ~-4 ~1 ~16 ~-4 ~0 ~-16 cobblestone
fill ~-5 ~2 ~17 ~-4 ~2 ~-17 wooden_slab 5
#
fill ~-5 ~3 ~17 ~-4 ~4 ~-17 air 0
#
# Aussenmauer, links
fill ~-5 ~-1 ~-17 ~29 ~1 ~-17 obsidian
fill ~-4 ~-1 ~-15 ~28 ~-1 ~-16 grass
fill ~-9 ~-2 ~-15 ~33 ~-10 ~-21 obsidian
fill ~-19 ~-2 ~-15 ~43 ~-10 ~-31 obsidian
#
fill ~-9 ~-2 ~-31 ~33 ~-2 ~-19 dirt
fill ~-9 ~-1 ~-31 ~33 ~-1 ~-19 grass
fill ~-9 ~0 ~-31 ~33 ~10 ~-19 air 0
#
fill ~-6 ~-1 ~-18 ~30 ~2 ~-18 cobblestone
fill ~-4 ~1 ~-16 ~28 ~0 ~-16 cobblestone
fill ~-5 ~2 ~-17 ~29 ~2 ~-16 wooden_slab 5
#
fill ~-5 ~3 ~-17 ~29 ~4 ~-16 air 0
#
# Aussenmauer, vorne
fill ~29 ~-1 ~-17 ~29 ~1 ~17 obsidian
fill ~28 ~-1 ~-16 ~27 ~-1 ~16 grass
fill ~33 ~-2 ~-21 ~27 ~-10 ~21 obsidian
fill ~43 ~-2 ~-21 ~27 ~-10 ~21 obsidian
#
fill ~31 ~-2 ~-31 ~43 ~-2 ~31 dirt
fill ~31 ~-1 ~-31 ~43 ~-1 ~31 grass
fill ~31 ~0 ~-31 ~43 ~10 ~31 air 0
#
fill ~30 ~-1 ~-18 ~30 ~2 ~18 cobblestone
fill ~28 ~1 ~-16 ~28 ~0 ~16 cobblestone
fill ~28 ~2 ~-17 ~29 ~2 ~17 wooden_slab 5
#
fill ~28 ~3 ~-17 ~29 ~4 ~17 air 0
#
# Aussenmauer, rechts
fill ~28 ~-1 ~17 ~-5 ~1 ~17 obsidian
fill ~28 ~-1 ~16 ~-4 ~-1 ~15 grass
fill ~33 ~-2 ~21 ~-9 ~-10 ~15 obsidian
fill ~43 ~-2 ~21 ~-19 ~-10 ~31 obsidian
#
fill ~33 ~-2 ~19 ~-9 ~-2 ~31 dirt
fill ~33 ~-1 ~19 ~-9 ~-1 ~31 grass
fill ~33 ~0 ~19 ~-9 ~10 ~31 air 0
#
fill ~30 ~-1 ~18 ~-6 ~2 ~18 cobblestone
fill ~28 ~-1 ~16 ~-4 ~1 ~16 cobblestone
fill ~29 ~2 ~17 ~-5 ~2 ~16 wooden_slab 5
#
fill ~29 ~3 ~17 ~-5 ~4 ~16 air 0
#
# Aussen-Pfosten, hinten
fill ~-6 ~-1 ~-6 ~-6 ~4 ~-6 log2 1
fill ~-6 ~-1 ~-9 ~-6 ~4 ~-9 log2 1
fill ~-6 ~-1 ~-12 ~-6 ~4 ~-12 log2 1
fill ~-6 ~-1 ~-15 ~-6 ~4 ~-15 log2 1
fill ~-6 ~-1 ~-18 ~-6 ~4 ~-18 log2 1
fill ~-6 ~-1 ~6 ~-6 ~4 ~6 log2 1
fill ~-6 ~-1 ~9 ~-6 ~4 ~9 log2 1
fill ~-6 ~-1 ~12 ~-6 ~4 ~12 log2 1
fill ~-6 ~-1 ~15 ~-6 ~4 ~15 log2 1
fill ~-6 ~-1 ~18 ~-6 ~4 ~18 log2 1
# Aussenmauer-Dach, hinten
fill ~-6 ~5 ~-18 ~-6 ~5 ~18 dark_oak_stairs 0
fill ~-5 ~5 ~-17 ~-5 ~5 ~17 redstone_lamp
fill ~-5 ~6 ~-17 ~-5 ~6 ~17 redstone_wire
fill ~-4 ~5 ~-16 ~-4 ~5 ~16 dark_oak_stairs 1
# Aussen-Pfosten, links
fill ~-3 ~-1 ~-18 ~-3 ~4 ~-18 log2 1
fill ~0 ~-1 ~-18 ~0 ~4 ~-18 log2 1
fill ~3 ~-1 ~-18 ~3 ~4 ~-18 log2 1
fill ~6 ~-1 ~-18 ~6 ~4 ~-18 log2 1
fill ~9 ~-1 ~-18 ~9 ~4 ~-18 log2 1
fill ~12 ~-1 ~-18 ~12 ~4 ~-18 log2 1
fill ~15 ~-1 ~-18 ~15 ~4 ~-18 log2 1
fill ~18 ~-1 ~-18 ~18 ~4 ~-18 log2 1
fill ~21 ~-1 ~-18 ~21 ~4 ~-18 log2 1
fill ~24 ~-1 ~-18 ~24 ~4 ~-18 log2 1
fill ~27 ~-1 ~-18 ~27 ~4 ~-18 log2 1
fill ~30 ~-1 ~-18 ~30 ~4 ~-18 log2 1
# Aussenmauer-Dach, links
fill ~30 ~5 ~-18 ~-6 ~5 ~-18 dark_oak_stairs 2
fill ~29 ~5 ~-17 ~-5 ~5 ~-17 redstone_lamp
fill ~29 ~6 ~-17 ~-5 ~6 ~-17 redstone_wire
fill ~28 ~5 ~-16 ~-4 ~5 ~-16 dark_oak_stairs 3
setblock ~29 ~6 ~-17 daylight_detector_inverted
setblock ~-5 ~6 ~-17 daylight_detector_inverted
setblock ~12 ~6 ~-17 daylight_detector_inverted
# Aussen-Pfosten, vorne
fill ~30 ~-1 ~-15 ~30 ~4 ~-15 log2 1
fill ~30 ~-1 ~-12 ~30 ~4 ~-12 log2 1
fill ~30 ~-1 ~-9 ~30 ~4 ~-9 log2 1
fill ~30 ~-1 ~-6 ~30 ~4 ~-6 log2 1
fill ~30 ~-1 ~-3 ~30 ~4 ~-3 log2 1
fill ~30 ~-1 ~0 ~30 ~4 ~0 log2 1
fill ~30 ~-1 ~3 ~30 ~4 ~3 log2 1
fill ~30 ~-1 ~6 ~30 ~4 ~6 log2 1
fill ~30 ~-1 ~9 ~30 ~4 ~9 log2 1
fill ~30 ~-1 ~12 ~30 ~4 ~12 log2 1
fill ~30 ~-1 ~15 ~30 ~4 ~15 log2 1
fill ~30 ~-1 ~18 ~30 ~4 ~18 log2 1
# Aussenmauer-Dach, vorne
fill ~30 ~5 ~18 ~30 ~5 ~-18 dark_oak_stairs 1
fill ~29 ~5 ~17 ~29 ~5 ~-17 redstone_lamp
fill ~29 ~6 ~17 ~29 ~6 ~-17 redstone_wire
fill ~28 ~5 ~16 ~28 ~5 ~-16 dark_oak_stairs 0
setblock ~29 ~6 ~17 daylight_detector_inverted
setblock ~29 ~6 ~-17 daylight_detector_inverted
setblock ~29 ~6 ~0 daylight_detector_inverted
# Aussen-Pfosten, rechts
fill ~30 ~-1 ~18 ~30 ~4 ~18 log2 1
fill ~27 ~-1 ~18 ~27 ~4 ~18 log2 1
fill ~24 ~-1 ~18 ~24 ~4 ~18 log2 1
fill ~21 ~-1 ~18 ~21 ~4 ~18 log2 1
fill ~18 ~-1 ~18 ~18 ~4 ~18 log2 1
fill ~15 ~-1 ~18 ~15 ~4 ~18 log2 1
fill ~12 ~-1 ~18 ~12 ~4 ~18 log2 1
fill ~9 ~-1 ~18 ~9 ~4 ~18 log2 1
fill ~6 ~-1 ~18 ~6 ~4 ~18 log2 1
fill ~3 ~-1 ~18 ~3 ~4 ~18 log2 1
fill ~0 ~-1 ~18 ~0 ~4 ~18 log2 1
fill ~-3 ~-1 ~18 ~-3 ~4 ~18 log2 1
# Aussenmauer-Dach, rechts
fill ~30 ~5 ~18 ~-6 ~5 ~18 dark_oak_stairs 3
fill ~29 ~5 ~17 ~-4 ~5 ~17 redstone_lamp
fill ~29 ~6 ~17 ~-4 ~6 ~17 redstone_wire
fill ~28 ~5 ~16 ~-4 ~5 ~16 dark_oak_stairs 2
setblock ~29 ~6 ~17 daylight_detector_inverted
setblock ~-5 ~6 ~17 daylight_detector_inverted
setblock ~12 ~6 ~17 daylight_detector_inverted
#
# Feld
fill ~20 ~-1 ~-14 ~26 ~3 ~-8 air 0
fill ~20 ~-1 ~-14 ~26 ~0 ~-8 dirt 0
fill ~20 ~0 ~-13 ~20 ~0 ~-9 log2 9
fill ~26 ~0 ~-13 ~26 ~0 ~-9 log2 9
fill ~21 ~0 ~-8 ~25 ~0 ~-8 log2 5
fill ~21 ~0 ~-14 ~25 ~0 ~-14 log2 5
# Ecke
fill ~20 ~0 ~-14 ~20 ~2 ~-14 log2 1
fill ~20 ~0 ~-8 ~20 ~2 ~-8 log2 1
fill ~26 ~0 ~-8 ~26 ~2 ~-8 log2 1
fill ~26 ~0 ~-14 ~26 ~2 ~-14 log2 1
fill ~25 ~0 ~-10 ~21 ~0 ~-9 farmland 0
fill ~25 ~0 ~-11 ~21 ~0 ~-11 water
fill ~25 ~0 ~-12 ~21 ~0 ~-13 farmland 0
#
fill ~20 ~3 ~-14 ~20 ~3 ~-8 dark_oak_stairs 0
fill ~26 ~3 ~-14 ~26 ~3 ~-8 dark_oak_stairs 1
fill ~21 ~3 ~-14 ~25 ~3 ~-14 dark_oak_stairs 2
fill ~21 ~3 ~-8 ~25 ~3 ~-8 dark_oak_stairs 3
#
fill ~19 ~0 ~-14 ~19 ~0 ~-8 wooden_slab 5
fill ~19 ~0 ~-7 ~26 ~0 ~-7 wooden_slab 5
fill ~19 ~0 ~-15 ~27 ~0 ~-15 wooden_slab 5
fill ~27 ~0 ~-15 ~27 ~0 ~-7 wooden_slab 5
#
fill ~19 ~3 ~-14 ~19 ~3 ~-8 wooden_slab 5
fill ~19 ~3 ~-7 ~26 ~3 ~-7 wooden_slab 5
fill ~19 ~3 ~-15 ~27 ~3 ~-15 wooden_slab 5
fill ~27 ~3 ~-15 ~27 ~3 ~-7 wooden_slab 5
#
# Beleuchtung
fill ~21 ~3 ~-13 ~25 ~3 ~-9 redstone_lamp
fill ~21 ~4 ~-13 ~25 ~4 ~-9 redstone_wire
setblock ~23 ~4 ~-11 daylight_detector_inverted
setblock ~23 ~2 ~-14 lantern 1
setblock ~26 ~2 ~-11 lantern 1
#
setblock ~26 ~0 ~-7 composter 0
setblock ~19 ~0 ~-14 composter 0
#
# Aussenbereich
# Lagerfeuer
setblock ~0 ~0 ~-4 campfire 0
setblock ~0 ~0 ~-3 stone_slab 3
setblock ~0 ~0 ~-5 stone_slab 3
setblock ~-1 ~0 ~-4 stone_slab 3
setblock ~1 ~0 ~-4 stone_slab 3
#
# Wege
fill ~5 ~-1 ~-1 ~-7 ~-1 ~1 grass_path
setblock ~0 ~-1 ~0 mossy_cobblestone
fill ~2 ~-1 ~2 ~3 ~-1 ~8 grass_path
fill ~1 ~-1 ~7 ~1 ~-1 ~8 grass_path
fill ~4 ~-1 ~6 ~4 ~-1 ~8 grass_path
fill ~5 ~-1 ~7 ~5 ~-1 ~9 grass_path
fill ~6 ~-1 ~8 ~6 ~-1 ~10 grass_path
fill ~11 ~-1 ~9 ~7 ~-1 ~11 grass_path
fill ~16 ~-1 ~8 ~11 ~-1 ~10 grass_path
fill ~17 ~-1 ~9 ~17 ~-1 ~11 grass_path
fill ~18 ~-1 ~10 ~18 ~-1 ~12 grass_path
fill ~19 ~-1 ~11 ~19 ~-1 ~13 grass_path
fill ~20 ~-1 ~10 ~20 ~-1 ~13 grass_path
fill ~21 ~-1 ~9 ~20 ~-1 ~12 grass_path
fill ~25 ~-1 ~9 ~22 ~-1 ~9 grass_path
fill ~25 ~-1 ~6 ~23 ~-1 ~8 grass_path
fill ~24 ~-1 ~4 ~22 ~-1 ~6 grass_path
fill ~25 ~-1 ~2 ~23 ~-1 ~3 grass_path
fill ~26 ~-1 ~1 ~24 ~-1 ~-1 grass_path
fill ~25 ~-1 ~-2 ~23 ~-1 ~-1 grass_path
fill ~24 ~-1 ~-4 ~22 ~-1 ~-3 grass_path
fill ~25 ~-1 ~-5 ~21 ~-1 ~-5 grass_path
fill ~25 ~-1 ~-6 ~20 ~-1 ~-6 grass_path
#
fill ~1 ~-1 ~-2 ~4 ~-1 ~-2 grass_path
fill ~2 ~-1 ~-3 ~4 ~-1 ~-3 grass_path
fill ~2 ~-1 ~-6 ~3 ~-1 ~-4 grass_path
fill ~1 ~-1 ~-7 ~3 ~-1 ~-7 grass_path
fill ~0 ~-1 ~-8 ~2 ~-1 ~-8 grass_path
fill ~0 ~-1 ~-9 ~3 ~-1 ~-9 grass_path
fill ~1 ~-1 ~-10 ~4 ~-1 ~-10 grass_path
fill ~2 ~-1 ~-11 ~5 ~-1 ~-11 grass_path
fill ~3 ~-1 ~-12 ~6 ~-1 ~-12 grass_path
fill ~4 ~-1 ~-14 ~10 ~-1 ~-13 grass_path
fill ~9 ~-1 ~-11 ~11 ~-1 ~-12 grass_path
fill ~11 ~-1 ~-12 ~13 ~-1 ~-13 grass_path
fill ~16 ~-1 ~-12 ~14 ~-1 ~-11 grass_path
fill ~18 ~-1 ~-10 ~16 ~-1 ~-11 grass_path
fill ~18 ~-1 ~-12 ~18 ~-1 ~-9 grass_path
# Gerüste im Aussenbereich
fill ~-3 ~0 ~-15 ~-3 ~2 ~-15 scaffolding
fill ~27 ~0 ~15 ~27 ~2 ~15 scaffolding
# Heu
fill ~15 ~0 ~-15 ~15 ~2 ~-15 hay_block 8
fill ~15 ~0 ~-14 ~15 ~1 ~-14 hay_block 0
fill ~13 ~0 ~-15 ~16 ~1 ~-15 hay_block 0
#
setblock ~14 ~1 ~-15 hay_block 4
# Vine/Ranken
fill ~6 ~13 ~5 ~6 ~10 ~5 vine 8
# Steinsaege
setblock ~19 ~0 ~0 stone_slab 3
setblock ~20 ~0 ~0 stonecutter_block 0
setblock ~21 ~0 ~0 stone_slab 3
setblock ~20 ~0 ~-1 stone_slab 3
setblock ~20 ~0 ~1 stone_slab 3
# Kessel
setblock ~9 ~0 ~14 cauldron
# Raeucherofen
# fill ~11 ~0 ~6 ~13 ~0 ~6 smoker 0
# Schmelzofen
# fill ~11 ~0 ~6 ~13 ~0 ~6 blast_furnace 2
# Tor
fill ~-4 ~2 ~-1 ~-7 ~0 ~1 air 0 hollow
fill ~-4 ~6 ~-5 ~-6 ~5 ~5 air 0 hollow
#
fill ~-5 ~-3 ~1 ~-5 ~4 ~-1 quartz_block
setblock ~-5 ~1 ~0 air 0
fill ~-5 ~0 ~2 ~-5 ~2 ~4 air 0
fill ~-5 ~0 ~3 ~-5 ~2 ~3 sticky_piston 3
setblock ~-5 ~1 ~4 quartz_block
setblock ~-5 ~0 ~4 redstone_torch 0
setblock ~-5 ~-1 ~4 quartz_block
setblock ~-5 ~2 ~4 redstone_wire 0
setblock ~-5 ~3 ~3 redstone_wire 0
setblock ~-5 ~3 ~2 quartz_block
setblock ~-5 ~3 ~0 air 0
setblock ~-5 ~4 ~0 sticky_piston 0
setblock ~-5 ~4 ~2 redstone_wire 0
setblock ~-5 ~-1 ~0 air 0
setblock ~-5 ~-2 ~0 sticky_piston 1
setblock ~-5 ~-2 ~3 quartz_block
setblock ~-5 ~-1 ~3 redstone_wire 0
fill ~-3 ~-3 ~2  ~-7 ~-1 ~2 quartz_block
fill ~-4 ~-2 ~2 ~-6 ~-1 ~2 air 0
fill ~-4 ~-2 ~2 ~-6 ~-2 ~2 redstone_wire 0
setblock ~-3 ~-1 ~2 redstone_wire 0
setblock ~-3 ~-2 ~1 redstone_wire 0
fill ~-2 ~-2 ~1 ~-2 ~-2 ~-1 redstone_wire 0
setblock ~-4 ~-2 ~1 redstone_wire 0
fill ~-4 ~-1 ~1 ~-1 ~-1 ~-1 grass
setblock ~0 ~-1 ~0 mossy_cobblestone
fill ~-2 ~0 ~1 ~-2 ~0 ~-1 dark_oak_pressure_plate
#
fill ~-5 ~0 ~-2 ~-5 ~2 ~-4 air 0
fill ~-5 ~0 ~-3 ~-5 ~2 ~-3 sticky_piston 2
setblock ~-5 ~1 ~-4 quartz_block
setblock ~-5 ~0 ~-4 redstone_torch 0
setblock ~-5 ~-1 ~-4 quartz_block
setblock ~-5 ~2 ~-4 redstone_wire 0
setblock ~-7 ~-1 ~2 redstone_wire 0
fill ~-7 ~-2 ~1 ~-7 ~-2 ~-4 redstone_wire 0
setblock ~-6 ~-2 ~-4 quartz_block
setblock ~-6 ~-1 ~-4 redstone_wire 0
setblock ~-7 ~-1 ~-4 air 0
setblock ~-6 ~-3 ~-1 redstone_wire 0
setblock ~-6 ~-2 ~-1 air 0
setblock ~-6 ~-3 ~1 redstone_wire 0
setblock ~-6 ~-2 ~1 air 0
setblock ~-5 ~-3 ~0 redstone_torch 3
#
fill ~-7 ~0 ~-2 ~-7 ~4 ~-6 log2 1
fill ~-7 ~0 ~2 ~-7 ~4 ~6 log2 1
fill ~-6 ~0 ~-2 ~-6 ~4 ~-2 log2 1
fill ~-6 ~0 ~2 ~-6 ~4 ~2 log2 1
#
setblock ~-7 ~1 ~2 wooden_button 1
#
fill ~-7 ~-1 ~1 ~-6 ~-1 ~-1 grass
fill ~-6 ~0 ~5 ~-6 ~4 ~3 cobblestone
fill ~-6 ~0 ~-5 ~-6 ~4 ~-3 cobblestone
fill ~-4 ~0 ~-5 ~-4 ~4 ~-3 cobblestone
fill ~-4 ~0 ~5 ~-4 ~4 ~3 cobblestone
fill ~-3 ~0 ~6 ~-3 ~4 ~2 log2 1
fill ~-3 ~0 ~-6 ~-3 ~4 ~-2 log2 1
fill ~-4 ~0 ~2 ~-4 ~4 ~2 log2 1
fill ~-4 ~0 ~-2 ~-4 ~4 ~-2 log2 1
#
setblock ~-3 ~1 ~2 wooden_button 1
#
fill ~-4 ~0 ~6 ~-4 ~4 ~6 log2 1
fill ~-4 ~0 ~-6 ~-4 ~4 ~-6 log2 1
fill ~-5 ~0 ~-5 ~-5 ~4 ~-6 cobblestone
fill ~-5 ~0 ~5 ~-5 ~4 ~6 cobblestone
fill ~-5 ~3 ~-2 ~-5 ~4 ~-4 cobblestone
fill ~-5 ~3 ~4 ~-5 ~4 ~4 cobblestone
setblock ~-5 ~3 ~4 air 0
#
fill ~-3 ~3 ~1 ~-4 ~4 ~-1 log2 9
fill ~-6 ~3 ~1 ~-7 ~4 ~-1 log2 9
setblock ~-7 ~2 ~1 lantern 1
setblock ~-7 ~2 ~-1 lantern 1
setblock ~-3 ~2 ~-1 lantern 1
setblock ~-3 ~2 ~1 lantern 1
fill ~-3 ~5 ~6 ~-7 ~5 ~-6 planks 5
#
fill ~-2 ~5 ~6 ~-2 ~5 ~-6 redstone_lamp
fill ~-2 ~6 ~6 ~-2 ~6 ~-6 redstone_wire
fill ~-8 ~5 ~6 ~-8 ~5 ~-6 redstone_lamp
fill ~-8 ~6 ~6 ~-8 ~6 ~-6 redstone_wire
#
fill ~-9 ~5 ~7 ~-9 ~5 ~-7 dark_oak_stairs 0
fill ~-1 ~5 ~7 ~-1 ~5 ~-7 dark_oak_stairs 1
fill ~-7 ~5 ~-7 ~-9 ~5 ~-7 dark_oak_stairs 2
fill ~-7 ~5 ~7 ~-9 ~5 ~7 dark_oak_stairs 3
fill ~-3 ~5 ~7 ~-1 ~5 ~7 dark_oak_stairs 3
fill ~-3 ~5 ~-7 ~-1 ~5 ~-7 dark_oak_stairs 2
#
fill ~-7 ~6 ~-6 ~-2 ~6 ~-6 redstone_wire 0
fill ~-7 ~6 ~6 ~-2 ~6 ~6 redstone_wire 0
fill ~-7 ~6 ~0 ~-2 ~6 ~0 redstone_wire 0
setblock ~-5 ~6 ~0 daylight_detector_inverted
#
fill ~-7 ~6 ~1 ~-3 ~6 ~1 dark_oak_stairs 2
fill ~-7 ~6 ~-5 ~-3 ~6 ~-5 dark_oak_stairs 2
fill ~-7 ~6 ~-1 ~-3 ~6 ~-1 dark_oak_stairs 3
fill ~-7 ~6 ~5 ~-3 ~6 ~5 dark_oak_stairs 3
#
fill ~-3 ~6 ~2 ~-3 ~6 ~5 dark_oak_stairs 1
fill ~-3 ~6 ~-2 ~-3 ~6 ~-5 dark_oak_stairs 1
fill ~-7 ~6 ~-2 ~-7 ~6 ~-5 dark_oak_stairs 0
fill ~-7 ~6 ~2 ~-7 ~6 ~5 dark_oak_stairs 0
#
fill ~-6 ~5 ~4 ~-4 ~5 ~2 iron_block
fill ~-6 ~6 ~4 ~-4 ~6 ~2 planks 5
setblock ~-5 ~6 ~3 beacon
#
fill ~-6 ~5 ~-4 ~-4 ~5 ~-2 iron_block
fill ~-6 ~6 ~-4 ~-4 ~6 ~-2 planks 5
setblock ~-5 ~6 ~-3 beacon
#
setblock ~-3 ~3 ~3 log2 5
setblock ~-3 ~3 ~4 sealantern
setblock ~-3 ~3 ~5 log2 5
setblock ~-3 ~4 ~4 log2 5
setblock ~-3 ~2 ~4 log2 5
#
setblock ~-7 ~3 ~3 log2 5
setblock ~-7 ~3 ~4 sealantern
setblock ~-7 ~3 ~5 log2 5
setblock ~-7 ~4 ~4 log2 5
setblock ~-7 ~2 ~4 log2 5
#
setblock ~-7 ~3 ~-3 log2 5
setblock ~-7 ~3 ~-4 sealantern
setblock ~-7 ~3 ~-5 log2 5
setblock ~-7 ~4 ~-4 log2 5
setblock ~-7 ~2 ~-4 log2 5
#
setblock ~-3 ~3 ~-3 log2 5
setblock ~-3 ~3 ~-4 sealantern
setblock ~-3 ~3 ~-5 log2 5
setblock ~-3 ~4 ~-4 log2 5
setblock ~-3 ~2 ~-4 log2 5
#
setblock ~-5 ~-1 ~1 grass
setblock ~-5 ~-1 ~-1 grass
# Aufgang Mauer am Tor, rechts
fill ~-3 ~0 ~-7 ~-3 ~1 ~-7 cobblestone
setblock ~-3 ~2 ~-7 wooden_slab 5
setblock ~-3 ~0 ~-8 cobblestone
setblock ~-3 ~1 ~-8 dark_oak_stairs 2
setblock ~-3 ~0 ~-9 dark_oak_stairs 2
#
# Aufgang Mauer am Tor, links
fill ~-3 ~0 ~7 ~-3 ~1 ~7 cobblestone
setblock ~-3 ~2 ~7 wooden_slab 5
setblock ~-3 ~0 ~8 cobblestone
setblock ~-3 ~1 ~8 dark_oak_stairs 3
setblock ~-3 ~0 ~9 dark_oak_stairs 3
#
# Kiste im Dachgeschoss
setblock ~9 ~14 ~-2 chest 3
#
replaceitem block ~9 ~14 ~-2 slot.container 0 diamond_sword 1 0
replaceitem block ~9 ~14 ~-2 slot.container 1 diamond_sword 1 0
replaceitem block ~9 ~14 ~-2 slot.container 2 diamond_sword 1 0
replaceitem block ~9 ~14 ~-2 slot.container 3 diamond_sword 1 0
#
replaceitem block ~9 ~14 ~-2 slot.container 7 shield 1 0
replaceitem block ~9 ~14 ~-2 slot.container 8 shield 1 0
replaceitem block ~9 ~14 ~-2 slot.container 9 shield 1 0
replaceitem block ~9 ~14 ~-2 slot.container 10 shield 1 0
#
replaceitem block ~9 ~14 ~-2 slot.container 14 elytra 1 0
replaceitem block ~9 ~14 ~-2 slot.container 15 elytra 1 0
replaceitem block ~9 ~14 ~-2 slot.container 16 elytra 1 0
replaceitem block ~9 ~14 ~-2 slot.container 17 elytra 1 0
#
replaceitem block ~9 ~14 ~-2 slot.container 21 fireworks 32 0
replaceitem block ~9 ~14 ~-2 slot.container 22 fireworks 32 0
replaceitem block ~9 ~14 ~-2 slot.container 23 fireworks 32 0
replaceitem block ~9 ~14 ~-2 slot.container 24 fireworks 32 0
# Ranken
fill ~-2 ~1 ~5 ~-2 ~4 ~6 vine 2
#
# Graben, Torseite
fill ~-10 ~-1 ~23 ~-11 ~-2 ~-23 water
fill ~-10 ~-3 ~23 ~-11 ~-3 ~-23 magma
fill ~-9 ~-2 ~21 ~-9 ~-2 ~-21 stone
fill ~-12 ~-2 ~23 ~-12 ~-2 ~-23 stone
# Graben, links
fill ~35 ~-1 ~-22 ~-11 ~-2 ~-23 water
fill ~33 ~-3 ~-22 ~-11 ~-3 ~-23 magma
fill ~33 ~-2 ~-21 ~-9 ~-2 ~-21 stone
fill ~35 ~-2 ~-24 ~-11 ~-2 ~-24 stone
# Graben, rechts
fill ~35 ~-1 ~22 ~-11 ~-2 ~23 water
fill ~33 ~-3 ~22 ~-11 ~-3 ~23 magma
fill ~33 ~-2 ~21 ~-9 ~-2 ~21 stone
fill ~35 ~-2 ~24 ~-11 ~-2 ~24 stone
# Graben, vorne
fill ~34 ~-1 ~23 ~35 ~-2 ~-23 water
fill ~34 ~-3 ~23 ~35 ~-3 ~-23 magma
fill ~33 ~-2 ~21 ~33 ~-2 ~-21 stone
fill ~36 ~-2 ~23 ~36 ~-2 ~-23 stone
# Übergang, Torseite
fill ~-10 ~-1 ~-2 ~-11 ~-1 ~2 wooden_slab 13
fill ~-12 ~-1 ~-2 ~-12 ~-1 ~2 planks 5
fill ~-9 ~-1 ~-2 ~-9 ~-1 ~2 planks 5
fill ~-10 ~0 ~-1 ~-11 ~0 ~1 wooden_slab 5
#
# Keller
setblock ~12 ~-1 ~0 bell 5
#
tp @s ~12 ~-4 ~0 facing ~17 ~17 ~0
setblock ~0 ~0 ~0 carpet 12
setblock ~5 ~0 ~4 chest 4
setblock ~4 ~0 ~5 chest 0
# Feuerzeug in die Kiste
replaceitem block ~5 ~0 ~4 slot.container 0 flint_and_steel
replaceitem block ~4 ~0 ~5 slot.container 0 flint_and_steel
#
setblock ~3 ~0 ~5 anvil 1
setblock ~5 ~0 ~3 anvil 0
# Bibliothek
setblock ~5 ~2 ~5 lantern 1
setblock ~5 ~1 ~5 air 0
setblock ~5 ~2 ~-5 lantern 1
fill ~5 ~1 ~-3 ~5 ~-2 ~-5 air 0
fill ~4 ~1 ~-5 ~3 ~-2 ~-5 air 0
#
setblock ~3 ~-1 ~-5 stone_stairs 1
setblock ~3 ~-2 ~-5 cobblestone
setblock ~4 ~-2 ~-5 stone_stairs 1
#
setblock ~5 ~-3 ~-4 stone_stairs 3
setblock ~5 ~-4 ~-3 stone_stairs 3
setblock ~5 ~-3 ~-3 air 0
#
fill ~1 ~-2 ~-2 ~5 ~-4 ~5 air 0
#
fill ~1 ~-4 ~5 ~5 ~-4 ~5 bookshelf
fill ~5 ~-4 ~0 ~5 ~-4 ~5 bookshelf
fill ~1 ~-4 ~0 ~1 ~-4 ~5 bookshelf
setblock ~2 ~-4 ~1 bookshelf
setblock ~4 ~-4 ~1 bookshelf
#
fill ~1 ~-2 ~5 ~5 ~-2 ~5 bookshelf
fill ~5 ~-2 ~0 ~5 ~-2 ~5 bookshelf
fill ~1 ~-2 ~0 ~1 ~-2 ~5 bookshelf
setblock ~2 ~-2 ~1 bookshelf
setblock ~4 ~-2 ~1 bookshelf
#
fill ~0 ~-3 ~0 ~0 ~-3 ~6 bookshelf
fill ~6 ~-3 ~0 ~6 ~-3 ~6 bookshelf
fill ~0 ~-3 ~6 ~6 ~-3 ~6 bookshelf
#
setblock ~3 ~-2 ~3 lantern 1
setblock ~3 ~-2 ~-1 lantern 1
setblock ~3 ~-4 ~3 enchanting_table
#
setblock ~3 ~-3 ~-3 lantern 1
setblock ~3 ~-4 ~-3 chest 3
# Kiste mit Lapis befüllen
replaceitem block ~3 ~-4 ~-3 slot.container 0 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 1 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 2 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 3 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 4 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 5 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 6 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 7 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 8 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 9 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 10 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 11 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 12 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 13 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 14 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 15 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 16 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 17 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 18 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 19 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 20 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 21 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 22 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 23 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 24 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 25 dye 64 4
replaceitem block ~3 ~-4 ~-3 slot.container 26 dye 64 4
#
setblock ~-5 ~1 ~-5 crafting_table
#
# Nether-Portal
fill ~-3 ~0 ~3 ~-3 ~3 ~2 air 0
setblock ~-3 ~1 ~4 cobblestone
fill ~-5 ~1 ~2 ~-4 ~1 ~2 cobblestone
#
setblock ~-3 ~0 ~2 glowstone
fill ~-3 ~1 ~2 ~-3 ~2 ~2 nether_brick_fence
setblock ~-3 ~3 ~2 glowstone
#
setblock ~-3 ~0 ~-2 glowstone
fill ~-3 ~1 ~-2 ~-3 ~2 ~-2 nether_brick_fence
setblock ~-3 ~3 ~-2 glowstone
#
fill ~-4 ~-1 ~2 ~-4 ~3 ~-2 obsidian
fill ~-4 ~0 ~1 ~-4 ~2 ~-1 air 0
fill ~-5 ~0 ~1 ~-5 ~3 ~-4 cobblestone
#
setblock ~-4 ~3 ~-2 stone_stairs 2
#
fill ~-4 ~1 ~-3 ~-4 ~0 ~-3 cobblestone
setblock ~-4 ~0 ~-4 cobblestone
#
fill ~-3 ~3 ~-1 ~-3 ~3 ~1 nether_brick_stairs 5
#
fill ~-6 ~-1 ~-2 ~-6 ~2 ~-2 cobblestone
fill ~-5 ~1 ~-1 ~-5 ~2 ~1 glass
# Sortier-Stopper, Zuleitung
fill ~-7 ~-5 ~6 ~-8 ~-4 ~6 air 0
setblock ~-7 ~-5 ~6 sticky_piston 5
setblock ~-7 ~-4 ~6 lever 5
setblock ~-8 ~-3 ~6 air 0
setblock ~-8 ~-5 ~6 hopper 3
setblock ~-9 ~-5 ~6 air 0
# Sortier-Stopper, Wegleitung
fill ~-11 ~1 ~6 ~-12 ~1 ~6 air 0
setblock ~-12 ~1 ~6 sticky_piston 4
setblock ~-12 ~1 ~5 lever 4
setblock ~-11 ~1 ~6 hopper 2
setblock ~-10 ~1 ~6 air 0
#
# Labor
fill ~-3 ~-4 ~5 ~-2 ~-3 ~0 air 0
fill ~-5 ~-4 ~5 ~-2 ~-3 ~2 air 0
fill ~-5 ~-5 ~5 ~-2 ~-3 ~2 air 0
setblock ~-5 ~-5 ~5 cobblestone
# Elementkonstruktor
setblock ~-2 ~-5 ~5 chemistry_table 8
# Verbindungserzeuger
setblock ~-4 ~-5 ~5 chemistry_table 0
# Labortisch
setblock ~-5 ~-5 ~4 chemistry_table 12
# Stoffreduzierer
setblock ~-5 ~-5 ~2 chemistry_table 4
# Kisten
setblock ~-5 ~-5 ~3 chest 5
setblock ~-3 ~-5 ~5 chest 0
setblock ~-3 ~-4 ~5 carpet 0
setblock ~-5 ~-4 ~3 carpet 0
#
replaceitem block ~-5 ~-5 ~3 slot.container 0 glass_bottle 1
replaceitem block ~-5 ~-5 ~3 slot.container 1 potion 1
replaceitem block ~-5 ~-5 ~3 slot.container 2 glass_bottle 1
replaceitem block ~-5 ~-5 ~3 slot.container 3 potion 1
replaceitem block ~-5 ~-5 ~3 slot.container 4 glass_bottle 1
replaceitem block ~-5 ~-5 ~3 slot.container 5 potion 1
replaceitem block ~-5 ~-5 ~3 slot.container 6 glass_bottle 1
#
replaceitem block ~-3 ~-5 ~5 slot.container 0 glass_bottle 1
replaceitem block ~-3 ~-5 ~5 slot.container 1 potion 1
replaceitem block ~-3 ~-5 ~5 slot.container 2 glass_bottle 1
replaceitem block ~-3 ~-5 ~5 slot.container 3 potion 1
replaceitem block ~-3 ~-5 ~5 slot.container 4 glass_bottle 1
replaceitem block ~-3 ~-5 ~5 slot.container 5 potion 1
replaceitem block ~-3 ~-5 ~5 slot.container 6 glass_bottle 1
# Beleuchtung
fill ~-2 ~-3 ~5 ~-4 ~-3 ~5 glowstone
fill ~-5 ~-3 ~4 ~-5 ~-3 ~2 glowstone
setblock ~-5 ~-3 ~5 glowstone
# Decke
fill ~-4 ~-3 ~4 ~-4 ~-3 ~2 dark_oak_stairs 5
fill ~-2 ~-3 ~4 ~-4 ~-3 ~4 dark_oak_stairs 6
# Boden
fill ~-2 ~-5 ~4 ~-4 ~-5 ~2 carpet 12
# Durchgang
fill ~-2 ~-5 ~2 ~-3 ~-5 ~2 dark_oak_stairs 3
setblock ~-2 ~-4 ~-1 dark_oak_pressure_plate 0
setblock ~-2 ~-4 ~1 dark_oak_pressure_plate 0
setblock ~-2 ~-4 ~0 iron_door 1
fill ~-3 ~-4 ~0 ~-3 ~-3 ~0 cobblestone
#
setblock ~-3 ~-4 ~1 crafting_table
setblock ~-3 ~-3 ~1 lantern 1
#
fill ~-6 ~-4 ~4 ~-6 ~-4 ~2 glass
fill ~-7 ~-4 ~4 ~-7 ~-4 ~2 lava
#
fill ~-2 ~-4 ~6 ~-4 ~-4 ~6 glass
fill ~-2 ~-4 ~7 ~-4 ~-4 ~7 lava
#
setblock ~-5 ~-4 ~5 brewing_stand
#
# Automatischer-Hühnerfarm
fill ~11 ~3 ~11 ~13 ~3 ~13 stone_slab 2
fill ~11 ~2 ~11 ~13 ~2 ~12 hopper 3
fill ~11 ~2 ~13 ~13 ~2 ~13 hopper 4
setblock ~11 ~2 ~13 hopper 0
setblock ~11 ~1 ~13 hopper 0
setblock ~11 ~0 ~13 dispenser 4
setblock ~12 ~0 ~13 unpowered_comparator 1
setblock ~13 ~0 ~13 sticky_piston 3
setblock ~13 ~0 ~12 quartz_block
fill ~13 ~0 ~10 ~13 ~0 ~11 air 0
setblock ~13 ~0 ~10 redstone_wire
setblock ~12 ~0 ~10 unpowered_repeater 15
setblock ~12 ~0 ~11 unpowered_repeater 13
setblock ~12 ~0 ~12 lantern 0
setblock ~11 ~0 ~10 sticky_piston 2
setblock ~11 ~0 ~11 redstone_block
setblock ~11 ~0 ~12 air 0
fill ~9 ~-1 ~13 ~10 ~-1 ~13 hopper 4
fill ~9 ~-1 ~12 ~10 ~1 ~12 glass
fill ~9 ~0 ~13 ~9 ~1 ~13 glass
setblock ~10 ~0 ~13 stone_slab 3
setblock ~10 ~1 ~13 lava
# Durchgang zur Hühnerfarm
fill ~8 ~0 ~12 ~6 ~1 ~13 air 0
# Hopper zum Item-Dropper
fill ~8 ~-1 ~13 ~8 ~-4 ~13 hopper 0
fill ~-8 ~-5 ~13 ~8 ~-5 ~13 hopper 4
setblock ~-9 ~-5 ~13 hopper 2
# Zaun und Überdachung
fill ~10 ~4 ~10 ~10 ~4 ~14 fence 5
fill ~14 ~4 ~10 ~14 ~4 ~14 fence 5
fill ~14 ~4 ~14 ~10 ~4 ~14 fence 5
fill ~14 ~4 ~10 ~10 ~4 ~10 fence 5
#
setblock ~10 ~5 ~10 fence 5
setblock ~14 ~5 ~10 fence 5
setblock ~14 ~5 ~14 fence 5
setblock ~10 ~5 ~14 fence 5
#
setblock ~12 ~4 ~10 dark_oak_fence_gate 0
setblock ~10 ~4 ~12 dark_oak_fence_gate 1
#
fill ~10 ~6 ~10 ~10 ~6 ~14 dark_oak_stairs 0
fill ~14 ~6 ~10 ~14 ~6 ~14 dark_oak_stairs 1
fill ~14 ~6 ~10 ~10 ~6 ~10 dark_oak_stairs 2
fill ~14 ~6 ~14 ~10 ~6 ~14 dark_oak_stairs 3
# Beleuchtung
fill ~11 ~6 ~11 ~13 ~6 ~13 redstone_lamp
fill ~11 ~7 ~11 ~13 ~7 ~13 redstone_wire
setblock ~12 ~7 ~12 daylight_detector_inverted
setblock ~12 ~5 ~14 lantern 1
setblock ~14 ~5 ~12 lantern 1
# Chicken
summon chicken ~12 ~5 ~12
summon chicken ~12 ~5 ~12
summon chicken ~12 ~5 ~12
#
# Ende
setblock ~3 ~18 ~0 lectern 1
#
tp @p ~0 ~18 ~0 facing ~17 ~17 ~0
#
# setblock ~0 ~-18 ~0 cobblestone
setblock ~0 ~-18 ~0 air 0
# setblock ~0 ~-17 ~0 lantern 0
#
fill ~3 ~0 ~-4 ~3 ~6 ~-4 ladder 2
fill ~-1 ~6 ~-1 ~1 ~6 ~1 iron_block
fill ~-1 ~7 ~-1 ~1 ~7 ~1 planks 5
setblock ~0 ~7 ~0 beacon
#
setblock ~-2 ~3 ~2 lantern 1
setblock ~-2 ~3 ~-2 lantern 1
setblock ~2 ~3 ~-2 lantern 1
setblock ~2 ~3 ~2 lantern 1
#
# Ende
# tellraw @s {"rawtext":[{"text":"§aDr. Woitscheks Outpost Base successfully generated."}]}
title @a title §aDone!
title @a subtitle Dr. Woitscheks Outpost Base successfully generated!
#