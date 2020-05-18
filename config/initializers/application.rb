module KdsCategoryService
  config.cache_store = :redis_store, "redis://localhost:6379/0/cache", { expires_in: 90.minutes }
end