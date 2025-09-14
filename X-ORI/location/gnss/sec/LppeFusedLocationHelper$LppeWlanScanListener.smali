.class public final Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsRetryWifiScan:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, ", description = "

    .line 12
    .line 13
    const-string v3, "LocationX"

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string/jumbo v0, "wlan scan failure. reason = "

    .line 18
    .line 19
    .line 20
    const-string v4, ". try to scan wlan again."

    .line 21
    .line 22
    invoke-static {p1, v0, v2, p2, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance p2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 35
    .line 36
    invoke-direct {p2}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 37
    .line 38
    .line 39
    const/16 v0, 0xf

    .line 40
    .line 41
    iput v0, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 42
    .line 43
    iput v1, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->ignoreLocationSettings:Z

    .line 47
    .line 48
    iget-object v1, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 49
    .line 50
    new-instance v2, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;

    .line 51
    .line 52
    invoke-direct {v2, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2, v2}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsRetryWifiScan:Z

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "2nd wlan scan failure. reason = "

    .line 64
    .line 65
    const-string v4, ". set wlan scan error."

    .line 66
    .line 67
    invoke-static {p1, v0, v2, p2, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateWlanError()V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method public final onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPeriodChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object p1, p1, v1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 25
    .line 26
    iput-boolean v1, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mIsWifiScanRequested:Z

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    const-string v4, "LocationX"

    .line 34
    .line 35
    if-ge v2, v3, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "WIFI Scan size"

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v0, "error cause3"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->handleUpdateWlanError()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/16 v5, 0x40

    .line 74
    .line 75
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    new-array v5, v2, [J

    .line 80
    .line 81
    new-array v6, v2, [I

    .line 82
    .line 83
    new-array v7, v2, [I

    .line 84
    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v9, "LPPeWiFiReceiver : the number of AP scanned : "

    .line 88
    .line 89
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v9, " used number : "

    .line 100
    .line 101
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object v4, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-wide/16 v8, 0x0

    .line 121
    .line 122
    if-eqz v4, :cond_2

    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-ne v10, v3, :cond_2

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_2

    .line 135
    .line 136
    iget-object v4, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 137
    .line 138
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eqz v4, :cond_2

    .line 143
    .line 144
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-static {v10}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->convertStringToHexLong(Ljava/lang/String;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v10

    .line 152
    aput-wide v10, v5, v1

    .line 153
    .line 154
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    aput v12, v6, v1

    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-static {v4}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    aput v4, v7, v1

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_2
    move-wide v10, v8

    .line 172
    :goto_0
    cmp-long v4, v10, v8

    .line 173
    .line 174
    if-eqz v4, :cond_3

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    move v3, v1

    .line 178
    :goto_1
    move v4, v1

    .line 179
    :goto_2
    sub-int v8, v2, v3

    .line 180
    .line 181
    if-ge v4, v8, :cond_5

    .line 182
    .line 183
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 188
    .line 189
    iget-object v9, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v9}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->convertStringToHexLong(Ljava/lang/String;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v12

    .line 195
    add-int v9, v4, v3

    .line 196
    .line 197
    aput-wide v12, v5, v9

    .line 198
    .line 199
    if-eqz v3, :cond_4

    .line 200
    .line 201
    iget-object v12, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v12}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->convertStringToHexLong(Ljava/lang/String;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v12

    .line 207
    cmp-long v12, v10, v12

    .line 208
    .line 209
    if-nez v12, :cond_4

    .line 210
    .line 211
    move v3, v1

    .line 212
    goto :goto_3

    .line 213
    :cond_4
    iget v12, v8, Landroid/net/wifi/ScanResult;->level:I

    .line 214
    .line 215
    aput v12, v6, v9

    .line 216
    .line 217
    iget v8, v8, Landroid/net/wifi/ScanResult;->frequency:I

    .line 218
    .line 219
    invoke-static {v8}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    aput v8, v7, v9

    .line 224
    .line 225
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_5
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 229
    .line 230
    invoke-virtual {p1, v5, v6, v7, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->injectWlanScanInfo([J[I[II)V

    .line 231
    .line 232
    .line 233
    :goto_4
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 234
    .line 235
    iget-object v0, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWlanTimeout:Ljava/lang/Runnable;

    .line 236
    .line 237
    if-eqz v0, :cond_6

    .line 238
    .line 239
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mHandler:Landroid/os/Handler;

    .line 240
    .line 241
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    .line 243
    .line 244
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    .line 245
    .line 246
    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->mWlanTimeout:Ljava/lang/Runnable;

    .line 248
    .line 249
    :cond_6
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    .line 1
    return-void
.end method
