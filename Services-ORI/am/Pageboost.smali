.class public abstract Lcom/android/server/am/Pageboost;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BOOTFILE_ENABLED:Z

.field public static final PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

.field public static final PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

.field public static PAGEBOOST_DAEMON_ENABLED:Z

.field public static final PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

.field public static final PAGEBOOST_IO_PREFETCH_ENABLED:Z

.field public static PAGEBOOST_KERNEL_ENABLED:Z

.field public static final PAGEBOOST_MINIMIZE:Z

.field public static final PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

.field public static mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public static mAppDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

.field public static mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

.field public static mContext:Landroid/content/Context;

.field public static mFileDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

.field public static mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

.field public static final mPackageReceiver:Lcom/android/server/am/Pageboost$1;

.field public static final mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

.field public static final mReceiver:Lcom/android/server/am/Pageboost$1;

.field public static mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static final munlock_firstapp:Z

.field public static final sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

.field public static final sHandlerThread:Lcom/android/server/ServiceThread;

.field public static user_unlock_done:Z


# direct methods
.method public static -$$Nest$smaddPackage(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "add app to global @ runtime: "

    .line 47
    .line 48
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "Pageboost"

    .line 54
    .line 55
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method public static -$$Nest$smdelayedInitPageboost()V
    .locals 12

    .line 1
    const-string v0, "Pageboost"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    const-string v3, "/proc/self/io_record_control"

    .line 7
    .line 8
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string/jumbo v2, "io_record_control file exists: kernel support = true"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sput-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 25
    .line 26
    const-string/jumbo v2, "io_record_control file does not exist: kernel support = false"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    const-string/jumbo v2, "io_record_control file open failed"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v3, "checkPageboostKernelSupport: "

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-boolean v3, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const-string/jumbo v0, "init.svc.pageboostd"

    .line 64
    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string/jumbo v2, "running"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v2, "checkPageboostDaemonSupport: "

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    .line 90
    .line 91
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v2, "Pageboost"

    .line 103
    .line 104
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    .line 113
    const-string v0, "Pageboost"

    .line 114
    .line 115
    const-string v1, "abort delayedInitPageboost"

    .line 116
    .line 117
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :cond_1
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    .line 123
    .line 124
    const/4 v2, 0x3

    .line 125
    if-ne v0, v2, :cond_2

    .line 126
    .line 127
    const-string v0, "/proc/self/io_record_control"

    .line 128
    .line 129
    const-string v2, "1"

    .line 130
    .line 131
    invoke-static {v0, v2}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    const-string v0, "Pageboost"

    .line 135
    .line 136
    const-string/jumbo v2, "emergency reset during bootup"

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_2
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    sget-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Lcom/android/server/am/Pageboost$1;

    .line 147
    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    sget-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Lcom/android/server/am/Pageboost$1;

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    const-string/jumbo v0, "com.sec.android.launcher.action.RUN_APP"

    .line 155
    .line 156
    .line 157
    const-string/jumbo v2, "com.android.server.am.ACTION_PAGEBOOST"

    .line 158
    .line 159
    .line 160
    const-string/jumbo v3, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    .line 161
    .line 162
    .line 163
    const-string/jumbo v4, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 164
    .line 165
    .line 166
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    .line 167
    .line 168
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    const-string v0, "android.intent.action.REBOOT"

    .line 173
    .line 174
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 178
    .line 179
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    sget-object v6, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    sget-object v7, Lcom/android/server/am/Pageboost;->mReceiver:Lcom/android/server/am/Pageboost$1;

    .line 185
    .line 186
    const-string/jumbo v9, "com.android.server.am.permission.PAGEBOOST"

    .line 187
    .line 188
    .line 189
    const/4 v10, 0x0

    .line 190
    const/4 v11, 0x2

    .line 191
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    .line 195
    .line 196
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string/jumbo v2, "package"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    sget-object v3, Lcom/android/server/am/Pageboost;->mPackageReceiver:Lcom/android/server/am/Pageboost$1;

    .line 218
    .line 219
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    const-string v0, "Pageboost"

    .line 223
    .line 224
    new-instance v9, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 225
    .line 226
    sget-object v3, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 227
    .line 228
    new-instance v7, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;

    .line 229
    .line 230
    const/4 v2, 0x1

    .line 231
    invoke-direct {v7, v2}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;-><init>(I)V

    .line 232
    .line 233
    .line 234
    const-string v4, "/data/misc/pageboost/pageboost_file_db.db"

    .line 235
    .line 236
    const/4 v5, 0x0

    .line 237
    const/4 v6, 0x3

    .line 238
    const/4 v8, 0x1

    .line 239
    move-object v2, v9

    .line 240
    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;I)V

    .line 241
    .line 242
    .line 243
    sput-object v9, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 244
    .line 245
    const/4 v2, 0x1

    .line 246
    invoke-virtual {v9, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 247
    .line 248
    .line 249
    :try_start_1
    sget-object v3, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 250
    .line 251
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    sput-object v3, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 256
    .line 257
    const-string/jumbo v3, "getWritableDatabase for fileDB"

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :catch_1
    move-exception v2

    .line 265
    goto :goto_1

    .line 266
    :catch_2
    move-exception v3

    .line 267
    goto :goto_2

    .line 268
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v4, "Exception for fileDB "

    .line 271
    .line 272
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v2, v3, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string v5, "SQLiteException for fileDB "

    .line 282
    .line 283
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    const-string/jumbo v4, "malformed database"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_3

    .line 312
    .line 313
    const-string/jumbo v1, "delete fileDB and open"

    .line 314
    .line 315
    .line 316
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    const-string v1, "/data/misc/pageboost/pageboost_file_db.db"

    .line 320
    .line 321
    invoke-static {v1}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    sget-object v1, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 325
    .line 326
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    sput-object v1, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 331
    .line 332
    move v1, v2

    .line 333
    goto :goto_3

    .line 334
    :catch_3
    const-string v2, "SQLiteDatabaseCorruptException for fileDB"

    .line 335
    .line 336
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 340
    .line 341
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    sput-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 346
    .line 347
    :cond_3
    :goto_3
    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 348
    .line 349
    if-eqz v2, :cond_4

    .line 350
    .line 351
    :try_start_2
    const-string/jumbo v3, "db pragma init"

    .line 352
    .line 353
    .line 354
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    const-string v3, "PRAGMA synchronous = NORMAL;"

    .line 358
    .line 359
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 360
    .line 361
    .line 362
    goto :goto_4

    .line 363
    :catch_4
    move-exception v2

    .line 364
    const-string/jumbo v3, "pragma init failed"

    .line 365
    .line 366
    .line 367
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    .line 372
    .line 373
    :cond_4
    :goto_4
    const-string v0, "/data/misc/pageboost/pageboost_app_db.db"

    .line 374
    .line 375
    const-string/jumbo v2, "delete app db and open"

    .line 376
    .line 377
    .line 378
    const-string v3, "Pageboost"

    .line 379
    .line 380
    if-eqz v1, :cond_5

    .line 381
    .line 382
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :cond_5
    new-instance v1, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 389
    .line 390
    sget-object v5, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 391
    .line 392
    new-instance v9, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;

    .line 393
    .line 394
    const/4 v4, 0x0

    .line 395
    invoke-direct {v9, v4}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;-><init>(I)V

    .line 396
    .line 397
    .line 398
    const-string v6, "/data/misc/pageboost/pageboost_app_db.db"

    .line 399
    .line 400
    const/4 v7, 0x0

    .line 401
    const/4 v8, 0x7

    .line 402
    const/4 v10, 0x0

    .line 403
    move-object v4, v1

    .line 404
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;I)V

    .line 405
    .line 406
    .line 407
    sput-object v1, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 408
    .line 409
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    sput-object v1, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 414
    .line 415
    const-string/jumbo v1, "getWritableDatabase for appDB"

    .line 416
    .line 417
    .line 418
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 419
    .line 420
    .line 421
    goto :goto_7

    .line 422
    :catch_5
    move-exception v0

    .line 423
    goto :goto_5

    .line 424
    :catch_6
    move-exception v1

    .line 425
    goto :goto_6

    .line 426
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    const-string v2, "Exception for appDB "

    .line 429
    .line 430
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-static {v0, v1, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto :goto_7

    .line 437
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string v5, "SQLiteException for appDB "

    .line 440
    .line 441
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    const-string/jumbo v4, "malformed database"

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_6

    .line 470
    .line 471
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 478
    .line 479
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 484
    .line 485
    goto :goto_7

    .line 486
    :catch_7
    const-string v0, "SQLiteDatabaseCorruptException for appDB"

    .line 487
    .line 488
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 492
    .line 493
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 498
    .line 499
    :cond_6
    :goto_7
    const-string/jumbo v0, "zygote64"

    .line 500
    .line 501
    .line 502
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    sput-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 507
    .line 508
    const-string/jumbo v0, "zygote"

    .line 509
    .line 510
    .line 511
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    sput-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 516
    .line 517
    const-string/jumbo v0, "system_server"

    .line 518
    .line 519
    .line 520
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    .line 521
    .line 522
    .line 523
    sget-object v0, Lcom/android/server/am/Pageboost$Vramdisk;->sLock:Ljava/lang/Object;

    .line 524
    .line 525
    monitor-enter v0

    .line 526
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 527
    new-instance v0, Lcom/android/server/am/Pageboost$DaemonConnector;

    .line 528
    .line 529
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 530
    .line 531
    .line 532
    const-string/jumbo v1, "pageboostd"

    .line 533
    .line 534
    .line 535
    iput-object v1, v0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    .line 536
    .line 537
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$DaemonConnector;->openSocket()V

    .line 538
    .line 539
    .line 540
    sput-object v0, Lcom/android/server/am/Pageboost$Vramdisk;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    .line 541
    .line 542
    goto :goto_8

    .line 543
    :catchall_0
    move-exception v1

    .line 544
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 545
    throw v1

    .line 546
    :cond_7
    const-string v0, "Pageboost"

    .line 547
    .line 548
    const-string v1, "Pageboost Delayed Init Failed"

    .line 549
    .line 550
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    :goto_8
    return-void
.end method

.method public static -$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/util/SparseArray;

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    :goto_0
    if-ltz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget p0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    const-string/jumbo v3, "cch-empty"

    .line 53
    .line 54
    .line 55
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 56
    .line 57
    iget-object v4, v4, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    iget p0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 p0, 0x0

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    return p0

    .line 79
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static -$$Nest$smrealupdatePackages()V
    .locals 28

    .line 1
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    if-eqz v0, :cond_b

    .line 12
    .line 13
    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_1
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const-string v0, "Pageboost"

    .line 24
    .line 25
    const-string/jumbo v1, "reinit global list"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 33
    .line 34
    :cond_2
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->$r8$clinit:I

    .line 43
    .line 44
    new-instance v10, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 45
    .line 46
    invoke-direct {v10}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "AppLRU"

    .line 50
    .line 51
    const-string v9, "ID ASC"

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v3, 0x0

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 72
    .line 73
    const-string v4, "APPNAME"

    .line 74
    .line 75
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    const-string v4, "CAPTURED"

    .line 84
    .line 85
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const-string v4, "ANON"

    .line 94
    .line 95
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    const-string v4, "ION"

    .line 104
    .line 105
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 110
    .line 111
    .line 112
    move-result v15

    .line 113
    const-string v4, "GPU"

    .line 114
    .line 115
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 120
    .line 121
    .line 122
    move-result v16

    .line 123
    const-string v4, "SIZE_PR"

    .line 124
    .line 125
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 130
    .line 131
    .line 132
    move-result-wide v17

    .line 133
    const-string v4, "SIZE_MAP_PR"

    .line 134
    .line 135
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v19

    .line 143
    const-string v4, "SCORE"

    .line 144
    .line 145
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 150
    .line 151
    .line 152
    move-result v21

    .line 153
    const-string v4, "EXEC_CNT"

    .line 154
    .line 155
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 160
    .line 161
    .line 162
    move-result v22

    .line 163
    const-string v4, "ACC_ETIME"

    .line 164
    .line 165
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 170
    .line 171
    .line 172
    move-result-wide v23

    .line 173
    const-string v4, "PREFETCH_CNT"

    .line 174
    .line 175
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 180
    .line 181
    .line 182
    move-result v25

    .line 183
    const-string v4, "HIT_CNT"

    .line 184
    .line 185
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 190
    .line 191
    .line 192
    move-result v26

    .line 193
    const-string v4, "APK_PATH"

    .line 194
    .line 195
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v27

    .line 203
    move-object v11, v0

    .line 204
    invoke-direct/range {v11 .. v27}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v0, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 217
    .line 218
    .line 219
    :cond_4
    const/16 v0, 0x80

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_8

    .line 234
    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 240
    .line 241
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    if-nez v4, :cond_6

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_6
    const-string v4, "Pageboost"

    .line 251
    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string/jumbo v6, "pkg info : "

    .line 255
    .line 256
    .line 257
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v5, v6, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v10, v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    const/4 v5, 0x1

    .line 272
    if-nez v4, :cond_7

    .line 273
    .line 274
    new-instance v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 275
    .line 276
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 277
    .line 278
    invoke-direct {v4, v6}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v10, v4, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 282
    .line 283
    .line 284
    const-string v6, "Pageboost"

    .line 285
    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v8, "add app to global : "

    .line 289
    .line 290
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v7, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 299
    .line 300
    if-eqz v2, :cond_5

    .line 301
    .line 302
    invoke-virtual {v4, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iput v5, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_7
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 309
    .line 310
    if-eqz v2, :cond_5

    .line 311
    .line 312
    invoke-virtual {v4, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iput v5, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 316
    .line 317
    goto :goto_1

    .line 318
    :cond_8
    iget-object v1, v10, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 319
    .line 320
    monitor-enter v1

    .line 321
    :try_start_1
    iget-object v0, v10, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-eqz v2, :cond_a

    .line 332
    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    check-cast v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 338
    .line 339
    iget v3, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 340
    .line 341
    if-nez v3, :cond_9

    .line 342
    .line 343
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 344
    .line 345
    .line 346
    const-string v3, "Pageboost"

    .line 347
    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    const-string/jumbo v5, "remove not installed app : "

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    iget-object v2, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    goto :goto_2

    .line 372
    :catchall_0
    move-exception v0

    .line 373
    goto :goto_3

    .line 374
    :cond_a
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    sput-object v10, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 376
    .line 377
    goto :goto_5

    .line 378
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    throw v0

    .line 380
    :cond_b
    :goto_4
    const-string v0, "Pageboost"

    .line 381
    .line 382
    const-string/jumbo v1, "mContext or mPredictor is not initialized yet."

    .line 383
    .line 384
    .line 385
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    :goto_5
    return-void
.end method

.method public static -$$Nest$smremovePackage(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 34
    .line 35
    iget-object v4, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 44
    .line 45
    .line 46
    const-string p0, "Pageboost"

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v2, "remove app @ runtime : "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-object v2, v3

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_1
    if-eqz v2, :cond_4

    .line 77
    .line 78
    sget-object p0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    .line 80
    iget-object v0, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_2
    return-void

    .line 86
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "Pageboost"

    .line 2
    .line 3
    const-string/jumbo v1, "ro.config.pageboost.io_prefetch.enabled"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "true"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sput-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 18
    .line 19
    const-string/jumbo v1, "ro.config.pageboost.ignore_dram_spec"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v3, "false"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sput-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    .line 34
    .line 35
    const-string/jumbo v4, "ro.config.pageboost.active_launch.enabled"

    .line 36
    .line 37
    .line 38
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    sput-boolean v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    .line 47
    .line 48
    const-string/jumbo v4, "ro.config.pageboost.active_launch.timeout"

    .line 49
    .line 50
    .line 51
    const/16 v5, 0x64

    .line 52
    .line 53
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sput v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

    .line 58
    .line 59
    const-string/jumbo v4, "ro.config.pageboost.vramdisk.minimize"

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    sput-boolean v3, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    .line 71
    .line 72
    const-string/jumbo v3, "ro.config.pageboost.vramdisk.without_predict"

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    sput-boolean v3, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    .line 84
    .line 85
    const-string/jumbo v3, "ro.config.pageboost.vramdisk.bootfile.enabled"

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    sput-boolean v2, Lcom/android/server/am/Pageboost;->BOOTFILE_ENABLED:Z

    .line 97
    .line 98
    const/4 v2, 0x1

    .line 99
    sput-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 100
    .line 101
    sput-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    sput-object v3, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    sput-object v3, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 107
    .line 108
    sput-object v3, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 109
    .line 110
    sput-object v3, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 111
    .line 112
    sput-object v3, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 113
    .line 114
    sput-object v3, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 115
    .line 116
    sput-object v3, Lcom/android/server/am/Pageboost;->mReceiver:Lcom/android/server/am/Pageboost$1;

    .line 117
    .line 118
    sput-object v3, Lcom/android/server/am/Pageboost;->mPackageReceiver:Lcom/android/server/am/Pageboost$1;

    .line 119
    .line 120
    sput-object v3, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 121
    .line 122
    sput-object v3, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 123
    .line 124
    sput-object v3, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    .line 126
    sput-object v3, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    .line 128
    sput-object v3, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 129
    .line 130
    sput-object v3, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 131
    .line 132
    sput-object v3, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    sput-boolean v4, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    .line 136
    .line 137
    sput-boolean v4, Lcom/android/server/am/Pageboost;->munlock_firstapp:Z

    .line 138
    .line 139
    const-string/jumbo v5, "dram size : "

    .line 140
    .line 141
    .line 142
    :try_start_0
    const-string v6, "Static Initialization of Pageboost"

    .line 143
    .line 144
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    new-instance v6, Lcom/android/server/ServiceThread;

    .line 148
    .line 149
    const/16 v7, 0xa

    .line 150
    .line 151
    invoke-direct {v6, v7, v0, v2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    sput-object v6, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 155
    .line 156
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 157
    .line 158
    .line 159
    new-instance v6, Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 160
    .line 161
    sget-object v7, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 162
    .line 163
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-direct {v6, v7, v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 168
    .line 169
    .line 170
    sput-object v6, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 171
    .line 172
    new-instance v3, Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 173
    .line 174
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v6, Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 178
    .line 179
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    const/4 v7, 0x0

    .line 183
    iput-object v7, v6, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    .line 184
    .line 185
    new-instance v7, Ljava/lang/Object;

    .line 186
    .line 187
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 188
    .line 189
    .line 190
    iput-object v7, v6, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    .line 191
    .line 192
    sput-object v6, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 193
    .line 194
    sput-object v3, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 195
    .line 196
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    .line 197
    .line 198
    .line 199
    move-result-wide v6

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    if-nez v1, :cond_1

    .line 216
    .line 217
    const-wide v8, 0x180000000L

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    cmp-long v1, v6, v8

    .line 223
    .line 224
    if-ltz v1, :cond_0

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_0
    move v1, v4

    .line 228
    goto :goto_1

    .line 229
    :cond_1
    :goto_0
    move v1, v2

    .line 230
    :goto_1
    sput-boolean v1, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    .line 231
    .line 232
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    .line 233
    .line 234
    .line 235
    move-result-wide v6

    .line 236
    const-wide v8, 0xc0000000L

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    cmp-long v1, v6, v8

    .line 242
    .line 243
    if-gtz v1, :cond_2

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_2
    move v2, v4

    .line 247
    :goto_2
    sput-boolean v2, Lcom/android/server/am/Pageboost;->munlock_firstapp:Z

    .line 248
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v2, " APP_LAUNCH_MUNLOCK_RAMSIZE: 3221225472"

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    new-instance v1, Lcom/android/server/am/Pageboost$1;

    .line 270
    .line 271
    const/4 v2, 0x0

    .line 272
    invoke-direct {v1, v2}, Lcom/android/server/am/Pageboost$1;-><init>(I)V

    .line 273
    .line 274
    .line 275
    sput-object v1, Lcom/android/server/am/Pageboost;->mReceiver:Lcom/android/server/am/Pageboost$1;

    .line 276
    .line 277
    new-instance v1, Lcom/android/server/am/Pageboost$1;

    .line 278
    .line 279
    const/4 v2, 0x1

    .line 280
    invoke-direct {v1, v2}, Lcom/android/server/am/Pageboost$1;-><init>(I)V

    .line 281
    .line 282
    .line 283
    sput-object v1, Lcom/android/server/am/Pageboost;->mPackageReceiver:Lcom/android/server/am/Pageboost$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :catch_0
    const-string/jumbo v1, "failed to staticInitialize by exception"

    .line 287
    .line 288
    .line 289
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    :goto_3
    return-void
.end method

.method public static deleteDB(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "vramdisk enabled: (config) false (decision_by_dram) "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "prefetch level: "

    .line 5
    .line 6
    .line 7
    const-string v2, "alp enabled: "

    .line 8
    .line 9
    const-string/jumbo v3, "prefetch enabled: "

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "ignore dram spec: "

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "minimized: "

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", kernel support: "

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", daemon support: "

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    if-eqz p0, :cond_6

    .line 75
    .line 76
    sget-object v5, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 77
    .line 78
    if-nez v5, :cond_1

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_1
    array-length v5, p1

    .line 83
    const/4 v6, 0x1

    .line 84
    if-le v5, v6, :cond_3

    .line 85
    .line 86
    const-string/jumbo v5, "purge"

    .line 87
    .line 88
    .line 89
    aget-object v7, p1, v6

    .line 90
    .line 91
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    sget-object p1, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->$r8$clinit:I

    .line 102
    .line 103
    const-string v0, "1"

    .line 104
    .line 105
    const-string v1, "AppLRU"

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    int-to-long v0, p1

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string/jumbo v2, "db clear : ret "

    .line 116
    .line 117
    .line 118
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string v0, "Pageboost"

    .line 129
    .line 130
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    const-string p1, "DB is purged. Please type \'adb reboot\'"

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string p1, "(!CAUTION: Do not reboot using \'power key\'. Unless DB will be restored)"

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    const-string p1, "app DB not exists. Try again after 5 seconds"

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    return-void

    .line 150
    :cond_3
    array-length v5, p1

    .line 151
    const/4 v7, 0x2

    .line 152
    if-le v5, v7, :cond_4

    .line 153
    .line 154
    const-string/jumbo v5, "heimdall"

    .line 155
    .line 156
    .line 157
    aget-object p1, p1, v6

    .line 158
    .line 159
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_4

    .line 164
    .line 165
    return-void

    .line 166
    :cond_4
    const-string p1, "== Pageboost dump start =="

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string p1, ""

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string p1, "- Pageboost Configurations"

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-boolean v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    .line 187
    .line 188
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    sget-boolean v3, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 204
    .line 205
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    .line 221
    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sget v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    .line 238
    .line 239
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string/jumbo p1, "prefetch app count: 1"

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    sget-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string/jumbo p1, "memprep enabled: false"

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string p1, ""

    .line 279
    .line 280
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string p1, "- Pageboost AppLRU Info"

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    sget-object p1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 289
    .line 290
    iget-object v0, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 291
    .line 292
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :try_start_1
    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_5

    .line 304
    .line 305
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_1

    .line 319
    :catchall_0
    move-exception p0

    .line 320
    goto :goto_2

    .line 321
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :try_start_2
    const-string p1, ""

    .line 323
    .line 324
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string p1, "- Pageboost Vramdisk Info"

    .line 328
    .line 329
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string/jumbo p1, "disabled"

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const-string p1, ""

    .line 339
    .line 340
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const-string p1, "- Action Log"

    .line 344
    .line 345
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->print(Ljava/io/PrintWriter;)V

    .line 349
    .line 350
    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v0, "- Bigdata: "

    .line 357
    .line 358
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const/4 v0, 0x0

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v0, ",  String: "

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v0, " "

    .line 371
    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string p1, "== pageboost dump end =="

    .line 383
    .line 384
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 385
    .line 386
    .line 387
    goto :goto_4

    .line 388
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 390
    :cond_6
    :goto_3
    return-void

    .line 391
    :catch_0
    const-string p0, "Pageboost"

    .line 392
    .line 393
    const-string/jumbo p1, "failed to dumpInfo by exception"

    .line 394
    .line 395
    .line 396
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    :goto_4
    return-void
.end method

.method public static getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;
    .locals 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/am/Pageboost$FileMapList;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aget p0, p0, v1

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0
.end method

.method public static isPageboostMinimized()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public static onAppLaunch(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string v0, "Pageboost"

    .line 2
    .line 3
    const-string/jumbo v1, "onAppLaunch : "

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_4

    .line 11
    .line 12
    if-eqz p0, :cond_4

    .line 13
    .line 14
    const-string v2, "android.intent.action.MAIN"

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    const-string v2, "android.intent.category.LAUNCHER"

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    if-nez p0, :cond_1

    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    sget v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    .line 68
    .line 69
    const/4 v2, 0x3

    .line 70
    const/4 v3, 0x0

    .line 71
    if-ne v1, v2, :cond_2

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v1, v3

    .line 76
    :goto_0
    if-eqz v1, :cond_3

    .line 77
    .line 78
    const/16 v1, 0xe

    .line 79
    .line 80
    invoke-static {v1, v3, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 v1, 0x5

    .line 85
    const/16 v2, 0x7d0

    .line 86
    .line 87
    invoke-static {v1, v2, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    const/16 v1, 0x11

    .line 91
    .line 92
    invoke-static {v1, v3, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    :goto_2
    return-void

    .line 97
    :catch_0
    const-string/jumbo p0, "failed to onAppLaunch by exception"

    .line 98
    .line 99
    .line 100
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_3
    return-void
.end method

.method public static onProcStatusChange(IILjava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v5, 0x0

    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    move v3, p1

    .line 13
    move v4, p0

    .line 14
    move-object v6, p2

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const-string p0, "Pageboost"

    .line 20
    .line 21
    const-string/jumbo p1, "failed to onProcStatusChange by exception"

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public static prefetchPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "Pageboost"

    .line 2
    .line 3
    const-string/jumbo v1, "prefetchRequested,"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "failed to prefetch. maybe not captured yet : "

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "not in Pageboost pkg list : "

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v4, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    const-string p0, "Pageboost pkg list is not initialized yet"

    .line 24
    .line 25
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    if-nez p0, :cond_2

    .line 30
    .line 31
    const-string/jumbo p0, "null pkg is requested"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {v4, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    const-string v3, "alp"

    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_6

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->activeLaunch()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    .line 68
    .line 69
    if-eqz v2, :cond_7

    .line 70
    .line 71
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    sget v7, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

    .line 79
    .line 80
    const/16 v3, 0x15

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v4, -0x1

    .line 84
    const/4 v5, -0x1

    .line 85
    const/4 v6, -0x1

    .line 86
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->execute()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_7

    .line 95
    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_7
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p0, ","

    .line 113
    .line 114
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catch_0
    const-string/jumbo p0, "failed to prefetchPackage by exception"

    .line 129
    .line 130
    .line 131
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public static sendMessage(IIIIILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    const-string/jumbo v1, "pkg"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-ltz p1, :cond_1

    .line 15
    .line 16
    const-string/jumbo p5, "launchtime"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    if-ltz p2, :cond_2

    .line 23
    .line 24
    const-string/jumbo p1, "pid"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    if-ltz p3, :cond_3

    .line 31
    .line 32
    const-string/jumbo p1, "status"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_3
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    if-lez p4, :cond_4

    .line 48
    .line 49
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 50
    .line 51
    int-to-long p2, p4

    .line 52
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public static sendMessageWithObject(IILjava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    sget-object p2, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 10
    .line 11
    int-to-long v0, p1

    .line 12
    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public static startActiveLaunch(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Pageboost"

    .line 2
    .line 3
    const-string/jumbo v1, "start alp : "

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 v5, -0x1

    .line 28
    const/4 v6, 0x0

    .line 29
    const/16 v2, 0x13

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    const/4 v4, -0x1

    .line 33
    move-object v7, p0

    .line 34
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    return-void

    .line 39
    :catch_0
    const-string/jumbo p0, "failed to startActiveLaunch by exception"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public static stopActiveLaunch()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "Pageboost"

    .line 13
    .line 14
    const-string/jumbo v1, "stop alp"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    const/16 v2, 0x14

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v3, -0x1

    .line 26
    const/4 v4, -0x1

    .line 27
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
