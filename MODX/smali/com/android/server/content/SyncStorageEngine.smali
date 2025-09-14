.class public final Lcom/android/server/content/SyncStorageEngine;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field public static final SOURCES:[Ljava/lang/String;

.field public static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncManager$7;

.field public static final sAuthorityRenames:Ljava/util/HashMap;

.field public static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field public final mAccountInfoFile:Landroid/util/AtomicFile;

.field public final mAccounts:Ljava/util/HashMap;

.field final mAuthorities:Landroid/util/SparseArray;

.field public mAuthorityRemovedListener:Lcom/android/server/content/SyncManager$7;

.field public final mCal:Ljava/util/Calendar;

.field public final mChangeListeners:Landroid/os/RemoteCallbackList;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentSyncs:Landroid/util/SparseArray;

.field final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field public final mDefaultMasterSyncAutomatically:Z

.field public final mGrantSyncAdaptersAccountAccess:Z

.field public final mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

.field public volatile mIsClockValid:Z

.field public volatile mIsJobAttributionFixed:Z

.field public volatile mIsJobNamespaceMigrated:Z

.field public final mLogger:Lcom/android/server/content/SyncLogger;

.field public final mMasterSyncAutomatically:Landroid/util/SparseArray;

.field public mNextAuthorityId:I

.field public mNextHistoryId:I

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mStatisticsFile:Landroid/util/AtomicFile;

.field public final mStatusFile:Landroid/util/AtomicFile;

.field public final mSyncDir:Ljava/io/File;

.field public final mSyncHistory:Ljava/util/ArrayList;

.field public final mSyncRandomOffset:I

.field public mSyncRequestListener:Lcom/android/server/content/SyncManager$7;

.field final mSyncStatus:Landroid/util/SparseArray;

.field public mYear:I

.field public mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "PERIODIC"

    .line 3
    const-string v5, "FEED"

    .line 5
    const-string v0, "OTHER"

    .line 7
    const-string v1, "LOCAL"

    .line 9
    const-string v2, "POLL"

    .line 11
    const-string v3, "USER"

    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 26
    const-string/jumbo v1, "contacts"

    .line 29
    const-string/jumbo v2, "com.android.contacts"

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v1, "calendar"

    .line 38
    const-string/jumbo v2, "com.android.calendar"

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "SyncManager"

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 13
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 27
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    .line 31
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 34
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 45
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 48
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    .line 52
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 55
    const/4 v3, 0x0

    .line 56
    iput v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 58
    const/16 v0, 0x1c

    .line 60
    new-array v0, v0, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 62
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 64
    iput v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    .line 68
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 71
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 75
    move-object/from16 v4, p3

    .line 77
    invoke-direct {v0, v1, v4}, Lcom/android/server/content/SyncStorageEngine$MyHandler;-><init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V

    .line 80
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 82
    move-object/from16 v0, p1

    .line 84
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 86
    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 88
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    .line 91
    move-result-object v4

    .line 92
    iput-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 94
    const-string v4, "GMT+0"

    .line 96
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 99
    move-result-object v4

    .line 100
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 103
    move-result-object v4

    .line 104
    iput-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    move-result-object v0

    .line 110
    const v4, 0x111025f

    .line 113
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 116
    move-result v0

    .line 117
    iput-boolean v0, v1, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 119
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 121
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 127
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 129
    new-instance v0, Ljava/io/File;

    .line 131
    const-string/jumbo v4, "system"

    .line 134
    move-object/from16 v5, p2

    .line 136
    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    new-instance v4, Ljava/io/File;

    .line 141
    const-string/jumbo v5, "sync"

    .line 144
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    iput-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    .line 149
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 152
    new-instance v0, Ljava/io/File;

    .line 154
    const-string/jumbo v5, "pending.bin"

    .line 157
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 163
    move-result v5

    .line 164
    if-nez v5, :cond_0

    .line 166
    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    :goto_0
    new-instance v0, Landroid/util/AtomicFile;

    .line 172
    new-instance v5, Ljava/io/File;

    .line 174
    const-string v6, "accounts.xml"

    .line 176
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v6, "sync-accounts"

    .line 182
    invoke-direct {v0, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    iput-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 187
    new-instance v5, Landroid/util/AtomicFile;

    .line 189
    new-instance v6, Ljava/io/File;

    .line 191
    const-string/jumbo v7, "status"

    .line 194
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v7, "sync-status"

    .line 200
    invoke-direct {v5, v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    iput-object v5, v1, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 205
    new-instance v5, Landroid/util/AtomicFile;

    .line 207
    new-instance v6, Ljava/io/File;

    .line 209
    const-string/jumbo v7, "stats"

    .line 212
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v4, "sync-stats"

    .line 218
    invoke-direct {v5, v6, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    iput-object v5, v1, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 223
    const-string v4, "Error reading accounts"

    .line 225
    const-string v5, "No initial accounts"

    .line 227
    const-string v6, "SyncManagerFile"

    .line 229
    const-string v7, "Reading "

    .line 231
    const/4 v8, 0x1

    .line 232
    const/4 v9, -0x1

    .line 233
    const/4 v10, 0x0

    .line 234
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 237
    move-result-object v11
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 238
    const/4 v12, 0x2

    .line 239
    :try_start_1
    invoke-static {v6, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 242
    move-result v13
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 243
    if-eqz v13, :cond_1

    .line 245
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 247
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v0

    .line 261
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    goto :goto_1

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    move-object v10, v11

    .line 267
    goto/16 :goto_1d

    .line 269
    :catch_0
    move-exception v0

    .line 270
    move-object v10, v11

    .line 271
    goto/16 :goto_e

    .line 273
    :catch_1
    move-exception v0

    .line 274
    move-object v10, v11

    .line 275
    goto/16 :goto_11

    .line 277
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {v11}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 280
    move-result-object v0

    .line 281
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 284
    move-result v6
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 285
    :goto_2
    if-eq v6, v12, :cond_2

    .line 287
    if-eq v6, v8, :cond_2

    .line 289
    :try_start_4
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 292
    move-result v6

    .line 293
    goto :goto_2

    .line 294
    :cond_2
    if-ne v6, v8, :cond_3

    .line 296
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 301
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 304
    move-result v0

    .line 305
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 307
    if-eqz v11, :cond_14

    .line 309
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 312
    goto/16 :goto_12

    .line 314
    :cond_3
    :try_start_6
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 317
    move-result-object v6

    .line 318
    const-string v7, "accounts"

    .line 320
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    move-result v6

    .line 324
    if-eqz v6, :cond_d

    .line 326
    const-string/jumbo v6, "listen-for-tickles"

    .line 329
    invoke-interface {v0, v10, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 332
    move-result v6

    .line 333
    const-string/jumbo v7, "version"

    .line 336
    invoke-interface {v0, v10, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 339
    move-result v7
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 340
    const/4 v13, 0x3

    .line 341
    if-ge v7, v13, :cond_4

    .line 343
    :try_start_7
    iput-boolean v8, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 345
    :cond_4
    :try_start_8
    const-string/jumbo v14, "nextAuthorityId"

    .line 348
    invoke-interface {v0, v10, v14, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 351
    move-result v14

    .line 352
    iget v15, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 354
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    .line 357
    move-result v14

    .line 358
    iput v14, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 360
    const-string/jumbo v14, "offsetInSeconds"

    .line 363
    invoke-interface {v0, v10, v14, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 366
    move-result v14

    .line 367
    iput v14, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 369
    if-nez v14, :cond_5

    .line 371
    new-instance v14, Ljava/util/Random;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 373
    move-object/from16 p1, v11

    .line 375
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 378
    move-result-wide v10

    .line 379
    invoke-direct {v14, v10, v11}, Ljava/util/Random;-><init>(J)V

    .line 382
    const v10, 0x15180

    .line 385
    invoke-virtual {v14, v10}, Ljava/util/Random;->nextInt(I)I

    .line 388
    move-result v10

    .line 389
    iput v10, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 391
    goto :goto_6

    .line 392
    :catchall_1
    move-exception v0

    .line 393
    :goto_3
    move-object/from16 v10, p1

    .line 395
    goto/16 :goto_1d

    .line 397
    :catch_2
    move-exception v0

    .line 398
    :goto_4
    move-object/from16 v10, p1

    .line 400
    goto/16 :goto_e

    .line 402
    :catch_3
    move-exception v0

    .line 403
    :goto_5
    move-object/from16 v10, p1

    .line 405
    goto/16 :goto_11

    .line 407
    :catchall_2
    move-exception v0

    .line 408
    move-object/from16 p1, v11

    .line 410
    goto :goto_3

    .line 411
    :catch_4
    move-exception v0

    .line 412
    move-object/from16 p1, v11

    .line 414
    goto :goto_4

    .line 415
    :catch_5
    move-exception v0

    .line 416
    move-object/from16 p1, v11

    .line 418
    goto :goto_5

    .line 419
    :cond_5
    move-object/from16 p1, v11

    .line 421
    :goto_6
    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 423
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 426
    move-result-object v6

    .line 427
    invoke-virtual {v10, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 433
    move-result v6

    .line 434
    new-instance v10, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    .line 436
    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 438
    invoke-direct {v10, v11}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 441
    move v15, v9

    .line 442
    const/4 v11, 0x0

    .line 443
    const/4 v14, 0x0

    .line 444
    :goto_7
    if-ne v6, v12, :cond_b

    .line 446
    :try_start_a
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 449
    move-result-object v6

    .line 450
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 453
    move-result v3

    .line 454
    if-ne v3, v12, :cond_9

    .line 456
    const-string v3, "authority"

    .line 458
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    move-result v3

    .line 462
    if-eqz v3, :cond_8

    .line 464
    invoke-virtual {v1, v0, v7, v10}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lcom/android/modules/utils/TypedXmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 467
    move-result-object v14

    .line 468
    if-eqz v14, :cond_7

    .line 470
    iget v3, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 472
    if-le v3, v15, :cond_6

    .line 474
    move v15, v3

    .line 475
    :cond_6
    :goto_8
    const/4 v11, 0x0

    .line 476
    goto :goto_9

    .line 477
    :catchall_3
    move-exception v0

    .line 478
    move-object/from16 v10, p1

    .line 480
    move v9, v15

    .line 481
    goto/16 :goto_1d

    .line 483
    :catch_6
    move-exception v0

    .line 484
    move-object/from16 v10, p1

    .line 486
    move v9, v15

    .line 487
    goto/16 :goto_e

    .line 489
    :catch_7
    move-exception v0

    .line 490
    move-object/from16 v10, p1

    .line 492
    move v9, v15

    .line 493
    goto/16 :goto_11

    .line 495
    :cond_7
    const-string v3, "26513719"

    .line 497
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 500
    move-result-object v6

    .line 501
    const-string v11, "Malformed authority"

    .line 503
    filled-new-array {v3, v6, v11}, [Ljava/lang/Object;

    .line 506
    move-result-object v3

    .line 507
    const v6, 0x534e4554

    .line 510
    invoke-static {v6, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 513
    goto :goto_8

    .line 514
    :cond_8
    const-string/jumbo v3, "listenForTickles"

    .line 517
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    move-result v3

    .line 521
    if-eqz v3, :cond_b

    .line 523
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 526
    goto :goto_9

    .line 527
    :cond_9
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 530
    move-result v3

    .line 531
    if-ne v3, v13, :cond_a

    .line 533
    const-string/jumbo v3, "periodicSync"

    .line 536
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    move-result v3

    .line 540
    if-eqz v3, :cond_b

    .line 542
    if-eqz v14, :cond_b

    .line 544
    invoke-static {v0, v14}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    .line 547
    move-result-object v11

    .line 548
    goto :goto_9

    .line 549
    :cond_a
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 552
    move-result v3

    .line 553
    const/4 v12, 0x4

    .line 554
    if-ne v3, v12, :cond_b

    .line 556
    if-eqz v11, :cond_b

    .line 558
    const-string/jumbo v3, "extra"

    .line 561
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    move-result v3

    .line 565
    if-eqz v3, :cond_b

    .line 567
    iget-object v3, v11, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 569
    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 572
    :cond_b
    :goto_9
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 575
    move-result v6
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 576
    if-ne v6, v8, :cond_c

    .line 578
    goto :goto_a

    .line 579
    :cond_c
    const/4 v3, 0x0

    .line 580
    const/4 v12, 0x2

    .line 581
    goto/16 :goto_7

    .line 583
    :cond_d
    move-object/from16 p1, v11

    .line 585
    move v15, v9

    .line 586
    :goto_a
    add-int/2addr v15, v8

    .line 587
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 589
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    .line 592
    move-result v0

    .line 593
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 595
    if-eqz p1, :cond_e

    .line 597
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 600
    :catch_8
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    .line 602
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 607
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 610
    move-result v3

    .line 611
    const/4 v4, 0x0

    .line 612
    :goto_b
    if-ge v4, v3, :cond_12

    .line 614
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 616
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 619
    move-result-object v5

    .line 620
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 622
    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 624
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 626
    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 628
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    move-result-object v6

    .line 632
    check-cast v6, Ljava/lang/String;

    .line 634
    if-nez v6, :cond_f

    .line 636
    goto :goto_c

    .line 637
    :cond_f
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    iget-boolean v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 642
    if-nez v7, :cond_10

    .line 644
    goto :goto_c

    .line 645
    :cond_10
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 647
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 649
    iget-object v10, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 651
    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 653
    invoke-direct {v7, v10, v6, v5}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 656
    const-string/jumbo v5, "cleanup"

    .line 659
    invoke-virtual {v1, v7, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 662
    move-result-object v5

    .line 663
    if-eqz v5, :cond_11

    .line 665
    goto :goto_c

    .line 666
    :cond_11
    const/4 v5, 0x0

    .line 667
    invoke-virtual {v1, v7, v9, v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 670
    move-result-object v6

    .line 671
    iput-boolean v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 673
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 675
    goto :goto_b

    .line 676
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 679
    move-result-object v0

    .line 680
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 683
    move-result v3

    .line 684
    if-eqz v3, :cond_14

    .line 686
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 689
    move-result-object v3

    .line 690
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 692
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 694
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 696
    iget v5, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 698
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 700
    const/4 v6, 0x0

    .line 701
    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 704
    goto :goto_d

    .line 705
    :catchall_4
    move-exception v0

    .line 706
    const/4 v10, 0x0

    .line 707
    goto/16 :goto_1d

    .line 709
    :catch_9
    move-exception v0

    .line 710
    const/4 v10, 0x0

    .line 711
    :goto_e
    if-nez v10, :cond_13

    .line 713
    :try_start_c
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    goto :goto_f

    .line 717
    :catchall_5
    move-exception v0

    .line 718
    goto/16 :goto_1d

    .line 720
    :cond_13
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 723
    :goto_f
    add-int/2addr v9, v8

    .line 724
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 726
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 729
    move-result v0

    .line 730
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 732
    if-eqz v10, :cond_14

    .line 734
    :goto_10
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 737
    goto :goto_12

    .line 738
    :catch_a
    move-exception v0

    .line 739
    const/4 v10, 0x0

    .line 740
    :goto_11
    :try_start_e
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 743
    add-int/2addr v9, v8

    .line 744
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 746
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 749
    move-result v0

    .line 750
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 752
    if-eqz v10, :cond_14

    .line 754
    goto :goto_10

    .line 755
    :catch_b
    :cond_14
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 758
    new-instance v0, Ljava/io/File;

    .line 760
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    .line 762
    const-string/jumbo v4, "stats.bin"

    .line 765
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 771
    move-result v3

    .line 772
    if-eqz v3, :cond_1a

    .line 774
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 776
    invoke-virtual {v3}, Landroid/util/AtomicFile;->exists()Z

    .line 779
    move-result v3

    .line 780
    if-nez v3, :cond_1a

    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 785
    move-result-object v3

    .line 786
    :try_start_f
    new-instance v4, Landroid/util/AtomicFile;

    .line 788
    invoke-direct {v4, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 791
    invoke-virtual {v4}, Landroid/util/AtomicFile;->readFully()[B

    .line 794
    move-result-object v4

    .line 795
    array-length v5, v4
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 796
    const/4 v6, 0x0

    .line 797
    :try_start_10
    invoke-virtual {v3, v4, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 800
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 803
    move v5, v6

    .line 804
    :cond_15
    :goto_13
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 807
    move-result v4

    .line 808
    if-eqz v4, :cond_19

    .line 810
    const/16 v7, 0x65

    .line 812
    const/16 v8, 0x64

    .line 814
    if-eq v4, v7, :cond_17

    .line 816
    if-ne v4, v8, :cond_16

    .line 818
    goto :goto_14

    .line 819
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 821
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    const-string v7, "Unknown stats token: "

    .line 826
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    move-result-object v4

    .line 836
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    goto :goto_15

    .line 840
    :catchall_6
    move-exception v0

    .line 841
    goto :goto_17

    .line 842
    :cond_17
    :goto_14
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 845
    move-result v7

    .line 846
    if-ne v4, v8, :cond_18

    .line 848
    add-int/lit16 v7, v7, 0x2fcc

    .line 850
    :cond_18
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 852
    invoke-direct {v4, v7}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 855
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 858
    move-result v7

    .line 859
    iput v7, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 861
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    .line 864
    move-result-wide v7

    .line 865
    iput-wide v7, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 867
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 870
    move-result v7

    .line 871
    iput v7, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 873
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    .line 876
    move-result-wide v7

    .line 877
    iput-wide v7, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 879
    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 881
    array-length v8, v7

    .line 882
    if-ge v5, v8, :cond_15

    .line 884
    aput-object v4, v7, v5
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 886
    add-int/lit8 v5, v5, 0x1

    .line 888
    goto :goto_13

    .line 889
    :cond_19
    :goto_15
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 892
    goto :goto_16

    .line 893
    :catch_c
    const/4 v6, 0x0

    .line 894
    :catch_d
    :try_start_11
    const-string v4, "No initial statistics"

    .line 896
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 899
    goto :goto_15

    .line 900
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 903
    goto :goto_18

    .line 904
    :goto_17
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 907
    throw v0

    .line 908
    :cond_1a
    const/4 v6, 0x0

    .line 909
    :goto_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 912
    move-result v3

    .line 913
    if-eqz v3, :cond_1b

    .line 915
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 917
    invoke-virtual {v3}, Landroid/util/AtomicFile;->exists()Z

    .line 920
    move-result v3

    .line 921
    if-eqz v3, :cond_1b

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 926
    :cond_1b
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 928
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 931
    move-result v0

    .line 932
    if-nez v0, :cond_1c

    .line 934
    goto :goto_1b

    .line 935
    :cond_1c
    :try_start_12
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 937
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 940
    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 941
    :try_start_13
    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncStorageEngine;->readDayStatsLocked(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 944
    if-eqz v3, :cond_1e

    .line 946
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    .line 949
    goto :goto_1b

    .line 950
    :catch_e
    move-exception v0

    .line 951
    goto :goto_1a

    .line 952
    :catchall_7
    move-exception v0

    .line 953
    move-object v4, v0

    .line 954
    if-eqz v3, :cond_1d

    .line 956
    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 959
    goto :goto_19

    .line 960
    :catchall_8
    move-exception v0

    .line 961
    move-object v3, v0

    .line 962
    :try_start_16
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 965
    :cond_1d
    :goto_19
    throw v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    .line 966
    :goto_1a
    const-string v3, "Unable to read day stats file."

    .line 968
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    :cond_1e
    :goto_1b
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 973
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    instance-of v0, v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 978
    if-eqz v0, :cond_1f

    .line 980
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 982
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 985
    move-result v0

    .line 986
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 988
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 991
    move-result-object v3

    .line 992
    const-string v4, " items"

    .line 994
    const-string v5, "Loaded "

    .line 996
    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    .line 999
    move-result-object v3

    .line 1000
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1003
    move v3, v6

    .line 1004
    :goto_1c
    if-ge v3, v0, :cond_1f

    .line 1006
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 1008
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 1010
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1013
    move-result-object v4

    .line 1014
    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1016
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1018
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    iget-object v6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1023
    invoke-virtual {v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    .line 1026
    move-result-object v6

    .line 1027
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    const-string v6, ", enabled="

    .line 1032
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    iget-boolean v6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1037
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1040
    const-string v6, ", syncable="

    .line 1042
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    iget v6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 1047
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1050
    const-string v6, ", backoff="

    .line 1052
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    iget-wide v6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 1057
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1060
    const-string v6, ", delay="

    .line 1062
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    iget-wide v6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 1067
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1073
    move-result-object v4

    .line 1074
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 1077
    move-result-object v4

    .line 1078
    invoke-virtual {v2, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1081
    add-int/lit8 v3, v3, 0x1

    .line 1083
    goto :goto_1c

    .line 1084
    :cond_1f
    return-void

    .line 1085
    :goto_1d
    add-int/2addr v9, v8

    .line 1086
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1088
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 1091
    move-result v2

    .line 1092
    iput v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1094
    if-eqz v10, :cond_20

    .line 1096
    :try_start_17
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 1099
    :catch_f
    :cond_20
    throw v0
.end method

.method public static calculateDefaultFlexTime(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x5

    .line 3
    cmp-long v0, p0, v0

    .line 5
    if-gez v0, :cond_0

    .line 7
    const-wide/16 p0, 0x0

    .line 9
    return-wide p0

    .line 10
    :cond_0
    const-wide/32 v0, 0x15180

    .line 13
    cmp-long v0, p0, v0

    .line 15
    if-gez v0, :cond_1

    .line 17
    long-to-double p0, p0

    .line 18
    const-wide v0, 0x3fa47ae147ae147bL    # 0.04

    .line 23
    mul-double/2addr p0, v0

    .line 24
    double-to-long p0, p0

    .line 25
    return-wide p0

    .line 26
    :cond_1
    const-wide/16 p0, 0xd80

    .line 28
    return-wide p0
.end method

.method public static parseExtra(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "name"

    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "type"

    .line 12
    invoke-interface {p0, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    :try_start_0
    const-string/jumbo v3, "long"

    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const-string/jumbo v4, "value1"

    .line 26
    if-eqz v3, :cond_0

    .line 28
    :try_start_1
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 35
    goto/16 :goto_1

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto/16 :goto_0

    .line 40
    :cond_0
    const-string/jumbo v3, "integer"

    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 49
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    move-result p0

    .line 53
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string/jumbo v3, "double"

    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 66
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    .line 69
    move-result-wide v2

    .line 70
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-string/jumbo v3, "float"

    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 83
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 86
    move-result p0

    .line 87
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const-string/jumbo v3, "boolean"

    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_4

    .line 100
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    move-result p0

    .line 104
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    const-string/jumbo v3, "string"

    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_5

    .line 117
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    goto :goto_1

    .line 125
    :cond_5
    const-string v3, "account"

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_6

    .line 133
    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 137
    const-string/jumbo v3, "value2"

    .line 140
    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    new-instance v0, Landroid/accounts/Account;

    .line 146
    invoke-direct {v0, v2, p0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    goto :goto_1

    .line 153
    :goto_0
    const-string p1, "SyncManager"

    .line 155
    const-string/jumbo v0, "error parsing bundle value"

    .line 158
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_6
    :goto_1
    return-void
.end method

.method public static parsePeriodicSync(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .locals 9

    .line 1
    const-string v0, "SyncManager"

    .line 3
    new-instance v4, Landroid/os/Bundle;

    .line 5
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    const-string/jumbo v2, "period"

    .line 12
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 15
    move-result-wide v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :try_start_1
    const-string/jumbo v2, "flex"

    .line 19
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 22
    move-result-wide v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    move-wide v7, v0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    .line 29
    move-result-wide v1

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    const-string v7, "Error formatting value parsed for periodic sync flex, using default: "

    .line 34
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-static {v0, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    move-wide v7, v1

    .line 48
    :goto_0
    new-instance p0, Landroid/content/PeriodicSync;

    .line 50
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 52
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 54
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 56
    move-object v1, p0

    .line 57
    invoke-direct/range {v1 .. v8}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 60
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-object p0

    .line 66
    :catch_1
    move-exception p0

    .line 67
    const-string/jumbo p1, "error parsing the period of a periodic sync"

    .line 70
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    return-object v1
.end method

.method public static readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    :pswitch_0
    goto :goto_0

    .line 9
    :pswitch_1
    const-wide v0, 0x1050000000aL

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 17
    move-result v0

    .line 18
    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    const-wide v0, 0x10500000009L

    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 29
    move-result v0

    .line 30
    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 32
    goto :goto_0

    .line 33
    :pswitch_3
    const-wide v0, 0x10500000008L

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 41
    move-result v0

    .line 42
    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 44
    goto :goto_0

    .line 45
    :pswitch_4
    const-wide v0, 0x10500000007L

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 53
    move-result v0

    .line 54
    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 56
    goto :goto_0

    .line 57
    :pswitch_5
    const-wide v0, 0x10500000006L

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 65
    move-result v0

    .line 66
    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 68
    goto :goto_0

    .line 69
    :pswitch_6
    const-wide v0, 0x10500000005L

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 77
    move-result v0

    .line 78
    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 80
    goto :goto_0

    .line 81
    :pswitch_7
    const-wide v0, 0x10500000004L

    .line 86
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 89
    move-result v0

    .line 90
    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 92
    goto :goto_0

    .line 93
    :pswitch_8
    const-wide v0, 0x10500000003L

    .line 98
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 101
    move-result v0

    .line 102
    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 104
    goto :goto_0

    .line 105
    :pswitch_9
    const-wide v0, 0x10500000002L

    .line 110
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 113
    move-result v0

    .line 114
    iput v0, p1, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 116
    goto :goto_0

    .line 117
    :pswitch_a
    const-wide v0, 0x10300000001L

    .line 122
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 125
    move-result-wide v0

    .line 126
    iput-wide v0, p1, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 128
    goto :goto_0

    .line 129
    :pswitch_b
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method

.method public static writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 3
    const-wide v2, 0x10300000001L

    .line 8
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 11
    const-wide v0, 0x10500000002L

    .line 16
    iget v2, p1, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 21
    const-wide v0, 0x10500000003L

    .line 26
    iget v2, p1, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 28
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 31
    const-wide v0, 0x10500000004L

    .line 36
    iget v2, p1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 38
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 41
    const-wide v0, 0x10500000005L

    .line 46
    iget v2, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 48
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 51
    const-wide v0, 0x10500000006L

    .line 56
    iget v2, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 58
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 61
    const-wide v0, 0x10500000007L

    .line 66
    iget v2, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 68
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 71
    const-wide v0, 0x10500000008L

    .line 76
    iget v2, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 78
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 81
    const-wide v0, 0x10500000009L

    .line 86
    iget v2, p1, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 88
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 91
    const-wide v0, 0x1050000000aL

    .line 96
    iget p1, p1, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 98
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 101
    return-void
.end method


# virtual methods
.method public final getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/accounts/AccountAndUser;

    .line 3
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 5
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 10
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x2

    .line 20
    const-string v3, "SyncManager"

    .line 22
    if-nez p0, :cond_1

    .line 24
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, ": unknown account "

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-object v1

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 56
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 64
    if-nez p0, :cond_3

    .line 66
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_2

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string p2, ": unknown provider "

    .line 82
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    return-object v1

    .line 96
    :cond_3
    return-object p0
.end method

.method public final getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "getBackoff"

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    move-result-object p1

    .line 19
    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 28
    move-result-object p0

    .line 29
    monitor-exit v0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    monitor-exit v0

    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final getCurrentDayLocked()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 12
    const/4 v1, 0x6

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 19
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 25
    move-result v2

    .line 26
    if-eq v1, v2, :cond_0

    .line 28
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 30
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 33
    move-result v1

    .line 34
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 36
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 38
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 41
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 43
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 45
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 48
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 50
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 53
    move-result-wide v1

    .line 54
    const-wide/32 v3, 0x5265c00

    .line 57
    div-long/2addr v1, v3

    .line 58
    long-to-int v1, v1

    .line 59
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 61
    :cond_0
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 63
    add-int/2addr v0, p0

    .line 64
    return v0
.end method

.method public final getCurrentSyncsCopy(IZ)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/content/SyncInfo;

    .line 45
    if-nez p2, :cond_1

    .line 47
    iget v2, v1, Landroid/content/SyncInfo;->authorityId:I

    .line 49
    iget-object v3, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 51
    iget-wide v4, v1, Landroid/content/SyncInfo;->startTime:J

    .line 53
    invoke-static {v2, v3, v4, v5}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    .line 56
    move-result-object v1

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    new-instance v2, Landroid/content/SyncInfo;

    .line 62
    invoke-direct {v2, v1}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    .line 65
    move-object v1, v2

    .line 66
    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    monitor-exit v0

    .line 71
    return-object p0

    .line 72
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "getDelayUntil"

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 13
    monitor-exit v0

    .line 14
    const-wide/16 p0, 0x0

    .line 16
    return-wide p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide p0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 21
    monitor-exit v0

    .line 22
    return-wide p0

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final getMasterSyncAutomatically(I)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "userId - "

    .line 4
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Boolean;

    .line 15
    const-string v3, "SyncManager"

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, " auto - "

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 46
    if-nez v2, :cond_0

    .line 48
    const/4 p0, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    move-result p0

    .line 54
    :goto_0
    monitor-exit v1

    .line 55
    return p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    if-nez v2, :cond_2

    .line 60
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    move-result p0

    .line 67
    :goto_1
    monitor-exit v1

    .line 68
    return p0

    .line 69
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 5

    .line 1
    new-instance v0, Landroid/accounts/AccountAndUser;

    .line 3
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 5
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 10
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 18
    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 22
    invoke-direct {v1, v0}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    .line 25
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 32
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 40
    if-nez v0, :cond_4

    .line 42
    if-gez p2, :cond_1

    .line 44
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 46
    add-int/lit8 p3, p2, 0x1

    .line 48
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 50
    const/4 p3, 0x1

    .line 51
    :cond_1
    const/4 v0, 0x2

    .line 52
    const-string v3, "SyncManager"

    .line 54
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v4, "created a new AuthorityInfo for "

    .line 65
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 80
    invoke-direct {v0, p2, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 83
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    if-eqz p3, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 93
    :cond_3
    iget-object p0, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 95
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_4
    return-object v0
.end method

.method public final getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Landroid/content/SyncStatusInfo;

    .line 13
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 16
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_0
    return-object v0
.end method

.method public final getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 8
    if-nez v0, :cond_0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_2

    .line 23
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 31
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 33
    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 35
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 41
    if-eqz v5, :cond_1

    .line 43
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 45
    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 51
    monitor-exit v0

    .line 52
    return-object v4

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    monitor-exit v0

    .line 59
    return-object v1

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0

    .line 62
    :cond_3
    :goto_2
    return-object v1
.end method

.method public final getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 10
    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 13
    const-string/jumbo p1, "getSyncAutomatically"

    .line 16
    invoke-virtual {p0, v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 22
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 24
    if-eqz p0, :cond_0

    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_4

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return v1

    .line 32
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 37
    move-result v3

    .line 38
    :cond_2
    :goto_1
    if-lez v3, :cond_6

    .line 40
    add-int/lit8 v3, v3, -0x1

    .line 42
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 50
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 52
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 57
    if-eq v6, p3, :cond_3

    .line 59
    const/4 v7, -0x1

    .line 60
    if-eq v6, v7, :cond_3

    .line 62
    if-eq p3, v7, :cond_3

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    if-nez p1, :cond_4

    .line 67
    move v6, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 71
    invoke-virtual {v6, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v6

    .line 75
    :goto_2
    if-nez p2, :cond_5

    .line 77
    move v5, v2

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 81
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v5

    .line 85
    :goto_3
    if-eqz v6, :cond_2

    .line 87
    if-eqz v5, :cond_2

    .line 89
    iget-boolean v4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 91
    if-eqz v4, :cond_2

    .line 93
    monitor-exit v0

    .line 94
    return v2

    .line 95
    :cond_6
    monitor-exit v0

    .line 96
    return v1

    .line 97
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 6
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 8
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Ljava/util/ArrayList;

    .line 17
    if-nez v3, :cond_0

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v1

    .line 34
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/content/SyncInfo;

    .line 46
    iget v2, v2, Landroid/content/SyncInfo;->authorityId:I

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_1

    .line 54
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 56
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 62
    monitor-exit v0

    .line 63
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    const/4 p0, 0x0

    .line 69
    return p0

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :try_start_4
    throw p0

    .line 73
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    throw p0
.end method

.method public final isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_3

    .line 14
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 22
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 24
    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 26
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 32
    if-nez v5, :cond_0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 37
    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-boolean v4, v4, Landroid/content/SyncStatusInfo;->pending:Z

    .line 46
    if-eqz v4, :cond_2

    .line 48
    monitor-exit v0

    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    monitor-exit v0

    .line 57
    return v2

    .line 58
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 9
    move-result-object v1

    .line 10
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    .line 15
    move-result-object v1

    .line 16
    iput-boolean p2, v1, Landroid/content/SyncStatusInfo;->pending:Z

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const/4 p2, 0x2

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final parseAuthority(Lcom/android/modules/utils/TypedXmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p3

    .line 7
    const-string v4, "SyncManager"

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, -0x1

    .line 11
    :try_start_0
    const-string/jumbo v0, "id"

    .line 14
    invoke-interface {v2, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string/jumbo v7, "error parsing the id of the authority"

    .line 23
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    move v0, v6

    .line 27
    :goto_0
    if-ltz v0, :cond_d

    .line 29
    const-string v7, "authority"

    .line 31
    invoke-interface {v2, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v7

    .line 35
    const-string/jumbo v8, "enabled"

    .line 38
    const/4 v9, 0x1

    .line 39
    invoke-interface {v2, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 42
    move-result v8

    .line 43
    const-string/jumbo v10, "syncable"

    .line 46
    invoke-interface {v2, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v10

    .line 50
    const-string v11, "account"

    .line 52
    invoke-interface {v2, v5, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v11

    .line 56
    const-string/jumbo v12, "type"

    .line 59
    invoke-interface {v2, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v12

    .line 63
    const-string/jumbo v13, "user"

    .line 66
    const/4 v14, 0x0

    .line 67
    invoke-interface {v2, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 70
    move-result v13

    .line 71
    const-string/jumbo v15, "package"

    .line 74
    invoke-interface {v2, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v15

    .line 78
    const-string/jumbo v9, "class"

    .line 81
    invoke-interface {v2, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    if-nez v12, :cond_0

    .line 87
    if-nez v15, :cond_0

    .line 89
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    move-result-object v10

    .line 93
    const-string/jumbo v12, "com.google"

    .line 96
    :cond_0
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 104
    const-string v9, "SyncManagerFile"

    .line 106
    const/4 v6, 0x2

    .line 107
    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 110
    move-result v16

    .line 111
    const-string v14, " syncable="

    .line 113
    const-string v6, " enabled="

    .line 115
    if-eqz v16, :cond_1

    .line 117
    move-object/from16 v16, v4

    .line 119
    const-string v4, "Adding authority: account="

    .line 121
    move/from16 v17, v0

    .line 123
    const-string v0, " accountType="

    .line 125
    const-string v1, " auth="

    .line 127
    invoke-static {v4, v11, v0, v12, v1}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    move-result-object v0

    .line 131
    const-string v1, " package="

    .line 133
    const-string v4, " class="

    .line 135
    invoke-static {v0, v7, v1, v15, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, " user="

    .line 140
    invoke-static {v13, v2, v1, v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 143
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    move/from16 v17, v0

    .line 162
    move-object/from16 v16, v4

    .line 164
    :goto_1
    if-nez v5, :cond_9

    .line 166
    const/4 v0, 0x2

    .line 167
    invoke-static {v9, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_2

    .line 173
    const-string v0, "Creating authority entry"

    .line 175
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    if-eqz v11, :cond_9

    .line 180
    if-eqz v7, :cond_9

    .line 182
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 184
    new-instance v1, Landroid/accounts/Account;

    .line 186
    invoke-direct {v1, v11, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {v0, v1, v7, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 192
    iget-object v2, v3, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountsCache:Landroid/util/SparseArray;

    .line 194
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object v2

    .line 198
    check-cast v2, [Landroid/accounts/Account;

    .line 200
    if-nez v2, :cond_3

    .line 202
    iget-object v2, v3, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountManager:Landroid/accounts/AccountManager;

    .line 204
    invoke-virtual {v2, v13}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    .line 207
    move-result-object v2

    .line 208
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountsCache:Landroid/util/SparseArray;

    .line 210
    invoke-virtual {v4, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    :cond_3
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    move-result v2

    .line 217
    if-eqz v2, :cond_8

    .line 219
    iget-object v2, v3, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mProvidersPerUserCache:Landroid/util/SparseArray;

    .line 221
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Landroid/util/ArrayMap;

    .line 227
    if-nez v2, :cond_4

    .line 229
    new-instance v2, Landroid/util/ArrayMap;

    .line 231
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 234
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mProvidersPerUserCache:Landroid/util/SparseArray;

    .line 236
    invoke-virtual {v4, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    :cond_4
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 242
    move-result v4

    .line 243
    if-nez v4, :cond_6

    .line 245
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 247
    const/high16 v4, 0xc0000

    .line 249
    invoke-virtual {v3, v7, v4, v13}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    .line 252
    move-result-object v3

    .line 253
    if-eqz v3, :cond_5

    .line 255
    const/4 v9, 0x1

    .line 256
    goto :goto_2

    .line 257
    :cond_5
    const/4 v9, 0x0

    .line 258
    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v2, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_6
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    move-result-object v2

    .line 269
    check-cast v2, Ljava/lang/Boolean;

    .line 271
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_8

    .line 277
    const/4 v4, 0x0

    .line 278
    move-object/from16 v2, p0

    .line 280
    move/from16 v3, v17

    .line 282
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 285
    move-result-object v0

    .line 286
    if-lez p2, :cond_7

    .line 288
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 293
    :cond_7
    move-object v5, v0

    .line 294
    goto :goto_3

    .line 295
    :cond_8
    const/4 v2, -0x1

    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    move-result-object v0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    .line 302
    const-string v3, "account:"

    .line 304
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, " provider:"

    .line 312
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, " user:"

    .line 320
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v1

    .line 330
    const-string v2, "35028827"

    .line 332
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    .line 335
    move-result-object v0

    .line 336
    const v1, 0x534e4554

    .line 339
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 342
    :cond_9
    :goto_3
    if-eqz v5, :cond_c

    .line 344
    iput-boolean v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 346
    if-nez v10, :cond_a

    .line 348
    const/4 v2, -0x1

    .line 349
    goto :goto_4

    .line 350
    :cond_a
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 353
    move-result v2

    .line 354
    :goto_4
    iput v2, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 356
    goto :goto_5

    .line 357
    :catch_1
    const-string/jumbo v0, "unknown"

    .line 360
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_b

    .line 366
    const/4 v1, -0x1

    .line 367
    iput v1, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 369
    goto :goto_5

    .line 370
    :cond_b
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 373
    move-result v0

    .line 374
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 376
    goto :goto_5

    .line 377
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 379
    const-string v1, "Failure adding authority: auth="

    .line 381
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    move-object/from16 v1, v16

    .line 398
    invoke-static {v0, v10, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_d
    :goto_5
    return-object v5
.end method

.method public final parseListenForTickles(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string/jumbo v1, "user"

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v1

    .line 11
    const-string v2, "SyncManager"

    .line 13
    const-string/jumbo v3, "error parsing the user for listen-for-tickles"

    .line 16
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    const-string/jumbo v2, "enabled"

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 27
    move-result p1

    .line 28
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    return-void
.end method

.method public final readDayStatsLocked(Ljava/io/InputStream;)V
    .locals 12

    .line 1
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    .line 3
    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    move v1, p1

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 11
    move-result v2

    .line 12
    const/4 v3, -0x1

    .line 13
    if-eq v2, v3, :cond_9

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eq v2, v4, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-wide v5, 0x20b00000001L

    .line 24
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 27
    move-result-wide v5

    .line 28
    const-wide v7, 0x10500000001L

    .line 33
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 39
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 41
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 44
    move-result v9

    .line 45
    invoke-direct {v2, v9}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 51
    invoke-direct {v2, p1}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 54
    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 57
    move-result v9

    .line 58
    if-eq v9, v3, :cond_8

    .line 60
    if-eq v9, v4, :cond_7

    .line 62
    const/4 v10, 0x2

    .line 63
    if-eq v9, v10, :cond_6

    .line 65
    const/4 v10, 0x3

    .line 66
    if-eq v9, v10, :cond_5

    .line 68
    const/4 v10, 0x4

    .line 69
    if-eq v9, v10, :cond_4

    .line 71
    const/4 v10, 0x5

    .line 72
    if-eq v9, v10, :cond_3

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-wide v9, 0x10300000005L

    .line 80
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 83
    move-result-wide v9

    .line 84
    iput-wide v9, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const-wide v9, 0x10500000004L

    .line 92
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 95
    move-result v9

    .line 96
    iput v9, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    const-wide v9, 0x10300000003L

    .line 104
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 107
    move-result-wide v9

    .line 108
    iput-wide v9, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 110
    goto :goto_1

    .line 111
    :cond_6
    const-wide v9, 0x10500000002L

    .line 116
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 119
    move-result v9

    .line 120
    iput v9, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 122
    goto :goto_1

    .line 123
    :cond_7
    const-string v9, "SyncManager"

    .line 125
    const-string v10, "Failed to read the day via fast-path; some data might not have been read."

    .line 127
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v9, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 132
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 135
    move-result v10

    .line 136
    invoke-direct {v9, v10}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 139
    iget v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 141
    iput v10, v9, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 143
    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 145
    iput-wide v10, v9, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 147
    iget v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 149
    iput v10, v9, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 151
    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 153
    iput-wide v10, v9, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 155
    move-object v2, v9

    .line 156
    goto :goto_1

    .line 157
    :cond_8
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 160
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 162
    aput-object v2, v3, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 166
    array-length v2, v3

    .line 167
    if-ne v1, v2, :cond_0

    .line 169
    :cond_9
    return-void
.end method

.method public final readStatusInfoLocked(Ljava/io/InputStream;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Landroid/util/proto/ProtoInputStream;

    .line 5
    move-object/from16 v2, p1

    .line 7
    invoke-direct {v1, v2}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v2, v3, :cond_d

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x2

    .line 19
    if-eq v2, v4, :cond_3

    .line 21
    if-eq v2, v5, :cond_2

    .line 23
    const/4 v3, 0x3

    .line 24
    if-eq v2, v3, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-wide v2, 0x10800000003L

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 35
    move-result v2

    .line 36
    iput-boolean v2, v0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-wide v2, 0x10800000002L

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 47
    move-result v2

    .line 48
    iput-boolean v2, v0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const-wide v6, 0x20b00000001L

    .line 56
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 59
    move-result-wide v6

    .line 60
    const-wide v8, 0x10500000002L

    .line 65
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 68
    move-result v2

    .line 69
    const/4 v10, 0x0

    .line 70
    if-eqz v2, :cond_4

    .line 72
    new-instance v2, Landroid/content/SyncStatusInfo;

    .line 74
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 77
    move-result v11

    .line 78
    invoke-direct {v2, v11}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    new-instance v2, Landroid/content/SyncStatusInfo;

    .line 84
    invoke-direct {v2, v10}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 87
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    .line 89
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 92
    move v12, v10

    .line 93
    move v13, v12

    .line 94
    :goto_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 97
    move-result v14

    .line 98
    if-eq v14, v3, :cond_c

    .line 100
    const-string v15, "SyncManager"

    .line 102
    packed-switch v14, :pswitch_data_0

    .line 105
    goto :goto_3

    .line 106
    :pswitch_0
    const-wide v8, 0x20300000012L

    .line 111
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 114
    move-result-wide v8

    .line 115
    iget-object v14, v2, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    .line 117
    array-length v10, v14

    .line 118
    if-ne v13, v10, :cond_5

    .line 120
    const-string v8, "Attempted to read more per source last failure times than expected; data might be corrupted."

    .line 122
    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    aput-wide v8, v14, v13

    .line 128
    add-int/lit8 v13, v13, 0x1

    .line 130
    :goto_3
    const-wide v8, 0x10500000002L

    .line 135
    goto/16 :goto_7

    .line 137
    :pswitch_1
    const-wide v8, 0x20300000011L

    .line 142
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 145
    move-result-wide v8

    .line 146
    iget-object v10, v2, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    .line 148
    array-length v14, v10

    .line 149
    if-ne v12, v14, :cond_6

    .line 151
    const-string v8, "Attempted to read more per source last success times than expected; data might be corrupted."

    .line 153
    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    goto :goto_3

    .line 157
    :cond_6
    aput-wide v8, v10, v12

    .line 159
    add-int/lit8 v12, v12, 0x1

    .line 161
    goto :goto_3

    .line 162
    :pswitch_2
    const-wide v8, 0x10b00000010L

    .line 167
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 170
    move-result-wide v8

    .line 171
    iget-object v10, v2, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 173
    invoke-static {v1, v10}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 176
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 179
    goto :goto_3

    .line 180
    :pswitch_3
    const-wide v8, 0x10b0000000fL

    .line 185
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 188
    move-result-wide v8

    .line 189
    iget-object v10, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 191
    invoke-static {v1, v10}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 194
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 197
    goto :goto_3

    .line 198
    :pswitch_4
    const-wide v8, 0x10b0000000eL

    .line 203
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 206
    move-result-wide v8

    .line 207
    iget-object v10, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 209
    invoke-static {v1, v10}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 212
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 215
    goto :goto_3

    .line 216
    :pswitch_5
    const-wide v8, 0x1030000000dL

    .line 221
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 224
    move-result-wide v8

    .line 225
    iput-wide v8, v2, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    .line 227
    goto :goto_3

    .line 228
    :pswitch_6
    const-wide v8, 0x20b0000000cL

    .line 233
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 236
    move-result-wide v8

    .line 237
    const-wide/16 v14, 0x0

    .line 239
    const/4 v10, 0x0

    .line 240
    :goto_4
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 243
    move-result v5

    .line 244
    if-eq v5, v3, :cond_9

    .line 246
    if-eq v5, v4, :cond_8

    .line 248
    const/4 v3, 0x2

    .line 249
    if-eq v5, v3, :cond_7

    .line 251
    goto :goto_5

    .line 252
    :cond_7
    const-wide v3, 0x10900000002L

    .line 257
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 260
    move-result-object v10

    .line 261
    goto :goto_5

    .line 262
    :cond_8
    const-wide v3, 0x10300000001L

    .line 267
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 270
    move-result-wide v3

    .line 271
    move-wide v14, v3

    .line 272
    :goto_5
    const/4 v3, -0x1

    .line 273
    const/4 v4, 0x1

    .line 274
    goto :goto_4

    .line 275
    :cond_9
    if-nez v10, :cond_a

    .line 277
    const/4 v10, 0x0

    .line 278
    goto :goto_6

    .line 279
    :cond_a
    new-instance v3, Landroid/util/Pair;

    .line 281
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 284
    move-result-object v4

    .line 285
    invoke-direct {v3, v4, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    move-object v10, v3

    .line 289
    :goto_6
    if-eqz v10, :cond_b

    .line 291
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_b
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 297
    goto/16 :goto_3

    .line 299
    :pswitch_7
    const-wide v3, 0x2030000000bL

    .line 304
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 307
    move-result-wide v3

    .line 308
    invoke-virtual {v2, v3, v4}, Landroid/content/SyncStatusInfo;->addPeriodicSyncTime(J)V

    .line 311
    goto/16 :goto_3

    .line 313
    :pswitch_8
    const-wide v3, 0x1080000000aL

    .line 318
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 321
    move-result v3

    .line 322
    iput-boolean v3, v2, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 324
    goto/16 :goto_3

    .line 326
    :pswitch_9
    const-wide v3, 0x10800000009L

    .line 331
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 334
    move-result v3

    .line 335
    iput-boolean v3, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 337
    goto/16 :goto_3

    .line 339
    :pswitch_a
    const-wide v3, 0x10300000008L

    .line 344
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 347
    move-result-wide v3

    .line 348
    iput-wide v3, v2, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 350
    goto/16 :goto_3

    .line 352
    :pswitch_b
    const-wide v3, 0x10900000007L

    .line 357
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 360
    move-result-object v3

    .line 361
    iput-object v3, v2, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 363
    goto/16 :goto_3

    .line 365
    :pswitch_c
    const-wide v3, 0x10500000006L

    .line 370
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 373
    move-result v3

    .line 374
    iput v3, v2, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 376
    goto/16 :goto_3

    .line 378
    :pswitch_d
    const-wide v3, 0x10300000005L

    .line 383
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 386
    move-result-wide v3

    .line 387
    iput-wide v3, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 389
    goto/16 :goto_3

    .line 391
    :pswitch_e
    const-wide v3, 0x10500000004L

    .line 396
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 399
    move-result v3

    .line 400
    iput v3, v2, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 402
    goto/16 :goto_3

    .line 404
    :pswitch_f
    const-wide v3, 0x10300000003L

    .line 409
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 412
    move-result-wide v3

    .line 413
    iput-wide v3, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 415
    goto/16 :goto_3

    .line 417
    :pswitch_10
    const-string v3, "Failed to read the authority id via fast-path; some data might not have been read."

    .line 419
    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v3, Landroid/content/SyncStatusInfo;

    .line 424
    const-wide v8, 0x10500000002L

    .line 429
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 432
    move-result v4

    .line 433
    invoke-direct {v3, v4, v2}, Landroid/content/SyncStatusInfo;-><init>(ILandroid/content/SyncStatusInfo;)V

    .line 436
    move-object v2, v3

    .line 437
    :goto_7
    const/4 v3, -0x1

    .line 438
    const/4 v4, 0x1

    .line 439
    const/4 v5, 0x2

    .line 440
    const/4 v10, 0x0

    .line 441
    goto/16 :goto_2

    .line 443
    :cond_c
    invoke-virtual {v2, v11}, Landroid/content/SyncStatusInfo;->populateLastEventsInformation(Ljava/util/ArrayList;)V

    .line 446
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 449
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 451
    iget v4, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 453
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 456
    move-result v3

    .line 457
    if-ltz v3, :cond_0

    .line 459
    const/4 v3, 0x0

    .line 460
    iput-boolean v3, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 462
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 464
    iget v4, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 466
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    goto/16 :goto_0

    .line 471
    :cond_d
    return-void

    .line 472
    nop

    .line 473
    :pswitch_data_0
    .packed-switch 0x2
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

.method public readStatusLocked()V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    .line 5
    const-string/jumbo v2, "status.bin"

    .line 8
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    move-result v1

    .line 15
    const-string v2, "SyncManager"

    .line 17
    if-eqz v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 21
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_3

    .line 27
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    .line 29
    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 32
    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    .line 35
    move-result-object v1

    .line 36
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 39
    move-result-object v3

    .line 40
    array-length v4, v1

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v3, v1, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 45
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 51
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    if-eqz v1, :cond_2

    .line 54
    const/16 v4, 0x64

    .line 56
    if-ne v1, v4, :cond_1

    .line 58
    :try_start_1
    new-instance v1, Landroid/content/SyncStatusInfo;

    .line 60
    invoke-direct {v1, v3}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 63
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 65
    iget v6, v1, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 67
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 70
    move-result v4

    .line 71
    if-ltz v4, :cond_0

    .line 73
    iput-boolean v5, v1, Landroid/content/SyncStatusInfo;->pending:Z

    .line 75
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 77
    iget v6, v1, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 79
    invoke-virtual {v4, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    :try_start_2
    const-string v4, "Unable to parse some sync status."

    .line 86
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v4, "Unknown status token: "

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    goto :goto_1

    .line 111
    :catch_1
    const-string v1, "No initial status"

    .line 113
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 119
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 127
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 138
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_5

    .line 144
    return-void

    .line 145
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 147
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 150
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 151
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatusInfoLocked(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    if-eqz v0, :cond_7

    .line 156
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 159
    goto :goto_4

    .line 160
    :catch_2
    move-exception p0

    .line 161
    goto :goto_3

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    if-eqz v0, :cond_6

    .line 165
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 168
    goto :goto_2

    .line 169
    :catchall_1
    move-exception v0

    .line 170
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 173
    :cond_6
    :goto_2
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 174
    :goto_3
    const-string v0, "Unable to read status info file."

    .line 176
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_7
    :goto_4
    return-void
.end method

.method public final removeAuthorityLocked(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 3
    new-instance v1, Landroid/accounts/AccountAndUser;

    .line 5
    invoke-direct {v1, p1, p3}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 18
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 24
    if-eqz p1, :cond_1

    .line 26
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncManager$7;

    .line 28
    if-eqz p2, :cond_0

    .line 30
    iget-object p3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 32
    invoke-virtual {p2, p3}, Lcom/android/server/content/SyncManager$7;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 37
    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 39
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 42
    if-eqz p4, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 47
    :cond_1
    return-void
.end method

.method public final removeStaleAccounts([Landroid/accounts/Account;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "SyncManager"

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const-string v1, "SyncManager"

    .line 15
    const-string v3, "Updating for new accounts..."

    .line 17
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_5

    .line 24
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/SparseArray;

    .line 26
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 29
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v3

    .line 39
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_6

    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 51
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 53
    iget v6, v5, Landroid/accounts/AccountAndUser;->userId:I

    .line 55
    if-eq v6, p2, :cond_2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    if-eqz p1, :cond_3

    .line 60
    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 62
    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_1

    .line 68
    :cond_3
    const-string v5, "SyncManager"

    .line 70
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_4

    .line 76
    const-string v5, "SyncManager"

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v7, "Account removed: "

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v7, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v6

    .line 97
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 102
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 105
    move-result-object v4

    .line 106
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object v4

    .line 110
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_5

    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v5

    .line 120
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 122
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 124
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    goto :goto_2

    .line 128
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 135
    move-result p1

    .line 136
    if-lez p1, :cond_d

    .line 138
    :cond_7
    if-lez p1, :cond_c

    .line 140
    add-int/lit8 p1, p1, -0x1

    .line 142
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 145
    move-result p2

    .line 146
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 152
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncManager$7;

    .line 154
    if-eqz v3, :cond_8

    .line 156
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 158
    invoke-virtual {v3, v2}, Lcom/android/server/content/SyncManager$7;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 161
    :cond_8
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 163
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 166
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 168
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 171
    move-result v2

    .line 172
    :cond_9
    :goto_3
    if-lez v2, :cond_a

    .line 174
    add-int/lit8 v2, v2, -0x1

    .line 176
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 178
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 181
    move-result v3

    .line 182
    if-ne v3, p2, :cond_9

    .line 184
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 186
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 189
    move-result v4

    .line 190
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 193
    goto :goto_3

    .line 194
    :cond_a
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 199
    move-result v2

    .line 200
    :cond_b
    :goto_4
    if-lez v2, :cond_7

    .line 202
    add-int/lit8 v2, v2, -0x1

    .line 204
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 212
    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 214
    if-ne v3, p2, :cond_b

    .line 216
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    goto :goto_4

    .line 222
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 231
    :cond_d
    monitor-exit v0

    .line 232
    return-void

    .line 233
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    throw p0
.end method

.method public final reportChange(IILjava/lang/String;)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 6
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 7
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v5

    .line 8
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 9
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    if-eq p2, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 10
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v3, v5, p2, p3, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_4
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const-string p0, "SyncManager"

    const/4 p2, 0x2

    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 17
    const-string p0, "SyncManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "reportChange "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :catch_0
    :goto_1
    if-lez p0, :cond_6

    add-int/lit8 p0, p0, -0x1

    .line 19
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ISyncStatusObserver;

    invoke-interface {p2, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    return-void

    .line 20
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v1, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Landroid/content/ContentResolver;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 3
    :goto_1
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    return-void
.end method

.method public final resetTodayStats(Z)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string v0, "SyncManager"

    .line 5
    const-string v1, "Force resetting today stats."

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 30
    iget-boolean v4, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 32
    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .locals 10

    .line 1
    const-string v0, "SyncManager"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "SyncManager"

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v2, "setBackoff: "

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " -> nextSyncTime "

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, ", nextDelay "

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 51
    const/4 v9, 0x1

    .line 52
    if-eqz v2, :cond_3

    .line 54
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 56
    if-nez v1, :cond_1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, -0x1

    .line 60
    invoke-virtual {p0, p1, v1, v9}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 63
    move-result-object v1

    .line 64
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 66
    cmp-long v2, v2, p2

    .line 68
    if-nez v2, :cond_2

    .line 70
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 72
    cmp-long v2, v2, p4

    .line 74
    if-nez v2, :cond_2

    .line 76
    const/4 p2, 0x0

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 82
    iput-wide p4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 84
    move p2, v9

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 88
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 90
    move-object v1, p0

    .line 91
    move-wide v5, p2

    .line 92
    move-wide v7, p4

    .line 93
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    .line 96
    move-result p2

    .line 97
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz p2, :cond_4

    .line 100
    invoke-virtual {p0, v9, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 103
    :cond_4
    return-void

    .line 104
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0
.end method

.method public final setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_5

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 24
    if-eqz p1, :cond_1

    .line 26
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 28
    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 30
    invoke-virtual {p1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 36
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    .line 38
    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    .line 40
    if-eq p2, v2, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 45
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v1

    .line 53
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 65
    if-eqz p3, :cond_3

    .line 67
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 69
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 71
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 80
    cmp-long v3, v3, p4

    .line 82
    if-nez v3, :cond_4

    .line 84
    iget-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 86
    cmp-long v3, v3, p6

    .line 88
    if-eqz v3, :cond_2

    .line 90
    :cond_4
    iput-wide p4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 92
    iput-wide p6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 94
    const/4 v0, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    return v0
.end method

.method public final setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 5
    move-object/from16 v2, p1

    .line 7
    move/from16 v3, p2

    .line 9
    move-object/from16 v4, p3

    .line 11
    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 14
    const-string/jumbo v2, "setIsSyncable: already set to "

    .line 17
    const-string/jumbo v3, "setIsSyncable: "

    .line 20
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 22
    const-string v5, "Set syncable "

    .line 24
    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    .line 27
    move-result-object v6

    .line 28
    const-string v7, " value="

    .line 30
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    move-result-object v8

    .line 34
    const-string v9, " cuid="

    .line 36
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v10

    .line 40
    const-string v11, " cpid="

    .line 42
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v12

    .line 46
    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 53
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 55
    monitor-enter v4

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, -0x1

    .line 58
    :try_start_0
    invoke-virtual {v0, v1, v6, v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 61
    move-result-object v5

    .line 62
    move/from16 v7, p4

    .line 64
    if-ge v7, v6, :cond_0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move v6, v7

    .line 68
    :goto_0
    const-string v7, "SyncManager"

    .line 70
    const/4 v8, 0x2

    .line 71
    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_1

    .line 77
    const-string v7, "SyncManager"

    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v3, " -> "

    .line 93
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto/16 :goto_4

    .line 110
    :cond_1
    :goto_1
    iget v3, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 112
    if-ne v3, v6, :cond_3

    .line 114
    const-string v0, "SyncManager"

    .line 116
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_2

    .line 122
    const-string v0, "SyncManager"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v2, ", doing nothing"

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    monitor-exit v4

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    iput v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 151
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    const/4 v2, 0x1

    .line 153
    if-ne v6, v2, :cond_5

    .line 155
    new-instance v12, Landroid/os/Bundle;

    .line 157
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 160
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 163
    move-result v3

    .line 164
    const/16 v4, 0x3e8

    .line 166
    if-ne v3, v4, :cond_4

    .line 168
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncManager$7;

    .line 170
    if-eqz v3, :cond_4

    .line 172
    iget-object v4, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 174
    iget-object v8, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 176
    iget v9, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 178
    iget-object v11, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 180
    iget-object v7, v3, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    .line 182
    const/4 v14, 0x0

    .line 183
    const/16 v17, 0x0

    .line 185
    const/4 v10, -0x5

    .line 186
    const/4 v13, -0x2

    .line 187
    move/from16 v15, p5

    .line 189
    move/from16 v16, p6

    .line 191
    invoke-virtual/range {v7 .. v17}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 194
    goto :goto_2

    .line 195
    :cond_4
    new-instance v3, Landroid/content/SyncRequest$Builder;

    .line 197
    invoke-direct {v3}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 200
    invoke-virtual {v3}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3, v12}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    .line 207
    move-result-object v3

    .line 208
    iget-object v4, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 210
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 212
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 214
    invoke-virtual {v3, v5, v4}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 217
    invoke-virtual {v3}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    .line 220
    move-result-object v3

    .line 221
    invoke-static {v3}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    .line 224
    :cond_5
    :goto_2
    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 227
    :goto_3
    return-void

    .line 228
    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    throw v0
.end method

.method public final setMasterSyncAutomatically(IIIIZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v12, p1

    .line 3
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 5
    const-string v2, "Set master enabled="

    .line 7
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v3

    .line 11
    const-string v4, " user="

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v5

    .line 17
    const-string v6, " cuid="

    .line 19
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v7

    .line 23
    const-string v8, " cpid="

    .line 25
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v9

    .line 29
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 36
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 38
    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/Boolean;

    .line 47
    if-eqz v2, :cond_0

    .line 49
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 65
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz p5, :cond_2

    .line 78
    new-instance v6, Landroid/os/Bundle;

    .line 80
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 83
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 86
    move-result v1

    .line 87
    const/16 v2, 0x3e8

    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v5, 0x0

    .line 91
    if-ne v1, v2, :cond_1

    .line 93
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncManager$7;

    .line 95
    if-eqz v1, :cond_1

    .line 97
    iget-object v1, v1, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    .line 99
    const/4 v7, -0x2

    .line 100
    const/4 v11, 0x0

    .line 101
    const/4 v4, -0x7

    .line 102
    move-object v2, v3

    .line 103
    move v3, p1

    .line 104
    move v8, p2

    .line 105
    move/from16 v9, p3

    .line 107
    move/from16 v10, p4

    .line 109
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v3, v5, v6}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(IILjava/lang/String;)V

    .line 121
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 123
    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    const-string v0, "android"

    .line 130
    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 133
    return-void

    .line 134
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    throw v0
.end method

.method public final setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move/from16 v3, p2

    .line 7
    move-object/from16 v1, p3

    .line 9
    move/from16 v15, p4

    .line 11
    const-string/jumbo v14, "setSyncAutomatically: already set to "

    .line 14
    const-string v4, "SyncManager"

    .line 16
    const/4 v13, 0x2

    .line 17
    invoke-static {v4, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 23
    const-string v4, "SyncManager"

    .line 25
    const-string/jumbo v5, "setSyncAutomatically:  provider "

    .line 28
    const-string v6, ", user "

    .line 30
    const-string v7, " -> "

    .line 32
    invoke-static {v3, v5, v1, v6, v7}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v5

    .line 36
    invoke-static {v4, v5, v15}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 39
    :cond_0
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 41
    const-string v4, "Set sync auto account="

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 46
    move-result-object v5

    .line 47
    const-string v6, " user="

    .line 49
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v7

    .line 53
    const-string v8, " authority="

    .line 55
    const-string v10, " value="

    .line 57
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 60
    move-result-object v11

    .line 61
    const-string v16, " cuid="

    .line 63
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v17

    .line 67
    const-string v18, " cpid="

    .line 69
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v19

    .line 73
    move-object/from16 v9, p3

    .line 75
    move-object v1, v12

    .line 76
    move-object/from16 v12, v16

    .line 78
    move-object/from16 v13, v17

    .line 80
    move-object/from16 v20, v14

    .line 82
    move-object/from16 v14, v18

    .line 84
    move-object/from16 v15, v19

    .line 86
    filled-new-array/range {v4 .. v15}, [Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v1, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 93
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 95
    monitor-enter v1

    .line 96
    :try_start_0
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 98
    move-object/from16 v5, p3

    .line 100
    invoke-direct {v4, v2, v5, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v7, -0x1

    .line 105
    invoke-virtual {v0, v4, v7, v6}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 108
    move-result-object v12

    .line 109
    iget-boolean v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 111
    move/from16 v6, p4

    .line 113
    if-ne v4, v6, :cond_2

    .line 115
    const-string v0, "SyncManager"

    .line 117
    const/4 v4, 0x2

    .line 118
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 124
    const-string v0, "SyncManager"

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    move-object/from16 v3, v20

    .line 130
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, ", doing nothing"

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    goto :goto_2

    .line 151
    :cond_1
    :goto_0
    monitor-exit v1

    .line 152
    return-void

    .line 153
    :cond_2
    const/4 v4, 0x2

    .line 154
    if-eqz v6, :cond_3

    .line 156
    iget v8, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 158
    if-ne v8, v4, :cond_3

    .line 160
    iput v7, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 162
    :cond_3
    iput-boolean v6, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v6, :cond_5

    .line 170
    new-instance v6, Landroid/os/Bundle;

    .line 172
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 175
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 178
    move-result v1

    .line 179
    const/16 v4, 0x3e8

    .line 181
    if-ne v1, v4, :cond_4

    .line 183
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncManager$7;

    .line 185
    if-eqz v1, :cond_4

    .line 187
    iget-object v1, v1, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    .line 189
    const/4 v7, -0x2

    .line 190
    const/4 v11, 0x0

    .line 191
    const/4 v4, -0x6

    .line 192
    move-object/from16 v2, p1

    .line 194
    move/from16 v3, p2

    .line 196
    move-object/from16 v5, p3

    .line 198
    move/from16 v8, p5

    .line 200
    move/from16 v9, p6

    .line 202
    move/from16 v10, p7

    .line 204
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 207
    goto :goto_1

    .line 208
    :cond_4
    invoke-static {v2, v5, v6}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    :cond_5
    :goto_1
    const/4 v1, 0x1

    .line 212
    iget-object v2, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 217
    const-string v0, "android"

    .line 219
    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 222
    return-void

    .line 223
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    throw v0
.end method

.method public final writeAccountInfoLocked()V
    .locals 13

    .line 1
    const-string/jumbo v0, "listenForTickles"

    .line 4
    const-string v1, "accounts"

    .line 6
    const-string v2, "authority"

    .line 8
    const/4 v3, 0x2

    .line 9
    const-string v4, "SyncManagerFile"

    .line 11
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    const-string v5, "Writing new "

    .line 21
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 26
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 43
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 46
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 50
    move-result-object v5

    .line 51
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    invoke-interface {v5, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 59
    const/4 v7, 0x1

    .line 60
    invoke-interface {v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 63
    invoke-interface {v5, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    const-string/jumbo v6, "version"

    .line 69
    const/4 v7, 0x3

    .line 70
    invoke-interface {v5, v3, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const-string/jumbo v6, "nextAuthorityId"

    .line 76
    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 78
    invoke-interface {v5, v3, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const-string/jumbo v6, "offsetInSeconds"

    .line 84
    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 86
    invoke-interface {v5, v3, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 91
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 94
    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    const/4 v7, 0x0

    .line 96
    move v8, v7

    .line 97
    :goto_0
    const-string/jumbo v9, "enabled"

    .line 100
    const-string/jumbo v10, "user"

    .line 103
    if-ge v8, v6, :cond_1

    .line 105
    :try_start_2
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 107
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 110
    move-result v11

    .line 111
    iget-object v12, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 113
    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 116
    move-result-object v12

    .line 117
    check-cast v12, Ljava/lang/Boolean;

    .line 119
    invoke-interface {v5, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    invoke-interface {v5, v3, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    move-result v10

    .line 129
    invoke-interface {v5, v3, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-interface {v5, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    add-int/lit8 v8, v8, 0x1

    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    move-object v3, v4

    .line 140
    goto :goto_2

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 143
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 146
    move-result v0

    .line 147
    :goto_1
    if-ge v7, v0, :cond_2

    .line 149
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 151
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 157
    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 159
    invoke-interface {v5, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    const-string/jumbo v11, "id"

    .line 165
    iget v12, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 167
    invoke-interface {v5, v3, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    iget v11, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 172
    invoke-interface {v5, v3, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-boolean v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 177
    invoke-interface {v5, v3, v9, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    const-string v11, "account"

    .line 182
    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 184
    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 186
    invoke-interface {v5, v3, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const-string/jumbo v11, "type"

    .line 192
    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 194
    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 196
    invoke-interface {v5, v3, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 201
    invoke-interface {v5, v3, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    const-string/jumbo v8, "syncable"

    .line 207
    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 209
    invoke-interface {v5, v3, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    invoke-interface {v5, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    add-int/lit8 v7, v7, 0x1

    .line 217
    goto :goto_1

    .line 218
    :cond_2
    invoke-interface {v5, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 224
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 226
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    goto :goto_3

    .line 230
    :catch_1
    move-exception v0

    .line 231
    :goto_2
    const-string v1, "SyncManager"

    .line 233
    const-string v2, "Error writing accounts"

    .line 235
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    if-eqz v3, :cond_3

    .line 240
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 242
    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 245
    :cond_3
    :goto_3
    return-void
.end method

.method public final writeDayStatsLocked(Ljava/io/OutputStream;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 3
    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 8
    array-length p1, p1

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p1, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 14
    aget-object v2, v2, v1

    .line 16
    if-nez v2, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-wide v3, 0x20b00000001L

    .line 24
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 27
    move-result-wide v3

    .line 28
    const-wide v5, 0x10500000001L

    .line 33
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 35
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 38
    const-wide v5, 0x10500000002L

    .line 43
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 45
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 48
    const-wide v5, 0x10300000003L

    .line 53
    iget-wide v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 55
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 58
    const-wide v5, 0x10500000004L

    .line 63
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 65
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 68
    const-wide v5, 0x10300000005L

    .line 73
    iget-wide v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 75
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 78
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 87
    return-void
.end method

.method public writeStatisticsLocked()V
    .locals 5

    .line 1
    const-string v0, "SyncManagerFile"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    const-string v2, "SyncManager"

    .line 10
    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v3, "Writing new "

    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 21
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    const/4 v0, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 43
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 46
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->writeDayStatsLocked(Ljava/io/OutputStream;)V

    .line 50
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 52
    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 57
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception v1

    .line 66
    move-object v4, v1

    .line 67
    move-object v1, v0

    .line 68
    move-object v0, v4

    .line 69
    goto :goto_2

    .line 70
    :catch_1
    move-exception v1

    .line 71
    move-object v4, v1

    .line 72
    move-object v1, v0

    .line 73
    move-object v0, v4

    .line 74
    :goto_0
    :try_start_2
    const-string v3, "Unable to write day stats to proto."

    .line 76
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 81
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 84
    :goto_1
    return-void

    .line 85
    :goto_2
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 87
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 90
    throw v0
.end method

.method public final writeStatusInfoLocked(Ljava/io/OutputStream;)V
    .locals 14

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 3
    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    if-ge v2, p1, :cond_4

    .line 16
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 24
    const-wide v4, 0x20b00000001L

    .line 29
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 32
    move-result-wide v4

    .line 33
    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 35
    const-wide v7, 0x10500000002L

    .line 40
    invoke-virtual {v0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 43
    const-wide v6, 0x10300000003L

    .line 48
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 50
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 53
    const-wide v6, 0x10500000004L

    .line 58
    iget v8, v3, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 60
    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 63
    const-wide v6, 0x10300000005L

    .line 68
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 70
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 73
    const-wide v6, 0x10500000006L

    .line 78
    iget v8, v3, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 80
    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 83
    const-wide v6, 0x10900000007L

    .line 88
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 93
    const-wide v6, 0x10300000008L

    .line 98
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 100
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 103
    const-wide v6, 0x10800000009L

    .line 108
    iget-boolean v8, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 110
    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 113
    const-wide v6, 0x1080000000aL

    .line 118
    iget-boolean v8, v3, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 120
    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 123
    invoke-virtual {v3}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTimesSize()I

    .line 126
    move-result v6

    .line 127
    move v7, v1

    .line 128
    :goto_1
    if-ge v7, v6, :cond_0

    .line 130
    const-wide v8, 0x2030000000bL

    .line 135
    invoke-virtual {v3, v7}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    .line 138
    move-result-wide v10

    .line 139
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 142
    add-int/lit8 v7, v7, 0x1

    .line 144
    goto :goto_1

    .line 145
    :cond_0
    invoke-virtual {v3}, Landroid/content/SyncStatusInfo;->getEventCount()I

    .line 148
    move-result v6

    .line 149
    move v7, v1

    .line 150
    :goto_2
    if-ge v7, v6, :cond_1

    .line 152
    const-wide v8, 0x20b0000000cL

    .line 157
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 160
    move-result-wide v8

    .line 161
    const-wide v10, 0x10300000001L

    .line 166
    invoke-virtual {v3, v7}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    .line 169
    move-result-wide v12

    .line 170
    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 173
    const-wide v10, 0x10900000002L

    .line 178
    invoke-virtual {v3, v7}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v0, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 185
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 188
    add-int/lit8 v7, v7, 0x1

    .line 190
    goto :goto_2

    .line 191
    :cond_1
    const-wide v6, 0x1030000000dL

    .line 196
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    .line 198
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 201
    const-wide v6, 0x10b0000000eL

    .line 206
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 209
    move-result-wide v6

    .line 210
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    .line 212
    invoke-static {v0, v8}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 215
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 218
    const-wide v6, 0x10b0000000fL

    .line 223
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 226
    move-result-wide v6

    .line 227
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 229
    invoke-static {v0, v8}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 232
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 235
    const-wide v6, 0x10b00000010L

    .line 240
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 243
    move-result-wide v6

    .line 244
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    .line 246
    invoke-static {v0, v8}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 249
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 252
    iget-object v6, v3, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    .line 254
    array-length v6, v6

    .line 255
    move v7, v1

    .line 256
    :goto_3
    if-ge v7, v6, :cond_2

    .line 258
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    .line 260
    aget-wide v8, v8, v7

    .line 262
    const-wide v10, 0x20300000011L

    .line 267
    invoke-virtual {v0, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 270
    add-int/lit8 v7, v7, 0x1

    .line 272
    goto :goto_3

    .line 273
    :cond_2
    iget-object v6, v3, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    .line 275
    array-length v6, v6

    .line 276
    move v7, v1

    .line 277
    :goto_4
    if-ge v7, v6, :cond_3

    .line 279
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    .line 281
    aget-wide v8, v8, v7

    .line 283
    const-wide v10, 0x20300000012L

    .line 288
    invoke-virtual {v0, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 291
    add-int/lit8 v7, v7, 0x1

    .line 293
    goto :goto_4

    .line 294
    :cond_3
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 297
    add-int/lit8 v2, v2, 0x1

    .line 299
    goto/16 :goto_0

    .line 301
    :cond_4
    const-wide v1, 0x10800000002L

    .line 306
    iget-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    .line 308
    invoke-virtual {v0, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 311
    const-wide v1, 0x10800000003L

    .line 316
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    .line 318
    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 321
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 324
    return-void
.end method

.method public writeStatusLocked()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "SyncManagerFile"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "Writing new "

    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 19
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    const/4 v0, 0x0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 42
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 45
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->writeStatusInfoLocked(Ljava/io/OutputStream;)V

    .line 49
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 51
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 56
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :catchall_1
    move-exception v1

    .line 65
    move-object v4, v1

    .line 66
    move-object v1, v0

    .line 67
    move-object v0, v4

    .line 68
    goto :goto_2

    .line 69
    :catch_1
    move-exception v1

    .line 70
    move-object v4, v1

    .line 71
    move-object v1, v0

    .line 72
    move-object v0, v4

    .line 73
    :goto_0
    :try_start_2
    const-string v2, "SyncManager"

    .line 75
    const-string v3, "Unable to write sync status to proto."

    .line 77
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 82
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 85
    :goto_1
    return-void

    .line 86
    :goto_2
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 88
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 91
    throw v0
.end method
