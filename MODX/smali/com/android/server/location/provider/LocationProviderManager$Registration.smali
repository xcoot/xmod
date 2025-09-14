.class public abstract Lcom/android/server/location/provider/LocationProviderManager$Registration;
.super Lcom/android/server/location/listeners/RemovableListenerRegistration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isListenerType:Z

.field public final mBaseRequest:Landroid/location/LocationRequest;

.field public mBypassPermitted:Z

.field public mForeground:Z

.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public mIsUsingHighPower:Z

.field public mLastLocation:Landroid/location/Location;

.field public mListenerId:Ljava/lang/String;

.field public final mPermissionLevel:I

.field public mPermitted:Z

.field public mProviderLocationRequest:Landroid/location/LocationRequest;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    invoke-direct {p0, p4, p5}, Lcom/android/server/location/listeners/RemovableListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType:Z

    .line 12
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    .line 15
    move-result-object p4

    .line 16
    const/4 p5, 0x0

    .line 17
    if-eqz p4, :cond_0

    .line 19
    move p4, p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p4, p5

    .line 22
    :goto_0
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 25
    if-lez p6, :cond_1

    .line 27
    move p5, p1

    .line 28
    :cond_1
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 31
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    .line 34
    move-result-object p4

    .line 35
    invoke-virtual {p4}, Landroid/os/WorkSource;->isEmpty()Z

    .line 38
    move-result p4

    .line 39
    xor-int/2addr p1, p4

    .line 40
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 43
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    .line 45
    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 47
    iput p6, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 49
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 51
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    .line 65
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mUid:I

    .line 71
    return-void
.end method


# virtual methods
.method public abstract acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
.end method

