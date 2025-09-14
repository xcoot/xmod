.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field public final mAppOpsRestrictionToken:Landroid/os/IBinder;

.field public mCallStateHelper:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

.field public mCameraPrivacyAllowlist:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public final mIsFlipModel:Z

.field public mIsFolded:Z

.field public final mIsLargeCoverScreen:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSensorPrivacyManagerInternal:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

.field public final mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static -$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p0

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    aget v1, p0, v0

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v1}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".action.disable_sensor_privacy"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    .line 17
    .line 18
    const/16 v0, -0x2710

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-class v0, Landroid/app/AppOpsManager;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/app/AppOpsManager;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 33
    .line 34
    const-class v0, Landroid/app/AppOpsManagerInternal;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/app/AppOpsManagerInternal;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 43
    .line 44
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 53
    .line 54
    const-class v0, Landroid/app/ActivityManager;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/app/ActivityManager;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManager:Landroid/app/ActivityManager;

    .line 63
    .line 64
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 73
    .line 74
    const-class v0, Landroid/app/ActivityTaskManager;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/app/ActivityTaskManager;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 83
    .line 84
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 93
    .line 94
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 103
    .line 104
    const-class v0, Landroid/app/NotificationManager;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/app/NotificationManager;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    .line 114
    new-instance p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 115
    .line 116
    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 120
    .line 121
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p1, p1, Lcom/android/server/SystemConfig;->mAllowlistCameraPrivacy:Landroid/util/ArraySet;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/String;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mIsFlipModel:Z

    .line 160
    .line 161
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_LARGE_COVER_SCREEN"

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mIsLargeCoverScreen:Z

    .line 172
    .line 173
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v0, Landroid/app/KeyguardManager;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/app/KeyguardManager;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mIsLargeCoverScreen:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    new-instance p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCallStateHelper:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string/jumbo v0, "receive_explicit_user_interaction_audio_enabled"

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 79
    .line 80
    invoke-direct {v1, p0, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/os/Handler;)V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/16 v0, 0x226

    .line 89
    .line 90
    if-ne p1, v0, :cond_2

    .line 91
    .line 92
    new-instance p1, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p1, p0, v0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "sensor_privacy"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyManagerInternal:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    .line 15
    .line 16
    const-class v1, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, v1, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 16
    .line 17
    invoke-static {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
