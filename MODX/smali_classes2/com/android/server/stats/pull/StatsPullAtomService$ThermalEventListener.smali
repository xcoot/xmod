.class public final Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/high16 v2, 0x41200000    # 10.0f

    .line 14
    .line 15
    mul-float/2addr v1, v2

    .line 16
    float-to-int v1, v1

    .line 17
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/16 v2, 0xbd

    .line 22
    .line 23
    invoke-static {v2, p0, v0, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
