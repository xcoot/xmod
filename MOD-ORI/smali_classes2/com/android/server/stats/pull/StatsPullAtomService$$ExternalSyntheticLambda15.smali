.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroid/telephony/SubscriptionInfo;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 13
    .line 14
    iget p1, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-ne p1, p0, :cond_0

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_0
    return v0

    .line 24
    :pswitch_0
    check-cast p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 25
    .line 26
    check-cast p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 27
    .line 28
    sget v2, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    .line 34
    .line 35
    iget-object v3, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    .line 36
    .line 37
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-boolean v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    .line 44
    .line 45
    iget-boolean v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    .line 46
    .line 47
    if-ne v2, v3, :cond_1

    .line 48
    .line 49
    iget-boolean v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    .line 50
    .line 51
    iget-boolean v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    .line 52
    .line 53
    if-ne v2, v3, :cond_1

    .line 54
    .line 55
    iget-boolean v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    .line 56
    .line 57
    iget-boolean v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    .line 58
    .line 59
    if-ne v2, v3, :cond_1

    .line 60
    .line 61
    iget v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    .line 62
    .line 63
    iget v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    .line 64
    .line 65
    if-ne v2, v3, :cond_1

    .line 66
    .line 67
    iget-object v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 70
    .line 71
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    iget v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 78
    .line 79
    iget v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 80
    .line 81
    if-ne v2, v3, :cond_1

    .line 82
    .line 83
    iget-boolean p1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    .line 84
    .line 85
    iget-boolean p0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    .line 86
    .line 87
    if-ne p1, p0, :cond_1

    .line 88
    .line 89
    move v0, v1

    .line 90
    :cond_1
    return v0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
