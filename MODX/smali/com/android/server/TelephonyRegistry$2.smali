.class public final Lcom/android/server/TelephonyRegistry$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

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
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const-string p1, "android.intent.extra.user_handle"

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 22
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Lcom/android/server/TelephonyRegistry$1;

    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v0, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 41
    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 43
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    .line 46
    move-result v0

    .line 47
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 50
    move-result p1

    .line 51
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 53
    sget-object v1, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 55
    invoke-virtual {v0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 58
    move-result v0

    .line 59
    const-string v1, "android.telephony.extra.SLOT_INDEX"

    .line 61
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 64
    move-result p2

    .line 65
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 67
    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 75
    iget v1, v0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 77
    if-ne p1, v1, :cond_1

    .line 79
    iget v1, v0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 81
    if-eq p2, v1, :cond_2

    .line 83
    :cond_1
    iget-object p0, v0, Lcom/android/server/TelephonyRegistry;->mHandler:Lcom/android/server/TelephonyRegistry$1;

    .line 85
    const/4 v0, 0x2

    .line 86
    invoke-virtual {p0, v0, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 96
    invoke-virtual {p2, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 99
    move-result p1

    .line 100
    const/4 p2, -0x1

    .line 101
    if-ne p1, p2, :cond_4

    .line 103
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 105
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 107
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    const-string p2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 118
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 120
    sget-object p1, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 125
    :cond_4
    :goto_0
    return-void
.end method
