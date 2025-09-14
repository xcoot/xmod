.class public final Lcom/android/server/rollback/RollbackManagerServiceImpl;
.super Landroid/content/rollback/IRollbackManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/rollback/RollbackManagerInternal;


# static fields
.field public static final DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

.field public static final HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

.field public static final LOCAL_LOGV:Z


# instance fields
.field public final mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

.field public final mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final mRandom:Ljava/util/Random;

.field public mRelativeBootTime:J

.field public mRollbackLifetimeDurationInMillis:J

.field public final mRollbackStore:Lcom/android/server/rollback/RollbackStore;

.field public final mRollbacks:Ljava/util/List;

.field public final mRunExpiration:Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

.field public final mSleepDuration:Landroid/util/LongArrayQueue;

.field public final mUserBroadcastReceivers:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "RollbackManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 9
    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    const-wide/16 v1, 0xe

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    .line 19
    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    const-wide/16 v1, 0xa

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/content/rollback/IRollbackManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 7
    .line 8
    new-instance v0, Ljava/security/SecureRandom;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    .line 14
    .line 15
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 36
    .line 37
    new-instance v0, Landroid/util/LongArrayQueue;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    sub-long/2addr v0, v2

    .line 53
    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    new-instance v0, Lcom/android/server/pm/Installer;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/android/server/rollback/RollbackStore;

    .line 68
    .line 69
    new-instance v2, Ljava/io/File;

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string/jumbo v4, "rollback"

    .line 76
    .line 77
    .line 78
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Ljava/io/File;

    .line 82
    .line 83
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string/jumbo v5, "rollback-history"

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v2, v3}, Lcom/android/server/rollback/RollbackStore;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 97
    .line 98
    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 99
    .line 100
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v1, p1, v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;-><init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 108
    .line 109
    new-instance v1, Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 110
    .line 111
    invoke-direct {v1, v0}, Lcom/android/server/rollback/AppDataRollbackHelper;-><init>(Lcom/android/server/pm/Installer;)V

    .line 112
    .line 113
    .line 114
    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 115
    .line 116
    const-string v0, "RollbackManagerServiceHandler"

    .line 117
    .line 118
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v1, Landroid/os/Handler;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 132
    .line 133
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-wide v2, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 143
    .line 144
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 148
    .line 149
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;

    .line 150
    .line 151
    const/4 v2, 0x2

    .line 152
    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    .line 157
    .line 158
    new-instance v0, Landroid/util/ArrayMap;

    .line 159
    .line 160
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mUserBroadcastReceivers:Landroid/util/ArrayMap;

    .line 164
    .line 165
    const-class v0, Landroid/os/UserManager;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroid/os/UserManager;

    .line 172
    .line 173
    const/4 v0, 0x1

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Landroid/os/UserHandle;

    .line 193
    .line 194
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_0
    const-string p1, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    .line 199
    .line 200
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    :try_start_0
    const-string v0, "application/vnd.android.package-archive"

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "RollbackManager"

    .line 212
    .line 213
    const-string v2, "addDataType"

    .line 214
    .line 215
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .line 217
    .line 218
    :goto_1
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    .line 221
    .line 222
    const/4 v2, 0x0

    .line 223
    invoke-direct {v1, p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 224
    .line 225
    .line 226
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 227
    .line 228
    const/4 v3, 0x0

    .line 229
    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 230
    .line 231
    .line 232
    new-instance p1, Landroid/content/IntentFilter;

    .line 233
    .line 234
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v0, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    .line 245
    .line 246
    const/4 v2, 0x1

    .line 247
    invoke-direct {v1, p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 248
    .line 249
    .line 250
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 251
    .line 252
    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    new-instance p1, Landroid/content/IntentFilter;

    .line 256
    .line 257
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string v0, "android.intent.action.USER_ADDED"

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 271
    .line 272
    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    .line 273
    .line 274
    const/4 v2, 0x2

    .line 275
    invoke-direct {v1, p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 276
    .line 277
    .line 278
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 279
    .line 280
    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    new-instance p1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    .line 284
    .line 285
    const/4 v0, 0x4

    .line 286
    invoke-direct {p1, p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 287
    .line 288
    .line 289
    const-string v0, "android.intent.action.TIME_SET"

    .line 290
    .line 291
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 296
    .line 297
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 298
    .line 299
    invoke-virtual {v1, p1, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    return-void
.end method

.method public static getExtensionVersions()Landroid/util/SparseIntArray;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/ext/SdkExtensions;->getAllExtensionVersions()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/SparseIntArray;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object v1
.end method

.method public static sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "RollbackManager"

    .line 2
    .line 3
    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.content.rollback.extra.STATUS"

    .line 12
    .line 13
    invoke-virtual {v4, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p0, "android.content.rollback.extra.STATUS_MESSAGE"

    .line 17
    .line 18
    invoke-virtual {v4, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v1, p2

    .line 25
    move-object v2, p1

    .line 26
    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    return-void
.end method


# virtual methods
.method public final assertInWorkerThread()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final assertNotInWorkerThread()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final awaitResult(Ljava/lang/Runnable;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, p0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final blockRollbackManager(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    .line 7
    .line 8
    const-string v2, "blockRollbackManager"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;JI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    .line 3
    .line 4
    const-string v0, "commitRollback"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-class v2, Landroid/app/AppOpsManager;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/app/AppOpsManager;

    .line 22
    .line 23
    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    new-instance v7, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;

    .line 29
    .line 30
    move-object v1, v7

    .line 31
    move-object v2, p0

    .line 32
    move v3, p1

    .line 33
    move-object v4, p2

    .line 34
    move-object v5, p3

    .line 35
    move-object v6, p4

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 5
    .line 6
    const-string v1, "RollbackManager"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "completeEnableRollback id="

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->allPackagesEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const-string v0, "Failed to enable rollback for all packages in session."

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const-string v0, "Failed to enable rollback for all packages in session"

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 59
    .line 60
    .line 61
    iget-object p0, p1, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 62
    .line 63
    invoke-static {p1, p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 6
    .line 7
    .line 8
    iget-object v3, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 9
    .line 10
    const-string v4, "ApexManager"

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 13
    .line 14
    .line 15
    new-instance v5, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const/4 v7, 0x0

    .line 31
    move v8, v7

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v9, v0

    .line 43
    check-cast v9, Landroid/content/rollback/PackageRollbackInfo;

    .line 44
    .line 45
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v11, v7

    .line 61
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ge v11, v0, :cond_0

    .line 66
    .line 67
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    iget-object v0, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 80
    .line 81
    .line 82
    move-result v18

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    :try_start_0
    iget-object v0, v3, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 87
    .line 88
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 93
    .line 94
    .line 95
    move-result v12
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    if-nez v12, :cond_2

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    :try_start_1
    iget-object v12, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 100
    .line 101
    const/4 v13, 0x0

    .line 102
    const-wide/16 v16, 0x0

    .line 103
    .line 104
    const/16 v19, 0x3

    .line 105
    .line 106
    invoke-interface/range {v12 .. v19}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_2
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 112
    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    throw v0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :catch_1
    move-exception v0

    .line 117
    new-instance v12, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v13, "Unable to delete app data snapshot for "

    .line 120
    .line 121
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    const-string v13, "RollbackManager"

    .line 136
    .line 137
    invoke-static {v13, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .line 139
    .line 140
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    if-eqz v8, :cond_5

    .line 144
    .line 145
    iget-object v0, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget-object v6, v3, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 152
    .line 153
    check-cast v6, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-interface {v6, v0}, Landroid/apex/IApexService;->destroyDeSnapshots(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catch_2
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    :goto_3
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    :cond_4
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_5

    .line 183
    .line 184
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    iget-object v6, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 195
    .line 196
    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    invoke-virtual {v3, v0}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-nez v7, :cond_4

    .line 205
    .line 206
    iget-object v7, v3, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 207
    .line 208
    check-cast v7, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    :try_start_4
    invoke-virtual {v7}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-interface {v7, v0, v6}, Landroid/apex/IApexService;->destroyCeSnapshots(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :catch_3
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_5
    iget-object v0, v2, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 233
    .line 234
    .line 235
    const/4 v0, 0x4

    .line 236
    move-object/from16 v3, p2

    .line 237
    .line 238
    invoke-virtual {v2, v0, v3}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 247
    .line 248
    .line 249
    iget-object v1, v2, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    .line 252
    .line 253
    .line 254
    move-result-wide v3

    .line 255
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iget-object v3, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 260
    .line 261
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    new-instance v4, Ljava/io/File;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/android/server/rollback/RollbackStore;->mRollbackHistoryDir:Ljava/io/File;

    .line 272
    .line 273
    const-string v5, "-"

    .line 274
    .line 275
    invoke-static {v3, v5, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-static {v2, v4}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 283
    .line 284
    .line 285
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string p3, "RollbackManager"

    .line 7
    .line 8
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 16
    .line 17
    const-string p3, "  "

    .line 18
    .line 19
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string p2, "Package Watchdog status"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter p2

    .line 51
    :try_start_0
    iget-object p3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "Observer name: "

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    monitor-exit p2

    .line 114
    return-void

    .line 115
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method

.method public final enforceManageRollbacks(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_ROLLBACKS"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "android.permission.TEST_MANAGE_ROLLBACKS"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 23
    .line 24
    const-string v0, " requires android.permission.MANAGE_ROLLBACKS or android.permission.TEST_MANAGE_ROLLBACKS"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final expireRollbackForPackage(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    .line 7
    .line 8
    const-string v2, "expireRollbackForPackage"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final expireRollbackForPackageInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 5
    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 25
    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method

.method public final getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    .line 3
    .line 4
    const-string v0, "getAvailableRollbacks"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/content/pm/ParceledListSlice;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/high16 v0, 0x400000

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    .line 3
    .line 4
    const-string v0, "getRecentlyCommittedRollbacks"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/content/pm/ParceledListSlice;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getRollbackForSession(I)Lcom/android/server/rollback/Rollback;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 7
    .line 8
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_3

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 17
    .line 18
    check-cast v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 25
    .line 26
    iget v3, v2, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 27
    .line 28
    if-eq v3, p1, :cond_2

    .line 29
    .line 30
    iget-object v3, v2, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 31
    .line 32
    array-length v4, v3

    .line 33
    move v5, v0

    .line 34
    :goto_1
    if-ge v5, v4, :cond_1

    .line 35
    .line 36
    aget v6, v3, v5

    .line 37
    .line 38
    if-ne v6, p1, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_2
    return-object v2

    .line 48
    :cond_3
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public final makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "makeRollbackAvailable id="

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "RollbackManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 34
    .line 35
    .line 36
    iget v0, p1, Lcom/android/server/rollback/Rollback;->mState:I

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    if-ne v0, v2, :cond_0

    .line 40
    .line 41
    const-string v0, "Cannot make deleted rollback available."

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 48
    const-string v1, ""

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p1, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 58
    .line 59
    iget-object v0, p1, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 65
    .line 66
    iget-object v1, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    new-instance v3, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-direct {v3, v0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->recoverabilityDetection()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackImpactLevel()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->getPackageNames()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 99
    .line 100
    iget-object v3, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3, v0, p1, v1, v2}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->getPackageNames()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 117
    .line 118
    iget-object v3, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3, v0, p1, v1, v2}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final notifyStagedSession(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x3e8

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda5;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 29
    .line 30
    const-string/jumbo p1, "notifyStagedSession may only be called by the system."

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final onPackageReplaced(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 16
    .line 17
    check-cast v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 42
    .line 43
    .line 44
    iget-object v4, v3, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_1

    .line 75
    .line 76
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    cmp-long v5, v5, v0

    .line 85
    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 89
    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v5, "Package "

    .line 94
    .line 95
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v5, " replaced"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {p0, v3, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    return-void
.end method

.method public final registerUserCallbacks(Landroid/os/UserHandle;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-object v1, v0

    .line 15
    :goto_0
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Unable to register user callbacks for user "

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "RollbackManager"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v3, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;

    .line 46
    .line 47
    invoke-direct {v3, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroid/content/IntentFilter;

    .line 56
    .line 57
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v3, "package"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v3, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    .line 77
    .line 78
    const/4 v4, 0x3

    .line 79
    invoke-direct {v3, p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 83
    .line 84
    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mUserBroadcastReceivers:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance v0, Landroid/util/Pair;

    .line 98
    .line 99
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final reloadPersistedData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    .line 7
    .line 8
    const-string/jumbo v2, "reloadPersistedData"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final runExpiration()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->rollbackLifetime()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Expired by timeout"

    .line 6
    .line 7
    const-string v2, "RollbackManager"

    .line 8
    .line 9
    const-string/jumbo v3, "runExpiration id="

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 29
    .line 30
    check-cast v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-wide/16 v5, 0x0

    .line 37
    .line 38
    move-wide v7, v5

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_5

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    check-cast v9, Lcom/android/server/rollback/Rollback;

    .line 50
    .line 51
    invoke-virtual {v9}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-nez v10, :cond_1

    .line 56
    .line 57
    invoke-virtual {v9}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-nez v10, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 65
    .line 66
    .line 67
    iget-wide v10, v9, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 68
    .line 69
    cmp-long v12, v10, v5

    .line 70
    .line 71
    if-gtz v12, :cond_2

    .line 72
    .line 73
    iget-wide v10, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v9}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 76
    .line 77
    .line 78
    iget-object v12, v9, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 79
    .line 80
    invoke-virtual {v12, v10, v11}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v0, v10}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    if-nez v11, :cond_3

    .line 89
    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v11, v9, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 96
    .line 97
    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-static {v2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v9, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    sget-object v9, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 119
    .line 120
    invoke-virtual {v0, v10, v9}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v9

    .line 124
    cmp-long v11, v7, v5

    .line 125
    .line 126
    if-eqz v11, :cond_4

    .line 127
    .line 128
    cmp-long v11, v9, v7

    .line 129
    .line 130
    if-gez v11, :cond_0

    .line 131
    .line 132
    :cond_4
    move-wide v7, v9

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    cmp-long v0, v7, v5

    .line 135
    .line 136
    if-eqz v0, :cond_c

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 141
    .line 142
    invoke-virtual {v0, p0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :cond_6
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 148
    .line 149
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 150
    .line 151
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 162
    .line 163
    check-cast v4, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const/4 v5, 0x0

    .line 170
    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_b

    .line 175
    .line 176
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    check-cast v6, Lcom/android/server/rollback/Rollback;

    .line 181
    .line 182
    invoke-virtual {v6}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-nez v7, :cond_8

    .line 187
    .line 188
    invoke-virtual {v6}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-nez v7, :cond_8

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_8
    invoke-virtual {v6}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 196
    .line 197
    .line 198
    iget-object v7, v6, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 199
    .line 200
    iget-wide v8, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 201
    .line 202
    invoke-virtual {v7, v8, v9}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v0, v8}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-nez v8, :cond_9

    .line 211
    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v8, v6, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 218
    .line 219
    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v6, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_9
    if-eqz v5, :cond_a

    .line 241
    .line 242
    invoke-virtual {v5, v7}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_7

    .line 247
    .line 248
    :cond_a
    move-object v5, v7

    .line 249
    goto :goto_1

    .line 250
    :cond_b
    if-eqz v5, :cond_c

    .line 251
    .line 252
    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 253
    .line 254
    invoke-virtual {v5, v1, v2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 259
    .line 260
    invoke-virtual {v0, v1, v2}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    .line 261
    .line 262
    .line 263
    move-result-wide v0

    .line 264
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 265
    .line 266
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 267
    .line 268
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    .line 270
    .line 271
    :cond_c
    :goto_2
    return-void
.end method

.method public final snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result p4

    .line 8
    const/16 p5, 0x3e8

    .line 9
    .line 10
    if-ne p4, p5, :cond_0

    .line 11
    .line 12
    iget-object p4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance p5, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;

    .line 15
    .line 16
    move-object v0, p5

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move-object v3, p2

    .line 20
    move v4, p3

    .line 21
    move-object v5, p6

    .line 22
    move v6, p7

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IILjava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 31
    .line 32
    const-string/jumbo p1, "snapshotAndRestoreUserData may only be called by the system."

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final updateRollbackLifetimeDurationInMillis()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    .line 5
    .line 6
    const-string/jumbo v2, "rollback_boot"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "rollback_lifetime_in_millis"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iput-wide v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v2, v2, v4

    .line 21
    .line 22
    if-gez v2, :cond_0

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v1, "mRollbackLifetimeDurationInMillis="

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "RollbackManager"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
