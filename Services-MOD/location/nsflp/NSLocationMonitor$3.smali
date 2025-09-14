.class public final Lcom/android/server/location/nsflp/NSLocationMonitor$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 3
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 9

    .line 1
    const-string v0, "NSLocationMonitor"

    .line 3
    const-string/jumbo v1, "onSubscriptionsChanged"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 11
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    move v3, v2

    .line 17
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 19
    iget v4, v4, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    .line 21
    const/4 v5, 0x1

    .line 22
    if-ge v2, v4, :cond_6

    .line 24
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_4

    .line 30
    array-length v6, v4

    .line 31
    if-nez v6, :cond_0

    .line 33
    goto/16 :goto_1

    .line 35
    :cond_0
    aget v4, v4, v1

    .line 37
    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 39
    iget-object v7, v6, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    .line 41
    if-eqz v7, :cond_2

    .line 43
    array-length v8, v7

    .line 44
    iget v6, v6, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    .line 46
    if-ne v8, v6, :cond_1

    .line 48
    aget v6, v7, v2

    .line 50
    if-ne v4, v6, :cond_1

    .line 52
    const-string v5, "NSLocationMonitor"

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v7, "SubId["

    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v4, "] for sim["

    .line 69
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v4, "] was not changed"

    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto/16 :goto_2

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto/16 :goto_3

    .line 92
    :cond_1
    const-string v6, "NSLocationMonitor"

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v8, "SubId was changed for sim["

    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v8, "]="

    .line 109
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v7

    .line 119
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 124
    iget-object v6, v6, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    .line 126
    aput v4, v6, v2

    .line 128
    :cond_2
    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 130
    iget-object v6, v6, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 132
    const-string/jumbo v7, "phone"

    .line 135
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    move-result-object v6

    .line 139
    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 141
    if-eqz v6, :cond_5

    .line 143
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 145
    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 147
    aget-object v3, v3, v2

    .line 149
    if-eqz v3, :cond_3

    .line 151
    const-string v3, "NSLocationMonitor"

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string/jumbo v8, "unregister previous PhoneStateListener SimSlot="

    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v7

    .line 171
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 176
    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 178
    aget-object v3, v3, v2

    .line 180
    invoke-virtual {v6, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 183
    :cond_3
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 185
    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 187
    new-instance v7, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;

    .line 189
    iget-object v8, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 191
    invoke-direct {v7, v8, v4}, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;I)V

    .line 194
    aput-object v7, v3, v2

    .line 196
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 198
    iget-object v3, v3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 200
    aget-object v3, v3, v2

    .line 202
    invoke-virtual {v6, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 205
    move v3, v5

    .line 206
    goto :goto_2

    .line 207
    :cond_4
    :goto_1
    const-string v4, "NSLocationMonitor"

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    const-string v6, "Failed to load subId for sim["

    .line 216
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v6, "]"

    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v5

    .line 231
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 236
    goto/16 :goto_0

    .line 238
    :cond_6
    if-eqz v3, :cond_7

    .line 240
    new-instance v1, Landroid/os/Bundle;

    .line 242
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 245
    const-string/jumbo v2, "isInitialized"

    .line 248
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 253
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 255
    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->SIM_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 257
    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 260
    :cond_7
    monitor-exit v0

    .line 261
    return-void

    .line 262
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    throw p0
.end method
