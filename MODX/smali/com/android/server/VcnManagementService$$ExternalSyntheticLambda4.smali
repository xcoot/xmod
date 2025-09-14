.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/VcnManagementService;

    .line 6
    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/VcnManagementService;

    .line 3
    iget-object p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    .line 5
    iget-object v1, v0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v2, "VcnNetworkProvider:"

    .line 12
    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 18
    const-string/jumbo v2, "mListeners:"

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 27
    iget-object v2, v1, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    .line 29
    check-cast v2, Landroid/util/ArraySet;

    .line 31
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v2

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;

    .line 47
    invoke-virtual {p0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 57
    const-string/jumbo v2, "mRequests:"

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 66
    iget-object v1, v1, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    .line 68
    check-cast v1, Landroid/util/ArraySet;

    .line 70
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v1

    .line 74
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/net/NetworkRequest;

    .line 86
    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 102
    iget-object v1, v0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    const-string v2, "TrackingNetworkCallback:"

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 115
    const-string/jumbo v2, "mCaps:"

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 124
    iget-object v2, v1, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    .line 126
    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, v1, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->mCaps:Ljava/util/Map;

    .line 129
    check-cast v1, Landroid/util/ArrayMap;

    .line 131
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 134
    move-result-object v1

    .line 135
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object v1

    .line 139
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_2

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Ljava/util/Map$Entry;

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const-string v5, ": "

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {p0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 182
    goto :goto_2

    .line 183
    :catchall_0
    move-exception p0

    .line 184
    goto/16 :goto_6

    .line 186
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 199
    iget-object v1, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 201
    monitor-enter v1

    .line 202
    :try_start_1
    iget-object v2, v0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 204
    invoke-virtual {v2, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 210
    const-string/jumbo v2, "mConfigs:"

    .line 213
    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 219
    iget-object v2, v0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 221
    check-cast v2, Landroid/util/ArrayMap;

    .line 223
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 226
    move-result-object v2

    .line 227
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 230
    move-result-object v2

    .line 231
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_3

    .line 237
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Ljava/util/Map$Entry;

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    const-string v5, ": "

    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Landroid/net/vcn/VcnConfig;

    .line 266
    invoke-virtual {v3}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {p0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 280
    goto :goto_3

    .line 281
    :catchall_1
    move-exception p0

    .line 282
    goto :goto_5

    .line 283
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 289
    const-string/jumbo v2, "mVcns:"

    .line 292
    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 298
    iget-object v0, v0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 300
    check-cast v0, Landroid/util/ArrayMap;

    .line 302
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 305
    move-result-object v0

    .line 306
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 309
    move-result-object v0

    .line 310
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_4

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Lcom/android/server/vcn/Vcn;

    .line 322
    invoke-virtual {v2, p0}, Lcom/android/server/vcn/Vcn;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 325
    goto :goto_4

    .line 326
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 332
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    const-string v0, "Local log:"

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 341
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 343
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 352
    return-void

    .line 353
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 354
    throw p0

    .line 355
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    throw p0
.end method
