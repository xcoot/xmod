.class public final synthetic Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/autofill/FillResponseEventLogger;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    .line 13
    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, "FillResponseEventLogger"

    .line 25
    .line 26
    const-string/jumbo v1, "uninitialized startResponseProcessingTimestamp"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iget-wide v2, p0, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    .line 37
    .line 38
    sub-long/2addr v0, v2

    .line 39
    iput-wide v0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyResponseProcessingMillis:J

    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    check-cast p0, Ljava/util/List;

    .line 43
    .line 44
    check-cast p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    move v2, v0

    .line 54
    move v3, v2

    .line 55
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-ge v0, v4, :cond_3

    .line 60
    .line 61
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/service/autofill/Dataset;

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v6, 0x4

    .line 74
    if-ne v5, v6, :cond_1

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_1
    invoke-virtual {v4}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const/4 v5, 0x5

    .line 86
    if-ne v4, v5, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    move v0, v2

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    move v1, v0

    .line 95
    move v3, v1

    .line 96
    :goto_3
    iput v0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccOnlyCount:I

    .line 97
    .line 98
    iput v3, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailablePccCount:I

    .line 99
    .line 100
    iput v1, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
