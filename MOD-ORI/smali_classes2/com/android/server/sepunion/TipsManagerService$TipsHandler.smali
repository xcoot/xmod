.class public final Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-string v1, "TipsManagerService"

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 24
    .line 25
    const-string p0, "[GalaxyTips] Fail to send intent to Tips at emergency mode."

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 32
    .line 33
    const/16 v0, 0x2711

    .line 34
    .line 35
    const-string/jumbo v2, "tips_extras"

    .line 36
    .line 37
    .line 38
    const-string v3, "com.samsung.android.app.tips.TipsIntentService"

    .line 39
    .line 40
    const-string v4, "com.samsung.android.app.tips"

    .line 41
    .line 42
    if-eq p1, v0, :cond_3

    .line 43
    .line 44
    const/16 v0, 0x2714

    .line 45
    .line 46
    if-eq p1, v0, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 50
    .line 51
    const-string p1, "[GalaxyTips] Send FOTA DONE."

    .line 52
    .line 53
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroid/content/Intent;

    .line 57
    .line 58
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 71
    .line 72
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_0
    sget-object p0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 77
    .line 78
    const-string p0, "[GalaxyTips] Fail to send FOTA DONE intent to Tips."

    .line 79
    .line 80
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    iget p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    .line 89
    .line 90
    const/4 v5, 0x3

    .line 91
    if-ge p1, v5, :cond_4

    .line 92
    .line 93
    new-instance p1, Landroid/content/Intent;

    .line 94
    .line 95
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    const/4 v3, 0x2

    .line 102
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    :try_start_1
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 108
    .line 109
    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_1
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 114
    .line 115
    const-string p1, "[GalaxyTips] Fail to send MSG_START_TIPS_HUN intent to Tips."

    .line 116
    .line 117
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :goto_1
    iget p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    .line 121
    .line 122
    add-int/lit8 p1, p1, 0x1

    .line 123
    .line 124
    iput p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    .line 127
    .line 128
    const p1, 0x240c8400

    .line 129
    .line 130
    .line 131
    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$smsendMsg(Landroid/os/Handler;II)V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_2
    return-void
.end method