.method public final calculateProviderLocationRequest()Landroid/location/LocationRequest;
    .locals 9

    .line 1
    new-instance v0, Landroid/location/LocationRequest$Builder;

    .line 3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    .line 5
    invoke-direct {v0, v1}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 8
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 10
    const/4 v2, 0x2

    .line 11
    if-ge v1, v2, :cond_1

    .line 13
    const/16 v1, 0x68

    .line 15
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    .line 18
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    .line 20
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 23
    move-result-wide v1

    .line 24
    const-wide/32 v3, 0x927c0

    .line 27
    cmp-long v1, v1, v3

    .line 29
    if-gez v1, :cond_0

    .line 31
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest$Builder;->setIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    .line 36
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    .line 39
    move-result-wide v1

    .line 40
    cmp-long v1, v1, v3

    .line 42
    if-gez v1, :cond_1

    .line 44
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    .line 49
    invoke-virtual {v1}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    if-eqz v1, :cond_3

    .line 57
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 59
    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 61
    iget-object v4, v4, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 63
    invoke-virtual {v4}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 66
    move-result-object v4

    .line 67
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 69
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 75
    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_2

    .line 85
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 87
    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 89
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 91
    invoke-virtual {v4, v3, v5}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_2

    .line 97
    move v1, v2

    .line 98
    :cond_2
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    .line 101
    :cond_3
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    .line 103
    invoke-virtual {v4}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_9

    .line 109
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 111
    iget-object v5, v5, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 113
    const-string/jumbo v6, "gps"

    .line 116
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_4

    .line 122
    const-string v4, "LocationManagerService"

    .line 124
    const-string v5, "adas gnss bypass request received in non-gps provider"

    .line 126
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 132
    iget-object v5, v5, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 134
    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 136
    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 139
    move-result v6

    .line 140
    invoke-virtual {v5}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    .line 143
    move-result-object v5

    .line 144
    if-eqz v5, :cond_5

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 149
    move-result-wide v7

    .line 150
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    .line 153
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    goto :goto_0

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    throw p0

    .line 163
    :cond_5
    move v5, v2

    .line 164
    :goto_0
    if-nez v5, :cond_6

    .line 166
    goto :goto_1

    .line 167
    :cond_6
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 169
    iget-object v5, v5, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 171
    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 173
    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 176
    move-result v6

    .line 177
    invoke-virtual {v5, v6}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    .line 180
    move-result-object v5

    .line 181
    iget-boolean v5, v5, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 183
    if-nez v5, :cond_7

    .line 185
    goto :goto_1

    .line 186
    :cond_7
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 188
    iget-object v5, v5, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 190
    iget-object v5, v5, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 192
    invoke-virtual {v5}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 195
    move-result-object v5

    .line 196
    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 198
    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 201
    move-result-object v6

    .line 202
    iget-object v7, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 204
    invoke-virtual {v7}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v5, v6, v7}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    move-result v5

    .line 212
    if-nez v5, :cond_8

    .line 214
    goto :goto_1

    .line 215
    :cond_8
    move v2, v4

    .line 216
    :goto_1
    invoke-virtual {v0, v2}, Landroid/location/LocationRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/LocationRequest$Builder;

    .line 219
    :cond_9
    if-nez v1, :cond_c

    .line 221
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 223
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 225
    iget-object v1, v1, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 227
    invoke-virtual {v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    .line 230
    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 233
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 236
    move-result-object v2

    .line 237
    check-cast v1, Landroid/util/ArraySet;

    .line 239
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_b

    .line 245
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 247
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 249
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 251
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 254
    move-result-object v2

    .line 255
    iget-object v1, v1, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    .line 257
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_a

    .line 263
    goto :goto_2

    .line 264
    :cond_a
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 266
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 268
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 270
    invoke-virtual {v1, v3, v2}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    .line 273
    move-result v1

    .line 274
    goto :goto_3

    .line 275
    :cond_b
    :goto_2
    const/4 v1, 0x1

    .line 276
    :goto_3
    if-nez v1, :cond_c

    .line 278
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    .line 280
    if-nez v1, :cond_c

    .line 282
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    .line 284
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 287
    move-result-wide v1

    .line 288
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 290
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 292
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 300
    move-result-wide v3

    .line 301
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 306
    move-result-object v5

    .line 307
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 309
    const-wide/32 v6, 0x1b7740

    .line 312
    invoke-static {v5, p0, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 315
    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 322
    move-result-wide v1

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest$Builder;->setIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 326
    goto :goto_4

    .line 327
    :catchall_1
    move-exception p0

    .line 328
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw p0

    .line 332
    :cond_c
    :goto_4
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 335
    move-result-object p0

    .line 336
    return-object p0
.end method

.method public final getLastDeliveredLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    return-object p0
.end method

.method public final getPermissionLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final getRequest()Landroid/location/LocationRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final isForeground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final isOnlyBypassPermitted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBypassPermitted:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    .line 12
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final isPermitted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    .line 8
    if-nez v1, :cond_1

    .line 10
    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBypassPermitted:Z

    .line 12
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    return p0

    .line 22
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final isUsingHighPower()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 5
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 13
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 15
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 20
    return v1

    .line 21
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    .line 23
    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 32
    move-result-wide v2

    .line 33
    const-wide/32 v4, 0x493e0

    .line 36
    cmp-long p0, v2, v4

    .line 38
    if-gez p0, :cond_1

    .line 40
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->getPowerUsage()I

    .line 43
    move-result p0

    .line 44
    const/4 v0, 0x3

    .line 45
    if-ne p0, v0, :cond_1

    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_1
    return v1
.end method

.method public onActive()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 5
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    .line 12
    move-result-object v0

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    .line 16
    if-lez v1, :cond_0

    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 24
    iget v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 28
    iput v2, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    .line 30
    if-nez v1, :cond_1

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    move-result-wide v1

    .line 36
    iput-wide v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeLastUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    monitor-exit v0

    .line 42
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 54
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 56
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 58
    const/16 v2, 0x29

    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    .line 66
    return-void

    .line 67
    :goto_2
    monitor-exit v0

    .line 68
    throw p0
.end method

.method public final onBypassLocationPermissionsChanged(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/location/flags/Flags;->enableLocationBypass()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 18
    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 20
    const-string v1, "android.permission.LOCATION_BYPASS"

    .line 22
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 24
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 27
    move-result v4

    .line 28
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 30
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 33
    move-result v5

    .line 34
    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 40
    move p1, v3

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move p1, v2

    .line 45
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBypassPermitted:Z

    .line 47
    if-eq v1, p1, :cond_1

    .line 49
    const-string v1, "LocationManagerService"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 58
    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v4, " provider package "

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 70
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v4, " bypass permitted = "

    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-boolean p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBypassPermitted:Z

    .line 94
    monitor-exit v0

    .line 95
    return v3

    .line 96
    :cond_1
    monitor-exit v0

    .line 97
    return v2

    .line 98
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public final onHighPowerUsageChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isUsingHighPower()Z

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    .line 7
    if-eq v0, v1, :cond_1

    .line 9
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    .line 11
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 21
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    .line 23
    const/16 v1, 0x2a

    .line 25
    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 29
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 31
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 33
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/injector/SystemAppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 39
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 41
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 43
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/injector/SystemAppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public onInactive()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 16
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 18
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 20
    const/16 v2, 0x29

    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    .line 25
    :cond_0
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 27
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 29
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 31
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 33
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    .line 36
    move-result-object p0

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    .line 41
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    .line 43
    const/4 v1, 0x1

    .line 44
    sub-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    .line 47
    if-ltz v0, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    .line 58
    throw v0
.end method

.method public final onLocationPermissionsChanged$2$1()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 5
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 7
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 12
    move-result v0

    .line 13
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eq v0, v1, :cond_3

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 25
    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v3, " provider package "

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 37
    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, " permitted = "

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    const-string v3, "LocationManagerService"

    .line 58
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermitted:Z

    .line 63
    const/4 v1, 0x1

    .line 64
    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 68
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 70
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    new-instance v4, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-direct {v4, v2, v1, v3, v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 83
    invoke-virtual {v0, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 89
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 91
    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 93
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    new-instance v5, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-direct {v5, v3, v2, v4, v6}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 104
    invoke-virtual {v0, v5}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 109
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 111
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 113
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 116
    move-result v2

    .line 117
    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v2

    .line 123
    sget-object v3, Landroid/location/LocationConstants$PAUSED_BY;->UNKNOWN:Landroid/location/LocationConstants$PAUSED_BY;

    .line 125
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Landroid/location/LocationConstants$PAUSED_BY;

    .line 133
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 135
    iget-object v3, v2, Lcom/android/server/location/provider/LocationProviderManager;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 137
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 139
    iget-object v4, v3, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    .line 141
    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Ljava/util/Set;

    .line 149
    if-eqz v2, :cond_2

    .line 151
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    .line 160
    move-result v2

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    const-string v5, "Receiver status was changed, isAllowed="

    .line 165
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    if-eqz v2, :cond_1

    .line 173
    const-string v5, ""

    .line 175
    goto :goto_1

    .line 176
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 178
    const-string v6, " by "

    .line 180
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v5

    .line 190
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v4

    .line 197
    const-string v5, "NSLocationProviderHelper"

    .line 199
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v4, Landroid/os/Bundle;

    .line 204
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 207
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    .line 209
    const-string/jumbo v6, "listenerid"

    .line 212
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v5, "isAllowed"

    .line 218
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    const-string/jumbo v2, "reason"

    .line 224
    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 227
    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mUid:I

    .line 229
    invoke-virtual {v3, v0, v4}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 232
    const-string/jumbo v0, "permissionLevel"

    .line 235
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    .line 238
    move-result p0

    .line 239
    invoke-virtual {v4, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    iget-object p0, v3, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 244
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_UPDATE:Landroid/location/LocationConstants$STATE_TYPE;

    .line 246
    invoke-virtual {p0, v0, v4}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 249
    :cond_2
    return v1

    .line 250
    :cond_3
    return v2
.end method

.method public final onProviderLocationRequestChanged()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->calculateProviderLocationRequest()Landroid/location/LocationRequest;

    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 12
    invoke-virtual {v2, v1}, Landroid/location/LocationRequest;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 19
    monitor-exit v0

    .line 20
    return v3

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 25
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onHighPowerUsageChanged()V

    .line 30
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 35
    invoke-virtual {v2}, Landroid/location/LocationRequest;->isBypass()Z

    .line 38
    move-result p0

    .line 39
    invoke-virtual {v1}, Landroid/location/LocationRequest;->isBypass()Z

    .line 42
    move-result v1

    .line 43
    if-eq p0, v1, :cond_1

    .line 45
    const/4 v3, 0x1

    .line 46
    :cond_1
    monitor-exit v0

    .line 47
    return v3

    .line 48
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public onRegister()V
    .locals 6

    .line 1
    const-string v0, "LocationManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 10
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, " provider added registration from "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, " -> "

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 46
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 48
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 52
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mBaseRequest:Landroid/location/LocationRequest;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance v4, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;

    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-direct {v4, v1, v5, v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    .line 63
    invoke-virtual {v0, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 73
    move-result-wide v2

    .line 74
    monitor-enter v1

    .line 75
    :try_start_0
    iget v4, v1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    .line 77
    add-int/lit8 v5, v4, 0x1

    .line 79
    iput v5, v1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    .line 81
    if-nez v4, :cond_0

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 86
    move-result-wide v4

    .line 87
    iput-wide v4, v1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    :goto_0
    iget-wide v4, v1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mFastestIntervalMs:J

    .line 94
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 97
    move-result-wide v4

    .line 98
    iput-wide v4, v1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mFastestIntervalMs:J

    .line 100
    iget-wide v4, v1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mSlowestIntervalMs:J

    .line 102
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 105
    move-result-wide v2

    .line 106
    iput-wide v2, v1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mSlowestIntervalMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v1

    .line 109
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged$2$1()Z

    .line 112
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 114
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 116
    const-wide/16 v2, 0x0

    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/injector/SystemEmergencyHelper;->isInEmergency(J)Z

    .line 121
    move-result v1

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onBypassLocationPermissionsChanged(Z)Z

    .line 125
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 127
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 129
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 131
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 134
    move-result v2

    .line 135
    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->isAppForeground(I)Z

    .line 138
    move-result v1

    .line 139
    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->calculateProviderLocationRequest()Landroid/location/LocationRequest;

    .line 144
    move-result-object v1

    .line 145
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mProviderLocationRequest:Landroid/location/LocationRequest;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isUsingHighPower()Z

    .line 150
    move-result v1

    .line 151
    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIsUsingHighPower:Z

    .line 153
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    .line 155
    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 159
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 161
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 163
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    .line 166
    :cond_1
    return-void

    .line 167
    :goto_1
    monitor-exit v1

    .line 168
    throw p0
.end method

.method public onUnregister()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 5
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v3, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct {v3, v1, v4, v2, v5}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    .line 19
    invoke-virtual {v0, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    .line 25
    move-result-object v0

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    .line 30
    iget v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    .line 32
    const/4 v2, 0x1

    .line 33
    sub-int/2addr v1, v2

    .line 34
    iput v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    .line 36
    if-ltz v1, :cond_0

    .line 38
    move v4, v2

    .line 39
    :cond_0
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 42
    iget v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    .line 44
    iget v2, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result v1

    .line 50
    iput v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    .line 52
    iget v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    .line 54
    iget v2, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 59
    move-result v1

    .line 60
    iput v1, v0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    .line 63
    const-string v0, "LocationManagerService"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 72
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, " provider removed registration from "

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object v5, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    monitor-exit v0

    .line 99
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Landroid/util/ArraySet;

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 17
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 23
    const-string v2, "bg"

    .line 25
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 34
    const-string/jumbo v2, "na"

    .line 37
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 43
    move-result v2

    .line 44
    const-string v3, " "

    .line 46
    if-nez v2, :cond_2

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    :cond_2
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mPermissionLevel:I

    .line 56
    const/4 v2, 0x1

    .line 57
    if-ne v1, v2, :cond_3

    .line 59
    const-string v1, " (COARSE)"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
