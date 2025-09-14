.class public final synthetic Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/ThermalManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onValues(Landroid/os/Temperature;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
