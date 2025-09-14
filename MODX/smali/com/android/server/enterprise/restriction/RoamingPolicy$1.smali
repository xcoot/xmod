.class public final Lcom/android/server/enterprise/restriction/RoamingPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/restriction/RoamingPolicy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    move-result p1

    .line 27
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 33
    move-result p2

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->setRoamingDataAllowedSystemUI(IZ)V

    .line 37
    :cond_0
    return-void

    .line 38
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    const-string p2, "android.intent.action.SERVICE_STATE"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_5

    .line 50
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 52
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 54
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    .line 57
    move-result p1

    .line 58
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 60
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 63
    move-result p2

    .line 64
    const/4 v0, 0x1

    .line 65
    if-le p2, v0, :cond_2

    .line 67
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 70
    move-result p1

    .line 71
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 74
    move-result p1

    .line 75
    const-string/jumbo p2, "gsm.operator.isroaming"

    .line 78
    const-string/jumbo v1, "false"

    .line 81
    invoke-static {p1, p2, v1}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_1

    .line 91
    const-string/jumbo p2, "true"

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_1

    .line 100
    move p1, v0

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const/4 p1, 0x0

    .line 103
    :cond_2
    :goto_0
    const-string p2, "RoamingPolicy"

    .line 105
    if-eqz p1, :cond_4

    .line 107
    const-string p1, "Entering Roaming"

    .line 109
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance p1, Landroid/content/ContentValues;

    .line 114
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 117
    const-string/jumbo v0, "name"

    .line 120
    const-string/jumbo v1, "nonRoamingAutoSyncSetting"

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 132
    const-string v0, "1"

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    const-string v0, "0"

    .line 137
    :goto_1
    const-string/jumbo v1, "value"

    .line 140
    invoke-static {v1, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 143
    move-result-object v1

    .line 144
    const-string/jumbo v2, "storeUserAutoSyncSetting : storing user sync setting as "

    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 156
    const-string/jumbo v0, "generic"

    .line 159
    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 162
    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 166
    move-result p0

    .line 167
    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->setMasterSyncAutomatically(Z)V

    .line 170
    goto :goto_2

    .line 171
    :cond_4
    const-string p1, "Leaving Roaming"

    .line 173
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->restoreUserAutoSyncSetting()V

    .line 179
    :cond_5
    :goto_2
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
