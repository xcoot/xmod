.class public final Lcom/android/server/chimera/AbnormalFgsDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# instance fields
.field public mAbnormalHeavyApps:Ljava/util/List;

.field public mHeavyApps:Ljava/util/List;

.field public mKillableHeavyApps:Ljava/util/List;

.field public mReportedAbnormalHeavyApps:Ljava/util/List;


# direct methods
.method public static printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v2, v0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, " "

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v3, v0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->uid:I

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v0, v0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public static sendDetectionHqmBigData(JLjava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "TYPE"

    .line 8
    const/16 v2, 0x66

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    const-string v1, "PNAME"

    .line 15
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string p2, "PSS"

    .line 20
    invoke-virtual {v0, p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 23
    const-string p0, "ADJ"

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    move-result p1

    .line 37
    const/4 p2, 0x1

    .line 38
    sub-int/2addr p1, p2

    .line 39
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_0

    .line 49
    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/server/chimera/SystemRepository;->sendHqmBigData(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void

    .line 55
    :catch_0
    sget-object p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    const-string p0, "AbnormalFgsDetector"

    .line 62
    const-string/jumbo p1, "failed to create the KPUT"

    .line 65
    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public final addAbnormalHeavyApp(ILjava/lang/String;J)V
    .locals 9

    .line 1
    const-string v0, "added to AbnormalHeavyApp : "

    .line 3
    sget-object v1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 5
    const-string v2, "AbnormalFgsDetector"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    const-string v4, "addAbnormalHeavyApp : "

    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {v2, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 30
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v2, p2, v3}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    .line 48
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;

    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-direct {v2, p2, v3}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 58
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    .line 66
    new-instance v8, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 68
    const/4 v4, 0x0

    .line 69
    move-object v2, v8

    .line 70
    move v3, p1

    .line 71
    move-wide v5, p3

    .line 72
    move-object v7, p2

    .line 73
    invoke-direct/range {v2 .. v7}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(IIJLjava/lang/String;)V

    .line 76
    check-cast v1, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {p3, p4, p2}, Lcom/android/server/chimera/AbnormalFgsDetector;->sendDetectionHqmBigData(JLjava/lang/String;)V

    .line 84
    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 86
    const-string p3, "AbnormalFgsDetector"

    .line 88
    new-instance p4, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-static {p3, p2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    .line 110
    return-void

    .line 111
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p1
.end method

.method public final onOneHourTimer()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 10
    sget-object v1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string v1, "AbnormalFgsDetector"

    .line 17
    const-string/jumbo v2, "onOneHourTimer"

    .line 20
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v2, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 25
    invoke-virtual {v2}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v2

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_5

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 47
    iget-wide v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 49
    const-wide/32 v6, 0x12c000

    .line 52
    cmp-long v4, v4, v6

    .line 54
    if-lez v4, :cond_0

    .line 56
    sget-object v4, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 58
    iget v5, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 60
    filled-new-array {v5}, [I

    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v4, v5}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 67
    move-result-object v4

    .line 68
    const/4 v5, 0x1

    .line 69
    const/4 v6, 0x0

    .line 70
    if-eqz v4, :cond_1

    .line 72
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 74
    if-eqz v4, :cond_1

    .line 76
    check-cast v4, [I

    .line 78
    aget v4, v4, v6

    .line 80
    const/16 v7, 0x64

    .line 82
    if-lt v4, v7, :cond_2

    .line 84
    const/16 v7, 0x12c

    .line 86
    if-ge v4, v7, :cond_2

    .line 88
    move v6, v5

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/4 v4, -0x1

    .line 91
    :cond_2
    :goto_1
    move-object v7, v0

    .line 92
    check-cast v7, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v7

    .line 98
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_4

    .line 104
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 110
    iget-object v9, v8, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 112
    iget-object v10, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 114
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_3

    .line 120
    if-eqz v6, :cond_3

    .line 122
    iget v6, v8, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    .line 124
    add-int/2addr v5, v6

    .line 125
    :cond_4
    sget-object v6, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    .line 129
    const-string v8, "Fgs Heavy App: "

    .line 131
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v8, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 136
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v8, "("

    .line 141
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-wide v8, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 146
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    const-string v8, ","

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v8, ") in ADJ "

    .line 159
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v4, " ProcState "

    .line 167
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 172
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    invoke-static {v1, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 187
    new-instance v12, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 189
    iget-object v11, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 191
    iget v7, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 193
    iget-wide v9, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 195
    move-object v6, v12

    .line 196
    move v8, v5

    .line 197
    invoke-direct/range {v6 .. v11}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(IIJLjava/lang/String;)V

    .line 200
    check-cast v4, Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const/4 v4, 0x3

    .line 206
    if-lt v5, v4, :cond_0

    .line 208
    iget-object v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 210
    iget v5, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 212
    iget-wide v6, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 214
    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/android/server/chimera/AbnormalFgsDetector;->addAbnormalHeavyApp(ILjava/lang/String;J)V

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_5
    return-void
.end method
