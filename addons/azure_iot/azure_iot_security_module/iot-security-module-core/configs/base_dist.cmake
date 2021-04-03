
if(ASC_COLLECTOR_BASELINE_ENABLED)
  set(ASC_BASELINE_REPORT_POOL_ENTRIES 100)
endif()

if(ASC_COLLECTOR_LOG_ENABLED)
  set(ASC_LOG_REPORT_POOL_ENTRIES 100)
endif()

if(ASC_COLLECTOR_NETWORK_ACTIVITY_ENABLED)
  set(ASC_COLLECTOR_NETWORK_ACTIVITY_SEND_EMPTY_EVENTS OFF)
  set(ASC_COLLECTOR_NETWORK_ACTIVITY_MAX_IPV4_OBJECTS_IN_CACHE 64)
  set(ASC_COLLECTOR_NETWORK_ACTIVITY_MAX_IPV6_OBJECTS_IN_CACHE 64)
endif()

if(ASC_COLLECTOR_PROCESS_ENABLED)
  set(ASC_COLLECTOR_PROCESS_SEND_EMPTY_EVENTS OFF)
  set(ASC_COLLECTOR_PROCESS_IN_CACHE 32)
endif()

if(ASC_COMPONENT_COMMAND_EXECUTOR)
  set(ASC_OPERATIONS_POOL_ENTRIES 50)
endif()

set(ASC_COMPONENT_CONFIGURATION_PLAT OFF)
set(ASC_FIRST_COLLECTION_INTERVAL 30)
set(ASC_HIGH_PRIORITY_INTERVAL 10)
set(ASC_MEDIUM_PRIORITY_INTERVAL 30)
set(ASC_LOW_PRIORITY_INTERVAL 60)

if(NOT ASC_DYNAMIC_MEMORY_ENABLED)
  set(ASC_SERIALIZER_USE_CUSTOM_ALLOCATOR ON)
  set(ASC_EMITTER_PAGE_CACHE_SIZE 1)
else()
  set(FLATCC_EMITTER_PAGE_SIZE 14016)
endif()

set(FLATCC_NO_ASSERT ON)
set(FLATCC_USE_GENERIC_ALIGNED_ALLOC ON)
set(ASC_FLATCC_JSON_PRINTER_OVERWRITE OFF)
set(ASC_COMPONENT_CORE_SUPPORTS_RESTART ON)