.class public final Lcom/android/server/usage/AppStandbyController$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

.field public final KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

.field public final mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "screen_threshold_rare"

    .line 7
    .line 8
    .line 9
    const-string/jumbo p2, "screen_threshold_restricted"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "screen_threshold_active"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "screen_threshold_working_set"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "screen_threshold_frequent"

    .line 19
    .line 20
    .line 21
    filled-new-array {v0, v1, v2, p1, p2}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 26
    .line 27
    const-string p1, "elapsed_threshold_rare"

    .line 28
    .line 29
    const-string p2, "elapsed_threshold_restricted"

    .line 30
    .line 31
    const-string v0, "elapsed_threshold_active"

    .line 32
    .line 33
    const-string v1, "elapsed_threshold_working_set"

    .line 34
    .line 35
    const-string v2, "elapsed_threshold_frequent"

    .line 36
    .line 37
    filled-new-array {v0, v1, v2, p1, p2}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 42
    .line 43
    new-instance p1, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 44
    .line 45
    const/16 p2, 0x7c

    .line 46
    .line 47
    invoke-direct {p1, p2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 51
    .line 52
    return-void
.end method

.method public static generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const-string v1, ") != # buckets (5)"

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-ne v0, v2, :cond_4

    .line 17
    .line 18
    array-length v0, p2

    .line 19
    if-ne v0, v2, :cond_3

    .line 20
    .line 21
    array-length v0, p3

    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    const-string p3, "AppStandbyController"

    .line 25
    .line 26
    const-string/jumbo v0, "minValues array is the wrong size"

    .line 27
    .line 28
    .line 29
    invoke-static {p3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-array p3, v2, [J

    .line 33
    .line 34
    :cond_1
    new-array v0, v2, [J

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-ge v1, v2, :cond_2

    .line 38
    .line 39
    aget-wide v3, p3, v1

    .line 40
    .line 41
    aget-object v5, p1, v1

    .line 42
    .line 43
    aget-wide v6, p2, v1

    .line 44
    .line 45
    invoke-virtual {p0, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    aput-wide v3, v0, v1

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-object v0

    .line 59
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string p3, "# defaults ("

    .line 64
    .line 65
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    array-length p2, p2

    .line 69
    invoke-static {p2, p1, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string p3, "# keys ("

    .line 82
    .line 83
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    array-length p1, p1

    .line 87
    invoke-static {p1, p2, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final processProperties(Landroid/provider/DeviceConfig$Properties;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_6

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    check-cast v6, Ljava/lang/String;

    .line 30
    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/16 v8, 0x14

    .line 39
    .line 40
    const/4 v9, 0x2

    .line 41
    const/4 v10, 0x1

    .line 42
    sparse-switch v7, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :sswitch_0
    const-string v7, "initial_foreground_service_start_duration"

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    move v7, v9

    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :sswitch_1
    const-string/jumbo v7, "strong_usage_duration"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_1

    .line 69
    .line 70
    const/16 v7, 0x8

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :sswitch_2
    const-string/jumbo v7, "prediction_timeout"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_1

    .line 82
    .line 83
    const/16 v7, 0x9

    .line 84
    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :sswitch_3
    const-string v7, "cross_profile_apps_share_standby_buckets"

    .line 88
    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_1

    .line 94
    .line 95
    move v7, v10

    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :sswitch_4
    const-string v7, "exempted_sync_start_duration"

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_1

    .line 105
    .line 106
    const/16 v7, 0xf

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :sswitch_5
    const-string v7, "broadcast_sessions_duration_ms"

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_1

    .line 117
    .line 118
    const/16 v7, 0x13

    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :sswitch_6
    const-string/jumbo v7, "notification_seen_promoted_bucket"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_1

    .line 130
    .line 131
    const/4 v7, 0x4

    .line 132
    goto/16 :goto_2

    .line 133
    .line 134
    :sswitch_7
    const-string v7, "broadcast_response_fg_threshold_state"

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-eqz v7, :cond_1

    .line 141
    .line 142
    const/16 v7, 0x12

    .line 143
    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :sswitch_8
    const-string v7, "exempted_sync_scheduled_nd_duration"

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_1

    .line 153
    .line 154
    const/16 v7, 0xe

    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :sswitch_9
    const-string/jumbo v7, "retain_notification_seen_impact_for_pre_t_apps"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_1

    .line 166
    .line 167
    const/4 v7, 0x5

    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :sswitch_a
    const-string v7, "exempted_sync_scheduled_d_duration"

    .line 171
    .line 172
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_1

    .line 177
    .line 178
    const/16 v7, 0xd

    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :sswitch_b
    const-string v7, "broadcast_response_window_timeout_ms"

    .line 183
    .line 184
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_1

    .line 189
    .line 190
    const/16 v7, 0x11

    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :sswitch_c
    const-string v7, "brodacast_response_exempted_roles"

    .line 195
    .line 196
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-eqz v7, :cond_1

    .line 201
    .line 202
    const/16 v7, 0x16

    .line 203
    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :sswitch_d
    const-string/jumbo v7, "system_update_usage_duration"

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-eqz v7, :cond_1

    .line 214
    .line 215
    const/16 v7, 0xb

    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :sswitch_e
    const-string/jumbo v7, "note_response_event_for_all_broadcast_sessions"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-eqz v7, :cond_1

    .line 227
    .line 228
    const/16 v7, 0x15

    .line 229
    .line 230
    goto/16 :goto_2

    .line 231
    .line 232
    :sswitch_f
    const-string/jumbo v7, "system_interaction_duration"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-eqz v7, :cond_1

    .line 240
    .line 241
    const/16 v7, 0xa

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :sswitch_10
    const-string/jumbo v7, "notification_seen_duration"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_1

    .line 252
    .line 253
    const/4 v7, 0x3

    .line 254
    goto :goto_2

    .line 255
    :sswitch_11
    const-string v7, "auto_restricted_bucket_delay_ms"

    .line 256
    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_1

    .line 262
    .line 263
    move v7, v4

    .line 264
    goto :goto_2

    .line 265
    :sswitch_12
    const-string/jumbo v7, "slice_pinned_duration"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-eqz v7, :cond_1

    .line 273
    .line 274
    const/4 v7, 0x7

    .line 275
    goto :goto_2

    .line 276
    :sswitch_13
    const-string v7, "broadcast_sessions_with_response_duration_ms"

    .line 277
    .line 278
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    if-eqz v7, :cond_1

    .line 283
    .line 284
    move v7, v8

    .line 285
    goto :goto_2

    .line 286
    :sswitch_14
    const-string/jumbo v7, "unexempted_sync_scheduled_duration"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-eqz v7, :cond_1

    .line 294
    .line 295
    const/16 v7, 0x10

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :sswitch_15
    const-string/jumbo v7, "trigger_quota_bump_on_notification_seen"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eqz v7, :cond_1

    .line 306
    .line 307
    const/4 v7, 0x6

    .line 308
    goto :goto_2

    .line 309
    :sswitch_16
    const-string v7, "brodacast_response_exempted_permissions"

    .line 310
    .line 311
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-eqz v7, :cond_1

    .line 316
    .line 317
    const/16 v7, 0x17

    .line 318
    .line 319
    goto :goto_2

    .line 320
    :sswitch_17
    const-string/jumbo v7, "sync_adapter_duration"

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    if-eqz v7, :cond_1

    .line 328
    .line 329
    const/16 v7, 0xc

    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_1
    :goto_1
    const/4 v7, -0x1

    .line 333
    :goto_2
    const-wide/32 v11, 0x1d4c0

    .line 334
    .line 335
    .line 336
    const-wide/32 v13, 0x927c0

    .line 337
    .line 338
    .line 339
    packed-switch v7, :pswitch_data_0

    .line 340
    .line 341
    .line 342
    if-nez v5, :cond_5

    .line 343
    .line 344
    const-string/jumbo v7, "screen_threshold_"

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-nez v7, :cond_2

    .line 352
    .line 353
    const-string v7, "elapsed_threshold_"

    .line 354
    .line 355
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-eqz v7, :cond_5

    .line 360
    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateTimeThresholds()V

    .line 362
    .line 363
    .line 364
    move v5, v10

    .line 365
    goto/16 :goto_5

    .line 366
    .line 367
    :pswitch_0
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 368
    .line 369
    const-string v8, "brodacast_response_exempted_permissions"

    .line 370
    .line 371
    const-string v9, ""

    .line 372
    .line 373
    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    iput-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 378
    .line 379
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 380
    .line 381
    iget-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 382
    .line 383
    new-instance v9, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .line 387
    .line 388
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 389
    .line 390
    invoke-virtual {v10, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    :goto_3
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 394
    .line 395
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 396
    .line 397
    .line 398
    move-result v8

    .line 399
    if-eqz v8, :cond_3

    .line 400
    .line 401
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 402
    .line 403
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    goto :goto_3

    .line 411
    :cond_3
    iput-object v9, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    .line 412
    .line 413
    goto/16 :goto_5

    .line 414
    .line 415
    :pswitch_1
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 416
    .line 417
    const-string v8, "brodacast_response_exempted_roles"

    .line 418
    .line 419
    const-string v9, ""

    .line 420
    .line 421
    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    iput-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 426
    .line 427
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 428
    .line 429
    iget-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 430
    .line 431
    new-instance v9, Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .line 435
    .line 436
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 437
    .line 438
    invoke-virtual {v10, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    :goto_4
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 442
    .line 443
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-eqz v8, :cond_4

    .line 448
    .line 449
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 450
    .line 451
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v8

    .line 455
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_4
    iput-object v9, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    .line 460
    .line 461
    goto/16 :goto_5

    .line 462
    .line 463
    :pswitch_2
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 464
    .line 465
    const-string/jumbo v8, "note_response_event_for_all_broadcast_sessions"

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v8, v10}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 469
    .line 470
    .line 471
    move-result v8

    .line 472
    iput-boolean v8, v7, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    .line 473
    .line 474
    goto/16 :goto_5

    .line 475
    .line 476
    :pswitch_3
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 477
    .line 478
    const-string v8, "broadcast_sessions_with_response_duration_ms"

    .line 479
    .line 480
    invoke-virtual {v1, v8, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 481
    .line 482
    .line 483
    move-result-wide v8

    .line 484
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    .line 485
    .line 486
    goto/16 :goto_5

    .line 487
    .line 488
    :pswitch_4
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 489
    .line 490
    const-string v8, "broadcast_sessions_duration_ms"

    .line 491
    .line 492
    invoke-virtual {v1, v8, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 493
    .line 494
    .line 495
    move-result-wide v8

    .line 496
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    .line 497
    .line 498
    goto/16 :goto_5

    .line 499
    .line 500
    :pswitch_5
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 501
    .line 502
    const-string v8, "broadcast_response_fg_threshold_state"

    .line 503
    .line 504
    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 505
    .line 506
    .line 507
    move-result v8

    .line 508
    iput v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    .line 509
    .line 510
    goto/16 :goto_5

    .line 511
    .line 512
    :pswitch_6
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 513
    .line 514
    const-string v8, "broadcast_response_window_timeout_ms"

    .line 515
    .line 516
    invoke-virtual {v1, v8, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 517
    .line 518
    .line 519
    move-result-wide v8

    .line 520
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    .line 521
    .line 522
    goto/16 :goto_5

    .line 523
    .line 524
    :pswitch_7
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 525
    .line 526
    const-string/jumbo v8, "unexempted_sync_scheduled_duration"

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 530
    .line 531
    .line 532
    move-result-wide v8

    .line 533
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 534
    .line 535
    goto/16 :goto_5

    .line 536
    .line 537
    :pswitch_8
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 538
    .line 539
    const-string v8, "exempted_sync_start_duration"

    .line 540
    .line 541
    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 542
    .line 543
    .line 544
    move-result-wide v8

    .line 545
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 546
    .line 547
    goto/16 :goto_5

    .line 548
    .line 549
    :pswitch_9
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 550
    .line 551
    const-string v8, "exempted_sync_scheduled_nd_duration"

    .line 552
    .line 553
    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 554
    .line 555
    .line 556
    move-result-wide v8

    .line 557
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 558
    .line 559
    goto/16 :goto_5

    .line 560
    .line 561
    :pswitch_a
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 562
    .line 563
    const-string v8, "exempted_sync_scheduled_d_duration"

    .line 564
    .line 565
    const-wide/32 v9, 0xdbba00

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 569
    .line 570
    .line 571
    move-result-wide v8

    .line 572
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 573
    .line 574
    goto/16 :goto_5

    .line 575
    .line 576
    :pswitch_b
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 577
    .line 578
    const-string/jumbo v8, "sync_adapter_duration"

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 582
    .line 583
    .line 584
    move-result-wide v8

    .line 585
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 586
    .line 587
    goto/16 :goto_5

    .line 588
    .line 589
    :pswitch_c
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 590
    .line 591
    const-string/jumbo v8, "system_update_usage_duration"

    .line 592
    .line 593
    .line 594
    const-wide/32 v9, 0x6ddd00

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 598
    .line 599
    .line 600
    move-result-wide v8

    .line 601
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 602
    .line 603
    goto/16 :goto_5

    .line 604
    .line 605
    :pswitch_d
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 606
    .line 607
    const-string/jumbo v8, "system_interaction_duration"

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 611
    .line 612
    .line 613
    move-result-wide v8

    .line 614
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 615
    .line 616
    goto/16 :goto_5

    .line 617
    .line 618
    :pswitch_e
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 619
    .line 620
    const-string/jumbo v8, "prediction_timeout"

    .line 621
    .line 622
    .line 623
    const-wide/32 v9, 0x2932e00

    .line 624
    .line 625
    .line 626
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 627
    .line 628
    .line 629
    move-result-wide v8

    .line 630
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 631
    .line 632
    goto/16 :goto_5

    .line 633
    .line 634
    :pswitch_f
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 635
    .line 636
    const-string/jumbo v8, "strong_usage_duration"

    .line 637
    .line 638
    .line 639
    const-wide/32 v9, 0x36ee80

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 643
    .line 644
    .line 645
    move-result-wide v8

    .line 646
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 647
    .line 648
    goto :goto_5

    .line 649
    :pswitch_10
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 650
    .line 651
    const-string/jumbo v8, "slice_pinned_duration"

    .line 652
    .line 653
    .line 654
    const-wide/32 v9, 0x2932e00

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 658
    .line 659
    .line 660
    move-result-wide v8

    .line 661
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    .line 662
    .line 663
    goto :goto_5

    .line 664
    :pswitch_11
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 665
    .line 666
    const-string/jumbo v8, "trigger_quota_bump_on_notification_seen"

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1, v8, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 670
    .line 671
    .line 672
    move-result v8

    .line 673
    iput-boolean v8, v7, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    .line 674
    .line 675
    goto :goto_5

    .line 676
    :pswitch_12
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 677
    .line 678
    const-string/jumbo v8, "retain_notification_seen_impact_for_pre_t_apps"

    .line 679
    .line 680
    .line 681
    invoke-virtual {v1, v8, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 682
    .line 683
    .line 684
    move-result v8

    .line 685
    iput-boolean v8, v7, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    .line 686
    .line 687
    goto :goto_5

    .line 688
    :pswitch_13
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 689
    .line 690
    const-string/jumbo v9, "notification_seen_promoted_bucket"

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1, v9, v8}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 694
    .line 695
    .line 696
    move-result v8

    .line 697
    iput v8, v7, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 698
    .line 699
    goto :goto_5

    .line 700
    :pswitch_14
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 701
    .line 702
    const-string/jumbo v8, "notification_seen_duration"

    .line 703
    .line 704
    .line 705
    const-wide/32 v9, 0x2932e00

    .line 706
    .line 707
    .line 708
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 709
    .line 710
    .line 711
    move-result-wide v8

    .line 712
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 713
    .line 714
    goto :goto_5

    .line 715
    :pswitch_15
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 716
    .line 717
    const-string v8, "initial_foreground_service_start_duration"

    .line 718
    .line 719
    const-wide/32 v9, 0x1b7740

    .line 720
    .line 721
    .line 722
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 723
    .line 724
    .line 725
    move-result-wide v8

    .line 726
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 727
    .line 728
    goto :goto_5

    .line 729
    :pswitch_16
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 730
    .line 731
    const-string v8, "cross_profile_apps_share_standby_buckets"

    .line 732
    .line 733
    invoke-virtual {v1, v8, v10}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 734
    .line 735
    .line 736
    move-result v8

    .line 737
    iput-boolean v8, v7, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    .line 738
    .line 739
    goto :goto_5

    .line 740
    :pswitch_17
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 741
    .line 742
    iget-object v7, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 743
    .line 744
    const-string v8, "auto_restricted_bucket_delay_ms"

    .line 745
    .line 746
    const-wide/32 v9, 0x36ee80

    .line 747
    .line 748
    .line 749
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 750
    .line 751
    .line 752
    move-result-wide v8

    .line 753
    const-wide/32 v10, 0xdbba00

    .line 754
    .line 755
    .line 756
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 757
    .line 758
    .line 759
    move-result-wide v8

    .line 760
    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 761
    .line 762
    :cond_5
    :goto_5
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 763
    .line 764
    iget-object v7, v7, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    .line 765
    .line 766
    const/4 v8, 0x0

    .line 767
    invoke-virtual {v1, v6, v8}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v8

    .line 771
    check-cast v7, Landroid/util/ArrayMap;

    .line 772
    .line 773
    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    goto/16 :goto_0

    .line 777
    .line 778
    :cond_6
    monitor-exit v2

    .line 779
    return-void

    .line 780
    :goto_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    throw v0

    .line 782
    nop

    .line 783
    :sswitch_data_0
    .sparse-switch
        -0x76b36a58 -> :sswitch_17
        -0x75045963 -> :sswitch_16
        -0x6afce736 -> :sswitch_15
        -0x6000e4de -> :sswitch_14
        -0x5ae629d8 -> :sswitch_13
        -0x3f649292 -> :sswitch_12
        -0x3a025ebd -> :sswitch_11
        -0x2976517c -> :sswitch_10
        -0x27006ecf -> :sswitch_f
        -0x2640551b -> :sswitch_e
        -0x213d7968 -> :sswitch_d
        -0x118af86a -> :sswitch_c
        -0x7b1914d -> :sswitch_b
        -0x36fd73c -> :sswitch_a
        0x107a759e -> :sswitch_9
        0x1b373ae8 -> :sswitch_8
        0x2c3f9a7f -> :sswitch_7
        0x37ee8ef5 -> :sswitch_6
        0x3b245c4d -> :sswitch_5
        0x41e851f4 -> :sswitch_4
        0x4ccb367f -> :sswitch_3
        0x5227fdb1 -> :sswitch_2
        0x5375dd1a -> :sswitch_1
        0x722857dc -> :sswitch_0
    .end sparse-switch

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateSettings()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const v2, 0x1110167

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "app_standby_enabled"

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "adaptive_battery_management_enabled"

    .line 41
    .line 42
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ne v0, v4, :cond_0

    .line 47
    .line 48
    move v0, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v0, v3

    .line 51
    :goto_0
    if-eqz v1, :cond_1

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v4, v3

    .line 57
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final updateTimeThresholds()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "app_standby"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 32
    .line 33
    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    .line 34
    .line 35
    sget-object v5, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    .line 36
    .line 37
    invoke-static {v1, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 46
    .line 47
    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    .line 48
    .line 49
    sget-object v4, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    .line 50
    .line 51
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    aget-wide v0, v0, v1

    .line 63
    .line 64
    const-wide/16 v2, 0x4

    .line 65
    .line 66
    div-long/2addr v0, v2

    .line 67
    const-wide/32 v2, 0xdbba00

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 75
    .line 76
    return-void
.end method
