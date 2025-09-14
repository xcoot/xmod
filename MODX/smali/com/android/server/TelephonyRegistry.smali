.class public Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INVALID_LCE_LIST:Ljava/util/List;

.field public static final REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;


# instance fields
.field public mActiveDataSubId:I

.field public mAllowedNetworkTypeReason:[I

.field public mAllowedNetworkTypeValue:[J

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mBackgroundCallState:[I

.field public final mBarringInfo:Ljava/util/List;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBroadcastReceiver:Lcom/android/server/TelephonyRegistry$2;

.field public mCallDisconnectCause:[I

.field public mCallForwarding:[Z

.field public mCallIncomingNumber:[Ljava/lang/String;

.field public mCallNetworkType:[I

.field public mCallPreciseDisconnectCause:[I

.field public mCallQuality:[Landroid/telephony/CallQuality;

.field public mCallState:[I

.field public final mCallStateLists:Ljava/util/ArrayList;

.field public mCarrierNetworkChangeState:[Z

.field public final mCarrierPrivilegeStates:Ljava/util/List;

.field public final mCarrierRoamingNtnAvailableServices:Ljava/util/List;

.field public mCarrierRoamingNtnEligible:[Z

.field public mCarrierRoamingNtnMode:[Z

.field public mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

.field public final mCarrierServiceStates:Ljava/util/List;

.field public mCellIdentity:[Landroid/telephony/CellIdentity;

.field public final mCellInfo:Ljava/util/ArrayList;

.field public final mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

.field public final mContext:Landroid/content/Context;

.field public mDataActivationState:[I

.field public mDataActivity:[I

.field public mDataConnectionNetworkType:[I

.field public mDataConnectionState:[I

.field public mDataEnabledReason:[I

.field public mDefaultPhoneId:I

.field public mDefaultSubId:I

.field public mECBMReason:[I

.field public mECBMStarted:[Z

.field public mEmergencyNumberList:Ljava/util/Map;

.field public mForegroundCallState:[I

.field public final mHandler:Lcom/android/server/TelephonyRegistry$1;

.field public mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

.field public mHasNotifySubscriptionInfoChangedOccurred:Z

.field public final mImsReasonInfo:Ljava/util/List;

.field public mIsDataEnabled:[Z

.field public final mLinkCapacityEstimateLists:Ljava/util/List;

.field public final mListenLog:Landroid/util/LocalLog;

.field public final mLocalLog:Landroid/util/LocalLog;

.field public final mMediaQualityStatus:Ljava/util/List;

.field public mMessageWaiting:[Z

.field public mNumPhones:I

.field public mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field public mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field public mPhoneCapability:Landroid/telephony/PhoneCapability;

.field public final mPhysicalChannelConfigs:Ljava/util/List;

.field public mPreciseCallState:[Landroid/telephony/PreciseCallState;

.field public final mPreciseDataConnectionStates:Ljava/util/List;

.field public mRadioPowerState:I

.field public final mRecords:Ljava/util/ArrayList;

.field public final mRemoveList:Ljava/util/ArrayList;

.field public mRingingCallState:[I

.field public mSCBMReason:[I

.field public mSCBMStarted:[Z

.field public mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

.field public mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

.field public mServiceState:[Landroid/telephony/ServiceState;

.field public mSignalStrength:[Landroid/telephony/SignalStrength;

.field public mSimultaneousCellularCallingSubIds:[I

.field public mSrvccState:[I

.field public mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

.field public mUserMobileDataState:[Z

.field public mVoiceActivationState:[I


# direct methods
.method public static -$$Nest$mcheckPossibleMissNotify(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 6
    if-eqz v0, :cond_d

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    goto/16 :goto_9

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    const/16 v3, 0x1d

    .line 27
    if-eqz v2, :cond_3

    .line 29
    :try_start_0
    new-instance v2, Landroid/telephony/ServiceState;

    .line 31
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 33
    aget-object v4, v4, p2

    .line 35
    invoke-direct {v2, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 38
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 44
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 46
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 56
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 69
    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 79
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 81
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    :goto_0
    const/16 v2, 0x9

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 96
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 98
    aget-object v2, v2, p2

    .line 100
    if-eqz v2, :cond_4

    .line 102
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 104
    new-instance v5, Landroid/telephony/SignalStrength;

    .line 106
    invoke-direct {v5, v2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    .line 109
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    goto :goto_1

    .line 113
    :catch_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 115
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 117
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_4
    :goto_1
    const/4 v2, 0x2

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v2

    .line 125
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_6

    .line 131
    :try_start_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 133
    aget-object v2, v2, p2

    .line 135
    if-eqz v2, :cond_6

    .line 137
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    .line 140
    move-result v2

    .line 141
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 143
    const/16 v5, 0x63

    .line 145
    if-ne v2, v5, :cond_5

    .line 147
    const/4 v2, -0x1

    .line 148
    :cond_5
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    goto :goto_2

    .line 152
    :catch_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 154
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 156
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_6
    :goto_2
    const/16 v2, 0xb

    .line 161
    invoke-static {p1, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_7

    .line 167
    :try_start_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_7

    .line 173
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_7

    .line 179
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 181
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Ljava/util/List;

    .line 189
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 192
    goto :goto_3

    .line 193
    :catch_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 195
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 197
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_7
    :goto_3
    const/16 v2, 0x14

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v2

    .line 206
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_8

    .line 212
    :try_start_4
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 214
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 216
    aget-boolean v4, v4, p2

    .line 218
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 221
    goto :goto_4

    .line 222
    :catch_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 224
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 226
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_8
    :goto_4
    const/16 v2, 0x15

    .line 231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    move-result-object v2

    .line 235
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_9

    .line 241
    :try_start_5
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 243
    aget-object v2, v2, p2

    .line 245
    if-eqz v2, :cond_9

    .line 247
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 249
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 252
    goto :goto_5

    .line 253
    :catch_5
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 255
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 257
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_9
    :goto_5
    const/4 v2, 0x3

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    move-result-object v2

    .line 265
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_a

    .line 271
    :try_start_6
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 273
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 275
    aget-boolean v4, v4, p2

    .line 277
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 280
    goto :goto_6

    .line 281
    :catch_6
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 283
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 285
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_a
    :goto_6
    const/4 v2, 0x4

    .line 289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    move-result-object v2

    .line 293
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_b

    .line 299
    :try_start_7
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 301
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 303
    aget-boolean v4, v4, p2

    .line 305
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 308
    goto :goto_7

    .line 309
    :catch_7
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 311
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 313
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_b
    :goto_7
    const/4 v2, 0x5

    .line 317
    invoke-static {p1, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 320
    move-result v2

    .line 321
    if-eqz v2, :cond_c

    .line 323
    :try_start_8
    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_c

    .line 329
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_c

    .line 335
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 337
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 339
    aget-object v2, v2, p2

    .line 341
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 344
    goto :goto_8

    .line 345
    :catch_8
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 347
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 349
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_c
    :goto_8
    const/4 v1, 0x7

    .line 353
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    move-result-object v1

    .line 357
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_e

    .line 363
    :try_start_9
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 365
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 367
    aget v1, v1, p2

    .line 369
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 371
    aget p2, v2, p2

    .line 373
    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 376
    goto :goto_a

    .line 377
    :catch_9
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 379
    iget-object p1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 381
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    goto :goto_a

    .line 385
    :cond_d
    :goto_9
    const-string/jumbo p0, "checkPossibleMissNotify: events = null."

    .line 388
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 391
    :cond_e
    :goto_a
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Landroid/telephony/LinkCapacityEstimate;

    .line 6
    new-instance v2, Landroid/telephony/LinkCapacityEstimate;

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, -0x1

    .line 10
    invoke-direct {v2, v3, v4, v4}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    sput-object v0, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    sput-object v0, Lcom/android/server/TelephonyRegistry;->REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;

    .line 32
    const/16 v1, 0xd

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    const/16 v1, 0xe

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    const/16 v1, 0xc

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const/16 v1, 0x1a

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    const/16 v1, 0x1b

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const/16 v1, 0x1c

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    const/16 v1, 0x1f

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    const/16 v1, 0x20

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    const/16 v1, 0x21

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    const/16 v1, 0x22

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    const/16 v1, 0x25

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    const/16 v1, 0x27

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 23
    const/4 v1, -0x1

    .line 24
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 26
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 28
    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 31
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 33
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 35
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 37
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 39
    const/4 v3, 0x2

    .line 40
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 42
    new-instance v3, Landroid/util/LocalLog;

    .line 44
    const/16 v4, 0x100

    .line 46
    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    .line 49
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 51
    new-instance v3, Landroid/util/LocalLog;

    .line 53
    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    .line 56
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    .line 58
    new-array v3, v0, [I

    .line 60
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSimultaneousCellularCallingSubIds:[I

    .line 62
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 64
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 66
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    .line 68
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 70
    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    .line 72
    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    .line 75
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Lcom/android/server/TelephonyRegistry$1;

    .line 77
    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    .line 79
    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    .line 82
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Lcom/android/server/TelephonyRegistry$2;

    .line 84
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 88
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    .line 91
    move-result-object p2

    .line 92
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 94
    const-string/jumbo p2, "phone"

    .line 97
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 103
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 106
    move-result p1

    .line 107
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 109
    new-array p2, p1, [I

    .line 111
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 113
    new-array p2, p1, [I

    .line 115
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 117
    new-array p2, p1, [I

    .line 119
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 121
    new-array p2, p1, [I

    .line 123
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 125
    new-array p2, p1, [Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 129
    new-array p2, p1, [Landroid/telephony/ServiceState;

    .line 131
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 133
    new-array p2, p1, [I

    .line 135
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 137
    new-array p2, p1, [I

    .line 139
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 141
    new-array p2, p1, [Z

    .line 143
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 145
    new-array p2, p1, [Landroid/telephony/SignalStrength;

    .line 147
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 149
    new-array p2, p1, [Z

    .line 151
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 153
    new-array p2, p1, [Z

    .line 155
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 157
    new-array p2, p1, [Landroid/telephony/CellIdentity;

    .line 159
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 161
    new-array p2, p1, [I

    .line 163
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 165
    new-array p2, p1, [Landroid/telephony/PreciseCallState;

    .line 167
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 169
    new-array p2, p1, [I

    .line 171
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 173
    new-array p2, p1, [I

    .line 175
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 177
    new-array p2, p1, [I

    .line 179
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 181
    new-array p2, p1, [I

    .line 183
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 185
    new-array p2, p1, [I

    .line 187
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 189
    new-array p2, p1, [Landroid/telephony/CallQuality;

    .line 191
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 193
    new-instance p2, Ljava/util/ArrayList;

    .line 195
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    .line 200
    new-array p2, p1, [I

    .line 202
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 204
    new-instance p2, Ljava/util/ArrayList;

    .line 206
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 211
    new-instance p2, Ljava/util/ArrayList;

    .line 213
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 218
    new-instance p2, Ljava/util/ArrayList;

    .line 220
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 225
    new-instance p2, Ljava/util/ArrayList;

    .line 227
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 232
    new-instance p2, Ljava/util/HashMap;

    .line 234
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 239
    new-array p2, p1, [Landroid/telephony/emergency/EmergencyNumber;

    .line 241
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 243
    new-array p2, p1, [Landroid/telephony/emergency/EmergencyNumber;

    .line 245
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 247
    new-instance p2, Ljava/util/ArrayList;

    .line 249
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 254
    new-array p2, p1, [Z

    .line 256
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 258
    new-array p2, p1, [Landroid/telephony/TelephonyDisplayInfo;

    .line 260
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 262
    new-instance p2, Ljava/util/ArrayList;

    .line 264
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 269
    new-array p2, p1, [I

    .line 271
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 273
    new-array p2, p1, [J

    .line 275
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 277
    new-array p2, p1, [Z

    .line 279
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 281
    new-array p2, p1, [I

    .line 283
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 285
    new-instance p2, Ljava/util/ArrayList;

    .line 287
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    .line 292
    new-instance p2, Ljava/util/ArrayList;

    .line 294
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 299
    new-instance p2, Ljava/util/ArrayList;

    .line 301
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    .line 306
    new-array p2, p1, [I

    .line 308
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    .line 310
    new-array p2, p1, [Z

    .line 312
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mECBMStarted:[Z

    .line 314
    new-array p2, p1, [I

    .line 316
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    .line 318
    new-array p2, p1, [Z

    .line 320
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMStarted:[Z

    .line 322
    new-array p2, p1, [Z

    .line 324
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 326
    new-array p2, p1, [Z

    .line 328
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 330
    new-instance p2, Ljava/util/ArrayList;

    .line 332
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    .line 337
    new-array p2, p1, [Landroid/telephony/satellite/NtnSignalStrength;

    .line 339
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 341
    new-instance p2, Landroid/telephony/satellite/SemSatelliteServiceState;

    .line 343
    invoke-direct {p2}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    .line 348
    new-instance p2, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 350
    invoke-direct {p2}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 355
    move p2, v0

    .line 356
    :goto_0
    if-ge p2, p1, :cond_0

    .line 358
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 360
    aput v0, v3, p2

    .line 362
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 364
    aput v0, v3, p2

    .line 366
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 368
    aput v1, v3, p2

    .line 370
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 372
    aput v0, v3, p2

    .line 374
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 376
    aput v0, v3, p2

    .line 378
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 380
    const-string v4, ""

    .line 382
    aput-object v4, v3, p2

    .line 384
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 386
    new-instance v4, Landroid/telephony/ServiceState;

    .line 388
    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    .line 391
    aput-object v4, v3, p2

    .line 393
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 395
    aput-object v2, v3, p2

    .line 397
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 399
    aput-boolean v0, v3, p2

    .line 401
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 403
    aput-boolean v0, v3, p2

    .line 405
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 407
    aput-boolean v0, v3, p2

    .line 409
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 411
    aput-object v2, v3, p2

    .line 413
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 415
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 417
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 420
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 422
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 424
    invoke-direct {v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 427
    check-cast v3, Ljava/util/ArrayList;

    .line 429
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 432
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 434
    aput v1, v3, p2

    .line 436
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 438
    aput v1, v3, p2

    .line 440
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 442
    aput v1, v3, p2

    .line 444
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 446
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    .line 449
    move-result-object v4

    .line 450
    aput-object v4, v3, p2

    .line 452
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    .line 454
    new-instance v4, Landroid/util/SparseArray;

    .line 456
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 459
    check-cast v3, Ljava/util/ArrayList;

    .line 461
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 464
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 466
    new-instance v4, Ljava/util/ArrayList;

    .line 468
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 474
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 476
    aput v0, v3, p2

    .line 478
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 480
    new-instance v10, Landroid/telephony/PreciseCallState;

    .line 482
    const/4 v6, -0x1

    .line 483
    const/4 v7, -0x1

    .line 484
    const/4 v5, -0x1

    .line 485
    const/4 v8, -0x1

    .line 486
    const/4 v9, -0x1

    .line 487
    move-object v4, v10

    .line 488
    invoke-direct/range {v4 .. v9}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    .line 491
    aput-object v10, v3, p2

    .line 493
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 495
    aput v0, v3, p2

    .line 497
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 499
    aput v0, v3, p2

    .line 501
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 503
    aput v0, v3, p2

    .line 505
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 507
    new-instance v4, Landroid/util/ArrayMap;

    .line 509
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 512
    check-cast v3, Ljava/util/ArrayList;

    .line 514
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 519
    new-instance v4, Landroid/telephony/BarringInfo;

    .line 521
    invoke-direct {v4}, Landroid/telephony/BarringInfo;-><init>()V

    .line 524
    check-cast v3, Ljava/util/ArrayList;

    .line 526
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 529
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 531
    aput-boolean v0, v3, p2

    .line 533
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 535
    aput-object v2, v3, p2

    .line 537
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 539
    aput-boolean v0, v3, p2

    .line 541
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 543
    aput v0, v3, p2

    .line 545
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 547
    new-instance v4, Ljava/util/ArrayList;

    .line 549
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 552
    check-cast v3, Ljava/util/ArrayList;

    .line 554
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 557
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 559
    aput v1, v3, p2

    .line 561
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 563
    const-wide/16 v4, -0x1

    .line 565
    aput-wide v4, v3, p2

    .line 567
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    .line 569
    sget-object v4, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 571
    check-cast v3, Ljava/util/ArrayList;

    .line 573
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 576
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 578
    new-instance v4, Landroid/util/Pair;

    .line 580
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 583
    move-result-object v5

    .line 584
    new-array v6, v0, [I

    .line 586
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    check-cast v3, Ljava/util/ArrayList;

    .line 591
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 594
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    .line 596
    new-instance v4, Landroid/util/Pair;

    .line 598
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 601
    move-result-object v5

    .line 602
    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 605
    check-cast v3, Ljava/util/ArrayList;

    .line 607
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 610
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    .line 612
    aput v0, v3, p2

    .line 614
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mECBMStarted:[Z

    .line 616
    aput-boolean v0, v3, p2

    .line 618
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    .line 620
    aput v0, v3, p2

    .line 622
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSCBMStarted:[Z

    .line 624
    aput-boolean v0, v3, p2

    .line 626
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 628
    aput-boolean v0, v3, p2

    .line 630
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 632
    aput-boolean v0, v3, p2

    .line 634
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    .line 636
    new-instance v4, Landroid/util/IntArray;

    .line 638
    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    .line 641
    check-cast v3, Ljava/util/ArrayList;

    .line 643
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 646
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 648
    new-instance v4, Landroid/telephony/satellite/NtnSignalStrength;

    .line 650
    invoke-direct {v4, v0}, Landroid/telephony/satellite/NtnSignalStrength;-><init>(I)V

    .line 653
    aput-object v4, v3, p2

    .line 655
    add-int/lit8 p2, p2, 0x1

    .line 657
    goto/16 :goto_0

    .line 659
    :cond_0
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 661
    const-class p2, Landroid/app/AppOpsManager;

    .line 663
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 666
    move-result-object p1

    .line 667
    check-cast p1, Landroid/app/AppOpsManager;

    .line 669
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 671
    return-void
.end method

.method public static createCallQuality()Landroid/telephony/CallQuality;
    .locals 13

    .line 1
    new-instance v12, Landroid/telephony/CallQuality;

    .line 3
    const/4 v10, 0x0

    .line 4
    const/4 v11, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    move-object v0, v12

    .line 15
    invoke-direct/range {v0 .. v11}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIII)V

    .line 18
    return-object v12
.end method

.method public static createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/BroadcastOptions;

    .line 3
    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, "-"

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    const-string p1, "android.intent.action.SERVICE_STATE"

    .line 39
    invoke-virtual {v0, p1, p0}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 42
    move-result-object p0

    .line 43
    const/4 p1, 0x2

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;
    .locals 2

    .line 1
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 3
    const/high16 v1, 0x1000000

    .line 5
    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    if-eqz p3, :cond_0

    .line 16
    const/4 p3, 0x1

    .line 17
    invoke-virtual {p0, p3}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 31
    const-string/jumbo p0, "subscription"

    .line 34
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    const-string p0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 39
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string/jumbo p0, "slot"

    .line 45
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    const-string p0, "android.telephony.extra.SLOT_INDEX"

    .line 50
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    return-object v0
.end method

.method public static cutListToSize(ILjava/util/List;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 8
    if-le v0, p0, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method public static doesLimitApplyForListeners(II)Z
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 3
    if-eq p0, v0, :cond_0

    .line 5
    const/16 v0, 0x3e9

    .line 7
    if-eq p0, v0, :cond_0

    .line 9
    if-eq p0, p1, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static getApnTypesStringFromBitmask(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    and-int/lit8 v1, p0, 0x11

    .line 8
    const/16 v2, 0x11

    .line 10
    if-ne v1, v2, :cond_0

    .line 12
    const-string/jumbo v1, "default"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    and-int/lit8 p0, p0, -0x12

    .line 20
    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    not-int v1, v1

    .line 40
    and-int/2addr p0, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const-string p0, ","

    .line 44
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/telephony/PhysicalChannelConfig;

    .line 26
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig;->createLocationInfoSanitizedCopy()Landroid/telephony/PhysicalChannelConfig;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "TelephonyRegistry"

    .line 3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "TelephonyRegistry"

    .line 3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    return-void
.end method

.method public static pii(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "[***, size="

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 22
    move-result p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p0, "]"

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 8
    move-result v2

    .line 9
    iget v3, p0, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 11
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v3

    .line 15
    if-ne v3, v2, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 20
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    return p0

    .line 32
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    throw p0
.end method


# virtual methods
.method public final add(IILandroid/os/IBinder;Z)Lcom/android/server/TelephonyRegistry$Record;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v3, v1, :cond_2

    .line 15
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    .line 23
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 25
    if-ne p3, v6, :cond_0

    .line 27
    monitor-exit v0

    .line 28
    return-object v5

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_0
    iget v5, v5, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 34
    if-ne v5, p2, :cond_1

    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 38
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance v1, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda6;

    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v1

    .line 61
    if-eqz p4, :cond_4

    .line 63
    const/4 p4, 0x1

    .line 64
    if-lt v1, p4, :cond_4

    .line 66
    if-lt v4, v1, :cond_4

    .line 68
    new-instance p4, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v1, "Pid "

    .line 75
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string p2, " has exceeded the number of permissible registered listeners. Ignoring request to add."

    .line 83
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 93
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 95
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    new-instance p4, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda1;

    .line 100
    invoke-direct {p4, p1}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda1;-><init>(I)V

    .line 103
    invoke-static {p4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Ljava/lang/Boolean;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_3

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 118
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p0

    .line 122
    :cond_4
    const/16 p1, 0x19

    .line 124
    if-lt v4, p1, :cond_5

    .line 126
    const-string p1, "TelephonyRegistry"

    .line 128
    new-instance p4, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    const-string v1, "Pid "

    .line 135
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string p2, " has exceeded half the number of permissible registered listeners. Now at "

    .line 143
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_5
    :goto_1
    new-instance p1, Lcom/android/server/TelephonyRegistry$Record;

    .line 158
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 p2, -0x1

    .line 162
    iput p2, p1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 164
    iput p2, p1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 166
    iput-object p3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 168
    new-instance p2, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    .line 170
    invoke-direct {p2, p0, p3}, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    .line 173
    iput-object p2, p1, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    invoke-interface {p3, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v0

    .line 184
    return-object p1

    .line 185
    :catch_0
    monitor-exit v0

    .line 186
    const/4 p0, 0x0

    .line 187
    return-object p0

    .line 188
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    throw p0
.end method

.method public final addCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/ICarrierConfigChangeListener;->asBinder()Landroid/os/IBinder;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    move-result v2

    .line 24
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    move-result v3

    .line 28
    invoke-static {v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    .line 31
    move-result v2

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    move-result v3

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    move-result v4

    .line 40
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/server/TelephonyRegistry;->add(IILandroid/os/IBinder;Z)Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    .line 46
    const-string p0, "Can not create Record instance!"

    .line 48
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 57
    iput-object p0, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 59
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->carrierConfigChangeListener:Lcom/android/internal/telephony/ICarrierConfigChangeListener;

    .line 61
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 63
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 68
    move-result p0

    .line 69
    iput p0, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 71
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 74
    move-result p0

    .line 75
    iput p0, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 77
    new-instance p0, Landroid/util/ArraySet;

    .line 79
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 82
    iput-object p0, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method public final addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Invalid slot index: "

    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v2

    .line 12
    invoke-virtual {v1, v2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 17
    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 19
    const-string v3, "addCarrierPrivilegesCallback"

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 27
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 36
    invoke-interface {p2}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->asBinder()Landroid/os/IBinder;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 43
    move-result v2

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/server/TelephonyRegistry;->add(IILandroid/os/IBinder;Z)Lcom/android/server/TelephonyRegistry$Record;

    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 61
    iput-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 63
    iput-object p2, v0, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 65
    iput-object p3, v0, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 67
    iput-object p4, v0, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 72
    move-result p2

    .line 73
    iput p2, v0, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 78
    move-result p2

    .line 79
    iput p2, v0, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 81
    iput p1, v0, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 83
    new-instance p2, Landroid/util/ArraySet;

    .line 85
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 88
    iput-object p2, v0, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 90
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 92
    check-cast p2, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Landroid/util/Pair;

    .line 100
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    .line 102
    check-cast p3, Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    iget-object p3, v0, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 112
    if-eqz p3, :cond_1

    .line 114
    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 116
    check-cast p4, Ljava/util/List;

    .line 118
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 121
    move-result-object p4

    .line 122
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 124
    move-object v2, p2

    .line 125
    check-cast v2, [I

    .line 127
    check-cast p2, [I

    .line 129
    array-length p2, p2

    .line 130
    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 133
    move-result-object p2

    .line 134
    invoke-interface {p3, p4, p2}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/List;[I)V

    .line 137
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 139
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 141
    check-cast p3, Ljava/lang/String;

    .line 143
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 145
    check-cast p1, Ljava/lang/Integer;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 150
    move-result p1

    .line 151
    invoke-interface {p2, p3, p1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    goto :goto_0

    .line 155
    :catch_0
    :try_start_2
    iget-object p1, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 160
    :cond_1
    :goto_0
    monitor-exit v1

    .line 161
    return-void

    .line 162
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    throw p0

    .line 180
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    throw p0
.end method

.method public final addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    move-result v2

    .line 24
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    move-result v3

    .line 28
    invoke-static {v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    .line 31
    move-result v2

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    move-result v3

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    move-result v4

    .line 40
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/server/TelephonyRegistry;->add(IILandroid/os/IBinder;Z)Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 52
    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 54
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 56
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 58
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 60
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 63
    move-result p1

    .line 64
    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 69
    move-result p1

    .line 70
    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 72
    new-instance p1, Landroid/util/ArraySet;

    .line 74
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 77
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 79
    iget-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz p1, :cond_1

    .line 83
    :try_start_1
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 85
    invoke-interface {p1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    :try_start_2
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const-string/jumbo p0, "listen ooscl: hasNotifyOpptSubInfoChangedOccurred==false no callback"

    .line 98
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 101
    :goto_0
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    throw p0
.end method

.method public final addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    move-result v2

    .line 24
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    move-result v3

    .line 28
    invoke-static {v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    .line 31
    move-result v2

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    move-result v3

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    move-result v4

    .line 40
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/server/TelephonyRegistry;->add(IILandroid/os/IBinder;Z)Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 52
    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 54
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 56
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 58
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 60
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 63
    move-result p1

    .line 64
    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 69
    move-result p1

    .line 70
    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 72
    new-instance p1, Landroid/util/ArraySet;

    .line 74
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 77
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 79
    iget-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz p1, :cond_1

    .line 83
    :try_start_1
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 85
    invoke-interface {p1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    :try_start_2
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const-string/jumbo p0, "listen oscl: mHasNotifySubscriptionInfoChangedOccurred==false no callback"

    .line 98
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 101
    :goto_0
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    throw p0
.end method

.method public final broadcastCallStateChanged(IIILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    const/16 v3, 0x5f

    .line 8
    if-nez p1, :cond_0

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 12
    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 24
    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V

    .line 27
    invoke-static {v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :catch_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    goto :goto_2

    .line 34
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    throw p0

    .line 38
    :goto_2
    new-instance v0, Landroid/content/Intent;

    .line 40
    const-string v1, "android.intent.action.PHONE_STATE"

    .line 42
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    if-eq p1, v2, :cond_2

    .line 47
    const/4 v1, 0x2

    .line 48
    if-eq p1, v1, :cond_1

    .line 50
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 58
    :goto_3
    const-string/jumbo v1, "state"

    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const/4 p1, -0x1

    .line 65
    if-eq p3, p1, :cond_3

    .line 67
    const-string v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "subscription"

    .line 75
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 80
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    :cond_3
    if-eq p2, p1, :cond_4

    .line 85
    const-string/jumbo p1, "slot"

    .line 88
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string p1, "android.telephony.extra.SLOT_INDEX"

    .line 93
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    :cond_4
    const/high16 p1, 0x1000000

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    new-instance p1, Landroid/content/Intent;

    .line 103
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 106
    const-string/jumbo p2, "incoming_number"

    .line 109
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 114
    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 116
    const-string p4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 118
    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 123
    const/16 p4, 0x33

    .line 125
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 127
    invoke-virtual {p2, v0, p3, v1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 130
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 132
    const-string p2, "android.permission.READ_CALL_LOG"

    .line 134
    filled-new-array {v1, p2}, [Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p0, p1, p3, p2}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public final broadcastDataConnectionStateChanged(IILandroid/telephony/PreciseDataConnectionState;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const-string/jumbo v2, "state"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "apn"

    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    .line 42
    move-result p3

    .line 43
    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    .line 46
    move-result-object p3

    .line 47
    const-string v1, "apnType"

    .line 49
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo p3, "slot"

    .line 55
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string/jumbo p1, "subscription"

    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 66
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 68
    const-string p3, "android.permission.READ_PHONE_STATE"

    .line 70
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 79
    move-result-object p0

    .line 80
    const-string p1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 82
    filled-new-array {p1}, [Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    filled-new-array {p3}, [Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public final broadcastServiceStateChanged(IILandroid/telephony/ServiceState;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    :try_start_0
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/ServiceState;->getState()I

    .line 14
    move-result v5

    .line 15
    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    .line 23
    move-result v5

    .line 24
    invoke-static {v4, v5}, Landroid/telephony/LocationAccessPolicy;->isLocationModeEnabled(Landroid/content/Context;I)Z

    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 31
    const-string v7, "android.permission.READ_PHONE_STATE"

    .line 33
    const/4 v8, 0x0

    .line 34
    if-eqz v4, :cond_0

    .line 36
    invoke-static {v3, v2, v1, v8}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    .line 39
    move-result-object v10

    .line 40
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 42
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 44
    invoke-virtual {v4, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 47
    move-result-object v4

    .line 48
    const-string v14, "android.permission.ACCESS_FINE_LOCATION"

    .line 50
    filled-new-array {v7, v14}, [Ljava/lang/String;

    .line 53
    move-result-object v9

    .line 54
    const-string v11, "I:RA"

    .line 56
    invoke-static {v2, v1, v11}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    .line 59
    move-result-object v11

    .line 60
    invoke-virtual {v4, v10, v9, v11}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 63
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v4, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 68
    move-result-object v9

    .line 69
    filled-new-array {v6, v14}, [Ljava/lang/String;

    .line 72
    move-result-object v11

    .line 73
    filled-new-array {v7}, [Ljava/lang/String;

    .line 76
    move-result-object v12

    .line 77
    const-string v4, "I:RPA,E:R"

    .line 79
    invoke-static {v2, v1, v4}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    .line 82
    move-result-object v4

    .line 83
    const/4 v13, 0x0

    .line 84
    move-object/from16 v16, v14

    .line 86
    move-object v14, v4

    .line 87
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 90
    invoke-static {v3, v2, v1, v5}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    .line 93
    move-result-object v3

    .line 94
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {v4, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 99
    move-result-object v17

    .line 100
    filled-new-array {v7}, [Ljava/lang/String;

    .line 103
    move-result-object v19

    .line 104
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    .line 107
    move-result-object v20

    .line 108
    const-string v4, "I:R,E:A"

    .line 110
    invoke-static {v2, v1, v4}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    .line 113
    move-result-object v22

    .line 114
    const/16 v21, 0x0

    .line 116
    move-object/from16 v18, v3

    .line 118
    invoke-virtual/range {v17 .. v22}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 121
    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {v0, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 126
    move-result-object v17

    .line 127
    filled-new-array {v6}, [Ljava/lang/String;

    .line 130
    move-result-object v19

    .line 131
    move-object/from16 v0, v16

    .line 133
    filled-new-array {v7, v0}, [Ljava/lang/String;

    .line 136
    move-result-object v20

    .line 137
    const-string v0, "I:RP,E:RA"

    .line 139
    invoke-static {v2, v1, v0}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    .line 142
    move-result-object v22

    .line 143
    invoke-virtual/range {v17 .. v22}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 146
    goto/16 :goto_1

    .line 148
    :cond_0
    new-instance v4, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;

    .line 150
    invoke-direct {v4, v0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/TelephonyRegistry;)V

    .line 153
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 156
    move-result-object v4

    .line 157
    check-cast v4, [Ljava/lang/String;

    .line 159
    array-length v9, v4

    .line 160
    move v10, v8

    .line 161
    :goto_0
    if-ge v10, v9, :cond_1

    .line 163
    aget-object v11, v4, v10

    .line 165
    invoke-static {v3, v2, v1, v8}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    .line 168
    move-result-object v13

    .line 169
    invoke-virtual {v13, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v11, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 174
    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 176
    invoke-virtual {v11, v12, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 179
    move-result-object v11

    .line 180
    filled-new-array {v7}, [Ljava/lang/String;

    .line 183
    move-result-object v14

    .line 184
    const-string v15, "I:R"

    .line 186
    invoke-static {v2, v1, v15}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    .line 189
    move-result-object v15

    .line 190
    invoke-virtual {v11, v13, v14, v15}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 193
    iget-object v11, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {v11, v12, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 198
    move-result-object v12

    .line 199
    filled-new-array {v6}, [Ljava/lang/String;

    .line 202
    move-result-object v14

    .line 203
    filled-new-array {v7}, [Ljava/lang/String;

    .line 206
    move-result-object v15

    .line 207
    const-string v11, "I:RP,E:R"

    .line 209
    invoke-static {v2, v1, v11}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    .line 212
    move-result-object v17

    .line 213
    const/16 v16, 0x0

    .line 215
    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 218
    add-int/lit8 v10, v10, 0x1

    .line 220
    goto :goto_0

    .line 221
    :cond_1
    invoke-static {v3, v2, v1, v5}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    .line 224
    move-result-object v3

    .line 225
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 227
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 229
    invoke-virtual {v5, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 232
    move-result-object v9

    .line 233
    filled-new-array {v7}, [Ljava/lang/String;

    .line 236
    move-result-object v11

    .line 237
    new-array v12, v8, [Ljava/lang/String;

    .line 239
    const-string v5, "I:R,lbp"

    .line 241
    invoke-static {v2, v1, v5}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    .line 244
    move-result-object v14

    .line 245
    move-object v10, v3

    .line 246
    move-object v13, v4

    .line 247
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 250
    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {v0, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 255
    move-result-object v9

    .line 256
    filled-new-array {v6}, [Ljava/lang/String;

    .line 259
    move-result-object v11

    .line 260
    filled-new-array {v7}, [Ljava/lang/String;

    .line 263
    move-result-object v12

    .line 264
    const-string v0, "I:RP,E:R,lbp"

    .line 266
    invoke-static {v2, v1, v0}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    .line 269
    move-result-object v14

    .line 270
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 273
    :goto_1
    return-void
.end method

.method public final checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->renounceCoarseLocationAccess:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 9
    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 12
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 23
    move-result-object v0

    .line 24
    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 29
    move-result-object v0

    .line 30
    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 32
    invoke-virtual {v0, p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "TelephonyRegistry push"

    .line 38
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 50
    move-result-object p1

    .line 51
    const v0, 0x7fffffff

    .line 54
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    .line 65
    move-result-object p1

    .line 66
    new-instance p2, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;

    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;I)V

    .line 72
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Ljava/lang/Boolean;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    move-result p0

    .line 82
    return p0
.end method

.method public final checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->renounceFineLocationAccess:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 9
    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 12
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 23
    move-result-object v0

    .line 24
    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 29
    move-result-object v0

    .line 30
    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 32
    invoke-virtual {v0, p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "TelephonyRegistry push"

    .line 38
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;

    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;I)V

    .line 69
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Ljava/lang/Boolean;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    move-result p0

    .line 79
    return p0
.end method

.method public final checkListenerPermission(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x1d

    .line 12
    const/16 v2, 0xb

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 28
    :cond_0
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 30
    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 33
    invoke-virtual {v0, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p4}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 40
    move-result-object v0

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v6, "listen events: "

    .line 46
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v0, v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 63
    move-result v5

    .line 64
    invoke-virtual {v0, v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 71
    move-result v5

    .line 72
    invoke-virtual {v0, v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 79
    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 82
    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 85
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    .line 90
    move-result-object v0

    .line 91
    invoke-static {v5, v0}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    .line 94
    move-result-object v0

    .line 95
    sget-object v5, Lcom/android/server/TelephonyRegistry$3;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    .line 97
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    .line 100
    move-result v0

    .line 101
    aget v0, v5, v0

    .line 103
    if-eq v0, v4, :cond_10

    .line 105
    const/4 v5, 0x2

    .line 106
    if-eq v0, v5, :cond_1

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    move v4, v3

    .line 110
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 113
    move-result-object v0

    .line 114
    const/4 v5, 0x4

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v5

    .line 119
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 122
    move-result v5

    .line 123
    const-string/jumbo v6, "listen"

    .line 126
    if-nez v5, :cond_8

    .line 128
    const/4 v5, 0x3

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v5

    .line 133
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 136
    move-result v5

    .line 137
    if-nez v5, :cond_8

    .line 139
    const/16 v5, 0x19

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v5

    .line 145
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_3

    .line 151
    goto/16 :goto_1

    .line 153
    :cond_3
    const/16 v5, 0x24

    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object v5

    .line 159
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 162
    move-result v5

    .line 163
    if-nez v5, :cond_4

    .line 165
    const/4 v5, 0x6

    .line 166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v5

    .line 170
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_5

    .line 176
    :cond_4
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 178
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    new-instance v5, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;

    .line 183
    const/4 v7, 0x2

    .line 184
    invoke-direct {v5, v7, v0, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 187
    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 190
    move-result-object v5

    .line 191
    check-cast v5, Ljava/lang/Boolean;

    .line 193
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 196
    move-result v5

    .line 197
    if-eqz v5, :cond_5

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    const/16 v5, 0x17

    .line 202
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v5

    .line 206
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_6

    .line 212
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 214
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    new-instance v5, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;

    .line 219
    const/4 v7, 0x0

    .line 220
    invoke-direct {v5, v7, v0, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 223
    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Ljava/lang/Boolean;

    .line 229
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_6

    .line 235
    goto :goto_1

    .line 236
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    move-result-object v2

    .line 240
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_7

    .line 246
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 248
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    new-instance v2, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;

    .line 253
    const/4 v5, 0x3

    .line 254
    invoke-direct {v2, v5, v0, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 257
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Ljava/lang/Boolean;

    .line 263
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_7

    .line 269
    goto :goto_1

    .line 270
    :cond_7
    const/16 v2, 0x15

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    move-result-object v2

    .line 276
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_9

    .line 282
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 284
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    new-instance v2, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;

    .line 289
    const/4 v5, 0x4

    .line 290
    invoke-direct {v2, v5, v0, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 293
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Ljava/lang/Boolean;

    .line 299
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 302
    move-result v0

    .line 303
    if-nez v0, :cond_9

    .line 305
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 307
    invoke-static {v0, p2, p3, p4, v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    move-result p3

    .line 311
    if-nez p3, :cond_9

    .line 313
    goto :goto_2

    .line 314
    :cond_9
    move v3, v4

    .line 315
    :goto_2
    sget-object p3, Lcom/android/server/TelephonyRegistry;->REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;

    .line 317
    check-cast p3, Ljava/util/HashSet;

    .line 319
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 322
    move-result-object p3

    .line 323
    :cond_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    move-result p4

    .line 327
    const/4 v0, 0x0

    .line 328
    if-eqz p4, :cond_b

    .line 330
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    move-result-object p4

    .line 334
    check-cast p4, Ljava/lang/Integer;

    .line 336
    invoke-interface {p1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 339
    move-result p4

    .line 340
    if-eqz p4, :cond_a

    .line 342
    :try_start_0
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 344
    const-string p4, "android.permission.READ_PRECISE_PHONE_STATE"

    .line 346
    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_3

    .line 350
    :catch_0
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 352
    invoke-static {p3, p2, v6}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 355
    :cond_b
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    move-result-object p2

    .line 359
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 362
    move-result p2

    .line 363
    if-nez p2, :cond_c

    .line 365
    const/16 p2, 0x1e

    .line 367
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    move-result-object p2

    .line 371
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 374
    move-result p2

    .line 375
    if-eqz p2, :cond_d

    .line 377
    :cond_c
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 379
    const-string p3, "android.permission.READ_ACTIVE_EMERGENCY_SESSION"

    .line 381
    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_d
    const/16 p2, 0x10

    .line 386
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    move-result-object p2

    .line 390
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 393
    move-result p2

    .line 394
    if-nez p2, :cond_e

    .line 396
    const/16 p2, 0x12

    .line 398
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    move-result-object p2

    .line 402
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 405
    move-result p2

    .line 406
    if-nez p2, :cond_e

    .line 408
    const/16 p2, 0x18

    .line 410
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    move-result-object p2

    .line 414
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 417
    move-result p2

    .line 418
    if-nez p2, :cond_e

    .line 420
    const/16 p2, 0x23

    .line 422
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    move-result-object p2

    .line 426
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 429
    move-result p2

    .line 430
    if-nez p2, :cond_e

    .line 432
    const/16 p2, 0x28

    .line 434
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    move-result-object p2

    .line 438
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 441
    move-result p2

    .line 442
    if-nez p2, :cond_e

    .line 444
    const/16 p2, 0x29

    .line 446
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    move-result-object p2

    .line 450
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 453
    move-result p1

    .line 454
    if-eqz p1, :cond_f

    .line 456
    :cond_e
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 458
    const-string p1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 460
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_f
    return v3

    .line 464
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    .line 468
    const-string p3, "Unable to listen for events "

    .line 470
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 476
    const-string p1, " due to insufficient location permissions."

    .line 478
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    move-result-object p1

    .line 485
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 488
    throw p0
.end method

.method public final checkNotifyPermission()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final clearPreciseDataConnectionStates(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/util/Map;

    .line 14
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 3
    const-string v1, "  "

    .line 5
    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 10
    const-string v1, "TelephonyRegistry"

    .line 12
    invoke-static {p2, v1, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v1

    .line 28
    const-string/jumbo v2, "last known state:"

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 40
    const-string/jumbo v4, "phone"

    .line 43
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 49
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 52
    move-result v3

    .line 53
    if-ge v2, v3, :cond_2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v4, "Phone Id="

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string/jumbo v4, "mCallState="

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 91
    aget v4, v4, v2

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string/jumbo v4, "mRingingCallState="

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 116
    aget v4, v4, v2

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    const-string/jumbo v4, "mForegroundCallState="

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 141
    aget v4, v4, v2

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string/jumbo v4, "mBackgroundCallState="

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 166
    aget v4, v4, v2

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string/jumbo v4, "mPreciseCallState="

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 191
    aget-object v4, v4, v2

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    const-string/jumbo v4, "mCallDisconnectCause="

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 216
    aget v4, v4, v2

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    const-string/jumbo v4, "mCallIncomingNumber="

    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 241
    aget-object v4, v4, v2

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    const-string/jumbo v4, "mCallStateLists="

    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Ljava/util/List;

    .line 272
    invoke-static {v4}, Lcom/android/internal/telephony/SemTelephonyUtils;->callStateListToString(Ljava/util/List;)Ljava/lang/String;

    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    .line 288
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    const-string/jumbo v4, "mServiceState="

    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 299
    aget-object v4, v4, v2

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    .line 313
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    const-string/jumbo v4, "mVoiceActivationState= "

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 324
    aget v4, v4, v2

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    .line 338
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    const-string/jumbo v4, "mDataActivationState= "

    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 349
    aget v4, v4, v2

    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    .line 363
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    const-string/jumbo v4, "mUserMobileDataState= "

    .line 369
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 374
    aget-boolean v4, v4, v2

    .line 376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    .line 388
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    const-string/jumbo v4, "mSignalStrength="

    .line 394
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 399
    aget-object v4, v4, v2

    .line 401
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    move-result-object v3

    .line 408
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    .line 413
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    const-string/jumbo v4, "mMessageWaiting="

    .line 419
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 424
    aget-boolean v4, v4, v2

    .line 426
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    .line 438
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    const-string/jumbo v4, "mCallForwarding="

    .line 444
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 449
    aget-boolean v4, v4, v2

    .line 451
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    move-result-object v3

    .line 458
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    .line 463
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    const-string/jumbo v4, "mDataActivity="

    .line 469
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 474
    aget v4, v4, v2

    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    move-result-object v3

    .line 483
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    .line 488
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    const-string/jumbo v4, "mDataConnectionState="

    .line 494
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 499
    aget v4, v4, v2

    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    move-result-object v3

    .line 508
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    .line 513
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    const-string/jumbo v4, "mCellIdentity="

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 524
    aget-object v4, v4, v2

    .line 526
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    move-result-object v3

    .line 533
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    .line 538
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    const-string/jumbo v4, "mCellInfo="

    .line 544
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 552
    move-result-object v4

    .line 553
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    .line 565
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    const-string/jumbo v4, "mImsCallDisconnectCause="

    .line 571
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 576
    check-cast v4, Ljava/util/ArrayList;

    .line 578
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 581
    move-result-object v4

    .line 582
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    move-result-object v3

    .line 589
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    .line 594
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    const-string/jumbo v4, "mSrvccState="

    .line 600
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 605
    aget v4, v4, v2

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    move-result-object v3

    .line 614
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    .line 619
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    const-string/jumbo v4, "mCallPreciseDisconnectCause="

    .line 625
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 630
    aget v4, v4, v2

    .line 632
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    .line 644
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    const-string/jumbo v4, "mCallQuality="

    .line 650
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 655
    aget-object v4, v4, v2

    .line 657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    move-result-object v3

    .line 664
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    .line 669
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    const-string/jumbo v4, "mCallNetworkType="

    .line 675
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 680
    aget v4, v4, v2

    .line 682
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    move-result-object v3

    .line 689
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    .line 694
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    const-string/jumbo v4, "mPreciseDataConnectionStates="

    .line 700
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 705
    check-cast v4, Ljava/util/ArrayList;

    .line 707
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 710
    move-result-object v4

    .line 711
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    move-result-object v3

    .line 718
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    .line 723
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    const-string/jumbo v4, "mOutgoingCallEmergencyNumber="

    .line 729
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 734
    aget-object v4, v4, v2

    .line 736
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 742
    move-result-object v3

    .line 743
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    .line 748
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    const-string/jumbo v4, "mOutgoingSmsEmergencyNumber="

    .line 754
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 759
    aget-object v4, v4, v2

    .line 761
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    move-result-object v3

    .line 768
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    .line 773
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    const-string/jumbo v4, "mBarringInfo="

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 784
    check-cast v4, Ljava/util/ArrayList;

    .line 786
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 789
    move-result-object v4

    .line 790
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    move-result-object v3

    .line 797
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    .line 802
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
    const-string/jumbo v4, "mCarrierNetworkChangeState="

    .line 808
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 813
    aget-boolean v4, v4, v2

    .line 815
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    move-result-object v3

    .line 822
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    .line 827
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    const-string/jumbo v4, "mTelephonyDisplayInfo="

    .line 833
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 838
    aget-object v4, v4, v2

    .line 840
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 846
    move-result-object v3

    .line 847
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    .line 852
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    const-string/jumbo v4, "mIsDataEnabled="

    .line 858
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 863
    aget-boolean v4, v4, v2

    .line 865
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 871
    move-result-object v3

    .line 872
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 875
    new-instance v3, Ljava/lang/StringBuilder;

    .line 877
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    const-string/jumbo v4, "mDataEnabledReason="

    .line 883
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 888
    aget v4, v4, v2

    .line 890
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    move-result-object v3

    .line 897
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    .line 902
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    const-string/jumbo v4, "mAllowedNetworkTypeReason="

    .line 908
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 913
    aget v4, v4, v2

    .line 915
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 918
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 921
    move-result-object v3

    .line 922
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    .line 927
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    const-string/jumbo v4, "mAllowedNetworkTypeValue="

    .line 933
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 938
    aget-wide v4, v4, v2

    .line 940
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 946
    move-result-object v3

    .line 947
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    .line 952
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    const-string/jumbo v4, "mPhysicalChannelConfigs="

    .line 958
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 963
    check-cast v4, Ljava/util/ArrayList;

    .line 965
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 968
    move-result-object v4

    .line 969
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 975
    move-result-object v3

    .line 976
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    .line 981
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 984
    const-string/jumbo v4, "mLinkCapacityEstimateList="

    .line 987
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    .line 992
    check-cast v4, Ljava/util/ArrayList;

    .line 994
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 997
    move-result-object v4

    .line 998
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1004
    move-result-object v3

    .line 1005
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1010
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    const-string/jumbo v4, "mECBMReason="

    .line 1016
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    .line 1021
    aget v4, v4, v2

    .line 1023
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    move-result-object v3

    .line 1030
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1035
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    const-string/jumbo v4, "mECBMStarted="

    .line 1041
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mECBMStarted:[Z

    .line 1046
    aget-boolean v4, v4, v2

    .line 1048
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1054
    move-result-object v3

    .line 1055
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1060
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1063
    const-string/jumbo v4, "mSCBMReason="

    .line 1066
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    .line 1071
    aget v4, v4, v2

    .line 1073
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1079
    move-result-object v3

    .line 1080
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1085
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    const-string/jumbo v4, "mSCBMStarted="

    .line 1091
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSCBMStarted:[Z

    .line 1096
    aget-boolean v4, v4, v2

    .line 1098
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1104
    move-result-object v3

    .line 1105
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1113
    const-string/jumbo v4, "mCarrierRoamingNtnMode="

    .line 1116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 1121
    aget-boolean v4, v4, v2

    .line 1123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1129
    move-result-object v3

    .line 1130
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    const-string/jumbo v4, "mCarrierRoamingNtnEligible="

    .line 1141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 1146
    aget-boolean v4, v4, v2

    .line 1148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1154
    move-result-object v3

    .line 1155
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1160
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1163
    const-string/jumbo v4, "mCarrierRoamingNtnSignalStrength="

    .line 1166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 1171
    aget-object v4, v4, v2

    .line 1173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1179
    move-result-object v3

    .line 1180
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 1185
    check-cast v3, Ljava/util/ArrayList;

    .line 1187
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1190
    move-result-object v3

    .line 1191
    check-cast v3, Landroid/util/Pair;

    .line 1193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1195
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1198
    const-string/jumbo v5, "mCarrierPrivilegeState=<packages="

    .line 1201
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1206
    check-cast v5, Ljava/util/List;

    .line 1208
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/util/List;)Ljava/lang/String;

    .line 1211
    move-result-object v5

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    const-string v5, ", uids="

    .line 1217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1222
    check-cast v3, [I

    .line 1224
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 1227
    move-result-object v3

    .line 1228
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    const-string v3, ">"

    .line 1233
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1239
    move-result-object v3

    .line 1240
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    .line 1245
    check-cast v3, Ljava/util/ArrayList;

    .line 1247
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1250
    move-result-object v3

    .line 1251
    check-cast v3, Landroid/util/Pair;

    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1255
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    const-string/jumbo v5, "mCarrierServiceState=<package="

    .line 1261
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1266
    check-cast v5, Ljava/lang/String;

    .line 1268
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1270
    if-eqz v6, :cond_1

    .line 1272
    goto :goto_1

    .line 1273
    :cond_1
    const-string v5, "***"

    .line 1275
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    const-string v5, ", uid="

    .line 1280
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1285
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1288
    const-string v3, ">"

    .line 1290
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1296
    move-result-object v3

    .line 1297
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1303
    add-int/lit8 v2, v2, 0x1

    .line 1305
    goto/16 :goto_0

    .line 1307
    :catchall_0
    move-exception p0

    .line 1308
    goto/16 :goto_3

    .line 1310
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1312
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    const-string/jumbo v3, "mPhoneCapability="

    .line 1318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 1323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1329
    move-result-object v2

    .line 1330
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1335
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1338
    const-string/jumbo v3, "mActiveDataSubId="

    .line 1341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 1346
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1352
    move-result-object v2

    .line 1353
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1358
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1361
    const-string/jumbo v3, "mRadioPowerState="

    .line 1364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 1369
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1375
    move-result-object v2

    .line 1376
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1381
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1384
    const-string/jumbo v3, "mEmergencyNumberList="

    .line 1387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 1392
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1398
    move-result-object v2

    .line 1399
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1404
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1407
    const-string/jumbo v3, "mDefaultPhoneId="

    .line 1410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 1415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1421
    move-result-object v2

    .line 1422
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1427
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1430
    const-string/jumbo v3, "mDefaultSubId="

    .line 1433
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 1438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1441
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1444
    move-result-object v2

    .line 1445
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1451
    const-string/jumbo v2, "local logs:"

    .line 1454
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1460
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 1462
    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1468
    const-string/jumbo v2, "listen logs:"

    .line 1471
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1477
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    .line 1479
    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1485
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1487
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    const-string/jumbo p3, "registrations: count="

    .line 1493
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1499
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1502
    move-result-object p1

    .line 1503
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1509
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 1511
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1514
    move-result-object p0

    .line 1515
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1518
    move-result p1

    .line 1519
    if-eqz p1, :cond_3

    .line 1521
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1524
    move-result-object p1

    .line 1525
    check-cast p1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1527
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1530
    goto :goto_2

    .line 1531
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1534
    monitor-exit p2

    .line 1535
    return-void

    .line 1536
    :goto_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    throw p0
.end method

.method public final getPhoneIdFromSubId(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v0, "telephony_subscription_service"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 12
    const/4 v0, -0x1

    .line 13
    if-nez p0, :cond_0

    .line 15
    return v0

    .line 16
    :cond_0
    const v1, 0x7fffffff

    .line 19
    if-ne p1, v1, :cond_1

    .line 21
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    .line 24
    move-result p1

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_2

    .line 31
    return v0

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final handleRemoveListLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/os/IBinder;

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 36
    :cond_1
    return-void
.end method

.method public final idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-gez p2, :cond_1

    .line 5
    iget p0, p1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 7
    if-ne p0, p3, :cond_0

    .line 9
    move v0, v1

    .line 10
    :cond_0
    return v0

    .line 11
    :cond_1
    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 13
    const p3, 0x7fffffff

    .line 16
    if-ne p1, p3, :cond_3

    .line 18
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 20
    if-ne p2, p0, :cond_2

    .line 22
    move v0, v1

    .line 23
    :cond_2
    return v0

    .line 24
    :cond_3
    if-ne p1, p2, :cond_4

    .line 26
    move v0, v1

    .line 27
    :cond_4
    return v0
.end method

.method public final listen(ZZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;Ljava/util/Set;ZI)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "listen: E pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    const-string v2, "***"

    .line 5
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " notifyNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " myUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 8
    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p6}, Ljava/util/Set;->clear()V

    .line 10
    invoke-interface {p5}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0, p6, p8, p3, p4}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-static {p8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_3

    const p8, 0x7fffffff

    .line 13
    :cond_3
    invoke-virtual {p0, p8}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 15
    :try_start_0
    invoke-interface {p5}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 18
    invoke-static {v3, v4}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result v3

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/server/TelephonyRegistry;->add(IILandroid/os/IBinder;Z)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v2

    if-nez v2, :cond_4

    .line 20
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2d

    .line 21
    :cond_4
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 22
    iput-object p5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 23
    iput-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 24
    iput-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 25
    iput-boolean p2, v2, Lcom/android/server/TelephonyRegistry$Record;->renounceCoarseLocationAccess:Z

    .line 26
    iput-boolean p1, v2, Lcom/android/server/TelephonyRegistry$Record;->renounceFineLocationAccess:Z

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 29
    iput p8, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 30
    iput v0, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 31
    iput-object p6, v2, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    if-eqz p7, :cond_36

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p3, 0x1d

    if-eqz p2, :cond_7

    .line 34
    :try_start_1
    new-instance p2, Landroid/telephony/ServiceState;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p4, p4, p5

    invoke-direct {p2, p4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 35
    invoke-virtual {p0, v2, p3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 36
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_1

    .line 37
    :cond_5
    invoke-virtual {p0, v2, p3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 38
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 p5, 0x0

    .line 39
    invoke-virtual {p2, p5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p2

    .line 40
    invoke-interface {p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_1

    .line 41
    :cond_6
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 42
    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p2

    .line 43
    invoke-interface {p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 44
    :catch_0
    :try_start_2
    iget-object p2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_7
    :goto_1
    const/4 p2, 0x2

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_9

    .line 46
    :try_start_3
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p4, p4, p5

    if-eqz p4, :cond_9

    .line 47
    invoke-virtual {p4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p4

    .line 48
    iget-object p5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 p7, 0x63

    if-ne p4, p7, :cond_8

    const/4 p4, -0x1

    :cond_8
    invoke-interface {p5, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 49
    :catch_1
    :try_start_4
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_9
    :goto_2
    const/4 p4, 0x3

    .line 50
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 51
    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p4, :cond_a

    .line 52
    :try_start_5
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    iget p7, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p5, p5, p7

    invoke-interface {p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 53
    :catch_2
    :try_start_6
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_a
    :goto_3
    const/4 p4, 0x4

    .line 54
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 55
    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p4, :cond_b

    .line 56
    :try_start_7
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    iget p7, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p5, p5, p7

    invoke-interface {p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 57
    :catch_3
    :try_start_8
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_b
    :goto_4
    const/4 p4, 0x5

    .line 58
    invoke-static {v2, p4}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p4, :cond_c

    .line 59
    :try_start_9
    invoke-virtual {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 60
    invoke-virtual {p0, v2, p3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 61
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    iget p7, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p5, p5, p7

    invoke-interface {p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 62
    :catch_4
    :try_start_a
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_c
    :goto_5
    const/16 p4, 0x24

    .line 63
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz p4, :cond_e

    .line 64
    :try_start_b
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget p7, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p5, p5, p7

    .line 65
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result p8

    if-eqz p8, :cond_d

    iget-object p8, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object p7, p8, p7

    goto :goto_6

    :cond_d
    const-string p7, ""

    .line 66
    :goto_6
    invoke-interface {p4, p5, p7}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    .line 67
    :catch_5
    :try_start_c
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_e
    :goto_7
    const/4 p4, 0x6

    .line 68
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz p4, :cond_f

    .line 69
    :try_start_d
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget p7, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p5, p5, p7

    invoke-interface {p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    .line 70
    :catch_6
    :try_start_e
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_f
    :goto_8
    const/4 p4, 0x7

    .line 71
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz p4, :cond_10

    .line 72
    :try_start_f
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    iget p7, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p5, p5, p7

    iget-object p8, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget p7, p8, p7

    invoke-interface {p4, p5, p7}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9

    .line 73
    :catch_7
    :try_start_10
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_10
    :goto_9
    const/16 p4, 0x8

    .line 74
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz p4, :cond_11

    .line 75
    :try_start_11
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    iget p7, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p5, p5, p7

    invoke-interface {p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_a

    .line 76
    :catch_8
    :try_start_12
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_11
    :goto_a
    const/16 p4, 0x9

    .line 77
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz p4, :cond_12

    .line 78
    :try_start_13
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p4, p4, p5

    if-eqz p4, :cond_12

    .line 79
    iget-object p5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p5, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_b

    .line 80
    :catch_9
    :try_start_14
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_12
    :goto_b
    const/16 p4, 0xb

    .line 81
    invoke-static {v2, p4}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz p4, :cond_13

    .line 82
    :try_start_15
    invoke-virtual {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p4

    if-eqz p4, :cond_13

    .line 83
    invoke-virtual {p0, v2, p3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 84
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_c

    .line 85
    :catch_a
    :try_start_16
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_13
    :goto_c
    const/16 p3, 0xc

    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz p3, :cond_14

    .line 87
    :try_start_17
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p4, p4, p5

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_d

    .line 88
    :catch_b
    :try_start_18
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_14
    :goto_d
    const/16 p3, 0x1a

    .line 89
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz p3, :cond_15

    .line 90
    :try_start_19
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p4, p4, p5

    iget-object p7, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget p5, p7, p5

    invoke-interface {p3, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_e

    .line 91
    :catch_c
    :try_start_1a
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_15
    :goto_e
    const/16 p3, 0x1c

    .line 92
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 93
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    iget p4, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/ims/ImsReasonInfo;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz p3, :cond_16

    .line 94
    :try_start_1b
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p4, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_f

    .line 95
    :catch_d
    :try_start_1c
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_16
    :goto_f
    const/16 p3, 0xd

    .line 96
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 97
    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz p3, :cond_17

    .line 98
    :try_start_1d
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    iget p4, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_10
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_17

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/PreciseDataConnectionState;

    .line 99
    iget-object p5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p5, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_10

    .line 100
    :catch_e
    :try_start_1e
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_17
    const/16 p3, 0x11

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    if-eqz p3, :cond_18

    .line 102
    :try_start_1f
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p4, p4, p5

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_11

    .line 103
    :catch_f
    :try_start_20
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_18
    :goto_11
    const/16 p3, 0x12

    .line 104
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    if-eqz p3, :cond_19

    .line 105
    :try_start_21
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p4, p4, p5

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_10
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto :goto_12

    .line 106
    :catch_10
    :try_start_22
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_19
    :goto_12
    const/16 p3, 0x13

    .line 107
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    if-eqz p3, :cond_1a

    .line 108
    :try_start_23
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p4, p4, p5

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_11
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_13

    .line 109
    :catch_11
    :try_start_24
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1a
    :goto_13
    const/16 p3, 0x14

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    if-eqz p3, :cond_1b

    .line 111
    :try_start_25
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p4, p4, p5

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_12
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto :goto_14

    .line 112
    :catch_12
    :try_start_26
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1b
    :goto_14
    const/16 p3, 0x15

    .line 113
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    if-eqz p3, :cond_1c

    .line 114
    :try_start_27
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget p4, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p3, p3, p4

    if-eqz p3, :cond_1c

    .line 115
    iget-object p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p4, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_13
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto :goto_15

    .line 116
    :catch_13
    :try_start_28
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1c
    :goto_15
    const/16 p3, 0x19

    .line 117
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    if-eqz p3, :cond_1d

    .line 118
    :try_start_29
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_14
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto :goto_16

    .line 119
    :catch_14
    :try_start_2a
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1d
    :goto_16
    const/16 p3, 0x16

    .line 120
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    if-eqz p3, :cond_1e

    .line 121
    :try_start_2b
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_15
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto :goto_17

    .line 122
    :catch_15
    :try_start_2c
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1e
    :goto_17
    const/16 p3, 0x17

    .line 123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 124
    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    if-eqz p3, :cond_1f

    .line 125
    :try_start_2d
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget p4, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_16
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto :goto_18

    .line 126
    :catch_16
    :try_start_2e
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1f
    :goto_18
    const/16 p3, 0x18

    .line 127
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    if-eqz p3, :cond_20

    .line 128
    :try_start_2f
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget p4, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_17
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto :goto_19

    .line 129
    :catch_17
    :try_start_30
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_20
    :goto_19
    const/16 p3, 0x10

    .line 130
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    if-eqz p3, :cond_21

    .line 131
    :try_start_31
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p4, p4, p5

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_18
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    goto :goto_1a

    .line 132
    :catch_18
    :try_start_32
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_21
    :goto_1a
    const/16 p3, 0x1b

    .line 133
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    if-eqz p3, :cond_22

    .line 134
    :try_start_33
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStatesChanged(Ljava/util/List;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_19
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto :goto_1b

    .line 135
    :catch_19
    :try_start_34
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_22
    :goto_1b
    const/16 p3, 0x20

    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_24

    .line 137
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    iget p4, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/BarringInfo;

    if-eqz p3, :cond_24

    .line 138
    invoke-virtual {p3}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    move-result-object p4
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 139
    :try_start_35
    iget-object p5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 140
    invoke-virtual {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p7

    if-eqz p7, :cond_23

    goto :goto_1c

    :cond_23
    move-object p3, p4

    .line 141
    :goto_1c
    invoke-interface {p5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_1a
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    goto :goto_1d

    .line 142
    :catch_1a
    :try_start_36
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_24
    :goto_1d
    const/16 p3, 0x21

    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 144
    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    if-eqz p3, :cond_26

    .line 145
    :try_start_37
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 146
    iget p4, v2, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    const/16 p5, 0x3e9

    if-eq p4, p5, :cond_25

    const/16 p5, 0x3e8

    if-eq p4, p5, :cond_25

    .line 147
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 148
    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 149
    invoke-static {p4}, Lcom/android/server/TelephonyRegistry;->getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    goto :goto_1e

    .line 150
    :cond_25
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 151
    :goto_1e
    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_1b
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    goto :goto_1f

    .line 152
    :catch_1b
    :try_start_38
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_26
    :goto_1f
    const/16 p3, 0x22

    .line 153
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 154
    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    if-eqz p3, :cond_27

    .line 155
    :try_start_39
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p4, p4, p5

    iget-object p7, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aget p5, p7, p5

    invoke-interface {p3, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataEnabledChanged(ZI)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_1c
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    goto :goto_20

    .line 156
    :catch_1c
    :try_start_3a
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_27
    :goto_20
    const/16 p3, 0x29

    .line 157
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    if-eqz p3, :cond_28

    .line 158
    :try_start_3b
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mSimultaneousCellularCallingSubIds:[I

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSimultaneousCallingStateChanged([I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_1d
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    goto :goto_21

    .line 159
    :catch_1d
    :try_start_3c
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_28
    :goto_21
    const/16 p3, 0x25

    .line 160
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 161
    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    if-eqz p3, :cond_29

    .line 162
    :try_start_3d
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget p4, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_29

    .line 163
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 164
    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 165
    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_1e
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    goto :goto_22

    .line 166
    :catch_1e
    :try_start_3e
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_29
    :goto_22
    const/16 p3, 0x27

    .line 167
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 168
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    iget p4, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/CallState;

    .line 169
    invoke-virtual {p4}, Landroid/telephony/CallState;->getCallState()I

    move-result p5

    if-ne p5, p1, :cond_2a

    goto :goto_23

    :cond_2b
    const/4 p4, 0x0

    :goto_23
    if-eqz p4, :cond_2d

    .line 170
    invoke-virtual {p4}, Landroid/telephony/CallState;->getImsCallSessionId()Ljava/lang/String;

    move-result-object p3
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    .line 171
    :try_start_3f
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/MediaQualityStatus;

    if-eqz p4, :cond_2c

    .line 172
    invoke-virtual {p4}, Landroid/telephony/ims/MediaQualityStatus;->getCallSessionId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2c

    .line 173
    iget-object p5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p5, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    .line 174
    :cond_2c
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    iget p5, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/MediaQualityStatus;

    if-eqz p4, :cond_2d

    .line 175
    invoke-virtual {p4}, Landroid/telephony/ims/MediaQualityStatus;->getCallSessionId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 176
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_3f} :catch_1f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    goto :goto_24

    .line 177
    :catch_1f
    :try_start_40
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_2d
    :goto_24
    const/16 p3, 0x28

    .line 178
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    if-eqz p3, :cond_30

    .line 179
    :try_start_41
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mECBMStarted:[Z

    iget p4, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p3, p3, p4

    if-eqz p3, :cond_2e

    .line 180
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallBackModeStarted(I)V

    goto :goto_25

    .line 181
    :cond_2e
    iget-object p3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    aget p4, p5, p4

    invoke-interface {p3, p1, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallBackModeStopped(II)V

    .line 182
    :goto_25
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSCBMStarted:[Z

    iget p3, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p1, p1, p3

    if-eqz p1, :cond_2f

    .line 183
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallBackModeStarted(I)V

    goto :goto_26

    .line 184
    :cond_2f
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    aget p3, p4, p3

    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallBackModeStopped(II)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_41} :catch_20
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    goto :goto_26

    .line 185
    :catch_20
    :try_start_42
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_30
    :goto_26
    const/16 p1, 0x2a

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    if-eqz p1, :cond_31

    .line 187
    :try_start_43
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    iget p3, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p2, p2, p3

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnModeChanged(Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_43} :catch_21
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    goto :goto_27

    .line 188
    :catch_21
    :try_start_44
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_31
    :goto_27
    const/16 p1, 0x2b

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 190
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    if-eqz p1, :cond_32

    .line 191
    :try_start_45
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    iget p3, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p2, p2, p3

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnEligibleStateChanged(Z)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_45} :catch_22
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    goto :goto_28

    .line 192
    :catch_22
    :try_start_46
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_32
    :goto_28
    const/16 p1, 0x2c

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 194
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    if-eqz p1, :cond_33

    .line 195
    :try_start_47
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    iget p3, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 196
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    .line 197
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnAvailableServicesChanged([I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_47} :catch_23
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    goto :goto_29

    .line 198
    :catch_23
    :try_start_48
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_33
    :goto_29
    const/16 p1, 0x2d

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 200
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_0

    if-eqz p1, :cond_34

    .line 201
    :try_start_49
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    iget p3, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p2, p2, p3

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_49} :catch_24
    .catchall {:try_start_49 .. :try_end_49} :catchall_0

    goto :goto_2a

    .line 202
    :catch_24
    :try_start_4a
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_34
    :goto_2a
    const/16 p1, 0x2710

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 204
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 205
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0

    if-eqz p1, :cond_35

    .line 206
    :try_start_4b
    iget-object p2, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p2, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSemSatelliteServiceStateChanged(Landroid/telephony/satellite/SemSatelliteServiceState;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4b} :catch_25
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0

    goto :goto_2b

    .line 207
    :catch_25
    :try_start_4c
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_35
    :goto_2b
    const/16 p1, 0x2711

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 209
    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 210
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0

    if-eqz p1, :cond_36

    .line 211
    :try_start_4d
    iget-object p2, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p2, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSemSatelliteSignalStrengthChanged(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_4d} :catch_26
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0

    goto :goto_2c

    .line 212
    :catch_26
    :try_start_4e
    iget-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 213
    :cond_36
    :goto_2c
    monitor-exit v1

    return-void

    :goto_2d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0

    throw p0
.end method

.method public final listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V
    .locals 10

    .line 1
    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    move-object v7, v0

    .line 18
    check-cast v7, Ljava/util/Set;

    .line 20
    move-object v1, p0

    .line 21
    move v2, p1

    .line 22
    move v3, p2

    .line 23
    move-object v4, p4

    .line 24
    move-object v5, p5

    .line 25
    move-object/from16 v6, p6

    .line 27
    move/from16 v8, p8

    .line 29
    move v9, p3

    .line 30
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->listen(ZZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;Ljava/util/Set;ZI)V

    .line 33
    return-void
.end method

.method public final notifyActiveDataSubIdChanged(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v1, "notifyActiveDataSubIdChanged: activeDataSubId="

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v2, "notifyActiveDataSubIdChanged: activeDataSubId="

    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 46
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 48
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 50
    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v1

    .line 57
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 69
    const/16 v3, 0x17

    .line 71
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 74
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v3, :cond_1

    .line 77
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 79
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 87
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 89
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p0
.end method

.method public final notifyAllowedNetworkTypesChanged(IIIJ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 19
    aput p3, v1, p1

    .line 21
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 23
    aput-wide p4, v1, p1

    .line 25
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    const/16 v3, 0x23

    .line 45
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 54
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v3, :cond_1

    .line 57
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 59
    invoke-interface {v3, p3, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onAllowedNetworkTypesChanged(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 67
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 69
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    .locals 6

    .line 1
    const-string v0, "Received null BarringInfo for subId="

    .line 3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    const-string p2, "Received invalid phoneId for BarringInfo = "

    .line 20
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 36
    monitor-enter v1

    .line 37
    if-nez p3, :cond_2

    .line 39
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string p2, ", phoneId="

    .line 49
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 64
    new-instance p2, Landroid/telephony/BarringInfo;

    .line 66
    invoke-direct {p2}, Landroid/telephony/BarringInfo;-><init>()V

    .line 69
    check-cast p0, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 80
    check-cast v0, Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p3, v0}, Landroid/telephony/BarringInfo;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 96
    check-cast v0, Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v0, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p3}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    .line 104
    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object v2

    .line 111
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_6

    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 123
    const/16 v4, 0x20

    .line 125
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_4

    .line 131
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 134
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v4, :cond_4

    .line 137
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 139
    const/4 v5, 0x1

    .line 140
    invoke-virtual {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_5

    .line 146
    move-object v5, p3

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    move-object v5, v0

    .line 149
    :goto_1
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    goto :goto_0

    .line 153
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 155
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 157
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    goto :goto_0

    .line 161
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 166
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    throw p0
.end method

.method public final notifyCallForwardingChanged(Z)V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 7
    return-void
.end method

.method public final notifyCallForwardingChangedForSubscriber(IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 21
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 23
    aput-boolean p2, v2, v0

    .line 25
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    const/4 v4, 0x4

    .line 44
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 50
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 53
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v4, :cond_1

    .line 56
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 58
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 66
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 68
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p0
.end method

.method public final notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_7

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 19
    aget v2, v1, p2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v2, p4, :cond_1

    .line 25
    move v2, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v3

    .line 28
    :goto_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 30
    aput-object p1, v5, p2

    .line 32
    aput p4, v1, p2

    .line 34
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/List;

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 45
    move-result v1

    .line 46
    if-gtz v1, :cond_2

    .line 48
    const-string p0, "There is no call to report CallQuality"

    .line 50
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_4

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ljava/util/List;

    .line 66
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/telephony/CallState;

    .line 72
    invoke-virtual {v1}, Landroid/telephony/CallState;->getCallState()I

    .line 75
    move-result v1

    .line 76
    if-eq v1, v4, :cond_3

    .line 78
    if-nez v2, :cond_3

    .line 80
    const-string p0, "There is no active call to report CallQuality and call network type is not changed"

    .line 82
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 87
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Ljava/util/Collection;

    .line 100
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ljava/util/List;

    .line 111
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v1

    .line 118
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_5

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Landroid/telephony/CallState;

    .line 130
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Ljava/util/List;

    .line 138
    new-instance v5, Landroid/telephony/CallState$Builder;

    .line 140
    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallState()I

    .line 143
    move-result v6

    .line 144
    invoke-direct {v5, v6}, Landroid/telephony/CallState$Builder;-><init>(I)V

    .line 147
    invoke-virtual {v5, p4}, Landroid/telephony/CallState$Builder;->setNetworkType(I)Landroid/telephony/CallState$Builder;

    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallState()I

    .line 154
    move-result v6

    .line 155
    if-ne v6, v4, :cond_4

    .line 157
    move-object v6, p1

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    .line 162
    move-result-object v6

    .line 163
    :goto_2
    invoke-virtual {v5, v6}, Landroid/telephony/CallState$Builder;->setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;

    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallClassification()I

    .line 170
    move-result v6

    .line 171
    invoke-virtual {v5, v6}, Landroid/telephony/CallState$Builder;->setCallClassification(I)Landroid/telephony/CallState$Builder;

    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v2}, Landroid/telephony/CallState;->getImsCallSessionId()Ljava/lang/String;

    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v5, v6}, Landroid/telephony/CallState$Builder;->setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;

    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v2}, Landroid/telephony/CallState;->getImsCallServiceType()I

    .line 186
    move-result v6

    .line 187
    invoke-virtual {v5, v6}, Landroid/telephony/CallState$Builder;->setImsCallServiceType(I)Landroid/telephony/CallState$Builder;

    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v2}, Landroid/telephony/CallState;->getImsCallType()I

    .line 194
    move-result v2

    .line 195
    invoke-virtual {v5, v2}, Landroid/telephony/CallState$Builder;->setImsCallType(I)Landroid/telephony/CallState$Builder;

    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Landroid/telephony/CallState$Builder;->build()Landroid/telephony/CallState;

    .line 202
    move-result-object v2

    .line 203
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    goto :goto_1

    .line 207
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const-string/jumbo v1, "notifyCallQualityChanged - phoneId: "

    .line 215
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", subId: "

    .line 223
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, ", callNetworkType: "

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string p4, ", callState: "

    .line 239
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object p4

    .line 248
    check-cast p4, Ljava/util/List;

    .line 250
    invoke-static {p4}, Lcom/android/internal/telephony/SemTelephonyUtils;->callStateListToString(Ljava/util/List;)Ljava/lang/String;

    .line 253
    move-result-object p4

    .line 254
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 261
    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    move-result-object p1

    .line 270
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    move-result p4

    .line 274
    if-eqz p4, :cond_7

    .line 276
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    move-result-object p4

    .line 280
    check-cast p4, Lcom/android/server/TelephonyRegistry$Record;

    .line 282
    const/16 v1, 0x1b

    .line 284
    invoke-virtual {p4, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_6

    .line 290
    invoke-virtual {p0, p4, p3, p2}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 293
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-eqz v1, :cond_6

    .line 296
    :try_start_1
    iget-object v1, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 298
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 300
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Ljava/util/List;

    .line 306
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStatesChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    goto :goto_3

    .line 310
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 312
    iget-object p4, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 314
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    goto :goto_3

    .line 318
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 321
    monitor-exit v0

    .line 322
    return-void

    .line 323
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    throw p0
.end method

.method public final notifyCallState(IIILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string/jumbo p0, "notifyCallState: checkNotifyPermission condition not met"

    .line 10
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v2, "notifyCallState: subId="

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, " state="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4

    .line 51
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 53
    aput p3, v1, p1

    .line 55
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 57
    aput-object p4, v1, p1

    .line 59
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v1

    .line 65
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 77
    const/16 v3, 0x24

    .line 79
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 82
    move-result v3

    .line 83
    const v4, 0x7fffffff

    .line 86
    if-eqz v3, :cond_3

    .line 88
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-ne v3, p2, :cond_3

    .line 92
    if-eq v3, v4, :cond_3

    .line 94
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 102
    aget-object v3, v3, p1

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-string v3, ""

    .line 107
    :goto_1
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 109
    invoke-interface {v5, p3, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto :goto_3

    .line 115
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 117
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 119
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    :goto_2
    const/4 v3, 0x6

    .line 123
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_1

    .line 129
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    if-ne v3, p2, :cond_1

    .line 133
    if-eq v3, v4, :cond_1

    .line 135
    :try_start_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 137
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    goto :goto_0

    .line 141
    :catch_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 143
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 145
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 152
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(IIILjava/lang/String;)V

    .line 156
    return-void

    .line 157
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    throw p0
.end method

.method public final notifyCallStateForAllSubs(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "notifyCallStateForAllSubs: state="

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v1

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_4

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 49
    const/16 v3, 0x24

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 54
    move-result v3

    .line 55
    const v4, 0x7fffffff

    .line 58
    if-eqz v3, :cond_3

    .line 60
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-ne v3, v4, :cond_3

    .line 64
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 70
    move-object v3, p2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string v3, ""

    .line 74
    :goto_1
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 76
    invoke-interface {v5, p1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 84
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 86
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_3
    :goto_2
    const/4 v3, 0x6

    .line 90
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_1

    .line 96
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-ne v3, v4, :cond_1

    .line 100
    :try_start_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 102
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    goto :goto_0

    .line 106
    :catch_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 108
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 110
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 117
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    const/4 v0, -0x1

    .line 119
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(IIILjava/lang/String;)V

    .line 122
    return-void

    .line 123
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    throw p0
.end method

.method public final notifyCallbackModeStarted(III)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter p2

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p3, v0, :cond_1

    .line 20
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mECBMStarted:[Z

    .line 22
    aput-boolean v0, v1, p1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    const/4 v1, 0x2

    .line 28
    if-ne p3, v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSCBMStarted:[Z

    .line 32
    aput-boolean v0, v1, p1

    .line 34
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p1

    .line 40
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_4

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 52
    const/16 v1, 0x28

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 57
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v1, :cond_3

    .line 60
    :try_start_1
    iget-object v1, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 62
    invoke-interface {v1, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallBackModeStarted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 68
    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 78
    return-void

    .line 79
    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    throw p0
.end method

.method public final notifyCallbackModeStopped(IIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter p2

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-ne p3, v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mECBMStarted:[Z

    .line 23
    aput-boolean v1, v0, p1

    .line 25
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    .line 27
    aput p4, v0, p1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const/4 v0, 0x2

    .line 33
    if-ne p3, v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSCBMStarted:[Z

    .line 37
    aput-boolean v1, v0, p1

    .line 39
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    .line 41
    aput p4, v0, p1

    .line 43
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p1

    .line 49
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 61
    const/16 v1, 0x28

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 66
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v1, :cond_3

    .line 69
    :try_start_1
    iget-object v1, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 71
    invoke-interface {v1, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallBackModeStopped(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 77
    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 87
    return-void

    .line 88
    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    throw p0
.end method

.method public final notifyCarrierConfigChanged(IIII)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    const-string p0, "Caller has no notify permission!"

    .line 15
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 45
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierConfigChangeListener:Lcom/android/internal/telephony/ICarrierConfigChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v3, :cond_1

    .line 49
    :try_start_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/telephony/ICarrierConfigChangeListener;->onCarrierConfigChanged(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 57
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 59
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    const-string p2, "Invalid phoneId: "

    .line 74
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p0
.end method

.method public final notifyCarrierNetworkChange(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;

    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 34
    array-length v1, v0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_0

    .line 38
    aget v3, v0, v2

    .line 40
    invoke-virtual {p0, v3, p1}, Lcom/android/server/TelephonyRegistry;->notifyCarrierNetworkChangeWithPermission(IZ)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    const-string/jumbo p0, "notifyCarrierNetworkChange without carrier privilege"

    .line 50
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 53
    new-instance p1, Ljava/lang/SecurityException;

    .line 55
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method

.method public final notifyCarrierNetworkChangeWithPermission(IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 10
    aput-boolean p2, v2, v0

    .line 12
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 30
    const/16 v4, 0x11

    .line 32
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 41
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v4, :cond_0

    .line 44
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 46
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 54
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 56
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p0
.end method

.method public final notifyCarrierNetworkChangeWithSubId(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyCarrierNetworkChangeWithPermission(IZ)V

    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    const-string/jumbo p2, "notifyCarrierNetworkChange without carrier privilege on subId "

    .line 18
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0
.end method

.method public final notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V
    .locals 6

    .line 1
    const-string v0, "Invalid slot index: "

    .line 3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 13
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_4

    .line 22
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 24
    new-instance v2, Landroid/util/Pair;

    .line 26
    invoke-direct {v2, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 40
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 52
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 54
    if-eqz v3, :cond_1

    .line 56
    const/4 v3, -0x1

    .line 57
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 60
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-nez v3, :cond_2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 66
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 69
    move-result-object v4

    .line 70
    array-length v5, p3

    .line 71
    invoke-static {p3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 74
    move-result-object v5

    .line 75
    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/List;[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 83
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 85
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 94
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    throw p0

    .line 112
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    throw p0
.end method

.method public final notifyCarrierRoamingNtnAvailableServicesChanged(I[I)V
    .locals 5

    .line 1
    const-string v0, "Invalid phone ID "

    .line 3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string/jumbo p0, "notifyCarrierRoamingNtnAvailableServicesChanged: caller does not have required permissions."

    .line 12
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p2, " for "

    .line 39
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v0, Landroid/util/IntArray;

    .line 58
    array-length v3, p2

    .line 59
    invoke-direct {v0, v3}, Landroid/util/IntArray;-><init>(I)V

    .line 62
    invoke-virtual {v0, p2}, Landroid/util/IntArray;->addAll([I)V

    .line 65
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    .line 67
    check-cast v3, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v0

    .line 78
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 90
    const/16 v4, 0x2c

    .line 92
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_2

    .line 98
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 101
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v4, :cond_2

    .line 104
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 106
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnAvailableServicesChanged([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 112
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 114
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 123
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    throw p0
.end method

.method public final notifyCarrierRoamingNtnEligibleStateChanged(IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string/jumbo p0, "notifyCarrierRoamingNtnEligibleStateChanged: caller does not have required permissions."

    .line 10
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 23
    aput-boolean p2, v2, v1

    .line 25
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    const/16 v4, 0x2b

    .line 45
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 54
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v4, :cond_1

    .line 57
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 59
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnEligibleStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 67
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 69
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final notifyCarrierRoamingNtnModeChanged(IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 17
    aput-boolean p2, v2, v1

    .line 19
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v2

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 37
    const/16 v4, 0x2a

    .line 39
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 48
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v4, :cond_1

    .line 51
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 53
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnModeChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 61
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 63
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw p0
.end method

.method public final notifyCarrierRoamingNtnSignalStrengthChanged(ILandroid/telephony/satellite/NtnSignalStrength;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string/jumbo p0, "nnotifyCarrierRoamingNtnSignalStrengthChanged: caller does not have required permissions."

    .line 10
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 23
    aput-object p2, v2, v1

    .line 25
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    const/16 v4, 0x2d

    .line 45
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 54
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v4, :cond_1

    .line 57
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 59
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 67
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 69
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final notifyCarrierServiceChanged(ILjava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 18
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    .line 23
    new-instance v2, Landroid/util/Pair;

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v1

    .line 43
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 55
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 57
    if-eqz v3, :cond_2

    .line 59
    const/4 v3, -0x1

    .line 60
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 63
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-nez v3, :cond_3

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 69
    invoke-interface {v3, p2, p3}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 77
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 79
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0
.end method

.method public final notifyCellInfo(Ljava/util/List;)V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 7
    return-void
.end method

.method public final notifyCellInfoForSubscriber(ILjava/util/List;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 10
    const-string/jumbo p2, "notifyCellInfoForSubscriber() received a null list"

    .line 13
    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 16
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 18
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 31
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v2

    .line 42
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_3

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 54
    const/16 v4, 0xb

    .line 56
    invoke-static {v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 62
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-virtual {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 75
    const/16 v4, 0x1d

    .line 77
    invoke-virtual {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 80
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v4, :cond_2

    .line 83
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 85
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 93
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 95
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 104
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    throw p0
.end method

.method public final notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V

    return-void
.end method

.method public final notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V
    .locals 4

    .line 2
    const-string/jumbo v0, "notifyCellLocationForSubscriber: subId="

    const-string v1, " cellIdentity="

    .line 3
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v1, p2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object p3, p3, v0

    .line 10
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 11
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object p2, p3, v0

    .line 12
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v3, 0x5

    .line 13
    invoke-static {v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 15
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1d

    .line 16
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 17
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 18
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 20
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final notifyDataActivityForSubscriber(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 21
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 23
    aput p2, v2, v0

    .line 25
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    const/16 v4, 0x8

    .line 45
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 54
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v4, :cond_1

    .line 57
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 59
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 67
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 69
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final notifyDataActivityForSubscriberWithSlot(III)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 19
    aput p3, v1, p1

    .line 21
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 39
    const/16 v3, 0x8

    .line 41
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 50
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v3, :cond_1

    .line 53
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 55
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 63
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 65
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0
.end method

.method public final notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_d

    .line 17
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_d

    .line 23
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getTransportType()I

    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 41
    check-cast v2, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/Map;

    .line 49
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    .line 55
    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v2

    .line 67
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 79
    const/16 v4, 0xd

    .line 81
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_1

    .line 87
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 90
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v4, :cond_1

    .line 93
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 95
    invoke-interface {v4, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto/16 :goto_5

    .line 102
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 104
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 106
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IILandroid/telephony/PreciseDataConnectionState;)V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string/jumbo v3, "notifyDataConnectionForSubscriber: phoneId="

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, " subId="

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, " "

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 150
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 155
    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 158
    :cond_3
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_4

    .line 164
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 166
    check-cast v2, Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Ljava/util/Map;

    .line 174
    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_4
    new-instance v1, Landroid/util/ArrayMap;

    .line 179
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 182
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    .line 185
    move-result v2

    .line 186
    const/16 v3, 0x11

    .line 188
    const/4 v4, 0x0

    .line 189
    if-nez v2, :cond_5

    .line 191
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    .line 198
    move-result-object v2

    .line 199
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v5

    .line 203
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_5

    .line 209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_5
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 218
    check-cast p3, Ljava/util/ArrayList;

    .line 220
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object p3

    .line 224
    check-cast p3, Ljava/util/Map;

    .line 226
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 229
    move-result-object p3

    .line 230
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 233
    move-result-object p3

    .line 234
    :cond_6
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    move-result v2

    .line 238
    const/4 v5, 0x1

    .line 239
    if-eqz v2, :cond_7

    .line 241
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Ljava/util/Map$Entry;

    .line 247
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 250
    move-result-object v6

    .line 251
    check-cast v6, Landroid/util/Pair;

    .line 253
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 255
    check-cast v6, Ljava/lang/Integer;

    .line 257
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 260
    move-result v6

    .line 261
    if-ne v6, v5, :cond_6

    .line 263
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Landroid/util/Pair;

    .line 269
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 271
    check-cast v5, Landroid/telephony/data/ApnSetting;

    .line 273
    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    .line 276
    move-result-object v5

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    move-result-object v6

    .line 281
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 284
    move-result v5

    .line 285
    if-eqz v5, :cond_6

    .line 287
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 290
    move-result-object v5

    .line 291
    check-cast v5, Landroid/telephony/PreciseDataConnectionState;

    .line 293
    invoke-virtual {v5}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    .line 296
    move-result v5

    .line 297
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    move-result-object v5

    .line 301
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 304
    move-result-object v2

    .line 305
    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    .line 307
    invoke-virtual {v1, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    goto :goto_1

    .line 311
    :cond_7
    const/4 p3, 0x3

    .line 312
    const/4 v2, 0x4

    .line 313
    const/4 v3, 0x2

    .line 314
    filled-new-array {v3, p3, v5, v2, v4}, [I

    .line 317
    move-result-object p3

    .line 318
    move v2, v4

    .line 319
    :goto_2
    const/4 v3, 0x5

    .line 320
    if-ge v2, v3, :cond_9

    .line 322
    aget v3, p3, v2

    .line 324
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    move-result-object v5

    .line 328
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 331
    move-result v5

    .line 332
    if-eqz v5, :cond_8

    .line 334
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    move-result-object p3

    .line 338
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    move-result-object p3

    .line 342
    check-cast p3, Landroid/telephony/PreciseDataConnectionState;

    .line 344
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getNetworkType()I

    .line 347
    move-result v4

    .line 348
    move p3, v4

    .line 349
    move v4, v3

    .line 350
    goto :goto_3

    .line 351
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 353
    goto :goto_2

    .line 354
    :cond_9
    move p3, v4

    .line 355
    :goto_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 357
    aget v1, v1, p1

    .line 359
    if-ne v1, v4, :cond_a

    .line 361
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 363
    aget v1, v1, p1

    .line 365
    if-eq v1, p3, :cond_d

    .line 367
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 369
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    const-string/jumbo v2, "onDataConnectionStateChanged("

    .line 375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {v4}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v2, ", "

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v2, ") subId="

    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    const-string v2, ", phoneId="

    .line 407
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object v1

    .line 417
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 422
    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 430
    move-result-object v1

    .line 431
    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    move-result v2

    .line 435
    if-eqz v2, :cond_c

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 443
    const/4 v3, 0x7

    .line 444
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 447
    move-result v3

    .line 448
    if-eqz v3, :cond_b

    .line 450
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 453
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    if-eqz v3, :cond_b

    .line 456
    :try_start_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 458
    invoke-interface {v3, v4, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 461
    goto :goto_4

    .line 462
    :catch_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 464
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 466
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    goto :goto_4

    .line 470
    :cond_c
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 472
    aput v4, p2, p1

    .line 474
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 476
    aput p3, p2, p1

    .line 478
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 481
    :cond_d
    monitor-exit v0

    .line 482
    return-void

    .line 483
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 484
    throw p0
.end method

.method public final notifyDataEnabled(IIZI)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 19
    aput-boolean p3, v1, p1

    .line 21
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 23
    aput p4, v1, p1

    .line 25
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    const/16 v3, 0x22

    .line 45
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 54
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v3, :cond_1

    .line 57
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 59
    invoke-interface {v3, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataEnabledChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 67
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 69
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final notifyDisconnectCause(IIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 19
    aput p3, v1, p1

    .line 21
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 23
    aput p4, p3, p1

    .line 25
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p3

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result p4

    .line 35
    if-eqz p4, :cond_2

    .line 37
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object p4

    .line 41
    check-cast p4, Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    const/16 v1, 0x1a

    .line 45
    invoke-virtual {p4, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0, p4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 54
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v1, :cond_1

    .line 57
    :try_start_1
    iget-object v1, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 59
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 61
    aget v2, v2, p1

    .line 63
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 65
    aget v3, v3, p1

    .line 67
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 75
    iget-object p4, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 77
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw p0
.end method

.method public final notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "notifyDisplayInfoChanged: PhoneId="

    .line 11
    const-string v1, " subId="

    .line 13
    const-string v2, " telephonyDisplayInfo="

    .line 15
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 28
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_5

    .line 40
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 42
    aput-object p3, v1, p1

    .line 44
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v1

    .line 50
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_5

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 62
    const/16 v3, 0x15

    .line 64
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 73
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz v3, :cond_1

    .line 76
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 78
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    new-instance v3, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;

    .line 89
    const/4 v6, 0x1

    .line 90
    invoke-direct {v3, v6, v5, v4}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 93
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/lang/Boolean;

    .line 99
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_4

    .line 105
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 107
    invoke-virtual {p3}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    .line 110
    move-result v4

    .line 111
    invoke-virtual {p3}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    .line 114
    move-result v5

    .line 115
    const/16 v6, 0x14

    .line 117
    if-ne v4, v6, :cond_2

    .line 119
    const/4 v5, 0x0

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    const/16 v6, 0xd

    .line 123
    if-ne v4, v6, :cond_3

    .line 125
    const/4 v6, 0x5

    .line 126
    if-ne v5, v6, :cond_3

    .line 128
    const/4 v5, 0x4

    .line 129
    :cond_3
    :goto_1
    invoke-virtual {p3}, Landroid/telephony/TelephonyDisplayInfo;->isRoaming()Z

    .line 132
    move-result v6

    .line 133
    new-instance v7, Landroid/telephony/TelephonyDisplayInfo;

    .line 135
    invoke-direct {v7, v4, v5, v6}, Landroid/telephony/TelephonyDisplayInfo;-><init>(IIZ)V

    .line 138
    invoke-interface {v3, v7}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 146
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    goto :goto_0

    .line 150
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 152
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 154
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 163
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    throw p0
.end method

.method public final notifyEmergencyNumberList(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->enforceTelephonyFeatureMappingForPublicApis()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "android.hardware.telephony.calling"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 38
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 40
    const-string/jumbo v2, "phone"

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 49
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 55
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v1

    .line 61
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 73
    const/16 v3, 0x19

    .line 75
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 84
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-eqz v3, :cond_2

    .line 87
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 89
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 91
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_1

    .line 97
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 99
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 101
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    throw p0
.end method

.method public final notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 5

    .line 1
    const-string v0, "ImsReasonInfo is null, subId="

    .line 3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_3

    .line 23
    if-nez p2, :cond_1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, ", phoneId="

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 50
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 52
    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 55
    check-cast p0, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v2

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 66
    check-cast v0, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object p2

    .line 77
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 83
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 89
    const/16 v3, 0x1c

    .line 91
    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 97
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 100
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v3, :cond_2

    .line 103
    :try_start_1
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 105
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 107
    check-cast v4, Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 115
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    goto :goto_0

    .line 119
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 121
    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 123
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 130
    monitor-exit v2

    .line 131
    return-void

    .line 132
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    throw p0
.end method

.method public final notifyLinkCapacityEstimateChanged(IILjava/util/List;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 42
    const/16 v3, 0x25

    .line 44
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 53
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v3, :cond_1

    .line 56
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 58
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 66
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 68
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p0
.end method

.method public final notifyMediaQualityStatusChanged(IILandroid/telephony/ims/MediaQualityStatus;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_7

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/List;

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    move-result v1

    .line 29
    if-lez v1, :cond_5

    .line 31
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/List;

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v1

    .line 43
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/telephony/CallState;

    .line 55
    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallState()I

    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x1

    .line 60
    if-ne v3, v4, :cond_1

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto/16 :goto_3

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    :goto_0
    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {v2}, Landroid/telephony/CallState;->getImsCallSessionId()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p3}, Landroid/telephony/ims/MediaQualityStatus;->getCallSessionId()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 85
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    .line 87
    check-cast v1, Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/util/SparseArray;

    .line 95
    invoke-virtual {p3}, Landroid/telephony/ims/MediaQualityStatus;->getMediaSessionType()I

    .line 98
    move-result v2

    .line 99
    invoke-virtual {v1, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string p1, "SessionId mismatch active call:"

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string p1, " media quality:"

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p3}, Landroid/telephony/ims/MediaQualityStatus;->getCallSessionId()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 135
    monitor-exit v0

    .line 136
    return-void

    .line 137
    :cond_4
    const-string p0, "There is no active call to report CallQaulity"

    .line 139
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 144
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v1

    .line 150
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_7

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 162
    const/16 v3, 0x27

    .line 164
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_6

    .line 170
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 173
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-eqz v3, :cond_6

    .line 176
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 178
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    goto :goto_2

    .line 182
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 184
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 186
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    goto :goto_2

    .line 190
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 195
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    throw p0
.end method

.method public final notifyMessageWaitingChangedForPhoneId(IIZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 19
    aput-boolean p3, v1, p1

    .line 21
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 39
    const/4 v3, 0x3

    .line 40
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 49
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz v3, :cond_1

    .line 52
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 54
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 62
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 64
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw p0
.end method

.method public final notifyOemHookRawEventForSubscriber(II[B)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 35
    const/16 v3, 0xf

    .line 37
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 46
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v3, :cond_1

    .line 49
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 51
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 59
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 61
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

.method public final notifyOpportunisticSubscriptionInfoChanged()V
    .locals 4

    .line 1
    const-string/jumbo v0, "notifyOpptSubscriptionInfoChanged: first invocation mRecords.size="

    .line 4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 16
    if-nez v2, :cond_1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 45
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 68
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-eqz v3, :cond_2

    .line 72
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 78
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 80
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 89
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    throw p0
.end method

.method public final notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 19
    aput-object p3, v1, p1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p1

    .line 30
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 42
    const/16 v2, 0x1d

    .line 44
    invoke-virtual {v1, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 47
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v2, :cond_2

    .line 50
    :try_start_1
    iget-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 52
    invoke-interface {v2, p3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 58
    iget-object v1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 60
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 68
    return-void

    .line 69
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    throw p0
.end method

.method public final notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 19
    aput-object p3, v1, p1

    .line 21
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 39
    const/16 v2, 0x1e

    .line 41
    invoke-virtual {v1, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 44
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v2, :cond_1

    .line 47
    :try_start_1
    iget-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 49
    invoke-interface {v2, p3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 57
    iget-object v1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p0
.end method

.method public final notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 13
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 31
    const/16 v3, 0x16

    .line 33
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 36
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v3, :cond_1

    .line 39
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 41
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 49
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 51
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw p0
.end method

.method public final notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 21
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v2, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v2

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 46
    const/16 v4, 0x21

    .line 48
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 57
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v4, :cond_1

    .line 60
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 62
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 64
    const/16 v6, 0x3e9

    .line 66
    if-eq v5, v6, :cond_2

    .line 68
    const/16 v6, 0x3e8

    .line 70
    if-eq v5, v6, :cond_2

    .line 72
    move-object v5, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move-object v5, p3

    .line 75
    :goto_1
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 83
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 85
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 94
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    throw p0
.end method

.method public final notifyPreciseCallState(II[I[Ljava/lang/String;[I[I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    aget v10, p3, v3

    .line 17
    const/4 v11, 0x1

    .line 18
    aget v12, p3, v11

    .line 20
    const/4 v13, 0x2

    .line 21
    aget v14, p3, v13

    .line 23
    iget-object v15, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 25
    monitor-enter v15

    .line 26
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_12

    .line 32
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 34
    aput v10, v4, v1

    .line 36
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 38
    aput v12, v4, v1

    .line 40
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 42
    aput v14, v4, v1

    .line 44
    new-instance v9, Landroid/telephony/PreciseCallState;

    .line 46
    const/4 v8, -0x1

    .line 47
    const/16 v16, -0x1

    .line 49
    move-object v4, v9

    .line 50
    move v5, v10

    .line 51
    move v6, v12

    .line 52
    move v7, v14

    .line 53
    move-object v13, v9

    .line 54
    move/from16 v9, v16

    .line 56
    invoke-direct/range {v4 .. v9}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    .line 59
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 61
    aget-object v4, v4, v1

    .line 63
    invoke-virtual {v13, v4}, Landroid/telephony/PreciseCallState;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1

    .line 69
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 71
    aput-object v13, v4, v1

    .line 73
    move v4, v11

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto/16 :goto_6

    .line 78
    :cond_1
    move v4, v3

    .line 79
    :goto_0
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 81
    if-nez v5, :cond_2

    .line 83
    const-string/jumbo v5, "notifyPreciseCallState: mCallQuality is null, skipping call attributes"

    .line 86
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 89
    goto/16 :goto_1

    .line 91
    :cond_2
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 93
    aget-object v5, v5, v1

    .line 95
    invoke-virtual {v5}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    .line 98
    move-result v5

    .line 99
    if-eq v5, v11, :cond_3

    .line 101
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 103
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    .line 106
    move-result-object v6

    .line 107
    aput-object v6, v5, v1

    .line 109
    :cond_3
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 111
    aget v5, v5, v1

    .line 113
    if-eqz v5, :cond_4

    .line 115
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 117
    aget-object v5, v5, v1

    .line 119
    invoke-virtual {v5}, Landroid/telephony/PreciseCallState;->getRingingCallState()I

    .line 122
    move-result v5

    .line 123
    if-gtz v5, :cond_4

    .line 125
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 127
    aget-object v5, v5, v1

    .line 129
    invoke-virtual {v5}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    .line 132
    move-result v5

    .line 133
    if-gtz v5, :cond_4

    .line 135
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 137
    aget-object v5, v5, v1

    .line 139
    invoke-virtual {v5}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    .line 142
    move-result v5

    .line 143
    if-gtz v5, :cond_4

    .line 145
    const-string/jumbo v5, "notifyPreciseCallState - Reset call network type"

    .line 148
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 151
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 153
    aput v3, v5, v1

    .line 155
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 157
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v6, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Ljava/util/Collection;

    .line 168
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    iget-object v6, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v6

    .line 177
    check-cast v6, Ljava/util/List;

    .line 179
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 182
    const/4 v6, -0x1

    .line 183
    if-eq v12, v6, :cond_6

    .line 185
    if-eqz v12, :cond_6

    .line 187
    iget-object v7, v0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 189
    aget-object v7, v7, v1

    .line 191
    new-instance v8, Landroid/telephony/CallState$Builder;

    .line 193
    aget v9, p3, v11

    .line 195
    invoke-direct {v8, v9}, Landroid/telephony/CallState$Builder;-><init>(I)V

    .line 198
    iget-object v9, v0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 200
    aget v9, v9, v1

    .line 202
    invoke-virtual {v8, v9}, Landroid/telephony/CallState$Builder;->setNetworkType(I)Landroid/telephony/CallState$Builder;

    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v8, v7}, Landroid/telephony/CallState$Builder;->setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;

    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v7, v11}, Landroid/telephony/CallState$Builder;->setCallClassification(I)Landroid/telephony/CallState$Builder;

    .line 213
    move-result-object v7

    .line 214
    if-eqz p4, :cond_5

    .line 216
    if-eqz p5, :cond_5

    .line 218
    if-eqz p6, :cond_5

    .line 220
    aget-object v8, p4, v11

    .line 222
    invoke-virtual {v7, v8}, Landroid/telephony/CallState$Builder;->setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;

    .line 225
    move-result-object v7

    .line 226
    aget v8, p5, v11

    .line 228
    invoke-virtual {v7, v8}, Landroid/telephony/CallState$Builder;->setImsCallServiceType(I)Landroid/telephony/CallState$Builder;

    .line 231
    move-result-object v7

    .line 232
    aget v8, p6, v11

    .line 234
    invoke-virtual {v7, v8}, Landroid/telephony/CallState$Builder;->setImsCallType(I)Landroid/telephony/CallState$Builder;

    .line 237
    move-result-object v7

    .line 238
    :cond_5
    iget-object v8, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    move-result-object v8

    .line 244
    check-cast v8, Ljava/util/List;

    .line 246
    invoke-virtual {v7}, Landroid/telephony/CallState$Builder;->build()Landroid/telephony/CallState;

    .line 249
    move-result-object v7

    .line 250
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_6
    if-eq v14, v6, :cond_8

    .line 255
    if-eqz v14, :cond_8

    .line 257
    new-instance v7, Landroid/telephony/CallState$Builder;

    .line 259
    const/4 v8, 0x2

    .line 260
    aget v9, p3, v8

    .line 262
    invoke-direct {v7, v9}, Landroid/telephony/CallState$Builder;-><init>(I)V

    .line 265
    iget-object v8, v0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 267
    aget v8, v8, v1

    .line 269
    invoke-virtual {v7, v8}, Landroid/telephony/CallState$Builder;->setNetworkType(I)Landroid/telephony/CallState$Builder;

    .line 272
    move-result-object v7

    .line 273
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    .line 276
    move-result-object v8

    .line 277
    invoke-virtual {v7, v8}, Landroid/telephony/CallState$Builder;->setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;

    .line 280
    move-result-object v7

    .line 281
    const/4 v8, 0x2

    .line 282
    invoke-virtual {v7, v8}, Landroid/telephony/CallState$Builder;->setCallClassification(I)Landroid/telephony/CallState$Builder;

    .line 285
    move-result-object v7

    .line 286
    if-eqz p4, :cond_7

    .line 288
    if-eqz p5, :cond_7

    .line 290
    if-eqz p6, :cond_7

    .line 292
    aget-object v9, p4, v8

    .line 294
    invoke-virtual {v7, v9}, Landroid/telephony/CallState$Builder;->setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;

    .line 297
    move-result-object v7

    .line 298
    aget v9, p5, v8

    .line 300
    invoke-virtual {v7, v9}, Landroid/telephony/CallState$Builder;->setImsCallServiceType(I)Landroid/telephony/CallState$Builder;

    .line 303
    move-result-object v7

    .line 304
    aget v8, p6, v8

    .line 306
    invoke-virtual {v7, v8}, Landroid/telephony/CallState$Builder;->setImsCallType(I)Landroid/telephony/CallState$Builder;

    .line 309
    move-result-object v7

    .line 310
    :cond_7
    iget-object v8, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 312
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 315
    move-result-object v8

    .line 316
    check-cast v8, Ljava/util/List;

    .line 318
    invoke-virtual {v7}, Landroid/telephony/CallState$Builder;->build()Landroid/telephony/CallState;

    .line 321
    move-result-object v7

    .line 322
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_8
    if-eq v10, v6, :cond_a

    .line 327
    if-eqz v10, :cond_a

    .line 329
    new-instance v6, Landroid/telephony/CallState$Builder;

    .line 331
    aget v7, p3, v3

    .line 333
    invoke-direct {v6, v7}, Landroid/telephony/CallState$Builder;-><init>(I)V

    .line 336
    iget-object v7, v0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 338
    aget v7, v7, v1

    .line 340
    invoke-virtual {v6, v7}, Landroid/telephony/CallState$Builder;->setNetworkType(I)Landroid/telephony/CallState$Builder;

    .line 343
    move-result-object v6

    .line 344
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    .line 347
    move-result-object v7

    .line 348
    invoke-virtual {v6, v7}, Landroid/telephony/CallState$Builder;->setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;

    .line 351
    move-result-object v6

    .line 352
    invoke-virtual {v6, v3}, Landroid/telephony/CallState$Builder;->setCallClassification(I)Landroid/telephony/CallState$Builder;

    .line 355
    move-result-object v6

    .line 356
    if-eqz p4, :cond_9

    .line 358
    if-eqz p5, :cond_9

    .line 360
    if-eqz p6, :cond_9

    .line 362
    aget-object v7, p4, v3

    .line 364
    invoke-virtual {v6, v7}, Landroid/telephony/CallState$Builder;->setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;

    .line 367
    move-result-object v6

    .line 368
    aget v7, p5, v3

    .line 370
    invoke-virtual {v6, v7}, Landroid/telephony/CallState$Builder;->setImsCallServiceType(I)Landroid/telephony/CallState$Builder;

    .line 373
    move-result-object v6

    .line 374
    aget v3, p6, v3

    .line 376
    invoke-virtual {v6, v3}, Landroid/telephony/CallState$Builder;->setImsCallType(I)Landroid/telephony/CallState$Builder;

    .line 379
    move-result-object v6

    .line 380
    :cond_9
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 382
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    move-result-object v3

    .line 386
    check-cast v3, Ljava/util/List;

    .line 388
    invoke-virtual {v6}, Landroid/telephony/CallState$Builder;->build()Landroid/telephony/CallState;

    .line 391
    move-result-object v6

    .line 392
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_a
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 397
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 404
    move-result v3

    .line 405
    xor-int/2addr v3, v11

    .line 406
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 408
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    move-result-object v5

    .line 412
    check-cast v5, Ljava/util/List;

    .line 414
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 417
    move-result-object v5

    .line 418
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_c

    .line 424
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    move-result-object v6

    .line 428
    check-cast v6, Landroid/telephony/CallState;

    .line 430
    invoke-virtual {v6}, Landroid/telephony/CallState;->getCallState()I

    .line 433
    move-result v6

    .line 434
    const/4 v7, 0x7

    .line 435
    if-eq v6, v7, :cond_b

    .line 437
    goto :goto_1

    .line 438
    :cond_c
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    .line 440
    check-cast v5, Ljava/util/ArrayList;

    .line 442
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 445
    move-result-object v5

    .line 446
    check-cast v5, Landroid/util/SparseArray;

    .line 448
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 451
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 453
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    const-string/jumbo v6, "notifyPreciseCallState - phoneId: "

    .line 459
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    const-string v6, ", subId: "

    .line 467
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    const-string v6, ", preciseCallStateChanged: "

    .line 475
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    if-eqz v4, :cond_d

    .line 480
    iget-object v6, v0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 482
    aget-object v6, v6, v1

    .line 484
    invoke-static {v6}, Lcom/android/internal/telephony/SemTelephonyUtils;->preciseCallStateToString(Landroid/telephony/PreciseCallState;)Ljava/lang/String;

    .line 487
    move-result-object v6

    .line 488
    goto :goto_2

    .line 489
    :cond_d
    const-string/jumbo v6, "false"

    .line 492
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string v6, ", notifyCallState: "

    .line 497
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    if-eqz v3, :cond_e

    .line 502
    iget-object v6, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 504
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 507
    move-result-object v6

    .line 508
    check-cast v6, Ljava/util/List;

    .line 510
    invoke-static {v6}, Lcom/android/internal/telephony/SemTelephonyUtils;->callStateListToString(Ljava/util/List;)Ljava/lang/String;

    .line 513
    move-result-object v6

    .line 514
    goto :goto_3

    .line 515
    :cond_e
    const-string/jumbo v6, "false"

    .line 518
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    move-result-object v5

    .line 525
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 528
    if-eqz v4, :cond_10

    .line 530
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 535
    move-result-object v4

    .line 536
    :cond_f
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 539
    move-result v5

    .line 540
    if-eqz v5, :cond_10

    .line 542
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 545
    move-result-object v5

    .line 546
    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    .line 548
    const/16 v6, 0xc

    .line 550
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 553
    move-result v6

    .line 554
    if-eqz v6, :cond_f

    .line 556
    invoke-virtual {v0, v5, v2, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 559
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    if-eqz v6, :cond_f

    .line 562
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 564
    iget-object v7, v0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 566
    aget-object v7, v7, v1

    .line 568
    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    goto :goto_4

    .line 572
    :catch_0
    :try_start_2
    iget-object v6, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 574
    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 576
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    goto :goto_4

    .line 580
    :cond_10
    if-eqz v3, :cond_12

    .line 582
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 584
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 587
    move-result-object v3

    .line 588
    :cond_11
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 591
    move-result v4

    .line 592
    if-eqz v4, :cond_12

    .line 594
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 597
    move-result-object v4

    .line 598
    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 600
    const/16 v5, 0x1b

    .line 602
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 605
    move-result v5

    .line 606
    if-eqz v5, :cond_11

    .line 608
    invoke-virtual {v0, v4, v2, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 611
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    if-eqz v5, :cond_11

    .line 614
    :try_start_3
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 616
    iget-object v6, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 618
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 621
    move-result-object v6

    .line 622
    check-cast v6, Ljava/util/List;

    .line 624
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStatesChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 627
    goto :goto_5

    .line 628
    :catch_1
    :try_start_4
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 630
    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 632
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    goto :goto_5

    .line 636
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 639
    monitor-exit v15

    .line 640
    return-void

    .line 641
    :goto_6
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 642
    throw v0
.end method

.method public final notifyRadioPowerStateChanged(III)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_8

    .line 17
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 19
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_8

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 37
    const/16 v3, 0x18

    .line 39
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 45
    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->useRelaxedIdMatch()Z

    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 51
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 54
    move-result v3

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/4 v3, -0x1

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x1

    .line 59
    if-gez p2, :cond_5

    .line 61
    iget v6, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 63
    if-ne v6, v3, :cond_4

    .line 65
    if-nez p1, :cond_3

    .line 67
    :goto_1
    move v3, v5

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v3, v4

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    if-ne v6, p1, :cond_3

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    iget v6, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 76
    const v7, 0x7fffffff

    .line 79
    if-ne v6, v7, :cond_7

    .line 81
    iget v6, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 83
    if-ne v6, v3, :cond_6

    .line 85
    if-nez p1, :cond_3

    .line 87
    goto :goto_1

    .line 88
    :cond_6
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-ne p2, v3, :cond_3

    .line 92
    goto :goto_1

    .line 93
    :cond_7
    if-ne v6, p2, :cond_3

    .line 95
    goto :goto_1

    .line 96
    :goto_2
    if-eqz v3, :cond_1

    .line 98
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 100
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_3

    .line 106
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 108
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 110
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_0

    .line 114
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 119
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    throw p0
.end method

.method public final notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/CellIdentity;->sanitizeLocationInfo()Landroid/telephony/CellIdentity;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    const-string v5, "Registration Failed for phoneId="

    .line 24
    const-string v6, " subId="

    .line 26
    const-string/jumbo v7, "primaryPlmn="

    .line 29
    invoke-static {v1, v2, v5, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v5

    .line 33
    const-string v6, " chosenPlmn="

    .line 35
    const-string v7, " domain="

    .line 37
    move-object/from16 v14, p4

    .line 39
    invoke-static {v5, v4, v6, v14, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v4, " causeCode="

    .line 44
    const-string v6, " additionalCauseCode="

    .line 46
    move/from16 v7, p5

    .line 48
    move/from16 v15, p6

    .line 50
    invoke-static {v7, v15, v4, v6, v5}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 53
    move/from16 v4, p7

    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    iget-object v6, v0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 64
    invoke-virtual {v6, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 67
    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 69
    monitor-enter v5

    .line 70
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_3

    .line 76
    iget-object v6, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v6

    .line 82
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_3

    .line 88
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v8

    .line 92
    move-object v13, v8

    .line 93
    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    .line 95
    const/16 v8, 0x1f

    .line 97
    invoke-virtual {v13, v8}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_2

    .line 103
    invoke-virtual {v0, v13, v2, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 106
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v8, :cond_2

    .line 109
    :try_start_1
    iget-object v8, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 111
    const/4 v9, 0x1

    .line 112
    invoke-virtual {v0, v13, v9}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 115
    move-result v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    if-eqz v9, :cond_1

    .line 118
    move-object/from16 v9, p3

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    move-object v9, v3

    .line 122
    :goto_1
    move-object/from16 v10, p4

    .line 124
    move/from16 v11, p5

    .line 126
    move/from16 v12, p6

    .line 128
    move-object v1, v13

    .line 129
    move/from16 v13, p7

    .line 131
    :try_start_2
    invoke-interface/range {v8 .. v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    goto :goto_2

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    goto :goto_3

    .line 137
    :catch_0
    move-object v1, v13

    .line 138
    :catch_1
    :try_start_3
    iget-object v8, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 140
    iget-object v1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 142
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    :goto_2
    move/from16 v1, p1

    .line 147
    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 151
    monitor-exit v5

    .line 152
    return-void

    .line 153
    :goto_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    throw v0
.end method

.method public final notifySemSatelliteServiceStateChanged(IILandroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.SATELLITE_COMMUNICATION"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    new-instance v1, Landroid/telephony/satellite/SemSatelliteServiceState;

    .line 16
    invoke-direct {v1, p3}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>(Landroid/telephony/satellite/SemSatelliteServiceState;)V

    .line 19
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSatServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    .line 21
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 39
    const/16 v3, 0x2710

    .line 41
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 50
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v3, :cond_0

    .line 53
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 55
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSemSatelliteServiceStateChanged(Landroid/telephony/satellite/SemSatelliteServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 63
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 65
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 82
    return-void
.end method

.method public final notifySemSatelliteSignalStrengthChanged(IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.SATELLITE_COMMUNICATION"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    new-instance v1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 16
    invoke-direct {v1, p3}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    .line 19
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSatSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    .line 21
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 39
    const/16 v3, 0x2711

    .line 41
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 50
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v3, :cond_0

    .line 53
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 55
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSemSatelliteSignalStrengthChanged(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 63
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 65
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 82
    return-void
.end method

.method public final notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "notifyServiceStateForSubscriber: INVALID phoneId="

    .line 4
    const-string/jumbo v1, "notifyServiceStateForSubscriber: subId="

    .line 7
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v2

    .line 18
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 20
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " phoneId="

    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " state="

    .line 39
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 51
    invoke-virtual {v5, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4

    .line 60
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 66
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 68
    aput-object p3, v0, p1

    .line 70
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v0

    .line 76
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_5

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 88
    const/4 v5, 0x1

    .line 89
    invoke-virtual {v1, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_1

    .line 95
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 98
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v6, :cond_1

    .line 101
    const/16 v6, 0x1d

    .line 103
    :try_start_2
    invoke-virtual {p0, v1, v6}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_2

    .line 109
    new-instance v5, Landroid/telephony/ServiceState;

    .line 111
    invoke-direct {v5, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 114
    goto :goto_1

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    invoke-virtual {p0, v1, v6}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_3

    .line 123
    const/4 v5, 0x0

    .line 124
    invoke-virtual {p3, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    .line 127
    move-result-object v5

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p3, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    .line 132
    move-result-object v5

    .line 133
    :goto_1
    iget-object v6, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 135
    invoke-interface {v6, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    goto :goto_0

    .line 139
    :catch_0
    :try_start_3
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 141
    iget-object v1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 143
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v0, " or subId="

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 170
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 173
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(IILandroid/telephony/ServiceState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    return-void

    .line 181
    :catchall_1
    move-exception p0

    .line 182
    goto :goto_3

    .line 183
    :goto_2
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 185
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    throw p0
.end method

.method public final notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "notifySignalStrengthForPhoneId: invalid phoneId="

    .line 4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 20
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 22
    aput-object p3, v0, p1

    .line 24
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_5

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 42
    const/16 v3, 0x9

    .line 44
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 53
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v3, :cond_2

    .line 56
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 58
    new-instance v4, Landroid/telephony/SignalStrength;

    .line 60
    invoke-direct {v4, p3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    .line 63
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto/16 :goto_4

    .line 70
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 72
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 74
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    :goto_1
    const/4 v3, 0x2

    .line 78
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 87
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-eqz v3, :cond_1

    .line 90
    :try_start_3
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    .line 93
    move-result v3

    .line 94
    const/16 v4, 0x63

    .line 96
    if-ne v3, v4, :cond_3

    .line 98
    const/4 v3, -0x1

    .line 99
    :cond_3
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 101
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    goto :goto_0

    .line 105
    :catch_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 107
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 109
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 131
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 135
    move-result-wide v0

    .line 136
    :try_start_5
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 138
    invoke-interface {v2, p3}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    :catch_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    goto :goto_2

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw p0

    .line 150
    :goto_2
    new-instance v0, Landroid/content/Intent;

    .line 152
    const-string v1, "android.intent.action.SIG_STR"

    .line 154
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v1, Landroid/os/Bundle;

    .line 159
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    invoke-virtual {p3, v1}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    .line 168
    move-result-object p3

    .line 169
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    move-result-object p3

    .line 173
    :cond_6
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_c

    .line 179
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Landroid/telephony/CellSignalStrength;

    .line 185
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthLte;

    .line 187
    if-eqz v3, :cond_7

    .line 189
    const-string v3, "Lte"

    .line 191
    check-cast v2, Landroid/telephony/CellSignalStrengthLte;

    .line 193
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 196
    goto :goto_3

    .line 197
    :cond_7
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthCdma;

    .line 199
    if-eqz v3, :cond_8

    .line 201
    const-string v3, "Cdma"

    .line 203
    check-cast v2, Landroid/telephony/CellSignalStrengthCdma;

    .line 205
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 208
    goto :goto_3

    .line 209
    :cond_8
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthGsm;

    .line 211
    if-eqz v3, :cond_9

    .line 213
    const-string v3, "Gsm"

    .line 215
    check-cast v2, Landroid/telephony/CellSignalStrengthGsm;

    .line 217
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    goto :goto_3

    .line 221
    :cond_9
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthWcdma;

    .line 223
    if-eqz v3, :cond_a

    .line 225
    const-string v3, "Wcdma"

    .line 227
    check-cast v2, Landroid/telephony/CellSignalStrengthWcdma;

    .line 229
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 232
    goto :goto_3

    .line 233
    :cond_a
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthTdscdma;

    .line 235
    if-eqz v3, :cond_b

    .line 237
    const-string v3, "Tdscdma"

    .line 239
    check-cast v2, Landroid/telephony/CellSignalStrengthTdscdma;

    .line 241
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 244
    goto :goto_3

    .line 245
    :cond_b
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthNr;

    .line 247
    if-eqz v3, :cond_6

    .line 249
    const-string v3, "Nr"

    .line 251
    check-cast v2, Landroid/telephony/CellSignalStrengthNr;

    .line 253
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    goto :goto_3

    .line 257
    :cond_c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 260
    const-string/jumbo p3, "subscription"

    .line 263
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string/jumbo p2, "slot"

    .line 269
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 274
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 276
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 279
    return-void

    .line 280
    :goto_4
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 281
    throw p0
.end method

.method public final notifySimActivationStateChangedForPhoneId(IIII)V
    .locals 5

    .line 1
    const-string/jumbo v0, "notifySimActivationStateForPhoneId: INVALID phoneId="

    .line 4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_5

    .line 20
    const/4 v0, 0x1

    .line 21
    if-eqz p3, :cond_2

    .line 23
    if-eq p3, v0, :cond_1

    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 31
    aput p4, v2, p1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 36
    aput p4, v2, p1

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v2

    .line 44
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_6

    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-nez p3, :cond_4

    .line 58
    const/16 v4, 0x12

    .line 60
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 66
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_4

    .line 72
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 74
    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V

    .line 77
    :cond_4
    if-ne p3, v0, :cond_3

    .line 79
    const/16 v4, 0x13

    .line 81
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_3

    .line 87
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_3

    .line 93
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 95
    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 101
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 103
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 122
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 127
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    throw p0
.end method

.method public final notifySimultaneousCellularCallingSubscriptionsChanged([I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSimultaneousCellularCallingSubIds:[I

    .line 13
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 31
    const/16 v3, 0x29

    .line 33
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 36
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v3, :cond_1

    .line 39
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 41
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSimultaneousCallingStateChanged([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 49
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 51
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw p0
.end method

.method public final notifySrvccStateChanged(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x10

    .line 21
    if-eqz v2, :cond_2

    .line 23
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 25
    aput p2, v2, v0

    .line 27
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_4

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 45
    invoke-virtual {v4, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 51
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 54
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v5, :cond_1

    .line 57
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 59
    invoke-interface {v5, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 67
    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 69
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object p1

    .line 79
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 91
    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 94
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    if-eqz v2, :cond_3

    .line 97
    :try_start_3
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 99
    invoke-interface {v2, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 105
    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 107
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 116
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    throw p0
.end method

.method public final notifySubscriptionInfoChanged()V
    .locals 4

    .line 1
    const-string/jumbo v0, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    .line 4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 16
    if-nez v2, :cond_1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 45
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 68
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-eqz v3, :cond_2

    .line 72
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 78
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 80
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 89
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    throw p0
.end method

.method public final notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 19
    aput-boolean p3, v1, p1

    .line 21
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 39
    const/16 v3, 0x14

    .line 41
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    .line 50
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v3, :cond_1

    .line 53
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 55
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 63
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 65
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0
.end method

.method public final onMultiSimConfigChanged()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 6
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 8
    const-string/jumbo v3, "phone"

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 17
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 20
    move-result v2

    .line 21
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 23
    if-ne v1, v2, :cond_0

    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_3

    .line 30
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 32
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 35
    move-result-object v2

    .line 36
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 38
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 40
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 43
    move-result-object v2

    .line 44
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 46
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 48
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 50
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 53
    move-result-object v2

    .line 54
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 56
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 58
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 60
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 63
    move-result-object v2

    .line 64
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 66
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 68
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 70
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    check-cast v2, [Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 80
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 82
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 85
    move-result-object v2

    .line 86
    check-cast v2, [Landroid/telephony/ServiceState;

    .line 88
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 90
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 92
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 94
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 97
    move-result-object v2

    .line 98
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 100
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 102
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 104
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 107
    move-result-object v2

    .line 108
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 110
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 112
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 114
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 117
    move-result-object v2

    .line 118
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 120
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 122
    if-eqz v2, :cond_1

    .line 124
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 126
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 129
    move-result-object v2

    .line 130
    check-cast v2, [Landroid/telephony/SignalStrength;

    .line 132
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 137
    new-array v2, v2, [Landroid/telephony/SignalStrength;

    .line 139
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 143
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 145
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 148
    move-result-object v2

    .line 149
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 151
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 153
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 155
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 158
    move-result-object v2

    .line 159
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 161
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 163
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 165
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 169
    check-cast v2, [Landroid/telephony/CellIdentity;

    .line 171
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 173
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 175
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 177
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 180
    move-result-object v2

    .line 181
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 183
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 185
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 187
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 190
    move-result-object v2

    .line 191
    check-cast v2, [Landroid/telephony/PreciseCallState;

    .line 193
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 195
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 197
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 199
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 202
    move-result-object v2

    .line 203
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 205
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 207
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 209
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 212
    move-result-object v2

    .line 213
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 215
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 217
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 219
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 222
    move-result-object v2

    .line 223
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 225
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 227
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 229
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 232
    move-result-object v2

    .line 233
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 235
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 237
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 239
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 242
    move-result-object v2

    .line 243
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 245
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 247
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 249
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 252
    move-result-object v2

    .line 253
    check-cast v2, [Landroid/telephony/CallQuality;

    .line 255
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 257
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 259
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 261
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 264
    move-result-object v2

    .line 265
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 267
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 269
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 271
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 274
    move-result-object v2

    .line 275
    check-cast v2, [Landroid/telephony/emergency/EmergencyNumber;

    .line 277
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 279
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 281
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 283
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 286
    move-result-object v2

    .line 287
    check-cast v2, [Landroid/telephony/emergency/EmergencyNumber;

    .line 289
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 291
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 293
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 295
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 298
    move-result-object v2

    .line 299
    check-cast v2, [Landroid/telephony/TelephonyDisplayInfo;

    .line 301
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 303
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 305
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 307
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 310
    move-result-object v2

    .line 311
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 313
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 315
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 317
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 320
    move-result-object v2

    .line 321
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 323
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 325
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 327
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 330
    move-result-object v2

    .line 331
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 333
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 335
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 337
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 340
    move-result-object v2

    .line 341
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 343
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 345
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 347
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 350
    move-result-object v2

    .line 351
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 353
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    .line 355
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 357
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 360
    move-result-object v2

    .line 361
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    .line 363
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMStarted:[Z

    .line 365
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 367
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 370
    move-result-object v2

    .line 371
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMStarted:[Z

    .line 373
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    .line 375
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 377
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 380
    move-result-object v2

    .line 381
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    .line 383
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMStarted:[Z

    .line 385
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 387
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 390
    move-result-object v2

    .line 391
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMStarted:[Z

    .line 393
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 395
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 397
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 400
    move-result-object v2

    .line 401
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 403
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 405
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 407
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 410
    move-result-object v2

    .line 411
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 413
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 415
    if-eqz v2, :cond_2

    .line 417
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 419
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 422
    move-result-object v2

    .line 423
    check-cast v2, [Landroid/telephony/satellite/NtnSignalStrength;

    .line 425
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 427
    goto :goto_1

    .line 428
    :cond_2
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 430
    new-array v2, v2, [Landroid/telephony/satellite/NtnSignalStrength;

    .line 432
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 434
    :goto_1
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 436
    if-ge v2, v1, :cond_3

    .line 438
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 440
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 443
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 445
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 447
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 450
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 452
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 454
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 457
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 459
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 461
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 464
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 466
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 468
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 471
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    .line 473
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 475
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 478
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 480
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 482
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 485
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    .line 487
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 489
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 492
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 494
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 496
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 499
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    .line 501
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 503
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 506
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    .line 508
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 510
    invoke-static {p0, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(ILjava/util/List;)V

    .line 513
    monitor-exit v0

    .line 514
    return-void

    .line 515
    :cond_3
    :goto_2
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 517
    if-ge v1, v2, :cond_4

    .line 519
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 521
    const/4 v3, 0x0

    .line 522
    aput v3, v2, v1

    .line 524
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 526
    aput v3, v2, v1

    .line 528
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 530
    const/4 v4, -0x1

    .line 531
    aput v4, v2, v1

    .line 533
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 535
    aput v3, v2, v1

    .line 537
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 539
    aput v3, v2, v1

    .line 541
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 543
    const-string v5, ""

    .line 545
    aput-object v5, v2, v1

    .line 547
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 549
    new-instance v5, Landroid/telephony/ServiceState;

    .line 551
    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    .line 554
    aput-object v5, v2, v1

    .line 556
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 558
    const/4 v5, 0x0

    .line 559
    aput-object v5, v2, v1

    .line 561
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 563
    aput-boolean v3, v2, v1

    .line 565
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 567
    aput-boolean v3, v2, v1

    .line 569
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 571
    aput-boolean v3, v2, v1

    .line 573
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 575
    aput-object v5, v2, v1

    .line 577
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 579
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 581
    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 584
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 586
    check-cast v2, Ljava/util/ArrayList;

    .line 588
    invoke-virtual {v2, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 591
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 593
    aput v4, v2, v1

    .line 595
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 597
    aput v4, v2, v1

    .line 599
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 601
    aput v4, v2, v1

    .line 603
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 605
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    .line 608
    move-result-object v6

    .line 609
    aput-object v6, v2, v1

    .line 611
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    .line 613
    new-instance v6, Landroid/util/SparseArray;

    .line 615
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 618
    check-cast v2, Ljava/util/ArrayList;

    .line 620
    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 623
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 625
    new-instance v6, Ljava/util/ArrayList;

    .line 627
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 630
    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 633
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 635
    aput v3, v2, v1

    .line 637
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 639
    new-instance v12, Landroid/telephony/PreciseCallState;

    .line 641
    const/4 v8, -0x1

    .line 642
    const/4 v9, -0x1

    .line 643
    const/4 v10, -0x1

    .line 644
    const/4 v11, -0x1

    .line 645
    const/4 v7, -0x1

    .line 646
    move-object v6, v12

    .line 647
    invoke-direct/range {v6 .. v11}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    .line 650
    aput-object v12, v2, v1

    .line 652
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 654
    aput v3, v2, v1

    .line 656
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 658
    aput v3, v2, v1

    .line 660
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 662
    aput v3, v2, v1

    .line 664
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 666
    new-instance v6, Landroid/util/ArrayMap;

    .line 668
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 671
    check-cast v2, Ljava/util/ArrayList;

    .line 673
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 678
    new-instance v6, Landroid/telephony/BarringInfo;

    .line 680
    invoke-direct {v6}, Landroid/telephony/BarringInfo;-><init>()V

    .line 683
    check-cast v2, Ljava/util/ArrayList;

    .line 685
    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 688
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 690
    aput-boolean v3, v2, v1

    .line 692
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 694
    aput-object v5, v2, v1

    .line 696
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 698
    aput-boolean v3, v2, v1

    .line 700
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 702
    aput v3, v2, v1

    .line 704
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 706
    new-instance v6, Ljava/util/ArrayList;

    .line 708
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 711
    check-cast v2, Ljava/util/ArrayList;

    .line 713
    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 716
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 718
    aput v4, v2, v1

    .line 720
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 722
    const-wide/16 v6, -0x1

    .line 724
    aput-wide v6, v2, v1

    .line 726
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    .line 728
    sget-object v6, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 730
    check-cast v2, Ljava/util/ArrayList;

    .line 732
    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 735
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 737
    new-instance v6, Landroid/util/Pair;

    .line 739
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 742
    move-result-object v7

    .line 743
    new-array v8, v3, [I

    .line 745
    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    check-cast v2, Ljava/util/ArrayList;

    .line 750
    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 753
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    .line 755
    new-instance v6, Landroid/util/Pair;

    .line 757
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 760
    move-result-object v4

    .line 761
    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 764
    check-cast v2, Ljava/util/ArrayList;

    .line 766
    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 769
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    .line 771
    aput v3, v2, v1

    .line 773
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMStarted:[Z

    .line 775
    aput-boolean v3, v2, v1

    .line 777
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    .line 779
    aput v3, v2, v1

    .line 781
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMStarted:[Z

    .line 783
    aput-boolean v3, v2, v1

    .line 785
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 787
    aput-boolean v3, v2, v1

    .line 789
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 791
    aput-boolean v3, v2, v1

    .line 793
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    .line 795
    new-instance v4, Landroid/util/IntArray;

    .line 797
    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    .line 800
    check-cast v2, Ljava/util/ArrayList;

    .line 802
    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 805
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 807
    new-instance v4, Landroid/telephony/satellite/NtnSignalStrength;

    .line 809
    invoke-direct {v4, v3}, Landroid/telephony/satellite/NtnSignalStrength;-><init>(I)V

    .line 812
    aput-object v4, v2, v1

    .line 814
    add-int/lit8 v1, v1, 0x1

    .line 816
    goto/16 :goto_2

    .line 818
    :cond_4
    monitor-exit v0

    .line 819
    return-void

    .line 820
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    throw p0
.end method

.method public final remove(Landroid/os/IBinder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_2

    .line 14
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 22
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 24
    if-ne v5, p1, :cond_1

    .line 26
    iget-object v1, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v1, :cond_0

    .line 30
    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    :cond_0
    :goto_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw p0
.end method

.method public final removeCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 10
    invoke-interface {p1}, Lcom/android/internal/telephony/ICarrierConfigChangeListener;->asBinder()Landroid/os/IBinder;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 17
    return-void
.end method

.method public final removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 12
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 14
    const-string/jumbo v1, "removeCarrierPrivilegesCallback"

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->asBinder()Landroid/os/IBinder;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 27
    return-void
.end method

.method public final removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 8
    return-void
.end method

.method public final systemRunning()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "systemRunning register for intents"

    .line 29
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 34
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Lcom/android/server/TelephonyRegistry$2;

    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 51
    return-void
.end method

.method public final validatePhoneId(I)Z
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 5
    const-string/jumbo v0, "phone"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 14
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 17
    move-result p0

    .line 18
    if-ge p1, p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method
