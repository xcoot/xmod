.class public final Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;


# instance fields
.field public mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setGeofenceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;)V

    .line 9
    return-void
.end method

.method public static translateGeofenceStatus(I)I
    .locals 1

    .line 1
    const/16 v0, -0x95

    .line 3
    if-eq p0, v0, :cond_2

    .line 5
    if-eqz p0, :cond_1

    .line 7
    const/16 v0, 0x64

    .line 9
    if-eq p0, v0, :cond_0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 14
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :pswitch_0
    const/4 p0, 0x2

    .line 17
    return p0

    .line 18
    :pswitch_1
    const/4 p0, 0x3

    .line 19
    return p0

    .line 20
    :pswitch_2
    const/4 p0, 0x4

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_2
    const/4 p0, 0x5

    .line 27
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    .line 8
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :goto_1
    monitor-exit p0

    .line 24
    throw v0
.end method
