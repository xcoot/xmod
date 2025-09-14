.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$1:I

    .line 11
    .line 12
    iget-object v3, v2, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    monitor-exit v3

    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/people/data/UserData;->loadUserData()V

    .line 28
    .line 29
    .line 30
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class v6, Landroid/telecom/TelecomManager;

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/telecom/TelecomManager;

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    new-instance v6, Landroid/os/UserHandle;

    .line 43
    .line 44
    iget v7, v4, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 45
    .line 46
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v6}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v5, v1

    .line 55
    :goto_0
    iput-object v5, v4, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    iget v6, v4, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 60
    .line 61
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const/4 v7, 0x0

    .line 66
    invoke-static {v5, v7, v6}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object v5, v1

    .line 78
    :goto_1
    iput-object v5, v4, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, v2, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    .line 82
    new-instance v9, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    .line 83
    .line 84
    invoke-direct {v9, v2, p0}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;-><init>(Lcom/android/server/people/data/DataManager;I)V

    .line 85
    .line 86
    .line 87
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 88
    .line 89
    const-wide/16 v10, 0x1

    .line 90
    .line 91
    const-wide/16 v12, 0x78

    .line 92
    .line 93
    invoke-interface/range {v8 .. v14}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v5, p0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance v11, Landroid/content/IntentFilter;

    .line 103
    .line 104
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v4, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    .line 108
    .line 109
    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v4, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 113
    .line 114
    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-nez v4, :cond_3

    .line 124
    .line 125
    new-instance v9, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;

    .line 126
    .line 127
    invoke-direct {v9, v2, p0}, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;I)V

    .line 128
    .line 129
    .line 130
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    .line 131
    .line 132
    invoke-virtual {v4, p0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object v8, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    const/4 v12, 0x0

    .line 142
    const/4 v13, 0x0

    .line 143
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    :cond_3
    new-instance v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    .line 147
    .line 148
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-direct {v4, v2, v5}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    .line 153
    .line 154
    .line 155
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {v5, p0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 167
    .line 168
    invoke-virtual {v5, v6, v0, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 169
    .line 170
    .line 171
    new-instance v4, Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 172
    .line 173
    invoke-direct {v4, v2, p0}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;I)V

    .line 174
    .line 175
    .line 176
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    .line 177
    .line 178
    invoke-virtual {v5, p0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .line 180
    .line 181
    :try_start_1
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    new-instance v6, Landroid/content/ComponentName;

    .line 184
    .line 185
    iget-object v8, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    const-class v9, Lcom/android/server/people/data/DataManager;

    .line 188
    .line 189
    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v5, v6, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .line 194
    .line 195
    :catch_0
    :try_start_2
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    .line 196
    .line 197
    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    if-nez v4, :cond_4

    .line 202
    .line 203
    new-instance v4, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;

    .line 204
    .line 205
    invoke-direct {v4, v2}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;-><init>(Lcom/android/server/people/data/DataManager;)V

    .line 206
    .line 207
    .line 208
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v4, v5, v1, v6, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v2, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    .line 218
    .line 219
    invoke-virtual {v1, p0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_4
    if-nez p0, :cond_5

    .line 223
    .line 224
    new-instance v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    .line 225
    .line 226
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-direct {v1, v2, v4}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    .line 231
    .line 232
    .line 233
    iput-object v1, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    .line 234
    .line 235
    iget-object v1, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 236
    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    sget-object v4, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 242
    .line 243
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    .line 244
    .line 245
    invoke-virtual {v1, v4, v0, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 246
    .line 247
    .line 248
    new-instance v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    .line 249
    .line 250
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-direct {v0, v2, v1}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    .line 255
    .line 256
    .line 257
    iput-object v0, v2, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    .line 258
    .line 259
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 260
    .line 261
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    .line 267
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    .line 268
    .line 269
    invoke-virtual {v0, v1, v7, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 270
    .line 271
    .line 272
    :cond_5
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    invoke-static {v0, p0}, Lcom/android/server/people/data/DataMaintenanceService;->scheduleJob(Landroid/content/Context;I)V

    .line 275
    .line 276
    .line 277
    monitor-exit v3

    .line 278
    :goto_2
    return-void

    .line 279
    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    throw p0

    .line 281
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager;

    .line 282
    .line 283
    iget p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$1:I

    .line 284
    .line 285
    iget-object v3, v2, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    .line 286
    .line 287
    monitor-enter v3

    .line 288
    :try_start_3
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 289
    .line 290
    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    check-cast v4, Lcom/android/server/people/data/UserData;

    .line 295
    .line 296
    if-eqz v4, :cond_e

    .line 297
    .line 298
    iget-boolean v4, v4, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    .line 299
    .line 300
    if-eqz v4, :cond_6

    .line 301
    .line 302
    goto/16 :goto_5

    .line 303
    .line 304
    :cond_6
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 305
    .line 306
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    .line 311
    .line 312
    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-ltz v5, :cond_7

    .line 317
    .line 318
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    .line 319
    .line 320
    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    check-cast v5, Ljava/util/concurrent/ScheduledFuture;

    .line 325
    .line 326
    invoke-interface {v5, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :catchall_1
    move-exception p0

    .line 331
    goto/16 :goto_7

    .line 332
    .line 333
    :cond_7
    :goto_4
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    .line 334
    .line 335
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-ltz v0, :cond_8

    .line 340
    .line 341
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    .line 344
    .line 345
    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    check-cast v5, Landroid/content/BroadcastReceiver;

    .line 350
    .line 351
    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    .line 353
    .line 354
    :cond_8
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    .line 355
    .line 356
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-ltz v0, :cond_9

    .line 361
    .line 362
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    .line 363
    .line 364
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    check-cast v0, Landroid/database/ContentObserver;

    .line 369
    .line 370
    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 371
    .line 372
    .line 373
    :cond_9
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    .line 374
    .line 375
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 376
    .line 377
    .line 378
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 379
    if-ltz v0, :cond_a

    .line 380
    .line 381
    :try_start_4
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    .line 382
    .line 383
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 388
    .line 389
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 390
    .line 391
    .line 392
    :catch_1
    :cond_a
    :try_start_5
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    .line 393
    .line 394
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-ltz v0, :cond_b

    .line 399
    .line 400
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    .line 401
    .line 402
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Lcom/android/internal/content/PackageMonitor;

    .line 407
    .line 408
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 409
    .line 410
    .line 411
    :cond_b
    if-nez p0, :cond_d

    .line 412
    .line 413
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    .line 414
    .line 415
    if-eqz v0, :cond_c

    .line 416
    .line 417
    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 418
    .line 419
    .line 420
    iput-object v1, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    .line 421
    .line 422
    :cond_c
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    .line 423
    .line 424
    if-eqz v0, :cond_d

    .line 425
    .line 426
    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 427
    .line 428
    .line 429
    iput-object v1, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    .line 430
    .line 431
    :cond_d
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 432
    .line 433
    sget v1, Lcom/android/server/people/data/DataMaintenanceService;->$r8$clinit:I

    .line 434
    .line 435
    const-class v1, Landroid/app/job/JobScheduler;

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 442
    .line 443
    const v1, 0xc315bd7

    .line 444
    .line 445
    .line 446
    add-int/2addr p0, v1

    .line 447
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 448
    .line 449
    .line 450
    monitor-exit v3

    .line 451
    goto :goto_6

    .line 452
    :cond_e
    :goto_5
    monitor-exit v3

    .line 453
    :goto_6
    return-void

    .line 454
    :goto_7
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 455
    throw p0

    .line 456
    nop

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
