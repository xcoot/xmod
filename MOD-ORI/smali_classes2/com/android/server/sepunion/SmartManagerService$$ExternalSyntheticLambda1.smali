.class public final synthetic Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SmartManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SmartManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_SWITCH_URI:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "SmartManagerService"

    .line 9
    .line 10
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 16
    .line 17
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 21
    .line 22
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "package"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mPkgChangedIntentReceiver:Lcom/android/server/sepunion/SmartManagerService$2;

    .line 34
    .line 35
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 36
    .line 37
    iget-object v6, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroid/content/IntentFilter;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "android.intent.action.USER_ADDED"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v2, "android.intent.action.USER_STOPPED"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/sepunion/SmartManagerService;->mUserActionReceiver:Lcom/android/server/sepunion/SmartManagerService$1;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    new-instance v1, Landroid/content/IntentFilter;

    .line 79
    .line 80
    const-string v2, "android.location.MODE_CHANGED"

    .line 81
    .line 82
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/server/sepunion/SmartManagerService;->mLocationChangeReceiver:Lcom/android/server/sepunion/SmartManagerService$4;

    .line 88
    .line 89
    iget-object v4, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 90
    .line 91
    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    const-string/jumbo v2, "registerReceiver cause exception"

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v2, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;

    .line 107
    .line 108
    invoke-direct {v2, p0}, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception v1

    .line 116
    const-string/jumbo v2, "registerRunningProcessObserver cause exception"

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    const-class v2, Landroid/hardware/SensorPrivacyManager;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroid/hardware/SensorPrivacyManager;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mPrivacyChangedListener:Lcom/android/server/sepunion/SmartManagerService$5;

    .line 133
    .line 134
    const/4 v3, 0x2

    .line 135
    invoke-virtual {v1, v3, v2}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mPrivacyChangedListener:Lcom/android/server/sepunion/SmartManagerService$5;

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    invoke-virtual {v1, v2, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catch_2
    move-exception p0

    .line 146
    const-string/jumbo v1, "register listener exception "

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    :goto_2
    return-void
.end method
