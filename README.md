# NCU Computer Orgnization Project 2

> 資訊工程學系二年級 A 班
> 108502523．劉子雍



## Files
- `benchmark/`: The benchmark program files.
    - `multiply.c`, `multiply`: The program for the task 5.
    - `quicksort.c`, `quiclsort`: The program for the task 3.
    - `quicksortsmall.c`, `quicksortsmall`: The program for testing the task 3.
    - `rrip.c`, `rrip`: The program for the task 4.
    - `README.md`: The README file provided from the TA.
- `commands/`: The shell scrupts of commands.
    - `compile.sh`: The shell script to generally compile the gem5.
    - `config.sh`: The shell script of common configuration variables.
    - `hello.sh`: The shell script to execute the program for the task 1.
    - `multiply.sh`, `multiply-write-back.sh`, `multiply-write-through.sh`:
        The shell script to execute the programs for the task 5.
    - `quicksort.sh`, `quicksort-2-way.sh`, `quicksort-full-way.sh`:
        The shell script to execute the programs for the task 3.
    - `quicksort-small.sh`, `quicksort-small-2-way.sh`, `quicksort-small-full-way.sh`:
        The shell script to execute the programs for testing the task 3.
    - `rrip.sh`, `rrip-lru.sh`, `rrip-rrip.sh`:
        The shell script to execute the program for the task 4.
- `outputs/`: The output and generated files.
    - `hello/`: The output and generated files from the task 1.
    - `multiply-write-back/`, `multiply-write-through/`:
        The output and generated files from the task 5.
    - `quicksort-2-way/`, `quicksort-full-way/`:
        The output and generated files from the task 3.
    - `quicksort-small-2-way/`, `quicksort-small-full-way/`:
        The output and generated files from the task 3 testing.
    - `rrip-lru/`, `rrip-rrip/`: The output and generated files from the task 4.
- `sources/`: The related program source files.
    - `README.md`: The README file listing related program source files.
- `benchmark.zip`: The compressed file of benchmark program files provided from the TA.
- `README.md`: This README file.



## Tasks
### GEM5 + NVMAIN BUILD-UP (40%)
- Methods:
    - Follow the slides provided from the TA.
- Descriptions:
    - Use **Ubuntu 18.04.5 LTS Server** with **Oracle VM VirtualBox 6.1.12**.

### Enable L3 last level cache in GEM5 + NVMAIN (15%)
- Methods:
    - Follow the tutorials almostly from the [website](https://blog.csdn.net/tristan_tian/article/details/79851063).
    - Use the runtime-determined paramters by passing through the executing commands.
- Commands:
    - Enable L3 cache: `--l3cache`
- Descriptions:
    - Walker caches are not used here.
    - For other default values of non-specific parameters of L3 cache, see `sources/Caches.py` for more details.

### Config last level cache to 2-way and full-way associative cache and test performance (15%)
- Methods:
    - Use the runtime-determined paramters by passing through the executing commands.
- Commands:
    - Use specific sizes of caches: `--l1i_size=32kB`, `--l1d_size=32kB`, `--l2_size=128kB`, `--l3_size=1MB`
    - Use 2-way associative L3 cache: `--l3_assoc=2`
    - Use full-way associative L3 cache: `--l3_assoc=0` *(`--l3-cache=16384`)*
- Related files:
    - `outputs/quicksort-2-way/*`
    - `outputs/quicksort-full-way/*`
- Descriptions:
    - `--l3_assoc=0`
        - If the associativity is assigned to be zero,
            it will be re-assigned to such a number that it can be a full-way associativive cache.
        - See `sources/base_set_assoc.cc` for more details.

### Modify last level cache policy based on RRIP (15%)
- Methods:
    - Use the runtime-determined paramters by passing through the executing commands.
- Commands:
    - Use specific sizes of caches: `--l1i_size=32kB`, `--l1d_size=32kB`, `--l2_size=128kB`, `--l3_size=1MB`
    - Use the LRU replacement policy on L3 cache: `--l3_rp=LRU`
    - Use the RRIP replacement policy on L3 cache: `--l3_rp=RRIP`
- Related files:
    - `outputs/rrip/*`
- Descriptions:
    - **RRIP** and **BRRIP**:
        - In this case, that is, in these kinds of implementations,
            the **RRIP** can be called special case of the **BRRIP** replacement policy.
        - According to the [document](https://www.gem5.org/documentation/general_docs/memory_system/replacement_policies/),
            the **BRRIP** with its btp value being set to zero is equilvalent to the **RRIP** *(or **SRRIP** (Static RRIP))*.
        - Due to their impllementations with the same C++ class, their type would all be called **BRIPRP**.
        - However, it is still possible to recognize that it is **RRIP** by checking whether its **btp** value is equal to zero.
    - `--l3_rp`:
        - The self-added command options `--l3_rp` would initialize a specific kind of **tags** in the L3 cache.
        - See `sources/CacheConfig.py` for more details.

### Test the performance of write back and write through policy based on 4-way associative cache with isscc-pcm (15%)
- Methods:
    - Use the runtime-determined paramters by passing through the executing commands.
- Commands:
    - Use specific sizes of caches: `--l1i_size=32kB`, `--l1d_size=32kB`, `--l2_size=128kB`, `--l3_size=1MB`
    - Use 4-way associative L3 cache: `--l3_assoc=4`
    - [x] Write back: default
    - [ ] Write through: TODO
- Related files:
    - `outpus/multiply-write-back/*`
    - `outputs/multiply-write-through/*`
- Descriptions:
    - ==TODO==


### Bonus (20%)
#### Design last level cache policy to reduce the energy consumption of pcm-based main memory (Baseline: LRU)
- GIVE UP TO EAT PANCAKE!
