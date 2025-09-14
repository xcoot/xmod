.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;
.super Landroid/hardware/ISensorPrivacyManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedInternalListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

.field public mIsConfirmPopupShowing:Z

.field public final mLock:Ljava/lang/Object;

.field public final mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

.field public final mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

.field public final mSuppressReminders:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public static -$$Nest$mshowSensorStateChangedActivity(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x10403b6

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v2, v2}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 41
    .line 42
    .line 43
    const/high16 v2, 0x840000

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    sget-object v2, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    sget-object p1, Landroid/hardware/SensorPrivacyManager;->EXTRA_TOGGLE_TYPE:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 67
    .line 68
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public static -$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    const/4 v12, 0x2

    .line 8
    new-array v13, v12, [Z

    .line 9
    .line 10
    new-array v14, v12, [Z

    .line 11
    .line 12
    new-array v15, v12, [Z

    .line 13
    .line 14
    new-array v8, v12, [Z

    .line 15
    .line 16
    iget-object v7, v9, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 17
    .line 18
    new-instance v6, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;

    .line 19
    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    move-object v0, v6

    .line 23
    move-object/from16 v1, p0

    .line 24
    .line 25
    move-object v2, v15

    .line 26
    move/from16 v3, p1

    .line 27
    .line 28
    move-object v4, v8

    .line 29
    move-object v5, v13

    .line 30
    move-object v12, v6

    .line 31
    move/from16 v6, p2

    .line 32
    .line 33
    move-object v11, v7

    .line 34
    move-object v7, v14

    .line 35
    move-object/from16 v17, v8

    .line 36
    .line 37
    move/from16 v8, v16

    .line 38
    .line 39
    invoke-direct/range {v0 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[ZI)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v11, v12}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->atomic(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    iget-object v11, v9, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 46
    .line 47
    new-instance v12, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;

    .line 48
    .line 49
    const/4 v8, 0x1

    .line 50
    move-object v0, v12

    .line 51
    move-object/from16 v4, v17

    .line 52
    .line 53
    invoke-direct/range {v0 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[ZI)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, v12}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->atomic(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    const/4 v1, 0x1

    .line 61
    const/16 v2, -0x2710

    .line 62
    .line 63
    if-eq v10, v2, :cond_1

    .line 64
    .line 65
    aget-boolean v3, v15, v0

    .line 66
    .line 67
    aget-boolean v4, v13, v0

    .line 68
    .line 69
    if-ne v3, v4, :cond_1

    .line 70
    .line 71
    aget-boolean v3, v15, v1

    .line 72
    .line 73
    aget-boolean v4, v13, v1

    .line 74
    .line 75
    if-eq v3, v4, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move/from16 v5, p2

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_1
    :goto_0
    iget-object v3, v9, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 82
    .line 83
    aget-boolean v4, v13, v0

    .line 84
    .line 85
    move/from16 v5, p2

    .line 86
    .line 87
    invoke-virtual {v3, v5, v1, v1, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 88
    .line 89
    .line 90
    iget-object v3, v9, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 91
    .line 92
    aget-boolean v4, v13, v1

    .line 93
    .line 94
    const/4 v6, 0x2

    .line 95
    invoke-virtual {v3, v5, v6, v1, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 96
    .line 97
    .line 98
    aget-boolean v3, v13, v0

    .line 99
    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    aget-boolean v3, v13, v1

    .line 103
    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move v3, v0

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    :goto_1
    move v3, v1

    .line 110
    :goto_2
    invoke-virtual {v9, v1, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    .line 111
    .line 112
    .line 113
    :goto_3
    if-eq v10, v2, :cond_4

    .line 114
    .line 115
    aget-boolean v2, v17, v0

    .line 116
    .line 117
    aget-boolean v3, v14, v0

    .line 118
    .line 119
    if-ne v2, v3, :cond_4

    .line 120
    .line 121
    aget-boolean v2, v17, v1

    .line 122
    .line 123
    aget-boolean v3, v14, v1

    .line 124
    .line 125
    if-eq v2, v3, :cond_7

    .line 126
    .line 127
    :cond_4
    iget-object v2, v9, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 128
    .line 129
    aget-boolean v3, v14, v0

    .line 130
    .line 131
    const/4 v4, 0x2

    .line 132
    invoke-virtual {v2, v5, v1, v4, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v9, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 136
    .line 137
    aget-boolean v3, v14, v1

    .line 138
    .line 139
    invoke-virtual {v2, v5, v4, v4, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 140
    .line 141
    .line 142
    aget-boolean v2, v14, v0

    .line 143
    .line 144
    if-nez v2, :cond_5

    .line 145
    .line 146
    aget-boolean v2, v14, v1

    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    :cond_5
    move v0, v1

    .line 151
    :cond_6
    invoke-virtual {v9, v4, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    .line 152
    .line 153
    .line 154
    :cond_7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 19
    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v0, p1, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 43
    .line 44
    sget-object v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance$1:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    sget-object v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 53
    .line 54
    invoke-direct {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 58
    .line 59
    :cond_0
    sget-object v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 60
    .line 61
    sput-object v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance$1:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 62
    .line 63
    :cond_1
    sget-object v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance$1:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 66
    .line 67
    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-direct {v2, v3, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v3

    .line 76
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;)V

    .line 77
    .line 78
    .line 79
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 80
    const/16 v2, 0x64

    .line 81
    .line 82
    const/16 v3, 0x1a

    .line 83
    .line 84
    const/16 v4, 0x1b

    .line 85
    .line 86
    const/16 v5, 0x65

    .line 87
    .line 88
    const/16 v6, 0x79

    .line 89
    .line 90
    filled-new-array {v4, v2, v3, v5, v6}, [I

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object v3, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 95
    .line 96
    invoke-virtual {v3, v2, p0}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v3, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 100
    .line 101
    invoke-virtual {v3, v2, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v4, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    new-instance v5, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-direct {v5, p0, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;I)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Landroid/content/IntentFilter;

    .line 113
    .line 114
    sget-object v2, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v6, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v7, "android.permission.MANAGE_SENSOR_PRIVACY"

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v9, 0x2

    .line 123
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    iget-object v2, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;

    .line 129
    .line 130
    const/4 v4, 0x1

    .line 131
    invoke-direct {v3, p0, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;I)V

    .line 132
    .line 133
    .line 134
    new-instance v4, Landroid/content/IntentFilter;

    .line 135
    .line 136
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    .line 137
    .line 138
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-direct {p1, v2, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 156
    .line 157
    monitor-enter v2

    .line 158
    :try_start_1
    iget-object v3, v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iget-object v4, v3, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    .line 164
    .line 165
    if-nez v4, :cond_3

    .line 166
    .line 167
    iput-object p1, v3, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    .line 168
    .line 169
    iput-object v0, v3, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    .line 170
    .line 171
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    new-instance p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    .line 173
    .line 174
    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 175
    .line 176
    .line 177
    iget-object p0, v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 178
    .line 179
    monitor-enter p0

    .line 180
    :try_start_2
    iget-object v2, v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    .line 181
    .line 182
    if-nez v2, :cond_2

    .line 183
    .line 184
    iput-object p1, v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    .line 185
    .line 186
    iput-object v0, v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 187
    .line 188
    monitor-exit p0

    .line 189
    return-void

    .line 190
    :catchall_0
    move-exception p1

    .line 191
    goto :goto_0

    .line 192
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 193
    .line 194
    const-string v0, "Listener is already set"

    .line 195
    .line 196
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    throw p1

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    goto :goto_1

    .line 204
    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    const-string p1, "Listener is already set"

    .line 207
    .line 208
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p0

    .line 212
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    throw p0

    .line 214
    :catchall_2
    move-exception p0

    .line 215
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 216
    throw p0
.end method

.method public static isAutomotive(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 10
    .line 11
    and-int/lit8 p0, p0, 0xf

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public static logSensorPrivacyToggle(IIJZZ)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p2

    .line 6
    const-wide/32 p2, 0xea60

    .line 7
    .line 8
    .line 9
    div-long/2addr v0, p2

    .line 10
    const-wide/16 p2, 0x0

    .line 11
    .line 12
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v6

    .line 16
    const/4 p2, 0x0

    .line 17
    const/4 p3, 0x1

    .line 18
    const/4 v0, 0x2

    .line 19
    if-eqz p5, :cond_0

    .line 20
    .line 21
    move v4, p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p4, :cond_1

    .line 24
    .line 25
    move v4, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v4, p3

    .line 28
    :goto_0
    if-eq p1, p3, :cond_3

    .line 29
    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    move v3, p2

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v3, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move v3, p3

    .line 37
    :goto_1
    const/4 p1, 0x3

    .line 38
    if-eq p0, p3, :cond_6

    .line 39
    .line 40
    if-eq p0, v0, :cond_5

    .line 41
    .line 42
    if-eq p0, p1, :cond_4

    .line 43
    .line 44
    move v5, p2

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    move v5, p3

    .line 47
    goto :goto_2

    .line 48
    :cond_5
    move v5, v0

    .line 49
    goto :goto_2

    .line 50
    :cond_6
    move v5, p1

    .line 51
    :goto_2
    const/16 v2, 0x17d

    .line 52
    .line 53
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    const-string p1, "listener cannot be null"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p1, "listener cannot be null"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final binderDied()V
    .locals 0

    .line 1
    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 4
    invoke-virtual {p0, v2, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final canChangeToggleSensorPrivacy(II)Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p2, v2, :cond_0

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    .line 8
    :cond_0
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 9
    .line 10
    iget-object v3, v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCallStateHelper:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 11
    .line 12
    iget-object v4, v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v4

    .line 15
    :try_start_0
    iget-boolean v3, v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    .line 16
    .line 17
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 21
    .line 22
    const-string p0, "SensorPrivacyService"

    .line 23
    .line 24
    const-string p1, "Can\'t change mic toggle during an emergency call"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->requiresAuthentication()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    sget-object p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 49
    .line 50
    const-string p0, "SensorPrivacyService"

    .line 51
    .line 52
    const-string p1, "Can\'t change mic/cam toggle while device is locked"

    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_2
    if-ne p2, v2, :cond_3

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 63
    .line 64
    const-string v4, "disallow_microphone_toggle"

    .line 65
    .line 66
    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    sget-object p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 73
    .line 74
    const-string p0, "SensorPrivacyService"

    .line 75
    .line 76
    const-string p1, "Can\'t change mic toggle due to admin restriction"

    .line 77
    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return v1

    .line 82
    :cond_3
    if-ne p2, v0, :cond_4

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 87
    .line 88
    const-string p2, "disallow_camera_toggle"

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    sget-object p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 97
    .line 98
    const-string p0, "SensorPrivacyService"

    .line 99
    .line 100
    const-string p1, "Can\'t change camera toggle due to admin restriction"

    .line 101
    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return v1

    .line 106
    :cond_4
    return v2

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    sget-object v2, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "SensorPrivacyService"

    .line 12
    .line 13
    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    move v3, v2

    .line 23
    :goto_0
    array-length v4, p3

    .line 24
    if-ge v2, v4, :cond_3

    .line 25
    .line 26
    aget-object v4, p3, v2

    .line 27
    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-lez v5, :cond_3

    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/16 v6, 0x2d

    .line 41
    .line 42
    if-eq v5, v6, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/2addr v2, v0

    .line 46
    const-string v5, "--proto"

    .line 47
    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    move v3, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string v5, "Unknown argument: "

    .line 57
    .line 58
    const-string v6, "; use -h for help"

    .line 59
    .line 60
    invoke-static {p2, v5, v4, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 71
    .line 72
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 73
    .line 74
    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    .line 75
    .line 76
    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    iget-object p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 91
    .line 92
    .line 93
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :try_start_4
    throw p0

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    const-string p1, "SENSOR PRIVACY MANAGER STATE (dumpsys sensor_privacy)"

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 109
    .line 110
    new-instance p1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 111
    .line 112
    new-instance p3, Landroid/util/IndentingPrintWriter;

    .line 113
    .line 114
    const-string v2, "  "

    .line 115
    .line 116
    invoke-direct {p3, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-enter p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :try_start_5
    iget-object p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 126
    .line 127
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 131
    .line 132
    .line 133
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 134
    :try_start_6
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :catchall_2
    move-exception p0

    .line 142
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 143
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 144
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    .line 146
    .line 147
    throw p0
.end method

.method public final enforceManageSensorPrivacyPermission()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.MANAGE_SENSOR_PRIVACY"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string v0, "Changing sensor privacy requires the following permission: android.permission.MANAGE_SENSOR_PRIVACY"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final enforceObserveSensorPrivacyPermission()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v1, 0x104003a

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 15
    .line 16
    const-wide/32 v2, 0x100000

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string v0, "android.permission.OBSERVE_SENSOR_PRIVACY"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 49
    .line 50
    const-string v0, "Observing sensor privacy changes requires the following permission: android.permission.OBSERVE_SENSOR_PRIVACY"

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final enqueueSensorUseReminderDialogAsync(IILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    move-object v2, p0

    .line 17
    move-object v4, p3

    .line 18
    move-object v5, p4

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getCameraPrivacyAllowlist()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    .line 7
    .line 8
    return-object p0
.end method

.method public final getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const p1, 0x10403b8

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const p1, 0x10403b7

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final getToggleSensorPrivacyState(II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 9
    .line 10
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget p0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 15
    .line 16
    return p0
.end method

.method public final isCameraPrivacyEnabled(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 7
    .line 8
    iget v1, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    if-ne v0, v3, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    const/4 v3, 0x3

    .line 26
    if-ne v0, v3, :cond_4

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    .line 31
    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    return v1

    .line 57
    :cond_3
    return v2

    .line 58
    :cond_4
    return v1
.end method

.method public final isCombinedToggleSensorPrivacyEnabled(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :cond_1
    :goto_0
    return v0
.end method

.method public final isSensorPrivacyEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final isToggleSensorPrivacyEnabled(II)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 9
    .line 10
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isToggleSensorPrivacyEnabledInternal(III)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object p4, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo p4, "onOpNoted  "

    .line 4
    .line 5
    .line 6
    const-string v0, "  code="

    .line 7
    .line 8
    const-string v1, "  uid="

    .line 9
    .line 10
    invoke-static {p1, p4, p3, v0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    const-string v0, "SensorPrivacyService"

    .line 15
    .line 16
    invoke-static {p4, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    and-int/lit8 p4, p5, 0xd

    .line 20
    .line 21
    if-nez p4, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 p4, 0x1

    .line 25
    if-ne p6, p4, :cond_5

    .line 26
    .line 27
    const/16 p5, 0x1b

    .line 28
    .line 29
    if-eq p1, p5, :cond_4

    .line 30
    .line 31
    const/16 p5, 0x64

    .line 32
    .line 33
    if-eq p1, p5, :cond_4

    .line 34
    .line 35
    const/16 p5, 0x79

    .line 36
    .line 37
    if-ne p1, p5, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 p4, 0x1a

    .line 41
    .line 42
    if-eq p1, p4, :cond_3

    .line 43
    .line 44
    const/16 p4, 0x65

    .line 45
    .line 46
    if-ne p1, p4, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void

    .line 50
    :cond_3
    :goto_0
    const/4 p4, 0x2

    .line 51
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide p5

    .line 55
    :try_start_0
    invoke-virtual {p0, p2, p4, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onSensorUseStarted(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_5
    return-void
.end method

.method public final onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSensorUseStarted(IILjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x1

    .line 11
    const-string v6, "Suppressed sensor privacy reminder for "

    .line 12
    .line 13
    iget-object v7, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 14
    .line 15
    iget v7, v7, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 16
    .line 17
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraPrivacyAllowlist()Z

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    const/4 v9, 0x2

    .line 26
    if-eqz v8, :cond_0

    .line 27
    .line 28
    if-ne v2, v9, :cond_0

    .line 29
    .line 30
    iget-object v8, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 31
    .line 32
    iget-object v8, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isAutomotive(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-nez v8, :cond_1

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    const/16 v8, 0x3e8

    .line 55
    .line 56
    if-ne v1, v8, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iget-object v8, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v8

    .line 62
    :try_start_0
    iget-object v10, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 63
    .line 64
    new-instance v11, Landroid/util/Pair;

    .line 65
    .line 66
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-direct {v11, v12, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v10, :cond_3

    .line 78
    .line 79
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "SensorPrivacyService"

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, "/"

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    monitor-exit v8

    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    new-instance v6, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v8, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 118
    .line 119
    iget-object v8, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 120
    .line 121
    const v10, 0x7fffffff

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v10}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    const/4 v12, 0x0

    .line 133
    move v13, v12

    .line 134
    :goto_0
    if-ge v13, v11, :cond_9

    .line 135
    .line 136
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 141
    .line 142
    iget-boolean v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 143
    .line 144
    if-eqz v15, :cond_8

    .line 145
    .line 146
    iget-object v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 147
    .line 148
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    if-eqz v15, :cond_7

    .line 157
    .line 158
    iget-object v15, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 159
    .line 160
    iget-boolean v9, v15, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mIsLargeCoverScreen:Z

    .line 161
    .line 162
    if-nez v9, :cond_4

    .line 163
    .line 164
    iget-boolean v9, v15, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mIsFlipModel:Z

    .line 165
    .line 166
    if-eqz v9, :cond_4

    .line 167
    .line 168
    iget v9, v14, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 169
    .line 170
    if-ne v9, v5, :cond_4

    .line 171
    .line 172
    sget-object v9, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 173
    .line 174
    const-string v9, "SensorPrivacyService"

    .line 175
    .line 176
    new-instance v15, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string/jumbo v10, "popup will not be displayed at subscreen at flip model : "

    .line 179
    .line 180
    .line 181
    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    iget v9, v14, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 196
    .line 197
    if-ne v9, v4, :cond_5

    .line 198
    .line 199
    sget-object v9, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 200
    .line 201
    const-string v9, "SensorPrivacyService"

    .line 202
    .line 203
    new-instance v10, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string/jumbo v15, "popup will not be displayed at view cover display : "

    .line 206
    .line 207
    .line 208
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_5
    iget-boolean v9, v14, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 223
    .line 224
    if-eqz v9, :cond_6

    .line 225
    .line 226
    iget v1, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 227
    .line 228
    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_6
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_7
    iget-object v9, v14, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 237
    .line 238
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    new-instance v10, Landroid/util/ArraySet;

    .line 243
    .line 244
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    filled-new-array {v15}, [Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v15

    .line 252
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v15

    .line 256
    invoke-direct {v10, v15}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v10}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    if-eqz v9, :cond_8

    .line 268
    .line 269
    iget-boolean v9, v14, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 270
    .line 271
    if-eqz v9, :cond_8

    .line 272
    .line 273
    iget v9, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 274
    .line 275
    invoke-virtual {v0, v9, v2, v7, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_8
    :goto_1
    add-int/2addr v13, v5

    .line 279
    const/4 v9, 0x2

    .line 280
    const v10, 0x7fffffff

    .line 281
    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-ne v8, v5, :cond_a

    .line 290
    .line 291
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 296
    .line 297
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 298
    .line 299
    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    if-le v6, v5, :cond_b

    .line 308
    .line 309
    invoke-virtual {v0, v2, v7, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_b
    if-ne v2, v5, :cond_c

    .line 314
    .line 315
    const-string v6, "com.sec.android.app.voicenote"

    .line 316
    .line 317
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    if-eqz v6, :cond_c

    .line 322
    .line 323
    iget-object v6, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 324
    .line 325
    iget-object v6, v6, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 326
    .line 327
    if-eqz v6, :cond_c

    .line 328
    .line 329
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    if-eqz v6, :cond_c

    .line 334
    .line 335
    sget-object v6, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 336
    .line 337
    const-string v6, "SensorPrivacyService"

    .line 338
    .line 339
    const-string v8, "display toast for voicenote in lock state "

    .line 340
    .line 341
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    :try_start_1
    iget-object v6, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 345
    .line 346
    invoke-virtual {v6}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-virtual {v6, v3, v12, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    iget-object v8, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 359
    .line 360
    iget-object v8, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 361
    .line 362
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    iget-object v8, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 371
    .line 372
    iget-object v9, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 373
    .line 374
    invoke-virtual {v8}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    const v10, 0x1040d68

    .line 383
    .line 384
    .line 385
    invoke-virtual {v8, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    invoke-static {v6, v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    invoke-static {v9, v6, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    .line 399
    .line 400
    goto :goto_2

    .line 401
    :catch_0
    sget-object v6, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 402
    .line 403
    const-string v6, "SensorPrivacyService"

    .line 404
    .line 405
    const-string v8, "Cannot show sensor use toast for "

    .line 406
    .line 407
    invoke-static {v8, v3, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    :cond_c
    :goto_2
    iget-object v6, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 411
    .line 412
    iget-object v6, v6, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManager:Landroid/app/ActivityManager;

    .line 413
    .line 414
    const v8, 0x7fffffff

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    :goto_3
    if-ge v12, v8, :cond_e

    .line 426
    .line 427
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 432
    .line 433
    iget-boolean v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 434
    .line 435
    if-eqz v10, :cond_d

    .line 436
    .line 437
    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 438
    .line 439
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v9

    .line 443
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    if-eqz v9, :cond_d

    .line 448
    .line 449
    invoke-virtual {v0, v2, v7, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    return-void

    .line 453
    :cond_d
    add-int/2addr v12, v5

    .line 454
    goto :goto_3

    .line 455
    :cond_e
    iget-object v6, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 456
    .line 457
    iget-object v6, v6, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 458
    .line 459
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 460
    .line 461
    .line 462
    move-result-object v6

    .line 463
    const-string v8, "default_input_method"

    .line 464
    .line 465
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 466
    .line 467
    .line 468
    move-result v9

    .line 469
    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    if-eqz v6, :cond_f

    .line 474
    .line 475
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    goto :goto_4

    .line 484
    :cond_f
    const/4 v6, 0x0

    .line 485
    :goto_4
    :try_start_2
    iget-object v8, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 486
    .line 487
    iget-object v8, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 488
    .line 489
    invoke-virtual {v8, v1}, Landroid/app/ActivityManagerInternal;->getUidCapability(I)I

    .line 490
    .line 491
    .line 492
    move-result v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 493
    const/4 v9, -0x1

    .line 494
    if-ne v2, v5, :cond_12

    .line 495
    .line 496
    const-class v5, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 497
    .line 498
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    check-cast v5, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 503
    .line 504
    if-eqz v5, :cond_10

    .line 505
    .line 506
    invoke-virtual {v5, v3}, Landroid/service/voice/VoiceInteractionManagerInternal;->hasActiveSession(Ljava/lang/String;)Z

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    if-eqz v5, :cond_10

    .line 511
    .line 512
    invoke-virtual {v0, v9, v2, v7, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :cond_10
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    if-eqz v5, :cond_11

    .line 521
    .line 522
    and-int/2addr v4, v8

    .line 523
    if-eqz v4, :cond_11

    .line 524
    .line 525
    invoke-virtual {v0, v9, v2, v7, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :cond_11
    const-string v4, "com.sec.android.app.voicenote"

    .line 530
    .line 531
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    if-eqz v4, :cond_12

    .line 536
    .line 537
    invoke-virtual {v0, v9, v2, v7, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :cond_12
    const/4 v4, 0x2

    .line 542
    if-ne v2, v4, :cond_13

    .line 543
    .line 544
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 545
    .line 546
    .line 547
    move-result v5

    .line 548
    if-eqz v5, :cond_13

    .line 549
    .line 550
    and-int/2addr v4, v8

    .line 551
    if-eqz v4, :cond_13

    .line 552
    .line 553
    invoke-virtual {v0, v9, v2, v7, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :cond_13
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 558
    .line 559
    const-string v0, "SensorPrivacyService"

    .line 560
    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string v3, "/"

    .line 570
    .line 571
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v1, " started using sensor "

    .line 578
    .line 579
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v1, " but no activity or foreground service was running. The user will not be informed. System components should check if sensor privacy is enabled for the sensor before accessing it."

    .line 586
    .line 587
    invoke-static {v4, v1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    return-void

    .line 591
    :catch_1
    move-exception v0

    .line 592
    sget-object v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 593
    .line 594
    const-string v1, "SensorPrivacyService"

    .line 595
    .line 596
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    .line 598
    .line 599
    return-void

    .line 600
    :goto_5
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 601
    throw v0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$7;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const-string v0, "disallow_camera_toggle"

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v4, 0x5

    .line 17
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, p0

    .line 20
    move v3, p1

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string v0, "disallow_microphone_toggle"

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    const/4 v3, 0x5

    .line 40
    const/4 v4, 0x1

    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v0, p0

    .line 43
    move v2, p1

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    const-string p1, "listener cannot be null"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string v0, "Could not remove sensor use reminder suppression token "

    .line 2
    .line 3
    const-string v1, "No tokens for "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/util/ArrayList;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    sget-object p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 19
    .line 20
    const-string p0, "SensorPrivacyService"

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    monitor-exit v2

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 64
    .line 65
    const-string p0, "SensorPrivacyService"

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, " from "

    .line 76
    .line 77
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    monitor-exit v2

    .line 91
    return-void

    .line 92
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method

.method public final removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p1, "listener cannot be null"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final requiresAuthentication()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const v0, 0x111021b

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final setCameraPrivacyAllowlist(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method public final setGlobalRestriction(IZ)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 13
    .line 14
    const/16 v1, 0x1a

    .line 15
    .line 16
    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 24
    .line 25
    const/16 v0, 0x65

    .line 26
    .line 27
    invoke-virtual {p1, v0, p2, p0}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 32
    .line 33
    iget-object v1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 36
    .line 37
    const/16 v2, 0x1b

    .line 38
    .line 39
    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 43
    .line 44
    iget-object v1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 47
    .line 48
    const/16 v2, 0x88

    .line 49
    .line 50
    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 54
    .line 55
    iget-object v1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 58
    .line 59
    const/16 v2, 0x64

    .line 60
    .line 61
    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 65
    .line 66
    iget-object v1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 69
    .line 70
    const/16 v2, 0x78

    .line 71
    .line 72
    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string/jumbo v1, "receive_explicit_user_interaction_audio_enabled"

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/4 v1, 0x0

    .line 91
    if-ne p1, v0, :cond_2

    .line 92
    .line 93
    move p1, v0

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move p1, v1

    .line 96
    :goto_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 99
    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    if-nez p1, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    move v0, v1

    .line 106
    :goto_1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 107
    .line 108
    const/16 p1, 0x79

    .line 109
    .line 110
    invoke-virtual {v2, p1, v0, p0}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-void
.end method

.method public final setSensorPrivacy(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 12
    .line 13
    if-eq v1, p1, :cond_0

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, v3, v1}, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final setToggleSensorPrivacy(IIIZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 8
    .line 9
    iget p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 10
    .line 11
    :cond_0
    move v2, p1

    .line 12
    invoke-virtual {p0, v2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->canChangeToggleSensorPrivacy(II)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz p4, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->supportsSensorToggle(II)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    const/4 v1, 0x1

    .line 30
    move-object v0, p0

    .line 31
    move v3, p2

    .line 32
    move v4, p3

    .line 33
    move v5, p4

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final setToggleSensorPrivacyForProfileGroup(IIIZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 8
    .line 9
    iget p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    move-object v1, v0

    .line 25
    move-object v2, p0

    .line 26
    move v4, p2

    .line 27
    move v5, p3

    .line 28
    move v6, p4

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZI)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setToggleSensorPrivacyForProfileGroupWithConfirmPopup(IIIZI)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    iget-boolean p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mIsConfirmPopupShowing:Z

    .line 7
    .line 8
    if-nez p4, :cond_2

    .line 9
    .line 10
    const/4 p4, 0x1

    .line 11
    iput-boolean p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mIsConfirmPopupShowing:Z

    .line 12
    .line 13
    iget-object p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p4, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, -0x2

    .line 45
    if-ne p1, v0, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 48
    .line 49
    iget p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sget-object p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 60
    .line 61
    const-string/jumbo p1, "setToggleSensorPrivacyForProfileGroupWithConfirmPopup parentId "

    .line 62
    .line 63
    .line 64
    const-string v0, " source="

    .line 65
    .line 66
    const-string v1, " sensor="

    .line 67
    .line 68
    invoke-static {v3, p2, p1, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, " enable="

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, " displayId="

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, "SensorPrivacyService"

    .line 89
    .line 90
    invoke-static {p1, p5, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 94
    .line 95
    new-instance p5, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;

    .line 96
    .line 97
    const/4 v7, 0x1

    .line 98
    move-object v1, p5

    .line 99
    move-object v2, p0

    .line 100
    move v4, p2

    .line 101
    move v5, p3

    .line 102
    move v6, p4

    .line 103
    invoke-direct/range {v1 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZI)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p5}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    return-void
.end method

.method public final setToggleSensorPrivacyState(IIII)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 8
    .line 9
    iget p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 10
    .line 11
    :cond_0
    move v1, p1

    .line 12
    invoke-virtual {p0, v1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->canChangeToggleSensorPrivacy(II)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->supportsSensorToggle(II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    new-array v6, p1, [J

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 30
    .line 31
    new-instance v7, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;

    .line 32
    .line 33
    move-object v0, v7

    .line 34
    move v2, p3

    .line 35
    move v3, p4

    .line 36
    move v4, p2

    .line 37
    move-object v5, p0

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;-><init>(IIIILcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v7}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->atomic(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setToggleSensorPrivacyStateForProfileGroup(IIII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 8
    .line 9
    iget p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    move-object v2, p0

    .line 25
    move v4, p2

    .line 26
    move v5, p3

    .line 27
    move v6, p4

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIII)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final setToggleSensorPrivacyUnchecked(IIIIZ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    const/4 v9, 0x1

    .line 3
    new-array v6, v9, [J

    .line 4
    .line 5
    iget-object v10, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 6
    .line 7
    new-instance v11, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    move-object v1, v11

    .line 10
    move-object v2, p0

    .line 11
    move v3, p1

    .line 12
    move v4, p2

    .line 13
    move/from16 v5, p4

    .line 14
    .line 15
    move/from16 v7, p5

    .line 16
    .line 17
    move v8, p3

    .line 18
    invoke-direct/range {v1 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III[JZI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v10, v11}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->atomic(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    if-nez p5, :cond_1

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    move/from16 v3, p4

    .line 31
    .line 32
    if-ne v3, v9, :cond_0

    .line 33
    .line 34
    const/16 v3, 0x41

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v3, 0x42

    .line 38
    .line 39
    :goto_0
    :try_start_0
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    :goto_1
    return-void
.end method

.method public final showSensorUseDialog(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 17
    .line 18
    const-string/jumbo v0, "showSensorUseDialog  sensor="

    .line 19
    .line 20
    .line 21
    const-string v1, "  pid="

    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "SensorPrivacyService"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 44
    .line 45
    iget v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 46
    .line 47
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "android"

    .line 52
    .line 53
    const/4 v2, -0x1

    .line 54
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 59
    .line 60
    const-string p1, "Can only be called by the system uid"

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final showSensorUseReminderNotification(ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p3, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    const v2, 0x1080574

    .line 32
    .line 33
    .line 34
    const v3, 0x1040e35

    .line 35
    .line 36
    .line 37
    const v4, 0x1040d68

    .line 38
    .line 39
    .line 40
    const/16 v5, 0x41

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const v2, 0x10803cc

    .line 44
    .line 45
    .line 46
    const v3, 0x1040e33

    .line 47
    .line 48
    .line 49
    const v4, 0x1040d67

    .line 50
    .line 51
    .line 52
    const/16 v5, 0x42

    .line 53
    .line 54
    :goto_0
    new-instance v6, Landroid/app/NotificationChannel;

    .line 55
    .line 56
    iget-object v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 57
    .line 58
    invoke-virtual {v7}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const v8, 0x1040e32

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string/jumbo v8, "sensor_privacy"

    .line 70
    .line 71
    .line 72
    const/4 v9, 0x4

    .line 73
    invoke-direct {v6, v8, v7, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 74
    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-virtual {v6, v7, v7}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 90
    .line 91
    iget-object v7, v7, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 92
    .line 93
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 94
    .line 95
    .line 96
    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 97
    .line 98
    invoke-virtual {v6}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-static {v6, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {v6, v4, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-static {p3, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 139
    .line 140
    iget-object v1, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    const-class v4, Landroid/safetycenter/SafetyCenterManager;

    .line 143
    .line 144
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/safetycenter/SafetyCenterManager;

    .line 149
    .line 150
    invoke-virtual {v1}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_1

    .line 155
    .line 156
    const-string v1, "android.settings.PRIVACY_CONTROLS"

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    const-string v1, "android.settings.PRIVACY_SETTINGS"

    .line 160
    .line 161
    :goto_1
    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 162
    .line 163
    iget-object v4, v4, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    new-instance v6, Landroid/content/Intent;

    .line 166
    .line 167
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/high16 v1, 0xc000000

    .line 171
    .line 172
    invoke-static {v4, p1, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 177
    .line 178
    invoke-virtual {v6}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    const v7, 0x1040e34

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    iget-object v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 190
    .line 191
    iget-object v7, v7, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    new-instance v10, Landroid/content/Intent;

    .line 194
    .line 195
    sget-object v11, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 196
    .line 197
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v11, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 201
    .line 202
    iget-object v11, v11, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    sget-object v11, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v10, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    sget-object v11, Landroid/hardware/SensorPrivacyManager;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v10, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    const-string v11, "android.intent.extra.USER"

    .line 225
    .line 226
    invoke-virtual {v10, v11, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-static {v7, p1, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 235
    .line 236
    iget-object p2, p2, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 237
    .line 238
    new-instance v1, Landroid/app/Notification$Builder;

    .line 239
    .line 240
    iget-object v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 241
    .line 242
    iget-object v7, v7, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    invoke-direct {v1, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object p3

    .line 259
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 260
    .line 261
    invoke-direct {v1, v2, v6, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    new-instance p3, Landroid/app/Notification$TvExtender;

    .line 277
    .line 278
    invoke-direct {p3}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 288
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 298
    .line 299
    and-int/lit8 p0, p0, 0xf

    .line 300
    .line 301
    if-ne p0, v9, :cond_2

    .line 302
    .line 303
    const-wide/16 v1, 0x1

    .line 304
    .line 305
    goto :goto_2

    .line 306
    :cond_2
    const-wide/16 v1, 0x0

    .line 307
    .line 308
    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    invoke-virtual {p2, v5, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :catch_0
    sget-object p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 325
    .line 326
    const-string p0, "Cannot show sensor use notification for "

    .line 327
    .line 328
    const-string p1, "SensorPrivacyService"

    .line 329
    .line 330
    invoke-static {p0, p3, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-void
.end method

.method public final supportsSensorToggle(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_1

    .line 4
    .line 5
    if-ne p2, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const p1, 0x1110253

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    if-ne p2, v0, :cond_3

    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_PRIVACY_TOGGLE"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_1
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    if-ne p2, v1, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const p1, 0x1110251

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_2
    if-ne p2, v0, :cond_3

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const p1, 0x1110250

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    return p0

    .line 74
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string v0, "Invalid arguments. toggleType="

    .line 77
    .line 78
    const-string v1, " sensor="

    .line 79
    .line 80
    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0
.end method

.method public final suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 8
    .line 9
    iget p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 10
    .line 11
    :cond_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/util/Pair;

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    if-eqz p4, :cond_2

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    :try_start_0
    invoke-interface {p3, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ljava/util/ArrayList;

    .line 43
    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    new-instance p2, Ljava/util/ArrayList;

    .line 47
    .line 48
    const/4 p4, 0x1

    .line 49
    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    sget-object p2, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 66
    .line 67
    const-string p2, "SensorPrivacyService"

    .line 68
    .line 69
    const-string p3, "Could not suppress sensor use reminder"

    .line 70
    .line 71
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    monitor-exit p1

    .line 75
    return-void

    .line 76
    :cond_2
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 87
    .line 88
    iget-object p4, p4, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 89
    .line 90
    invoke-static {p2, p4, v0, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    .line 96
    .line 97
    :goto_1
    monitor-exit p1

    .line 98
    return-void

    .line 99
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0
.end method
