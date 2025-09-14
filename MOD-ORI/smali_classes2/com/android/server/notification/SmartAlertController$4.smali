.class public final Lcom/android/server/notification/SmartAlertController$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

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
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "SmartAlertController"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    .line 20
    .line 21
    const-string/jumbo p1, "why"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const-string p2, "ACTION_SCREEN_ON, reason = "

    .line 29
    .line 30
    invoke-static {p1, p2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 34
    .line 35
    const/4 p2, 0x7

    .line 36
    if-ne p1, p2, :cond_0

    .line 37
    .line 38
    move v2, v0

    .line 39
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const-string p1, "ACTION_SCREEN_OFF"

    .line 52
    .line 53
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    new-instance p1, Lcom/android/server/notification/SmartAlertController$3;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/android/server/notification/SmartAlertController$3;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 82
    .line 83
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 84
    .line 85
    const-string/jumbo v0, "state"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    .line 97
    .line 98
    :cond_3
    :goto_0
    return-void
.end method
