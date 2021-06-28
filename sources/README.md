# Modified and Newly Added Files
To reduce much size of the uploaded data, only the modified or newly added files are put here.
The following are lists of these modified and newly added files.

In modified files, patterns `TODO` indicate modified lines.
Modified segmentations would be packed in `TODO - start` and `TODO - end`.

## gem5
### Modified
- `BaseCPU.py`
    - Origin: `<GEM5>/src/cpu/BaseCPU.py`
    - Descriptions:
        - Enable L3 cache.
- `CacheConfig.py`
    - Origin: `<GEM5>/config/common/CacheConfig.py`
    - Descriptions:
        - Enable L3 cache.
        - Handle newly added command options.
- `Caches.py`
    - Origin: `<GEM5>/config/common/Caches.py`
    - Descriptions:
        - Enable L3 cache.
- `Options.py`
    - Origin: `<GEM5>/config/common/Options.py`
    - Descriptions:
        - `--l3cache`: Enable L3 cache.
        - `--l3_rp`: Let L3 cache use a specific replacement policy.
- `XBar.py`
    - Origin: `<GEM5>/src/mem/XBar.py`
    - Descriptionsription:
        - Enable L3 cache.
- `base_set_assoc.cc`
    - Origin: `<GEM5>/src/mem/cache/tags/base_set_assoc.cc`
    - Descriptions:
        - The parameter `assoc` can be automatically reset to the number of all blocks
            if `assoc` is equal to zero.
- `base.cc`
    - Origin: `<GEM5>/src/mem/cache/base.cc`
    - Descriptions:
        - Implement the write-through feature.


## NVmain


