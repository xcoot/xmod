.class public final Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastCalculatedNative:Landroid/util/Pair;

.field public mLastCalculatedSysPers:Landroid/util/Pair;

.field public mLastRealTimeMillis:J

.field public mLastUptimeMillis:J

.field public mNativeMemDumpList:Ljava/util/List;

.field public mPersistentMemDumpList:Ljava/util/List;

.field public mPmmCycleCountOnPlatformReset:I

.field public mSystemMemDumpList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 27
    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v0

    .line 45
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    .line 47
    new-instance p1, Landroid/util/Pair;

    .line 49
    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 54
    new-instance p1, Landroid/util/Pair;

    .line 56
    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    .line 61
    return-void
.end method

.method public static dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string p1, " : "

    .line 6
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    check-cast p2, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 27
    iget-object v0, p2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    .line 29
    sget-object v1, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    .line 31
    if-ne v0, v1, :cond_0

    .line 33
    const-string v0, " I "

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const-string v0, " P "

    .line 38
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget-wide v0, p2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 50
    return-void
.end method

.method public static getCompactList(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    move-object v2, p0

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_0

    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v1, v1, 0x2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-object v0
.end method

.method public static getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector$$ExternalSyntheticLambda0;

    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/stream/LongStream;->summaryStatistics()Ljava/util/LongSummaryStatistics;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    move-result v2

    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 29
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 35
    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 37
    const-wide/16 v4, 0x400

    .line 39
    div-long/2addr v2, v4

    .line 40
    long-to-double v2, v2

    .line 41
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 43
    add-double/2addr v2, v4

    .line 44
    double-to-int v2, v2

    .line 45
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1}, Ljava/util/LongSummaryStatistics;->getMin()J

    .line 52
    move-result-wide v6

    .line 53
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1}, Ljava/util/LongSummaryStatistics;->getMax()J

    .line 60
    move-result-wide v6

    .line 61
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1}, Ljava/util/LongSummaryStatistics;->getAverage()D

    .line 68
    move-result-wide v6

    .line 69
    add-double/2addr v6, v4

    .line 70
    double-to-int v1, v6

    .line 71
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 74
    move-result-object v1

    .line 75
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 78
    move-result p0

    .line 79
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 82
    return-object v0
.end method

.method public static getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;
    .locals 14

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    move-wide v5, v1

    .line 9
    move-wide v7, v5

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v4, v0, :cond_0

    .line 13
    int-to-double v9, v4

    .line 14
    add-double/2addr v5, v9

    .line 15
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v9

    .line 19
    check-cast v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 21
    iget-wide v9, v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 23
    long-to-double v9, v9

    .line 24
    add-double/2addr v7, v9

    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    int-to-double v9, v0

    .line 29
    div-double/2addr v5, v9

    .line 30
    div-double/2addr v7, v9

    .line 31
    move v9, v3

    .line 32
    move-wide v3, v1

    .line 33
    :goto_1
    if-ge v9, v0, :cond_1

    .line 35
    int-to-double v10, v9

    .line 36
    sub-double/2addr v10, v5

    .line 37
    mul-double v12, v10, v10

    .line 39
    add-double/2addr v3, v12

    .line 40
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v12

    .line 44
    check-cast v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 46
    iget-wide v12, v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 48
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v12

    .line 52
    check-cast v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 54
    iget-wide v12, v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 56
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v12

    .line 60
    check-cast v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 62
    iget-wide v12, v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 64
    long-to-double v12, v12

    .line 65
    sub-double/2addr v12, v7

    .line 66
    mul-double/2addr v12, v10

    .line 67
    add-double/2addr v1, v12

    .line 68
    add-int/lit8 v9, v9, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    div-double/2addr v1, v3

    .line 72
    mul-double/2addr v5, v1

    .line 73
    sub-double/2addr v7, v5

    .line 74
    new-instance p0, Landroid/util/Pair;

    .line 76
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 83
    move-result-object v1

    .line 84
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    return-object p0
.end method

.method public static getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object p1, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, [J

    .line 17
    const/4 p1, 0x0

    .line 18
    aget-wide v0, p0, p1

    .line 20
    const/4 p1, 0x1

    .line 21
    aget-wide p0, p0, p1

    .line 23
    add-long/2addr v0, p0

    .line 24
    cmp-long p0, v0, p2

    .line 26
    if-gez p0, :cond_0

    .line 28
    move-wide p2, v0

    .line 29
    :cond_0
    return-wide p2
.end method
