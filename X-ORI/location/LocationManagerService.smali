.class public final Lcom/android/server/location/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;


# static fields
.field public static mISLocationManager:Lcom/samsung/android/location/ISLocationManager;


# instance fields
.field public isMockLocationNotified:Z

.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public final mContext:Landroid/content/Context;

.field public mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

.field public final mDeprecatedGnssBatchingLock:Ljava/lang/Object;

.field public mExtraLocationControllerPackage:Ljava/lang/String;

.field public mExtraLocationControllerPackageEnabled:Z

.field public mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

.field public final mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

.field public volatile mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/location/injector/Injector;

.field public final mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

.field public mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

.field public final mLock:Ljava/lang/Object;

.field public final mMockLocationRecord:Ljava/util/HashMap;

.field public final mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

.field public final mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

.field public final mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    new-instance v1, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 37
    .line 38
    new-instance v2, Lcom/android/server/location/LocationManagerService$ProcessListener;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$ProcessListener;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

    .line 44
    .line 45
    const-string v2, "LocationService"

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 60
    .line 61
    new-instance p1, Lcom/android/server/location/LocationManagerService$LocalService;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lcom/android/server/location/LocationManagerService$LocalService;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 67
    .line 68
    const-class v2, Landroid/location/LocationManagerInternal;

    .line 69
    .line 70
    invoke-static {v2, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    const-string/jumbo p1, "persist.sys.gps.dds.subId"

    .line 74
    .line 75
    .line 76
    const-string v2, "0"

    .line 77
    .line 78
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    const-string p1, "LocationManagerService"

    .line 88
    .line 89
    const-string v2, "Sim slot property has wrong value, set 0"

    .line 90
    .line 91
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move p1, v1

    .line 95
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v3, "CarrierFeature_GPS_ConfigAgpsSetting"

    .line 100
    .line 101
    const-string v4, ""

    .line 102
    .line 103
    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_0

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_1

    .line 114
    .line 115
    :cond_0
    const-string/jumbo p1, "ro.csc.sales_code"

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :cond_1
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 127
    .line 128
    iput-object p1, v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 135
    .line 136
    new-instance p1, Lcom/android/server/location/geofence/GeofenceManager;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    invoke-direct {p1, v2, p2}, Lcom/android/server/location/geofence/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;)V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 146
    .line 147
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 148
    .line 149
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 150
    .line 151
    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;

    .line 152
    .line 153
    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p1, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 162
    .line 163
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 166
    .line 167
    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;

    .line 168
    .line 169
    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p1, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 178
    .line 179
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 180
    .line 181
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 182
    .line 183
    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;

    .line 184
    .line 185
    const/4 v3, 0x0

    .line 186
    invoke-direct {v2, p0, v3}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/LocationManagerService;I)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p1, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 190
    .line 191
    iget-object p1, p1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 197
    .line 198
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 201
    .line 202
    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;

    .line 203
    .line 204
    const/4 v3, 0x1

    .line 205
    invoke-direct {v2, p0, v3}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/LocationManagerService;I)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p1, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 209
    .line 210
    iget-object p1, p1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 211
    .line 212
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 216
    .line 217
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 218
    .line 219
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 220
    .line 221
    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;

    .line 222
    .line 223
    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 227
    .line 228
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 232
    .line 233
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$SystemInjector;->getEmergencyHelper()Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;

    .line 240
    .line 241
    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p1, Lcom/android/server/location/injector/EmergencyHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 245
    .line 246
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    new-instance p1, Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 250
    .line 251
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 252
    .line 253
    const-string/jumbo v3, "passive"

    .line 254
    .line 255
    .line 256
    invoke-direct {p1, v2, p2, v3, v0}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 257
    .line 258
    .line 259
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 260
    .line 261
    new-instance v0, Lcom/android/server/location/provider/PassiveLocationProvider;

    .line 262
    .line 263
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 264
    .line 265
    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 266
    .line 267
    invoke-static {v2}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    sget-object v4, Lcom/android/server/location/provider/PassiveLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    .line 272
    .line 273
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-direct {v0, v3, v2, v4, v5}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 278
    .line 279
    .line 280
    new-instance v2, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;

    .line 281
    .line 282
    const/4 v3, 0x1

    .line 283
    invoke-direct {v2, v3}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 290
    .line 291
    .line 292
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 293
    .line 294
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_2

    .line 305
    .line 306
    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;

    .line 307
    .line 308
    const/4 v1, 0x0

    .line 309
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/LocationManagerService;I)V

    .line 310
    .line 311
    .line 312
    iget-object v1, p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 313
    .line 314
    iget-object v1, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 315
    .line 316
    iget-object v2, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 317
    .line 318
    monitor-enter v2

    .line 319
    :try_start_1
    iput-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 320
    .line 321
    monitor-exit v2

    .line 322
    goto :goto_1

    .line 323
    :catchall_0
    move-exception p0

    .line 324
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    throw p0

    .line 326
    :cond_2
    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;

    .line 327
    .line 328
    const/4 v1, 0x1

    .line 329
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/LocationManagerService;I)V

    .line 330
    .line 331
    .line 332
    iget-object v1, p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 333
    .line 334
    iget-object v1, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 335
    .line 336
    iget-object v2, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 337
    .line 338
    monitor-enter v2

    .line 339
    :try_start_2
    iput-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 340
    .line 341
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 342
    :goto_1
    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;

    .line 343
    .line 344
    const/4 v1, 0x2

    .line 345
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/LocationManagerService;I)V

    .line 346
    .line 347
    .line 348
    iget-object p1, p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 349
    .line 350
    iget-object p1, p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 351
    .line 352
    iget-object v1, p1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 353
    .line 354
    monitor-enter v1

    .line 355
    :try_start_3
    iput-object v0, p1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;

    .line 356
    .line 357
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    new-instance p1, Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 359
    .line 360
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 361
    .line 362
    invoke-direct {p1, v0, p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;)V

    .line 363
    .line 364
    .line 365
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 366
    .line 367
    return-void

    .line 368
    :catchall_1
    move-exception p0

    .line 369
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 370
    throw p0

    .line 371
    :catchall_2
    move-exception p0

    .line 372
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 373
    throw p0
.end method


# virtual methods
.method public final addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide p3

    .line 22
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGnssAntennaInfoListener;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    .line 27
    .line 28
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_0
    :goto_0
    return-void
.end method

