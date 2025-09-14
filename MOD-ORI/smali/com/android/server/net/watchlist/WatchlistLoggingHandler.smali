.class public final Lcom/android/server/net/watchlist/WatchlistLoggingHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final FORCE_REPORT_RECORDS_NOW_FOR_TEST_MSG:I = 0x3

.field static final LOG_WATCHLIST_EVENT_MSG:I = 0x1

.field public static final ONE_DAY_MS:J

.field static final REPORT_RECORDS_IF_NECESSARY_MSG:I = 0x2


# instance fields
.field public final mApkHashCache:Lcom/android/server/net/watchlist/FileHashCache;

.field public final mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

.field public final mContext:Landroid/content/Context;

.field public final mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

.field public final mDropBoxManager:Landroid/os/DropBoxManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mPrimaryUserId:I

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    .line 27
    .line 28
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

    .line 29
    .line 30
    const-class v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 41
    .line 42
    new-instance v3, Ljava/io/File;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string/jumbo v5, "watchlist_report.db"

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/4 v4, 0x2

    .line 59
    invoke-direct {v1, p1, v3, v2, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v3, 0x7530

    .line 63
    .line 64
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    .line 65
    .line 66
    .line 67
    sput-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    monitor-exit v0

    .line 70
    :goto_0
    iput-object v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 71
    .line 72
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 75
    .line 76
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistSettings;->sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 79
    .line 80
    const-class v0, Landroid/os/DropBoxManager;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/os/DropBoxManager;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 89
    .line 90
    const-string/jumbo v0, "user"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/os/UserManager;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    iget p2, v0, Landroid/content/pm/UserInfo;->id:I

    .line 106
    .line 107
    :cond_1
    iput p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const p2, 0x1110291

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_2

    .line 121
    .line 122
    new-instance p1, Lcom/android/server/net/watchlist/FileHashCache;

    .line 123
    .line 124
    invoke-direct {p1, p0}, Lcom/android/server/net/watchlist/FileHashCache;-><init>(Landroid/os/Handler;)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mApkHashCache:Lcom/android/server/net/watchlist/FileHashCache;

    .line 128
    .line 129
    const-string p0, "WatchlistLoggingHandler"

    .line 130
    .line 131
    const-string p1, "Using file hashes cache."

    .line 132
    .line 133
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    iput-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mApkHashCache:Lcom/android/server/net/watchlist/FileHashCache;

    .line 138
    .line 139
    :goto_1
    return-void

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    monitor-exit v0

    .line 142
    throw p0
.end method

.method public static getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "."

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    :goto_0
    const/4 v3, -0x1

    .line 16
    if-eq v2, v3, :cond_2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    new-array p0, p0, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, [Ljava/lang/String;

    .line 46
    .line 47
    return-object p0
.end method


# virtual methods
.method public final asyncNetworkEvent(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string/jumbo v1, "host"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v1, "ipAddresses"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo p3, "uid"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo p2, "timestamp"

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x20000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/2addr v3, v2

    .line 26
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 43
    .line 44
    iget-object v5, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    new-instance v7, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-direct {v7, p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, [B

    .line 60
    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object p0, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    new-instance p0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    const-string v2, "WatchlistLoggingHandler"

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const-string p0, "WatchlistLoggingHandler received an unknown of message."

    .line 16
    .line 17
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto/16 :goto_a

    .line 21
    .line 22
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    instance-of v0, p1, Ljava/lang/Long;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_a

    .line 38
    .line 39
    :cond_1
    const-string p0, "Msg.obj needs to be a Long object."

    .line 40
    .line 41
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto/16 :goto_a

    .line 45
    .line 46
    :cond_2
    new-instance p1, Ljava/util/GregorianCalendar;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0xb

    .line 52
    .line 53
    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 54
    .line 55
    .line 56
    const/16 v0, 0xc

    .line 57
    .line 58
    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 59
    .line 60
    .line 61
    const/16 v0, 0xd

    .line 62
    .line 63
    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 64
    .line 65
    .line 66
    const/16 v0, 0xe

    .line 67
    .line 68
    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x5

    .line 72
    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_a

    .line 83
    .line 84
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string/jumbo v0, "host"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string/jumbo v1, "ipAddresses"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string/jumbo v3, "uid"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    const-string/jumbo v4, "timestamp"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    iget p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 117
    .line 118
    const/4 v6, -0x1

    .line 119
    if-ne p1, v6, :cond_5

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    const-string/jumbo v7, "user"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Landroid/os/UserManager;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    .line 139
    .line 140
    :cond_4
    iput v6, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 141
    .line 142
    :cond_5
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iget v6, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 147
    .line 148
    if-eq p1, v6, :cond_6

    .line 149
    .line 150
    goto/16 :goto_a

    .line 151
    .line 152
    :cond_6
    const-string p1, "SHA256"

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    if-nez v0, :cond_8

    .line 156
    .line 157
    :cond_7
    move-object v9, v6

    .line 158
    goto :goto_4

    .line 159
    :cond_8
    invoke-static {v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    array-length v7, v0

    .line 164
    move v8, v2

    .line 165
    :goto_0
    if-ge v8, v7, :cond_7

    .line 166
    .line 167
    aget-object v9, v0, v8

    .line 168
    .line 169
    if-nez v9, :cond_9

    .line 170
    .line 171
    :goto_1
    move v10, v2

    .line 172
    goto :goto_3

    .line 173
    :cond_9
    iget-object v10, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 174
    .line 175
    iget-object v10, v10, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 176
    .line 177
    if-nez v10, :cond_a

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_a
    new-instance v11, Ljava/util/zip/CRC32;

    .line 181
    .line 182
    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    invoke-virtual {v11, v12}, Ljava/util/zip/CRC32;->update([B)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    .line 193
    .line 194
    .line 195
    move-result-wide v11

    .line 196
    long-to-int v11, v11

    .line 197
    iget-object v12, v10, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    .line 198
    .line 199
    iget-object v12, v12, Lcom/android/server/net/watchlist/HarmfulCrcs;->mCrcSet:Ljava/util/Set;

    .line 200
    .line 201
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    if-nez v11, :cond_b

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_b
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 213
    .line 214
    .line 215
    move-result-object v11
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-virtual {v11, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    goto :goto_2

    .line 228
    :catch_0
    move-object v11, v6

    .line 229
    :goto_2
    iget-object v10, v10, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    .line 230
    .line 231
    iget-object v10, v10, Lcom/android/server/net/watchlist/HarmfulDigests;->mDigestSet:Ljava/util/Set;

    .line 232
    .line 233
    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    :goto_3
    if-eqz v10, :cond_c

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 245
    .line 246
    goto :goto_0

    .line 247
    :goto_4
    if-eqz v9, :cond_d

    .line 248
    .line 249
    invoke-virtual {p0, v3, v9, v4, v5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)V

    .line 250
    .line 251
    .line 252
    goto :goto_a

    .line 253
    :cond_d
    array-length v0, v1

    .line 254
    move v7, v2

    .line 255
    :goto_5
    if-ge v7, v0, :cond_12

    .line 256
    .line 257
    aget-object v8, v1, v7

    .line 258
    .line 259
    if-nez v8, :cond_e

    .line 260
    .line 261
    :goto_6
    move v9, v2

    .line 262
    goto :goto_8

    .line 263
    :cond_e
    iget-object v9, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 264
    .line 265
    iget-object v9, v9, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 266
    .line 267
    if-nez v9, :cond_f

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_f
    new-instance v10, Ljava/util/zip/CRC32;

    .line 271
    .line 272
    invoke-direct {v10}, Ljava/util/zip/CRC32;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    invoke-virtual {v10, v11}, Ljava/util/zip/CRC32;->update([B)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    .line 283
    .line 284
    .line 285
    move-result-wide v10

    .line 286
    long-to-int v10, v10

    .line 287
    iget-object v11, v9, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    .line 288
    .line 289
    iget-object v11, v11, Lcom/android/server/net/watchlist/HarmfulCrcs;->mCrcSet:Ljava/util/Set;

    .line 290
    .line 291
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    if-nez v10, :cond_10

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_10
    :try_start_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 303
    .line 304
    .line 305
    move-result-object v10
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    .line 314
    .line 315
    .line 316
    move-result-object v10

    .line 317
    goto :goto_7

    .line 318
    :catch_1
    move-object v10, v6

    .line 319
    :goto_7
    iget-object v9, v9, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    .line 320
    .line 321
    iget-object v9, v9, Lcom/android/server/net/watchlist/HarmfulDigests;->mDigestSet:Ljava/util/Set;

    .line 322
    .line 323
    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    :goto_8
    if-eqz v9, :cond_11

    .line 332
    .line 333
    move-object v6, v8

    .line 334
    goto :goto_9

    .line 335
    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_12
    :goto_9
    if-eqz v6, :cond_13

    .line 339
    .line 340
    invoke-virtual {p0, v3, v6, v4, v5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)V

    .line 341
    .line 342
    .line 343
    :cond_13
    :goto_a
    return-void
.end method

.method public final insertRecord(ILjava/lang/String;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 4
    .line 5
    const-string v1, "WatchlistLoggingHandler"

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const-string v0, "Couldn\'t find package: "

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    array-length v3, v2

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aget-object v2, v2, v3

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 33
    .line 34
    and-int/lit16 v0, v0, 0x100

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    :catch_0
    :cond_2
    return-void

    .line 59
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {v3, p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, [B

    .line 75
    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    .line 86
    .line 87
    move-result-object p0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    new-instance v2, Landroid/content/ContentValues;

    .line 89
    .line 90
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v3, "app_digest"

    .line 94
    .line 95
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 96
    .line 97
    .line 98
    const-string/jumbo v0, "cnc_domain"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const-string/jumbo p3, "timestamp"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    .line 113
    .line 114
    const-string/jumbo p2, "records"

    .line 115
    .line 116
    .line 117
    const/4 p3, 0x0

    .line 118
    invoke-virtual {p0, p2, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 119
    .line 120
    .line 121
    move-result-wide p2

    .line 122
    const-wide/16 v2, -0x1

    .line 123
    .line 124
    cmp-long p0, p2, v2

    .line 125
    .line 126
    if-eqz p0, :cond_5

    .line 127
    .line 128
    const-string p0, "Unable to insert record for uid: "

    .line 129
    .line 130
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catch_1
    move-exception p0

    .line 135
    const-string p1, "WatchlistReportDbHelper"

    .line 136
    .line 137
    const-string p2, "Error opening the database to insert a new record"

    .line 138
    .line 139
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_2
    return-void
.end method

.method public final shouldReportNetworkWatchlist(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string/jumbo v1, "network_watchlist_last_report_time"

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-gez v2, :cond_0

    .line 16
    .line 17
    const-string p1, "WatchlistLoggingHandler"

    .line 18
    .line 19
    const-string p2, "Last report time is larger than current time, reset report"

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)V

    .line 27
    .line 28
    .line 29
    return v3

    .line 30
    :cond_0
    sget-wide v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    .line 31
    .line 32
    add-long/2addr v0, v4

    .line 33
    cmp-long p0, p1, v0

    .line 34
    .line 35
    if-ltz p0, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    :cond_1
    return v3
.end method

.method public final tryAggregateRecords(J)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->shouldReportNetworkWatchlist(J)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string p0, "WatchlistLoggingHandler"

    .line 12
    .line 13
    const-string p1, "No need to aggregate record yet."

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    const-string p2, "WatchlistLoggingHandler"

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "Milliseconds spent on tryAggregateRecords(): "

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    sub-long/2addr p0, v0

    .line 32
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    :try_start_1
    const-string v2, "WatchlistLoggingHandler"

    .line 47
    .line 48
    const-string v3, "Start aggregating watchlist records."

    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    const-string/jumbo v3, "network_watchlist_report"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    .line 67
    .line 68
    const-string/jumbo v3, "network_watchlist_last_report_time"

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 75
    .line 76
    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    const-string p0, "WatchlistLoggingHandler"

    .line 83
    .line 84
    const-string p1, "Cannot get result from database"

    .line 85
    .line 86
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide p0

    .line 93
    const-string p2, "WatchlistLoggingHandler"

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "Milliseconds spent on tryAggregateRecords(): "

    .line 98
    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 108
    .line 109
    monitor-enter v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    const/16 v5, 0x30

    .line 111
    .line 112
    :try_start_3
    new-array v6, v5, [B

    .line 113
    .line 114
    iget-object v7, v4, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    invoke-static {v7, v8, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .line 119
    .line 120
    :try_start_4
    monitor-exit v4

    .line 121
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 122
    .line 123
    iget-boolean v5, v4, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 124
    .line 125
    invoke-static {v5, v6, v3, v2}, Lcom/android/server/net/watchlist/PrivacyUtils;->createDpEncodedReportMap(Z[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v4, v2}, Lcom/android/server/net/watchlist/ReportEncoder;->serializeReport(Lcom/android/server/net/watchlist/WatchlistConfig;Ljava/util/Map;)[B

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_3

    .line 134
    .line 135
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 136
    .line 137
    const-string/jumbo v4, "network_watchlist_report"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4, v2, v8}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    monitor-exit v4

    .line 146
    throw p0

    .line 147
    :cond_2
    const-string v2, "WatchlistLoggingHandler"

    .line 148
    .line 149
    const-string v3, "Network Watchlist dropbox tag is not enabled"

    .line 150
    .line 151
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 155
    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    .line 158
    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide p0

    .line 163
    const-string p2, "WatchlistLoggingHandler"

    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v3, "Milliseconds spent on tryAggregateRecords(): "

    .line 168
    .line 169
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    sub-long/2addr p0, v0

    .line 173
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide p1

    .line 188
    const-string v2, "WatchlistLoggingHandler"

    .line 189
    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v4, "Milliseconds spent on tryAggregateRecords(): "

    .line 193
    .line 194
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    sub-long/2addr p1, v0

    .line 198
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    throw p0

    .line 209
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide p0

    .line 213
    const-string p2, "WatchlistLoggingHandler"

    .line 214
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v3, "Milliseconds spent on tryAggregateRecords(): "

    .line 218
    .line 219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :goto_4
    return-void
.end method
