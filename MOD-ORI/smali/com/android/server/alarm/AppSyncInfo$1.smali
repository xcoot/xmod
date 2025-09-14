.class public final Lcom/android/server/alarm/AppSyncInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/alarm/AppSyncInfo$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void

    .line 2
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    iput-object p0, p1, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    .line 5
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object p0, p1, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p0, p1, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p0, p1, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->$r8$classId:I

    .line 9
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    new-instance p1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "sec.app.policy.UPDATE.AppsyncPolicy"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo v0, "sec.app.policy.UPDATE.AppsyncPolicy"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 23
    .line 24
    invoke-static {p0, p1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void

    .line 28
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v1, 0x1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 94
    .line 95
    iput-boolean v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    .line 96
    .line 97
    :cond_5
    :goto_1
    return-void

    .line 98
    :pswitch_1
    iget-object p2, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 99
    .line 100
    invoke-static {p2, p1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    const-string p2, "account"

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/accounts/AccountManager;

    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    .line 116
    .line 117
    const/4 p2, 0x0

    .line 118
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p1, p0, p2, v0}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string p2, "Ignore Exception : "

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const-string p1, "AppSyncInfo"

    .line 143
    .line 144
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_6
    :goto_2
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
