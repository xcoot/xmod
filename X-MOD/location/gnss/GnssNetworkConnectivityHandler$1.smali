.class public final Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 3
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 3
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 9
    const/4 v2, 0x2

    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 15
    iput-object v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 19
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 21
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 29
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 31
    iget-object v1, v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 33
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 41
    if-eqz v0, :cond_6

    .line 43
    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 52
    move-result-object v0

    .line 53
    new-instance v2, Ljava/util/HashSet;

    .line 55
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 58
    const-string v3, "GnssNetworkConnectivityHandler"

    .line 60
    if-eqz v0, :cond_2

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    const-string v5, "Active Sub List size: "

    .line 66
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 72
    move-result v5

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v0

    .line 87
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 99
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 102
    move-result v5

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 112
    iget-object v5, v5, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    .line 114
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 117
    move-result v6

    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_1

    .line 128
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 131
    move-result v5

    .line 132
    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 135
    move-result-object v5

    .line 136
    if-eqz v5, :cond_1

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    .line 140
    const-string v7, "Listener sub"

    .line 142
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 148
    move-result v7

    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v6

    .line 156
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v6, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;

    .line 161
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 163
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 166
    move-result v8

    .line 167
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v8

    .line 171
    invoke-direct {v6, v7, v8}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Integer;)V

    .line 174
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 176
    iget-object v7, v7, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    .line 178
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 181
    move-result v4

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/16 v4, 0x800

    .line 191
    invoke-virtual {v5, v6, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 194
    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 197
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    .line 199
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 202
    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 206
    move-result-object v0

    .line 207
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_5

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 226
    move-result v5

    .line 227
    if-nez v5, :cond_3

    .line 229
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 232
    move-result-object v5

    .line 233
    check-cast v5, Ljava/lang/Integer;

    .line 235
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 238
    move-result v5

    .line 239
    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 242
    move-result-object v5

    .line 243
    if-eqz v5, :cond_4

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v7, "unregister listener sub "

    .line 250
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object v6

    .line 264
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 270
    move-result-object v4

    .line 271
    check-cast v4, Landroid/telephony/PhoneStateListener;

    .line 273
    const/4 v6, 0x0

    .line 274
    invoke-virtual {v5, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 280
    goto :goto_1

    .line 281
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 283
    const-string v6, "Telephony Manager for Sub "

    .line 285
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    const-string v4, " null"

    .line 297
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object v4

    .line 304
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    goto :goto_1

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 310
    iget v0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 319
    move-result v0

    .line 320
    if-nez v0, :cond_6

    .line 322
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 324
    const/4 v0, -0x1

    .line 325
    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 327
    :cond_6
    return-void
.end method
