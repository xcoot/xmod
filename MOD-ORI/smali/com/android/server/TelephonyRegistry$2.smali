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
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p1, "android.intent.extra.user_handle"

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Lcom/android/server/TelephonyRegistry$1;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v0, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 42
    .line 43
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 52
    .line 53
    sget-object v1, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const-string v1, "android.telephony.extra.SLOT_INDEX"

    .line 60
    .line 61
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 74
    .line 75
    iget v1, v0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 76
    .line 77
    if-ne p1, v1, :cond_1

    .line 78
    .line 79
    iget v1, v0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 80
    .line 81
    if-eq p2, v1, :cond_2

    .line 82
    .line 83
    :cond_1
    iget-object p0, v0, Lcom/android/server/TelephonyRegistry;->mHandler:Lcom/android/server/TelephonyRegistry$1;

    .line 84
    .line 85
    const/4 v0, 0x2

    .line 86
    invoke-virtual {p0, v0, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    const/4 p2, -0x1

    .line 101
    if-ne p1, p2, :cond_4

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 104
    .line 105
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 106
    .line 107
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    const-string p2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 119
    .line 120
    sget-object p1, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_0
    return-void
.end method
