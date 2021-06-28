# Modified and Newly Added Files
To reduce much size of the uploaded data, only the modified or newly added files are put here.
The following are lists of these modified and newly added files.

In modified files, patterns `TODO` indicate modified lines.
Modified segmentations would be packed in `TODO - start` and `TODO - end`.

## gem5
### Modified
- `BaseCPU.py`
    - Origin: `<GEM5>/src/cpu/BaseCPU.py`
    - Desc:
        - Enable L3 cache.
- `CacheConfig.py`
    - Origin: `<GEM5>/config/common/CacheConfig.py`
    - Desc:
        - Enable L3 cache.
        - Handle newly added command options.
- `Caches.py`
    - Origin: `<GEM5>/config/common/Caches.py`
    - Desc:
        - Enable L3 cache.
- `Options.py`
    - Origin: `<GEM5>/config/common/Options.py`
    - Desc:
        - `--l3cache`: Enable L3 cache.
        - `--l3_falru`: Let L3 cache use fully associative cache with LRU replacement policy (FALRU).
        - `--l3_rp`: Let L3 cache use a specific replacement policy.
- `XBar.py`
    - Origin: `<GEM5>/src/mem/XBar.py`
    - Desc:
        - Enable L3 cache.
- `base_sebase_set_assoc.cc`
    - Origin: `<GEM5>/src/mem/cache/tags/base_set_assoc.cc`
    - Desc:
        - The parameter `assoc` can be automatically reset to the number of all blocks
            if `assoc` is equal to zero.

## NVmain


