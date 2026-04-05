func hit_stop(duration = 0.1):
    Engine.time_scale = 0.0
    await get_tree().create_timer(duration).timeout
    Engine.time_scale = 1.0
