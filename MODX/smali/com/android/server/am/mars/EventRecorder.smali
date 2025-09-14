.class public final Lcom/android/server/am/mars/EventRecorder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static FEATURE_ENABLE:Z = true

.field public static file:Ljava/io/File;

.field public static volatile mCommitPending:Z

.field public static final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mLatestUnfreezeEvent:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingWrite:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/EventRecorder;->mLatestUnfreezeEvent:Landroid/util/ArrayMap;

    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 25
    return-void
.end method

.method public static calculateOverlapPeriod(JJJJ)J
    .locals 1

    .line 1
    cmp-long v0, p6, p0

    .line 3
    if-ltz v0, :cond_3

    .line 5
    cmp-long v0, p2, p4

    .line 7
    if-gez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    cmp-long v0, p4, p0

    .line 12
    if-gez v0, :cond_1

    .line 14
    cmp-long v0, p2, p6

    .line 16
    if-gez v0, :cond_1

    .line 18
    sub-long/2addr p2, p0

    .line 19
    return-wide p2

    .line 20
    :cond_1
    cmp-long v0, p0, p4

    .line 22
    if-gtz v0, :cond_2

    .line 24
    cmp-long v0, p6, p2

    .line 26
    if-gtz v0, :cond_2

    .line 28
    sub-long/2addr p6, p4

    .line 29
    return-wide p6

    .line 30
    :cond_2
    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->min(JJ)J

    .line 33
    move-result-wide p2

    .line 34
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    .line 37
    move-result-wide p0

    .line 38
    sub-long/2addr p2, p0

    .line 39
    return-wide p2

    .line 40
    :cond_3
    :goto_0
    const-wide/16 p0, 0x0

    .line 42
    return-wide p0
.end method

