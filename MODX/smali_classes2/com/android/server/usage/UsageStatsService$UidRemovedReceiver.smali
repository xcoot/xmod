.class public final Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

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
    iget p1, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "android.intent.extra.user_handle"

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    if-ltz p1, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 31
    .line 32
    const/4 p2, 0x2

    .line 33
    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "android.intent.action.USER_STARTED"

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    if-ltz p1, :cond_2

    .line 50
    .line 51
    invoke-static {}, Landroid/app/usage/Flags;->disableIdleCheck()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    if-lez p1, :cond_2

    .line 58
    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 62
    .line 63
    const/16 p2, 0xb

    .line 64
    .line 65
    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    return-void

    .line 73
    :pswitch_0
    const-string p1, "android.intent.extra.UID"

    .line 74
    .line 75
    const/4 v0, -0x1

    .line 76
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ne p1, v0, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 86
    .line 87
    const/16 p2, 0xa

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
