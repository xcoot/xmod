.class public final synthetic Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vcn/VcnContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vcn/VcnContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vcn/VcnContext;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vcn/VcnContext;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/vcn/VcnContext;->isFlagIpSecTransformStateEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnContext;->isFlagNetworkMetricMonitorEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    move p0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    const/4 v0, -0x1

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    iget-boolean p0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 30
    .line 31
    iget-boolean v2, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 32
    .line 33
    if-eq p0, v2, :cond_1

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget p0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPriorityClass:I

    .line 39
    .line 40
    iget v2, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPriorityClass:I

    .line 41
    .line 42
    if-ne p0, v2, :cond_4

    .line 43
    .line 44
    iget-boolean p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsSelected:Z

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    :cond_2
    move v1, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iget-boolean p1, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsSelected:Z

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-static {p0, v2}, Ljava/lang/Integer;->compare(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_1
    return v1
.end method
