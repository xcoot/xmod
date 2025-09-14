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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    .line 10
    .line 11
    new-instance v1, Landroid/net/NetworkCapabilities;

    .line 12
    .line 13
    invoke-direct {v1, p3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Landroid/net/TelephonyNetworkSpecifier;

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mSubId:I

    .line 33
    .line 34
    iget-object p3, p1, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 37
    .line 38
    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 43
    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    invoke-virtual {p3, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    if-eqz p3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    iput-object p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p3, :cond_0

    .line 59
    .line 60
    new-instance p2, Landroid/net/NetworkTemplate$Builder;

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-direct {p2, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p2, p3}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2, v1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2, v0}, Landroid/net/NetworkTemplate$Builder;->setDefaultNetworkStatus(I)Landroid/net/NetworkTemplate$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 87
    .line 88
    new-instance p2, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    const-class p2, Landroid/app/usage/NetworkStatsManager;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string p1, "Null subscriber Id for subId "

    .line 117
    .line 118
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string p2, "Can\'t get TelephonyManager for subId %d"

    .line 137
    .line 138
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    const-string p1, "Missing TelephonyManager"

    .line 149
    .line 150
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    const-string p1, "Can\'t get subId from mobile network %s (%s)"

    .line 157
    .line 158
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0
.end method


# virtual methods
.method public final getNetworkTotalBytes(JJ)J
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 16
    .line 17
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

    .line 23
    .line 24
    const-string p2, "Failed to get data usage: "

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "MultipathPolicyTracker"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const-wide/16 p0, -0x1

    .line 42
    .line 43
    return-wide p0
.end method

.method public final updateMultipathBudget()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, -0x1

    .line 19
    .line 20
    cmp-long v5, v1, v3

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v9, 0x1

    .line 24
    if-nez v5, :cond_7

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 27
    .line 28
    new-instance v2, Landroid/net/NetworkIdentity$Builder;

    .line 29
    .line 30
    invoke-direct {v2}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v6}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v5, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v5}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/16 v5, 0x12

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    xor-int/2addr v5, v9

    .line 50
    invoke-virtual {v2, v5}, Landroid/net/NetworkIdentity$Builder;->setRoaming(Z)Landroid/net/NetworkIdentity$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/16 v5, 0xb

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    xor-int/2addr v1, v9

    .line 61
    invoke-virtual {v2, v1}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mSubId:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 76
    .line 77
    iget-object v5, v2, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    array-length v10, v5

    .line 84
    move v13, v6

    .line 85
    const-wide v14, 0x7fffffffffffffffL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    :goto_0
    if-ge v13, v10, :cond_5

    .line 91
    .line 92
    aget-object v9, v5, v13

    .line 93
    .line 94
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    .line 95
    .line 96
    .line 97
    move-result v16

    .line 98
    if-eqz v16, :cond_4

    .line 99
    .line 100
    iget-object v6, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 101
    .line 102
    invoke-virtual {v6, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_4

    .line 107
    .line 108
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Landroid/util/Range;

    .line 117
    .line 118
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Ljava/time/ZonedDateTime;

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    .line 129
    .line 130
    .line 131
    move-result-wide v17

    .line 132
    iget-wide v11, v9, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 133
    .line 134
    cmp-long v6, v11, v17

    .line 135
    .line 136
    if-gez v6, :cond_0

    .line 137
    .line 138
    iget-wide v11, v9, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_0
    move-wide v11, v3

    .line 142
    :goto_1
    cmp-long v6, v11, v3

    .line 143
    .line 144
    if-nez v6, :cond_2

    .line 145
    .line 146
    iget-wide v11, v9, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 147
    .line 148
    cmp-long v6, v11, v17

    .line 149
    .line 150
    if-gez v6, :cond_1

    .line 151
    .line 152
    iget-wide v11, v9, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_1
    move-wide v11, v3

    .line 156
    :cond_2
    :goto_2
    cmp-long v6, v11, v3

    .line 157
    .line 158
    if-eqz v6, :cond_4

    .line 159
    .line 160
    if-eqz v6, :cond_4

    .line 161
    .line 162
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Landroid/util/Range;

    .line 171
    .line 172
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    check-cast v9, Ljava/time/ZonedDateTime;

    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-virtual {v9}, Ljava/time/Instant;->toEpochMilli()J

    .line 183
    .line 184
    .line 185
    move-result-wide v7

    .line 186
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Ljava/time/ZonedDateTime;

    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    move-object v9, v5

    .line 197
    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    .line 198
    .line 199
    .line 200
    move-result-wide v5

    .line 201
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    .line 202
    .line 203
    .line 204
    move-result-wide v7

    .line 205
    cmp-long v19, v7, v3

    .line 206
    .line 207
    if-nez v19, :cond_3

    .line 208
    .line 209
    const-wide/16 v11, 0x0

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_3
    sub-long/2addr v11, v7

    .line 213
    const-wide/16 v7, 0x0

    .line 214
    .line 215
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 216
    .line 217
    .line 218
    move-result-wide v11

    .line 219
    :goto_3
    iget-object v7, v2, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    .line 220
    .line 221
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    .line 222
    .line 223
    .line 224
    move-result-wide v7

    .line 225
    sub-long/2addr v5, v7

    .line 226
    const-wide/16 v7, 0x1

    .line 227
    .line 228
    sub-long/2addr v5, v7

    .line 229
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 230
    .line 231
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 232
    .line 233
    .line 234
    move-result-wide v3

    .line 235
    div-long/2addr v5, v3

    .line 236
    add-long/2addr v5, v7

    .line 237
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 238
    .line 239
    .line 240
    move-result-wide v3

    .line 241
    div-long/2addr v11, v3

    .line 242
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 243
    .line 244
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

    .line 249
    .line 250
    move-object v5, v9

    .line 251
    const-wide/16 v3, -0x1

    .line 252
    .line 253
    const/4 v6, 0x0

    .line 254
    const/4 v9, 0x1

    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_5
    const-wide v3, 0x7fffffffffffffffL

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    cmp-long v1, v14, v3

    .line 263
    .line 264
    if-nez v1, :cond_6

    .line 265
    .line 266
    const-wide/16 v1, -0x1

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_6
    const-wide/16 v1, 0x14

    .line 270
    .line 271
    div-long/2addr v14, v1

    .line 272
    move-wide v1, v14

    .line 273
    :goto_5
    const-wide/16 v3, -0x1

    .line 274
    .line 275
    :cond_7
    cmp-long v5, v1, v3

    .line 276
    .line 277
    if-nez v5, :cond_9

    .line 278
    .line 279
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 280
    .line 281
    iget-object v2, v1, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 282
    .line 283
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    const-string/jumbo v3, "network_default_daily_multipath_quota_bytes"

    .line 288
    .line 289
    .line 290
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    if-eqz v2, :cond_8

    .line 295
    .line 296
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 297
    .line 298
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

    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const v2, 0x10e00f2

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    int-to-long v1, v1

    .line 315
    :cond_9
    :goto_6
    iget-wide v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 316
    .line 317
    const-wide/16 v5, 0x0

    .line 318
    .line 319
    cmp-long v3, v3, v5

    .line 320
    .line 321
    if-lez v3, :cond_a

    .line 322
    .line 323
    iget-wide v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    .line 324
    .line 325
    cmp-long v3, v1, v3

    .line 326
    .line 327
    if-nez v3, :cond_a

    .line 328
    .line 329
    return-void

    .line 330
    :cond_a
    iput-wide v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    .line 331
    .line 332
    iget-object v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 333
    .line 334
    iget-object v3, v3, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-static {v3, v4}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 349
    .line 350
    invoke-virtual {v3, v4}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    .line 359
    .line 360
    .line 361
    move-result-wide v4

    .line 362
    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 367
    .line 368
    .line 369
    move-result-wide v6

    .line 370
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    .line 371
    .line 372
    .line 373
    move-result-wide v3

    .line 374
    const-wide/16 v5, -0x1

    .line 375
    .line 376
    cmp-long v5, v3, v5

    .line 377
    .line 378
    if-nez v5, :cond_b

    .line 379
    .line 380
    const-wide/16 v7, 0x0

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_b
    sub-long/2addr v1, v3

    .line 384
    const-wide/16 v3, 0x0

    .line 385
    .line 386
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 387
    .line 388
    .line 389
    move-result-wide v7

    .line 390
    :goto_7
    const-wide/32 v1, 0x200000

    .line 391
    .line 392
    .line 393
    cmp-long v1, v7, v1

    .line 394
    .line 395
    if-lez v1, :cond_d

    .line 396
    .line 397
    iget-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 398
    .line 399
    if-nez v1, :cond_c

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_c
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 403
    .line 404
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 405
    .line 406
    invoke-virtual {v1, v2}, Landroid/app/usage/NetworkStatsManager;->unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 407
    .line 408
    .line 409
    const/4 v1, 0x0

    .line 410
    iput-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 411
    .line 412
    :goto_8
    iget-object v9, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 413
    .line 414
    iget-object v10, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 415
    .line 416
    new-instance v13, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;

    .line 417
    .line 418
    invoke-direct {v13, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;)V

    .line 419
    .line 420
    .line 421
    iget-object v14, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 422
    .line 423
    move-wide v11, v7

    .line 424
    invoke-virtual/range {v9 .. v14}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 425
    .line 426
    .line 427
    const/4 v1, 0x1

    .line 428
    iput-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 429
    .line 430
    iput-wide v7, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 431
    .line 432
    goto :goto_b

    .line 433
    :cond_d
    iget-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 434
    .line 435
    if-nez v1, :cond_e

    .line 436
    .line 437
    :goto_9
    const-wide/16 v1, 0x0

    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_e
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 441
    .line 442
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Landroid/app/usage/NetworkStatsManager;->unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 445
    .line 446
    .line 447
    const/4 v1, 0x0

    .line 448
    iput-boolean v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallbackRegistered:Z

    .line 449
    .line 450
    goto :goto_9

    .line 451
    :goto_a
    iput-wide v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 452
    .line 453
    :goto_b
    return-void
.end method
