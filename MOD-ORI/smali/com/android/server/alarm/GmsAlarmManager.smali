.class public final Lcom/android/server/alarm/GmsAlarmManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG_SCPM:Z

.field public static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public static final sHandlerThread:Landroid/os/HandlerThread;

.field public static final sb:Ljava/lang/StringBuilder;


# instance fields
.field public final SCPM_URI_GNET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field public avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

.field public cm:Landroid/net/ConnectivityManager;

.field public isCharging:Z

.field public final isChinaMode:Z

.field public isGmsNetWorkLimt:Z

.field public final isHongKongMode:Z

.field public isSetupWizardCompleteOrBootComplete:Z

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

.field public mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public final mBigdataEnable:Z

.field public final mCheckinServerUrl:Ljava/util/ArrayList;

.field public final mConfigupdaterUid:I

.field public final mContext:Landroid/content/Context;

.field public final mCurrentIpList:Ljava/util/ArrayList;

.field public final mGmsPkgAppid:I

.field public final mGmsPkgUid:I

.field public final mGmsUidOfMultiUser:Ljava/util/ArrayList;

.field public mGoogleNetWork:Z

.field public mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

.field public mInsertLogPendingIntent:Landroid/app/PendingIntent;

.field public final mIntentReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mNetworkInfo:Landroid/net/NetworkInfo;

.field public mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mNetworkService:Landroid/os/INetworkManagementService;

.field public mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPolicyControlSwitch:I

.field public mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mScreenOffChange:Z

.field public mScreenOn:Z

.field public mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mTimeoutcount:I

.field public mTimeoutcountDef:I

.field public mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

.field public mUserEnable:Z

.field public final mVendingUid:I

.field public mWaitCheckNetWork:Z

.field public noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

.field public vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;


# direct methods
.method public static -$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "connectivity"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v1, "networkInfo:"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "GmsAlarmManager"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    :goto_0
    return p0
.end method

