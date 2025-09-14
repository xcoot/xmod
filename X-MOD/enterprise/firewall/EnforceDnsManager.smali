.class public final Lcom/android/server/enterprise/firewall/EnforceDnsManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

.field public mEnforceDnsUid:Z

.field public final mLinkPropertiesMap:Ljava/util/Map;

.field public mMaxSamples:I

.field public mMinSamples:I

.field public mSampleValidity:I

.field public mSuccessThreshold:I

.field public final mTransportsMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    .line 7
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    .line 29
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 31
    return-void
.end method


# virtual methods
.method public final flushVmDnsCache()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.net.action.CLEAR_DNS_CACHE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/high16 v1, 0x20000000

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    const/high16 v1, 0x4000000

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContext:Landroid/content/Context;

    .line 24
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 26
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    throw p0
.end method

.method public final sendDnsConfigurationForNetwork(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    .line 5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    check-cast v1, Ljava/util/HashMap;

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/net/LinkProperties;

    .line 17
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    .line 19
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v3

    .line 23
    check-cast v2, Ljava/util/HashMap;

    .line 25
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, [I

    .line 31
    if-eqz v1, :cond_9

    .line 33
    if-nez v2, :cond_0

    .line 35
    goto/16 :goto_2

    .line 37
    :cond_0
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 39
    const-string/jumbo v4, "dns_resolver_sample_validity_seconds"

    .line 42
    const/16 v5, 0x708

    .line 44
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 47
    move-result v3

    .line 48
    iput v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    .line 50
    const-string v4, "EnforceDnsManager"

    .line 52
    if-ltz v3, :cond_1

    .line 54
    const v6, 0xffff

    .line 57
    if-le v3, v6, :cond_2

    .line 59
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    const-string v6, "Invalid sampleValidity="

    .line 63
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget v6, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v6, ", using default=1800"

    .line 73
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    .line 85
    :cond_2
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 87
    const-string/jumbo v5, "dns_resolver_success_threshold_percent"

    .line 90
    const/16 v6, 0x19

    .line 92
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 95
    move-result v3

    .line 96
    iput v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    .line 98
    if-ltz v3, :cond_3

    .line 100
    const/16 v5, 0x64

    .line 102
    if-le v3, v5, :cond_4

    .line 104
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    const-string v5, "Invalid successThreshold="

    .line 108
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    .line 113
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v5, ", using default=25"

    .line 118
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 125
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput v6, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    .line 130
    :cond_4
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 132
    const-string/jumbo v5, "dns_resolver_min_samples"

    .line 135
    const/16 v6, 0x8

    .line 137
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 140
    move-result v3

    .line 141
    iput v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    .line 143
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 145
    const-string/jumbo v5, "dns_resolver_max_samples"

    .line 148
    const/16 v7, 0x40

    .line 150
    invoke-static {v3, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 153
    move-result v3

    .line 154
    iput v3, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    .line 156
    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    .line 158
    if-ltz v5, :cond_5

    .line 160
    if-gt v5, v3, :cond_5

    .line 162
    if-le v3, v7, :cond_6

    .line 164
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    const-string v5, "Invalid sample count (min, max)=("

    .line 168
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    .line 173
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v5, ", "

    .line 178
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    .line 183
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    const-string v5, "), using default=(8, 64)"

    .line 188
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v3

    .line 195
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput v6, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    .line 200
    iput v7, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    .line 202
    :cond_6
    new-instance v3, Landroid/net/ResolverParamsParcel;

    .line 204
    invoke-direct {v3}, Landroid/net/ResolverParamsParcel;-><init>()V

    .line 207
    move/from16 v5, p1

    .line 209
    iput v5, v3, Landroid/net/ResolverParamsParcel;->netId:I

    .line 211
    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    .line 213
    iput v5, v3, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 215
    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    .line 217
    iput v5, v3, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 219
    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    .line 221
    iput v5, v3, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 223
    iget v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    .line 225
    iput v5, v3, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 227
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 230
    move-result-object v5

    .line 231
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 234
    move-result v6

    .line 235
    new-array v6, v6, [Ljava/lang/String;

    .line 237
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 240
    move-result-object v5

    .line 241
    const/4 v7, 0x0

    .line 242
    move v8, v7

    .line 243
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    move-result v9

    .line 247
    if-eqz v9, :cond_7

    .line 249
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    move-result-object v9

    .line 253
    check-cast v9, Ljava/net/InetAddress;

    .line 255
    add-int/lit8 v10, v8, 0x1

    .line 257
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 260
    move-result-object v9

    .line 261
    aput-object v9, v6, v8

    .line 263
    move v8, v10

    .line 264
    goto :goto_0

    .line 265
    :cond_7
    iput-object v6, v3, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 267
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_8

    .line 277
    new-array v1, v7, [Ljava/lang/String;

    .line 279
    goto :goto_1

    .line 280
    :cond_8
    const-string v5, " "

    .line 282
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 286
    :goto_1
    iput-object v1, v3, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 288
    const-string v1, ""

    .line 290
    iput-object v1, v3, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    .line 292
    new-array v1, v7, [Ljava/lang/String;

    .line 294
    iput-object v1, v3, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 296
    new-instance v1, Landroid/net/ResolverOptionsParcel;

    .line 298
    invoke-direct {v1}, Landroid/net/ResolverOptionsParcel;-><init>()V

    .line 301
    iput-object v1, v3, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    .line 303
    iget-boolean v5, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    .line 305
    iput-boolean v5, v1, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    .line 307
    iput-object v2, v3, Landroid/net/ResolverParamsParcel;->transportTypes:[I

    .line 309
    iget v1, v3, Landroid/net/ResolverParamsParcel;->netId:I

    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    move-result-object v5

    .line 315
    iget-object v1, v3, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 317
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    move-result-object v6

    .line 321
    iget-object v1, v3, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 323
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    move-result-object v7

    .line 327
    iget v1, v3, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    move-result-object v8

    .line 333
    iget v1, v3, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    move-result-object v9

    .line 339
    iget v1, v3, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    move-result-object v10

    .line 345
    iget v1, v3, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 347
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    move-result-object v11

    .line 351
    iget v1, v3, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    .line 353
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    move-result-object v12

    .line 357
    iget v1, v3, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    move-result-object v13

    .line 363
    iget-object v14, v3, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    .line 365
    iget-object v1, v3, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 367
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 370
    move-result-object v15

    .line 371
    filled-new-array/range {v5 .. v15}, [Ljava/lang/Object;

    .line 374
    move-result-object v1

    .line 375
    const-string/jumbo v2, "sendDnsConfigurationForNetwork(%d, %s, %s, %d, %d, %d, %d, %d, %d, %s, %s)"

    .line 378
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    move-result-object v1

    .line 382
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 387
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    const-string v1, "DnsResolverAdapter"

    .line 392
    const-string/jumbo v2, "setResolverConfiguration - entered"

    .line 395
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v2, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;

    .line 400
    invoke-direct {v2, v3}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/net/ResolverParamsParcel;)V

    .line 403
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    .line 406
    const-string/jumbo v0, "setResolverConfiguration - exited"

    .line 409
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_9
    :goto_2
    return-void
.end method
