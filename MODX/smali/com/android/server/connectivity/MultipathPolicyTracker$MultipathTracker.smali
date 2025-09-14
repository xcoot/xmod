.class public final Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mMultipathBudget:J

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field public mQuota:J

.field public final mStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final mSubId:I

.field public final mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

.field public mUsageCallbackRegistered:Z

.field public final network:Landroid/net/Network;

.field public final subscriberId:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 9
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    .line 11
    new-instance v1, Landroid/net/NetworkCapabilities;

    .line 13
    invoke-direct {v1, p3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 16
    iput-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 18
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Landroid/net/TelephonyNetworkSpecifier;

    .line 24
    if-eqz v2, :cond_3

    .line 26
    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    .line 28
    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mSubId:I

    .line 34
    iget-object p3, p1, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 36
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 38
    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 44
    if-eqz p3, :cond_2

    .line 46
    invoke-virtual {p3, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 49
    move-result-object p3

    .line 50
    if-eqz p3, :cond_1

    .line 52
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 55
    move-result-object p3

    .line 56
    iput-object p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    .line 58
    if-eqz p3, :cond_0

    .line 60
    new-instance p2, Landroid/net/NetworkTemplate$Builder;

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-direct {p2, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 66
    invoke-static {p3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p2, p3}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2, v1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2, v0}, Landroid/net/NetworkTemplate$Builder;->setDefaultNetworkStatus(I)Landroid/net/NetworkTemplate$Builder;

    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 85
    move-result-object p2

    .line 86
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 88
    new-instance p2, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 90
    invoke-direct {p2, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;)V

    .line 93
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 95
    iget-object p1, p1, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 97
    const-class p2, Landroid/app/usage/NetworkStatsManager;

    .line 99
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    .line 105
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 107
    invoke-virtual {p1, v0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 113
    return-void

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 116
    const-string p1, "Null subscriber Id for subId "

    .line 118
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object p1

    .line 132
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 135
    move-result-object p1

    .line 136
    const-string p2, "Can\'t get TelephonyManager for subId %d"

    .line 138
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0

    .line 146
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 148
    const-string p1, "Missing TelephonyManager"

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p0

    .line 154
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 156
    const-string p1, "Can\'t get subId from mobile network %s (%s)"

    .line 158
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 161
    move-result-object p2

    .line 162
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0
.end method


# virtual methods
.method public final getNetworkTotalBytes(JJ)J
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 14
    move-result-wide p1

    .line 15
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 18
    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    add-long/2addr p1, p3

    .line 20
    return-wide p1

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    const-string p2, "Failed to get data usage: "

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    const-string p1, "MultipathPolicyTracker"

    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-wide/16 p0, -0x1

    .line 43
    return-wide p0
.end method

.method public final updateMultipathBudget()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 5
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 11
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, -0x1

    .line 20
    cmp-long v5, v1, v3

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v9, 0x1

    .line 24
    if-nez v5, :cond_7

    .line 26
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 28
    new-instance v2, Landroid/net/NetworkIdentity$Builder;

    .line 30
    invoke-direct {v2}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 33
    invoke-virtual {v2, v6}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    .line 36
    move-result-object v2

    .line 37
    iget-object v5, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v5}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    .line 42
    move-result-object v2

    .line 43
    const/16 v5, 0x12

    .line 45
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 48
    move-result v5

    .line 49
    xor-int/2addr v5, v9

    .line 50
    invoke-virtual {v2, v5}, Landroid/net/NetworkIdentity$Builder;->setRoaming(Z)Landroid/net/NetworkIdentity$Builder;

    .line 53
    move-result-object v2

    .line 54
    const/16 v5, 0xb

    .line 56
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 59
    move-result v1

    .line 60
    xor-int/2addr v1, v9

    .line 61
    invoke-virtual {v2, v1}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    .line 64
    move-result-object v1

    .line 65
    iget v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mSubId:I

    .line 67
    invoke-virtual {v1, v2}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    .line 74
    move-result-object v1

    .line 75
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 77
    iget-object v5, v2, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    .line 79
    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    .line 82
    move-result-object v5

    .line 83
    array-length v10, v5

    .line 84
    move v13, v6

    .line 85
    const-wide v14, 0x7fffffffffffffffL

    .line 90
    :goto_0
    if-ge v13, v10, :cond_5

    .line 92
    aget-object v9, v5, v13

    .line 94
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    .line 97
    move-result v16

    .line 98
    if-eqz v16, :cond_4

    .line 100
    iget-object v6, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 102
    invoke-virtual {v6, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_4

    .line 108
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    .line 111
    move-result-object v6

    .line 112
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Landroid/util/Range;

    .line 118
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Ljava/time/ZonedDateTime;

    .line 124
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    .line 131
    move-result-wide v17

    .line 132
    iget-wide v11, v9, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 134
    cmp-long v6, v11, v17

    .line 136
    if-gez v6, :cond_0

    .line 138
    iget-wide v11, v9, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 140
    goto :goto_1

    .line 141
    :cond_0
    move-wide v11, v3

    .line 142
    :goto_1
    cmp-long v6, v11, v3

    .line 144
    if-nez v6, :cond_2

    .line 146
    iget-wide v11, v9, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 148
    cmp-long v6, v11, v17

    .line 150
    if-gez v6, :cond_1

    .line 152
    iget-wide v11, v9, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 154
    goto :goto_2

    .line 155
    :cond_1
    move-wide v11, v3

    .line 156
    :cond_2
    :goto_2
    cmp-long v6, v11, v3

    .line 158
    if-eqz v6, :cond_4

    .line 160
    if-eqz v6, :cond_4

    .line 162
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    .line 165
    move-result-object v6

    .line 166
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Landroid/util/Range;

    .line 172
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 175
    move-result-object v9

    .line 176
    check-cast v9, Ljava/time/ZonedDateTime;

    .line 178
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 181
    move-result-object v9

    .line 182
    invoke-virtual {v9}, Ljava/time/Instant;->toEpochMilli()J

    .line 185
    move-result-wide v7

    .line 186
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Ljava/time/ZonedDateTime;

    .line 192
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 195
    move-result-object v6

    .line 196
    move-object v9, v5

    .line 197
    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    .line 200
    move-result-wide v5

    .line 201
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    .line 204
    move-result-wide v7

    .line 205
    cmp-long v19, v7, v3

    .line 207
    if-nez v19, :cond_3

    .line 209
    const-wide/16 v11, 0x0

    .line 211
    goto :goto_3

    .line 212
    :cond_3
    sub-long/2addr v11, v7

    .line 213
    const-wide/16 v7, 0x0

    .line 215
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 218
    move-result-wide v11

    .line 219
    :goto_3
    iget-object v7, v2, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    .line 221
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    .line 224
    move-result-wide v7

    .line 225
    sub-long/2addr v5, v7

    .line 226
    const-wide/16 v7, 0x1

    .line 228
    sub-long/2addr v5, v7

    .line 229
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 231
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 234
    move-result-wide v3

    .line 235
    div-long/2addr v5, v3

    .line 236
    add-long/2addr v5, v7

    .line 237
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 240
    move-result-wide v3

    .line 241
    div-long/2addr v11, v3

    .line 242
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 245
    move-result-wide v14

    .line 246
    goto :goto_4

    .line 247
    :cond_4
    move-object v9, v5

    .line 248
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 250
    move-object v5, v9

    .line 251
    const-wide/16 v3, -0x1

    .line 253
    const/4 v6, 0x0

    .line 254
    const/4 v9, 0x1

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_5
    const-wide v3, 0x7fffffffffffffffL

    .line 262
    cmp-long v1, v14, v3

    .line 264
    if-nez v1, :cond_6

    .line 266
    const-wide/16 v1, -0x1

    .line 268
    goto :goto_5

    .line 269
    :cond_6
    const-wide/16 v1, 0x14

    .line 271
    div-long/2addr v14, v1

    .line 272
    move-wide v1, v14

    .line 273
    :goto_5
    const-wide/16 v3, -0x1

    .line 275
    :cond_7
    cmp-long v5, v1, v3

    .line 277
    if-nez v5, :cond_9

    .line 279
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 281
    iget-object v2, v1, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 286
    move-result-object v2

    .line 287
    const-string/jumbo v3, "network_default_daily_multipath_quota_bytes"

    .line 290
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    move-result-object v2

    .line 294
    if-eqz v2, :cond_8

    .line 296
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 299
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_6

    .line 301
    :catch_0
    :cond_8
    iget-object v1, v1, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 306
    move-result-object v1

    .line 307
    const v2, 0x10e00f2

    .line 310
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 313
    move-result v1

    .line 314
    int-to-long v1, v1

    .line 315
    :cond_9
    :goto_6
    iget-wide v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 317
    const-wide/16 v5, 0x0

    .line 319
    cmp-long v3, v3, v5

    .line 321
    if-lez v3, :cond_a

    .line 323
    iget-wide v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    .line 325
    cmp-long v3, v1, v3

    .line 327
    if-nez v3, :cond_a

    .line 329
    return-void

    .line 330
    :cond_a
    iput-wide v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    .line 332
    iget-object v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 334
    iget-object v3, v3, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    .line 336
    invoke-virtual {v3}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    .line 339
    move-result-object v3

    .line 340
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 343
    move-result-object v4

    .line 344
    invoke-static {v3, v4}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 347
    move-result-object v3

    .line 348
    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 350
    invoke-virtual {v3, v4}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    .line 361
    move-result-wide v4

    .line 362
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 369
    move-result-wide v6

    .line 370
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    .line 373
    move-result-wide v3

    .line 374
    const-wide/16 v5, -0x1

    .line 376
    cmp-long v5, v3, v5

    .line 378
    if-nez v5, :cond_b

    .line 380
    const-wide/16 v7, 0x0

    .line 382
    goto :goto_7

    .line 383
    :cond_b
    sub-long/2addr v1, v3

    .line 384
    const-wide/16 v3, 0x0

    .line 386
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 389
    move-result-wide v7

    .line 390
    :goto_7
    const-wide/32 v1, 0x200000

    .line 393
    cmp-long v1, v7, v1

    .line 395
    if-lez v1, :cond_d

    .line 397
    iget-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 399
    if-nez v1, :cond_c

    .line 401
    goto :goto_8

    .line 402
    :cond_c
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 404
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 406
    invoke-virtual {v1, v2}, Landroid/app/usage/NetworkStatsManager;->unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 409
    const/4 v1, 0x0

    .line 410
    iput-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 412
    :goto_8
    iget-object v9, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 414
    iget-object v10, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 416
    new-instance v13, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;

    .line 418
    invoke-direct {v13, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;)V

    .line 421
    iget-object v14, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 423
    move-wide v11, v7

    .line 424
    invoke-virtual/range {v9 .. v14}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 427
    const/4 v1, 0x1

    .line 428
    iput-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 430
    iput-wide v7, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 432
    goto :goto_b

    .line 433
    :cond_d
    iget-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 435
    if-nez v1, :cond_e

    .line 437
    :goto_9
    const-wide/16 v1, 0x0

    .line 439
    goto :goto_a

    .line 440
    :cond_e
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 442
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 444
    invoke-virtual {v1, v2}, Landroid/app/usage/NetworkStatsManager;->unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 447
    const/4 v1, 0x0

    .line 448
    iput-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 450
    goto :goto_9

    .line 451
    :goto_a
    iput-wide v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 453
    :goto_b
    return-void
.end method
