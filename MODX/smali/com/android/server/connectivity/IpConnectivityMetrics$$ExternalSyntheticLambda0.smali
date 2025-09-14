.class public final synthetic Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo p1, "connectivity_metrics_buffer_size"

    .line 10
    const/16 v0, 0x7d0

    .line 12
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    move-result p0

    .line 16
    if-gtz p0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p1, 0x4e20

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result v0

    .line 25
    :goto_0
    return v0
.end method
