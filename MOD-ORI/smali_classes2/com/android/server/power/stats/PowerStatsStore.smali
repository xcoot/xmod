.class public final Lcom/android/server/power/stats/PowerStatsStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mJvmLock:Ljava/nio/channels/FileLock;

.field public final mLockFile:Ljava/io/File;

.field public final mMaxStorageBytes:J

.field public final mSectionReader:Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;

.field public final mStoreDir:Ljava/io/File;

.field public final mSystemDir:Ljava/io/File;

.field public volatile mTableOfContents:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/File;JLandroid/os/Handler;Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSystemDir:Ljava/io/File;

    .line 12
    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    const-string/jumbo v1, "power-stats"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 22
    .line 23
    new-instance p1, Ljava/io/File;

    .line 24
    .line 25
    const-string v1, ".lock"

    .line 26
    .line 27
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    .line 31
    .line 32
    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsStore;->mMaxStorageBytes:J

    .line 33
    .line 34
    iput-object p5, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReader:Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;

    .line 35
    .line 36
    new-instance p1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsStore;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static createPowerStatsSpan(Lcom/android/server/power/stats/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/power/stats/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "No clock updates in aggregated power stats "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "PowerStatsStore"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    return-object v0

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;

    .line 40
    .line 41
    iget-wide v3, v3, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 42
    .line 43
    new-instance v5, Lcom/android/server/power/stats/PowerStatsSpan;

    .line 44
    .line 45
    invoke-direct {v5, v3, v4}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v6, 0x0

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    iget-object v9, v5, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 55
    .line 56
    if-ge v2, v8, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    add-int/lit8 v10, v10, -0x1

    .line 69
    .line 70
    if-ne v2, v10, :cond_1

    .line 71
    .line 72
    iget-wide v3, v0, Lcom/android/server/power/stats/AggregatedPowerStats;->mDurationMs:J

    .line 73
    .line 74
    sub-long/2addr v3, v6

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-wide v10, v8, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 77
    .line 78
    sub-long v3, v10, v3

    .line 79
    .line 80
    :goto_1
    iget-wide v11, v8, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 81
    .line 82
    iget-wide v13, v8, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->currentTime:J

    .line 83
    .line 84
    iget-object v9, v9, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 85
    .line 86
    new-instance v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 87
    .line 88
    move-object v10, v15

    .line 89
    move-object/from16 v17, v1

    .line 90
    .line 91
    move-object v1, v15

    .line 92
    move-wide v15, v3

    .line 93
    invoke-direct/range {v10 .. v16}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;-><init>(JJJ)V

    .line 94
    .line 95
    .line 96
    check-cast v9, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    iget-wide v8, v8, Lcom/android/server/power/stats/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 102
    .line 103
    add-long/2addr v6, v3

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    move-wide v3, v8

    .line 107
    move-object/from16 v1, v17

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    new-instance v1, Lcom/android/server/power/stats/AggregatedPowerStatsSection;

    .line 111
    .line 112
    invoke-direct {v1, v0}, Lcom/android/server/power/stats/AggregatedPowerStatsSection;-><init>(Lcom/android/server/power/stats/AggregatedPowerStats;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v9, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 116
    .line 117
    check-cast v0, Ljava/util/ArrayList;

    .line 118
    .line 119
    const-string v2, "aggregated-power-stats"

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_3

    .line 126
    .line 127
    iget-object v0, v9, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 128
    .line 129
    check-cast v0, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :cond_3
    iget-object v0, v5, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    .line 135
    .line 136
    check-cast v0, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    return-object v5
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Power stats store"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 28
    .line 29
    iget-wide v1, v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    new-array v3, v3, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsSpan;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final getTableOfContents()Ljava/util/List;
    .locals 11

    .line 1
    const-string v0, "PowerStatsStore"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    array-length v4, v3

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v5, v4, :cond_3

    .line 29
    .line 30
    aget-object v6, v3, v5

    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const-string v8, ".pss"

    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    if-nez v8, :cond_1

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_1
    :try_start_1
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 46
    .line 47
    new-instance v9, Ljava/io/FileInputStream;

    .line 48
    .line 49
    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_2
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-interface {v1, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    if-eqz v9, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v6

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v10, "Removing incompatible PowerStatsSpan file: "

    .line 82
    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    goto :goto_5

    .line 105
    :goto_2
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_2
    move-exception v8

    .line 110
    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_3
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    :catch_0
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v8, "Cannot read PowerStatsSpan file: "

    .line 120
    .line 121
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    sget-object v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->COMPARATOR:Ljava/util/Comparator;

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 149
    .line 150
    .line 151
    return-object v2

    .line 152
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 153
    .line 154
    .line 155
    throw v0
.end method

.method public final varargs loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 5

    .line 1
    const-string v0, "Cannot read PowerStatsSpan file: "

    .line 2
    .line 3
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 13
    .line 14
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "%019d"

    .line 25
    .line 26
    invoke-static {v4, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, ".pss"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 40
    .line 41
    new-instance p2, Ljava/io/FileInputStream;

    .line 42
    .line 43
    invoke-direct {p2, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_2
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReader:Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;

    .line 50
    .line 51
    invoke-static {p1, v1, p2, p3}, Lcom/android/server/power/stats/PowerStatsSpan;->read(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    .line 52
    .line 53
    .line 54
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 59
    .line 60
    .line 61
    return-object p2

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception p2

    .line 67
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_2
    move-exception p1

    .line 72
    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :goto_1
    :try_start_6
    const-string p2, "PowerStatsStore"

    .line 77
    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 94
    .line 95
    .line 96
    const/4 p0, 0x0

    .line 97
    return-object p0

    .line 98
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public final lockStoreDirectory()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    .line 28
    .line 29
    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v2, v1, v3

    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string v0, "PowerStatsStore"

    .line 47
    .line 48
    const-string v1, "Cannot lock snapshot directory"

    .line 49
    .line 50
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public final removeOldSpansLocked()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    :goto_0
    if-ge v5, v2, :cond_1

    .line 17
    .line 18
    aget-object v6, v1, v5

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 21
    .line 22
    .line 23
    move-result-wide v7

    .line 24
    add-long/2addr v3, v7

    .line 25
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    const-string v10, ".pss"

    .line 30
    .line 31
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    if-eqz v9, :cond_0

    .line 36
    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    iget-wide v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mMaxStorageBytes:J

    .line 48
    .line 49
    cmp-long v1, v3, v1

    .line 50
    .line 51
    if-lez v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/io/File;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_3

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v6, "Cannot delete power stats span "

    .line 75
    .line 76
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const-string v6, "PowerStatsStore"

    .line 87
    .line 88
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/Long;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    sub-long/2addr v3, v5

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    :goto_2
    return-void
.end method

.method public final reset()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const-string v5, ".pss"

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    const-string v4, "PowerStatsStore"

    .line 35
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v6, "Cannot delete power stats span "

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public final storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSystemDir:Ljava/io/File;

    .line 4
    .line 5
    const-string v2, "battery-usage-stats"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string p1, "PowerStatsStore"

    .line 39
    .line 40
    const-string v0, "Could not create a directory for power stats store"

    .line 41
    .line 42
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :try_start_1
    new-instance v0, Landroid/util/AtomicFile;

    .line 52
    .line 53
    iget-object v1, p1, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 54
    .line 55
    iget-wide v1, v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    .line 56
    .line 57
    new-instance v3, Ljava/io/File;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 60
    .line 61
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 62
    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "%019d"

    .line 72
    .line 73
    invoke-static {v5, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, ".pss"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;

    .line 90
    .line 91
    invoke-direct {v1, p1}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/PowerStatsSpan;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->removeOldSpansLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public final unlockStoreDirectory()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_2

    .line 14
    :catch_0
    move-exception v0

    .line 15
    :try_start_1
    const-string v1, "PowerStatsStore"

    .line 16
    .line 17
    const-string v2, "Cannot unlock snapshot directory"

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    return-void

    .line 24
    :goto_2
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method
