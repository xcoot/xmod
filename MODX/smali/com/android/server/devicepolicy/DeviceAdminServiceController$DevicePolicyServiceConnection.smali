.class public final Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
.super Lcom/android/server/am/PersistentConnection;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/admin/IDeviceAdminService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getBindFlags()I
    .locals 0

    .line 1
    const/high16 p0, 0x4000000

    .line 3
    return p0
.end method
