.class public final Lcom/android/server/emergency/EmergencyAffordanceService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const-string p1, "android.telephony.extra.NETWORK_COUNTRY"

    .line 15
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    move-result p2

    .line 26
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 28
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    .line 30
    const/4 v0, 0x2

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p1, "android.intent.action.AIRPLANE_MODE"

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 52
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 54
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    .line 56
    const/4 p1, 0x4

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    :cond_1
    :goto_0
    return-void
.end method
