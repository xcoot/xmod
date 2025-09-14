.class public final Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "TipsManagerService"

    .line 12
    .line 13
    const-string v2, "com.samsung.android.app.tips"

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 57
    .line 58
    const-string p1, "[GalaxyTips] Tips was uninstalled."

    .line 59
    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_5

    .line 82
    .line 83
    sget-object p2, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 84
    .line 85
    const-string p2, "[GalaxyTips] Tips was installed. Start to register all filters"

    .line 86
    .line 87
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 94
    .line 95
    iget-boolean v1, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 96
    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    iget-object p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    new-instance v4, Landroid/content/IntentFilter;

    .line 105
    .line 106
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 110
    .line 111
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string/jumbo p2, "samsung.galaxy.tips.application.terminated"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 121
    .line 122
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 126
    .line 127
    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 128
    .line 129
    if-nez p2, :cond_3

    .line 130
    .line 131
    const-string/jumbo p2, "samsung.galaxy.tips.network_granted"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 138
    .line 139
    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 140
    .line 141
    if-nez p2, :cond_4

    .line 142
    .line 143
    const-string p2, "android.intent.action.NEW_OUTGOING_CALL"

    .line 144
    .line 145
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string p2, "android.intent.action.PHONE_STATE"

    .line 149
    .line 150
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 154
    .line 155
    iget-object v2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    .line 156
    .line 157
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 158
    .line 159
    const/4 v6, 0x0

    .line 160
    const/4 v7, 0x2

    .line 161
    const/4 v5, 0x0

    .line 162
    move-object v1, p1

    .line 163
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 167
    .line 168
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 169
    .line 170
    :cond_5
    :goto_1
    return-void
.end method
