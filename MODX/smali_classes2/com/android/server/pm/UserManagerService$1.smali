.class public final Lcom/android/server/pm/UserManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/UserManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/UserManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :pswitch_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isAutoLockForPrivateSpaceEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->maybeScheduleAlarmToAutoLockPrivateSpace()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    const-string p1, "UserManagerService"

    .line 67
    .line 68
    const-string p2, "SCREEN_ON broadcast received, removing pending alarms to auto-lock private space"

    .line 69
    .line 70
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_1
    return-void

    .line 79
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v0, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const-string p1, "android.intent.extra.INTENT"

    .line 93
    .line 94
    const-class v0, Landroid/content/IntentSender;

    .line 95
    .line 96
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/content/IntentSender;

    .line 101
    .line 102
    const-string v0, "android.intent.extra.USER_ID"

    .line 103
    .line 104
    const/16 v1, -0x2710

    .line 105
    .line 106
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 111
    .line 112
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
