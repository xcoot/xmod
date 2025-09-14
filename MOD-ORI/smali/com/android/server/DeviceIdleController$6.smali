.class public final Lcom/android/server/DeviceIdleController$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onProviderDisabled$com$android$server$DeviceIdleController$6(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onProviderDisabled$com$android$server$DeviceIdleController$7(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onProviderEnabled$com$android$server$DeviceIdleController$6(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onProviderEnabled$com$android$server$DeviceIdleController$7(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onStatusChanged$com$android$server$DeviceIdleController$6(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onStatusChanged$com$android$server$DeviceIdleController$7(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->receivedGpsLocationLocked(Landroid/location/Location;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->receivedGenericLocationLocked(Landroid/location/Location;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_1
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    throw p0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method
