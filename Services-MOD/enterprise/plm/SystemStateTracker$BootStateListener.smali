.class public final Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string p1, "SystemStateTracker"

    .line 3
    iget v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;->$r8$classId:I

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/android/server/enterprise/plm/SystemStateTracker;->$r8$clinit:I

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x3

    .line 24
    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "android.intent.extra.user_handle"

    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    move-result v1

    .line 43
    sget v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->$r8$clinit:I

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, ":"

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    const/4 v0, 0x2

    .line 90
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    :goto_0
    return-void

    .line 98
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    sget v1, Lcom/android/server/enterprise/plm/SystemStateTracker;->$r8$clinit:I

    .line 104
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    const/4 p2, 0x4

    .line 114
    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