.method public static countUnfreezeEvent(Landroid/util/ArrayMap;Lcom/android/server/am/mars/EventRecorder$Event;Lcom/android/server/am/mars/EventRecorder$Converter;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 3
    new-instance v1, Lcom/android/server/am/mars/EventRecorder$$ExternalSyntheticLambda1;

    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/util/ArrayMap;

    .line 14
    iget-object p1, p1, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    iget-object v3, p2, Lcom/android/server/am/mars/EventRecorder$Converter;->hashCache:Landroid/util/ArrayMap;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 34
    iget-object v3, p2, Lcom/android/server/am/mars/EventRecorder$Converter;->hashCache:Landroid/util/ArrayMap;

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 77
    move-result v0

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object p2, p2, Lcom/android/server/am/mars/EventRecorder$Converter;->hashCache:Landroid/util/ArrayMap;

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p2, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object p1

    .line 92
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Ljava/lang/Integer;

    .line 102
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result p2

    .line 106
    add-int/lit8 p2, p2, 0x1

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public static createNewEmptyFile(Ljava/io/File;)Z
    .locals 3

    .line 1
    const-string v0, "EventRecorder"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 19
    const-string/jumbo p0, "delete failed"

    .line 22
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v1

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 34
    const-string/jumbo p0, "createNewFile failed"

    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return v1

    .line 41
    :cond_1
    const-string/jumbo p0, "created new file"

    .line 44
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :goto_0
    const-string/jumbo v2, "createNewFile failed. "

    .line 52
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    return v1
.end method

.method public static processFreezeEvent(JJLcom/android/server/am/mars/EventRecorder$Event;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 20

    .line 1
    move-object/from16 v0, p4

    .line 3
    move-object/from16 v1, p5

    .line 5
    move-object/from16 v2, p6

    .line 7
    move-object/from16 v3, p7

    .line 9
    sget-object v4, Lcom/android/server/am/mars/EventRecorder$EventType;->FREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 11
    iget-object v5, v0, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    if-ne v5, v4, :cond_0

    .line 17
    move v4, v7

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v4, v6

    .line 20
    :goto_0
    iget-wide v8, v0, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 22
    iget-object v5, v0, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 24
    if-eqz v4, :cond_2

    .line 26
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    goto/16 :goto_1

    .line 42
    :cond_2
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, "unfreeze event without freeze event. uid : "

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    const-string v1, "EventRecorder"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Long;

    .line 75
    const-wide/16 v10, 0x0

    .line 77
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Ljava/lang/Long;

    .line 87
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 90
    move-result-wide v10

    .line 91
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 94
    move-result-wide v16

    .line 95
    iget-wide v14, v0, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 97
    move-wide/from16 v12, p0

    .line 99
    move-wide/from16 v18, v14

    .line 101
    move-wide/from16 v14, p2

    .line 103
    invoke-static/range {v12 .. v19}, Lcom/android/server/am/mars/EventRecorder;->calculateOverlapPeriod(JJJJ)J

    .line 106
    move-result-wide v12

    .line 107
    add-long/2addr v10, v12

    .line 108
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v2, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    cmp-long v1, p0, v8

    .line 117
    if-gtz v1, :cond_4

    .line 119
    cmp-long v1, p2, v8

    .line 121
    if-ltz v1, :cond_4

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    .line 125
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 128
    move-result-object v2

    .line 129
    array-length v2, v2

    .line 130
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v4

    .line 134
    invoke-static {v2, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    .line 137
    move-result-object v2

    .line 138
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Ljava/util/ArrayList;

    .line 147
    iget-object v0, v0, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    .line 149
    invoke-static {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->reasonTypeOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getTypeNum()I

    .line 156
    move-result v0

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Ljava/lang/Integer;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 166
    move-result v2

    .line 167
    add-int/2addr v2, v7

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_4
    :goto_1
    return-void
.end method

.method public static processUidEvent(JJLcom/android/server/am/mars/EventRecorder$Event;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 15

    .line 1
    move-object/from16 v0, p4

    .line 3
    move-object/from16 v1, p5

    .line 5
    move-object/from16 v2, p6

    .line 7
    sget-object v3, Lcom/android/server/am/mars/EventRecorder$EventType;->UID_RUN:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 9
    iget-object v4, v0, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 11
    if-ne v4, v3, :cond_0

    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 18
    if-eqz v3, :cond_2

    .line 20
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 26
    return-void

    .line 27
    :cond_1
    iget-wide v2, v0, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v1, "stop event without run event. uid : "

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    const-string v1, "EventRecorder"

    .line 60
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 64
    :cond_3
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/Long;

    .line 70
    const-wide/16 v5, 0x0

    .line 72
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/lang/Long;

    .line 82
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 85
    move-result-wide v5

    .line 86
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 89
    move-result-wide v11

    .line 90
    iget-wide v13, v0, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 92
    move-wide v7, p0

    .line 93
    move-wide/from16 v9, p2

    .line 95
    invoke-static/range {v7 .. v14}, Lcom/android/server/am/mars/EventRecorder;->calculateOverlapPeriod(JJJJ)J

    .line 98
    move-result-wide v0

    .line 99
    add-long/2addr v5, v0

    .line 100
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :goto_1
    return-void
.end method


# virtual methods
.method public final addFreezeEvent(Ljava/lang/Integer;JLjava/lang/String;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 11
    new-instance v10, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 13
    sget-object v6, Lcom/android/server/am/mars/EventRecorder$EventType;->FREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v7

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v8

    .line 24
    move-object v2, v10

    .line 25
    move-wide v3, p2

    .line 26
    move-object v5, p1

    .line 27
    move-object v9, p4

    .line 28
    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(JLjava/lang/Integer;Lcom/android/server/am/mars/EventRecorder$EventType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 39
    move-result p1

    .line 40
    const/16 p2, 0xfa

    .line 42
    if-le p1, p2, :cond_1

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    move-result-wide p1

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/EventRecorder;->performWriteAsync(J)V

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final addUnFreezeEvent(Ljava/lang/Integer;JLjava/lang/String;I)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v9, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 11
    sget-object v5, Lcom/android/server/am/mars/EventRecorder$EventType;->UNFREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 13
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v6

    .line 17
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v7

    .line 21
    move-object v1, v9

    .line 22
    move-wide v2, p2

    .line 23
    move-object v4, p1

    .line 24
    move-object v8, p4

    .line 25
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(JLjava/lang/Integer;Lcom/android/server/am/mars/EventRecorder$EventType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide p2

    .line 32
    iget-object p4, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 34
    invoke-virtual {p4, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p4, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 39
    invoke-virtual {p4}, Ljava/util/ArrayDeque;->size()I

    .line 42
    move-result p4

    .line 43
    const/16 p5, 0xfa

    .line 45
    if-le p4, p5, :cond_1

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/mars/EventRecorder;->performWriteAsync(J)V

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/mars/EventRecorder;->mLatestUnfreezeEvent:Landroid/util/ArrayMap;

    .line 55
    invoke-virtual {p0, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final onUidStart(Ljava/lang/Integer;J)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 11
    new-instance v10, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 13
    sget-object v6, Lcom/android/server/am/mars/EventRecorder$EventType;->UID_RUN:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v7

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v8

    .line 24
    const-string v9, ""

    .line 26
    move-object v2, v10

    .line 27
    move-wide v3, p2

    .line 28
    move-object v5, p1

    .line 29
    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(JLjava/lang/Integer;Lcom/android/server/am/mars/EventRecorder$EventType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 40
    move-result p1

    .line 41
    const/16 p2, 0xfa

    .line 43
    if-le p1, p2, :cond_1

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    move-result-wide p1

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/EventRecorder;->performWriteAsync(J)V

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final onUidStop(Ljava/lang/Integer;J)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 11
    new-instance v10, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 13
    sget-object v6, Lcom/android/server/am/mars/EventRecorder$EventType;->UID_STOP:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v7

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v8

    .line 24
    const-string v9, ""

    .line 26
    move-object v2, v10

    .line 27
    move-wide v3, p2

    .line 28
    move-object v5, p1

    .line 29
    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(JLjava/lang/Integer;Lcom/android/server/am/mars/EventRecorder$EventType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 40
    move-result p1

    .line 41
    const/16 p2, 0xfa

    .line 43
    if-le p1, p2, :cond_1

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    move-result-wide p1

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/EventRecorder;->performWriteAsync(J)V

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final performWrite(J)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 25
    move-result-object v3

    .line 26
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_2

    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 38
    iget-wide v4, v4, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 40
    const-wide/16 v6, 0x1f4

    .line 42
    add-long/2addr v4, v6

    .line 43
    cmp-long v4, v4, p1

    .line 45
    if-gtz v4, :cond_1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_7

    .line 54
    :cond_2
    :goto_1
    if-lez v2, :cond_3

    .line 56
    iget-object p1, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 64
    invoke-virtual {p1}, Lcom/android/server/am/mars/EventRecorder$Event;->toFile()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v2, v2, -0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 p0, 0x0

    .line 76
    sput-boolean p0, Lcom/android/server/am/mars/EventRecorder;->mCommitPending:Z

    .line 78
    sget-object p0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 83
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    .line 85
    new-instance p2, Ljava/io/OutputStreamWriter;

    .line 87
    new-instance v1, Ljava/io/FileOutputStream;

    .line 89
    sget-object v2, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    const/4 v3, 0x1

    .line 96
    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 99
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 101
    invoke-direct {p2, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 104
    invoke-direct {p1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    goto :goto_5

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    goto :goto_6

    .line 123
    :catch_0
    move-exception p0

    .line 124
    goto :goto_4

    .line 125
    :catchall_2
    move-exception p0

    .line 126
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 129
    goto :goto_3

    .line 130
    :catchall_3
    move-exception p1

    .line 131
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 134
    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    :goto_4
    :try_start_6
    const-string p1, "EventRecorder"

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const-string/jumbo v0, "error at performWrite. "

    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p0

    .line 155
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    sget-object p0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 160
    goto :goto_2

    .line 161
    :goto_5
    return-void

    .line 162
    :goto_6
    sget-object p1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 164
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 167
    throw p0

    .line 168
    :goto_7
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 169
    throw p0
.end method

.method public final performWriteAsync(J)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->mCommitPending:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/android/server/am/mars/EventRecorder;->mCommitPending:Z

    .line 9
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/server/am/mars/EventRecorder$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/mars/EventRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/EventRecorder;J)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public final reportUnfreezeCount(Landroid/util/ArrayMap;Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->FEATURE_ENABLE:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/mars/EventRecorder;->performWrite(J)V

    .line 13
    new-instance p0, Landroid/util/ArrayMap;

    .line 15
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    new-instance v0, Lcom/android/server/am/mars/EventRecorder$Converter;

    .line 20
    invoke-direct {v0}, Lcom/android/server/am/mars/EventRecorder$Converter;-><init>()V

    .line 23
    sget-object v1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 28
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 30
    new-instance v2, Ljava/io/InputStreamReader;

    .line 32
    new-instance v3, Ljava/io/FileInputStream;

    .line 34
    sget-object v4, Lcom/android/server/am/mars/EventRecorder;->file:Ljava/io/File;

    .line 36
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 43
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 45
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 48
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_4

    .line 57
    new-instance v3, Lcom/android/server/am/mars/EventRecorder$Event;

    .line 59
    invoke-direct {v3, v2}, Lcom/android/server/am/mars/EventRecorder$Event;-><init>(Ljava/lang/String;)V

    .line 62
    sget-object v2, Lcom/android/server/am/mars/EventRecorder$EventType;->UNFREEZE:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 64
    iget-object v4, v3, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 66
    if-ne v4, v2, :cond_1

    .line 68
    iget-object v2, v3, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    .line 70
    const-string/jumbo v4, "broadcast"

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 79
    iget-object v2, v3, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    .line 81
    const-string v4, "Binder(0)"

    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_2

    .line 89
    iget-object v2, v3, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    .line 91
    const-string v4, "Binder(1)"

    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_2

    .line 99
    iget-object v2, v3, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    .line 101
    const-string/jumbo v4, "free_buffer_full"

    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_2

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v2

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    iget-object v2, v3, Lcom/android/server/am/mars/EventRecorder$Event;->procStateAfterEvent:Ljava/lang/Integer;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 118
    move-result v2

    .line 119
    const/16 v4, 0x10

    .line 121
    if-ge v2, v4, :cond_3

    .line 123
    iget-object v2, v3, Lcom/android/server/am/mars/EventRecorder$Event;->procStateBeforeEvent:Ljava/lang/Integer;

    .line 125
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result v2

    .line 129
    if-ge v2, v4, :cond_3

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    invoke-static {p0, v3, v0}, Lcom/android/server/am/mars/EventRecorder;->countUnfreezeEvent(Landroid/util/ArrayMap;Lcom/android/server/am/mars/EventRecorder$Event;Lcom/android/server/am/mars/EventRecorder$Converter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    goto :goto_0

    .line 136
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    :goto_1
    sget-object v1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 141
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 144
    goto :goto_5

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    goto/16 :goto_8

    .line 148
    :catch_0
    move-exception v1

    .line 149
    goto :goto_4

    .line 150
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 153
    goto :goto_3

    .line 154
    :catchall_2
    move-exception v1

    .line 155
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 158
    :goto_3
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    :goto_4
    :try_start_5
    const-string v2, "EventRecorder"

    .line 161
    const-string v3, "Error at reportUnfreezeCount"

    .line 163
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    goto :goto_1

    .line 167
    :goto_5
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 169
    invoke-direct {v1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 172
    const-string p2, "ACTIVITY MANAGER FREECESS UNFREEZE COUNT(dumpsys activity freecess report_unfreeze)"

    .line 174
    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 180
    move-result-object p0

    .line 181
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object p0

    .line 185
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    move-result p2

    .line 189
    if-eqz p2, :cond_8

    .line 191
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    move-result-object p2

    .line 195
    check-cast p2, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Ljava/lang/Integer;

    .line 203
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 206
    move-result-object p2

    .line 207
    check-cast p2, Landroid/util/ArrayMap;

    .line 209
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    move-result-object v3

    .line 213
    if-nez v3, :cond_5

    .line 215
    goto :goto_6

    .line 216
    :cond_5
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    move-result-object v2

    .line 220
    check-cast v2, Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 228
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 231
    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 234
    move-result-object p2

    .line 235
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 238
    move-result-object p2

    .line 239
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_7

    .line 245
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Ljava/util/Map$Entry;

    .line 251
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Ljava/lang/Integer;

    .line 257
    iget-object v4, v0, Lcom/android/server/am/mars/EventRecorder$Converter;->hashCache:Landroid/util/ArrayMap;

    .line 259
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    move-result-object v3

    .line 263
    check-cast v3, Ljava/lang/String;

    .line 265
    if-nez v3, :cond_6

    .line 267
    goto :goto_7

    .line 268
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Ljava/lang/Integer;

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    .line 276
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v3, " "

    .line 284
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 297
    goto :goto_7

    .line 298
    :cond_7
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 301
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 304
    goto :goto_6

    .line 305
    :cond_8
    return-void

    .line 306
    :goto_8
    sget-object p1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 308
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 311
    throw p0
.end method
