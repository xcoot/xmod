.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

.field public final mCallStateLock:Ljava/lang/Object;

.field public mCameraBlockedForEmergencyCall:Z

.field public final mEmergencyStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

.field public final mHandler:Landroid/os/Handler;

.field public mIsInEmergencyCall:Z

.field public mMicUnmutedForEmergencyCall:Z

.field public mTts:Landroid/speech/tts/TextToSpeech;

.field public final mTtsHashForTTSPath:Ljava/util/HashMap;

.field public final mTtsHashForVoiceCallPath:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForVoiceCallPath:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForTTSPath:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mEmergencyStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

    .line 33
    .line 34
    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

    .line 35
    .line 36
    invoke-direct {v3, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

    .line 40
    .line 41
    iget-object v4, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 42
    .line 43
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    .line 52
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p1, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string/jumbo v2, "streamType"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x2

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    new-instance p1, Landroid/os/Handler;

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mHandler:Landroid/os/Handler;

    .line 88
    .line 89
    return-void
.end method