.method public final addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0, p3, p4, p5}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 35
    .line 36
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 22
    .line 23
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->startManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 25
    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v3, "android.hardware.type.watch"

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    xor-int/2addr v1, v2

    .line 41
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string/jumbo v3, "location_enable_stationary_throttle"

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    .line 57
    .line 58
    iget-object v2, p1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 61
    .line 62
    check-cast v3, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 63
    .line 64
    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;-><init>(Ljava/lang/String;Lcom/android/server/location/LocationManagerService$SystemInjector;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 65
    .line 66
    .line 67
    move-object p2, v1

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->addProviderRequestListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p4, p5}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 6
    .line 7
    check-cast v0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p5}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOp(Landroid/location/util/identity/CallerIdentity;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "isRegister"

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v2, "provider"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v2, "packageName"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 48
    .line 49
    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->MOCK_PROVIDER_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lcom/android/server/location/provider/MockLocationProvider;

    .line 59
    .line 60
    new-instance v2, Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-direct {v2, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, p2, p5, v2}, Lcom/android/server/location/provider/MockLocationProvider;-><init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter p2

    .line 74
    :try_start_0
    const-string/jumbo p3, "gps"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_1

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 84
    .line 85
    const-string/jumbo p3, "gps"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const-string/jumbo p3, "fused"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-eqz p3, :cond_2

    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 104
    .line 105
    const-string/jumbo p3, "fused"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const-string/jumbo p3, "network"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 122
    .line 123
    const-string/jumbo p3, "network"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 130
    .line 131
    if-nez p1, :cond_4

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_4

    .line 140
    .line 141
    invoke-virtual {p0, p4}, Lcom/android/server/location/LocationManagerService;->createNotificationForMockLocation(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iput-boolean v3, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 145
    .line 146
    :cond_4
    monitor-exit p2

    .line 147
    return-void

    .line 148
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw p0
.end method

.method public final calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/PackageTagsList$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/PackageTagsList$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eq v3, p1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    .line 57
    .line 58
    .line 59
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, " provider has specified a null attribution tag and a non-empty set of extra attribution tags - dropping the null attribution tag"

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "LocationManagerService"

    .line 96
    .line 97
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    :goto_1
    iget-object v1, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method public final cancelNotificationForMockLocation()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v3, "notification"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/app/NotificationManager;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Landroid/app/ActivityManager;->semUnregisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final createNotificationForMockLocation(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Mock Location Reminder"

    .line 6
    .line 7
    const-string/jumbo v3, "missing package: "

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    :try_start_0
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string/jumbo v8, "notification"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v7, Landroid/app/NotificationManager;

    .line 30
    .line 31
    const v8, 0x1040896

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    new-instance v10, Landroid/app/NotificationChannel;

    .line 39
    .line 40
    const/4 v11, 0x4

    .line 41
    invoke-direct {v10, v2, v9, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 45
    .line 46
    .line 47
    new-instance v9, Landroid/content/Intent;

    .line 48
    .line 49
    const-string/jumbo v10, "com.samsung.android.location.mock.delete"

    .line 50
    .line 51
    .line 52
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v10, "android.intent.extra.PACKAGE_NAME"

    .line 56
    .line 57
    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    const/16 v11, 0x40

    .line 63
    .line 64
    invoke-virtual {v10, v1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    iget-object v11, v0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    iget-object v12, v0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    .line 78
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 79
    .line 80
    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 93
    .line 94
    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    new-instance v13, Landroid/graphics/Canvas;

    .line 99
    .line 100
    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    const/4 v8, 0x0

    .line 112
    invoke-virtual {v10, v8, v8, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    .line 117
    .line 118
    const v10, 0x1040896

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    const v13, 0x1040894

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v13, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    new-instance v13, Landroid/app/Notification$Action$Builder;

    .line 137
    .line 138
    const v14, 0x1040895

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    const/high16 v15, 0x4c000000    # 3.3554432E7f

    .line 148
    .line 149
    invoke-static {v14, v8, v9, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    const/4 v14, 0x0

    .line 154
    invoke-direct {v13, v14, v6, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    new-instance v9, Landroid/app/Notification$Builder;

    .line 162
    .line 163
    iget-object v13, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-direct {v9, v13, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const v9, 0x10805d3

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    const/4 v9, 0x1

    .line 188
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    .line 193
    .line 194
    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10, v11}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    new-array v9, v9, [Landroid/app/Notification$Action;

    .line 206
    .line 207
    aput-object v6, v9, v8

    .line 208
    .line 209
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v7, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 218
    .line 219
    .line 220
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService;->mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

    .line 223
    .line 224
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .line 226
    .line 227
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    goto :goto_2

    .line 233
    :catch_0
    :try_start_1
    const-string v0, "LocationManagerService"

    .line 234
    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :goto_1
    return-void

    .line 252
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    .line 254
    .line 255
    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v5, "LocationManagerService"

    .line 12
    .line 13
    invoke-static {v4, v5, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v4, Landroid/util/IndentingPrintWriter;

    .line 21
    .line 22
    const-string v5, "  "

    .line 23
    .line 24
    invoke-direct {v4, v2, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    array-length v2, v3

    .line 28
    const/4 v5, 0x0

    .line 29
    if-lez v2, :cond_3

    .line 30
    .line 31
    aget-object v2, v3, v5

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const-string v0, "Provider:"

    .line 40
    .line 41
    invoke-virtual {v4, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/location/provider/LocationProviderManager;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 51
    .line 52
    .line 53
    const-string v0, "Event Log:"

    .line 54
    .line 55
    invoke-virtual {v4, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 59
    .line 60
    .line 61
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 62
    .line 63
    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    invoke-direct {v1, v4}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    const-string v2, "--gnssmetrics"

    .line 78
    .line 79
    aget-object v6, v3, v5

    .line 80
    .line 81
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 92
    .line 93
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void

    .line 97
    :cond_3
    const-string v2, "Location Manager State:"

    .line 98
    .line 99
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 103
    .line 104
    .line 105
    const-string v2, "User Info:"

    .line 106
    .line 107
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 111
    .line 112
    .line 113
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 114
    .line 115
    check-cast v2, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    array-length v7, v6

    .line 124
    const/4 v8, 0x1

    .line 125
    if-le v7, v8, :cond_4

    .line 126
    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string/jumbo v9, "running users: u"

    .line 130
    .line 131
    .line 132
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v4, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    if-nez v6, :cond_5

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    invoke-virtual {v6}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string/jumbo v9, "current users: u"

    .line 163
    .line 164
    .line 165
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-eqz v2, :cond_7

    .line 187
    .line 188
    array-length v7, v6

    .line 189
    move v9, v5

    .line 190
    :goto_0
    if-ge v9, v7, :cond_7

    .line 191
    .line 192
    aget v10, v6, v9

    .line 193
    .line 194
    const-string/jumbo v11, "no_share_location"

    .line 195
    .line 196
    .line 197
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    invoke-virtual {v2, v11, v12}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-eqz v11, :cond_6

    .line 206
    .line 207
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 208
    .line 209
    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string/jumbo v12, "u"

    .line 213
    .line 214
    .line 215
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v10, " restricted"

    .line 222
    .line 223
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    invoke-virtual {v4, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 234
    .line 235
    .line 236
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 237
    .line 238
    goto :goto_0

    .line 239
    :cond_7
    :goto_1
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 240
    .line 241
    .line 242
    const-string v2, "Location Settings:"

    .line 243
    .line 244
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 248
    .line 249
    .line 250
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 251
    .line 252
    check-cast v2, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 253
    .line 254
    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-interface {v6}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 264
    .line 265
    .line 266
    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    const-string v7, "Location Setting: "

    .line 268
    .line 269
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 273
    .line 274
    .line 275
    array-length v7, v6

    .line 276
    if-le v7, v8, :cond_8

    .line 277
    .line 278
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 279
    .line 280
    .line 281
    array-length v7, v6

    .line 282
    move v9, v5

    .line 283
    :goto_2
    if-ge v9, v7, :cond_9

    .line 284
    .line 285
    aget v10, v6, v9

    .line 286
    .line 287
    const-string v11, "[u"

    .line 288
    .line 289
    invoke-virtual {v4, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 293
    .line 294
    .line 295
    const-string v11, "] "

    .line 296
    .line 297
    invoke-virtual {v4, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v10}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    invoke-virtual {v4, v10}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 305
    .line 306
    .line 307
    add-int/lit8 v9, v9, 0x1

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_8
    aget v7, v6, v5

    .line 311
    .line 312
    invoke-virtual {v2, v7}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 317
    .line 318
    .line 319
    :cond_9
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 320
    .line 321
    .line 322
    const-string v7, "Location Allow/Deny Packages:"

    .line 323
    .line 324
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 328
    .line 329
    .line 330
    array-length v7, v6

    .line 331
    const-string v9, "[allow] "

    .line 332
    .line 333
    iget-object v10, v2, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 334
    .line 335
    const-string v11, "[deny] "

    .line 336
    .line 337
    iget-object v12, v2, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 338
    .line 339
    if-le v7, v8, :cond_d

    .line 340
    .line 341
    array-length v7, v6

    .line 342
    move v13, v5

    .line 343
    :goto_3
    if-ge v13, v7, :cond_f

    .line 344
    .line 345
    aget v14, v6, v13

    .line 346
    .line 347
    invoke-virtual {v12, v14}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v15

    .line 351
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 352
    .line 353
    .line 354
    move-result v16

    .line 355
    if-eqz v16, :cond_a

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_a
    const-string/jumbo v8, "user "

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v14}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 365
    .line 366
    .line 367
    const-string v8, ":"

    .line 368
    .line 369
    invoke-virtual {v4, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 373
    .line 374
    .line 375
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v15

    .line 383
    if-eqz v15, :cond_b

    .line 384
    .line 385
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v15

    .line 389
    check-cast v15, Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {v4, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4, v15}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    goto :goto_4

    .line 398
    :cond_b
    invoke-virtual {v10, v14}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object v8

    .line 402
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result v14

    .line 410
    if-eqz v14, :cond_c

    .line 411
    .line 412
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v14

    .line 416
    check-cast v14, Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v4, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    goto :goto_5

    .line 425
    :cond_c
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 426
    .line 427
    .line 428
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 429
    .line 430
    const/4 v8, 0x1

    .line 431
    goto :goto_3

    .line 432
    :cond_d
    aget v7, v6, v5

    .line 433
    .line 434
    invoke-virtual {v12, v7}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    if-eqz v8, :cond_e

    .line 447
    .line 448
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    check-cast v8, Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v4, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_e
    aget v6, v6, v5

    .line 462
    .line 463
    invoke-virtual {v10, v6}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 472
    .line 473
    .line 474
    move-result v7

    .line 475
    if-eqz v7, :cond_f

    .line 476
    .line 477
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    check-cast v7, Ljava/lang/String;

    .line 482
    .line 483
    invoke-virtual {v4, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    goto :goto_8

    .line 490
    :cond_f
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 491
    .line 492
    .line 493
    iget-object v6, v2, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 494
    .line 495
    invoke-virtual {v6}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    check-cast v6, Landroid/util/ArraySet;

    .line 500
    .line 501
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    if-nez v7, :cond_11

    .line 506
    .line 507
    const-string v7, "Throttling Allow Packages:"

    .line 508
    .line 509
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    if-eqz v7, :cond_10

    .line 524
    .line 525
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    check-cast v7, Ljava/lang/String;

    .line 530
    .line 531
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    goto :goto_9

    .line 535
    :cond_10
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 536
    .line 537
    .line 538
    :cond_11
    iget-object v6, v2, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    .line 539
    .line 540
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 541
    .line 542
    .line 543
    move-result v6

    .line 544
    if-nez v6, :cond_13

    .line 545
    .line 546
    const-string v6, "Throttling Allow Packages by nsflp:"

    .line 547
    .line 548
    invoke-virtual {v4, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 552
    .line 553
    .line 554
    iget-object v6, v2, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    .line 555
    .line 556
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 561
    .line 562
    .line 563
    move-result v7

    .line 564
    if-eqz v7, :cond_12

    .line 565
    .line 566
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    check-cast v7, Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    goto :goto_a

    .line 576
    :cond_12
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 577
    .line 578
    .line 579
    :cond_13
    iget-object v6, v2, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 580
    .line 581
    invoke-virtual {v6}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 582
    .line 583
    .line 584
    move-result-object v6

    .line 585
    invoke-virtual {v6}, Landroid/os/PackageTagsList;->isEmpty()Z

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    if-nez v7, :cond_14

    .line 590
    .line 591
    const-string v7, "Emergency Bypass Allow Packages:"

    .line 592
    .line 593
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v6, v4}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 603
    .line 604
    .line 605
    :cond_14
    iget-object v2, v2, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 606
    .line 607
    invoke-virtual {v2}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-virtual {v2}, Landroid/os/PackageTagsList;->isEmpty()Z

    .line 612
    .line 613
    .line 614
    move-result v6

    .line 615
    if-nez v6, :cond_15

    .line 616
    .line 617
    const-string v6, "ADAS Bypass Allow Packages:"

    .line 618
    .line 619
    invoke-virtual {v4, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2, v4}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 629
    .line 630
    .line 631
    :cond_15
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 632
    .line 633
    check-cast v2, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 634
    .line 635
    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 636
    .line 637
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    invoke-interface {v6}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 645
    .line 646
    .line 647
    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 648
    iget-object v7, v2, Lcom/android/server/location/settings/LocationSettings;->mContext:Landroid/content/Context;

    .line 649
    .line 650
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 651
    .line 652
    .line 653
    move-result-object v7

    .line 654
    const-string v8, "android.hardware.type.automotive"

    .line 655
    .line 656
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result v7

    .line 660
    if-eqz v7, :cond_18

    .line 661
    .line 662
    const-string v7, "ADAS Location Setting: "

    .line 663
    .line 664
    invoke-virtual {v4, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 668
    .line 669
    .line 670
    array-length v7, v6

    .line 671
    const/4 v8, 0x1

    .line 672
    if-le v7, v8, :cond_16

    .line 673
    .line 674
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 675
    .line 676
    .line 677
    array-length v7, v6

    .line 678
    move v8, v5

    .line 679
    :goto_b
    if-ge v8, v7, :cond_17

    .line 680
    .line 681
    aget v9, v6, v8

    .line 682
    .line 683
    const-string v10, "[u"

    .line 684
    .line 685
    invoke-virtual {v4, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v4, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 689
    .line 690
    .line 691
    const-string v10, "] "

    .line 692
    .line 693
    invoke-virtual {v4, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v2, v9}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    .line 697
    .line 698
    .line 699
    move-result-object v9

    .line 700
    iget-boolean v9, v9, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 701
    .line 702
    invoke-virtual {v4, v9}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 703
    .line 704
    .line 705
    add-int/lit8 v8, v8, 0x1

    .line 706
    .line 707
    goto :goto_b

    .line 708
    :cond_16
    aget v6, v6, v5

    .line 709
    .line 710
    invoke-virtual {v2, v6}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    iget-boolean v2, v2, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 715
    .line 716
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 717
    .line 718
    .line 719
    :cond_17
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 720
    .line 721
    .line 722
    :cond_18
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 723
    .line 724
    .line 725
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 726
    .line 727
    monitor-enter v2

    .line 728
    :try_start_2
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 729
    .line 730
    if-eqz v6, :cond_1a

    .line 731
    .line 732
    new-instance v6, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string v7, "Location Controller Extra Package: "

    .line 738
    .line 739
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 743
    .line 744
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    iget-boolean v7, v0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 748
    .line 749
    if-eqz v7, :cond_19

    .line 750
    .line 751
    const-string v7, " [enabled]"

    .line 752
    .line 753
    goto :goto_c

    .line 754
    :catchall_0
    move-exception v0

    .line 755
    goto/16 :goto_14

    .line 756
    .line 757
    :cond_19
    const-string v7, " [disabled]"

    .line 758
    .line 759
    :goto_c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v6

    .line 766
    invoke-virtual {v4, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    :cond_1a
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 770
    const-string v2, "Location Providers:"

    .line 771
    .line 772
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 776
    .line 777
    .line 778
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 779
    .line 780
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 781
    .line 782
    .line 783
    move-result-object v2

    .line 784
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    if-eqz v6, :cond_1b

    .line 789
    .line 790
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v6

    .line 794
    check-cast v6, Lcom/android/server/location/provider/LocationProviderManager;

    .line 795
    .line 796
    invoke-virtual {v6, v1, v4, v3}, Lcom/android/server/location/provider/LocationProviderManager;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    goto :goto_d

    .line 800
    :cond_1b
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 801
    .line 802
    .line 803
    const-string v2, "Historical Aggregate Location Provider Data:"

    .line 804
    .line 805
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 809
    .line 810
    .line 811
    sget-object v2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 812
    .line 813
    iget-object v6, v2, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    .line 814
    .line 815
    monitor-enter v6

    .line 816
    :try_start_3
    new-instance v7, Landroid/util/ArrayMap;

    .line 817
    .line 818
    iget-object v2, v2, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    .line 819
    .line 820
    invoke-direct {v7, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 821
    .line 822
    .line 823
    move v2, v5

    .line 824
    :goto_e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 825
    .line 826
    .line 827
    move-result v8

    .line 828
    if-ge v2, v8, :cond_1c

    .line 829
    .line 830
    new-instance v8, Landroid/util/ArrayMap;

    .line 831
    .line 832
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v9

    .line 836
    check-cast v9, Landroid/util/ArrayMap;

    .line 837
    .line 838
    invoke-direct {v8, v9}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v7, v2, v8}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    add-int/lit8 v2, v2, 0x1

    .line 845
    .line 846
    goto :goto_e

    .line 847
    :catchall_1
    move-exception v0

    .line 848
    goto/16 :goto_13

    .line 849
    .line 850
    :cond_1c
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 851
    move v2, v5

    .line 852
    :goto_f
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 853
    .line 854
    .line 855
    move-result v6

    .line 856
    if-ge v2, v6, :cond_1e

    .line 857
    .line 858
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v6

    .line 862
    check-cast v6, Ljava/lang/String;

    .line 863
    .line 864
    invoke-virtual {v4, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    const-string v6, ":"

    .line 868
    .line 869
    invoke-virtual {v4, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v6

    .line 879
    check-cast v6, Landroid/util/ArrayMap;

    .line 880
    .line 881
    move v8, v5

    .line 882
    :goto_10
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 883
    .line 884
    .line 885
    move-result v9

    .line 886
    if-ge v8, v9, :cond_1d

    .line 887
    .line 888
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v9

    .line 892
    invoke-virtual {v4, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 893
    .line 894
    .line 895
    const-string v9, ": "

    .line 896
    .line 897
    invoke-virtual {v4, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v9

    .line 904
    check-cast v9, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    .line 905
    .line 906
    invoke-virtual {v9}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v9

    .line 913
    invoke-virtual {v4, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 914
    .line 915
    .line 916
    add-int/lit8 v8, v8, 0x1

    .line 917
    .line 918
    goto :goto_10

    .line 919
    :cond_1d
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 920
    .line 921
    .line 922
    add-int/lit8 v2, v2, 0x1

    .line 923
    .line 924
    goto :goto_f

    .line 925
    :cond_1e
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 926
    .line 927
    .line 928
    const-string v2, "Historical Aggregate Gnss Measurement Provider Data:"

    .line 929
    .line 930
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 934
    .line 935
    .line 936
    sget-object v2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 937
    .line 938
    iget-object v7, v2, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    .line 939
    .line 940
    monitor-enter v7

    .line 941
    :try_start_4
    new-instance v6, Landroid/util/ArrayMap;

    .line 942
    .line 943
    iget-object v2, v2, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    .line 944
    .line 945
    invoke-direct {v6, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 946
    .line 947
    .line 948
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 949
    :goto_11
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 950
    .line 951
    .line 952
    move-result v2

    .line 953
    if-ge v5, v2, :cond_1f

    .line 954
    .line 955
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 960
    .line 961
    .line 962
    const-string v2, ": "

    .line 963
    .line 964
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    check-cast v2, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    .line 972
    .line 973
    invoke-virtual {v2}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->updateTotals()V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 981
    .line 982
    .line 983
    add-int/lit8 v5, v5, 0x1

    .line 984
    .line 985
    goto :goto_11

    .line 986
    :cond_1f
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 987
    .line 988
    .line 989
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 990
    .line 991
    if-eqz v2, :cond_20

    .line 992
    .line 993
    const-string v2, "GNSS Manager:"

    .line 994
    .line 995
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 999
    .line 1000
    .line 1001
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 1002
    .line 1003
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1007
    .line 1008
    .line 1009
    :cond_20
    const-string v2, "Geofence Manager:"

    .line 1010
    .line 1011
    invoke-virtual {v4, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1015
    .line 1016
    .line 1017
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    .line 1018
    .line 1019
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1023
    .line 1024
    .line 1025
    const-string v1, "Event Log:"

    .line 1026
    .line 1027
    invoke-virtual {v4, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1031
    .line 1032
    .line 1033
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 1034
    .line 1035
    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;

    .line 1036
    .line 1037
    invoke-direct {v2, v4}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1038
    .line 1039
    .line 1040
    const/4 v3, 0x0

    .line 1041
    invoke-virtual {v1, v3, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1045
    .line 1046
    .line 1047
    const-string v1, "Mock Location Record:"

    .line 1048
    .line 1049
    invoke-virtual {v4, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 1053
    .line 1054
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v1

    .line 1066
    if-eqz v1, :cond_21

    .line 1067
    .line 1068
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    check-cast v1, Ljava/util/Map$Entry;

    .line 1073
    .line 1074
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v2

    .line 1078
    check-cast v2, Ljava/lang/String;

    .line 1079
    .line 1080
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v1

    .line 1084
    check-cast v1, Ljava/lang/String;

    .line 1085
    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    const-string v5, "    "

    .line 1089
    .line 1090
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    .line 1096
    const-string v2, ": "

    .line 1097
    .line 1098
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v1

    .line 1108
    invoke-virtual {v4, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    goto :goto_12

    .line 1112
    :cond_21
    return-void

    .line 1113
    :catchall_2
    move-exception v0

    .line 1114
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1115
    throw v0

    .line 1116
    :goto_13
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1117
    throw v0

    .line 1118
    :goto_14
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1119
    throw v0

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    throw v0

    .line 1126
    :catch_1
    move-exception v0

    .line 1127
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    throw v0
.end method

.method public final flushGnssBatch()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->flushGnssBatch_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string/jumbo v2, "gps"

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/location/LocationManagerService;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingPackage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingAttributionTag()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0, v1, v2}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;

    .line 36
    .line 37
    invoke-direct {v0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;-><init>(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    :try_start_0
    invoke-interface {p2, p0}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    :goto_1
    return-void
.end method

.method public final getAdasAllowlist()Landroid/os/PackageTagsList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getAllProviders()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method

.method public final getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    .line 15
    .line 16
    check-cast p0, Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, [Ljava/lang/String;

    .line 23
    .line 24
    return-object p0
.end method

.method public final getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v2, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_4

    .line 28
    .line 29
    const-string/jumbo p0, "fused"

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const-string/jumbo p0, "fused"

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    const-string/jumbo p0, "gps"

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    const-string/jumbo p0, "gps"

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    const-string/jumbo p0, "network"

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    const-string/jumbo p0, "network"

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_3
    const/4 p0, 0x0

    .line 69
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Ljava/lang/String;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_4
    return-object v2

    .line 77
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method

.method public final getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p4, p5, p6}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    iget-object p4, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 10
    .line 11
    .line 12
    move-result p6

    .line 13
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p4, p6, v0}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    invoke-static {}, Landroid/location/flags/Flags;->enableLocationBypass()Z

    .line 22
    .line 23
    .line 24
    move-result p6

    .line 25
    const/4 v0, 0x2

    .line 26
    const/4 v7, 0x1

    .line 27
    if-eqz p6, :cond_1

    .line 28
    .line 29
    if-nez p4, :cond_2

    .line 30
    .line 31
    iget-object p6, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string v1, "android.permission.LOCATION_BYPASS"

    .line 34
    .line 35
    invoke-virtual {p6, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p6

    .line 39
    if-eqz p6, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result p6

    .line 45
    invoke-static {p6, p4, v7}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v6, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 52
    .line 53
    .line 54
    move-result p6

    .line 55
    invoke-static {p6, p4, v7}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    move v6, p4

    .line 59
    :goto_1
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 64
    .line 65
    .line 66
    move-result p6

    .line 67
    const/4 v8, 0x0

    .line 68
    if-ne p4, p6, :cond_4

    .line 69
    .line 70
    if-eqz p5, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move p4, v8

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    :goto_2
    move p4, v7

    .line 76
    :goto_3
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_5

    .line 88
    .line 89
    move p4, v7

    .line 90
    goto :goto_4

    .line 91
    :cond_5
    move p4, v8

    .line 92
    :goto_4
    new-instance p5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo p6, "provider \""

    .line 95
    .line 96
    .line 97
    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, "\" does not exist"

    .line 104
    .line 105
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getDurationMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide p4

    .line 122
    const-wide/16 v1, 0x7530

    .line 123
    .line 124
    cmp-long p1, p4, v1

    .line 125
    .line 126
    if-lez p1, :cond_6

    .line 127
    .line 128
    new-instance p1, Landroid/location/LocationRequest$Builder;

    .line 129
    .line 130
    invoke-direct {p1, p2}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1, v2}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    move-object v3, p1

    .line 142
    goto :goto_5

    .line 143
    :cond_6
    move-object v3, p2

    .line 144
    :goto_5
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    .line 145
    .line 146
    new-instance v5, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;

    .line 147
    .line 148
    invoke-direct {v5, p3}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;-><init>(Landroid/location/ILocationCallback;)V

    .line 149
    .line 150
    .line 151
    move-object v1, p1

    .line 152
    move-object v2, p0

    .line 153
    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;I)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 157
    .line 158
    monitor-enter p2

    .line 159
    :try_start_0
    iget p4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 160
    .line 161
    if-eq p4, v0, :cond_7

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_7
    move v7, v8

    .line 165
    :goto_6
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 169
    .line 170
    .line 171
    move-result-wide p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    invoke-interface {p3}, Landroid/location/ILocationCallback;->asBinder()Landroid/os/IBinder;

    .line 173
    .line 174
    .line 175
    move-result-object p6

    .line 176
    invoke-virtual {p0, p6, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 177
    .line 178
    .line 179
    iget-boolean p6, p1, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    .line 180
    .line 181
    if-nez p6, :cond_8

    .line 182
    .line 183
    const/4 p6, 0x0

    .line 184
    invoke-virtual {p1, p6}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    .line 185
    .line 186
    .line 187
    move-result-object p6

    .line 188
    invoke-virtual {p1, p6}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    .line 190
    .line 191
    :cond_8
    :try_start_2
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    .line 193
    .line 194
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {p2}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 200
    .line 201
    .line 202
    move-result-object p4

    .line 203
    new-instance p5, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    .line 204
    .line 205
    invoke-direct {p5, p0, p3, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p4, p5}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 209
    .line 210
    .line 211
    return-object p2

    .line 212
    :catchall_0
    move-exception p0

    .line 213
    goto :goto_7

    .line 214
    :catchall_1
    move-exception p0

    .line 215
    :try_start_3
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :goto_7
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    throw p0
.end method

.method public final getExtraLocationControllerPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getGPSUsingApps()Ljava/util/List;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v0, "NSLocationMonitor"

    .line 17
    .line 18
    const-string/jumbo v1, "getGPSUsingApps() called"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    const-string p0, "NSMonitorService is not connected, return null"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/location/INSLocationManager;->getGPSUsingApps()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v3, "failed to getGPSUsingApps due to  "

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, ", return null"

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    return-object v2
.end method

.method public final getGnssAntennaInfos()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    .line 12
    .line 13
    :goto_0
    return-object p0
.end method

.method public final getGnssBatchSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    :goto_0
    return p0
.end method

.method public final getGnssCapabilities()Landroid/location/GnssCapabilities;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Landroid/location/GnssCapabilities$Builder;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/location/GnssCapabilities$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/location/GnssCapabilities$Builder;->build()Landroid/location/GnssCapabilities;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public final getGnssHardwareModelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object p0
.end method

.method public final getGnssTimeMillis()Landroid/location/LocationTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$LocalService;->getGnssTimeMillis()Landroid/location/LocationTime;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getGnssYearOfHardware()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    .line 12
    .line 13
    :goto_0
    return p0
.end method

.method public final getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {}, Landroid/location/flags/Flags;->enableLocationBypass()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x2

    .line 26
    const-string v3, "android.permission.LOCATION_BYPASS"

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1, v0, v4}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v1, v0, v4}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v6, 0x0

    .line 67
    if-ne v1, v5, :cond_4

    .line 68
    .line 69
    if-eqz p4, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move p4, v6

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    :goto_1
    move p4, v4

    .line 75
    :goto_2
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 76
    .line 77
    .line 78
    new-instance p4, Landroid/location/LastLocationRequest$Builder;

    .line 79
    .line 80
    invoke-direct {p4, p2}, Landroid/location/LastLocationRequest$Builder;-><init>(Landroid/location/LastLocationRequest;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iget-object p4, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p4, v1, p3}, Lcom/android/server/location/LocationManagerService$LocalService;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    .line 91
    .line 92
    .line 93
    move-result p4

    .line 94
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isHiddenFromAppOps()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    const-string v7, "android.permission.UPDATE_APP_OPS_STATS"

    .line 103
    .line 104
    const-string/jumbo v8, "hiding from app ops requires android.permission.UPDATE_APP_OPS_STATS"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isAdasGnssBypass()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    const-string/jumbo v7, "gps"

    .line 115
    .line 116
    .line 117
    if-eqz v5, :cond_8

    .line 118
    .line 119
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    const-string v8, "android.hardware.type.automotive"

    .line 126
    .line 127
    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_7

    .line 132
    .line 133
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_6

    .line 138
    .line 139
    if-nez p4, :cond_8

    .line 140
    .line 141
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v5}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    const-string p1, "adas gnss bypass requests are only allowed on the \"gps\" provider"

    .line 150
    .line 151
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    const-string p1, "adas gnss bypass requests are only allowed on automotive devices"

    .line 158
    .line 159
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_8
    :goto_3
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isLocationSettingsIgnored()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_9

    .line 168
    .line 169
    if-nez p4, :cond_9

    .line 170
    .line 171
    iget-object p4, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {p4}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    if-nez p0, :cond_a

    .line 181
    .line 182
    return-object v1

    .line 183
    :cond_a
    new-instance p1, Landroid/location/LastLocationRequest$Builder;

    .line 184
    .line 185
    invoke-direct {p1, p2}, Landroid/location/LastLocationRequest$Builder;-><init>(Landroid/location/LastLocationRequest;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isLocationSettingsIgnored()Z

    .line 189
    .line 190
    .line 191
    move-result p4

    .line 192
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 193
    .line 194
    if-eqz p4, :cond_c

    .line 195
    .line 196
    iget-object v8, v5, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 197
    .line 198
    invoke-virtual {v8}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-virtual {v8, v9, v10}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-nez v8, :cond_b

    .line 215
    .line 216
    iget-object v8, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 217
    .line 218
    invoke-virtual {v8, v1, p3}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-nez v8, :cond_b

    .line 223
    .line 224
    move p4, v6

    .line 225
    :cond_b
    invoke-virtual {p1, p4}, Landroid/location/LastLocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;

    .line 226
    .line 227
    .line 228
    :cond_c
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isAdasGnssBypass()Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_12

    .line 233
    .line 234
    iget-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p4

    .line 240
    if-nez p4, :cond_d

    .line 241
    .line 242
    const-string p2, "LocationManagerService"

    .line 243
    .line 244
    const-string p4, "adas gnss bypass request received in non-gps provider"

    .line 245
    .line 246
    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_d
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 251
    .line 252
    .line 253
    move-result p4

    .line 254
    iget-object v7, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 255
    .line 256
    invoke-virtual {v7}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    if-eqz v7, :cond_e

    .line 261
    .line 262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 263
    .line 264
    .line 265
    move-result-wide v8

    .line 266
    :try_start_0
    invoke-virtual {v7, p4}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    .line 267
    .line 268
    .line 269
    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :catchall_0
    move-exception p0

    .line 275
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    .line 277
    .line 278
    throw p0

    .line 279
    :cond_e
    move p4, v6

    .line 280
    :goto_4
    if-nez p4, :cond_f

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_f
    iget-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 284
    .line 285
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    invoke-virtual {p4, v7}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    .line 290
    .line 291
    .line 292
    move-result-object p4

    .line 293
    iget-boolean p4, p4, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 294
    .line 295
    if-nez p4, :cond_10

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_10
    iget-object p4, v5, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 299
    .line 300
    invoke-virtual {p4}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 301
    .line 302
    .line 303
    move-result-object p4

    .line 304
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-virtual {p4, v5, v7}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result p4

    .line 316
    if-nez p4, :cond_11

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_11
    move v6, p2

    .line 320
    :goto_5
    invoke-virtual {p1, v6}, Landroid/location/LastLocationRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/LastLocationRequest$Builder;

    .line 321
    .line 322
    .line 323
    :cond_12
    invoke-virtual {p1}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isBypass()Z

    .line 328
    .line 329
    .line 330
    move-result p2

    .line 331
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(ZLandroid/location/util/identity/CallerIdentity;)Z

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    if-nez p2, :cond_13

    .line 336
    .line 337
    goto/16 :goto_8

    .line 338
    .line 339
    :cond_13
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isBypass()Z

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    const-wide v9, 0x7fffffffffffffffL

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    move-object v5, p0

    .line 353
    move v7, v0

    .line 354
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    if-eq v0, v4, :cond_15

    .line 359
    .line 360
    if-ne v0, v2, :cond_14

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_14
    new-instance p0, Ljava/lang/AssertionError;

    .line 364
    .line 365
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 366
    .line 367
    .line 368
    throw p0

    .line 369
    :cond_15
    if-eqz p1, :cond_16

    .line 370
    .line 371
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    .line 372
    .line 373
    invoke-virtual {p2, p1}, Lcom/android/server/location/fudger/LocationFudger;->createCoarse(Landroid/location/Location;)Landroid/location/Location;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    goto :goto_6

    .line 378
    :cond_16
    move-object p1, v1

    .line 379
    :goto_6
    if-eqz p1, :cond_19

    .line 380
    .line 381
    invoke-static {}, Landroid/location/flags/Flags;->enableLocationBypass()Z

    .line 382
    .line 383
    .line 384
    move-result p2

    .line 385
    if-eqz p2, :cond_17

    .line 386
    .line 387
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 388
    .line 389
    invoke-virtual {p2, v0, p3}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 390
    .line 391
    .line 392
    move-result p2

    .line 393
    if-nez p2, :cond_17

    .line 394
    .line 395
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 396
    .line 397
    const-wide/16 v4, 0x0

    .line 398
    .line 399
    invoke-virtual {p2, v4, v5}, Lcom/android/server/location/injector/SystemEmergencyHelper;->isInEmergency(J)Z

    .line 400
    .line 401
    .line 402
    move-result p2

    .line 403
    if-eqz p2, :cond_17

    .line 404
    .line 405
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 406
    .line 407
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 408
    .line 409
    .line 410
    move-result p4

    .line 411
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    invoke-virtual {p2, v3, p4, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 416
    .line 417
    .line 418
    move-result p2

    .line 419
    if-nez p2, :cond_17

    .line 420
    .line 421
    const/16 p2, 0x93

    .line 422
    .line 423
    goto :goto_7

    .line 424
    :cond_17
    invoke-static {v0}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    .line 425
    .line 426
    .line 427
    move-result p2

    .line 428
    :goto_7
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 429
    .line 430
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 431
    .line 432
    .line 433
    move-result p0

    .line 434
    if-nez p0, :cond_18

    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_18
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 438
    .line 439
    .line 440
    move-result p0

    .line 441
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 442
    .line 443
    .line 444
    move-result p2

    .line 445
    if-ne p0, p2, :cond_19

    .line 446
    .line 447
    new-instance p0, Landroid/location/Location;

    .line 448
    .line 449
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 450
    .line 451
    .line 452
    move-object v1, p0

    .line 453
    goto :goto_8

    .line 454
    :cond_19
    move-object v1, p1

    .line 455
    :goto_8
    return-object v1
.end method

.method public final getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    return-object v1

    .line 39
    :cond_3
    return-object v0
.end method

.method public final getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 41
    .line 42
    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-object v1

    .line 51
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getProviderPackages_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 28
    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "provider \""

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "\" does not exist"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 46
    .line 47
    return-object p0
.end method

.method public final getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-lt v0, v1, :cond_4

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    iget-object v3, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v2, v4}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    .line 88
    .line 89
    invoke-static {v3, v2, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Landroid/location/Criteria;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    monitor-exit v0

    .line 101
    return-object v1

    .line 102
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0

    .line 104
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/location/LocationShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lcom/android/server/location/LocationShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    move-object v1, p0

    .line 21
    move-object v5, p4

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final hasProvider(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    const-string p0, "GnssManager"

    .line 31
    .line 32
    const-string/jumbo p1, "failed to inject GNSS measurement corrections"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final injectLocation(Landroid/location/Location;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->injectLocation_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v7, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v7

    .line 34
    :try_start_0
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    if-eq v1, v2, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 43
    .line 44
    .line 45
    const-wide v5, 0x7fffffffffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    const/4 v4, 0x0

    .line 52
    move-object v1, p0

    .line 53
    move v2, v0

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(ILandroid/location/Location;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_1
    monitor-exit v7

    .line 67
    goto :goto_3

    .line 68
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_3
    return-void
.end method

.method public final isAdasGnssLocationEnabledForUser(I)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string/jumbo v5, "isAdasGnssLocationEnabledForUser"

    .line 10
    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move v2, p1

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 21
    .line 22
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-boolean p0, p0, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 31
    .line 32
    return p0
.end method

.method public final isAutomotiveGnssSuspended()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->isAutomotiveGnssSuspended_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.hardware.type.automotive"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 35
    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return v1

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0

    .line 46
    :cond_1
    return v1

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string/jumbo v0, "isAutomotiveGnssSuspended only allowed on automotive devices"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final isExtraLocationControllerPackageEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final isGeocodeAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isLocationEnabledForUser(I)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string/jumbo v5, "isLocationEnabledForUser"

    .line 10
    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move v2, p1

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 21
    .line 22
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->isProviderPackage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    if-eqz p3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    :cond_3
    const/4 p0, 0x1

    .line 73
    return p0

    .line 74
    :cond_4
    const/4 p0, 0x0

    .line 75
    return p0
.end method

.method public final logEmergencyState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$SystemInjector;->getEmergencyHelper()Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-wide/high16 v1, -0x8000000000000000L

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemEmergencyHelper;->isInEmergency(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 16
    .line 17
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    const/16 v1, 0x279

    .line 23
    .line 24
    :try_start_0
    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method public final logLocationEnabledState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    aget v3, v0, v2

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 19
    .line 20
    check-cast v4, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 35
    .line 36
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 39
    .line 40
    monitor-enter p0

    .line 41
    const/16 v0, 0x244

    .line 42
    .line 43
    :try_start_0
    invoke-static {v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p0

    .line 50
    throw v0
.end method

.method public final notifyNSFLP(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p0, "NSLocationMonitor"

    .line 9
    .line 10
    const-string/jumbo p1, "onMessageUpdated, message is null"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/16 v1, 0xc8

    .line 21
    .line 22
    if-ne v0, v1, :cond_4

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 25
    .line 26
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 34
    .line 35
    const/16 v1, 0x3b

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v1, "interfaceName"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    const-string/jumbo v2, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    const-string/jumbo v1, "uid"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const-string/jumbo v2, "pid"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    const-string/jumbo v3, "permissionLevel"

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v4, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 96
    .line 97
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    .line 98
    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/4 v2, 0x3

    .line 109
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v0, "Failed to update GmsApiRequest, "

    .line 120
    .line 121
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const-string p1, "NSLocationProviderHelper"

    .line 136
    .line 137
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 142
    .line 143
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    .line 144
    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    .line 149
    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    const/4 v2, 0x3

    .line 155
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_0
    return-void
.end method

.method public final onFreezeStateChanged(ZI)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v1, "onFreezeStateChanged, uid["

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "]="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "LocationManagerService"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 39
    .line 40
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-ne v0, p1, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    new-instance v1, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v2, "enabled"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    const-string/jumbo p1, "uid"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, v0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 100
    .line 101
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->FREEZE_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 102
    .line 103
    invoke-virtual {p1, v0, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object p0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 123
    .line 124
    invoke-interface {p1, p2}, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;->onLocationPermissionsChanged(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    :goto_2
    return-void
.end method

.method public final recoverRealProviderLocked(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v4, "remove mock location. package: "

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "provider name: "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v3, "LocationManagerService"

    .line 66
    .line 67
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    const/4 v2, 0x0

    .line 78
    invoke-virtual {v1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 82
    .line 83
    iget-object v3, v2, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v2, v2, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 87
    .line 88
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p0

    .line 102
    :cond_3
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->cancelNotificationForMockLocation()V

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void
.end method

.method public final refreshAppOpsRestrictions(I)V
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getRunningUserIds()[I

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    array-length v0, p1

    .line 16
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    aget v0, p1, v1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    if-ltz p1, :cond_2

    .line 29
    .line 30
    move v1, v0

    .line 31
    :cond_2
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 35
    .line 36
    check-cast v1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_5

    .line 45
    .line 46
    new-instance v2, Landroid/os/PackageTagsList$Builder;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/os/PackageTagsList$Builder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lcom/android/server/location/provider/LocationProviderManager;

    .line 68
    .line 69
    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 70
    .line 71
    iget-object v4, v4, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 78
    .line 79
    iget-object v4, v4, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 82
    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v2, v5, v4}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 98
    .line 99
    check-cast v3, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 100
    .line 101
    iget-object v3, v3, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 102
    .line 103
    iget-object v3, v3, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 113
    .line 114
    check-cast v3, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 115
    .line 116
    iget-object v3, v3, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 117
    .line 118
    iget-object v3, v3, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    const/4 v2, 0x0

    .line 133
    :goto_2
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    const-class v4, Landroid/app/AppOpsManager;

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    move-object v9, v3

    .line 142
    check-cast v9, Landroid/app/AppOpsManager;

    .line 143
    .line 144
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    xor-int/2addr v0, v1

    .line 148
    const/4 v4, 0x0

    .line 149
    move-object v3, v9

    .line 150
    move v5, v0

    .line 151
    move-object v6, p0

    .line 152
    move-object v7, v2

    .line 153
    move v8, p1

    .line 154
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 155
    .line 156
    .line 157
    const/4 v4, 0x1

    .line 158
    move-object v3, v9

    .line 159
    move v5, v0

    .line 160
    move-object v6, p0

    .line 161
    move-object v7, v2

    .line 162
    move v8, p1

    .line 163
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 22
    .line 23
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    .line 24
    .line 25
    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p4, "addListener: adding NMEA listener("

    .line 29
    .line 30
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ") from "

    .line 45
    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string p2, "GnssNmeaProvider"

    .line 61
    .line 62
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    .line 66
    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    iput p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->onGnssNmeaListenerStatusChanged(I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public final registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0, p2, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 22
    .line 23
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ActivityManagerInternal;->logFgsApiBegin(III)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0, p4, p5, p6}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    iget-object p6, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {p6, v0, v1}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    .line 40
    .line 41
    .line 42
    move-result p6

    .line 43
    invoke-static {}, Landroid/location/flags/Flags;->enableLocationBypass()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v7, 0x2

    .line 48
    const/4 v8, 0x1

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    if-nez p6, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-string v1, "android.permission.LOCATION_BYPASS"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0, p6, v8}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move v6, v7

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0, p6, v8}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    move v6, p6

    .line 81
    :goto_1
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 82
    .line 83
    .line 84
    move-result p6

    .line 85
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-ne p6, v0, :cond_4

    .line 90
    .line 91
    if-nez p5, :cond_4

    .line 92
    .line 93
    const-string p5, "LocationManagerService"

    .line 94
    .line 95
    const-string/jumbo p6, "system location request with no attribution tag"

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {p5, p6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const/4 p2, 0x0

    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    move p5, v8

    .line 118
    goto :goto_2

    .line 119
    :cond_5
    move p5, p2

    .line 120
    :goto_2
    new-instance p6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string/jumbo v0, "provider \""

    .line 123
    .line 124
    .line 125
    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, "\" does not exist"

    .line 132
    .line 133
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p5, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;

    .line 147
    .line 148
    new-instance v5, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;

    .line 149
    .line 150
    invoke-direct {v5, p3}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;-><init>(Landroid/location/ILocationListener;)V

    .line 151
    .line 152
    .line 153
    move-object v1, p1

    .line 154
    move-object v2, p0

    .line 155
    move-object v4, p4

    .line 156
    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;I)V

    .line 157
    .line 158
    .line 159
    iget-object p5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 160
    .line 161
    monitor-enter p5

    .line 162
    :try_start_0
    iget p6, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 163
    .line 164
    if-eq p6, v7, :cond_6

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    move v8, p2

    .line 168
    :goto_3
    invoke-static {v8}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 172
    .line 173
    .line 174
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    const/16 p6, 0x3e8

    .line 180
    .line 181
    if-eq p2, p6, :cond_7

    .line 182
    .line 183
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;

    .line 184
    .line 185
    const/4 p6, 0x3

    .line 186
    invoke-direct {p2, p6, p4}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;-><init>(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getRegistrationCountWith(Ljava/util/function/Predicate;)I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    const/16 p4, 0x1e

    .line 194
    .line 195
    if-ge p2, p4, :cond_8

    .line 196
    .line 197
    :cond_7
    invoke-interface {p3}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    .line 203
    .line 204
    :cond_8
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    .line 206
    .line 207
    monitor-exit p5

    .line 208
    return-void

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    goto :goto_4

    .line 211
    :catchall_1
    move-exception p0

    .line 212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :goto_4
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    throw p0
.end method

.method public final registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static/range {p3 .. p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    move-object/from16 v7, p4

    .line 18
    .line 19
    invoke-static {v5, v7, v4, v6}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-static {v6, v7, v8}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static {}, Landroid/location/flags/Flags;->enableLocationBypass()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const/4 v13, 0x2

    .line 42
    const/4 v14, 0x1

    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    if-nez v6, :cond_2

    .line 46
    .line 47
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const-string v8, "android.permission.LOCATION_BYPASS"

    .line 50
    .line 51
    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_0

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-static {v7, v6, v14}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v12, v13

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-static {v7, v6, v14}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    move v12, v6

    .line 75
    :goto_1
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    const/4 v15, 0x0

    .line 84
    if-ne v6, v7, :cond_4

    .line 85
    .line 86
    if-eqz v4, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move v4, v15

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    :goto_2
    move v4, v14

    .line 92
    :goto_3
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 93
    .line 94
    .line 95
    const-wide/32 v6, 0xa204608

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-static {v6, v7, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_6

    .line 107
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/location/LocationRequest;->isLowPower()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_5

    .line 113
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_5

    .line 119
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_5

    .line 125
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4}, Landroid/os/WorkSource;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_5

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v3, "PendingIntent location requests may not use system APIs: "

    .line 142
    .line 143
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_6
    :goto_4
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    move v2, v14

    .line 168
    goto :goto_5

    .line 169
    :cond_7
    move v2, v15

    .line 170
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string/jumbo v6, "provider \""

    .line 173
    .line 174
    .line 175
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v1, "\" does not exist"

    .line 182
    .line 183
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;

    .line 197
    .line 198
    new-instance v11, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;

    .line 199
    .line 200
    iget-object v2, v0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-direct {v11, v2, v3}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 203
    .line 204
    .line 205
    move-object v7, v1

    .line 206
    move-object v8, v0

    .line 207
    move-object v10, v5

    .line 208
    invoke-direct/range {v7 .. v12}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;I)V

    .line 209
    .line 210
    .line 211
    if-eqz v3, :cond_8

    .line 212
    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/app/PendingIntent;->hashCode()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    iput-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    .line 222
    .line 223
    iput-boolean v15, v1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType:Z

    .line 224
    .line 225
    :cond_8
    iget-object v2, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 226
    .line 227
    monitor-enter v2

    .line 228
    :try_start_0
    iget v4, v0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 229
    .line 230
    if-eq v4, v13, :cond_9

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_9
    move v14, v15

    .line 234
    :goto_6
    invoke-static {v14}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 238
    .line 239
    .line 240
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :try_start_1
    invoke-virtual {v5}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    const/16 v8, 0x3e8

    .line 246
    .line 247
    if-eq v4, v8, :cond_a

    .line 248
    .line 249
    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;

    .line 250
    .line 251
    const/4 v8, 0x3

    .line 252
    invoke-direct {v4, v8, v5}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;-><init>(ILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getRegistrationCountWith(Ljava/util/function/Predicate;)I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    const/16 v5, 0x1e

    .line 260
    .line 261
    if-ge v4, v5, :cond_b

    .line 262
    .line 263
    :cond_a
    invoke-virtual {v0, v3, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    .line 265
    .line 266
    :cond_b
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    .line 268
    .line 269
    monitor-exit v2

    .line 270
    return-void

    .line 271
    :catchall_0
    move-exception v0

    .line 272
    goto :goto_7

    .line 273
    :catchall_1
    move-exception v0

    .line 274
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :goto_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    throw v0
.end method

.method public final removeGeofence(Landroid/app/PendingIntent;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    new-instance v2, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda4;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, v3, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistrationIf(Ljava/util/function/Predicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGnssAntennaInfoListener;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public final removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeListener(Landroid/os/IInterface;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeListener(Landroid/os/IInterface;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->stopManager()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p2, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 6
    .line 7
    check-cast v0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p3}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOp(Landroid/location/util/identity/CallerIdentity;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p3

    .line 21
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    monitor-exit p3

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v2, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v3, "isRegister"

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v3, "provider"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v3, "packageName"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 62
    .line 63
    sget-object v1, Landroid/location/LocationConstants$STATE_TYPE;->MOCK_PROVIDER_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 64
    .line 65
    invoke-virtual {p2, v1, v2}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    const/4 p2, 0x0

    .line 69
    invoke-virtual {v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, v0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 73
    .line 74
    iget-object v1, p2, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object p2, p2, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 78
    .line 79
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    const-string/jumbo p2, "gps"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 96
    .line 97
    const-string/jumbo p2, "gps"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const-string/jumbo p2, "fused"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_4

    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 114
    .line 115
    const-string/jumbo p2, "fused"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    const-string/jumbo p2, "network"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 132
    .line 133
    const-string/jumbo p2, "network"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    iput-boolean v4, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->cancelNotificationForMockLocation()V

    .line 150
    .line 151
    .line 152
    :cond_6
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    return-void

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    :try_start_4
    throw p0

    .line 157
    :goto_2
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    throw p0
.end method

.method public final requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v0, v2, v3}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v1, v0, v2}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {p2}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, p3, p4, v1}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    :try_start_0
    new-instance p4, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 40
    .line 41
    invoke-direct {p4, p2, p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;-><init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    .line 45
    .line 46
    invoke-direct {v2, p0, p1, p3, p2}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;-><init>(Lcom/android/server/location/geofence/GeofenceManager;Landroid/location/Geofence;Landroid/location/util/identity/CallerIdentity;Landroid/app/PendingIntent;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p4, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "provider \""

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "\" does not exist"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    check-cast p2, Landroid/location/ILocationListener;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    :try_start_0
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    invoke-direct {p2, p3, v2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistration(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string/jumbo p1, "unregistered listener cannot be flushed"

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "provider \""

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "\" does not exist"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-object p1, p2

    .line 37
    check-cast p1, Landroid/app/PendingIntent;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    :try_start_0
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-direct {p1, p3, v2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;-><init>(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistration(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string/jumbo p1, "unregistered pending intent cannot be flushed"

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingPackage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingAttributionTag()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0, v1, v2}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;

    .line 36
    .line 37
    invoke-direct {v0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;-><init>(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    :try_start_0
    invoke-interface {p2, p0}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    :goto_1
    return-void
.end method

.method public final sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v0, v2, v3}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v1, v0, v2}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    :try_start_0
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 58
    .line 59
    invoke-virtual {v0, v1, p2, p3, v3}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->sendExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v0, Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const-string/jumbo v4, "provider"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v4, "command"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo p2, "pid"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    const-string/jumbo p2, "uid"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p3, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 108
    .line 109
    sget-object p3, Landroid/location/LocationConstants$STATE_TYPE;->SEND_EXTRA_COMMAND:Landroid/location/LocationConstants$STATE_TYPE;

    .line 110
    .line 111
    invoke-virtual {p2, p3, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 121
    .line 122
    check-cast p2, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 123
    .line 124
    iget-object p2, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 125
    .line 126
    const/4 p3, 0x0

    .line 127
    invoke-virtual {p2, p3, p1}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 131
    .line 132
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 135
    .line 136
    invoke-virtual {p0, v2, p1}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final setAdasGnssLocationEnabledForUser(ZI)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string/jumbo v5, "setAdasGnssLocationEnabledForUser"

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move v2, p2

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 26
    .line 27
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/android/server/location/settings/LocationSettings;->getUserSettingsStore(I)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/settings/SettingsStore;->initializeCache()V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/LocationUserSettings;

    .line 40
    .line 41
    iget-boolean v0, p2, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 42
    .line 43
    if-ne p1, v0, :cond_0

    .line 44
    .line 45
    move-object v0, p2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/server/location/settings/LocationUserSettings;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lcom/android/server/location/settings/LocationUserSettings;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->filterSettings(Lcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Lcom/android/server/location/settings/LocationUserSettings;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/LocationUserSettings;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/settings/SettingsStore;Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    .line 90
    .line 91
    .line 92
    check-cast v0, Landroid/os/HandlerExecutor;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    monitor-exit p0

    .line 98
    :goto_1
    return-void

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    monitor-exit p0

    .line 101
    throw p1
.end method

.method public final setAutomotiveGnssSuspended(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->setAutomotiveGnssSuspended_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.hardware.type.automotive"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    .line 30
    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string/jumbo p1, "setAutomotiveGnssSuspended only allowed on automotive devices"

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final setExtraLocationControllerPackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final setExtraLocationControllerPackageEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackageEnabled_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final setLocationEnabledForUser(ZI)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string/jumbo v5, "setLocationEnabledForUser"

    .line 10
    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move v2, p2

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 32
    .line 33
    check-cast v0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    :try_start_0
    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string/jumbo v3, "location_mode"

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v4, 0x0

    .line 58
    :goto_0
    invoke-static {v0, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance p2, Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string/jumbo v0, "pid"

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v0, "uid"

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v0, "enabled"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 101
    .line 102
    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->SET_LOCATION_ENABLED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 103
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    throw p0
.end method

.method public final setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object p4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 6
    .line 7
    check-cast p4, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 8
    .line 9
    iget-object p4, p4, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 10
    .line 11
    invoke-virtual {p4, p3}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOp(Landroid/location/util/identity/CallerIdentity;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter p3

    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 44
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance p4, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-direct {p4, p2}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p4}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 62
    .line 63
    .line 64
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_0

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 75
    :catchall_2
    move-exception p0

    .line 76
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p0, " provider is not a test provider"

    .line 93
    .line 94
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :goto_0
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 106
    throw p0

    .line 107
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string/jumbo p2, "provider doesn\'t exist: "

    .line 110
    .line 111
    .line 112
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method public final setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object p4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 6
    .line 7
    check-cast p4, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 8
    .line 9
    iget-object p4, p4, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 10
    .line 11
    invoke-virtual {p4, p3}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOp(Landroid/location/util/identity/CallerIdentity;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const-string/jumbo p4, "incomplete location object, missing timestamp or accuracy?"

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter p3

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p4

    .line 53
    if-nez p4, :cond_1

    .line 54
    .line 55
    iget-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p4

    .line 61
    if-nez p4, :cond_1

    .line 62
    .line 63
    const-string p4, "33091107"

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, "!="

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    filled-new-array {p4, v0, p1}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const p4, 0x534e4554

    .line 100
    .line 101
    .line 102
    invoke-static {p4, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 113
    .line 114
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProviderLocation(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .line 116
    .line 117
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    monitor-exit p3

    .line 121
    return-void

    .line 122
    :catchall_1
    move-exception p0

    .line 123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p0, " provider is not a test provider"

    .line 140
    .line 141
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :goto_1
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    throw p0

    .line 154
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    const-string/jumbo p2, "provider doesn\'t exist: "

    .line 157
    .line 158
    .line 159
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0
.end method

.method public final startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->startGnssBatch_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->stopGnssBatch()V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v2, "gps"

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroid/location/LocationRequest$Builder;

    .line 25
    .line 26
    invoke-direct {v1, p1, p2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/android/server/location/gnss/GnssManagerService;->mGnssLocationProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    int-to-long v3, v3

    .line 38
    mul-long/2addr p1, v3

    .line 39
    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/LocationRequest$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    move-object v1, p0

    .line 53
    move-object v4, p3

    .line 54
    move-object v5, p4

    .line 55
    move-object v6, p5

    .line 56
    move-object v7, p6

    .line 57
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/LocationManagerService;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final stopGnssBatch()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssNmeaProvider:Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeListener(Landroid/os/IInterface;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "GnssNmeaProvider"

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "removeListener: removing NMEA listener("

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ")"

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter p1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    if-ne p1, v0, :cond_0

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->onGnssNmeaListenerStatusChanged(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_0
    :goto_0
    return-void
.end method

.method public final unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService;->mGnssStatusProvider:Lcom/android/server/location/gnss/GnssStatusProvider;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeListener(Landroid/os/IInterface;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final unregisterLocationListener(Landroid/location/ILocationListener;)V
    .locals 5

    .line 1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v1

    .line 44
    :try_start_0
    iget v2, v0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    if-eq v2, v3, :cond_1

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v2, 0x0

    .line 52
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v0, v4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    .line 66
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    monitor-exit v1

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0

    .line 80
    :cond_2
    return-void
.end method

.method public final unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget v2, v0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p0

    .line 54
    :cond_1
    return-void
.end method

.method public final validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    .line 14
    .line 15
    const-string/jumbo v2, "setting a work source requires android.permission.UPDATE_DEVICE_STATS"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroid/location/LocationRequest$Builder;

    .line 22
    .line 23
    invoke-direct {v0, p2}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-wide/32 v2, 0xa11c3b7

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v4, "android.permission.LOCATION_HARDWARE"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Landroid/location/LocationRequest$Builder;->setLowPower(Z)Landroid/location/LocationRequest$Builder;

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance v1, Landroid/os/WorkSource;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const-string v6, "LocationManagerService"

    .line 67
    .line 68
    if-lez p2, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-nez p2, :cond_2

    .line 75
    .line 76
    const-string/jumbo p2, "received (and ignoring) illegal worksource with no package name"

    .line 77
    .line 78
    .line 79
    invoke-static {v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_3

    .line 97
    .line 98
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Landroid/os/WorkSource$WorkChain;

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    if-nez p2, :cond_3

    .line 109
    .line 110
    const-string/jumbo p2, "received (and ignoring) illegal worksource with no attribution tag"

    .line 111
    .line 112
    .line 113
    invoke-static {v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_4

    .line 124
    .line 125
    invoke-virtual {p3, v1}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1, p3}, Lcom/android/server/location/LocationManagerService$LocalService;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLowPower()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    invoke-static {v2, v3, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    if-eqz p3, :cond_5

    .line 157
    .line 158
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    const-string/jumbo v1, "low power request requires android.permission.LOCATION_HARDWARE"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, v4, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    if-eqz p3, :cond_6

    .line 171
    .line 172
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 175
    .line 176
    const-string/jumbo v2, "hiding from app ops requires android.permission.UPDATE_APP_OPS_STATS"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    .line 183
    .line 184
    .line 185
    move-result p3

    .line 186
    if-eqz p3, :cond_9

    .line 187
    .line 188
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    const-string v1, "android.hardware.type.automotive"

    .line 195
    .line 196
    invoke-virtual {p3, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result p3

    .line 200
    if-eqz p3, :cond_8

    .line 201
    .line 202
    const-string/jumbo p3, "gps"

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_7

    .line 210
    .line 211
    if-nez v0, :cond_9

    .line 212
    .line 213
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 220
    .line 221
    const-string p1, "adas gnss bypass requests are only allowed on the \"gps\" provider"

    .line 222
    .line 223
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0

    .line 227
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    const-string p1, "adas gnss bypass requests are only allowed on automotive devices"

    .line 230
    .line 231
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p0

    .line 235
    :cond_9
    :goto_1
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_a

    .line 240
    .line 241
    if-nez v0, :cond_a

    .line 242
    .line 243
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    invoke-static {p0}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    .line 246
    .line 247
    .line 248
    :cond_a
    return-object p2
.end method
