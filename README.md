# NCU Computer Orgnization Project 2

> 資訊工程學系二年級 A 班
> 108502523．劉子雍


## TODO
- [ ] Write through
- [ ] Demo standard operating procedure
    - [ ] 2
    - [ ] 3
    - [ ] 4
- [ ] Copy modified files
- [ ] Set Github repo public
- [ ] Add RRIP shell script
- [ ] Learn Vim


## Tasks
### GEM5 + NVMAIN BUILD-UP (40%)
- [x] Follow the slides

### Enable L3 last level cache in GEM5 + NVMAIN (15%)
- [x] L3 cache: `--l3cache`

### Config last level cache to 2-way and full-way associative cache and test performance (15%)
- [x] 2-way: `--l3_assoc=2`
- [ ] Full-way: `--l3_falru`
    - Or `--l3_assoc=16384`
    - Or `--l3_assoc=0`

### Modify last level cache policy based on RRIP (15%)
- [x] RRIP: `--l3_rp=RRIP` (LRU: `--l3_rp=LRU`)

### Test the performance of write back and write through policy based on 4-way associative cache with isscc-pcm (15%)
- [x] 4-way: `--l3_assoc=4`
- [x] Write back: default
- [ ] Write through: TODO


### Bonus (20%)
#### Design last level cache policy to reduce the energy consumption of pcm-based main memory


#### Baseline: LRU


