.class public final Lcom/android/server/PackageWatchdog$MonitoredPackage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDurationMs:J

.field public final mFailureHistory:Landroid/util/LongArrayQueue;

.field public mHasPassedHealthCheck:Z

.field public mHealthCheckDurationMs:J

.field public mHealthCheckState:I

.field public final mMitigationCalls:Landroid/util/LongArrayQueue;

.field public final mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    .line 6
    new-instance p1, Landroid/util/LongArrayQueue;

    .line 8
    invoke-direct {p1}, Landroid/util/LongArrayQueue;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 16
    iput-object p2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 18
    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 20
    iput-wide p5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 22
    iput-boolean p7, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 24
    iput-object p8, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    .line 29
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const-string p0, "UNKNOWN"

    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string p0, "FAILED"

    .line 17
    return-object p0

    .line 18
    :cond_1
    const-string p0, "PASSED"

    .line 20
    return-object p0

    .line 21
    :cond_2
    const-string p0, "INACTIVE"

    .line 23
    return-object p0

    .line 24
    :cond_3
    const-string p0, "ACTIVE"

    .line 26
    return-object p0
.end method


# virtual methods
.method public final getMitigationCountLocked()I
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    .line 3
    iget-object v0, v0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 5
    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 11
    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 14
    move-result-wide v2

    .line 15
    sub-long v2, v0, v2

    .line 17
    sget-wide v4, Lcom/android/server/PackageWatchdog;->DEFAULT_DEESCALATION_WINDOW_MS:J

    .line 19
    cmp-long v2, v2, v4

    .line 21
    if-lez v2, :cond_0

    .line 23
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 25
    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->removeFirst()J
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 31
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public isEqualTo(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 13
    iget-wide v2, p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 15
    cmp-long v0, v0, v2

    .line 17
    if-nez v0, :cond_0

    .line 19
    iget-boolean v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 21
    iget-boolean v1, p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 23
    if-ne v0, v1, :cond_0

    .line 25
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 27
    iget-wide v2, p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 29
    cmp-long v0, v0, v2

    .line 31
    if-nez v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 35
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    iget-object p1, p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 41
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_0

    .line 51
    const/4 p0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p0, 0x0

    .line 54
    :goto_0
    return p0
.end method

.method public final setHealthCheckActiveLocked(J)I
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-gtz v0, :cond_0

    .line 7
    const-string v0, "Cannot set non-positive health check duration "

    .line 9
    const-string/jumbo v1, "ms for package "

    .line 12
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p2, ". Using total duration "

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string/jumbo p2, "ms instead"

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    const-string p2, "PackageWatchdog"

    .line 43
    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 48
    :cond_0
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 50
    const/4 v1, 0x1

    .line 51
    if-ne v0, v1, :cond_1

    .line 53
    iput-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    .line 58
    move-result p0

    .line 59
    return p0
.end method

.method public final updateHealthCheckStateLocked()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 3
    iget-boolean v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-wide v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 13
    const-wide/16 v3, 0x0

    .line 15
    cmp-long v5, v1, v3

    .line 17
    if-lez v5, :cond_3

    .line 19
    iget-wide v5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 21
    cmp-long v3, v5, v3

    .line 23
    if-gtz v3, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    .line 31
    cmp-long v1, v1, v3

    .line 33
    if-nez v1, :cond_2

    .line 35
    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    :goto_0
    const/4 v1, 0x3

    .line 44
    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 46
    :goto_1
    iget v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 48
    if-eq v0, v1, :cond_4

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "Updated health check state for package "

    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, ": "

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, " -> "

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 81
    invoke-static {v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    const-string v1, "PackageWatchdog"

    .line 94
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_4
    iget p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 99
    return p0
.end method

.method public final writeLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "package"

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    const-string/jumbo v2, "name"

    .line 11
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 13
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    const-string/jumbo v2, "duration"

    .line 19
    iget-wide v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 21
    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 24
    const-string/jumbo v2, "health-check-duration"

    .line 27
    iget-wide v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 29
    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    const-string/jumbo v2, "passed-health-check"

    .line 35
    iget-boolean v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 37
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    new-instance v2, Landroid/util/LongArrayQueue;

    .line 42
    invoke-direct {v2}, Landroid/util/LongArrayQueue;-><init>()V

    .line 45
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    .line 47
    iget-object v3, v3, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 49
    invoke-interface {v3}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 52
    move-result-wide v3

    .line 53
    const/4 v5, 0x0

    .line 54
    move v6, v5

    .line 55
    :goto_0
    iget-object v7, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 57
    invoke-virtual {v7}, Landroid/util/LongArrayQueue;->size()I

    .line 60
    move-result v7

    .line 61
    if-ge v6, v7, :cond_0

    .line 63
    iget-object v7, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 65
    invoke-virtual {v7, v6}, Landroid/util/LongArrayQueue;->get(I)J

    .line 68
    move-result-wide v7

    .line 69
    sub-long/2addr v7, v3

    .line 70
    invoke-virtual {v2, v7, v8}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->size()I

    .line 79
    move-result p0

    .line 80
    if-lez p0, :cond_2

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {v2, v5}, Landroid/util/LongArrayQueue;->get(I)J

    .line 90
    move-result-wide v3

    .line 91
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    const/4 v3, 0x1

    .line 95
    :goto_1
    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->size()I

    .line 98
    move-result v4

    .line 99
    if-ge v3, v4, :cond_1

    .line 101
    const-string v4, ","

    .line 103
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2, v3}, Landroid/util/LongArrayQueue;->get(I)J

    .line 109
    move-result-wide v4

    .line 110
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 115
    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const-string p0, ""

    .line 123
    :goto_2
    const-string/jumbo v2, "mitigation-calls"

    .line 126
    invoke-interface {p1, v0, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    return-void
.end method
