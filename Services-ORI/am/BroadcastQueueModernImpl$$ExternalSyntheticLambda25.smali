.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda25;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda25;->f$0:J

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 28
    .line 29
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-wide v7, v4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 36
    .line 37
    cmp-long v4, v7, v0

    .line 38
    .line 39
    if-lez v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v4, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move v4, v5

    .line 45
    :goto_1
    if-eqz p0, :cond_3

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    .line 50
    .line 51
    iget-wide v7, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 52
    .line 53
    cmp-long p0, v7, v0

    .line 54
    .line 55
    if-lez p0, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move p0, v6

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_2
    move p0, v5

    .line 61
    :goto_3
    if-eqz v2, :cond_5

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 66
    .line 67
    iget-wide v7, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 68
    .line 69
    cmp-long v2, v7, v0

    .line 70
    .line 71
    if-lez v2, :cond_4

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_4
    move v2, v6

    .line 75
    goto :goto_5

    .line 76
    :cond_5
    :goto_4
    move v2, v5

    .line 77
    :goto_5
    if-eqz v3, :cond_7

    .line 78
    .line 79
    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    .line 82
    .line 83
    iget-wide v7, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 84
    .line 85
    cmp-long v0, v7, v0

    .line 86
    .line 87
    if-lez v0, :cond_6

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :cond_6
    move v0, v6

    .line 91
    goto :goto_7

    .line 92
    :cond_7
    :goto_6
    move v0, v5

    .line 93
    :goto_7
    if-eqz v4, :cond_8

    .line 94
    .line 95
    if-eqz p0, :cond_8

    .line 96
    .line 97
    if-eqz v2, :cond_8

    .line 98
    .line 99
    if-nez v0, :cond_a

    .line 100
    .line 101
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_9

    .line 106
    .line 107
    goto :goto_8

    .line 108
    :cond_9
    move v5, v6

    .line 109
    :cond_a
    :goto_8
    return v5
.end method
