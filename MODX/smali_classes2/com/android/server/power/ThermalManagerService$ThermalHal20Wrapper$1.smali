.class public final Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;
.super Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/hardware/thermal/V2_0/Temperature;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Temperature;

    .line 2
    .line 3
    iget v1, p1, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    .line 4
    .line 5
    iget v2, p1, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    .line 6
    .line 7
    iget-object v3, p1, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    .line 8
    .line 9
    iget p1, p1, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 21
    .line 22
    invoke-interface {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method
