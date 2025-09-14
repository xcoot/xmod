.class public final Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/VcnManagementService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v2

    .line 14
    sparse-switch v2, :sswitch_data_0

    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x3

    .line 39
    goto :goto_0

    .line 40
    :sswitch_2
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x2

    .line 50
    goto :goto_0

    .line 51
    :sswitch_3
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :sswitch_4
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_4

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v1, p1

    .line 72
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 75
    sget-object p0, Lcom/android/server/VcnManagementService;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    .line 77
    const-string p0, "VcnManagementService"

    .line 79
    const-string/jumbo p1, "received unexpected intent: "

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto/16 :goto_5

    .line 91
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 99
    if-eqz p2, :cond_b

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_5

    .line 107
    goto/16 :goto_4

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    .line 111
    iget-object v1, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 113
    monitor-enter v1

    .line 114
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 116
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    .line 121
    iget-object v2, v2, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 123
    check-cast v2, Landroid/util/ArrayMap;

    .line 125
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 132
    move-result-object v2

    .line 133
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_7

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Landroid/net/vcn/VcnConfig;

    .line 151
    invoke-virtual {v4}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_6

    .line 161
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Landroid/os/ParcelUuid;

    .line 167
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    goto :goto_1

    .line 171
    :catchall_0
    move-exception p0

    .line 172
    goto :goto_3

    .line 173
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object p2

    .line 177
    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_9

    .line 183
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Landroid/os/ParcelUuid;

    .line 189
    iget-object v3, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    .line 191
    iget-object v4, v3, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 193
    check-cast v4, Landroid/util/ArrayMap;

    .line 195
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v4, v3, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 200
    check-cast v4, Landroid/util/ArrayMap;

    .line 202
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 205
    move-result v4

    .line 206
    invoke-virtual {v3, v2}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    .line 209
    if-eqz v4, :cond_8

    .line 211
    invoke-virtual {v3, v2, p1}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    .line 214
    goto :goto_2

    .line 215
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_a

    .line 221
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    .line 223
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 226
    :cond_a
    monitor-exit v1

    .line 227
    goto :goto_5

    .line 228
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    throw p0

    .line 230
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    .line 232
    const-string p1, "Package name was empty or null for intent with action"

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    invoke-static {p1}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    .line 244
    return-void

    .line 245
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    .line 247
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 249
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 252
    :goto_5
    return-void

    .line 253
    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_4
        0xff13fb5 -> :sswitch_3
        0x1f50b9c2 -> :sswitch_2
        0x5c1076e2 -> :sswitch_1
        0x5e33a4ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
