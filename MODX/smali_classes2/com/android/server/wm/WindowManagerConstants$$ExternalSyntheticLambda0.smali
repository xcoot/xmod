.class public final synthetic Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerConstants;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerConstants;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerConstants;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const v3, -0x7801476

    .line 48
    .line 49
    .line 50
    if-eq v2, v3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string/jumbo v2, "system_gesture_exclusion_log_debounce_millis"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 63
    .line 64
    const-string/jumbo v2, "system_gesture_exclusion_log_debounce_millis"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v3, "window_manager"

    .line 68
    .line 69
    .line 70
    const-wide/16 v4, 0x0

    .line 71
    .line 72
    invoke-interface {v1, v3, v2, v4, v5}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    iput-wide v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void

    .line 84
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 90
    .line 91
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 92
    .line 93
    .line 94
    monitor-enter v0

    .line 95
    :try_start_3
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const/4 v1, 0x0

    .line 104
    move v2, v1

    .line 105
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_a

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Ljava/lang/String;

    .line 116
    .line 117
    if-nez v3, :cond_4

    .line 118
    .line 119
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 121
    .line 122
    .line 123
    goto :goto_7

    .line 124
    :catchall_1
    move-exception p0

    .line 125
    goto :goto_8

    .line 126
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const v5, -0x4bcc3a39

    .line 131
    .line 132
    .line 133
    const/4 v6, 0x1

    .line 134
    if-eq v4, v5, :cond_6

    .line 135
    .line 136
    const v5, 0x12e32da7

    .line 137
    .line 138
    .line 139
    if-eq v4, v5, :cond_5

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_5
    const-string/jumbo v4, "system_gesture_exclusion_limit_dp"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_7

    .line 150
    .line 151
    move v3, v1

    .line 152
    goto :goto_5

    .line 153
    :cond_6
    const-string/jumbo v4, "system_gestures_excluded_by_pre_q_sticky_immersive"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_7

    .line 161
    .line 162
    move v3, v6

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    :goto_4
    const/4 v3, -0x1

    .line 165
    :goto_5
    if-eqz v3, :cond_9

    .line 166
    .line 167
    if-eq v3, v6, :cond_8

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 171
    .line 172
    const-string/jumbo v3, "system_gestures_excluded_by_pre_q_sticky_immersive"

    .line 173
    .line 174
    .line 175
    const-string v4, "android"

    .line 176
    .line 177
    invoke-interface {v2, v4, v3, v1}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    .line 182
    .line 183
    :goto_6
    move v2, v6

    .line 184
    goto :goto_3

    .line 185
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 186
    .line 187
    const-string/jumbo v3, "system_gesture_exclusion_limit_dp"

    .line 188
    .line 189
    .line 190
    const-string v4, "android"

    .line 191
    .line 192
    invoke-interface {v2, v4, v3, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    const/16 v3, 0xc8

    .line 197
    .line 198
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iput v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_a
    if-eqz v2, :cond_b

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    .line 208
    .line 209
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 210
    .line 211
    .line 212
    :cond_b
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 213
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 214
    .line 215
    .line 216
    :goto_7
    return-void

    .line 217
    :goto_8
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 218
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 219
    .line 220
    .line 221
    throw p0

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
