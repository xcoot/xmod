.class public final Lcom/android/server/BatteryService$17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    sget-object v0, Lcom/att/iqi/lib/metrics/hw/HW12;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/att/iqi/lib/metrics/hw/HW12;

    .line 17
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/hw/HW12;-><init>()V

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/hw/HW12;->setCause(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    .line 24
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/hw/HW12;->setProcessor(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    .line 27
    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    .line 30
    :cond_0
    return-void
.end method