.method public static -$$Nest$mcheckGoogleNetwork(Lcom/android/server/alarm/GmsAlarmManager;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v2, "GmsAlarmManager"

    .line 7
    .line 8
    const-string/jumbo v0, "checkGoogleNetwork: https://www.google.com/"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v3, 0x1

    .line 21
    const-string/jumbo v4, "https://www.google.com/"

    .line 22
    .line 23
    .line 24
    const v8, 0x9d0b

    .line 25
    .line 26
    .line 27
    const-string v9, "HEAD"

    .line 28
    .line 29
    const/16 v10, 0xbb8

    .line 30
    .line 31
    const/4 v12, -0x1

    .line 32
    const/4 v13, 0x0

    .line 33
    if-nez v0, :cond_d

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_d

    .line 40
    .line 41
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 42
    .line 43
    const-string/jumbo v0, "checkGoogleNetworkByAll addr: https://www.google.com/"

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v14, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 55
    .line 56
    if-nez v14, :cond_0

    .line 57
    .line 58
    iget-object v14, v1, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string/jumbo v15, "connectivity"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    check-cast v14, Landroid/net/ConnectivityManager;

    .line 68
    .line 69
    iput-object v14, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 70
    .line 71
    :cond_0
    iget-object v14, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 72
    .line 73
    if-eqz v14, :cond_a

    .line 74
    .line 75
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    if-eqz v14, :cond_a

    .line 80
    .line 81
    move/from16 v16, v12

    .line 82
    .line 83
    move v15, v13

    .line 84
    :goto_0
    array-length v11, v14

    .line 85
    if-ge v15, v11, :cond_3

    .line 86
    .line 87
    iget-object v11, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 88
    .line 89
    aget-object v5, v14, v15

    .line 90
    .line 91
    invoke-virtual {v11, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_1

    .line 96
    .line 97
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    .line 98
    .line 99
    .line 100
    move-result v16

    .line 101
    :cond_1
    move/from16 v5, v16

    .line 102
    .line 103
    const/16 v6, 0x11

    .line 104
    .line 105
    if-ne v5, v6, :cond_2

    .line 106
    .line 107
    aget-object v6, v14, v15

    .line 108
    .line 109
    invoke-virtual {v0, v13, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    aget-object v6, v14, v15

    .line 114
    .line 115
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :goto_1
    add-int/lit8 v15, v15, 0x1

    .line 119
    .line 120
    move/from16 v16, v5

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    move v6, v12

    .line 128
    const/4 v11, 0x0

    .line 129
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/net/Network;

    .line 140
    .line 141
    iget-object v14, v1, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 142
    .line 143
    invoke-virtual {v14, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    if-eqz v14, :cond_5

    .line 148
    .line 149
    new-instance v15, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string/jumbo v7, "checkGoogleNetworkByAll networkInfo: "

    .line 152
    .line 153
    .line 154
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_5
    :try_start_0
    new-instance v7, Ljava/net/URL;

    .line 168
    .line 169
    invoke-direct {v7, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v7}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    move-object v14, v0

    .line 177
    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    .line 179
    if-nez v14, :cond_6

    .line 180
    .line 181
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .line 187
    move-object v11, v0

    .line 188
    goto :goto_3

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    move-object v11, v14

    .line 191
    goto :goto_7

    .line 192
    :catch_0
    move-exception v0

    .line 193
    move-object v11, v14

    .line 194
    goto :goto_5

    .line 195
    :catch_1
    move-exception v0

    .line 196
    move-object v11, v14

    .line 197
    goto :goto_6

    .line 198
    :cond_6
    move-object v11, v14

    .line 199
    :goto_3
    :try_start_2
    invoke-virtual {v11, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v11, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->connect()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-eq v6, v12, :cond_7

    .line 219
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string/jumbo v7, "checkGoogleNetworkByAll responseCode: "

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-static {v8, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 242
    .line 243
    .line 244
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    .line 246
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_d

    .line 250
    .line 251
    :catchall_1
    move-exception v0

    .line 252
    goto :goto_7

    .line 253
    :catch_2
    move-exception v0

    .line 254
    goto :goto_5

    .line 255
    :catch_3
    move-exception v0

    .line 256
    goto :goto_6

    .line 257
    :cond_7
    :goto_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    .line 264
    .line 265
    if-eqz v11, :cond_4

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    .line 270
    .line 271
    if-eqz v11, :cond_4

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :goto_7
    if-eqz v11, :cond_8

    .line 275
    .line 276
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 277
    .line 278
    .line 279
    :cond_8
    throw v0

    .line 280
    :cond_9
    move v12, v6

    .line 281
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_c

    .line 286
    .line 287
    iget v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 288
    .line 289
    add-int/2addr v0, v3

    .line 290
    iput v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 291
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string/jumbo v4, "checkGoogleNetworkByAll timeout count: "

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget v4, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 301
    .line 302
    invoke-static {v0, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 306
    .line 307
    const/4 v2, 0x5

    .line 308
    if-ge v0, v2, :cond_b

    .line 309
    .line 310
    iget-object v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 311
    .line 312
    const-wide/32 v1, 0x1d4c0

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 316
    .line 317
    .line 318
    goto/16 :goto_c

    .line 319
    .line 320
    :cond_b
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 321
    .line 322
    goto/16 :goto_c

    .line 323
    .line 324
    :cond_c
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 325
    .line 326
    goto/16 :goto_c

    .line 327
    .line 328
    :cond_d
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 329
    .line 330
    const-string/jumbo v5, "checkGoogleNetworkByDefault timeout count default: "

    .line 331
    .line 332
    .line 333
    const-string/jumbo v0, "checkGoogleNetworkByDefault: "

    .line 334
    .line 335
    .line 336
    const-string/jumbo v6, "checkGoogleNetworkByDefault addr: https://www.google.com/"

    .line 337
    .line 338
    .line 339
    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    :try_start_4
    new-instance v6, Ljava/net/URL;

    .line 343
    .line 344
    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 352
    .line 353
    :try_start_5
    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    invoke-static {v8, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 388
    .line 389
    .line 390
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 391
    .line 392
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 393
    .line 394
    .line 395
    move v12, v6

    .line 396
    goto :goto_c

    .line 397
    :catchall_2
    move-exception v0

    .line 398
    move-object v11, v4

    .line 399
    goto :goto_e

    .line 400
    :catch_4
    move-exception v0

    .line 401
    move-object v11, v4

    .line 402
    goto :goto_8

    .line 403
    :catch_5
    move-exception v0

    .line 404
    move-object v11, v4

    .line 405
    goto :goto_a

    .line 406
    :catchall_3
    move-exception v0

    .line 407
    const/4 v11, 0x0

    .line 408
    goto :goto_e

    .line 409
    :catch_6
    move-exception v0

    .line 410
    const/4 v11, 0x0

    .line 411
    goto :goto_8

    .line 412
    :catch_7
    move-exception v0

    .line 413
    const/4 v11, 0x0

    .line 414
    goto :goto_a

    .line 415
    :goto_8
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 416
    .line 417
    .line 418
    if-eqz v11, :cond_10

    .line 419
    .line 420
    :goto_9
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 421
    .line 422
    .line 423
    goto :goto_c

    .line 424
    :catchall_4
    move-exception v0

    .line 425
    goto :goto_e

    .line 426
    :goto_a
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 427
    .line 428
    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_f

    .line 434
    .line 435
    iget v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 436
    .line 437
    add-int/2addr v0, v3

    .line 438
    iput v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 439
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget v4, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 446
    .line 447
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    iget v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 458
    .line 459
    const/4 v2, 0x5

    .line 460
    if-ge v0, v2, :cond_e

    .line 461
    .line 462
    iget-object v0, v1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 463
    .line 464
    const-wide/32 v1, 0x1d4c0

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 468
    .line 469
    .line 470
    goto :goto_b

    .line 471
    :cond_e
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_f
    iput v13, v1, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 475
    .line 476
    :goto_b
    if-eqz v11, :cond_10

    .line 477
    .line 478
    goto :goto_9

    .line 479
    :cond_10
    :goto_c
    move v6, v12

    .line 480
    :goto_d
    return v6

    .line 481
    :goto_e
    if-eqz v11, :cond_11

    .line 482
    .line 483
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 484
    .line 485
    .line 486
    :cond_11
    throw v0
.end method

.method public static -$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "com.google.android.gms"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "com.google.android.intent.action.GCM_RECONNECT"

    .line 7
    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v4, v4, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 42
    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v6, v5, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 47
    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    iget-object v6, v5, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    iget-object v6, v5, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 69
    .line 70
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_0

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    .line 85
    .line 86
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;

    .line 87
    .line 88
    invoke-direct {v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/alarm/LazyAlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    monitor-exit v3

    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_3

    .line 98
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const/4 v5, 0x0

    .line 100
    :goto_1
    if-nez v5, :cond_3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    const-wide/16 v2, 0x2710

    .line 108
    .line 109
    add-long/2addr v0, v2

    .line 110
    const/4 v2, 0x4

    .line 111
    invoke-virtual {v5, v2, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 117
    .line 118
    monitor-enter v0

    .line 119
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    .line 120
    .line 121
    .line 122
    monitor-exit v0

    .line 123
    :goto_2
    return-void

    .line 124
    :catchall_1
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    throw p0

    .line 127
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    throw p0
.end method

.method public static -$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "alarm"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/AlarmManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    const-wide/16 v3, 0x2710

    .line 30
    .line 31
    add-long/2addr v1, v3

    .line 32
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public static -$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "alarm"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/AlarmManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    const-wide/32 v3, 0x5265c00

    .line 30
    .line 31
    .line 32
    add-long/2addr v1, v3

    .line 33
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static -$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setGMSLocationProviderChangeReceiverState:"

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v1, Landroid/content/ComponentName;

    .line 16
    .line 17
    const-string/jumbo v2, "com.google.android.gms"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "com.google.android.location.network.LocationProviderChangeReceiver"

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, v1, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 28
    .line 29
    .line 30
    const-string p0, "GmsAlarmManager"

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public static -$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 4

    .line 1
    const-string v0, "GmsAlarmManager"

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 8
    .line 9
    and-int/lit8 v3, v3, 0x2

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 26
    .line 27
    invoke-interface {v3, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 31
    .line 32
    invoke-interface {v3, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 36
    .line 37
    invoke-interface {v2, v1, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 41
    .line 42
    invoke-interface {v2, v1, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "IllegalStateException:"

    .line 56
    .line 57
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    const-string p1, "RemoteException:"

    .line 72
    .line 73
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "content://com.samsung.android.sm/settings"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 9
    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    .line 11
    .line 12
    const-string v1, "GmsAlarmManager"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 19
    .line 20
    sput-boolean v2, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 37
    .line 38
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 39
    .line 40
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 41
    .line 42
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 43
    .line 44
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 45
    .line 46
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBigdataEnable:Z

    .line 57
    .line 58
    const/4 v0, 0x7

    .line 59
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 60
    .line 61
    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/gmsnet"

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    .line 69
    .line 70
    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 78
    .line 79
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-direct {v0, p0, v2}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntentReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 86
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    const-string/jumbo v0, "ro.csc.country_code"

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v3, "CHINA"

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    iput-boolean v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 110
    .line 111
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v2, "HONG KONG"

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 133
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    .line 140
    .line 141
    :try_start_0
    const-string/jumbo v0, "com.google.android.gms"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 149
    .line 150
    const-string/jumbo v2, "com.android.vending"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    .line 158
    .line 159
    const-string/jumbo v2, "com.google.android.configupdater"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 167
    .line 168
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :catch_0
    move-exception p0

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v0, "NameNotFoundException"

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    const-string p1, "GmsAlarmManager"

    .line 191
    .line 192
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    :goto_0
    return-void
.end method

.method public static getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {v3, p0}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method


# virtual methods
.method public final doDump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "  <GmsAlarmManager>"

    .line 2
    .line 3
    const-string/jumbo v1, "isChinaMode:"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 11
    .line 12
    const-string/jumbo v2, "isHongKongMode:"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-boolean v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 20
    .line 21
    const-string/jumbo v3, "mGmsPkgUid:"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 29
    .line 30
    invoke-static {v0, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    :cond_0
    const/4 v0, -0x1

    .line 38
    if-eq v3, v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v1, "mVendingUid:"

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    .line 49
    .line 50
    const-string/jumbo v2, "mConfigupdaterUid:"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 58
    .line 59
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "MultiUidList: "

    .line 83
    .line 84
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string/jumbo v1, "mUserEnable:"

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 111
    .line 112
    const-string/jumbo v2, "mWaitCheckNetWork:"

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 120
    .line 121
    const-string/jumbo v2, "mGoogleNetWork:"

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 129
    .line 130
    const-string/jumbo v2, "isGmsNetWorkLimt:"

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 138
    .line 139
    const-string/jumbo v2, "mScreenOn:"

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    .line 147
    .line 148
    const-string/jumbo v2, "mScreenOffChange:"

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 156
    .line 157
    const-string/jumbo v2, "isCharging:"

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 165
    .line 166
    const-string/jumbo v2, "mPolicyControlSwitch:"

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v3, "Since last 24 hours\nTotal time and # of event Google access is available   : "

    .line 196
    .line 197
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 201
    .line 202
    invoke-virtual {v3, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v3, "\n"

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    const-string v4, "Total time and # of event Google access is not possible : "

    .line 219
    .line 220
    invoke-static {v2, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 225
    .line 226
    invoke-virtual {v4, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    const-string v3, "Total time and # of event VPN is connected :"

    .line 241
    .line 242
    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 247
    .line 248
    invoke-virtual {v3, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_2

    .line 273
    .line 274
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Ljava/lang/String;

    .line 279
    .line 280
    const-string/jumbo v1, "mCheckinServerUrl:"

    .line 281
    .line 282
    .line 283
    invoke-static {p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_2
    return-void
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "network_management"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getSettingsValueFromDB()V
    .locals 8

    .line 1
    const-string v0, "GmsAlarmManager"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 10
    .line 11
    const-string/jumbo v1, "key"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v4, "value"

    .line 15
    .line 16
    .line 17
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "Exception with contentResolver : "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-eqz v1, :cond_3

    .line 56
    .line 57
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :try_start_1
    const-string/jumbo v4, "spcm_switch"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/4 v5, 0x3

    .line 87
    if-ne v4, v5, :cond_1

    .line 88
    .line 89
    move v2, v3

    .line 90
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v4, "get from smartmanager DB, spcm_switch : "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iget-boolean v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 112
    .line 113
    if-eq v3, v2, :cond_0

    .line 114
    .line 115
    iput-boolean v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 116
    .line 117
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 118
    .line 119
    const/16 v3, 0xb

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_1
    move-exception v2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v4, "Exception with parseInt : "

    .line 129
    .line 130
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v2, v3, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 138
    .line 139
    .line 140
    :cond_3
    return-void
.end method

.method public final init(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v2, p0, v0}, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 34
    .line 35
    :cond_1
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    .line 38
    .line 39
    const-string/jumbo v1, "checkin.gstatic.com"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-direct {p1, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 52
    .line 53
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 54
    .line 55
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 68
    .line 69
    const/4 v1, 0x4

    .line 70
    invoke-direct {p1, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 74
    .line 75
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 76
    .line 77
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 78
    .line 79
    invoke-static {p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 86
    .line 87
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 91
    .line 92
    const/4 v1, 0x6

    .line 93
    invoke-direct {p1, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 97
    .line 98
    const-string p1, "android.intent.action.USER_ADDED"

    .line 99
    .line 100
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 101
    .line 102
    invoke-static {p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 109
    .line 110
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 114
    .line 115
    const/4 v1, 0x5

    .line 116
    invoke-direct {p1, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 120
    .line 121
    const-string/jumbo p1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 122
    .line 123
    .line 124
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 125
    .line 126
    invoke-static {p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 133
    .line 134
    invoke-virtual {v2, v4, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 138
    .line 139
    const/4 v2, 0x3

    .line 140
    invoke-direct {p1, p0, v2}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 144
    .line 145
    const-string/jumbo p1, "sec.app.policy.UPDATE.gmsnet"

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 155
    .line 156
    invoke-virtual {v2, v4, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 160
    .line 161
    const/4 v2, 0x1

    .line 162
    invoke-direct {p1, p0, v2}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;I)V

    .line 163
    .line 164
    .line 165
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 166
    .line 167
    const-string p1, "android.os.action.CHARGING"

    .line 168
    .line 169
    const-string v2, "android.os.action.DISCHARGING"

    .line 170
    .line 171
    invoke-static {p1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 178
    .line 179
    invoke-virtual {v2, v4, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    const-class p1, Landroid/os/PowerManagerInternal;

    .line 183
    .line 184
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Landroid/os/PowerManagerInternal;

    .line 189
    .line 190
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 191
    .line 192
    new-instance p1, Landroid/content/IntentFilter;

    .line 193
    .line 194
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string/jumbo v2, "com.samsung.android.server.action_check_gms_network"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string/jumbo v4, "com.samsung.android.server.action_insert_log"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntentReceiver:Lcom/android/server/alarm/GmsAlarmManager$1;

    .line 215
    .line 216
    invoke-virtual {v1, v5, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 220
    .line 221
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 222
    .line 223
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 224
    .line 225
    new-instance p1, Landroid/content/Intent;

    .line 226
    .line 227
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    const/high16 v2, 0x4000000

    .line 233
    .line 234
    invoke-static {v1, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 239
    .line 240
    new-instance p1, Landroid/content/Intent;

    .line 241
    .line 242
    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    invoke-static {v1, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 252
    .line 253
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 254
    .line 255
    invoke-direct {p1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>()V

    .line 256
    .line 257
    .line 258
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 259
    .line 260
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 261
    .line 262
    invoke-direct {p1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>()V

    .line 263
    .line 264
    .line 265
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 266
    .line 267
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 268
    .line 269
    invoke-direct {p1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>()V

    .line 270
    .line 271
    .line 272
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 273
    .line 274
    :cond_2
    return-void
.end method

.method public final isVPNConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "connectivity"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    const/16 v0, 0x11

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final setGmsMultiUserWorkAllow(Z)V
    .locals 5

    .line 1
    const-string v0, "GmsAlarmManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Integer;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-interface {v3, v4, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-interface {v3, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :catch_1
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "IllegalStateException:"

    .line 58
    .line 59
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :goto_2
    const-string p1, "RemoteException:"

    .line 74
    .line 75
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_3
    return-void
.end method

.method public final setUrlFirewallRule(Ljava/util/ArrayList;Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "GmsAlarmManager"

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "[GMS-CORE] setUrlFirewallRule, ip = "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, " isDeleteRule = "

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, " mGmsPkgUid = "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 71
    .line 72
    invoke-interface {v2, v0, v1, p2}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 76
    .line 77
    invoke-interface {v2, v0, v1, p2}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method

.method public final updateMultiUserGmsUid(I)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const-string/jumbo v0, "gmsuid = "

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "get Multi userId: "

    .line 19
    .line 20
    .line 21
    const-string v3, "GmsAlarmManager"

    .line 22
    .line 23
    invoke-static {p1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    if-le p1, v2, :cond_0

    .line 28
    .line 29
    :try_start_0
    const-string/jumbo v2, "com.google.android.gms"

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {p0, v2, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string/jumbo v5, "com.android.vending"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v5, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string/jumbo v6, "com.google.android.configupdater"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v6, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, " vendinguid = "

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, " configupdate = "

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "NameNotFoundException"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_0
    :goto_0
    return-object v1
.end method
