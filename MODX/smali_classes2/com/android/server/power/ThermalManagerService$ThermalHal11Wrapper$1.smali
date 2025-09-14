.class public final Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;
.super Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final notifyThrottling(ZLandroid/hardware/thermal/V1_0/Temperature;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Temperature;

    .line 2
    .line 3
    iget v1, p2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    .line 4
    .line 5
    iget v2, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    .line 6
    .line 7
    iget-object p2, p2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-direct {v0, v1, v2, p2, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 24
    .line 25
    invoke-interface {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method
