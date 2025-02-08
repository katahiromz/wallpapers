# wallpapers

This repository contains wallpapers for use in rapps.

You can download these wallpapers from the "ReactOS Standard Wallpapers" package in the ReactOS Applications Manager.

| File Name                          | Author                                        | Origin                                                     |
|------------------------------------|-----------------------------------------------|------------------------------------------------------------|
| Angelus collection                 | Forum user "Angelus" (jedi.knight@wanadoo.es) | https://reactos.org/forum/viewtopic.php?p=50543#p50543     |
| Angelus_02_ROSWP_4-3_1440x1080.jpg | See above                                     | See above                                                  |
| Angelus_02_ROSWP_4-3_1024x768.jpg  | See above                                     | See above                                                  |
| 1920px_Polarlicht.jpg              | Public domain                                 | https://jira.reactos.org/browse/CORE-8446 and links inside |
| grass.jpg                          | See above                                     | See above                                                  |
| clouds.jpg                         | Andreas Bjerkeholt (harteex@gmail.com)        | https://reactos.org/forum/viewtopic.php?p=17732#p17732     |
| lake.jpg                           | Andreas Bjerkeholt (harteex@gmail.com)        | https://reactos.org/forum/viewtopic.php?p=17732#p17732     |
| ReactOS_CirclesBlue_1.jpg          | Forum user "henrytang5247" (Henry Tang)       | https://reactos.org/forum/viewtopic.php?p=109529#p109529   |
| ReactOS_CirclesBlue_2.jpg          | See above                                     | See above                                                  |
| ReactOS_CirclesGold_1.jpg          | See above                                     | See above                                                  |
| ReactOS_CirclesGold_2.jpg          | See above                                     | See above                                                  |
| ReactOS_Hexagons.jpg               | See above                                     | https://reactos.org/forum/viewtopic.php?p=109866#p109866   |
| ReactOS_Mizu.png                   | Forum user "Foxlet" (foxlet@furcode.co)       | https://jira.reactos.org/browse/CORE-15783                 |
| ReactOS_Mizu_4x3.png               | See above                                     | See above                                                  |
| ReactOS_Mizu_16x9_A.png            | See above                                     | See above                                                  |
| ReactOS_Mizu_16x9_B.png            | See above                                     | See above                                                  |
| Silhouette collection              | Jake Collins (polar@ever3st.com)              | https://ever3st.com/Graphics/Loot/                         |

## Manage this repository

### Who is the wallpaper manager?

- Current wallpaper manager: https://reactos.com/katahiromz

### The job of wallpaper manager

If any changes are made to the `wallpapers` repository, then the wallpaper manager has to update `roswallp.txt` in `reactos/rapps-db`, for downloading "ReactOS Standard Wallpapers" package (`roswallp`), as follows:

1. Conduct an election or create a pull request before making any significant changes to the `wallpapers` repository.
2. Update `wallpapers` repository.
3. Run `./make-zip.sh` on latest `wallpapers` local repository.
4. File `output/wallpapers.zip` will be generated.
5. Release new `wallpapers.zip` on `reactos/wallpapers` `Releases` page ( https://github.com/reactos/wallpapers/releases ) with tag `v???` (a new version number).
6. Update data file `roswallp.txt` on `reactos/rapps-db`, comparing this repository's [`roswallp-sample.txt`](roswallp-sample.txt), and checking the file size of new `wallpapers.zip`.
