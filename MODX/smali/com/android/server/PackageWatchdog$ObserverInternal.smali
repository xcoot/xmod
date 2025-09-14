.class public final Lcom/android/server/PackageWatchdog$ObserverInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mMitigationCount:I

.field public final mPackages:Landroid/util/ArrayMap;

.field public final name:Ljava/lang/String;

.field public registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 11
    iput-object p2, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, p3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 16
    iput p1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mMitigationCount:I

    .line 18
    return-void
.end method

.method public static read(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;
    .locals 9

    .line 1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "observer"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    const-string v1, "PackageWatchdog"

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const-string/jumbo v0, "name"

    .line 20
    invoke-interface {p0, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 30
    const-string p0, "Unable to read observer name"

    .line 32
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-object v2

    .line 36
    :cond_0
    move-object v0, v2

    .line 37
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 45
    move-result v4

    .line 46
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 49
    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-eqz v5, :cond_2

    .line 52
    :try_start_1
    const-string/jumbo v5, "mitigation-count"

    .line 55
    invoke-interface {p0, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :catch_1
    :try_start_2
    const-string v5, "ObserverInternal mitigation count was not present."

    .line 64
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_2
    const/4 v5, 0x0

    .line 68
    :cond_3
    :goto_0
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_4

    .line 74
    const-string/jumbo v6, "package"

    .line 77
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v6
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    if-eqz v6, :cond_3

    .line 87
    :try_start_3
    invoke-virtual {p1, p0}, Lcom/android/server/PackageWatchdog;->parseMonitoredPackage(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 94
    goto :goto_0

    .line 95
    :catch_2
    move-exception v6

    .line 96
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v8, "Skipping package for observer "

    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v7

    .line 113
    invoke-static {v1, v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_5

    .line 123
    return-object v2

    .line 124
    :cond_5
    new-instance p0, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 126
    invoke-direct {p0, v5, v0, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 129
    return-object p0

    .line 130
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "Unable to read observer "

    .line 134
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    return-object v2
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "Persistent: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ": "

    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    const-string v3, "# Failures: "

    .line 78
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v3, v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    .line 83
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    .line 86
    move-result v3

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "Monitoring duration remaining: "

    .line 101
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-wide v3, v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 106
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v3, "ms"

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    const-string v4, "Explicit health check duration: "

    .line 126
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    iget-wide v4, v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 131
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 144
    iget v1, v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 146
    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    const-string v2, "Health check state: "

    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 162
    goto :goto_1

    .line 163
    :cond_1
    return-void
.end method

.method public final getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 9
    return-object p0
.end method

.method public final onPackageFailureLocked(Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 14
    invoke-interface {v0, p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->mayObservePackage(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    sget-object v2, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 22
    sget-wide v4, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v9, Landroid/util/LongArrayQueue;

    .line 29
    invoke-direct {v9}, Landroid/util/LongArrayQueue;-><init>()V

    .line 32
    new-instance v0, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 34
    const-wide v6, 0x7fffffffffffffffL

    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v1, v0

    .line 41
    move-object v3, p1

    .line 42
    invoke-direct/range {v1 .. v9}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)V

    .line 45
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 47
    iget-object v2, v0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 55
    move-result-object p0

    .line 56
    const/4 p1, 0x0

    .line 57
    if-eqz p0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    .line 61
    iget-object v1, v0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 63
    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 66
    move-result-wide v1

    .line 67
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    .line 69
    invoke-virtual {v3, v1, v2}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 72
    :goto_0
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    .line 74
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 77
    move-result-wide v3

    .line 78
    sub-long v3, v1, v3

    .line 80
    iget v5, v0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 82
    int-to-long v5, v5

    .line 83
    cmp-long v3, v3, v5

    .line 85
    if-lez v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    .line 89
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    .line 95
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->size()I

    .line 98
    move-result v1

    .line 99
    iget v0, v0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 101
    if-lt v1, v0, :cond_2

    .line 103
    const/4 p1, 0x1

    .line 104
    :cond_2
    if-eqz p1, :cond_3

    .line 106
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    .line 108
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->clear()V

    .line 111
    :cond_3
    return p1
.end method

.method public final updatePackagesLocked(Ljava/util/List;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    move-object v1, p1

    .line 3
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_1

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 17
    iget-object v2, v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, v2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    iget-wide v3, v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 27
    iput-wide v3, v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 32
    iget-object v3, v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 34
    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public final writeLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "observer"

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    const-string/jumbo v2, "name"

    .line 11
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 13
    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    const-string/jumbo v2, "mitigation-count"

    .line 25
    iget v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mMitigationCount:I

    .line 27
    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 34
    :goto_1
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 39
    move-result v3

    .line 40
    if-ge v2, v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 44
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 50
    invoke-virtual {v3, p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->writeLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 60
    :goto_2
    const-string p1, "PackageWatchdog"

    .line 62
    const-string v0, "Cannot save observer"

    .line 64
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return-void
.end method
