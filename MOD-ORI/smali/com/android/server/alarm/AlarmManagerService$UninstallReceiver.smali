.class public final Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance p2, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v0, "package"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, p0, p2, v1, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    new-instance p2, Landroid/content/IntentFilter;

    .line 51
    .line 52
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "android.intent.action.USER_STOPPED"

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "android.intent.action.UID_REMOVED"

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p0, p2, v1, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 79
    .line 80
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance p2, Landroid/content/IntentFilter;

    .line 84
    .line 85
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/16 v0, 0x3e8

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    iget p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 12
    .line 13
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->interactiveStateChangedLocked(Z)V

    .line 24
    .line 25
    .line 26
    monitor-exit p1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :pswitch_0
    const-string p1, "android.intent.extra.UID"

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v1

    .line 43
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x1

    .line 52
    const/4 v5, 0x0

    .line 53
    sparse-switch v3, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :sswitch_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    const/4 v2, 0x5

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto/16 :goto_a

    .line 70
    .line 71
    :sswitch_1
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    const/4 v2, 0x7

    .line 80
    goto :goto_1

    .line 81
    :sswitch_2
    const-string v3, "android.intent.action.USER_STOPPED"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    move v2, v4

    .line 90
    goto :goto_1

    .line 91
    :sswitch_3
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_0

    .line 98
    .line 99
    const/16 v2, 0x8

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :sswitch_4
    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_0

    .line 109
    .line 110
    const/4 v2, 0x2

    .line 111
    goto :goto_1

    .line 112
    :sswitch_5
    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_0

    .line 119
    .line 120
    move v2, v5

    .line 121
    goto :goto_1

    .line 122
    :sswitch_6
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_0

    .line 129
    .line 130
    const/4 v2, 0x6

    .line 131
    goto :goto_1

    .line 132
    :sswitch_7
    const-string v3, "android.intent.action.UID_REMOVED"

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_0

    .line 139
    .line 140
    const/4 v2, 0x4

    .line 141
    goto :goto_1

    .line 142
    :sswitch_8
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_0

    .line 149
    .line 150
    const/4 v2, 0x3

    .line 151
    goto :goto_1

    .line 152
    :cond_0
    :goto_0
    move v2, v0

    .line 153
    :goto_1
    const/16 v3, 0xb

    .line 154
    .line 155
    packed-switch v2, :pswitch_data_1

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :pswitch_1
    const-string v0, "android.intent.extra.REPLACING"

    .line 160
    .line 161
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    .line 167
    monitor-exit v1

    .line 168
    goto/16 :goto_9

    .line 169
    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    .line 172
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 173
    .line 174
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 175
    .line 176
    .line 177
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    if-eqz p2, :cond_2

    .line 182
    .line 183
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    if-eqz p2, :cond_2

    .line 188
    .line 189
    filled-new-array {p2}, [Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    goto :goto_3

    .line 194
    :cond_2
    :goto_2
    const/4 p2, 0x0

    .line 195
    goto :goto_3

    .line 196
    :pswitch_3
    const-string v0, "android.intent.extra.changed_package_list"

    .line 197
    .line 198
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    :goto_3
    if-eqz p2, :cond_8

    .line 203
    .line 204
    array-length v0, p2

    .line 205
    if-lez v0, :cond_8

    .line 206
    .line 207
    array-length v0, p2

    .line 208
    move v2, v5

    .line 209
    :goto_4
    if-ge v2, v0, :cond_8

    .line 210
    .line 211
    aget-object v3, p2, v2

    .line 212
    .line 213
    if-ltz p1, :cond_4

    .line 214
    .line 215
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 216
    .line 217
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 218
    .line 219
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {v7, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 231
    .line 232
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 236
    .line 237
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 238
    .line 239
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-static {v7, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 251
    .line 252
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 256
    .line 257
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 258
    .line 259
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-static {v7, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 271
    .line 272
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 276
    .line 277
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 278
    .line 279
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-static {v7, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 291
    .line 292
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 296
    .line 297
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    const/16 v7, 0x3e8

    .line 301
    .line 302
    if-ne p1, v7, :cond_3

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_3
    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    .line 306
    .line 307
    const/4 v8, 0x0

    .line 308
    invoke-direct {v7, p1, v8}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(II)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6, v5, v7}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_4
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 316
    .line 317
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    if-nez v3, :cond_5

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_5
    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    .line 324
    .line 325
    const/4 v8, 0x2

    .line 326
    invoke-direct {v7, v8, v3}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v5, v7}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 330
    .line 331
    .line 332
    :goto_5
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 333
    .line 334
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 335
    .line 336
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    sub-int/2addr v6, v4

    .line 341
    :goto_6
    if-ltz v6, :cond_7

    .line 342
    .line 343
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 344
    .line 345
    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 346
    .line 347
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    check-cast v7, Landroid/util/ArrayMap;

    .line 352
    .line 353
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    if-eqz v8, :cond_6

    .line 358
    .line 359
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 360
    .line 361
    .line 362
    move-result v7

    .line 363
    if-gtz v7, :cond_6

    .line 364
    .line 365
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 366
    .line 367
    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 368
    .line 369
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 370
    .line 371
    .line 372
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 376
    .line 377
    goto/16 :goto_4

    .line 378
    .line 379
    :cond_8
    monitor-exit v1

    .line 380
    goto/16 :goto_9

    .line 381
    .line 382
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 383
    .line 384
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 385
    .line 386
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    .line 388
    .line 389
    const-string v2, "android.intent.extra.REPLACING"

    .line 390
    .line 391
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-eqz v2, :cond_9

    .line 396
    .line 397
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 398
    .line 399
    .line 400
    move-result-object p2

    .line 401
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p2

    .line 405
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 406
    .line 407
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 408
    .line 409
    const/16 v2, 0xd

    .line 410
    .line 411
    invoke-virtual {p0, v2, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 416
    .line 417
    .line 418
    :cond_9
    monitor-exit v1

    .line 419
    goto/16 :goto_9

    .line 420
    .line 421
    :pswitch_5
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 422
    .line 423
    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 424
    .line 425
    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 426
    .line 427
    .line 428
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 429
    .line 430
    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 431
    .line 432
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 433
    .line 434
    .line 435
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 436
    .line 437
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 438
    .line 439
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 440
    .line 441
    .line 442
    monitor-exit v1

    .line 443
    goto/16 :goto_9

    .line 444
    .line 445
    :pswitch_6
    const-string p1, "android.intent.extra.user_handle"

    .line 446
    .line 447
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    if-ltz p1, :cond_a

    .line 452
    .line 453
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 454
    .line 455
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    :cond_a
    monitor-exit v1

    .line 459
    goto/16 :goto_9

    .line 460
    .line 461
    :pswitch_7
    const-string p1, "android.intent.extra.user_handle"

    .line 462
    .line 463
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    if-ltz p1, :cond_b

    .line 468
    .line 469
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 470
    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    :cond_b
    monitor-exit v1

    .line 475
    goto :goto_9

    .line 476
    :pswitch_8
    const-string p1, "android.intent.extra.user_handle"

    .line 477
    .line 478
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 479
    .line 480
    .line 481
    move-result p1

    .line 482
    if-ltz p1, :cond_d

    .line 483
    .line 484
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 485
    .line 486
    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeUserLocked(I)V

    .line 487
    .line 488
    .line 489
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 490
    .line 491
    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 492
    .line 493
    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 494
    .line 495
    .line 496
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 497
    .line 498
    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 499
    .line 500
    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 501
    .line 502
    .line 503
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 504
    .line 505
    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 506
    .line 507
    invoke-virtual {p2, p1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 508
    .line 509
    .line 510
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 511
    .line 512
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 513
    .line 514
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 515
    .line 516
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 517
    .line 518
    .line 519
    move-result p2

    .line 520
    sub-int/2addr p2, v4

    .line 521
    :goto_7
    if-ltz p2, :cond_d

    .line 522
    .line 523
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 524
    .line 525
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    check-cast v0, Landroid/content/pm/UserPackage;

    .line 530
    .line 531
    iget v0, v0, Landroid/content/pm/UserPackage;->userId:I

    .line 532
    .line 533
    if-ne v0, p1, :cond_c

    .line 534
    .line 535
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 536
    .line 537
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    :cond_c
    add-int/lit8 p2, p2, -0x1

    .line 541
    .line 542
    goto :goto_7

    .line 543
    :cond_d
    monitor-exit v1

    .line 544
    goto :goto_9

    .line 545
    :pswitch_9
    const-string v2, "android.intent.extra.PACKAGES"

    .line 546
    .line 547
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p2

    .line 551
    array-length v2, p2

    .line 552
    :goto_8
    if-ge v5, v2, :cond_f

    .line 553
    .line 554
    aget-object v3, p2, v5

    .line 555
    .line 556
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 557
    .line 558
    invoke-virtual {v4, p1, v3}, Lcom/android/server/alarm/AlarmManagerService;->lookForPackageLocked(ILjava/lang/String;)Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-eqz v3, :cond_e

    .line 563
    .line 564
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 565
    .line 566
    .line 567
    monitor-exit v1

    .line 568
    goto :goto_9

    .line 569
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 570
    .line 571
    goto :goto_8

    .line 572
    :cond_f
    monitor-exit v1

    .line 573
    :goto_9
    return-void

    .line 574
    :goto_a
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 575
    throw p0

    .line 576
    nop

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_8
        -0x6849e2b4 -> :sswitch_7
        -0x53ae571d -> :sswitch_6
        -0x3ff1ba66 -> :sswitch_5
        -0x35f22cb2 -> :sswitch_4
        -0x2d2ad030 -> :sswitch_3
        -0x2c3dc982 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
