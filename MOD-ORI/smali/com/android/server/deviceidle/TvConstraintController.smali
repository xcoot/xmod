.class public final Lcom/android/server/deviceidle/TvConstraintController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/deviceidle/ConstraintController;


# instance fields
.field public final mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

.field public final mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "android.hardware.bluetooth"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 27
    .line 28
    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/deviceidle/BluetoothConstraint;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    iput-object v1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    .line 6
    .line 7
    const-string/jumbo v1, "bluetooth"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-interface {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleInternal;->registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lcom/android/server/DeviceIdleInternal;->unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
