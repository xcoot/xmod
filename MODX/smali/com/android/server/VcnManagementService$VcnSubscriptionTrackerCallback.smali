.class public final Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/VcnManagementService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "new snapshot: "

    .line 4
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 6
    iget-object v1, v1, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 11
    iget-object v3, v2, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 13
    iput-object p1, v2, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 22
    iget-object v0, v0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 36
    iget-object v0, v0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 38
    check-cast v0, Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v0

    .line 48
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/os/ParcelUuid;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Landroid/net/vcn/VcnConfig;

    .line 72
    invoke-virtual {v5}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {p1, v4, v5}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_0

    .line 82
    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-static {v4, p1}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 95
    iget-object v5, v5, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 97
    check-cast v5, Landroid/util/ArrayMap;

    .line 99
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_1

    .line 105
    iget-object v5, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Landroid/net/vcn/VcnConfig;

    .line 113
    invoke-virtual {v5, v4, v2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto/16 :goto_6

    .line 120
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 122
    iget-object v5, v2, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    .line 124
    iget-object v2, v2, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 126
    check-cast v2, Landroid/util/ArrayMap;

    .line 128
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 138
    iget-object v0, v0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 140
    check-cast v0, Landroid/util/ArrayMap;

    .line 142
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v0

    .line 150
    const/4 v2, 0x0

    .line 151
    move v4, v2

    .line 152
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    move-result v5

    .line 156
    const/4 v6, 0x1

    .line 157
    if-eqz v5, :cond_7

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 168
    move-result-object v7

    .line 169
    check-cast v7, Landroid/os/ParcelUuid;

    .line 171
    iget-object v8, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 173
    iget-object v8, v8, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 175
    check-cast v8, Landroid/util/ArrayMap;

    .line 177
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-result-object v8

    .line 181
    check-cast v8, Landroid/net/vcn/VcnConfig;

    .line 183
    iget-object v9, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 185
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    invoke-static {v7, p1}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    .line 191
    move-result v9

    .line 192
    iget v10, p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mActiveDataSubId:I

    .line 194
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_3

    .line 200
    iget-object v10, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 202
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    invoke-static {v7, p1}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    .line 208
    move-result v10

    .line 209
    if-nez v10, :cond_3

    .line 211
    move v10, v6

    .line 212
    goto :goto_3

    .line 213
    :cond_3
    move v10, v2

    .line 214
    :goto_3
    if-eqz v8, :cond_5

    .line 216
    invoke-virtual {v8}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {p1, v7, v8}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_5

    .line 226
    if-nez v9, :cond_4

    .line 228
    goto :goto_4

    .line 229
    :cond_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 232
    move-result-object v5

    .line 233
    check-cast v5, Lcom/android/server/vcn/Vcn;

    .line 235
    iget-object v8, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 237
    iget-object v8, v8, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 239
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    const-string v9, "Missing snapshot"

    .line 244
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 247
    const/4 v9, 0x2

    .line 248
    invoke-virtual {v5, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 251
    move-result-object v8

    .line 252
    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    invoke-virtual {v3, v7}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 258
    move-result-object v5

    .line 259
    iget-object v8, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 261
    iget-object v8, v8, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 263
    invoke-virtual {v8, v7}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 266
    move-result-object v7

    .line 267
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    move-result v5

    .line 271
    xor-int/2addr v5, v6

    .line 272
    or-int/2addr v4, v5

    .line 273
    goto :goto_2

    .line 274
    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 277
    move-result-object v5

    .line 278
    check-cast v5, Lcom/android/server/vcn/Vcn;

    .line 280
    if-eqz v10, :cond_6

    .line 282
    const-wide/16 v8, 0x0

    .line 284
    goto :goto_5

    .line 285
    :cond_6
    sget-wide v8, Lcom/android/server/VcnManagementService;->CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

    .line 287
    :goto_5
    iget-object v6, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 289
    iget-object v6, v6, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    .line 291
    new-instance v10, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;

    .line 293
    invoke-direct {v10, p0, v7, v5}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;Landroid/os/ParcelUuid;Lcom/android/server/vcn/Vcn;)V

    .line 296
    invoke-virtual {v6, v10, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 299
    goto/16 :goto_2

    .line 301
    :cond_7
    iget-object p1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 303
    invoke-static {p1, v3}, Lcom/android/server/VcnManagementService;->-$$Nest$mgetSubGroupToSubIdMappings(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    .line 306
    move-result-object p1

    .line 307
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 309
    iget-object v2, v0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 311
    invoke-static {v0, v2}, Lcom/android/server/VcnManagementService;->-$$Nest$mgetSubGroupToSubIdMappings(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Landroid/util/ArrayMap;

    .line 317
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    .line 320
    move-result p1

    .line 321
    if-nez p1, :cond_8

    .line 323
    iget-object p1, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 325
    invoke-static {p1}, Lcom/android/server/VcnManagementService;->-$$Nest$mgarbageCollectAndWriteVcnConfigsLocked(Lcom/android/server/VcnManagementService;)V

    .line 328
    move v4, v6

    .line 329
    :cond_8
    if-eqz v4, :cond_9

    .line 331
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;->this$0:Lcom/android/server/VcnManagementService;

    .line 333
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    .line 336
    :cond_9
    monitor-exit v1

    .line 337
    return-void

    .line 338
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    throw p0
.end method
