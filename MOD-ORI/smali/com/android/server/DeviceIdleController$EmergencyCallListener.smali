.class public final Lcom/android/server/DeviceIdleController$EmergencyCallListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public volatile mIsEmergencyCallActive:Z

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DeviceIdleController"

    .line 6
    .line 7
    const-string/jumbo v1, "onCallStateChanged(): state is "

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 23
    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 28
    .line 29
    .line 30
    monitor-exit p1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 3
    .line 4
    sget-boolean p1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "DeviceIdleController"

    .line 9
    .line 10
    const-string/jumbo v0, "onOutgoingEmergencyCall(): subId = "

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget-object p2, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 25
    .line 26
    const-string/jumbo p2, "emergency call"

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0, p2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    monitor-exit p1

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method
