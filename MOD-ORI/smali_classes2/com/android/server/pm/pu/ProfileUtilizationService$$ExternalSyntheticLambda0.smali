.class public final synthetic Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/pu/ProfileUtilizationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "PU"

    .line 7
    .line 8
    const-string v1, "Start utilizing profiles"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "PU_DexoptTrigger"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/android/server/pm/pu/HotAppsWrapper;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->loadAppsList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Lcom/android/server/pm/pu/HotAppsWrapper;-><init>(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 36
    .line 37
    iput-object v0, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    .line 38
    .line 39
    const-string v0, "PU_DexoptTrigger"

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "Got "

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, " apps, start dexopting"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object v0, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    .line 74
    .line 75
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    iget-object v2, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 86
    .line 87
    monitor-enter v2

    .line 88
    :catch_0
    :goto_1
    :try_start_0
    iget-object v3, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 89
    .line 90
    check-cast v3, Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    sget v4, Lcom/android/server/pm/pu/DexoptTrigger;->DEXOPT_CONCURRENCY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    if-ne v3, v4, :cond_0

    .line 99
    .line 100
    :try_start_1
    iget-object v3, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_4

    .line 108
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    iget-object v3, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 110
    .line 111
    monitor-enter v3

    .line 112
    :try_start_3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 117
    .line 118
    iget-object v4, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->isDexoptingAllowed()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    iput-boolean v4, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    .line 125
    .line 126
    iget-object v4, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 127
    .line 128
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :try_start_4
    iget-object v5, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 130
    .line 131
    check-cast v5, Ljava/util/HashSet;

    .line 132
    .line 133
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iget-boolean v5, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    .line 137
    .line 138
    if-eqz v5, :cond_2

    .line 139
    .line 140
    iget-object v5, v2, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 141
    .line 142
    sget-object v6, Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;->OPTIMIZING:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 143
    .line 144
    if-ne v5, v6, :cond_1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_1
    iput-object v6, v2, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 148
    .line 149
    iget-object v5, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 150
    .line 151
    new-instance v6, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    invoke-direct {v6, v1, v2}, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/pu/DexoptTrigger;Lcom/android/server/pm/pu/ProfileUtilizationService$App;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    :goto_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 160
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 161
    goto :goto_0

    .line 162
    :catchall_1
    move-exception p0

    .line 163
    goto :goto_3

    .line 164
    :catchall_2
    move-exception p0

    .line 165
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 166
    :try_start_7
    throw p0

    .line 167
    :goto_3
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 168
    throw p0

    .line 169
    :goto_4
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 170
    throw p0

    .line 171
    :cond_3
    iget-object v0, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 172
    .line 173
    monitor-enter v0

    .line 174
    :catch_1
    :goto_5
    :try_start_9
    iget-object v2, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 175
    .line 176
    check-cast v2, Ljava/util/HashSet;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 182
    if-nez v2, :cond_4

    .line 183
    .line 184
    :try_start_a
    iget-object v2, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :catchall_3
    move-exception p0

    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :cond_4
    const/4 v2, 0x0

    .line 194
    :try_start_b
    iput-boolean v2, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    .line 195
    .line 196
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 197
    iget-object v0, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 200
    .line 201
    .line 202
    const-string v0, "PU"

    .line 203
    .line 204
    const-string v1, "Finish utilizing profiles"

    .line 205
    .line 206
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v0

    .line 213
    iput-wide v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    .line 214
    .line 215
    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 216
    .line 217
    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 218
    .line 219
    iget-object v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 220
    .line 221
    iget-object v3, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 222
    .line 223
    iget-object v3, v3, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    .line 224
    .line 225
    iget-object v1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    .line 226
    .line 227
    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalService:Landroid/os/IThermalService;

    .line 231
    .line 232
    if-nez v1, :cond_5

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_5
    :try_start_c
    iget-object v2, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalListener:Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

    .line 236
    .line 237
    invoke-interface {v1, v2}, Landroid/os/IThermalService;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :catch_2
    move-exception v1

    .line 242
    const-string v2, "PU_StatusWatcher"

    .line 243
    .line 244
    const-string v3, "Thermal unregistration failed"

    .line 245
    .line 246
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .line 248
    .line 249
    :goto_6
    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    .line 250
    .line 251
    iget-object v2, v1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    .line 252
    .line 253
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 258
    .line 259
    .line 260
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 261
    .line 262
    .line 263
    const-string v2, "Service"

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/android/server/pm/pu/ProfileUtilizationService;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    iget-object v4, v1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    .line 270
    .line 271
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    .line 277
    .line 278
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    .line 280
    .line 281
    const-string v2, "Watcher"

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v3, v1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    .line 288
    .line 289
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    .line 295
    .line 296
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    .line 298
    .line 299
    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/android/server/pm/pu/DexoptTrigger;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    const-string v0, "Trigger"

    .line 306
    .line 307
    iget-object v1, v1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    .line 308
    .line 309
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    .line 315
    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :goto_7
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 321
    throw p0
.end method
