.class public final Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;
.super Lcom/samsung/android/provider/IDynamicFeatureManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALLOWED_MCC:Ljava/util/ArrayList;

.field public static mCurrentBroadcastFeature:Lcom/samsung/android/server/dynamicfeature/DFeature;


# instance fields
.field public isWorking:Z

.field public final mButler:Lcom/samsung/android/server/dynamicfeature/Butler;

.field public final mContext:Landroid/content/Context;

.field public final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field public final mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

.field public mDiff:Ljava/util/ArrayList;

.field public final mDynamicFeatureReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

.field public final mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

.field public mFeatures:Ljava/util/ArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public final mHttpConnector:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

.field public mPrefix:Ljava/lang/String;

.field public mPrevMcc:Ljava/lang/String;

.field public final mPreventFlooding:Z

.field public mPw:Ljava/io/PrintWriter;

.field public mRemoved:Ljava/util/ArrayList;

.field public mRequestUpdate:Z

.field public final mServiceLock:Ljava/lang/Object;

.field public mStage:I

.field public mStopUpdateRequest:I

.field public final mTracker:Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;

.field public nextFeatures:Ljava/util/ArrayList;

.field public final postNotifyUpdateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

.field public final requestJobSchedulerRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;

.field public testOnlyBackupTermHandling:J

.field public testOnlyReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

.field public final updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

.field public final updateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;


