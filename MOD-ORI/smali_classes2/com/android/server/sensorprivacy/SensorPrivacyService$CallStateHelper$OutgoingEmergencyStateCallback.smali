.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-boolean p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    .line 7
    .line 8
    if-nez p2, :cond_2

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p2, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 27
    .line 28
    iget v4, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v5, 0x5

    .line 32
    const/4 v6, 0x1

    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 35
    .line 36
    .line 37
    iput-boolean p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mMicUnmutedForEmergencyCall:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mMicUnmutedForEmergencyCall:Z

    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 47
    .line 48
    iget v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    invoke-virtual {v2, v0, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 60
    .line 61
    iget v3, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    const/4 v4, 0x5

    .line 65
    const/4 v5, 0x2

    .line 66
    const/4 v6, 0x0

    .line 67
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 68
    .line 69
    .line 70
    iput-boolean p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCameraBlockedForEmergencyCall:Z

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCameraBlockedForEmergencyCall:Z

    .line 74
    .line 75
    :cond_2
    :goto_1
    monitor-exit p1

    .line 76
    return-void

    .line 77
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method
