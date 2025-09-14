.class public final synthetic Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget p0, p0, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 8
    check-cast p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 10
    const/4 p0, 0x0

    .line 11
    if-ne p1, p2, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object p1, p1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 16
    iget-object p2, p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 18
    if-ne p1, p2, :cond_1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 23
    iget v0, p2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 25
    if-eq p0, v0, :cond_2

    .line 27
    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    .line 30
    move-result p0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 34
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    .line 37
    move-result p0

    .line 38
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 40
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    const/4 v2, -0x1

    .line 46
    if-eq p0, v0, :cond_4

    .line 48
    if-eqz p0, :cond_3

    .line 50
    :goto_0
    move p0, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move p0, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 57
    move-result p0

    .line 58
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 61
    move-result v0

    .line 62
    if-eq p0, v0, :cond_5

    .line 64
    if-eqz p0, :cond_3

    .line 66
    goto :goto_0

    .line 67
    :cond_5
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 69
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 71
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_6

    .line 77
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 80
    move-result p0

    .line 81
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 84
    move-result v0

    .line 85
    if-eq p0, v0, :cond_6

    .line 87
    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    .line 90
    move-result p0

    .line 91
    goto :goto_1

    .line 92
    :cond_6
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 94
    iget v0, p2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 96
    if-eq p0, v0, :cond_7

    .line 98
    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    .line 101
    move-result p0

    .line 102
    goto :goto_1

    .line 103
    :cond_7
    iget-wide p0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 105
    iget-wide v0, p2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 107
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 110
    move-result p0

    .line 111
    :goto_1
    return p0

    .line 112
    :pswitch_0
    check-cast p1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 114
    check-cast p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    .line 119
    move-result-wide v0

    .line 120
    invoke-virtual {p2}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    .line 123
    move-result-wide v2

    .line 124
    const-wide/16 v4, -0x1

    .line 126
    cmp-long p0, v0, v4

    .line 128
    if-nez p0, :cond_9

    .line 130
    cmp-long p0, v2, v4

    .line 132
    if-nez p0, :cond_8

    .line 134
    const/4 p0, 0x0

    .line 135
    goto :goto_2

    .line 136
    :cond_8
    const/4 p0, 0x1

    .line 137
    goto :goto_2

    .line 138
    :cond_9
    cmp-long p0, v2, v4

    .line 140
    if-nez p0, :cond_a

    .line 142
    const/4 p0, -0x1

    .line 143
    goto :goto_2

    .line 144
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    .line 147
    move-result p0

    .line 148
    invoke-virtual {p2}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    .line 151
    move-result p1

    .line 152
    if-eq p0, p1, :cond_b

    .line 154
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    .line 157
    move-result p0

    .line 158
    goto :goto_2

    .line 159
    :cond_b
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 162
    move-result p0

    .line 163
    :goto_2
    return p0

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