# direct methods
.method public static -$$Nest$mreleaseUpdate(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "applyDiff want to releaseUpdate"

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mServiceLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRequestUpdate:Z

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "450"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ALLOWED_MCC:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/provider/IDynamicFeatureManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRequestUpdate:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPreventFlooding:Z

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrevMcc:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/Object;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mServiceLock:Ljava/lang/Object;

    .line 35
    .line 36
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 42
    .line 43
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDynamicFeatureReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 50
    .line 51
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 52
    .line 53
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 57
    .line 58
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 65
    .line 66
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 67
    .line 68
    const/4 v3, 0x2

    .line 69
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->postNotifyUpdateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 73
    .line 74
    iput v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 75
    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const-string v2, "DynamicFeatureManagerService launched ========"

    .line 79
    .line 80
    const-string v3, "dynamicfeature_Service"

    .line 81
    .line 82
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 86
    .line 87
    const-string v4, "dynamicfeature_HttpConnector"

    .line 88
    .line 89
    const-string v5, "C"

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v6, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mModelName:Ljava/lang/String;

    .line 97
    .line 98
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    iput v6, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mSdkVersion:I

    .line 101
    .line 102
    const/4 v6, -0x1

    .line 103
    iput v6, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mLastResultCode:I

    .line 104
    .line 105
    new-instance v6, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$1;

    .line 106
    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    .line 113
    .line 114
    iput-object v6, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->updateHandler:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$1;

    .line 115
    .line 116
    iput-object p1, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->isBetaBinaryType()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_0

    .line 123
    .line 124
    const-string v6, "Z"

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-exception v6

    .line 128
    goto :goto_1

    .line 129
    :cond_0
    move-object v6, v5

    .line 130
    :goto_0
    iput-object v6, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mBinaryType:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->getProperty()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    iput-object v6, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mOneUiVersion:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v6, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 139
    .line 140
    iput-object v6, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mFeatures:Ljava/util/ArrayList;

    .line 141
    .line 142
    const-string/jumbo v6, "ro.build.type"

    .line 143
    .line 144
    .line 145
    const-string v7, "UNKNOWN"

    .line 146
    .line 147
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    const-string/jumbo v9, "userdebug"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-nez v8, :cond_1

    .line 159
    .line 160
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const-string v7, "eng"

    .line 165
    .line 166
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_2

    .line 171
    .line 172
    :cond_1
    const-string v6, "This is eng or userdebug binary. "

    .line 173
    .line 174
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    const-string v6, "https://dynamicfeature-stg.dvc.samsung.com/dynamic-feature/"

    .line 178
    .line 179
    sput-object v6, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->server_url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    iput-object v5, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mBinaryType:Ljava/lang/String;

    .line 190
    .line 191
    :cond_2
    :goto_2
    const/4 v4, 0x2

    .line 192
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    iput-object v5, v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 197
    .line 198
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHttpConnector:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 199
    .line 200
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    if-nez v2, :cond_3

    .line 203
    .line 204
    const-string p0, "mContext is null"

    .line 205
    .line 206
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_3
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 211
    .line 212
    const-string v5, "dynamicFeature.db"

    .line 213
    .line 214
    const/4 v6, 0x0

    .line 215
    invoke-direct {v2, p1, v5, v6, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 216
    .line 217
    .line 218
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 219
    .line 220
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 225
    .line 226
    invoke-static {p1}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->loadFeatures(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 231
    .line 232
    const-string v2, "loadInfos "

    .line 233
    .line 234
    :try_start_1
    const-string v5, "SELECT * FROM DF_INFO_TABLE"

    .line 235
    .line 236
    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_5

    .line 245
    .line 246
    const-string/jumbo p1, "virtualid"

    .line 247
    .line 248
    .line 249
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    sget-object v5, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 258
    .line 259
    iget-object v7, v5, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    if-eqz v7, :cond_4

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_4
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 269
    .line 270
    iput-object p1, v5, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 271
    .line 272
    :goto_3
    const-string p1, "jobIntervalMill"

    .line 273
    .line 274
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 279
    .line 280
    .line 281
    move-result-wide v7

    .line 282
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 283
    .line 284
    sget-object p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 285
    .line 286
    iput-wide v7, p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMin:J

    .line 287
    .line 288
    const-string v5, "UT"

    .line 289
    .line 290
    const-string/jumbo v7, "usertrial"

    .line 291
    .line 292
    .line 293
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 306
    .line 307
    iput-boolean v5, p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->isUT:Z

    .line 308
    .line 309
    const-string p1, "lastUpdateTime"

    .line 310
    .line 311
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 320
    .line 321
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 322
    .line 323
    iput-object p1, v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :catchall_0
    move-exception p0

    .line 327
    goto/16 :goto_7

    .line 328
    .line 329
    :catch_1
    move-exception p1

    .line 330
    goto :goto_5

    .line 331
    :cond_5
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 332
    .line 333
    .line 334
    :cond_6
    sput-boolean v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :goto_5
    :try_start_2
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 338
    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    .line 357
    .line 358
    if-eqz v6, :cond_6

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 362
    .line 363
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->loadParams(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 372
    .line 373
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->loadFeatures(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    .line 379
    .line 380
    .line 381
    new-instance p1, Lcom/samsung/android/server/dynamicfeature/Butler;

    .line 382
    .line 383
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 384
    .line 385
    .line 386
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 387
    .line 388
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 389
    .line 390
    .line 391
    iput-object v0, p1, Lcom/samsung/android/server/dynamicfeature/Butler;->featureHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 392
    .line 393
    new-instance v1, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;

    .line 394
    .line 395
    const/4 v2, 0x0

    .line 396
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/dynamicfeature/Butler;I)V

    .line 397
    .line 398
    .line 399
    const-string v2, "EXECUTABLE_BINARY_TYPE"

    .line 400
    .line 401
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    new-instance v1, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;

    .line 405
    .line 406
    const/4 v2, 0x1

    .line 407
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/dynamicfeature/Butler;I)V

    .line 408
    .line 409
    .line 410
    const-string v2, "UPDATE_INTERVAL_MIN"

    .line 411
    .line 412
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    new-instance v1, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;

    .line 416
    .line 417
    const/4 v2, 0x2

    .line 418
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/server/dynamicfeature/Butler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/dynamicfeature/Butler;I)V

    .line 419
    .line 420
    .line 421
    const-string v2, "DISABLE_CLIENT"

    .line 422
    .line 423
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mButler:Lcom/samsung/android/server/dynamicfeature/Butler;

    .line 427
    .line 428
    new-instance p1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;

    .line 429
    .line 430
    invoke-direct {p1, p0, p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V

    .line 431
    .line 432
    .line 433
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->requestJobSchedulerRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;

    .line 434
    .line 435
    new-instance p1, Landroid/content/IntentFilter;

    .line 436
    .line 437
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 438
    .line 439
    .line 440
    const-string v0, "com.samsung.feature.FORCE_START"

    .line 441
    .line 442
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 446
    .line 447
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 451
    .line 452
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 456
    .line 457
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDynamicFeatureReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 458
    .line 459
    invoke-virtual {v0, v1, p1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 460
    .line 461
    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->enableService()V

    .line 463
    .line 464
    .line 465
    new-instance p1, Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;

    .line 466
    .line 467
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 468
    .line 469
    invoke-direct {p1}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 470
    .line 471
    .line 472
    iput-object v0, p1, Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;->serviceCallback:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 473
    .line 474
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mTracker:Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;

    .line 475
    .line 476
    new-instance p0, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string p1, "DF caller "

    .line 479
    .line 480
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    const/16 p1, 0xa

    .line 484
    .line 485
    invoke-static {p1}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->getCallers(I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    :goto_7
    if-eqz v6, :cond_7

    .line 501
    .line 502
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 503
    .line 504
    .line 505
    :cond_7
    sput-boolean v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 506
    .line 507
    throw p0
.end method

.method public static ASSERT(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public static declared-synchronized setCurrentBroadcastFeature(Lcom/samsung/android/server/dynamicfeature/DFeature;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setCurrentBroadcastFeature :"

    .line 2
    .line 3
    .line 4
    const-class v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "dynamicfeature_Service"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    sput-object p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mCurrentBroadcastFeature:Lcom/samsung/android/server/dynamicfeature/DFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v1

    .line 30
    throw p0
.end method


# virtual methods
.method public final applyDiff()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_6

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    move v7, v4

    .line 42
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_4

    .line 47
    .line 48
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 53
    .line 54
    iget-object v9, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v10, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_2

    .line 63
    .line 64
    iget v7, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 65
    .line 66
    iget v8, v8, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 67
    .line 68
    if-le v7, v8, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move v7, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v7, v3

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    :goto_2
    if-nez v7, :cond_1

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v2, v0

    .line 88
    check-cast v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    :cond_6
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDiff:Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 95
    .line 96
    new-instance v2, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_9

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_8

    .line 126
    .line 127
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    check-cast v7, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 132
    .line 133
    iget-object v8, v7, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v7, v7, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v8, v7}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_7

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    iput-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 153
    .line 154
    const-string v0, "android.intent.action.DROPBOX_ENTRY_ADDED"

    .line 155
    .line 156
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mTracker:Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;

    .line 163
    .line 164
    const/4 v5, 0x2

    .line 165
    invoke-virtual {v1, v2, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    const-string v0, "applyDiff want to blockUpdate"

    .line 169
    .line 170
    filled-new-array {v0}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mServiceLock:Ljava/lang/Object;

    .line 178
    .line 179
    monitor-enter v0

    .line 180
    :try_start_0
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 181
    .line 182
    add-int/2addr v1, v3

    .line 183
    iput v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 184
    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPreventFlooding:Z

    .line 187
    .line 188
    if-eqz v0, :cond_d

    .line 189
    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDiff:Ljava/util/ArrayList;

    .line 191
    .line 192
    const-string v1, "dynamicfeature_Service"

    .line 193
    .line 194
    if-nez v0, :cond_a

    .line 195
    .line 196
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 197
    .line 198
    if-nez v2, :cond_a

    .line 199
    .line 200
    const-string p0, "No changes for intent"

    .line 201
    .line 202
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    goto/16 :goto_c

    .line 206
    .line 207
    :cond_a
    const-string v2, " after "

    .line 208
    .line 209
    const-string v6, "Start runnable for +"

    .line 210
    .line 211
    if-eqz v0, :cond_b

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_b

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    check-cast v7, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 228
    .line 229
    new-instance v8, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;

    .line 230
    .line 231
    invoke-direct {v8, p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V

    .line 232
    .line 233
    .line 234
    iput-object v7, v8, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 235
    .line 236
    iput v3, v8, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->state:I

    .line 237
    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v7, v7, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    sget-wide v10, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 252
    .line 253
    int-to-long v12, v4

    .line 254
    mul-long/2addr v10, v12

    .line 255
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    iget-object v7, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 266
    .line 267
    sget-wide v9, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 268
    .line 269
    add-int/lit8 v4, v4, 0x1

    .line 270
    .line 271
    mul-long/2addr v9, v12

    .line 272
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 277
    .line 278
    if-eqz v0, :cond_c

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_c

    .line 289
    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 295
    .line 296
    new-instance v7, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;

    .line 297
    .line 298
    invoke-direct {v7, p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V

    .line 299
    .line 300
    .line 301
    iput-object v3, v7, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 302
    .line 303
    iput v5, v7, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->state:I

    .line 304
    .line 305
    new-instance v8, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    sget-wide v9, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 319
    .line 320
    int-to-long v11, v4

    .line 321
    mul-long/2addr v9, v11

    .line 322
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    iget-object v3, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 333
    .line 334
    sget-wide v8, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 335
    .line 336
    add-int/lit8 v4, v4, 0x1

    .line 337
    .line 338
    mul-long/2addr v8, v11

    .line 339
    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v2, "Stop tracking after "

    .line 346
    .line 347
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    sget-wide v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 351
    .line 352
    int-to-long v4, v4

    .line 353
    mul-long/2addr v2, v4

    .line 354
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 365
    .line 366
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->postNotifyUpdateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 367
    .line 368
    sget-wide v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 369
    .line 370
    mul-long/2addr v1, v4

    .line 371
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    .line 373
    .line 374
    goto/16 :goto_c

    .line 375
    .line 376
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDiff:Ljava/util/ArrayList;

    .line 377
    .line 378
    const-string v1, "dynamicfeature_Service"

    .line 379
    .line 380
    if-nez v0, :cond_e

    .line 381
    .line 382
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 383
    .line 384
    if-nez v2, :cond_e

    .line 385
    .line 386
    const-string v0, "No changes for intent"

    .line 387
    .line 388
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    goto/16 :goto_9

    .line 392
    .line 393
    :cond_e
    if-eqz v0, :cond_10

    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_10

    .line 404
    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 410
    .line 411
    new-instance v5, Landroid/content/Intent;

    .line 412
    .line 413
    invoke-virtual {v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getIntentAction()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/server/dynamicfeature/DFeature;->loadCargo(Landroid/content/Intent;Z)V

    .line 421
    .line 422
    .line 423
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 424
    .line 425
    invoke-virtual {v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 426
    .line 427
    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    const-string/jumbo v6, "send broadcast for new or edit : "

    .line 431
    .line 432
    .line 433
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v6, "PROPERTY_CARGO"

    .line 444
    .line 445
    const-class v7, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 446
    .line 447
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    check-cast v6, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 452
    .line 453
    if-nez v6, :cond_f

    .line 454
    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v8, "The cargo is null : "

    .line 458
    .line 459
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    const-string v7, "dynamicfeature_Feature"

    .line 470
    .line 471
    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    :cond_f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    goto :goto_7

    .line 485
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 486
    .line 487
    if-eqz v0, :cond_11

    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-eqz v2, :cond_11

    .line 498
    .line 499
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 504
    .line 505
    new-instance v4, Landroid/content/Intent;

    .line 506
    .line 507
    invoke-virtual {v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getIntentAction()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget-object v5, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 515
    .line 516
    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/dynamicfeature/DFeature;->loadCargo(Landroid/content/Intent;Z)V

    .line 520
    .line 521
    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string/jumbo v5, "send broadcast for removed : "

    .line 525
    .line 526
    .line 527
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    goto :goto_8

    .line 545
    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDiff:Ljava/util/ArrayList;

    .line 546
    .line 547
    const-string v1, "dynamicfeature_Service"

    .line 548
    .line 549
    if-nez v0, :cond_12

    .line 550
    .line 551
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 552
    .line 553
    if-nez v2, :cond_12

    .line 554
    .line 555
    const-string p0, "No changes for intent"

    .line 556
    .line 557
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    goto :goto_c

    .line 561
    :cond_12
    const-string v2, "Fail to set property : "

    .line 562
    .line 563
    if-eqz v0, :cond_13

    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    if-eqz v3, :cond_13

    .line 574
    .line 575
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 580
    .line 581
    invoke-virtual {v3}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    :try_start_1
    iget-object v3, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 586
    .line 587
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 588
    .line 589
    .line 590
    goto :goto_a

    .line 591
    :catch_0
    invoke-static {v2, v4, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    goto :goto_a

    .line 595
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRemoved:Ljava/util/ArrayList;

    .line 596
    .line 597
    if-eqz p0, :cond_14

    .line 598
    .line 599
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 600
    .line 601
    .line 602
    move-result-object p0

    .line 603
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-eqz v0, :cond_14

    .line 608
    .line 609
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 614
    .line 615
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    :try_start_2
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->removeProperty(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 620
    .line 621
    .line 622
    goto :goto_b

    .line 623
    :catch_1
    invoke-static {v2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    goto :goto_b

    .line 627
    :cond_14
    :goto_c
    return-void

    .line 628
    :catchall_0
    move-exception p0

    .line 629
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 630
    throw p0
.end method

.method public final applyNextToDB()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "DF_FEATURE_TABLE"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "DROP TABLE IF EXISTS DF_FEATURE_TABLE"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_FEATURE_TABLE (namespace TEXT,name TEXT,value TEXT,version INTEGER,property BOOLEAN,reboot BOOLEAN,package TEXT, signature TEXT, type TEXT,  PRIMARY KEY(namespace, name))"

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_INFO_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, virtualid TEXT,jobIntervalMill INTEGER,usertrial TEXT,lastUpdateTime TEXT )"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_PARAM_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, mcc TEXT,mnc TEXT,csc TEXT,sdkVersion INTEGER,oneUiVersion TEXT, binaryType TEXT )"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ge v0, v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 58
    .line 59
    invoke-static {v1, v2}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->insertFeature(Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/server/dynamicfeature/DFeature;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_4

    .line 67
    :catch_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :goto_2
    :try_start_1
    sget-object v0, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_3
    return-void

    .line 87
    :goto_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final declared-synchronized disableService()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->cancelJob()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 7
    .line 8
    const-string v0, "disableService"

    .line 9
    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v8, "isWorking : "

    .line 6
    .line 7
    const-string v9, "binder : "

    .line 8
    .line 9
    iput-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 10
    .line 11
    const-string v10, ""

    .line 12
    .line 13
    iput-object v10, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 14
    .line 15
    const-string v11, "Dynamic Feature dump"

    .line 16
    .line 17
    invoke-virtual {v1, v11}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x1

    .line 22
    const-string v13, "info"

    .line 23
    .line 24
    if-nez p3, :cond_0

    .line 25
    .line 26
    new-array v14, v12, [Ljava/lang/String;

    .line 27
    .line 28
    aput-object v13, v14, v11

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object/from16 v14, p3

    .line 32
    .line 33
    :goto_0
    array-length v15, v14

    .line 34
    if-lez v15, :cond_1

    .line 35
    .line 36
    aget-object v15, v14, v11

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v15, v13

    .line 40
    :goto_1
    sget-object v16, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sExecutableBinaryType:Ljava/lang/String;

    .line 41
    .line 42
    const-string v3, "UNKNOWN"

    .line 43
    .line 44
    const-string/jumbo v0, "ro.product_ship"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string/jumbo v3, "true"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    const-string v0, "This shell command only work on non-ship version on the device"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v0, "DF_FEATURE_TABLE"

    .line 76
    .line 77
    const-string v7, "** Test FAIL T____T **"

    .line 78
    .line 79
    const-string v6, "** All Test finished **"

    .line 80
    .line 81
    const-string v3, "SEC_UI"

    .line 82
    .line 83
    const-string v11, "        "

    .line 84
    .line 85
    const-string/jumbo v5, "r342f3ffdsf"

    .line 86
    .line 87
    .line 88
    const-string v12, "\"C\".equals(mockFeatures.get(0).getAbType())"

    .line 89
    .line 90
    const-string v4, "C"

    .line 91
    .line 92
    move-object/from16 v18, v8

    .line 93
    .line 94
    const-string/jumbo v8, "mockFeatures.get(0).getProperty() == true"

    .line 95
    .line 96
    .line 97
    move-object/from16 v19, v9

    .line 98
    .line 99
    const-string v9, "MODE_ANIMATION"

    .line 100
    .line 101
    move-object/from16 v20, v10

    .line 102
    .line 103
    const-string/jumbo v10, "mockFeatures.size() == 3"

    .line 104
    .line 105
    .line 106
    move-object/from16 v21, v0

    .line 107
    .line 108
    const-string v0, "interrupted"

    .line 109
    .line 110
    move-object/from16 v22, v7

    .line 111
    .line 112
    const-string v7, "=====================================\n"

    .line 113
    .line 114
    move-object/from16 v23, v7

    .line 115
    .line 116
    const-string v7, "    "

    .line 117
    .line 118
    const/16 v24, -0x1

    .line 119
    .line 120
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v25

    .line 124
    sparse-switch v25, :sswitch_data_0

    .line 125
    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :sswitch_0
    const-string v13, "disable"

    .line 130
    .line 131
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    if-nez v13, :cond_3

    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :cond_3
    const/16 v13, 0xe

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :sswitch_1
    const-string/jumbo v13, "sentinel"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-nez v13, :cond_4

    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :cond_4
    const/16 v13, 0xd

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :sswitch_2
    const-string/jumbo v13, "test2"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    if-nez v13, :cond_5

    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    :cond_5
    const/16 v13, 0xc

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :sswitch_3
    const-string/jumbo v13, "param"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    if-nez v13, :cond_6

    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :cond_6
    const/16 v13, 0xb

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :sswitch_4
    const-string v13, "clear"

    .line 185
    .line 186
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    if-nez v13, :cond_7

    .line 191
    .line 192
    goto/16 :goto_3

    .line 193
    .line 194
    :cond_7
    const/16 v13, 0xa

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :sswitch_5
    const-string/jumbo v13, "test"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    if-nez v13, :cond_8

    .line 205
    .line 206
    goto/16 :goto_3

    .line 207
    .line 208
    :cond_8
    const/16 v13, 0x9

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :sswitch_6
    const-string v13, "list"

    .line 212
    .line 213
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    if-nez v13, :cond_9

    .line 218
    .line 219
    goto/16 :goto_3

    .line 220
    .line 221
    :cond_9
    const/16 v13, 0x8

    .line 222
    .line 223
    :goto_2
    move/from16 v24, v13

    .line 224
    .line 225
    goto/16 :goto_3

    .line 226
    .line 227
    :sswitch_7
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v13

    .line 231
    if-nez v13, :cond_a

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_a
    const/16 v24, 0x7

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :sswitch_8
    const-string v13, "drop"

    .line 238
    .line 239
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    if-nez v13, :cond_b

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_b
    const/16 v24, 0x6

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :sswitch_9
    const-string v13, "add"

    .line 250
    .line 251
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-nez v13, :cond_c

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_c
    const/16 v24, 0x5

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :sswitch_a
    const-string v13, "db"

    .line 262
    .line 263
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    if-nez v13, :cond_d

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_d
    const/16 v24, 0x4

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :sswitch_b
    const-string/jumbo v13, "update"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-nez v13, :cond_e

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_e
    const/16 v24, 0x3

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :sswitch_c
    const-string v13, "errorReport"

    .line 287
    .line 288
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    if-nez v13, :cond_f

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_f
    const/16 v24, 0x2

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :sswitch_d
    const-string v13, "enable"

    .line 299
    .line 300
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    if-nez v13, :cond_10

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_10
    const/16 v24, 0x1

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :sswitch_e
    const-string v13, "abComment"

    .line 311
    .line 312
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v13

    .line 316
    if-nez v13, :cond_11

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_11
    const/16 v24, 0x0

    .line 320
    .line 321
    :goto_3
    packed-switch v24, :pswitch_data_0

    .line 322
    .line 323
    .line 324
    const-string/jumbo v0, "unknown command : "

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_23

    .line 335
    .line 336
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->disableService()V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_23

    .line 340
    .line 341
    :pswitch_1
    array-length v0, v14

    .line 342
    const/4 v2, 0x2

    .line 343
    if-ge v0, v2, :cond_12

    .line 344
    .line 345
    const-string/jumbo v0, "please input watching time .. ex) sentinel 200"

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :cond_12
    const/4 v2, 0x1

    .line 353
    :try_start_0
    aget-object v0, v14, v2

    .line 354
    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    sput v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_TEST_FEATURE:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .line 361
    goto :goto_4

    .line 362
    :catch_0
    move-exception v0

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    const-string v3, "Wrong index : "

    .line 366
    .line 367
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v0, "  / "

    .line 378
    .line 379
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const/4 v3, 0x1

    .line 383
    aget-object v0, v14, v3

    .line 384
    .line 385
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v2, "TERM_HANDLING_TEST_FEATURE : "

    .line 398
    .line 399
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    sget v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_TEST_FEATURE:I

    .line 403
    .line 404
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_23

    .line 415
    .line 416
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testSetUp()V

    .line 417
    .line 418
    .line 419
    const-string v7, "[2nd  parsing response] "

    .line 420
    .line 421
    invoke-virtual {v1, v7}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object v7, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 425
    .line 426
    iget-object v13, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 427
    .line 428
    const/4 v14, 0x2

    .line 429
    iput v14, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 430
    .line 431
    iput-object v13, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 432
    .line 433
    iput-object v7, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 434
    .line 435
    const-string/jumbo v7, "{\"features\":[{\"namespace\":\"SEC_UI\",\"name\":\"MODE_NIGHT\",\"version\":\"4\",\"value\":\"2\",\"reboot\":true,\"property\":true,\"abTestTypes\":[{\"type\":\"A\",\"allocRatio\":50,\"value\":\"0.1|0.5|false\"},{\"type\":\"B\",\"allocRatio\":50,\"value\":\"0.1|0.9|false\"},{\"type\":\"C\",\"allocRatio\":50,\"value\":\"1|0.9|true\"}]},{\"namespace\":\"SEC__TEST__UI\",\"name\":\"MODE_ANIMATION\",\"value\":\"NEW_AIRDROP2\",\"reboot\":false,\"version\":\"4\",\"property\":false},{\"namespace\":\"SYSTEM\",\"name\":\"MODE_ANIMATION\",\"value\":\"NEW_AIRDROP5\",\"reboot\":false,\"version\":\"6\",\"property\":true}],\"virtualId\":\"9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d\",\"releasedAt\":\"2023-10-07T02:20:26\",\"abTestAllocation\":[{\"namespace\":\"SEC_UI\",\"name\":\"MODE_NIGHT\",\"abType\":\"C\",\"packagename\":[\"com.samsung.swu.buttontest\",\"com.samsung.swu.buttontest3\"],\"signature\":[\"981c60a4ad266615187fccc1461781eb62b628d102feece383046c84b5793bac\",\"r342f3ffdsf\"]}]}"

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v7}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeature(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const-wide/16 v13, 0x64

    .line 442
    .line 443
    :try_start_1
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 444
    .line 445
    .line 446
    goto :goto_5

    .line 447
    :catch_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    :goto_5
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    const/4 v7, 0x3

    .line 457
    if-ne v0, v7, :cond_13

    .line 458
    .line 459
    const/4 v0, 0x1

    .line 460
    goto :goto_6

    .line 461
    :cond_13
    const/4 v0, 0x0

    .line 462
    :goto_6
    invoke-static {v10, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 463
    .line 464
    .line 465
    const-string v0, "SEC__TEST__UI"

    .line 466
    .line 467
    iget-object v7, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 468
    .line 469
    const/4 v10, 0x1

    .line 470
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v7

    .line 474
    check-cast v7, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 475
    .line 476
    iget-object v7, v7, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    const-string v7, "\"SEC__TEST__UI\".equals(mockFeatures.get(1).namespace)"

    .line 483
    .line 484
    invoke-static {v7, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 485
    .line 486
    .line 487
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 488
    .line 489
    const/4 v7, 0x1

    .line 490
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 495
    .line 496
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 497
    .line 498
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    const-string v7, "\"MODE_ANIMATION\".equals(mockFeatures.get(1).getName())"

    .line 503
    .line 504
    invoke-static {v7, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 505
    .line 506
    .line 507
    const-string v0, "NEW_AIRDROP5"

    .line 508
    .line 509
    iget-object v7, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 510
    .line 511
    const/4 v9, 0x2

    .line 512
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    check-cast v7, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 517
    .line 518
    iget-object v7, v7, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    const-string v7, "\"NEW_AIRDROP5\".equals(mockFeatures.get(2).getValue())"

    .line 525
    .line 526
    invoke-static {v7, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 527
    .line 528
    .line 529
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 530
    .line 531
    const/4 v7, 0x0

    .line 532
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 537
    .line 538
    iget-boolean v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 539
    .line 540
    const/4 v7, 0x1

    .line 541
    if-ne v0, v7, :cond_14

    .line 542
    .line 543
    const/4 v0, 0x1

    .line 544
    goto :goto_7

    .line 545
    :cond_14
    const/4 v0, 0x0

    .line 546
    :goto_7
    invoke-static {v8, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 547
    .line 548
    .line 549
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 550
    .line 551
    const/4 v7, 0x0

    .line 552
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 557
    .line 558
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    invoke-static {v12, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 565
    .line 566
    .line 567
    const-string v0, "1|0.9|true"

    .line 568
    .line 569
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 570
    .line 571
    const/4 v7, 0x0

    .line 572
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    check-cast v4, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 577
    .line 578
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 579
    .line 580
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 585
    .line 586
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    check-cast v4, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 591
    .line 592
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 593
    .line 594
    invoke-static {v4, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 595
    .line 596
    .line 597
    const-string v0, "com.samsung.swu.buttontest3"

    .line 598
    .line 599
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 600
    .line 601
    const/4 v7, 0x0

    .line 602
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    check-cast v4, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 607
    .line 608
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 609
    .line 610
    const/4 v7, 0x1

    .line 611
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 620
    .line 621
    const/4 v7, 0x0

    .line 622
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    check-cast v4, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 627
    .line 628
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 629
    .line 630
    const/4 v7, 0x1

    .line 631
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    check-cast v4, Ljava/lang/String;

    .line 636
    .line 637
    invoke-static {v4, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 638
    .line 639
    .line 640
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 641
    .line 642
    const/4 v4, 0x0

    .line 643
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 648
    .line 649
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 650
    .line 651
    const/4 v4, 0x1

    .line 652
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 661
    .line 662
    const/4 v5, 0x0

    .line 663
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    check-cast v4, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 668
    .line 669
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 670
    .line 671
    const/4 v5, 0x1

    .line 672
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    check-cast v4, Ljava/lang/String;

    .line 677
    .line 678
    invoke-static {v4, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 679
    .line 680
    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testVerifyProperty()Z

    .line 682
    .line 683
    .line 684
    move-result v0

    .line 685
    if-eqz v0, :cond_15

    .line 686
    .line 687
    const/4 v4, 0x1

    .line 688
    goto :goto_8

    .line 689
    :catch_2
    move-exception v0

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    const-string v5, "Test FAILED at testVerifyFeatures2nd "

    .line 693
    .line 694
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    :cond_15
    const/4 v4, 0x0

    .line 712
    :goto_8
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 719
    .line 720
    .line 721
    move-result v5

    .line 722
    if-eqz v5, :cond_16

    .line 723
    .line 724
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v5

    .line 728
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 729
    .line 730
    invoke-virtual {v5, v2, v11}, Lcom/samsung/android/server/dynamicfeature/DFeature;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    goto :goto_9

    .line 734
    :cond_16
    if-eqz v4, :cond_20

    .line 735
    .line 736
    const-string v0, "ABCDEFG_11111"

    .line 737
    .line 738
    const-string v2, "ABCDEFG_22222"

    .line 739
    .line 740
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 745
    .line 746
    const/4 v5, 0x0

    .line 747
    new-array v7, v5, [Ljava/lang/String;

    .line 748
    .line 749
    invoke-static {v2, v3, v7}, Lcom/samsung/android/provider/SemDynamicFeature;->getProperties(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    if-eqz v2, :cond_1f

    .line 754
    .line 755
    const-string v7, "MODE_NIGHT"

    .line 756
    .line 757
    invoke-virtual {v2, v7}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->isAbTest(Ljava/lang/String;)Z

    .line 758
    .line 759
    .line 760
    move-result v8

    .line 761
    if-nez v8, :cond_17

    .line 762
    .line 763
    goto/16 :goto_e

    .line 764
    .line 765
    :cond_17
    iget-object v8, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 766
    .line 767
    aget-object v9, v0, v5

    .line 768
    .line 769
    invoke-virtual {v2, v8, v7, v9}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->sendAbTestResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 770
    .line 771
    .line 772
    iget-object v5, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 773
    .line 774
    const/4 v8, 0x1

    .line 775
    aget-object v9, v0, v8

    .line 776
    .line 777
    invoke-virtual {v2, v5, v7, v9}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->sendAbTestResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 778
    .line 779
    .line 780
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 781
    .line 782
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 787
    .line 788
    .line 789
    move-result v5

    .line 790
    if-eqz v5, :cond_19

    .line 791
    .line 792
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 797
    .line 798
    invoke-virtual {v5, v3, v7}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 799
    .line 800
    .line 801
    move-result v8

    .line 802
    if-eqz v8, :cond_18

    .line 803
    .line 804
    move-object v3, v5

    .line 805
    goto :goto_a

    .line 806
    :cond_19
    const/4 v3, 0x0

    .line 807
    :goto_a
    if-eqz v3, :cond_20

    .line 808
    .line 809
    iget-object v2, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 810
    .line 811
    if-eqz v2, :cond_1e

    .line 812
    .line 813
    iget-object v5, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 814
    .line 815
    if-eqz v5, :cond_1e

    .line 816
    .line 817
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 818
    .line 819
    .line 820
    move-result v2

    .line 821
    if-nez v2, :cond_1e

    .line 822
    .line 823
    iget-object v2, v3, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 824
    .line 825
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 826
    .line 827
    .line 828
    move-result v2

    .line 829
    if-eqz v2, :cond_1a

    .line 830
    .line 831
    goto/16 :goto_d

    .line 832
    .line 833
    :cond_1a
    invoke-virtual {v3}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getCommentJSONArray()Lorg/json/JSONArray;

    .line 834
    .line 835
    .line 836
    move-result-object v2

    .line 837
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 838
    .line 839
    .line 840
    move-result v3

    .line 841
    if-nez v3, :cond_1b

    .line 842
    .line 843
    const-string v0, "comment is empty"

    .line 844
    .line 845
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    goto/16 :goto_f

    .line 849
    .line 850
    :cond_1b
    const/4 v3, 0x0

    .line 851
    :goto_b
    const/4 v5, 0x2

    .line 852
    if-ge v3, v5, :cond_1d

    .line 853
    .line 854
    :try_start_3
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v5

    .line 858
    aget-object v7, v0, v3

    .line 859
    .line 860
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-result v7

    .line 864
    if-nez v7, :cond_1c

    .line 865
    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    .line 867
    .line 868
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .line 870
    .line 871
    const-string v7, "comment has problem origin"

    .line 872
    .line 873
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    const-string v7, ":"

    .line 880
    .line 881
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    aget-object v0, v0, v3

    .line 885
    .line 886
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    const-string v0, "  real : "

    .line 890
    .line 891
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    goto :goto_f

    .line 905
    :catch_3
    move-exception v0

    .line 906
    goto :goto_c

    .line 907
    :cond_1c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 908
    .line 909
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 910
    .line 911
    .line 912
    const-string v8, "AbTest : msg: "

    .line 913
    .line 914
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    aget-object v8, v0, v3

    .line 918
    .line 919
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    const-string v8, " feature : "

    .line 923
    .line 924
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v5

    .line 934
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 935
    .line 936
    .line 937
    const/4 v5, 0x1

    .line 938
    add-int/2addr v3, v5

    .line 939
    goto :goto_b

    .line 940
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 941
    .line 942
    const-string v3, "FAIL : "

    .line 943
    .line 944
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    goto :goto_f

    .line 958
    :cond_1d
    const/4 v11, 0x1

    .line 959
    goto :goto_10

    .line 960
    :cond_1e
    :goto_d
    const-string v0, "feature is not commentable"

    .line 961
    .line 962
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    goto :goto_f

    .line 966
    :cond_1f
    :goto_e
    const-string v0, "Fail to get SEC_UI_MODE_NIGHT"

    .line 967
    .line 968
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    :cond_20
    :goto_f
    const/4 v11, 0x0

    .line 972
    :goto_10
    and-int v0, v4, v11

    .line 973
    .line 974
    if-eqz v0, :cond_21

    .line 975
    .line 976
    invoke-virtual {v1, v6}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    goto :goto_11

    .line 980
    :cond_21
    move-object/from16 v13, v22

    .line 981
    .line 982
    invoke-virtual {v1, v13}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testTearDown()V

    .line 986
    .line 987
    .line 988
    goto/16 :goto_23

    .line 989
    .line 990
    :pswitch_3
    const-string v5, "0"

    .line 991
    .line 992
    const-string v6, "C"

    .line 993
    .line 994
    const-string v2, "340"

    .line 995
    .line 996
    const-string v3, "10"

    .line 997
    .line 998
    const-string v4, "KOO"

    .line 999
    .line 1000
    const/4 v7, 0x0

    .line 1001
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 1005
    .line 1006
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->run()V

    .line 1007
    .line 1008
    .line 1009
    const-wide/16 v2, 0xc8

    .line 1010
    .line 1011
    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1012
    .line 1013
    .line 1014
    goto :goto_12

    .line 1015
    :catch_4
    move-exception v0

    .line 1016
    move-object v2, v0

    .line 1017
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    const-string v2, "dynamicfeature_Service"

    .line 1022
    .line 1023
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .line 1025
    .line 1026
    :goto_12
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHttpConnector:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 1027
    .line 1028
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->getLastReultCode()I

    .line 1029
    .line 1030
    .line 1031
    move-result v0

    .line 1032
    const/16 v2, 0xc8

    .line 1033
    .line 1034
    if-eq v0, v2, :cond_22

    .line 1035
    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    const-string/jumbo v3, "result expected 200 but : "

    .line 1039
    .line 1040
    .line 1041
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    const-string v0, " returned."

    .line 1048
    .line 1049
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    goto/16 :goto_23

    .line 1060
    .line 1061
    :cond_22
    const-string v0, "Param test success"

    .line 1062
    .line 1063
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    goto/16 :goto_23

    .line 1067
    .line 1068
    :pswitch_4
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1069
    .line 1070
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1071
    .line 1072
    .line 1073
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 1074
    .line 1075
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1076
    .line 1077
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1078
    .line 1079
    .line 1080
    move-object/from16 v14, v21

    .line 1081
    .line 1082
    const/4 v3, 0x0

    .line 1083
    invoke-virtual {v2, v14, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1084
    .line 1085
    .line 1086
    sget-object v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 1087
    .line 1088
    move-object/from16 v2, v20

    .line 1089
    .line 1090
    iput-object v2, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 1091
    .line 1092
    const-wide/16 v3, 0xf

    .line 1093
    .line 1094
    iput-wide v3, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMin:J

    .line 1095
    .line 1096
    const/4 v3, 0x5

    .line 1097
    iput v3, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->flexMill:I

    .line 1098
    .line 1099
    const/4 v3, 0x0

    .line 1100
    iput-boolean v3, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->isUT:Z

    .line 1101
    .line 1102
    iput-object v2, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;

    .line 1103
    .line 1104
    const-string v0, "Clear finished"

    .line 1105
    .line 1106
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    goto/16 :goto_23

    .line 1110
    .line 1111
    :pswitch_5
    move-object/from16 v14, v21

    .line 1112
    .line 1113
    move-object/from16 v13, v22

    .line 1114
    .line 1115
    const-string v15, "com.samsung.swu.buttontest2"

    .line 1116
    .line 1117
    const-string v13, "0.2|0.9|false"

    .line 1118
    .line 1119
    move-object/from16 v17, v6

    .line 1120
    .line 1121
    const-string v6, "\"NEW_AIRDROP2\".equals(mockFeatures.get(1).getValue())"

    .line 1122
    .line 1123
    move-object/from16 v20, v11

    .line 1124
    .line 1125
    const-string v11, "NEW_AIRDROP2"

    .line 1126
    .line 1127
    move-object/from16 v21, v5

    .line 1128
    .line 1129
    const-string v5, "\"MODE_ANIMATION\".equals(mockFeatures.get(2).getName())"

    .line 1130
    .line 1131
    move-object/from16 p1, v15

    .line 1132
    .line 1133
    const-string v15, "\"SEC_UI\".equals(mockFeatures.get(1).namespace)"

    .line 1134
    .line 1135
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testSetUp()V

    .line 1136
    .line 1137
    .line 1138
    move-object/from16 v16, v13

    .line 1139
    .line 1140
    const-string v13, "[start test]"

    .line 1141
    .line 1142
    invoke-virtual {v1, v13}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    const/4 v13, 0x0

    .line 1146
    iput v13, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 1147
    .line 1148
    iput-object v7, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 1149
    .line 1150
    iput-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 1151
    .line 1152
    iget-object v13, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1153
    .line 1154
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1155
    .line 1156
    .line 1157
    iget-object v13, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 1158
    .line 1159
    move-object/from16 v24, v12

    .line 1160
    .line 1161
    iget-object v12, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1162
    .line 1163
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1164
    .line 1165
    .line 1166
    const/4 v13, 0x0

    .line 1167
    invoke-virtual {v12, v14, v13, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1168
    .line 1169
    .line 1170
    const-string v12, "[1st parsing response]"

    .line 1171
    .line 1172
    invoke-virtual {v1, v12}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    const/4 v12, 0x1

    .line 1176
    iput v12, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 1177
    .line 1178
    iput-object v7, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 1179
    .line 1180
    iput-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 1181
    .line 1182
    const-string/jumbo v7, "{\"features\":[{\"namespace\":\"SEC_UI\",\"name\":\"MODE_NIGHT\",\"version\":\"3\",\"value\":\"2\",\"reboot\":false,\"property\":true,\"abTestTypes\":[{\"type\":\"A\",\"allocRatio\":50,\"value\":\"0.1|0.5|false\"},{\"type\":\"B\",\"allocRatio\":50,\"value\":\"0.1|0.9|false\"},{\"type\":\"C\",\"allocRatio\":50,\"value\":\"0.2|0.9|false\"}]},{\"namespace\":\"SEC_UI\",\"name\":\"MODE_ANIMATION\",\"value\":\"NEW_AIRDROP2\",\"reboot\":false,\"version\":\"4\",\"property\":true},{\"namespace\":\"SYSTEM\",\"name\":\"MODE_ANIMATION\",\"value\":\"NEW_AIRDROP2\",\"reboot\":false,\"version\":\"5\",\"property\":false}],\"virtualId\":\"9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d\",\"releasedAt\":\"2023-10-05T02:20:26\",\"abTestAllocation\":[{\"namespace\":\"SEC_UI\",\"name\":\"MODE_NIGHT\",\"abType\":\"C\",\"packagename\":[\"com.samsung.swu.buttontest\",\"com.samsung.swu.buttontest2\"],\"signature\":[\"981c60a4ad266615187fccc1461781eb62b628d102feece383046c84b5793bac\",\"r342f3ffdsf\"]}]}"

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v1, v7}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeature(Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    const-wide/16 v12, 0xa

    .line 1189
    .line 1190
    :try_start_5
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1191
    .line 1192
    .line 1193
    goto :goto_13

    .line 1194
    :catch_5
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    :goto_13
    :try_start_6
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1198
    .line 1199
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1200
    .line 1201
    .line 1202
    move-result v0

    .line 1203
    const/4 v7, 0x3

    .line 1204
    if-ne v0, v7, :cond_23

    .line 1205
    .line 1206
    const/4 v0, 0x1

    .line 1207
    goto :goto_14

    .line 1208
    :cond_23
    const/4 v0, 0x0

    .line 1209
    :goto_14
    invoke-static {v10, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1210
    .line 1211
    .line 1212
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1213
    .line 1214
    const/4 v7, 0x1

    .line 1215
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v0

    .line 1219
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1220
    .line 1221
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 1222
    .line 1223
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    move-result v0

    .line 1227
    invoke-static {v15, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1228
    .line 1229
    .line 1230
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1231
    .line 1232
    const/4 v7, 0x2

    .line 1233
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1238
    .line 1239
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 1240
    .line 1241
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v0

    .line 1245
    invoke-static {v5, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1246
    .line 1247
    .line 1248
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1249
    .line 1250
    const/4 v7, 0x1

    .line 1251
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1256
    .line 1257
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1258
    .line 1259
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1260
    .line 1261
    .line 1262
    move-result v0

    .line 1263
    invoke-static {v6, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1264
    .line 1265
    .line 1266
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1267
    .line 1268
    const/4 v7, 0x0

    .line 1269
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1274
    .line 1275
    iget-boolean v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 1276
    .line 1277
    const/4 v7, 0x1

    .line 1278
    if-ne v0, v7, :cond_24

    .line 1279
    .line 1280
    const/4 v0, 0x1

    .line 1281
    goto :goto_15

    .line 1282
    :cond_24
    const/4 v0, 0x0

    .line 1283
    :goto_15
    invoke-static {v8, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1284
    .line 1285
    .line 1286
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1287
    .line 1288
    const/4 v7, 0x0

    .line 1289
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v0

    .line 1293
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1294
    .line 1295
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 1296
    .line 1297
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 1301
    move-object/from16 v7, v24

    .line 1302
    .line 1303
    :try_start_7
    invoke-static {v7, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1304
    .line 1305
    .line 1306
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1307
    .line 1308
    const/4 v12, 0x0

    .line 1309
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1314
    .line 1315
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 1316
    .line 1317
    move-object/from16 v13, v16

    .line 1318
    .line 1319
    :try_start_8
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1320
    .line 1321
    .line 1322
    move-result v0

    .line 1323
    iget-object v14, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1324
    .line 1325
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v14

    .line 1329
    check-cast v14, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1330
    .line 1331
    iget-object v14, v14, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1332
    .line 1333
    invoke-static {v14, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1334
    .line 1335
    .line 1336
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1337
    .line 1338
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1343
    .line 1344
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 1345
    .line 1346
    const/4 v12, 0x1

    .line 1347
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1351
    move-object/from16 v12, p1

    .line 1352
    .line 1353
    :try_start_9
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v0

    .line 1357
    iget-object v14, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1358
    .line 1359
    move-object/from16 p1, v12

    .line 1360
    .line 1361
    const/4 v12, 0x0

    .line 1362
    :try_start_a
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v14

    .line 1366
    check-cast v14, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1367
    .line 1368
    iget-object v12, v14, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 1369
    .line 1370
    const/4 v14, 0x1

    .line 1371
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v12

    .line 1375
    check-cast v12, Ljava/lang/String;

    .line 1376
    .line 1377
    invoke-static {v12, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1378
    .line 1379
    .line 1380
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1381
    .line 1382
    const/4 v12, 0x0

    .line 1383
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v0

    .line 1387
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1388
    .line 1389
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 1390
    .line 1391
    const/4 v12, 0x1

    .line 1392
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1396
    move-object/from16 v12, v21

    .line 1397
    .line 1398
    :try_start_b
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1399
    .line 1400
    .line 1401
    move-result v0

    .line 1402
    iget-object v14, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1403
    .line 1404
    move-object/from16 v21, v12

    .line 1405
    .line 1406
    const/4 v12, 0x0

    .line 1407
    :try_start_c
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v14

    .line 1411
    check-cast v14, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1412
    .line 1413
    iget-object v12, v14, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 1414
    .line 1415
    const/4 v14, 0x1

    .line 1416
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v12

    .line 1420
    check-cast v12, Ljava/lang/String;

    .line 1421
    .line 1422
    invoke-static {v12, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testVerifyProperty()Z

    .line 1426
    .line 1427
    .line 1428
    move-result v0

    .line 1429
    if-eqz v0, :cond_25

    .line 1430
    .line 1431
    const/4 v0, 0x1

    .line 1432
    goto :goto_17

    .line 1433
    :catch_6
    move-exception v0

    .line 1434
    goto :goto_16

    .line 1435
    :catch_7
    move-exception v0

    .line 1436
    move-object/from16 v21, v12

    .line 1437
    .line 1438
    goto :goto_16

    .line 1439
    :catch_8
    move-exception v0

    .line 1440
    move-object/from16 p1, v12

    .line 1441
    .line 1442
    goto :goto_16

    .line 1443
    :catch_9
    move-exception v0

    .line 1444
    move-object/from16 v13, v16

    .line 1445
    .line 1446
    goto :goto_16

    .line 1447
    :catch_a
    move-exception v0

    .line 1448
    move-object/from16 v13, v16

    .line 1449
    .line 1450
    move-object/from16 v7, v24

    .line 1451
    .line 1452
    :goto_16
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1453
    .line 1454
    const-string v14, "Test FAILED at testVerifyFeatures1st "

    .line 1455
    .line 1456
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v0

    .line 1463
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v0

    .line 1470
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    :cond_25
    const/4 v0, 0x0

    .line 1474
    :goto_17
    iget-object v12, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1475
    .line 1476
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v12

    .line 1480
    :goto_18
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1481
    .line 1482
    .line 1483
    move-result v14

    .line 1484
    if-eqz v14, :cond_26

    .line 1485
    .line 1486
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v14

    .line 1490
    check-cast v14, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1491
    .line 1492
    move-object/from16 p3, v12

    .line 1493
    .line 1494
    move-object/from16 v12, v20

    .line 1495
    .line 1496
    invoke-virtual {v14, v2, v12}, Lcom/samsung/android/server/dynamicfeature/DFeature;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1497
    .line 1498
    .line 1499
    move-object/from16 v12, p3

    .line 1500
    .line 1501
    goto :goto_18

    .line 1502
    :cond_26
    const-string v2, "[DB test]"

    .line 1503
    .line 1504
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyNextToDB()V

    .line 1508
    .line 1509
    .line 1510
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 1511
    .line 1512
    iget-object v12, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1513
    .line 1514
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1515
    .line 1516
    .line 1517
    invoke-static {v12}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->loadFeatures(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v2

    .line 1521
    if-eqz v0, :cond_29

    .line 1522
    .line 1523
    :try_start_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1524
    .line 1525
    .line 1526
    move-result v0

    .line 1527
    const/4 v12, 0x3

    .line 1528
    if-ne v0, v12, :cond_27

    .line 1529
    .line 1530
    const/4 v0, 0x1

    .line 1531
    goto :goto_19

    .line 1532
    :cond_27
    const/4 v0, 0x0

    .line 1533
    :goto_19
    invoke-static {v10, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1534
    .line 1535
    .line 1536
    const/4 v10, 0x1

    .line 1537
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0

    .line 1541
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1542
    .line 1543
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 1544
    .line 1545
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    invoke-static {v15, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1550
    .line 1551
    .line 1552
    const/4 v3, 0x2

    .line 1553
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v0

    .line 1557
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1558
    .line 1559
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 1560
    .line 1561
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1562
    .line 1563
    .line 1564
    move-result v0

    .line 1565
    invoke-static {v5, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1566
    .line 1567
    .line 1568
    const/4 v3, 0x1

    .line 1569
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v0

    .line 1573
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1574
    .line 1575
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1576
    .line 1577
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v0

    .line 1581
    invoke-static {v6, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 1582
    .line 1583
    .line 1584
    const/4 v3, 0x0

    .line 1585
    :try_start_e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v0

    .line 1589
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1590
    .line 1591
    iget-boolean v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->property:Z

    .line 1592
    .line 1593
    const/4 v5, 0x1

    .line 1594
    if-ne v0, v5, :cond_28

    .line 1595
    .line 1596
    const/4 v0, 0x1

    .line 1597
    goto :goto_1a

    .line 1598
    :cond_28
    move v0, v3

    .line 1599
    :goto_1a
    invoke-static {v8, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v0

    .line 1606
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1607
    .line 1608
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 1609
    .line 1610
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1611
    .line 1612
    .line 1613
    move-result v0

    .line 1614
    invoke-static {v7, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v0

    .line 1621
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1622
    .line 1623
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1624
    .line 1625
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v4

    .line 1633
    check-cast v4, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1634
    .line 1635
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 1636
    .line 1637
    invoke-static {v4, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v0

    .line 1644
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1645
    .line 1646
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 1647
    .line 1648
    const/4 v4, 0x1

    .line 1649
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v0

    .line 1653
    move-object/from16 v5, p1

    .line 1654
    .line 1655
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v0

    .line 1659
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 1663
    :try_start_f
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1664
    .line 1665
    iget-object v3, v5, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 1666
    .line 1667
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v3

    .line 1671
    check-cast v3, Ljava/lang/String;

    .line 1672
    .line 1673
    invoke-static {v3, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 1674
    .line 1675
    .line 1676
    const/4 v3, 0x0

    .line 1677
    :try_start_10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v0

    .line 1681
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1682
    .line 1683
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 1684
    .line 1685
    const/4 v4, 0x1

    .line 1686
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v0

    .line 1690
    move-object/from16 v5, v21

    .line 1691
    .line 1692
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v0

    .line 1696
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v2

    .line 1700
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 1701
    .line 1702
    iget-object v2, v2, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 1703
    .line 1704
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v2

    .line 1708
    check-cast v2, Ljava/lang/String;

    .line 1709
    .line 1710
    invoke-static {v2, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ASSERT(Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 1711
    .line 1712
    .line 1713
    const/4 v11, 0x1

    .line 1714
    goto :goto_1d

    .line 1715
    :catch_b
    move-exception v0

    .line 1716
    goto :goto_1b

    .line 1717
    :catch_c
    move-exception v0

    .line 1718
    const/4 v3, 0x0

    .line 1719
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1720
    .line 1721
    const-string v4, "Test FAILED at JSON PARSER "

    .line 1722
    .line 1723
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1724
    .line 1725
    .line 1726
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v0

    .line 1730
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v0

    .line 1737
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1738
    .line 1739
    .line 1740
    goto :goto_1c

    .line 1741
    :cond_29
    const/4 v3, 0x0

    .line 1742
    :goto_1c
    move v11, v3

    .line 1743
    :goto_1d
    const-string v0, "DB test passed"

    .line 1744
    .line 1745
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1746
    .line 1747
    .line 1748
    if-eqz v11, :cond_2a

    .line 1749
    .line 1750
    move-object/from16 v2, v17

    .line 1751
    .line 1752
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1753
    .line 1754
    .line 1755
    goto :goto_1e

    .line 1756
    :cond_2a
    move-object/from16 v2, v22

    .line 1757
    .line 1758
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1759
    .line 1760
    .line 1761
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testTearDown()V

    .line 1762
    .line 1763
    .line 1764
    goto/16 :goto_23

    .line 1765
    .line 1766
    :pswitch_6
    const/4 v3, 0x0

    .line 1767
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 1768
    .line 1769
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v0

    .line 1773
    new-instance v4, Landroid/content/ComponentName;

    .line 1774
    .line 1775
    iget-object v5, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 1776
    .line 1777
    const-string v6, "com.samsung.android.server.dynamicfeature.CheckUpdateJobService"

    .line 1778
    .line 1779
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1780
    .line 1781
    .line 1782
    const/high16 v5, 0xc0000

    .line 1783
    .line 1784
    :try_start_11
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 1785
    .line 1786
    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1788
    .line 1789
    move-object/from16 v4, v19

    .line 1790
    .line 1791
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1792
    .line 1793
    .line 1794
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 1795
    .line 1796
    const-string v5, "dynamic_feature"

    .line 1797
    .line 1798
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v4

    .line 1802
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1803
    .line 1804
    .line 1805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v0

    .line 1809
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 1810
    .line 1811
    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1813
    .line 1814
    move-object/from16 v4, v18

    .line 1815
    .line 1816
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1817
    .line 1818
    .line 1819
    iget-boolean v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 1820
    .line 1821
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1822
    .line 1823
    .line 1824
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v0

    .line 1828
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    .line 1829
    .line 1830
    .line 1831
    goto :goto_1f

    .line 1832
    :catch_d
    move-exception v0

    .line 1833
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1834
    .line 1835
    .line 1836
    :goto_1f
    const-string v0, "    *Basic Info"

    .line 1837
    .line 1838
    const-string v4, "       Virtual ID: "

    .line 1839
    .line 1840
    invoke-static {v2, v0, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v0

    .line 1844
    sget-object v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 1845
    .line 1846
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 1847
    .line 1848
    const-string v6, "       Last updated time: "

    .line 1849
    .line 1850
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v0

    .line 1854
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;

    .line 1855
    .line 1856
    const-string v6, "       updateInvtervalMin: "

    .line 1857
    .line 1858
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v0

    .line 1862
    iget-wide v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMin:J

    .line 1863
    .line 1864
    const-string v8, "       isUt: "

    .line 1865
    .line 1866
    invoke-static {v0, v5, v6, v2, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v0

    .line 1870
    iget-boolean v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->isUT:Z

    .line 1871
    .line 1872
    const-string v6, "       flexMill: "

    .line 1873
    .line 1874
    invoke-static {v0, v5, v2, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v0

    .line 1878
    iget v4, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->flexMill:I

    .line 1879
    .line 1880
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1881
    .line 1882
    .line 1883
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v0

    .line 1887
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1888
    .line 1889
    .line 1890
    const-string v0, "    *Param Info"

    .line 1891
    .line 1892
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1893
    .line 1894
    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1896
    .line 1897
    const-string v4, "       mcc:"

    .line 1898
    .line 1899
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1900
    .line 1901
    .line 1902
    sget-object v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->paramInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;

    .line 1903
    .line 1904
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mcc:Ljava/lang/String;

    .line 1905
    .line 1906
    const-string v6, "       mnc:"

    .line 1907
    .line 1908
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v0

    .line 1912
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mnc:Ljava/lang/String;

    .line 1913
    .line 1914
    const-string v6, "       csc:"

    .line 1915
    .line 1916
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v0

    .line 1920
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->csc:Ljava/lang/String;

    .line 1921
    .line 1922
    const-string v6, "       sdkVersion:"

    .line 1923
    .line 1924
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v0

    .line 1928
    iget v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->sdkVersion:I

    .line 1929
    .line 1930
    const-string v6, "       oneUiVersion:"

    .line 1931
    .line 1932
    invoke-static {v0, v5, v2, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v0

    .line 1936
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->oneUiVersion:Ljava/lang/String;

    .line 1937
    .line 1938
    const-string v6, "       binaryType:"

    .line 1939
    .line 1940
    invoke-static {v2, v5, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v0

    .line 1944
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->binaryType:Ljava/lang/String;

    .line 1945
    .line 1946
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    .line 1948
    .line 1949
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v0

    .line 1953
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1954
    .line 1955
    .line 1956
    const-string v0, "=========================================\n"

    .line 1957
    .line 1958
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    .line 1960
    .line 1961
    const-string v4, "    *Event log"

    .line 1962
    .line 1963
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    .line 1965
    .line 1966
    move v11, v3

    .line 1967
    :goto_20
    const/16 v3, 0x28

    .line 1968
    .line 1969
    if-ge v11, v3, :cond_2c

    .line 1970
    .line 1971
    sget-object v3, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->circularQueue:[Ljava/lang/String;

    .line 1972
    .line 1973
    aget-object v4, v3, v11

    .line 1974
    .line 1975
    if-eqz v4, :cond_2b

    .line 1976
    .line 1977
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1978
    .line 1979
    const-string v5, "       "

    .line 1980
    .line 1981
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1982
    .line 1983
    .line 1984
    aget-object v3, v3, v11

    .line 1985
    .line 1986
    invoke-static {v4, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1987
    .line 1988
    .line 1989
    :cond_2b
    const/4 v3, 0x1

    .line 1990
    add-int/2addr v11, v3

    .line 1991
    goto :goto_20

    .line 1992
    :cond_2c
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1993
    .line 1994
    .line 1995
    :pswitch_7
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 1996
    .line 1997
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1998
    .line 1999
    .line 2000
    move-result-object v0

    .line 2001
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2002
    .line 2003
    .line 2004
    move-result v3

    .line 2005
    if-eqz v3, :cond_2d

    .line 2006
    .line 2007
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v3

    .line 2011
    check-cast v3, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 2012
    .line 2013
    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/server/dynamicfeature/DFeature;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2014
    .line 2015
    .line 2016
    goto :goto_21

    .line 2017
    :cond_2d
    move-object/from16 v3, v23

    .line 2018
    .line 2019
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2020
    .line 2021
    .line 2022
    goto/16 :goto_23

    .line 2023
    .line 2024
    :pswitch_8
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2025
    .line 2026
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2027
    .line 2028
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2029
    .line 2030
    .line 2031
    const-string v0, "DROP TABLE IF EXISTS DF_FEATURE_TABLE"

    .line 2032
    .line 2033
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2034
    .line 2035
    .line 2036
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2037
    .line 2038
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2039
    .line 2040
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2041
    .line 2042
    .line 2043
    const-string v0, "DROP TABLE IF EXISTS DF_INFO_TABLE"

    .line 2044
    .line 2045
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2046
    .line 2047
    .line 2048
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2049
    .line 2050
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2051
    .line 2052
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2053
    .line 2054
    .line 2055
    const-string v0, "DROP TABLE IF EXISTS DF_PARAM_TABLE"

    .line 2056
    .line 2057
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2058
    .line 2059
    .line 2060
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2061
    .line 2062
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2063
    .line 2064
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2065
    .line 2066
    .line 2067
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_FEATURE_TABLE (namespace TEXT,name TEXT,value TEXT,version INTEGER,property BOOLEAN,reboot BOOLEAN,package TEXT, signature TEXT, type TEXT,  PRIMARY KEY(namespace, name))"

    .line 2068
    .line 2069
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2070
    .line 2071
    .line 2072
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_INFO_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, virtualid TEXT,jobIntervalMill INTEGER,usertrial TEXT,lastUpdateTime TEXT )"

    .line 2073
    .line 2074
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2075
    .line 2076
    .line 2077
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_PARAM_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, mcc TEXT,mnc TEXT,csc TEXT,sdkVersion INTEGER,oneUiVersion TEXT, binaryType TEXT )"

    .line 2078
    .line 2079
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2080
    .line 2081
    .line 2082
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2083
    .line 2084
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2085
    .line 2086
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2087
    .line 2088
    .line 2089
    invoke-static {v2}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->replaceBasicInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2090
    .line 2091
    .line 2092
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2093
    .line 2094
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2095
    .line 2096
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2097
    .line 2098
    .line 2099
    invoke-static {v2}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->replaceParamInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2100
    .line 2101
    .line 2102
    const-string v0, "Drop tables finished"

    .line 2103
    .line 2104
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2105
    .line 2106
    .line 2107
    goto/16 :goto_23

    .line 2108
    .line 2109
    :pswitch_9
    move-object/from16 v3, v23

    .line 2110
    .line 2111
    array-length v0, v14

    .line 2112
    const/4 v2, 0x4

    .line 2113
    if-ge v0, v2, :cond_2e

    .line 2114
    .line 2115
    const-string v0, "Plz check usage - add namespace name value abType packageName sigHash @@"

    .line 2116
    .line 2117
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2118
    .line 2119
    .line 2120
    goto/16 :goto_23

    .line 2121
    .line 2122
    :cond_2e
    const/4 v2, 0x1

    .line 2123
    aget-object v0, v14, v2

    .line 2124
    .line 2125
    const/4 v2, 0x2

    .line 2126
    aget-object v2, v14, v2

    .line 2127
    .line 2128
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2129
    .line 2130
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2131
    .line 2132
    .line 2133
    move-result-object v4

    .line 2134
    :cond_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2135
    .line 2136
    .line 2137
    move-result v5

    .line 2138
    if-eqz v5, :cond_30

    .line 2139
    .line 2140
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v5

    .line 2144
    check-cast v5, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 2145
    .line 2146
    invoke-virtual {v5, v0, v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2147
    .line 2148
    .line 2149
    move-result v6

    .line 2150
    if-eqz v6, :cond_2f

    .line 2151
    .line 2152
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2153
    .line 2154
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2155
    .line 2156
    .line 2157
    :cond_30
    new-instance v4, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 2158
    .line 2159
    invoke-direct {v4}, Lcom/samsung/android/server/dynamicfeature/DFeature;-><init>()V

    .line 2160
    .line 2161
    .line 2162
    iput-object v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 2163
    .line 2164
    iput-object v2, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 2165
    .line 2166
    const/4 v2, 0x3

    .line 2167
    aget-object v0, v14, v2

    .line 2168
    .line 2169
    iput-object v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 2170
    .line 2171
    array-length v0, v14

    .line 2172
    const/4 v2, 0x5

    .line 2173
    if-lt v0, v2, :cond_31

    .line 2174
    .line 2175
    const/4 v0, 0x4

    .line 2176
    aget-object v0, v14, v0

    .line 2177
    .line 2178
    iput-object v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 2179
    .line 2180
    :cond_31
    array-length v0, v14

    .line 2181
    const/4 v5, 0x7

    .line 2182
    if-lt v0, v5, :cond_32

    .line 2183
    .line 2184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2185
    .line 2186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2187
    .line 2188
    .line 2189
    aget-object v2, v14, v2

    .line 2190
    .line 2191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    .line 2193
    .line 2194
    const-string v2, ",,"

    .line 2195
    .line 2196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    .line 2198
    .line 2199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v0

    .line 2203
    invoke-virtual {v4, v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->setPackageNames(Ljava/lang/String;)V

    .line 2204
    .line 2205
    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2207
    .line 2208
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2209
    .line 2210
    .line 2211
    const/4 v5, 0x6

    .line 2212
    aget-object v5, v14, v5

    .line 2213
    .line 2214
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    .line 2219
    .line 2220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2221
    .line 2222
    .line 2223
    move-result-object v0

    .line 2224
    invoke-virtual {v4, v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->setSignatures(Ljava/lang/String;)V

    .line 2225
    .line 2226
    .line 2227
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    .line 2228
    .line 2229
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2230
    .line 2231
    .line 2232
    iput-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 2233
    .line 2234
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2235
    .line 2236
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v0

    .line 2240
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2241
    .line 2242
    .line 2243
    move-result v2

    .line 2244
    if-eqz v2, :cond_33

    .line 2245
    .line 2246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v2

    .line 2250
    check-cast v2, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 2251
    .line 2252
    iget-object v5, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 2253
    .line 2254
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2255
    .line 2256
    .line 2257
    goto :goto_22

    .line 2258
    :cond_33
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 2259
    .line 2260
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2261
    .line 2262
    .line 2263
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyDiff()V

    .line 2264
    .line 2265
    .line 2266
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyNextToDB()V

    .line 2267
    .line 2268
    .line 2269
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mButler:Lcom/samsung/android/server/dynamicfeature/Butler;

    .line 2270
    .line 2271
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 2272
    .line 2273
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/dynamicfeature/Butler;->processNewFeature(Ljava/util/ArrayList;)V

    .line 2274
    .line 2275
    .line 2276
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2277
    .line 2278
    .line 2279
    goto :goto_23

    .line 2280
    :pswitch_a
    move-object/from16 v3, v23

    .line 2281
    .line 2282
    iget-object v0, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 2283
    .line 2284
    iget-object v4, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2285
    .line 2286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2287
    .line 2288
    .line 2289
    invoke-static {v4, v2}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->dumpDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/PrintWriter;)V

    .line 2290
    .line 2291
    .line 2292
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2293
    .line 2294
    .line 2295
    goto :goto_23

    .line 2296
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeatureViaServer()V

    .line 2297
    .line 2298
    .line 2299
    const-string v0, "Update requested"

    .line 2300
    .line 2301
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2302
    .line 2303
    .line 2304
    goto :goto_23

    .line 2305
    :pswitch_c
    array-length v0, v14

    .line 2306
    const/4 v2, 0x2

    .line 2307
    if-ge v0, v2, :cond_34

    .line 2308
    .line 2309
    const-string/jumbo v0, "please input error message"

    .line 2310
    .line 2311
    .line 2312
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2313
    .line 2314
    .line 2315
    return-void

    .line 2316
    :cond_34
    const/4 v2, 0x1

    .line 2317
    aget-object v0, v14, v2

    .line 2318
    .line 2319
    iget-object v1, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 2320
    .line 2321
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;->onSignalFire(Ljava/lang/String;)V

    .line 2322
    .line 2323
    .line 2324
    goto :goto_23

    .line 2325
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->enableService()V

    .line 2326
    .line 2327
    .line 2328
    goto :goto_23

    .line 2329
    :pswitch_e
    const/4 v2, 0x1

    .line 2330
    array-length v0, v14

    .line 2331
    const/4 v3, 0x4

    .line 2332
    if-ge v0, v3, :cond_35

    .line 2333
    .line 2334
    const-string/jumbo v0, "please input namespace name comment .. ex) SEC_UI RUNTIME FAILED"

    .line 2335
    .line 2336
    .line 2337
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 2338
    .line 2339
    .line 2340
    return-void

    .line 2341
    :cond_35
    aget-object v0, v14, v2

    .line 2342
    .line 2343
    const/4 v2, 0x2

    .line 2344
    aget-object v2, v14, v2

    .line 2345
    .line 2346
    const/4 v3, 0x3

    .line 2347
    aget-object v3, v14, v3

    .line 2348
    .line 2349
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->sendAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2350
    .line 2351
    .line 2352
    :goto_23
    return-void

    .line 2353
    :sswitch_data_0
    .sparse-switch
        -0x72003d02 -> :sswitch_e
        -0x4d6ada7d -> :sswitch_d
        -0x47bd92a4 -> :sswitch_c
        -0x31ffc737 -> :sswitch_b
        0xc7e -> :sswitch_a
        0x178a1 -> :sswitch_9
        0x2f2eef -> :sswitch_8
        0x3164ae -> :sswitch_7
        0x32b09e -> :sswitch_6
        0x364492 -> :sswitch_5
        0x5a5b64d -> :sswitch_4
        0x658188d -> :sswitch_3
        0x6924de0 -> :sswitch_2
        0x4b45a824 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    .line 2354
    .line 2355
    .line 2356
    .line 2357
    .line 2358
    .line 2359
    .line 2360
    .line 2361
    .line 2362
    .line 2363
    .line 2364
    .line 2365
    .line 2366
    .line 2367
    .line 2368
    .line 2369
    .line 2370
    .line 2371
    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    .line 2410
    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ee(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "   "

    .line 6
    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "dynamicfeature_Service_test"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, "##### "

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :cond_1
    return-void
.end method

.method public final declared-synchronized enableService()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->requestJobSchedulerRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;

    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->getStartMilFromNow()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 15
    .line 16
    const-string v0, "enableService"

    .line 17
    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public final getProperties(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p0, "dynamicfeature_Service"

    .line 7
    .line 8
    const-string p1, "This is not working"

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    array-length v2, p2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v2, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_3
    :goto_0
    move v2, v0

    .line 32
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_7

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 63
    .line 64
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    if-nez v2, :cond_5

    .line 73
    .line 74
    iget-object v5, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    :cond_5
    new-instance v5, Lcom/samsung/android/provider/Feature;

    .line 83
    .line 84
    iget-object v6, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v7, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v4, v4, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    move v4, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    move v4, v1

    .line 95
    :goto_3
    invoke-direct {v5, v6, v7, v4}, Lcom/samsung/android/provider/Feature;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    new-instance p0, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 103
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    .line 106
    .line 107
    return-object p0
.end method

.method public final ll(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrefix:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "   "

    .line 6
    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "dynamicfeature_Service_test"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPw:Ljava/io/PrintWriter;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_1
    return-void
.end method

.method public final onFeatureListUpdated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mButler:Lcom/samsung/android/server/dynamicfeature/Butler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/dynamicfeature/Butler;->processNewFeature(Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v0, "DROP TABLE IF EXISTS DF_INFO_TABLE"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS DF_INFO_TABLE (_ID INTEGER PRIMARY KEY AUTOINCREMENT, virtualid TEXT,jobIntervalMill INTEGER,usertrial TEXT,lastUpdateTime TEXT )"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->replaceBasicInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDbHelper:Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/dynamicfeature/db/DynamicFeatureDBHelper;->replaceParamInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    sput-boolean p0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final sendAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v5, "dynamicfeature_Service"

    .line 10
    .line 11
    const-string/jumbo v6, "sendAbTestResult : "

    .line 12
    .line 13
    .line 14
    const-string v7, ",  "

    .line 15
    .line 16
    invoke-static {v6, v2, v7, v3, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v5, v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    const-string v5, "dynamicfeature_Service"

    .line 24
    .line 25
    const-string v6, "This is not working"

    .line 26
    .line 27
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v5, v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 47
    .line 48
    invoke-virtual {v6, v1, v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isThis(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v6, 0x0

    .line 56
    :goto_0
    const/4 v5, 0x0

    .line 57
    if-nez v6, :cond_3

    .line 58
    .line 59
    const-string v0, "dynamicfeature_Service"

    .line 60
    .line 61
    const-string/jumbo v3, "no such feature : "

    .line 62
    .line 63
    .line 64
    const-string v4, "/"

    .line 65
    .line 66
    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v5

    .line 70
    :cond_3
    iget-object v8, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v8, :cond_11

    .line 73
    .line 74
    iget-object v8, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 75
    .line 76
    if-eqz v8, :cond_10

    .line 77
    .line 78
    iget-object v9, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v9, :cond_10

    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_10

    .line 87
    .line 88
    iget-object v8, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_4

    .line 95
    .line 96
    goto/16 :goto_12

    .line 97
    .line 98
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    sget-object v9, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sExecutableBinaryType:Ljava/lang/String;

    .line 103
    .line 104
    const/16 v9, 0x2710

    .line 105
    .line 106
    if-le v8, v9, :cond_5

    .line 107
    .line 108
    const-string v0, "dynamicfeature_Service"

    .line 109
    .line 110
    const-string/jumbo v3, "too long comment : "

    .line 111
    .line 112
    .line 113
    const-string v4, "/"

    .line 114
    .line 115
    const-string v6, " max length of string is 10000"

    .line 116
    .line 117
    invoke-static {v3, v1, v4, v2, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return v5

    .line 125
    :cond_5
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    iget-object v8, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->packagenames:Ljava/util/ArrayList;

    .line 128
    .line 129
    iget-object v9, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->signatures:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    const/16 v11, 0x3e8

    .line 136
    .line 137
    if-ne v10, v11, :cond_6

    .line 138
    .line 139
    :goto_1
    const/4 v5, 0x1

    .line 140
    goto/16 :goto_e

    .line 141
    .line 142
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    const-string v13, "dynamicfeature_InfoBoard"

    .line 151
    .line 152
    if-nez v12, :cond_7

    .line 153
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v7, " uid doesn\'t have any packages"

    .line 163
    .line 164
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto/16 :goto_e

    .line 175
    .line 176
    :cond_7
    move v10, v5

    .line 177
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-ge v10, v0, :cond_d

    .line 182
    .line 183
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    check-cast v14, Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v15

    .line 203
    if-nez v15, :cond_9

    .line 204
    .line 205
    :cond_8
    :goto_3
    move-object/from16 v16, v8

    .line 206
    .line 207
    move-object/from16 p0, v9

    .line 208
    .line 209
    :goto_4
    const/4 v4, 0x1

    .line 210
    goto/16 :goto_d

    .line 211
    .line 212
    :cond_9
    const/high16 v15, 0x8000000

    .line 213
    .line 214
    :try_start_0
    invoke-virtual {v11, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    iget-object v15, v15, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 219
    .line 220
    if-nez v15, :cond_a

    .line 221
    .line 222
    const-string/jumbo v0, "signingInfo is NULL"

    .line 223
    .line 224
    .line 225
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_a
    invoke-virtual {v15}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    const-string v7, "check signature for "

    .line 234
    .line 235
    const-string v5, " with "

    .line 236
    .line 237
    invoke-static {v7, v0, v5, v14, v13}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const/4 v5, 0x0

    .line 241
    :goto_5
    array-length v7, v15

    .line 242
    if-ge v5, v7, :cond_8

    .line 243
    .line 244
    aget-object v7, v15, v5

    .line 245
    .line 246
    :try_start_1
    const-string v16, "SHA-256"

    .line 247
    .line 248
    invoke-static/range {v16 .. v16}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->digest([B)[B

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 263
    .line 264
    .line 265
    move-object/from16 v16, v8

    .line 266
    .line 267
    :try_start_2
    array-length v8, v4
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    move-object/from16 p0, v9

    .line 269
    .line 270
    const/4 v9, 0x0

    .line 271
    :goto_6
    if-ge v9, v8, :cond_b

    .line 272
    .line 273
    :try_start_3
    aget-byte v17, v4, v9

    .line 274
    .line 275
    move-object/from16 v18, v4

    .line 276
    .line 277
    const-string v4, "%02x"

    .line 278
    .line 279
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 280
    .line 281
    .line 282
    move-result-object v17

    .line 283
    move/from16 v19, v8

    .line 284
    .line 285
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const/4 v4, 0x1

    .line 297
    add-int/2addr v9, v4

    .line 298
    move-object/from16 v4, v18

    .line 299
    .line 300
    move/from16 v8, v19

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 307
    goto :goto_c

    .line 308
    :catch_0
    :goto_7
    move-object/from16 p0, v9

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :catch_1
    :goto_8
    move-object/from16 p0, v9

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :catch_2
    move-object/from16 v16, v8

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :catch_3
    move-object/from16 v16, v8

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :catch_4
    :goto_9
    const-string v4, "Unknown error"

    .line 321
    .line 322
    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    goto :goto_b

    .line 326
    :catch_5
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v7, " doesn\'t support SHA-256"

    .line 335
    .line 336
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    :goto_b
    const/4 v4, 0x0

    .line 347
    :goto_c
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-eqz v7, :cond_c

    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string/jumbo v8, "the real signature is "

    .line 358
    .line 359
    .line 360
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    const/4 v4, 0x1

    .line 374
    add-int/2addr v5, v4

    .line 375
    move-object/from16 v9, p0

    .line 376
    .line 377
    move-object/from16 v8, v16

    .line 378
    .line 379
    goto/16 :goto_5

    .line 380
    .line 381
    :catch_6
    move-exception v0

    .line 382
    move-object/from16 v16, v8

    .line 383
    .line 384
    move-object/from16 p0, v9

    .line 385
    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v5, "No such name : "

    .line 389
    .line 390
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    goto/16 :goto_4

    .line 408
    .line 409
    :goto_d
    add-int/2addr v10, v4

    .line 410
    move-object/from16 v9, p0

    .line 411
    .line 412
    move-object/from16 v8, v16

    .line 413
    .line 414
    const/4 v5, 0x0

    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :cond_d
    const/4 v5, 0x0

    .line 418
    :goto_e
    if-nez v5, :cond_e

    .line 419
    .line 420
    const-string v0, "dynamicfeature_Service"

    .line 421
    .line 422
    const-string v3, "The package doesn\'t allowed to comment : "

    .line 423
    .line 424
    const-string v4, "/"

    .line 425
    .line 426
    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    goto :goto_10

    .line 430
    :cond_e
    iget-object v4, v6, Lcom/samsung/android/server/dynamicfeature/DFeature;->abComment:Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;

    .line 431
    .line 432
    monitor-enter v4

    .line 433
    :try_start_4
    iget v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->size:I

    .line 434
    .line 435
    const/16 v1, 0xa

    .line 436
    .line 437
    if-ne v0, v1, :cond_f

    .line 438
    .line 439
    iget v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->front:I

    .line 440
    .line 441
    const/4 v2, 0x1

    .line 442
    add-int/2addr v0, v2

    .line 443
    rem-int/2addr v0, v1

    .line 444
    iput v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->front:I

    .line 445
    .line 446
    const/4 v2, 0x1

    .line 447
    goto :goto_f

    .line 448
    :catchall_0
    move-exception v0

    .line 449
    goto :goto_11

    .line 450
    :cond_f
    const/4 v2, 0x1

    .line 451
    add-int/2addr v0, v2

    .line 452
    iput v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->size:I

    .line 453
    .line 454
    :goto_f
    iget v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->rear:I

    .line 455
    .line 456
    add-int/2addr v0, v2

    .line 457
    rem-int/2addr v0, v1

    .line 458
    iput v0, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->rear:I

    .line 459
    .line 460
    iget-object v1, v4, Lcom/samsung/android/server/dynamicfeature/DFeature$CircularQueue;->queue:[Ljava/lang/String;

    .line 461
    .line 462
    aput-object v3, v1, v0

    .line 463
    .line 464
    monitor-exit v4

    .line 465
    :goto_10
    return v5

    .line 466
    :goto_11
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 467
    throw v0

    .line 468
    :cond_10
    :goto_12
    const-string v0, "dynamicfeature_Service"

    .line 469
    .line 470
    const-string v3, "feature doesn\'t support AbTest comment : "

    .line 471
    .line 472
    const-string v4, "/"

    .line 473
    .line 474
    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const/4 v3, 0x0

    .line 478
    return v3

    .line 479
    :cond_11
    move v3, v5

    .line 480
    const-string v0, "dynamicfeature_Service"

    .line 481
    .line 482
    const-string v4, "feature doesn\'t support AbTest : "

    .line 483
    .line 484
    const-string v5, "/"

    .line 485
    .line 486
    invoke-static {v4, v1, v5, v2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    return v3
.end method

.method public final testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, " def is:problem real value is:"

    .line 2
    .line 3
    const-string/jumbo v1, "right value is:"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "problem"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v0, "testCheckProperty : "

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public final testSetUp()V
    .locals 3

    .line 1
    const-string v0, "HttpConnector::stopUpdate "

    .line 2
    .line 3
    const-class v1, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 7
    .line 8
    add-int/lit8 v2, v2, 0x1

    .line 9
    .line 10
    sput v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->getCallers(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "  "

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    sget-wide v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyBackupTermHandling:J

    .line 50
    .line 51
    sget v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_TEST_FEATURE:I

    .line 52
    .line 53
    int-to-long v0, v0

    .line 54
    sput-wide v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 55
    .line 56
    new-instance v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;-><init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 63
    .line 64
    const-string v0, "com.sec.df.changed.SEC_UI.MODE_NIGHT"

    .line 65
    .line 66
    const-string v1, "com.sec.df.changed.SEC_UI.MODE_ANIMATION"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 75
    .line 76
    const/4 v2, 0x2

    .line 77
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v1

    .line 83
    throw p0
.end method

.method public final testTearDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyReceiver:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "HttpConnector::resumeUpdate "

    .line 9
    .line 10
    const-class v1, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    sget v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 14
    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    sput v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->getCallers(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "  "

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    filled-new-array {v0}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit v1

    .line 54
    iget-wide v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testOnlyBackupTermHandling:J

    .line 55
    .line 56
    sput-wide v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v1

    .line 61
    throw p0
.end method

.method public final testVerifyIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Intent1 received "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "PROPERTY_CARGO"

    .line 19
    .line 20
    const-class v1, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "   Intent1 received properties "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "   "

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string v1, "__default"

    .line 50
    .line 51
    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez p3, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo p3, "no item : may "

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p2, " is removed"

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_1

    .line 92
    .line 93
    const-string p3, " : "

    .line 94
    .line 95
    invoke-static {v0, p2, p3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    const-string/jumbo v0, "problem"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string p3, "   ##### testVerifyIntent: properties failed : "

    .line 120
    .line 121
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    if-nez p3, :cond_3

    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p2, " is removed "

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string p3, "   ##### testVerifyIntent: properties failed "

    .line 161
    .line 162
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ee(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final testVerifyProperty()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "0.2|0.9|false"

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "NEW_AIRDROP2"

    .line 38
    .line 39
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :goto_0
    and-int v2, v0, v1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v3, 0x2

    .line 47
    if-ne v0, v3, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "1|0.9|true"

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const-string/jumbo v1, "persist.sys.df.SEC_UI.MODE_ANIMATION"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v2, "problem"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testCheckProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo v1, "testVerifyProperty success : "

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "========= testVerifyProperty failed : "

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ll(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return v2
.end method

.method public final updateFeature(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "dynamicfeature_Service"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/dynamicfeature/json/JsonParser;->converter(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->nextFeatures:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p0, "No update from server"

    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-static {v1, p1}, Lcom/samsung/android/server/dynamicfeature/DFeature;->isSame(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string p0, "Same as previous"

    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyDiff()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->applyNextToDB()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->onFeatureListUpdated()V

    .line 40
    .line 41
    .line 42
    const-string p0, "Update complete"

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v1, "updateFeature"

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method public final updateFeatureViaServer()V
    .locals 3

    .line 1
    const-string v0, "dynamicfeature_Service"

    .line 2
    .line 3
    const-string v1, "Check updates from server."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mServiceLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStopUpdateRequest:I

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const-string v0, "dynamicfeature_Service"

    .line 17
    .line 18
    const-string v1, "Start updates from server."

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHttpConnector:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mFeatures:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatureServiceCallBack:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    new-instance v2, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v2, v0, p0}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x1

    .line 45
    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mRequestUpdate:Z

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0
.end method
