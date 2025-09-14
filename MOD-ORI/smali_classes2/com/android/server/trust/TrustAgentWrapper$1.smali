.class public final Lcom/android/server/trust/TrustAgentWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

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
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "componentName"

    .line 7
    .line 8
    const-class v0, Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/content/ComponentName;

    .line 15
    .line 16
    const-string v0, "android.server.trust.TRUST_EXPIRED_ACTION"

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :pswitch_0
    const-string p1, "android.intent.action.SCREEN_OFF"

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
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 74
    .line 75
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 81
    .line 82
    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
