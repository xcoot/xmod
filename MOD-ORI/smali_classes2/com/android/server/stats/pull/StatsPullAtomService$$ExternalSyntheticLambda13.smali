.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/util/List;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->f$1:I

    .line 11
    .line 12
    check-cast p2, [J

    .line 13
    .line 14
    sget v3, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 15
    .line 16
    :goto_0
    array-length v3, p2

    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    aget-wide v3, p2, v1

    .line 20
    .line 21
    invoke-static {p0, p1, v1, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/2addr v1, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    .line 32
    .line 33
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->f$1:I

    .line 34
    .line 35
    check-cast p2, [J

    .line 36
    .line 37
    sget p0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 38
    .line 39
    aget-wide v5, p2, v1

    .line 40
    .line 41
    aget-wide v7, p2, v0

    .line 42
    .line 43
    move v4, p1

    .line 44
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    .line 53
    .line 54
    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;->f$1:I

    .line 55
    .line 56
    check-cast p2, Ljava/lang/Long;

    .line 57
    .line 58
    sget v1, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
