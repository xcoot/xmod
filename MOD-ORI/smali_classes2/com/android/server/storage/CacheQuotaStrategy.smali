.class public final Lcom/android/server/storage/CacheQuotaStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mLock:Ljava/lang/Object;

.field public final mPreviousValuesFile:Landroid/util/AtomicFile;

.field public final mQuotaMap:Landroid/util/ArrayMap;

.field public mRemoteService:Landroid/app/usage/ICacheQuotaService;

.field public mServiceConnection:Lcom/android/server/storage/CacheQuotaStrategy$1;

.field public final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static -$$Nest$mgetUnfulfilledRequests(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v9

    .line 10
    const-wide v1, 0x7528ad000L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    sub-long v11, v9, v1

    .line 16
    .line 17
    new-instance v13, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-class v2, Landroid/os/UserManager;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/os/UserManager;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v14

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v15

    .line 46
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v8, v1

    .line 57
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 60
    .line 61
    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    .line 62
    .line 63
    check-cast v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 66
    .line 67
    const/4 v7, 0x4

    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    move-wide v3, v11

    .line 71
    move-wide v5, v9

    .line 72
    move-object v0, v8

    .line 73
    move/from16 v8, v16

    .line 74
    .line 75
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IJJIZ)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_1

    .line 80
    .line 81
    :cond_0
    move-object/from16 v0, p0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x0

    .line 85
    move v3, v2

    .line 86
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ge v3, v4, :cond_0

    .line 91
    .line 92
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Landroid/app/usage/UsageStats;

    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    :try_start_0
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    .line 103
    .line 104
    invoke-virtual {v14, v5, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    new-instance v6, Landroid/app/usage/CacheQuotaHint$Builder;

    .line 109
    .line 110
    invoke-direct {v6}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v6, v7}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 120
    .line 121
    invoke-virtual {v6, v5}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    const-wide/16 v5, -0x1

    .line 130
    .line 131
    invoke-virtual {v4, v5, v6}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    :catch_0
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    return-object v13
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 20
    .line 21
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    .line 25
    .line 26
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iput-object p4, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    .line 30
    .line 31
    new-instance p1, Landroid/util/AtomicFile;

    .line 32
    .line 33
    new-instance p2, Ljava/io/File;

    .line 34
    .line 35
    new-instance p3, Ljava/io/File;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    const-string/jumbo v0, "system"

    .line 42
    .line 43
    .line 44
    invoke-direct {p3, p4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p4, "cachequota.xml"

    .line 48
    .line 49
    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    .line 56
    .line 57
    return-void
.end method

.method public static getRequestFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/usage/CacheQuotaHint;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string/jumbo v1, "uuid"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "uid"

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-string v3, "bytes"

    .line 17
    .line 18
    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    new-instance p0, Landroid/app/usage/CacheQuotaHint$Builder;

    .line 23
    .line 24
    invoke-direct {p0}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, v3, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-object p0

    .line 44
    :catch_0
    const-string p0, "CacheQuotaStrategy"

    .line 45
    .line 46
    const-string v1, "Invalid cache quota request, skipping."

    .line 47
    .line 48
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public static readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :goto_0
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    const-string p0, "CacheQuotaStrategy"

    .line 24
    .line 25
    const-string v0, "No quotas found in quota file."

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v4, "cache-info"

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    :try_start_0
    const-string/jumbo v4, "previousBytes"

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    :cond_2
    if-ne v5, v1, :cond_4

    .line 60
    .line 61
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string/jumbo v7, "quota"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_4

    .line 73
    .line 74
    invoke-static {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getRequestFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/usage/CacheQuotaHint;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    if-nez v6, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    :goto_1
    if-ne v5, v2, :cond_2

    .line 89
    .line 90
    new-instance p0, Landroid/util/Pair;

    .line 91
    .line 92
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v0, "Previous bytes formatted incorrectly; aborting quota read."

    .line 103
    .line 104
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    const-string v0, "Invalid starting tag."

    .line 111
    .line 112
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public static saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "cache-info"

    .line 8
    .line 9
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "previousBytes"

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v1, v2, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/app/usage/CacheQuotaHint;

    .line 33
    .line 34
    const-string/jumbo p3, "quota"

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    const-string/jumbo v2, "uuid"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    :cond_0
    const-string/jumbo v2, "uid"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    const-string v2, "bytes"

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    .line 81
    .line 82
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "requests"

    .line 2
    .line 3
    .line 4
    const-class v1, Landroid/app/usage/CacheQuotaHint;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Landroid/os/StatFs;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-static {v1, p1, v2, v3}, Lcom/android/server/storage/CacheQuotaStrategy;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;J)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    const-string v1, "CacheQuotaStrategy"

    .line 52
    .line 53
    const-string v2, "An error occurred while writing the cache quota file."

    .line 54
    .line 55
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public final pushProcessedQuotas(Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/usage/CacheQuotaHint;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    .line 19
    .line 20
    .line 21
    move-result-wide v8

    .line 22
    const-wide/16 v2, -0x1

    .line 23
    .line 24
    cmp-long v2, v8, v2

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 48
    .line 49
    .line 50
    move-result v6
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-nez v6, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :try_start_1
    iget-object v2, v2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 55
    .line 56
    move-wide v6, v8

    .line 57
    invoke-interface/range {v2 .. v7}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    .line 60
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iget-object v4, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/util/SparseLongArray;

    .line 79
    .line 80
    if-nez v4, :cond_2

    .line 81
    .line 82
    new-instance v4, Landroid/util/SparseLongArray;

    .line 83
    .line 84
    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v5, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {v4, v1, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    goto :goto_2

    .line 102
    :catch_1
    move-exception v2

    .line 103
    invoke-static {v2}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 104
    .line 105
    .line 106
    throw v1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 107
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v3, "Failed to set cache quota for "

    .line 110
    .line 111
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v2, "CacheQuotaStrategy"

    .line 126
    .line 127
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 138
    .line 139
    .line 140
    iput-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 141
    .line 142
    :cond_4
    return-void
.end method

.method public final setupQuotasFromFile()J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-static {v2}, Lcom/android/server/storage/CacheQuotaStrategy;->readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 16
    .line 17
    .line 18
    :cond_0
    if-nez v3, :cond_1

    .line 19
    .line 20
    const-string p0, "CacheQuotaStrategy"

    .line 21
    .line 22
    const-string v2, "An error occurred while parsing the cache quota file."

    .line 23
    .line 24
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-wide v0

    .line 28
    :cond_1
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Long;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    return-wide v0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    :try_start_3
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {v3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :goto_0
    if-eqz v2, :cond_2

    .line 58
    .line 59
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_1
    move-exception v2

    .line 64
    :try_start_5
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 68
    :catch_1
    return-wide v0
.end method
