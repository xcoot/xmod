.class public abstract Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final PRIORITY_FALLBACK:I = 0x7fffffff

.field static final WIFI_ENTRY_RSSI_THRESHOLD_DEFAULT:I = -0x46

.field static final WIFI_EXIT_RSSI_THRESHOLD_DEFAULT:I = -0x4a


# direct methods
.method public static checkMatchesCellPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .locals 5

    .line 1
    iget-object p2, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string p0, "Got null NetworkSpecifier"

    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object p0, p0, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getOperatorPlmnIds()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getOperatorPlmnIds()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    return v0

    .line 68
    :cond_2
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getSimSpecificCarrierIds()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSpecificCarrierId()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getSimSpecificCarrierIds()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    return v0

    .line 97
    :cond_3
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getRoaming()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    const/16 v1, 0x12

    .line 102
    .line 103
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const/4 v2, 0x1

    .line 108
    xor-int/2addr v1, v2

    .line 109
    if-ne p0, v2, :cond_4

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    :cond_4
    const/4 v3, 0x2

    .line 114
    if-ne p0, v3, :cond_6

    .line 115
    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    :cond_5
    return v0

    .line 119
    :cond_6
    invoke-virtual {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getOpportunistic()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-nez p4, :cond_8

    .line 128
    .line 129
    const-string p1, "Got null snapshot"

    .line 130
    .line 131
    invoke-static {p1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    move p1, v0

    .line 135
    goto :goto_1

    .line 136
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    iget-object v4, p4, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    .line 156
    .line 157
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_a

    .line 162
    .line 163
    iget-object v4, p4, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    goto :goto_0

    .line 176
    :cond_a
    move v1, v0

    .line 177
    :goto_0
    if-eqz v1, :cond_9

    .line 178
    .line 179
    move p1, v2

    .line 180
    :goto_1
    if-ne p0, v2, :cond_c

    .line 181
    .line 182
    if-nez p1, :cond_b

    .line 183
    .line 184
    return v0

    .line 185
    :cond_b
    invoke-virtual {p4, p3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p0, Landroid/util/ArraySet;

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-eqz p0, :cond_d

    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    if-nez p0, :cond_d

    .line 222
    .line 223
    return v0

    .line 224
    :cond_c
    if-ne p0, v3, :cond_d

    .line 225
    .line 226
    if-nez p1, :cond_d

    .line 227
    .line 228
    return v0

    .line 229
    :cond_d
    return v2
.end method

.method public static checkMatchesPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;ZLcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMetered()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0xb

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    xor-int/2addr v2, v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 v5, 0x2

    .line 21
    if-ne v1, v5, :cond_2

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    :cond_1
    return v4

    .line 26
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinExitUpstreamBandwidthKbps()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-lt v1, v2, :cond_b

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinEntryUpstreamBandwidthKbps()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ge v1, v2, :cond_3

    .line 45
    .line 46
    if-nez p5, :cond_3

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinExitDownstreamBandwidthKbps()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-lt v1, v2, :cond_b

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMinEntryDownstreamBandwidthKbps()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v1, v2, :cond_4

    .line 69
    .line 70
    if-nez p5, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getCapabilitiesMatchCriteria()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-ne v2, v3, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-nez v7, :cond_6

    .line 124
    .line 125
    return v4

    .line 126
    :cond_6
    if-ne v2, v5, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    return v4

    .line 135
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/vcn/VcnContext;->mIsInTestMode:Z

    .line 136
    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    const/4 v1, 0x7

    .line 140
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    return v3

    .line 147
    :cond_8
    instance-of v0, p1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    .line 148
    .line 149
    if-eqz v0, :cond_9

    .line 150
    .line 151
    check-cast p1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    .line 152
    .line 153
    invoke-static {p1, p2, p5, p6}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->checkMatchesWifiPriorityRule(Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;ZLcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    return p0

    .line 158
    :cond_9
    instance-of p5, p1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    .line 159
    .line 160
    if-eqz p5, :cond_a

    .line 161
    .line 162
    check-cast p1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    .line 163
    .line 164
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->checkMatchesCellPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    return p0

    .line 169
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    const-string p1, "Got unknown VcnUnderlyingNetworkTemplate class: "

    .line 178
    .line 179
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_b
    :goto_0
    return v4
.end method

.method public static checkMatchesWifiPriorityRule(Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;ZLcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return v3

    .line 12
    :cond_0
    iget-object p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/16 v2, -0x4a

    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    iget-object v4, p3, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 25
    .line 26
    const-string/jumbo v5, "vcn_network_selection_wifi_exit_rssi_threshold"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v5, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :cond_1
    if-lt p2, v2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/16 p2, -0x46

    .line 41
    .line 42
    if-eqz p3, :cond_3

    .line 43
    .line 44
    iget-object p3, p3, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 45
    .line 46
    const-string/jumbo v2, "vcn_network_selection_wifi_entry_rssi_threshold"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v2, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    :cond_3
    if-lt p1, p2, :cond_5

    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->getSsids()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->getSsids()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    return v3

    .line 80
    :cond_4
    return v1

    .line 81
    :cond_5
    return v3
.end method

.method public static logWtf(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "NetworkPriorityClassifier"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "NetworkPriorityClassifier WTF: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
